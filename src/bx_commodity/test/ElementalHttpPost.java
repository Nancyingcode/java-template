package bx_commodity.test;


import java.io.IOException;
import java.net.Socket;
import java.net.UnknownHostException;
import java.sql.Connection;

import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.Consts;
import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.DefaultBHttpClientConnection;
import org.apache.http.impl.DefaultConnectionReuseStrategy;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;
import org.apache.http.protocol.HttpCoreContext;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpProcessorBuilder;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.protocol.RequestConnControl;
import org.apache.http.protocol.RequestContent;
import org.apache.http.protocol.RequestExpectContinue;
import org.apache.http.protocol.RequestTargetHost;
import org.apache.http.util.EntityUtils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import java.sql.PreparedStatement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import bx_commodity.test.Print;
import bx_commodity.test.CityVo;
import bx_commodity.test.Config;
import bx_commodity.test.CountryVo;
import bx_commodity.test.BreakfastTypeVo;


/**
* Elemental example for executing multiple POST requests sequentially.
*/
public class ElementalHttpPost {
	Print prt = new Print("ElementalHttpPost");
	private JSONObject parseResToJSON(String url,String listName) throws UnknownHostException, IOException, HttpException{
		JSONObject result = null;
		HttpProcessor httpproc = HttpProcessorBuilder.create()
		           .add(new RequestContent())
		           .add(new RequestTargetHost())
		           .add(new RequestConnControl())        
		           .add(new RequestExpectContinue(true)).build();

		       HttpRequestExecutor httpexecutor = new HttpRequestExecutor();

		       HttpCoreContext coreContext = HttpCoreContext.create();
		       HttpHost host = new HttpHost(Config.HOST, Config.Port);
		       
		       coreContext.setTargetHost(host);
		       prt.println("<< Response: " + host.getPort());
		       DefaultBHttpClientConnection conn = new DefaultBHttpClientConnection(8 * 1024);
		       ConnectionReuseStrategy connStrategy = DefaultConnectionReuseStrategy.INSTANCE;
		       try {
		           HttpEntity requestBodies = 
		                   new StringEntity(
		                		   RequestBuilder.des(listName),
		                           ContentType.create("text/plain", Consts.UTF_8));
		           
		               if (!conn.isOpen()) {
		                   Socket socket = new Socket(host.getHostName(), Config.Port);
		                   conn.bind(socket);
		               }
		               BasicHttpEntityEnclosingRequest request = new BasicHttpEntityEnclosingRequest(Config.METHOD,url );
		               request.setEntity(requestBodies);
					   prt.println(">> Request URI: " + request.getRequestLine().getUri());
					   
		               httpexecutor.preProcess(request, httpproc, coreContext);
		               HttpResponse response = httpexecutor.execute(request, conn, coreContext);
					   httpexecutor.postProcess(response, httpproc, coreContext);
					   
					   prt.println("<< Response: " + response.getStatusLine());
					   String str = EntityUtils.toString(response.getEntity());
					   result = this.strToJSON(str);
					   prt.println("result: " + result );
		               if (!connStrategy.keepAlive(response, coreContext)) {
		                   conn.close();
		               } else {
		                   prt.println("Connection kept alive...");
		               }
		       } catch(Exception e){
		    	   e.printStackTrace();
		       }finally {
				   conn.close();
				   prt.println("杩炴帴鍏抽棴");
				}
		       return result;
	}


	private void insert(){
		try{

		}catch(Exception e){

		}
	}


	private JSONObject strToJSON(String str){
		JSONObject jsonObject=JSONObject.parseObject(str);
        return jsonObject;
	}

	/**
	 * 鏍煎紡鍖栨暟鎹� 
	 * @return
	 * 鍏堥�氳繃JSONObect鑾峰彇data
	 * 鐒跺悗閬嶅巻JSONArray
	 * 杩斿洖缁撴灉鍒楄〃
	 */
	public void getCity(String api,String listName){
		try{
			Connection conn = Conn.create();
			JSONObject res = this.parseResToJSON(api,listName);
			JSONArray data = (JSONArray)res.get("data");
			List<CityVo> cityVos = JSON.parseArray(data.toJSONString(), CityVo.class);
			Iterator<CityVo> iterator = cityVos.iterator();
			CityVo cityVo = null;
			while(iterator.hasNext()){
				cityVo = iterator.next();
				String sql = "insert into cities(CountryCode,CityCode,CityName,CityLongName,CityName_CN,CityLongName_CN,ParentCityCode,Type) values(?,?,?,?,?,?,?,?)";
				PreparedStatement preparedStatement = conn.prepareStatement(sql);
				preparedStatement.setString(1, cityVo.CountryCode);
				preparedStatement.setString(2, cityVo.CityCode);
				preparedStatement.setString(3, cityVo.CityName);
				preparedStatement.setString(4,cityVo.CityLongName);
				preparedStatement.setString(5,cityVo.CityName_CN);
				preparedStatement.setString(6, cityVo.CityLongName_CN);
				preparedStatement.setString(7, cityVo.ParentCityCode);
				preparedStatement.setString(8, cityVo.Type);
				preparedStatement.execute();
				prt.print("鎻掑叆鎴愬姛");
			}
		} catch(Exception e){
			prt.println(e.toString());
		}
	}

	public void getCountry(String api,String listName){
		try{
			Connection conn = Conn.create();
			JSONObject res = this.parseResToJSON(api,listName);
			JSONArray data = (JSONArray)res.get("data");
			List<CountryVo> countryVos = JSON.parseArray(data.toJSONString(), CountryVo.class);
			Iterator<CountryVo> iterator = countryVos.iterator();
			CountryVo countryVo = null;
			while(iterator.hasNext()){
				countryVo = iterator.next();
				String sql = "insert into airports(ISOCountryCode,CountryName,CountryName_CN) values(?,?,?)";
				PreparedStatement preparedStatement = conn.prepareStatement(sql);
				preparedStatement.setString(1, countryVo.ISOCountryCode);
				preparedStatement.setString(2, countryVo.CountryName);
				preparedStatement.setString(3, countryVo.CountryName_CN);

				preparedStatement.execute();
				prt.print("鎻掑叆鎴愬姛");
			}
		} catch(Exception e){
			prt.println(e.toString());
		}
	}
	
	public void getBreakfastType(String api,String listName){
		try{
			Connection conn = Conn.create();
			JSONObject res = this.parseResToJSON(api,listName);
			JSONArray data = (JSONArray)res.get("data");
			List<BreakfastTypeVo> breakfastTypes = JSON.parseArray(data.toJSONString(), BreakfastTypeVo.class);
			Iterator<BreakfastTypeVo> iterator = breakfastTypes.iterator();
			BreakfastTypeVo breakfastType= null;
			while(iterator.hasNext()){
				breakfastType = iterator.next();
				String sql = "insert into breakfastType(breakfastTypeId,breakfastTypeName,breakfastTypeName_CN) values(?,?,?)";
				PreparedStatement preparedStatement = conn.prepareStatement(sql);
				preparedStatement.setInt(1, breakfastType.BreakfastTypeId);
				preparedStatement.setString(2, breakfastType.BreakfastTypeName);
				preparedStatement.setString(3, breakfastType.BreakfastTypeName_CN);
				preparedStatement.execute();
				prt.print("鎻掑叆鎴愬姛");
			}
		} catch(Exception e){
			prt.println(e.toString());
		}
	}

	public void getBedType(String api,String listName){
		try{
			Connection conn = Conn.create();
			JSONObject res = this.parseResToJSON(api,listName);
			JSONArray data = (JSONArray)res.get("data");
			List<BedTypeVo> bedTypeVos = JSON.parseArray(data.toJSONString(), BedTypeVo.class);
			Iterator<BedTypeVo> iterator = bedTypeVos.iterator();
			BedTypeVo bedTypeVo = null;
			while(iterator.hasNext()){
				bedTypeVo = iterator.next();
				String sql = "insert into cities(BedTypeId,DefaultOccupancy,BedTypeName,BedTypeName_CN) values(?,?,?,?)";
				PreparedStatement preparedStatement = conn.prepareStatement(sql);
				preparedStatement.setInt(1, bedTypeVo.BedTypeId);
				preparedStatement.setInt(2, bedTypeVo.DefaultOccupancy);
				preparedStatement.setString(3, bedTypeVo.BedTypeName);
				preparedStatement.setString(4,bedTypeVo.BedTypeName_CN);

				preparedStatement.execute();
				prt.print("鎻掑叆鎴愬姛");
			}
		} catch(Exception e){
			prt.println(e.toString());
		}
	}
	public void getPropertyCategory(String api,String listName){
		try{
			Connection conn = Conn.create();
			JSONObject res = this.parseResToJSON(api,listName);
			JSONArray data = (JSONArray)res.get("data");
			List<PropertyCategoryVo> propertyCategoryVos = JSON.parseArray(data.toJSONString(),PropertyCategoryVo.class);
			Iterator<PropertyCategoryVo> iterator = propertyCategoryVos.iterator();
			PropertyCategoryVo propertyCategoryVo = null;
			while(iterator.hasNext()){
				propertyCategoryVo = iterator.next();
				String sql = "insert into cities(ID,Description_CN,Description_EN) values(?,?,?)";
				PreparedStatement preparedStatement = conn.prepareStatement(sql);
				preparedStatement.setInt(1, propertyCategoryVo.ID);
				preparedStatement.setString(2, propertyCategoryVo.Description_CN);
				preparedStatement.setString(3, propertyCategoryVo.Description_EN);

				prt.print("鎻掑叆鎴愬姛");
			}
		} catch(Exception e){
			prt.println(e.toString());
		}
	}

/*
 * private Commodity getCommodity(CityVo cityVo){
 
		Commodity commodity = new Commodity();
		try{
			commodity.setId(cityVo.cityid);
			//......
		}catch(Exception e){
			prt.print(e.getStackTrace());
		}
		return commodity;
	}
*/

	
   public static void main(String[] args) throws Exception {
	   	ElementalHttpPost res = new ElementalHttpPost();
		res.getCountry("", "");
		res.getCity("", "");
		res.getBedType("", "");
		res.getBreakfastType("", "");
		res.getPropertyCategory("", "");
   }

}