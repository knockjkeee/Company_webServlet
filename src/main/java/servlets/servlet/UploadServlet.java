package servlets.servlet;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.List;

@WebServlet("/Upload")
public class UploadServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = null;
        String tiker = null;
        String description = null;
        String selection = null;
        File image =  null;

        if (ServletFileUpload.isMultipartContent(req)) {
            try {
                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(req);
                for (FileItem item : multiparts) {
                    if (!item.isFormField()) {
                        image = new File(item.getName());
                    }
                    if (item.isFormField()) {
                        if (item.getFieldName().equals("name")) {
                            name = item.getString();
                        }
                        if (item.getFieldName().equals("tiker")) {
                            tiker =item.getString();
                        }
                        if (item.getFieldName().equals("description")) {
                            description = item.getString();
                        }
                        if (item.getFieldName().equals("selection")) {
                            selection =item.getString();
                        }
                    }
                }



            } catch (FileUploadException e) {
                e.printStackTrace();
            }

        }




        System.out.println(name);
        System.out.println(tiker);
        System.out.println(description);
        System.out.println(selection);
        System.out.println(image);


        req.getRequestDispatcher("/WEB-INF/view/admin_menu.jsp").forward(req, resp);
    }
}
