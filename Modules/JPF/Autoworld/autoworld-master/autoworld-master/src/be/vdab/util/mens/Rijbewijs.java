/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package be.vdab.util.mens;

/**
 *
 * @author yannick.thibos
 */
public enum Rijbewijs {
    
    A, B, BE, C, CE, D, DE;

    @Override
    public String toString() {
        if (name().length() == 2) {
            return name().charAt(0) + "+" + name().charAt(1);
        }
        else {
            return name();
        }
    }
    
    
}
