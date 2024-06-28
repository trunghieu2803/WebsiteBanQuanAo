/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Hieu.Nguyxn
 */
import dao.*;
public class test {
    
    public static void main(String[] args) {
        DaoAccount acc = new DaoAccount();
        
        
        System.out.println(acc.checkAccount("admin", "123"));
    }
}
