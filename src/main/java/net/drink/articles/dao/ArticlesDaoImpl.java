package net.drink.articles.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import net.drink.articles.vo.ArticlesVO;
import net.drink.support.DaoSupport;
import net.drink.support.Query;

public class ArticlesDaoImpl extends DaoSupport implements ArticlesDao {

	@Override
	public int insert(ArticlesVO article) {
		return insert(new Query() {

			@Override
			public PreparedStatement query(Connection conn) throws SQLException {
				StringBuffer query = new StringBuffer();
				query.append(" INSERT	INTO	BOARD ( ");
				query.append(" 							BRD_ID ");
				query.append("  					  , BRD_SBJ, BRD_CONT, USR_ID ");
				query.append("  					  , CRT_DT, FILE_NM, CTGR_ID, MDFY_DT) ");
				query.append("  				VAL (	");
				query.append(
						" 						'AR-' || TO_CHAR(SYSDATE, 'YYYYMMDD') || '-' || LPAD(BRD_ID_SEQ.NEXTVAL,6,0) ");
				query.append(" 						?, ?, ?, ?, SYSDATE, ?, ?, SYSDATE ");
				query.append(" 						) ");
				
				PreparedStatement pstmt = conn.prepareStatement(query.toString());
				pstmt.setString(1, article.getBoardId());
				pstmt.setString(2, article.getBoardSubject());
				pstmt.setString(3, article.getBoardContent());
				pstmt.setString(4, article.getUserId());
				pstmt.setString(5, article.getFileName());
				pstmt.setString(6, article.getCategoryId());
				
				return pstmt;

			}
		});
	}



}
