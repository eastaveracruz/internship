package net.proselyte.bookmanager.dao;

import net.proselyte.bookmanager.model.Book;

import java.util.List;

public interface BookDao {
    public void addBook(Book book);

    public void updateBook(Book book);

    public void removeBook(int id);

    public Book getBookById(int id);

    public List<Book> listBooks(int page);

    public List<Book> searchBooks(String string, int page);
}
