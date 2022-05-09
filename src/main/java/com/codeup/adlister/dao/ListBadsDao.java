package com.codeup.adlister.dao;

import com.codeup.adlister.models.Bad;

import java.util.ArrayList;
import java.util.List;

public class ListBadsDao implements Bads {
    private List<Bad> bads;

    public List<Bad> all() {
        if (bads == null) {
            bads = generateBads();
        }
        return bads;
    }

    public Long insert(Bad bad) {
        // make sure we have ads
        if (bads == null) {
            bads = generateBads();
        }
        // we'll assign an "id" here based on the size of the ads list
        // really the dao would handle this
        bad.setId((long) bads.size());
        bads.add(bad);
        return bad.getId();
    }

    private List<Bad> generateBads() {
        List<Bad> bads = new ArrayList<>();
        bads.add(new Bad(
            1,
                "Freddy Krueger",
            "Dream Demon - a serial child-killer who had been burnt to death by his victims parents",
            "A Nightmare on Elm Street"
        ));
        bads.add(new Bad(
            1,
            "Darth Vader/Anakin Skywalker",
            "Once a heroic Jedi Knight, Anakin was seduced by the dark side",
            "Star Wars"
        ));
        bads.add(new Bad(
            1,
            "Thanos",
            "The Mad Titan fell in love with Death and vowed to deliver as many souls to her as necessary to win her love",
            "Marvel Comics"
        ));
        bads.add(new Bad(
            1,
            "Leatherface",
            "Butcher and serial murderer that eats his victims and wheres their skin",
            "Texas Chainsaw Massacre"
        ));
        return bads;
    }
}
