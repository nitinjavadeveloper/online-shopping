package net.kzn.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.kzn.shoppingbackend.dao.ProductDAO;
import net.kzn.shoppingbackend.dto.Product;

public class ProductTestCase {

	private static AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
	
	private static ProductDAO productDAO;
	
	private Product product;
	
	
	@BeforeClass
	public static void init()
	{
		context.scan("net.kzn.shoppingbackend");
		context.refresh();
		
		productDAO = (ProductDAO)context.getBean("productDAO");
		
	}
	
	/*@Test
	public void testCRUDProduct()
	
	{
		product = new Product();
		product.setName("Oppo Selfie S56");
		product.setBrand("Oppo");
		product.setDescription("This is the description for oppo mobile phones! ");
		product.setUnitPrice(250000);
		product.setActive(true);
		product.setCategoryId(3);
		product.setSupplierId(3);
		
		assertEquals("Something went wrong while inserting a new product", true,productDAO.add(product));
		
		product = productDAO.get(2);
		product.setName("Samsung Galaxy S7");
		assertEquals("Something went wrong while updateing the existing record", true,productDAO.update(product));
		
		assertEquals("Something went wrong while deleting the existing record", true,productDAO.delete(product));
		
		assertEquals("Something went wrong while list the existing record", 6,productDAO.list().size());
		
	}
*/

	/*@Test
	public void testListActiveProducts()
	{
	
			assertEquals("Something went wrong while list the existing record", 5,productDAO.listActiveProducts().size());
			
	}*/
	
	/*@Test
	public void testListActiveProductsByCategory()
	{
	
			assertEquals("Some thing went wrong while list the existing record", 3,productDAO.listActiveProductsByCategory(3).size());

			assertEquals("Something went wrong while list the existing record", 2,productDAO.listActiveProductsByCategory(1).size());

	}
*/
	
	@Test
	public void testGetLatestActiveProduct()
	{
	
//			assertEquals("Something went wrong while list the existing record", 3,productDAO.listActiveProductsByCategory(3).size());

			assertEquals("Something went wrong while list the existing record", 3,productDAO.listActiveProductsByCategory(3).size());

	}

}
