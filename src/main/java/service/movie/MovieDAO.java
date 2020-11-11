package service.movie;

import model.Customer;
import model.Movie;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MovieDAO implements MovieService{
    private String url = "jdbc:mysql://localhost:3306/case_study?useSSL=false";
    private String user = "root";
    private String password = "Doi2thutoc";

    private static final String INSERT_MOVIES_SQL = "{CALL create_movie(?,?,?,?,?,?)}";
    private static final String SELECT_MOVIE_BY_ID = "{CALL find_movie_by_id(?)}";
    private static final String SELECT_ALL_MOVIES = "{CALL find_all_movie()}";
    private static final String DELETE_MOVIES_SQL = "{CALL delete_movie(?)};";
    private static final String UPDATE_MOVIES_SQL = "{CALL edit_movie(?,?,?,?,?,?,?)}";
    private static final String SELECT_MOVIES_BY_CATEGORY = "{CALL find_movie_by_category(?)}";
    private static final String SELECT_MOVIES_BY_NAME = "{CALL find_movie_by_name(?)}";
    private static final String SELECT_MOVIES_BY_COUNTRY = "{CALL find_movie_by_country(?)}";

    public Connection getJDBC() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(this.url, this.user, this.password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return connection;
    }

    public List<Movie> findMovieByCategory() {
        List<Movie> movies = new ArrayList<>();
        try (Connection connection = getJDBC();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_MOVIES_BY_CATEGORY);) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String poster = rs.getString("poster");
                String name = rs.getString("name");
                float imdb = rs.getFloat("imdb");
                String country = rs.getString("country");
                int id = rs.getInt("id");
                int country_id = rs.getInt("country_id");
                movies.add(new Movie(name, poster,id,imdb,country,country_id));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return movies;
    }

    public List<Movie> findMovieByName(String words) {
        List<Movie> movies = new ArrayList<>();
        try (Connection connection = getJDBC();
             CallableStatement callableStatement = connection.prepareCall(SELECT_MOVIES_BY_NAME);) {
            callableStatement.setString(1,words);
            ResultSet rs = callableStatement.executeQuery();
            while (rs.next()) {
                String poster = rs.getString("poster");
                String name = rs.getString("name");
                int id = rs.getInt("id");
                String country = rs.getString("country");
                float imdb = rs.getFloat("imdb");
                movies.add(new Movie(name, poster,country,imdb,id));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return movies;
    }

    @Override
    public List<Movie> findAll() {
        List<Movie> movies = new ArrayList<>();
        try (Connection connection = getJDBC();
             CallableStatement callableStatement = connection.prepareCall(SELECT_ALL_MOVIES);) {
            System.out.println(callableStatement);
            ResultSet rs = callableStatement.executeQuery();
            while (rs.next()) {
                String poster = rs.getString("poster");
                String name = rs.getString("name");
                float imdb = rs.getFloat("imdb");
                String country = rs.getString("country");
                int id = rs.getInt("id");
                int country_id = rs.getInt("country_id");
                movies.add(new Movie(name, poster,id,imdb,country,country_id));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return movies;
    }

    @Override
    public void addMovie(Movie movie) throws SQLException {
        try (Connection connection = getJDBC();
             CallableStatement callableStatement = connection.prepareCall(INSERT_MOVIES_SQL);) {
            callableStatement.setString(1, movie.getName());
            callableStatement.setInt(2, movie.getCountry_id());
            callableStatement.setFloat(3, movie.getImdb());
            callableStatement.setString(4, movie.getPoster());
            callableStatement.setString(5, movie.getTrailer());
            callableStatement.setString(6, movie.getDescription());
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Movie findMovie(int id) {
        Movie movie = null;
        try (Connection connection = getJDBC();
             CallableStatement callableStatement = connection.prepareCall(SELECT_MOVIE_BY_ID);) {
            callableStatement.setInt(1,id);
            ResultSet rs = callableStatement.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                String country= rs.getString("country");
                String poster = rs.getString("poster");
                float imdb = rs.getFloat("imdb");
                String trailer = rs.getString("trailer");
                String description = rs.getString("description");
                movie = new Movie( name, poster, trailer,description,imdb,country);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return movie;
    }

    @Override
    public void deleteMovie(int id) throws SQLException {
        try (Connection connection = getJDBC();
             CallableStatement callableStatement = connection.prepareCall(DELETE_MOVIES_SQL);) {
            callableStatement.setInt(1, id);
            callableStatement.executeUpdate();
        }
    }

    @Override
    public boolean updateMovie(Movie movie) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getJDBC(); CallableStatement callableStatement = connection.prepareCall(UPDATE_MOVIES_SQL);) {
            callableStatement.setString(1, movie.getName());
            callableStatement.setInt(2, movie.getCountry_id());
            callableStatement.setFloat(3, movie.getImdb());
            callableStatement.setString(4, movie.getPoster());
            callableStatement.setString(5, movie.getTrailer());
            callableStatement.setString(6, movie.getDescription());
            callableStatement.setInt(7, movie.getId());
            rowUpdated = callableStatement.executeUpdate() > 0;
        }
        return rowUpdated;
    }


}
