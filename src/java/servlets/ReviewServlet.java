package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddListing
 */
@WebServlet(name = "ReviewServlet", urlPatterns
        = {
            "/ReviewServlet"
        })

public class ReviewServlet extends HttpServlet 
{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        String pubYear = request.getParameter("pubYear");
        String review = request.getParameter("review");
        String rating = request.getParameter("rating");

        try (PrintWriter out = response.getWriter()) 
        {
            response.setContentType("text/html;charset=UTF-8");
            if (title != null && author != null && review != null && pubYear != null && rating != null) 
            {
                request.setAttribute("title", title);
                request.setAttribute("body", author);
                request.setAttribute("author", pubYear);
                request.setAttribute("review", review);
                request.setAttribute("rating", rating);
                getServletContext().getRequestDispatcher("/review_response.jsp").forward(request, response);
            }
        }
    }
    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
