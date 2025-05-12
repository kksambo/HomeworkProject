/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.controller;

import java.io.IOException;
import java.io.PrintWriter;
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
public class AllocateRoom extends HttpServlet {
@EJB
private AllocationFacadeLocal afl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     String name = request.getParameter("name");
        String studNo = request.getParameter("studNo");
        String roomNo = request.getParameter("roomNo");
        
        String out = "allocated successfully";
        
               boolean available = true;
        
        List<Allocation> rooms = afl.findAll();
        
        for (Allocation room : rooms) {
            if(room.getRoomNo().equals(roomNo)){
                
                available = false;
                
                out = "room number "+roomNo+" not available";
            }
            
            
        }
        

        if(available){
            
             afl.create(new Allocation(name,studNo,roomNo));
        }
        
       
        
 
        
         request.setAttribute("out", out);
         RequestDispatcher d = request.getRequestDispatcher("allocateRoom.jsp");
         d.forward(request, response);
        
        
      
    }
}
