package mybatis;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Board {
	private int b_num;
	private String name;
	private String pass;
	private String subject;
	private String content;
	private String file1;
	private String like1;
	private Date regdate;
	private int readcnt;
	private int ref;
	private int reflevel;
	private int refstep;
	private MultipartFile upladefile;
	
	
	public MultipartFile getUpladefile() {
		return upladefile;
	}
	public void setUpladefile(MultipartFile upladefile) {
		this.upladefile = upladefile;
	}
	public int getB_num() {
		return b_num;
	}
	public void setB_num(int b_num) {
		this.b_num = b_num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFile1() {
		return file1;
	}
	public void setFile1(String file1) {
		this.file1 = file1;
	}
	public String getLike1() {
		return like1;
	}
	public void setLike1(String like1) {
		this.like1 = like1;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getReadcnt() {
		return readcnt;
	}
	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getReflevel() {
		return reflevel;
	}
	public void setReflevel(int reflevel) {
		this.reflevel = reflevel;
	}
	public int getRefstep() {
		return refstep;
	}
	public void setRefstep(int refstep) {
		this.refstep = refstep;
	}
	@Override
	public String toString() {
		return "Board [b_num=" + b_num + ", name=" + name + ", pass=" + pass + ", subject=" + subject + ", content="
				+ content + ", file1=" + file1 + ", like1=" + like1 + ", regdate=" + regdate + ", readcnt=" + readcnt
				+ ", ref=" + ref + ", reflevel=" + reflevel + ", refstep=" + refstep + ", upladefile=" + upladefile
				+ "]";
	}
	
}