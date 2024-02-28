/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import javax.swing.JOptionPane;

/**
 *
 * @author User
 */
public class tables {
    public static void main(String[] arg){
        try{ 
            String userTable = "create table user(id int AUTO_INCREMENT primary key,name varchar(200),email varchar(200),mobileNumber varchar (10),address varchar(200),password varchar(200),securityQuestion varchar(200),answer varchar(200),status varchar(20),UNIQUE (email))";
            String adminDetails = "insert into user(name,email,mobileNumber,address,password,securityQuestion,answer,status) values('Admin','admin@gmail.com','1234567890','srilanka','admin','What is your favourite colour?','blue','true')";
            String catergoryTable = "create table category(id int AUTO_INCREMENT primary key,name varchar (200))";
            String productTable = "create table product(id int AUTO_INCREMENT primary key,name varchar (200),catergory varchar (200),price varchar (200))";
           // DbOperations.setDateOrDelete(userTable,"User Table Created Successfully");
           // DbOperations.setDateOrDelete(adminDetails,"Adimin Details Added Successfully");
            //DbOperations.setDateOrDelete(catergoryTable,"Catergory Table Created Successfully");
             DbOperations.setDateOrDelete(productTable,"Product Table Created Successfully");
        }
           catch(Exception e){
               JOptionPane.showMessageDialog(null,e);
               
           }
        
    }
}
