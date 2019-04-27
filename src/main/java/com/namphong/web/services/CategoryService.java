package com.namphong.web.services;

import com.namphong.web.models.StatisticalCategory;
import com.namphong.web.repositories.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

@Service
public class CategoryService {

    @Autowired
    CategoryRepository categoryRepository;

    public List<StatisticalCategory> findStatisticalCategory() {

        Object[][] statisticalCategory = categoryRepository.findStatisticalCategory();
        List<StatisticalCategory> statisticalCategories = new ArrayList<>();

        for (Object[] cat : statisticalCategory) {
            StatisticalCategory category = new StatisticalCategory((String) cat[0], (BigInteger) cat[1], "/category/" + cat[2]);
            statisticalCategories.add(category);

        }
        return statisticalCategories;
    }
}
