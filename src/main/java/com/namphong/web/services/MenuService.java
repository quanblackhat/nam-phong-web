package com.namphong.web.services;

import com.namphong.web.models.Menu;
import com.namphong.web.repositories.MenuRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MenuService {

    @Autowired
    private MenuRepository menuRepository;

    public List<Menu> findParentMenu() {
        return menuRepository.findParentMenu();
    }

}
