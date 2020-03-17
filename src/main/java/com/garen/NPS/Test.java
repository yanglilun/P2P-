package com.garen.NPS;

import com.garen.NPS.Service.NPS;
import com.garen.NPS.Utils.CMDutil;
import com.garen.NPS.Utils.FileUtil;
import com.garen.NPS.Utils.MyPath;

import java.io.IOException;
import java.util.Scanner;

/**
 * @Author yang_li
 * @Date 2020/3/17 11:52
 */

public class Test {

    public static void main(String[] args) throws IOException, InterruptedException {
        CMDutil cmDutil = new CMDutil();
        NPS nps = new NPS();
        while (true){
            switch (menu()){
                case 1:
                    System.out.println("请输入vkey");
                    String vkey = new Scanner(System.in).nextLine();
                    System.out.println("请输入password");
                    String password = new Scanner(System.in).nextLine();
                    System.out.println("请输入要映射的ip:端口");
                    String target = new Scanner(System.in).nextLine();

                    String s1 = FileUtil.setConf(vkey, password, target);
                    FileUtil.saveFile(MyPath.getAppPath(Test.class), s1);

                    String s = nps.addClient(vkey);
                    System.out.println(s);
                    break;
                case 2:
                    System.out.println("连接");
                    String path = MyPath.getAppPath(Test.class);
                    String cmd = path+"\\npc.exe";
                    System.out.println(cmd);
                    cmDutil.setCommand(cmd);
                    new Thread(cmDutil).start();
                    break;
                case 3:
                    System.out.println("请输入目标用户的vkey");
                    String vkey1 = new Scanner(System.in).nextLine();
                    System.out.println("请输入目标用户的password");
                    String password1 = new Scanner(System.in).nextLine();
                    System.out.println("请输入目标用户的ip:端口");
                    String target1 = new Scanner(System.in).nextLine();
                    System.out.println("请输入映射到本地的端口号");
                    String localport = new Scanner(System.in).nextLine();
                    String s2 = FileUtil.setLianjie(vkey1, password1, target1, localport);
                    System.out.println("连接ing................");
                    String path1 = MyPath.getAppPath(Test.class);
                    String cmd1 = path1+"\\"+s2;
                    cmDutil.setCommand(cmd1);
                    new Thread(cmDutil).start();
                    break;
                case 4:
                    cmDutil.getProcess().destroy();
                    System.out.println("断开成功!");
                    break;
                case 0:
                    return;
            }
        }
    }

    public static int menu(){
        System.out.println("欢迎使用P2P内网穿透小工具（基于NPS开发）");
        System.out.println("QQ：14978435");
        System.out.println("-----被连接者操作----");
        System.out.println("1.新增服务端（服务端）");
        System.out.println("2.连接服务器（服务端）\n");
        System.out.println("------连接者操作----");
        System.out.println("3.连接服务端（客户端）");
        System.out.println("------------------");
        System.out.println("4.断开服务器");
        System.out.println("0.退出程序");
        int i = new Scanner(System.in).nextInt();
        return i;
    }

//    运行nps
    public static Thread runNPS() throws InterruptedException {
        String path = MyPath.getAppPath(Test.class);
        String cmd = path+"\\data\\npc.exe";
        System.out.println(cmd);
        CMDutil cmDutil = new CMDutil();
        cmDutil.setCommand(cmd);
        Thread thread = new Thread(cmDutil);
        thread.start();

        Thread.sleep(5000);
        thread.getThreadGroup().destroy();

        return thread;
    }
}
