/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/VHDL/vhdl-assignment-2/character_decoder.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );
int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0391106904_3212880686_p_0(char *t0)
{
    char t22[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    int t20;
    int t21;

LAB0:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5728);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(30, ng0);
    t3 = (t0 + 5856);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(31, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t3 = t1;
    memset(t3, (unsigned char)2, 8U);
    t4 = (t0 + 5920);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(32, ng0);
    t1 = (t0 + 5984);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(34, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t9 = (t2 == (unsigned char)3);
    if (t9 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t1 = (t0 + 9629);
    t6 = ((IEEE_P_2592010699) + 4000);
    t11 = xsi_vhdl_greaterEqual(t6, t4, 8U, t1, 8U);
    if (t11 == 1)
        goto LAB11;

LAB12:    t10 = (unsigned char)0;

LAB13:    if (t10 != 0)
        goto LAB8;

LAB10:    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 9645);
    t5 = ((IEEE_P_2592010699) + 4000);
    t9 = xsi_vhdl_greaterEqual(t5, t3, 8U, t1, 8U);
    if (t9 == 1)
        goto LAB16;

LAB17:    t2 = (unsigned char)0;

LAB18:    if (t2 != 0)
        goto LAB14;

LAB15:    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 9661);
    t5 = ((IEEE_P_2592010699) + 4000);
    t9 = xsi_vhdl_greaterEqual(t5, t3, 8U, t1, 8U);
    if (t9 == 1)
        goto LAB21;

LAB22:    t2 = (unsigned char)0;

LAB23:    if (t2 != 0)
        goto LAB19;

LAB20:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 6048);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 6112);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 5920);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB9:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 5984);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 5856);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(36, ng0);
    t15 = (t0 + 6048);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)3;
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(37, ng0);
    t1 = (t0 + 6112);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 9520U);
    t20 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t3, t1);
    t4 = (t0 + 3208U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    *((int *)t4) = t20;
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 3208U);
    t3 = *((char **)t1);
    t20 = *((int *)t3);
    t21 = (t20 - 32);
    t1 = (t0 + 3328U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t21;
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 3328U);
    t3 = *((char **)t1);
    t20 = *((int *)t3);
    t1 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t22, t20, 8);
    t4 = (t0 + 5920);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB9;

LAB11:    t7 = (t0 + 1352U);
    t8 = *((char **)t7);
    t7 = (t0 + 9637);
    t13 = ((IEEE_P_2592010699) + 4000);
    t14 = xsi_vhdl_lessthanEqual(t13, t8, 8U, t7, 8U);
    t10 = t14;
    goto LAB13;

LAB14:    xsi_set_current_line(43, ng0);
    t13 = (t0 + 6048);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 6112);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 9520U);
    t20 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t3, t1);
    t4 = (t0 + 3208U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    *((int *)t4) = t20;
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 3208U);
    t3 = *((char **)t1);
    t20 = *((int *)t3);
    t21 = (t20 + 32);
    t1 = (t0 + 3328U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t21;
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 3328U);
    t3 = *((char **)t1);
    t20 = *((int *)t3);
    t1 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t22, t20, 8);
    t4 = (t0 + 5920);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB9;

LAB16:    t6 = (t0 + 1352U);
    t7 = *((char **)t6);
    t6 = (t0 + 9653);
    t12 = ((IEEE_P_2592010699) + 4000);
    t10 = xsi_vhdl_lessthanEqual(t12, t7, 8U, t6, 8U);
    t2 = t10;
    goto LAB18;

LAB19:    xsi_set_current_line(50, ng0);
    t13 = (t0 + 6048);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)2;
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 6112);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 5920);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB9;

LAB21:    t6 = (t0 + 1352U);
    t7 = *((char **)t6);
    t6 = (t0 + 9669);
    t12 = ((IEEE_P_2592010699) + 4000);
    t10 = xsi_vhdl_lessthanEqual(t12, t7, 8U, t6, 8U);
    t2 = t10;
    goto LAB23;

}

static void work_a_0391106904_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(67, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6176);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5744);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0391106904_3212880686_p_2(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    int t8;
    int t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5760);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(75, ng0);
    t3 = (t0 + 2152U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 3688U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    if (t2 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 3568U);
    t3 = *((char **)t1);
    t8 = *((int *)t3);
    t1 = (t0 + 3448U);
    t4 = *((char **)t1);
    t9 = *((int *)t4);
    t2 = (t8 == t9);
    if (t2 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 3688U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 6240);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(76, ng0);
    t3 = (t0 + 3568U);
    t7 = *((char **)t3);
    t3 = (t7 + 0);
    *((int *)t3) = 0;
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 3688U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((unsigned char *)t1) = (unsigned char)1;
    goto LAB6;

LAB8:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 3568U);
    t4 = *((char **)t1);
    t8 = *((int *)t4);
    t9 = (t8 + 1);
    t1 = (t0 + 3568U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((int *)t1) = t9;
    goto LAB9;

LAB11:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 3688U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((unsigned char *)t1) = (unsigned char)0;
    goto LAB12;

}

static void work_a_0391106904_3212880686_p_3(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    char *t9;

LAB0:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5776);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(95, ng0);
    t3 = (t0 + 6304);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(96, ng0);
    t1 = (t0 + 6368);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    if (t2 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 2472U);
    t4 = *((char **)t1);
    t8 = *((unsigned char *)t4);
    t1 = (t0 + 6304);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t8;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(100, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 6368);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

}


extern void work_a_0391106904_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0391106904_3212880686_p_0,(void *)work_a_0391106904_3212880686_p_1,(void *)work_a_0391106904_3212880686_p_2,(void *)work_a_0391106904_3212880686_p_3};
	xsi_register_didat("work_a_0391106904_3212880686", "isim/lab2_test_bench_isim_beh.exe.sim/work/a_0391106904_3212880686.didat");
	xsi_register_executes(pe);
}
