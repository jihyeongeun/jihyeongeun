package com.ohgiraffers.baekjoon.conditional;

import java.util.Scanner;

public class contional_2480 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int A = sc.nextInt();
        int B = sc.nextInt();
        int C = sc.nextInt();

        if(1 <= A && A <=6 && 1 <= B && B <=6 && 1 <= C && C <=6){
            if(A == B && A==C){
                System.out.println(10000 + (A * 1000));
            } else if (A == B) {
                System.out.println(1000 + (A * 100));
            } else if (A == C){
                System.out.println(1000 + (A * 100));
            } else if (B == C){
                System.out.println(1000 + (B * 100));
            } else if (A > B && A > C){
                System.out.println(A * 100);
            } else if (B > A && B > C){
                System.out.println(B * 100);
            } else {
                System.out.println(C * 100);
            }
        } else {
            System.out.println("프로그램 종료");
        }
    }
}
