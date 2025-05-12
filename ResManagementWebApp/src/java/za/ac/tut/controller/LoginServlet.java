/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.tut.ac.bl.ResManagerFacadeLocal;
import za.tut.ac.entities.ResManager;

/**
 *
 * @author POL_1_G1B-69
 */
public class LoginServlet extends HttpServlet {
    @EJB
    private ResManagerFacadeLocal rfl;
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
                
        String email = request.getParameter("email");
         String password = request.getParameter("password");
         
         boolean login = false;
        
         
         for (ResManager object :  rfl.findAll()) {
             
             if(object.getUsername().equals(email) && object.getPassword().equals(password)){
                 
                 login = true;
             }
            
        }
         
         String url = "index.html";
         
         if(login){
             url = "menu.jsp";
         }
         
         
         RequestDispatcher d = request.getRequestDispatcher(url);
         d.forward(request, response);
         
   
    }

}
