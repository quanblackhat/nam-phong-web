package com.namphong.web.controller;

import com.namphong.web.model.Article;
import com.namphong.web.model.Menu;
import com.namphong.web.model.StatisticalCategory;
import com.namphong.web.repository.ArticleRepository;
import com.namphong.web.repository.CategoryRepository;
import com.namphong.web.repository.MenuRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
public class MainController {

    private static final String INDEX_TEMPLATE          =  "layouts/index";
    private static final String DETAIL_TEMPLATE         =  "layouts/detail";
    private static final String ABOUT_TEMPLATE          =  "layouts/about";
    private static final String CONTACT_TEMPLATE        =  "layouts/contact";
    private static final String CATEGORY_TEMPLATE       =  "layouts/category";

    private static final Integer PAGE_SIZE              = 10;
    private static final Integer PAGE_SIZE_MOST_VIEW    = 5;

    final ArticleRepository articleRepository;
    final CategoryRepository categoryRepository;
    final MenuRepository menuRepository;

    @Value("${server.servlet.context-path}")
    private String contextPath;

    @Autowired
    public MainController(ArticleRepository articleRepository, CategoryRepository categoryRepository, MenuRepository menuRepository) {
        this.articleRepository = articleRepository;
        this.categoryRepository = categoryRepository;
        this.menuRepository = menuRepository;
    }

    /**
     * Index page
     *
     */
    @GetMapping({"/", "index"})
    public ModelAndView index(@RequestParam(name = "page", required = false) Integer page) {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName(INDEX_TEMPLATE);
        page = page == null ? 1 : page;

        PageRequest pageRequest = PageRequest.of(page -1 , PAGE_SIZE);


//        Admissions
        //Tin moi nhat
        Page<Article> pages = articleRepository.loadLastestArticles(pageRequest);

        modelAndView.addObject("totalElements", pages.getTotalElements());
        modelAndView.addObject("totalPages", pages.getTotalPages());
        modelAndView.addObject("page", page);
        modelAndView.addObject("visiblePage", 5);
        modelAndView.addObject("lastArticles", articleRepository.loadLastestArticles(pageRequest).getContent());

        //Tin tuyen sinh (block 2)
        modelAndView.addObject("admissionsArticles",
                articleRepository.loadArticlesByCategory(pageRequest, 6L).getContent());

        //Tin quoc te (block 3)
        modelAndView.addObject("internationalArticles",
                articleRepository.loadArticlesByCategory(pageRequest, 8L).getContent());

        //Thong ke category

        Object[][] statisticalCategory = categoryRepository.findStatisticalCategory();
        List<StatisticalCategory> statisticalCategories = new ArrayList<>();

        for (Object[] cat : statisticalCategory) {
            StatisticalCategory category = new StatisticalCategory((String)cat[0], (BigInteger)cat[1], "/category/" + cat[2]);
            statisticalCategories.add(category);
        }

        modelAndView.addObject("statisticalCategory", statisticalCategories);

        return modelAndView;
    }

    /**
     * Detail page
     *
     */
    @GetMapping("/detail/{id}")
    public ModelAndView viewDetail(@PathVariable(value="id") Long id) {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName(DETAIL_TEMPLATE);

        Optional<Article> articleOptional = articleRepository.findById(id);
        if (articleOptional.isPresent()) {
            modelAndView.addObject("article", articleOptional.get());
        }

        PageRequest pageRequest = PageRequest.of(0 , PAGE_SIZE_MOST_VIEW);
        Page<Article> pages = articleRepository.loadLastestArticles(pageRequest);
        modelAndView.addObject("relatedArticlesOne", pages.getContent());
        modelAndView.addObject("mostView", pages.getContent());

        pageRequest.next();
        pages = articleRepository.loadLastestArticles(pageRequest);
        modelAndView.addObject("relatedArticlesTwo", pages.getContent());


        return modelAndView;
    }

    /**
     * About page
     *
     */
    @GetMapping("/about")
    public ModelAndView about() {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName(ABOUT_TEMPLATE);
        return modelAndView;
    }

    /**
     * Contact page
     *
     */
    @GetMapping("/contact")
    public ModelAndView contact() {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName(CONTACT_TEMPLATE);

        return modelAndView;
    }

    /**
     * Index page
     *
     */
    @GetMapping("/category/{code}")
    public ModelAndView category(@RequestParam(name = "page", required = false) Integer page,
                                    @PathVariable("code") String code) {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName(CATEGORY_TEMPLATE);

        page = page == null ? 1 : page;

        PageRequest pageRequest = PageRequest.of(page -1 , 10);
        Page<Article> pages = articleRepository.loadArticlesByCategoryCode(pageRequest,code);

        if (pages.getTotalElements() == 0) {
            pages = articleRepository.loadLastestArticles(pageRequest);
        }

        modelAndView.addObject("totalElements", pages.getTotalElements());
        modelAndView.addObject("totalPages", pages.getTotalPages());
        modelAndView.addObject("page", page);
        modelAndView.addObject("visiblePage", 5);
        modelAndView.addObject("featuredArticles", pages.getContent());
        modelAndView.addObject("categoryCode", code);

        return modelAndView;
    }

    /**
     * Add dynamic component such as menu, category,..
     * @param model
     */
    @ModelAttribute
    private void addAttributes(Model model) {
        //Dynamic Menu
        List<Menu> menus = menuRepository.findParentMenu();
        model.addAttribute("menus", menus);
        model.addAttribute("contextPath", contextPath);
    }

}
