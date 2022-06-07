package org.example.Services;

import org.example.News;

import java.util.List;
import java.util.Optional;
import java.util.Set;

public interface NewsService {

    public List<News> getAllNews();

    public News addNews(News news);

    public List<News> findByCategory (String category);

    public List<News>  findByKeyWord (String content);
}
