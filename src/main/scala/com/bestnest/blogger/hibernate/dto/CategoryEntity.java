package com.bestnest.blogger.hibernate.dto;

import com.bestnest.blogger.util.Constants;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

@Entity
@Table(name = Constants.TABLE_CATEGORIES)
@NamedQueries({ @NamedQuery(name = Constants.QUERY_GET_ALL_CATEGORIES, query = CategoryEntity.GET_ALL) })
public class CategoryEntity implements Serializable {

	private static final long serialVersionUID = 2482546954878891355L;
	protected static final String GET_ALL = "from CategoryEntity";

	@Id
	@GeneratedValue
	@Column
	private int categoryId;

	@Column
	private String categoryName;

	@OneToMany(mappedBy = "category", fetch = FetchType.LAZY)
	private Set<PostEntity> postEntities;

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public int getId() {
		return categoryId;
	}

	public void setId(int id) {
		this.categoryId = id;
	}

	public Set<PostEntity> getPostEntities() {
		return postEntities;
	}

	public void setPostEntities(Set<PostEntity> postEntities) {
		this.postEntities = postEntities;
	}
}
