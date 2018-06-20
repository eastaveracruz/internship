package net.proselyte.bookmanager.controller;

import net.proselyte.bookmanager.model.Book;
import net.proselyte.bookmanager.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BookController {
    private BookService bookService;

    @Autowired(required = true)
    @Qualifier(value = "bookService")
    public void setBookService(BookService bookService) {
        this.bookService = bookService;
    }

    @RequestMapping(value = "books/{page}", method = RequestMethod.GET)
    public String listBooks(@PathVariable("page") int page, Model model){

        model.addAttribute("listBooks", this.bookService.listBooks(page));
        model.addAttribute("page", page);
        model.addAttribute("book", new Book());

        return "books";
    }

    @RequestMapping(value = "/add")
    public String add(Model model){
        model.addAttribute("book", new Book());
        return "add";
    }

    @RequestMapping(value = "/books/add", method = RequestMethod.POST)
    public String addBook(@ModelAttribute("book") Book book){
        if(book.getId() == 0){
            this.bookService.addBook(book);
        }else {
            this.bookService.updateBook(book);
            return "redirect:/";
        }

        return "redirect:/add";
    }

    @RequestMapping("/remove/{id}/{page}")
    public String removeBook(@PathVariable("id") int id, @PathVariable("page") int page){
        this.bookService.removeBook(id);

        return "redirect:/books/" + page;
    }

    @RequestMapping("edit/{id}")
    public String editBook(@PathVariable("id") int id, Model model){
        model.addAttribute("book", this.bookService.getBookById(id));

        return "/add";
    }

    @RequestMapping(value = "/search/{page}", method = RequestMethod.POST)
    public String search(@ModelAttribute("book") Book book, @PathVariable("page") int page, Model model){
        model.addAttribute("listBooks", this.bookService.searchBooks(book.getBookTitle(), page));
        model.addAttribute("page", page);
        model.addAttribute("book", new Book());

        return "search";
    }


    @RequestMapping(value = "bookdata/{id}")
    public String bookData(@PathVariable("id") int id, Model model){
        Book book = this.bookService.getBookById(id);
        model.addAttribute("book", book);

        book.setBookReadAlready(1);
        this.bookService.updateBook(book);

        return "bookdata";
    }
}
