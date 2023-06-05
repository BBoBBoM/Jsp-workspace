package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();

	public static ProductRepository getInstance(){
		return instance;
	} 

	public ProductRepository() {
		Product phone = new Product("P1234", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		phone.setFilename("P1234.png");

		Product notebook = new Product("P1235", "LG PC �׷�", 1500000);
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		notebook.setFilename("P1235.png");

		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		tablet.setFilename("P1236.png");

		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
		
		/* 데이터베이스 응용 - 전체상품 가져오기 
		<%@ include file="dbconn.jsp"%>	
		<div class="container">
			<%
			PreparedStatement pstmt = null;	
			ResultSet rs = null;
			String sql = "select * from product where p_id=?";	
			pstmt = conn.prepareStatement(sql);
			String productId = request.getParameter("id");	
			pstmt.setString(1, productId);	
			rs = pstmt.executeQuery();	
			if(rs.next()){	
				Product goods = new Product("P1236", "Galaxy Tab S", 900000);
				goods.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
				goods.setCategory("Tablet");
				goods.setManufacturer("Samsung");
				goods.setUnitsInStock(1000);
				goods.setCondition("Old");
				goods.setFilename("P1236.png");

				listOfProducts.add(goods);
			}
		*/
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}
