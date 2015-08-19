package com.graduation.entity;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.grduation.image.OCR;
import com.grduation.image.SaveInternetImage;

public class EntityJingDong {
  private int ID;
  private String Num;
  private String Title;
  private String Url;
  private String Category;
  private String Price;
public int getID() {
	return ID;
}
public void setID(int iD) {
	ID = iD;
}
public String getNum() {
	return Num;
}
public void setNum(String num) {
	Num = num;
}
public String getTitle() {
	return Title;
}
public void setTitle(String title) {
	Title = title;
}
public String getUrl() {
	return Url;
}
public void setUrl(String url) {
	Url = url;
}
public String getCategory() {
	return Category;
}
public void setCategory(String category) {
	Category = category;
}
public String getPrice() {
	return Price;
}
public void setPrice(String price) {
	Price = price;
}
public void print(){
	System.out.println(ID);
	System.out.println(Num);
	System.out.println(Title);
	System.out.println(Url);
	System.out.println(Category);
	System.out.println(Price);
}
}
