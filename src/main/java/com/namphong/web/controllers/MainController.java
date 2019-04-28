package com.namphong.web.controllers;

import com.namphong.web.services.ArticleService;
import com.namphong.web.services.CategoryService;
import com.namphong.web.services.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

    private static final String INDEX_TEMPLATE          =  "layouts/index";
    private static final String DETAIL_TEMPLATE         =  "layouts/detail";
    private static final String ABOUT_TEMPLATE          =  "layouts/about";
    private static final String CONTACT_TEMPLATE        =  "layouts/contact";
    private static final String CATEGORY_TEMPLATE       =  "layouts/category";

    @Autowired
    private ArticleService articleService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private MenuService menuService;

    @Value("${server.servlet.context-path}")
    private String contextPath;

    @Value("${page_init}")
    public int FIRST_PAGE;
    @Value("${page_size}")
    public int PAGE_SIZE;

    /**
     * Add dynamic component such as menu, category,..
     * @param model
     */
    @ModelAttribute
    private void addAttributes(Model model) {
        //Dynamic Menu
        model.addAttribute("menus", menuService.findParentMenu());
        // Thong ke bai viet theo category
        model.addAttribute("statisticalCategory", categoryService.findStatisticalCategory());
        //Context path
        model.addAttribute("contextPath", contextPath);

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

        //Tin moi nhat
        articleService.loadLatestArticlesPage(modelAndView, page, PAGE_SIZE);

        PageRequest pageRequest = PageRequest.of(FIRST_PAGE , PAGE_SIZE);

        //todo: Hardcode tin tuyen sinh co category id = 6
        modelAndView.addObject("admissionsArticles",
                articleService.loadArticlesByCategory(pageRequest, 6L).getContent());

        //todo: Hardcode tin quoc te co category id = 8
        modelAndView.addObject("internationalArticles",
                articleService.loadArticlesByCategory(pageRequest, 8L).getContent());

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
        articleService.loadArticleDetail(modelAndView, id);

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
        articleService.loadArticleByCategoryPage(modelAndView, page, PAGE_SIZE, code);
        return modelAndView;
    }



}
