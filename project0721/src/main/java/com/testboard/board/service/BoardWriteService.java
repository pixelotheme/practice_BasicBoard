package com.testboard.board.service;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;

import com.testboard.board.domain.BoardDTO;
import com.testboard.board.mapper.BoardMapper;
import com.testboard.myapp.Service;
import com.webjjang.util.PageObject;

import lombok.Setter;

@org.springframework.stereotype.Service
public class BoardWriteService implements Service {

	@Setter(onMethod_ = @Inject)
	private BoardMapper mapper;
	
	@Override
	public Object Service(Object obj) throws Exception {
		// TODO Auto-generated method stub
		
		BoardDTO dto = (BoardDTO) obj;
		
		
		return mapper.write(dto);
		
	}

}
