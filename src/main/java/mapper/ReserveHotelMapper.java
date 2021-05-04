package mapper;
import java.util.List;
import org.apache.ibatis.annotations.*;
import mybatis.ReserveHotel;

public interface ReserveHotelMapper {
	@Select("select reservehotelseq.nextval from dual")
	int max();
	
	@Select("select * from reservehotel where id=#{id}")
	List<ReserveHotel> list(String id);
	
	@Select("select * from reservehotel where rh_num = #{rh_num}")
	ReserveHotel selectOne(int rh_num);
	
	@Insert("insert into reservehotel (rh_num, h_num, h_name, room_kind, id, tel, pass, num, date1, pet_kind, pet_num, content) "
			+"values(#{rh_num},#{h_num},#{h_name},#{room_kind},#{id},#{tel},#{pass},#{num},#{date1},#{pet_kind},#{pet_num},#{content})")
	int insert(ReserveHotel reserveHotel);
	
	@Update("update reservehotel set room_kind=#{room_kind}, tel=#{tel}, num=#{num}, date1=#{date1}, pet_kind=#{pet_kind}, pet_num=#{pet_num}, content=#{content} where rh_num=#{rh_num}")
	int update(ReserveHotel reserveHotel);
	
	@Delete("delete from reservehotel where rh_num=#{rh_num}")
	int delete(int rh_num);
}