package bx_commodity;  
import bx_commodity.InfoTrack;

import java.util.ArrayList;
import java.sql.*;

import javax.xml.crypto.dsig.SignedInfo;

public class AddTrack {

	public static void main(String[] args) {

		ArrayList<InfoTrack> list = getAllTra();

		if(list.size() == 0){

			System.out.println("��������");

		}else{

			for(InfoTrack t: list){  //������������
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
					+ "('����ɽ�ȼ���L30','����ɽ�ȼ���L31','����ʤ������Ʊ','����ɽ�ȼ���L32','��󸹬�����',"
					+"'����ɽ�ȼ���L33','����̶�����','����ɽ�ȼ���L34','�����������','����ɽ�ȼ���L35','���˶������');";

			psm = con.prepareStatement(sql);
			
		    rs = psm.executeQuery();
			System.out.println("��ڡ��켣������");
			
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

			System.out.println("��ʾ�������ݱ���ԭ��"+e.getMessage());

		}
		

		return Tralist;	

	}
	
}