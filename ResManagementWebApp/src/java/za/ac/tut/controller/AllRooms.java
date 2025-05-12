/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.tut.ac.bl.AllocationFacadeLocal;
import za.tut.ac.entities.Allocation;

/**
 *
 * @author POL_1_G1B-69
 */
public class AllRooms extends HttpServlet {
    
    @EJB
    
    private AllocationFacadeLocal afl;
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HashMap<String, String> list = new HashMap<>();
        
        for (int i = 1; i < 7; i++) {
            
            list.put(String.valueOf(i), "Free");
            
        }
        
        
        
        
        List<Allocation> list2 = afl.findAll();
        
        for (Allocation allocation : list2) {
            
            if(list.containsKey(allocation.getRoomNo())){
                
                list.put(allocation.getRoomNo(), "Occupied");
                
                
            }
            
            
            
        }
        request.setAttribute("out", list);
        RequestDispatcher d = request.getRequestDispatcher("viewAllRooms.jsp");
        d.forward(request, response);
        
    }

}
