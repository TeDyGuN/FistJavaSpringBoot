package bo.com.docout.demojpa.models.dao;

import bo.com.docout.demojpa.models.entity.Cliente;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface IClienteDao extends PagingAndSortingRepository<Cliente, Long> {

}
