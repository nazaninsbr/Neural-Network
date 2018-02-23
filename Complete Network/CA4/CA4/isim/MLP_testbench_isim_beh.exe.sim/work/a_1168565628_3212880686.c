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
static const char *ng0 = "C:/Users/Hossain/Documents/Nooshin/CA4/CA4/argmax.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
int ieee_p_1242562249_sub_2271993008_1035706684(char *, char *, char *);


static void work_a_1168565628_3212880686_p_0(char *t0)
{
    char t13[16];
    char t28[16];
    char *t1;
    char *t2;
    int t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    int t18;
    char *t19;
    int t20;
    unsigned char t21;
    char *t22;
    int t23;
    int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t29;
    char *t30;
    int t31;
    unsigned int t32;
    int t33;
    char *t34;

LAB0:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 1728U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 10;
    xsi_set_current_line(22, ng0);
    t1 = (t0 + 1848U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 10;
    xsi_set_current_line(23, ng0);
    t1 = (t0 + 5344);
    *((int *)t1) = 0;
    t2 = (t0 + 5348);
    *((int *)t2) = 9;
    t3 = 0;
    t4 = 9;

LAB2:    if (t3 <= t4)
        goto LAB3;

LAB5:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 1848U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t13, t3, 4);
    t5 = (t0 + 3232);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    t1 = (t0 + 3152);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(24, ng0);
    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t5 = (t0 + 5344);
    t7 = *((int *)t5);
    t8 = (t7 - 9);
    t9 = (t8 * -1);
    xsi_vhdl_check_range_of_index(9, 0, -1, *((int *)t5));
    t10 = (16U * t9);
    t11 = (0 + t10);
    t12 = (t6 + t11);
    t14 = (t13 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 15;
    t15 = (t14 + 4U);
    *((int *)t15) = 0;
    t15 = (t14 + 8U);
    *((int *)t15) = -1;
    t16 = (0 - 15);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t17;
    t18 = ieee_p_1242562249_sub_2271993008_1035706684(IEEE_P_1242562249, t12, t13);
    t15 = (t0 + 1728U);
    t19 = *((char **)t15);
    t20 = *((int *)t19);
    t21 = (t18 > t20);
    if (t21 != 0)
        goto LAB6;

LAB8:
LAB7:
LAB4:    t1 = (t0 + 5344);
    t3 = *((int *)t1);
    t2 = (t0 + 5348);
    t4 = *((int *)t2);
    if (t3 == t4)
        goto LAB5;

LAB9:    t7 = (t3 + 1);
    t3 = t7;
    t5 = (t0 + 5344);
    *((int *)t5) = t3;
    goto LAB2;

LAB6:    xsi_set_current_line(25, ng0);
    t15 = (t0 + 1032U);
    t22 = *((char **)t15);
    t15 = (t0 + 5344);
    t23 = *((int *)t15);
    t24 = (t23 - 9);
    t17 = (t24 * -1);
    xsi_vhdl_check_range_of_index(9, 0, -1, *((int *)t15));
    t25 = (16U * t17);
    t26 = (0 + t25);
    t27 = (t22 + t26);
    t29 = (t28 + 0U);
    t30 = (t29 + 0U);
    *((int *)t30) = 15;
    t30 = (t29 + 4U);
    *((int *)t30) = 0;
    t30 = (t29 + 8U);
    *((int *)t30) = -1;
    t31 = (0 - 15);
    t32 = (t31 * -1);
    t32 = (t32 + 1);
    t30 = (t29 + 12U);
    *((unsigned int *)t30) = t32;
    t33 = ieee_p_1242562249_sub_2271993008_1035706684(IEEE_P_1242562249, t27, t28);
    t30 = (t0 + 1728U);
    t34 = *((char **)t30);
    t30 = (t34 + 0);
    *((int *)t30) = t33;
    xsi_set_current_line(26, ng0);
    t1 = (t0 + 5344);
    t2 = (t0 + 1848U);
    t5 = *((char **)t2);
    t2 = (t5 + 0);
    *((int *)t2) = *((int *)t1);
    goto LAB7;

}


extern void work_a_1168565628_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1168565628_3212880686_p_0};
	xsi_register_didat("work_a_1168565628_3212880686", "isim/MLP_testbench_isim_beh.exe.sim/work/a_1168565628_3212880686.didat");
	xsi_register_executes(pe);
}
