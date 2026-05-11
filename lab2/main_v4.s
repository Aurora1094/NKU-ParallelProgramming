	.arch armv8-a
	.file	"main.cc"
	.text
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, %function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1646:
	.cfi_startproc
	mov	w0, w1
	ret
	.cfi_endproc
.LFE1646:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.section	.text._ZN7hnswlib17BaseFilterFunctorclEm,"axG",@progbits,_ZN7hnswlib17BaseFilterFunctorclEm,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib17BaseFilterFunctorclEm
	.type	_ZN7hnswlib17BaseFilterFunctorclEm, %function
_ZN7hnswlib17BaseFilterFunctorclEm:
.LFB3359:
	.cfi_startproc
	mov	w0, 1
	ret
	.cfi_endproc
.LFE3359:
	.size	_ZN7hnswlib17BaseFilterFunctorclEm, .-_ZN7hnswlib17BaseFilterFunctorclEm
	.text
	.align	2
	.p2align 4,,11
	.type	_ZN7hnswlibL20InnerProductDistanceEPKvS1_S1_, %function
_ZN7hnswlibL20InnerProductDistanceEPKvS1_S1_:
.LFB3401:
	.cfi_startproc
	ldr	x4, [x2]
	cbz	x4, .L7
	movi	v1.2s, #0
	mov	x2, 0
	mov	w3, 0
	.p2align 3,,7
.L6:
	ldr	s2, [x0, x2, lsl 2]
	add	w3, w3, 1
	ldr	s0, [x1, x2, lsl 2]
	uxtw	x2, w3
	fmadd	s1, s2, s0, s1
	cmp	x4, x2
	bhi	.L6
	fmov	s0, 1.0e+0
	fsub	s0, s0, s1
	ret
	.p2align 2,,3
.L7:
	fmov	s0, 1.0e+0
	ret
	.cfi_endproc
.LFE3401:
	.size	_ZN7hnswlibL20InnerProductDistanceEPKvS1_S1_, .-_ZN7hnswlibL20InnerProductDistanceEPKvS1_S1_
	.section	.text._ZN7hnswlib17InnerProductSpace13get_data_sizeEv,"axG",@progbits,_ZN7hnswlib17InnerProductSpace13get_data_sizeEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib17InnerProductSpace13get_data_sizeEv
	.type	_ZN7hnswlib17InnerProductSpace13get_data_sizeEv, %function
_ZN7hnswlib17InnerProductSpace13get_data_sizeEv:
.LFB3405:
	.cfi_startproc
	ldr	x0, [x0, 16]
	ret
	.cfi_endproc
.LFE3405:
	.size	_ZN7hnswlib17InnerProductSpace13get_data_sizeEv, .-_ZN7hnswlib17InnerProductSpace13get_data_sizeEv
	.section	.text._ZN7hnswlib17InnerProductSpace13get_dist_funcEv,"axG",@progbits,_ZN7hnswlib17InnerProductSpace13get_dist_funcEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib17InnerProductSpace13get_dist_funcEv
	.type	_ZN7hnswlib17InnerProductSpace13get_dist_funcEv, %function
_ZN7hnswlib17InnerProductSpace13get_dist_funcEv:
.LFB3406:
	.cfi_startproc
	ldr	x0, [x0, 8]
	ret
	.cfi_endproc
.LFE3406:
	.size	_ZN7hnswlib17InnerProductSpace13get_dist_funcEv, .-_ZN7hnswlib17InnerProductSpace13get_dist_funcEv
	.section	.text._ZN7hnswlib17InnerProductSpace19get_dist_func_paramEv,"axG",@progbits,_ZN7hnswlib17InnerProductSpace19get_dist_func_paramEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib17InnerProductSpace19get_dist_func_paramEv
	.type	_ZN7hnswlib17InnerProductSpace19get_dist_func_paramEv, %function
_ZN7hnswlib17InnerProductSpace19get_dist_func_paramEv:
.LFB3407:
	.cfi_startproc
	add	x0, x0, 24
	ret
	.cfi_endproc
.LFE3407:
	.size	_ZN7hnswlib17InnerProductSpace19get_dist_func_paramEv, .-_ZN7hnswlib17InnerProductSpace19get_dist_func_paramEv
	.section	.text._ZN7hnswlib17InnerProductSpaceD2Ev,"axG",@progbits,_ZN7hnswlib17InnerProductSpaceD5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib17InnerProductSpaceD2Ev
	.type	_ZN7hnswlib17InnerProductSpaceD2Ev, %function
_ZN7hnswlib17InnerProductSpaceD2Ev:
.LFB3409:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE3409:
	.size	_ZN7hnswlib17InnerProductSpaceD2Ev, .-_ZN7hnswlib17InnerProductSpaceD2Ev
	.weak	_ZN7hnswlib17InnerProductSpaceD1Ev
	.set	_ZN7hnswlib17InnerProductSpaceD1Ev,_ZN7hnswlib17InnerProductSpaceD2Ev
	.section	.text._ZN7hnswlib17InnerProductSpaceD0Ev,"axG",@progbits,_ZN7hnswlib17InnerProductSpaceD5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib17InnerProductSpaceD0Ev
	.type	_ZN7hnswlib17InnerProductSpaceD0Ev, %function
_ZN7hnswlib17InnerProductSpaceD0Ev:
.LFB3411:
	.cfi_startproc
	b	_ZdlPv
	.cfi_endproc
.LFE3411:
	.size	_ZN7hnswlib17InnerProductSpaceD0Ev, .-_ZN7hnswlib17InnerProductSpaceD0Ev
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"void hnswlib::HierarchicalNSW<dist_t>::unmarkDeletedInternal(hnswlib::tableint) [with dist_t = float; hnswlib::tableint = unsigned int]"
	.align	3
.LC1:
	.string	"hnswlib/hnswlib/hnswalg.h"
	.align	3
.LC2:
	.string	"internalId < cur_element_count"
	.text
	.align	2
	.p2align 4,,11
	.type	_ZN7hnswlib15HierarchicalNSWIfE21unmarkDeletedInternalEj.part.0, %function
_ZN7hnswlib15HierarchicalNSWIfE21unmarkDeletedInternalEj.part.0:
.LFB12545:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	adrp	x3, .LC0
	adrp	x1, .LC1
	mov	x29, sp
	adrp	x0, .LC2
	add	x3, x3, :lo12:.LC0
	add	x1, x1, :lo12:.LC1
	add	x0, x0, :lo12:.LC2
	mov	w2, 916
	bl	__assert_fail
	.cfi_endproc
.LFE12545:
	.size	_ZN7hnswlib15HierarchicalNSWIfE21unmarkDeletedInternalEj.part.0, .-_ZN7hnswlib15HierarchicalNSWIfE21unmarkDeletedInternalEj.part.0
	.align	2
	.p2align 4,,11
	.type	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0, %function
_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0:
.LFB12592:
	.cfi_startproc
	sub	x4, x1, #1
	add	x4, x4, x4, lsr 63
	asr	x4, x4, 1
	cmp	x1, x2
	ble	.L28
.L17:
	lsl	x5, x4, 4
	add	x6, x0, x5
	ldr	s1, [x0, x5]
	fcmpe	s1, s0
	bmi	.L19
	bgt	.L28
	ldr	x8, [x6, 8]
	cmp	x8, x3
	bcc	.L22
.L28:
	add	x6, x0, x1, lsl 4
.L18:
	str	s0, [x6]
	str	x3, [x6, 8]
	ret
	.p2align 2,,3
.L19:
	ldr	x8, [x6, 8]
.L22:
	lsl	x7, x1, 4
	sub	x5, x4, #1
	add	x9, x0, x7
	mov	x1, x4
	add	x5, x5, x5, lsr 63
	str	s1, [x0, x7]
	str	x8, [x9, 8]
	asr	x4, x5, 1
	cmp	x1, x2
	bgt	.L17
	b	.L18
	.cfi_endproc
.LFE12592:
	.size	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0, .-_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	.align	2
	.p2align 4,,11
	.type	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0, %function
_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0:
.LFB12555:
	.cfi_startproc
	sub	x4, x1, #1
	lsr	x9, x3, 32
	mov	w10, w9
	lsr	w3, w3, 0
	add	x4, x4, x4, lsr 63
	fmov	d0, x3
	asr	x4, x4, 1
	cmp	x1, x2
	ble	.L41
.L30:
	lsl	x3, x4, 3
	add	x5, x0, x3
	ldr	s1, [x0, x3]
	fcmpe	s0, s1
	bgt	.L32
	bmi	.L41
	ldr	w7, [x5, 4]
	cmp	w10, w7
	bhi	.L35
.L41:
	add	x5, x0, x1, lsl 3
.L31:
	str	s0, [x5]
	str	w9, [x5, 4]
	ret
	.p2align 2,,3
.L32:
	ldr	w7, [x5, 4]
.L35:
	lsl	x6, x1, 3
	sub	x3, x4, #1
	add	x8, x0, x6
	mov	x1, x4
	add	x3, x3, x3, lsr 63
	str	s1, [x0, x6]
	str	w7, [x8, 4]
	asr	x4, x3, 1
	cmp	x2, x1
	blt	.L30
	b	.L31
	.cfi_endproc
.LFE12555:
	.size	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0, .-_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	.section	.rodata.str1.8
	.align	3
.LC3:
	.string	"basic_string::_M_construct null not valid"
	.text
	.align	2
	.p2align 4,,11
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0:
.LFB12563:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	cmp	x2, 0
	ccmp	x1, 0, 0, ne
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	beq	.L53
	sub	x19, x2, x1
	str	x19, [sp, 56]
	mov	x21, x1
	mov	x20, x0
	cmp	x19, 15
	bhi	.L54
	ldr	x0, [x0]
	cmp	x19, 1
	bne	.L46
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [x20]
	ldr	x19, [sp, 56]
	str	x19, [x20, 8]
	strb	wzr, [x0, x19]
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L46:
	.cfi_restore_state
	cbnz	x19, .L45
	str	x19, [x20, 8]
	strb	wzr, [x0, x19]
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L54:
	.cfi_restore_state
	add	x1, sp, 56
	mov	x2, 0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	str	x0, [x20]
	ldr	x1, [sp, 56]
	str	x1, [x20, 16]
.L45:
	mov	x2, x19
	mov	x1, x21
	bl	memcpy
	ldr	x0, [x20]
	ldr	x19, [sp, 56]
	str	x19, [x20, 8]
	strb	wzr, [x0, x19]
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L53:
	.cfi_restore_state
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	_ZSt19__throw_logic_errorPKc
	.cfi_endproc
.LFE12563:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
	.align	2
	.p2align 4,,11
	.type	_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0, %function
_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0:
.LFB12553:
	.cfi_startproc
	cbz	x0, .L116
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	mov	x23, x0
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
.L73:
	ldr	x24, [x23, 24]
	cbz	x24, .L57
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -24
	.cfi_offset 25, -32
.L72:
	ldr	x25, [x24, 24]
	cbz	x25, .L58
.L71:
	ldr	x26, [x25, 24]
	cbz	x26, .L59
.L70:
	ldr	x19, [x26, 24]
	cbz	x19, .L60
.L69:
	ldr	x20, [x19, 24]
	cbz	x20, .L61
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -56
	.cfi_offset 21, -64
	str	x27, [sp, 80]
	.cfi_offset 27, -16
.L68:
	ldr	x27, [x20, 24]
	cbz	x27, .L62
.L67:
	ldr	x21, [x27, 24]
	cbz	x21, .L63
.L66:
	ldr	x22, [x21, 24]
	cbz	x22, .L64
.L65:
	ldr	x0, [x22, 24]
	bl	_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0
	mov	x0, x22
	ldr	x22, [x22, 16]
	bl	_ZdlPv
	cbnz	x22, .L65
.L64:
	ldr	x22, [x21, 16]
	mov	x0, x21
	bl	_ZdlPv
	cbz	x22, .L63
	mov	x21, x22
	b	.L66
.L117:
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldr	x27, [sp, 80]
	.cfi_restore 27
.L61:
	mov	x0, x19
	ldr	x20, [x19, 16]
	bl	_ZdlPv
	cbz	x20, .L60
	mov	x19, x20
	b	.L69
	.p2align 2,,3
.L62:
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 27, -16
	ldr	x21, [x20, 16]
	mov	x0, x20
	bl	_ZdlPv
	cbz	x21, .L117
	mov	x20, x21
	b	.L68
.L60:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 27
	ldr	x19, [x26, 16]
	mov	x0, x26
	bl	_ZdlPv
	cbz	x19, .L59
	mov	x26, x19
	b	.L70
	.p2align 2,,3
.L63:
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 27, -16
	ldr	x21, [x27, 16]
	mov	x0, x27
	bl	_ZdlPv
	cbz	x21, .L62
	mov	x27, x21
	b	.L67
.L59:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 27
	ldr	x19, [x25, 16]
	mov	x0, x25
	bl	_ZdlPv
	cbz	x19, .L58
	mov	x25, x19
	b	.L71
.L58:
	ldr	x19, [x24, 16]
	mov	x0, x24
	bl	_ZdlPv
	cbz	x19, .L118
	mov	x24, x19
	b	.L72
.L118:
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
.L57:
	mov	x0, x23
	ldr	x19, [x23, 16]
	bl	_ZdlPv
	cbz	x19, .L119
	mov	x23, x19
	b	.L73
.L119:
	ldp	x19, x20, [sp, 16]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L116:
	ret
	.cfi_endproc
.LFE12553:
	.size	_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0, .-_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0
	.section	.rodata._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.str1.8,"aMS",@progbits,1
	.align	3
.LC4:
	.string	"basic_string::append"
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
	.type	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_, %function
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_:
.LFB10598:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10598
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	add	x22, x8, 16
	ldr	x20, [x0, 8]
	str	x23, [sp, 48]
	.cfi_offset 23, -32
	str	x22, [x8]
	ldr	x23, [x0]
	cmn	x23, x20
	ccmp	x23, 0, 0, ne
	beq	.L134
	str	x20, [sp, 72]
	mov	x19, x8
	mov	x21, x1
	cmp	x20, 15
	bhi	.L135
	cmp	x20, 1
	bne	.L124
	ldrb	w1, [x23]
	mov	x0, x22
	strb	w1, [x8, 16]
.L125:
	str	x20, [x19, 8]
	strb	wzr, [x0, x20]
	mov	x0, x21
	bl	strlen
	mov	x2, x0
	ldr	x1, [x19, 8]
	mov	x0, 4611686018427387903
	sub	x0, x0, x1
	cmp	x2, x0
	bhi	.L136
	mov	x1, x21
	mov	x0, x19
.LEHB0:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE0:
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldr	x23, [sp, 48]
	ldp	x29, x30, [sp], 80
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L124:
	.cfi_restore_state
	mov	x0, x22
	cbz	x20, .L125
	b	.L123
	.p2align 2,,3
.L135:
	add	x1, sp, 72
	mov	x0, x8
	mov	x2, 0
.LEHB1:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
.LEHE1:
	ldr	x1, [sp, 72]
	str	x0, [x19]
	str	x1, [x19, 16]
.L123:
	mov	x2, x20
	mov	x1, x23
	bl	memcpy
	ldr	x0, [x19]
	ldr	x20, [sp, 72]
	b	.L125
.L136:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
.LEHB2:
	bl	_ZSt20__throw_length_errorPKc
.LEHE2:
.L134:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
.LEHB3:
	bl	_ZSt19__throw_logic_errorPKc
.L130:
	ldr	x1, [x19]
	mov	x19, x0
	cmp	x1, x22
	beq	.L128
	mov	x0, x1
	bl	_ZdlPv
.L128:
	mov	x0, x19
	bl	_Unwind_Resume
.LEHE3:
	.cfi_endproc
.LFE10598:
	.global	__gxx_personality_v0
	.section	.gcc_except_table._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,"aG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,comdat
.LLSDA10598:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10598-.LLSDACSB10598
.LLSDACSB10598:
	.uleb128 .LEHB0-.LFB10598
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L130-.LFB10598
	.uleb128 0
	.uleb128 .LEHB1-.LFB10598
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB10598
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L130-.LFB10598
	.uleb128 0
	.uleb128 .LEHB3-.LFB10598
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE10598:
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,comdat
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_, .-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
	.section	.text._ZNSt11unique_lockISt5mutexE6unlockEv,"axG",@progbits,_ZNSt11unique_lockISt5mutexE6unlockEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt11unique_lockISt5mutexE6unlockEv
	.type	_ZNSt11unique_lockISt5mutexE6unlockEv, %function
_ZNSt11unique_lockISt5mutexE6unlockEv:
.LFB10922:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	ldrb	w0, [x0, 8]
	cbz	w0, .L148
	ldr	x0, [x19]
	cbz	x0, .L137
	adrp	x1, .LC5
	ldr	x1, [x1, #:lo12:.LC5]
	cbz	x1, .L140
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L140:
	strb	wzr, [x19, 8]
.L137:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
.L148:
	.cfi_restore_state
	mov	w0, 1
	bl	_ZSt20__throw_system_errori
	.cfi_endproc
.LFE10922:
	.size	_ZNSt11unique_lockISt5mutexE6unlockEv, .-_ZNSt11unique_lockISt5mutexE6unlockEv
	.section	.text._ZN7hnswlib15VisitedListPool18getFreeVisitedListEv,"axG",@progbits,_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv
	.type	_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv, %function
_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv:
.LFB4141:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4141
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	adrp	x1, .LC5
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	ldr	x21, [x1, #:lo12:.LC5]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x19, x0
	add	x0, x0, 80
	str	x0, [sp, 48]
	strb	wzr, [sp, 56]
	cbz	x21, .L150
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L182
.L150:
	mov	w1, 1
	strb	w1, [sp, 56]
	ldp	x0, x3, [x19, 48]
	add	x22, x19, 16
	ldr	x4, [x22, 24]
	ldr	x1, [x19, 72]
	ldr	x2, [x19, 16]
	sub	x1, x1, x4
	ldr	x4, [x22, 16]
	sub	x0, x0, x3
	asr	x1, x1, 3
	sub	x1, x1, #1
	asr	x0, x0, 3
	sub	x3, x4, x2
	add	x1, x0, x1, lsl 6
	add	x0, x1, x3, asr 3
	cbnz	x0, .L183
	mov	x0, 24
.LEHB4:
	bl	_Znwm
.LEHE4:
	mov	x20, x0
	ldr	w1, [x19, 128]
	mov	w2, -1
	strh	w2, [x0]
	str	w1, [x20, 16]
	ubfiz	x0, x1, 1, 32
.LEHB5:
	bl	_Znam
.LEHE5:
	str	x0, [x20, 8]
.L154:
	ldrb	w0, [sp, 56]
	cbnz	w0, .L153
.L155:
	ldrh	w0, [x20]
	add	w0, w0, 1
	and	w0, w0, 65535
	strh	w0, [x20]
	cbz	w0, .L184
.L149:
	mov	x0, x20
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L183:
	.cfi_restore_state
	sub	x4, x4, #8
	ldr	x20, [x2]
	cmp	x2, x4
	beq	.L152
	add	x2, x2, 8
	str	x2, [x19, 16]
.L153:
	ldr	x0, [sp, 48]
	cbz	x0, .L155
	cbz	x21, .L155
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	ldrh	w0, [x20]
	add	w0, w0, 1
	and	w0, w0, 65535
	strh	w0, [x20]
	cbnz	w0, .L149
.L184:
	ldr	x0, [x20, 8]
	mov	w1, 0
	ldr	w2, [x20, 16]
	lsl	x2, x2, 1
	bl	memset
	ldrh	w0, [x20]
	ldp	x21, x22, [sp, 32]
	add	w0, w0, 1
	strh	w0, [x20]
	mov	x0, x20
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L152:
	.cfi_restore_state
	ldr	x0, [x19, 24]
	bl	_ZdlPv
	ldr	x0, [x19, 40]
	add	x1, x0, 8
	ldr	x0, [x0, 8]
	str	x0, [x22, 8]
	str	x1, [x22, 24]
	add	x1, x0, 512
	str	x1, [x22, 16]
	str	x0, [x19, 16]
	b	.L154
.L182:
.LEHB6:
	bl	_ZSt20__throw_system_errori
.LEHE6:
.L161:
	mov	x19, x0
	b	.L159
.L162:
	mov	x19, x0
	mov	x0, x20
	bl	_ZdlPv
.L159:
	ldrb	w0, [sp, 56]
	cbz	w0, .L160
	add	x0, sp, 48
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L160:
	mov	x0, x19
.LEHB7:
	bl	_Unwind_Resume
.LEHE7:
	.cfi_endproc
.LFE4141:
	.section	.gcc_except_table._ZN7hnswlib15VisitedListPool18getFreeVisitedListEv,"aG",@progbits,_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv,comdat
.LLSDA4141:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4141-.LLSDACSB4141
.LLSDACSB4141:
	.uleb128 .LEHB4-.LFB4141
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L161-.LFB4141
	.uleb128 0
	.uleb128 .LEHB5-.LFB4141
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L162-.LFB4141
	.uleb128 0
	.uleb128 .LEHB6-.LFB4141
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB4141
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE4141:
	.section	.text._ZN7hnswlib15VisitedListPool18getFreeVisitedListEv,"axG",@progbits,_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv,comdat
	.size	_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv, .-_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv
	.section	.text._ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev,"axG",@progbits,_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev
	.type	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev, %function
_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev:
.LFB11040:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	mov	x20, x0
	ldr	x19, [x0, 16]
	cbz	x19, .L186
	.p2align 3,,7
.L187:
	mov	x0, x19
	ldr	x19, [x19]
	bl	_ZdlPv
	cbnz	x19, .L187
.L186:
	ldp	x0, x2, [x20]
	mov	w1, 0
	lsl	x2, x2, 3
	bl	memset
	mov	x1, x20
	ldr	x0, [x1], 48
	stp	xzr, xzr, [x20, 16]
	cmp	x0, x1
	beq	.L185
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	_ZdlPv
	.p2align 2,,3
.L185:
	.cfi_restore_state
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11040:
	.size	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev, .-_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev
	.weak	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED1Ev
	.set	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED1Ev,_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev
	.section	.text._ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev,"axG",@progbits,_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev
	.type	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev, %function
_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev:
.LFB11052:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	mov	x20, x0
	ldr	x19, [x0, 16]
	cbz	x19, .L195
	.p2align 3,,7
.L196:
	mov	x0, x19
	ldr	x19, [x19]
	bl	_ZdlPv
	cbnz	x19, .L196
.L195:
	ldp	x0, x2, [x20]
	mov	w1, 0
	lsl	x2, x2, 3
	bl	memset
	mov	x1, x20
	ldr	x0, [x1], 48
	stp	xzr, xzr, [x20, 16]
	cmp	x0, x1
	beq	.L194
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	_ZdlPv
	.p2align 2,,3
.L194:
	.cfi_restore_state
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11052:
	.size	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev, .-_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev
	.weak	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	.set	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev,_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev
	.section	.text._ZN7hnswlib15HierarchicalNSWIfED2Ev,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfED2Ev
	.type	_ZN7hnswlib15HierarchicalNSWIfED2Ev, %function
_ZN7hnswlib15HierarchicalNSWIfED2Ev:
.LFB12325:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	adrp	x1, _ZTVN7hnswlib15HierarchicalNSWIfEE+16
	add	x1, x1, :lo12:_ZTVN7hnswlib15HierarchicalNSWIfEE+16
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x22, x0
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	add	x20, x0, 16
	mov	w19, 0
	ldr	x0, [x0, 256]
	str	x23, [sp, 48]
	.cfi_offset 23, -16
	str	x1, [x22]
	bl	free
	str	xzr, [x22, 256]
	.p2align 3,,7
.L206:
	ldar	x0, [x20]
	uxtw	x1, w19
	add	w19, w19, 1
	cmp	x1, x0
	bcs	.L204
.L262:
	ldr	x0, [x22, 272]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	ble	.L206
	ldr	x0, [x22, 264]
	ldr	x0, [x0, x1, lsl 3]
	bl	free
	ldar	x0, [x20]
	uxtw	x1, w19
	add	w19, w19, 1
	cmp	x1, x0
	bcc	.L262
.L204:
	ldr	x0, [x22, 264]
	bl	free
	str	xzr, [x22, 264]
	stlr	xzr, [x20]
	ldr	x23, [x22, 112]
	str	xzr, [x22, 112]
	cbz	x23, .L207
	add	x20, x23, 48
	add	x19, x23, 16
	b	.L211
	.p2align 2,,3
.L261:
	str	x0, [x23, 16]
	cbnz	x21, .L263
.L211:
	ldp	x3, x21, [x19, 16]
	ldp	x2, x0, [x20]
	ldr	x6, [x20, 24]
	ldr	x4, [x19]
	sub	x1, x6, x21
	sub	x2, x2, x0
	asr	x1, x1, 3
	sub	x5, x3, x4
	sub	x1, x1, #1
	asr	x2, x2, 3
	sub	x3, x3, #8
	add	x0, x4, 8
	add	x1, x2, x1, lsl 6
	add	x1, x1, x5, asr 3
	cbz	x1, .L208
	ldr	x21, [x4]
	cmp	x4, x3
	bne	.L261
	ldr	x0, [x23, 24]
	bl	_ZdlPv
	ldr	x0, [x23, 40]
	add	x1, x0, 8
	ldr	x0, [x0, 8]
	str	x0, [x19, 8]
	str	x1, [x19, 24]
	add	x1, x0, 512
	str	x1, [x19, 16]
	str	x0, [x23, 16]
	cbz	x21, .L211
	.p2align 3,,7
.L263:
	ldr	x0, [x21, 8]
	cbz	x0, .L212
	bl	_ZdaPv
.L212:
	mov	x0, x21
	bl	_ZdlPv
	b	.L211
	.p2align 2,,3
.L208:
	ldr	x0, [x23]
	cbz	x0, .L214
	add	x19, x6, 8
	cmp	x21, x19
	bcs	.L215
	.p2align 3,,7
.L216:
	ldr	x0, [x21], 8
	bl	_ZdlPv
	cmp	x19, x21
	bhi	.L216
	ldr	x0, [x23]
.L215:
	bl	_ZdlPv
.L214:
	mov	x0, x23
	bl	_ZdlPv
.L207:
	add	x0, x22, 512
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	add	x0, x22, 368
	bl	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED1Ev
	ldr	x0, [x22, 272]
	cbz	x0, .L217
	bl	_ZdlPv
.L217:
	ldr	x0, [x22, 192]
	cbz	x0, .L218
	bl	_ZdlPv
.L218:
	ldr	x0, [x22, 120]
	cbz	x0, .L219
	bl	_ZdlPv
.L219:
	ldr	x22, [x22, 112]
	cbz	x22, .L203
	add	x20, x22, 48
	add	x19, x22, 16
	.p2align 3,,7
.L224:
	ldp	x1, x2, [x20]
	ldr	x21, [x19, 24]
	ldr	x5, [x20, 24]
	sub	x1, x1, x2
	sub	x0, x5, x21
	ldr	x3, [x19]
	asr	x0, x0, 3
	ldr	x2, [x19, 16]
	sub	x0, x0, #1
	asr	x1, x1, 3
	add	x6, x3, 8
	sub	x4, x2, x3
	add	x0, x1, x0, lsl 6
	sub	x2, x2, #8
	add	x0, x0, x4, asr 3
	cbz	x0, .L221
	ldr	x21, [x3]
	cmp	x3, x2
	beq	.L222
	str	x6, [x22, 16]
	cbz	x21, .L224
.L264:
	ldr	x0, [x21, 8]
	cbz	x0, .L225
	bl	_ZdaPv
.L225:
	mov	x0, x21
	bl	_ZdlPv
	b	.L224
	.p2align 2,,3
.L222:
	ldr	x0, [x22, 24]
	bl	_ZdlPv
	ldr	x0, [x22, 40]
	add	x1, x0, 8
	ldr	x0, [x0, 8]
	str	x0, [x19, 8]
	str	x1, [x19, 24]
	add	x1, x0, 512
	str	x1, [x19, 16]
	str	x0, [x22, 16]
	cbz	x21, .L224
	b	.L264
	.p2align 2,,3
.L221:
	ldr	x0, [x22]
	cbz	x0, .L227
	add	x19, x5, 8
	cmp	x21, x19
	bcs	.L228
	.p2align 3,,7
.L229:
	ldr	x0, [x21], 8
	bl	_ZdlPv
	cmp	x19, x21
	bhi	.L229
	ldr	x0, [x22]
.L228:
	bl	_ZdlPv
.L227:
	mov	x0, x22
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldr	x23, [sp, 48]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	_ZdlPv
	.p2align 2,,3
.L203:
	.cfi_restore_state
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldr	x23, [sp, 48]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE12325:
	.size	_ZN7hnswlib15HierarchicalNSWIfED2Ev, .-_ZN7hnswlib15HierarchicalNSWIfED2Ev
	.weak	_ZN7hnswlib15HierarchicalNSWIfED1Ev
	.set	_ZN7hnswlib15HierarchicalNSWIfED1Ev,_ZN7hnswlib15HierarchicalNSWIfED2Ev
	.section	.text._ZN7hnswlib15HierarchicalNSWIfED0Ev,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfED0Ev
	.type	_ZN7hnswlib15HierarchicalNSWIfED0Ev, %function
_ZN7hnswlib15HierarchicalNSWIfED0Ev:
.LFB12327:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	bl	_ZN7hnswlib15HierarchicalNSWIfED1Ev
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	b	_ZdlPv
	.cfi_endproc
.LFE12327:
	.size	_ZN7hnswlib15HierarchicalNSWIfED0Ev, .-_ZN7hnswlib15HierarchicalNSWIfED0Ev
	.section	.text._ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv,"axG",@progbits,_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	.type	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv, %function
_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv:
.LFB11360:
	.cfi_startproc
	ldp	x1, x2, [x0]
	sub	x3, x2, x1
	sub	x9, x2, #8
	cmp	x3, 8
	bgt	.L289
	str	x9, [x0, 8]
	ret
	.p2align 2,,3
.L289:
	sub	x4, x9, x1
	ldr	s0, [x1]
	ldr	w5, [x1, 4]
	asr	x11, x4, 3
	ldr	w10, [x2, -4]
	sub	x3, x11, #1
	str	w5, [x2, -4]
	ldr	s2, [x2, -8]
	and	x12, x11, 1
	add	x8, x3, x3, lsr 63
	str	s0, [x2, -8]
	asr	x8, x8, 1
	cmp	x4, 16
	ble	.L269
	mov	x4, 0
	.p2align 3,,7
.L273:
	add	x2, x4, 1
	lsl	x3, x2, 1
	lsl	x2, x2, 4
	sub	x6, x3, #1
	add	x7, x1, x2
	lsl	x5, x6, 3
	ldr	s0, [x1, x2]
	add	x2, x1, x5
	ldr	s1, [x1, x5]
	fcmpe	s0, s1
	bmi	.L284
.L270:
	lsl	x2, x4, 3
	ldr	w6, [x7, 4]
	add	x5, x1, x2
	mov	x4, x3
	str	s0, [x1, x2]
	str	w6, [x5, 4]
	cmp	x3, x8
	blt	.L273
	lsl	x6, x3, 3
	cbz	x12, .L290
.L276:
	sub	x3, x3, #1
	asr	x4, x3, 1
	.p2align 3,,7
.L279:
	lsl	x5, x4, 3
	sub	x2, x4, #1
	add	x8, x1, x5
	add	x7, x1, x6
	add	x2, x2, x2, lsr 63
	ldr	s0, [x1, x5]
	asr	x2, x2, 1
	fcmpe	s2, s0
	bgt	.L285
.L274:
	str	w10, [x7, 4]
	str	s2, [x7]
.L292:
	str	x9, [x0, 8]
	ret
	.p2align 2,,3
.L285:
	ldr	w3, [x8, 4]
	str	s0, [x1, x6]
	lsl	x6, x4, 3
	str	w3, [x7, 4]
	cbz	x4, .L291
	mov	x4, x2
	b	.L279
	.p2align 2,,3
.L284:
	fmov	s0, s1
	mov	x7, x2
	mov	x3, x6
	b	.L270
	.p2align 2,,3
.L290:
	sub	x11, x11, #2
	add	x11, x11, x11, lsr 63
	cmp	x3, x11, asr 1
	beq	.L275
	sub	x4, x3, #1
	lsl	x6, x3, 3
	asr	x4, x4, 1
	b	.L279
	.p2align 2,,3
.L291:
	mov	x7, x8
	str	s2, [x7]
	str	w10, [x7, 4]
	b	.L292
	.p2align 2,,3
.L269:
	mov	x7, x1
	cbnz	x12, .L274
	cmp	x3, 2
	bhi	.L274
	mov	x3, 0
	.p2align 3,,7
.L275:
	lsl	x3, x3, 1
	add	x3, x3, 1
	lsl	x6, x3, 3
	add	x2, x1, x6
	ldr	s0, [x1, x6]
	ldr	w2, [x2, 4]
	str	w2, [x7, 4]
	str	s0, [x7]
	b	.L276
	.cfi_endproc
.LFE11360:
	.size	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv, .-_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji
	.type	_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji, %function
_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji:
.LFB11379:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11379
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	w3, 48
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	mov	x21, x0
	str	x0, [sp, 80]
	uxtw	x0, w1
	str	w1, [sp, 92]
	ldr	x1, [x21, 192]
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -64
	.cfi_offset 24, -56
	uxtw	x23, w0
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -88
	.cfi_offset 19, -96
	umaddl	x0, w0, w3, x1
	str	x0, [sp, 96]
	strb	wzr, [sp, 104]
	cbz	x0, .L324
	adrp	x1, .LC5
	mov	x20, x8
	mov	w19, w2
	ldr	x22, [x1, #:lo12:.LC5]
	cbz	x22, .L295
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L325
.L295:
	mov	w0, 1
	strb	w0, [sp, 104]
	cbz	w19, .L326
	ldr	x0, [x21, 264]
	sub	w19, w19, #1
	ldr	x1, [x21, 32]
	sxtw	x19, w19
	ldr	x0, [x0, x23, lsl 3]
	madd	x19, x19, x1, x0
	ldrh	w21, [x19]
	stp	xzr, xzr, [x20]
	str	xzr, [x20, 16]
	cbz	w21, .L298
.L328:
	ubfiz	x21, x21, 2, 16
	str	x25, [sp, 64]
	.cfi_offset 25, -48
	mov	x0, x21
.LEHB8:
	bl	_Znwm
.LEHE8:
	add	x24, x0, x21
	str	x0, [x20]
	str	x24, [x20, 16]
	mov	x2, x21
	mov	x23, x0
	mov	w1, 0
	bl	memset
	ldrb	w25, [sp, 104]
	str	x24, [x20, 8]
	mov	x0, x23
	mov	x2, x21
	add	x1, x19, 4
	bl	memcpy
	cbnz	w25, .L327
	ldr	x25, [sp, 64]
	.cfi_restore 25
.L293:
	mov	x0, x20
	ldp	x19, x20, [sp, 16]
	.cfi_remember_state
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L326:
	.cfi_restore_state
	ldr	x1, [x21, 24]
	ldr	x0, [x21, 240]
	ldr	x19, [x21, 256]
	madd	x23, x23, x1, x0
	add	x19, x19, x23
	ldrh	w21, [x19]
	stp	xzr, xzr, [x20]
	str	xzr, [x20, 16]
	cbnz	w21, .L328
.L298:
	stp	xzr, xzr, [x20]
	str	xzr, [x20, 16]
.L302:
	ldr	x0, [sp, 96]
	cbz	x0, .L293
	cbz	x22, .L293
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	mov	x0, x20
	ldp	x19, x20, [sp, 16]
	.cfi_remember_state
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_def_cfa_offset 0
	ret
.L324:
	.cfi_restore_state
	mov	w0, 1
	str	x25, [sp, 64]
	.cfi_offset 25, -48
.LEHB9:
	bl	_ZSt20__throw_system_errori
.L327:
	ldr	x25, [sp, 64]
	.cfi_restore 25
	b	.L302
.L325:
	str	x25, [sp, 64]
	.cfi_offset 25, -48
	bl	_ZSt20__throw_system_errori
.LEHE9:
.L303:
	ldrb	w1, [sp, 104]
	mov	x19, x0
	cbz	w1, .L301
	add	x0, sp, 96
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L301:
	mov	x0, x19
.LEHB10:
	bl	_Unwind_Resume
.LEHE10:
	.cfi_endproc
.LFE11379:
	.section	.gcc_except_table._ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji,"aG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji,comdat
.LLSDA11379:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11379-.LLSDACSB11379
.LLSDACSB11379:
	.uleb128 .LEHB8-.LFB11379
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L303-.LFB11379
	.uleb128 0
	.uleb128 .LEHB9-.LFB11379
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB11379
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE11379:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji, .-_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, %function
_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB10793:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10793
	sub	sp, sp, #608
	.cfi_def_cfa_offset 608
	stp	x29, x30, [sp]
	.cfi_offset 29, -608
	.cfi_offset 30, -600
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -592
	.cfi_offset 20, -584
	mov	x19, x1
	mov	x20, x0
	add	x0, sp, 344
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	.cfi_offset 21, -576
	.cfi_offset 22, -568
	.cfi_offset 23, -560
	.cfi_offset 24, -552
	adrp	x23, _ZTVSt9basic_iosIcSt11char_traitsIcEE+16
	add	x23, x23, :lo12:_ZTVSt9basic_iosIcSt11char_traitsIcEE+16
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -544
	.cfi_offset 26, -536
	bl	_ZNSt8ios_baseC2Ev
	adrp	x2, _ZTTSt14basic_ofstreamIcSt11char_traitsIcEE
	add	x2, x2, :lo12:_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE
	strh	wzr, [sp, 568]
	add	x4, sp, 576
	add	x0, sp, 88
	mov	x1, 0
	ldp	x22, x26, [x2, 8]
	add	x2, sp, 88
	ldr	x3, [x22, -24]
	stp	xzr, xzr, [x4]
	stp	xzr, xzr, [x4, 16]
	add	x0, x0, x3
	str	x22, [sp, 88]
	str	x23, [sp, 344]
	str	xzr, [sp, 560]
	str	x26, [x2, x3]
.LEHB11:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE11:
	adrp	x25, _ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+24
	adrp	x24, _ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+64
	add	x25, x25, :lo12:_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+24
	add	x24, x24, :lo12:_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+64
	add	x0, sp, 96
	str	x25, [sp, 88]
	str	x24, [sp, 344]
.LEHB12:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE12:
	add	x0, sp, 88
	add	x1, sp, 96
	add	x0, x0, 256
.LEHB13:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	ldr	x1, [x19]
	add	x0, sp, 96
	mov	w2, 20
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	mov	x2, x0
	ldr	x0, [sp, 88]
	ldr	x1, [x0, -24]
	add	x0, sp, 88
	add	x0, x0, x1
	cbz	x2, .L356
	mov	w1, 0
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE13:
.L331:
	add	x1, x20, 240
	add	x0, sp, 88
	mov	x2, 8
.LEHB14:
	bl	_ZNSo5writeEPKcl
	mov	x2, 8
	add	x0, sp, 88
	add	x1, x20, x2
	bl	_ZNSo5writeEPKcl
	add	x21, x20, 16
	add	x0, sp, 88
	mov	x1, x21
	mov	x2, 8
	bl	_ZNSo5writeEPKcl
	add	x1, x20, 24
	add	x0, sp, 88
	mov	x2, 8
	bl	_ZNSo5writeEPKcl
	add	x1, x20, 248
	add	x0, sp, 88
	mov	x2, 8
	bl	_ZNSo5writeEPKcl
	add	x1, x20, 232
	add	x0, sp, 88
	mov	x2, 8
	bl	_ZNSo5writeEPKcl
	add	x1, x20, 104
	add	x0, sp, 88
	mov	x2, 4
	bl	_ZNSo5writeEPKcl
	add	x1, x20, 216
	add	x0, sp, 88
	mov	x2, 4
	bl	_ZNSo5writeEPKcl
	add	x1, x20, 56
	add	x0, sp, 88
	mov	x2, 8
	bl	_ZNSo5writeEPKcl
	add	x1, x20, 64
	add	x0, sp, 88
	mov	x2, 8
	bl	_ZNSo5writeEPKcl
	add	x1, x20, 48
	add	x0, sp, 88
	mov	x2, 8
	bl	_ZNSo5writeEPKcl
	add	x1, x20, 88
	add	x0, sp, 88
	mov	x2, 8
	bl	_ZNSo5writeEPKcl
	add	x1, x20, 72
	add	x0, sp, 88
	mov	x2, 8
	bl	_ZNSo5writeEPKcl
	ldr	x1, [x20, 256]
	ldar	x3, [x21]
	ldr	x2, [x20, 24]
	add	x0, sp, 88
	mul	x2, x3, x2
	bl	_ZNSo5writeEPKcl
	mov	x19, 0
	ldar	x0, [x21]
	cmp	x19, x0
	bcs	.L336
	.p2align 3,,7
.L358:
	ldr	x0, [x20, 272]
	mov	w3, 0
	ldr	w0, [x0, x19, lsl 2]
	cmp	w0, 0
	ble	.L337
	ldr	x3, [x20, 32]
	mul	w3, w0, w3
.L337:
	add	x1, sp, 84
	add	x0, sp, 88
	mov	x2, 4
	str	w3, [sp, 84]
	bl	_ZNSo5writeEPKcl
	ldr	w2, [sp, 84]
	cbnz	w2, .L357
	add	x19, x19, 1
.L360:
	ldar	x0, [x21]
	cmp	x19, x0
	bcc	.L358
.L336:
	add	x0, sp, 96
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE14:
	cbz	x0, .L359
.L340:
	adrp	x1, _ZTVSt13basic_filebufIcSt11char_traitsIcEE+16
	add	x1, x1, :lo12:_ZTVSt13basic_filebufIcSt11char_traitsIcEE+16
	add	x0, sp, 96
	stp	x25, x1, [sp, 88]
	str	x24, [sp, 344]
.LEHB15:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE15:
.L342:
	add	x0, sp, 208
	bl	_ZNSt12__basic_fileIcED1Ev
	adrp	x1, _ZTVSt15basic_streambufIcSt11char_traitsIcEE+16
	add	x1, x1, :lo12:_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16
	add	x0, sp, 152
	str	x1, [sp, 96]
	bl	_ZNSt6localeD1Ev
	ldr	x1, [x22, -24]
	add	x2, sp, 88
	str	x22, [sp, 88]
	add	x0, sp, 344
	str	x26, [x2, x1]
	str	x23, [sp, 344]
	bl	_ZNSt8ios_baseD2Ev
	ldp	x29, x30, [sp]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	add	sp, sp, 608
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L357:
	.cfi_restore_state
	ldr	x1, [x20, 264]
	uxtw	x2, w2
	add	x0, sp, 88
	ldr	x1, [x1, x19, lsl 3]
.LEHB16:
	bl	_ZNSo5writeEPKcl
.LEHE16:
	add	x19, x19, 1
	b	.L360
	.p2align 2,,3
.L356:
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
.LEHB17:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE17:
	b	.L331
	.p2align 2,,3
.L359:
	ldr	x0, [sp, 88]
	add	x1, sp, 88
	ldr	x0, [x0, -24]
	add	x0, x1, x0
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
.LEHB18:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE18:
	b	.L340
.L349:
	bl	__cxa_begin_catch
	bl	__cxa_end_catch
	b	.L342
.L345:
	mov	x19, x0
	add	x0, sp, 88
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	mov	x0, x19
.LEHB19:
	bl	_Unwind_Resume
.L348:
	mov	x19, x0
	add	x0, sp, 96
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
.L334:
	ldr	x0, [x22, -24]
	add	x1, sp, 88
	str	x22, [sp, 88]
	str	x26, [x1, x0]
.L335:
	add	x0, sp, 344
	str	x23, [sp, 344]
	bl	_ZNSt8ios_baseD2Ev
	mov	x0, x19
	bl	_Unwind_Resume
.LEHE19:
.L347:
	mov	x19, x0
	b	.L334
.L346:
	mov	x19, x0
	b	.L335
	.cfi_endproc
.LFE10793:
	.section	.gcc_except_table._ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"aG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align	2
.LLSDA10793:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10793-.LLSDATTD10793
.LLSDATTD10793:
	.byte	0x1
	.uleb128 .LLSDACSE10793-.LLSDACSB10793
.LLSDACSB10793:
	.uleb128 .LEHB11-.LFB10793
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L346-.LFB10793
	.uleb128 0
	.uleb128 .LEHB12-.LFB10793
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L347-.LFB10793
	.uleb128 0
	.uleb128 .LEHB13-.LFB10793
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L348-.LFB10793
	.uleb128 0
	.uleb128 .LEHB14-.LFB10793
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L345-.LFB10793
	.uleb128 0
	.uleb128 .LEHB15-.LFB10793
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L349-.LFB10793
	.uleb128 0x1
	.uleb128 .LEHB16-.LFB10793
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L345-.LFB10793
	.uleb128 0
	.uleb128 .LEHB17-.LFB10793
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L348-.LFB10793
	.uleb128 0
	.uleb128 .LEHB18-.LFB10793
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L345-.LFB10793
	.uleb128 0
	.uleb128 .LEHB19-.LFB10793
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE10793:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT10793:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.rodata._Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_.str1.8,"aMS",@progbits,1
	.align	3
.LC6:
	.string	"load data "
	.align	3
.LC7:
	.string	"\n"
	.align	3
.LC8:
	.string	"dimension: "
	.align	3
.LC9:
	.string	"  number:"
	.align	3
.LC10:
	.string	"  size_per_element:"
	.section	.text._Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,"axG",@progbits,_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,comdat
	.align	2
	.p2align 4,,11
	.weak	_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
	.type	_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_, %function
_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_:
.LFB10794:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10794
	sub	sp, sp, #624
	.cfi_def_cfa_offset 624
	stp	x29, x30, [sp]
	.cfi_offset 29, -624
	.cfi_offset 30, -616
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -608
	.cfi_offset 20, -600
	mov	x20, x1
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -592
	.cfi_offset 22, -584
	mov	x21, x2
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -576
	.cfi_offset 24, -568
	mov	x24, x0
	add	x0, sp, 360
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -560
	.cfi_offset 26, -552
	adrp	x25, _ZTVSt9basic_iosIcSt11char_traitsIcEE+16
	add	x25, x25, :lo12:_ZTVSt9basic_iosIcSt11char_traitsIcEE+16
	stp	x27, x28, [sp, 80]
	.cfi_offset 27, -544
	.cfi_offset 28, -536
	bl	_ZNSt8ios_baseC2Ev
	adrp	x0, _ZTTSt14basic_ifstreamIcSt11char_traitsIcEE
	add	x0, x0, :lo12:_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE
	strh	wzr, [sp, 584]
	add	x3, sp, 592
	mov	x1, 0
	ldp	x23, x28, [x0, 8]
	add	x0, sp, 96
	ldr	x2, [x23, -24]
	stp	xzr, xzr, [x3]
	stp	xzr, xzr, [x3, 16]
	str	x23, [sp, 96]
	str	x25, [sp, 360]
	str	xzr, [sp, 576]
	str	x28, [x0, x2]
	add	x2, sp, 96
	str	xzr, [sp, 104]
	ldr	x0, [x23, -24]
	add	x0, x2, x0
.LEHB20:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE20:
	adrp	x27, _ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+24
	adrp	x26, _ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+64
	add	x27, x27, :lo12:_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+24
	add	x26, x26, :lo12:_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+64
	add	x0, sp, 112
	str	x27, [sp, 96]
	str	x26, [sp, 360]
.LEHB21:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE21:
	add	x0, sp, 96
	add	x1, sp, 112
	add	x0, x0, 264
.LEHB22:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE22:
	ldr	x1, [x24]
	add	x0, sp, 112
	mov	w2, 12
.LEHB23:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	mov	x2, x0
	ldr	x0, [sp, 96]
	ldr	x1, [x0, -24]
	add	x0, sp, 96
	add	x0, x0, x1
	cbz	x2, .L388
	mov	w1, 0
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.L367:
	mov	x1, x20
	add	x0, sp, 96
	mov	x2, 4
	bl	_ZNSi4readEPcl
	mov	x1, x21
	add	x0, sp, 96
	mov	x2, 4
	bl	_ZNSi4readEPcl
	ldr	x0, [x20]
	mov	x1, 2305843009213693950
	ldr	x2, [x21]
	mul	x0, x0, x2
	cmp	x0, x1
	bhi	.L368
	lsl	x0, x0, 2
	bl	_Znam
	ldr	x1, [x20]
	mov	x22, x0
	mov	x19, 0
	cbz	x1, .L372
	.p2align 3,,7
.L370:
	ldr	x2, [x21]
	add	x0, sp, 96
	lsl	x2, x2, 2
	madd	x1, x2, x19, x22
	bl	_ZNSi4readEPcl
	ldr	x0, [x20]
	add	x19, x19, 1
	cmp	x0, x19
	bhi	.L370
.L372:
	add	x0, sp, 112
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	cbz	x0, .L389
.L373:
	adrp	x19, _ZSt4cerr
	add	x19, x19, :lo12:_ZSt4cerr
	adrp	x1, .LC6
	mov	x0, x19
	add	x1, x1, :lo12:.LC6
	mov	x2, 10
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [x24]
	mov	x0, x19
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x24, .LC7
	add	x24, x24, :lo12:.LC7
	mov	x1, x24
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC8
	mov	x0, x19
	add	x1, x1, :lo12:.LC8
	mov	x2, 11
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x1, [x21]
	mov	x0, x19
	bl	_ZNSo9_M_insertImEERSoT_
	adrp	x1, .LC9
	mov	x19, x0
	add	x1, x1, :lo12:.LC9
	mov	x2, 9
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x1, [x20]
	mov	x0, x19
	bl	_ZNSo9_M_insertImEERSoT_
	adrp	x1, .LC10
	mov	x19, x0
	add	x1, x1, :lo12:.LC10
	mov	x2, 19
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x0, x19
	mov	x1, 4
	bl	_ZNSo9_M_insertImEERSoT_
	mov	x1, x24
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.LEHE23:
	adrp	x1, _ZTVSt13basic_filebufIcSt11char_traitsIcEE+16
	add	x1, x1, :lo12:_ZTVSt13basic_filebufIcSt11char_traitsIcEE+16
	add	x0, sp, 112
	str	x27, [sp, 96]
	str	x1, [sp, 112]
	str	x26, [sp, 360]
.LEHB24:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE24:
.L375:
	add	x0, sp, 224
	bl	_ZNSt12__basic_fileIcED1Ev
	adrp	x1, _ZTVSt15basic_streambufIcSt11char_traitsIcEE+16
	add	x1, x1, :lo12:_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16
	add	x0, sp, 168
	str	x1, [sp, 112]
	bl	_ZNSt6localeD1Ev
	ldr	x1, [x23, -24]
	add	x2, sp, 96
	str	x23, [sp, 96]
	add	x0, sp, 360
	str	x28, [x2, x1]
	str	xzr, [sp, 104]
	str	x25, [sp, 360]
	bl	_ZNSt8ios_baseD2Ev
	mov	x0, x22
	ldp	x29, x30, [sp]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	add	sp, sp, 624
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L388:
	.cfi_restore_state
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
.LEHB25:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	b	.L367
	.p2align 2,,3
.L389:
	ldr	x0, [sp, 96]
	add	x1, sp, 96
	ldr	x0, [x0, -24]
	add	x0, x1, x0
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE25:
	b	.L373
.L382:
	bl	__cxa_begin_catch
	bl	__cxa_end_catch
	b	.L375
.L381:
	mov	x19, x0
	add	x0, sp, 112
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
.L364:
	ldr	x0, [x23, -24]
	add	x1, sp, 96
	str	x23, [sp, 96]
	str	x28, [x1, x0]
	str	xzr, [sp, 104]
.L365:
	add	x0, sp, 360
	str	x25, [sp, 360]
	bl	_ZNSt8ios_baseD2Ev
	mov	x0, x19
.LEHB26:
	bl	_Unwind_Resume
.LEHE26:
.L380:
	mov	x19, x0
	b	.L364
.L368:
.LEHB27:
	bl	__cxa_throw_bad_array_new_length
.LEHE27:
.L379:
	mov	x19, x0
	b	.L365
.L378:
	mov	x19, x0
	add	x0, sp, 96
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	x0, x19
.LEHB28:
	bl	_Unwind_Resume
.LEHE28:
	.cfi_endproc
.LFE10794:
	.section	.gcc_except_table._Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,"aG",@progbits,_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,comdat
	.align	2
.LLSDA10794:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10794-.LLSDATTD10794
.LLSDATTD10794:
	.byte	0x1
	.uleb128 .LLSDACSE10794-.LLSDACSB10794
.LLSDACSB10794:
	.uleb128 .LEHB20-.LFB10794
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L379-.LFB10794
	.uleb128 0
	.uleb128 .LEHB21-.LFB10794
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L380-.LFB10794
	.uleb128 0
	.uleb128 .LEHB22-.LFB10794
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L381-.LFB10794
	.uleb128 0
	.uleb128 .LEHB23-.LFB10794
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L378-.LFB10794
	.uleb128 0
	.uleb128 .LEHB24-.LFB10794
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L382-.LFB10794
	.uleb128 0x1
	.uleb128 .LEHB25-.LFB10794
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L378-.LFB10794
	.uleb128 0
	.uleb128 .LEHB26-.LFB10794
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB10794
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L378-.LFB10794
	.uleb128 0
	.uleb128 .LEHB28-.LFB10794
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
.LLSDACSE10794:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT10794:
	.section	.text._Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,"axG",@progbits,_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,comdat
	.size	_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_, .-_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
	.section	.text._Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,"axG",@progbits,_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,comdat
	.align	2
	.p2align 4,,11
	.weak	_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
	.type	_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_, %function
_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_:
.LFB10795:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10795
	sub	sp, sp, #624
	.cfi_def_cfa_offset 624
	stp	x29, x30, [sp]
	.cfi_offset 29, -624
	.cfi_offset 30, -616
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -608
	.cfi_offset 20, -600
	mov	x20, x1
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -592
	.cfi_offset 22, -584
	mov	x21, x2
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -576
	.cfi_offset 24, -568
	mov	x24, x0
	add	x0, sp, 360
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -560
	.cfi_offset 26, -552
	adrp	x25, _ZTVSt9basic_iosIcSt11char_traitsIcEE+16
	add	x25, x25, :lo12:_ZTVSt9basic_iosIcSt11char_traitsIcEE+16
	stp	x27, x28, [sp, 80]
	.cfi_offset 27, -544
	.cfi_offset 28, -536
	bl	_ZNSt8ios_baseC2Ev
	adrp	x0, _ZTTSt14basic_ifstreamIcSt11char_traitsIcEE
	add	x0, x0, :lo12:_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE
	strh	wzr, [sp, 584]
	add	x3, sp, 592
	mov	x1, 0
	ldp	x23, x28, [x0, 8]
	add	x0, sp, 96
	ldr	x2, [x23, -24]
	stp	xzr, xzr, [x3]
	stp	xzr, xzr, [x3, 16]
	str	x23, [sp, 96]
	str	x25, [sp, 360]
	str	xzr, [sp, 576]
	str	x28, [x0, x2]
	add	x2, sp, 96
	str	xzr, [sp, 104]
	ldr	x0, [x23, -24]
	add	x0, x2, x0
.LEHB29:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE29:
	adrp	x27, _ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+24
	adrp	x26, _ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+64
	add	x27, x27, :lo12:_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+24
	add	x26, x26, :lo12:_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+64
	add	x0, sp, 112
	str	x27, [sp, 96]
	str	x26, [sp, 360]
.LEHB30:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE30:
	add	x0, sp, 96
	add	x1, sp, 112
	add	x0, x0, 264
.LEHB31:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE31:
	ldr	x1, [x24]
	add	x0, sp, 112
	mov	w2, 12
.LEHB32:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	mov	x2, x0
	ldr	x0, [sp, 96]
	ldr	x1, [x0, -24]
	add	x0, sp, 96
	add	x0, x0, x1
	cbz	x2, .L417
	mov	w1, 0
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.L396:
	mov	x1, x20
	add	x0, sp, 96
	mov	x2, 4
	bl	_ZNSi4readEPcl
	mov	x1, x21
	add	x0, sp, 96
	mov	x2, 4
	bl	_ZNSi4readEPcl
	ldr	x0, [x20]
	mov	x1, 2305843009213693950
	ldr	x2, [x21]
	mul	x0, x0, x2
	cmp	x0, x1
	bhi	.L397
	lsl	x0, x0, 2
	bl	_Znam
	ldr	x1, [x20]
	mov	x22, x0
	mov	x19, 0
	cbz	x1, .L401
	.p2align 3,,7
.L399:
	ldr	x2, [x21]
	add	x0, sp, 96
	lsl	x2, x2, 2
	madd	x1, x2, x19, x22
	bl	_ZNSi4readEPcl
	ldr	x0, [x20]
	add	x19, x19, 1
	cmp	x0, x19
	bhi	.L399
.L401:
	add	x0, sp, 112
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	cbz	x0, .L418
.L402:
	adrp	x19, _ZSt4cerr
	add	x19, x19, :lo12:_ZSt4cerr
	adrp	x1, .LC6
	mov	x0, x19
	add	x1, x1, :lo12:.LC6
	mov	x2, 10
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [x24]
	mov	x0, x19
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x24, .LC7
	add	x24, x24, :lo12:.LC7
	mov	x1, x24
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC8
	mov	x0, x19
	add	x1, x1, :lo12:.LC8
	mov	x2, 11
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x1, [x21]
	mov	x0, x19
	bl	_ZNSo9_M_insertImEERSoT_
	adrp	x1, .LC9
	mov	x19, x0
	add	x1, x1, :lo12:.LC9
	mov	x2, 9
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x1, [x20]
	mov	x0, x19
	bl	_ZNSo9_M_insertImEERSoT_
	adrp	x1, .LC10
	mov	x19, x0
	add	x1, x1, :lo12:.LC10
	mov	x2, 19
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x0, x19
	mov	x1, 4
	bl	_ZNSo9_M_insertImEERSoT_
	mov	x1, x24
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.LEHE32:
	adrp	x1, _ZTVSt13basic_filebufIcSt11char_traitsIcEE+16
	add	x1, x1, :lo12:_ZTVSt13basic_filebufIcSt11char_traitsIcEE+16
	add	x0, sp, 112
	str	x27, [sp, 96]
	str	x1, [sp, 112]
	str	x26, [sp, 360]
.LEHB33:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE33:
.L404:
	add	x0, sp, 224
	bl	_ZNSt12__basic_fileIcED1Ev
	adrp	x1, _ZTVSt15basic_streambufIcSt11char_traitsIcEE+16
	add	x1, x1, :lo12:_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16
	add	x0, sp, 168
	str	x1, [sp, 112]
	bl	_ZNSt6localeD1Ev
	ldr	x1, [x23, -24]
	add	x2, sp, 96
	str	x23, [sp, 96]
	add	x0, sp, 360
	str	x28, [x2, x1]
	str	xzr, [sp, 104]
	str	x25, [sp, 360]
	bl	_ZNSt8ios_baseD2Ev
	mov	x0, x22
	ldp	x29, x30, [sp]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	add	sp, sp, 624
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L417:
	.cfi_restore_state
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
.LEHB34:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	b	.L396
	.p2align 2,,3
.L418:
	ldr	x0, [sp, 96]
	add	x1, sp, 96
	ldr	x0, [x0, -24]
	add	x0, x1, x0
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE34:
	b	.L402
.L411:
	bl	__cxa_begin_catch
	bl	__cxa_end_catch
	b	.L404
.L410:
	mov	x19, x0
	add	x0, sp, 112
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
.L393:
	ldr	x0, [x23, -24]
	add	x1, sp, 96
	str	x23, [sp, 96]
	str	x28, [x1, x0]
	str	xzr, [sp, 104]
.L394:
	add	x0, sp, 360
	str	x25, [sp, 360]
	bl	_ZNSt8ios_baseD2Ev
	mov	x0, x19
.LEHB35:
	bl	_Unwind_Resume
.LEHE35:
.L409:
	mov	x19, x0
	b	.L393
.L397:
.LEHB36:
	bl	__cxa_throw_bad_array_new_length
.LEHE36:
.L408:
	mov	x19, x0
	b	.L394
.L407:
	mov	x19, x0
	add	x0, sp, 96
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	x0, x19
.LEHB37:
	bl	_Unwind_Resume
.LEHE37:
	.cfi_endproc
.LFE10795:
	.section	.gcc_except_table._Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,"aG",@progbits,_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,comdat
	.align	2
.LLSDA10795:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10795-.LLSDATTD10795
.LLSDATTD10795:
	.byte	0x1
	.uleb128 .LLSDACSE10795-.LLSDACSB10795
.LLSDACSB10795:
	.uleb128 .LEHB29-.LFB10795
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L408-.LFB10795
	.uleb128 0
	.uleb128 .LEHB30-.LFB10795
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L409-.LFB10795
	.uleb128 0
	.uleb128 .LEHB31-.LFB10795
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L410-.LFB10795
	.uleb128 0
	.uleb128 .LEHB32-.LFB10795
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L407-.LFB10795
	.uleb128 0
	.uleb128 .LEHB33-.LFB10795
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L411-.LFB10795
	.uleb128 0x1
	.uleb128 .LEHB34-.LFB10795
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L407-.LFB10795
	.uleb128 0
	.uleb128 .LEHB35-.LFB10795
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB36-.LFB10795
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L407-.LFB10795
	.uleb128 0
	.uleb128 .LEHB37-.LFB10795
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
.LLSDACSE10795:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT10795:
	.section	.text._Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,"axG",@progbits,_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,comdat
	.size	_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_, .-_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
	.section	.text._ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb,"axG",@progbits,_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb
	.type	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb, %function
_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb:
.LFB11536:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x21, x1
	ldr	x1, [x0, 40]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x20, x0
	ldr	x3, [x0, 72]
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -16
	.cfi_offset 24, -8
	and	w24, w2, 255
	sub	x22, x3, x1
	ldr	x0, [x0, 8]
	asr	x19, x22, 3
	add	x19, x19, 1
	add	x19, x19, x21
	cmp	x0, x19, lsl 1
	bls	.L420
	sub	x0, x0, x19
	cmp	w24, 0
	ldr	x19, [x20]
	lsr	x0, x0, 1
	add	x3, x3, 8
	lsl	x0, x0, 3
	sub	x2, x3, x1
	add	x21, x0, x21, lsl 3
	csel	x0, x21, x0, ne
	add	x19, x19, x0
	cmp	x1, x19
	bls	.L422
	cmp	x1, x3
	beq	.L423
	mov	x0, x19
	bl	memmove
	b	.L423
	.p2align 2,,3
.L420:
	cmp	x0, x21
	add	x23, x0, 2
	csel	x0, x0, x21, cs
	mov	x1, 1152921504606846975
	add	x23, x23, x0
	cmp	x23, x1
	bhi	.L432
	sub	x19, x23, x19
	lsl	x0, x23, 3
	bl	_Znwm
	lsr	x19, x19, 1
	cmp	w24, 0
	ldr	x3, [x20, 72]
	lsl	x19, x19, 3
	ldr	x1, [x20, 40]
	add	x21, x19, x21, lsl 3
	csel	x19, x21, x19, ne
	add	x3, x3, 8
	mov	x24, x0
	add	x19, x0, x19
	cmp	x1, x3
	beq	.L426
	sub	x2, x3, x1
	mov	x0, x19
	bl	memmove
.L426:
	ldr	x0, [x20]
	bl	_ZdlPv
	stp	x24, x23, [x20]
.L423:
	add	x2, x19, x22
	ldr	x0, [x19]
	ldp	x23, x24, [sp, 48]
	str	x0, [x20, 24]
	add	x0, x0, 512
	str	x0, [x20, 32]
	str	x19, [x20, 40]
	ldr	x0, [x19, x22]
	ldp	x21, x22, [sp, 32]
	str	x0, [x20, 56]
	add	x0, x0, 512
	str	x0, [x20, 64]
	str	x2, [x20, 72]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L422:
	.cfi_restore_state
	cmp	x1, x3
	beq	.L423
	add	x0, x22, 8
	sub	x0, x0, x2
	add	x0, x19, x0
	bl	memmove
	b	.L423
.L432:
	bl	_ZSt17__throw_bad_allocv
	.cfi_endproc
.LFE11536:
	.size	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb, .-_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb
	.section	.rodata._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.str1.8,"aMS",@progbits,1
	.align	3
.LC11:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB11546:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	ldp	x24, x23, [x0]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x20, x0
	stp	x21, x22, [sp, 32]
	stp	x25, x26, [sp, 64]
	sub	x0, x23, x24
	str	x27, [sp, 80]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	mov	x27, x2
	asr	x0, x0, 3
	mov	x2, 1152921504606846975
	cmp	x0, x2
	beq	.L451
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	adds	x1, x1, x0
	bcs	.L444
	cbnz	x1, .L438
	mov	x25, 8
	mov	x22, 0
	mov	x21, 0
.L443:
	ldr	x0, [x27]
	str	x0, [x21, x26]
	cmp	x19, x24
	beq	.L439
	mov	x4, x21
	mov	x3, x24
	.p2align 3,,7
.L440:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L440
	add	x26, x26, 8
	add	x25, x21, x26
.L439:
	cmp	x19, x23
	beq	.L441
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L441:
	cbz	x24, .L442
	mov	x0, x24
	bl	_ZdlPv
.L442:
	ldp	x23, x24, [sp, 48]
	ldr	x27, [sp, 80]
	stp	x21, x25, [x20]
	str	x22, [x20, 16]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L444:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L437:
	mov	x0, x22
	bl	_Znwm
	mov	x21, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L443
.L438:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L437
.L451:
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE11546:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.text
	.align	2
	.p2align 4,,11
	.global	_Z11flat_searchPfS_mmm
	.type	_Z11flat_searchPfS_mmm, %function
_Z11flat_searchPfS_mmm:
.LFB6074:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6074
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	mov	x22, x8
	stp	xzr, xzr, [x8]
	str	xzr, [x8, 16]
	cbz	x2, .L452
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -88
	.cfi_offset 19, -96
	mov	x21, x1
	mov	x19, x0
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -56
	.cfi_offset 23, -64
	lsl	x20, x3, 2
	mov	x24, x2
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -40
	.cfi_offset 25, -48
	mov	x23, 0
	mov	x25, x3
	str	x27, [sp, 80]
	.cfi_offset 27, -32
	mov	x26, x4
	str	d8, [sp, 88]
	.cfi_offset 72, -24
	mov	x1, 0
	mov	x0, 0
	fmov	s8, 1.0e+0
	cbz	x25, .L473
	.p2align 3,,7
.L492:
	movi	v0.2s, #0
	mov	x5, 0
	.p2align 3,,7
.L455:
	ldr	s2, [x19, x5]
	ldr	s1, [x21, x5]
	add	x5, x5, 4
	fmadd	s0, s2, s1, s0
	cmp	x20, x5
	bne	.L455
	sub	x2, x1, x0
	fsub	s0, s8, s0
	cmp	x26, x2, asr 3
	bhi	.L491
.L456:
	ldr	s1, [x0]
	fcmpe	s1, s0
	bgt	.L479
.L459:
	add	x23, x23, 1
	add	x19, x19, x20
	cmp	x24, x23
	beq	.L490
.L493:
	ldp	x0, x1, [x22]
	cbnz	x25, .L492
.L473:
	sub	x2, x1, x0
	fmov	s0, 1.0e+0
	cmp	x26, x2, asr 3
	bls	.L456
	.p2align 3,,7
.L491:
	ldr	x2, [x22, 16]
	str	s0, [sp, 104]
	str	w23, [sp, 108]
	cmp	x2, x1
	beq	.L457
	ldr	x2, [sp, 104]
	str	x2, [x1], 8
	str	x1, [x22, 8]
.L458:
	ldr	x3, [x1, -8]
	sub	x2, x1, x0
	add	x23, x23, 1
	add	x19, x19, x20
	asr	x1, x2, 3
	mov	x2, 0
	sub	x1, x1, #1
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	cmp	x24, x23
	bne	.L493
.L490:
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	ldr	x27, [sp, 80]
	.cfi_restore 27
	ldr	d8, [sp, 88]
	.cfi_restore 72
.L452:
	mov	x0, x22
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L479:
	.cfi_def_cfa_offset 112
	.cfi_offset 19, -96
	.cfi_offset 20, -88
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	.cfi_offset 23, -64
	.cfi_offset 24, -56
	.cfi_offset 25, -48
	.cfi_offset 26, -40
	.cfi_offset 27, -32
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	.cfi_offset 72, -24
	ldr	x2, [x22, 16]
	str	s0, [sp, 104]
	str	w23, [sp, 108]
	cmp	x2, x1
	beq	.L461
	ldr	x2, [sp, 104]
	str	x2, [x1], 8
	str	x1, [x22, 8]
.L462:
	ldr	x3, [x1, -8]
	sub	x2, x1, x0
	asr	x1, x2, 3
	mov	x2, 0
	sub	x1, x1, #1
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldp	x0, x1, [x22]
	sub	x2, x1, x0
	cmp	x2, 8
	bgt	.L494
.L463:
	sub	x1, x1, #8
	str	x1, [x22, 8]
	b	.L459
.L494:
	sub	x3, x1, #8
	ldr	w4, [x1, -8]
	sub	x3, x3, x0
	ldr	s0, [x0]
	ldr	w5, [x1, -4]
	asr	x9, x3, 3
	ldr	w6, [x0, 4]
	sub	x2, x9, #1
	bfi	x27, x4, 0, 32
	str	s0, [x1, -8]
	add	x2, x2, x2, lsr 63
	str	w6, [x1, -4]
	bfi	x27, x5, 32, 32
	asr	x6, x2, 1
	cmp	x3, 16
	ble	.L474
	mov	x2, 0
	b	.L468
.L476:
	mov	w3, w4
.L467:
	lsl	x2, x2, 3
	add	x4, x0, x2
	str	s0, [x0, x2]
	str	w3, [x4, 4]
	cmp	x1, x6
	bge	.L464
.L477:
	mov	x2, x1
.L468:
	add	x3, x2, 1
	lsl	x5, x3, 1
	lsl	x3, x3, 4
	sub	x1, x5, #1
	add	x8, x0, x3
	lsl	x4, x1, 3
	ldr	s1, [x0, x3]
	add	x7, x0, x4
	ldr	s0, [x0, x4]
	fcmpe	s1, s0
	bmi	.L480
	ldr	w3, [x8, 4]
	bgt	.L475
	ldr	w4, [x7, 4]
	cmp	w4, w3
	bhi	.L476
.L475:
	fmov	s0, s1
	lsl	x2, x2, 3
	add	x4, x0, x2
	mov	x1, x5
	str	s0, [x0, x2]
	str	w3, [x4, 4]
	cmp	x1, x6
	blt	.L477
.L464:
	tbnz	x9, 0, .L469
.L496:
	sub	x9, x9, #2
	add	x9, x9, x9, lsr 63
	cmp	x1, x9, asr 1
	beq	.L495
.L469:
	mov	x3, x27
	mov	x2, 0
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldr	x1, [x22, 8]
	b	.L463
	.p2align 2,,3
.L480:
	ldr	w3, [x7, 4]
	b	.L467
.L457:
	add	x2, sp, 104
	mov	x0, x22
.LEHB38:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldp	x0, x1, [x22]
	b	.L458
.L461:
	add	x2, sp, 104
	mov	x0, x22
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE38:
	ldp	x0, x1, [x22]
	b	.L462
.L495:
	lsl	x3, x1, 1
	lsl	x2, x1, 3
	add	x1, x3, 1
	add	x4, x0, x2
	lsl	x3, x1, 3
	add	x5, x0, x3
	ldr	s0, [x0, x3]
	ldr	w3, [x5, 4]
	str	s0, [x0, x2]
	mov	x2, 0
	str	w3, [x4, 4]
	mov	x3, x27
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldr	x1, [x22, 8]
	b	.L463
.L474:
	mov	x1, 0
	tbnz	x9, 0, .L469
	b	.L496
.L478:
	ldr	x1, [x22]
	mov	x19, x0
	cbz	x1, .L472
	mov	x0, x1
	bl	_ZdlPv
.L472:
	mov	x0, x19
.LEHB39:
	bl	_Unwind_Resume
.LEHE39:
	.cfi_endproc
.LFE6074:
	.section	.gcc_except_table,"a",@progbits
.LLSDA6074:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6074-.LLSDACSB6074
.LLSDACSB6074:
	.uleb128 .LEHB38-.LFB6074
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L478-.LFB6074
	.uleb128 0
	.uleb128 .LEHB39-.LFB6074
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
.LLSDACSE6074:
	.text
	.size	_Z11flat_searchPfS_mmm, .-_Z11flat_searchPfS_mmm
	.section	.rodata.str1.8
	.align	3
.LC12:
	.string	"/anndata/"
	.align	3
.LC13:
	.string	"DEEP100K.query.fbin"
	.align	3
.LC14:
	.string	"DEEP100K.gt.query.100k.top100.bin"
	.align	3
.LC15:
	.string	"DEEP100K.base.100k.fbin"
	.align	3
.LC16:
	.string	"average recall: "
	.align	3
.LC17:
	.string	"average latency (us): "
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,11
	.global	main
	.type	main, %function
main:
.LFB10377:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10377
	stp	x29, x30, [sp, -336]!
	.cfi_def_cfa_offset 336
	.cfi_offset 29, -336
	.cfi_offset 30, -328
	adrp	x2, .LC12+9
	add	x2, x2, :lo12:.LC12+9
	add	x3, sp, 240
	mov	x29, sp
	add	x0, sp, 224
	adrp	x1, .LC12
	add	x1, x1, :lo12:.LC12
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	stp	d8, d9, [sp, 96]
	.cfi_offset 19, -320
	.cfi_offset 20, -312
	.cfi_offset 21, -304
	.cfi_offset 22, -296
	.cfi_offset 23, -288
	.cfi_offset 24, -280
	.cfi_offset 25, -272
	.cfi_offset 26, -264
	.cfi_offset 27, -256
	.cfi_offset 28, -248
	.cfi_offset 72, -240
	.cfi_offset 73, -232
	stp	xzr, xzr, [sp, 160]
	stp	xzr, xzr, [sp, 176]
	str	x3, [sp, 224]
.LEHB40:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
.LEHE40:
	adrp	x1, .LC13
	add	x0, sp, 224
	add	x8, sp, 288
	add	x1, x1, :lo12:.LC13
.LEHB41:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
.LEHE41:
	add	x2, sp, 184
	add	x1, sp, 160
	add	x0, sp, 288
.LEHB42:
	bl	_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
.LEHE42:
	mov	x2, x0
	add	x1, sp, 304
	ldr	x0, [sp, 288]
	str	x2, [sp, 136]
	cmp	x0, x1
	beq	.L498
	bl	_ZdlPv
.L498:
	adrp	x1, .LC14
	add	x8, sp, 288
	add	x1, x1, :lo12:.LC14
	add	x0, sp, 224
.LEHB43:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
.LEHE43:
	add	x1, sp, 160
	add	x2, sp, 176
	add	x0, sp, 288
.LEHB44:
	bl	_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
.LEHE44:
	mov	x25, x0
	add	x1, sp, 304
	ldr	x0, [sp, 288]
	cmp	x0, x1
	beq	.L499
	bl	_ZdlPv
.L499:
	adrp	x1, .LC15
	add	x8, sp, 288
	add	x1, x1, :lo12:.LC15
	add	x0, sp, 224
.LEHB45:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
.LEHE45:
	add	x2, sp, 184
	add	x1, sp, 168
	add	x0, sp, 288
.LEHB46:
	bl	_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
.LEHE46:
	mov	x2, x0
	add	x1, sp, 304
	ldr	x0, [sp, 288]
	str	x2, [sp, 144]
	cmp	x0, x1
	beq	.L500
	bl	_ZdlPv
.L500:
	mov	x1, 2000
	mov	x0, 32000
	str	x1, [sp, 160]
.LEHB47:
	bl	_Znwm
.LEHE47:
	mov	x2, 32000
	add	x1, x0, x2
	str	x0, [sp, 152]
.L502:
	cmp	x1, x0
	beq	.L501
	add	x0, x0, 16
	str	wzr, [x0, -16]
	str	xzr, [x0, -8]
	b	.L502
.L501:
	ldr	x0, [sp, 160]
	cbz	x0, .L505
	ldr	x0, [sp, 152]
	mov	x24, 0
	stp	x0, x0, [sp, 120]
	.p2align 3,,7
.L561:
	add	x0, sp, 192
	mov	x1, 0
	bl	gettimeofday
	ldr	x19, [sp, 184]
	stp	xzr, xzr, [sp, 256]
	ldr	x0, [sp, 136]
	lsl	x26, x19, 2
	ldr	x23, [sp, 168]
	str	xzr, [sp, 272]
	madd	x21, x26, x24, x0
	cbz	x23, .L507
	ldr	x20, [sp, 144]
	lsl	x0, x19, 6
	mov	x22, 0
	fmov	s8, 1.0e+0
	str	x0, [sp, 112]
	.p2align 3,,7
.L529:
	add	x0, x22, 16
	cmp	x23, x0
	bls	.L508
	ldr	x0, [sp, 112]
	add	x0, x0, x20
	prfm	PLDL3KEEP, [x0]
.L508:
	cmp	x19, 15
	bls	.L578
	movi	v1.4s, 0
	add	x1, x21, 48
	mov	x0, x20
	mov	x2, 16
	mov	v0.16b, v1.16b
	mov	v3.16b, v1.16b
	mov	v2.16b, v1.16b
	b	.L510
	.p2align 2,,3
.L579:
	mov	x2, x3
.L510:
	ldp	q18, q16, [x1, -48]
	add	x3, x2, 16
	ldr	q6, [x1, -16]
	ldp	q19, q17, [x0]
	ldp	q7, q5, [x0, 32]
	add	x0, x0, 64
	ldr	q4, [x1], 64
	fmla	v2.4s, v19.4s, v18.4s
	fmla	v3.4s, v17.4s, v16.4s
	fmla	v0.4s, v7.4s, v6.4s
	fmla	v1.4s, v5.4s, v4.4s
	cmp	x19, x3
	bcs	.L579
	fadd	v0.4s, v0.4s, v1.4s
	add	x0, x2, 4
	fadd	v2.4s, v2.4s, v3.4s
	fadd	v0.4s, v0.4s, v2.4s
.L509:
	cmp	x19, x0
	bcs	.L512
	b	.L642
	.p2align 2,,3
.L581:
	mov	x0, x3
.L512:
	lsl	x1, x2, 2
	add	x3, x0, 4
	mov	x2, x0
	ldr	q2, [x20, x1]
	ldr	q1, [x21, x1]
	fmla	v0.4s, v2.4s, v1.4s
	cmp	x19, x3
	bcs	.L581
.L511:
	add	x1, sp, 296
	str	q0, [sp, 288]
	ldp	s0, s3, [x1, -8]
	ldp	s2, s1, [x1]
	fadd	s0, s0, s3
	fadd	s0, s0, s2
	fadd	s0, s0, s1
	cmp	x19, x0
	bls	.L513
	.p2align 3,,7
.L514:
	ldr	s2, [x20, x0, lsl 2]
	ldr	s1, [x21, x0, lsl 2]
	add	x0, x0, 1
	fmadd	s0, s2, s1, s0
	cmp	x19, x0
	bne	.L514
.L513:
	ldp	x0, x1, [sp, 256]
	fsub	s0, s8, s0
	sub	x2, x1, x0
	cmp	x2, 72
	bls	.L643
	ldr	s1, [x0]
	fcmpe	s0, s1
	bmi	.L604
.L518:
	add	x22, x22, 1
	add	x20, x20, x26
	cmp	x23, x22
	bne	.L529
.L507:
	mov	x1, 0
	add	x0, sp, 208
	bl	gettimeofday
	add	x23, sp, 296
	ldp	x0, x3, [sp, 208]
	mov	x2, 16960
	ldr	x1, [sp, 192]
	movk	x2, 0xf, lsl 16
	mov	x22, 0
	mov	x26, 0
	mov	w21, 1
	str	wzr, [sp, 296]
	msub	x1, x1, x2, x3
	stp	xzr, x23, [sp, 304]
	madd	x0, x0, x2, x1
	ldr	x3, [sp, 200]
	stp	x23, xzr, [sp, 320]
	sub	x0, x0, x3
	str	x0, [sp, 112]
	.p2align 3,,7
.L533:
	ldr	x0, [sp, 176]
	madd	x0, x24, x0, x22
	ldr	w20, [x25, x0, lsl 2]
	cbz	x26, .L587
	mov	x19, x26
	b	.L537
	.p2align 2,,3
.L632:
	mov	x19, x0
.L537:
	ldp	x0, x2, [x19, 16]
	ldr	w1, [x19, 32]
	cmp	w20, w1
	csel	x0, x0, x2, cc
	csel	w2, w21, wzr, cc
	cbnz	x0, .L632
	cbnz	w2, .L536
.L637:
	bls	.L541
.L576:
	mov	w26, 1
	cmp	x19, x23
	bne	.L644
.L542:
	mov	x0, 40
.LEHB48:
	bl	_Znwm
.LEHE48:
	mov	x1, x0
	mov	x2, x19
	mov	w0, w26
	mov	x3, x23
	str	w20, [x1, 32]
	bl	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
	ldr	x0, [sp, 328]
	ldr	x26, [sp, 304]
	add	x0, x0, 1
	str	x0, [sp, 328]
.L541:
	add	x22, x22, 1
	cmp	x22, 10
	bne	.L533
	ldp	x0, x6, [sp, 256]
	movi	v0.2s, #0
	add	x11, sp, 296
	mov	x12, 0
	cmp	x6, x0
	beq	.L535
	.p2align 3,,7
.L534:
	ldr	w5, [x0, 4]
	cbz	x26, .L544
	mov	x1, x26
	mov	x7, x11
	.p2align 3,,7
.L545:
	ldr	w2, [x1, 32]
	ldp	x4, x3, [x1, 16]
	cmp	w5, w2
	bls	.L591
	mov	x1, x3
	cbnz	x1, .L545
.L546:
	cmp	x7, x11
	beq	.L544
	ldr	w1, [x7, 32]
	cmp	w5, w1
	cinc	x12, x12, cs
.L544:
	sub	x1, x6, x0
	cmp	x1, 8
	bgt	.L645
.L549:
	sub	x6, x6, #8
	str	x6, [sp, 264]
	cmp	x0, x6
	bne	.L534
	ucvtf	s0, x12
	fmov	s1, 1.0e+1
	fdiv	s0, s0, s1
.L535:
	ldp	x2, x1, [sp, 112]
	str	x2, [x1, 8]
	str	s0, [x1]
	cbz	x26, .L559
.L556:
	ldr	x0, [x26, 24]
	bl	_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0
	mov	x0, x26
	ldr	x26, [x26, 16]
	bl	_ZdlPv
	cbnz	x26, .L556
	ldr	x0, [sp, 256]
.L559:
	cbz	x0, .L558
	bl	_ZdlPv
.L558:
	ldr	x1, [sp, 120]
	add	x24, x24, 1
	ldr	x0, [sp, 160]
	add	x1, x1, 16
	str	x1, [sp, 120]
	cmp	x0, x24
	bhi	.L561
	cbz	x0, .L505
	movi	v8.2s, #0
	ldr	x1, [sp, 152]
	fmov	s9, s8
	add	x0, x1, x0, lsl 4
	.p2align 3,,7
.L562:
	ldr	x2, [sp, 128]
	add	x2, x2, 16
	ldr	x1, [x2, -8]
	ldr	s1, [x2, -16]
	scvtf	s0, x1
	str	x2, [sp, 128]
	fadd	s9, s9, s1
	fadd	s8, s8, s0
	cmp	x0, x2
	bne	.L562
.L504:
	adrp	x20, _ZSt4cout
	add	x20, x20, :lo12:_ZSt4cout
	adrp	x1, .LC16
	mov	x0, x20
	add	x1, x1, :lo12:.LC16
.LEHB49:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	x1, [sp, 160]
	ucvtf	s0, x1
	fdiv	s0, s9, s0
	fcvt	d0, s0
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x19, .LC7
	add	x19, x19, :lo12:.LC7
	mov	x1, x19
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x1, .LC17
	mov	x0, x20
	add	x1, x1, :lo12:.LC17
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	x1, [sp, 160]
	ucvtf	s0, x1
	fdiv	s0, s8, s0
	fcvt	d0, s0
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	x1, x19
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE49:
	ldr	x0, [sp, 152]
	bl	_ZdlPv
	ldr	x0, [sp, 224]
	add	x1, sp, 240
	cmp	x0, x1
	beq	.L613
	bl	_ZdlPv
.L613:
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	d8, d9, [sp, 96]
	ldp	x29, x30, [sp], 336
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 72
	.cfi_restore 73
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L587:
	.cfi_restore_state
	mov	x19, x23
.L536:
	ldr	x0, [sp, 312]
	cmp	x19, x0
	beq	.L576
	mov	x0, x19
	bl	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	ldr	w0, [x0, 32]
	cmp	w20, w0
	b	.L637
	.p2align 2,,3
.L591:
	mov	x7, x1
	mov	x1, x4
	cbnz	x1, .L545
	b	.L546
	.p2align 2,,3
.L645:
	sub	x1, x6, #8
	ldr	w2, [x6, -8]
	sub	x1, x1, x0
	ldr	s0, [x0]
	ldr	w3, [x6, -4]
	asr	x9, x1, 3
	bfi	x27, x2, 0, 32
	sub	x7, x9, #1
	str	s0, [x6, -8]
	str	w5, [x6, -4]
	bfi	x27, x3, 32, 32
	add	x7, x7, x7, lsr 63
	asr	x7, x7, 1
	cmp	x1, 16
	ble	.L592
	mov	x2, 0
	b	.L554
	.p2align 2,,3
.L594:
	mov	w3, w4
	.p2align 3,,7
.L553:
	lsl	x2, x2, 3
	add	x4, x0, x2
	str	s0, [x0, x2]
	str	w3, [x4, 4]
	cmp	x1, x7
	bge	.L550
.L595:
	mov	x2, x1
.L554:
	add	x3, x2, 1
	lsl	x5, x3, 1
	lsl	x3, x3, 4
	sub	x1, x5, #1
	add	x8, x0, x3
	lsl	x4, x1, 3
	ldr	s1, [x0, x3]
	add	x6, x0, x4
	ldr	s0, [x0, x4]
	fcmpe	s1, s0
	bmi	.L606
	ldr	w3, [x8, 4]
	bgt	.L593
	ldr	w4, [x6, 4]
	cmp	w4, w3
	bhi	.L594
.L593:
	fmov	s0, s1
	lsl	x2, x2, 3
	add	x4, x0, x2
	mov	x1, x5
	str	s0, [x0, x2]
	str	w3, [x4, 4]
	cmp	x1, x7
	blt	.L595
.L550:
	tbnz	x9, 0, .L555
	sub	x9, x9, #2
	add	x9, x9, x9, lsr 63
	cmp	x1, x9, asr 1
	bne	.L555
	lsl	x3, x1, 1
	lsl	x2, x1, 3
	add	x1, x3, 1
	add	x4, x0, x2
	lsl	x3, x1, 3
	add	x5, x0, x3
	ldr	s0, [x0, x3]
	ldr	w3, [x5, 4]
	str	s0, [x0, x2]
	str	w3, [x4, 4]
	.p2align 3,,7
.L555:
	mov	x3, x27
	mov	x2, 0
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldp	x0, x6, [sp, 256]
	ldr	x26, [sp, 304]
	b	.L549
	.p2align 2,,3
.L606:
	ldr	w3, [x6, 4]
	b	.L553
	.p2align 2,,3
.L643:
	ldr	x2, [sp, 272]
	str	s0, [sp, 288]
	str	w22, [sp, 292]
	cmp	x1, x2
	beq	.L516
	ldr	x2, [sp, 288]
	str	x2, [x1], 8
	str	x1, [sp, 264]
.L517:
	ldr	x3, [x1, -8]
	sub	x2, x1, x0
	asr	x1, x2, 3
	mov	x2, 0
	sub	x1, x1, #1
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	b	.L518
	.p2align 2,,3
.L604:
	ldr	x2, [sp, 272]
	str	s0, [sp, 288]
	str	w22, [sp, 292]
	cmp	x1, x2
	beq	.L520
	ldr	x2, [sp, 288]
	str	x2, [x1], 8
	str	x1, [sp, 264]
.L521:
	ldr	x3, [x1, -8]
	sub	x2, x1, x0
	asr	x1, x2, 3
	mov	x2, 0
	sub	x1, x1, #1
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldp	x0, x1, [sp, 256]
	sub	x2, x1, x0
	cmp	x2, 8
	bgt	.L646
.L522:
	sub	x1, x1, #8
	str	x1, [sp, 264]
	b	.L518
	.p2align 2,,3
.L644:
	ldr	w0, [x19, 32]
	cmp	w20, w0
	cset	w26, cc
	b	.L542
.L642:
	mov	x0, x2
	b	.L511
.L578:
	movi	v0.4s, 0
	mov	x0, 4
	mov	x2, 0
	b	.L509
.L646:
	sub	x3, x1, #8
	ldr	w4, [x1, -8]
	sub	x3, x3, x0
	ldr	s0, [x0]
	ldr	w5, [x1, -4]
	asr	x8, x3, 3
	ldr	w6, [x0, 4]
	sub	x2, x8, #1
	bfi	x28, x4, 0, 32
	str	s0, [x1, -8]
	add	x2, x2, x2, lsr 63
	str	w6, [x1, -4]
	bfi	x28, x5, 32, 32
	asr	x6, x2, 1
	cmp	x3, 16
	ble	.L582
	mov	x3, 0
	b	.L527
.L584:
	mov	w4, w2
.L526:
	lsl	x2, x3, 3
	add	x3, x0, x2
	str	s0, [x0, x2]
	str	w4, [x3, 4]
	cmp	x1, x6
	bge	.L523
.L585:
	mov	x3, x1
.L527:
	add	x2, x3, 1
	lsl	x5, x2, 1
	lsl	x2, x2, 4
	sub	x1, x5, #1
	add	x7, x0, x2
	lsl	x4, x1, 3
	ldr	s1, [x0, x2]
	add	x2, x0, x4
	ldr	s0, [x0, x4]
	fcmpe	s1, s0
	bmi	.L605
	ldr	w4, [x7, 4]
	bgt	.L583
	ldr	w2, [x2, 4]
	cmp	w4, w2
	bcc	.L584
.L583:
	fmov	s0, s1
	lsl	x2, x3, 3
	add	x3, x0, x2
	mov	x1, x5
	str	s0, [x0, x2]
	str	w4, [x3, 4]
	cmp	x1, x6
	blt	.L585
.L523:
	tbnz	x8, 0, .L528
	sub	x8, x8, #2
	add	x8, x8, x8, lsr 63
	cmp	x1, x8, asr 1
	bne	.L528
	lsl	x3, x1, 1
	lsl	x2, x1, 3
	add	x1, x3, 1
	add	x4, x0, x2
	lsl	x3, x1, 3
	add	x5, x0, x3
	ldr	s0, [x0, x3]
	ldr	w3, [x5, 4]
	str	s0, [x0, x2]
	str	w3, [x4, 4]
.L528:
	mov	x3, x28
	mov	x2, 0
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldr	x1, [sp, 264]
	b	.L522
	.p2align 2,,3
.L605:
	ldr	w4, [x2, 4]
	b	.L526
.L516:
	add	x2, sp, 288
	add	x0, sp, 256
.LEHB50:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldp	x0, x1, [sp, 256]
	b	.L517
.L520:
	add	x2, sp, 288
	add	x0, sp, 256
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE50:
	ldp	x0, x1, [sp, 256]
	b	.L521
.L592:
	mov	x1, 0
	b	.L550
.L582:
	mov	x1, 0
	b	.L523
.L505:
	movi	v8.2s, #0
	fmov	s9, s8
	b	.L504
.L596:
	mov	x19, x0
.L566:
	ldr	x0, [sp, 224]
	add	x1, sp, 240
	cmp	x0, x1
	beq	.L575
	bl	_ZdlPv
.L575:
	mov	x0, x19
.LEHB51:
	bl	_Unwind_Resume
.LEHE51:
.L603:
	mov	x19, x0
	b	.L566
.L601:
	mov	x19, x0
	ldr	x0, [sp, 304]
	bl	_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0
	ldr	x0, [sp, 256]
	cbz	x0, .L532
	bl	_ZdlPv
	b	.L532
.L602:
	ldr	x1, [sp, 256]
	mov	x19, x0
	cbz	x1, .L532
	mov	x0, x1
	bl	_ZdlPv
.L532:
	ldr	x0, [sp, 152]
	bl	_ZdlPv
	b	.L566
.L600:
	mov	x19, x0
	b	.L532
.L599:
	ldr	x2, [sp, 288]
	add	x1, sp, 304
	mov	x19, x0
	cmp	x2, x1
	beq	.L566
	mov	x0, x2
	bl	_ZdlPv
	b	.L566
.L598:
.L641:
	ldr	x1, [sp, 288]
	add	x2, sp, 304
	mov	x19, x0
	cmp	x1, x2
	beq	.L566
	mov	x0, x1
	bl	_ZdlPv
	b	.L566
.L597:
	b	.L641
	.cfi_endproc
.LFE10377:
	.section	.gcc_except_table
.LLSDA10377:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10377-.LLSDACSB10377
.LLSDACSB10377:
	.uleb128 .LEHB40-.LFB10377
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB41-.LFB10377
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L596-.LFB10377
	.uleb128 0
	.uleb128 .LEHB42-.LFB10377
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L597-.LFB10377
	.uleb128 0
	.uleb128 .LEHB43-.LFB10377
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L596-.LFB10377
	.uleb128 0
	.uleb128 .LEHB44-.LFB10377
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L598-.LFB10377
	.uleb128 0
	.uleb128 .LEHB45-.LFB10377
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L596-.LFB10377
	.uleb128 0
	.uleb128 .LEHB46-.LFB10377
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L599-.LFB10377
	.uleb128 0
	.uleb128 .LEHB47-.LFB10377
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L603-.LFB10377
	.uleb128 0
	.uleb128 .LEHB48-.LFB10377
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L601-.LFB10377
	.uleb128 0
	.uleb128 .LEHB49-.LFB10377
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L600-.LFB10377
	.uleb128 0
	.uleb128 .LEHB50-.LFB10377
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L602-.LFB10377
	.uleb128 0
	.uleb128 .LEHB51-.LFB10377
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
.LLSDACSE10377:
	.section	.text.startup
	.size	main, .-main
	.section	.text._ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj,"axG",@progbits,_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj
	.type	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj, %function
_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj:
.LFB11637:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	ldr	w8, [x2]
	ldr	x1, [x0, 8]
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	uxtw	x0, w8
	udiv	x3, x0, x1
	ldr	x9, [x19]
	msub	x3, x3, x1, x0
	ldr	x6, [x9, x3, lsl 3]
	cbz	x6, .L658
	ldr	x2, [x6]
	mov	x5, x6
	ldr	w0, [x2, 8]
.L650:
	cmp	w8, w0
	beq	.L649
	ldr	x0, [x2]
	mov	x5, x2
	mov	x2, x0
	cbz	x0, .L658
	ldr	w0, [x0, 8]
	uxtw	x7, w0
	udiv	x4, x7, x1
	msub	x4, x4, x1, x7
	cmp	x3, x4
	beq	.L650
.L658:
	mov	x0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L649:
	.cfi_restore_state
	ldr	x0, [x5]
	ldr	x2, [x0]
	cmp	x6, x5
	beq	.L665
	cbz	x2, .L652
	ldr	w6, [x2, 8]
	udiv	x4, x6, x1
	msub	x1, x4, x1, x6
	cmp	x3, x1
	beq	.L652
	str	x5, [x9, x1, lsl 3]
	ldr	x2, [x0]
.L652:
	str	x2, [x5]
	bl	_ZdlPv
	ldr	x1, [x19, 24]
	mov	x0, 1
	sub	x1, x1, #1
	str	x1, [x19, 24]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L665:
	.cfi_restore_state
	cbz	x2, .L659
	ldr	w6, [x2, 8]
	udiv	x4, x6, x1
	msub	x1, x4, x1, x6
	cmp	x3, x1
	beq	.L652
	str	x5, [x9, x1, lsl 3]
	ldr	x1, [x9, x3, lsl 3]
.L651:
	add	x4, x19, 16
	cmp	x1, x4
	beq	.L666
.L653:
	str	xzr, [x9, x3, lsl 3]
	ldr	x2, [x0]
	b	.L652
	.p2align 2,,3
.L659:
	mov	x1, x5
	b	.L651
	.p2align 2,,3
.L666:
	str	x2, [x19, 16]
	b	.L653
	.cfi_endproc
.LFE11637:
	.size	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj, .-_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj
	.section	.text._ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_,"axG",@progbits,_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_
	.type	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_, %function
_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_:
.LFB11638:
	.cfi_startproc
	ldr	x5, [x2]
	ldr	x2, [x0, 8]
	ldr	x8, [x0]
	udiv	x4, x5, x2
	msub	x4, x4, x2, x5
	ldr	x7, [x8, x4, lsl 3]
	cbz	x7, .L676
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x6, x7
	mov	x29, sp
	ldr	x3, [x7]
	ldr	x1, [x3, 8]
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
.L670:
	cmp	x5, x1
	beq	.L669
	ldr	x0, [x3]
	mov	x6, x3
	mov	x3, x0
	cbz	x0, .L678
	ldr	x1, [x0, 8]
	udiv	x0, x1, x2
	msub	x0, x0, x2, x1
	cmp	x4, x0
	beq	.L670
.L678:
	mov	x0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L669:
	.cfi_restore_state
	ldr	x0, [x6]
	ldr	x1, [x0]
	cmp	x7, x6
	beq	.L688
	cbz	x1, .L672
	ldr	x5, [x1, 8]
	udiv	x3, x5, x2
	msub	x2, x3, x2, x5
	cmp	x4, x2
	beq	.L672
	str	x6, [x8, x2, lsl 3]
	ldr	x1, [x0]
.L672:
	str	x1, [x6]
	bl	_ZdlPv
	ldr	x1, [x19, 24]
	mov	x0, 1
	sub	x1, x1, #1
	str	x1, [x19, 24]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L688:
	.cfi_restore_state
	cbz	x1, .L679
	ldr	x5, [x1, 8]
	udiv	x3, x5, x2
	msub	x2, x3, x2, x5
	cmp	x4, x2
	beq	.L672
	str	x6, [x8, x2, lsl 3]
	ldr	x2, [x8, x4, lsl 3]
.L671:
	add	x3, x19, 16
	cmp	x2, x3
	beq	.L689
.L673:
	str	xzr, [x8, x4, lsl 3]
	ldr	x1, [x0]
	b	.L672
	.p2align 2,,3
.L679:
	mov	x2, x6
	b	.L671
	.p2align 2,,3
.L676:
	.cfi_def_cfa_offset 0
	.cfi_restore 19
	.cfi_restore 29
	.cfi_restore 30
	mov	x0, 0
	ret
	.p2align 2,,3
.L689:
	.cfi_def_cfa_offset 32
	.cfi_offset 19, -16
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	str	x1, [x19, 16]
	b	.L673
	.cfi_endproc
.LFE11638:
	.size	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_, .-_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB11804:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	ldp	x24, x23, [x0]
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x21, x0
	stp	x19, x20, [sp, 16]
	stp	x25, x26, [sp, 64]
	sub	x0, x23, x24
	stp	x27, x28, [sp, 80]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	mov	x27, x2
	asr	x0, x0, 3
	mov	x2, 1152921504606846975
	cmp	x0, x2
	beq	.L708
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	mov	x28, x3
	adds	x1, x1, x0
	bcs	.L701
	cbnz	x1, .L695
	mov	x25, 8
	mov	x22, 0
	mov	x20, 0
.L700:
	ldr	s0, [x27]
	add	x0, x20, x26
	ldr	w1, [x28]
	str	s0, [x20, x26]
	str	w1, [x0, 4]
	cmp	x19, x24
	beq	.L696
	mov	x4, x20
	mov	x3, x24
	.p2align 3,,7
.L697:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L697
	add	x26, x26, 8
	add	x25, x20, x26
.L696:
	cmp	x19, x23
	beq	.L698
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L698:
	cbz	x24, .L699
	mov	x0, x24
	bl	_ZdlPv
.L699:
	ldp	x23, x24, [sp, 48]
	ldp	x27, x28, [sp, 80]
	stp	x20, x25, [x21]
	str	x22, [x21, 16]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L701:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L694:
	mov	x0, x22
	bl	_Znwm
	mov	x20, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L700
.L695:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L694
.L708:
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE11804:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_
	.type	_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_, %function
_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_:
.LFB11820:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	stp	x25, x26, [sp, 64]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	ldp	x25, x21, [x0]
	stp	x19, x20, [sp, 16]
	stp	x23, x24, [sp, 48]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	mov	x24, x1
	mov	x1, 2305843009213693951
	str	x27, [sp, 80]
	.cfi_offset 27, -16
	sub	x3, x21, x25
	asr	x3, x3, 2
	cmp	x3, x1
	beq	.L724
	cmp	x3, 0
	mov	x20, x0
	csinc	x0, x3, xzr, ne
	mov	x27, x2
	sub	x26, x24, x25
	adds	x3, x3, x0
	bcs	.L721
	cbnz	x3, .L714
	mov	x19, 0
	mov	x23, 0
.L720:
	ldr	w0, [x27]
	add	x22, x26, 4
	sub	x21, x21, x24
	add	x22, x23, x22
	str	w0, [x23, x26]
	add	x27, x22, x21
	cmp	x26, 0
	bgt	.L725
	cmp	x21, 0
	bgt	.L716
	cbnz	x25, .L719
.L717:
	ldp	x21, x22, [sp, 32]
	ldp	x25, x26, [sp, 64]
	stp	x23, x27, [x20]
	str	x19, [x20, 16]
	ldp	x19, x20, [sp, 16]
	ldp	x23, x24, [sp, 48]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L725:
	.cfi_restore_state
	mov	x2, x26
	mov	x1, x25
	mov	x0, x23
	bl	memmove
	cmp	x21, 0
	bgt	.L716
.L719:
	mov	x0, x25
	bl	_ZdlPv
	b	.L717
	.p2align 2,,3
.L716:
	mov	x2, x21
	mov	x1, x24
	mov	x0, x22
	bl	memcpy
	cbz	x25, .L717
	b	.L719
	.p2align 2,,3
.L721:
	mov	x19, 9223372036854775804
.L713:
	mov	x0, x19
	bl	_Znwm
	mov	x23, x0
	add	x19, x0, x19
	b	.L720
	.p2align 2,,3
.L714:
	cmp	x3, x1
	csel	x3, x3, x1, ls
	lsl	x19, x3, 2
	b	.L713
.L724:
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE11820:
	.size	_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_, .-_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_
	.section	.text._ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_,"axG",@progbits,_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_
	.type	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_, %function
_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_:
.LFB11846:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11846
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x19, x1
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -16
	.cfi_offset 22, -8
	mov	x21, x0
	cmp	x1, 1
	beq	.L748
	mov	x20, x2
	mov	x0, 1152921504606846975
	cmp	x1, x0
	bhi	.L749
	lsl	x22, x1, 3
	mov	x0, x22
.LEHB52:
	bl	_Znwm
	mov	x20, x0
	mov	x2, x22
	mov	w1, 0
	bl	memset
	add	x8, x21, 48
.L728:
	ldr	x4, [x21, 16]
	str	xzr, [x21, 16]
	cbz	x4, .L730
	add	x7, x21, 16
	mov	x6, 0
	.p2align 3,,7
.L731:
	ldr	x5, [x4, 8]
	mov	x3, x4
	ldr	x4, [x4]
	udiv	x2, x5, x19
	msub	x2, x2, x19, x5
	ldr	x1, [x20, x2, lsl 3]
	cbz	x1, .L750
	ldr	x0, [x1]
	str	x0, [x3]
	ldr	x0, [x20, x2, lsl 3]
	str	x3, [x0]
	cbnz	x4, .L731
.L730:
	ldr	x0, [x21]
	cmp	x0, x8
	beq	.L734
	bl	_ZdlPv
.L734:
	stp	x20, x19, [x21]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L750:
	.cfi_restore_state
	ldr	x0, [x21, 16]
	str	x0, [x3]
	str	x3, [x21, 16]
	str	x7, [x20, x2, lsl 3]
	ldr	x0, [x3]
	cbz	x0, .L737
	str	x3, [x20, x6, lsl 3]
	mov	x6, x2
	cbnz	x4, .L731
	b	.L730
	.p2align 2,,3
.L737:
	mov	x6, x2
	cbnz	x4, .L731
	b	.L730
	.p2align 2,,3
.L748:
	mov	x20, x0
	str	xzr, [x20, 48]!
	mov	x8, x20
	b	.L728
.L749:
	bl	_ZSt17__throw_bad_allocv
.LEHE52:
.L738:
	bl	__cxa_begin_catch
	ldr	x0, [x20]
	str	x0, [x21, 40]
.LEHB53:
	bl	__cxa_rethrow
.LEHE53:
.L739:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB54:
	bl	_Unwind_Resume
.LEHE54:
	.cfi_endproc
.LFE11846:
	.section	.gcc_except_table
	.align	2
.LLSDA11846:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11846-.LLSDATTD11846
.LLSDATTD11846:
	.byte	0x1
	.uleb128 .LLSDACSE11846-.LLSDACSB11846
.LLSDACSB11846:
	.uleb128 .LEHB52-.LFB11846
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L738-.LFB11846
	.uleb128 0x1
	.uleb128 .LEHB53-.LFB11846
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L739-.LFB11846
	.uleb128 0
	.uleb128 .LEHB54-.LFB11846
	.uleb128 .LEHE54-.LEHB54
	.uleb128 0
	.uleb128 0
.LLSDACSE11846:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT11846:
	.section	.text._ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_,"axG",@progbits,_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_,comdat
	.size	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_, .-_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_
	.section	.text._ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_,"axG",@progbits,_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_
	.type	_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_, %function
_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_:
.LFB11367:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11367
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	ldr	x21, [x1]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	mov	x19, x0
	ldr	x5, [x0, 8]
	ldr	x0, [x0]
	udiv	x2, x21, x5
	msub	x2, x2, x5, x21
	lsl	x22, x2, 3
	ldr	x6, [x0, x2, lsl 3]
	str	x23, [sp, 48]
	.cfi_offset 23, -32
	mov	x23, x1
	cbz	x6, .L752
	ldr	x3, [x6]
	ldr	x0, [x3, 8]
	cmp	x21, x0
	beq	.L753
.L776:
	ldr	x4, [x3]
	cbz	x4, .L752
	ldr	x0, [x4, 8]
	mov	x6, x3
	udiv	x3, x0, x5
	msub	x3, x3, x5, x0
	cmp	x2, x3
	bne	.L752
	mov	x3, x4
	cmp	x21, x0
	bne	.L776
.L753:
	ldr	x1, [x6]
	add	x0, x1, 16
	cbz	x1, .L752
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldr	x23, [sp, 48]
	ldp	x29, x30, [sp], 80
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L752:
	.cfi_restore_state
	mov	x0, 24
.LEHB55:
	bl	_Znwm
.LEHE55:
	ldr	x4, [x23]
	mov	x20, x0
	ldr	x1, [x19, 8]
	add	x0, x19, 32
	ldr	x2, [x19, 24]
	mov	x3, 1
	ldr	x5, [x19, 40]
	stp	xzr, x4, [x20]
	str	wzr, [x20, 16]
	str	x5, [sp, 72]
.LEHB56:
	bl	_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm
	tst	w0, 255
	bne	.L777
	ldr	x0, [x19]
	add	x2, x0, x22
	ldr	x1, [x0, x22]
	cbz	x1, .L757
.L778:
	ldr	x1, [x1]
	str	x1, [x20]
	ldr	x0, [x0, x22]
	str	x20, [x0]
.L758:
	ldr	x1, [x19, 24]
	add	x0, x20, 16
	ldp	x21, x22, [sp, 32]
	add	x1, x1, 1
	str	x1, [x19, 24]
	ldp	x19, x20, [sp, 16]
	ldr	x23, [sp, 48]
	ldp	x29, x30, [sp], 80
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L777:
	.cfi_restore_state
	add	x2, sp, 72
	mov	x0, x19
	bl	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_
.LEHE56:
	ldr	x0, [x19, 8]
	udiv	x22, x21, x0
	msub	x22, x22, x0, x21
	ldr	x0, [x19]
	lsl	x22, x22, 3
	add	x2, x0, x22
	ldr	x1, [x0, x22]
	cbnz	x1, .L778
.L757:
	ldr	x1, [x19, 16]
	str	x1, [x20]
	str	x20, [x19, 16]
	cbz	x1, .L759
	ldr	x4, [x1, 8]
	ldr	x3, [x19, 8]
	udiv	x1, x4, x3
	msub	x1, x1, x3, x4
	str	x20, [x0, x1, lsl 3]
.L759:
	add	x0, x19, 16
	str	x0, [x2]
	b	.L758
.L762:
	mov	x19, x0
	mov	x0, x20
	bl	_ZdlPv
	mov	x0, x19
.LEHB57:
	bl	_Unwind_Resume
.LEHE57:
	.cfi_endproc
.LFE11367:
	.section	.gcc_except_table
.LLSDA11367:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11367-.LLSDACSB11367
.LLSDACSB11367:
	.uleb128 .LEHB55-.LFB11367
	.uleb128 .LEHE55-.LEHB55
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB56-.LFB11367
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L762-.LFB11367
	.uleb128 0
	.uleb128 .LEHB57-.LFB11367
	.uleb128 .LEHE57-.LEHB57
	.uleb128 0
	.uleb128 0
.LLSDACSE11367:
	.section	.text._ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_,"axG",@progbits,_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_,comdat
	.size	_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_, .-_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB11883:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	ldp	x24, x23, [x0]
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x21, x0
	stp	x19, x20, [sp, 16]
	stp	x25, x26, [sp, 64]
	sub	x0, x23, x24
	stp	x27, x28, [sp, 80]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	mov	x27, x2
	asr	x0, x0, 3
	mov	x2, 1152921504606846975
	cmp	x0, x2
	beq	.L797
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	mov	x28, x3
	adds	x1, x1, x0
	bcs	.L790
	cbnz	x1, .L784
	mov	x25, 8
	mov	x22, 0
	mov	x20, 0
.L789:
	ldr	s0, [x27]
	add	x0, x20, x26
	ldr	w1, [x28]
	str	s0, [x20, x26]
	str	w1, [x0, 4]
	cmp	x19, x24
	beq	.L785
	mov	x4, x20
	mov	x3, x24
	.p2align 3,,7
.L786:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L786
	add	x26, x26, 8
	add	x25, x20, x26
.L785:
	cmp	x19, x23
	beq	.L787
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L787:
	cbz	x24, .L788
	mov	x0, x24
	bl	_ZdlPv
.L788:
	ldp	x23, x24, [sp, 48]
	ldp	x27, x28, [sp, 80]
	stp	x20, x25, [x21]
	str	x22, [x21, 16]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L790:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L783:
	mov	x0, x22
	bl	_Znwm
	mov	x20, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L789
.L784:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L783
.L797:
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE11883:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB11889:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	ldp	x24, x23, [x0]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x20, x0
	stp	x21, x22, [sp, 32]
	stp	x25, x26, [sp, 64]
	sub	x0, x23, x24
	str	x27, [sp, 80]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	mov	x27, x2
	asr	x0, x0, 3
	mov	x2, 1152921504606846975
	cmp	x0, x2
	beq	.L816
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	adds	x1, x1, x0
	bcs	.L809
	cbnz	x1, .L803
	mov	x25, 8
	mov	x22, 0
	mov	x21, 0
.L808:
	ldr	x0, [x27]
	str	x0, [x21, x26]
	cmp	x19, x24
	beq	.L804
	mov	x4, x21
	mov	x3, x24
	.p2align 3,,7
.L805:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L805
	add	x26, x26, 8
	add	x25, x21, x26
.L804:
	cmp	x19, x23
	beq	.L806
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L806:
	cbz	x24, .L807
	mov	x0, x24
	bl	_ZdlPv
.L807:
	ldp	x23, x24, [sp, 48]
	ldr	x27, [sp, 80]
	stp	x21, x25, [x20]
	str	x22, [x20, 16]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L809:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L802:
	mov	x0, x22
	bl	_Znwm
	mov	x21, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L808
.L803:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L802
.L816:
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE11889:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm
	.type	_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm, %function
_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm:
.LFB11407:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11407
	stp	x29, x30, [sp, -176]!
	.cfi_def_cfa_offset 176
	.cfi_offset 29, -176
	.cfi_offset 30, -168
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -160
	.cfi_offset 20, -152
	mov	x19, x0
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -128
	.cfi_offset 24, -120
	ldp	x23, x0, [x1]
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -144
	.cfi_offset 22, -136
	mov	x22, x1
	sub	x1, x0, x23
	cmp	x2, x1, asr 3
	bhi	.L817
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -104
	.cfi_offset 25, -112
	mov	x24, x2
	mov	x25, 0
	stp	x27, x28, [sp, 80]
	.cfi_offset 28, -88
	.cfi_offset 27, -96
	mov	x21, 0
	mov	x20, 0
	stp	xzr, xzr, [sp, 152]
	mov	x28, 1152921504606846975
	str	xzr, [sp, 168]
	cmp	x23, x0
	beq	.L907
	str	d8, [sp, 96]
	.cfi_offset 72, -80
	b	.L819
	.p2align 2,,3
.L909:
	ldr	w0, [x23, 4]
	add	x21, x21, 8
	str	w0, [x21, -4]
	str	s8, [x21, -8]
.L824:
	sub	x1, x21, x20
	mov	x2, 0
	ldr	x3, [x21, -8]
	asr	x1, x1, 3
	sub	x1, x1, #1
	mov	x0, x20
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	mov	x0, x22
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x23, x0, [x22]
	cmp	x23, x0
	beq	.L908
.L819:
	ldr	s8, [x23]
	fneg	s8, s8
	cmp	x25, x21
	bne	.L909
	sub	x27, x25, x20
	asr	x0, x27, 3
	cmp	x0, x28
	beq	.L910
	cmp	x0, 0
	csinc	x1, x0, xzr, ne
	adds	x0, x0, x1
	bcs	.L827
	cbnz	x0, .L911
	mov	x2, 8
	mov	x25, 0
	mov	x4, 0
.L829:
	add	x0, x4, x27
	ldr	w1, [x23, 4]
	str	s8, [x4, x27]
	str	w1, [x0, 4]
	cmp	x21, x20
	beq	.L864
	mov	x2, x4
	mov	x1, x20
	.p2align 3,,7
.L831:
	ldr	x3, [x1], 8
	str	x3, [x2], 8
	cmp	x1, x21
	bne	.L831
	sub	x21, x21, x20
	add	x21, x21, 8
	add	x21, x4, x21
	cbz	x20, .L832
.L916:
	mov	x0, x20
	str	x4, [sp, 120]
	bl	_ZdlPv
	ldr	x4, [sp, 120]
.L832:
	mov	x20, x4
	b	.L824
	.p2align 2,,3
.L908:
	ldr	x23, [sp, 160]
	cmp	x21, x20
	beq	.L906
	.p2align 3,,7
.L821:
	ldr	x25, [sp, 152]
	sub	x0, x23, x25
	cmp	x24, x0, asr 3
	bls	.L822
	ldr	x0, [x20]
	str	x0, [sp, 144]
	sub	x0, x21, x20
	sub	x21, x21, #8
	ldr	s8, [sp, 144]
	cmp	x0, 8
	fneg	s8, s8
	bgt	.L912
.L835:
	cmp	x23, x25
	beq	.L842
	.p2align 3,,7
.L846:
	ldr	w0, [x25, 4]
	ldr	w1, [sp, 148]
	ldr	x5, [x19, 24]
	ldr	x4, [x19, 232]
	ldp	x6, x2, [x19, 304]
	ldr	x3, [x19, 256]
	madd	x1, x1, x5, x4
	madd	x0, x0, x5, x4
	add	x1, x3, x1
	add	x0, x3, x0
.LEHB58:
	blr	x6
	fcmpe	s8, s0
	bgt	.L905
	add	x25, x25, 8
	cmp	x25, x23
	bne	.L846
	ldr	x25, [sp, 160]
.L842:
	ldr	x0, [sp, 168]
	cmp	x0, x25
	beq	.L913
	mov	x23, x25
	ldr	x0, [sp, 144]
	str	x0, [x23], 8
	str	x23, [sp, 160]
.L845:
	cmp	x20, x21
	bne	.L821
.L906:
	ldr	x25, [sp, 152]
.L822:
	cmp	x23, x25
	beq	.L847
	ldr	x1, [x22, 8]
	.p2align 3,,7
.L854:
	ldr	x0, [x25]
	str	x0, [sp, 144]
	ldr	x0, [x22, 16]
	ldr	s1, [sp, 144]
	fneg	s1, s1
	str	s1, [sp, 140]
	cmp	x0, x1
	beq	.L848
	ldr	w8, [sp, 148]
	add	x1, x1, 8
	str	s1, [x1, -8]
	str	w8, [x1, -4]
	str	x1, [x22, 8]
.L849:
	ldr	x4, [x22]
	sub	x3, x1, x4
	asr	x0, x3, 3
	sub	x2, x0, #2
	sub	x0, x0, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x0, 0
	ble	.L850
	.p2align 3,,7
.L853:
	lsl	x3, x2, 3
	lsl	x0, x0, 3
	add	x6, x4, x3
	add	x5, x4, x0
	ldr	s0, [x4, x3]
	fcmpe	s0, s1
	bmi	.L873
	add	x25, x25, 8
	str	s1, [x5]
	str	w8, [x5, 4]
	cmp	x23, x25
	bne	.L854
.L915:
	ldr	x25, [sp, 152]
.L847:
	cbz	x25, .L855
	mov	x0, x25
	bl	_ZdlPv
.L855:
	cbnz	x20, .L914
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 80]
	.cfi_restore 28
	.cfi_restore 27
	ldr	d8, [sp, 96]
	.cfi_restore 72
.L817:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 176
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L913:
	.cfi_def_cfa_offset 176
	.cfi_offset 19, -160
	.cfi_offset 20, -152
	.cfi_offset 21, -144
	.cfi_offset 22, -136
	.cfi_offset 23, -128
	.cfi_offset 24, -120
	.cfi_offset 25, -112
	.cfi_offset 26, -104
	.cfi_offset 27, -96
	.cfi_offset 28, -88
	.cfi_offset 29, -176
	.cfi_offset 30, -168
	.cfi_offset 72, -80
	mov	x1, x25
	add	x2, sp, 144
	add	x0, sp, 152
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.p2align 3,,7
.L905:
	ldr	x23, [sp, 160]
	b	.L845
	.p2align 2,,3
.L912:
	sub	x1, x21, x20
	ldr	w0, [x21]
	ldr	s0, [x20]
	asr	x8, x1, 3
	ldr	w2, [x21, 4]
	sub	x6, x8, #1
	ldr	w3, [x20, 4]
	bfi	x26, x0, 0, 32
	str	s0, [x21]
	add	x6, x6, x6, lsr 63
	str	w3, [x21, 4]
	bfi	x26, x2, 32, 32
	asr	x6, x6, 1
	cmp	x1, 16
	ble	.L865
	mov	x0, 0
	b	.L840
	.p2align 2,,3
.L867:
	mov	w2, w3
.L839:
	lsl	x0, x0, 3
	add	x3, x20, x0
	str	s0, [x20, x0]
	str	w2, [x3, 4]
	cmp	x1, x6
	bge	.L836
.L868:
	mov	x0, x1
.L840:
	add	x2, x0, 1
	lsl	x4, x2, 1
	lsl	x2, x2, 4
	sub	x1, x4, #1
	add	x7, x20, x2
	lsl	x3, x1, 3
	ldr	s1, [x20, x2]
	add	x5, x20, x3
	ldr	s0, [x20, x3]
	fcmpe	s1, s0
	bmi	.L871
	ldr	w2, [x7, 4]
	bgt	.L866
	ldr	w3, [x5, 4]
	cmp	w3, w2
	bhi	.L867
.L866:
	fmov	s0, s1
	lsl	x0, x0, 3
	add	x3, x20, x0
	mov	x1, x4
	str	s0, [x20, x0]
	str	w2, [x3, 4]
	cmp	x1, x6
	blt	.L868
.L836:
	tbnz	x8, 0, .L841
	sub	x8, x8, #2
	add	x8, x8, x8, lsr 63
	cmp	x1, x8, asr 1
	bne	.L841
	lsl	x2, x1, 1
	lsl	x0, x1, 3
	add	x1, x2, 1
	add	x3, x20, x0
	lsl	x2, x1, 3
	add	x4, x20, x2
	ldr	s0, [x20, x2]
	ldr	w2, [x4, 4]
	str	s0, [x20, x0]
	str	w2, [x3, 4]
	.p2align 3,,7
.L841:
	mov	x3, x26
	mov	x0, x20
	mov	x2, 0
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldp	x25, x23, [sp, 152]
	b	.L835
	.p2align 2,,3
.L871:
	ldr	w2, [x5, 4]
	b	.L839
	.p2align 2,,3
.L873:
	sub	x3, x2, #1
	ldr	w7, [x6, 4]
	str	s0, [x4, x0]
	mov	x0, x2
	add	x3, x3, x3, lsr 63
	str	w7, [x5, 4]
	asr	x2, x3, 1
	cmp	x0, 0
	bgt	.L853
	mov	x5, x6
	add	x25, x25, 8
	str	s1, [x5]
	str	w8, [x5, 4]
	cmp	x23, x25
	bne	.L854
	b	.L915
	.p2align 2,,3
.L848:
	add	x3, sp, 148
	add	x2, sp, 140
	mov	x0, x22
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x1, [x22, 8]
	ldr	w8, [x1, -4]
	ldr	s1, [x1, -8]
	b	.L849
.L914:
	mov	x0, x20
	ldr	d8, [sp, 96]
	.cfi_remember_state
	.cfi_restore 72
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 80]
	.cfi_restore 28
	.cfi_restore 27
	ldp	x29, x30, [sp], 176
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	_ZdlPv
.L850:
	.cfi_restore_state
	sub	x3, x3, #8
	add	x25, x25, 8
	add	x5, x4, x3
	str	s1, [x5]
	str	w8, [x5, 4]
	cmp	x23, x25
	bne	.L854
	b	.L915
.L865:
	mov	x1, 0
	b	.L836
.L864:
	mov	x21, x2
	cbnz	x20, .L916
	b	.L832
.L907:
	.cfi_restore 72
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 80]
	.cfi_restore 28
	.cfi_restore 27
	b	.L817
.L911:
	.cfi_offset 25, -112
	.cfi_offset 26, -104
	.cfi_offset 27, -96
	.cfi_offset 28, -88
	.cfi_offset 72, -80
	cmp	x0, x28
	csel	x0, x0, x28, ls
	lsl	x25, x0, 3
.L828:
	mov	x0, x25
	bl	_Znwm
	mov	x4, x0
	add	x25, x0, x25
	add	x2, x0, 8
	b	.L829
.L910:
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	_ZSt20__throw_length_errorPKc
.LEHE58:
.L827:
	mov	x25, 9223372036854775800
	b	.L828
.L870:
	ldr	x1, [sp, 152]
	mov	x19, x0
	cbz	x1, .L857
	mov	x0, x1
	bl	_ZdlPv
.L857:
	cbz	x20, .L858
	mov	x0, x20
	bl	_ZdlPv
.L858:
	mov	x0, x19
.LEHB59:
	bl	_Unwind_Resume
.LEHE59:
	.cfi_endproc
.LFE11407:
	.section	.gcc_except_table
.LLSDA11407:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11407-.LLSDACSB11407
.LLSDACSB11407:
	.uleb128 .LEHB58-.LFB11407
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L870-.LFB11407
	.uleb128 0
	.uleb128 .LEHB59-.LFB11407
	.uleb128 .LEHE59-.LEHB59
	.uleb128 0
	.uleb128 0
.LLSDACSE11407:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm, .-_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB11968:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	ldp	x24, x23, [x0]
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x21, x0
	stp	x19, x20, [sp, 16]
	stp	x25, x26, [sp, 64]
	sub	x0, x23, x24
	stp	x27, x28, [sp, 80]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	mov	x27, x2
	asr	x0, x0, 3
	mov	x2, 1152921504606846975
	cmp	x0, x2
	beq	.L935
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	mov	x28, x3
	adds	x1, x1, x0
	bcs	.L928
	cbnz	x1, .L922
	mov	x25, 8
	mov	x22, 0
	mov	x20, 0
.L927:
	ldr	s0, [x27]
	add	x0, x20, x26
	ldr	w1, [x28]
	str	s0, [x20, x26]
	str	w1, [x0, 4]
	cmp	x19, x24
	beq	.L923
	mov	x4, x20
	mov	x3, x24
	.p2align 3,,7
.L924:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L924
	add	x26, x26, 8
	add	x25, x20, x26
.L923:
	cmp	x19, x23
	beq	.L925
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L925:
	cbz	x24, .L926
	mov	x0, x24
	bl	_ZdlPv
.L926:
	ldp	x23, x24, [sp, 48]
	ldp	x27, x28, [sp, 80]
	stp	x20, x25, [x21]
	str	x22, [x21, 16]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L928:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L921:
	mov	x0, x22
	bl	_Znwm
	mov	x20, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L927
.L922:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L921
.L935:
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE11968:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.rodata.str1.8
	.align	3
.LC18:
	.string	"Should be not be more than M_ candidates returned by the heuristic"
	.align	3
.LC19:
	.string	"vector::reserve"
	.align	3
.LC20:
	.string	"The newly inserted element should have blank link list"
	.align	3
.LC21:
	.string	"Possible memory corruption"
	.align	3
.LC22:
	.string	"Trying to make a link on a non-existent level"
	.align	3
.LC23:
	.string	"Bad value of sz_link_list_other"
	.align	3
.LC24:
	.string	"Trying to connect an element to itself"
	.text
	.align	2
	.p2align 4,,11
	.type	_ZN7hnswlib15HierarchicalNSWIfE25mutuallyConnectNewElementEPKvjRSt14priority_queueISt4pairIfjESt6vectorIS6_SaIS6_EENS1_14CompareByFirstEEib.isra.0, %function
_ZN7hnswlib15HierarchicalNSWIfE25mutuallyConnectNewElementEPKvjRSt14priority_queueISt4pairIfjESt6vectorIS6_SaIS6_EENS1_14CompareByFirstEEib.isra.0:
.LFB12558:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12558
	stp	x29, x30, [sp, -208]!
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	cmp	w3, 0
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -176
	.cfi_offset 22, -168
	mov	x21, x2
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -144
	.cfi_offset 26, -136
	mov	w26, w3
	ldp	x2, x3, [x0, 48]
	stp	x27, x28, [sp, 80]
	.cfi_offset 27, -128
	.cfi_offset 28, -120
	and	w28, w4, 255
	ldr	x27, [x0, 64]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -192
	.cfi_offset 20, -184
	mov	x19, x0
	csel	x27, x27, x3, eq
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -160
	.cfi_offset 24, -152
	str	w1, [sp, 124]
	mov	x1, x21
.LEHB60:
	bl	_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm
.LEHE60:
	ldp	x2, x1, [x21]
	ldr	x0, [x19, 48]
	sub	x3, x1, x2
	cmp	x0, x3, asr 3
	bcc	.L1091
	stp	xzr, xzr, [sp, 152]
	mov	x3, 2305843009213693951
	str	xzr, [sp, 168]
	cmp	x0, x3
	bhi	.L1092
	cbnz	x0, .L1093
	mov	x20, 0
.L940:
	cmp	x1, x2
	bne	.L948
	b	.L944
	.p2align 2,,3
.L1094:
	ldr	w0, [x2, 4]
	str	w0, [x20], 4
	mov	x0, x21
	str	x20, [sp, 160]
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x2, x0, [x21]
	ldr	x20, [sp, 160]
	cmp	x0, x2
	beq	.L944
.L948:
	ldr	x0, [sp, 168]
	cmp	x0, x20
	bne	.L1094
	add	x2, x2, 4
	mov	x1, x20
	add	x0, sp, 152
.LEHB61:
	bl	_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_
	mov	x0, x21
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x2, x0, [x21]
	ldr	x20, [sp, 160]
	cmp	x0, x2
	bne	.L948
.L944:
	ldr	w0, [sp, 124]
	mov	w3, 48
	ldr	x2, [x19, 192]
	uxtw	x1, w0
	ldr	w4, [x20, -4]
	str	w4, [sp, 120]
	umaddl	x0, w0, w3, x2
	strb	wzr, [sp, 184]
	str	x0, [sp, 176]
	cbnz	w28, .L1095
	cbnz	w26, .L953
.L1108:
	ldr	x2, [x19, 24]
	ldr	x0, [x19, 240]
	ldr	x3, [x19, 256]
	madd	x1, x1, x2, x0
	add	x3, x3, x1
.L954:
	ldr	w0, [x3]
	cmp	w0, 0
	ccmp	w28, 0, 0, ne
	beq	.L1096
	ldp	x2, x7, [sp, 152]
	mov	x1, 1
	sub	x5, x7, x2
	sub	x6, x2, #4
	asr	x5, x5, 2
	strh	w5, [x3]
	cbnz	x5, .L956
	b	.L961
	.p2align 2,,3
.L1013:
	mov	x1, x0
.L956:
	ldr	w0, [x3, x1, lsl 2]
	cmp	w0, 0
	ccmp	w28, 0, 0, ne
	beq	.L1097
	ldr	w0, [x6, x1, lsl 2]
	ldr	x4, [x19, 272]
	ldr	w4, [x4, w0, uxtw 2]
	cmp	w26, w4
	bgt	.L1098
	str	w0, [x3, x1, lsl 2]
	add	x0, x1, 1
	cmp	x5, x1
	bne	.L1013
.L961:
	ldrb	w0, [sp, 184]
	cbnz	w0, .L1099
.L958:
	cmp	x2, x7
	beq	.L963
	sub	w0, w26, #1
	add	x1, x19, 192
	mov	x24, 0
	sxtw	x0, w0
	stp	x1, x0, [sp, 104]
	b	.L993
	.p2align 2,,3
.L1105:
	ldr	x1, [x19, 24]
	ldr	x2, [x19, 240]
	ldr	x20, [x19, 256]
	madd	x1, x4, x1, x2
	add	x20, x20, x1
.L967:
	ldrh	w2, [x20]
	and	x22, x2, 65535
	cmp	x27, x2, uxth
	bcc	.L1100
	ldr	w1, [sp, 124]
	cmp	w1, w0
	beq	.L1101
	ldr	x0, [x19, 272]
	ldr	w0, [x0, x4, lsl 2]
	cmp	w26, w0
	bgt	.L1102
	add	x21, x20, 4
	cbnz	w28, .L1103
.L971:
	cmp	x22, x27
	bcs	.L974
	uxtw	x0, w2
	add	w2, w2, 1
	str	w1, [x21, x0, lsl 2]
	strh	w2, [x20]
.L972:
	ldr	x0, [sp, 136]
	cbz	x0, .L992
	ldr	x1, [sp, 96]
	cbz	x1, .L992
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L992:
	ldp	x2, x0, [sp, 152]
	add	x24, x24, 1
	sub	x0, x0, x2
	cmp	x24, x0, asr 2
	bcs	.L963
.L993:
	ldr	x1, [sp, 104]
	mov	w3, 48
	ldr	w0, [x2, x24, lsl 2]
	lsl	x25, x24, 2
	strb	wzr, [sp, 144]
	ldr	x1, [x1]
	umaddl	x0, w0, w3, x1
	str	x0, [sp, 136]
	cbz	x0, .L1104
	adrp	x1, .LC5
	ldr	x1, [x1, #:lo12:.LC5]
	str	x1, [sp, 96]
	cbz	x1, .L965
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1085
	ldr	x2, [sp, 152]
.L965:
	mov	w0, 1
	strb	w0, [sp, 144]
	ldr	w0, [x2, x25]
	uxtw	x4, w0
	cbz	w26, .L1105
	ldr	x1, [x19, 264]
	ldr	x20, [x19, 32]
	ldr	x1, [x1, x4, lsl 3]
	ldr	x2, [sp, 112]
	madd	x20, x2, x20, x1
	b	.L967
.L1093:
	lsl	x22, x0, 2
	mov	x0, x22
	bl	_Znwm
.LEHE61:
	ldp	x23, x2, [sp, 152]
	mov	x20, x0
	sub	x2, x2, x23
	cmp	x2, 0
	bgt	.L1106
	cbnz	x23, .L942
.L943:
	add	x0, x20, x22
	stp	x20, x20, [sp, 152]
	str	x0, [sp, 168]
	ldp	x2, x1, [x21]
	b	.L940
.L1106:
	mov	x1, x23
	bl	memmove
.L942:
	mov	x0, x23
	bl	_ZdlPv
	b	.L943
.L1095:
	cbz	x0, .L1107
	adrp	x2, .LC5
	ldr	x2, [x2, #:lo12:.LC5]
	cbz	x2, .L951
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L952
	ldr	w1, [sp, 124]
.L951:
	mov	w0, 1
	strb	w0, [sp, 184]
	cbz	w26, .L1108
.L953:
	ldr	x0, [x19, 264]
	sub	w3, w26, #1
	ldr	x2, [x19, 32]
	sxtw	x3, w3
	ldr	x0, [x0, x1, lsl 3]
	madd	x3, x3, x2, x0
	b	.L954
	.p2align 2,,3
.L1103:
	cbz	x22, .L971
	mov	x0, 1
	b	.L973
	.p2align 2,,3
.L1109:
	add	x3, x0, 1
	cmp	x22, x0
	beq	.L971
	mov	x0, x3
.L973:
	ldr	w3, [x20, x0, lsl 2]
	cmp	w1, w3
	bne	.L1109
	b	.L972
	.p2align 2,,3
.L974:
	ldr	x3, [x19, 24]
	uxtw	x0, w1
	ldr	x5, [x19, 232]
	ldp	x6, x2, [x19, 304]
	madd	x0, x0, x3, x5
	madd	x3, x3, x4, x5
	ldr	x1, [x19, 256]
	add	x0, x1, x0
	add	x1, x1, x3
.LEHB62:
	blr	x6
.LEHE62:
	add	x0, sp, 176
	add	x3, sp, 124
	add	x2, sp, 128
	mov	x1, 0
	str	s0, [sp, 128]
	stp	xzr, xzr, [sp, 176]
	str	xzr, [sp, 192]
.LEHB63:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldp	x3, x1, [sp, 176]
	sub	x2, x1, x3
	ldr	w7, [x1, -4]
	ldr	s1, [x1, -8]
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L975
	.p2align 3,,7
.L978:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s0, [x3, x2]
	fcmpe	s1, s0
	bgt	.L1030
.L976:
	str	w7, [x4, 4]
	mov	x23, 0
	str	s1, [x4]
	cbz	x22, .L987
	.p2align 3,,7
.L988:
	ldr	x1, [sp, 152]
	ldr	w0, [x21]
	ldr	x5, [x19, 24]
	ldr	w1, [x1, x25]
	ldr	x4, [x19, 232]
	ldp	x6, x2, [x19, 304]
	ldr	x3, [x19, 256]
	madd	x0, x0, x5, x4
	madd	x1, x1, x5, x4
	add	x0, x3, x0
	add	x1, x3, x1
	blr	x6
	ldp	x1, x0, [sp, 184]
	str	s0, [sp, 132]
	cmp	x1, x0
	beq	.L981
	ldr	w7, [x21]
	add	x0, x1, 8
	str	s0, [x1]
	str	w7, [x1, 4]
	str	x0, [sp, 184]
.L982:
	ldr	x3, [sp, 176]
	sub	x2, x0, x3
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L983
	.p2align 3,,7
.L986:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s1, [x3, x2]
	fcmpe	s1, s0
	bmi	.L1031
	add	x23, x23, 1
	str	s0, [x4]
	str	w7, [x4, 4]
	add	x21, x21, 4
	cmp	x22, x23
	bne	.L988
.L987:
	mov	x2, x27
	add	x1, sp, 176
	mov	x0, x19
	bl	_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm
	ldp	x0, x1, [sp, 176]
	cmp	x1, x0
	beq	.L1018
	mov	x21, 1
	.p2align 3,,7
.L990:
	ldr	w1, [x0, 4]
	add	x0, sp, 176
	str	w1, [x20, x21, lsl 2]
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x0, x1, [sp, 176]
	mov	x2, x21
	add	x21, x21, 1
	cmp	x1, x0
	bne	.L990
	and	w2, w2, 65535
.L989:
	strh	w2, [x20]
	cbz	x0, .L991
	bl	_ZdlPv
.L991:
	ldrb	w0, [sp, 144]
	cbnz	w0, .L972
	ldp	x2, x0, [sp, 152]
	add	x24, x24, 1
	sub	x0, x0, x2
	cmp	x24, x0, asr 2
	bcc	.L993
.L963:
	cbz	x2, .L936
	mov	x0, x2
	bl	_ZdlPv
.L936:
	ldr	w0, [sp, 120]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 208
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1030:
	.cfi_restore_state
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s0, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L978
	mov	x4, x5
	b	.L976
	.p2align 2,,3
.L1031:
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s1, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L986
	mov	x4, x5
	add	x23, x23, 1
	add	x21, x21, 4
	str	s0, [x4]
	str	w7, [x4, 4]
	cmp	x22, x23
	bne	.L988
	b	.L987
	.p2align 2,,3
.L981:
	mov	x3, x21
	add	x2, sp, 132
	add	x0, sp, 176
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE63:
	ldr	x0, [sp, 184]
	ldr	w7, [x0, -4]
	ldr	s0, [x0, -8]
	b	.L982
.L983:
	sub	x0, x2, #8
	add	x23, x23, 1
	add	x4, x3, x0
	add	x21, x21, 4
	str	s0, [x4]
	str	w7, [x4, 4]
	cmp	x22, x23
	bne	.L988
	b	.L987
.L1099:
	ldr	x0, [sp, 176]
	cbz	x0, .L958
	adrp	x1, .LC5
	ldr	x1, [x1, #:lo12:.LC5]
	cbz	x1, .L958
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	ldp	x2, x7, [sp, 152]
	b	.L958
.L1018:
	mov	w2, 0
	b	.L989
.L975:
	sub	x2, x2, #8
	add	x4, x3, x2
	b	.L976
.L952:
.LEHB64:
	bl	_ZSt20__throw_system_errori
.LEHE64:
.L1092:
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
.LEHB65:
	bl	_ZSt20__throw_length_errorPKc
.L1085:
	bl	_ZSt20__throw_system_errori
.LEHE65:
.L1107:
	mov	w0, 1
.LEHB66:
	bl	_ZSt20__throw_system_errori
.LEHE66:
	.p2align 2,,3
.L1104:
	mov	w0, 1
.LEHB67:
	bl	_ZSt20__throw_system_errori
.LEHE67:
.L1025:
	mov	x19, x0
.L997:
	ldrb	w0, [sp, 184]
	cbz	w0, .L1001
	add	x0, sp, 176
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L1001:
	ldr	x0, [sp, 152]
	cbz	x0, .L1009
	bl	_ZdlPv
.L1009:
	mov	x0, x19
.LEHB68:
	bl	_Unwind_Resume
.LEHE68:
.L1100:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC23
	mov	x20, x0
	add	x1, x1, :lo12:.LC23
.LEHB69:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE69:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB70:
	bl	__cxa_throw
.LEHE70:
.L1101:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC24
	mov	x20, x0
	add	x1, x1, :lo12:.LC24
.LEHB71:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE71:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB72:
	bl	__cxa_throw
.LEHE72:
.L1024:
.L1089:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
.L1003:
	ldrb	w0, [sp, 144]
	cbz	w0, .L1001
	add	x0, sp, 136
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L1001
.L1023:
	b	.L1089
.L1020:
	mov	x19, x0
	b	.L1003
.L1021:
	ldr	x1, [sp, 176]
	mov	x19, x0
	cbz	x1, .L1003
	mov	x0, x1
	bl	_ZdlPv
	b	.L1003
.L1019:
	mov	x19, x0
	b	.L1001
.L1096:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC20
	mov	x20, x0
	add	x1, x1, :lo12:.LC20
.LEHB73:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE73:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB74:
	bl	__cxa_throw
.LEHE74:
.L1028:
.L1088:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
	b	.L997
.L1091:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC18
	mov	x19, x0
	add	x1, x1, :lo12:.LC18
.LEHB75:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE75:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x19
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB76:
	bl	__cxa_throw
.LEHE76:
.L1097:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC21
	mov	x20, x0
	add	x1, x1, :lo12:.LC21
.LEHB77:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE77:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB78:
	bl	__cxa_throw
.LEHE78:
.L1102:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC22
	mov	x20, x0
	add	x1, x1, :lo12:.LC22
.LEHB79:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE79:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB80:
	bl	__cxa_throw
.LEHE80:
.L1098:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC22
	mov	x20, x0
	add	x1, x1, :lo12:.LC22
.LEHB81:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE81:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB82:
	bl	__cxa_throw
.LEHE82:
.L1029:
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	bl	__cxa_free_exception
	mov	x0, x19
.LEHB83:
	bl	_Unwind_Resume
.LEHE83:
.L1022:
	b	.L1089
.L1027:
	b	.L1088
.L1026:
	b	.L1088
	.cfi_endproc
.LFE12558:
	.section	.gcc_except_table
.LLSDA12558:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12558-.LLSDACSB12558
.LLSDACSB12558:
	.uleb128 .LEHB60-.LFB12558
	.uleb128 .LEHE60-.LEHB60
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB61-.LFB12558
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L1019-.LFB12558
	.uleb128 0
	.uleb128 .LEHB62-.LFB12558
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L1020-.LFB12558
	.uleb128 0
	.uleb128 .LEHB63-.LFB12558
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L1021-.LFB12558
	.uleb128 0
	.uleb128 .LEHB64-.LFB12558
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L1025-.LFB12558
	.uleb128 0
	.uleb128 .LEHB65-.LFB12558
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L1019-.LFB12558
	.uleb128 0
	.uleb128 .LEHB66-.LFB12558
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L1025-.LFB12558
	.uleb128 0
	.uleb128 .LEHB67-.LFB12558
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L1019-.LFB12558
	.uleb128 0
	.uleb128 .LEHB68-.LFB12558
	.uleb128 .LEHE68-.LEHB68
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB69-.LFB12558
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L1024-.LFB12558
	.uleb128 0
	.uleb128 .LEHB70-.LFB12558
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L1020-.LFB12558
	.uleb128 0
	.uleb128 .LEHB71-.LFB12558
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L1023-.LFB12558
	.uleb128 0
	.uleb128 .LEHB72-.LFB12558
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L1020-.LFB12558
	.uleb128 0
	.uleb128 .LEHB73-.LFB12558
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L1028-.LFB12558
	.uleb128 0
	.uleb128 .LEHB74-.LFB12558
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L1025-.LFB12558
	.uleb128 0
	.uleb128 .LEHB75-.LFB12558
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L1029-.LFB12558
	.uleb128 0
	.uleb128 .LEHB76-.LFB12558
	.uleb128 .LEHE76-.LEHB76
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB77-.LFB12558
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L1027-.LFB12558
	.uleb128 0
	.uleb128 .LEHB78-.LFB12558
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L1025-.LFB12558
	.uleb128 0
	.uleb128 .LEHB79-.LFB12558
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L1022-.LFB12558
	.uleb128 0
	.uleb128 .LEHB80-.LFB12558
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L1020-.LFB12558
	.uleb128 0
	.uleb128 .LEHB81-.LFB12558
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L1026-.LFB12558
	.uleb128 0
	.uleb128 .LEHB82-.LFB12558
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L1025-.LFB12558
	.uleb128 0
	.uleb128 .LEHB83-.LFB12558
	.uleb128 .LEHE83-.LEHB83
	.uleb128 0
	.uleb128 0
.LLSDACSE12558:
	.text
	.size	_ZN7hnswlib15HierarchicalNSWIfE25mutuallyConnectNewElementEPKvjRSt14priority_queueISt4pairIfjESt6vectorIS6_SaIS6_EENS1_14CompareByFirstEEib.isra.0, .-_ZN7hnswlib15HierarchicalNSWIfE25mutuallyConnectNewElementEPKvjRSt14priority_queueISt4pairIfjESt6vectorIS6_SaIS6_EENS1_14CompareByFirstEEib.isra.0
	.section	.rodata._ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi.str1.8,"aMS",@progbits,1
	.align	3
.LC25:
	.string	"cannot create std::deque larger than max_size()"
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi
	.type	_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi, %function
_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi:
.LFB11355:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11355
	stp	x29, x30, [sp, -208]!
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -192
	.cfi_offset 20, -184
	mov	x19, x0
	ldr	x0, [x0, 112]
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -176
	.cfi_offset 22, -168
	mov	x21, x8
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	.cfi_offset 23, -160
	.cfi_offset 24, -152
	.cfi_offset 25, -144
	.cfi_offset 26, -136
	mov	x26, x2
	stp	x27, x28, [sp, 80]
	.cfi_offset 27, -128
	.cfi_offset 28, -120
	uxtw	x28, w3
	str	d8, [sp, 96]
	.cfi_offset 72, -112
	str	w3, [sp, 120]
	str	w1, [sp, 140]
.LEHB84:
	bl	_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv
.LEHE84:
	ldr	w2, [sp, 140]
	ldrh	w23, [x0]
	stp	x0, x0, [sp, 120]
	ldr	x22, [x0, 8]
	stp	xzr, xzr, [sp, 176]
	ldr	x0, [x19, 24]
	str	xzr, [sp, 192]
	ldr	x3, [x19, 256]
	mul	x2, x2, x0
	ldr	x1, [x19, 240]
	add	x0, x3, x2
	stp	xzr, xzr, [x21]
	add	x0, x0, x1
	str	xzr, [x21, 16]
	ldrb	w0, [x0, 2]
	tbnz	x0, 0, .L1111
	ldr	x1, [x19, 232]
	mov	x0, x26
	ldr	x4, [x19, 304]
	add	x1, x2, x1
	ldr	x2, [x19, 312]
	add	x1, x3, x1
.LEHB85:
	blr	x4
	ldp	x1, x0, [x21, 8]
	str	s0, [sp, 120]
	str	s0, [sp, 156]
	fmov	s8, s0
	cmp	x1, x0
	beq	.L1112
	ldr	w7, [sp, 140]
	fmov	s2, s0
	str	s0, [x1]
	add	x0, x1, 8
	str	w7, [x1, 4]
	str	x0, [x21, 8]
.L1113:
	ldr	x3, [x21]
	sub	x2, x0, x3
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L1114
	.p2align 3,,7
.L1117:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s0, [x3, x2]
	fcmpe	s0, s2
	bmi	.L1187
.L1115:
	ldp	x1, x0, [sp, 184]
	fneg	s1, s8
	str	w7, [x4, 4]
	str	s2, [x4]
	str	s1, [sp, 160]
	cmp	x1, x0
	beq	.L1118
.L1239:
	ldr	w9, [sp, 140]
	add	x5, x1, 8
	str	s1, [x1]
	mov	w8, w9
	str	w9, [x1, 4]
	str	x5, [sp, 184]
.L1119:
	ldr	x0, [sp, 176]
	sub	x3, x5, x0
	asr	x1, x3, 3
	sub	x2, x1, #2
	sub	x1, x1, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x1, 0
	ble	.L1120
	.p2align 3,,7
.L1123:
	lsl	x3, x2, 3
	lsl	x1, x1, 3
	add	x6, x0, x3
	add	x4, x0, x1
	ldr	s0, [x0, x3]
	fcmpe	s0, s1
	bmi	.L1188
.L1121:
	str	w9, [x4, 4]
	str	s1, [x4]
.L1124:
	strh	w23, [x22, w8, uxtw 1]
	cmp	x0, x5
	beq	.L1238
	sub	w1, w28, #1
	sxtw	x1, w1
	str	x1, [sp, 120]
	.p2align 3,,7
.L1162:
	ldr	s0, [x0]
	ldr	w20, [x0, 4]
	fneg	s0, s0
	fcmpe	s0, s8
	bgt	.L1190
	b	.L1130
	.p2align 2,,3
.L1187:
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s0, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L1117
	mov	x4, x5
	fneg	s1, s8
	ldp	x1, x0, [sp, 184]
	str	w7, [x4, 4]
	str	s2, [x4]
	str	s1, [sp, 160]
	cmp	x1, x0
	bne	.L1239
.L1118:
	add	x3, sp, 140
	add	x2, sp, 160
	add	x0, sp, 176
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE85:
	ldr	x5, [sp, 184]
	ldr	w8, [sp, 140]
	ldr	w9, [x5, -4]
	ldr	s1, [x5, -8]
	b	.L1119
	.p2align 2,,3
.L1188:
	sub	x3, x2, #1
	ldr	w7, [x6, 4]
	str	s0, [x0, x1]
	mov	x1, x2
	add	x3, x3, x3, lsr 63
	str	w7, [x4, 4]
	asr	x2, x3, 1
	cmp	x1, 0
	bgt	.L1123
	mov	x4, x6
	b	.L1121
	.p2align 2,,3
.L1190:
	ldp	x2, x0, [x21]
	ldr	x1, [x19, 72]
	sub	x0, x0, x2
	cmp	x1, x0, asr 3
	beq	.L1238
.L1130:
	add	x0, sp, 176
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldr	x0, [x19, 192]
	mov	w1, 48
	strb	wzr, [sp, 168]
	uxtw	x25, w20
	umaddl	x0, w20, w1, x0
	str	x0, [sp, 160]
	cbz	x0, .L1240
	adrp	x1, .LC5
	ldr	x27, [x1, #:lo12:.LC5]
	cbz	x27, .L1134
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1241
.L1134:
	mov	w0, 1
	strb	w0, [sp, 168]
	cbnz	w28, .L1135
	ldr	x1, [x19, 24]
	ldr	x0, [x19, 240]
	ldr	x24, [x19, 256]
	madd	x25, x25, x1, x0
	add	x24, x24, x25
	ldrh	w25, [x24]
	cbz	x25, .L1137
.L1245:
	mov	x20, 0
	b	.L1138
	.p2align 2,,3
.L1242:
	fcmpe	s0, s8
	bmi	.L1142
.L1141:
	cmp	x25, x20
	beq	.L1139
.L1138:
	add	x20, x20, 1
	ldr	w0, [x24, x20, lsl 2]
	str	w0, [sp, 148]
	uxtw	x1, w0
	ubfiz	x0, x0, 1, 32
	ldrh	w2, [x22, x0]
	cmp	w2, w23
	beq	.L1141
	ldr	x5, [x19, 24]
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	strh	w23, [x22, x0]
	madd	x1, x1, x5, x4
	mov	x0, x26
	ldr	x4, [x19, 256]
	add	x1, x4, x1
.LEHB86:
	blr	x3
	ldp	x0, x6, [x21]
	str	s0, [sp, 152]
	ldr	x1, [x19, 72]
	sub	x0, x6, x0
	cmp	x1, x0, asr 3
	bls	.L1242
.L1142:
	ldp	x1, x0, [sp, 184]
	fneg	s0, s0
	str	s0, [sp, 156]
	cmp	x1, x0
	beq	.L1145
	ldr	w7, [sp, 148]
	add	x0, x1, 8
	str	s0, [x1]
	mov	w8, w7
	str	w7, [x1, 4]
	str	x0, [sp, 184]
.L1146:
	ldr	x4, [sp, 176]
	sub	x3, x0, x4
	asr	x0, x3, 3
	sub	x2, x0, #2
	sub	x0, x0, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x0, 0
	ble	.L1147
	.p2align 3,,7
.L1150:
	lsl	x3, x2, 3
	lsl	x0, x0, 3
	add	x1, x4, x3
	add	x5, x4, x0
	ldr	s1, [x4, x3]
	fcmpe	s1, s0
	bmi	.L1191
.L1148:
	ldr	x3, [x19, 24]
	uxtw	x0, w7
	ldr	x2, [x19, 256]
	ldr	x1, [x19, 240]
	str	w8, [x5, 4]
	madd	x0, x0, x3, x2
	str	s0, [x5]
	add	x0, x0, x1
	ldrb	w0, [x0, 2]
	tbz	x0, 0, .L1151
	ldr	x2, [x21]
	sub	x9, x6, x2
	asr	x9, x9, 3
.L1152:
	ldr	x0, [x19, 72]
	cmp	x0, x9
	bcc	.L1243
.L1159:
	cmp	x2, x6
	beq	.L1141
	ldr	s8, [x2]
	cmp	x25, x20
	bne	.L1138
.L1139:
	ldrb	w0, [sp, 168]
	cbnz	w0, .L1137
.L1160:
	ldp	x0, x1, [sp, 176]
	cmp	x0, x1
	bne	.L1162
.L1132:
	ldr	x19, [x19, 112]
	strb	wzr, [sp, 168]
	add	x0, x19, 80
	str	x0, [sp, 160]
	cbz	x27, .L1163
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1244
.L1163:
	ldp	x0, x1, [x19, 16]
	mov	w2, 1
	strb	w2, [sp, 168]
	cmp	x0, x1
	beq	.L1164
	ldr	x1, [sp, 128]
	str	x1, [x0, -8]!
	str	x0, [x19, 16]
.L1165:
	ldr	x0, [sp, 160]
	cbz	x0, .L1168
	cbz	x27, .L1168
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L1168:
	ldr	x0, [sp, 176]
	cbz	x0, .L1110
	bl	_ZdlPv
.L1110:
	mov	x0, x21
	ldr	d8, [sp, 96]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 208
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1191:
	.cfi_restore_state
	sub	x3, x2, #1
	ldr	w9, [x1, 4]
	str	s1, [x4, x0]
	mov	x0, x2
	add	x3, x3, x3, lsr 63
	str	w9, [x5, 4]
	asr	x2, x3, 1
	cmp	x0, 0
	bgt	.L1150
	mov	x5, x1
	b	.L1148
	.p2align 2,,3
.L1243:
	mov	x0, x21
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x2, x6, [x21]
	b	.L1159
	.p2align 2,,3
.L1151:
	ldr	x0, [x21, 16]
	cmp	x0, x6
	beq	.L1153
	ldr	s1, [sp, 152]
	add	x6, x6, 8
	str	w7, [x6, -4]
	str	s1, [x6, -8]
	str	x6, [x21, 8]
.L1154:
	ldr	x2, [x21]
	sub	x3, x6, x2
	asr	x9, x3, 3
	sub	x0, x9, #2
	sub	x1, x9, #1
	add	x0, x0, x0, lsr 63
	asr	x0, x0, 1
	cmp	x1, 0
	ble	.L1155
	.p2align 3,,7
.L1158:
	lsl	x3, x0, 3
	lsl	x1, x1, 3
	add	x5, x2, x3
	add	x4, x2, x1
	ldr	s0, [x2, x3]
	fcmpe	s0, s1
	bmi	.L1192
	str	s1, [x4]
	str	w7, [x4, 4]
	b	.L1152
	.p2align 2,,3
.L1192:
	sub	x3, x0, #1
	ldr	w8, [x5, 4]
	str	s0, [x2, x1]
	mov	x1, x0
	add	x3, x3, x3, lsr 63
	str	w8, [x4, 4]
	asr	x0, x3, 1
	cmp	x1, 0
	bgt	.L1158
	mov	x4, x5
	str	s1, [x4]
	str	w7, [x4, 4]
	b	.L1152
	.p2align 2,,3
.L1145:
	add	x3, sp, 148
	add	x2, sp, 156
	add	x0, sp, 176
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x0, [sp, 184]
	ldr	w7, [sp, 148]
	ldr	x6, [x21, 8]
	ldr	w8, [x0, -4]
	ldr	s0, [x0, -8]
	b	.L1146
	.p2align 2,,3
.L1135:
	ldr	x0, [x19, 264]
	ldr	x24, [x19, 32]
	ldr	x0, [x0, x25, lsl 3]
	ldr	x1, [sp, 120]
	madd	x24, x1, x24, x0
	ldrh	w25, [x24]
	cbnz	x25, .L1245
.L1137:
	ldr	x0, [sp, 160]
	cbz	x0, .L1160
	cbz	x27, .L1160
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L1160
.L1153:
	mov	x1, x6
	add	x3, sp, 148
	add	x2, sp, 152
	mov	x0, x21
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE86:
	ldr	x6, [x21, 8]
	ldr	w7, [x6, -4]
	ldr	s1, [x6, -8]
	b	.L1154
.L1147:
	sub	x0, x3, #8
	add	x5, x4, x0
	b	.L1148
.L1155:
	sub	x3, x3, #8
	add	x4, x2, x3
	str	s1, [x4]
	str	w7, [x4, 4]
	b	.L1152
.L1238:
	adrp	x0, .LC5
	ldr	x27, [x0, #:lo12:.LC5]
	b	.L1132
.L1111:
	mvni	v0.2s, 0x80, lsl 16
	add	x3, sp, 140
	add	x2, sp, 160
	add	x0, sp, 176
	mov	x1, 0
	str	s0, [sp, 160]
.LEHB87:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE87:
	ldp	x0, x5, [sp, 176]
	sub	x3, x5, x0
	ldr	w9, [x5, -4]
	ldr	s1, [x5, -8]
	asr	x1, x3, 3
	sub	x2, x1, #2
	sub	x1, x1, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x1, 0
	ble	.L1125
.L1128:
	lsl	x3, x2, 3
	lsl	x1, x1, 3
	add	x6, x0, x3
	add	x4, x0, x1
	ldr	s0, [x0, x3]
	fcmpe	s1, s0
	bgt	.L1189
.L1126:
	ldr	w8, [sp, 140]
	mov	w1, 2139095039
	fmov	s8, w1
	str	s1, [x4]
	str	w9, [x4, 4]
	b	.L1124
	.p2align 2,,3
.L1189:
	sub	x3, x2, #1
	ldr	w7, [x6, 4]
	str	s0, [x0, x1]
	mov	x1, x2
	add	x3, x3, x3, lsr 63
	str	w7, [x4, 4]
	asr	x2, x3, 1
	cmp	x1, 0
	bgt	.L1128
	mov	x4, x6
	ldr	w8, [sp, 140]
	mov	w1, 2139095039
	fmov	s8, w1
	str	s1, [x4]
	str	w9, [x4, 4]
	b	.L1124
.L1164:
	add	x20, x19, 16
	mov	x5, 1152921504606846975
	ldp	x4, x6, [x19, 48]
	ldp	x3, x22, [x20, 16]
	ldr	x1, [x19, 72]
	sub	x4, x4, x6
	sub	x1, x1, x22
	sub	x3, x3, x0
	asr	x0, x4, 3
	asr	x1, x1, 3
	sub	x1, x1, #1
	add	x0, x0, x1, lsl 6
	add	x0, x0, x3, asr 3
	cmp	x0, x5
	beq	.L1246
	ldr	x0, [x19]
	cmp	x22, x0
	beq	.L1247
.L1167:
	mov	x0, 512
.LEHB88:
	bl	_Znwm
.LEHE88:
	ldrb	w1, [sp, 168]
	str	x0, [x22, -8]
	ldr	x0, [x19, 40]
	sub	x2, x0, #8
	ldr	x0, [x0, -8]
	str	x2, [x20, 24]
	str	x0, [x20, 8]
	add	x2, x0, 512
	str	x2, [x20, 16]
	add	x2, x0, 504
	str	x2, [x19, 16]
	ldr	x2, [sp, 128]
	str	x2, [x0, 504]
	cbz	w1, .L1168
	b	.L1165
	.p2align 2,,3
.L1112:
	add	x3, sp, 140
	add	x2, sp, 156
	mov	x0, x21
.LEHB89:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE89:
	ldr	x0, [x21, 8]
	ldr	s8, [sp, 156]
	ldr	w7, [x0, -4]
	ldr	s2, [x0, -8]
	b	.L1113
.L1247:
	mov	x0, x19
	mov	x1, 1
.LEHB90:
	bl	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb
.LEHE90:
	ldr	x22, [x19, 40]
	b	.L1167
.L1120:
	sub	x3, x3, #8
	add	x4, x0, x3
	b	.L1121
.L1114:
	sub	x0, x2, #8
	add	x4, x3, x0
	b	.L1115
.L1125:
	sub	x3, x3, #8
	add	x4, x0, x3
	b	.L1126
.L1241:
.LEHB91:
	bl	_ZSt20__throw_system_errori
.L1240:
	mov	w0, 1
	bl	_ZSt20__throw_system_errori
.LEHE91:
.L1246:
	adrp	x0, .LC25
	add	x0, x0, :lo12:.LC25
.LEHB92:
	bl	_ZSt20__throw_length_errorPKc
.LEHE92:
.L1244:
.LEHB93:
	bl	_ZSt20__throw_system_errori
.LEHE93:
.L1185:
	ldrb	w1, [sp, 168]
	mov	x19, x0
	cbz	w1, .L1173
	add	x0, sp, 160
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L1173
.L1186:
	ldrb	w1, [sp, 168]
	mov	x19, x0
	cbz	w1, .L1173
	add	x0, sp, 160
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L1173:
	ldr	x0, [sp, 176]
	cbz	x0, .L1176
	bl	_ZdlPv
.L1176:
	ldr	x0, [x21]
	cbz	x0, .L1177
	bl	_ZdlPv
.L1177:
	mov	x0, x19
.LEHB94:
	bl	_Unwind_Resume
.LEHE94:
.L1184:
	mov	x19, x0
	b	.L1173
	.cfi_endproc
.LFE11355:
	.section	.gcc_except_table
.LLSDA11355:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11355-.LLSDACSB11355
.LLSDACSB11355:
	.uleb128 .LEHB84-.LFB11355
	.uleb128 .LEHE84-.LEHB84
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB85-.LFB11355
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L1184-.LFB11355
	.uleb128 0
	.uleb128 .LEHB86-.LFB11355
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L1185-.LFB11355
	.uleb128 0
	.uleb128 .LEHB87-.LFB11355
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L1184-.LFB11355
	.uleb128 0
	.uleb128 .LEHB88-.LFB11355
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L1186-.LFB11355
	.uleb128 0
	.uleb128 .LEHB89-.LFB11355
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L1184-.LFB11355
	.uleb128 0
	.uleb128 .LEHB90-.LFB11355
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L1186-.LFB11355
	.uleb128 0
	.uleb128 .LEHB91-.LFB11355
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L1184-.LFB11355
	.uleb128 0
	.uleb128 .LEHB92-.LFB11355
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L1186-.LFB11355
	.uleb128 0
	.uleb128 .LEHB93-.LFB11355
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L1184-.LFB11355
	.uleb128 0
	.uleb128 .LEHB94-.LFB11355
	.uleb128 .LEHE94-.LEHB94
	.uleb128 0
	.uleb128 0
.LLSDACSE11355:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi, .-_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi
	.section	.rodata._ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii.str1.8,"aMS",@progbits,1
	.align	3
.LC26:
	.string	"Level of item to be updated cannot be bigger than max level"
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii
	.type	_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii, %function
_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii:
.LFB11410:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11410
	stp	x29, x30, [sp, -208]!
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -192
	.cfi_offset 20, -184
	mov	x19, x0
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	.cfi_offset 21, -176
	.cfi_offset 22, -168
	.cfi_offset 23, -160
	.cfi_offset 24, -152
	mov	x23, x1
	mov	w24, w2
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -144
	.cfi_offset 26, -136
	mov	w26, w3
	stp	x27, x28, [sp, 80]
	str	d8, [sp, 96]
	.cfi_offset 27, -128
	.cfi_offset 28, -120
	.cfi_offset 72, -112
	stp	w5, w4, [sp, 116]
	str	w2, [sp, 124]
	cmp	w4, w5
	bge	.L1249
	mov	x0, x1
	uxtw	x21, w2
	ldr	x1, [x19, 24]
	add	x28, x19, 192
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	madd	x1, x21, x1, x4
	ldr	x4, [x19, 256]
	add	x1, x4, x1
.LEHB95:
	blr	x3
.LEHE95:
	fmov	s8, s0
.L1262:
	ldr	w0, [sp, 116]
	sub	w0, w0, #1
	sxtw	x0, w0
	mov	x27, x0
	.p2align 3,,7
.L1260:
	ldr	x0, [x28]
	mov	w1, 48
	strb	wzr, [sp, 184]
	umaddl	x0, w24, w1, x0
	str	x0, [sp, 176]
	cbz	x0, .L1345
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	ldr	x1, [x1]
	cbz	x1, .L1251
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1346
.L1251:
	mov	w0, 1
	strb	w0, [sp, 184]
	ldr	w0, [sp, 116]
	cbnz	w0, .L1252
	ldr	x0, [x19, 24]
	ldr	x1, [x19, 240]
	ldr	x20, [x19, 256]
	madd	x0, x21, x0, x1
	add	x20, x20, x0
	ldrh	w22, [x20]
	cbz	w22, .L1254
.L1349:
	sub	w22, w22, #1
	add	x0, x20, 8
	add	x20, x20, 4
	mov	w25, 0
	add	x22, x0, x22, uxtw 2
	.p2align 3,,7
.L1257:
	ldr	w21, [x20]
	mov	x0, x23
	ldr	x5, [x19, 24]
	uxtw	x1, w21
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	madd	x1, x1, x5, x4
	ldr	x4, [x19, 256]
	add	x1, x4, x1
.LEHB96:
	blr	x3
.LEHE96:
	fcmpe	s0, s8
	bmi	.L1301
.L1255:
	add	x20, x20, 4
	cmp	x22, x20
	bne	.L1257
	ldrb	w0, [sp, 184]
	cbnz	w0, .L1347
.L1258:
	cbz	w25, .L1292
.L1348:
	uxtw	x21, w24
	b	.L1260
	.p2align 2,,3
.L1347:
	ldr	x0, [sp, 176]
	cbz	x0, .L1258
.L1293:
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	ldr	x1, [x1]
	cbz	x1, .L1258
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	cbnz	w25, .L1348
.L1292:
	ldp	w0, w1, [sp, 116]
	sub	w0, w0, #1
	str	w0, [sp, 116]
	cmp	w1, w0
	beq	.L1261
	uxtw	x21, w24
	b	.L1262
	.p2align 2,,3
.L1301:
	fmov	s8, s0
	mov	w24, w21
	mov	w25, 1
	b	.L1255
	.p2align 2,,3
.L1252:
	ldr	x0, [x19, 264]
	ldr	x20, [x19, 32]
	ldr	x0, [x0, x21, lsl 3]
	madd	x20, x27, x20, x0
	ldrh	w22, [x20]
	cbnz	w22, .L1349
.L1254:
	ldr	x0, [sp, 176]
	cbz	x0, .L1292
	mov	w25, 0
	b	.L1293
.L1249:
	bgt	.L1263
.L1261:
	ldr	w0, [sp, 120]
	tbnz	w0, #31, .L1248
	.p2align 3,,7
.L1264:
	ldr	w3, [sp, 120]
	mov	x2, x23
	mov	x0, x19
	add	x8, sp, 144
	mov	w1, w24
.LEHB97:
	bl	_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi
.LEHE97:
	stp	xzr, xzr, [sp, 176]
	ldp	x2, x0, [sp, 144]
	str	xzr, [sp, 192]
	cmp	x2, x0
	beq	.L1265
	.p2align 3,,7
.L1273:
	ldr	w0, [x2, 4]
	cmp	w0, w26
	beq	.L1266
	ldp	x1, x0, [sp, 184]
	cmp	x1, x0
	beq	.L1267
	ldr	x0, [x2]
	str	x0, [x1], 8
	str	x1, [sp, 184]
.L1268:
	ldr	x3, [sp, 176]
	ldr	w7, [x1, -4]
	sub	x2, x1, x3
	ldr	s1, [x1, -8]
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L1269
	.p2align 3,,7
.L1272:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s0, [x3, x2]
	fcmpe	s1, s0
	bgt	.L1302
.L1270:
	str	w7, [x4, 4]
	str	s1, [x4]
.L1266:
	add	x0, sp, 144
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x2, x0, [sp, 144]
	cmp	x0, x2
	bne	.L1273
	ldp	x1, x0, [sp, 176]
	cmp	x0, x1
	beq	.L1274
	ldr	w2, [sp, 124]
	ldr	x0, [x19, 24]
	ldr	x3, [x19, 256]
	mul	x2, x2, x0
	ldr	x1, [x19, 240]
	add	x0, x3, x2
	add	x0, x0, x1
	ldrb	w0, [x0, 2]
	tbz	x0, 0, .L1276
	ldr	x1, [x19, 232]
	mov	x0, x23
	ldr	x4, [x19, 304]
	add	x1, x2, x1
	ldr	x2, [x19, 312]
	add	x1, x3, x1
.LEHB98:
	blr	x4
	ldp	x1, x0, [sp, 184]
	str	s0, [sp, 140]
	cmp	x1, x0
	beq	.L1277
	ldr	w8, [sp, 124]
	add	x0, x1, 8
	str	s0, [x1]
	str	w8, [x1, 4]
	str	x0, [sp, 184]
.L1278:
	ldr	x3, [sp, 176]
	sub	x2, x0, x3
	asr	x7, x2, 3
	sub	x0, x7, #2
	sub	x1, x7, #1
	add	x0, x0, x0, lsr 63
	asr	x0, x0, 1
	cmp	x1, 0
	ble	.L1279
	.p2align 3,,7
.L1282:
	lsl	x2, x0, 3
	lsl	x1, x1, 3
	add	x5, x3, x2
	add	x4, x3, x1
	ldr	s1, [x3, x2]
	fcmpe	s1, s0
	bmi	.L1303
.L1280:
	ldr	x0, [x19, 72]
	str	s0, [x4]
	str	w8, [x4, 4]
	cmp	x0, x7
	bcc	.L1350
.L1276:
	ldr	w3, [sp, 120]
	add	x2, sp, 176
	mov	w1, w26
	mov	x0, x19
	mov	w4, 1
	bl	_ZN7hnswlib15HierarchicalNSWIfE25mutuallyConnectNewElementEPKvjRSt14priority_queueISt4pairIfjESt6vectorIS6_SaIS6_EENS1_14CompareByFirstEEib.isra.0
	ldr	x1, [sp, 176]
	mov	w24, w0
.L1274:
	cbz	x1, .L1343
	mov	x0, x1
	bl	_ZdlPv
.L1343:
	ldr	x2, [sp, 144]
.L1265:
	cbz	x2, .L1284
	mov	x0, x2
	bl	_ZdlPv
.L1284:
	ldr	w0, [sp, 120]
	sub	w0, w0, #1
	str	w0, [sp, 120]
	cmn	w0, #1
	bne	.L1264
.L1248:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldr	d8, [sp, 96]
	ldp	x29, x30, [sp], 208
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1302:
	.cfi_restore_state
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s0, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L1272
	mov	x4, x5
	b	.L1270
	.p2align 2,,3
.L1303:
	sub	x2, x0, #1
	ldr	w6, [x5, 4]
	str	s1, [x3, x1]
	mov	x1, x0
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x0, x2, 1
	cmp	x1, 0
	bgt	.L1282
	mov	x4, x5
	ldr	x0, [x19, 72]
	str	s0, [x4]
	str	w8, [x4, 4]
	cmp	x0, x7
	bcs	.L1276
.L1350:
	add	x0, sp, 176
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	b	.L1276
	.p2align 2,,3
.L1267:
	add	x0, sp, 176
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x1, [sp, 184]
	b	.L1268
.L1269:
	sub	x2, x2, #8
	add	x4, x3, x2
	b	.L1270
.L1277:
	add	x3, sp, 124
	add	x2, sp, 140
	add	x0, sp, 176
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE98:
	ldr	x0, [sp, 184]
	ldr	w8, [x0, -4]
	ldr	s0, [x0, -8]
	b	.L1278
.L1279:
	sub	x0, x2, #8
	add	x4, x3, x0
	b	.L1280
.L1346:
.LEHB99:
	bl	_ZSt20__throw_system_errori
.L1345:
	mov	w0, 1
	bl	_ZSt20__throw_system_errori
.LEHE99:
.L1263:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC26
	mov	x19, x0
	add	x1, x1, :lo12:.LC26
.LEHB100:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE100:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x19
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB101:
	bl	__cxa_throw
.LEHE101:
.L1300:
	ldr	x1, [sp, 176]
	mov	x19, x0
	cbz	x1, .L1290
	mov	x0, x1
	bl	_ZdlPv
.L1290:
	ldr	x0, [sp, 144]
	cbz	x0, .L1344
	bl	_ZdlPv
	b	.L1344
.L1298:
	ldrb	w1, [sp, 184]
	mov	x19, x0
	cbz	w1, .L1344
	add	x0, sp, 176
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L1344
.L1299:
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	bl	__cxa_free_exception
.L1344:
	mov	x0, x19
.LEHB102:
	bl	_Unwind_Resume
.LEHE102:
	.cfi_endproc
.LFE11410:
	.section	.gcc_except_table
.LLSDA11410:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11410-.LLSDACSB11410
.LLSDACSB11410:
	.uleb128 .LEHB95-.LFB11410
	.uleb128 .LEHE95-.LEHB95
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB96-.LFB11410
	.uleb128 .LEHE96-.LEHB96
	.uleb128 .L1298-.LFB11410
	.uleb128 0
	.uleb128 .LEHB97-.LFB11410
	.uleb128 .LEHE97-.LEHB97
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB98-.LFB11410
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L1300-.LFB11410
	.uleb128 0
	.uleb128 .LEHB99-.LFB11410
	.uleb128 .LEHE99-.LEHB99
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB100-.LFB11410
	.uleb128 .LEHE100-.LEHB100
	.uleb128 .L1299-.LFB11410
	.uleb128 0
	.uleb128 .LEHB101-.LFB11410
	.uleb128 .LEHE101-.LEHB101
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB102-.LFB11410
	.uleb128 .LEHE102-.LEHB102
	.uleb128 0
	.uleb128 0
.LLSDACSE11410:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii, .-_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii
	.section	.text._ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm,"axG",@progbits,_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm
	.type	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm, %function
_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm:
.LFB12148:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12148
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x19, x1
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -16
	.cfi_offset 22, -8
	mov	x21, x0
	cmp	x1, 1
	beq	.L1373
	mov	x20, x2
	mov	x0, 1152921504606846975
	cmp	x1, x0
	bhi	.L1374
	lsl	x22, x1, 3
	mov	x0, x22
.LEHB103:
	bl	_Znwm
	mov	x20, x0
	mov	x2, x22
	mov	w1, 0
	bl	memset
	add	x8, x21, 48
.L1353:
	ldr	x4, [x21, 16]
	str	xzr, [x21, 16]
	cbz	x4, .L1355
	add	x7, x21, 16
	mov	x6, 0
	.p2align 3,,7
.L1356:
	ldr	w5, [x4, 8]
	mov	x3, x4
	ldr	x4, [x4]
	udiv	x2, x5, x19
	msub	x2, x2, x19, x5
	ldr	x1, [x20, x2, lsl 3]
	cbz	x1, .L1375
	ldr	x0, [x1]
	str	x0, [x3]
	ldr	x0, [x20, x2, lsl 3]
	str	x3, [x0]
	cbnz	x4, .L1356
.L1355:
	ldr	x0, [x21]
	cmp	x0, x8
	beq	.L1359
	bl	_ZdlPv
.L1359:
	stp	x20, x19, [x21]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1375:
	.cfi_restore_state
	ldr	x0, [x21, 16]
	str	x0, [x3]
	str	x3, [x21, 16]
	str	x7, [x20, x2, lsl 3]
	ldr	x0, [x3]
	cbz	x0, .L1362
	str	x3, [x20, x6, lsl 3]
	mov	x6, x2
	cbnz	x4, .L1356
	b	.L1355
	.p2align 2,,3
.L1362:
	mov	x6, x2
	cbnz	x4, .L1356
	b	.L1355
	.p2align 2,,3
.L1373:
	mov	x20, x0
	str	xzr, [x20, 48]!
	mov	x8, x20
	b	.L1353
.L1374:
	bl	_ZSt17__throw_bad_allocv
.LEHE103:
.L1363:
	bl	__cxa_begin_catch
	ldr	x0, [x20]
	str	x0, [x21, 40]
.LEHB104:
	bl	__cxa_rethrow
.LEHE104:
.L1364:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB105:
	bl	_Unwind_Resume
.LEHE105:
	.cfi_endproc
.LFE12148:
	.section	.gcc_except_table
	.align	2
.LLSDA12148:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT12148-.LLSDATTD12148
.LLSDATTD12148:
	.byte	0x1
	.uleb128 .LLSDACSE12148-.LLSDACSB12148
.LLSDACSB12148:
	.uleb128 .LEHB103-.LFB12148
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L1363-.LFB12148
	.uleb128 0x1
	.uleb128 .LEHB104-.LFB12148
	.uleb128 .LEHE104-.LEHB104
	.uleb128 .L1364-.LFB12148
	.uleb128 0
	.uleb128 .LEHB105-.LFB12148
	.uleb128 .LEHE105-.LEHB105
	.uleb128 0
	.uleb128 0
.LLSDACSE12148:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT12148:
	.section	.text._ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm,"axG",@progbits,_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm,comdat
	.size	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm, .-_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm
	.section	.text._ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf,comdat
	.align	2
	.p2align 4,,11
	.type	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0, %function
_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0:
.LFB12576:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12576
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	mov	x24, x1
	ldr	w1, [x1]
	ldr	x7, [x0, 8]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	uxtw	x20, w1
	mov	x19, x0
	str	x25, [sp, 64]
	.cfi_offset 25, -32
	mov	x25, x2
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	ldr	x2, [x0]
	udiv	x0, x20, x7
	msub	x0, x0, x7, x20
	lsl	x22, x0, 3
	ldr	x8, [x2, x0, lsl 3]
	cbz	x8, .L1377
	ldr	x4, [x8]
	ldr	w5, [x4, 8]
	cmp	w1, w5
	beq	.L1378
.L1402:
	ldr	x6, [x4]
	cbz	x6, .L1377
	ldr	w5, [x6, 8]
	mov	x8, x4
	uxtw	x9, w5
	udiv	x4, x9, x7
	msub	x4, x4, x7, x9
	cmp	x0, x4
	bne	.L1377
	mov	x4, x6
	cmp	w1, w5
	bne	.L1402
.L1378:
	ldr	x0, [x8]
	mov	x21, 0
	cbz	x0, .L1377
	mov	x1, x21
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldr	x25, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1377:
	.cfi_restore_state
	mov	x0, 16
.LEHB106:
	bl	_Znwm
.LEHE106:
	ldr	w4, [x24]
	mov	x23, x0
	ldr	x1, [x19, 8]
	mov	x3, x25
	ldr	x2, [x19, 24]
	add	x0, x19, 32
	ldr	x5, [x19, 40]
	str	xzr, [x23]
	str	w4, [x23, 8]
	str	x5, [sp, 88]
.LEHB107:
	bl	_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm
	tst	w0, 255
	bne	.L1403
	ldr	x0, [x19]
	add	x2, x0, x22
	ldr	x1, [x0, x22]
	cbz	x1, .L1382
.L1404:
	ldr	x1, [x1]
	str	x1, [x23]
	ldr	x0, [x0, x22]
	str	x23, [x0]
.L1383:
	ldr	x1, [x19, 24]
	mov	x2, 1
	bfi	x21, x2, 0, 8
	mov	x0, x23
	add	x1, x1, x2
	str	x1, [x19, 24]
	mov	x1, x21
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldr	x25, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1403:
	.cfi_restore_state
	add	x2, sp, 88
	mov	x0, x19
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm
.LEHE107:
	ldr	x0, [x19, 8]
	udiv	x22, x20, x0
	msub	x22, x22, x0, x20
	ldr	x0, [x19]
	lsl	x22, x22, 3
	add	x2, x0, x22
	ldr	x1, [x0, x22]
	cbnz	x1, .L1404
.L1382:
	ldr	x1, [x19, 16]
	str	x1, [x23]
	str	x23, [x19, 16]
	cbz	x1, .L1384
	ldr	w4, [x1, 8]
	ldr	x3, [x19, 8]
	udiv	x1, x4, x3
	msub	x1, x1, x3, x4
	str	x23, [x0, x1, lsl 3]
.L1384:
	add	x0, x19, 16
	str	x0, [x2]
	b	.L1383
.L1387:
	mov	x19, x0
	mov	x0, x23
	bl	_ZdlPv
	mov	x0, x19
.LEHB108:
	bl	_Unwind_Resume
.LEHE108:
	.cfi_endproc
.LFE12576:
	.section	.gcc_except_table
.LLSDA12576:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12576-.LLSDACSB12576
.LLSDACSB12576:
	.uleb128 .LEHB106-.LFB12576
	.uleb128 .LEHE106-.LEHB106
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB107-.LFB12576
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L1387-.LFB12576
	.uleb128 0
	.uleb128 .LEHB108-.LFB12576
	.uleb128 .LEHE108-.LEHB108
	.uleb128 0
	.uleb128 0
.LLSDACSE12576:
	.section	.text._ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf,comdat
	.size	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0, .-_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf
	.type	_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf, %function
_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf:
.LFB11082:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11082
	stp	x29, x30, [sp, -336]!
	.cfi_def_cfa_offset 336
	.cfi_offset 29, -336
	.cfi_offset 30, -328
	uxtw	x3, w2
	mov	x29, sp
	ldr	x5, [x0, 24]
	stp	d8, d9, [sp, 96]
	.cfi_offset 72, -240
	.cfi_offset 73, -232
	fmov	s8, s0
	ldr	x4, [x0, 232]
	str	w2, [sp, 156]
	ldr	x2, [x0, 296]
	stp	x19, x20, [sp, 16]
	madd	x3, x3, x5, x4
	.cfi_offset 19, -320
	.cfi_offset 20, -312
	mov	x19, x0
	str	x1, [sp, 144]
	ldr	x0, [x0, 256]
	add	x0, x0, x3
	bl	memcpy
	ldr	w2, [x19, 104]
	ldr	w0, [x19, 216]
	ldr	w1, [sp, 156]
	str	w2, [sp, 140]
	str	w0, [sp, 152]
	cmp	w1, w0
	beq	.L1528
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -264
	.cfi_offset 25, -272
.L1406:
	ldr	x0, [x19, 272]
	ldr	w25, [x0, w1, uxtw 2]
	tbnz	w25, #31, .L1408
	movi	v9.2s, 0x30, lsl 24
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -296
	.cfi_offset 21, -304
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -280
	.cfi_offset 23, -288
	mov	x24, 0
	stp	x27, x28, [sp, 80]
	.cfi_offset 28, -248
	.cfi_offset 27, -256
	str	d10, [sp, 112]
	.cfi_offset 74, -224
	.p2align 3,,7
.L1412:
	add	x5, sp, 272
	add	x4, sp, 328
	fmov	s0, 1.0e+0
	mov	x3, 1
	mov	w28, w24
	add	x8, sp, 168
	mov	w2, w24
	mov	x0, x19
	stp	x5, x3, [sp, 224]
	stp	xzr, xzr, [sp, 240]
	str	s0, [sp, 256]
	stp	xzr, xzr, [sp, 264]
	stp	x4, x3, [sp, 280]
	stp	xzr, xzr, [sp, 296]
	str	s0, [sp, 312]
	stp	xzr, xzr, [sp, 320]
.LEHB109:
	bl	_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji
.LEHE109:
	ldp	x0, x1, [sp, 168]
	cmp	x0, x1
	bne	.L1409
	cbz	x0, .L1411
.L1523:
	bl	_ZdlPv
.L1411:
	add	x0, sp, 280
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	add	x0, sp, 224
	add	x24, x24, 1
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	ldr	w1, [sp, 156]
	cmp	w25, w24
	bge	.L1412
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x27, x28, [sp, 80]
	.cfi_restore 28
	.cfi_restore 27
	ldr	d10, [sp, 112]
	.cfi_restore 74
.L1408:
	mov	w3, w1
	ldr	w5, [sp, 140]
	ldr	w2, [sp, 152]
	mov	w4, w25
	ldr	x1, [sp, 144]
	mov	x0, x19
.LEHB110:
	bl	_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii
.LEHE110:
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
.L1405:
	ldp	x19, x20, [sp, 16]
	ldp	d8, d9, [sp, 96]
	ldp	x29, x30, [sp], 336
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 72
	.cfi_restore 73
	.cfi_def_cfa_offset 0
	ret
.L1409:
	.cfi_def_cfa_offset 336
	.cfi_offset 19, -320
	.cfi_offset 20, -312
	.cfi_offset 21, -304
	.cfi_offset 22, -296
	.cfi_offset 23, -288
	.cfi_offset 24, -280
	.cfi_offset 25, -272
	.cfi_offset 26, -264
	.cfi_offset 27, -256
	.cfi_offset 28, -248
	.cfi_offset 29, -336
	.cfi_offset 30, -328
	.cfi_offset 72, -240
	.cfi_offset 73, -232
	.cfi_offset 74, -224
	add	x1, sp, 156
	add	x0, sp, 224
	mov	x2, 1
.LEHB111:
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0
	ldp	x21, x23, [sp, 168]
	cmp	x23, x21
	beq	.L1424
	mov	x27, 5
	mov	w0, 1065353215
	movk	x27, 0x2, lsl 32
	fmov	s10, w0
	.p2align 3,,7
.L1423:
	mov	x1, x21
	add	x0, sp, 224
	mov	x2, 1
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0
	ldr	x1, [x19, 432]
	mov	x0, 16807
	movi	v1.2s, #0
	fmov	s2, 1.0e+0
	mul	x1, x1, x0
	umulh	x2, x1, x27
	sub	x0, x1, x2
	add	x0, x2, x0, lsr 1
	lsr	x0, x0, 30
	lsl	x2, x0, 31
	sub	x0, x2, x0
	sub	x0, x1, x0
	str	x0, [x19, 432]
	sub	x0, x0, #1
	ucvtf	s0, x0
	fadd	s0, s0, s1
	fmul	s0, s0, s9
	fcmpe	s0, s2
	bge	.L1468
	fadd	s0, s0, s1
.L1416:
	fcmpe	s8, s0
	bmi	.L1419
	mov	x1, x21
	add	x0, sp, 280
	mov	x2, 1
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0
	ldr	w1, [x21]
	add	x8, sp, 192
	mov	w2, w28
	mov	x0, x19
	bl	_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji
.LEHE111:
	ldp	x0, x22, [sp, 192]
	cmp	x22, x0
	beq	.L1420
	mov	x20, x0
	.p2align 3,,7
.L1421:
	mov	x1, x20
	add	x0, sp, 224
	mov	x2, 1
.LEHB112:
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0
.LEHE112:
	add	x20, x20, 4
	cmp	x22, x20
	bne	.L1421
	ldr	x0, [sp, 192]
.L1420:
	cbz	x0, .L1419
	bl	_ZdlPv
	.p2align 3,,7
.L1419:
	add	x21, x21, 4
	cmp	x23, x21
	bne	.L1423
.L1424:
	ldr	x21, [sp, 296]
	cbz	x21, .L1415
	sub	x28, x24, #1
	.p2align 3,,7
.L1414:
	ldp	x2, x4, [sp, 224]
	ldr	w0, [x21, 8]
	uxtw	x1, w0
	udiv	x5, x1, x4
	msub	x5, x5, x4, x1
	ldr	x6, [x2, x5, lsl 3]
	stp	xzr, xzr, [sp, 192]
	str	xzr, [sp, 208]
	cbz	x6, .L1524
	ldr	x1, [x6]
	ldr	w2, [x1, 8]
	cmp	w2, w0
	beq	.L1428
.L1529:
	ldr	x3, [x1]
	cbz	x3, .L1524
	ldr	w2, [x3, 8]
	mov	x6, x1
	uxtw	x7, w2
	udiv	x1, x7, x4
	msub	x1, x1, x4, x7
	cmp	x5, x1
	bne	.L1524
	mov	x1, x3
	cmp	w2, w0
	bne	.L1529
.L1428:
	ldr	x2, [x6]
	ldr	x1, [sp, 248]
	sub	x22, x1, #1
	cbz	x2, .L1427
.L1430:
	ldr	x1, [x19, 72]
	ldr	x20, [sp, 240]
	cmp	x1, x22
	csel	x22, x1, x22, ls
	cbnz	x20, .L1449
	b	.L1431
	.p2align 2,,3
.L1434:
	ldr	s1, [x3]
	fcmpe	s1, s0
	bgt	.L1476
.L1441:
	ldr	x20, [x20]
	cbz	x20, .L1431
.L1433:
	ldr	w0, [x21, 8]
.L1449:
	ldr	w1, [x20, 8]
	add	x23, x20, 8
	cmp	w1, w0
	beq	.L1441
	ldr	x5, [x19, 24]
	uxtw	x1, w1
	ldr	x4, [x19, 232]
	uxtw	x0, w0
	ldp	x6, x2, [x19, 304]
	ldr	x3, [x19, 256]
	madd	x1, x1, x5, x4
	madd	x0, x0, x5, x4
	add	x1, x3, x1
	add	x0, x3, x0
.LEHB113:
	blr	x6
	ldp	x3, x1, [sp, 192]
	str	s0, [sp, 164]
	sub	x0, x1, x3
	cmp	x22, x0, asr 3
	bls	.L1434
	ldr	x0, [sp, 208]
	cmp	x1, x0
	beq	.L1435
	add	x0, x1, 8
	ldr	w7, [x20, 8]
	sub	x2, x0, x3
	str	s0, [x1]
	str	w7, [x1, 4]
	str	x0, [sp, 200]
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L1437
	.p2align 3,,7
.L1440:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s1, [x3, x2]
	fcmpe	s1, s0
	bmi	.L1475
	str	w7, [x4, 4]
	str	s0, [x4]
.L1532:
	ldr	x20, [x20]
	cbnz	x20, .L1433
.L1431:
	ldp	x3, x2, [x19, 56]
	cmp	x24, 0
	add	x1, sp, 192
	mov	x0, x19
	csel	x2, x3, x2, ne
	bl	_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm
	ldr	w23, [x21, 8]
	mov	w2, 48
	ldr	x1, [x19, 192]
	uxtw	x0, w23
	umaddl	x23, w23, w2, x1
	cbz	x23, .L1530
	adrp	x1, .LC5
	ldr	x27, [x1, #:lo12:.LC5]
	cbz	x27, .L1452
	mov	x0, x23
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1453
	ldr	w0, [x21, 8]
.L1452:
	cbnz	x24, .L1454
	ldr	x2, [x19, 24]
	ldr	x1, [x19, 240]
	ldr	x22, [x19, 256]
	madd	x0, x0, x2, x1
	add	x22, x22, x0
.L1455:
	ldp	x0, x20, [sp, 192]
	sub	x20, x20, x0
	asr	x20, x20, 3
	strh	w20, [x22]
	cbz	x20, .L1456
	mov	x26, 0
	b	.L1457
	.p2align 2,,3
.L1531:
	ldr	x0, [sp, 192]
.L1457:
	add	x26, x26, 1
	ldr	w2, [x0, 4]
	add	x0, sp, 192
	str	w2, [x22, x26, lsl 2]
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	cmp	x20, x26
	bne	.L1531
.L1456:
	cbz	x27, .L1458
	mov	x0, x23
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L1458:
	ldr	x0, [sp, 192]
	cbz	x0, .L1459
	bl	_ZdlPv
.L1459:
	ldr	x21, [x21]
	cbnz	x21, .L1414
.L1415:
	ldr	x0, [sp, 168]
	cbnz	x0, .L1523
	b	.L1411
	.p2align 2,,3
.L1475:
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s1, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L1440
	mov	x4, x5
	str	s0, [x4]
	str	w7, [x4, 4]
	b	.L1532
	.p2align 2,,3
.L1476:
	add	x0, sp, 192
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x1, x0, [sp, 200]
	cmp	x1, x0
	beq	.L1443
	ldr	s1, [sp, 164]
	add	x0, x1, 8
	ldr	w7, [x20, 8]
	str	w7, [x1, 4]
	str	s1, [x1]
	str	x0, [sp, 200]
.L1444:
	ldr	x3, [sp, 192]
	sub	x2, x0, x3
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L1445
	.p2align 3,,7
.L1448:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s0, [x3, x2]
	fcmpe	s0, s1
	bmi	.L1477
	str	s1, [x4]
	str	w7, [x4, 4]
	b	.L1441
	.p2align 2,,3
.L1477:
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s0, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L1448
	mov	x4, x5
	str	s1, [x4]
	str	w7, [x4, 4]
	b	.L1441
	.p2align 2,,3
.L1454:
	ldr	x1, [x19, 264]
	ldr	x22, [x19, 32]
	ldr	x0, [x1, x0, lsl 3]
	madd	x22, x28, x22, x0
	b	.L1455
.L1524:
	ldr	x1, [sp, 248]
.L1427:
	mov	x22, x1
	b	.L1430
	.p2align 2,,3
.L1435:
	mov	x3, x23
	add	x2, sp, 164
	add	x0, sp, 192
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldp	x3, x0, [sp, 192]
	sub	x2, x0, x3
	ldr	w7, [x0, -4]
	ldr	s0, [x0, -8]
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	bgt	.L1440
.L1437:
	sub	x0, x2, #8
	add	x4, x3, x0
	str	s0, [x4]
	str	w7, [x4, 4]
	b	.L1532
	.p2align 2,,3
.L1443:
	mov	x3, x23
	add	x2, sp, 164
	add	x0, sp, 192
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x0, [sp, 200]
	ldr	w7, [x0, -4]
	ldr	s1, [x0, -8]
	b	.L1444
.L1468:
	fmov	s0, s10
	b	.L1416
.L1445:
	sub	x0, x2, #8
	add	x4, x3, x0
	str	s1, [x4]
	str	w7, [x4, 4]
	b	.L1441
.L1528:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 74
	add	x0, x19, 16
	ldar	x0, [x0]
	cmp	x0, 1
	beq	.L1405
	ldr	w1, [sp, 156]
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -264
	.cfi_offset 25, -272
	b	.L1406
.L1530:
	.cfi_offset 21, -304
	.cfi_offset 22, -296
	.cfi_offset 23, -288
	.cfi_offset 24, -280
	.cfi_offset 27, -256
	.cfi_offset 28, -248
	.cfi_offset 74, -224
	mov	w0, 1
	bl	_ZSt20__throw_system_errori
.L1453:
	bl	_ZSt20__throw_system_errori
.LEHE113:
.L1474:
.L1527:
	ldr	x1, [sp, 192]
	mov	x19, x0
	cbz	x1, .L1462
	mov	x0, x1
	bl	_ZdlPv
.L1462:
	ldr	x0, [sp, 168]
	cbz	x0, .L1466
	bl	_ZdlPv
.L1466:
	add	x0, sp, 280
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	add	x0, sp, 224
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	mov	x0, x19
.LEHB114:
	bl	_Unwind_Resume
.LEHE114:
.L1471:
	mov	x19, x0
	b	.L1466
.L1473:
	b	.L1527
.L1472:
	mov	x19, x0
	b	.L1462
	.cfi_endproc
.LFE11082:
	.section	.gcc_except_table
.LLSDA11082:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11082-.LLSDACSB11082
.LLSDACSB11082:
	.uleb128 .LEHB109-.LFB11082
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L1471-.LFB11082
	.uleb128 0
	.uleb128 .LEHB110-.LFB11082
	.uleb128 .LEHE110-.LEHB110
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB111-.LFB11082
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L1472-.LFB11082
	.uleb128 0
	.uleb128 .LEHB112-.LFB11082
	.uleb128 .LEHE112-.LEHB112
	.uleb128 .L1473-.LFB11082
	.uleb128 0
	.uleb128 .LEHB113-.LFB11082
	.uleb128 .LEHE113-.LEHB113
	.uleb128 .L1474-.LFB11082
	.uleb128 0
	.uleb128 .LEHB114-.LFB11082
	.uleb128 .LEHE114-.LEHB114
	.uleb128 0
	.uleb128 0
.LLSDACSE11082:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf, .-_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf
	.section	.rodata._ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi.str1.8,"aMS",@progbits,1
	.align	3
.LC27:
	.string	"Can't use addPoint to update deleted elements if replacement of deleted elements is enabled."
	.align	3
.LC28:
	.string	"The requested to undelete element is not deleted"
	.align	3
.LC29:
	.string	"The number of elements exceeds the specified limit"
	.align	3
.LC30:
	.string	"Not enough memory: addPoint failed to allocate linklist"
	.align	3
.LC31:
	.string	"cand error"
	.align	3
.LC32:
	.string	"Level error"
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi
	.type	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi, %function
_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi:
.LFB11066:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11066
	stp	x29, x30, [sp, -240]!
	.cfi_def_cfa_offset 240
	.cfi_offset 29, -240
	.cfi_offset 30, -232
	adrp	x4, .LC5
	mov	x29, sp
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -176
	.cfi_offset 26, -168
	ldr	x26, [x4, #:lo12:.LC5]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -224
	.cfi_offset 20, -216
	mov	x19, x0
	add	x0, x0, 320
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -192
	.cfi_offset 24, -184
	mov	x23, x1
	str	w3, [sp, 128]
	str	x2, [sp, 152]
	str	x0, [sp, 208]
	strb	wzr, [sp, 216]
	cbz	x26, .L1534
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1774
.L1534:
	ldr	x6, [sp, 152]
	mov	w1, 1
	ldr	x4, [x19, 376]
	strb	w1, [sp, 216]
	ldr	x1, [x19, 368]
	stp	x27, x28, [sp, 80]
	.cfi_offset 28, -152
	.cfi_offset 27, -160
	add	x0, x19, 368
	udiv	x5, x6, x4
	msub	x5, x5, x4, x6
	ldr	x7, [x1, x5, lsl 3]
	cbz	x7, .L1535
	ldr	x2, [x7]
	ldr	x1, [x2, 8]
	cmp	x6, x1
	beq	.L1536
.L1775:
	ldr	x3, [x2]
	cbz	x3, .L1535
	ldr	x1, [x3, 8]
	mov	x7, x2
	udiv	x2, x1, x4
	msub	x2, x2, x4, x1
	cmp	x5, x2
	bne	.L1535
	mov	x2, x3
	cmp	x6, x1
	bne	.L1775
.L1536:
	ldr	x1, [x7]
	cbz	x1, .L1535
	ldrb	w0, [x19, 456]
	ldr	w27, [x1, 16]
	uxtw	x20, w27
	cbz	w0, .L1776
	ldr	x0, [x19, 24]
	ldr	x2, [x19, 256]
	ldr	x1, [x19, 240]
	madd	x0, x20, x0, x2
	add	x0, x0, x1
	ldrb	w0, [x0, 2]
	tbnz	x0, 0, .L1777
	ldr	x0, [sp, 208]
	cbz	x0, .L1551
	cbz	x26, .L1544
.L1791:
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L1544:
	strb	wzr, [sp, 216]
.L1543:
	ldr	x0, [x19, 24]
	ldr	x2, [x19, 256]
	ldr	x1, [x19, 240]
	madd	x0, x20, x0, x2
	add	x0, x0, x1
	ldrb	w0, [x0, 2]
	tbz	x0, 0, .L1551
	str	w27, [sp, 192]
	add	x0, x19, 16
	ldar	x0, [x0]
	cmp	x0, x20
	bls	.L1778
	ldr	w1, [sp, 192]
	ldr	x3, [x19, 24]
	ldr	x2, [x19, 240]
	ldr	x0, [x19, 256]
	madd	x1, x1, x3, x2
	add	x0, x0, x1
	ldrb	w1, [x0, 2]
	tbz	x1, 0, .L1547
	and	w1, w1, -2
	strb	w1, [x0, 2]
	add	x0, x19, 40
.L1798:
	ldaxr	x1, [x0]
	sub	x1, x1, #1
	stlxr	w2, x1, [x0]
	cbnz	w2, .L1798
	ldrb	w0, [x19, 456]
	cbnz	w0, .L1779
.L1551:
	fmov	s0, 1.0e+0
	mov	x1, x23
	mov	x0, x19
	mov	w2, w27
.LEHB115:
	bl	_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf
	ldrb	w0, [sp, 216]
	cbnz	w0, .L1780
.L1533:
	mov	w0, w27
	ldp	x19, x20, [sp, 16]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 27
	ldp	x29, x30, [sp], 240
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1535:
	.cfi_restore_state
	add	x1, x19, 16
	ldar	x2, [x1]
	ldr	x3, [x19, 8]
	cmp	x3, x2
	bls	.L1781
	ldar	x20, [x1]
	str	x20, [sp, 144]
	mov	w27, w20
.L1797:
	ldaxr	x2, [x1]
	add	x2, x2, 1
	stlxr	w3, x2, [x1]
	cbnz	w3, .L1797
	add	x1, sp, 152
	bl	_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_
.LEHE115:
	ldrb	w1, [sp, 216]
	str	w20, [x0]
	cbnz	w1, .L1782
.L1556:
	ldr	x2, [sp, 144]
	strb	wzr, [sp, 184]
	ldr	x1, [x19, 192]
	and	x20, x2, 4294967295
	ubfiz	x0, x2, 1, 32
	add	x0, x0, x2, uxtw
	add	x0, x1, x0, lsl 4
	str	x0, [sp, 176]
	cbz	x0, .L1783
	cbz	x26, .L1558
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1784
.L1558:
	ldr	x1, [x19, 424]
	mov	x4, 16807
	mov	x3, 5
	mov	x0, 281474968322048
	movk	x3, 0x2, lsl 32
	movk	x0, 0x41df, lsl 48
	mul	x1, x1, x4
	fmov	d3, x0
	mov	x0, 281474959933440
	movi	d4, #0
	movk	x0, 0x43cf, lsl 48
	fmov	d2, x0
	mov	w0, 1
	strb	w0, [sp, 184]
	umulh	x2, x1, x3
	str	d8, [sp, 96]
	.cfi_offset 72, -144
	fmov	d5, 1.0e+0
	ldr	d8, [x19, 88]
	sub	x0, x1, x2
	add	x0, x2, x0, lsr 1
	lsr	x0, x0, 30
	lsl	x2, x0, 31
	sub	x0, x2, x0
	sub	x0, x1, x0
	sub	x2, x0, #1
	mul	x1, x0, x4
	ucvtf	d0, x2
	umulh	x2, x1, x3
	fadd	d1, d0, d4
	sub	x0, x1, x2
	add	x0, x2, x0, lsr 1
	lsr	x0, x0, 30
	lsl	x2, x0, 31
	sub	x0, x2, x0
	sub	x0, x1, x0
	str	x0, [x19, 424]
	sub	x0, x0, #1
	ucvtf	d0, x0
	fmadd	d0, d0, d3, d1
	fdiv	d0, d0, d2
	fcmpe	d0, d5
	bge	.L1622
	fadd	d0, d0, d4
.L1559:
	bl	log
	ldr	w0, [sp, 128]
	cmp	w0, 0
	bgt	.L1560
	fnmul	d0, d0, d8
	fcvtzs	w0, d0
	str	w0, [sp, 128]
.L1560:
	ldr	x1, [x19, 272]
	add	x0, x19, 144
	ldr	w2, [sp, 128]
	str	w2, [x1, x20, lsl 2]
	str	x0, [sp, 192]
	strb	wzr, [sp, 200]
	cbz	x26, .L1562
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1785
.L1562:
	ldr	w0, [x19, 104]
	mov	w1, w0
	mov	w0, 1
	str	w1, [sp, 136]
	strb	w0, [sp, 200]
	mov	w0, w1
	ldr	w1, [sp, 128]
	cmp	w0, w1
	blt	.L1563
	ldr	x0, [sp, 192]
	cbz	x0, .L1563
	cbz	x26, .L1564
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L1564:
	strb	wzr, [sp, 200]
.L1563:
	ldr	x2, [x19, 24]
	mov	w1, 0
	ldr	x0, [x19, 240]
	ldr	x3, [x19, 256]
	madd	x0, x2, x20, x0
	ldr	w24, [x19, 216]
	str	w24, [sp, 168]
	add	x0, x3, x0
	bl	memset
	ldp	x2, x3, [x19, 248]
	mov	x1, x23
	ldr	x0, [x19, 24]
	madd	x0, x20, x0, x3
	ldr	x3, [sp, 152]
	str	x3, [x0, x2]
	ldr	x0, [x19, 24]
	ldr	x4, [x19, 232]
	ldr	x3, [x19, 256]
	ldr	x2, [x19, 296]
	madd	x0, x20, x0, x4
	add	x0, x3, x0
	bl	memcpy
	ldr	w0, [sp, 128]
	cbnz	w0, .L1786
.L1565:
	cmn	w24, #1
	beq	.L1567
	ldr	w0, [sp, 128]
	ldr	w20, [sp, 136]
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -200
	.cfi_offset 21, -208
	ldr	x4, [x19, 24]
	ldr	x3, [x19, 256]
	cmp	w20, w0
	ble	.L1568
	ldr	x6, [x19, 232]
	uxtw	x1, w24
	ldp	x5, x2, [x19, 304]
	mov	x0, x23
	madd	x1, x1, x4, x6
	add	x1, x3, x1
.LEHB116:
	blr	x5
.LEHE116:
	sxtw	x0, w20
	fmov	s8, s0
	sub	x0, x0, #1
	add	x28, x19, 192
	str	x0, [sp, 120]
	sub	w0, w20, #1
	str	w0, [sp, 132]
	.p2align 3,,7
.L1580:
	ldr	w0, [sp, 132]
	str	w0, [sp, 140]
	.p2align 3,,7
.L1578:
	ldr	x0, [x28]
	mov	w1, 48
	strb	wzr, [sp, 216]
	umaddl	x0, w24, w1, x0
	str	x0, [sp, 208]
	cbz	x0, .L1787
	cbz	x26, .L1570
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1788
.L1570:
	mov	w1, 1
	strb	w1, [sp, 216]
	ldr	x0, [x19, 32]
	ldr	x2, [sp, 120]
	ldr	x1, [x19, 264]
	mul	x0, x2, x0
	ldr	x1, [x1, w24, uxtw 3]
	add	x20, x1, x0
	ldrh	w22, [x1, x0]
	cbz	w22, .L1571
	sub	w22, w22, #1
	add	x0, x20, 8
	add	x20, x20, 4
	mov	w25, 0
	add	x22, x0, x22, uxtw 2
	.p2align 3,,7
.L1575:
	ldr	w21, [x20]
	ldr	x0, [x19, 8]
	uxtw	x1, w21
	cmp	x1, x0
	bhi	.L1789
	ldr	x5, [x19, 24]
	mov	x0, x23
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	madd	x1, x1, x5, x4
	ldr	x4, [x19, 256]
	add	x1, x4, x1
.LEHB117:
	blr	x3
.LEHE117:
	fcmpe	s0, s8
	bmi	.L1637
.L1573:
	add	x20, x20, 4
	cmp	x22, x20
	bne	.L1575
	ldrb	w0, [sp, 216]
	cbnz	w0, .L1790
.L1576:
	cbnz	w25, .L1578
.L1619:
	ldr	w0, [sp, 132]
	ldr	w1, [sp, 140]
	sub	w0, w0, #1
	str	w0, [sp, 132]
	ldr	x0, [sp, 120]
	sub	x0, x0, #1
	str	x0, [sp, 120]
	ldr	w0, [sp, 128]
	cmp	w0, w1
	blt	.L1580
	ldr	w0, [sp, 168]
	ldr	x3, [x19, 24]
	ldr	x2, [x19, 256]
	ldr	x1, [x19, 240]
	madd	x0, x0, x3, x2
	add	x0, x0, x1
	ldrb	w21, [x0, 2]
	ldr	w0, [sp, 128]
	and	w21, w21, 1
	tbnz	w0, #31, .L1770
	mov	w20, w0
	b	.L1585
.L1776:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 72
	ldr	x0, [sp, 208]
	cbz	x0, .L1543
	cbnz	x26, .L1791
	b	.L1544
.L1780:
	ldr	x0, [sp, 208]
	cbz	x0, .L1533
	cbz	x26, .L1533
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	mov	w0, w27
	ldp	x19, x20, [sp, 16]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 27
	ldp	x29, x30, [sp], 240
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1779:
	.cfi_restore_state
	add	x20, x19, 464
	cbz	x26, .L1549
	mov	x0, x20
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1792
.L1549:
	add	x2, sp, 192
	add	x0, x19, 512
	mov	w1, 0
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj
	cbz	x26, .L1551
	mov	x0, x20
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L1551
.L1782:
	ldr	x0, [sp, 208]
	cbz	x0, .L1556
	cbz	x26, .L1556
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L1556
	.p2align 2,,3
.L1790:
	.cfi_offset 21, -208
	.cfi_offset 22, -200
	.cfi_offset 72, -144
	ldr	x0, [sp, 208]
	cbz	x0, .L1576
.L1620:
	cbz	x26, .L1576
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	cbnz	w25, .L1578
	b	.L1619
	.p2align 2,,3
.L1637:
	fmov	s8, s0
	mov	w24, w21
	mov	w25, 1
	b	.L1573
	.p2align 2,,3
.L1571:
	ldr	x0, [sp, 208]
	cbz	x0, .L1619
	mov	w25, 0
	b	.L1620
.L1568:
	ldr	w0, [sp, 168]
	ldr	x1, [x19, 240]
	ldr	w2, [sp, 136]
	madd	x0, x0, x4, x3
	mov	w20, w2
	add	x0, x0, x1
	ldrb	w21, [x0, 2]
	and	w21, w21, 1
	tbnz	w2, #31, .L1771
	.p2align 3,,7
.L1585:
	mov	w1, w24
	add	x8, sp, 208
	mov	w3, w20
	mov	x2, x23
	mov	x0, x19
.LEHB118:
	bl	_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi
.LEHE118:
	cbz	w21, .L1587
	ldr	w1, [sp, 168]
	mov	x0, x23
	ldr	x5, [x19, 24]
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	madd	x1, x1, x5, x4
	ldr	x4, [x19, 256]
	add	x1, x4, x1
.LEHB119:
	blr	x3
	ldp	x1, x0, [sp, 216]
	str	s0, [sp, 172]
	cmp	x1, x0
	beq	.L1588
	ldr	w8, [sp, 168]
	add	x0, x1, 8
	str	s0, [x1]
	str	w8, [x1, 4]
	str	x0, [sp, 216]
.L1589:
	ldr	x3, [sp, 208]
	sub	x2, x0, x3
	asr	x7, x2, 3
	sub	x0, x7, #2
	sub	x1, x7, #1
	add	x0, x0, x0, lsr 63
	asr	x0, x0, 1
	cmp	x1, 0
	ble	.L1590
	.p2align 3,,7
.L1593:
	lsl	x2, x0, 3
	lsl	x1, x1, 3
	add	x5, x3, x2
	add	x4, x3, x1
	ldr	s1, [x3, x2]
	fcmpe	s1, s0
	bmi	.L1638
.L1591:
	ldr	x0, [x19, 72]
	str	s0, [x4]
	str	w8, [x4, 4]
	cmp	x0, x7
	bcc	.L1793
.L1587:
	mov	w3, w20
	add	x2, sp, 208
	mov	w1, w27
	mov	x0, x19
	mov	w4, 0
	bl	_ZN7hnswlib15HierarchicalNSWIfE25mutuallyConnectNewElementEPKvjRSt14priority_queueISt4pairIfjESt6vectorIS6_SaIS6_EENS1_14CompareByFirstEEib.isra.0
.LEHE119:
	ldr	x1, [sp, 208]
	mov	w24, w0
	cbz	x1, .L1595
	mov	x0, x1
	bl	_ZdlPv
.L1595:
	subs	w20, w20, #1
	bmi	.L1771
	ldr	w0, [sp, 136]
	cmp	w0, w20
	bge	.L1585
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC32
	mov	x20, x0
	add	x1, x1, :lo12:.LC32
.LEHB120:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE120:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB121:
	bl	__cxa_throw
.LEHE121:
	.p2align 2,,3
.L1638:
	sub	x2, x0, #1
	ldr	w6, [x5, 4]
	str	s1, [x3, x1]
	mov	x1, x0
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x0, x2, 1
	cmp	x1, 0
	bgt	.L1593
	mov	x4, x5
	ldr	x0, [x19, 72]
	str	s0, [x4]
	str	w8, [x4, 4]
	cmp	x0, x7
	bcs	.L1587
.L1793:
	add	x0, sp, 208
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	b	.L1587
.L1771:
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
.L1582:
	ldr	w0, [sp, 128]
	ldr	w1, [sp, 136]
	cmp	w1, w0
	bge	.L1599
	str	w0, [x19, 104]
	ldr	w0, [sp, 144]
	str	w0, [x19, 216]
.L1599:
	ldrb	w0, [sp, 200]
	cbnz	w0, .L1794
.L1600:
	ldrb	w0, [sp, 184]
	cbnz	w0, .L1795
.L1769:
	mov	w0, w27
	ldr	d8, [sp, 96]
	.cfi_remember_state
	.cfi_restore 72
	ldp	x19, x20, [sp, 16]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	.cfi_restore 28
	.cfi_restore 27
	ldp	x29, x30, [sp], 240
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L1795:
	.cfi_restore_state
	ldr	x0, [sp, 176]
	cbz	x0, .L1769
	cbz	x26, .L1769
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	ldr	d8, [sp, 96]
	.cfi_restore 72
	b	.L1533
.L1588:
	.cfi_offset 21, -208
	.cfi_offset 22, -200
	.cfi_offset 72, -144
	add	x3, sp, 168
	add	x2, sp, 172
	add	x0, sp, 208
.LEHB122:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE122:
	ldr	x0, [sp, 216]
	ldr	w8, [x0, -4]
	ldr	s0, [x0, -8]
	b	.L1589
.L1794:
	.cfi_restore 21
	.cfi_restore 22
	ldr	x0, [sp, 192]
	cbz	x0, .L1600
	cbz	x26, .L1600
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L1600
.L1567:
	ldr	w0, [sp, 128]
	str	w0, [x19, 104]
	str	wzr, [x19, 216]
	b	.L1582
.L1786:
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -200
	.cfi_offset 21, -208
	ldrsw	x21, [sp, 128]
	ldr	x0, [x19, 32]
	ldr	x22, [x19, 264]
	mul	x21, x21, x0
	add	x21, x21, 1
	mov	x0, x21
	bl	malloc
	str	x0, [x22, x20, lsl 3]
	cbz	x0, .L1796
	mov	x2, x21
	mov	w1, 0
	bl	memset
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	b	.L1565
.L1770:
	.cfi_offset 21, -208
	.cfi_offset 22, -200
	ldp	x21, x22, [sp, 32]
	.cfi_remember_state
	.cfi_restore 22
	.cfi_restore 21
	b	.L1599
.L1590:
	.cfi_restore_state
	sub	x0, x2, #8
	add	x4, x3, x0
	b	.L1591
.L1622:
	.cfi_restore 21
	.cfi_restore 22
	mov	x0, 4607182418800017407
	fmov	d0, x0
	b	.L1559
.L1785:
.LEHB123:
	bl	_ZSt20__throw_system_errori
.LEHE123:
.L1784:
	.cfi_restore 72
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -200
	.cfi_offset 21, -208
	str	d8, [sp, 96]
	.cfi_offset 72, -144
.LEHB124:
	bl	_ZSt20__throw_system_errori
.LEHE124:
.L1788:
.LEHB125:
	bl	_ZSt20__throw_system_errori
.L1787:
	mov	w0, 1
	bl	_ZSt20__throw_system_errori
.LEHE125:
.L1774:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 72
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -200
	.cfi_offset 21, -208
	stp	x27, x28, [sp, 80]
	.cfi_offset 28, -152
	.cfi_offset 27, -160
	str	d8, [sp, 96]
	.cfi_offset 72, -144
.LEHB126:
	bl	_ZSt20__throw_system_errori
.L1778:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 72
	stp	x21, x22, [sp, 32]
	.cfi_remember_state
	.cfi_offset 22, -200
	.cfi_offset 21, -208
	str	d8, [sp, 96]
	.cfi_offset 72, -144
	bl	_ZN7hnswlib15HierarchicalNSWIfE21unmarkDeletedInternalEj.part.0
.L1783:
	.cfi_restore_state
	mov	w0, 1
	stp	x21, x22, [sp, 32]
	.cfi_remember_state
	.cfi_offset 22, -200
	.cfi_offset 21, -208
	str	d8, [sp, 96]
	.cfi_offset 72, -144
	bl	_ZSt20__throw_system_errori
.LEHE126:
.L1792:
	.cfi_restore_state
.LEHB127:
	bl	_ZSt20__throw_system_errori
.LEHE127:
.L1635:
	.cfi_offset 21, -208
	.cfi_offset 22, -200
	.cfi_offset 72, -144
	ldr	x1, [sp, 208]
	mov	x19, x0
	cbz	x1, .L1605
	mov	x0, x1
	bl	_ZdlPv
	b	.L1605
.L1629:
	.cfi_restore 21
	.cfi_restore 22
	mov	x19, x0
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -200
	.cfi_offset 21, -208
.L1613:
	ldrb	w0, [sp, 184]
	cbz	w0, .L1614
	add	x0, sp, 176
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L1614:
	mov	x0, x19
.LEHB128:
	bl	_Unwind_Resume
.LEHE128:
.L1634:
.L1773:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
.L1605:
	ldrb	w0, [sp, 200]
	cbz	w0, .L1613
	add	x0, sp, 192
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L1613
.L1633:
	mov	x19, x0
.L1607:
	ldrb	w0, [sp, 216]
	cbz	w0, .L1605
	add	x0, sp, 208
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L1605
.L1789:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC31
	mov	x20, x0
	add	x1, x1, :lo12:.LC31
.LEHB129:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE129:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB130:
	bl	__cxa_throw
.LEHE130:
.L1632:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
	b	.L1607
.L1630:
	mov	x19, x0
	b	.L1605
.L1796:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC30
	mov	x20, x0
	add	x1, x1, :lo12:.LC30
.LEHB131:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE131:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB132:
	bl	__cxa_throw
.LEHE132:
.L1781:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 72
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC29
	mov	x20, x0
	add	x1, x1, :lo12:.LC29
.LEHB133:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE133:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB134:
	bl	__cxa_throw
.LEHE134:
.L1626:
	mov	x19, x0
	b	.L1553
.L1547:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC28
	mov	x20, x0
	add	x1, x1, :lo12:.LC28
.LEHB135:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE135:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB136:
	bl	__cxa_throw
.LEHE136:
.L1777:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC27
	mov	x20, x0
	add	x1, x1, :lo12:.LC27
.LEHB137:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE137:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB138:
	bl	__cxa_throw
.LEHE138:
.L1631:
	.cfi_offset 21, -208
	.cfi_offset 22, -200
	.cfi_offset 72, -144
	b	.L1773
.L1628:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 72
.L1772:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
.L1553:
	ldrb	w0, [sp, 216]
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -200
	.cfi_offset 21, -208
	str	d8, [sp, 96]
	.cfi_offset 72, -144
	cbz	w0, .L1614
	add	x0, sp, 208
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L1614
.L1636:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 72
	b	.L1772
.L1627:
	b	.L1772
	.cfi_endproc
.LFE11066:
	.section	.gcc_except_table
.LLSDA11066:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11066-.LLSDACSB11066
.LLSDACSB11066:
	.uleb128 .LEHB115-.LFB11066
	.uleb128 .LEHE115-.LEHB115
	.uleb128 .L1626-.LFB11066
	.uleb128 0
	.uleb128 .LEHB116-.LFB11066
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L1630-.LFB11066
	.uleb128 0
	.uleb128 .LEHB117-.LFB11066
	.uleb128 .LEHE117-.LEHB117
	.uleb128 .L1633-.LFB11066
	.uleb128 0
	.uleb128 .LEHB118-.LFB11066
	.uleb128 .LEHE118-.LEHB118
	.uleb128 .L1630-.LFB11066
	.uleb128 0
	.uleb128 .LEHB119-.LFB11066
	.uleb128 .LEHE119-.LEHB119
	.uleb128 .L1635-.LFB11066
	.uleb128 0
	.uleb128 .LEHB120-.LFB11066
	.uleb128 .LEHE120-.LEHB120
	.uleb128 .L1634-.LFB11066
	.uleb128 0
	.uleb128 .LEHB121-.LFB11066
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L1630-.LFB11066
	.uleb128 0
	.uleb128 .LEHB122-.LFB11066
	.uleb128 .LEHE122-.LEHB122
	.uleb128 .L1635-.LFB11066
	.uleb128 0
	.uleb128 .LEHB123-.LFB11066
	.uleb128 .LEHE123-.LEHB123
	.uleb128 .L1629-.LFB11066
	.uleb128 0
	.uleb128 .LEHB124-.LFB11066
	.uleb128 .LEHE124-.LEHB124
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB125-.LFB11066
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L1630-.LFB11066
	.uleb128 0
	.uleb128 .LEHB126-.LFB11066
	.uleb128 .LEHE126-.LEHB126
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB127-.LFB11066
	.uleb128 .LEHE127-.LEHB127
	.uleb128 .L1626-.LFB11066
	.uleb128 0
	.uleb128 .LEHB128-.LFB11066
	.uleb128 .LEHE128-.LEHB128
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB129-.LFB11066
	.uleb128 .LEHE129-.LEHB129
	.uleb128 .L1632-.LFB11066
	.uleb128 0
	.uleb128 .LEHB130-.LFB11066
	.uleb128 .LEHE130-.LEHB130
	.uleb128 .L1633-.LFB11066
	.uleb128 0
	.uleb128 .LEHB131-.LFB11066
	.uleb128 .LEHE131-.LEHB131
	.uleb128 .L1631-.LFB11066
	.uleb128 0
	.uleb128 .LEHB132-.LFB11066
	.uleb128 .LEHE132-.LEHB132
	.uleb128 .L1630-.LFB11066
	.uleb128 0
	.uleb128 .LEHB133-.LFB11066
	.uleb128 .LEHE133-.LEHB133
	.uleb128 .L1628-.LFB11066
	.uleb128 0
	.uleb128 .LEHB134-.LFB11066
	.uleb128 .LEHE134-.LEHB134
	.uleb128 .L1626-.LFB11066
	.uleb128 0
	.uleb128 .LEHB135-.LFB11066
	.uleb128 .LEHE135-.LEHB135
	.uleb128 .L1636-.LFB11066
	.uleb128 0
	.uleb128 .LEHB136-.LFB11066
	.uleb128 .LEHE136-.LEHB136
	.uleb128 .L1626-.LFB11066
	.uleb128 0
	.uleb128 .LEHB137-.LFB11066
	.uleb128 .LEHE137-.LEHB137
	.uleb128 .L1627-.LFB11066
	.uleb128 0
	.uleb128 .LEHB138-.LFB11066
	.uleb128 .LEHE138-.LEHB138
	.uleb128 .L1626-.LFB11066
	.uleb128 0
.LLSDACSE11066:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi, .-_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi
	.text
	.align	2
	.p2align 4,,11
	.type	_Z11build_indexPfmm._omp_fn.0, %function
_Z11build_indexPfmm._omp_fn.0:
.LFB12530:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12530
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	mov	x22, x0
	stp	x19, x20, [sp, 16]
	stp	x23, x24, [sp, 48]
	.cfi_offset 19, -96
	.cfi_offset 20, -88
	.cfi_offset 23, -64
	.cfi_offset 24, -56
	bl	omp_get_num_threads
	mov	w20, w0
	bl	omp_get_thread_num
	mov	w19, w0
	ldr	x1, [x22, 8]
	sub	w0, w1, #1
	sdiv	w23, w0, w20
	msub	w1, w23, w20, w0
	cmp	w19, w1
	blt	.L1800
.L1810:
	madd	w19, w23, w19, w1
	add	w23, w23, w19
	cmp	w19, w23
	bge	.L1799
	ldr	x20, [x22]
	add	w19, w19, 1
	ldp	x24, x22, [x22, 16]
	sxtw	x21, w19
	add	w23, w23, 1
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -40
	.cfi_offset 25, -48
	adrp	x25, _ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb
	mov	w26, 48
	add	x25, x25, :lo12:_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb
	stp	x27, x28, [sp, 80]
	.cfi_offset 28, -24
	.cfi_offset 27, -32
	mov	w27, 1
	lsl	x24, x24, 2
	madd	x20, x21, x24, x20
	b	.L1809
	.p2align 2,,3
.L1806:
	add	w19, w19, 1
	add	x20, x20, x24
	add	x21, x21, 1
	cmp	w19, w23
	beq	.L1832
.L1809:
	ldr	x0, [x22]
	ldr	x4, [x0]
	cmp	x4, x25
	bne	.L1802
	ldr	x1, [x22, 120]
	and	w0, w19, 65535
	strb	wzr, [sp, 104]
	smaddl	x0, w0, w26, x1
	str	x0, [sp, 96]
	cbz	x0, .L1833
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	ldr	x1, [x1]
	cbz	x1, .L1804
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1834
.L1804:
	mov	x2, x21
	mov	x1, x20
	mov	x0, x22
	mov	w3, -1
	strb	w27, [sp, 104]
.LEHB139:
	bl	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi
.LEHE139:
	ldrb	w0, [sp, 104]
	cbz	w0, .L1806
	ldr	x0, [sp, 96]
	cbz	x0, .L1806
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	ldr	x1, [x1]
	cbz	x1, .L1806
	add	w19, w19, 1
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	add	x20, x20, x24
	add	x21, x21, 1
	cmp	w19, w23
	bne	.L1809
	.p2align 3,,7
.L1832:
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 80]
	.cfi_restore 28
	.cfi_restore 27
.L1799:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1802:
	.cfi_def_cfa_offset 112
	.cfi_offset 19, -96
	.cfi_offset 20, -88
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	.cfi_offset 23, -64
	.cfi_offset 24, -56
	.cfi_offset 25, -48
	.cfi_offset 26, -40
	.cfi_offset 27, -32
	.cfi_offset 28, -24
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x2, x21
	mov	x1, x20
	mov	x0, x22
	mov	w3, 0
	blr	x4
	b	.L1806
	.p2align 2,,3
.L1800:
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	add	w23, w23, 1
	mov	w1, 0
	b	.L1810
.L1833:
	.cfi_offset 25, -48
	.cfi_offset 26, -40
	.cfi_offset 27, -32
	.cfi_offset 28, -24
	mov	w0, 1
.LEHB140:
	bl	_ZSt20__throw_system_errori
.L1834:
	bl	_ZSt20__throw_system_errori
.LEHE140:
.L1811:
	ldrb	w1, [sp, 104]
	mov	x19, x0
	cbz	w1, .L1808
	add	x0, sp, 96
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L1808:
	mov	x0, x19
.LEHB141:
	bl	_Unwind_Resume
.LEHE141:
	.cfi_endproc
.LFE12530:
	.section	.gcc_except_table
.LLSDA12530:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12530-.LLSDACSB12530
.LLSDACSB12530:
	.uleb128 .LEHB139-.LFB12530
	.uleb128 .LEHE139-.LEHB139
	.uleb128 .L1811-.LFB12530
	.uleb128 0
	.uleb128 .LEHB140-.LFB12530
	.uleb128 .LEHE140-.LEHB140
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB141-.LFB12530
	.uleb128 .LEHE141-.LEHB141
	.uleb128 0
	.uleb128 0
.LLSDACSE12530:
	.text
	.size	_Z11build_indexPfmm._omp_fn.0, .-_Z11build_indexPfmm._omp_fn.0
	.section	.rodata.str1.8
	.align	3
.LC33:
	.string	"cannot create std::vector larger than max_size()"
	.align	3
.LC34:
	.string	"Not enough memory"
	.align	3
.LC35:
	.string	"Not enough memory: HierarchicalNSW failed to allocate linklists"
	.text
	.align	2
	.p2align 4,,11
	.global	_Z11build_indexPfmm
	.type	_Z11build_indexPfmm, %function
_Z11build_indexPfmm:
.LFB10376:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10376
	sub	sp, sp, #1200
	.cfi_def_cfa_offset 1200
	lsl	x3, x2, 2
	stp	x29, x30, [sp]
	.cfi_offset 29, -1200
	.cfi_offset 30, -1192
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -1168
	.cfi_offset 22, -1160
	mov	x21, x1
	adrp	x1, _ZN7hnswlibL20InnerProductDistanceEPKvS1_S1_
	add	x1, x1, :lo12:_ZN7hnswlibL20InnerProductDistanceEPKvS1_S1_
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -1136
	.cfi_offset 26, -1128
	mov	x25, x2
	adrp	x2, _ZTVN7hnswlib17InnerProductSpaceE+16
	add	x2, x2, :lo12:_ZTVN7hnswlib17InnerProductSpaceE+16
	stp	x19, x20, [sp, 16]
	stp	x23, x24, [sp, 48]
	stp	x27, x28, [sp, 80]
	.cfi_offset 19, -1184
	.cfi_offset 20, -1176
	.cfi_offset 23, -1152
	.cfi_offset 24, -1144
	.cfi_offset 27, -1120
	.cfi_offset 28, -1112
	mov	x27, x0
	mov	x0, 568
	stp	x2, x1, [sp, 112]
	stp	x3, x25, [sp, 128]
.LEHB142:
	bl	_Znwm
.LEHE142:
	mov	x19, x0
	add	x22, x0, 120
	adrp	x1, _ZTVN7hnswlib15HierarchicalNSWIfEE+16
	add	x1, x1, :lo12:_ZTVN7hnswlib15HierarchicalNSWIfEE+16
	mov	x0, 3145728
	stp	x1, xzr, [x19]
	stp	xzr, xzr, [x19, 16]
	stp	xzr, xzr, [x19, 32]
	stp	xzr, xzr, [x19, 48]
	stp	xzr, xzr, [x19, 64]
	str	xzr, [x19, 80]
	stp	xzr, xzr, [x19, 88]
	str	wzr, [x19, 104]
	stp	xzr, xzr, [x19, 112]
	stp	xzr, xzr, [x22, 8]
.LEHB143:
	bl	_Znwm
.LEHE143:
	str	x0, [x19, 120]
	mov	x2, 3145728
	add	x20, x0, x2
	str	x20, [x22, 16]
	mov	w1, 0
	bl	memset
	str	x20, [x22, 8]
	mov	x1, -6148914691236517206
	stp	xzr, xzr, [x19, 144]
	movk	x1, 0x2aa, lsl 48
	stp	xzr, xzr, [x19, 160]
	stp	xzr, xzr, [x19, 176]
	cmp	x21, x1
	bhi	.L1965
	add	x23, x19, 192
	str	xzr, [x19, 192]
	add	x20, x21, x21, lsl 1
	stp	xzr, xzr, [x23, 8]
	lsl	x20, x20, 4
	cbz	x21, .L1837
	mov	x0, x20
.LEHB144:
	bl	_Znwm
.LEHE144:
	str	x0, [x19, 192]
	mov	x2, x20
	add	x20, x0, x20
	str	x20, [x23, 16]
	add	x22, x19, 272
	mov	w1, 0
	bl	memset
	str	x20, [x23, 8]
	str	wzr, [x19, 216]
	lsl	x23, x21, 2
	stp	xzr, xzr, [x19, 224]
	mov	x0, x23
	stp	xzr, xzr, [x19, 240]
	stp	xzr, xzr, [x19, 256]
	str	xzr, [x19, 272]
	stp	xzr, xzr, [x22, 8]
.LEHB145:
	bl	_Znwm
.LEHE145:
	str	x0, [x19, 272]
	add	x20, x0, x23
	str	x20, [x22, 16]
	mov	x2, x23
	mov	w1, 0
	bl	memset
.L1894:
	add	x28, x19, 368
	str	x20, [x22, 8]
	add	x3, x19, 416
	str	xzr, [x19, 296]
	str	xzr, [x19, 312]
	mov	x0, 1
	stp	xzr, xzr, [x19, 320]
	fmov	s0, 1.0e+0
	add	x24, x19, 512
	stp	xzr, xzr, [x19, 336]
	add	x2, x19, 560
	stp	xzr, xzr, [x19, 352]
	str	x3, [x19, 368]
	str	x0, [x28, 8]
	str	xzr, [x19, 384]
	str	xzr, [x28, 24]
	str	xzr, [x19, 408]
	str	s0, [x19, 400]
	str	xzr, [x28, 48]
	stp	x0, x0, [x19, 424]
	stp	xzr, xzr, [x19, 440]
	strb	wzr, [x19, 456]
	stp	xzr, xzr, [x19, 464]
	stp	xzr, xzr, [x19, 480]
	stp	xzr, xzr, [x19, 496]
	str	x2, [x19, 512]
	str	x0, [x24, 8]
	str	xzr, [x19, 528]
	str	xzr, [x24, 24]
	str	s0, [x24, 32]
	stp	xzr, xzr, [x24, 40]
	str	x21, [x19, 8]
	add	x0, x19, 40
	stlr	xzr, [x0]
	ldp	x7, x1, [sp, 120]
	add	x6, sp, 136
	ldr	x0, [x19, 8]
	mov	x11, 32
	mov	x10, 150
	mov	x9, 10
	mov	x5, 100
	mov	x4, 101
	add	x3, x1, 140
	add	x8, x1, 132
	mov	x2, 132
	mov	x20, 16
	str	x3, [x19, 24]
	mul	x0, x3, x0
	stp	x20, x20, [x19, 48]
	stp	x11, x10, [x19, 64]
	str	x9, [x19, 80]
	stp	x2, x2, [x19, 224]
	stp	xzr, x8, [x19, 240]
	stp	x1, x7, [x19, 296]
	str	x6, [x19, 312]
	stp	x5, x4, [x19, 424]
	bl	malloc
	str	x0, [x19, 256]
	cbz	x0, .L1966
	add	x0, x19, 16
	stlr	xzr, [x0]
	mov	x0, 136
.LEHB146:
	bl	_Znwm
.LEHE146:
	mov	x20, x0
	mov	x1, 8
	mov	x22, x20
	add	x23, x20, 48
	mov	x0, 64
	str	xzr, [x22], 16
	str	xzr, [x20, 16]
	stp	xzr, xzr, [x22, 8]
	str	xzr, [x22, 24]
	str	xzr, [x20, 48]
	stp	xzr, xzr, [x23, 8]
	str	xzr, [x23, 24]
	str	x1, [x20, 8]
.LEHB147:
	bl	_Znwm
.LEHE147:
	ldr	x1, [x20, 8]
	mov	x26, x0
	str	x26, [x20]
	mov	x0, 512
	sub	x1, x1, #1
	lsr	x1, x1, 1
	add	x3, x26, x1, lsl 3
	stp	x3, x1, [sp, 96]
.LEHB148:
	bl	_Znwm
.LEHE148:
	ldp	x4, x2, [sp, 96]
	add	x3, x0, 512
	stp	x0, x3, [x22, 8]
	mov	x1, x0
	str	x4, [x22, 24]
	stp	x1, x3, [x23, 8]
	str	x4, [x23, 24]
	str	x0, [x26, x2, lsl 3]
	mov	x0, 24
	str	x1, [x20, 16]
	str	x1, [x20, 48]
	stp	xzr, xzr, [x20, 80]
	stp	xzr, xzr, [x20, 96]
	stp	xzr, xzr, [x20, 112]
	str	w21, [x20, 128]
.LEHB149:
	bl	_Znwm
.LEHE149:
	mov	x26, x0
	ldr	w1, [x20, 128]
	mov	w2, -1
	strh	w2, [x0]
	str	w1, [x26, 16]
	ubfiz	x0, x1, 1, 32
.LEHB150:
	bl	_Znam
.LEHE150:
	ldp	x1, x2, [x20, 16]
	str	x0, [x26, 8]
	cmp	x2, x1
	beq	.L1967
	mov	x0, x1
	str	x26, [x0, -8]!
	str	x0, [x20, 16]
.L1845:
	ldr	x26, [x19, 112]
	str	x20, [x19, 112]
	cbz	x26, .L1848
	add	x22, x26, 48
	add	x20, x26, 16
	.p2align 3,,7
.L1859:
	ldp	x2, x3, [x22]
	ldr	x23, [x20, 24]
	ldr	x5, [x22, 24]
	sub	x2, x2, x3
	sub	x0, x5, x23
	ldr	x1, [x20]
	asr	x0, x0, 3
	ldr	x3, [x20, 16]
	sub	x0, x0, #1
	asr	x2, x2, 3
	sub	x4, x3, x1
	add	x0, x2, x0, lsl 6
	add	x0, x0, x4, asr 3
	cbz	x0, .L1856
	sub	x3, x3, #8
	ldr	x23, [x1]
	cmp	x1, x3
	beq	.L1857
	add	x1, x1, 8
	str	x1, [x26, 16]
	cbz	x23, .L1859
.L1968:
	ldr	x0, [x23, 8]
	cbz	x0, .L1860
	bl	_ZdaPv
.L1860:
	mov	x0, x23
	bl	_ZdlPv
	b	.L1859
	.p2align 2,,3
.L1857:
	ldr	x0, [x26, 24]
	bl	_ZdlPv
	ldr	x0, [x26, 40]
	add	x1, x0, 8
	ldr	x0, [x0, 8]
	str	x0, [x20, 8]
	str	x1, [x20, 24]
	add	x1, x0, 512
	str	x1, [x20, 16]
	str	x0, [x26, 16]
	cbz	x23, .L1859
	b	.L1968
	.p2align 2,,3
.L1856:
	ldr	x0, [x26]
	cbz	x0, .L1861
	add	x20, x5, 8
	cmp	x23, x20
	bcs	.L1862
	.p2align 3,,7
.L1863:
	ldr	x0, [x23], 8
	bl	_ZdlPv
	cmp	x20, x23
	bhi	.L1863
	ldr	x0, [x26]
.L1862:
	bl	_ZdlPv
.L1861:
	mov	x0, x26
	bl	_ZdlPv
.L1848:
	ldr	x0, [x19, 8]
	mov	w1, -1
	str	w1, [x19, 104]
	str	w1, [x19, 216]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [x19, 264]
	cbz	x0, .L1969
	ldr	d0, [x19, 48]
	ldr	x0, [x19, 56]
	ucvtf	d0, d0
	add	x0, x0, 1
	lsl	x0, x0, 2
	str	x0, [x19, 32]
	bl	log
	strb	wzr, [sp, 184]
	fmov	d1, 1.0e+0
	ldr	x0, [x19, 120]
	str	x0, [sp, 176]
	fdiv	d0, d1, d0
	fdiv	d1, d1, d0
	stp	d0, d1, [x19, 88]
	cbz	x0, .L1970
	adrp	x1, .LC5
	ldr	x20, [x1, #:lo12:.LC5]
	cbz	x20, .L1886
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1971
.L1886:
	mov	w4, 1
	mov	x1, x27
	mov	x0, x19
	mov	w3, -1
	mov	x2, 0
	strb	w4, [sp, 184]
.LEHB151:
	bl	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi
.LEHE151:
	ldrb	w0, [sp, 184]
	cbnz	w0, .L1972
.L1887:
	add	x1, sp, 176
	mov	w3, 0
	mov	w2, 0
	adrp	x0, _Z11build_indexPfmm._omp_fn.0
	add	x0, x0, :lo12:_Z11build_indexPfmm._omp_fn.0
	stp	x27, x21, [sp, 176]
	stp	x25, x19, [sp, 192]
	bl	GOMP_parallel
	adrp	x3, .LANCHOR0
	add	x3, x3, :lo12:.LANCHOR0
	mov	x2, 1007
	mov	w1, 0
	add	x0, sp, 193
	ldp	x4, x5, [x3]
	stp	x4, x5, [sp, 176]
	ldrb	w3, [x3, 16]
	strb	w3, [sp, 192]
	bl	memset
	ldr	x3, [x19]
	add	x4, sp, 160
	add	x2, sp, 192
	add	x0, sp, 144
	add	x1, sp, 176
	str	x4, [sp, 144]
	ldr	x20, [x3, 24]
.LEHB152:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
.LEHE152:
	add	x1, sp, 144
	mov	x0, x19
.LEHB153:
	blr	x20
.LEHE153:
	ldr	x0, [sp, 144]
	add	x1, sp, 160
	cmp	x0, x1
	beq	.L1835
	bl	_ZdlPv
.L1835:
	ldp	x29, x30, [sp]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	add	sp, sp, 1200
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1837:
	.cfi_restore_state
	add	x22, x19, 272
	str	xzr, [x19, 192]
	stp	xzr, xzr, [x23, 8]
	mov	x20, 0
	str	wzr, [x19, 216]
	stp	xzr, xzr, [x19, 224]
	stp	xzr, xzr, [x19, 240]
	stp	xzr, xzr, [x19, 256]
	str	xzr, [x19, 272]
	str	xzr, [x22, 16]
	b	.L1894
	.p2align 2,,3
.L1972:
	ldr	x0, [sp, 176]
	cbz	x0, .L1887
	cbz	x20, .L1887
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L1887
	.p2align 2,,3
.L1967:
	ldp	x1, x6, [x22, 16]
	str	x6, [sp, 96]
	ldr	x0, [x23, 24]
	mov	x4, 1152921504606846975
	ldr	x5, [x23, 8]
	ldr	x3, [x20, 48]
	sub	x0, x0, x6
	sub	x1, x1, x2
	asr	x0, x0, 3
	sub	x3, x3, x5
	sub	x0, x0, #1
	asr	x3, x3, 3
	add	x0, x3, x0, lsl 6
	add	x0, x0, x1, asr 3
	cmp	x0, x4
	beq	.L1843
	ldr	x0, [x20]
	cmp	x6, x0
	beq	.L1844
.L1846:
	mov	x0, 512
.LEHB154:
	bl	_Znwm
	ldr	x1, [sp, 96]
	str	x0, [x1, -8]
	ldr	x0, [x20, 40]
	sub	x1, x0, #8
	ldr	x0, [x0, -8]
	str	x0, [x22, 8]
	str	x1, [x22, 24]
	add	x1, x0, 512
	str	x1, [x22, 16]
	add	x1, x0, 504
	str	x1, [x20, 16]
	str	x26, [x0, 504]
	b	.L1845
.L1844:
	mov	x0, x20
	mov	w2, 1
	mov	x1, 1
	bl	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb
	ldr	x0, [x20, 40]
	str	x0, [sp, 96]
	b	.L1846
.L1843:
	adrp	x0, .LC25
	add	x0, x0, :lo12:.LC25
	bl	_ZSt20__throw_length_errorPKc
.LEHE154:
.L1970:
	mov	w0, 1
.LEHB155:
	bl	_ZSt20__throw_system_errori
.LEHE155:
.L1965:
	adrp	x0, .LC33
	add	x0, x0, :lo12:.LC33
.LEHB156:
	bl	_ZSt20__throw_length_errorPKc
.LEHE156:
.L1971:
.LEHB157:
	bl	_ZSt20__throw_system_errori
.LEHE157:
.L1908:
	ldrb	w1, [sp, 184]
	mov	x19, x0
	cbz	w1, .L1893
	add	x0, sp, 176
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L1893:
	mov	x0, x19
.LEHB158:
	bl	_Unwind_Resume
.LEHE158:
.L1901:
	mov	x1, x0
.L1850:
	mov	x0, x20
	mov	x20, x1
	bl	_ZdlPv
.L1868:
	mov	x0, x24
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	mov	x0, x28
	bl	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED1Ev
	ldr	x0, [x19, 272]
	cbz	x0, .L1871
	bl	_ZdlPv
.L1871:
	ldr	x0, [x19, 192]
	cbz	x0, .L1873
	bl	_ZdlPv
.L1873:
	ldr	x0, [x19, 120]
	cbz	x0, .L1875
	bl	_ZdlPv
.L1875:
	ldr	x21, [x19, 112]
	cbz	x21, .L1876
	add	x24, x21, 48
	add	x22, x21, 16
.L1880:
	ldp	x2, x4, [x24]
	ldr	x23, [x22, 24]
	ldr	x3, [x24, 24]
	sub	x2, x2, x4
	sub	x0, x3, x23
	ldr	x1, [x22]
	asr	x0, x0, 3
	ldr	x4, [x22, 16]
	sub	x0, x0, #1
	asr	x2, x2, 3
	sub	x5, x4, x1
	add	x0, x2, x0, lsl 6
	add	x0, x0, x5, asr 3
	cbz	x0, .L1877
	sub	x4, x4, #8
	ldr	x23, [x1]
	cmp	x1, x4
	beq	.L1878
	add	x1, x1, 8
	str	x1, [x21, 16]
	cbz	x23, .L1880
.L1975:
	ldr	x0, [x23, 8]
	cbz	x0, .L1881
	bl	_ZdaPv
.L1881:
	mov	x0, x23
	bl	_ZdlPv
	b	.L1880
.L1899:
	mov	x20, x0
	b	.L1868
.L1966:
	mov	x0, x20
	bl	__cxa_allocate_exception
	adrp	x1, .LC34
	mov	x21, x0
	add	x1, x1, :lo12:.LC34
.LEHB159:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE159:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x21
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB160:
	bl	__cxa_throw
.LEHE160:
.L1902:
.L1964:
	mov	x20, x0
	mov	x0, x21
	bl	__cxa_free_exception
	b	.L1868
.L1973:
	ldr	x0, [x23], 8
	bl	_ZdlPv
.L1885:
	cmp	x22, x23
	bhi	.L1973
	ldr	x0, [x21]
	bl	_ZdlPv
.L1883:
	mov	x0, x21
	bl	_ZdlPv
.L1876:
	mov	x0, x19
	bl	_ZdlPv
	mov	x0, x20
.LEHB161:
	bl	_Unwind_Resume
.LEHE161:
.L1896:
	mov	x20, x0
	b	.L1875
.L1898:
	mov	x20, x0
	b	.L1871
.L1903:
	mov	x21, x0
.L1852:
	ldr	x0, [x20]
	cbz	x0, .L1853
	ldr	x22, [x20, 72]
	ldr	x23, [x20, 40]
	add	x22, x22, 8
.L1855:
	cmp	x22, x23
	bhi	.L1974
	ldr	x0, [x20]
	bl	_ZdlPv
.L1853:
	mov	x1, x21
	b	.L1850
.L1906:
	bl	__cxa_begin_catch
.LEHB162:
	bl	__cxa_rethrow
.LEHE162:
.L1895:
	ldr	x2, [sp, 144]
	add	x1, sp, 160
	mov	x19, x0
	cmp	x2, x1
	beq	.L1893
	mov	x0, x2
	bl	_ZdlPv
	b	.L1893
.L1907:
	mov	x21, x0
	bl	__cxa_end_catch
	mov	x0, x21
	bl	__cxa_begin_catch
	ldr	x0, [x20]
	bl	_ZdlPv
	stp	xzr, xzr, [x20]
.LEHB163:
	bl	__cxa_rethrow
.LEHE163:
.L1905:
	mov	x21, x0
	bl	__cxa_end_catch
	mov	x1, x21
	b	.L1850
.L1904:
	mov	x21, x0
	mov	x0, x26
	bl	_ZdlPv
	b	.L1852
.L1897:
	mov	x20, x0
	b	.L1873
.L1969:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC35
	mov	x21, x0
	add	x1, x1, :lo12:.LC35
.LEHB164:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE164:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x21
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB165:
	bl	__cxa_throw
.LEHE165:
.L1900:
	b	.L1964
.L1974:
	ldr	x0, [x23], 8
	bl	_ZdlPv
	b	.L1855
.L1877:
	ldr	x0, [x21]
	cbz	x0, .L1883
	add	x22, x3, 8
	b	.L1885
.L1878:
	ldr	x0, [x21, 24]
	bl	_ZdlPv
	ldr	x0, [x21, 40]
	add	x1, x0, 8
	ldr	x0, [x0, 8]
	str	x0, [x22, 8]
	str	x1, [x22, 24]
	add	x1, x0, 512
	str	x1, [x22, 16]
	str	x0, [x21, 16]
	cbnz	x23, .L1975
	b	.L1880
	.cfi_endproc
.LFE10376:
	.section	.gcc_except_table
	.align	2
.LLSDA10376:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10376-.LLSDATTD10376
.LLSDATTD10376:
	.byte	0x1
	.uleb128 .LLSDACSE10376-.LLSDACSB10376
.LLSDACSB10376:
	.uleb128 .LEHB142-.LFB10376
	.uleb128 .LEHE142-.LEHB142
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB143-.LFB10376
	.uleb128 .LEHE143-.LEHB143
	.uleb128 .L1896-.LFB10376
	.uleb128 0
	.uleb128 .LEHB144-.LFB10376
	.uleb128 .LEHE144-.LEHB144
	.uleb128 .L1897-.LFB10376
	.uleb128 0
	.uleb128 .LEHB145-.LFB10376
	.uleb128 .LEHE145-.LEHB145
	.uleb128 .L1898-.LFB10376
	.uleb128 0
	.uleb128 .LEHB146-.LFB10376
	.uleb128 .LEHE146-.LEHB146
	.uleb128 .L1899-.LFB10376
	.uleb128 0
	.uleb128 .LEHB147-.LFB10376
	.uleb128 .LEHE147-.LEHB147
	.uleb128 .L1901-.LFB10376
	.uleb128 0
	.uleb128 .LEHB148-.LFB10376
	.uleb128 .LEHE148-.LEHB148
	.uleb128 .L1906-.LFB10376
	.uleb128 0x1
	.uleb128 .LEHB149-.LFB10376
	.uleb128 .LEHE149-.LEHB149
	.uleb128 .L1903-.LFB10376
	.uleb128 0
	.uleb128 .LEHB150-.LFB10376
	.uleb128 .LEHE150-.LEHB150
	.uleb128 .L1904-.LFB10376
	.uleb128 0
	.uleb128 .LEHB151-.LFB10376
	.uleb128 .LEHE151-.LEHB151
	.uleb128 .L1908-.LFB10376
	.uleb128 0
	.uleb128 .LEHB152-.LFB10376
	.uleb128 .LEHE152-.LEHB152
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB153-.LFB10376
	.uleb128 .LEHE153-.LEHB153
	.uleb128 .L1895-.LFB10376
	.uleb128 0
	.uleb128 .LEHB154-.LFB10376
	.uleb128 .LEHE154-.LEHB154
	.uleb128 .L1903-.LFB10376
	.uleb128 0
	.uleb128 .LEHB155-.LFB10376
	.uleb128 .LEHE155-.LEHB155
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB156-.LFB10376
	.uleb128 .LEHE156-.LEHB156
	.uleb128 .L1897-.LFB10376
	.uleb128 0
	.uleb128 .LEHB157-.LFB10376
	.uleb128 .LEHE157-.LEHB157
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB158-.LFB10376
	.uleb128 .LEHE158-.LEHB158
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB159-.LFB10376
	.uleb128 .LEHE159-.LEHB159
	.uleb128 .L1902-.LFB10376
	.uleb128 0
	.uleb128 .LEHB160-.LFB10376
	.uleb128 .LEHE160-.LEHB160
	.uleb128 .L1899-.LFB10376
	.uleb128 0
	.uleb128 .LEHB161-.LFB10376
	.uleb128 .LEHE161-.LEHB161
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB162-.LFB10376
	.uleb128 .LEHE162-.LEHB162
	.uleb128 .L1907-.LFB10376
	.uleb128 0x1
	.uleb128 .LEHB163-.LFB10376
	.uleb128 .LEHE163-.LEHB163
	.uleb128 .L1905-.LFB10376
	.uleb128 0
	.uleb128 .LEHB164-.LFB10376
	.uleb128 .LEHE164-.LEHB164
	.uleb128 .L1900-.LFB10376
	.uleb128 0
	.uleb128 .LEHB165-.LFB10376
	.uleb128 .LEHE165-.LEHB165
	.uleb128 .L1899-.LFB10376
	.uleb128 0
.LLSDACSE10376:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT10376:
	.text
	.size	_Z11build_indexPfmm, .-_Z11build_indexPfmm
	.section	.rodata._ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb.str1.8,"aMS",@progbits,1
	.align	3
.LC37:
	.string	"Replacement of deleted elements is disabled in constructor"
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb
	.type	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb, %function
_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb:
.LFB10792:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10792
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -128
	.cfi_offset 20, -120
	mov	x19, x0
	ldrb	w0, [x0, 456]
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -112
	.cfi_offset 22, -104
	and	w22, w3, 255
	eor	w0, w0, 1
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -96
	.cfi_offset 24, -88
	str	x2, [sp, 72]
	tst	w22, w0
	bne	.L2114
	mov	x21, x1
	ubfiz	x0, x2, 1, 16
	ldr	x1, [x19, 120]
	add	x0, x0, x2, uxth
	strb	wzr, [sp, 104]
	add	x0, x1, x0, lsl 4
	str	x0, [sp, 96]
	cbz	x0, .L2115
	adrp	x1, .LC5
	ldr	x20, [x1, #:lo12:.LC5]
	cbz	x20, .L1979
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2116
.L1979:
	mov	w0, 1
	strb	w0, [sp, 104]
	cbz	w22, .L2117
	add	x22, x19, 464
	str	x22, [sp, 112]
	strb	wzr, [sp, 120]
	cbz	x20, .L1983
	mov	x0, x22
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2118
.L1983:
	ldr	x24, [x19, 536]
	mov	w0, 1
	strb	w0, [sp, 120]
	add	x23, x19, 512
	cbnz	x24, .L2119
	ldr	x0, [sp, 112]
	cbz	x0, .L2106
	cbz	x20, .L2120
.L2016:
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	strb	wzr, [sp, 120]
	ldr	x2, [sp, 72]
	cbz	x24, .L2011
.L1986:
	ldp	x4, x3, [x19, 248]
	add	x0, x19, 320
	ldr	w1, [sp, 80]
	ldr	x5, [x19, 24]
	madd	x1, x1, x5, x4
	ldr	x4, [x3, x1]
	str	x4, [sp, 88]
	str	x2, [x3, x1]
	str	x0, [sp, 128]
	strb	wzr, [sp, 136]
	cbz	x20, .L1988
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2121
.L1988:
	mov	w3, 1
	add	x2, sp, 88
	add	x24, x19, 368
	mov	w1, 0
	mov	x0, x24
	strb	w3, [sp, 136]
	bl	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_
	mov	x0, x24
	add	x1, sp, 72
.LEHB166:
	bl	_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_
	ldrb	w1, [sp, 136]
	ldr	w2, [sp, 80]
	str	w2, [x0]
	cbz	w1, .L2122
	ldr	x0, [sp, 128]
	cbz	x0, .L1990
	cbz	x20, .L1991
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L1991:
	strb	wzr, [sp, 136]
.L1990:
	ldr	w0, [sp, 80]
	str	w0, [sp, 84]
	add	x1, x19, 16
	ldar	x1, [x1]
	cmp	x1, x0, uxtw
	bls	.L2123
	ldr	w1, [sp, 84]
	ldr	x3, [x19, 24]
	ldr	x2, [x19, 240]
	ldr	x0, [x19, 256]
	madd	x1, x1, x3, x2
	add	x0, x0, x1
	ldrb	w1, [x0, 2]
	tbz	x1, 0, .L1993
	and	w1, w1, -2
	strb	w1, [x0, 2]
	add	x0, x19, 40
.L2130:
	ldaxr	x1, [x0]
	sub	x1, x1, #1
	stlxr	w2, x1, [x0]
	cbnz	w2, .L2130
	ldrb	w0, [x19, 456]
	cbnz	w0, .L2124
.L1994:
	ldr	w2, [sp, 80]
	fmov	s0, 1.0e+0
	mov	x1, x21
	mov	x0, x19
	bl	_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf
.LEHE166:
	ldrb	w0, [sp, 136]
	cbnz	w0, .L2125
.L1987:
	ldrb	w0, [sp, 120]
	cbnz	w0, .L2126
.L2001:
	ldrb	w0, [sp, 104]
	cbnz	w0, .L2127
.L1976:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 144
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2119:
	.cfi_restore_state
	ldr	x3, [x23, 16]
	add	x2, sp, 80
	mov	x0, x23
	mov	w1, 0
	ldr	w3, [x3, 8]
	str	w3, [sp, 80]
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj
	ldrb	w0, [sp, 120]
	cbz	w0, .L2128
	ldr	x0, [sp, 112]
	cbz	x0, .L2107
	cbnz	x20, .L2016
	strb	wzr, [sp, 120]
.L2107:
	ldr	x2, [sp, 72]
	b	.L1986
	.p2align 2,,3
.L2117:
	ldr	x2, [sp, 72]
	mov	x1, x21
	mov	x0, x19
	mov	w3, -1
.LEHB167:
	bl	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi
.LEHE167:
	ldrb	w0, [sp, 104]
	cbz	w0, .L1976
.L2127:
	ldr	x0, [sp, 96]
	cbz	x0, .L1976
	cbz	x20, .L1976
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 144
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2120:
	.cfi_restore_state
	strb	wzr, [sp, 120]
.L2106:
	ldr	x2, [sp, 72]
.L2011:
	mov	x1, x21
	mov	x0, x19
	mov	w3, -1
.LEHB168:
	bl	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi
.LEHE168:
	ldrb	w0, [sp, 120]
	cbz	w0, .L2001
.L2126:
	ldr	x0, [sp, 112]
	cbz	x0, .L2001
	cbz	x20, .L2001
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L2001
	.p2align 2,,3
.L2124:
	cbz	x20, .L1995
	mov	x0, x22
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2129
.L1995:
	mov	x0, x23
	add	x2, sp, 84
	mov	w1, 0
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj
	cbz	x20, .L1994
	mov	x0, x22
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L1994
	.p2align 2,,3
.L2125:
	ldr	x0, [sp, 128]
	cbz	x0, .L1987
	cbz	x20, .L1987
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L1987
.L2118:
.LEHB169:
	bl	_ZSt20__throw_system_errori
.LEHE169:
.L2115:
	mov	w0, 1
.LEHB170:
	bl	_ZSt20__throw_system_errori
.LEHE170:
.L2128:
	mov	w0, 1
.LEHB171:
	bl	_ZSt20__throw_system_errori
.LEHE171:
.L2116:
.LEHB172:
	bl	_ZSt20__throw_system_errori
.LEHE172:
.L2123:
	bl	_ZN7hnswlib15HierarchicalNSWIfE21unmarkDeletedInternalEj.part.0
.L2122:
	mov	w0, 1
.LEHB173:
	bl	_ZSt20__throw_system_errori
.LEHE173:
.L2121:
.LEHB174:
	bl	_ZSt20__throw_system_errori
.LEHE174:
.L2129:
.LEHB175:
	bl	_ZSt20__throw_system_errori
.LEHE175:
.L2020:
	mov	x19, x0
.L2006:
	ldrb	w0, [sp, 104]
	cbz	w0, .L2007
	add	x0, sp, 96
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L2007:
	mov	x0, x19
.LEHB176:
	bl	_Unwind_Resume
.LEHE176:
.L1993:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC28
	mov	x20, x0
	add	x1, x1, :lo12:.LC28
.LEHB177:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE177:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB178:
	bl	__cxa_throw
.LEHE178:
.L2114:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC37
	mov	x19, x0
	add	x1, x1, :lo12:.LC37
.LEHB179:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE179:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x19
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB180:
	bl	__cxa_throw
.LEHE180:
.L2022:
	mov	x19, x0
	b	.L1999
.L2021:
	mov	x19, x0
.L2004:
	ldrb	w0, [sp, 120]
	cbz	w0, .L2006
	add	x0, sp, 112
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L2006
.L2023:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
.L1999:
	ldrb	w0, [sp, 136]
	cbz	w0, .L2004
	add	x0, sp, 128
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L2004
.L2019:
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	bl	__cxa_free_exception
	mov	x0, x19
.LEHB181:
	bl	_Unwind_Resume
.LEHE181:
	.cfi_endproc
.LFE10792:
	.section	.gcc_except_table
.LLSDA10792:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10792-.LLSDACSB10792
.LLSDACSB10792:
	.uleb128 .LEHB166-.LFB10792
	.uleb128 .LEHE166-.LEHB166
	.uleb128 .L2022-.LFB10792
	.uleb128 0
	.uleb128 .LEHB167-.LFB10792
	.uleb128 .LEHE167-.LEHB167
	.uleb128 .L2020-.LFB10792
	.uleb128 0
	.uleb128 .LEHB168-.LFB10792
	.uleb128 .LEHE168-.LEHB168
	.uleb128 .L2021-.LFB10792
	.uleb128 0
	.uleb128 .LEHB169-.LFB10792
	.uleb128 .LEHE169-.LEHB169
	.uleb128 .L2020-.LFB10792
	.uleb128 0
	.uleb128 .LEHB170-.LFB10792
	.uleb128 .LEHE170-.LEHB170
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB171-.LFB10792
	.uleb128 .LEHE171-.LEHB171
	.uleb128 .L2021-.LFB10792
	.uleb128 0
	.uleb128 .LEHB172-.LFB10792
	.uleb128 .LEHE172-.LEHB172
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB173-.LFB10792
	.uleb128 .LEHE173-.LEHB173
	.uleb128 .L2022-.LFB10792
	.uleb128 0
	.uleb128 .LEHB174-.LFB10792
	.uleb128 .LEHE174-.LEHB174
	.uleb128 .L2021-.LFB10792
	.uleb128 0
	.uleb128 .LEHB175-.LFB10792
	.uleb128 .LEHE175-.LEHB175
	.uleb128 .L2022-.LFB10792
	.uleb128 0
	.uleb128 .LEHB176-.LFB10792
	.uleb128 .LEHE176-.LEHB176
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB177-.LFB10792
	.uleb128 .LEHE177-.LEHB177
	.uleb128 .L2023-.LFB10792
	.uleb128 0
	.uleb128 .LEHB178-.LFB10792
	.uleb128 .LEHE178-.LEHB178
	.uleb128 .L2022-.LFB10792
	.uleb128 0
	.uleb128 .LEHB179-.LFB10792
	.uleb128 .LEHE179-.LEHB179
	.uleb128 .L2019-.LFB10792
	.uleb128 0
	.uleb128 .LEHB180-.LFB10792
	.uleb128 .LEHE180-.LEHB180
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB181-.LFB10792
	.uleb128 .LEHE181-.LEHB181
	.uleb128 0
	.uleb128 0
.LLSDACSE10792:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb, .-_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb
	.section	.rodata._ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm.str1.8,"aMS",@progbits,1
	.align	3
.LC38:
	.string	"vector::_M_default_append"
	.section	.text._ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm
	.type	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm, %function
_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm:
.LFB12398:
	.cfi_startproc
	cbz	x1, .L2155
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x3, 576460752303423487
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x20, x1
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x22, x0
	ldp	x0, x1, [x0]
	ldr	x2, [x22, 16]
	sub	x19, x1, x0
	sub	x2, x2, x1
	asr	x21, x19, 4
	sub	x4, x3, x21
	cmp	x20, x2, asr 4
	bhi	.L2133
	mov	x2, x1
	mov	x3, x20
	.p2align 3,,7
.L2134:
	str	wzr, [x2]
	subs	x3, x3, #1
	str	xzr, [x2, 8]
	add	x2, x2, 16
	bne	.L2134
	add	x1, x1, x20, lsl 4
	str	x1, [x22, 8]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2155:
	ret
	.p2align 2,,3
.L2133:
	.cfi_def_cfa_offset 64
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -8
	.cfi_offset 23, -16
	cmp	x4, x20
	bcc	.L2158
	cmp	x20, x21
	csel	x2, x20, x21, cs
	adds	x2, x21, x2
	bcs	.L2137
	cbnz	x2, .L2159
	mov	x23, 0
	mov	x24, 0
.L2139:
	add	x2, x24, x19
	mov	x3, x20
	.p2align 3,,7
.L2140:
	str	wzr, [x2]
	subs	x3, x3, #1
	str	xzr, [x2, 8]
	add	x2, x2, 16
	bne	.L2140
	cmp	x1, x0
	beq	.L2144
	sub	x1, x1, x0
	mov	x2, x24
	add	x1, x24, x1
	mov	x3, x0
	.p2align 3,,7
.L2145:
	ldp	x4, x5, [x3], 16
	stp	x4, x5, [x2], 16
	cmp	x2, x1
	bne	.L2145
.L2144:
	cbz	x0, .L2143
	bl	_ZdlPv
.L2143:
	add	x21, x20, x21
	str	x23, [x22, 16]
	ldp	x19, x20, [sp, 16]
	add	x21, x24, x21, lsl 4
	stp	x24, x21, [x22]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 23
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L2159:
	.cfi_restore_state
	cmp	x2, x3
	csel	x2, x2, x3, ls
	lsl	x23, x2, 4
.L2138:
	mov	x0, x23
	bl	_Znwm
	mov	x24, x0
	add	x23, x0, x23
	ldp	x0, x1, [x22]
	b	.L2139
.L2137:
	mov	x23, 9223372036854775792
	b	.L2138
.L2158:
	adrp	x0, .LC38
	add	x0, x0, :lo12:.LC38
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12398:
	.size	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm, .-_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm
	.section	.text._ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE,"axG",@progbits,_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE
	.type	_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE, %function
_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE:
.LFB12316:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12316
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	ldr	x4, [x0]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x19, x8
	add	x8, sp, 32
	ldr	x4, [x4, 8]
	stp	xzr, xzr, [x19]
	str	xzr, [x19, 16]
.LEHB182:
	blr	x4
.LEHE182:
	ldp	x0, x2, [sp, 32]
	ldp	x3, x4, [x19]
	sub	x20, x2, x0
	sub	x1, x4, x3
	asr	x5, x20, 4
	cmp	x20, x1
	bhi	.L2198
	bcc	.L2199
.L2162:
	cmp	x2, x0
	beq	.L2163
.L2200:
	sub	x20, x20, #16
	b	.L2171
	.p2align 2,,3
.L2164:
	ldp	x0, x2, [sp, 32]
	sub	x20, x20, #16
	sub	x2, x2, #16
	str	x2, [sp, 40]
	cmp	x0, x2
	beq	.L2172
.L2171:
	ldr	x3, [x19]
	sub	x1, x2, x0
	ldr	s1, [x0]
	add	x4, x3, x20
	ldr	x5, [x0, 8]
	str	s1, [x3, x20]
	str	x5, [x4, 8]
	cmp	x1, 16
	ble	.L2164
	sub	x1, x2, #16
	ldr	s0, [x2, -16]
	sub	x1, x1, x0
	ldr	x4, [x0, 8]
	asr	x9, x1, 4
	sub	x7, x9, #1
	str	s1, [x2, -16]
	ldr	x3, [x2, -8]
	add	x7, x7, x7, lsr 63
	str	x4, [x2, -8]
	asr	x7, x7, 1
	cmp	x1, 32
	ble	.L2178
	mov	x4, 0
	b	.L2169
	.p2align 2,,3
.L2180:
	mov	x5, x2
.L2168:
	lsl	x2, x4, 4
	add	x4, x0, x2
	str	s1, [x0, x2]
	str	x5, [x4, 8]
	cmp	x1, x7
	bge	.L2165
.L2181:
	mov	x4, x1
.L2169:
	add	x2, x4, 1
	lsl	x6, x2, 1
	lsl	x2, x2, 5
	sub	x1, x6, #1
	add	x8, x0, x2
	lsl	x5, x1, 4
	ldr	s2, [x0, x2]
	add	x2, x0, x5
	ldr	s1, [x0, x5]
	fcmpe	s2, s1
	bmi	.L2184
	ldr	x5, [x8, 8]
	bgt	.L2179
	ldr	x2, [x2, 8]
	cmp	x2, x5
	bhi	.L2180
.L2179:
	fmov	s1, s2
	lsl	x2, x4, 4
	add	x4, x0, x2
	mov	x1, x6
	str	s1, [x0, x2]
	str	x5, [x4, 8]
	cmp	x1, x7
	blt	.L2181
.L2165:
	tbnz	x9, 0, .L2170
	sub	x9, x9, #2
	add	x9, x9, x9, lsr 63
	cmp	x1, x9, asr 1
	bne	.L2170
	lsl	x4, x1, 1
	lsl	x2, x1, 4
	add	x1, x4, 1
	add	x5, x0, x2
	lsl	x4, x1, 4
	add	x6, x0, x4
	ldr	s1, [x0, x4]
	ldr	x4, [x6, 8]
	str	s1, [x0, x2]
	str	x4, [x5, 8]
	.p2align 3,,7
.L2170:
	mov	x2, 0
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldp	x0, x2, [sp, 32]
	sub	x20, x20, #16
	sub	x2, x2, #16
	str	x2, [sp, 40]
	cmp	x0, x2
	bne	.L2171
.L2172:
	mov	x0, x2
	bl	_ZdlPv
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2184:
	.cfi_restore_state
	ldr	x5, [x2, 8]
	b	.L2168
	.p2align 2,,3
.L2199:
	add	x3, x3, x20
	cmp	x4, x3
	beq	.L2162
	str	x3, [x19, 8]
	cmp	x2, x0
	bne	.L2200
.L2163:
	cbnz	x2, .L2172
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2198:
	.cfi_restore_state
	sub	x1, x5, x1, asr 4
	mov	x0, x19
.LEHB183:
	bl	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm
.LEHE183:
	ldp	x0, x2, [sp, 32]
	b	.L2162
	.p2align 2,,3
.L2178:
	mov	x1, 0
	b	.L2165
.L2183:
	ldr	x1, [sp, 32]
	mov	x20, x0
	cbz	x1, .L2176
	mov	x0, x1
	bl	_ZdlPv
.L2176:
	ldr	x0, [x19]
	cbz	x0, .L2177
	bl	_ZdlPv
.L2177:
	mov	x0, x20
.LEHB184:
	bl	_Unwind_Resume
.LEHE184:
.L2182:
	mov	x20, x0
	b	.L2176
	.cfi_endproc
.LFE12316:
	.section	.gcc_except_table
.LLSDA12316:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12316-.LLSDACSB12316
.LLSDACSB12316:
	.uleb128 .LEHB182-.LFB12316
	.uleb128 .LEHE182-.LEHB182
	.uleb128 .L2182-.LFB12316
	.uleb128 0
	.uleb128 .LEHB183-.LFB12316
	.uleb128 .LEHE183-.LEHB183
	.uleb128 .L2183-.LFB12316
	.uleb128 0
	.uleb128 .LEHB184-.LFB12316
	.uleb128 .LEHE184-.LEHB184
	.uleb128 0
	.uleb128 0
.LLSDACSE12316:
	.section	.text._ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE,"axG",@progbits,_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE,comdat
	.size	_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE, .-_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB12458:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	ldp	x24, x23, [x0]
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x21, x0
	stp	x19, x20, [sp, 16]
	stp	x25, x26, [sp, 64]
	sub	x0, x23, x24
	stp	x27, x28, [sp, 80]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	mov	x27, x2
	asr	x0, x0, 3
	mov	x2, 1152921504606846975
	cmp	x0, x2
	beq	.L2219
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	mov	x28, x3
	adds	x1, x1, x0
	bcs	.L2212
	cbnz	x1, .L2206
	mov	x25, 8
	mov	x22, 0
	mov	x20, 0
.L2211:
	ldr	s0, [x27]
	add	x0, x20, x26
	ldr	w1, [x28]
	str	s0, [x20, x26]
	str	w1, [x0, 4]
	cmp	x19, x24
	beq	.L2207
	mov	x4, x20
	mov	x3, x24
	.p2align 3,,7
.L2208:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L2208
	add	x26, x26, 8
	add	x25, x20, x26
.L2207:
	cmp	x19, x23
	beq	.L2209
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L2209:
	cbz	x24, .L2210
	mov	x0, x24
	bl	_ZdlPv
.L2210:
	ldp	x23, x24, [sp, 48]
	ldp	x27, x28, [sp, 80]
	stp	x20, x25, [x21]
	str	x22, [x21, 16]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2212:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L2205:
	mov	x0, x22
	bl	_Znwm
	mov	x20, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L2211
.L2206:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L2205
.L2219:
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12458:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB12460:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	ldp	x24, x23, [x0]
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x21, x0
	stp	x19, x20, [sp, 16]
	stp	x25, x26, [sp, 64]
	sub	x0, x23, x24
	stp	x27, x28, [sp, 80]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	mov	x27, x2
	asr	x0, x0, 3
	mov	x2, 1152921504606846975
	cmp	x0, x2
	beq	.L2238
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	mov	x28, x3
	adds	x1, x1, x0
	bcs	.L2231
	cbnz	x1, .L2225
	mov	x25, 8
	mov	x22, 0
	mov	x20, 0
.L2230:
	ldr	s0, [x27]
	add	x0, x20, x26
	ldr	w1, [x28]
	str	s0, [x20, x26]
	str	w1, [x0, 4]
	cmp	x19, x24
	beq	.L2226
	mov	x4, x20
	mov	x3, x24
	.p2align 3,,7
.L2227:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L2227
	add	x26, x26, 8
	add	x25, x20, x26
.L2226:
	cmp	x19, x23
	beq	.L2228
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L2228:
	cbz	x24, .L2229
	mov	x0, x24
	bl	_ZdlPv
.L2229:
	ldp	x23, x24, [sp, 48]
	ldp	x27, x28, [sp, 80]
	stp	x20, x25, [x21]
	str	x22, [x21, 16]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2231:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L2224:
	mov	x0, x22
	bl	_Znwm
	mov	x20, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L2230
.L2225:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L2224
.L2238:
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12460:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE,"axG",@progbits,_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE
	.type	_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE, %function
_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE:
.LFB12346:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12346
	stp	x29, x30, [sp, -192]!
	.cfi_def_cfa_offset 192
	.cfi_offset 29, -192
	.cfi_offset 30, -184
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -160
	.cfi_offset 22, -152
	mov	x21, x0
	mov	x22, x3
	ldr	x0, [x0, 112]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -176
	.cfi_offset 20, -168
	mov	x19, x8
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	.cfi_offset 23, -144
	.cfi_offset 24, -136
	.cfi_offset 25, -128
	.cfi_offset 26, -120
	.cfi_offset 27, -112
	.cfi_offset 28, -104
	mov	x27, x2
	str	d8, [sp, 96]
	.cfi_offset 72, -96
	str	w1, [sp, 124]
.LEHB185:
	bl	_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv
.LEHE185:
	ldr	w1, [sp, 124]
	mov	x28, x0
	ldr	x5, [x21, 24]
	mov	x0, x27
	ldr	x4, [x21, 232]
	ldrh	w24, [x28]
	ldr	x23, [x28, 8]
	madd	x1, x1, x5, x4
	ldr	x4, [x21, 256]
	stp	xzr, xzr, [sp, 160]
	ldr	x3, [x21, 304]
	stp	xzr, xzr, [x19]
	add	x1, x4, x1
	str	xzr, [x19, 16]
	str	xzr, [sp, 176]
	ldr	x2, [x21, 312]
.LEHB186:
	blr	x3
	ldp	x1, x0, [x19, 8]
	str	s0, [sp, 140]
	fmov	s8, s0
	cmp	x1, x0
	beq	.L2240
	ldr	w7, [sp, 124]
	fmov	s2, s0
	fmov	s1, s0
	str	s0, [x1]
	str	w7, [x1, 4]
	add	x0, x1, 8
	str	x0, [x19, 8]
.L2241:
	ldr	x3, [x19]
	sub	x2, x0, x3
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L2242
	.p2align 3,,7
.L2245:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s0, [x3, x2]
	fcmpe	s0, s2
	bmi	.L2295
.L2243:
	ldp	x1, x0, [sp, 168]
	fneg	s1, s1
	str	w7, [x4, 4]
	str	s2, [x4]
	str	s1, [sp, 144]
	cmp	x1, x0
	beq	.L2246
.L2326:
	ldr	w8, [sp, 124]
	add	x7, x1, 8
	str	s1, [x1]
	mov	w9, w8
	str	w8, [x1, 4]
	str	x7, [sp, 168]
.L2247:
	ldr	x0, [sp, 160]
	sub	x3, x7, x0
	asr	x1, x3, 3
	sub	x2, x1, #2
	sub	x1, x1, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x1, 0
	ble	.L2248
	.p2align 3,,7
.L2251:
	lsl	x3, x2, 3
	lsl	x1, x1, 3
	add	x5, x0, x3
	add	x4, x0, x1
	ldr	s0, [x0, x3]
	fcmpe	s0, s1
	bmi	.L2296
.L2249:
	str	s1, [x4]
	str	w9, [x4, 4]
	strh	w24, [x23, w8, uxtw 1]
	cmp	x0, x7
	beq	.L2252
	.p2align 3,,7
.L2254:
	ldr	s0, [x0]
	ldr	w20, [x0, 4]
	fneg	s0, s0
	fcmpe	s0, s8
	bgt	.L2252
	add	x0, sp, 160
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldr	x3, [x21, 24]
	uxtw	x0, w20
	ldr	x2, [x21, 240]
	mov	x20, 1
	ldr	x1, [x21, 256]
	madd	x0, x0, x3, x2
	add	x26, x1, x0
	ldrh	w25, [x1, x0]
	cbnz	x25, .L2253
	b	.L2273
	.p2align 2,,3
.L2324:
	mov	x20, x0
.L2253:
	ldr	w1, [x26, x20, lsl 2]
	sbfiz	x0, x1, 1, 32
	ldrh	w2, [x23, x0]
	str	w1, [sp, 136]
	cmp	w2, w24
	beq	.L2255
	ldr	x5, [x21, 24]
	uxtw	x1, w1
	ldr	x4, [x21, 232]
	ldp	x3, x2, [x21, 304]
	strh	w24, [x23, x0]
	madd	x1, x1, x5, x4
	mov	x0, x27
	ldr	x4, [x21, 256]
	add	x1, x4, x1
	blr	x3
	ldp	x0, x1, [x19]
	str	s0, [sp, 140]
	sub	x0, x1, x0
	cmp	x22, x0, asr 3
	bhi	.L2256
	fcmpe	s0, s8
	bmi	.L2256
.L2255:
	add	x0, x20, 1
	cmp	x25, x20
	bne	.L2324
.L2273:
	ldp	x0, x1, [sp, 160]
	cmp	x1, x0
	bne	.L2254
.L2252:
	adrp	x0, .LC5
	strb	wzr, [sp, 152]
	ldr	x20, [x21, 112]
	ldr	x21, [x0, #:lo12:.LC5]
	add	x0, x20, 80
	str	x0, [sp, 144]
	cbz	x21, .L2274
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2325
.L2274:
	ldp	x0, x1, [x20, 16]
	mov	w2, 1
	strb	w2, [sp, 152]
	cmp	x0, x1
	beq	.L2275
	str	x28, [x0, -8]!
	str	x0, [x20, 16]
.L2276:
	ldr	x0, [sp, 144]
	cbz	x0, .L2279
	cbz	x21, .L2279
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L2279:
	ldr	x0, [sp, 160]
	cbz	x0, .L2239
	bl	_ZdlPv
.L2239:
	mov	x0, x19
	ldr	d8, [sp, 96]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 192
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2295:
	.cfi_restore_state
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s0, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L2245
	mov	x4, x5
	fneg	s1, s1
	ldp	x1, x0, [sp, 168]
	str	w7, [x4, 4]
	str	s2, [x4]
	str	s1, [sp, 144]
	cmp	x1, x0
	bne	.L2326
.L2246:
	add	x3, sp, 124
	add	x2, sp, 144
	add	x0, sp, 160
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x7, [sp, 168]
	ldr	w8, [sp, 124]
	ldr	w9, [x7, -4]
	ldr	s1, [x7, -8]
	b	.L2247
	.p2align 2,,3
.L2296:
	sub	x3, x2, #1
	ldr	w6, [x5, 4]
	str	s0, [x0, x1]
	mov	x1, x2
	add	x3, x3, x3, lsr 63
	str	w6, [x4, 4]
	asr	x2, x3, 1
	cmp	x1, 0
	bgt	.L2251
	mov	x4, x5
	b	.L2249
	.p2align 2,,3
.L2256:
	ldp	x2, x0, [sp, 168]
	fneg	s1, s0
	str	s1, [sp, 144]
	cmp	x2, x0
	beq	.L2259
	ldr	w8, [sp, 136]
	add	x0, x2, 8
	str	s1, [x2]
	str	w8, [x2, 4]
	str	x0, [sp, 168]
.L2260:
	ldr	x4, [sp, 160]
	sub	x3, x0, x4
	asr	x0, x3, 3
	sub	x2, x0, #2
	sub	x0, x0, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x0, 0
	ble	.L2261
	.p2align 3,,7
.L2264:
	lsl	x3, x2, 3
	lsl	x0, x0, 3
	add	x6, x4, x3
	add	x5, x4, x0
	ldr	s2, [x4, x3]
	fcmpe	s2, s1
	bmi	.L2297
.L2262:
	ldr	x0, [x19, 16]
	str	s1, [x5]
	str	w8, [x5, 4]
	cmp	x0, x1
	beq	.L2265
.L2327:
	ldr	s2, [sp, 140]
	add	x5, x1, 8
	ldr	w9, [sp, 136]
	str	w9, [x1, 4]
	str	s2, [x1]
	str	x5, [x19, 8]
.L2266:
	ldr	x1, [x19]
	sub	x3, x5, x1
	asr	x8, x3, 3
	sub	x0, x8, #2
	sub	x2, x8, #1
	add	x0, x0, x0, lsr 63
	asr	x0, x0, 1
	cmp	x2, 0
	ble	.L2267
	.p2align 3,,7
.L2270:
	lsl	x3, x0, 3
	lsl	x2, x2, 3
	add	x6, x1, x3
	add	x4, x1, x2
	ldr	s1, [x1, x3]
	fcmpe	s1, s2
	bmi	.L2298
.L2268:
	str	s2, [x4]
	str	w9, [x4, 4]
	cmp	x22, x8
	bcs	.L2271
	.p2align 3,,7
.L2272:
	mov	x0, x19
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x1, x5, [x19]
	sub	x0, x5, x1
	cmp	x22, x0, asr 3
	bcc	.L2272
.L2271:
	cmp	x1, x5
	beq	.L2255
	ldr	s8, [x1]
	b	.L2255
	.p2align 2,,3
.L2297:
	sub	x3, x2, #1
	ldr	w7, [x6, 4]
	str	s2, [x4, x0]
	mov	x0, x2
	add	x3, x3, x3, lsr 63
	str	w7, [x5, 4]
	asr	x2, x3, 1
	cmp	x0, 0
	bgt	.L2264
	mov	x5, x6
	ldr	x0, [x19, 16]
	str	s1, [x5]
	str	w8, [x5, 4]
	cmp	x0, x1
	bne	.L2327
.L2265:
	add	x3, sp, 136
	add	x2, sp, 140
	mov	x0, x19
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x5, [x19, 8]
	ldr	w9, [x5, -4]
	ldr	s2, [x5, -8]
	b	.L2266
	.p2align 2,,3
.L2298:
	sub	x3, x0, #1
	ldr	w7, [x6, 4]
	str	s1, [x1, x2]
	mov	x2, x0
	add	x3, x3, x3, lsr 63
	str	w7, [x4, 4]
	asr	x0, x3, 1
	cmp	x2, 0
	bgt	.L2270
	mov	x4, x6
	b	.L2268
	.p2align 2,,3
.L2259:
	mov	x1, x2
	add	x3, sp, 136
	add	x2, sp, 144
	add	x0, sp, 160
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x0, [sp, 168]
	ldr	x1, [x19, 8]
	ldr	w8, [x0, -4]
	ldr	s1, [x0, -8]
	b	.L2260
.L2261:
	sub	x0, x3, #8
	add	x5, x4, x0
	b	.L2262
.L2267:
	sub	x3, x3, #8
	add	x4, x1, x3
	b	.L2268
.L2240:
	add	x3, sp, 124
	add	x2, sp, 140
	mov	x0, x19
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE186:
	ldr	x0, [x19, 8]
	ldr	s1, [sp, 140]
	ldr	w7, [x0, -4]
	ldr	s2, [x0, -8]
	b	.L2241
.L2275:
	add	x22, x20, 16
	mov	x5, 1152921504606846975
	ldp	x4, x6, [x20, 48]
	ldp	x3, x23, [x22, 16]
	ldr	x1, [x20, 72]
	sub	x4, x4, x6
	sub	x1, x1, x23
	sub	x3, x3, x0
	asr	x0, x4, 3
	asr	x1, x1, 3
	sub	x1, x1, #1
	add	x0, x0, x1, lsl 6
	add	x0, x0, x3, asr 3
	cmp	x0, x5
	beq	.L2328
	ldr	x0, [x20]
	cmp	x23, x0
	beq	.L2329
.L2278:
	mov	x0, 512
.LEHB187:
	bl	_Znwm
	ldrb	w1, [sp, 152]
	str	x0, [x23, -8]
	ldr	x0, [x20, 40]
	sub	x2, x0, #8
	ldr	x0, [x0, -8]
	str	x0, [x22, 8]
	str	x2, [x22, 24]
	add	x2, x0, 512
	str	x2, [x22, 16]
	add	x2, x0, 504
	str	x2, [x20, 16]
	str	x28, [x0, 504]
	cbz	w1, .L2279
	b	.L2276
	.p2align 2,,3
.L2329:
	mov	x0, x20
	mov	x1, 1
	bl	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb
	ldr	x23, [x20, 40]
	b	.L2278
.L2242:
	sub	x0, x2, #8
	add	x4, x3, x0
	b	.L2243
.L2248:
	sub	x3, x3, #8
	add	x4, x0, x3
	b	.L2249
.L2328:
	adrp	x0, .LC25
	add	x0, x0, :lo12:.LC25
	bl	_ZSt20__throw_length_errorPKc
.LEHE187:
.L2325:
.LEHB188:
	bl	_ZSt20__throw_system_errori
.LEHE188:
.L2293:
	mov	x20, x0
.L2284:
	ldr	x0, [sp, 160]
	cbz	x0, .L2285
	bl	_ZdlPv
.L2285:
	ldr	x0, [x19]
	cbz	x0, .L2286
	bl	_ZdlPv
.L2286:
	mov	x0, x20
.LEHB189:
	bl	_Unwind_Resume
.LEHE189:
.L2294:
	ldrb	w1, [sp, 152]
	mov	x20, x0
	cbz	w1, .L2284
	add	x0, sp, 144
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L2284
	.cfi_endproc
.LFE12346:
	.section	.gcc_except_table
.LLSDA12346:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12346-.LLSDACSB12346
.LLSDACSB12346:
	.uleb128 .LEHB185-.LFB12346
	.uleb128 .LEHE185-.LEHB185
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB186-.LFB12346
	.uleb128 .LEHE186-.LEHB186
	.uleb128 .L2293-.LFB12346
	.uleb128 0
	.uleb128 .LEHB187-.LFB12346
	.uleb128 .LEHE187-.LEHB187
	.uleb128 .L2294-.LFB12346
	.uleb128 0
	.uleb128 .LEHB188-.LFB12346
	.uleb128 .LEHE188-.LEHB188
	.uleb128 .L2293-.LFB12346
	.uleb128 0
	.uleb128 .LEHB189-.LFB12346
	.uleb128 .LEHE189-.LEHB189
	.uleb128 0
	.uleb128 0
.LLSDACSE12346:
	.section	.text._ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE,"axG",@progbits,_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE,comdat
	.size	_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE, .-_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE
	.section	.text._ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB12468:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	ldp	x24, x23, [x0]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x20, x0
	stp	x21, x22, [sp, 32]
	stp	x25, x26, [sp, 64]
	sub	x0, x23, x24
	str	x27, [sp, 80]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	mov	x27, x2
	asr	x0, x0, 4
	mov	x2, 576460752303423487
	cmp	x0, x2
	beq	.L2348
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	adds	x1, x1, x0
	bcs	.L2341
	cbnz	x1, .L2335
	mov	x25, 16
	mov	x22, 0
	mov	x21, 0
.L2340:
	add	x2, x21, x26
	ldp	x0, x1, [x27]
	stp	x0, x1, [x2]
	cmp	x19, x24
	beq	.L2336
	mov	x4, x21
	mov	x3, x24
	.p2align 3,,7
.L2337:
	ldp	x6, x7, [x3], 16
	stp	x6, x7, [x4], 16
	cmp	x3, x19
	bne	.L2337
	add	x26, x26, 16
	add	x25, x21, x26
.L2336:
	cmp	x19, x23
	beq	.L2338
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L2338:
	cbz	x24, .L2339
	mov	x0, x24
	bl	_ZdlPv
.L2339:
	ldp	x23, x24, [sp, 48]
	ldr	x27, [sp, 80]
	stp	x21, x25, [x20]
	str	x22, [x20, 16]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2341:
	.cfi_restore_state
	mov	x22, 9223372036854775792
.L2334:
	mov	x0, x22
	bl	_Znwm
	mov	x21, x0
	add	x22, x0, x22
	add	x25, x0, 16
	b	.L2340
.L2335:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 4
	b	.L2334
.L2348:
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12468:
	.size	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE,"axG",@progbits,_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE
	.type	_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE, %function
_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE:
.LFB12285:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12285
	stp	x29, x30, [sp, -272]!
	.cfi_def_cfa_offset 272
	.cfi_offset 29, -272
	.cfi_offset 30, -264
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -256
	.cfi_offset 20, -248
	mov	x19, x0
	stp	xzr, xzr, [x8]
	str	xzr, [x8, 16]
	stp	x8, x2, [sp, 120]
	add	x0, x0, 16
	ldar	x0, [x0]
	cbz	x0, .L2349
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -200
	.cfi_offset 25, -208
	mov	x0, x1
	ldr	w25, [x19, 216]
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -216
	.cfi_offset 23, -224
	mov	x23, x1
	uxtw	x20, w25
	ldr	x1, [x19, 24]
	stp	x27, x28, [sp, 80]
	.cfi_offset 28, -184
	.cfi_offset 27, -192
	mov	x28, x3
	ldr	x4, [x19, 232]
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -232
	.cfi_offset 21, -240
	ldp	x3, x2, [x19, 304]
	madd	x1, x20, x1, x4
	ldr	x4, [x19, 256]
	str	d8, [sp, 96]
	.cfi_offset 72, -176
	add	x1, x4, x1
.LEHB190:
	blr	x3
	ldr	w0, [x19, 104]
	fmov	s8, s0
	cmp	w0, 0
	ble	.L2352
	sxtw	x27, w0
	sub	w0, w0, #1
	sub	x1, x27, #2
	add	x26, x19, 448
	sub	x0, x1, x0
	sub	x27, x27, #1
	str	x0, [sp, 136]
	add	x0, x19, 440
	str	x0, [sp, 112]
	.p2align 3,,7
.L2355:
	ldr	x0, [x19, 32]
	ldr	x1, [x19, 264]
	mul	x0, x27, x0
	ldr	x1, [x1, x20, lsl 3]
	add	x20, x1, x0
	ldrh	w22, [x1, x0]
.L2548:
	ldaxr	x0, [x26]
	add	x0, x0, 1
	stlxr	w1, x0, [x26]
	cbnz	w1, .L2548
	ldr	x1, [sp, 112]
	and	x0, x22, 65535
.L2549:
	ldaxr	x2, [x1]
	add	x2, x2, x0
	stlxr	w3, x2, [x1]
	cbnz	w3, .L2549
	cbz	w22, .L2353
	sub	w22, w22, #1
	add	x0, x20, 8
	add	x20, x20, 4
	mov	w24, 0
	add	x22, x0, x22, uxtw 2
	.p2align 3,,7
.L2360:
	ldr	w21, [x20]
	ldr	x0, [x19, 8]
	uxtw	x1, w21
	cmp	x1, x0
	bhi	.L2533
	ldr	x5, [x19, 24]
	mov	x0, x23
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	madd	x1, x1, x5, x4
	ldr	x4, [x19, 256]
	add	x1, x4, x1
	blr	x3
.LEHE190:
	fcmpe	s0, s8
	bmi	.L2459
.L2357:
	add	x20, x20, 4
	cmp	x20, x22
	bne	.L2360
	uxtw	x20, w25
	cbnz	w24, .L2355
	.p2align 3,,7
.L2353:
	ldr	x0, [sp, 136]
	sub	x27, x27, #1
	cmp	x0, x27
	beq	.L2352
	uxtw	x20, w25
	b	.L2355
.L2352:
	stp	xzr, xzr, [sp, 176]
	str	xzr, [sp, 192]
	add	x0, x19, 40
	ldar	x0, [x0]
	orr	x0, x28, x0
	cbz	x0, .L2534
	ldr	x20, [x19, 80]
	str	w25, [sp, 148]
	ldr	x1, [sp, 128]
	ldr	x0, [x19, 112]
	cmp	x20, x1
	csel	x20, x20, x1, cs
.LEHB191:
	bl	_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv
.LEHE191:
	ldr	w2, [sp, 148]
	mov	x4, x0
	ldr	x1, [x19, 24]
	str	x4, [sp, 112]
	ldr	x3, [x19, 256]
	ldrh	w24, [x0]
	mul	x2, x2, x1
	ldr	x22, [x0, 8]
	add	x1, x3, x2
	ldr	x0, [x19, 240]
	stp	xzr, xzr, [sp, 208]
	add	x0, x1, x0
	str	xzr, [sp, 224]
	stp	xzr, xzr, [sp, 240]
	str	xzr, [sp, 256]
	ldrb	w0, [x0, 2]
	tbnz	x0, 0, .L2535
	cbz	x28, .L2369
	ldr	x4, [x28]
	adrp	x0, _ZN7hnswlib17BaseFilterFunctorclEm
	add	x0, x0, :lo12:_ZN7hnswlib17BaseFilterFunctorclEm
	ldr	x4, [x4]
	cmp	x4, x0
	bne	.L2536
.L2369:
	ldr	x1, [x19, 232]
	mov	x0, x23
	ldr	x4, [x19, 304]
	add	x1, x2, x1
	ldr	x2, [x19, 312]
	add	x1, x3, x1
.LEHB192:
	blr	x4
	ldp	x1, x0, [sp, 216]
	str	s0, [sp, 156]
	fmov	s8, s0
	cmp	x1, x0
	beq	.L2537
	ldr	w7, [sp, 148]
	fmov	s2, s0
	fmov	s1, s0
	str	s0, [x1]
	str	w7, [x1, 4]
	add	x0, x1, 8
	str	x0, [sp, 216]
.L2381:
	ldr	x4, [sp, 208]
	sub	x2, x0, x4
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L2382
.L2385:
	lsl	x3, x1, 3
	lsl	x0, x0, 3
	add	x5, x4, x3
	add	x2, x4, x0
	ldr	s0, [x4, x3]
	fcmpe	s0, s2
	bmi	.L2461
.L2383:
	ldp	x1, x0, [sp, 248]
	fneg	s1, s1
	str	w7, [x2, 4]
	str	s2, [x2]
	str	s1, [sp, 160]
	cmp	x1, x0
	beq	.L2386
	ldr	w5, [sp, 148]
	add	x4, x1, 8
	str	s1, [x1]
	mov	w9, w5
	str	w5, [x1, 4]
	str	x4, [sp, 248]
.L2387:
	ldr	x0, [sp, 240]
	sub	x3, x4, x0
	asr	x1, x3, 3
	sub	x2, x1, #2
	sub	x1, x1, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x1, 0
	ble	.L2388
.L2391:
	lsl	x3, x2, 3
	lsl	x1, x1, 3
	add	x7, x0, x3
	add	x6, x0, x1
	ldr	s0, [x0, x3]
	fcmpe	s0, s1
	bmi	.L2462
.L2389:
	str	w9, [x6, 4]
	str	s1, [x6]
.L2379:
	strh	w24, [x22, w5, uxtw 1]
	cmp	x4, x0
	beq	.L2392
	.p2align 3,,7
.L2396:
	ldr	s0, [x0]
	ldr	w21, [x0, 4]
	fneg	s0, s0
	fcmpe	s0, s8
	bgt	.L2463
.L2393:
	add	x0, sp, 240
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldr	x3, [x19, 24]
	uxtw	x0, w21
	ldr	x2, [x19, 240]
	mov	x21, 1
	ldr	x1, [x19, 256]
	madd	x0, x0, x3, x2
	add	x26, x1, x0
	ldrh	w25, [x1, x0]
	cbz	x25, .L2418
	adrp	x0, _ZN7hnswlib17BaseFilterFunctorclEm
	add	x27, x0, :lo12:_ZN7hnswlib17BaseFilterFunctorclEm
	b	.L2395
	.p2align 2,,3
.L2538:
	fcmpe	s0, s8
	bmi	.L2398
.L2397:
	add	x0, x21, 1
	cmp	x25, x21
	beq	.L2418
.L2540:
	mov	x21, x0
.L2395:
	ldr	w1, [x26, x21, lsl 2]
	sbfiz	x0, x1, 1, 32
	ldrh	w2, [x22, x0]
	str	w1, [sp, 152]
	cmp	w2, w24
	beq	.L2397
	ldr	x5, [x19, 24]
	uxtw	x1, w1
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	strh	w24, [x22, x0]
	madd	x1, x1, x5, x4
	mov	x0, x23
	ldr	x4, [x19, 256]
	add	x1, x4, x1
	blr	x3
.LEHE192:
	ldp	x1, x0, [sp, 208]
	str	s0, [sp, 156]
	sub	x0, x0, x1
	cmp	x20, x0, asr 3
	bls	.L2538
.L2398:
	ldp	x1, x0, [sp, 248]
	fneg	s0, s0
	str	s0, [sp, 160]
	cmp	x1, x0
	beq	.L2401
	ldr	w7, [sp, 152]
	add	x0, x1, 8
	str	s0, [x1]
	mov	w8, w7
	str	w7, [x1, 4]
	str	x0, [sp, 248]
.L2402:
	ldr	x3, [sp, 240]
	sub	x2, x0, x3
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L2403
	.p2align 3,,7
.L2406:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s1, [x3, x2]
	fcmpe	s1, s0
	bmi	.L2464
.L2404:
	ldr	x2, [x19, 24]
	uxtw	x7, w7
	ldr	x1, [x19, 256]
	ldr	x0, [x19, 240]
	str	w8, [x4, 4]
	madd	x7, x7, x2, x1
	str	s0, [x4]
	add	x0, x7, x0
	ldrb	w0, [x0, 2]
	tbnz	x0, 0, .L2527
	cbz	x28, .L2409
	ldr	x0, [x28]
	ldr	x2, [x0]
	cmp	x2, x27
	bne	.L2539
.L2409:
	ldp	x1, x0, [sp, 216]
	cmp	x1, x0
	beq	.L2410
	ldr	s1, [sp, 156]
	add	x2, x1, 8
	ldr	w9, [sp, 152]
	str	w9, [x1, 4]
	str	s1, [x1]
	str	x2, [sp, 216]
.L2411:
	ldr	x0, [sp, 208]
	sub	x4, x2, x0
	asr	x8, x4, 3
	sub	x1, x8, #2
	sub	x3, x8, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x3, 0
	ble	.L2412
	.p2align 3,,7
.L2415:
	lsl	x4, x1, 3
	lsl	x3, x3, 3
	add	x6, x0, x4
	add	x5, x0, x3
	ldr	s0, [x0, x4]
	fcmpe	s0, s1
	bmi	.L2465
.L2413:
	str	w9, [x5, 4]
	str	s1, [x5]
.L2408:
	cmp	x8, x20
	bls	.L2416
	.p2align 3,,7
.L2417:
	add	x0, sp, 208
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x0, x2, [sp, 208]
	sub	x1, x2, x0
	cmp	x20, x1, asr 3
	bcc	.L2417
.L2416:
	cmp	x0, x2
	beq	.L2397
	ldr	s8, [x0]
	add	x0, x21, 1
	cmp	x25, x21
	bne	.L2540
.L2418:
	ldp	x0, x1, [sp, 240]
	cmp	x0, x1
	bne	.L2396
.L2392:
	adrp	x0, .LC5
	strb	wzr, [sp, 168]
	ldr	x20, [x19, 112]
	ldr	x23, [x0, #:lo12:.LC5]
	add	x0, x20, 80
	str	x0, [sp, 160]
	cbz	x23, .L2419
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2541
.L2419:
	ldp	x1, x0, [x20, 16]
	mov	w2, 1
	strb	w2, [sp, 168]
	cmp	x1, x0
	beq	.L2420
	ldr	x0, [sp, 112]
	str	x0, [x1, -8]!
	str	x1, [x20, 16]
.L2421:
	ldr	x0, [sp, 160]
	cbz	x0, .L2424
	cbz	x23, .L2424
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L2424:
	ldr	x0, [sp, 240]
	cbz	x0, .L2426
	bl	_ZdlPv
.L2426:
	ldr	x1, [sp, 208]
	str	xzr, [sp, 208]
	ldr	x0, [sp, 176]
	str	x1, [sp, 176]
	ldr	x1, [sp, 216]
	str	x1, [sp, 184]
	ldr	x1, [sp, 224]
	str	x1, [sp, 192]
	str	xzr, [sp, 216]
	str	xzr, [sp, 224]
	cbz	x0, .L2367
	bl	_ZdlPv
	ldr	x0, [sp, 208]
	cbz	x0, .L2367
	bl	_ZdlPv
.L2543:
	ldp	x0, x1, [sp, 176]
	ldr	x3, [sp, 128]
	sub	x2, x1, x0
	cmp	x3, x2, asr 3
	bcs	.L2531
	.p2align 3,,7
.L2542:
	add	x0, sp, 176
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
.L2367:
	ldp	x0, x1, [sp, 176]
	ldr	x3, [sp, 128]
	sub	x2, x1, x0
	cmp	x3, x2, asr 3
	bcc	.L2542
	cmp	x1, x0
	bne	.L2441
.L2544:
	cbz	x0, .L2526
	bl	_ZdlPv
.L2526:
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 80]
	.cfi_restore 28
	.cfi_restore 27
	ldr	d8, [sp, 96]
	.cfi_restore 72
.L2349:
	ldp	x19, x20, [sp, 16]
	ldr	x0, [sp, 120]
	ldp	x29, x30, [sp], 272
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2459:
	.cfi_def_cfa_offset 272
	.cfi_offset 19, -256
	.cfi_offset 20, -248
	.cfi_offset 21, -240
	.cfi_offset 22, -232
	.cfi_offset 23, -224
	.cfi_offset 24, -216
	.cfi_offset 25, -208
	.cfi_offset 26, -200
	.cfi_offset 27, -192
	.cfi_offset 28, -184
	.cfi_offset 29, -272
	.cfi_offset 30, -264
	.cfi_offset 72, -176
	fmov	s8, s0
	mov	w25, w21
	mov	w24, 1
	b	.L2357
.L2461:
	sub	x3, x1, #1
	ldr	w6, [x5, 4]
	str	s0, [x4, x0]
	mov	x0, x1
	add	x3, x3, x3, lsr 63
	str	w6, [x2, 4]
	asr	x1, x3, 1
	cmp	x0, 0
	bgt	.L2385
	mov	x2, x5
	b	.L2383
	.p2align 2,,3
.L2462:
	sub	x3, x2, #1
	ldr	w8, [x7, 4]
	str	s0, [x0, x1]
	mov	x1, x2
	add	x3, x3, x3, lsr 63
	str	w8, [x6, 4]
	asr	x2, x3, 1
	cmp	x1, 0
	bgt	.L2391
	mov	x6, x7
	b	.L2389
	.p2align 2,,3
.L2464:
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s1, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L2406
	mov	x4, x5
	b	.L2404
	.p2align 2,,3
.L2465:
	sub	x4, x1, #1
	ldr	w7, [x6, 4]
	str	s0, [x0, x3]
	mov	x3, x1
	add	x4, x4, x4, lsr 63
	str	w7, [x5, 4]
	asr	x1, x4, 1
	cmp	x3, 0
	bgt	.L2415
	mov	x5, x6
	b	.L2413
.L2534:
	ldr	x3, [x19, 80]
	mov	x2, x23
	ldr	x0, [sp, 128]
	mov	w1, w25
	add	x8, sp, 240
	mov	x5, 0
	cmp	x3, x0
	mov	x4, 0
	csel	x3, x3, x0, cs
	mov	x0, x19
.LEHB193:
	bl	_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE
	ldr	x1, [sp, 240]
	str	xzr, [sp, 240]
	ldr	x0, [sp, 176]
	str	x1, [sp, 176]
	ldr	x1, [sp, 248]
	str	x1, [sp, 184]
	ldr	x1, [sp, 256]
	str	x1, [sp, 192]
	str	xzr, [sp, 248]
	str	xzr, [sp, 256]
	cbz	x0, .L2367
	bl	_ZdlPv
	ldr	x0, [sp, 240]
	cbz	x0, .L2367
	bl	_ZdlPv
	b	.L2543
	.p2align 2,,3
.L2545:
	ldp	x2, x3, [sp, 240]
	stp	x2, x3, [x1], 16
	str	x1, [x4, 8]
.L2440:
	ldr	x0, [sp, 120]
	mov	x2, 0
	ldr	s0, [x1, -16]
	ldr	x3, [x1, -8]
	ldr	x0, [x0]
	sub	x4, x1, x0
	asr	x1, x4, 4
	sub	x1, x1, #1
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	add	x0, sp, 176
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x0, x1, [sp, 176]
.L2531:
	cmp	x1, x0
	beq	.L2544
.L2441:
	ldp	x3, x1, [x19, 248]
	ldr	w2, [x0, 4]
	ldr	x4, [x19, 24]
	ldr	s0, [x0]
	madd	x2, x2, x4, x1
	ldr	x4, [sp, 120]
	ldr	x2, [x2, x3]
	str	s0, [sp, 240]
	ldp	x1, x0, [x4, 8]
	str	x2, [sp, 248]
	cmp	x1, x0
	bne	.L2545
	ldr	x20, [sp, 120]
	add	x2, sp, 240
	mov	x0, x20
	bl	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE193:
	ldr	x1, [x20, 8]
	b	.L2440
.L2539:
	ldr	x1, [x19, 248]
	mov	x0, x28
	ldr	x1, [x7, x1]
.LEHB194:
	blr	x2
	tst	w0, 255
	bne	.L2409
	.p2align 3,,7
.L2527:
	ldp	x0, x2, [sp, 208]
	sub	x8, x2, x0
	asr	x8, x8, 3
	b	.L2408
	.p2align 2,,3
.L2401:
	add	x3, sp, 152
	add	x2, sp, 160
	add	x0, sp, 240
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x0, [sp, 248]
	ldr	w7, [sp, 152]
	ldr	w8, [x0, -4]
	ldr	s0, [x0, -8]
	b	.L2402
	.p2align 2,,3
.L2463:
	ldp	x1, x0, [sp, 208]
	sub	x0, x0, x1
	cmp	x20, x0, asr 3
	bne	.L2393
	b	.L2392
	.p2align 2,,3
.L2403:
	sub	x0, x2, #8
	add	x4, x3, x0
	b	.L2404
.L2410:
	add	x3, sp, 152
	add	x2, sp, 156
	add	x0, sp, 208
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE194:
	ldr	x2, [sp, 216]
	ldr	w9, [x2, -4]
	ldr	s1, [x2, -8]
	b	.L2411
.L2412:
	sub	x4, x4, #8
	add	x5, x0, x4
	b	.L2413
.L2420:
	add	x21, x20, 16
	mov	x5, 1152921504606846975
	ldp	x4, x6, [x20, 48]
	ldp	x3, x22, [x21, 16]
	ldr	x0, [x20, 72]
	sub	x4, x4, x6
	sub	x0, x0, x22
	sub	x1, x3, x1
	asr	x3, x4, 3
	asr	x0, x0, 3
	sub	x0, x0, #1
	add	x0, x3, x0, lsl 6
	add	x0, x0, x1, asr 3
	cmp	x0, x5
	beq	.L2546
	ldr	x0, [x20]
	cmp	x22, x0
	beq	.L2547
.L2423:
	mov	x0, 512
.LEHB195:
	bl	_Znwm
	ldrb	w1, [sp, 168]
	str	x0, [x22, -8]
	ldr	x0, [x20, 40]
	sub	x2, x0, #8
	ldr	x0, [x0, -8]
	str	x2, [x21, 24]
	str	x0, [x21, 8]
	add	x2, x0, 512
	str	x2, [x21, 16]
	add	x2, x0, 504
	str	x2, [x20, 16]
	ldr	x2, [sp, 112]
	str	x2, [x0, 504]
	cbz	w1, .L2424
	b	.L2421
	.p2align 2,,3
.L2547:
	mov	x0, x20
	mov	x1, 1
	bl	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb
.LEHE195:
	ldr	x22, [x20, 40]
	b	.L2423
.L2386:
	add	x3, sp, 148
	add	x2, sp, 160
	add	x0, sp, 240
.LEHB196:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x4, [sp, 248]
	ldr	w5, [sp, 148]
	ldr	w9, [x4, -4]
	ldr	s1, [x4, -8]
	b	.L2387
.L2537:
	add	x3, sp, 148
	add	x2, sp, 156
	add	x0, sp, 208
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x0, [sp, 216]
	ldr	s1, [sp, 156]
	ldr	w7, [x0, -4]
	ldr	s2, [x0, -8]
	b	.L2381
.L2536:
	ldr	x2, [x19, 248]
	mov	x0, x28
	ldr	x1, [x1, x2]
	blr	x4
	tst	w0, 255
	bne	.L2370
	ldp	x1, x0, [sp, 248]
	mvni	v0.2s, 0x80, lsl 16
	str	s0, [sp, 160]
	cmp	x1, x0
	beq	.L2372
	ldr	w5, [sp, 148]
	fmov	s1, s0
	str	s0, [x1]
	add	x4, x1, 8
	mov	w9, w5
	str	w5, [x1, 4]
	str	x4, [sp, 248]
.L2374:
	ldr	x0, [sp, 240]
	sub	x3, x4, x0
	asr	x1, x3, 3
	sub	x2, x1, #2
	sub	x1, x1, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x1, 0
	ble	.L2375
.L2378:
	lsl	x3, x2, 3
	lsl	x1, x1, 3
	add	x7, x0, x3
	add	x6, x0, x1
	ldr	s0, [x0, x3]
	fcmpe	s0, s1
	bmi	.L2460
.L2376:
	mov	w1, 2139095039
	fmov	s8, w1
	str	s1, [x6]
	str	w9, [x6, 4]
	b	.L2379
.L2460:
	sub	x3, x2, #1
	ldr	w8, [x7, 4]
	str	s0, [x0, x1]
	mov	x1, x2
	add	x3, x3, x3, lsr 63
	str	w8, [x6, 4]
	asr	x2, x3, 1
	cmp	x1, 0
	bgt	.L2378
	mov	x6, x7
	b	.L2376
.L2535:
	mvni	v0.2s, 0x80, lsl 16
	mov	x1, 0
	str	s0, [sp, 160]
.L2372:
	add	x3, sp, 148
	add	x2, sp, 160
	add	x0, sp, 240
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE196:
	ldr	x4, [sp, 248]
	ldr	w5, [sp, 148]
	ldr	w9, [x4, -4]
	ldr	s1, [x4, -8]
	b	.L2374
.L2375:
	sub	x3, x3, #8
	add	x6, x0, x3
	b	.L2376
.L2370:
	ldr	w2, [sp, 148]
	ldr	x0, [x19, 24]
	ldr	x3, [x19, 256]
	mul	x2, x2, x0
	b	.L2369
.L2388:
	sub	x3, x3, #8
	add	x6, x0, x3
	b	.L2389
.L2382:
	sub	x2, x2, #8
	add	x2, x4, x2
	b	.L2383
.L2546:
	adrp	x0, .LC25
	add	x0, x0, :lo12:.LC25
.LEHB197:
	bl	_ZSt20__throw_length_errorPKc
.LEHE197:
.L2541:
.LEHB198:
	bl	_ZSt20__throw_system_errori
.LEHE198:
.L2458:
	ldrb	w1, [sp, 168]
	mov	x19, x0
	cbz	w1, .L2429
	add	x0, sp, 160
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L2429:
	ldr	x0, [sp, 240]
	cbz	x0, .L2432
	bl	_ZdlPv
.L2432:
	ldr	x0, [sp, 208]
	cbz	x0, .L2434
	bl	_ZdlPv
.L2434:
	ldr	x0, [sp, 176]
	cbz	x0, .L2444
	bl	_ZdlPv
.L2444:
	ldr	x0, [sp, 120]
	ldr	x0, [x0]
	cbz	x0, .L2446
	bl	_ZdlPv
.L2446:
	mov	x0, x19
.LEHB199:
	bl	_Unwind_Resume
.LEHE199:
.L2456:
	mov	x19, x0
	b	.L2434
.L2454:
	mov	x19, x0
	b	.L2444
.L2457:
	mov	x19, x0
	b	.L2429
.L2533:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC31
	mov	x20, x0
	add	x1, x1, :lo12:.LC31
.LEHB200:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE200:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB201:
	bl	__cxa_throw
.LEHE201:
.L2455:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
	b	.L2444
	.cfi_endproc
.LFE12285:
	.section	.gcc_except_table
.LLSDA12285:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12285-.LLSDACSB12285
.LLSDACSB12285:
	.uleb128 .LEHB190-.LFB12285
	.uleb128 .LEHE190-.LEHB190
	.uleb128 .L2454-.LFB12285
	.uleb128 0
	.uleb128 .LEHB191-.LFB12285
	.uleb128 .LEHE191-.LEHB191
	.uleb128 .L2456-.LFB12285
	.uleb128 0
	.uleb128 .LEHB192-.LFB12285
	.uleb128 .LEHE192-.LEHB192
	.uleb128 .L2457-.LFB12285
	.uleb128 0
	.uleb128 .LEHB193-.LFB12285
	.uleb128 .LEHE193-.LEHB193
	.uleb128 .L2456-.LFB12285
	.uleb128 0
	.uleb128 .LEHB194-.LFB12285
	.uleb128 .LEHE194-.LEHB194
	.uleb128 .L2457-.LFB12285
	.uleb128 0
	.uleb128 .LEHB195-.LFB12285
	.uleb128 .LEHE195-.LEHB195
	.uleb128 .L2458-.LFB12285
	.uleb128 0
	.uleb128 .LEHB196-.LFB12285
	.uleb128 .LEHE196-.LEHB196
	.uleb128 .L2457-.LFB12285
	.uleb128 0
	.uleb128 .LEHB197-.LFB12285
	.uleb128 .LEHE197-.LEHB197
	.uleb128 .L2458-.LFB12285
	.uleb128 0
	.uleb128 .LEHB198-.LFB12285
	.uleb128 .LEHE198-.LEHB198
	.uleb128 .L2457-.LFB12285
	.uleb128 0
	.uleb128 .LEHB199-.LFB12285
	.uleb128 .LEHE199-.LEHB199
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB200-.LFB12285
	.uleb128 .LEHE200-.LEHB200
	.uleb128 .L2455-.LFB12285
	.uleb128 0
	.uleb128 .LEHB201-.LFB12285
	.uleb128 .LEHE201-.LEHB201
	.uleb128 .L2454-.LFB12285
	.uleb128 0
.LLSDACSE12285:
	.section	.text._ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE,"axG",@progbits,_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE,comdat
	.size	_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE, .-_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE
	.section	.text.startup
	.align	2
	.p2align 4,,11
	.type	_GLOBAL__sub_I__Z11flat_searchPfS_mmm, %function
_GLOBAL__sub_I__Z11flat_searchPfS_mmm:
.LFB12529:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	adrp	x19, .LANCHOR1
	add	x19, x19, :lo12:.LANCHOR1
	mov	x0, x19
	bl	_ZNSt8ios_base4InitC1Ev
	mov	x1, x19
	adrp	x2, __dso_handle
	ldr	x19, [sp, 16]
	add	x2, x2, :lo12:__dso_handle
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	adrp	x0, _ZNSt8ios_base4InitD1Ev
	add	x0, x0, :lo12:_ZNSt8ios_base4InitD1Ev
	b	__cxa_atexit
	.cfi_endproc
.LFE12529:
	.size	_GLOBAL__sub_I__Z11flat_searchPfS_mmm, .-_GLOBAL__sub_I__Z11flat_searchPfS_mmm
	.section	.init_array,"aw"
	.align	3
	.xword	_GLOBAL__sub_I__Z11flat_searchPfS_mmm
	.weak	_ZTSN7hnswlib14SpaceInterfaceIfEE
	.section	.rodata._ZTSN7hnswlib14SpaceInterfaceIfEE,"aG",@progbits,_ZTSN7hnswlib14SpaceInterfaceIfEE,comdat
	.align	3
	.type	_ZTSN7hnswlib14SpaceInterfaceIfEE, %object
	.size	_ZTSN7hnswlib14SpaceInterfaceIfEE, 30
_ZTSN7hnswlib14SpaceInterfaceIfEE:
	.string	"N7hnswlib14SpaceInterfaceIfEE"
	.weak	_ZTIN7hnswlib14SpaceInterfaceIfEE
	.section	.rodata._ZTIN7hnswlib14SpaceInterfaceIfEE,"aG",@progbits,_ZTIN7hnswlib14SpaceInterfaceIfEE,comdat
	.align	3
	.type	_ZTIN7hnswlib14SpaceInterfaceIfEE, %object
	.size	_ZTIN7hnswlib14SpaceInterfaceIfEE, 16
_ZTIN7hnswlib14SpaceInterfaceIfEE:
	.xword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.xword	_ZTSN7hnswlib14SpaceInterfaceIfEE
	.weak	_ZTSN7hnswlib17InnerProductSpaceE
	.section	.rodata._ZTSN7hnswlib17InnerProductSpaceE,"aG",@progbits,_ZTSN7hnswlib17InnerProductSpaceE,comdat
	.align	3
	.type	_ZTSN7hnswlib17InnerProductSpaceE, %object
	.size	_ZTSN7hnswlib17InnerProductSpaceE, 30
_ZTSN7hnswlib17InnerProductSpaceE:
	.string	"N7hnswlib17InnerProductSpaceE"
	.weak	_ZTIN7hnswlib17InnerProductSpaceE
	.section	.rodata._ZTIN7hnswlib17InnerProductSpaceE,"aG",@progbits,_ZTIN7hnswlib17InnerProductSpaceE,comdat
	.align	3
	.type	_ZTIN7hnswlib17InnerProductSpaceE, %object
	.size	_ZTIN7hnswlib17InnerProductSpaceE, 24
_ZTIN7hnswlib17InnerProductSpaceE:
	.xword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.xword	_ZTSN7hnswlib17InnerProductSpaceE
	.xword	_ZTIN7hnswlib14SpaceInterfaceIfEE
	.weak	_ZTSN7hnswlib18AlgorithmInterfaceIfEE
	.section	.rodata._ZTSN7hnswlib18AlgorithmInterfaceIfEE,"aG",@progbits,_ZTSN7hnswlib18AlgorithmInterfaceIfEE,comdat
	.align	3
	.type	_ZTSN7hnswlib18AlgorithmInterfaceIfEE, %object
	.size	_ZTSN7hnswlib18AlgorithmInterfaceIfEE, 34
_ZTSN7hnswlib18AlgorithmInterfaceIfEE:
	.string	"N7hnswlib18AlgorithmInterfaceIfEE"
	.weak	_ZTIN7hnswlib18AlgorithmInterfaceIfEE
	.section	.rodata._ZTIN7hnswlib18AlgorithmInterfaceIfEE,"aG",@progbits,_ZTIN7hnswlib18AlgorithmInterfaceIfEE,comdat
	.align	3
	.type	_ZTIN7hnswlib18AlgorithmInterfaceIfEE, %object
	.size	_ZTIN7hnswlib18AlgorithmInterfaceIfEE, 16
_ZTIN7hnswlib18AlgorithmInterfaceIfEE:
	.xword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.xword	_ZTSN7hnswlib18AlgorithmInterfaceIfEE
	.weak	_ZTSN7hnswlib15HierarchicalNSWIfEE
	.section	.rodata._ZTSN7hnswlib15HierarchicalNSWIfEE,"aG",@progbits,_ZTSN7hnswlib15HierarchicalNSWIfEE,comdat
	.align	3
	.type	_ZTSN7hnswlib15HierarchicalNSWIfEE, %object
	.size	_ZTSN7hnswlib15HierarchicalNSWIfEE, 31
_ZTSN7hnswlib15HierarchicalNSWIfEE:
	.string	"N7hnswlib15HierarchicalNSWIfEE"
	.weak	_ZTIN7hnswlib15HierarchicalNSWIfEE
	.section	.rodata._ZTIN7hnswlib15HierarchicalNSWIfEE,"aG",@progbits,_ZTIN7hnswlib15HierarchicalNSWIfEE,comdat
	.align	3
	.type	_ZTIN7hnswlib15HierarchicalNSWIfEE, %object
	.size	_ZTIN7hnswlib15HierarchicalNSWIfEE, 24
_ZTIN7hnswlib15HierarchicalNSWIfEE:
	.xword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.xword	_ZTSN7hnswlib15HierarchicalNSWIfEE
	.xword	_ZTIN7hnswlib18AlgorithmInterfaceIfEE
	.weak	_ZTVN7hnswlib17InnerProductSpaceE
	.section	.rodata._ZTVN7hnswlib17InnerProductSpaceE,"aG",@progbits,_ZTVN7hnswlib17InnerProductSpaceE,comdat
	.align	3
	.type	_ZTVN7hnswlib17InnerProductSpaceE, %object
	.size	_ZTVN7hnswlib17InnerProductSpaceE, 56
_ZTVN7hnswlib17InnerProductSpaceE:
	.xword	0
	.xword	_ZTIN7hnswlib17InnerProductSpaceE
	.xword	_ZN7hnswlib17InnerProductSpace13get_data_sizeEv
	.xword	_ZN7hnswlib17InnerProductSpace13get_dist_funcEv
	.xword	_ZN7hnswlib17InnerProductSpace19get_dist_func_paramEv
	.xword	_ZN7hnswlib17InnerProductSpaceD1Ev
	.xword	_ZN7hnswlib17InnerProductSpaceD0Ev
	.weak	_ZTVN7hnswlib15HierarchicalNSWIfEE
	.section	.rodata._ZTVN7hnswlib15HierarchicalNSWIfEE,"aG",@progbits,_ZTVN7hnswlib15HierarchicalNSWIfEE,comdat
	.align	3
	.type	_ZTVN7hnswlib15HierarchicalNSWIfEE, %object
	.size	_ZTVN7hnswlib15HierarchicalNSWIfEE, 64
_ZTVN7hnswlib15HierarchicalNSWIfEE:
	.xword	0
	.xword	_ZTIN7hnswlib15HierarchicalNSWIfEE
	.xword	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb
	.xword	_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE
	.xword	_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE
	.xword	_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.xword	_ZN7hnswlib15HierarchicalNSWIfED1Ev
	.xword	_ZN7hnswlib15HierarchicalNSWIfED0Ev
	.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
	.weakref	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t,pthread_mutex_unlock
	.weakref	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t,pthread_mutex_lock
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
.LC5:
	.xword	_ZL28__gthrw___pthread_key_createPjPFvPvE
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
.LC36:
	.string	"files/hnsw.index"
	.zero	1007
	.bss
	.align	3
	.set	.LANCHOR1,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.zero	1
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	3
	.type	DW.ref.__gxx_personality_v0, %object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.xword	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 10.3.1"
	.section	.note.GNU-stack,"",@progbits
