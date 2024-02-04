package com.ohgiraffers.baekjoon.array;

import java.io.*;
import java.nio.Buffer;
import java.util.StringTokenizer;

public class array_10871 {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        StringTokenizer st = new StringTokenizer(br.readLine());
        int N = Integer.parseInt(st.nextToken());
        int X = Integer.parseInt(st.nextToken());
        int[] arrAList = new int[N];
        String[] strArrN = br.readLine().split(" ");
        for (int i = 0; i < N; i++) {
            arrAList[i] = Integer.parseInt(strArrN[i]);
            if (arrAList[i] < X) {
                bw.write(arrAList[i] + " ");
            }
        }
        bw.flush();
        bw.close();
    }
}
