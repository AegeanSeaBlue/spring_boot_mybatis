package com.example.demo.model;

import java.math.BigDecimal;
import java.util.List;

/**
 * Created by lei9 on 2017/12/3.
 */
public class Subway {
    private int id;
    private String line;
    private String station;
    private List<String> transfer;

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLine() {
        return line;
    }

    public void setLine(String line) {
        this.line = line;
    }

    public String getStation() {
        return station;
    }

    public void setStation(String station) {
        this.station = station;
    }

    public List<String> getTransfer() {
        return transfer;
    }

    public void setTransfer(List<String> transfer) {
        this.transfer = transfer;
    }
}
