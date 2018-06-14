package conferenceWeb.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import conferenceWeb.model.Page;


public interface PageRepository extends JpaRepository<Page, Integer> {
	Page findById(int id);
}
