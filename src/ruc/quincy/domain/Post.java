package ruc.quincy.domain;

import java.util.Date;

public class Post {
	int post_id;
	int post_ownerid;
	String post_content;
	Date post_datetime;
	String post_ownername;
	String post_ownerimage;
	int post_forward;
	int post_praise;
	int favorite;
	public int getPost_id() {
		return post_id;
	}
	public void setPost_id(int post_id) {
		this.post_id = post_id;
	}
	public int getPost_ownerid() {
		return post_ownerid;
	}
	public void setPost_ownerid(int post_ownerid) {
		this.post_ownerid = post_ownerid;
	}
	public String getPost_content() {
		return post_content;
	}
	public void setPost_content(String post_content) {
		this.post_content = post_content;
	}
	public Date getPost_datetime() {
		return post_datetime;
	}
	public void setPost_datetime(Date post_datetime) {
		this.post_datetime = post_datetime;
	}
	public String getPost_ownername() {
		return post_ownername;
	}
	public void setPost_ownername(String post_ownername) {
		this.post_ownername = post_ownername;
	}
	public String getPost_ownerimage() {
		return post_ownerimage;
	}
	public void setPost_ownerimage(String post_ownerimage) {
		this.post_ownerimage = post_ownerimage;
	}
	public int getPost_forward() {
		return post_forward;
	}
	public void setPost_forward(int post_forward) {
		this.post_forward = post_forward;
	}
	public int getPost_praise() {
		return post_praise;
	}
	public void setPost_praise(int post_praise) {
		this.post_praise = post_praise;
	}
	public int getFavorite() {
		return favorite;
	}
	public void setFavorite(int favorite) {
		this.favorite = favorite;
	}
	
}
