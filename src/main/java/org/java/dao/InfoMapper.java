package org.java.dao;

import org.apache.ibatis.annotations.*;

import java.util.List;
import java.util.Map;

public interface InfoMapper {
    List<Map> findAll(Map map);

    @Select("SELECT a.aid,aname,GROUP_CONCAT(sid) sid,GROUP_CONCAT(sname) sname " +
            "FROM area a,street s WHERE a.aid = s.aid GROUP BY a.aid")
    List<Map> loadAreas();

    @Select("SELECT *,(SELECT aid FROM street WHERE sid=f.sid) aid FROM info f,house h " +
            "WHERE f.hid = h.hid and uid = #{user}")
    List<Map> findById(Integer user);

    @Delete("DELETE FROM info WHERE id = #{id}")
    void delById(int id);

    @Insert("INSERT house VALUES(null,#{price},#{type},#{shi},#{ting})")
    @Options(useGeneratedKeys = true,keyProperty = "id")
    void addHouse(Map map);

    @Insert("INSERT info VALUES(null,#{title},#{id},#{houseinfo},#{uid},now(),#{street})")
    void add(Map map);

    @Update("UPDATE house set shi=#{shi},ting=#{ting},htid=#{type},price=#{price} " +
            "WHERE hid=#{hid}")
    void editHouse(Map map);

    @Update("UPDATE info set title=#{title},houseinfo=#{houseinfo},fbtime=now(),sid=#{street} " +
            "WHERE id=#{id}")
    void edit(Map map);

    @Delete("DELETE FROM house WHERE hid = #{hid}")
    void delHouse(int hid);
}
