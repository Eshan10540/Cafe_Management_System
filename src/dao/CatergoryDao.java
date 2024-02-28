/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import model.Catergory;
import java.sql.*;
/**
 *
 * @author User
 */
public class CatergoryDao {
    
    public static void save(Catergory catergory){
        String query = "insert into catergory (name) values('"+catergory.getName()+"')";
        DbOperations.setDateOrDelete(query, "Catergory Added Successfully");
    } 
    
    public static ArrayList<Catergory> getAllRecords(){
        ArrayList<Catergory> arrayList = new ArrayList();
        try{
            ResultSet rs = DbOperations.getData("select *from catergory");
            while(rs.next()){
                Catergory catergory = new Catergory();
                catergory.setId(rs.getInt("id"));
                catergory.setName(rs.getString("name"));
                arrayList.add(catergory);
            }
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null, e);
        }
        return arrayList;
    }
    
    public static void delete(String id){
        String query = "delete from catergory where id='"+id+"'";
        DbOperations.setDateOrDelete(query, "Catergory Deleted Successfully");
    }
}
