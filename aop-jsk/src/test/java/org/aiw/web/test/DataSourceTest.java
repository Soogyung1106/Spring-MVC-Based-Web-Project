//데이터 소스 연결 작동 여부를 테스트

package org.aiw.web.test;

import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class DataSourceTest {

	@Inject
	private DataSource ds;
	
	@Test
	public void testConntection() throws Exception {
		try(Connection con = ds.getConnection()) {
			System.out.println(con);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}