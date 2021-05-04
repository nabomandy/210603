package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mybatis.Member;
import mapper.MemberMapper;

@Repository
public class MemberDaoMybatis {
	private static Map<String, Object> map=new HashMap<String, Object>();
	@Autowired
	 SqlSessionTemplate session;
	public int insert(Member member) {
		int count=(Integer)session.getMapper(MemberMapper.class).insert(member);
		if(count>0)	return count;
		else return 0;
	}
	public Member selectOne(String id) {
		Member member = session.getMapper(MemberMapper.class).selectOne(id);
		return member;
	}
	public int update(Member member) {
		int count=(Integer)session.getMapper(MemberMapper.class).update(member);
		if(count>0)	return count;
		else return 0;
	}
	public int delete(String id) {
		int count=(Integer)session.getMapper(MemberMapper.class).delete(id);
		if(count>0)	return count;
		else return 0;
	}
	public List<Member> list() {
		List<Member> list = session.getMapper(MemberMapper.class).list();
		return list;
	}
	public int updatePass(String id, String chgpass) {
		map.clear();
		map.put("id", id);
		map.put("pass", chgpass);
		int count = (Integer)session.getMapper(MemberMapper.class).updatePass(map);
		if(count>0)	return count;
		else return 0;
	}
}