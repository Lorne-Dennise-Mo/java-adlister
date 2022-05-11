CREATE DATABASE IF NOT EXISTS badlister_db;

USE badlister_db;

CREATE TABLE IF NOT EXISTS users (
    id INT unsigned NOT NULL AUTO_INCREMENT,
    username VARCHAR(50),
    password VARCHAR(200),
    PRIMARY KEY (id)

);

DROP TABLE IF EXISTS bads;

CREATE TABLE IF NOT EXISTS bads (
    id INT unsigned NOT NULL AUTO_INCREMENT,
    user_id INT unsigned NOT NULL,
    name VARCHAR(50),
    description TEXT,
    origin TEXT,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE USER 'admins'@'localhost' IDENTIFIED BY 'password';

GRANT ALL ON *.* to 'admins'@'localhost';

INSERT INTO bads (user_id, name, description, origin)
VALUES (1, 'Frederick Charles "Freddy" Krueger ', 'a child murderer who lived in the town of Springwood with his family in the past and is now (after being killed by his victim''s parents in a fire) an undead demon that kills his victims in their dreams, thus causing their death in the physical world.', 'A Nightmare on Elm Street'),
        (1,
        'Darth Vader/Anakin Skywalker',
        'Once a heroic Jedi Knight, Anakin was seduced by the dark side',
        'Star Wars'),
    (1,
     'Thanos',
     'The Mad Titan fell in love with Death and vowed to deliver as many souls to her as necessary to win her love',
     'Marvel Comics'),
       (1,
        'Leatherface',
        'Butcher and serial murderer that eats his victims and wheres their skin',
        'Texas Chainsaw Massacre'),
        (1,
         'Poison Ivy: Pamela Lillian Isley',
         'Poison Ivy using her powers selfishly.  Certainly she has the ability to control plant-life. She is able to synthesize and activate pheromones from plants that can gently influence others in precise and powerful ways.', 'DC Comics, Batman The Animated Series' ),
        (1, 'Harley Quinn', 'an eccentric and extravagant supervillainess who usually commits crimes with a sadistic glee and hyperactive energy. In most incarnations, she is loyal to the Joker regardless of how cruelly he treats her.', 'DC Comics, Batman The Animated Series' ),
        (1, 'Michael Myers', 'he killed his older sister when he was 6 years old and was sent to a psychiatric hospital for the reminder of his natural born life. Years later, he escapes, looking to finish off his other sister and anybody who crosses his path. Also known as The Shape in the scripts, as he is "only a shape in the darkness".', 'Halloween'),
        (1, 'The Boogey Man', 'a type of mythic creature used by adults to frighten children into good behavior. Bogeymen have no specific appearance and conceptions vary drastically by household and culture, but they are most commonly depicted as masculine or androgynous monsters that punish children for misbehavior.', 'Urban Legend'),
        (1, 'Candyman: Daniel Robitaille', 'depicted as an African-American man who was brutally murdered for a forbidden 19th-century interracial love affair; he returns as an urban legend, and kills anyone who summons him by saying his name five times in front of a mirror.', 'Urban Legend, The Candyman'),
        (1, 'Bloody Mary', 'a legend of a ghost, phantom, or spirit conjured to reveal the future. She is said to appear in a mirror when her name is chanted repeatedly. The Bloody Mary apparition may be benign or malevolent, depending on historic variations of the legend. Bloody Mary appearances are mostly "witnessed" in group participation play or by a man who is about to die.', 'Urban Legend, World History'),
        (1, 'Adolf Hitler', 'Hitler was most well-known for starting, causing and waging World War II, and being responsible for causing the Holocaust, which is widely considered to be the most horrific genocide in world history. Most contemporary estimates state that Hitler was responsible for the deaths of 40 million people overall.He is often considered by many to be one of the most (if not the most) evil person to have ever lived.', 'World History ');

