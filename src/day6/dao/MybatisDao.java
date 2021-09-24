
package day6.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import day3.dto.Customer;
import day6.mybatis.SqlSessionBean;

public class MybatisDao {
	private static MybatisDao dao = new MybatisDao();
	private MybatisDao() { }
	public static MybatisDao getInstance() {
		return dao;
	}
	
	//1.새로운 코딩 : 가장 중요한것은 SqlSession 객체를 생성해야합니다.-> 메소드에서. 
	//  SqlSessionFactory 객체 가져오기
	SqlSessionFactory sqlFactory = SqlSessionBean.getSessionFactory();
	
	public List<Customer> selectAll(){
		List<Customer> list = null;
	//2. SqlSession 객체 생성하여 sql 실행하기.
		SqlSession mapper = sqlFactory.openSession();
		list = mapper.selectList("selectAll");   //"selectAllo" mapper 파일의 id값과 일치해야 합니다.
		return list;
	}
	
}




