/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package za.tut.ac.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import za.tut.ac.entities.ResManager;

/**
 *
 * @author POL_1_G1B-69
 */
@Stateless
public class ResManagerFacade extends AbstractFacade<ResManager> implements ResManagerFacadeLocal {

    @PersistenceContext(unitName = "ResEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ResManagerFacade() {
        super(ResManager.class);
    }
    
}
