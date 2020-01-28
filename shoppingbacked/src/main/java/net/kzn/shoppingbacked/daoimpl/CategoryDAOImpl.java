package net.kzn.shoppingbacked.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import net.kzn.shoppingbacked.dao.CategoryDAO;
import net.kzn.shoppingbacked.dto.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

	private static List<Category> categoryList = new ArrayList();

	static

	{
		Category category = new Category();

		category.setId(1);
		category.setName("Talevision");
		category.setDescription("This is the dummy Data");
		category.setImageURL("Test.jpg");
		categoryList.add(category);

		category = new Category();

		category.setId(2);
		category.setName("Mobile");
		category.setDescription("This is the dummy Data");
		category.setImageURL("Test.jpg");
		categoryList.add(category);
		
		category = new Category();

		category.setId(3);
		category.setName("Laptop");
		category.setDescription("This is the dummy Data");
		category.setImageURL("Test.jpg");
		categoryList.add(category);

	}

	public List<Category> list() {
		// TODO Auto-generated method stub
		return categoryList;
	}

	public Category get(int id) {
		
		//enchanged for loop
		
		for(Category category :categoryList)	
		{
			if(category.getId() == id) return category;		
		}
		return null;
	}

}
