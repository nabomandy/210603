package mapper;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.*;

import mybatis.Clinic;

public interface ClinicMapper {
	@Select("select clinicseq.nextval from dual")
	int max();

	@Select("select * from clinic")
	List<Clinic> list();

	@Select("select * from clinic where c_num = #{c_num}")
	Clinic selectOne(int c_num);

	@Insert("insert into clinic (c_num, c_name, c_location, c_tel, pet_kind, open_hour, park, reserve) "
			+ "values(#{c_num},#{c_name},#{c_location},#{c_tel},#{pet_kind},#{open_hour},#{park},#{reserve})")
	int insert(Clinic clinic);

	@Update("update clinic set c_tel=#{c_tel}, pet_kind=#{pet_kind}, park=#{park}, reserve=#{reserve}, reference_room=#{reference_room} where c_num=#{c_num}")
	int update(Clinic clinic);

	@Delete("delete from clinic where c_num=#{c_num}")
	int delete(int c_num);
}