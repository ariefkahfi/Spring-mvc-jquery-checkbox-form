package com.arief.mvc.jquery.entity;

import java.util.Arrays;

/**
 * Created by Arief on 9/6/2017.
 */
public class Person {


    private int id;
    private String nama;
    private String [] hobi;

    public Person() {
    }


    public Person(int id, String nama, String[] hobi) {
        this.id = id;
        this.nama = nama;
        this.hobi = hobi;
    }

    public int getId() {
        return id;
    }

    public String[] getHobi() {
        return hobi;
    }

    public void setHobi(String[] hobi) {
        this.hobi = hobi;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    @Override
    public String toString() {
        return "Person{" +
                "id=" + id +
                ", nama='" + nama + '\'' +
                ", hobi=" + Arrays.toString(hobi) +
                '}';
    }
}
