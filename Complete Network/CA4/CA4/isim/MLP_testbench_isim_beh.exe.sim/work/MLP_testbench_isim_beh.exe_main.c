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

char *IEEE_P_3972351953;
char *SYNOPSYS_P_3308480207;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3499444699;
char *IEEE_P_0017514958;
char *STD_TEXTIO;
char *IEEE_P_1242562249;
char *WORK_P_3400510128;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3972351953_init();
    synopsys_p_3308480207_init();
    ieee_p_0017514958_init();
    std_textio_init();
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
    work_a_3611141831_3212880686_init();
    work_a_3523119658_3212880686_init();
    work_a_3529478499_3212880686_init();
    work_a_0134771496_3212880686_init();
    work_a_0990271537_3212880686_init();
    work_a_1857692639_3212880686_init();
    work_a_3459767387_3212880686_init();
    work_a_1589236314_3212880686_init();
    work_a_0398533977_3212880686_init();
    work_a_0751544528_3212880686_init();
    work_a_1168565628_3212880686_init();
    work_a_2996418202_3212880686_init();
    work_a_1293670846_2372691052_init();


    xsi_register_tops("work_a_1293670846_2372691052");

    IEEE_P_3972351953 = xsi_get_engine_memory("ieee_p_3972351953");
    SYNOPSYS_P_3308480207 = xsi_get_engine_memory("synopsys_p_3308480207");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_0017514958 = xsi_get_engine_memory("ieee_p_0017514958");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    WORK_P_3400510128 = xsi_get_engine_memory("work_p_3400510128");

    return xsi_run_simulation(argc, argv);

}
