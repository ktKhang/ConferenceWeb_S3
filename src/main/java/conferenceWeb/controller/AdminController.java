package conferenceWeb.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import conferenceWeb.model.Account;
import conferenceWeb.model.News;
import conferenceWeb.model.Page;
import conferenceWeb.service.AccountService;
import conferenceWeb.service.NewsService;
import conferenceWeb.service.PageService;

@Controller
public class AdminController {
	@Autowired
	private NewsService newsService;
	@Autowired
	private AccountService accountService;
	@Autowired
    private PageService pageService;

	// Xem danh sách
	@GetMapping("/all-news")
	public String AllNews(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		if (username == null) {
			response.sendRedirect("/login");
		}
		request.setAttribute("lst_news", newsService.findAll());
		return "all-news";
	}

	@SuppressWarnings({ "unused", "static-access" })
	@RequestMapping(value = "/save-news", headers = ("content-type=multipart/*"), method = RequestMethod.POST, consumes = {
			"application/x-www-form-urlencoded" })
	public String SaveNews(@RequestParam("image") MultipartFile file, @ModelAttribute News news,
			BindingResult bindingResult, HttpServletRequest request) throws Exception {
		String announce = null;
		String linkImage = null;
		if (news.getId() == 0) {
			if(!file.getOriginalFilename().isEmpty())
			{
				linkImage = UploadFileToS3.handleFileUpload(file);
				news.setContent(news.getContent() + "<br/> <a href=\""+linkImage+"\"  target=\"_blank\">" + linkImage +"</a>");
			}
			news.setDate_created(java.time.LocalDate.now().toString());
			Account acc = accountService.GetAccountSession(request);
			news.setUsername(acc.getUsername());
			news.setAccount_id(acc.getId());
			news.setDate_created(java.time.LocalDate.now().toString());
			announce = "Add";
		} else {
			announce = "Update";
			if(!file.getOriginalFilename().isEmpty())
			{
				linkImage = UploadFileToS3.handleFileUpload(file);
				news.setContent(news.getContent() + "<br/> <a href=\""+linkImage+"\"  target=\"_blank\">" + linkImage +"</a>");
			}
		}
		try {
			newsService.save(news);
			request.setAttribute("message", "Successfull");
		} catch (Exception ex) {
			request.setAttribute("message", "Error");
		}
		request.setAttribute("lst_news", newsService.findAll());
		return "all-news";
	}
	
	//
	/*@RequestMapping(value = "/save-news", method = RequestMethod.POST)
	public String SaveNews(@ModelAttribute News news, BindingResult bindingResult, HttpServletRequest request) {
		String announce = null;
		if (news.getId() == 0) {
			news.setDate_created(java.time.LocalDate.now().toString());
			Account acc = accountService.GetAccountSession(request);
			news.setUsername(acc.getUsername());
			news.setAccount_id(acc.getId());
			announce = "Add";
		} else {
			announce = "Update";
		}
		try {
			newsService.save(news);
			request.setAttribute("message", announce + " successfully");
			System.out.println(announce);
		} catch (Exception ex) {
			request.setAttribute("message", "Error!");
		}

		request.setAttribute("lst_news", newsService.findAll());
		return "all-news";
	}*/

	//
	@GetMapping("/create-news")
	public String CreateNews(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		if (username == null) {
			response.sendRedirect("/login");
		}
		request.setAttribute("message", null);
		return "create-news";
	}

	//
	@GetMapping("/update-news")
	public String UpdateNews(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("message", null);
		request.setAttribute("news", newsService.findNews(id));
		// request.setAttribute("mode", "MODE_NEW");
		return "update-news";
	}

	//
	@GetMapping("/delete-news")
	public String DeleteNews(@RequestParam int id, HttpServletRequest request) {
		try {
			newsService.delete(id);
			request.setAttribute("message", "Deleted successfully");
		} catch (Exception ex) {
			request.setAttribute("message", "!Error! - Can not delete");
		}
		// request.setAttribute("mode", "MODE_NEW");
		request.setAttribute("lst_news", newsService.findAll());
		return "all-news";
	}
	// manage home page
    @GetMapping("/page")
    public String Page(@RequestParam int idpage, HttpServletRequest request) {
    	request.setAttribute("idpage", idpage);
    	if(idpage == 1)
    		request.setAttribute("pagecontent", pageService.findPage(1));
    	if(idpage == 2)
    		request.setAttribute("pagecontent", pageService.findPage(2));
    	if(idpage == 3)
    		request.setAttribute("pagecontent", pageService.findPage(3));
    	if(idpage == 4)
    		request.setAttribute("pagecontent", pageService.findPage(4));
    	if(idpage == 5)
    		request.setAttribute("pagecontent", pageService.findPage(5));
    	if(idpage == 6)
    		request.setAttribute("pagecontent", pageService.findPage(6));
    	return "page";
    }
    @PostMapping("/save-page")
    public String SavePage(@RequestParam("idpage") int idpage, @ModelAttribute Page page, BindingResult bindingResult, HttpServletRequest request) {
    	try {
			request.setCharacterEncoding("UTF-8");
			pageService.save(page);
				request.setAttribute("message", "Update page successfully");
		} catch (Exception e) {
			
			request.setAttribute("message", "Error");
		}
    	
    	request.setAttribute("idpage", idpage);
    	if(idpage == 1)
    		request.setAttribute("pagecontent", pageService.findPage(1));
    	if(idpage == 2)
    		request.setAttribute("pagecontent", pageService.findPage(2));
    	if(idpage == 3)
    		request.setAttribute("pagecontent", pageService.findPage(3));
    	if(idpage == 4)
    		request.setAttribute("pagecontent", pageService.findPage(4));
    	if(idpage == 5)
    		request.setAttribute("pagecontent", pageService.findPage(5));
    	if(idpage == 6)
    		request.setAttribute("pagecontent", pageService.findPage(6));
    	return "page";
    }
    
}
