package controller.admin;

import model.Movie;
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

@WebServlet(name = "AdminMovieServlet", urlPatterns = "/admin/movie")
public class AdminMovieServlet extends HttpServlet {
    private MovieService ms = new MovieDAO();

    private void listMovies(HttpServletRequest request, HttpServletResponse response) {
        List<Movie> movies = this.ms.findAll();
        request.setAttribute("movies", movies);

        RequestDispatcher dispatcher = request.getRequestDispatcher("movie/list.jsp");
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
                    createMovie(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            case "edit":
                try {
                    updateMovie(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            case "delete":
                try {
                    deleteMovie(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            case "search":
                listMovieByName(request,response);
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
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                showDeleteForm(request, response);
                break;
            default:
                listMovies(request, response);
                break;
        }
    }

    private void listMovieByName(HttpServletRequest request, HttpServletResponse response) {
        String words = request.getParameter("words");
        List<Movie> movies = this.ms.findMovieByName(words);
        request.setAttribute("movies", movies);

        RequestDispatcher dispatcher = request.getRequestDispatcher("movie/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("movie/create.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void createMovie(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        String name = request.getParameter("name");
        String poster = request.getParameter("poster");
        String trailer = request.getParameter("trailer");
        String description = request.getParameter("description");
        float imdb = Float.parseFloat(request.getParameter("imdb"));
        int country_id = Integer.parseInt(request.getParameter("country_id"));
        if (name != "" || poster != "" || trailer != "" || description != "") {
            Movie movie = new Movie(name, poster, trailer, description, imdb, country_id);
            this.ms.addMovie(movie);
            RequestDispatcher dispatcher = request.getRequestDispatcher("movie/create.jsp");
            request.setAttribute("message", "New movie was created");
            try {
                dispatcher.forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("movie/create.jsp");
            request.setAttribute("message", "New movie was not created");
            try {
                dispatcher.forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Movie movie = this.ms.findMovie(id);
        RequestDispatcher dispatcher;
        if (movie == null) {
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("movies", movie);
            dispatcher = request.getRequestDispatcher("movie/edit.jsp");
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void updateMovie(HttpServletRequest request, HttpServletResponse response) throws SQLException, UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        int id = Integer.parseInt(request.getParameter("id"));
        String poster = request.getParameter("poster");
        String name = request.getParameter("name");
        String trailer = request.getParameter("trailer");
        int country_id = Integer.parseInt(request.getParameter("country_id"));
        String description = request.getParameter("description");
        float imdb = Float.parseFloat(request.getParameter("imdb"));
        Movie movie = this.ms.findMovie(id);
        RequestDispatcher dispatcher;
        if (movie == null) {
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            movie.setPoster(poster);
            movie.setName(name);
            movie.setTrailer(trailer);
            movie.setCountry_id(country_id);
            movie.setDescription(description);
            movie.setImdb(imdb);
            movie.setId(id);
            boolean isUpdated = this.ms.updateMovie(movie);
            if (isUpdated) {
                request.setAttribute("movies", movie);
                request.setAttribute("message", "Movie information was updated");
            } else
                request.setAttribute("message", "Movie information was not updated");
        }
        dispatcher = request.getRequestDispatcher("movie/edit.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showDeleteForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Movie movie = this.ms.findMovie(id);
        RequestDispatcher dispatcher;
        if (movie == null) {
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("movies", movie);
            dispatcher = request.getRequestDispatcher("movie/delete.jsp");
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteMovie(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        Movie movie = this.ms.findMovie(id);
        RequestDispatcher dispatcher;
        if (movie == null) {
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            this.ms.deleteMovie(id);
            try {
                response.sendRedirect("/admin/movie");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

}
