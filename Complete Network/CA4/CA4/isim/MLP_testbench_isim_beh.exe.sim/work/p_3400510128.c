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
extern char *STD_TEXTIO;
static const char *ng1 = "rom_file";
extern char *STD_STANDARD;
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_393209765_503743352(char *, char *, char *, char *);


char *work_p_3400510128_sub_89940452_2337118844(char *t1, char *t2, char *t3, char *t4, int t5)
{
    char t6[328];
    char t7[24];
    char t19[16];
    char t26[16];
    char t32[16];
    char t53[16];
    char *t0;
    char *t8;
    char *t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t20;
    char *t21;
    int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    int t30;
    int t31;
    int t33;
    char *t34;
    char *t35;
    int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    unsigned char t45;
    char *t46;
    char *t47;
    int t48;
    int t49;
    int t50;
    char *t51;
    char *t52;
    unsigned int t54;

LAB0:    t8 = ((STD_TEXTIO) + 3440);
    t9 = (t4 + 12U);
    t10 = *((unsigned int *)t9);
    t10 = (t10 * 1U);
    t11 = (t6 + 4U);
    t12 = xsi_create_file_variable_in_buffer(0, ng1, t8, t3, t10, 1);
    *((char **)t11) = t12;
    t13 = (t6 + 12U);
    t14 = ((STD_TEXTIO) + 3280);
    t15 = (t13 + 56U);
    *((char **)t15) = t14;
    t16 = (t13 + 40U);
    *((char **)t16) = 0;
    t17 = (t13 + 64U);
    *((int *)t17) = 1;
    t18 = (t13 + 48U);
    *((char **)t18) = 0;
    t20 = (t19 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 15;
    t21 = (t20 + 4U);
    *((int *)t21) = 0;
    t21 = (t20 + 8U);
    *((int *)t21) = -1;
    t22 = (0 - 15);
    t23 = (t22 * -1);
    t23 = (t23 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t23;
    t21 = (t6 + 84U);
    t24 = ((STD_STANDARD) + 1112);
    t25 = (t21 + 88U);
    *((char **)t25) = t24;
    t27 = (t21 + 56U);
    *((char **)t27) = t26;
    xsi_type_set_default_value(t24, t26, t19);
    t28 = (t21 + 64U);
    *((char **)t28) = t19;
    t29 = (t21 + 80U);
    *((unsigned int *)t29) = 16U;
    t30 = (t5 - 1);
    t31 = (0 - t30);
    t23 = (t31 * -1);
    t23 = (t23 + 1);
    t23 = (t23 * 16U);
    t33 = (t5 - 1);
    t34 = (t32 + 0U);
    t35 = (t34 + 0U);
    *((int *)t35) = t33;
    t35 = (t34 + 4U);
    *((int *)t35) = 0;
    t35 = (t34 + 8U);
    *((int *)t35) = -1;
    t36 = (0 - t33);
    t37 = (t36 * -1);
    t37 = (t37 + 1);
    t35 = (t34 + 12U);
    *((unsigned int *)t35) = t37;
    t35 = (t6 + 204U);
    t38 = (t1 + 2600);
    t39 = (t35 + 88U);
    *((char **)t39) = t38;
    t40 = (char *)alloca(t23);
    t41 = (t35 + 56U);
    *((char **)t41) = t40;
    xsi_type_set_default_value(t38, t40, t32);
    t42 = (t35 + 64U);
    *((char **)t42) = t32;
    t43 = (t35 + 80U);
    *((unsigned int *)t43) = t23;
    t44 = (t7 + 4U);
    t45 = (t3 != 0);
    if (t45 == 1)
        goto LAB3;

LAB2:    t46 = (t7 + 12U);
    *((char **)t46) = t4;
    t47 = (t7 + 20U);
    *((int *)t47) = t5;
    t48 = (t5 - 1);
    t49 = 0;
    t50 = t48;

LAB4:    if (t49 <= t50)
        goto LAB5;

LAB7:    t8 = (t35 + 56U);
    t9 = *((char **)t8);
    t8 = (t32 + 12U);
    t10 = *((unsigned int *)t8);
    t10 = (t10 * 16U);
    t0 = xsi_get_transient_memory(t10);
    memcpy(t0, t9, t10);
    t11 = (t32 + 0U);
    t22 = *((int *)t11);
    t12 = (t32 + 4U);
    t30 = *((int *)t12);
    t14 = (t32 + 8U);
    t31 = *((int *)t14);
    t15 = (t2 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = t22;
    t16 = (t15 + 4U);
    *((int *)t16) = t30;
    t16 = (t15 + 8U);
    *((int *)t16) = t31;
    t33 = (t30 - t22);
    t23 = (t33 * t31);
    t23 = (t23 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t23;

LAB1:    xsi_access_variable_delete(t13);
    t8 = (t6 + 4U);
    t9 = *((char **)t8);
    xsi_delete_file_variable(t9);
    return t0;
LAB3:    *((char **)t44) = t3;
    goto LAB2;

LAB5:    t51 = (t6 + 4U);
    t52 = *((char **)t51);
    std_textio_readline(STD_TEXTIO, (char *)0, t52, t13);
    t8 = (t21 + 56U);
    t9 = *((char **)t8);
    std_textio_read4(STD_TEXTIO, (char *)0, t13, t9, t19);
    t8 = (t21 + 56U);
    t9 = *((char **)t8);
    t8 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t53, t9, t19);
    t11 = (t35 + 56U);
    t12 = *((char **)t11);
    t11 = (t32 + 0U);
    t22 = *((int *)t11);
    t14 = (t32 + 8U);
    t30 = *((int *)t14);
    t31 = (t49 - t22);
    t10 = (t31 * t30);
    t15 = (t32 + 4U);
    t33 = *((int *)t15);
    xsi_vhdl_check_range_of_index(t22, t33, t30, t49);
    t23 = (16U * t10);
    t37 = (0 + t23);
    t16 = (t12 + t37);
    t17 = (t53 + 12U);
    t54 = *((unsigned int *)t17);
    t54 = (t54 * 1U);
    memcpy(t16, t8, t54);

LAB6:    if (t49 == t50)
        goto LAB7;

LAB8:    t22 = (t49 + 1);
    t49 = t22;
    goto LAB4;

LAB9:;
}

char *work_p_3400510128_sub_69529982_2337118844(char *t1, char *t2, char *t3, char *t4, int t5)
{
    char t6[328];
    char t7[24];
    char t19[16];
    char t26[16];
    char t32[16];
    char t55[16];
    char *t0;
    char *t8;
    char *t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t20;
    char *t21;
    int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    int t30;
    int t31;
    int t33;
    char *t34;
    char *t35;
    int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    unsigned char t45;
    char *t46;
    char *t47;
    int t48;
    int t49;
    int t50;
    int t51;
    int t52;
    char *t53;
    char *t54;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;

LAB0:    t8 = ((STD_TEXTIO) + 3440);
    t9 = (t4 + 12U);
    t10 = *((unsigned int *)t9);
    t10 = (t10 * 1U);
    t11 = (t6 + 4U);
    t12 = xsi_create_file_variable_in_buffer(0, ng1, t8, t3, t10, 1);
    *((char **)t11) = t12;
    t13 = (t6 + 12U);
    t14 = ((STD_TEXTIO) + 3280);
    t15 = (t13 + 56U);
    *((char **)t15) = t14;
    t16 = (t13 + 40U);
    *((char **)t16) = 0;
    t17 = (t13 + 64U);
    *((int *)t17) = 1;
    t18 = (t13 + 48U);
    *((char **)t18) = 0;
    t20 = (t19 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 15;
    t21 = (t20 + 4U);
    *((int *)t21) = 0;
    t21 = (t20 + 8U);
    *((int *)t21) = -1;
    t22 = (0 - 15);
    t23 = (t22 * -1);
    t23 = (t23 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t23;
    t21 = (t6 + 84U);
    t24 = ((STD_STANDARD) + 1112);
    t25 = (t21 + 88U);
    *((char **)t25) = t24;
    t27 = (t21 + 56U);
    *((char **)t27) = t26;
    xsi_type_set_default_value(t24, t26, t19);
    t28 = (t21 + 64U);
    *((char **)t28) = t19;
    t29 = (t21 + 80U);
    *((unsigned int *)t29) = 16U;
    t30 = (t5 - 1);
    t31 = (0 - t30);
    t23 = (t31 * -1);
    t23 = (t23 + 1);
    t23 = (t23 * 992U);
    t33 = (t5 - 1);
    t34 = (t32 + 0U);
    t35 = (t34 + 0U);
    *((int *)t35) = t33;
    t35 = (t34 + 4U);
    *((int *)t35) = 0;
    t35 = (t34 + 8U);
    *((int *)t35) = -1;
    t36 = (0 - t33);
    t37 = (t36 * -1);
    t37 = (t37 + 1);
    t35 = (t34 + 12U);
    *((unsigned int *)t35) = t37;
    t35 = (t6 + 204U);
    t38 = (t1 + 2824);
    t39 = (t35 + 88U);
    *((char **)t39) = t38;
    t40 = (char *)alloca(t23);
    t41 = (t35 + 56U);
    *((char **)t41) = t40;
    xsi_type_set_default_value(t38, t40, t32);
    t42 = (t35 + 64U);
    *((char **)t42) = t32;
    t43 = (t35 + 80U);
    *((unsigned int *)t43) = t23;
    t44 = (t7 + 4U);
    t45 = (t3 != 0);
    if (t45 == 1)
        goto LAB3;

LAB2:    t46 = (t7 + 12U);
    *((char **)t46) = t4;
    t47 = (t7 + 20U);
    *((int *)t47) = t5;
    t48 = (t5 - 1);
    t49 = 0;
    t50 = t48;

LAB4:    if (t49 <= t50)
        goto LAB5;

LAB7:    t8 = (t35 + 56U);
    t9 = *((char **)t8);
    t8 = (t32 + 12U);
    t10 = *((unsigned int *)t8);
    t10 = (t10 * 992U);
    t0 = xsi_get_transient_memory(t10);
    memcpy(t0, t9, t10);
    t11 = (t32 + 0U);
    t22 = *((int *)t11);
    t12 = (t32 + 4U);
    t30 = *((int *)t12);
    t14 = (t32 + 8U);
    t31 = *((int *)t14);
    t15 = (t2 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = t22;
    t16 = (t15 + 4U);
    *((int *)t16) = t30;
    t16 = (t15 + 8U);
    *((int *)t16) = t31;
    t33 = (t30 - t22);
    t23 = (t33 * t31);
    t23 = (t23 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t23;

LAB1:    xsi_access_variable_delete(t13);
    t8 = (t6 + 4U);
    t9 = *((char **)t8);
    xsi_delete_file_variable(t9);
    return t0;
LAB3:    *((char **)t44) = t3;
    goto LAB2;

LAB5:    t51 = 0;
    t52 = 61;

LAB8:    if (t51 <= t52)
        goto LAB9;

LAB11:
LAB6:    if (t49 == t50)
        goto LAB7;

LAB13:    t22 = (t49 + 1);
    t49 = t22;
    goto LAB4;

LAB9:    t53 = (t6 + 4U);
    t54 = *((char **)t53);
    std_textio_readline(STD_TEXTIO, (char *)0, t54, t13);
    t8 = (t21 + 56U);
    t9 = *((char **)t8);
    std_textio_read4(STD_TEXTIO, (char *)0, t13, t9, t19);
    t8 = (t21 + 56U);
    t9 = *((char **)t8);
    t8 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t55, t9, t19);
    t11 = (t35 + 56U);
    t12 = *((char **)t11);
    t22 = (t51 - 61);
    t10 = (t22 * -1);
    xsi_vhdl_check_range_of_index(61, 0, -1, t51);
    t23 = (16U * t10);
    t11 = (t32 + 0U);
    t30 = *((int *)t11);
    t14 = (t32 + 8U);
    t31 = *((int *)t14);
    t33 = (t49 - t30);
    t37 = (t33 * t31);
    t15 = (t32 + 4U);
    t36 = *((int *)t15);
    xsi_vhdl_check_range_of_index(t30, t36, t31, t49);
    t56 = (992U * t37);
    t57 = (0 + t56);
    t58 = (t57 + t23);
    t16 = (t12 + t58);
    t17 = (t55 + 12U);
    t59 = *((unsigned int *)t17);
    t59 = (t59 * 1U);
    memcpy(t16, t8, t59);

LAB10:    if (t51 == t52)
        goto LAB11;

LAB12:    t22 = (t51 + 1);
    t51 = t22;
    goto LAB8;

LAB14:;
}

char *work_p_3400510128_sub_1504670313_2337118844(char *t1, char *t2, char *t3, char *t4, int t5)
{
    char t6[328];
    char t7[24];
    char t19[16];
    char t26[16];
    char t32[16];
    char t55[16];
    char *t0;
    char *t8;
    char *t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t20;
    char *t21;
    int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    int t30;
    int t31;
    int t33;
    char *t34;
    char *t35;
    int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    unsigned char t45;
    char *t46;
    char *t47;
    int t48;
    int t49;
    int t50;
    int t51;
    int t52;
    char *t53;
    char *t54;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;

LAB0:    t8 = ((STD_TEXTIO) + 3440);
    t9 = (t4 + 12U);
    t10 = *((unsigned int *)t9);
    t10 = (t10 * 1U);
    t11 = (t6 + 4U);
    t12 = xsi_create_file_variable_in_buffer(0, ng1, t8, t3, t10, 1);
    *((char **)t11) = t12;
    t13 = (t6 + 12U);
    t14 = ((STD_TEXTIO) + 3280);
    t15 = (t13 + 56U);
    *((char **)t15) = t14;
    t16 = (t13 + 40U);
    *((char **)t16) = 0;
    t17 = (t13 + 64U);
    *((int *)t17) = 1;
    t18 = (t13 + 48U);
    *((char **)t18) = 0;
    t20 = (t19 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 15;
    t21 = (t20 + 4U);
    *((int *)t21) = 0;
    t21 = (t20 + 8U);
    *((int *)t21) = -1;
    t22 = (0 - 15);
    t23 = (t22 * -1);
    t23 = (t23 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t23;
    t21 = (t6 + 84U);
    t24 = ((STD_STANDARD) + 1112);
    t25 = (t21 + 88U);
    *((char **)t25) = t24;
    t27 = (t21 + 56U);
    *((char **)t27) = t26;
    xsi_type_set_default_value(t24, t26, t19);
    t28 = (t21 + 64U);
    *((char **)t28) = t19;
    t29 = (t21 + 80U);
    *((unsigned int *)t29) = 16U;
    t30 = (t5 - 1);
    t31 = (0 - t30);
    t23 = (t31 * -1);
    t23 = (t23 + 1);
    t23 = (t23 * 320U);
    t33 = (t5 - 1);
    t34 = (t32 + 0U);
    t35 = (t34 + 0U);
    *((int *)t35) = t33;
    t35 = (t34 + 4U);
    *((int *)t35) = 0;
    t35 = (t34 + 8U);
    *((int *)t35) = -1;
    t36 = (0 - t33);
    t37 = (t36 * -1);
    t37 = (t37 + 1);
    t35 = (t34 + 12U);
    *((unsigned int *)t35) = t37;
    t35 = (t6 + 204U);
    t38 = (t1 + 3048);
    t39 = (t35 + 88U);
    *((char **)t39) = t38;
    t40 = (char *)alloca(t23);
    t41 = (t35 + 56U);
    *((char **)t41) = t40;
    xsi_type_set_default_value(t38, t40, t32);
    t42 = (t35 + 64U);
    *((char **)t42) = t32;
    t43 = (t35 + 80U);
    *((unsigned int *)t43) = t23;
    t44 = (t7 + 4U);
    t45 = (t3 != 0);
    if (t45 == 1)
        goto LAB3;

LAB2:    t46 = (t7 + 12U);
    *((char **)t46) = t4;
    t47 = (t7 + 20U);
    *((int *)t47) = t5;
    t48 = (t5 - 1);
    t49 = 0;
    t50 = t48;

LAB4:    if (t49 <= t50)
        goto LAB5;

LAB7:    t8 = (t35 + 56U);
    t9 = *((char **)t8);
    t8 = (t32 + 12U);
    t10 = *((unsigned int *)t8);
    t10 = (t10 * 320U);
    t0 = xsi_get_transient_memory(t10);
    memcpy(t0, t9, t10);
    t11 = (t32 + 0U);
    t22 = *((int *)t11);
    t12 = (t32 + 4U);
    t30 = *((int *)t12);
    t14 = (t32 + 8U);
    t31 = *((int *)t14);
    t15 = (t2 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = t22;
    t16 = (t15 + 4U);
    *((int *)t16) = t30;
    t16 = (t15 + 8U);
    *((int *)t16) = t31;
    t33 = (t30 - t22);
    t23 = (t33 * t31);
    t23 = (t23 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t23;

LAB1:    xsi_access_variable_delete(t13);
    t8 = (t6 + 4U);
    t9 = *((char **)t8);
    xsi_delete_file_variable(t9);
    return t0;
LAB3:    *((char **)t44) = t3;
    goto LAB2;

LAB5:    t51 = 0;
    t52 = 19;

LAB8:    if (t51 <= t52)
        goto LAB9;

LAB11:
LAB6:    if (t49 == t50)
        goto LAB7;

LAB13:    t22 = (t49 + 1);
    t49 = t22;
    goto LAB4;

LAB9:    t53 = (t6 + 4U);
    t54 = *((char **)t53);
    std_textio_readline(STD_TEXTIO, (char *)0, t54, t13);
    t8 = (t21 + 56U);
    t9 = *((char **)t8);
    std_textio_read4(STD_TEXTIO, (char *)0, t13, t9, t19);
    t8 = (t21 + 56U);
    t9 = *((char **)t8);
    t8 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t55, t9, t19);
    t11 = (t35 + 56U);
    t12 = *((char **)t11);
    t22 = (t51 - 19);
    t10 = (t22 * -1);
    xsi_vhdl_check_range_of_index(19, 0, -1, t51);
    t23 = (16U * t10);
    t11 = (t32 + 0U);
    t30 = *((int *)t11);
    t14 = (t32 + 8U);
    t31 = *((int *)t14);
    t33 = (t49 - t30);
    t37 = (t33 * t31);
    t15 = (t32 + 4U);
    t36 = *((int *)t15);
    xsi_vhdl_check_range_of_index(t30, t36, t31, t49);
    t56 = (320U * t37);
    t57 = (0 + t56);
    t58 = (t57 + t23);
    t16 = (t12 + t58);
    t17 = (t55 + 12U);
    t59 = *((unsigned int *)t17);
    t59 = (t59 * 1U);
    memcpy(t16, t8, t59);

LAB10:    if (t51 == t52)
        goto LAB11;

LAB12:    t22 = (t51 + 1);
    t51 = t22;
    goto LAB8;

LAB14:;
}


extern void work_p_3400510128_init()
{
	static char *se[] = {(void *)work_p_3400510128_sub_89940452_2337118844,(void *)work_p_3400510128_sub_69529982_2337118844,(void *)work_p_3400510128_sub_1504670313_2337118844};
	xsi_register_didat("work_p_3400510128", "isim/MLP_testbench_isim_beh.exe.sim/work/p_3400510128.didat");
	xsi_register_subprogram_executes(se);
}
