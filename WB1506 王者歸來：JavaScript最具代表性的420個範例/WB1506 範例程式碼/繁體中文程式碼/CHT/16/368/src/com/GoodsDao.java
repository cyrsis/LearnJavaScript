package com;

import com.Goods;
import com.ChStr;
import com.ConnDB;

public class GoodsDao {
  ConnDB conn = new ConnDB();
  ChStr chStr = new ChStr();
  public int insert(Goods g) {
    int ret = -1;
    try {
      String sql = "Insert into tb_goods (Typename,GoodsName,Introduce,Price,nowPrice,spec,newgoods,sale) values('" +
          chStr.chStr(g.getTypename()) + "','" + chStr.chStr(g.getGoodsName()) + "','" +
          chStr.chStr(g.getIntroduce()) + "'," + g.getPrice() + "," +
          g.getPrice() + ",'" + chStr.chStr(g.getSpec()) + "'," +
          g.getNewGoods() + "," + g.getSale() + ")";

      ret = conn.executeUpdate(sql);
    }
    catch (Exception e) {
      ret = 0;
      System.out.println(e.getMessage());
    }
    conn.close();
    return ret;
  }
}
