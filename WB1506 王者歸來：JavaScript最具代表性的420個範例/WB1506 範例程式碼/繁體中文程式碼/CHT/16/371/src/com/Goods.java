package com;

public class Goods {
  private Integer ID=Integer.getInteger("-1");
  private String typename="";
  private String goodsName="";
  private String introduce="";
  private float price=(float)0.0; //此處必須強制型態轉換
  private float nowPrice=(float)0.0;
  private String  spec="";
  private int newGoods=-1;
  private int sale=-1;

  public void Goods(){
  }

  public Integer getID(){
 return ID;
}
public void setID(Integer ID){
 this.ID=ID;
}

  public String getTypename() {
    return typename;
  }
public void setTypename(String typename) {
  this.typename = typename;
}

public String getGoodsName(){
  return goodsName;
}
public void setGoodsName(String goodsName){
  this.goodsName=goodsName;
}

public String getIntroduce(){
  return introduce;
}
public void setIntroduce(String introduce){
  this.introduce=introduce;
}
public float getPrice(){
  return price;
}
public void setPrice(float price){
  this.price=price;
}
public float getNowPrice(){
  return nowPrice;
}
public void setNowPrice(float nowPrice){
  this.nowPrice=nowPrice;
}
public String getSpec(){
  return spec;
}
public void setPicture(String picture){
  this.spec=spec;
}
public int getNewGoods() {
  return newGoods;
}
public void setNewGoods(int newGoods) {
this.newGoods = newGoods;
}
public int getSale() {
  return sale;
}
public void setSale(int sale) {
this.sale = sale;
}
}
