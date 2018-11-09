package servlets.filter;


import dao.UserDao;
import model.Role;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicReference;

import static java.util.Objects.nonNull;

public class AuthFilter implements Filter {


    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        final HttpServletRequest req = (HttpServletRequest) request;
        final HttpServletResponse res = (HttpServletResponse) response;

        final String login = req.getParameter("login");
        final String password = req.getParameter("password");

        @SuppressWarnings("unchecked")
        final AtomicReference<UserDao> dao = (AtomicReference<UserDao>) req.getServletContext().getAttribute("dao");

        final HttpSession session = req.getSession();

        if (nonNull(session) &&
                nonNull(session.getAttribute("login")) &&
                nonNull(session.getAttribute("password"))) {

            final Role role = (Role) session.getAttribute("role");
            moveToMenu(req, res, role);


        } else if (dao.get().userIsExist(login, password)) {

            final Role role = dao.get().getRoleByLoginPassword(login, password);

            req.getSession().setAttribute("password", password);
            req.getSession().setAttribute("login", login);
            req.getSession().setAttribute("role", role);

            moveToMenu(req, res, role);

        } else {
            moveToMenu(req, res, Role.UNKNOWN);
        }
    }

    private void moveToMenu(final HttpServletRequest req, final HttpServletResponse resp, final Role role) throws ServletException, IOException {
        if (role.equals(Role.ADMIN)) {
            req.getRequestDispatcher("/WEB-INF/view/admin_menu.jsp").forward(req, resp);
        } else if (role.equals(Role.USER)) {
            req.getRequestDispatcher("/WEB-INF/view/user_menu.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("/WEB-INF/view/login.jsp").forward(req, resp);
        }
    }


//out.println("<link rel='stylesheet' type='text/css' href='" + request.getContextPath() +  "/styles/style.css' />");


    public void destroy() {

    }
}
