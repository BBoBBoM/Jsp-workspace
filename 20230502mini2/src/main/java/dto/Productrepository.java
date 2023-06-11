package dto;
import java.util.*;

public class Productrepository {
	private static Productrepository instance;
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	
	public static Productrepository getInstance() {
		if (instance == null) {
			instance = new Productrepository();
		}
		return instance;
	}
	public Productrepository() {
		Product phone = new Product("P1234","iPhone 5s", 800000);
		phone.setDescription("4.7-inch, 13334*750 Renina HD display, 8-megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setMaker("Apple");
		phone.setUnitsinstock(1000);
		phone.setCondition("새삥");
		phone.setImageName("mars.jpg");
		listOfProducts.add(phone);
		
		
		Product notebook = new Product("P1235","LG NOTEBOOK 그램", 1500000);
		notebook.setDescription("4.7-inch, 13334*750 Renina HD display, 8-megapixel iSight Camera비쌈");
		notebook.setCategory("Note Book");
		notebook.setMaker("LG");
		notebook.setUnitsinstock(800);
		notebook.setCondition("낡음");
		notebook.setImageName("mars.jpg");
		listOfProducts.add(notebook);
		
		Product tablet = new Product("P1236","Galaxy Tab S", 10000000);
		tablet.setDescription("4.7-inch, 13334*750 Renina HD display, 8-megapixel iSight Camera쌈");
		tablet.setCategory("Tablet PC");
		tablet.setMaker("SAMSUNG");
		tablet.setUnitsinstock(500);
		tablet.setCondition("재생재료");
		tablet.setImageName("mars.jpg");
		listOfProducts.add(tablet);
		
		
	}
	public ArrayList<Product> getAllProducts(){return listOfProducts;}
	public Product getProductByID(String productId) {
		Product productById = null;
		for(int i = 0; i<listOfProducts.size();i++) {Product product = listOfProducts.get(i);
		if(product !=null && product.getProductId() != null &&
				product.getProductId().equals(productId)) {productById=product;break;}}
		return productById;}
	
public void addproduct(Product product) {
	listOfProducts.add(product);}
}

