/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package be.vdab.util;

/**
 *
 * @author yannick.thibos
 */
class DatumException extends Exception {

    public DatumException() {
        super();
    }
    
    public DatumException(String message) {
        super(message);
    }
    
    public DatumException(Throwable cause) {
        super(cause);
    }
    
    public DatumException(String message, Throwable cause) {
        super(message, cause);
    }
    
}