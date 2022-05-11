package com.codeup.adlister.dao;

import com.codeup.adlister.models.Bad;
import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLBadsDao implements Bads {
    private Connection connection = null;

    public MySQLBadsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Bad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM badlister_db.bads");
            ResultSet rs = stmt.executeQuery();
            return createBadsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all bads.", e);
        }
    }

    @Override
    public Long insert(Bad bad) {
        try {
            String insertQuery = "INSERT INTO badlister_db.bads(user_id, name, description,origin) VALUES (?, ?, ?,?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, bad.getUserId());
            stmt.setString(2, bad.getName());
            stmt.setString(3, bad.getDescription());
            stmt.setString(4, bad.getOrigin());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new bad.", e);
        }
    }

    private Bad extractBad(ResultSet rs) throws SQLException {
        return new Bad(
                rs.getLong("id"),
                rs.getLong("user_id"),
                rs.getString("name"),
                rs.getString("description"),
                rs.getString("origin")
        );
    }

    private List<Bad> createBadsFromResults(ResultSet rs) throws SQLException {
        List<Bad> bads = new ArrayList<>();
        while (rs.next()) {
            bads.add(extractBad(rs));
        }
        return bads;
    }

//    @Override
//    public Bad findById(Long id) {
//        String query = "SELECT * FROM badlister_db.bads WHERE id = ? LIMIT 1";
//        try {
//            PreparedStatement stmt = connection.prepareStatement(query);
//            stmt.setLong(1, id);
//            return extractBad(stmt.executeQuery());
//        } catch (SQLException e) {
//            throw new RuntimeException("Error finding a bad", e);
//        }
//    }

    @Override
    public Bad findByBadName(String badname) {
        String query = ("SELECT * FROM badlister_db.bads WHERE name LIKE  CONCAT( '%',?,'%') LIMIT 1");
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, badname);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return extractBad(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a bad", e);
        }
    }
    @Override
    public String deleteBad(String gonebad) {
        String query = ("DELETE FROM badlister_db.bads WHERE name = ?");
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, gonebad);
            stmt.executeUpdate();
            return "success";
        } catch (SQLException e) {
            throw new RuntimeException("Error Deleting a bad", e);
        }
    }
    @Override
    public String editBad(String name, String description, String origin, String bad) {
        String query = (" UPDATE badlister_db.bads SET name=? , description=?, origin=? WHERE name = ?");
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, name);
            stmt.setString(2, description);
            stmt.setString(3, origin);
            stmt.setString(4, bad);
            stmt.executeUpdate();
            return "success";
        } catch (SQLException e) {
            throw new RuntimeException("Error updating a bad", e);
        }
    }



    @Override
    public List<Bad> userBads(User user) {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM badlister_db.bads WHERE user_id = ? LIMIT 3");
            stmt.setLong(1, user.getId());
            ResultSet rs = stmt.executeQuery();
            return createBadsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all bads.", e);
        }
    }
}
