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
static const char *ng0 = "C:/Xilinx/PipelinedMips/flopr.vhd";
extern char *IEEE_P_3499444699;

char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );


static void work_a_2362009499_4148422116_p_0(char *t0)
{
    char t9[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(15, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 992U);
    t4 = xsi_signal_has_event(t2);
    if (t4 == 1)
        goto LAB12;

LAB13:    t1 = (unsigned char)0;

LAB14:    if (t1 != 0)
        goto LAB10;

LAB11:
LAB3:    t2 = (t0 + 3432);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(16, ng0);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t9, 0, 3);
    t10 = (3U != 3U);
    if (t10 == 1)
        goto LAB8;

LAB9:    t11 = (t0 + 3512);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t2, 3U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    xsi_size_not_matching(3U, 3U, 0);
    goto LAB9;

LAB10:    xsi_set_current_line(18, ng0);
    t3 = (t0 + 1352U);
    t11 = *((char **)t3);
    t8 = *((unsigned char *)t11);
    t10 = (t8 == (unsigned char)3);
    if (t10 != 0)
        goto LAB15;

LAB17:
LAB16:    goto LAB3;

LAB12:    t3 = (t0 + 1032U);
    t6 = *((char **)t3);
    t5 = *((unsigned char *)t6);
    t7 = (t5 == (unsigned char)3);
    t1 = t7;
    goto LAB14;

LAB15:    xsi_set_current_line(19, ng0);
    t3 = (t0 + 1672U);
    t12 = *((char **)t3);
    t3 = (t0 + 3512);
    t13 = (t3 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t12, 3U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB16;

}


extern void work_a_2362009499_4148422116_init()
{
	static char *pe[] = {(void *)work_a_2362009499_4148422116_p_0};
	xsi_register_didat("work_a_2362009499_4148422116", "isim/controller_isim_beh.exe.sim/work/a_2362009499_4148422116.didat");
	xsi_register_executes(pe);
}
