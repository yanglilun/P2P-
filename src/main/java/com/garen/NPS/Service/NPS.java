package com.garen.NPS.Service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.garen.NPS.Utils.MD5Utils;
import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import java.io.IOException;

/**
 * @Author yang_li
 * @Date 2020/3/17 11:34
 */

public class NPS {
    //    私有的客户端
    private CloseableHttpClient httpClient = null;

    public NPS(){
        this.httpClient = HttpClients.createDefault();
    }

    public CloseableHttpClient getHttpClient() {
        return httpClient;
    }


//    菜单
    public void menu(){
        System.out.println("");
    }



//    登录
    public String Login(String timestramp) throws IOException {
        String auth_key = MD5Utils.stringToMD5("123456" + timestramp);
        CloseableHttpResponse response = httpClient.execute(new HttpPost("http://by-shadow.cn:7789/client/list?auth_key=" + auth_key + "&timestamp=" + timestramp));
        HttpEntity entity = response.getEntity();
        String s = EntityUtils.toString(entity, "utf-8");
        return s;
    }


//    添加客户端
    public String addClient(String vkey) throws IOException {
        String timestramp = getTimeStramp();
        String auth_key = MD5Utils.stringToMD5("123456" + timestramp);
        CloseableHttpResponse response = httpClient.execute(new HttpPost("http://by-shadow.cn:7789/client/add?vkey=" + vkey+"&auth_key=" + auth_key + "&timestamp=" + timestramp+"&config_conn_allow="+1));
        return EntityUtils.toString(response.getEntity(), "utf-8");
    }

//    根据ID获取客户端
    public String getClientById(String id) throws IOException {
        String uri = "http://by-shadow.cn:7789/client/getclient?id="+id;

        String timestramp = getTimeStramp();
        String auth_key = MD5Utils.stringToMD5("123456" + timestramp);
        uri += "&auth_key=" + auth_key + "&timestamp=" + timestramp;
        CloseableHttpResponse re = httpClient.execute(new HttpPost(uri));
        return EntityUtils.toString(re.getEntity(), "utf-8");
    }



    //    请求获得时间戳
    private String getTimeStramp() throws IOException {
        CloseableHttpResponse response = httpClient.execute(new HttpPost("http://by-shadow.cn:7789/auth/gettime"));
        HttpEntity entity = response.getEntity();
        String s = EntityUtils.toString(entity, "utf-8");
        JSONObject jsonObject = JSON.parseObject(s);
        String time = jsonObject.getString("time");
        return time;
    }
}
