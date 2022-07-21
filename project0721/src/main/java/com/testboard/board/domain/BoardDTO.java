package com.testboard.board.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardDTO {

	private long no;
	private String title, content, writer;
	private Date writeDate;
	private long hit;
}
