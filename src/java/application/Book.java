/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package application;

/**
 *
 * @author axelt
 */
public class Book 
{
    private String title;
    private String author;
    private String pubYear;
    private String review;
    private String rating;

    public Book() {}

    public Book(String name, String author, String pubYear, String review, String rating) {
        this.title = name;
        this.author = author;
        this.pubYear = pubYear;
        this.review = review;
        this.rating = rating;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String name) {
        this.title = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPubYear() {
        return pubYear;
    }

    public void setPubYear(String pubYear) {
        this.pubYear = pubYear;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    @Override
    public String toString() 
    {
        return "\n\nTitle: " + title + "\nAuthor: " + author + "\nPublication Year: " + pubYear + "\nReview: " + review + "\nRating out of 5: " + rating;
    }
}
