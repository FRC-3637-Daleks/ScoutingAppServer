package com.team3637.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "teams")
public class Team {

	@Id
	@GeneratedValue
	private Integer id;

	private String name;

	@Column(name = "image_location")
	private String imageLoc;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImageLoc() {
		return imageLoc;
	}

	public void setImageLoc(String imageLoc) {
		this.imageLoc = imageLoc;
	}
}
