package org.example.Services;

import org.example.News;

import java.util.List;

public interface NewsService {

    public List<News> getAllNews();

    News addNews(News news);

    public List<News> findByCategory (String category);

    public List<News>  findByKeyWord (String content);
}
