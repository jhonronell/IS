package DAO;
import org.junit.Test;

import com.is.inventory.dao.DAOException;
import com.is.inventory.dao.UserDAO;
import com.is.inventory.dao.impl.UserDAOImpl;
import com.is.inventory.model.User;
import com.is.inventory.model.User;

public class UserTest {

	@Test
	public void insertUserTest() throws DAOException {
		
		UserDAO userDao = new UserDAOImpl();
		User user = new User();
		
		userDao.insert(user);
	}
	@Test
	public void getUser() throws DAOException {
		
		UserDAO userDao = new UserDAOImpl();
		User user = new User();
		user.setId(1401);
		User userRecord = userDao.getByPrimaryKey(user);
		
		
	}
	@Test
	public void deleteUser() throws DAOException {
		
		UserDAO userDao = new UserDAOImpl();
		User user = new User();
		user.setId(1501);
		userDao.delete(user);
	}
	
	@Test
	public void updateUser() throws DAOException {
		
		UserDAO userDao = new UserDAOImpl();
		User user = new User();
		userDao.update(user);
		
	}
}
