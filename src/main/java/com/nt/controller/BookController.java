package com.nt.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nt.model.BookDetails;

@Controller
public class BookController {
	List<BookDetails> bookList  = new ArrayList<>();			
		


	@RequestMapping(value = "/dispBookForm", method = RequestMethod.GET)
	public String showBookForm(Model model) {
		model.addAttribute("book", new BookDetails());

		return "bookForm";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerBook( Model model, @ModelAttribute("book")  BookDetails bookinfo) {
		bookList.add(bookinfo);
	
		
		model.addAttribute("bookinfo", bookList);
		System.out.println("Book Details::"+bookinfo);
		
		
		model.addAttribute("msg", "book details submitted sucessfully");
		model.addAttribute("book", new BookDetails());
		
		return "bookForm";
	}
	
	/*
	 * @RequestMapping("/successurl") public String sucess(Model model) {
	 * 
	 * model.addAttribute("book", new BookDetails()); return "bookForm";
	 * 
	 * }
	 */
}
