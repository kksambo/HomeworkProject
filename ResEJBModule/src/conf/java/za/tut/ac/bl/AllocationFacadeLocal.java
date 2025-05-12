/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package za.tut.ac.bl;

import java.util.List;
import javax.ejb.Local;
import za.tut.ac.entities.Allocation;

/**
 *
 * @author POL_1_G1B-69
 */
@Local
public interface AllocationFacadeLocal {

    void create(Allocation allocation);

    void edit(Allocation allocation);

    void remove(Allocation allocation);

    Allocation find(Object id);

    List<Allocation> findAll();

    List<Allocation> findRange(int[] range);

    int count();
    
}
