package com.codeup.adlister.dao;

import com.codeup.adlister.models.Bad;
import com.codeup.adlister.models.User;

import java.util.List;

public interface Bads {
    // get a list of all the ads
    List<Bad> all();
    // insert a new ad and return the new ad's id
    Long insert(Bad bad);

    Bad findByBadName(String badname);

    String editBad(String name, String description, String origin, String bad);

    List<Bad> userBads(User user);

    String deleteBad(String gonebad);




}
