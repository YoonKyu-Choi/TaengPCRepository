package vo;

import java.io.Serializable;

public class Item implements Serializable{
	
	private String itemName;
	private int price;
	private int stock;
	
	public Item() {
		
	}
	
	public Item(String itemName, int price, int stock) {
		this.itemName = itemName;
		this.price = price;
		this.stock = stock;
	}
	// getter/setter 
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	
	//hashcode & equals
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((itemName == null) ? 0 : itemName.hashCode());
		result = prime * result + price;
		result = prime * result + stock;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Item other = (Item) obj;
		if (itemName == null) {
			if (other.itemName != null)
				return false;
		} else if (!itemName.equals(other.itemName))
			return false;
		if (price != other.price)
			return false;
		if (stock != other.stock)
			return false;
		return true;
	}
	
	// toString
	@Override
	public String toString() {
		return "Item [itemName=" + itemName + ", price=" + price + ", stock=" + stock + "]";
	}
	
	
	
}
