package com.ohgiraffers.baekjoon.array;

import java.io.*;

public class array_2562 {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        int[] arr = new int[9];
        for (int i = 0; i < arr.length; i++) {
            arr[i] = Integer.parseInt(br.readLine());
        }
        int max = arr[0];
        int maxNum = 0;
        for (int i = 1; i < arr.length; i++) {
            if (arr[i] > max){
                max = arr[i];
                maxNum = i;
            }
        }
        System.out.println(max);
        System.out.println(maxNum+1);

    }
}
