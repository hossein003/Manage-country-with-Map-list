package View.Servlet;

import DAO.CountryDao;
import Entity.Country;
import com.sun.source.tree.CompilationUnitTree;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.InetAddress;

@WebServlet(name = "country" ,urlPatterns = "/country")
public class CountryServlet extends HttpServlet {
    CountryDao countryDao = new CountryDao();
    final static String COUNTRIES = "countries";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doProcess(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doProcess(req,resp);
    }

    protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        String target = "/WEB-INF/index.jsp";

        if("insert".equalsIgnoreCase(action)){
            if(req.getParameter("cancel")==null) {
                countryDao.save(populate(req));
            }
        }else if("update".equalsIgnoreCase(action)){
            if(req.getParameter("cancel")==null) {
                countryDao.update(populate(req));
            }
        }else if("delete".equalsIgnoreCase(action)){
            if(req.getParameter("cancel")==null) {
                countryDao.delete(populate(req));
            }
        }else if("query".equalsIgnoreCase(action)){
            req.setAttribute(COUNTRIES, countryDao.query(populate(req)));
            req.getRequestDispatcher(target).forward(req, resp);
            return;
        }else if("edit".equalsIgnoreCase(action)){
            String id = req.getParameter("id");
            Country country = countryDao.findById(id);
            req.setAttribute("country", country);
            target = "/edit.jsp";
        }else if("deleteConfirm".equalsIgnoreCase(action)){
            String id = req.getParameter("id");
            Country country = countryDao.findById(id);
            req.setAttribute("country", country);
            target = "/deleteConfirm.jsp";
        }
        req.setAttribute(COUNTRIES, countryDao.findAll());
        req.getRequestDispatcher(target).forward(req, resp);
    }

    private Country populate(HttpServletRequest req) {
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String capital = req.getParameter("capital");
        String continent = req.getParameter("continent");
        String population = req.getParameter("population");
        return new Country(id,name, capital,continent,population);
    }
}
