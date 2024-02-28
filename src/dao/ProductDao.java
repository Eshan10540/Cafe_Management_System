/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import model.Product;
import java.sql.*;
/**
 *
 * @author User
 */
public class ProductDao {
    public static void save(Product product){
        String query = "insert into product(name,catergory,price) values('"+product.getName()+"','"+product.getCatergory()+"','"+product.getPrice()+"')";
        DbOperations.setDateOrDelete(query, "Product Added Successfully");
    }
    public static ArrayList<Product> getAllRecords(){
        ArrayList<Product> arrayList = new ArrayList<>();
        try{
            ResultSet rs = DbOperations.getData("select *from product");
            while(rs.next()){
                Product product = new Product();
                product.setId(rs.getInt("Id"));
                product.setName(rs.getString("name"));
                product.setCatergory(rs.getString("catergory"));
                product.setPrice(rs.getString("price"));
                arrayList.add(product);
                
            }
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null, e);
        }
        return arrayList;
    }
    public static void update(Product product){
        String query = "update product set name = '"+product.getName()+"',catergory ='"+product.getCatergory()+"',price ='"+product.getPrice()+"' where id = '"+product.getId()+"'";
        DbOperations.setDateOrDelete(query, "Product Update Successfully");
    }
    public static void delete(String id){
       String query = "delete from product where id = '"+id+"'"; 
       DbOperations.setDateOrDelete(query, "Product Deleted Successfully");
    }
    
}
