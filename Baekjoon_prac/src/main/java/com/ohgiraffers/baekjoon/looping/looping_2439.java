package com.ohgiraffers.baekjoon.looping;

import java.io.*;

public class looping_2439 {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
        int N = Integer.parseInt(br.readLine());
        int a = 1;
        String b = " ";
        String c = "*";
        String d = "*";

        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N-a; j++) {
                bw.write(b);
            }
            bw.write(c);
            bw.newLine();
            c += d;
            a++;
        }
        bw.flush();
        bw.close();
    }
}
