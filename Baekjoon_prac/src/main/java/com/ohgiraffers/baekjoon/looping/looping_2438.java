package com.ohgiraffers.baekjoon.looping;

import java.io.*;

public class looping_2438 {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
        int N = Integer.parseInt(br.readLine());

        String a = "*";
        String b = "*";
        for (int i = 0; i < N; i++) {
            bw.write(b);
            b += a;
            bw.newLine();
        }
        bw.flush();
        bw.close();
        
    }
}
