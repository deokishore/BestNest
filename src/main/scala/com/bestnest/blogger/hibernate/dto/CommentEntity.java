package com.bestnest.blogger.hibernate.dto;

import com.bestnest.blogger.util.Constants;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = Constants.TABLE_COMMENTS)
@NamedQueries({ @NamedQuery(name = Constants.QUERY_GET_COMMENT_BY_ID, query = CommentEntity.GET_COMMENT_BY_ID) })
public class CommentEntity {

	public static final String GET_COMMENT_PARAMETER = "id";
	public static final String GET_COMMENT_BY_ID = "from CommentEntity p WHERE p.id =:" + GET_COMMENT_PARAMETER;

	@Id
	@GeneratedValue
	@Column
	private int commentId;

	@Column
	private String who;

	@Column
	private String email;

	@Column
	private String commentText;

	@Column
	private Date commentTime;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "postId", nullable = false)
	private PostEntity post;

	public int getCommentId() {
		return this.commentId;
	}

	public String getCommentText() {
		return this.commentText;
	}

	public Date getCommentTime() {
		return this.commentTime;
	}

	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}

	public void setCommentText(String commentText) {
		this.commentText = commentText;
	}

	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}

	public String getWho() {
		return who;
	}

	public void setWho(String who) {
		this.who = who;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public PostEntity getPost() {
		return post;
	}

	public void setPost(PostEntity post) {
		this.post = post;
	}
}
