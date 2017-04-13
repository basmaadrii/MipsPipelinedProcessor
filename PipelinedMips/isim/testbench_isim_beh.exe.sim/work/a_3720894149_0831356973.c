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
static const char *ng0 = "C:/Xilinx/PipelinedMips/dmem.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_3720894149_0831356973_p_0(char *t0)
{
    char t18[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    int t23;
    int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;

LAB0:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(20, ng0);

LAB4:
LAB5:    xsi_set_current_line(21, ng0);
    t2 = (t0 + 992U);
    t4 = xsi_signal_has_event(t2);
    if (t4 == 1)
        goto LAB11;

LAB12:    t3 = (unsigned char)0;

LAB13:    if (t3 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 1968U);
    t5 = *((char **)t2);
    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t15 = (31 - 7);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t2 = (t6 + t17);
    t9 = (t18 + 0U);
    t12 = (t9 + 0U);
    *((int *)t12) = 7;
    t12 = (t9 + 4U);
    *((int *)t12) = 2;
    t12 = (t9 + 8U);
    *((int *)t12) = -1;
    t21 = (2 - 7);
    t22 = (t21 * -1);
    t22 = (t22 + 1);
    t12 = (t9 + 12U);
    *((unsigned int *)t12) = t22;
    t23 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t2, t18);
    t24 = (t23 - 63);
    t22 = (t24 * -1);
    xsi_vhdl_check_range_of_index(63, 0, -1, t23);
    t25 = (32U * t22);
    t26 = (0 + t25);
    t12 = (t5 + t26);
    t13 = (t0 + 3352);
    t14 = (t13 + 56U);
    t19 = *((char **)t14);
    t20 = (t19 + 56U);
    t27 = *((char **)t20);
    memcpy(t27, t12, 32U);
    xsi_driver_first_trans_fast_port(t13);
    xsi_set_current_line(27, ng0);

LAB19:    t2 = (t0 + 3272);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB20;

LAB1:    return;
LAB6:;
LAB7:    goto LAB2;

LAB8:    xsi_set_current_line(22, ng0);
    t5 = (t0 + 1192U);
    t9 = *((char **)t5);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    if (t11 != 0)
        goto LAB14;

LAB16:
LAB15:    goto LAB9;

LAB11:    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t3 = t8;
    goto LAB13;

LAB14:    xsi_set_current_line(23, ng0);
    t5 = (t0 + 1512U);
    t12 = *((char **)t5);
    t5 = (t0 + 1968U);
    t13 = *((char **)t5);
    t5 = (t0 + 1352U);
    t14 = *((char **)t5);
    t15 = (31 - 7);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t5 = (t14 + t17);
    t19 = (t18 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 7;
    t20 = (t19 + 4U);
    *((int *)t20) = 2;
    t20 = (t19 + 8U);
    *((int *)t20) = -1;
    t21 = (2 - 7);
    t22 = (t21 * -1);
    t22 = (t22 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t22;
    t23 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t18);
    t24 = (t23 - 63);
    t22 = (t24 * -1);
    xsi_vhdl_check_range_of_index(63, 0, -1, t23);
    t25 = (32U * t22);
    t26 = (0 + t25);
    t20 = (t13 + t26);
    memcpy(t20, t12, 32U);
    goto LAB15;

LAB17:    t5 = (t0 + 3272);
    *((int *)t5) = 0;
    goto LAB4;

LAB18:    goto LAB17;

LAB20:    goto LAB18;

}


extern void work_a_3720894149_0831356973_init()
{
	static char *pe[] = {(void *)work_a_3720894149_0831356973_p_0};
	xsi_register_didat("work_a_3720894149_0831356973", "isim/testbench_isim_beh.exe.sim/work/a_3720894149_0831356973.didat");
	xsi_register_executes(pe);
}
