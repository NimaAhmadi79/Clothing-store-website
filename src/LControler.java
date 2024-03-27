import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LControler")
public class LControler extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        Login login=new Login();
        HttpSession session=request.getSession();
        session.removeAttribute("Login");
        boolean val=login.search(email,password);
        session.setAttribute("Login",val);


        if(val){
            RequestDispatcher rd=request.getRequestDispatcher("Login_succes.jsp");
            rd.forward(request,response);
        }
        else {
            RequestDispatcher rd1=request.getRequestDispatcher("Login.jsp");
            rd1.forward(request,response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
