package bamcoding.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 큐브.jsp model2 방식으로 코딩합니다.
 * @author 206-017
 *
 */
public class ViewCubeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ViewCubeServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String viewPath = "/WEB-INF/view/bamcoding/background.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(viewPath);
		rd.forward(request, response);

	}

}
