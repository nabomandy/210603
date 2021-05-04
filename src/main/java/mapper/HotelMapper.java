package mapper;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.*;
import mybatis.Hotel;

public interface HotelMapper {
	@Select("select hotelseq.nextval from dual")
	int max();
	
	@Select("select * from hotel")
	List<Hotel> list();
	
	@Select("select * from hotel where h_num = #{h_num}")
	Hotel selectOne(int h_num);
	
	@Insert("insert into hotel (h_num, h_name, h_location, h_tel, room_kind, room_num, park, reserve, wifi, disability, reference_room) "
			+"values(#{h_num},#{h_name},#{h_location},#{h_tel},#{room_kind},#{room_num},#{park},#{reserve},#{wifi},#{disability},#{reference_room})")
	int insert(Hotel hotel);
	
	@Update("update hotel set h_tel=#{h_tel}, room_kind=#{room_kind}, room_num=#{room_num}, park=#{park}, reserve=#{reserve}, wifi=#{wifi}, disability=#{disability}, reference_room=#{reference_room} where h_num=#{h_num}")
	int update(Hotel hotel);
	
	@Delete("delete from hotel where h_num=#{h_num}")
	int delete(int h_num);
}