package com.namphong.web.services;

import com.namphong.web.models.Article;
import com.namphong.web.models.Category;
import com.namphong.web.models.News;
import com.namphong.web.repositories.ArticleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.PageRequest;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class NewsService {

    @Autowired
    private ArticleRepository articleRepository;

    @Value("${page_show}")
    public int PAGE_SHOW;
    @Value("${page_init}")
    public int FIRST_PAGE;
    @Value("${page_size}")
    public int PAGE_SIZE;

    public List<News> findTop100News() {
        PageRequest pageRequest = PageRequest.of(FIRST_PAGE , 100);
        List<Article> articles = articleRepository.loadLatestArticles(pageRequest).getContent();
        return this.convertArticleToNew(articles);
    }

    private List<News> convertArticleToNew(List<Article> articles) {

        List<News> listOfNews = new ArrayList<>();

        for(Article article: articles) {
            News news = new News();
            news.setTitle(article.getTitle());
            news.setAuthor(article.getAuthor());
            for (Category category : article.getCategories()) {
                news.getCategoryNames().add(category.getName());
            }
            news.setContent(article.getContent());
            if (article.getDateCreatedTimestamp() != null) {
                Timestamp ts=new Timestamp(article.getDateCreatedTimestamp() * 1000);
                Date date=new Date(ts.getTime());
                news.setDateCreated(date);
            }
            news.setDateCreated(null);

            listOfNews.add(news);
        }

        return listOfNews;
    }
}
