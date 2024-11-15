package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.DAO.UserDAOIpml;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy thông tin đăng nhập từ form
        String email = request.getParameter("username");
        String password = request.getParameter("password");

        HttpSession session = request.getSession();

        try {
            // Tạo đối tượng UserDAO để kiểm tra thông tin đăng nhập
            UserDAO dao = new UserDAOIpml(DBConnect.getConn());
            User user = dao.login(email, password);

            if (user != null) {
                // Đăng nhập thành công
                session.setAttribute("userobj", user);
                session.setAttribute("successMsg", "Đăng nhập thành công! Bạn sẽ được chuyển hướng sau 3 giây.");
                response.sendRedirect("login.jsp");  // Chuyển hướng về login.jsp để hiển thị thông báo
            } else {
                // Đăng nhập thất bại
                session.setAttribute("errorMsg", "Tài khoản hoặc mật khẩu không chính xác");
                response.sendRedirect("login.jsp");  // Chuyển hướng về trang đăng nhập với thông báo lỗi
            }
        } catch (Exception e) {
            e.printStackTrace();
            session.setAttribute("errorMsg", "Có lỗi xảy ra trong quá trình đăng nhập.");
            response.sendRedirect("login.jsp");
        }
    }
}
