package com.ohgiraffers.baekjoon.looping;

import java.io.*;
import java.util.StringTokenizer;

public class looping_10952 {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        while (true){
            StringTokenizer st = new StringTokenizer(br.readLine());
            int a = Integer.parseInt(st.nextToken());
            int b = Integer.parseInt(st.nextToken());
            if (a == 0 && b ==0){
            break;
            } else {
               Integer sum = a+b;
               bw.write(sum.toString());
               bw.newLine();
            }
        }
        bw.flush();
        bw.close();
    }
}
