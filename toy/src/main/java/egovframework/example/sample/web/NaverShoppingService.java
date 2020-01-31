package egovframework.example.sample.web;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;


public class NaverShoppingService {
	
	 	private static String clientID = "UIMqSTRMASTzP5SgXW8s"; 
	    private static String clientSecret = "Rj1D1ge4gk"; 
	    private JSONParser jsonParser = new JSONParser();
/*
 * 네이버 api 설명
 * try {
            String text = URLEncoder.encode("그린팩토리", "UTF-8");
            String apiURL = "https://openapi.naver.com/v1/search/blog?query="+ text; // json 결과
            //String apiURL = "https://openapi.naver.com/v1/search/blog.xml?query="+ text; // xml 결과
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
            br.close();
            System.out.println(response.toString());
        } catch (Exception e) {
            System.out.println(e);
        }	    
 */
	   
		public ArrayList<shopping> searchBook(String keyword, int display, int start) {
	    	
			ArrayList<shopping> list = new ArrayList<shopping>();
	        
	        try {
	        	URL url = new URL("https://openapi.naver.com/v1/search/shop.json?query=" + URLEncoder.encode(keyword, "UTF-8")
	                    + "&display=" + display + "&start=" + start );
	            
	            //url 연결
	        	 URLConnection con;
	        	 
	             //url 연결
	        	 con = url.openConnection();
	        	 con.setRequestProperty("X-naver-Client-Id", clientID);
	        	 con.setRequestProperty("X-naver-Client-Secret", clientSecret);

	           /* BufferedReader br;
	            if(responseCode==200) { // 정상 호출
	                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	            } else {  // 에러 발생
	                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
	            }
	            String inputLine;
	            StringBuffer response = new StringBuffer();
	            while ((inputLine = br.readLine()) != null) {
	                response.append(inputLine);
	            }
	            System.out.println(response.toString());*/
	            
	            InputStreamReader isr = new InputStreamReader(con.getInputStream());
	            System.out.println("isr :" + isr);
	            JSONObject obj = (JSONObject) jsonParser.parse(isr);
	            
	            System.out.println("obj :" + obj);
	            JSONArray arr = (JSONArray)obj.get("items");
	            System.out.println("arr :" + arr);
	            
	           
	            for (int i = 0; i < arr.size(); i++) {
	            	JSONObject tmp = (JSONObject)arr.get(i);
	            	shopping shop = new shopping();
	            	
	                String title = (String)tmp.get("title");
	            	if(shop != null){
	            		shop.setTitle(title);
	            	}
	                
	            	String link = (String)tmp.get("link");
	            	if(shop != null){
	            		shop.setLink(link);
	            	}
	            	
	            	String image = (String)tmp.get("image");
	            	if(shop != null){
	            		shop.setImage(image);
	            	}
	            	System.out.println("shop title"+shop.getTitle());
	            	list.add(shop);
	            	System.out.println("list :" + list); 
				}
	        }catch(Exception e){
	        	 System.out.println(e);
	        }
	        
	        
	        return list;
	    }
	        
}
