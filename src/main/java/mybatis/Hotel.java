package mybatis;

public class Hotel {
	private int h_num;
	private String h_name;
	private String h_location;
	private String h_tel;
	private String room_kind;
	private String room_num;
	private String park;
	private String reserve;
	private String wifi;
	private String disability;
	private String reference_room;
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
	public String getH_location() {
		return h_location;
	}
	public void setH_location(String h_location) {
		this.h_location = h_location;
	}
	public String getH_tel() {
		return h_tel;
	}
	public void setH_tel(String h_tel) {
		this.h_tel = h_tel;
	}
	public String getRoom_kind() {
		return room_kind;
	}
	public void setRoom_kind(String room_kind) {
		this.room_kind = room_kind;
	}
	public String getRoom_num() {
		return room_num;
	}
	public void setRoom_num(String room_num) {
		this.room_num = room_num;
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
	public String getWifi() {
		return wifi;
	}
	public void setWifi(String wifi) {
		this.wifi = wifi;
	}
	public String getDisability() {
		return disability;
	}
	public void setDisability(String disability) {
		this.disability = disability;
	}
	public String getReference_room() {
		return reference_room;
	}
	public void setReference_room(String reference_room) {
		this.reference_room = reference_room;
	}
	@Override
	public String toString() {
		return "Hotel [h_num=" + h_num + ", h_name=" + h_name + ", h_location=" + h_location + ", h_tel=" + h_tel
				+ ", room_kind=" + room_kind + ", room_num=" + room_num + ", park=" + park + ", reserve=" + reserve
				+ ", wifi=" + wifi + ", disability=" + disability + ", reference_room=" + reference_room + "]";
	}
	
}
