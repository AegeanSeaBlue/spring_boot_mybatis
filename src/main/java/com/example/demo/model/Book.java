package com.example.demo.model;

import java.math.BigDecimal;

/**
 * Created by lei9 on 2017/12/3.
 */
public class Book {
    private int id;
    private long bookStoreID;
    private String name;
    private String author;
    private BigDecimal price;
    private String topic;
    private String publishDate;

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public long getBookStoreID() {
        return this.bookStoreID;
    }

    public void setBookStoreID(long bookStoreID) {
        this.bookStoreID = bookStoreID;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getPublishDate() {
        return publishDate;
    }

    public void setPublishDate(String publishDate) {
        this.publishDate = publishDate;
    }
}
