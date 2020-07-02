package model;

/**
 * 管理员类
 * @author tzy
 *
 */
public class Admin {

	private Integer aid; //管理员编号
	private String name; //管理员账号
	private String password;
	private Integer role;//角色，0超级管理员  1系统管理员
	
	
	public Admin() {
	}
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getRole() {
		return role;
	}
	public void setRole(Integer role) {
		this.role = role;
	}
	
	
}
