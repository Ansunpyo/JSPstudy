import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginServlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("UTF-8"); //post에서 한글 처리
		String id = request.getParameter("id"); //get에서 한글 처리
		String pw = request.getParameter("passwd");
		String hv = request.getParameter("hiddenValue");
		response.setContentType("text.html;charset=utf-8");
		printWriter out = reponse.getWriter();
		out.println("<p>아이디 = " + id + "</p>");
		out.println("<p>비밀번호 = " + pw + "</p>");
	}

}
