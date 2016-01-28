/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package be.vdab.util.mens;

import java.util.Collection;
import java.util.List;

/**
 *
 * @author yannick.thibos
 */
public class Mens {
    
    private String naam;
    private Rijbewijs[] rijbewijzen;
    
    Mens(String naam) {
        this.naam = naam;
    }

    Mens(String naam, Rijbewijs rijbewijs) {
        this.naam = naam;
        rijbewijzen = new Rijbewijs[1];
        rijbewijzen[0] = rijbewijs;
    }
    
}
