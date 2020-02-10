package net.kzn.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.kzn.shoppingbackend.dao.CategoryDAO;
import net.kzn.shoppingbackend.dto.Category;

public class CategoryTestCase {

	private static AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
	
	private static CategoryDAO categoryDAO;
	
	private Category category;
	
	@BeforeClass
	public static void init()
	
	{
		context.scan("net.kzn.shoppingbackend");
		context.refresh();	
		categoryDAO =(CategoryDAO)context.getBean("categoryDAO");
	}
	
	@Test
	public void testAddCategory()
	
	{
		category = new Category();

		category.setName("Talevision");
		category.setDescription("This is the dummy Data");
		category.setImageURL("Test.jpg");
		
		/*category.setName("Mobile");
		category.setDescription("This is the dummy Data");
		category.setImageURL("Test.jpg");
		
		
		category.setName("Laptop");
		category.setDescription("This is the dummy Data");
		category.setImageURL("Test.jpg");
*/
		
		assertEquals("Successfully added a category inside the table!",true,categoryDAO.add(category));
	}

/*		@Test
		public void testGetCategory()
		{
			category = categoryDAO.get(2);
			assertEquals("Successfully fatched a single category form tthe table !","Laptop",category.getName());
		}
*/
	/*@Test
	public void testUpdateCategory()
	{
		category = categoryDAO.get(2);
		category.setName("Dell");
		assertEquals("Successfully fatched a single category form tthe table !",true,categoryDAO.update(category));
	}
	*/
	
	/*@Test
	public void testDeleteCategory()
	{
		category = categoryDAO.get(2);
		//category.setName("Dell");
		assertEquals("Successfully deleted a single category form tthe table !",true,categoryDAO.delete(category));
	}
	*/
	
	/*@Test
	public void testListCategory()
	{
		//category = categoryDAO.get(2);
		//category.setName("Dell");
		assertEquals("Successfully fatched the list of categories  form the table !",1,categoryDAO.list().size());
	}
	*/
/*	@Test
	public void testCrudCategory()
	{
		//add operation
		
		category = new Category();
		category.setName("TV");
		category.setDescription("This is the TV");
		category.setImageURL("tv.jpg");
		

		Category category2= new Category();
		
		category2.setName("Mobile");
		category2.setDescription("This is the ,Mobile");
		category2.setImageURL("tv.jpg");
	
		Category category3= new Category();
		
		category3.setName("Laptop");
		category3.setDescription("This is the ,Mobile");
		category3.setImageURL("tv.jpg");
	
*/	//	assertEquals("Successfully added a category inside the table!",true,categoryDAO.add(category));
		
		 //fetching and updateing the category
	//	assertEquals("Successfully fatched a single category form tthe table !","TV",category.getName());
		

/*		category = categoryDAO.get(1);
		category.setName("Smart TV");
		
		assertEquals("Successfully fatched a single category form tthe table !",true,categoryDAO.update(category));
		// delete the particular product

		category = categoryDAO.get(1);
		//category.setName("Dell");
		assertEquals("Successfully deleted a single category form tthe table !",true,categoryDAO.delete(category));
*/
		// fetting the list
		
	//	assertEquals("Successfully fatched the list of categories  form the table !",1,categoryDAO.list().size());
	}

