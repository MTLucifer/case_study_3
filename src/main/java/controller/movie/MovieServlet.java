package controller.movie;

import model.Customer;
import model.Movie;
import service.customer.CustomerDAO;
import service.customer.CustomerService;
import service.movie.MovieDAO;
import service.movie.MovieService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "MovieServlet",urlPatterns = "/guest")
public class MovieServlet extends HttpServlet {
    private MovieService ms = new MovieDAO();
    private CustomerService cs = new CustomerDAO();


    private void listMovies(HttpServletRequest request, HttpServletResponse response) {
        List<Movie> movies = this.ms.findAll();
        request.setAttribute("guest", movies);

        RequestDispatcher dispatcher = request.getRequestDispatcher("guest/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                try {
                    createCustomer(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            case "search":
                listMovieByName(request, response);
                break;
            default:
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateForm(request, response);
                break;
            case "view":
                viewMovie(request, response);
                break;
            case "room":
                viewRoom(request, response);
                break;
            case "food":
                viewFood(request, response);
                break;
            case "about":
                viewAbout(request, response);
                break;
            default:
                listMovies(request, response);
                break;
        }
    }

    private void listMovieByName(HttpServletRequest request, HttpServletResponse response) {
        String words = request.getParameter("words");
        List<Movie> movies = this.ms.findMovieByName(words);
        request.setAttribute("guest", movies);

        RequestDispatcher dispatcher = request.getRequestDispatcher("guest/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("guest/book.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void viewRoom(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("guest/room.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void viewAbout(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("guest/about.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void viewFood(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("guest/food.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void createCustomer(HttpServletRequest request, HttpServletResponse response) throws SQLException, UnsupportedEncodingException {
        String phone = request.getParameter("phone");
        String name = request.getParameter("name");
        String facility = request.getParameter("facility");
        if (phone != "" || name != "") {
            Customer customer = new Customer(phone, name, facility);
            this.cs.addCustomer(customer);
            RequestDispatcher dispatcher = request.getRequestDispatcher("guest/book.jsp");
            request.setAttribute("message", "Your information has been send");
            try {
                dispatcher.forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("guest/book.jsp");
            request.setAttribute("message", "Check your information again");
            try {
                dispatcher.forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }

    private void viewMovie(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Movie movie = this.ms.findMovie(id);
        RequestDispatcher dispatcher;
        if (movie == null) {
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("movie", movie);
            dispatcher = request.getRequestDispatcher("guest/view.jsp");
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
