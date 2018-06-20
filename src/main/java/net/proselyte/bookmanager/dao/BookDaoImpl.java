package net.proselyte.bookmanager.dao;

import net.proselyte.bookmanager.model.Book;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BookDaoImpl implements BookDao {
    private static final Logger logger = LoggerFactory.getLogger(BookDaoImpl.class);

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addBook(Book book) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(book);
        logger.info("Book successfully saved. Book details: " + book);
    }

    @Override
    public void updateBook(Book book) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(book);
        logger.info("Book successfully update. Book details: " + book);
    }

    @Override
    public void removeBook(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Book book = (Book) session.load(Book.class, new Integer(id));

        if(book!=null){
            session.delete(book);
        }
        logger.info("Book successfully removed. Book details: " + book);
    }

    @Override
    public Book getBookById(int id) {
        Session session =this.sessionFactory.getCurrentSession();
        Book book = (Book) session.load(Book.class, new Integer(id));
        logger.info("Book successfully loaded. Book details: " + book);

        return book;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Book> listBooks(int page) {
        Session session = this.sessionFactory.getCurrentSession();
        String hql = "from Book";
        Query query = session.createQuery(hql);
        query.setFirstResult(page*10);
        query.setMaxResults(page*10 + 10);
        List<Book> bookList = query.list();

        for(Book book: bookList){
            logger.info("Book list: " + book);
        }

        return bookList;
    }

    @Override
    public List<Book> searchBooks(String string, int page) {
        Session session = this.sessionFactory.getCurrentSession();
        Query query = session.createQuery("FROM Book WHERE TITLE LIKE :string");
        query.setParameter("string", "%" + string + "%");
        query.setFirstResult(page*10);
        query.setMaxResults(page*10 + 10);
        List<Book> bookList = query.list();

        return bookList;
    }
}