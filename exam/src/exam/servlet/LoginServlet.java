package exam.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import exam.model.User;

public class LoginServlet extends HttpServlet {
	User user=new User();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		HttpSession session=req.getSession();
		String name=req.getParameter("name");
		String password=req.getParameter("password");
		user.setName(name);
		user.setPassword(password);
		user.setScore(0);
		System.out.println("获取的前端登陆用户："+user.getName());
		session.setAttribute("user", user);
		req.getRequestDispatcher("/exam.jsp").forward(req, resp);
		System.out.println("跳转到exam页面");
	}

}
