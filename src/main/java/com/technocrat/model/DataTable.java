package com.technocrat.model;

import java.util.List;

public class DataTable {
    List<Object> data;
    int recordsTotal;
    int start;
    int length;
    int iDisplayStart;
    int iDisplayLength;
    int recordsFiltered;
    int iTotalDisplayRecords;
    int iTotalRecords;

    public void setData(List<Object> data) {
        this.data = data;
    }

    public void setRecordsTotal(int recordsTotal) {
        this.recordsTotal = recordsTotal;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public void setiDisplayStart(int iDisplayStart) {
        this.iDisplayStart = iDisplayStart;
    }

    public void setiDisplayLength(int iDisplayLength) {
        this.iDisplayLength = iDisplayLength;
    }

    public void setRecordsFiltered(int recordsFiltered) {
        this.recordsFiltered = recordsFiltered;
    }

    public void setiTotalDisplayRecords(int iTotalDisplayRecords) {
        this.iTotalDisplayRecords = iTotalDisplayRecords;
    }

    public void setiTotalRecords(int iTotalRecords) {
        this.iTotalRecords = iTotalRecords;
    }

    public List<Object> getData() {
        return data;
    }

    public int getRecordsTotal() {
        return recordsTotal;
    }

    public int getStart() {
        return start;
    }

    public int getLength() {
        return length;
    }

    public int getiDisplayStart() {
        return iDisplayStart;
    }

    public int getiDisplayLength() {
        return iDisplayLength;
    }

    public int getRecordsFiltered() {
        return recordsFiltered;
    }

    public int getiTotalDisplayRecords() {
        return iTotalDisplayRecords;
    }

    public int getiTotalRecords() {
        return iTotalRecords;
    }
}
