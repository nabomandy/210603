package mapper;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.*;

import mybatis.Member;
public interface MemberMapper {
	@Select("select * from memberpet")
	List<Member> list();
	
	@Select("select * from memberpet where id = #{id}")
	Member selectOne(String id);
	
	@Insert("insert into memberpet (id, pass, name, join_date, birthday, tel, email, address, memlevel, picture, pet_kind, pet_name, pet_age, agree) "
			+"values(#{id},#{pass},#{name},#{join_date},#{birthday},#{tel},#{email},#{address},#{memlevel},#{picture},#{pet_kind},#{pet_name},#{pet_age},#{agree})")
	int insert(Member member);
	
	@Update("update memberpet set tel=#{tel}, email=#{email}, address=#{address}, picture=#{picture}, pet_kind=#{pet_kind}, pet_name=#{pet_name}, pet_age=#{pet_age} where id=#{id}")
	int update(Member member);
	
	@Update("update memberpet set pass=#{pass} where id=#{id}")
	int updatePass(Map<String, Object> map);
	
	@Delete("delete from memberpet where id=#{id}")
	int delete(String id);
}