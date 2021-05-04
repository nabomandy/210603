package mapper;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.*;

import mybatis.ReserveClinic;
import mybatis.ReserveHotel;

public interface ReserveClinicMapper {
	@Select("select reserveclinicseq.nextval from dual")
	int max();
	
	@Select("select * from reserveclinic")
	List<ReserveClinic> list();
	
	@Select("select * from reserveclinic where rc_num = #{rc_num}")
	ReserveClinic selectOne(int rc_num);
	
	@Insert("insert into reserveclinic (rc_num, c_num, c_name, name, pass,tel, date1,kind, pet_name, pet_age,problem) "
			+"values(#{rc_num},#{c_num},#{c_name},#{name},#{pass},#{tel},#{date1},#{kind},#{pet_name},#{pet_age},#{problem})")
	int insert(ReserveClinic reserveClinic);
	
	@Update("update reserveclinic set date1=#{date1}, kind=#{kind}, pet_name=#{pet_name}, problem=#{problem} where rc_num=#{rc_num}")
	int update(ReserveClinic reserveClinic);
	
	@Delete("delete from reserveclinic where rc_num=#{rc_num}")
	int delete(int rc_num);
}