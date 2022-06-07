package org.example.Roles;

import org.example.News;
import org.example.Services.Impl.NewsServiceImpl;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import java.util.List;

@RestController
@RequestMapping("/")
public class UserController{

    NewsServiceImpl newsServiceImpl;
    public List<News> newsList;

    @RequestMapping(value = "/news", method = RequestMethod.GET)
    public List<News> getAllNews() {
        newsList = newsServiceImpl.getAllNews();
        if (newsList == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "News not found");
        }
        return newsList;
    }

    @RequestMapping(value = "/news", method = RequestMethod.GET)
    public List<News> findByCategory(@RequestParam String category) {
        newsList = newsServiceImpl.findByCategory(category);
        if (newsList == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "News in this category not found");
        }
        return "";
    }

    @RequestMapping(value = "/news", method = RequestMethod.GET)
    public News findByKeyWord(@RequestParam String content) {
        newsList = newsServiceImpl.findByKeyWord(content);
        if (newsList == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "News with this word not found");
        }
        return "";
    }
}