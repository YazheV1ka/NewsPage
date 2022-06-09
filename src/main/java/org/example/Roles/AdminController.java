package org.example.Roles;

import org.example.News;
import org.example.Services.NewsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/")
public class AdminController {
   private final NewsService newsService;

    public AdminController(NewsService newsService) {
        this.newsService = newsService;
    }


    @RequestMapping(value = "/newNews", method = RequestMethod.POST)
    public String addNews(@ModelAttribute News news, Model model) {
        newsService.addNews(news);
        model.addAttribute("newsService",newsService);
        return "redirect:/news";
    }

    @RequestMapping(value = "/newNews", method = RequestMethod.GET)
    public String newNews(Model model) {
        model.addAttribute("newsService",new News());
        return "newNews";
    }
}