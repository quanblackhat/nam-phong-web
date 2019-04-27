package com.namphong.web.services;

import com.namphong.web.models.Article;
import com.namphong.web.repositories.ArticleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;

@Service
public class ArticleService {

    @Autowired
    private ArticleRepository articleRepository;

    @Value("${page_show}")
    public int PAGE_SHOW;
    @Value("${page_init}")
    public int FIRST_PAGE;
    @Value("${page_size}")
    public int PAGE_SIZE;

    /**
     * Cac ham co san cua JPA
     */
    public Optional<Article> findById(Long articleId) {
        return articleRepository.findById(articleId);
    }

    public Page<Article> loadLatestArticles(Pageable pageRequest) {
        return articleRepository.loadLatestArticles(pageRequest);
    }

    public Page<Article> loadArticlesByCategory(Pageable pageRequest, Long categoryId) {
        return articleRepository.loadArticlesByCategory(pageRequest, categoryId);
    }

    public Page<Article> loadArticlesByCategoryCode(Pageable pageRequest, String categoryCode) {
        return articleRepository.loadArticlesByCategoryCode(pageRequest, categoryCode);
    }

    public void save(Article article) {
        articleRepository.save(article);
    }

    public void saveAll(List<Article> articles) {
        articleRepository.saveAll(articles);
    }


    /**
     * Cac ham custom, su dung cac ham mac dinh, xu ly du lieu put vao view
     */
    public void loadLatestArticlesPage(ModelAndView modelAndView, Integer page, Integer pageSize) {

        page = page == null ? 1 : page;
        PageRequest pageRequest = PageRequest.of(page -1 , pageSize);

        //Tin moi nhat
        Page<Article> pages = articleRepository.loadLatestArticles(pageRequest);
        modelAndView.addObject("totalElements", pages.getTotalElements());
        modelAndView.addObject("totalPages", pages.getTotalPages());
        modelAndView.addObject("page", page);
        modelAndView.addObject("visiblePage", PAGE_SHOW);
        modelAndView.addObject("lastArticles", pages.getContent());
    }

    public void loadArticleByCategoryPage(ModelAndView modelAndView, Integer page, Integer pageSize, String code) {
        page = page == null ? 1 : page;

        PageRequest pageRequest = PageRequest.of(page -1 , pageSize);
        Page<Article> pages = this.loadArticlesByCategoryCode(pageRequest,code);

        if (pages.getTotalElements() == 0) {
            pages = this.loadLatestArticles(pageRequest);
        }

        modelAndView.addObject("totalElements", pages.getTotalElements());
        modelAndView.addObject("totalPages", pages.getTotalPages());
        modelAndView.addObject("page", page);
        modelAndView.addObject("visiblePage", 5);
        modelAndView.addObject("featuredArticles", pages.getContent());
        modelAndView.addObject("categoryCode", code);
    }

    public void loadArticleDetail(ModelAndView modelAndView, Long id) {

        Optional<Article> articleOptional = this.findById(id);
        articleOptional.ifPresent(article -> modelAndView.addObject("article", article));

        PageRequest pageRequest = PageRequest.of(FIRST_PAGE , 5);

        //Todo: Hardcode bai viet lien quan va bai viet duoc xem nhieu nhat
        Page<Article> pages = this.loadLatestArticles(pageRequest);
        modelAndView.addObject("relatedArticlesOne", pages.getContent());
        modelAndView.addObject("mostView", pages.getContent());
        modelAndView.addObject("relatedArticlesTwo", this.loadLatestArticles(pageRequest.next()).getContent());
    }
}
