package model;

public class Movie {
    private String name,poster, trailer, description,country;
    private float imdb;
    private int id,country_id;

    public Movie() {
    }

    public Movie(String name, String poster, String country, float imdb, int id) {
        this.name = name;
        this.poster = poster;
        this.country = country;
        this.imdb = imdb;
        this.id = id;
    }

    public Movie(String name, String poster, int id) {
        this.name = name;
        this.poster = poster;
        this.id = id;
    }

    public Movie(String name, String poster, String trailer, String description, float imdb, int country_id) {
        this.name = name;
        this.poster = poster;
        this.trailer = trailer;
        this.description = description;
        this.imdb = imdb;
        this.id = id;
        this.country_id = country_id;
    }

    public Movie(String name, String poster, int id, float imdb, String country, int country_id) {
        this.name = name;
        this.poster = poster;
        this.id = id;
        this.imdb = imdb;
        this.country = country;
        this.country_id = country_id;
    }

    public Movie(String name, String poster, String trailer, String description, float imdb, String country, int id) {
        this.name = name;
        this.poster = poster;
        this.trailer = trailer;
        this.description = description;
        this.imdb = imdb;
        this.country = country;
        this.id = id;
    }

    public Movie(String name, String poster, String trailer, String description, float imdb, String country) {
        this.name = name;
        this.poster = poster;
        this.trailer = trailer;
        this.description = description;
        this.imdb = imdb;
        this.country = country;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPoster() {
        return poster;
    }

    public void setPoster(String poster) {
        this.poster = poster;
    }

    public String getTrailer() {
        return trailer;
    }

    public void setTrailer(String trailer) {
        this.trailer = trailer;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public float getImdb() {
        return imdb;
    }

    public void setImdb(float imdb) {
        this.imdb = imdb;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCountry_id() {
        return country_id;
    }

    public void setCountry_id(int country_id) {
        this.country_id = country_id;
    }
}
