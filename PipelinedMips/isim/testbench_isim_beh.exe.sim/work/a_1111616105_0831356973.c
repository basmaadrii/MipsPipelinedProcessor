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
static const char *ng0 = "C:/Xilinx/PipelinedMips/regfile.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_1111616105_0831356973_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(18, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4040);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(19, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(20, ng0);
    t3 = (t0 + 1832U);
    t7 = *((char **)t3);
    t3 = (t0 + 1672U);
    t8 = *((char **)t3);
    t3 = (t0 + 6492U);
    t9 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t8, t3);
    t10 = (t9 - 31);
    t11 = (t10 * -1);
    t12 = (32U * t11);
    t13 = (0U + t12);
    t14 = (t0 + 4136);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t7, 32U);
    xsi_driver_first_trans_delta(t14, t13, 32U, 0LL);
    goto LAB6;

}

static void work_a_1111616105_0831356973_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;

LAB0:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4056);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(27, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t3 = (t0 + 6460U);
    t5 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t4, t3);
    t6 = (t5 == 0);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t1 = (t0 + 6460U);
    t5 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t4, t1);
    t14 = (t5 - 31);
    t15 = (t14 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, t5);
    t16 = (32U * t15);
    t17 = (0 + t16);
    t7 = (t3 + t17);
    t8 = (t0 + 4200);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t7, 32U);
    xsi_driver_first_trans_fast_port(t8);

LAB6:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 6476U);
    t5 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t1);
    t2 = (t5 == 0);
    if (t2 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 1512U);
    t4 = *((char **)t1);
    t1 = (t0 + 6476U);
    t5 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t4, t1);
    t14 = (t5 - 31);
    t15 = (t14 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, t5);
    t16 = (32U * t15);
    t17 = (0 + t16);
    t7 = (t3 + t17);
    t8 = (t0 + 4264);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t7, 32U);
    xsi_driver_first_trans_fast_port(t8);

LAB9:    goto LAB3;

LAB5:    xsi_set_current_line(28, ng0);
    t7 = (t0 + 7669);
    t9 = (t0 + 4200);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t7, 32U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB6;

LAB8:    xsi_set_current_line(33, ng0);
    t4 = (t0 + 7701);
    t8 = (t0 + 4264);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 32U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB9;

}


extern void work_a_1111616105_0831356973_init()
{
	static char *pe[] = {(void *)work_a_1111616105_0831356973_p_0,(void *)work_a_1111616105_0831356973_p_1};
	xsi_register_didat("work_a_1111616105_0831356973", "isim/testbench_isim_beh.exe.sim/work/a_1111616105_0831356973.didat");
	xsi_register_executes(pe);
}
