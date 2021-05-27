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
static const char *ng0 = "C:/Users/Roman Gasparini/Documents/xilink/projectsVhdl/nuevaALU/nuevaALU.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_2032555704_3212880686_p_0(char *t0)
{
    char t12[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    t1 = (t0 + 2672U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5026);
    t5 = xsi_mem_cmp(t2, t3, 2U);
    if (t5 == 1)
        goto LAB5;

LAB9:    t6 = (t0 + 5028);
    t8 = xsi_mem_cmp(t6, t3, 2U);
    if (t8 == 1)
        goto LAB6;

LAB10:    t9 = (t0 + 5030);
    t11 = xsi_mem_cmp(t9, t3, 2U);
    if (t11 == 1)
        goto LAB7;

LAB11:
LAB8:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 3072);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 8U);
    xsi_driver_first_trans_fast_port(t2);

LAB4:    xsi_set_current_line(46, ng0);

LAB19:    t2 = (t0 + 2992);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB20;

LAB1:    return;
LAB5:    xsi_set_current_line(47, ng0);
    t13 = (t0 + 1032U);
    t14 = *((char **)t13);
    t13 = (t0 + 4936U);
    t15 = (t0 + 1192U);
    t16 = *((char **)t15);
    t15 = (t0 + 4952U);
    t17 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t12, t14, t13, t16, t15);
    t18 = (t12 + 12U);
    t19 = *((unsigned int *)t18);
    t20 = (1U * t19);
    t21 = (8U != t20);
    if (t21 == 1)
        goto LAB13;

LAB14:    t22 = (t0 + 3072);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t17, 8U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB4;

LAB6:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 4936U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t4 = (t0 + 4952U);
    t7 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t12, t3, t2, t6, t4);
    t9 = (t12 + 12U);
    t19 = *((unsigned int *)t9);
    t20 = (1U * t19);
    t21 = (8U != t20);
    if (t21 == 1)
        goto LAB15;

LAB16:    t10 = (t0 + 3072);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB4;

LAB7:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 3072);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 8U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB12:;
LAB13:    xsi_size_not_matching(8U, t20, 0);
    goto LAB14;

LAB15:    xsi_size_not_matching(8U, t20, 0);
    goto LAB16;

LAB17:    t3 = (t0 + 2992);
    *((int *)t3) = 0;
    goto LAB2;

LAB18:    goto LAB17;

LAB20:    goto LAB18;

}


extern void work_a_2032555704_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2032555704_3212880686_p_0};
	xsi_register_didat("work_a_2032555704_3212880686", "isim/pruebaNuevaAlu_isim_beh.exe.sim/work/a_2032555704_3212880686.didat");
	xsi_register_executes(pe);
}
