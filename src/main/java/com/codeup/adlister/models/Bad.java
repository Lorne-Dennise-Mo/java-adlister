package com.codeup.adlister.models;

public class Bad {
    private long id;
    private long userId;
    private String name;
    private String description;
    private String origin;

    public Bad(long userId, String name, String description, String origin) {
        this.userId = userId;
        this.name = name;
        this.description = description;
        this.origin = origin;
    }

    public Bad(long id, long userId, String name, String description, String origin) {
        this.id = id;
        this.userId = userId;
        this.name = name;
        this.description = description;
        this.origin = origin;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }
}
