package exam.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import exam.model.User;

public class SubmitServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=req.getSession();
		int score=0;
		String answer1=req.getParameter("first");
		String answer2=req.getParameter("second");
		String answer3=req.getParameter("third");
		String answer4=req.getParameter("forth");
		String answer5=req.getParameter("fifth");
		System.out.println(answer1+answer2+answer3+answer4+answer5);
		if(answer1.equals("C")){
			score+=20;
		 }
		if(answer2.equals("A")){
			score+=20;
		 }
		if(answer3.equals("B")){
			score+=20;
		 }
		if(answer4.equals("B")){
			score+=20;
		 }
		if(answer5.equals("B")){
			score+=20;
		 }
		User user=(User) session.getAttribute("user");
		user.setScore(score);
		session.setAttribute("user", user);
		System.out.println(user.getName()+user.getScore());
		req.getRequestDispatcher("/score.jsp").forward(req, resp);
		System.out.println("跳转到score页面");
	}

}
