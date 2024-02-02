package com.ohgiraffers.baekjoon.looping;

import java.util.Scanner;

public class looping_25304 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        long X = sc.nextLong();
        int N = sc.nextInt();
        int a = 0;

        int[] arr = new int[2];
        for (int i = 0; i < N; i++) {
            arr[0] = sc.nextInt();
            arr[1] = sc.nextInt();
            a += arr[0] * arr[1];
        }

        if (X  == a){
            System.out.println("Yes");
        } else {
            System.out.println("No");
        }
    }
}
