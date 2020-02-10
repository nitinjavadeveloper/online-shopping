package net.kzn.onlineshopping.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import net.kzn.shoppingbackend.dao.CategoryDAO;
import net.kzn.shoppingbackend.dto.Category;

@Controller
public class PageController {

	@Autowired
	private CategoryDAO categoryDAO;

	@RequestMapping({ "/", "/index", "/home" })
	public ModelAndView page() {
		ModelAndView model = new ModelAndView("page");
		model.addObject("title", "Home");
		model.addObject("categories", categoryDAO.list());

		model.addObject("userClickHome", true);
		return model;
	}

	@RequestMapping(value = "/about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "About Us");
		mv.addObject("userClickAbout", true);
		return mv;
	}

	@RequestMapping(value = "/contact")
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Contact Us");
		mv.addObject("userClickContact", true);
		return mv;
	}
	/*
	 * Method to load all the products and based on category
	 */

	@RequestMapping("/show/all/products")
	public ModelAndView showAllProducts() {
		ModelAndView model = new ModelAndView("page");
		model.addObject("title", "All Products");
		model.addObject("categories", categoryDAO.list());

		model.addObject("userClickAllProducts", true);
		return model;
	}

	@RequestMapping("/show/category/{id}/products")
	public ModelAndView showCategoryProducts(@PathVariable("id") int id) {
		/*
		 * categoryDAO to fetch a single category
		 */

		Category category = null;

		category = categoryDAO.get(id);

		ModelAndView model = new ModelAndView("page");
		model.addObject("title", category.getName());
		model.addObject("categories", categoryDAO.list());
		model.addObject("category", category);
		model.addObject("userClickCategoryProducts", true);
		return model;
	}
}
