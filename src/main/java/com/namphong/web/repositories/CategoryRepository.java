
package com.namphong.web.repositories;

import com.namphong.web.models.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CategoryRepository extends JpaRepository<Category, Long> {

    @Query(value = "SELECT category"
            + " FROM Category category"
            + " ORDER BY category.id")
    List<Category> findAll();



    @Query(value = "select cat.name, count(article_id), cat.code " +
            "from category_article ca, category cat " +
            "where cat.id = ca.category_id " +
            "group by category_id ", nativeQuery = true)
    Object[][] findStatisticalCategory();
}
