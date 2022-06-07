package org.example.Roles;

import org.example.News;
import org.example.Services.Impl.NewsServiceImpl;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import java.util.List;

@Controller
@RequestMapping("/")
public class UserController{

    private final NewsServiceImpl newsServiceImpl;
    public List<News> newsList;

    public UserController(NewsServiceImpl newsServiceImpl) {
        this.newsServiceImpl = newsServiceImpl;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String get(){
        return "redirect:news";
    }
    @RequestMapping(value = "/news", method = RequestMethod.GET)
    public String getAllNews() {
        newsList = newsServiceImpl.getAllNews();
        if (newsList == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "News not found");
        }
        return "news";
    }

    /*@RequestMapping(value = "/news", method = RequestMethod.GET)
    public String findByCategory(@RequestParam String category) {
        newsList = newsServiceImpl.findByCategory(category);
        if (newsList == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "News in this category not found");
        }
        return "news";
    }*/

    /*@RequestMapping(value = "/news", method = RequestMethod.GET)
    public String findByKeyWord(@RequestParam String content) {
        newsList = newsServiceImpl.findByKeyWord(content);
        if (newsList == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "News with this word not found");
        }
        return "news";
    }*/
}