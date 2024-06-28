/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Hieu.Nguyxn
 */
public class Account {
    private String userName;
    private String passWord;
    private boolean isSell;
    private boolean isAdmin;

    public Account(String userName, String passWord, boolean isSell, boolean isAdmin) {
        this.userName = userName;
        this.passWord = passWord;
        this.isSell = isSell;
        this.isAdmin = isAdmin;
    }

    public Account() {
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public boolean isIsSell() {
        return isSell;
    }

    public void setIsSell(boolean isSell) {
        this.isSell = isSell;
    }

    public boolean isIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public String toString() {
        return "Account{" + "userName=" + userName + ", passWord=" + passWord + ", isSell=" + isSell + ", isAdmin=" + isAdmin + '}';
    }
    
}
