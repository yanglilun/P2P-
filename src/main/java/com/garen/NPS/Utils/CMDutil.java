package com.garen.NPS.Utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * @Author yang_li
 * @Date 2020/3/17 12:57
 */

public class CMDutil implements Runnable{

    private String command;
    private Process process;

    public Process getProcess() {
        return process;
    }

    public void setProcess(Process process) {
        this.process = process;
    }

    public String getCommand() {
        return command;
    }

    public void setCommand(String command) {
        this.command = command;
    }

    //    执行CMD
//执行cmd命令，获取返回结果
    public void execCMD() throws IOException {
        StringBuilder sb =new StringBuilder();

        process=Runtime.getRuntime().exec(command);
        BufferedReader bufferedReader=new BufferedReader(new InputStreamReader(process.getInputStream()));
        String line;
        while((line=bufferedReader.readLine())!=null)
        {
            sb.append(line+"\n");
            System.out.println(sb);
        }
    }

    @Override
    public void run() {
        try {
            execCMD();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
