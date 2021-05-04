package mybatis;

public class Clinic {
	private int c_num;
	private String c_name;
	private String c_location;
	private String c_tel;
	private String pet_kind;
	private String open_hour;
	private String park;
	private String reserve;
	public int getC_num() {
		return c_num;
	}
	public void setC_num(int c_num) {
		this.c_num = c_num;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_location() {
		return c_location;
	}
	public void setC_location(String c_location) {
		this.c_location = c_location;
	}
	public String getC_tel() {
		return c_tel;
	}
	public void setC_tel(String c_tel) {
		this.c_tel = c_tel;
	}
	public String getPet_kind() {
		return pet_kind;
	}
	public void setPet_kind(String pet_kind) {
		this.pet_kind = pet_kind;
	}
	public String getOpen_hour() {
		return open_hour;
	}
	public void setOpen_hour(String open_hour) {
		this.open_hour = open_hour;
	}
	public String getPark() {
		return park;
	}
	public void setPark(String park) {
		this.park = park;
	}
	public String getReserve() {
		return reserve;
	}
	public void setReserve(String reserve) {
		this.reserve = reserve;
	}
	@Override
	public String toString() {
		return "Clinic [c_num=" + c_num + ", c_name=" + c_name + ", c_location=" + c_location + ", c_tel=" + c_tel
				+ ", pet_kind=" + pet_kind + ", open_hour=" + open_hour + ", park=" + park + ", reserve=" + reserve
				+ "]";
	}
}
