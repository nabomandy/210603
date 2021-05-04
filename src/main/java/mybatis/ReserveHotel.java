package mybatis;

import java.sql.Date;

public class ReserveHotel {
	private int rh_num;
	private int h_num;
	private String h_name;
	private String id;
	private String pass;
	private String tel;
	private Date date1;
	private String pet_kind;
	private int pet_num;
	private String content;
	public int getRh_num() {
		return rh_num;
	}
	public void setRh_num(int rh_num) {
		this.rh_num = rh_num;
	}
	public int getH_num() {
		return h_num;
	}
	public void setH_num(int h_num) {
		this.h_num = h_num;
	}
	public String getH_name() {
		return h_name;
	}
	public void setH_name(String h_name) {
		this.h_name = h_name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Date getDate1() {
		return date1;
	}
	public void setDate1(Date date1) {
		this.date1 = date1;
	}
	public String getPet_kind() {
		return pet_kind;
	}
	public void setPet_kind(String pet_kind) {
		this.pet_kind = pet_kind;
	}
	public int getPet_num() {
		return pet_num;
	}
	public void setPet_num(int pet_num) {
		this.pet_num = pet_num;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "ReserveHotel [rh_num=" + rh_num + ", h_num=" + h_num + ", h_name=" + h_name + ", id=" + id
				+ ", pass=" + pass + ", tel=" + tel + ", date1=" + date1 + ", pet_kind=" + pet_kind + ", pet_num="
				+ pet_num + ", content=" + content + "]";
	}
}
