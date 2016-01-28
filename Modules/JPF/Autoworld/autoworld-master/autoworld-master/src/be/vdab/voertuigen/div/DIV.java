/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package be.vdab.voertuigen.div;

/**
 *
 * @author yannick.thibos
 */
public enum DIV {
    INSTANCE;

    private String huidigePlaat;

    private DIV() {
        huidigePlaat = "AAA001";
    }

    public Nummerplaat getNummerplaat() {
        // Maak een nummerplaat aan met de huidige uit te geven plaat
        Nummerplaat nummerplaat = new Nummerplaat(huidigePlaat);

        volgendePlaat();
        
        return nummerplaat;
    }

    // Verhoog te huidige plaat met 1 cijfer (en indien nodig ook letter)
    private void volgendePlaat() {

        // Verhoog de huidige uit te geven plaat met 1 cijfer (of letter)
        String plaatCijfers = huidigePlaat.substring(3);
        String plaatLetters = huidigePlaat.substring(0, 3);
        int cijfers = Integer.parseInt(plaatCijfers) + 1;

        // Als het cijfer na verhoging boven 999 gaat, zet terug naar 001
        // en verhoog de letter
        if (cijfers > 999) {
            plaatCijfers = "001";
        } else {
            plaatCijfers = String.format("%03d", cijfers);
        }
        
        huidigePlaat = plaatLetters.concat(plaatCijfers);

    }
}
