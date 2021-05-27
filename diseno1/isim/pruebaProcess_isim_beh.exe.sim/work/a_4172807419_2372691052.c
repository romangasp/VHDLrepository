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
static const char *ng0 = "C:/Users/Roman Gasparini/Documents/xilink/projectsVhdl/diseno1/pruebaProcess.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_4172807419_2372691052_p_0(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    t1 = (t0 + 2512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(87, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2320);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 5072);
    t5 = (t0 + 2896);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 5076);
    t5 = (t0 + 2960);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t2 = (t0 + 5004U);
    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t5 = (t0 + 5020U);
    t7 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t10, t4, t2, t6, t5);
    t8 = (t10 + 12U);
    t11 = *((unsigned int *)t8);
    t12 = (1U * t11);
    t13 = (4U != t12);
    if (t13 == 1)
        goto LAB8;

LAB9:    t9 = (t0 + 3024);
    t14 = (t9 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t7, 4U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(96, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2320);
    xsi_process_wait(t2, t3);

LAB12:    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_size_not_matching(4U, t12, 0);
    goto LAB9;

LAB10:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 5080);
    t5 = (t0 + 2896);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 5084);
    t5 = (t0 + 2960);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t2 = (t0 + 5004U);
    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t5 = (t0 + 5020U);
    t7 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t10, t4, t2, t6, t5);
    t8 = (t10 + 12U);
    t11 = *((unsigned int *)t8);
    t12 = (1U * t11);
    t13 = (4U != t12);
    if (t13 == 1)
        goto LAB14;

LAB15:    t9 = (t0 + 3024);
    t14 = (t9 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t7, 4U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(101, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2320);
    xsi_process_wait(t2, t3);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB11:    goto LAB10;

LAB13:    goto LAB11;

LAB14:    xsi_size_not_matching(4U, t12, 0);
    goto LAB15;

LAB16:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 5088);
    t5 = (t0 + 2896);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 5092);
    t5 = (t0 + 2960);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t2 = (t0 + 5004U);
    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t5 = (t0 + 5020U);
    t7 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t10, t4, t2, t6, t5);
    t8 = (t10 + 12U);
    t11 = *((unsigned int *)t8);
    t12 = (1U * t11);
    t13 = (4U != t12);
    if (t13 == 1)
        goto LAB20;

LAB21:    t9 = (t0 + 3024);
    t14 = (t9 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t7, 4U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(106, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2320);
    xsi_process_wait(t2, t3);

LAB24:    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_size_not_matching(4U, t12, 0);
    goto LAB21;

LAB22:    xsi_set_current_line(107, ng0);

LAB28:    *((char **)t1) = &&LAB29;
    goto LAB1;

LAB23:    goto LAB22;

LAB25:    goto LAB23;

LAB26:    goto LAB2;

LAB27:    goto LAB26;

LAB29:    goto LAB27;

}


extern void work_a_4172807419_2372691052_init()
{
	static char *pe[] = {(void *)work_a_4172807419_2372691052_p_0};
	xsi_register_didat("work_a_4172807419_2372691052", "isim/pruebaProcess_isim_beh.exe.sim/work/a_4172807419_2372691052.didat");
	xsi_register_executes(pe);
}
