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
extern char *IEEE_P_2592010699;
static const char *ng1 = "/home/ise/VHDL/vhdl-assignment-2/lab2_test_bench.vhd";



char *work_a_2984674033_2372691052_sub_12017600578576266404_4163069965(char *t1, char *t2, char *t3)
{
    char t4[128];
    char t5[24];
    char t6[16];
    char t11[16];
    char t16[16];
    char *t0;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    int t25;
    char *t26;
    int t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    unsigned int t32;

LAB0:    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 7;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (0 - 7);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = (t11 + 0U);
    t12 = (t8 + 0U);
    *((int *)t12) = 9;
    t12 = (t8 + 4U);
    *((int *)t12) = 0;
    t12 = (t8 + 8U);
    *((int *)t12) = -1;
    t13 = (0 - 9);
    t10 = (t13 * -1);
    t10 = (t10 + 1);
    t12 = (t8 + 12U);
    *((unsigned int *)t12) = t10;
    t12 = (t4 + 4U);
    t14 = ((IEEE_P_2592010699) + 4000);
    t15 = (t12 + 88U);
    *((char **)t15) = t14;
    t17 = (t12 + 56U);
    *((char **)t17) = t16;
    xsi_type_set_default_value(t14, t16, t11);
    t18 = (t12 + 64U);
    *((char **)t18) = t11;
    t19 = (t12 + 80U);
    *((unsigned int *)t19) = 10U;
    t20 = (t5 + 4U);
    t21 = (t3 != 0);
    if (t21 == 1)
        goto LAB3;

LAB2:    t22 = (t5 + 12U);
    *((char **)t22) = t6;
    t23 = (t12 + 56U);
    t24 = *((char **)t23);
    t23 = (t11 + 0U);
    t25 = *((int *)t23);
    t26 = (t11 + 8U);
    t27 = *((int *)t26);
    t28 = (0 - t25);
    t10 = (t28 * t27);
    t29 = (1U * t10);
    t30 = (0 + t29);
    t31 = (t24 + t30);
    *((unsigned char *)t31) = (unsigned char)2;
    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t7 = (t11 + 0U);
    t9 = *((int *)t7);
    t10 = (t9 - 8);
    t29 = (t10 * 1U);
    t30 = (0 + t29);
    t14 = (t8 + t30);
    t15 = (t6 + 12U);
    t32 = *((unsigned int *)t15);
    t32 = (t32 * 1U);
    memcpy(t14, t3, t32);
    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t7 = (t11 + 0U);
    t9 = *((int *)t7);
    t14 = (t11 + 8U);
    t13 = *((int *)t14);
    t25 = (9 - t9);
    t10 = (t25 * t13);
    t29 = (1U * t10);
    t30 = (0 + t29);
    t15 = (t8 + t30);
    *((unsigned char *)t15) = (unsigned char)3;
    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t7 = (t11 + 12U);
    t10 = *((unsigned int *)t7);
    t10 = (t10 * 1U);
    t0 = xsi_get_transient_memory(t10);
    memcpy(t0, t8, t10);
    t14 = (t11 + 0U);
    t9 = *((int *)t14);
    t15 = (t11 + 4U);
    t13 = *((int *)t15);
    t17 = (t11 + 8U);
    t25 = *((int *)t17);
    t18 = (t2 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = t9;
    t19 = (t18 + 4U);
    *((int *)t19) = t13;
    t19 = (t18 + 8U);
    *((int *)t19) = t25;
    t27 = (t13 - t9);
    t29 = (t27 * t25);
    t29 = (t29 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t29;

LAB1:    return t0;
LAB3:    *((char **)t20) = t3;
    goto LAB2;

LAB4:;
}

static void work_a_2984674033_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 4024U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(78, ng1);
    t2 = (t0 + 4920);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(79, ng1);
    t2 = (t0 + 2928U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3832);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(80, ng1);
    t2 = (t0 + 4920);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(81, ng1);
    t2 = (t0 + 2928U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3832);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2984674033_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 4272U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(87, ng1);
    t2 = (t0 + 4984);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(88, ng1);
    t2 = (t0 + 3048U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4080);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(89, ng1);
    t2 = (t0 + 4984);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(90, ng1);
    t2 = (t0 + 3048U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4080);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2984674033_2372691052_p_2(char *t0)
{
    char t11[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;
    int t9;
    int t10;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned char t26;
    unsigned char t27;
    unsigned char t28;
    int t29;
    int t30;

LAB0:    t1 = (t0 + 4520U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(97, ng1);
    t2 = (t0 + 5048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(98, ng1);
    t7 = (100 * 1000LL);
    t2 = (t0 + 4328);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(99, ng1);
    t2 = (t0 + 5048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(101, ng1);
    t2 = (t0 + 3048U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 * 3);
    t2 = (t0 + 4328);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(104, ng1);
    t2 = (t0 + 8371);
    *((int *)t2) = 0;
    t3 = (t0 + 8375);
    *((int *)t3) = 7;
    t9 = 0;
    t10 = 7;

LAB12:    if (t9 <= t10)
        goto LAB13;

LAB15:    xsi_set_current_line(113, ng1);

LAB37:    *((char **)t1) = &&LAB38;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB13:    xsi_set_current_line(105, ng1);
    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t4 = (t0 + 8371);
    t12 = *((int *)t4);
    t13 = (t12 - 0);
    t14 = (t13 * 1);
    t15 = (8U * t14);
    t16 = (0 + t15);
    t6 = (t5 + t16);
    t17 = work_a_2984674033_2372691052_sub_12017600578576266404_4163069965(t0, t11, t6);
    t18 = (t11 + 12U);
    t19 = *((unsigned int *)t18);
    t19 = (t19 * 1U);
    t20 = (10U != t19);
    if (t20 == 1)
        goto LAB16;

LAB17:    t21 = (t0 + 5112);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t17, 10U);
    xsi_driver_first_trans_fast(t21);
    xsi_set_current_line(106, ng1);
    t2 = (t0 + 8379);
    *((int *)t2) = 0;
    t3 = (t0 + 8383);
    *((int *)t3) = 9;
    t12 = 0;
    t13 = 9;

LAB18:    if (t12 <= t13)
        goto LAB19;

LAB21:    xsi_set_current_line(110, ng1);
    t7 = (30 * 1000000LL);
    t2 = (t0 + 4328);
    xsi_process_wait(t2, t7);

LAB32:    *((char **)t1) = &&LAB33;
    goto LAB1;

LAB14:    t2 = (t0 + 8371);
    t9 = *((int *)t2);
    t3 = (t0 + 8375);
    t10 = *((int *)t3);
    if (t9 == t10)
        goto LAB15;

LAB34:    t12 = (t9 + 1);
    t9 = t12;
    t4 = (t0 + 8371);
    *((int *)t4) = t9;
    goto LAB12;

LAB16:    xsi_size_not_matching(10U, t19, 0);
    goto LAB17;

LAB19:    xsi_set_current_line(107, ng1);

LAB24:    t4 = (t0 + 4840);
    *((int *)t4) = 1;
    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB20:    t2 = (t0 + 8379);
    t12 = *((int *)t2);
    t3 = (t0 + 8383);
    t13 = *((int *)t3);
    if (t12 == t13)
        goto LAB21;

LAB29:    t29 = (t12 + 1);
    t12 = t29;
    t4 = (t0 + 8379);
    *((int *)t4) = t12;
    goto LAB18;

LAB22:    t6 = (t0 + 4840);
    *((int *)t6) = 0;
    xsi_set_current_line(108, ng1);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t2 = (t0 + 8379);
    t29 = *((int *)t2);
    t30 = (t29 - 9);
    t14 = (t30 * -1);
    xsi_vhdl_check_range_of_index(9, 0, -1, *((int *)t2));
    t15 = (1U * t14);
    t16 = (0 + t15);
    t4 = (t3 + t16);
    t20 = *((unsigned char *)t4);
    t5 = (t0 + 5176);
    t6 = (t5 + 56U);
    t17 = *((char **)t6);
    t18 = (t17 + 56U);
    t21 = *((char **)t18);
    *((unsigned char *)t21) = t20;
    xsi_driver_first_trans_fast(t5);
    goto LAB20;

LAB23:    t5 = (t0 + 2592U);
    t26 = xsi_signal_has_event(t5);
    if (t26 == 1)
        goto LAB26;

LAB27:    t20 = (unsigned char)0;

LAB28:    if (t20 == 1)
        goto LAB22;
    else
        goto LAB24;

LAB25:    goto LAB23;

LAB26:    t6 = (t0 + 2632U);
    t17 = *((char **)t6);
    t27 = *((unsigned char *)t17);
    t28 = (t27 == (unsigned char)3);
    t20 = t28;
    goto LAB28;

LAB30:    goto LAB14;

LAB31:    goto LAB30;

LAB33:    goto LAB31;

LAB35:    goto LAB2;

LAB36:    goto LAB35;

LAB38:    goto LAB36;

}


extern void work_a_2984674033_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2984674033_2372691052_p_0,(void *)work_a_2984674033_2372691052_p_1,(void *)work_a_2984674033_2372691052_p_2};
	static char *se[] = {(void *)work_a_2984674033_2372691052_sub_12017600578576266404_4163069965};
	xsi_register_didat("work_a_2984674033_2372691052", "isim/lab2_test_bench_isim_beh.exe.sim/work/a_2984674033_2372691052.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
