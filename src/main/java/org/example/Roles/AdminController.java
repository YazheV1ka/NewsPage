package org.example.Roles;

import org.example.News;
import org.example.Services.NewsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/")
public class AdminController {
    NewsService newsService;


    @RequestMapping(value = "news/newNews", method = RequestMethod.POST)
    public String addNews(@ModelAttribute News news) {
        newsService.addNews(news);
        return "redirect:/news";
    }

    @RequestMapping(value = "news/newNews", method = RequestMethod.GET)
    public String newNews(Model model) {
        model.addAttribute("news",new News());
        return "newNews";
    }
}