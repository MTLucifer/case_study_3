package service.movie;

import model.Customer;
import model.Movie;

import java.sql.SQLException;
import java.util.List;

public interface MovieService {
    List<Movie> findAll();

    void addMovie(Movie movie) throws SQLException;

    Movie findMovie(int id);

    void deleteMovie(int id) throws SQLException;

    boolean updateMovie(Movie movie) throws SQLException;

    List<Movie> findMovieByName(String words);
}
