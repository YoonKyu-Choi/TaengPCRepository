package com.kosta.taeng.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class Sales implements Serializable {

	private Date salesDate;
	private int pcSales;
	private int itemSales;

	public Sales() {
	}

	public Sales(Date salesDate, int pcSales, int itemSales) {
		this.salesDate = salesDate;
		this.pcSales = pcSales;
		this.itemSales = itemSales;
	}

	public Date getSalesDate() {
		return salesDate;
	}

	public void setSalesDate(Date salesDate) {
		this.salesDate = salesDate;
	}

	public int getPcSales() {
		return pcSales;
	}

	public void setPcSales(int pcSales) {
		this.pcSales = pcSales;
	}

	public int getItemSales() {
		return itemSales;
	}

	public void setItemSales(int itemSales) {
		this.itemSales = itemSales;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + itemSales;
		result = prime * result + pcSales;
		result = prime * result + ((salesDate == null) ? 0 : salesDate.hashCode());
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
		Sales other = (Sales) obj;
		if (itemSales != other.itemSales)
			return false;
		if (pcSales != other.pcSales)
			return false;
		if (salesDate == null) {
			if (other.salesDate != null)
				return false;
		} else if (!salesDate.equals(other.salesDate))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Sales [salesDate=" + salesDate + ", pcSales=" + pcSales + ", itemSales=" + itemSales + "]";
	}

}
