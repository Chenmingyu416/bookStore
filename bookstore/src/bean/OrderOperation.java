package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;

//the order store in the db
public class OrderOperation {
    private Connection conn;
    private PreparedStatement pstmt;
    public void saveOrder(BookOrder bookoder)
    { // 利用封装类的实例向表 bookorder 中插入记录
        try {
            conn = DBcon.getConnction();
            String sql = "insert into bookorder(username,zipcode, phone, ";
            sql += "creditcard,total) values(?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, bookoder.getUsername());
            pstmt.setString(2, bookoder.getZipcode());
            pstmt.setString(3, bookoder.getPhone());
            pstmt.setString(4, bookoder.getCreditcard());
            pstmt.setDouble(5, bookoder.getTotal());
            pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        // 释放资源
        finally {
            DBcon.closeStatement(pstmt);
            DBcon.closeConnection(conn);
        }
    }

}
