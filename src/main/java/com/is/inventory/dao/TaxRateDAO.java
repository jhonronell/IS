
import java.util.List;

import com.is.inventory.model.TaxRate;


public interface TaxRateDAO
{
  // CRUD methods
  public TaxRate getByPrimaryKey(int id) throws DAOException;

 
  public int update(TaxRate obj) throws DAOException;

  public int insert(TaxRate obj) throws DAOException;

  public int delete(TaxRate obj) throws DAOException;

  // Finders
  public List getByTaxPercent(Double taxPercent) throws DAOException;

  public List getByDateAdded(String dateAdded) throws DAOException;

  public List getByAddedBy(Integer addedBy) throws DAOException;

  public List getByIsActive(Byte isActive) throws DAOException;
}
