package dao;

import java.util.HashMap;

import java.util.List;
import java.util.Map;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mybatis.Board;
import mapper.BoardMapper;

@Repository
public class BoardDaoMybatis {
	private static Map<String, Object> map=new HashMap<String, Object>();
	@Autowired
	 SqlSessionTemplate session;
	
	public int boardCount() {
		int count = (Integer)session.getMapper(BoardMapper.class).count();
		return count;
	}
	public List<Board> list(int pageNum, int limit, int boardcount){
		int start=(pageNum-1)*limit+1;
		int end=start+limit-1;
		map.clear();
		map.put("start", start);
		map.put("end", end);
		List<Board> list = session.getMapper(BoardMapper.class).list(map);
		return list;
	}
	public boolean insert(Board board) {
		int b_num = (Integer)session.getMapper(BoardMapper.class).max();
		if (board.getB_num() > 0) {
			board.setRef(board.getRef());
			board.setReflevel(board.getReflevel() + 1);
			board.setRefstep(board.getRefstep() + 1);
		} else {
			board.setRef(b_num);
		}
		board.setB_num(b_num);
		if(board.getFile1()==null) board.setFile1("");
		int count=(Integer)session.getMapper(BoardMapper.class).insert(board);
		if(count>0)	return true;
		else return false;
	}
	public void readcntadd(int b_num) {
		session.getMapper(BoardMapper.class).readcntadd(b_num);
	}
	public Board selectOne(int b_num) {
		Board board = session.getMapper(BoardMapper.class).selectOne(b_num);
		return board;
	}
	public boolean update(Board board) {
		int count=(Integer)session.getMapper(BoardMapper.class).update(board);
		if(count>0)	return true;
		else return false;
	}
	public boolean delete(int b_num) {
		int count=(Integer)session.getMapper(BoardMapper.class).delete(b_num);
		if(count>0)	return true;
		else return false;
	}
	public void refstepadd(int ref, int refstep) {
		map.clear();
		map.put("ref", ref);
		map.put("refstep", refstep);
		session.getMapper(BoardMapper.class).readstepadd(map);
	}
}
