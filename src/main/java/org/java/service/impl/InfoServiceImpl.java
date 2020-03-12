package org.java.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.java.dao.InfoMapper;
import org.java.service.InfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
@SuppressWarnings("all")
@Transactional
public class InfoServiceImpl implements InfoService {
    @Autowired
    private InfoMapper infoMapper;
    @Override
    public PageInfo findAll(int index,Map map) {
        PageHelper.startPage(index,4);
        return new PageInfo(infoMapper.findAll(map));
    }

    @Override
    public List<Map> loadAreas() {
        return infoMapper.loadAreas();
    }

    @Override
    public List<Map> findById(Integer user) {
        return infoMapper.findById(user);
    }

    @Override
    public void delById(int id) {
        infoMapper.delById(id);
    }

    @Override
    public void addHouse(Map map) {
        infoMapper.addHouse(map);
    }

    @Override
    public void add(Map map) {
        infoMapper.add(map);
    }

    @Override
    public void editHouse(Map map) {
        infoMapper.editHouse(map);
    }

    @Override
    public void edit(Map map) {
        infoMapper.edit(map);
    }

    @Override
    public void delHouse(int hid) {
        infoMapper.delHouse(hid);
    }
}
