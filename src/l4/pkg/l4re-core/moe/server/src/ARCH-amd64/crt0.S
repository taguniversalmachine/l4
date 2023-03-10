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
	/* Clear the base pointer so that stack backtraces will work.  */
	xor	%rbp,%rbp
	/* Mind the argc that is popped off the stack! */
	mov 	$_stack_top-16, %rsp
	jmp _start
/*--- my stack -------------------------------------*/
	.bss
	.balign	16
_stack_bottom:
	.space 0x8000
_stack_top:

