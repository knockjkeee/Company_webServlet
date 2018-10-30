package servlets.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

//@WebServlet("/CompanyServlet")
public class CompanyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("param1");
        req.getSession().setAttribute("name", name);

        addBLOBtoDB();


        System.out.println(name);
        req.getRequestDispatcher("/WEB-INF/view/company.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String[] td5 = req.getParameterValues("companyName");
//        String td6 = (String) req.getAttribute("companyName");
//        String td7 = req.getServletContext().getInitParameter("companyName");
//        String td8 = (String) req.getServletContext().getAttribute("companyName");
//
//        System.out.println("td5:"+td5.length);
//        System.out.println("td6:"+td6);
//        System.out.println("td7:"+td7);
//        System.out.println("td8:"+td8);

//        req.getRequestDispatcher("/WEB-INF/view/company.jsp").forward(req, resp);
    }


    private void addBLOBtoDB() {
        Connection connection = (Connection) getServletContext().getAttribute("DBConnection");
//        File file = new File(getServletContext().getRealPath("/"), "\\WEB-INF\\logo_company\\Газпром.png");
//        File file = new File(getServletContext().getRealPath("/"), "\\WEB-INF\\logo_company\\Лукойл.png");
        File file = new File(getServletContext().getRealPath("/"), "\\WEB-INF\\logo_company\\Роснефть.png");
        FileInputStream stream;

        try {
            stream = new FileInputStream(file);
//            String query = "INSERT INTO company  (id, name, description, image) VALUES (?,?,?,?)";
            String query = "INSERT INTO company  (name, description, image) VALUES (?,?,?)";

            PreparedStatement preparedStatement = connection.prepareStatement(query);
//            preparedStatement.setInt(1, 1);
            preparedStatement.setString(1, "Роснефть");
            preparedStatement.setString(2, "text");
            preparedStatement.setBinaryStream(3, stream);
            preparedStatement.executeUpdate();

        } catch (FileNotFoundException e) {
            e.printStackTrace();

        } catch (SQLException e) {
            e.printStackTrace();
        }


        String fileName = "toto.png";
        File fileWrite = new File(fileName);

//        String pathUpload = "\\WEB-INF\\logo_company\\";
        FileInputStream in;
        FileOutputStream out;

        try {
            int count;
            in = new FileInputStream(file);
            out = new FileOutputStream(fileWrite);
            while ((count = in.read()) != -1) {
                out.write((char)count);
            }


        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            System.out.println("Success");

        }

        if (fileWrite.exists()) {
            try {
                fileWrite.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                System.out.println("Create!!!!");
            }
        }


        System.out.println(file.getName());
        System.out.println(fileWrite.getName());
        System.out.println(file.length());
        System.out.println(fileName.length());





//        String query = "INSERT INTO company  (id, name, description, image) VALUES (?,?,?,?)";
//
//        try {
//            PreparedStatement preparedStatement = connection.prepareStatement(query);
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
    }
}
