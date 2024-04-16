package com.uniquedeveloper.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/parameterfilling")
public class ParameterFillingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ageStr = request.getParameter("age");
        String gender = request.getParameter("gender");
        String bmiStr = request.getParameter("bmi");
        String systolicStr = request.getParameter("systolic_bp");
        String diastolicStr = request.getParameter("diastolic_bp");

        if (ageStr.isEmpty() || gender.isEmpty() || bmiStr.isEmpty() || systolicStr.isEmpty() || diastolicStr.isEmpty()) {
            request.setAttribute("errorMessage", "Please fill all fields");
            request.getRequestDispatcher("parameterfilling.jsp").forward(request, response);
            return;
        }

        int age = Integer.parseInt(ageStr);
        double bmi = Double.parseDouble(bmiStr);
        int systolic = Integer.parseInt(systolicStr);
        int diastolic = Integer.parseInt(diastolicStr);

        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login?useSSL=false", "root", "Bu@#8800507565");
            PreparedStatement pst = con.prepareStatement("INSERT INTO health_parameters (age, gender, bmi, systolic_bp, diastolic_bp) VALUES (?, ?, ?, ?, ?)");
            pst.setInt(1, age);
            pst.setString(2, gender);
            pst.setDouble(3, bmi);
            pst.setInt(4, systolic);
            pst.setInt(5, diastolic);
            pst.executeUpdate();
            con.close();

            response.sendRedirect("index.jsp"); // Redirect to index.jsp after successful submission
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error occurred while storing health parameters.");
        }
    }
}