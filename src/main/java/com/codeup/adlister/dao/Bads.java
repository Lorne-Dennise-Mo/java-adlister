package com.codeup.adlister.dao;

import com.codeup.adlister.models.Bad;

import java.util.List;

public interface Bads {
    // get a list of all the ads
    List<Bad> all();
    // insert a new ad and return the new ad's id
    Long insert(Bad bad);
}
