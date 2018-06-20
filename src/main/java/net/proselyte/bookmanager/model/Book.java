package net.proselyte.bookmanager.model;

import javax.persistence.*;

@Entity
@Table(name = "book")
public class Book {
    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "TITLE")
    private String bookTitle;

    @Column(name = "DESCRIPTION")
    private String bookDescription;

    @Column(name = "AUTHOR")
    private String bookAuthor;

    @Column(name = "ISBN")
    private String bookIsbn;

    @Column(name = "PRINTYEAR")
    private int bookPrintYear;

    @Column(name = "READALREADY")
    private int bookReadAlready;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBookTitle() {
        return bookTitle;
    }

    public void setBookTitle(String bookTitle) {
        this.bookTitle = bookTitle;
    }

    public String getBookDescription() {
        return bookDescription;
    }

    public void setBookDescription(String bookDescription) {
        this.bookDescription = bookDescription;
    }

    public String getBookAuthor() {
        return bookAuthor;
    }

    public void setBookAuthor(String bookAuthor) {
        this.bookAuthor = bookAuthor;
    }

    public String getBookIsbn() {
        return bookIsbn;
    }

    public void setBookIsbn(String bookIsbn) {
        this.bookIsbn = bookIsbn;
    }

    public int getBookPrintYear() {
        return bookPrintYear;
    }

    public void setBookPrintYear(int bookPrintYear) {
        this.bookPrintYear = bookPrintYear;
    }

    public int getBookReadAlready() {
        return bookReadAlready;
    }

    public void setBookReadAlready(int bookReadAlready) {
        this.bookReadAlready = bookReadAlready;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", bookTitle='" + bookTitle + '\'' +
                ", bookDescription='" + bookDescription + '\'' +
                ", bookAuthor='" + bookAuthor + '\'' +
                ", bookIsbn='" + bookIsbn + '\'' +
                ", bookPrintYear=" + bookPrintYear +
                ", bookReadAlready=" + bookReadAlready +
                '}';
    }
}
