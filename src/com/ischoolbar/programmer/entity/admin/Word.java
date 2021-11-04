package com.ischoolbar.programmer.entity.admin;

public class Word {
    private String name;
    private String firstDate;
    private String degreeYear;
    private String partTeach;
    private String supTeach;
    private String proResp;
    private String SA;
    private String PA;
    private String SP;
    private String IP;
    private String O;
    private String description;



    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFirstDate() {
        return firstDate;
    }

    public void setFirstDate(String firstDate) {
        this.firstDate = firstDate;
    }

    public String getDegreeYear() {
        return degreeYear;
    }

    public void setDegreeYear(String degreeYear) {
        this.degreeYear = degreeYear;
    }

    public String getPartTeach() {
        return partTeach;
    }

    public void setPartTeach(String partTeach) {
        this.partTeach = partTeach;
    }

    public String getSupTeach() {
        return supTeach;
    }

    public void setSupTeach(String supTeach) {
        this.supTeach = supTeach;
    }

    public String getProResp() {
        return proResp;
    }

    public void setProResp(String proResp) {
        this.proResp = proResp;
    }

    public String getSA() {
        return SA;
    }

    public void setSA(String SA) {
        this.SA = SA;
    }

    public String getPA() {
        return PA;
    }

    public void setPA(String PA) {
        this.PA = PA;
    }

    public String getSP() {
        return SP;
    }

    public void setSP(String SP) {
        this.SP = SP;
    }

    public String getIP() {
        return IP;
    }

    public void setIP(String IP) {
        this.IP = IP;
    }

    public String getO() {
        return O;
    }

    public void setO(String o) {
        O = o;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "name='" + name + '\'' +
                ", firstDate='" + firstDate + '\'' +
                ", degreeYear='" + degreeYear + '\'' +
                ", partTeach='" + partTeach + '\'' +
                ", supTeach='" + supTeach + '\'' +
                ", proResp='" + proResp + '\'' +
                ", SA='" + SA + '\'' +
                ", PA='" + PA + '\'' +
                ", SP='" + SP + '\'' +
                ", IP='" + IP + '\'' +
                ", O='" + O + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
