package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mybatis.Clinic;
import mapper.ClinicMapper;


@Repository
public class ClinicDaoMybatis {
	//private static Map<String, Object> map=new HashMap<String, Object>();
	@Autowired
	 SqlSessionTemplate session;
	public int insert(Clinic clinic) {
		int c_num = (Integer)session.getMapper(ClinicMapper.class).max();
		clinic.setC_num(c_num);
		System.out.println(clinic);
		int count=(Integer)session.getMapper(ClinicMapper.class).insert(clinic);
		if(count>0)	return count;
		else return 0;
	}
	public Clinic selectOne(int c_num) {
		Clinic clinic = session.getMapper(ClinicMapper.class).selectOne(c_num);
		return clinic;
	}
	public int update(Clinic clinic) {
		int count=(Integer)session.getMapper(ClinicMapper.class).update(clinic);
		if(count>0)	return count;
		else return 0;
	}
	public int delete(int c_num) {
		int count=(Integer)session.getMapper(ClinicMapper.class).delete(c_num);
		if(count>0)	return count;
		else return 0;
	}
	public List<Clinic> list() {
		List<Clinic> list = session.getMapper(ClinicMapper.class).list();
		return list;
	}
}