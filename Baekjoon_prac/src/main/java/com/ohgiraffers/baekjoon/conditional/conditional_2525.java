package com.ohgiraffers.baekjoon.conditional;

import java.util.Scanner;
public class conditional_2525 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int A = sc.nextInt();
        int B = sc.nextInt();
        int C = sc.nextInt();

        int hour = A+(B/60);
        int minute = (B%60)+C;

        if (minute >= 60){
            hour += (minute/60);
        }
        if(minute >= 60){
            minute = (minute%60);
        }

        if (hour >= 24){
            System.out.println((hour-24) + " " + (minute));
        } else {
            System.out.println(hour + " " + (minute));
        }
    }
}
