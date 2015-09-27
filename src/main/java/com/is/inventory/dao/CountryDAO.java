
import java.util.List;

import com.is.inventory.model.Country;


public interface CountryDAO
{
  // CRUD methods
  public Country getByPrimaryKey(int id) throws DAOException;

  public int update(Country obj) throws DAOException;

  public int insert(Country obj) throws DAOException;

  public int delete(Country obj) throws DAOException;

  // Finders
  public List getByCountryCode(String countryCode) throws DAOException;

  public List getByCountryName(String countryName) throws DAOException;
}
