package com.testboard.board.controller;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.testboard.board.domain.BoardDTO;
import com.testboard.myapp.Service;
import com.webjjang.util.PageObject;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import oracle.jdbc.proxy.annotation.Post;

@Controller
@Log4j
@RequestMapping("/board")
public class BoardController {

	@Setter(onMethod_ = @Autowired)
	private Service boardListService;
	@Setter(onMethod_ = @Autowired)
	private Service boardViewService;
	@Setter(onMethod_ = @Autowired)
	private Service boardUpdateService;
	@Setter(onMethod_ = @Autowired)
	private Service boardWriteService;
	@Setter(onMethod_ = @Autowired)
	private Service boardDeleteService;
	
	
	@GetMapping("/list.do")
	public String list(PageObject pageObject, Model model) throws Exception {
		
		log.info("list.() pageObject : " + pageObject );
		model.addAttribute("list", boardListService.Service(pageObject));
		
		
		return "board/list";
	}
	
	@GetMapping("/view.do")
	public String view(long no, Model model, int inc) throws Exception {
		
		log.info("view() no: " + no);

		model.addAttribute("vo", boardViewService.Service(new Object[] {no,inc}));
		return "board/view";
	}
	
	@GetMapping("/update.do")
	public String updateForm(long no, Model model, int inc) throws Exception {
		
		log.info("updateForm() no :" + no);
		model.addAttribute("vo", boardViewService.Service(new Object[] {no,inc}));
		
		return "board/update";
	}
	
	@PostMapping("/update.do")
	public String update(BoardDTO dto)throws Exception{
		
		log.info("update 처리" +dto);
		boardUpdateService.Service(dto);
		
		return "redirect:view.do?no="+dto.getNo()+"&inc=0";
	}
	
	@GetMapping("/write.do")
	public String writeForm() throws Exception{
		
		log.info("writeForm()");
		
		return "board/write";
	}
	
	@PostMapping("/write.do")
	public String write(BoardDTO dto) throws Exception{
		
		log.info("write" + dto);
		
		boardWriteService.Service(dto);
		return "redirect:list.do";
	}
	
	@GetMapping("/delete.do")
	public String delete(long no) throws Exception{
		
		log.info("delete() no : " + no);
		
		boardDeleteService.Service(no);
		return "redirect:list.do";
	}
	
}
