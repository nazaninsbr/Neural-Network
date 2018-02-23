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
static const char *ng0 = "C:/Users/Hossain/Documents/Nooshin/CA4/CA4/MLP_testbench.vhd";



static void work_a_1293670846_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 4064);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 4064);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1293670846_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    char *t6;
    char *t7;
    int64 t8;
    int64 t9;
    char *t10;
    int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    t1 = (t0 + 3680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 107052);
    *((int *)t2) = 0;
    t3 = (t0 + 107056);
    *((int *)t3) = 99;
    t4 = 0;
    t5 = 99;

LAB4:    if (t4 <= t5)
        goto LAB5;

LAB7:    xsi_set_current_line(113, ng0);

LAB23:    *((char **)t1) = &&LAB24;

LAB1:    return;
LAB5:    xsi_set_current_line(104, ng0);
    t6 = (t0 + 2448U);
    t7 = *((char **)t6);
    t8 = *((int64 *)t7);
    t9 = (t8 * 1000);
    t6 = (t0 + 3488);
    xsi_process_wait(t6, t9);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB6:    t2 = (t0 + 107052);
    t4 = *((int *)t2);
    t3 = (t0 + 107056);
    t5 = *((int *)t3);
    if (t4 == t5)
        goto LAB7;

LAB20:    t11 = (t4 + 1);
    t4 = t11;
    t6 = (t0 + 107052);
    *((int *)t6) = t4;
    goto LAB4;

LAB8:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 4128);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(106, ng0);
    t8 = (100 * 1000LL);
    t2 = (t0 + 3488);
    xsi_process_wait(t2, t8);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 107052);
    t11 = *((int *)t2);
    t12 = (t11 - 99);
    t13 = (t12 * -1);
    xsi_vhdl_check_range_of_index(99, 0, -1, *((int *)t2));
    t14 = (992U * t13);
    t15 = (0 + t14);
    t6 = (t3 + t15);
    t7 = (t0 + 4192);
    t10 = (t7 + 56U);
    t16 = *((char **)t10);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t6, 992U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(108, ng0);
    t8 = (100 * 1000LL);
    t2 = (t0 + 3488);
    xsi_process_wait(t2, t8);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 4128);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB6;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB21:    goto LAB2;

LAB22:    goto LAB21;

LAB24:    goto LAB22;

}


extern void work_a_1293670846_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1293670846_2372691052_p_0,(void *)work_a_1293670846_2372691052_p_1};
	xsi_register_didat("work_a_1293670846_2372691052", "isim/MLP_testbench_isim_beh.exe.sim/work/a_1293670846_2372691052.didat");
	xsi_register_executes(pe);
}
