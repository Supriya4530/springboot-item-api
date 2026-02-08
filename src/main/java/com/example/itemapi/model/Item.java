package com.example.itemapi.model;



import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Positive;

public class Item {

    private Long id;

    @NotBlank(message = "Name is required")
    private String name;

    private String description;

    @Positive(message = "Price must be greater than zero")
    private double price;

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
