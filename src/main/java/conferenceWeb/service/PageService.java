package conferenceWeb.service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import conferenceWeb.dao.PageRepository;
import conferenceWeb.model.Page;


@Service
@Transactional
public class PageService {
	private final PageRepository pageRepository;

	public PageService(PageRepository pageRepository) {
		super();
		this.pageRepository = pageRepository;
	}
	
	public Page findPage(int id) {
		return pageRepository.findById(id);
	}
	
	public void save(Page page) {
		pageRepository.save(page);
	}
	
}
