/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package za.tut.ac.bl;

import java.util.List;
import javax.ejb.Local;
import za.tut.ac.entities.ResManager;

/**
 *
 * @author POL_1_G1B-69
 */
@Local
public interface ResManagerFacadeLocal {

    void create(ResManager resManager);

    void edit(ResManager resManager);

    void remove(ResManager resManager);

    ResManager find(Object id);

    List<ResManager> findAll();

    List<ResManager> findRange(int[] range);

    int count();
    
   
    
}
