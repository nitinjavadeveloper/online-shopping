package net.kzn.shoppingbacked.dao;

import java.util.List;
import net.kzn.shoppingbacked.dto.Category;

public interface CategoryDAO {

	List<Category> list();
	
	Category get(int id);
}
