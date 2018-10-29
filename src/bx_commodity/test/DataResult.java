package bx_commodity.test;

import java.io.IOException;
import java.net.Socket;
import java.net.UnknownHostException;

import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.Consts;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
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

public class DataResult {
	 public  static String result() throws Exception   {
	       HttpProcessor httpproc = HttpProcessorBuilder.create()
	           .add(new RequestContent())
	           .add(new RequestTargetHost())
	           .add(new RequestConnControl())        
	           .add(new RequestExpectContinue(true)).build();

	       HttpRequestExecutor httpexecutor = new HttpRequestExecutor();

	       HttpCoreContext coreContext = HttpCoreContext.create();
	       HttpHost host = new HttpHost("openapi.dev.hbc.tech", 80);
	       
	       coreContext.setTargetHost(host);
	       System.out.println("<< Response: " + host.getPort());
	       DefaultBHttpClientConnection conn = new DefaultBHttpClientConnection(8 * 1024);
	       ConnectionReuseStrategy connStrategy = DefaultConnectionReuseStrategy.INSTANCE;

	           HttpEntity requestBodies = 
	                   new StringEntity(
	                		   RequestBuilder.des(),
	                           ContentType.create("text/plain", Consts.UTF_8));
	           
	               if (!conn.isOpen()) {
	                   Socket socket = new Socket(host.getHostName(), 80);
	                   conn.bind(socket);
	               }
	               //url
	               BasicHttpEntityEnclosingRequest request = new BasicHttpEntityEnclosingRequest("POST",
	            		   "/ota/v2.0/cityList/1929099942/"+RequestBuilder.getMD5(RequestBuilder.doJson()+"192909994212345678"));
	               request.setEntity(requestBodies);
	               System.out.println(">> Request URI: " + request.getRequestLine().getUri());
	               
	               httpexecutor.preProcess(request, httpproc, coreContext);
	               HttpResponse response = httpexecutor.execute(request, conn, coreContext);
	               httpexecutor.postProcess(response, httpproc, coreContext);

	               System.out.println("<< Response: " + response.getStatusLine());
	               System.out.println(EntityUtils.toString(response.getEntity()));
	               System.out.println("==============");
				return response.getStatusLine().toString();
	               
	 }	   

}
