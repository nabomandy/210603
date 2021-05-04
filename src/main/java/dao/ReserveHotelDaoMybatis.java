package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mybatis.ReserveHotel;
import mapper.ReserveHotelMapper;

@Repository
public class ReserveHotelDaoMybatis {
	//private static Map<String, Object> map=new HashMap<String, Object>();
	@Autowired
	 SqlSessionTemplate session;
	public int insert(ReserveHotel reserveHotel) {
		int rh_num = (Integer)session.getMapper(ReserveHotelMapper.class).max();
		reserveHotel.setH_num(rh_num);
		int count=(Integer)session.getMapper(ReserveHotelMapper.class).insert(reserveHotel);
		if(count>0)	return count;
		else return 0;
	}
	public ReserveHotel selectOne(int rh_num) {
		ReserveHotel reserveHotel = session.getMapper(ReserveHotelMapper.class).selectOne(rh_num);
		return reserveHotel;
	}
	public int update(ReserveHotel reserveHotel) {
		int count=(Integer)session.getMapper(ReserveHotelMapper.class).update(reserveHotel);
		if(count>0)	return count;
		else return 0;
	}
	public int delete(int rh_num) {
		int count=(Integer)session.getMapper(ReserveHotelMapper.class).delete(rh_num);
		if(count>0)	return count;
		else return 0;
	}
	public List<ReserveHotel> list(String id) {
		List<ReserveHotel> list = session.getMapper(ReserveHotelMapper.class).list(id);
		return list;
	}
}