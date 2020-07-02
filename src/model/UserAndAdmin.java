package model;

import java.util.Date;

	/**
	 * 用于消息传递的类
	 * @author tzy
	 *
	 */
public class UserAndAdmin {

	private Integer id;
	private Integer userId;//接收消息者
	private Integer adminId;//发消息者
	private String message;
	private Date createTime;
	private Integer status;//0系统消息，1用户消息
	
	public UserAndAdmin() {
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getAdminId() {
		return adminId;
	}
	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	
	
}
