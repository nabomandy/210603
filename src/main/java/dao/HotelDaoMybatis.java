package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mybatis.Hotel;
import mapper.HotelMapper;

@Repository
public class HotelDaoMybatis {
	//private static Map<String, Object> map=new HashMap<String, Object>();
	@Autowired
	 SqlSessionTemplate session;
	public int insert(Hotel hotel) {
		int h_num = (Integer)session.getMapper(HotelMapper.class).max();
		hotel.setH_num(h_num);
		int count=(Integer)session.getMapper(HotelMapper.class).insert(hotel);
		if(count>0)	return count;
		else return 0;
	}
	public Hotel selectOne(int h_num) {
		Hotel hotel = session.getMapper(HotelMapper.class).selectOne(h_num);
		return hotel;
	}
	public int update(Hotel hotel) {
		int count=(Integer)session.getMapper(HotelMapper.class).update(hotel);
		if(count>0)	return count;
		else return 0;
	}
	public int delete(int h_num) {
		int count=(Integer)session.getMapper(HotelMapper.class).delete(h_num);
		if(count>0)	return count;
		else return 0;
	}
	public List<Hotel> list() {
		List<Hotel> list = session.getMapper(HotelMapper.class).list();
		return list;
	}
}