package org.java.web;

import com.github.pagehelper.PageInfo;
import org.java.entity.User;
import org.java.service.InfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;
import java.util.Map;

@RestController
public class InfoController {
    @Autowired
    private InfoService infoService;
    @Autowired
    HttpSession session;

    @PostMapping("init/{index}/{t}")
    public PageInfo findAll(@PathVariable int index,@PathVariable String t,@RequestParam Map map){
        if(!"null".equals(t)){
            map.put("type",t);
        }
        return infoService.findAll(index,map);
    }

    @PostMapping("/loadAreas")
    public List<Map> loadAreas(){
        return infoService.loadAreas();
    }

    @PostMapping("findById")
    public List<Map> findById(){
        return infoService.findById(((User)(session.getAttribute("user"))).getUid());
    }

    @PostMapping("delHouseById/{id}/{hid}")
    public void delHouseById(@PathVariable int id,@PathVariable int hid){
        infoService.delById(id);
        infoService.delHouse(hid);
    }

    @PostMapping("edit")
    public void edit(@RequestParam Map map){
        if(map.get("id")==""){
            infoService.addHouse(map);
            infoService.add(map);
        }else{
            infoService.editHouse(map);
            infoService.edit(map);
        }
    }
}
