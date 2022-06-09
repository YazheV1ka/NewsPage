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

    @PostMapping(value = "/newNews")
    public String addNews(@ModelAttribute News news, Model model) {
        newsService.addNews(news);
        model.addAttribute("newNews",newsService);
        return "redirect:/news";
    }

    @GetMapping(value = "/newNews")
    public String newNews(Model model) {
        model.addAttribute("newNews",new News());
        return "newNews";
    }
}