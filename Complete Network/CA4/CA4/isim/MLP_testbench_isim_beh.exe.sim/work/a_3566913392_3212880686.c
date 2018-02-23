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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Hossain/Documents/Nooshin/CA4/CA4/mult.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_2053728113_1035706684(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );


static void work_a_3566913392_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(18, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (16 - 1);
    t4 = (t3 - 15);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t8 = *((unsigned char *)t1);
    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t11 = (16 - 1);
    t12 = (t11 - 15);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t9 = (t10 + t15);
    t16 = *((unsigned char *)t9);
    t17 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t8, t16);
    t18 = (t0 + 4264);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = t17;
    xsi_driver_first_trans_fast(t18);

LAB2:    t23 = (t0 + 4136);
    *((int *)t23) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3566913392_3212880686_p_1(char *t0)
{
    char t1[16];
    char t8[16];
    char t17[16];
    char *t2;
    char *t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    char *t18;
    char *t19;
    int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(19, ng0);

LAB3:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = (16 - 2);
    t5 = (15 - t4);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t2 = (t3 + t7);
    t9 = (t8 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 14;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t11 = (0 - 14);
    t12 = (t11 * -1);
    t12 = (t12 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t12;
    t10 = (t0 + 1192U);
    t13 = *((char **)t10);
    t14 = (16 - 2);
    t12 = (15 - t14);
    t15 = (t12 * 1U);
    t16 = (0 + t15);
    t10 = (t13 + t16);
    t18 = (t17 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 14;
    t19 = (t18 + 4U);
    *((int *)t19) = 0;
    t19 = (t18 + 8U);
    *((int *)t19) = -1;
    t20 = (0 - 14);
    t21 = (t20 * -1);
    t21 = (t21 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t21;
    t19 = ieee_p_1242562249_sub_2053728113_1035706684(IEEE_P_1242562249, t1, t2, t8, t10, t17);
    t22 = (t1 + 12U);
    t21 = *((unsigned int *)t22);
    t23 = (1U * t21);
    t24 = (30U != t23);
    if (t24 == 1)
        goto LAB5;

LAB6:    t25 = (t0 + 4328);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t19, 30U);
    xsi_driver_first_trans_fast(t25);

LAB2:    t30 = (t0 + 4152);
    *((int *)t30) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(30U, t23, 0);
    goto LAB6;

}

static void work_a_3566913392_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(20, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4392);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);

LAB2:    t8 = (t0 + 4168);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3566913392_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(21, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = (16 - 2);
    t4 = (t3 + 6);
    t5 = (29 - t4);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t8 = (t0 + 4456);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 15U);
    xsi_driver_first_trans_delta(t8, 1U, 15U, 0LL);

LAB2:    t13 = (t0 + 4184);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3566913392_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3566913392_3212880686_p_0,(void *)work_a_3566913392_3212880686_p_1,(void *)work_a_3566913392_3212880686_p_2,(void *)work_a_3566913392_3212880686_p_3};
	xsi_register_didat("work_a_3566913392_3212880686", "isim/MLP_testbench_isim_beh.exe.sim/work/a_3566913392_3212880686.didat");
	xsi_register_executes(pe);
}
