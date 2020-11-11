package service.movie;

import model.Movie;

import java.sql.SQLException;
import java.util.List;

public class MovieManagement implements MovieService {
    @Override
    public List<Movie> findAll() {
        return null;
    }

    @Override
    public void addMovie(Movie movie) throws SQLException {

    }

    @Override
    public Movie findMovie(int id) {
        return null;
    }

    @Override
    public void deleteMovie(int id) throws SQLException {

    }

    @Override
    public boolean updateMovie(Movie movie) throws SQLException {
        return false;
    }

    @Override
    public List<Movie> findMovieByName(String words) {
        return null;
    }
}
