import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "RController")
public class RController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out=response.getWriter();

        String email=request.getParameter("email");
        String pass=request.getParameter("pass");
        String phone=request.getParameter("phone");
        Register register=new Register();
        register.insert(email,pass,phone);
        RequestDispatcher rd=request.getRequestDispatcher("Register_succes.jsp");
        rd.forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out=response.getWriter();

        String email=request.getParameter("email");
        String pass=request.getParameter("pass");
        String phone=request.getParameter("phone");
        out.print(phone);
        Register register=new Register();
        register.insert(email,pass,phone);
        RequestDispatcher rd=request.getRequestDispatcher("Register_succes.jsp");
        rd.forward(request,response);





    }
}
