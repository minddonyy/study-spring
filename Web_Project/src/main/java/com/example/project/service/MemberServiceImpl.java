package com.example.project.service;

import java.lang.reflect.Member;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.project.model.dao.MemberDAO;
import com.example.project.model.dao.MemberDAOImpl;
import com.example.project.model.dto.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	//MemberDAOImpl ��ü�� ���������� �����Ͽ� ���� 
	@Inject
	MemberDAOImpl memberDao;
	
	@Override
	public List<MemberVO> memberList(){
		return memberDao.memberList();
	}
	
	@Override
	public void insertMember(MemberVO vo){
		
	}

	@Override
	public MemberVO viewMember() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteMember(String userId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateMember(MemberVO vo) {
		// TODO Auto-generated method stub
		
	}
	

}