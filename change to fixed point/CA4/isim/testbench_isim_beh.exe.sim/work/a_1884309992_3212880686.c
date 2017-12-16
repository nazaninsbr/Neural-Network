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
static const char *ng0 = "D:/University/Term 7/CAD/CAs/CA4/CA3-NNM/CA3/activationFunction.vhd";



static void work_a_1884309992_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4192);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1512U);
    t7 = *((char **)t1);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    if (t9 == 1)
        goto LAB11;

LAB12:    t1 = (t0 + 1672U);
    t10 = *((char **)t1);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)3);
    t6 = t12;

LAB13:    if (t6 == 1)
        goto LAB8;

LAB9:    t5 = (unsigned char)0;

LAB10:    if (t5 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(44, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t7 = (t0 + 4272);
    t10 = (t7 + 56U);
    t13 = *((char **)t10);
    t21 = (t13 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t1, 16U);
    xsi_driver_first_trans_fast_port(t7);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(42, ng0);
    t21 = (t0 + 1032U);
    t22 = *((char **)t21);
    t21 = (t0 + 4272);
    t23 = (t21 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t22, 16U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB6;

LAB8:    t1 = (t0 + 1032U);
    t13 = *((char **)t1);
    t14 = (16 - 1);
    t15 = (t14 - 15);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t1 = (t13 + t18);
    t19 = *((unsigned char *)t1);
    t20 = (t19 == (unsigned char)2);
    t5 = t20;
    goto LAB10;

LAB11:    t6 = (unsigned char)1;
    goto LAB13;

}


extern void work_a_1884309992_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1884309992_3212880686_p_0};
	xsi_register_didat("work_a_1884309992_3212880686", "isim/testbench_isim_beh.exe.sim/work/a_1884309992_3212880686.didat");
	xsi_register_executes(pe);
}
