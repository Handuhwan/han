package com.universe.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.universe.domain.ProductVO;
import com.universe.mapper.HomeMapper;

import lombok.AllArgsConstructor;
import lombok.Data;


@Service
@AllArgsConstructor
@Data
public class HomeServiceImple implements HomeService {

	private HomeMapper mapper;
	
	@Override
	public List<ProductVO> HomeList() {
		
		return mapper.Homelist();
	}

}
