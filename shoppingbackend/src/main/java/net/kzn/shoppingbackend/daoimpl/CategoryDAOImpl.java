package net.kzn.shoppingbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import net.kzn.shoppingbackend.dao.CategoryDAO;
import net.kzn.shoppingbackend.dto.Category;

@Repository("categoryDAO")
@Transactional
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;

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

		String selectActiveCategory = "FROM  Category WHERE active = :active";
		Query query = sessionFactory.getCurrentSession().createQuery(selectActiveCategory);
		query.setParameter("active",true);
		return query.getResultList();
	}

	// getting single category based on id

	public Category get(int id) {

		return sessionFactory.getCurrentSession().get(Category.class, Integer.valueOf(id));
	}

	@Transactional
	public boolean add(Category category) {

		try {
			sessionFactory.getCurrentSession().persist(category);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	public boolean update(Category category) {
			try
			{
				sessionFactory.getCurrentSession().update(category);
				return true;
			}catch(Exception ex)
			{
				ex.printStackTrace();
				return false;
			}
	}

	public boolean delete(Category category) {
			
		category.setActive(false);
		try
		{
			sessionFactory.getCurrentSession().update(category);
			return true;
		}catch(Exception ex)
		{
			ex.printStackTrace();
			return false;
		}
	}

}
