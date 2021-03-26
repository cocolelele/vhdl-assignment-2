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

LAB0:    t1 = (t0 + 3704U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(71, ng1);
    t2 = (t0 + 4600);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(72, ng1);
    t2 = (t0 + 2608U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3512);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(73, ng1);
    t2 = (t0 + 4600);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(74, ng1);
    t2 = (t0 + 2608U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3512);
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

LAB0:    t1 = (t0 + 3952U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(80, ng1);
    t2 = (t0 + 4664);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(81, ng1);
    t2 = (t0 + 2728U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3760);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(82, ng1);
    t2 = (t0 + 4664);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(83, ng1);
    t2 = (t0 + 2728U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3760);
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
    char t9[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;
    int t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;

LAB0:    t1 = (t0 + 4200U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(90, ng1);
    t2 = (t0 + 4728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(91, ng1);
    t7 = (100 * 1000LL);
    t2 = (t0 + 4008);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(92, ng1);
    t2 = (t0 + 4728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(94, ng1);
    t2 = (t0 + 2728U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 * 3);
    t2 = (t0 + 4008);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(97, ng1);
    t2 = (t0 + 7467);
    t4 = work_a_2984674033_2372691052_sub_12017600578576266404_4163069965(t0, t9, t2);
    t10 = (10U != 10U);
    if (t10 == 1)
        goto LAB12;

LAB13:    t5 = (t0 + 4792);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 10U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(98, ng1);
    t2 = (t0 + 7475);
    *((int *)t2) = 0;
    t3 = (t0 + 7479);
    *((int *)t3) = 9;
    t14 = 0;
    t15 = 9;

LAB14:    if (t14 <= t15)
        goto LAB15;

LAB17:    xsi_set_current_line(103, ng1);

LAB28:    *((char **)t1) = &&LAB29;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_size_not_matching(10U, 10U, 0);
    goto LAB13;

LAB15:    xsi_set_current_line(99, ng1);

LAB20:    t4 = (t0 + 4520);
    *((int *)t4) = 1;
    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB16:    t2 = (t0 + 7475);
    t14 = *((int *)t2);
    t3 = (t0 + 7479);
    t15 = *((int *)t3);
    if (t14 == t15)
        goto LAB17;

LAB25:    t19 = (t14 + 1);
    t14 = t19;
    t4 = (t0 + 7475);
    *((int *)t4) = t14;
    goto LAB14;

LAB18:    t6 = (t0 + 4520);
    *((int *)t6) = 0;
    xsi_set_current_line(100, ng1);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 7475);
    t19 = *((int *)t2);
    t20 = (t19 - 9);
    t21 = (t20 * -1);
    xsi_vhdl_check_range_of_index(9, 0, -1, *((int *)t2));
    t22 = (1U * t21);
    t23 = (0 + t22);
    t4 = (t3 + t23);
    t10 = *((unsigned char *)t4);
    t5 = (t0 + 4856);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t10;
    xsi_driver_first_trans_fast(t5);
    goto LAB16;

LAB19:    t5 = (t0 + 2272U);
    t16 = xsi_signal_has_event(t5);
    if (t16 == 1)
        goto LAB22;

LAB23:    t10 = (unsigned char)0;

LAB24:    if (t10 == 1)
        goto LAB18;
    else
        goto LAB20;

LAB21:    goto LAB19;

LAB22:    t6 = (t0 + 2312U);
    t11 = *((char **)t6);
    t17 = *((unsigned char *)t11);
    t18 = (t17 == (unsigned char)3);
    t10 = t18;
    goto LAB24;

LAB26:    goto LAB2;

LAB27:    goto LAB26;

LAB29:    goto LAB27;

}


extern void work_a_2984674033_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2984674033_2372691052_p_0,(void *)work_a_2984674033_2372691052_p_1,(void *)work_a_2984674033_2372691052_p_2};
	static char *se[] = {(void *)work_a_2984674033_2372691052_sub_12017600578576266404_4163069965};
	xsi_register_didat("work_a_2984674033_2372691052", "isim/lab2_test_bench_isim_beh.exe.sim/work/a_2984674033_2372691052.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
