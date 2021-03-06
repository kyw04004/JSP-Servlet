package web;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;
public class BookList {
	private ArrayList<String> idList = new ArrayList<String>();
	private ArrayList<String> titleList = new ArrayList<String>();
	private ArrayList<String> writerList = new ArrayList<String>();
	private ArrayList<Integer> priceList = new ArrayList<Integer>();
	private ArrayList<String> borrowList = new ArrayList<String>();
	private ArrayList<Integer> countList = new ArrayList<Integer>();
	private ArrayList<Integer> recommandList = new ArrayList<Integer>();
	public BookList() {
	}
	public void setId(int index, String id) {
		this.idList.add(index, id);
	}
	public void setTitle(int index, String title) {
		this.titleList.add(index, title);
	}
	public void setWriter(int index, String writer) {
		this.writerList.add(index, writer);
	}
	public void setPrice(int index, Integer price) {
		this.priceList.add(index, price);
	}
	public void setBorrow(int index, String borrow) {
		this.borrowList.add(index, borrow);
	}
	public void setCount(int index, Integer count) {
		this.countList.add(index, count);
	}
	public void setRecommand(int index, Integer recommand) {
		this.recommandList.add(index, recommand);
	}
	public String[] getId() {
		return idList.toArray(new String[idList.size()]);
	}
	public String[] getTitle() {
		return titleList.toArray(new String[titleList.size()]);
	}
	public String[] getWriter() {
		return writerList.toArray(new String[writerList.size()]);
	}
	public Integer[] getPrice() {
		return priceList.toArray(new Integer[priceList.size()]);
	}
	public String[] getborrow() {
		return borrowList.toArray(new String[borrowList.size()]);
	}
	public Integer[] getCount() {
		return countList.toArray(new Integer[countList.size()]);
	}
	public Integer[] getRecommand() {
		return recommandList.toArray(new Integer[recommandList.size()]);
	}
	public int getListSize() {
		return idList.size();
	}
}















