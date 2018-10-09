package bo.com.docout.demojpa.models.dao;

import bo.com.docout.demojpa.models.entity.Factura;
import org.springframework.data.repository.CrudRepository;

public interface IFacturaDao extends CrudRepository<Factura, Long> {
}
