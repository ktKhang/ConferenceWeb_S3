package conferenceWeb.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;
import org.springframework.stereotype.Service;
import conferenceWeb.dao.NewsRepository;
import conferenceWeb.model.News;

@Service // This annotation is a specialized form of the@Component annotation intended to
// be used in the service layer.
@Transactional
public class NewsService {
	private static NewsRepository newsRepository;

	public NewsService(NewsRepository newsRepository) {
		this.newsRepository = newsRepository;
	}

	public List<News> findAll() {
		List<News> lstNews = new ArrayList<>();
		for (News news : newsRepository.findAll()) {
			lstNews.add(news);
		}
		Collections.reverse(lstNews);
		return lstNews;
	}

	public News findNews(int id) {
		return newsRepository.findById(id);
	}

	public void save(News news) {
		newsRepository.save(news);
	}

	public void delete(int id) {
		newsRepository.deleteById(id);
	}
}
