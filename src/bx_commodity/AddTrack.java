package bx_commodity;  
import bx_commodity.InfoTrack;

import java.util.ArrayList;
import java.sql.*;

import javax.xml.crypto.dsig.SignedInfo;

public class AddTrack {

	public static void main(String[] args) {

		ArrayList<InfoTrack> list = getAllTra();

		if(list.size() == 0){

			System.out.println("暂无数据");

		}else{

			for(InfoTrack t: list){  //遍历集合数据
				System.out.println(t.getCom_track());

			}

		}

	}

	public static ArrayList<InfoTrack> getAllTra(){

		ArrayList<InfoTrack> Tralist = new ArrayList<InfoTrack>();

		String url = "com.mysql.jdbc.Driver"; 

		String connectSql = "jdbc:mysql://127.0.0.1:3306/bx_commodity?useUnicode=true&characterEncoding=UTF-8"; 

		String sqlUser = "root"; 
		String sqlPasswd = "123"; 


		Connection con = null;

		PreparedStatement psm = null;

		ResultSet rs = null;

		try {

			Class.forName(url);

			con = DriverManager.getConnection(connectSql,sqlUser,sqlPasswd);
			String sql = "SELECT com_track FROM "
					+ "(SELECT * FROM bx_commodity WHERE id IN (SELECT min(id) "
					+ "FROM bx_commodity GROUP BY com_name)) a "
					+ "WHERE com_name IN"
					+ "('莲花山度假区L30','莲花山度假区L31','龙须胜景成人票','莲花山度假区L32','玉蟾宫出入口',"
					+"'莲花山度假区L33','玉龙潭出入口','莲花山度假区L34','青云索出入口','莲花山度假区L35','仙人洞出入口');";

			psm = con.prepareStatement(sql);
			
		    rs = psm.executeQuery();
			System.out.println("入口→轨迹→出口");
			
			while(rs.next()){

				InfoTrack t = new InfoTrack();
				//s.setId(1);
		
				t.setCom_track(rs.getString(1));
			
				Tralist.add(t);	

			}



			rs.close();
			psm.close();
			con.close();

		} catch (Exception e) {

			System.out.println("显示所有数据报错，原因："+e.getMessage());

		}
		

		return Tralist;	

	}
	
}