package mapper;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.*;

import mybatis.Board;
public interface BoardMapper {
	@Select("select count(*) from boardpet")
	int count();
	
	@Select("select * from ( select rownum rnum, a.* from (select * from boardpet order by ref desc, refstep) a) "
			+ "where rnum between #{start} and #{end}")
	List<Board> list(Map<String, Object> map);
	
	@Select("select boardpetseq.nextval from dual")
	int max();
	
	@Select("select * from boardpet where b_num = #{b_num}")
	Board selectOne(int b_num);
	
	@Insert("insert into boardpet (b_num, name,pass,subject,content,file1,like1,regdate,readcnt,ref,reflevel,refstep) "
			+"values(#{b_num},#{name},#{pass},#{subject},#{content},#{file1},0,sysdate,#{readcnt},#{ref},#{reflevel},#{refstep})")
	int insert(Board board);
	
	@Update("update  boardpet set readcnt = readcnt + 1 where b_num =#{b_num}")
	void readcntadd(int b_num);
	
	@Update("update boardpet set name=#{name},subject=#{subject},content=#{content},file1=#{file1} where b_num=#{b_num}")
	int update(Board board);
	
	@Update("update  boardpet set refstep = refstep + 1 where ref = #{ref} and refstep > #{refstep}")
	void readstepadd(Map<String, Object> map);
	
	@Delete("delete from boardpet where b_num=#{b_num}")
	int delete(int b_num);
}