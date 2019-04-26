package com.namphong.web.model;

import java.io.Serializable;
import java.math.BigInteger;

public class StatisticalCategory implements Serializable {

    private static final long serialVersionUID = 1L;

    private String name;
    private BigInteger count;
    private String link;

    public StatisticalCategory(String name, BigInteger count, String link) {
        this.name = name;
        this.count = count;
        this.link = link;
    }

    public StatisticalCategory() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigInteger getCount() {
        return count;
    }

    public void setCount(BigInteger count) {
        this.count = count;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
}
