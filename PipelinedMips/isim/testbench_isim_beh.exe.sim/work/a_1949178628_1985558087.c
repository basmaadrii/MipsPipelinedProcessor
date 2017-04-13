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
static const char *ng0 = "C:/Xilinx/PipelinedMips/testbench.vhd";
extern char *IEEE_P_3620187407;
extern char *STD_STANDARD;

unsigned char ieee_p_3620187407_sub_3890342512_3965413181(char *, char *, char *, int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_1949178628_1985558087_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 5232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 6128);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(31, ng0);
    t7 = (5 * 1000LL);
    t2 = (t0 + 5040);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 6128);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(33, ng0);
    t7 = (5 * 1000LL);
    t2 = (t0 + 5040);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1949178628_1985558087_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 5480U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 6192);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(39, ng0);
    t7 = (22 * 1000LL);
    t2 = (t0 + 5288);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 6192);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(41, ng0);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1949178628_1985558087_p_2(char *t0)
{
    char t22[16];
    char t24[16];
    char t26[16];
    char t32[16];
    char t34[16];
    char t38[16];
    char t45[16];
    unsigned char t1;
    unsigned char t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t23;
    char *t25;
    char *t27;
    char *t28;
    unsigned int t29;
    char *t31;
    char *t33;
    char *t35;
    char *t36;
    int t37;
    char *t39;
    char *t40;
    int t41;
    char *t42;
    char *t43;
    char *t44;
    char *t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;

LAB0:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 992U);
    t4 = xsi_signal_has_event(t3);
    if (t4 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t3 = (t0 + 6048);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t5 = (t0 + 1672U);
    t13 = *((char **)t5);
    t5 = (t0 + 8876U);
    t14 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t13, t5);
    t15 = (t14 == 84);
    if (t15 == 1)
        goto LAB14;

LAB15:    t12 = (unsigned char)0;

LAB16:    if (t12 != 0)
        goto LAB11;

LAB13:    t3 = (t0 + 1672U);
    t5 = *((char **)t3);
    t3 = (t0 + 8876U);
    t1 = ieee_p_3620187407_sub_3890342512_3965413181(IEEE_P_3620187407, t5, t3, 80);
    if (t1 != 0)
        goto LAB17;

LAB18:
LAB12:    goto LAB3;

LAB5:    t5 = (t0 + 1352U);
    t9 = *((char **)t5);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t1 = t11;
    goto LAB7;

LAB8:    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t2 = t8;
    goto LAB10;

LAB11:    xsi_set_current_line(48, ng0);
    t20 = (t0 + 9210);
    xsi_report(t20, 20U, 0);
    goto LAB12;

LAB14:    t16 = (t0 + 1512U);
    t17 = *((char **)t16);
    t16 = (t0 + 8876U);
    t18 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t17, t16);
    t19 = (t18 == 7);
    t12 = t19;
    goto LAB16;

LAB17:    xsi_set_current_line(50, ng0);
    t6 = (t0 + 9230);
    t13 = ((STD_STANDARD) + 384);
    t16 = (t0 + 1672U);
    t17 = *((char **)t16);
    t16 = (t0 + 8876U);
    t14 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t17, t16);
    t20 = xsi_int_to_mem(t14);
    t21 = xsi_string_variable_get_image(t22, t13, t20);
    t25 = ((STD_STANDARD) + 1008);
    t27 = (t26 + 0U);
    t28 = (t27 + 0U);
    *((int *)t28) = 1;
    t28 = (t27 + 4U);
    *((int *)t28) = 18;
    t28 = (t27 + 8U);
    *((int *)t28) = 1;
    t18 = (18 - 1);
    t29 = (t18 * 1);
    t29 = (t29 + 1);
    t28 = (t27 + 12U);
    *((unsigned int *)t28) = t29;
    t23 = xsi_base_array_concat(t23, t24, t25, (char)97, t6, t26, (char)97, t21, t22, (char)101);
    t28 = (t0 + 9248);
    t33 = ((STD_STANDARD) + 1008);
    t35 = (t34 + 0U);
    t36 = (t35 + 0U);
    *((int *)t36) = 1;
    t36 = (t35 + 4U);
    *((int *)t36) = 1;
    t36 = (t35 + 8U);
    *((int *)t36) = 1;
    t37 = (1 - 1);
    t29 = (t37 * 1);
    t29 = (t29 + 1);
    t36 = (t35 + 12U);
    *((unsigned int *)t36) = t29;
    t31 = xsi_base_array_concat(t31, t32, t33, (char)97, t23, t24, (char)97, t28, t34, (char)101);
    t36 = ((STD_STANDARD) + 384);
    t39 = (t0 + 1512U);
    t40 = *((char **)t39);
    t39 = (t0 + 8876U);
    t41 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t40, t39);
    t42 = xsi_int_to_mem(t41);
    t43 = xsi_string_variable_get_image(t38, t36, t42);
    t46 = ((STD_STANDARD) + 1008);
    t44 = xsi_base_array_concat(t44, t45, t46, (char)97, t31, t32, (char)97, t43, t38, (char)101);
    t47 = (t22 + 12U);
    t29 = *((unsigned int *)t47);
    t48 = (18U + t29);
    t49 = (t48 + 1U);
    t50 = (t38 + 12U);
    t51 = *((unsigned int *)t50);
    t52 = (t49 + t51);
    xsi_report(t44, t52, 0);
    goto LAB12;

}


extern void work_a_1949178628_1985558087_init()
{
	static char *pe[] = {(void *)work_a_1949178628_1985558087_p_0,(void *)work_a_1949178628_1985558087_p_1,(void *)work_a_1949178628_1985558087_p_2};
	xsi_register_didat("work_a_1949178628_1985558087", "isim/testbench_isim_beh.exe.sim/work/a_1949178628_1985558087.didat");
	xsi_register_executes(pe);
}
