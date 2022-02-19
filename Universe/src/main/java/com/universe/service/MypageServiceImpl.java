package com.universe.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.universe.mapper.mypageMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class MypageServiceImpl implements MypageService {
	
	@Setter(onMethod_ = @Autowired)
	private mypageMapper mapper;
	
	@Override
	public boolean updateNickname(String nickname, String id) {
		return mapper.updateNickname(nickname, id) == 1;
	}
	
	@Override
	public boolean updateIntro(String intro, String id) {
		
		log.info("intro "+intro);
		log.info("id "+id);
		return mapper.updateIntro(intro, id) == 1;
	}

	
}
