package org.example.Services.Impl;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.example.News;
import org.example.Repository.NewsRepository;
import org.example.Services.NewsService;


import java.util.List;
import java.util.Optional;
import java.util.Set;


public class NewsServiceImpl implements NewsService {
    final static Logger logger = LogManager.getLogger(NewsServiceImpl.class);

    private final String GET_ALL_NEWS = "select id, title, content, category, date from news";
    private final String ADD_NEW_NEWS = "insert into news(id, title, content, category, date) values(default,?, ?, ?, ?)";
    private final String GET_NEWS_BY_CATEGORY = "select id, title, content, category, date from news where category = ?";
    private final String GET_NEWS_BY_KEYWORD = "select id, title, content, category, date from news where content = '%?'";

    private final NewsRepository newsRepository;

    public NewsServiceImpl(NewsRepository newsRepository) {
        this.newsRepository = newsRepository;
    }

    @Override
    public List<News> getAllNews() {
        return newsRepository.findAll();
    }

    @Override
    public News addNews(News news) {
        return newsRepository.save(news);
    }

    @Override
    public List<News>  findByCategory(String category) {
        return newsRepository.findByCategory(category);
    }

    ///НАЙТИ ПО СЛОВУ НЕ КОНТЕНТ
    @Override
    public List<News>  findByKeyWord(String content) {
        return newsRepository.findByKeyWord(content);
    }


}
