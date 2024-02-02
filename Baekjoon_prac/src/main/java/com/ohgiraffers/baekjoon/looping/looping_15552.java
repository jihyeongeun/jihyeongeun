package com.ohgiraffers.baekjoon.looping;

import java.io.*;
import java.util.StringTokenizer;

public class looping_15552 {
    public static void main(String[] args) throws IOException {
        BufferedReader bf = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
        int T = Integer.parseInt(bf.readLine());

        for (int i = 0; i < T; i++) {
            StringTokenizer st = new StringTokenizer(bf.readLine());
            int A = Integer.parseInt(st.nextToken());
            int B = Integer.parseInt(st.nextToken());
            Integer sum = A+B;
            bw.write(sum.toString());
            bw.newLine();
        }
        bw.flush();
        bw.close();
    }

}
