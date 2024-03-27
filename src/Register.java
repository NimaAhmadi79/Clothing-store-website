import java.sql.*;
public class Register {
    public void insert(String user,String pass,String phone){
        try{

            Class.forName("com.mysql.jdbc.Driver").newInstance();
            String url="jdbc:mysql://localhost:3306/servlet?user=root";
            Connection conect=DriverManager.getConnection(url);
            Statement state=conect.createStatement();
            String query="insert into register(user,pass,phone) values('%s','%s','%s')";
            query=String.format(query,user,pass,phone);
            state.execute(query);
            conect.close();
            state.close();



        }
        catch (IllegalAccessException | InstantiationException | ClassNotFoundException | SQLException e ) {
            e.printStackTrace();

        }
    }
}
