/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package common;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
import java.sql.*;

/**
 *
 * @author sami
 */
public class userDao {

    private Connection conn;

    public userDao(Connection conn) {
        this.conn = conn;
    }

    //method to insert user to database
    public boolean saveUser(User user) {
        boolean f = false;
        try {
            Thread.sleep(100);
            //user-->database
            String salt = user.getSalt();
            String password = user.getPassword();
//             Protect user's password. The generated value can be stored in DB.
            String mySecurePassword = PasswordUtils.generateSecurePassword(password, salt);
            String query = "insert into admin(user_name,email,password,gender,salt) values(?,?,?,?,?)";
            PreparedStatement sp = this.conn.prepareStatement(query);
            System.out.println(user.getName());
            sp.setString(1, user.getName());
            sp.setString(2, user.getEmail());
            sp.setString(3, mySecurePassword);
            sp.setString(4, user.getGender());
            sp.setString(5, salt);

            sp.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    //get user by useremail and password

    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;
        try {

            String query = "select * from admin where email=?";
            PreparedStatement ps = this.conn.prepareStatement(query);

            ps.setString(1, email);
           

            ResultSet set = ps.executeQuery();
            if (set.next()) {
                user = new User();
                //data from data

                String name = set.getString("user_name");
                user.setName(name);
                user.setId(set.getInt("id"));
                user.setEmail(set.getString("email"));
                String password1 = set.getString("password");
                user.setPassword(password1);
                user.setGender(set.getString("gender"));
                String salt = set.getString("salt");
                boolean passwordmatch = PasswordUtils.verifyUserPassword(password, password1, salt);
                if (passwordmatch) {
                    System.out.println("Profile Matched");

                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;

    }

}
