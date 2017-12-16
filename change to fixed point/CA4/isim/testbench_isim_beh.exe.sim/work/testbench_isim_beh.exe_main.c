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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *WORK_P_3400510128;
char *STD_STANDARD;
char *IEEE_P_3499444699;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    work_p_3400510128_init();
    ieee_p_1242562249_init();
    ieee_p_3499444699_init();
    work_a_3566913392_3212880686_init();
    work_a_3055263662_1572959620_init();
    work_a_0680745308_1572959620_init();
    work_a_1072188703_1572959620_init();
    work_a_1190802289_1065707299_init();
    work_a_3381263149_2829648760_init();
    work_a_1457993824_3212880686_init();
    work_a_2658080014_3212880686_init();
    work_a_2439811229_3212880686_init();
    work_a_1884309992_3212880686_init();
    work_a_0873530586_3212880686_init();
    work_a_3717814860_3212880686_init();
    work_a_3386979032_3212880686_init();
    work_a_3154158549_3212880686_init();
    work_a_1949178628_2372691052_init();


    xsi_register_tops("work_a_1949178628_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    WORK_P_3400510128 = xsi_get_engine_memory("work_p_3400510128");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
