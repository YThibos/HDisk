/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package be.vdab.util;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 *
 * @author yannick.thibos
 */
public class Datum implements Comparable<Datum>, Serializable {

    private static final Long serialVersionUID = 1L;

    private final int[] maandenMet31Dagen = {1, 3, 5, 7, 8, 10, 12};
    private static final List<Integer> MAANDEN30DAGEN;

    static {
        ArrayList<Integer> maanden30dagen = new ArrayList<>(5);
        maanden30dagen.add(2);
        maanden30dagen.add(4);
        maanden30dagen.add(6);
        maanden30dagen.add(9);
        maanden30dagen.add(11);

        MAANDEN30DAGEN = Collections.unmodifiableList(maanden30dagen);
    }

    private final int dag;
    private final int maand;
    private final int jaar;

    public Datum(int dag, int maand, int jaar) throws DatumException {

        checkGeldigeDatum(dag, maand, jaar);
        this.dag = dag;
        this.maand = maand;
        this.jaar = jaar;

    }

    public int getDag() {
        return dag;
    }

    public int getMaand() {
        return maand;
    }

    public int getJaar() {
        return jaar;
    }

    /**
     * Controleert een gegeven datum op geldigheid. Een datum is geldig indien:
     * 1 <= dag <= 31 1 <= maand <= 12 1583 <= jaar <= 4099 en wanneer deze
     * bovendien bestaat voor opgegeven datum (inclusief controle op
     * schrikkeljaar) Wanneer de datum ongeldig is wordt een DatumException
     * gegooid.
     *
     * @param dag
     * @param maand
     * @param jaar
     * @throws DatumException
     */
    private void checkGeldigeDatum(int dag, int maand, int jaar) throws DatumException {
        if (jaar < 1583 || jaar > 4099) {
            throw new DatumException("DatumException :: Jaartal moet tussen 1583 en 4099 zijn");
        }
        if (maand < 1 || maand > 12) {
            throw new DatumException("DatumException :: Maand moet tussen 1 en 12 zijn");
        }
        if (dag < 1 || dag > 31) {
            throw new DatumException("DatumException :: Dag moet tussen 1 en 31 zijn");
        }
        if (MAANDEN30DAGEN.contains(dag)) {
            if (dag == 31) {
                throw new DatumException("DatumException :: 31ste bestaat niet voor de maand " + maand);
            }
        }
        if (maand == 2) {
            if (!schrikkeljaar(jaar) & (dag > 28) ) {
                throw new DatumException("DatumException :: Februari telt slechts 28 dagen in jaar " + jaar);
            }
            else if (schrikkeljaar(jaar) & (dag > 29)) {
                throw new DatumException("DatumException :: Februari telt nooit meer dan 29 dagen");
            }
        }

    }

    private boolean schrikkeljaar(int jaar) {
        return (jaar % 400 == 0 || jaar % 100 != 0 && jaar % 4 == 0);
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 97 * hash + this.dag;
        hash = 97 * hash + this.maand;
        hash = 97 * hash + this.jaar;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Datum other = (Datum) obj;
        if (this.dag != other.dag) {
            return false;
        }
        if (this.maand != other.maand) {
            return false;
        }
        if (this.jaar != other.jaar) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return String.format("%02d/%02d/%d", dag, maand, jaar);
    }

    /**
     *
     * @param datum
     * @return Returnt -1 als deze datum vroeger is dan parameter datum, 0
     * indien ze gelijk zijn en 1 wanneer deze datum later is dan parameter
     * datum.
     */
    @Override
    public int compareTo(Datum datum) {
        // Gelijke datums (of Datum objecten) returnt 0 (consistent met equals)
        if (this.equals(datum)) {
            return 0;
        } else if (this.getJaar() > datum.getJaar()) {
            return 1;
        } else if (this.getJaar() == datum.getJaar()) {
            if (this.getMaand() > datum.getMaand()) {
                return 1;
            } else if (this.getMaand() == datum.getMaand()) {
                if (this.getDag() > datum.getDag()) {
                    return 1;
                } else if (this.getDag() == datum.getDag()) {
                    return 0;
                }
            }
        }
        return -1;
    }
}
