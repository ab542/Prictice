package com.atguigu.pojo;

import java.util.List;

public class TypeBook {
    List<Book> red;
    List<Book> yellow;
    List<Book> qin;
    List<Book> withe;
    List<Book> black;
    List<Book> green;

    public TypeBook(List<Book> red, List<Book> yellow, List<Book> qin, List<Book> withe, List<Book> black, List<Book> green) {
        this.red = red;
        this.yellow = yellow;
        this.qin = qin;
        this.withe = withe;
        this.black = black;
        this.green = green;
    }

    @Override
    public String toString() {
        return "TypeBook{" +
                "red=" + red +
                ", yellow=" + yellow +
                ", qin=" + qin +
                ", withe=" + withe +
                ", black=" + black +
                ", green=" + green +
                '}';
    }

    public List<Book> getRed() {
        return red;
    }

    public void setRed(List<Book> red) {
        this.red = red;
    }

    public List<Book> getYellow() {
        return yellow;
    }

    public void setYellow(List<Book> yellow) {
        this.yellow = yellow;
    }

    public List<Book> getQin() {
        return qin;
    }

    public void setQin(List<Book> qin) {
        this.qin = qin;
    }

    public List<Book> getWithe() {
        return withe;
    }

    public void setWithe(List<Book> withe) {
        this.withe = withe;
    }

    public List<Book> getBlack() {
        return black;
    }

    public void setBlack(List<Book> black) {
        this.black = black;
    }

    public List<Book> getGreen() {
        return green;
    }

    public void setGreen(List<Book> green) {
        this.green = green;
    }
}
