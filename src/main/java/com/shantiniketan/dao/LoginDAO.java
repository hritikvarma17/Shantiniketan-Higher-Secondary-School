/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.shantiniketan.dao;

import com.shantiniketan.bean.LoginBean;
import java.sql.*;

/**
 *
 * @author Administrator
 */
public class LoginDAO {

    public static Connection getConn() {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(
//                    "jdbc:mysql://localhost:3306/shantiniketan_higher_secondary_school?useSSL=false&allowPublicKeyRetrieval=true",
                    "jdbc:mysql://mysql-2de487cd-shantiniketan-higher-secondary-school.c.aivencloud.com:20426/shantiniketan_higher_secondary_school?useSSL=true&requireSSL=true",
                    "avnadmin",
                    "AVNS_wYuT_CjVaLuHzgpGLM9");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }

    public static boolean validate(LoginBean bean) {
        boolean status = false;
        String query = "SELECT * FROM users WHERE username = ? AND password = ?";

        try (Connection con = getConn(); PreparedStatement ps = con.prepareStatement(query)) {

            ps.setString(1, bean.getUsername());
            ps.setString(2, bean.getPassword());

            ResultSet rs = ps.executeQuery();
            status = rs.next();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

}
