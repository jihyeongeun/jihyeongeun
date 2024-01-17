package com.ohgiraffers.baekjoon.input_output;

import java.util.Scanner;

public class input_output_2588 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double A = sc.nextDouble();
        double B = sc.nextDouble();

        System.out.println((int)(A * (B%10)));
        System.out.println((int)(A * (((int)(B/10))%10)));
        System.out.println((int)(A * ((int)(B/100))));
        System.out.println((int)(A * B));
    }
}
