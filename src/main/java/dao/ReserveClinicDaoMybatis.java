package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mybatis.ReserveClinic;
import mapper.ReserveClinicMapper;


@Repository
public class ReserveClinicDaoMybatis {
	//private static Map<String, Object> map=new HashMap<String, Object>();
	@Autowired
	 SqlSessionTemplate session;
	public int insert(ReserveClinic reserveClinic) {
		int rc_num = (Integer)session.getMapper(ReserveClinicMapper.class).max();
		reserveClinic.setC_num(rc_num);
		int count=(Integer)session.getMapper(ReserveClinicMapper.class).insert(reserveClinic);
		if(count>0)	return count;
		else return 0;
	}
	public ReserveClinic selectOne(int rc_num) {
		ReserveClinic reserveClinic = session.getMapper(ReserveClinicMapper.class).selectOne(rc_num);
		return reserveClinic;
	}
	public int update(ReserveClinic reserveClinic) {
		int count=(Integer)session.getMapper(ReserveClinicMapper.class).update(reserveClinic);
		if(count>0)	return count;
		else return 0;
	}
	public int delete(int rc_num) {
		int count=(Integer)session.getMapper(ReserveClinicMapper.class).delete(rc_num);
		if(count>0)	return count;
		else return 0;
	}
	public List<ReserveClinic> list() {
		List<ReserveClinic> list = session.getMapper(ReserveClinicMapper.class).list();
		return list;
	}
}