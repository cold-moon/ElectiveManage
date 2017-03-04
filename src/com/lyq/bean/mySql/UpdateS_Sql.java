package com.lyq.bean.mySql;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UpdateS_Sql {
	public Boolean updateS_Sql(String No, String name, String sex, String age, String collage, String department,
			String pwd) {
		(new MysqlLinking()).getLink();// 连接数据库
		Connection conn = MysqlLinking.conn;// 得到连接数据库的Connection对象
		Boolean bool = false;
		if (conn != null) {// 修改学生信息
			try {
				// 插入注册信息的SQL语句(使用?占位符)
				String sql = "update  student set S_Name=?,S_Sex=?,S_Age=?,S_Collage=?,S_Department=?,S_Pwd=? where S_No=? ";
				// 创建PreparedStatement对象
				PreparedStatement ps = conn.prepareStatement(sql);
				// 对SQL语句中的参数动态赋值
				ps.setString(1, name);
				ps.setString(2, sex);
				ps.setString(3, age);
				ps.setString(4, collage);
				ps.setString(5, department);
				ps.setString(6, pwd);
				ps.setString(7, No);
				// 执行更新操作
				int count = ps.executeUpdate();
				if (count >= 1) {
					bool = true;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			// 发送数据库连接错误提示信息
			System.out.println("数据库连接错误！");
		}
		return bool;
	}

}
