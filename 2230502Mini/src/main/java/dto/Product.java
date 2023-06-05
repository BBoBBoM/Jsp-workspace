package dto;

public class Product {

private String productId;
private Integer unitPrice ;
private String pname;
private String description ;
private String maker ;
private String category ;
private long unitsinstock;
private String condition ;
private String imageName;

public String getImageName() {
	return imageName;
}
public void setImageName(String imageName) {
	this.imageName = imageName;
}
public Product(){super();}
public Product(String productId, String pname, Integer unitPrice ) {
	this.productId=productId;
	this.pname=pname;
	this.unitPrice=unitPrice;
}
public String getProductId() {
	return productId;
}
public void setProductId(String productId) {
	this.productId = productId;
}
public Integer getUnitprice() {
	return unitPrice;
}
public void setUnitprice(Integer unitprice) {
	this.unitPrice = unitprice;
}
public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getMaker() {
	return maker;
}
public void setMaker(String maker) {
	this.maker = maker;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public long getUnitsinstock() {
	return unitsinstock;
}
public void setUnitsinstock(long unitsinstock) {
	this.unitsinstock = unitsinstock;
}
public String getCondition() {
	return condition;
}
public void setCondition(String condition) {
	this.condition = condition;
}



}
