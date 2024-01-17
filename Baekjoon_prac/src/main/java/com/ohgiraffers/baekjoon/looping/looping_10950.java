package com.ohgiraffers.baekjoon.looping;

import java.util.Scanner;

public class looping_10950 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int line = sc.nextInt();
        for (int i = 0; i < line; i++) {
            int A = sc.nextInt();
            int B = sc.nextInt();
            System.out.println(A+B);
        }
    }
}
