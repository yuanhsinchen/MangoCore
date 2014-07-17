package hello;

import org.springframework.data.annotation.Id;

public class Food {

	@Id private String id;

	private String itemName;
	private String itemCode;
	private String calories;
	private String totalFat;
	private String sodium;
	private String qtyAvailable;

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	
	public String getItemCode() {
		return itemCode;
	}

	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}
	
	public String getCalories() {
		return calories;
	}

	public void setCalories(String calories) {
		this.calories = calories;
	}
	
	public String getTotalFat() {
		return totalFat;
	}

	public void setTotalFat(String totalFat) {
		this.totalFat = totalFat;
	}
	
	public String getSodium() {
		return sodium;
	}

	public void setSodium(String sodium) {
		this.sodium = sodium;
	}
	
	public String getQtyAvailable() {
		return qtyAvailable;
	}

	public void setQtyAvailable(String qtyAvailable) {
		this.qtyAvailable = qtyAvailable;
	}
	
}