package com.codeup.adlister.dao;

public class DaoFactory {
    private static Bads badsDao;
    private static Users usersDao;
    private static Config config = new Config();

    public static Bads getBadsDao() {
        if (badsDao == null) {
            badsDao = new MySQLBadsDao(config);
        }
        return badsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config);
        }
        return usersDao;
    }
}
