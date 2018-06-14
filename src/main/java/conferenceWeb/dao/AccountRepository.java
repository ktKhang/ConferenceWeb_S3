package conferenceWeb.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import conferenceWeb.model.Account;



public interface AccountRepository extends JpaRepository<Account, Integer>{

    Account findByUsername(String username);
}
