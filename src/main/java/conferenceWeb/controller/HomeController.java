package conferenceWeb.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import conferenceWeb.service.NewsService;
import conferenceWeb.service.PageService;

@Controller
public class HomeController {

    @Autowired
    private NewsService newsService;
    @Autowired
    private PageService pageService;

    // Giao diện vào trang chủ
    @GetMapping("/")
    public String home(HttpServletRequest request) {
	request.setAttribute("lst_news", newsService.findAll());
	request.setAttribute("pagecontent", pageService.findPage(1));
	return "Home";
    }

    // Giao diện trang chi tiết news
    @GetMapping("/news")
    public String news(@RequestParam int id, HttpServletRequest request) {
	request.setAttribute("currnews", newsService.findNews(id));
	request.setAttribute("lst_news", newsService.findAll());
	return "news";
    }

    // Giao diện vào About
    @GetMapping("/about")
    public String about(HttpServletRequest request) {
	request.setAttribute("lst_news", newsService.findAll());
	request.setAttribute("pagecontent", pageService.findPage(2));
	return "about";
    }
    
    // Giao diện vào Keynote-speaker
    @GetMapping("/keynote-speaker")
    public String speaker(HttpServletRequest request) {
	request.setAttribute("lst_news", newsService.findAll());
	request.setAttribute("pagecontent", pageService.findPage(3));
	return "keynote-speaker";
    }

    // Giao diện vào Contact
    @GetMapping("/contact")
    public String contact(HttpServletRequest request) {
	request.setAttribute("lst_news", newsService.findAll());
	request.setAttribute("pagecontent", pageService.findPage(6));
	return "contact";
    }

    // Giao diện vào Venue-hotel
    @GetMapping("/venue-hotel")
    public String venue_hotel(HttpServletRequest request) {
	request.setAttribute("lst_news", newsService.findAll());
	request.setAttribute("pagecontent", pageService.findPage(5));
	return "venue-hotel";
    }

    // Giao diện vào Program
    @GetMapping("/program")
    public String program(HttpServletRequest request) {
	request.setAttribute("lst_news", newsService.findAll());
	request.setAttribute("pagecontent", pageService.findPage(4));
	return "program";
    }
}
