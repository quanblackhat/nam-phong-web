
package com.namphong.web.repository;

import com.namphong.web.model.Menu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface MenuRepository extends JpaRepository<Menu, Long> {

    @Query(value = "SELECT menu"
            + " FROM Menu menu"
            + " ORDER BY menu.id ")
    List<Menu> findAll();

    @Query(value = "SELECT menu"
            + " FROM Menu menu"
//            + " LEFT JOIN FETCH menu.subMenus"
            + " WHERE menu.level = 0"
            + " ORDER BY menu.id ")
    List<Menu> findParentMenu();





}
