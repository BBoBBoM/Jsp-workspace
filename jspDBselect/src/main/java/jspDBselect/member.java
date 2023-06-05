package jspDBselect;

public class member {
private String id;
private String pwd;
private String name;
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getPwd() {
	return pwd;
}
public void setPwd(String pwd) {
	this.pwd = pwd;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "회원가입이 완료되었습니다";
	}
}
