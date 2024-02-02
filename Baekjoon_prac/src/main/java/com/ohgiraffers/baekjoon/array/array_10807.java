package com.ohgiraffers.baekjoon.array;

import java.util.Arrays;
import java.util.Scanner;

public class array_10807 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int count = 0;
        int i;
        int a = sc.nextInt();

        int[] arr = new int[a];
        for (i = 0; i < arr.length; i++) {
            arr[i] = sc.nextInt();
        }
        int c = sc.nextInt();

        for (int k = 0; k < arr.length; k++) {
            if (c == arr[k]) {
                count++;
            }
        }
        System.out.println(count);
    }
}



