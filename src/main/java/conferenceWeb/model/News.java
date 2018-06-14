package conferenceWeb.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "news")
public class News implements Serializable {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "title")
	private String title;

	@Column(name = "content")
	private String content;

	@Column(name = "date_created")
	private String date_created;

	@Column(name = "username")
	private String username;
	
	@Column(name = "account_id")
	private int account_id;

	public News() {}
	
	public News(int id, String title, String content, String date_created, String username, int account_id) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.date_created = date_created;
		this.username = username;
		this.account_id = account_id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDate_created() {
		return date_created;
	}

	public void setDate_created(String date_created) {
		this.date_created = date_created;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getAccount_id() {
	    return account_id;
	}

	public void setAccount_id(int account_id) {
	    this.account_id = account_id;
	}
	
}
