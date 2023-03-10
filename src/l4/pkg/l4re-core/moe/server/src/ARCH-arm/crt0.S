/**
 * \file
 * \brief	Startup code
 *
 * \date	06/03/2003
 * \author	Frank Mehnert <fm3@os.inf.tu-dresden.de> */

/*
 * (c) 2003-2009 Author(s)
 *     economic rights: Technische Universität Dresden (Germany)
 *
 * This file is part of TUD:OS and distributed under the terms of the
 * GNU General Public License 2.
 * Please see the COPYING-GPL-2 file for details.
 */

#define __ASSEMBLY__
#include <l4/sys/compiler.h>

/*--- .text (program code) -------------------------*/
	.text

	.globl	_real_start
_real_start:
	ldr 	sp, .LCstack
	b	_start

/* Mind the argc that is popped off the stack! */
.LCstack: .word _stack_top-8

/*--- my stack -------------------------------------*/
	.bss
	.balign 16
_stack_bottom:
	.space 0x4000
_stack_top:
