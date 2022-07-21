package com.testboard.board.mapper;

import java.util.List;

import com.testboard.board.domain.BoardDTO;
import com.webjjang.util.PageObject;

public interface BoardMapper {

	public List<BoardDTO> list(PageObject pageObject) throws Exception;
	
	public long getTotalRow(PageObject pageObject) throws Exception;

	public BoardDTO view(long no) throws Exception;
	
	public int increase(long no) throws Exception;
	
	public int update(BoardDTO dto) throws Exception;
	
	public int write(BoardDTO dto) throws Exception;
	
	public int delete(long no) throws Exception;
	
}
