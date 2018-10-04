package bo.com.docout.demojpa.modes.entity.dao;

import bo.com.docout.demojpa.modes.entity.Cliente;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface IClienteDao extends PagingAndSortingRepository<Cliente, Long> {

}
