package com.ohgiraffers.baekjoon.looping;

import java.util.Scanner;

public class looping_2739 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int input = sc.nextInt();
        if(input > 0 && input < 10) {
            for (int j = 1; j < 10; j++) {
                System.out.println(input + " * " + j + " = " + (input*j));
            }
        } else {
            System.out.println("수를 잘못 입력하셨습니다.");
        }
    }
}
