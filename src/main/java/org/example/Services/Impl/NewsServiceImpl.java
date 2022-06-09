package org.example.Services.Impl;

import org.example.News;
import org.example.Repository.NewsRepository;
import org.example.Services.NewsService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsServiceImpl implements NewsService {


    private final NewsRepository newsRepository;
    private News news;

    public NewsServiceImpl(NewsRepository newsRepository) {
        this.newsRepository = newsRepository;
    }

    @Override
    public List<News> getAllNews() {
        return newsRepository.findAll();
    }

    @Override
    public News addNews(News news) {
        this.news = news;
        newsRepository.save(news);
        return news;
    }

    @Override
    public List<News>  findByCategory(String category) {
        return newsRepository.findByCategory(category);
    }

    @Override
    public List<News>  findByKeyWord(String content) {
        return newsRepository.findByKeyWord(content);
    }


}
