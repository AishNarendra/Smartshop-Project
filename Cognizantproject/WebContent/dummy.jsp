package claims;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import config.DbUtils;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String fname=req.getParameter("fname");
			String lname=req.getParameter("lname");
			String dob=req.getParameter("dob");
			String phone=req.getParameter("phone");
			String pwd=req.getParameter("pwd");
			String agentid=req.getParameter("agentid");
			String memberid=req.getParameter("memberid");
			String utype=req.getParameter("utype");
			String gender=req.getParameter("gender");
			HttpSession session=req.getSession();
			
			Connection con=DbUtils.connect();
			PreparedStatement ps=con.prepareStatement("insert into users(fname,lname,dob,phone,pwd,userid,utype,gender) "
					+ "values(?,?,?,?,?,?,?,?)");
			ps.setString(1, fname);
			ps.setString(2, lname);
			ps.setString(3, dob);
			ps.setString(4, phone);
			ps.setString(5, pwd);
			if(utype.equals("agent"))
				ps.setString(6, agentid);
			else
				ps.setString(6, memberid);
			ps.setString(7, utype);
			ps.setString(8, gender);
			ps.executeUpdate();
			
			session.setAttribute("msg", utype+" registerd successfully");
			resp.sendRedirect("memberlogin.jsp");
		}
		catch(Exception ex) {
			System.out.println("Error "+ex.getMessage());
		}
	}
}