package conferenceWeb.dao;


import org.springframework.data.jpa.repository.JpaRepository;

import conferenceWeb.model.News;


public interface NewsRepository extends JpaRepository<News, Integer>{

	News findById(int id);

}
