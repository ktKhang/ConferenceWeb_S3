package conferenceWeb.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import conferenceWeb.model.Account;
import conferenceWeb.service.AccountService;

@Controller
public class LoginController {

	@GetMapping("/login")
	public String Login() {
		return "login";
	}

	@GetMapping("/logout")
	public String Logout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.invalidate();
		}
		return "Home";
	}

	@PostMapping("/post-login")
	public String Login(@ModelAttribute Account account, BindingResult bindingResult, HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Account acc = AccountService.FindAccountByUsername(username);
		if (acc != null) {
			if (acc.getPassword().equals(password)) {
				HttpSession session = request.getSession();
				session.setAttribute("username", username);
				request.setAttribute("account", acc);
				try {
					response.sendRedirect("/all-news");
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return "login";
	}
}
