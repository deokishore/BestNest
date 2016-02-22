package com.bestnest.blogger.hibernate.dto;

import com.bestnest.blogger.util.Constants;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;
import java.util.Set;

@Entity
@Table(name = Constants.TABLE_POSTS)
@NamedQueries({ @NamedQuery(name = Constants.QUERY_GET_ALL_POST_SORT_BY_MOST_RECENT, query = PostEntity.GET_ALL), @NamedQuery(name = Constants.QUERY_GET_POST_BY_ID, query = PostEntity.GET_POST) })
public class PostEntity implements Serializable {

	private static final long serialVersionUID = -7651629116202183034L;
	protected static final String GET_ALL = "from PostEntity order by timePosted desc";
	public static final String GET_POST_PARAMETER = "id";
	protected static final String GET_POST = "from PostEntity p WHERE p.id =:" + GET_POST_PARAMETER;

	@Id
	@GeneratedValue
	@Column
	private int id;

	@Column
	private String title;

	@Column
	private String postText;

	@Column
	private Date timePosted;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "categoryId", nullable = false)
	private CategoryEntity category;

	@OneToMany(mappedBy = "post", fetch = FetchType.EAGER)
	private Set<CommentEntity> comments;

	public CategoryEntity getCategory() {
		return category;
	}

	public void setCategory(CategoryEntity category) {
		this.category = category;
	}

	public int getId() {
		return this.id;
	}

	public String getPostText() {
		return this.postText;
	}

	public Date getTimePosted() {
		return this.timePosted;
	}

	public String getTitle() {
		return this.title;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setPostText(String postText) {
		this.postText = postText;
	}

	public void setTimePosted(Date timePosted) {
		this.timePosted = timePosted;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Set<CommentEntity> getComments() {
		return comments;
	}

	public void setComments(Set<CommentEntity> comments) {
		this.comments = comments;
	}
}