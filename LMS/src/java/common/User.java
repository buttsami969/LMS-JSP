/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package common;



import java.sql.Timestamp;

/**
 *
 * @author sami
 */
public class User {

    private int id;
    private String name, email, password, gender, about,profile;

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }
    private Timestamp dateTime;
// Generate Salt. The generated value can be stored in DB. 
    private String salt = PasswordUtils.getSalt(30);

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {

        this.password=password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }


    public Timestamp getDateTime() {
        return dateTime;
    }

    public void setDateTime(Timestamp dateTime) {
        this.dateTime = dateTime;
    }

    public User()
    {
        
    }

    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }
    public User(int id, String name, String email, String password, String gender, Timestamp dateTime) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.gender = gender;

        this.dateTime = dateTime;
    }

    public User(String name, String email, String password, String gender,String salt) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.gender = gender;

        this.salt=salt;

    }
}
