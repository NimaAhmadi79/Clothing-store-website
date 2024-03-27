import java.sql.*;

public class Login {
    public boolean search(String email , String password) {
        try {

            Class.forName("com.mysql.jdbc.Driver").newInstance();
            String url = "jdbc:mysql://localhost:3306/servlet?user=root";
            Connection conect = DriverManager.getConnection(url);
            Statement state = conect.createStatement();
            String query = "select * from register";
            ResultSet result = state.executeQuery(query);
            while (result.next()) {
                String user = result.getString(1);
                String pass = result.getString(2);
                if (user.equals(email) && pass.equals(password)) {
                    return true;
                }


            }
            conect.close();
            state.close();


        } catch (IllegalAccessException | InstantiationException | ClassNotFoundException | SQLException e) {
            e.printStackTrace();

        }


        return false;
    }

}
