package com.universe.domain;


import lombok.Data;

@Data
public class ReportVO {
	private String id;
	private String report;
    private String reported_id;
    private String reason;
    private String indate;
}
