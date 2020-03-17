package com.garen.NPS.Utils;

import java.io.*;

/**
 * @Author yang_li
 * @Date 2020/3/17 14:18
 */

public class FileUtil {

    public static void saveFile(String url,String word) throws IOException {
        String[] split = url.split("\\\\");
        url="";
        for(int i=0;i<split.length-1;i++){
            url+=split[i]+"\\";
        }
        File path = new File(url+"\\conf");
        System.out.println(path.getAbsolutePath());
        if (!path.exists()){
            path.mkdirs();
        }

        File nps = new File(path, "npc.conf");

        OutputStreamWriter osw = new OutputStreamWriter(new FileOutputStream(nps));
        BufferedWriter bw = new BufferedWriter(osw);
        bw.write(word);
        bw.close();
        osw.close();
    }

    public static String setConf(String vkey,String password,String target){
        String str = "[common]\n" +
                "server_addr=by-shadow.cn:8024\n" +
                "conn_type=tcp\n" +
                "vkey="+vkey+"\n" +
                "auto_reconnection=true\n" +
                "max_conn=1000\n" +
                "flow_limit=1000\n" +
                "rate_limit=1000\n" +
                "basic_username=1\n" +
                "basic_password=1\n" +
                "web_username=a14978435\n" +
                "web_password=a123123\n" +
                "crypt=true\n" +
                "compress=true\n" +
                "\n" +
                "[ssh_p2p]\n" +
                "mode=p2p\n" +
                "password="+password+"\n" +
                "target_addr="+target+"\n" +
                "\n";
        return str;
    }

    public static String setLianjie(String vkey,String password,String target,String localport){
        String str = "./npc.exe -server=by-shadow.cn:8024 -vkey="+vkey+" -type=tcp -password="+password+" -target="+target+" -local_port="+localport;
        return str;
    }
}
