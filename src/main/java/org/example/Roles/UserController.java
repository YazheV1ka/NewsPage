package org.example.Roles;

import org.example.News;
import org.example.Services.Impl.NewsServiceImpl;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;


import javax.transaction.Transactional;
import java.util.List;

@Controller
@RequestMapping("/")
public class UserController{

    private final NewsServiceImpl newsServiceImpl;
    public List<News> newsList;

    public UserController(NewsServiceImpl newsServiceImpl) {
        this.newsServiceImpl = newsServiceImpl;
    }

    @GetMapping(value = "/")
    public String get(){
        return "redirect:news";
    }
    @GetMapping(value = "/news")
    public String getAllNews(Model model) {
        newsList = newsServiceImpl.getAllNews();
        model.addAttribute("newsList",newsList);
        if (newsList == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "News not found");
        }
        return "news";

    }
    @Transactional
    @GetMapping(value = "/news/category/{category}")
    public String findByCategory(@PathVariable String category, Model model) {
        newsList = newsServiceImpl.findByCategory(category);
        model.addAttribute("newsList",newsList);
        if (newsList == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "News in this category not found");
        }
       return "news";
    }



    @Transactional
    @GetMapping(value = "/news/content")
    public String findByKeyWord(@RequestParam(value = "content") String content, Model model) {
        newsList = newsServiceImpl.findByKeyWord(content);
        model.addAttribute("newsList",newsList);
        if (newsList == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "News with this word not found");
        }
        return "news";
    }

}