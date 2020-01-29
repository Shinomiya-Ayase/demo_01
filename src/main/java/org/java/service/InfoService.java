package org.java.service;

import com.github.pagehelper.PageInfo;

import java.util.List;
import java.util.Map;

public interface InfoService {
    PageInfo findAll(int index,Map map);
    List<Map> loadAreas();
    List<Map> findById(Integer user);
    void delById(int id);
    void addHouse(Map map);
    void add(Map map);
    void editHouse(Map map);
    void edit(Map map);
    void delHouse(int hid);
}
