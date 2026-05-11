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
.LFB12684:
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
.LFE12684:
	.size	_ZN7hnswlib15HierarchicalNSWIfE21unmarkDeletedInternalEj.part.0, .-_ZN7hnswlib15HierarchicalNSWIfE21unmarkDeletedInternalEj.part.0
	.align	2
	.p2align 4,,11
	.type	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0, %function
_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0:
.LFB12735:
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
.LFE12735:
	.size	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0, .-_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	.align	2
	.p2align 4,,11
	.type	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0, %function
_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0:
.LFB12695:
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
.LFE12695:
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
.LFB12705:
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
.LFE12705:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
	.align	2
	.p2align 4,,11
	.type	_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0, %function
_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0:
.LFB12693:
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
.LFE12693:
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
.LFB10629:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10629
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
.LFE10629:
	.global	__gxx_personality_v0
	.section	.gcc_except_table._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,"aG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,comdat
.LLSDA10629:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10629-.LLSDACSB10629
.LLSDACSB10629:
	.uleb128 .LEHB0-.LFB10629
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L130-.LFB10629
	.uleb128 0
	.uleb128 .LEHB1-.LFB10629
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB10629
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L130-.LFB10629
	.uleb128 0
	.uleb128 .LEHB3-.LFB10629
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE10629:
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,comdat
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_, .-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
	.section	.text._ZNSt11unique_lockISt5mutexE6unlockEv,"axG",@progbits,_ZNSt11unique_lockISt5mutexE6unlockEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt11unique_lockISt5mutexE6unlockEv
	.type	_ZNSt11unique_lockISt5mutexE6unlockEv, %function
_ZNSt11unique_lockISt5mutexE6unlockEv:
.LFB10990:
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
.LFE10990:
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
	.section	.rodata._ZNSt6vectorIhSaIhEE17_M_default_appendEm.str1.8,"aMS",@progbits,1
	.align	3
.LC6:
	.string	"vector::_M_default_append"
	.section	.text._ZNSt6vectorIhSaIhEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIhSaIhEE17_M_default_appendEm,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorIhSaIhEE17_M_default_appendEm
	.type	_ZNSt6vectorIhSaIhEE17_M_default_appendEm, %function
_ZNSt6vectorIhSaIhEE17_M_default_appendEm:
.LFB11045:
	.cfi_startproc
	cbz	x1, .L205
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	ldp	x21, x3, [x0]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x20, x0
	ldr	x0, [x0, 16]
	mov	x19, x1
	mov	x1, 9223372036854775807
	sub	x21, x3, x21
	sub	x0, x0, x3
	sub	x2, x1, x21
	cmp	x19, x0
	bhi	.L187
	mov	x2, x19
	mov	x0, x3
	mov	w1, 0
	bl	memset
	add	x3, x0, x19
	str	x3, [x20, 8]
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
.L187:
	.cfi_restore_state
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -8
	.cfi_offset 23, -16
	cmp	x2, x19
	bcc	.L208
	cmp	x21, x19
	csel	x0, x21, x19, cs
	adds	x0, x21, x0
	mov	x23, x0
	bcs	.L197
	cmp	x0, 0
	blt	.L197
	bne	.L191
	mov	x2, x19
	mov	x22, 0
	mov	w1, 0
	add	x0, x22, x21
	bl	memset
	mov	x23, 0
	ldp	x24, x2, [x20]
	sub	x2, x2, x24
	cmp	x2, 0
	bgt	.L209
.L192:
	cbnz	x24, .L193
.L194:
	add	x21, x21, x19
	str	x22, [x20]
	add	x22, x22, x21
	str	x23, [x20, 16]
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	str	x22, [x20, 8]
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
.L205:
	ret
	.p2align 2,,3
.L197:
	.cfi_def_cfa_offset 64
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	.cfi_offset 23, -16
	.cfi_offset 24, -8
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x23, x1
.L191:
	mov	x0, x23
	bl	_Znwm
	mov	x22, x0
	mov	x2, x19
	add	x23, x0, x23
	mov	w1, 0
	add	x0, x22, x21
	bl	memset
	ldp	x24, x2, [x20]
	sub	x2, x2, x24
	cmp	x2, 0
	ble	.L192
.L209:
	mov	x1, x24
	mov	x0, x22
	bl	memmove
.L193:
	mov	x0, x24
	bl	_ZdlPv
	b	.L194
.L208:
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE11045:
	.size	_ZNSt6vectorIhSaIhEE17_M_default_appendEm, .-_ZNSt6vectorIhSaIhEE17_M_default_appendEm
	.section	.rodata._ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi.str1.8,"aMS",@progbits,1
	.align	3
.LC7:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi,"axG",@progbits,_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi
	.type	_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi, %function
_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi:
.LFB11051:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x19, x0
	mov	x20, x2
	ldr	x3, [x0]
	ldr	x0, [x0, 16]
	sub	x0, x0, x3
	cmp	x1, x0, asr 2
	bhi	.L237
	ldr	x4, [x19, 8]
	sub	x2, x4, x3
	asr	x2, x2, 2
	cmp	x1, x2
	bls	.L218
	ldr	w0, [x20]
	cmp	x3, x4
	beq	.L219
	.p2align 3,,7
.L220:
	str	w0, [x3], 4
	cmp	x4, x3
	bne	.L220
	ldr	w0, [x20]
.L219:
	sub	x1, x1, x2
	add	x1, x4, x1, lsl 2
	cmp	x4, x1
	beq	.L222
	.p2align 3,,7
.L221:
	str	w0, [x4], 4
	cmp	x1, x4
	bne	.L221
.L222:
	str	x1, [x19, 8]
.L210:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L218:
	.cfi_restore_state
	mov	x0, x3
	cbz	x1, .L223
	add	x0, x3, x1, lsl 2
	ldr	w1, [x20]
	cmp	x3, x0
	beq	.L223
	.p2align 3,,7
.L224:
	str	w1, [x3], 4
	cmp	x0, x3
	bne	.L224
.L223:
	cmp	x4, x0
	beq	.L210
	str	x0, [x19, 8]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L237:
	.cfi_restore_state
	str	x21, [sp, 32]
	.cfi_offset 21, -16
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bhi	.L238
	lsl	x21, x1, 2
	cbz	x1, .L225
	mov	x0, x21
	bl	_Znwm
	add	x2, x0, x21
	ldr	w3, [x20]
	cmp	x0, x2
	beq	.L214
	mov	x1, x0
	.p2align 3,,7
.L215:
	str	w3, [x1], 4
	cmp	x1, x2
	bne	.L215
.L214:
	ldr	x3, [x19]
.L213:
	stp	x0, x2, [x19]
	str	x2, [x19, 16]
	cbz	x3, .L236
	ldp	x19, x20, [sp, 16]
	mov	x0, x3
	ldr	x21, [sp, 32]
	.cfi_remember_state
	.cfi_restore 21
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	_ZdlPv
	.p2align 2,,3
.L236:
	.cfi_restore_state
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	.cfi_remember_state
	.cfi_restore 21
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L225:
	.cfi_restore_state
	mov	x0, 0
	mov	x2, 0
	b	.L213
.L238:
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE11051:
	.size	_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi, .-_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi
	.section	.text._ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev,"axG",@progbits,_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev
	.type	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev, %function
_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev:
.LFB11124:
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
	cbz	x19, .L240
	.p2align 3,,7
.L241:
	mov	x0, x19
	ldr	x19, [x19]
	bl	_ZdlPv
	cbnz	x19, .L241
.L240:
	ldp	x0, x2, [x20]
	mov	w1, 0
	lsl	x2, x2, 3
	bl	memset
	mov	x1, x20
	ldr	x0, [x1], 48
	stp	xzr, xzr, [x20, 16]
	cmp	x0, x1
	beq	.L239
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
.L239:
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
.LFE11124:
	.size	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev, .-_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev
	.weak	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED1Ev
	.set	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED1Ev,_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev
	.section	.text._ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev,"axG",@progbits,_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev
	.type	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev, %function
_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev:
.LFB11136:
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
	cbz	x19, .L249
	.p2align 3,,7
.L250:
	mov	x0, x19
	ldr	x19, [x19]
	bl	_ZdlPv
	cbnz	x19, .L250
.L249:
	ldp	x0, x2, [x20]
	mov	w1, 0
	lsl	x2, x2, 3
	bl	memset
	mov	x1, x20
	ldr	x0, [x1], 48
	stp	xzr, xzr, [x20, 16]
	cmp	x0, x1
	beq	.L248
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
.L248:
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
.LFE11136:
	.size	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev, .-_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev
	.weak	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	.set	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev,_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev
	.section	.text._ZN7hnswlib15HierarchicalNSWIfED2Ev,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfED2Ev
	.type	_ZN7hnswlib15HierarchicalNSWIfED2Ev, %function
_ZN7hnswlib15HierarchicalNSWIfED2Ev:
.LFB12464:
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
.L260:
	ldar	x0, [x20]
	uxtw	x1, w19
	add	w19, w19, 1
	cmp	x1, x0
	bcs	.L258
.L316:
	ldr	x0, [x22, 272]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	ble	.L260
	ldr	x0, [x22, 264]
	ldr	x0, [x0, x1, lsl 3]
	bl	free
	ldar	x0, [x20]
	uxtw	x1, w19
	add	w19, w19, 1
	cmp	x1, x0
	bcc	.L316
.L258:
	ldr	x0, [x22, 264]
	bl	free
	str	xzr, [x22, 264]
	stlr	xzr, [x20]
	ldr	x23, [x22, 112]
	str	xzr, [x22, 112]
	cbz	x23, .L261
	add	x20, x23, 48
	add	x19, x23, 16
	b	.L265
	.p2align 2,,3
.L315:
	str	x0, [x23, 16]
	cbnz	x21, .L317
.L265:
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
	cbz	x1, .L262
	ldr	x21, [x4]
	cmp	x4, x3
	bne	.L315
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
	cbz	x21, .L265
	.p2align 3,,7
.L317:
	ldr	x0, [x21, 8]
	cbz	x0, .L266
	bl	_ZdaPv
.L266:
	mov	x0, x21
	bl	_ZdlPv
	b	.L265
	.p2align 2,,3
.L262:
	ldr	x0, [x23]
	cbz	x0, .L268
	add	x19, x6, 8
	cmp	x21, x19
	bcs	.L269
	.p2align 3,,7
.L270:
	ldr	x0, [x21], 8
	bl	_ZdlPv
	cmp	x19, x21
	bhi	.L270
	ldr	x0, [x23]
.L269:
	bl	_ZdlPv
.L268:
	mov	x0, x23
	bl	_ZdlPv
.L261:
	add	x0, x22, 512
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	add	x0, x22, 368
	bl	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED1Ev
	ldr	x0, [x22, 272]
	cbz	x0, .L271
	bl	_ZdlPv
.L271:
	ldr	x0, [x22, 192]
	cbz	x0, .L272
	bl	_ZdlPv
.L272:
	ldr	x0, [x22, 120]
	cbz	x0, .L273
	bl	_ZdlPv
.L273:
	ldr	x22, [x22, 112]
	cbz	x22, .L257
	add	x20, x22, 48
	add	x19, x22, 16
	.p2align 3,,7
.L278:
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
	cbz	x0, .L275
	ldr	x21, [x3]
	cmp	x3, x2
	beq	.L276
	str	x6, [x22, 16]
	cbz	x21, .L278
.L318:
	ldr	x0, [x21, 8]
	cbz	x0, .L279
	bl	_ZdaPv
.L279:
	mov	x0, x21
	bl	_ZdlPv
	b	.L278
	.p2align 2,,3
.L276:
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
	cbz	x21, .L278
	b	.L318
	.p2align 2,,3
.L275:
	ldr	x0, [x22]
	cbz	x0, .L281
	add	x19, x5, 8
	cmp	x21, x19
	bcs	.L282
	.p2align 3,,7
.L283:
	ldr	x0, [x21], 8
	bl	_ZdlPv
	cmp	x19, x21
	bhi	.L283
	ldr	x0, [x22]
.L282:
	bl	_ZdlPv
.L281:
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
.L257:
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
.LFE12464:
	.size	_ZN7hnswlib15HierarchicalNSWIfED2Ev, .-_ZN7hnswlib15HierarchicalNSWIfED2Ev
	.weak	_ZN7hnswlib15HierarchicalNSWIfED1Ev
	.set	_ZN7hnswlib15HierarchicalNSWIfED1Ev,_ZN7hnswlib15HierarchicalNSWIfED2Ev
	.section	.text._ZN7hnswlib15HierarchicalNSWIfED0Ev,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfED0Ev
	.type	_ZN7hnswlib15HierarchicalNSWIfED0Ev, %function
_ZN7hnswlib15HierarchicalNSWIfED0Ev:
.LFB12466:
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
.LFE12466:
	.size	_ZN7hnswlib15HierarchicalNSWIfED0Ev, .-_ZN7hnswlib15HierarchicalNSWIfED0Ev
	.section	.text._ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv,"axG",@progbits,_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	.type	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv, %function
_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv:
.LFB11467:
	.cfi_startproc
	ldp	x1, x2, [x0]
	sub	x3, x2, x1
	sub	x9, x2, #8
	cmp	x3, 8
	bgt	.L343
	str	x9, [x0, 8]
	ret
	.p2align 2,,3
.L343:
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
	ble	.L323
	mov	x4, 0
	.p2align 3,,7
.L327:
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
	bmi	.L338
.L324:
	lsl	x2, x4, 3
	ldr	w6, [x7, 4]
	add	x5, x1, x2
	mov	x4, x3
	str	s0, [x1, x2]
	str	w6, [x5, 4]
	cmp	x3, x8
	blt	.L327
	lsl	x6, x3, 3
	cbz	x12, .L344
.L330:
	sub	x3, x3, #1
	asr	x4, x3, 1
	.p2align 3,,7
.L333:
	lsl	x5, x4, 3
	sub	x2, x4, #1
	add	x8, x1, x5
	add	x7, x1, x6
	add	x2, x2, x2, lsr 63
	ldr	s0, [x1, x5]
	asr	x2, x2, 1
	fcmpe	s2, s0
	bgt	.L339
.L328:
	str	w10, [x7, 4]
	str	s2, [x7]
.L346:
	str	x9, [x0, 8]
	ret
	.p2align 2,,3
.L339:
	ldr	w3, [x8, 4]
	str	s0, [x1, x6]
	lsl	x6, x4, 3
	str	w3, [x7, 4]
	cbz	x4, .L345
	mov	x4, x2
	b	.L333
	.p2align 2,,3
.L338:
	fmov	s0, s1
	mov	x7, x2
	mov	x3, x6
	b	.L324
	.p2align 2,,3
.L344:
	sub	x11, x11, #2
	add	x11, x11, x11, lsr 63
	cmp	x3, x11, asr 1
	beq	.L329
	sub	x4, x3, #1
	lsl	x6, x3, 3
	asr	x4, x4, 1
	b	.L333
	.p2align 2,,3
.L345:
	mov	x7, x8
	str	s2, [x7]
	str	w10, [x7, 4]
	b	.L346
	.p2align 2,,3
.L323:
	mov	x7, x1
	cbnz	x12, .L328
	cmp	x3, 2
	bhi	.L328
	mov	x3, 0
	.p2align 3,,7
.L329:
	lsl	x3, x3, 1
	add	x3, x3, 1
	lsl	x6, x3, 3
	add	x2, x1, x6
	ldr	s0, [x1, x6]
	ldr	w2, [x2, 4]
	str	w2, [x7, 4]
	str	s0, [x7]
	b	.L330
	.cfi_endproc
.LFE11467:
	.size	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv, .-_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji
	.type	_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji, %function
_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji:
.LFB11486:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11486
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
	cbz	x0, .L378
	adrp	x1, .LC5
	mov	x20, x8
	mov	w19, w2
	ldr	x22, [x1, #:lo12:.LC5]
	cbz	x22, .L349
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L379
.L349:
	mov	w0, 1
	strb	w0, [sp, 104]
	cbz	w19, .L380
	ldr	x0, [x21, 264]
	sub	w19, w19, #1
	ldr	x1, [x21, 32]
	sxtw	x19, w19
	ldr	x0, [x0, x23, lsl 3]
	madd	x19, x19, x1, x0
	ldrh	w21, [x19]
	stp	xzr, xzr, [x20]
	str	xzr, [x20, 16]
	cbz	w21, .L352
.L382:
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
	cbnz	w25, .L381
	ldr	x25, [sp, 64]
	.cfi_restore 25
.L347:
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
.L380:
	.cfi_restore_state
	ldr	x1, [x21, 24]
	ldr	x0, [x21, 240]
	ldr	x19, [x21, 256]
	madd	x23, x23, x1, x0
	add	x19, x19, x23
	ldrh	w21, [x19]
	stp	xzr, xzr, [x20]
	str	xzr, [x20, 16]
	cbnz	w21, .L382
.L352:
	stp	xzr, xzr, [x20]
	str	xzr, [x20, 16]
.L356:
	ldr	x0, [sp, 96]
	cbz	x0, .L347
	cbz	x22, .L347
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
.L378:
	.cfi_restore_state
	mov	w0, 1
	str	x25, [sp, 64]
	.cfi_offset 25, -48
.LEHB9:
	bl	_ZSt20__throw_system_errori
.L381:
	ldr	x25, [sp, 64]
	.cfi_restore 25
	b	.L356
.L379:
	str	x25, [sp, 64]
	.cfi_offset 25, -48
	bl	_ZSt20__throw_system_errori
.LEHE9:
.L357:
	ldrb	w1, [sp, 104]
	mov	x19, x0
	cbz	w1, .L355
	add	x0, sp, 96
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L355:
	mov	x0, x19
.LEHB10:
	bl	_Unwind_Resume
.LEHE10:
	.cfi_endproc
.LFE11486:
	.section	.gcc_except_table._ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji,"aG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji,comdat
.LLSDA11486:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11486-.LLSDACSB11486
.LLSDACSB11486:
	.uleb128 .LEHB8-.LFB11486
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L357-.LFB11486
	.uleb128 0
	.uleb128 .LEHB9-.LFB11486
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB11486
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE11486:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji, .-_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, %function
_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB10848:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10848
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
	cbz	x2, .L410
	mov	w1, 0
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE13:
.L385:
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
	bcs	.L390
	.p2align 3,,7
.L412:
	ldr	x0, [x20, 272]
	mov	w3, 0
	ldr	w0, [x0, x19, lsl 2]
	cmp	w0, 0
	ble	.L391
	ldr	x3, [x20, 32]
	mul	w3, w0, w3
.L391:
	add	x1, sp, 84
	add	x0, sp, 88
	mov	x2, 4
	str	w3, [sp, 84]
	bl	_ZNSo5writeEPKcl
	ldr	w2, [sp, 84]
	cbnz	w2, .L411
	add	x19, x19, 1
.L414:
	ldar	x0, [x21]
	cmp	x19, x0
	bcc	.L412
.L390:
	add	x0, sp, 96
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE14:
	cbz	x0, .L413
.L394:
	adrp	x1, _ZTVSt13basic_filebufIcSt11char_traitsIcEE+16
	add	x1, x1, :lo12:_ZTVSt13basic_filebufIcSt11char_traitsIcEE+16
	add	x0, sp, 96
	stp	x25, x1, [sp, 88]
	str	x24, [sp, 344]
.LEHB15:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE15:
.L396:
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
.L411:
	.cfi_restore_state
	ldr	x1, [x20, 264]
	uxtw	x2, w2
	add	x0, sp, 88
	ldr	x1, [x1, x19, lsl 3]
.LEHB16:
	bl	_ZNSo5writeEPKcl
.LEHE16:
	add	x19, x19, 1
	b	.L414
	.p2align 2,,3
.L410:
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
.LEHB17:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE17:
	b	.L385
	.p2align 2,,3
.L413:
	ldr	x0, [sp, 88]
	add	x1, sp, 88
	ldr	x0, [x0, -24]
	add	x0, x1, x0
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
.LEHB18:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE18:
	b	.L394
.L403:
	bl	__cxa_begin_catch
	bl	__cxa_end_catch
	b	.L396
.L399:
	mov	x19, x0
	add	x0, sp, 88
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	mov	x0, x19
.LEHB19:
	bl	_Unwind_Resume
.L402:
	mov	x19, x0
	add	x0, sp, 96
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
.L388:
	ldr	x0, [x22, -24]
	add	x1, sp, 88
	str	x22, [sp, 88]
	str	x26, [x1, x0]
.L389:
	add	x0, sp, 344
	str	x23, [sp, 344]
	bl	_ZNSt8ios_baseD2Ev
	mov	x0, x19
	bl	_Unwind_Resume
.LEHE19:
.L401:
	mov	x19, x0
	b	.L388
.L400:
	mov	x19, x0
	b	.L389
	.cfi_endproc
.LFE10848:
	.section	.gcc_except_table._ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"aG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align	2
.LLSDA10848:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10848-.LLSDATTD10848
.LLSDATTD10848:
	.byte	0x1
	.uleb128 .LLSDACSE10848-.LLSDACSB10848
.LLSDACSB10848:
	.uleb128 .LEHB11-.LFB10848
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L400-.LFB10848
	.uleb128 0
	.uleb128 .LEHB12-.LFB10848
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L401-.LFB10848
	.uleb128 0
	.uleb128 .LEHB13-.LFB10848
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L402-.LFB10848
	.uleb128 0
	.uleb128 .LEHB14-.LFB10848
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L399-.LFB10848
	.uleb128 0
	.uleb128 .LEHB15-.LFB10848
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L403-.LFB10848
	.uleb128 0x1
	.uleb128 .LEHB16-.LFB10848
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L399-.LFB10848
	.uleb128 0
	.uleb128 .LEHB17-.LFB10848
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L402-.LFB10848
	.uleb128 0
	.uleb128 .LEHB18-.LFB10848
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L399-.LFB10848
	.uleb128 0
	.uleb128 .LEHB19-.LFB10848
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE10848:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT10848:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.rodata._Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_.str1.8,"aMS",@progbits,1
	.align	3
.LC8:
	.string	"load data "
	.align	3
.LC9:
	.string	"\n"
	.align	3
.LC10:
	.string	"dimension: "
	.align	3
.LC11:
	.string	"  number:"
	.align	3
.LC12:
	.string	"  size_per_element:"
	.section	.text._Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,"axG",@progbits,_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,comdat
	.align	2
	.p2align 4,,11
	.weak	_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
	.type	_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_, %function
_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_:
.LFB10850:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10850
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
	cbz	x2, .L442
	mov	w1, 0
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.L421:
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
	bhi	.L422
	lsl	x0, x0, 2
	bl	_Znam
	ldr	x1, [x20]
	mov	x22, x0
	mov	x19, 0
	cbz	x1, .L426
	.p2align 3,,7
.L424:
	ldr	x2, [x21]
	add	x0, sp, 96
	lsl	x2, x2, 2
	madd	x1, x2, x19, x22
	bl	_ZNSi4readEPcl
	ldr	x0, [x20]
	add	x19, x19, 1
	cmp	x0, x19
	bhi	.L424
.L426:
	add	x0, sp, 112
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	cbz	x0, .L443
.L427:
	adrp	x19, _ZSt4cerr
	add	x19, x19, :lo12:_ZSt4cerr
	adrp	x1, .LC8
	mov	x0, x19
	add	x1, x1, :lo12:.LC8
	mov	x2, 10
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [x24]
	mov	x0, x19
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x24, .LC9
	add	x24, x24, :lo12:.LC9
	mov	x1, x24
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC10
	mov	x0, x19
	add	x1, x1, :lo12:.LC10
	mov	x2, 11
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x1, [x21]
	mov	x0, x19
	bl	_ZNSo9_M_insertImEERSoT_
	adrp	x1, .LC11
	mov	x19, x0
	add	x1, x1, :lo12:.LC11
	mov	x2, 9
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x1, [x20]
	mov	x0, x19
	bl	_ZNSo9_M_insertImEERSoT_
	adrp	x1, .LC12
	mov	x19, x0
	add	x1, x1, :lo12:.LC12
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
.L429:
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
.L442:
	.cfi_restore_state
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
.LEHB25:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	b	.L421
	.p2align 2,,3
.L443:
	ldr	x0, [sp, 96]
	add	x1, sp, 96
	ldr	x0, [x0, -24]
	add	x0, x1, x0
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE25:
	b	.L427
.L436:
	bl	__cxa_begin_catch
	bl	__cxa_end_catch
	b	.L429
.L435:
	mov	x19, x0
	add	x0, sp, 112
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
.L418:
	ldr	x0, [x23, -24]
	add	x1, sp, 96
	str	x23, [sp, 96]
	str	x28, [x1, x0]
	str	xzr, [sp, 104]
.L419:
	add	x0, sp, 360
	str	x25, [sp, 360]
	bl	_ZNSt8ios_baseD2Ev
	mov	x0, x19
.LEHB26:
	bl	_Unwind_Resume
.LEHE26:
.L434:
	mov	x19, x0
	b	.L418
.L422:
.LEHB27:
	bl	__cxa_throw_bad_array_new_length
.LEHE27:
.L433:
	mov	x19, x0
	b	.L419
.L432:
	mov	x19, x0
	add	x0, sp, 96
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	x0, x19
.LEHB28:
	bl	_Unwind_Resume
.LEHE28:
	.cfi_endproc
.LFE10850:
	.section	.gcc_except_table._Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,"aG",@progbits,_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,comdat
	.align	2
.LLSDA10850:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10850-.LLSDATTD10850
.LLSDATTD10850:
	.byte	0x1
	.uleb128 .LLSDACSE10850-.LLSDACSB10850
.LLSDACSB10850:
	.uleb128 .LEHB20-.LFB10850
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L433-.LFB10850
	.uleb128 0
	.uleb128 .LEHB21-.LFB10850
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L434-.LFB10850
	.uleb128 0
	.uleb128 .LEHB22-.LFB10850
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L435-.LFB10850
	.uleb128 0
	.uleb128 .LEHB23-.LFB10850
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L432-.LFB10850
	.uleb128 0
	.uleb128 .LEHB24-.LFB10850
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L436-.LFB10850
	.uleb128 0x1
	.uleb128 .LEHB25-.LFB10850
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L432-.LFB10850
	.uleb128 0
	.uleb128 .LEHB26-.LFB10850
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB10850
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L432-.LFB10850
	.uleb128 0
	.uleb128 .LEHB28-.LFB10850
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
.LLSDACSE10850:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT10850:
	.section	.text._Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,"axG",@progbits,_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,comdat
	.size	_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_, .-_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
	.section	.text._Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,"axG",@progbits,_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,comdat
	.align	2
	.p2align 4,,11
	.weak	_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
	.type	_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_, %function
_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_:
.LFB10849:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10849
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
	cbz	x2, .L471
	mov	w1, 0
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.L450:
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
	bhi	.L451
	lsl	x0, x0, 2
	bl	_Znam
	ldr	x1, [x20]
	mov	x22, x0
	mov	x19, 0
	cbz	x1, .L455
	.p2align 3,,7
.L453:
	ldr	x2, [x21]
	add	x0, sp, 96
	lsl	x2, x2, 2
	madd	x1, x2, x19, x22
	bl	_ZNSi4readEPcl
	ldr	x0, [x20]
	add	x19, x19, 1
	cmp	x0, x19
	bhi	.L453
.L455:
	add	x0, sp, 112
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	cbz	x0, .L472
.L456:
	adrp	x19, _ZSt4cerr
	add	x19, x19, :lo12:_ZSt4cerr
	adrp	x1, .LC8
	mov	x0, x19
	add	x1, x1, :lo12:.LC8
	mov	x2, 10
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [x24]
	mov	x0, x19
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x24, .LC9
	add	x24, x24, :lo12:.LC9
	mov	x1, x24
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC10
	mov	x0, x19
	add	x1, x1, :lo12:.LC10
	mov	x2, 11
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x1, [x21]
	mov	x0, x19
	bl	_ZNSo9_M_insertImEERSoT_
	adrp	x1, .LC11
	mov	x19, x0
	add	x1, x1, :lo12:.LC11
	mov	x2, 9
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x1, [x20]
	mov	x0, x19
	bl	_ZNSo9_M_insertImEERSoT_
	adrp	x1, .LC12
	mov	x19, x0
	add	x1, x1, :lo12:.LC12
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
.L458:
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
.L471:
	.cfi_restore_state
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
.LEHB34:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	b	.L450
	.p2align 2,,3
.L472:
	ldr	x0, [sp, 96]
	add	x1, sp, 96
	ldr	x0, [x0, -24]
	add	x0, x1, x0
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE34:
	b	.L456
.L465:
	bl	__cxa_begin_catch
	bl	__cxa_end_catch
	b	.L458
.L464:
	mov	x19, x0
	add	x0, sp, 112
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
.L447:
	ldr	x0, [x23, -24]
	add	x1, sp, 96
	str	x23, [sp, 96]
	str	x28, [x1, x0]
	str	xzr, [sp, 104]
.L448:
	add	x0, sp, 360
	str	x25, [sp, 360]
	bl	_ZNSt8ios_baseD2Ev
	mov	x0, x19
.LEHB35:
	bl	_Unwind_Resume
.LEHE35:
.L463:
	mov	x19, x0
	b	.L447
.L451:
.LEHB36:
	bl	__cxa_throw_bad_array_new_length
.LEHE36:
.L462:
	mov	x19, x0
	b	.L448
.L461:
	mov	x19, x0
	add	x0, sp, 96
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	x0, x19
.LEHB37:
	bl	_Unwind_Resume
.LEHE37:
	.cfi_endproc
.LFE10849:
	.section	.gcc_except_table._Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,"aG",@progbits,_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,comdat
	.align	2
.LLSDA10849:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10849-.LLSDATTD10849
.LLSDATTD10849:
	.byte	0x1
	.uleb128 .LLSDACSE10849-.LLSDACSB10849
.LLSDACSB10849:
	.uleb128 .LEHB29-.LFB10849
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L462-.LFB10849
	.uleb128 0
	.uleb128 .LEHB30-.LFB10849
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L463-.LFB10849
	.uleb128 0
	.uleb128 .LEHB31-.LFB10849
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L464-.LFB10849
	.uleb128 0
	.uleb128 .LEHB32-.LFB10849
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L461-.LFB10849
	.uleb128 0
	.uleb128 .LEHB33-.LFB10849
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L465-.LFB10849
	.uleb128 0x1
	.uleb128 .LEHB34-.LFB10849
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L461-.LFB10849
	.uleb128 0
	.uleb128 .LEHB35-.LFB10849
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB36-.LFB10849
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L461-.LFB10849
	.uleb128 0
	.uleb128 .LEHB37-.LFB10849
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
.LLSDACSE10849:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT10849:
	.section	.text._Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,"axG",@progbits,_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,comdat
	.size	_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_, .-_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
	.section	.text._ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb,"axG",@progbits,_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb
	.type	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb, %function
_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb:
.LFB11646:
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
	bls	.L474
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
	bls	.L476
	cmp	x1, x3
	beq	.L477
	mov	x0, x19
	bl	memmove
	b	.L477
	.p2align 2,,3
.L474:
	cmp	x0, x21
	add	x23, x0, 2
	csel	x0, x0, x21, cs
	mov	x1, 1152921504606846975
	add	x23, x23, x0
	cmp	x23, x1
	bhi	.L486
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
	beq	.L480
	sub	x2, x3, x1
	mov	x0, x19
	bl	memmove
.L480:
	ldr	x0, [x20]
	bl	_ZdlPv
	stp	x24, x23, [x20]
.L477:
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
.L476:
	.cfi_restore_state
	cmp	x1, x3
	beq	.L477
	add	x0, x22, 8
	sub	x0, x0, x2
	add	x0, x19, x0
	bl	memmove
	b	.L477
.L486:
	bl	_ZSt17__throw_bad_allocv
	.cfi_endproc
.LFE11646:
	.size	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb, .-_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb
	.section	.rodata._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.str1.8,"aMS",@progbits,1
	.align	3
.LC13:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB11656:
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
	beq	.L505
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	adds	x1, x1, x0
	bcs	.L498
	cbnz	x1, .L492
	mov	x25, 8
	mov	x22, 0
	mov	x21, 0
.L497:
	ldr	x0, [x27]
	str	x0, [x21, x26]
	cmp	x19, x24
	beq	.L493
	mov	x4, x21
	mov	x3, x24
	.p2align 3,,7
.L494:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L494
	add	x26, x26, 8
	add	x25, x21, x26
.L493:
	cmp	x19, x23
	beq	.L495
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L495:
	cbz	x24, .L496
	mov	x0, x24
	bl	_ZdlPv
.L496:
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
.L498:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L491:
	mov	x0, x22
	bl	_Znwm
	mov	x21, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L497
.L492:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L491
.L505:
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE11656:
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
	cbz	x2, .L506
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
	cbz	x25, .L527
	.p2align 3,,7
.L546:
	movi	v0.2s, #0
	mov	x5, 0
	.p2align 3,,7
.L509:
	ldr	s2, [x19, x5]
	ldr	s1, [x21, x5]
	add	x5, x5, 4
	fmadd	s0, s2, s1, s0
	cmp	x20, x5
	bne	.L509
	sub	x2, x1, x0
	fsub	s0, s8, s0
	cmp	x26, x2, asr 3
	bhi	.L545
.L510:
	ldr	s1, [x0]
	fcmpe	s1, s0
	bgt	.L533
.L513:
	add	x23, x23, 1
	add	x19, x19, x20
	cmp	x24, x23
	beq	.L544
.L547:
	ldp	x0, x1, [x22]
	cbnz	x25, .L546
.L527:
	sub	x2, x1, x0
	fmov	s0, 1.0e+0
	cmp	x26, x2, asr 3
	bls	.L510
	.p2align 3,,7
.L545:
	ldr	x2, [x22, 16]
	str	s0, [sp, 104]
	str	w23, [sp, 108]
	cmp	x2, x1
	beq	.L511
	ldr	x2, [sp, 104]
	str	x2, [x1], 8
	str	x1, [x22, 8]
.L512:
	ldr	x3, [x1, -8]
	sub	x2, x1, x0
	add	x23, x23, 1
	add	x19, x19, x20
	asr	x1, x2, 3
	mov	x2, 0
	sub	x1, x1, #1
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	cmp	x24, x23
	bne	.L547
.L544:
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
.L506:
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
.L533:
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
	beq	.L515
	ldr	x2, [sp, 104]
	str	x2, [x1], 8
	str	x1, [x22, 8]
.L516:
	ldr	x3, [x1, -8]
	sub	x2, x1, x0
	asr	x1, x2, 3
	mov	x2, 0
	sub	x1, x1, #1
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldp	x0, x1, [x22]
	sub	x2, x1, x0
	cmp	x2, 8
	bgt	.L548
.L517:
	sub	x1, x1, #8
	str	x1, [x22, 8]
	b	.L513
.L548:
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
	ble	.L528
	mov	x2, 0
	b	.L522
.L530:
	mov	w3, w4
.L521:
	lsl	x2, x2, 3
	add	x4, x0, x2
	str	s0, [x0, x2]
	str	w3, [x4, 4]
	cmp	x1, x6
	bge	.L518
.L531:
	mov	x2, x1
.L522:
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
	bmi	.L534
	ldr	w3, [x8, 4]
	bgt	.L529
	ldr	w4, [x7, 4]
	cmp	w4, w3
	bhi	.L530
.L529:
	fmov	s0, s1
	lsl	x2, x2, 3
	add	x4, x0, x2
	mov	x1, x5
	str	s0, [x0, x2]
	str	w3, [x4, 4]
	cmp	x1, x6
	blt	.L531
.L518:
	tbnz	x9, 0, .L523
.L550:
	sub	x9, x9, #2
	add	x9, x9, x9, lsr 63
	cmp	x1, x9, asr 1
	beq	.L549
.L523:
	mov	x3, x27
	mov	x2, 0
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldr	x1, [x22, 8]
	b	.L517
	.p2align 2,,3
.L534:
	ldr	w3, [x7, 4]
	b	.L521
.L511:
	add	x2, sp, 104
	mov	x0, x22
.LEHB38:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldp	x0, x1, [x22]
	b	.L512
.L515:
	add	x2, sp, 104
	mov	x0, x22
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE38:
	ldp	x0, x1, [x22]
	b	.L516
.L549:
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
	b	.L517
.L528:
	mov	x1, 0
	tbnz	x9, 0, .L523
	b	.L550
.L532:
	ldr	x1, [x22]
	mov	x19, x0
	cbz	x1, .L526
	mov	x0, x1
	bl	_ZdlPv
.L526:
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
	.uleb128 .L532-.LFB6074
	.uleb128 0
	.uleb128 .LEHB39-.LFB6074
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
.LLSDACSE6074:
	.text
	.size	_Z11flat_searchPfS_mmm, .-_Z11flat_searchPfS_mmm
	.section	.text._Z26sq_search_simd_rerank_v5_4PfPKhPKiS_RK11SQQuantizermmmm,"axG",@progbits,_Z26sq_search_simd_rerank_v5_4PfPKhPKiS_RK11SQQuantizermmmm,comdat
	.align	2
	.p2align 4,,11
	.weak	_Z26sq_search_simd_rerank_v5_4PfPKhPKiS_RK11SQQuantizermmmm
	.type	_Z26sq_search_simd_rerank_v5_4PfPKhPKiS_RK11SQQuantizermmmm, %function
_Z26sq_search_simd_rerank_v5_4PfPKhPKiS_RK11SQQuantizermmmm:
.LFB10381:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10381
	stp	x29, x30, [sp, -224]!
	.cfi_def_cfa_offset 224
	.cfi_offset 29, -224
	.cfi_offset 30, -216
	mov	x29, sp
	ldr	x9, [sp, 224]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -208
	.cfi_offset 20, -200
	mov	x20, x3
	cmp	x9, x7
	stp	x21, x22, [sp, 32]
	csel	x9, x9, x7, cs
	stp	x23, x24, [sp, 48]
	cmp	x9, x5
	.cfi_offset 21, -192
	.cfi_offset 22, -184
	.cfi_offset 23, -176
	.cfi_offset 24, -168
	mov	x22, x8
	stp	x25, x26, [sp, 64]
	mov	x21, x1
	.cfi_offset 25, -160
	.cfi_offset 26, -152
	mov	x26, x7
	stp	x27, x28, [sp, 80]
	mov	x25, x5
	.cfi_offset 27, -144
	.cfi_offset 28, -136
	mov	x27, x2
	str	x0, [sp, 120]
	mov	x23, x4
	stp	xzr, xzr, [sp, 168]
	mov	x19, x6
	csel	x24, x9, x5, ls
	str	xzr, [sp, 184]
	stp	d8, d9, [sp, 96]
	.cfi_offset 72, -128
	.cfi_offset 73, -120
	cbnz	x6, .L552
	ldr	s0, [x23]
	ldr	s8, [x23, 8]
	mov	x23, 0
	stp	xzr, xzr, [sp, 192]
	str	xzr, [sp, 208]
	fmul	s9, s8, s8
	fmul	s8, s8, s0
	cbz	x25, .L664
	.p2align 3,,7
.L575:
	ldr	x4, [sp, 168]
	cmp	x19, 15
	bls	.L612
	movi	v4.4s, 0
	sub	x3, x21, #16
	sub	x2, x4, #16
	mov	x0, 16
	mov	v6.16b, v4.16b
	mov	v5.16b, v4.16b
	mov	v3.16b, v4.16b
	b	.L558
	.p2align 2,,3
.L613:
	mov	x0, x1
.L558:
	ldr	q0, [x3, x0]
	add	x1, x0, 16
	ldr	q2, [x2, x0]
	dup	d1, v0.d[0]
	dup	d0, v0.d[1]
	dup	d7, v2.d[0]
	dup	d2, v2.d[1]
	umull	v1.8h, v1.8b, v7.8b
	umull	v0.8h, v0.8b, v2.8b
	dup	d7, v1.d[0]
	dup	d2, v0.d[0]
	dup	d1, v1.d[1]
	dup	d0, v0.d[1]
	uaddw	v3.4s, v3.4s, v7.4h
	uaddw	v6.4s, v6.4s, v2.4h
	uaddw	v5.4s, v5.4s, v1.4h
	uaddw	v4.4s, v4.4s, v0.4h
	cmp	x19, x1
	bcs	.L613
	add	v0.4s, v3.4s, v4.4s
	add	v0.4s, v0.4s, v6.4s
	add	v0.4s, v0.4s, v5.4s
.L557:
	addv	s0, v0.4s
	fmov	w1, s0
	cmp	x19, x0
	bls	.L559
	.p2align 3,,7
.L560:
	ldrb	w3, [x21, x0]
	ldrb	w2, [x4, x0]
	add	x0, x0, 1
	madd	w1, w3, w2, w1
	cmp	x19, x0
	bne	.L560
	fmov	s0, w1
.L559:
	ldr	s1, [x27, x23, lsl 2]
	scvtf	s0, s0
	ldp	x0, x1, [sp, 192]
	scvtf	s1, s1
	fmul	s1, s1, s8
	sub	x2, x1, x0
	fmadd	s0, s0, s9, s1
	fneg	s0, s0
	cmp	x24, x2, asr 3
	bhi	.L665
	ldr	s1, [x0]
	fcmpe	s0, s1
	bmi	.L633
.L564:
	add	x23, x23, 1
	add	x21, x21, x19
	cmp	x25, x23
	bne	.L575
	ldp	x0, x1, [sp, 192]
	stp	xzr, xzr, [x22]
	fmov	s8, 1.0e+0
	str	xzr, [x22, 16]
	cmp	x0, x1
	beq	.L577
	.p2align 3,,7
.L576:
	sub	x2, x1, x0
	ldr	w11, [x0, 4]
	cmp	x2, 8
	bgt	.L666
.L578:
	ldr	x0, [sp, 200]
	uxtw	x3, w11
	sub	x0, x0, #8
	str	x0, [sp, 200]
	ldr	x0, [sp, 120]
	mul	x3, x3, x19
	add	x3, x0, x3, lsl 2
	cmp	x19, 15
	bls	.L622
	movi	v1.4s, 0
	mov	x0, x3
	add	x1, x20, 48
	mov	x2, 16
	mov	v2.16b, v1.16b
	mov	v3.16b, v1.16b
	mov	v0.16b, v1.16b
	b	.L586
	.p2align 2,,3
.L623:
	mov	x2, x4
.L586:
	ldp	q17, q9, [x1, -48]
	add	x4, x2, 16
	ldr	q6, [x1, -16]
	ldp	q18, q16, [x0]
	ldp	q7, q5, [x0, 32]
	add	x0, x0, 64
	ldr	q4, [x1], 64
	fmla	v0.4s, v18.4s, v17.4s
	fmla	v3.4s, v16.4s, v9.4s
	fmla	v2.4s, v7.4s, v6.4s
	fmla	v1.4s, v5.4s, v4.4s
	cmp	x19, x4
	bcs	.L623
	fadd	v0.4s, v0.4s, v3.4s
	add	x0, x2, 4
	fadd	v2.4s, v2.4s, v1.4s
	fadd	v0.4s, v0.4s, v2.4s
	cmp	x19, x0
	bcs	.L588
	b	.L667
	.p2align 2,,3
.L625:
	mov	x0, x4
.L588:
	lsl	x1, x2, 2
	add	x4, x0, 4
	mov	x2, x0
	ldr	q2, [x3, x1]
	ldr	q1, [x20, x1]
	fmla	v0.4s, v2.4s, v1.4s
	cmp	x19, x4
	bcs	.L625
.L587:
	str	q0, [sp, 152]
	ldp	s0, s3, [sp, 152]
	ldp	s2, s1, [sp, 160]
	fadd	s0, s0, s3
	fadd	s0, s0, s2
	fadd	s0, s0, s1
	cmp	x19, x0
	bls	.L589
	.p2align 3,,7
.L590:
	ldr	s2, [x3, x0, lsl 2]
	ldr	s1, [x20, x0, lsl 2]
	add	x0, x0, 1
	fmadd	s0, s2, s1, s0
	cmp	x19, x0
	bne	.L590
.L589:
	ldp	x0, x1, [x22]
	fsub	s0, s8, s0
	sub	x2, x1, x0
	cmp	x26, x2, asr 3
	bhi	.L668
	ldr	s1, [x0]
	fcmpe	s0, s1
	bmi	.L636
.L594:
	ldp	x0, x1, [sp, 192]
	cmp	x0, x1
	bne	.L576
.L577:
	cbz	x1, .L554
	mov	x0, x1
	bl	_ZdlPv
.L554:
	ldr	x0, [sp, 168]
	cbz	x0, .L551
	bl	_ZdlPv
.L551:
	mov	x0, x22
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	d8, d9, [sp, 96]
	ldp	x29, x30, [sp], 224
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
.L668:
	.cfi_restore_state
	ldr	x2, [x22, 16]
	str	s0, [sp, 152]
	str	w11, [sp, 156]
	cmp	x1, x2
	beq	.L592
	ldr	x2, [sp, 152]
	str	x2, [x1], 8
	str	x1, [x22, 8]
.L593:
	ldr	x3, [x1, -8]
	sub	x2, x1, x0
	asr	x1, x2, 3
	mov	x2, 0
	sub	x1, x1, #1
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	b	.L594
	.p2align 2,,3
.L666:
	sub	x2, x1, #8
	ldr	w3, [x1, -8]
	sub	x2, x2, x0
	ldr	s0, [x0]
	ldr	w4, [x1, -4]
	asr	x9, x2, 3
	bfi	x28, x3, 0, 32
	sub	x7, x9, #1
	str	s0, [x1, -8]
	str	w11, [x1, -4]
	bfi	x28, x4, 32, 32
	add	x7, x7, x7, lsr 63
	asr	x7, x7, 1
	cmp	x2, 16
	ble	.L618
	mov	x2, 0
	b	.L583
	.p2align 2,,3
.L620:
	mov	w3, w4
.L582:
	lsl	x2, x2, 3
	add	x4, x0, x2
	str	s0, [x0, x2]
	str	w3, [x4, 4]
	cmp	x1, x7
	bge	.L579
.L621:
	mov	x2, x1
.L583:
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
	bmi	.L635
	ldr	w3, [x8, 4]
	bgt	.L619
	ldr	w4, [x6, 4]
	cmp	w4, w3
	bhi	.L620
.L619:
	fmov	s0, s1
	lsl	x2, x2, 3
	add	x4, x0, x2
	mov	x1, x5
	str	s0, [x0, x2]
	str	w3, [x4, 4]
	cmp	x1, x7
	blt	.L621
.L579:
	tbnz	x9, 0, .L584
	sub	x9, x9, #2
	add	x9, x9, x9, lsr 63
	cmp	x1, x9, asr 1
	bne	.L584
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
.L584:
	mov	x3, x28
	mov	x2, 0
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	b	.L578
	.p2align 2,,3
.L635:
	ldr	w3, [x6, 4]
	b	.L582
	.p2align 2,,3
.L665:
	ldr	x2, [sp, 208]
	str	s0, [sp, 152]
	str	w23, [sp, 156]
	cmp	x1, x2
	beq	.L562
	ldr	x2, [sp, 152]
	str	x2, [x1], 8
	str	x1, [sp, 200]
.L563:
	ldr	x3, [x1, -8]
	sub	x2, x1, x0
	asr	x1, x2, 3
	mov	x2, 0
	sub	x1, x1, #1
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	b	.L564
	.p2align 2,,3
.L633:
	ldr	x2, [sp, 208]
	str	s0, [sp, 152]
	str	w23, [sp, 156]
	cmp	x1, x2
	beq	.L566
	ldr	x2, [sp, 152]
	str	x2, [x1], 8
	str	x1, [sp, 200]
.L567:
	ldr	x3, [x1, -8]
	sub	x2, x1, x0
	asr	x1, x2, 3
	mov	x2, 0
	sub	x1, x1, #1
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldp	x0, x1, [sp, 192]
	sub	x2, x1, x0
	cmp	x2, 8
	bgt	.L669
.L568:
	sub	x1, x1, #8
	str	x1, [sp, 200]
	b	.L564
	.p2align 2,,3
.L636:
	ldr	x2, [x22, 16]
	str	s0, [sp, 152]
	str	w11, [sp, 156]
	cmp	x1, x2
	beq	.L596
	ldr	x2, [sp, 152]
	str	x2, [x1], 8
	str	x1, [x22, 8]
.L597:
	ldr	x3, [x1, -8]
	sub	x2, x1, x0
	asr	x1, x2, 3
	mov	x2, 0
	sub	x1, x1, #1
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldp	x0, x1, [x22]
	sub	x2, x1, x0
	cmp	x2, 8
	bgt	.L670
.L598:
	sub	x1, x1, #8
	str	x1, [x22, 8]
	b	.L594
	.p2align 2,,3
.L622:
	movi	v0.4s, 0
	mov	x0, 4
	mov	x2, 0
	cmp	x19, x0
	bcs	.L588
	.p2align 3,,7
.L667:
	mov	x0, x2
	b	.L587
	.p2align 2,,3
.L612:
	movi	v0.4s, 0
	mov	x0, 0
	b	.L557
.L669:
	sub	x3, x1, #8
	ldr	w4, [x1, -8]
	ldr	x7, [sp, 128]
	sub	x3, x3, x0
	ldr	w5, [x1, -4]
	asr	x9, x3, 3
	ldr	s0, [x0]
	sub	x2, x9, #1
	bfi	x7, x4, 0, 32
	mov	x4, x7
	ldr	w6, [x0, 4]
	add	x2, x2, x2, lsr 63
	str	s0, [x1, -8]
	bfi	x4, x5, 32, 32
	str	w6, [x1, -4]
	str	x4, [sp, 128]
	asr	x6, x2, 1
	cmp	x3, 16
	ble	.L614
	mov	x2, 0
	b	.L573
.L616:
	mov	w3, w4
.L572:
	lsl	x2, x2, 3
	add	x4, x0, x2
	str	s0, [x0, x2]
	str	w3, [x4, 4]
	cmp	x1, x6
	bge	.L569
.L617:
	mov	x2, x1
.L573:
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
	bmi	.L634
	ldr	w3, [x8, 4]
	bgt	.L615
	ldr	w4, [x7, 4]
	cmp	w4, w3
	bhi	.L616
.L615:
	fmov	s0, s1
	lsl	x2, x2, 3
	add	x4, x0, x2
	mov	x1, x5
	str	s0, [x0, x2]
	str	w3, [x4, 4]
	cmp	x1, x6
	blt	.L617
.L569:
	tbnz	x9, 0, .L574
.L673:
	sub	x9, x9, #2
	add	x9, x9, x9, lsr 63
	cmp	x1, x9, asr 1
	beq	.L671
.L574:
	ldr	x3, [sp, 128]
	mov	x2, 0
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldr	x1, [sp, 200]
	b	.L568
	.p2align 2,,3
.L634:
	ldr	w3, [x7, 4]
	b	.L572
.L670:
	sub	x3, x1, #8
	ldr	w4, [x1, -8]
	ldr	x7, [sp, 136]
	sub	x3, x3, x0
	ldr	w5, [x1, -4]
	asr	x9, x3, 3
	ldr	s0, [x0]
	sub	x2, x9, #1
	bfi	x7, x4, 0, 32
	mov	x4, x7
	ldr	w6, [x0, 4]
	add	x2, x2, x2, lsr 63
	str	s0, [x1, -8]
	bfi	x4, x5, 32, 32
	str	w6, [x1, -4]
	str	x4, [sp, 136]
	asr	x6, x2, 1
	cmp	x3, 16
	ble	.L626
	mov	x2, 0
	b	.L603
.L628:
	mov	w3, w4
.L602:
	lsl	x2, x2, 3
	add	x4, x0, x2
	str	s0, [x0, x2]
	str	w3, [x4, 4]
	cmp	x6, x1
	ble	.L599
.L629:
	mov	x2, x1
.L603:
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
	bmi	.L637
	ldr	w3, [x8, 4]
	bgt	.L627
	ldr	w4, [x7, 4]
	cmp	w4, w3
	bhi	.L628
.L627:
	fmov	s0, s1
	lsl	x2, x2, 3
	add	x4, x0, x2
	mov	x1, x5
	str	s0, [x0, x2]
	str	w3, [x4, 4]
	cmp	x6, x1
	bgt	.L629
.L599:
	tbnz	x9, 0, .L604
.L674:
	sub	x9, x9, #2
	add	x9, x9, x9, lsr 63
	cmp	x1, x9, asr 1
	beq	.L672
.L604:
	ldr	x3, [sp, 136]
	mov	x2, 0
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldr	x1, [x22, 8]
	b	.L598
	.p2align 2,,3
.L637:
	ldr	w3, [x7, 4]
	b	.L602
.L562:
	add	x2, sp, 152
	add	x0, sp, 192
.LEHB40:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE40:
	ldp	x0, x1, [sp, 192]
	b	.L563
.L592:
	add	x2, sp, 152
	mov	x0, x22
.LEHB41:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE41:
	ldp	x0, x1, [x22]
	b	.L593
.L552:
	mov	x1, x6
	add	x0, sp, 168
.LEHB42:
	bl	_ZNSt6vectorIhSaIhEE17_M_default_appendEm
.LEHE42:
	mov	x1, 0
	mov	w3, 255
	.p2align 3,,7
.L556:
	ldr	s0, [x20, x1, lsl 2]
	ldr	s2, [x23]
	ldr	s1, [x23, 12]
	ldr	x2, [sp, 168]
	fsub	s0, s0, s2
	fmul	s0, s0, s1
	fcvtas	w0, s0
	cmp	w0, 255
	csel	w0, w0, w3, le
	cmp	w0, 0
	csel	w0, w0, wzr, ge
	strb	w0, [x2, x1]
	add	x1, x1, 1
	cmp	x19, x1
	bne	.L556
	ldr	s0, [x23]
	ldr	s8, [x23, 8]
	mov	x23, 0
	stp	xzr, xzr, [sp, 192]
	str	xzr, [sp, 208]
	fmul	s9, s8, s8
	fmul	s8, s8, s0
	cbnz	x25, .L575
.L664:
	stp	xzr, xzr, [x22]
	str	xzr, [x22, 16]
	b	.L554
.L566:
	add	x2, sp, 152
	add	x0, sp, 192
.LEHB43:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE43:
	ldp	x0, x1, [sp, 192]
	b	.L567
.L596:
	add	x2, sp, 152
	mov	x0, x22
.LEHB44:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE44:
	ldp	x0, x1, [x22]
	b	.L597
.L618:
	mov	x1, 0
	b	.L579
.L671:
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
	ldr	x3, [sp, 128]
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldr	x1, [sp, 200]
	b	.L568
.L672:
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
	ldr	x3, [sp, 136]
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldr	x1, [x22, 8]
	b	.L598
.L614:
	mov	x1, 0
	tbnz	x9, 0, .L574
	b	.L673
.L626:
	mov	x1, 0
	tbnz	x9, 0, .L604
	b	.L674
.L630:
	mov	x19, x0
.L610:
	ldr	x0, [sp, 168]
	cbz	x0, .L611
	bl	_ZdlPv
.L611:
	mov	x0, x19
.LEHB45:
	bl	_Unwind_Resume
.LEHE45:
.L631:
	mov	x19, x0
.L608:
	ldr	x0, [sp, 192]
	cbz	x0, .L610
	bl	_ZdlPv
	b	.L610
.L632:
	ldr	x1, [x22]
	mov	x19, x0
	cbz	x1, .L608
	mov	x0, x1
	bl	_ZdlPv
	b	.L608
	.cfi_endproc
.LFE10381:
	.section	.gcc_except_table
.LLSDA10381:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10381-.LLSDACSB10381
.LLSDACSB10381:
	.uleb128 .LEHB40-.LFB10381
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L631-.LFB10381
	.uleb128 0
	.uleb128 .LEHB41-.LFB10381
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L632-.LFB10381
	.uleb128 0
	.uleb128 .LEHB42-.LFB10381
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L630-.LFB10381
	.uleb128 0
	.uleb128 .LEHB43-.LFB10381
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L631-.LFB10381
	.uleb128 0
	.uleb128 .LEHB44-.LFB10381
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L632-.LFB10381
	.uleb128 0
	.uleb128 .LEHB45-.LFB10381
	.uleb128 .LEHE45-.LEHB45
	.uleb128 0
	.uleb128 0
.LLSDACSE10381:
	.section	.text._Z26sq_search_simd_rerank_v5_4PfPKhPKiS_RK11SQQuantizermmmm,"axG",@progbits,_Z26sq_search_simd_rerank_v5_4PfPKhPKiS_RK11SQQuantizermmmm,comdat
	.size	_Z26sq_search_simd_rerank_v5_4PfPKhPKiS_RK11SQQuantizermmmm, .-_Z26sq_search_simd_rerank_v5_4PfPKhPKiS_RK11SQQuantizermmmm
	.section	.rodata.str1.8
	.align	3
.LC14:
	.string	"/anndata/"
	.align	3
.LC15:
	.string	"DEEP100K.query.fbin"
	.align	3
.LC16:
	.string	"DEEP100K.gt.query.100k.top100.bin"
	.align	3
.LC17:
	.string	"DEEP100K.base.100k.fbin"
	.align	3
.LC18:
	.string	"average recall: "
	.align	3
.LC19:
	.string	"average latency (us): "
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,11
	.global	main
	.type	main, %function
main:
.LFB10398:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10398
	sub	sp, sp, #416
	.cfi_def_cfa_offset 416
	adrp	x2, .LC14+9
	add	x3, sp, 320
	add	x2, x2, :lo12:.LC14+9
	add	x0, sp, 304
	adrp	x1, .LC14
	stp	x29, x30, [sp, 16]
	.cfi_offset 29, -400
	.cfi_offset 30, -392
	add	x29, sp, 16
	add	x1, x1, :lo12:.LC14
	stp	x19, x20, [sp, 32]
	stp	x21, x22, [sp, 48]
	stp	x23, x24, [sp, 64]
	stp	x25, x26, [sp, 80]
	stp	x27, x28, [sp, 96]
	stp	d8, d9, [sp, 112]
	.cfi_offset 19, -384
	.cfi_offset 20, -376
	.cfi_offset 21, -368
	.cfi_offset 22, -360
	.cfi_offset 23, -352
	.cfi_offset 24, -344
	.cfi_offset 25, -336
	.cfi_offset 26, -328
	.cfi_offset 27, -320
	.cfi_offset 28, -312
	.cfi_offset 72, -304
	.cfi_offset 73, -296
	stp	xzr, xzr, [sp, 176]
	stp	xzr, xzr, [sp, 192]
	str	x3, [sp, 304]
.LEHB46:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
.LEHE46:
	adrp	x1, .LC15
	add	x0, sp, 304
	add	x8, sp, 368
	add	x1, x1, :lo12:.LC15
.LEHB47:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
.LEHE47:
	add	x2, sp, 200
	add	x1, sp, 176
	add	x0, sp, 368
.LEHB48:
	bl	_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
.LEHE48:
	mov	x2, x0
	add	x1, sp, 384
	ldr	x0, [sp, 368]
	str	x2, [sp, 160]
	cmp	x0, x1
	beq	.L676
	bl	_ZdlPv
.L676:
	adrp	x1, .LC16
	add	x8, sp, 368
	add	x1, x1, :lo12:.LC16
	add	x0, sp, 304
.LEHB49:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
.LEHE49:
	add	x1, sp, 176
	add	x2, sp, 192
	add	x0, sp, 368
.LEHB50:
	bl	_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
.LEHE50:
	mov	x26, x0
	add	x1, sp, 384
	ldr	x0, [sp, 368]
	cmp	x0, x1
	beq	.L677
	bl	_ZdlPv
.L677:
	adrp	x1, .LC17
	add	x8, sp, 368
	add	x1, x1, :lo12:.LC17
	add	x0, sp, 304
.LEHB51:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
.LEHE51:
	add	x2, sp, 200
	add	x1, sp, 184
	add	x0, sp, 368
.LEHB52:
	bl	_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
.LEHE52:
	mov	x27, x0
	add	x1, sp, 384
	ldr	x0, [sp, 368]
	cmp	x0, x1
	beq	.L678
	bl	_ZdlPv
.L678:
	mov	x1, 2000
	mov	x0, 32000
	str	x1, [sp, 176]
.LEHB53:
	bl	_Znwm
.LEHE53:
	mov	x1, 32000
	add	x1, x0, x1
	str	x0, [sp, 168]
.L680:
	cmp	x1, x0
	beq	.L679
	add	x0, x0, 16
	str	wzr, [x0, -16]
	str	xzr, [x0, -8]
	b	.L680
.L679:
	ldr	x20, [sp, 184]
	mvni	v2.2s, 0x80, lsl 16
	ldr	x19, [sp, 200]
	mul	x1, x20, x19
	cbz	x1, .L750
	mov	x0, x27
	add	x3, x27, x1, lsl 2
	mov	w2, 2139095039
	fmov	s1, w2
	.p2align 3,,7
.L686:
	ldr	s0, [x0]
	fcmpe	s1, s0
	bgt	.L769
.L682:
	fcmpe	s2, s0
	bmi	.L770
.L684:
	add	x0, x0, 4
	cmp	x3, x0
	bne	.L686
.L681:
	fsub	s3, s2, s1
	mov	w0, 48332
	movk	w0, 0x2b8c, lsl 16
	fmov	s0, w0
	mov	x2, 4575657222473777152
	fcmpe	s3, s0
	bmi	.L689
	mov	w0, 1132396544
	fmov	s0, w0
	fdiv	s4, s3, s0
	fdiv	s0, s0, s3
	fmov	w3, s4
	fmov	w0, s0
	bfi	x2, x3, 0, 32
	bfi	x2, x0, 32, 32
.L689:
	str	x2, [sp, 216]
	stp	xzr, xzr, [sp, 256]
	stp	xzr, xzr, [sp, 272]
	stp	xzr, xzr, [sp, 288]
	stp	s1, s2, [sp, 208]
	cbnz	x1, .L690
.L692:
	add	x2, sp, 368
	mov	x1, x20
	add	x0, sp, 280
	str	wzr, [sp, 368]
.LEHB54:
	bl	_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi
	cbz	x20, .L693
	mov	x4, x19
	mov	x7, 0
	mov	x6, 0
	mov	w5, 255
	.p2align 3,,7
.L698:
	cbz	x19, .L751
	mov	x1, x7
	mov	w2, 0
	.p2align 3,,7
.L695:
	ldr	s0, [x27, x1, lsl 2]
	ldr	s2, [sp, 208]
	ldr	s1, [sp, 220]
	ldr	x3, [sp, 256]
	fsub	s0, s0, s2
	fmul	s0, s0, s1
	fcvtas	w0, s0
	cmp	w0, 255
	csel	w0, w0, w5, le
	cmp	w0, 0
	csel	w0, w0, wzr, ge
	strb	w0, [x3, x1]
	add	x1, x1, 1
	add	w2, w2, w0
	cmp	x4, x1
	bne	.L695
	ldr	x0, [sp, 280]
	add	x7, x7, x19
	add	x4, x4, x19
	str	w2, [x0, x6, lsl 2]
	add	x6, x6, 1
	cmp	x20, x6
	bne	.L698
.L693:
	ldr	x0, [sp, 176]
	cbz	x0, .L699
	ldr	x0, [sp, 168]
	mov	x24, 0
	mov	w21, 1
	stp	x0, x0, [sp, 136]
	.p2align 3,,7
.L729:
	mov	x1, 0
	add	x0, sp, 224
	bl	gettimeofday
	ldr	x6, [sp, 200]
	mov	x0, 1000
	str	x0, [sp]
	add	x8, sp, 336
	ldr	x0, [sp, 160]
	mul	x3, x6, x24
	ldr	x5, [sp, 184]
	add	x4, sp, 208
	ldr	x1, [sp, 256]
	add	x3, x0, x3, lsl 2
	ldr	x2, [sp, 280]
	mov	x0, x27
	mov	x7, 10
	bl	_Z26sq_search_simd_rerank_v5_4PfPKhPKiS_RK11SQQuantizermmmm
.LEHE54:
	mov	x1, 0
	add	x0, sp, 240
	bl	gettimeofday
	add	x23, sp, 376
	ldp	x0, x2, [sp, 240]
	mov	x3, 16960
	ldr	x1, [sp, 224]
	movk	x3, 0xf, lsl 16
	mov	x22, 0
	mov	x25, 0
	str	wzr, [sp, 376]
	msub	x1, x1, x3, x2
	stp	xzr, x23, [sp, 384]
	madd	x0, x0, x3, x1
	ldr	x2, [sp, 232]
	stp	x23, xzr, [sp, 400]
	sub	x0, x0, x2
	str	x0, [sp, 152]
	.p2align 3,,7
.L701:
	ldr	x0, [sp, 192]
	madd	x0, x24, x0, x22
	ldr	w20, [x26, x0, lsl 2]
	cbz	x25, .L753
	mov	x19, x25
	b	.L705
	.p2align 2,,3
.L808:
	mov	x19, x0
.L705:
	ldp	x0, x2, [x19, 16]
	ldr	w1, [x19, 32]
	cmp	w20, w1
	csel	x0, x0, x2, cc
	csel	w2, w21, wzr, cc
	cbnz	x0, .L808
	cbnz	w2, .L704
.L813:
	bls	.L709
.L748:
	mov	w25, 1
	cmp	x19, x23
	bne	.L818
.L710:
	mov	x0, 40
.LEHB55:
	bl	_Znwm
.LEHE55:
	mov	x1, x0
	mov	x2, x19
	mov	w0, w25
	mov	x3, x23
	str	w20, [x1, 32]
	bl	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
	ldr	x0, [sp, 408]
	ldr	x25, [sp, 384]
	add	x0, x0, 1
	str	x0, [sp, 408]
.L709:
	add	x22, x22, 1
	cmp	x22, 10
	bne	.L701
	ldp	x0, x6, [sp, 336]
	movi	v0.2s, #0
	add	x11, sp, 376
	mov	x12, 0
	cmp	x6, x0
	beq	.L703
	.p2align 3,,7
.L702:
	ldr	w5, [x0, 4]
	cbz	x25, .L712
	mov	x1, x25
	mov	x7, x11
	.p2align 3,,7
.L713:
	ldr	w2, [x1, 32]
	ldp	x4, x3, [x1, 16]
	cmp	w5, w2
	bls	.L757
	mov	x1, x3
	cbnz	x1, .L713
.L714:
	cmp	x7, x11
	beq	.L712
	ldr	w1, [x7, 32]
	cmp	w5, w1
	cinc	x12, x12, cs
.L712:
	sub	x1, x6, x0
	cmp	x1, 8
	bgt	.L819
.L717:
	sub	x6, x6, #8
	str	x6, [sp, 344]
	cmp	x0, x6
	bne	.L702
	ucvtf	s0, x12
	fmov	s1, 1.0e+1
	fdiv	s0, s0, s1
.L703:
	ldr	x1, [sp, 136]
	ldr	x2, [sp, 152]
	str	x2, [x1, 8]
	str	s0, [x1]
	cbz	x25, .L727
.L724:
	ldr	x0, [x25, 24]
	bl	_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0
	mov	x0, x25
	ldr	x25, [x25, 16]
	bl	_ZdlPv
	cbnz	x25, .L724
	ldr	x0, [sp, 336]
.L727:
	cbz	x0, .L726
	bl	_ZdlPv
.L726:
	ldr	x1, [sp, 136]
	add	x24, x24, 1
	ldr	x0, [sp, 176]
	add	x1, x1, 16
	str	x1, [sp, 136]
	cmp	x0, x24
	bhi	.L729
	cbz	x0, .L699
	movi	v8.2s, #0
	ldr	x1, [sp, 168]
	fmov	s9, s8
	add	x0, x1, x0, lsl 4
	.p2align 3,,7
.L730:
	ldr	x2, [sp, 144]
	add	x2, x2, 16
	ldr	x1, [x2, -8]
	ldr	s1, [x2, -16]
	scvtf	s0, x1
	str	x2, [sp, 144]
	fadd	s9, s9, s1
	fadd	s8, s8, s0
	cmp	x0, x2
	bne	.L730
.L697:
	adrp	x20, _ZSt4cout
	add	x20, x20, :lo12:_ZSt4cout
	adrp	x1, .LC18
	mov	x0, x20
	add	x1, x1, :lo12:.LC18
.LEHB56:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	x1, [sp, 176]
	ucvtf	s0, x1
	fdiv	s0, s9, s0
	fcvt	d0, s0
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x19, .LC9
	add	x19, x19, :lo12:.LC9
	mov	x1, x19
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x1, .LC19
	mov	x0, x20
	add	x1, x1, :lo12:.LC19
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	x1, [sp, 176]
	ucvtf	s0, x1
	fdiv	s0, s8, s0
	fcvt	d0, s0
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	x1, x19
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	x0, [sp, 280]
	cbz	x0, .L731
	bl	_ZdlPv
.L731:
	ldr	x0, [sp, 256]
	cbz	x0, .L732
	bl	_ZdlPv
.L732:
	ldr	x0, [sp, 168]
	bl	_ZdlPv
	ldr	x0, [sp, 304]
	add	x1, sp, 320
	cmp	x0, x1
	beq	.L782
	bl	_ZdlPv
.L782:
	mov	w0, 0
	ldp	x29, x30, [sp, 16]
	ldp	x19, x20, [sp, 32]
	ldp	x21, x22, [sp, 48]
	ldp	x23, x24, [sp, 64]
	ldp	x25, x26, [sp, 80]
	ldp	x27, x28, [sp, 96]
	ldp	d8, d9, [sp, 112]
	add	sp, sp, 416
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
	.cfi_restore 72
	.cfi_restore 73
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L753:
	.cfi_restore_state
	mov	x19, x23
.L704:
	ldr	x0, [sp, 392]
	cmp	x0, x19
	beq	.L748
	mov	x0, x19
	bl	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	ldr	w0, [x0, 32]
	cmp	w20, w0
	b	.L813
	.p2align 2,,3
.L757:
	mov	x7, x1
	mov	x1, x4
	cbnz	x1, .L713
	b	.L714
	.p2align 2,,3
.L819:
	sub	x1, x6, #8
	ldr	w2, [x6, -8]
	sub	x1, x1, x0
	ldr	s0, [x0]
	ldr	w3, [x6, -4]
	asr	x9, x1, 3
	bfi	x28, x2, 0, 32
	sub	x7, x9, #1
	str	s0, [x6, -8]
	str	w5, [x6, -4]
	bfi	x28, x3, 32, 32
	add	x7, x7, x7, lsr 63
	asr	x7, x7, 1
	cmp	x1, 16
	ble	.L758
	mov	x2, 0
	b	.L722
	.p2align 2,,3
.L760:
	mov	w3, w4
	.p2align 3,,7
.L721:
	lsl	x2, x2, 3
	add	x4, x0, x2
	str	s0, [x0, x2]
	str	w3, [x4, 4]
	cmp	x1, x7
	bge	.L718
.L761:
	mov	x2, x1
.L722:
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
	bmi	.L772
	ldr	w3, [x8, 4]
	bgt	.L759
	ldr	w4, [x6, 4]
	cmp	w3, w4
	bcc	.L760
.L759:
	fmov	s0, s1
	lsl	x2, x2, 3
	add	x4, x0, x2
	mov	x1, x5
	str	s0, [x0, x2]
	str	w3, [x4, 4]
	cmp	x1, x7
	blt	.L761
.L718:
	tbnz	x9, 0, .L723
	sub	x9, x9, #2
	add	x9, x9, x9, lsr 63
	cmp	x1, x9, asr 1
	bne	.L723
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
.L723:
	mov	x3, x28
	mov	x2, 0
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldp	x0, x6, [sp, 336]
	ldr	x25, [sp, 384]
	b	.L717
	.p2align 2,,3
.L772:
	ldr	w3, [x6, 4]
	b	.L721
	.p2align 2,,3
.L818:
	ldr	w0, [x19, 32]
	cmp	w20, w0
	cset	w25, cc
	b	.L710
.L770:
	fmov	s2, s0
	b	.L684
.L769:
	fmov	s1, s0
	b	.L682
.L758:
	mov	x1, 0
	b	.L718
.L751:
	ldr	x0, [sp, 280]
	mov	w2, 0
	add	x7, x7, x19
	add	x4, x4, x19
	str	w2, [x0, x6, lsl 2]
	add	x6, x6, 1
	cmp	x20, x6
	bne	.L698
	b	.L693
.L690:
	add	x0, sp, 256
	bl	_ZNSt6vectorIhSaIhEE17_M_default_appendEm
.LEHE56:
	b	.L692
.L750:
	mov	w0, 2139095039
	fmov	s1, w0
	b	.L681
.L699:
	movi	v8.2s, #0
	fmov	s9, s8
	b	.L697
.L767:
	mov	x19, x0
	ldr	x0, [sp, 384]
	bl	_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0
	ldr	x0, [sp, 336]
	cbz	x0, .L743
	bl	_ZdlPv
.L743:
	ldr	x0, [sp, 280]
	cbz	x0, .L744
	bl	_ZdlPv
.L744:
	ldr	x0, [sp, 256]
	cbz	x0, .L745
	bl	_ZdlPv
.L745:
	ldr	x0, [sp, 168]
	bl	_ZdlPv
.L736:
	ldr	x0, [sp, 304]
	add	x1, sp, 320
	cmp	x0, x1
	beq	.L747
	bl	_ZdlPv
.L747:
	mov	x0, x19
.LEHB57:
	bl	_Unwind_Resume
.LEHE57:
.L765:
	ldr	x2, [sp, 368]
	add	x1, sp, 384
	mov	x19, x0
	cmp	x2, x1
	beq	.L736
	mov	x0, x2
	bl	_ZdlPv
	b	.L736
.L764:
.L817:
	ldr	x1, [sp, 368]
	add	x2, sp, 384
	mov	x19, x0
	cmp	x1, x2
	beq	.L736
	mov	x0, x1
	bl	_ZdlPv
	b	.L736
.L763:
	b	.L817
.L762:
	mov	x19, x0
	b	.L736
.L766:
	mov	x19, x0
	b	.L743
.L768:
	mov	x19, x0
	b	.L736
	.cfi_endproc
.LFE10398:
	.section	.gcc_except_table
.LLSDA10398:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10398-.LLSDACSB10398
.LLSDACSB10398:
	.uleb128 .LEHB46-.LFB10398
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB47-.LFB10398
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L762-.LFB10398
	.uleb128 0
	.uleb128 .LEHB48-.LFB10398
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L763-.LFB10398
	.uleb128 0
	.uleb128 .LEHB49-.LFB10398
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L762-.LFB10398
	.uleb128 0
	.uleb128 .LEHB50-.LFB10398
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L764-.LFB10398
	.uleb128 0
	.uleb128 .LEHB51-.LFB10398
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L762-.LFB10398
	.uleb128 0
	.uleb128 .LEHB52-.LFB10398
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L765-.LFB10398
	.uleb128 0
	.uleb128 .LEHB53-.LFB10398
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L768-.LFB10398
	.uleb128 0
	.uleb128 .LEHB54-.LFB10398
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L766-.LFB10398
	.uleb128 0
	.uleb128 .LEHB55-.LFB10398
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L767-.LFB10398
	.uleb128 0
	.uleb128 .LEHB56-.LFB10398
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L766-.LFB10398
	.uleb128 0
	.uleb128 .LEHB57-.LFB10398
	.uleb128 .LEHE57-.LEHB57
	.uleb128 0
	.uleb128 0
.LLSDACSE10398:
	.section	.text.startup
	.size	main, .-main
	.section	.text._ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj,"axG",@progbits,_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj
	.type	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj, %function
_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj:
.LFB11760:
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
	cbz	x6, .L831
	ldr	x2, [x6]
	mov	x5, x6
	ldr	w0, [x2, 8]
.L823:
	cmp	w8, w0
	beq	.L822
	ldr	x0, [x2]
	mov	x5, x2
	mov	x2, x0
	cbz	x0, .L831
	ldr	w0, [x0, 8]
	uxtw	x7, w0
	udiv	x4, x7, x1
	msub	x4, x4, x1, x7
	cmp	x3, x4
	beq	.L823
.L831:
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
.L822:
	.cfi_restore_state
	ldr	x0, [x5]
	ldr	x2, [x0]
	cmp	x6, x5
	beq	.L838
	cbz	x2, .L825
	ldr	w6, [x2, 8]
	udiv	x4, x6, x1
	msub	x1, x4, x1, x6
	cmp	x3, x1
	beq	.L825
	str	x5, [x9, x1, lsl 3]
	ldr	x2, [x0]
.L825:
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
.L838:
	.cfi_restore_state
	cbz	x2, .L832
	ldr	w6, [x2, 8]
	udiv	x4, x6, x1
	msub	x1, x4, x1, x6
	cmp	x3, x1
	beq	.L825
	str	x5, [x9, x1, lsl 3]
	ldr	x1, [x9, x3, lsl 3]
.L824:
	add	x4, x19, 16
	cmp	x1, x4
	beq	.L839
.L826:
	str	xzr, [x9, x3, lsl 3]
	ldr	x2, [x0]
	b	.L825
	.p2align 2,,3
.L832:
	mov	x1, x5
	b	.L824
	.p2align 2,,3
.L839:
	str	x2, [x19, 16]
	b	.L826
	.cfi_endproc
.LFE11760:
	.size	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj, .-_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj
	.section	.text._ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_,"axG",@progbits,_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_
	.type	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_, %function
_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_:
.LFB11761:
	.cfi_startproc
	ldr	x5, [x2]
	ldr	x2, [x0, 8]
	ldr	x8, [x0]
	udiv	x4, x5, x2
	msub	x4, x4, x2, x5
	ldr	x7, [x8, x4, lsl 3]
	cbz	x7, .L849
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
.L843:
	cmp	x5, x1
	beq	.L842
	ldr	x0, [x3]
	mov	x6, x3
	mov	x3, x0
	cbz	x0, .L851
	ldr	x1, [x0, 8]
	udiv	x0, x1, x2
	msub	x0, x0, x2, x1
	cmp	x4, x0
	beq	.L843
.L851:
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
.L842:
	.cfi_restore_state
	ldr	x0, [x6]
	ldr	x1, [x0]
	cmp	x7, x6
	beq	.L861
	cbz	x1, .L845
	ldr	x5, [x1, 8]
	udiv	x3, x5, x2
	msub	x2, x3, x2, x5
	cmp	x4, x2
	beq	.L845
	str	x6, [x8, x2, lsl 3]
	ldr	x1, [x0]
.L845:
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
.L861:
	.cfi_restore_state
	cbz	x1, .L852
	ldr	x5, [x1, 8]
	udiv	x3, x5, x2
	msub	x2, x3, x2, x5
	cmp	x4, x2
	beq	.L845
	str	x6, [x8, x2, lsl 3]
	ldr	x2, [x8, x4, lsl 3]
.L844:
	add	x3, x19, 16
	cmp	x2, x3
	beq	.L862
.L846:
	str	xzr, [x8, x4, lsl 3]
	ldr	x1, [x0]
	b	.L845
	.p2align 2,,3
.L852:
	mov	x2, x6
	b	.L844
	.p2align 2,,3
.L849:
	.cfi_def_cfa_offset 0
	.cfi_restore 19
	.cfi_restore 29
	.cfi_restore 30
	mov	x0, 0
	ret
	.p2align 2,,3
.L862:
	.cfi_def_cfa_offset 32
	.cfi_offset 19, -16
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	str	x1, [x19, 16]
	b	.L846
	.cfi_endproc
.LFE11761:
	.size	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_, .-_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB11934:
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
	beq	.L881
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	mov	x28, x3
	adds	x1, x1, x0
	bcs	.L874
	cbnz	x1, .L868
	mov	x25, 8
	mov	x22, 0
	mov	x20, 0
.L873:
	ldr	s0, [x27]
	add	x0, x20, x26
	ldr	w1, [x28]
	str	s0, [x20, x26]
	str	w1, [x0, 4]
	cmp	x19, x24
	beq	.L869
	mov	x4, x20
	mov	x3, x24
	.p2align 3,,7
.L870:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L870
	add	x26, x26, 8
	add	x25, x20, x26
.L869:
	cmp	x19, x23
	beq	.L871
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L871:
	cbz	x24, .L872
	mov	x0, x24
	bl	_ZdlPv
.L872:
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
.L874:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L867:
	mov	x0, x22
	bl	_Znwm
	mov	x20, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L873
.L868:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L867
.L881:
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE11934:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_
	.type	_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_, %function
_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_:
.LFB11950:
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
	beq	.L897
	cmp	x3, 0
	mov	x20, x0
	csinc	x0, x3, xzr, ne
	mov	x27, x2
	sub	x26, x24, x25
	adds	x3, x3, x0
	bcs	.L894
	cbnz	x3, .L887
	mov	x19, 0
	mov	x23, 0
.L893:
	ldr	w0, [x27]
	add	x22, x26, 4
	sub	x21, x21, x24
	add	x22, x23, x22
	str	w0, [x23, x26]
	add	x27, x22, x21
	cmp	x26, 0
	bgt	.L898
	cmp	x21, 0
	bgt	.L889
	cbnz	x25, .L892
.L890:
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
.L898:
	.cfi_restore_state
	mov	x2, x26
	mov	x1, x25
	mov	x0, x23
	bl	memmove
	cmp	x21, 0
	bgt	.L889
.L892:
	mov	x0, x25
	bl	_ZdlPv
	b	.L890
	.p2align 2,,3
.L889:
	mov	x2, x21
	mov	x1, x24
	mov	x0, x22
	bl	memcpy
	cbz	x25, .L890
	b	.L892
	.p2align 2,,3
.L894:
	mov	x19, 9223372036854775804
.L886:
	mov	x0, x19
	bl	_Znwm
	mov	x23, x0
	add	x19, x0, x19
	b	.L893
	.p2align 2,,3
.L887:
	cmp	x3, x1
	csel	x3, x3, x1, ls
	lsl	x19, x3, 2
	b	.L886
.L897:
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE11950:
	.size	_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_, .-_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_
	.section	.text._ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_,"axG",@progbits,_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_
	.type	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_, %function
_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_:
.LFB11976:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11976
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
	beq	.L921
	mov	x20, x2
	mov	x0, 1152921504606846975
	cmp	x1, x0
	bhi	.L922
	lsl	x22, x1, 3
	mov	x0, x22
.LEHB58:
	bl	_Znwm
	mov	x20, x0
	mov	x2, x22
	mov	w1, 0
	bl	memset
	add	x8, x21, 48
.L901:
	ldr	x4, [x21, 16]
	str	xzr, [x21, 16]
	cbz	x4, .L903
	add	x7, x21, 16
	mov	x6, 0
	.p2align 3,,7
.L904:
	ldr	x5, [x4, 8]
	mov	x3, x4
	ldr	x4, [x4]
	udiv	x2, x5, x19
	msub	x2, x2, x19, x5
	ldr	x1, [x20, x2, lsl 3]
	cbz	x1, .L923
	ldr	x0, [x1]
	str	x0, [x3]
	ldr	x0, [x20, x2, lsl 3]
	str	x3, [x0]
	cbnz	x4, .L904
.L903:
	ldr	x0, [x21]
	cmp	x0, x8
	beq	.L907
	bl	_ZdlPv
.L907:
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
.L923:
	.cfi_restore_state
	ldr	x0, [x21, 16]
	str	x0, [x3]
	str	x3, [x21, 16]
	str	x7, [x20, x2, lsl 3]
	ldr	x0, [x3]
	cbz	x0, .L910
	str	x3, [x20, x6, lsl 3]
	mov	x6, x2
	cbnz	x4, .L904
	b	.L903
	.p2align 2,,3
.L910:
	mov	x6, x2
	cbnz	x4, .L904
	b	.L903
	.p2align 2,,3
.L921:
	mov	x20, x0
	str	xzr, [x20, 48]!
	mov	x8, x20
	b	.L901
.L922:
	bl	_ZSt17__throw_bad_allocv
.LEHE58:
.L911:
	bl	__cxa_begin_catch
	ldr	x0, [x20]
	str	x0, [x21, 40]
.LEHB59:
	bl	__cxa_rethrow
.LEHE59:
.L912:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB60:
	bl	_Unwind_Resume
.LEHE60:
	.cfi_endproc
.LFE11976:
	.section	.gcc_except_table
	.align	2
.LLSDA11976:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11976-.LLSDATTD11976
.LLSDATTD11976:
	.byte	0x1
	.uleb128 .LLSDACSE11976-.LLSDACSB11976
.LLSDACSB11976:
	.uleb128 .LEHB58-.LFB11976
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L911-.LFB11976
	.uleb128 0x1
	.uleb128 .LEHB59-.LFB11976
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L912-.LFB11976
	.uleb128 0
	.uleb128 .LEHB60-.LFB11976
	.uleb128 .LEHE60-.LEHB60
	.uleb128 0
	.uleb128 0
.LLSDACSE11976:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT11976:
	.section	.text._ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_,"axG",@progbits,_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_,comdat
	.size	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_, .-_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_
	.section	.text._ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_,"axG",@progbits,_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_
	.type	_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_, %function
_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_:
.LFB11474:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11474
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
	cbz	x6, .L925
	ldr	x3, [x6]
	ldr	x0, [x3, 8]
	cmp	x21, x0
	beq	.L926
.L949:
	ldr	x4, [x3]
	cbz	x4, .L925
	ldr	x0, [x4, 8]
	mov	x6, x3
	udiv	x3, x0, x5
	msub	x3, x3, x5, x0
	cmp	x2, x3
	bne	.L925
	mov	x3, x4
	cmp	x21, x0
	bne	.L949
.L926:
	ldr	x1, [x6]
	add	x0, x1, 16
	cbz	x1, .L925
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
.L925:
	.cfi_restore_state
	mov	x0, 24
.LEHB61:
	bl	_Znwm
.LEHE61:
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
.LEHB62:
	bl	_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm
	tst	w0, 255
	bne	.L950
	ldr	x0, [x19]
	add	x2, x0, x22
	ldr	x1, [x0, x22]
	cbz	x1, .L930
.L951:
	ldr	x1, [x1]
	str	x1, [x20]
	ldr	x0, [x0, x22]
	str	x20, [x0]
.L931:
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
.L950:
	.cfi_restore_state
	add	x2, sp, 72
	mov	x0, x19
	bl	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_
.LEHE62:
	ldr	x0, [x19, 8]
	udiv	x22, x21, x0
	msub	x22, x22, x0, x21
	ldr	x0, [x19]
	lsl	x22, x22, 3
	add	x2, x0, x22
	ldr	x1, [x0, x22]
	cbnz	x1, .L951
.L930:
	ldr	x1, [x19, 16]
	str	x1, [x20]
	str	x20, [x19, 16]
	cbz	x1, .L932
	ldr	x4, [x1, 8]
	ldr	x3, [x19, 8]
	udiv	x1, x4, x3
	msub	x1, x1, x3, x4
	str	x20, [x0, x1, lsl 3]
.L932:
	add	x0, x19, 16
	str	x0, [x2]
	b	.L931
.L935:
	mov	x19, x0
	mov	x0, x20
	bl	_ZdlPv
	mov	x0, x19
.LEHB63:
	bl	_Unwind_Resume
.LEHE63:
	.cfi_endproc
.LFE11474:
	.section	.gcc_except_table
.LLSDA11474:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11474-.LLSDACSB11474
.LLSDACSB11474:
	.uleb128 .LEHB61-.LFB11474
	.uleb128 .LEHE61-.LEHB61
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB62-.LFB11474
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L935-.LFB11474
	.uleb128 0
	.uleb128 .LEHB63-.LFB11474
	.uleb128 .LEHE63-.LEHB63
	.uleb128 0
	.uleb128 0
.LLSDACSE11474:
	.section	.text._ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_,"axG",@progbits,_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_,comdat
	.size	_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_, .-_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB12013:
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
	beq	.L970
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	mov	x28, x3
	adds	x1, x1, x0
	bcs	.L963
	cbnz	x1, .L957
	mov	x25, 8
	mov	x22, 0
	mov	x20, 0
.L962:
	ldr	s0, [x27]
	add	x0, x20, x26
	ldr	w1, [x28]
	str	s0, [x20, x26]
	str	w1, [x0, 4]
	cmp	x19, x24
	beq	.L958
	mov	x4, x20
	mov	x3, x24
	.p2align 3,,7
.L959:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L959
	add	x26, x26, 8
	add	x25, x20, x26
.L958:
	cmp	x19, x23
	beq	.L960
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L960:
	cbz	x24, .L961
	mov	x0, x24
	bl	_ZdlPv
.L961:
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
.L963:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L956:
	mov	x0, x22
	bl	_Znwm
	mov	x20, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L962
.L957:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L956
.L970:
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12013:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB12019:
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
	beq	.L989
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	adds	x1, x1, x0
	bcs	.L982
	cbnz	x1, .L976
	mov	x25, 8
	mov	x22, 0
	mov	x21, 0
.L981:
	ldr	x0, [x27]
	str	x0, [x21, x26]
	cmp	x19, x24
	beq	.L977
	mov	x4, x21
	mov	x3, x24
	.p2align 3,,7
.L978:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L978
	add	x26, x26, 8
	add	x25, x21, x26
.L977:
	cmp	x19, x23
	beq	.L979
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L979:
	cbz	x24, .L980
	mov	x0, x24
	bl	_ZdlPv
.L980:
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
.L982:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L975:
	mov	x0, x22
	bl	_Znwm
	mov	x21, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L981
.L976:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L975
.L989:
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12019:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm
	.type	_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm, %function
_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm:
.LFB11514:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11514
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
	bhi	.L990
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
	beq	.L1080
	str	d8, [sp, 96]
	.cfi_offset 72, -80
	b	.L992
	.p2align 2,,3
.L1082:
	ldr	w0, [x23, 4]
	add	x21, x21, 8
	str	w0, [x21, -4]
	str	s8, [x21, -8]
.L997:
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
	beq	.L1081
.L992:
	ldr	s8, [x23]
	fneg	s8, s8
	cmp	x25, x21
	bne	.L1082
	sub	x27, x25, x20
	asr	x0, x27, 3
	cmp	x0, x28
	beq	.L1083
	cmp	x0, 0
	csinc	x1, x0, xzr, ne
	adds	x0, x0, x1
	bcs	.L1000
	cbnz	x0, .L1084
	mov	x2, 8
	mov	x25, 0
	mov	x4, 0
.L1002:
	add	x0, x4, x27
	ldr	w1, [x23, 4]
	str	s8, [x4, x27]
	str	w1, [x0, 4]
	cmp	x21, x20
	beq	.L1037
	mov	x2, x4
	mov	x1, x20
	.p2align 3,,7
.L1004:
	ldr	x3, [x1], 8
	str	x3, [x2], 8
	cmp	x1, x21
	bne	.L1004
	sub	x21, x21, x20
	add	x21, x21, 8
	add	x21, x4, x21
	cbz	x20, .L1005
.L1089:
	mov	x0, x20
	str	x4, [sp, 120]
	bl	_ZdlPv
	ldr	x4, [sp, 120]
.L1005:
	mov	x20, x4
	b	.L997
	.p2align 2,,3
.L1081:
	ldr	x23, [sp, 160]
	cmp	x21, x20
	beq	.L1079
	.p2align 3,,7
.L994:
	ldr	x25, [sp, 152]
	sub	x0, x23, x25
	cmp	x24, x0, asr 3
	bls	.L995
	ldr	x0, [x20]
	str	x0, [sp, 144]
	sub	x0, x21, x20
	sub	x21, x21, #8
	ldr	s8, [sp, 144]
	cmp	x0, 8
	fneg	s8, s8
	bgt	.L1085
.L1008:
	cmp	x23, x25
	beq	.L1015
	.p2align 3,,7
.L1019:
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
.LEHB64:
	blr	x6
	fcmpe	s8, s0
	bgt	.L1078
	add	x25, x25, 8
	cmp	x25, x23
	bne	.L1019
	ldr	x25, [sp, 160]
.L1015:
	ldr	x0, [sp, 168]
	cmp	x0, x25
	beq	.L1086
	mov	x23, x25
	ldr	x0, [sp, 144]
	str	x0, [x23], 8
	str	x23, [sp, 160]
.L1018:
	cmp	x20, x21
	bne	.L994
.L1079:
	ldr	x25, [sp, 152]
.L995:
	cmp	x23, x25
	beq	.L1020
	ldr	x1, [x22, 8]
	.p2align 3,,7
.L1027:
	ldr	x0, [x25]
	str	x0, [sp, 144]
	ldr	x0, [x22, 16]
	ldr	s1, [sp, 144]
	fneg	s1, s1
	str	s1, [sp, 140]
	cmp	x0, x1
	beq	.L1021
	ldr	w8, [sp, 148]
	add	x1, x1, 8
	str	s1, [x1, -8]
	str	w8, [x1, -4]
	str	x1, [x22, 8]
.L1022:
	ldr	x4, [x22]
	sub	x3, x1, x4
	asr	x0, x3, 3
	sub	x2, x0, #2
	sub	x0, x0, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x0, 0
	ble	.L1023
	.p2align 3,,7
.L1026:
	lsl	x3, x2, 3
	lsl	x0, x0, 3
	add	x6, x4, x3
	add	x5, x4, x0
	ldr	s0, [x4, x3]
	fcmpe	s0, s1
	bmi	.L1046
	add	x25, x25, 8
	str	s1, [x5]
	str	w8, [x5, 4]
	cmp	x23, x25
	bne	.L1027
.L1088:
	ldr	x25, [sp, 152]
.L1020:
	cbz	x25, .L1028
	mov	x0, x25
	bl	_ZdlPv
.L1028:
	cbnz	x20, .L1087
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 80]
	.cfi_restore 28
	.cfi_restore 27
	ldr	d8, [sp, 96]
	.cfi_restore 72
.L990:
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
.L1086:
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
.L1078:
	ldr	x23, [sp, 160]
	b	.L1018
	.p2align 2,,3
.L1085:
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
	ble	.L1038
	mov	x0, 0
	b	.L1013
	.p2align 2,,3
.L1040:
	mov	w2, w3
.L1012:
	lsl	x0, x0, 3
	add	x3, x20, x0
	str	s0, [x20, x0]
	str	w2, [x3, 4]
	cmp	x1, x6
	bge	.L1009
.L1041:
	mov	x0, x1
.L1013:
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
	bmi	.L1044
	ldr	w2, [x7, 4]
	bgt	.L1039
	ldr	w3, [x5, 4]
	cmp	w3, w2
	bhi	.L1040
.L1039:
	fmov	s0, s1
	lsl	x0, x0, 3
	add	x3, x20, x0
	mov	x1, x4
	str	s0, [x20, x0]
	str	w2, [x3, 4]
	cmp	x1, x6
	blt	.L1041
.L1009:
	tbnz	x8, 0, .L1014
	sub	x8, x8, #2
	add	x8, x8, x8, lsr 63
	cmp	x1, x8, asr 1
	bne	.L1014
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
.L1014:
	mov	x3, x26
	mov	x0, x20
	mov	x2, 0
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldp	x25, x23, [sp, 152]
	b	.L1008
	.p2align 2,,3
.L1044:
	ldr	w2, [x5, 4]
	b	.L1012
	.p2align 2,,3
.L1046:
	sub	x3, x2, #1
	ldr	w7, [x6, 4]
	str	s0, [x4, x0]
	mov	x0, x2
	add	x3, x3, x3, lsr 63
	str	w7, [x5, 4]
	asr	x2, x3, 1
	cmp	x0, 0
	bgt	.L1026
	mov	x5, x6
	add	x25, x25, 8
	str	s1, [x5]
	str	w8, [x5, 4]
	cmp	x23, x25
	bne	.L1027
	b	.L1088
	.p2align 2,,3
.L1021:
	add	x3, sp, 148
	add	x2, sp, 140
	mov	x0, x22
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x1, [x22, 8]
	ldr	w8, [x1, -4]
	ldr	s1, [x1, -8]
	b	.L1022
.L1087:
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
.L1023:
	.cfi_restore_state
	sub	x3, x3, #8
	add	x25, x25, 8
	add	x5, x4, x3
	str	s1, [x5]
	str	w8, [x5, 4]
	cmp	x23, x25
	bne	.L1027
	b	.L1088
.L1038:
	mov	x1, 0
	b	.L1009
.L1037:
	mov	x21, x2
	cbnz	x20, .L1089
	b	.L1005
.L1080:
	.cfi_restore 72
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 80]
	.cfi_restore 28
	.cfi_restore 27
	b	.L990
.L1084:
	.cfi_offset 25, -112
	.cfi_offset 26, -104
	.cfi_offset 27, -96
	.cfi_offset 28, -88
	.cfi_offset 72, -80
	cmp	x0, x28
	csel	x0, x0, x28, ls
	lsl	x25, x0, 3
.L1001:
	mov	x0, x25
	bl	_Znwm
	mov	x4, x0
	add	x25, x0, x25
	add	x2, x0, 8
	b	.L1002
.L1083:
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	_ZSt20__throw_length_errorPKc
.LEHE64:
.L1000:
	mov	x25, 9223372036854775800
	b	.L1001
.L1043:
	ldr	x1, [sp, 152]
	mov	x19, x0
	cbz	x1, .L1030
	mov	x0, x1
	bl	_ZdlPv
.L1030:
	cbz	x20, .L1031
	mov	x0, x20
	bl	_ZdlPv
.L1031:
	mov	x0, x19
.LEHB65:
	bl	_Unwind_Resume
.LEHE65:
	.cfi_endproc
.LFE11514:
	.section	.gcc_except_table
.LLSDA11514:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11514-.LLSDACSB11514
.LLSDACSB11514:
	.uleb128 .LEHB64-.LFB11514
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L1043-.LFB11514
	.uleb128 0
	.uleb128 .LEHB65-.LFB11514
	.uleb128 .LEHE65-.LEHB65
	.uleb128 0
	.uleb128 0
.LLSDACSE11514:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm, .-_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB12106:
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
	beq	.L1108
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	mov	x28, x3
	adds	x1, x1, x0
	bcs	.L1101
	cbnz	x1, .L1095
	mov	x25, 8
	mov	x22, 0
	mov	x20, 0
.L1100:
	ldr	s0, [x27]
	add	x0, x20, x26
	ldr	w1, [x28]
	str	s0, [x20, x26]
	str	w1, [x0, 4]
	cmp	x19, x24
	beq	.L1096
	mov	x4, x20
	mov	x3, x24
	.p2align 3,,7
.L1097:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L1097
	add	x26, x26, 8
	add	x25, x20, x26
.L1096:
	cmp	x19, x23
	beq	.L1098
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L1098:
	cbz	x24, .L1099
	mov	x0, x24
	bl	_ZdlPv
.L1099:
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
.L1101:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L1094:
	mov	x0, x22
	bl	_Znwm
	mov	x20, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L1100
.L1095:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L1094
.L1108:
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12106:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.rodata.str1.8
	.align	3
.LC20:
	.string	"Should be not be more than M_ candidates returned by the heuristic"
	.align	3
.LC21:
	.string	"vector::reserve"
	.align	3
.LC22:
	.string	"The newly inserted element should have blank link list"
	.align	3
.LC23:
	.string	"Possible memory corruption"
	.align	3
.LC24:
	.string	"Trying to make a link on a non-existent level"
	.align	3
.LC25:
	.string	"Bad value of sz_link_list_other"
	.align	3
.LC26:
	.string	"Trying to connect an element to itself"
	.text
	.align	2
	.p2align 4,,11
	.type	_ZN7hnswlib15HierarchicalNSWIfE25mutuallyConnectNewElementEPKvjRSt14priority_queueISt4pairIfjESt6vectorIS6_SaIS6_EENS1_14CompareByFirstEEib.isra.0, %function
_ZN7hnswlib15HierarchicalNSWIfE25mutuallyConnectNewElementEPKvjRSt14priority_queueISt4pairIfjESt6vectorIS6_SaIS6_EENS1_14CompareByFirstEEib.isra.0:
.LFB12700:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12700
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
.LEHB66:
	bl	_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm
.LEHE66:
	ldp	x2, x1, [x21]
	ldr	x0, [x19, 48]
	sub	x3, x1, x2
	cmp	x0, x3, asr 3
	bcc	.L1264
	stp	xzr, xzr, [sp, 152]
	mov	x3, 2305843009213693951
	str	xzr, [sp, 168]
	cmp	x0, x3
	bhi	.L1265
	cbnz	x0, .L1266
	mov	x20, 0
.L1113:
	cmp	x1, x2
	bne	.L1121
	b	.L1117
	.p2align 2,,3
.L1267:
	ldr	w0, [x2, 4]
	str	w0, [x20], 4
	mov	x0, x21
	str	x20, [sp, 160]
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x2, x0, [x21]
	ldr	x20, [sp, 160]
	cmp	x0, x2
	beq	.L1117
.L1121:
	ldr	x0, [sp, 168]
	cmp	x0, x20
	bne	.L1267
	add	x2, x2, 4
	mov	x1, x20
	add	x0, sp, 152
.LEHB67:
	bl	_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_
	mov	x0, x21
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x2, x0, [x21]
	ldr	x20, [sp, 160]
	cmp	x0, x2
	bne	.L1121
.L1117:
	ldr	w0, [sp, 124]
	mov	w3, 48
	ldr	x2, [x19, 192]
	uxtw	x1, w0
	ldr	w4, [x20, -4]
	str	w4, [sp, 120]
	umaddl	x0, w0, w3, x2
	strb	wzr, [sp, 184]
	str	x0, [sp, 176]
	cbnz	w28, .L1268
	cbnz	w26, .L1126
.L1281:
	ldr	x2, [x19, 24]
	ldr	x0, [x19, 240]
	ldr	x3, [x19, 256]
	madd	x1, x1, x2, x0
	add	x3, x3, x1
.L1127:
	ldr	w0, [x3]
	cmp	w0, 0
	ccmp	w28, 0, 0, ne
	beq	.L1269
	ldp	x2, x7, [sp, 152]
	mov	x1, 1
	sub	x5, x7, x2
	sub	x6, x2, #4
	asr	x5, x5, 2
	strh	w5, [x3]
	cbnz	x5, .L1129
	b	.L1134
	.p2align 2,,3
.L1186:
	mov	x1, x0
.L1129:
	ldr	w0, [x3, x1, lsl 2]
	cmp	w0, 0
	ccmp	w28, 0, 0, ne
	beq	.L1270
	ldr	w0, [x6, x1, lsl 2]
	ldr	x4, [x19, 272]
	ldr	w4, [x4, w0, uxtw 2]
	cmp	w26, w4
	bgt	.L1271
	str	w0, [x3, x1, lsl 2]
	add	x0, x1, 1
	cmp	x5, x1
	bne	.L1186
.L1134:
	ldrb	w0, [sp, 184]
	cbnz	w0, .L1272
.L1131:
	cmp	x2, x7
	beq	.L1136
	sub	w0, w26, #1
	add	x1, x19, 192
	mov	x24, 0
	sxtw	x0, w0
	stp	x1, x0, [sp, 104]
	b	.L1166
	.p2align 2,,3
.L1278:
	ldr	x1, [x19, 24]
	ldr	x2, [x19, 240]
	ldr	x20, [x19, 256]
	madd	x1, x4, x1, x2
	add	x20, x20, x1
.L1140:
	ldrh	w2, [x20]
	and	x22, x2, 65535
	cmp	x27, x2, uxth
	bcc	.L1273
	ldr	w1, [sp, 124]
	cmp	w1, w0
	beq	.L1274
	ldr	x0, [x19, 272]
	ldr	w0, [x0, x4, lsl 2]
	cmp	w26, w0
	bgt	.L1275
	add	x21, x20, 4
	cbnz	w28, .L1276
.L1144:
	cmp	x22, x27
	bcs	.L1147
	uxtw	x0, w2
	add	w2, w2, 1
	str	w1, [x21, x0, lsl 2]
	strh	w2, [x20]
.L1145:
	ldr	x0, [sp, 136]
	cbz	x0, .L1165
	ldr	x1, [sp, 96]
	cbz	x1, .L1165
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L1165:
	ldp	x2, x0, [sp, 152]
	add	x24, x24, 1
	sub	x0, x0, x2
	cmp	x24, x0, asr 2
	bcs	.L1136
.L1166:
	ldr	x1, [sp, 104]
	mov	w3, 48
	ldr	w0, [x2, x24, lsl 2]
	lsl	x25, x24, 2
	strb	wzr, [sp, 144]
	ldr	x1, [x1]
	umaddl	x0, w0, w3, x1
	str	x0, [sp, 136]
	cbz	x0, .L1277
	adrp	x1, .LC5
	ldr	x1, [x1, #:lo12:.LC5]
	str	x1, [sp, 96]
	cbz	x1, .L1138
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1258
	ldr	x2, [sp, 152]
.L1138:
	mov	w0, 1
	strb	w0, [sp, 144]
	ldr	w0, [x2, x25]
	uxtw	x4, w0
	cbz	w26, .L1278
	ldr	x1, [x19, 264]
	ldr	x20, [x19, 32]
	ldr	x1, [x1, x4, lsl 3]
	ldr	x2, [sp, 112]
	madd	x20, x2, x20, x1
	b	.L1140
.L1266:
	lsl	x22, x0, 2
	mov	x0, x22
	bl	_Znwm
.LEHE67:
	ldp	x23, x2, [sp, 152]
	mov	x20, x0
	sub	x2, x2, x23
	cmp	x2, 0
	bgt	.L1279
	cbnz	x23, .L1115
.L1116:
	add	x0, x20, x22
	stp	x20, x20, [sp, 152]
	str	x0, [sp, 168]
	ldp	x2, x1, [x21]
	b	.L1113
.L1279:
	mov	x1, x23
	bl	memmove
.L1115:
	mov	x0, x23
	bl	_ZdlPv
	b	.L1116
.L1268:
	cbz	x0, .L1280
	adrp	x2, .LC5
	ldr	x2, [x2, #:lo12:.LC5]
	cbz	x2, .L1124
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1125
	ldr	w1, [sp, 124]
.L1124:
	mov	w0, 1
	strb	w0, [sp, 184]
	cbz	w26, .L1281
.L1126:
	ldr	x0, [x19, 264]
	sub	w3, w26, #1
	ldr	x2, [x19, 32]
	sxtw	x3, w3
	ldr	x0, [x0, x1, lsl 3]
	madd	x3, x3, x2, x0
	b	.L1127
	.p2align 2,,3
.L1276:
	cbz	x22, .L1144
	mov	x0, 1
	b	.L1146
	.p2align 2,,3
.L1282:
	add	x3, x0, 1
	cmp	x22, x0
	beq	.L1144
	mov	x0, x3
.L1146:
	ldr	w3, [x20, x0, lsl 2]
	cmp	w1, w3
	bne	.L1282
	b	.L1145
	.p2align 2,,3
.L1147:
	ldr	x3, [x19, 24]
	uxtw	x0, w1
	ldr	x5, [x19, 232]
	ldp	x6, x2, [x19, 304]
	madd	x0, x0, x3, x5
	madd	x3, x3, x4, x5
	ldr	x1, [x19, 256]
	add	x0, x1, x0
	add	x1, x1, x3
.LEHB68:
	blr	x6
.LEHE68:
	add	x0, sp, 176
	add	x3, sp, 124
	add	x2, sp, 128
	mov	x1, 0
	str	s0, [sp, 128]
	stp	xzr, xzr, [sp, 176]
	str	xzr, [sp, 192]
.LEHB69:
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
	ble	.L1148
	.p2align 3,,7
.L1151:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s0, [x3, x2]
	fcmpe	s1, s0
	bgt	.L1203
.L1149:
	str	w7, [x4, 4]
	mov	x23, 0
	str	s1, [x4]
	cbz	x22, .L1160
	.p2align 3,,7
.L1161:
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
	beq	.L1154
	ldr	w7, [x21]
	add	x0, x1, 8
	str	s0, [x1]
	str	w7, [x1, 4]
	str	x0, [sp, 184]
.L1155:
	ldr	x3, [sp, 176]
	sub	x2, x0, x3
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L1156
	.p2align 3,,7
.L1159:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s1, [x3, x2]
	fcmpe	s1, s0
	bmi	.L1204
	add	x23, x23, 1
	str	s0, [x4]
	str	w7, [x4, 4]
	add	x21, x21, 4
	cmp	x22, x23
	bne	.L1161
.L1160:
	mov	x2, x27
	add	x1, sp, 176
	mov	x0, x19
	bl	_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm
	ldp	x0, x1, [sp, 176]
	cmp	x1, x0
	beq	.L1191
	mov	x21, 1
	.p2align 3,,7
.L1163:
	ldr	w1, [x0, 4]
	add	x0, sp, 176
	str	w1, [x20, x21, lsl 2]
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x0, x1, [sp, 176]
	mov	x2, x21
	add	x21, x21, 1
	cmp	x1, x0
	bne	.L1163
	and	w2, w2, 65535
.L1162:
	strh	w2, [x20]
	cbz	x0, .L1164
	bl	_ZdlPv
.L1164:
	ldrb	w0, [sp, 144]
	cbnz	w0, .L1145
	ldp	x2, x0, [sp, 152]
	add	x24, x24, 1
	sub	x0, x0, x2
	cmp	x24, x0, asr 2
	bcc	.L1166
.L1136:
	cbz	x2, .L1109
	mov	x0, x2
	bl	_ZdlPv
.L1109:
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
.L1203:
	.cfi_restore_state
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s0, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L1151
	mov	x4, x5
	b	.L1149
	.p2align 2,,3
.L1204:
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s1, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L1159
	mov	x4, x5
	add	x23, x23, 1
	add	x21, x21, 4
	str	s0, [x4]
	str	w7, [x4, 4]
	cmp	x22, x23
	bne	.L1161
	b	.L1160
	.p2align 2,,3
.L1154:
	mov	x3, x21
	add	x2, sp, 132
	add	x0, sp, 176
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE69:
	ldr	x0, [sp, 184]
	ldr	w7, [x0, -4]
	ldr	s0, [x0, -8]
	b	.L1155
.L1156:
	sub	x0, x2, #8
	add	x23, x23, 1
	add	x4, x3, x0
	add	x21, x21, 4
	str	s0, [x4]
	str	w7, [x4, 4]
	cmp	x22, x23
	bne	.L1161
	b	.L1160
.L1272:
	ldr	x0, [sp, 176]
	cbz	x0, .L1131
	adrp	x1, .LC5
	ldr	x1, [x1, #:lo12:.LC5]
	cbz	x1, .L1131
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	ldp	x2, x7, [sp, 152]
	b	.L1131
.L1191:
	mov	w2, 0
	b	.L1162
.L1148:
	sub	x2, x2, #8
	add	x4, x3, x2
	b	.L1149
.L1125:
.LEHB70:
	bl	_ZSt20__throw_system_errori
.LEHE70:
.L1265:
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
.LEHB71:
	bl	_ZSt20__throw_length_errorPKc
.L1258:
	bl	_ZSt20__throw_system_errori
.LEHE71:
.L1280:
	mov	w0, 1
.LEHB72:
	bl	_ZSt20__throw_system_errori
.LEHE72:
	.p2align 2,,3
.L1277:
	mov	w0, 1
.LEHB73:
	bl	_ZSt20__throw_system_errori
.LEHE73:
.L1198:
	mov	x19, x0
.L1170:
	ldrb	w0, [sp, 184]
	cbz	w0, .L1174
	add	x0, sp, 176
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L1174:
	ldr	x0, [sp, 152]
	cbz	x0, .L1182
	bl	_ZdlPv
.L1182:
	mov	x0, x19
.LEHB74:
	bl	_Unwind_Resume
.LEHE74:
.L1273:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC25
	mov	x20, x0
	add	x1, x1, :lo12:.LC25
.LEHB75:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE75:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB76:
	bl	__cxa_throw
.LEHE76:
.L1274:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC26
	mov	x20, x0
	add	x1, x1, :lo12:.LC26
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
.L1197:
.L1262:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
.L1176:
	ldrb	w0, [sp, 144]
	cbz	w0, .L1174
	add	x0, sp, 136
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L1174
.L1196:
	b	.L1262
.L1193:
	mov	x19, x0
	b	.L1176
.L1194:
	ldr	x1, [sp, 176]
	mov	x19, x0
	cbz	x1, .L1176
	mov	x0, x1
	bl	_ZdlPv
	b	.L1176
.L1192:
	mov	x19, x0
	b	.L1174
.L1269:
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
.L1201:
.L1261:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
	b	.L1170
.L1264:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC20
	mov	x19, x0
	add	x1, x1, :lo12:.LC20
.LEHB81:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE81:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x19
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB82:
	bl	__cxa_throw
.LEHE82:
.L1270:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC23
	mov	x20, x0
	add	x1, x1, :lo12:.LC23
.LEHB83:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE83:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB84:
	bl	__cxa_throw
.LEHE84:
.L1275:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC24
	mov	x20, x0
	add	x1, x1, :lo12:.LC24
.LEHB85:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE85:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB86:
	bl	__cxa_throw
.LEHE86:
.L1271:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC24
	mov	x20, x0
	add	x1, x1, :lo12:.LC24
.LEHB87:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE87:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB88:
	bl	__cxa_throw
.LEHE88:
.L1202:
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	bl	__cxa_free_exception
	mov	x0, x19
.LEHB89:
	bl	_Unwind_Resume
.LEHE89:
.L1195:
	b	.L1262
.L1200:
	b	.L1261
.L1199:
	b	.L1261
	.cfi_endproc
.LFE12700:
	.section	.gcc_except_table
.LLSDA12700:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12700-.LLSDACSB12700
.LLSDACSB12700:
	.uleb128 .LEHB66-.LFB12700
	.uleb128 .LEHE66-.LEHB66
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB67-.LFB12700
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L1192-.LFB12700
	.uleb128 0
	.uleb128 .LEHB68-.LFB12700
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L1193-.LFB12700
	.uleb128 0
	.uleb128 .LEHB69-.LFB12700
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L1194-.LFB12700
	.uleb128 0
	.uleb128 .LEHB70-.LFB12700
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L1198-.LFB12700
	.uleb128 0
	.uleb128 .LEHB71-.LFB12700
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L1192-.LFB12700
	.uleb128 0
	.uleb128 .LEHB72-.LFB12700
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L1198-.LFB12700
	.uleb128 0
	.uleb128 .LEHB73-.LFB12700
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L1192-.LFB12700
	.uleb128 0
	.uleb128 .LEHB74-.LFB12700
	.uleb128 .LEHE74-.LEHB74
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB75-.LFB12700
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L1197-.LFB12700
	.uleb128 0
	.uleb128 .LEHB76-.LFB12700
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L1193-.LFB12700
	.uleb128 0
	.uleb128 .LEHB77-.LFB12700
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L1196-.LFB12700
	.uleb128 0
	.uleb128 .LEHB78-.LFB12700
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L1193-.LFB12700
	.uleb128 0
	.uleb128 .LEHB79-.LFB12700
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L1201-.LFB12700
	.uleb128 0
	.uleb128 .LEHB80-.LFB12700
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L1198-.LFB12700
	.uleb128 0
	.uleb128 .LEHB81-.LFB12700
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L1202-.LFB12700
	.uleb128 0
	.uleb128 .LEHB82-.LFB12700
	.uleb128 .LEHE82-.LEHB82
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB83-.LFB12700
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L1200-.LFB12700
	.uleb128 0
	.uleb128 .LEHB84-.LFB12700
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L1198-.LFB12700
	.uleb128 0
	.uleb128 .LEHB85-.LFB12700
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L1195-.LFB12700
	.uleb128 0
	.uleb128 .LEHB86-.LFB12700
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L1193-.LFB12700
	.uleb128 0
	.uleb128 .LEHB87-.LFB12700
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L1199-.LFB12700
	.uleb128 0
	.uleb128 .LEHB88-.LFB12700
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L1198-.LFB12700
	.uleb128 0
	.uleb128 .LEHB89-.LFB12700
	.uleb128 .LEHE89-.LEHB89
	.uleb128 0
	.uleb128 0
.LLSDACSE12700:
	.text
	.size	_ZN7hnswlib15HierarchicalNSWIfE25mutuallyConnectNewElementEPKvjRSt14priority_queueISt4pairIfjESt6vectorIS6_SaIS6_EENS1_14CompareByFirstEEib.isra.0, .-_ZN7hnswlib15HierarchicalNSWIfE25mutuallyConnectNewElementEPKvjRSt14priority_queueISt4pairIfjESt6vectorIS6_SaIS6_EENS1_14CompareByFirstEEib.isra.0
	.section	.rodata._ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi.str1.8,"aMS",@progbits,1
	.align	3
.LC27:
	.string	"cannot create std::deque larger than max_size()"
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi
	.type	_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi, %function
_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi:
.LFB11463:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11463
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
.LEHB90:
	bl	_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv
.LEHE90:
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
	tbnz	x0, 0, .L1284
	ldr	x1, [x19, 232]
	mov	x0, x26
	ldr	x4, [x19, 304]
	add	x1, x2, x1
	ldr	x2, [x19, 312]
	add	x1, x3, x1
.LEHB91:
	blr	x4
	ldp	x1, x0, [x21, 8]
	str	s0, [sp, 120]
	str	s0, [sp, 156]
	fmov	s8, s0
	cmp	x1, x0
	beq	.L1285
	ldr	w7, [sp, 140]
	fmov	s2, s0
	str	s0, [x1]
	add	x0, x1, 8
	str	w7, [x1, 4]
	str	x0, [x21, 8]
.L1286:
	ldr	x3, [x21]
	sub	x2, x0, x3
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L1287
	.p2align 3,,7
.L1290:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s0, [x3, x2]
	fcmpe	s0, s2
	bmi	.L1360
.L1288:
	ldp	x1, x0, [sp, 184]
	fneg	s1, s8
	str	w7, [x4, 4]
	str	s2, [x4]
	str	s1, [sp, 160]
	cmp	x1, x0
	beq	.L1291
.L1412:
	ldr	w9, [sp, 140]
	add	x5, x1, 8
	str	s1, [x1]
	mov	w8, w9
	str	w9, [x1, 4]
	str	x5, [sp, 184]
.L1292:
	ldr	x0, [sp, 176]
	sub	x3, x5, x0
	asr	x1, x3, 3
	sub	x2, x1, #2
	sub	x1, x1, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x1, 0
	ble	.L1293
	.p2align 3,,7
.L1296:
	lsl	x3, x2, 3
	lsl	x1, x1, 3
	add	x6, x0, x3
	add	x4, x0, x1
	ldr	s0, [x0, x3]
	fcmpe	s0, s1
	bmi	.L1361
.L1294:
	str	w9, [x4, 4]
	str	s1, [x4]
.L1297:
	strh	w23, [x22, w8, uxtw 1]
	cmp	x0, x5
	beq	.L1411
	sub	w1, w28, #1
	sxtw	x1, w1
	str	x1, [sp, 120]
	.p2align 3,,7
.L1335:
	ldr	s0, [x0]
	ldr	w20, [x0, 4]
	fneg	s0, s0
	fcmpe	s0, s8
	bgt	.L1363
	b	.L1303
	.p2align 2,,3
.L1360:
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s0, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L1290
	mov	x4, x5
	fneg	s1, s8
	ldp	x1, x0, [sp, 184]
	str	w7, [x4, 4]
	str	s2, [x4]
	str	s1, [sp, 160]
	cmp	x1, x0
	bne	.L1412
.L1291:
	add	x3, sp, 140
	add	x2, sp, 160
	add	x0, sp, 176
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE91:
	ldr	x5, [sp, 184]
	ldr	w8, [sp, 140]
	ldr	w9, [x5, -4]
	ldr	s1, [x5, -8]
	b	.L1292
	.p2align 2,,3
.L1361:
	sub	x3, x2, #1
	ldr	w7, [x6, 4]
	str	s0, [x0, x1]
	mov	x1, x2
	add	x3, x3, x3, lsr 63
	str	w7, [x4, 4]
	asr	x2, x3, 1
	cmp	x1, 0
	bgt	.L1296
	mov	x4, x6
	b	.L1294
	.p2align 2,,3
.L1363:
	ldp	x2, x0, [x21]
	ldr	x1, [x19, 72]
	sub	x0, x0, x2
	cmp	x1, x0, asr 3
	beq	.L1411
.L1303:
	add	x0, sp, 176
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldr	x0, [x19, 192]
	mov	w1, 48
	strb	wzr, [sp, 168]
	uxtw	x25, w20
	umaddl	x0, w20, w1, x0
	str	x0, [sp, 160]
	cbz	x0, .L1413
	adrp	x1, .LC5
	ldr	x27, [x1, #:lo12:.LC5]
	cbz	x27, .L1307
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1414
.L1307:
	mov	w0, 1
	strb	w0, [sp, 168]
	cbnz	w28, .L1308
	ldr	x1, [x19, 24]
	ldr	x0, [x19, 240]
	ldr	x24, [x19, 256]
	madd	x25, x25, x1, x0
	add	x24, x24, x25
	ldrh	w25, [x24]
	cbz	x25, .L1310
.L1418:
	mov	x20, 0
	b	.L1311
	.p2align 2,,3
.L1415:
	fcmpe	s0, s8
	bmi	.L1315
.L1314:
	cmp	x25, x20
	beq	.L1312
.L1311:
	add	x20, x20, 1
	ldr	w0, [x24, x20, lsl 2]
	str	w0, [sp, 148]
	uxtw	x1, w0
	ubfiz	x0, x0, 1, 32
	ldrh	w2, [x22, x0]
	cmp	w2, w23
	beq	.L1314
	ldr	x5, [x19, 24]
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	strh	w23, [x22, x0]
	madd	x1, x1, x5, x4
	mov	x0, x26
	ldr	x4, [x19, 256]
	add	x1, x4, x1
.LEHB92:
	blr	x3
	ldp	x0, x6, [x21]
	str	s0, [sp, 152]
	ldr	x1, [x19, 72]
	sub	x0, x6, x0
	cmp	x1, x0, asr 3
	bls	.L1415
.L1315:
	ldp	x1, x0, [sp, 184]
	fneg	s0, s0
	str	s0, [sp, 156]
	cmp	x1, x0
	beq	.L1318
	ldr	w7, [sp, 148]
	add	x0, x1, 8
	str	s0, [x1]
	mov	w8, w7
	str	w7, [x1, 4]
	str	x0, [sp, 184]
.L1319:
	ldr	x4, [sp, 176]
	sub	x3, x0, x4
	asr	x0, x3, 3
	sub	x2, x0, #2
	sub	x0, x0, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x0, 0
	ble	.L1320
	.p2align 3,,7
.L1323:
	lsl	x3, x2, 3
	lsl	x0, x0, 3
	add	x1, x4, x3
	add	x5, x4, x0
	ldr	s1, [x4, x3]
	fcmpe	s1, s0
	bmi	.L1364
.L1321:
	ldr	x3, [x19, 24]
	uxtw	x0, w7
	ldr	x2, [x19, 256]
	ldr	x1, [x19, 240]
	str	w8, [x5, 4]
	madd	x0, x0, x3, x2
	str	s0, [x5]
	add	x0, x0, x1
	ldrb	w0, [x0, 2]
	tbz	x0, 0, .L1324
	ldr	x2, [x21]
	sub	x9, x6, x2
	asr	x9, x9, 3
.L1325:
	ldr	x0, [x19, 72]
	cmp	x0, x9
	bcc	.L1416
.L1332:
	cmp	x2, x6
	beq	.L1314
	ldr	s8, [x2]
	cmp	x25, x20
	bne	.L1311
.L1312:
	ldrb	w0, [sp, 168]
	cbnz	w0, .L1310
.L1333:
	ldp	x0, x1, [sp, 176]
	cmp	x0, x1
	bne	.L1335
.L1305:
	ldr	x19, [x19, 112]
	strb	wzr, [sp, 168]
	add	x0, x19, 80
	str	x0, [sp, 160]
	cbz	x27, .L1336
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1417
.L1336:
	ldp	x0, x1, [x19, 16]
	mov	w2, 1
	strb	w2, [sp, 168]
	cmp	x0, x1
	beq	.L1337
	ldr	x1, [sp, 128]
	str	x1, [x0, -8]!
	str	x0, [x19, 16]
.L1338:
	ldr	x0, [sp, 160]
	cbz	x0, .L1341
	cbz	x27, .L1341
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L1341:
	ldr	x0, [sp, 176]
	cbz	x0, .L1283
	bl	_ZdlPv
.L1283:
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
.L1364:
	.cfi_restore_state
	sub	x3, x2, #1
	ldr	w9, [x1, 4]
	str	s1, [x4, x0]
	mov	x0, x2
	add	x3, x3, x3, lsr 63
	str	w9, [x5, 4]
	asr	x2, x3, 1
	cmp	x0, 0
	bgt	.L1323
	mov	x5, x1
	b	.L1321
	.p2align 2,,3
.L1416:
	mov	x0, x21
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x2, x6, [x21]
	b	.L1332
	.p2align 2,,3
.L1324:
	ldr	x0, [x21, 16]
	cmp	x0, x6
	beq	.L1326
	ldr	s1, [sp, 152]
	add	x6, x6, 8
	str	w7, [x6, -4]
	str	s1, [x6, -8]
	str	x6, [x21, 8]
.L1327:
	ldr	x2, [x21]
	sub	x3, x6, x2
	asr	x9, x3, 3
	sub	x0, x9, #2
	sub	x1, x9, #1
	add	x0, x0, x0, lsr 63
	asr	x0, x0, 1
	cmp	x1, 0
	ble	.L1328
	.p2align 3,,7
.L1331:
	lsl	x3, x0, 3
	lsl	x1, x1, 3
	add	x5, x2, x3
	add	x4, x2, x1
	ldr	s0, [x2, x3]
	fcmpe	s0, s1
	bmi	.L1365
	str	s1, [x4]
	str	w7, [x4, 4]
	b	.L1325
	.p2align 2,,3
.L1365:
	sub	x3, x0, #1
	ldr	w8, [x5, 4]
	str	s0, [x2, x1]
	mov	x1, x0
	add	x3, x3, x3, lsr 63
	str	w8, [x4, 4]
	asr	x0, x3, 1
	cmp	x1, 0
	bgt	.L1331
	mov	x4, x5
	str	s1, [x4]
	str	w7, [x4, 4]
	b	.L1325
	.p2align 2,,3
.L1318:
	add	x3, sp, 148
	add	x2, sp, 156
	add	x0, sp, 176
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x0, [sp, 184]
	ldr	w7, [sp, 148]
	ldr	x6, [x21, 8]
	ldr	w8, [x0, -4]
	ldr	s0, [x0, -8]
	b	.L1319
	.p2align 2,,3
.L1308:
	ldr	x0, [x19, 264]
	ldr	x24, [x19, 32]
	ldr	x0, [x0, x25, lsl 3]
	ldr	x1, [sp, 120]
	madd	x24, x1, x24, x0
	ldrh	w25, [x24]
	cbnz	x25, .L1418
.L1310:
	ldr	x0, [sp, 160]
	cbz	x0, .L1333
	cbz	x27, .L1333
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L1333
.L1326:
	mov	x1, x6
	add	x3, sp, 148
	add	x2, sp, 152
	mov	x0, x21
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE92:
	ldr	x6, [x21, 8]
	ldr	w7, [x6, -4]
	ldr	s1, [x6, -8]
	b	.L1327
.L1320:
	sub	x0, x3, #8
	add	x5, x4, x0
	b	.L1321
.L1328:
	sub	x3, x3, #8
	add	x4, x2, x3
	str	s1, [x4]
	str	w7, [x4, 4]
	b	.L1325
.L1411:
	adrp	x0, .LC5
	ldr	x27, [x0, #:lo12:.LC5]
	b	.L1305
.L1284:
	mvni	v0.2s, 0x80, lsl 16
	add	x3, sp, 140
	add	x2, sp, 160
	add	x0, sp, 176
	mov	x1, 0
	str	s0, [sp, 160]
.LEHB93:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE93:
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
	ble	.L1298
.L1301:
	lsl	x3, x2, 3
	lsl	x1, x1, 3
	add	x6, x0, x3
	add	x4, x0, x1
	ldr	s0, [x0, x3]
	fcmpe	s1, s0
	bgt	.L1362
.L1299:
	ldr	w8, [sp, 140]
	mov	w1, 2139095039
	fmov	s8, w1
	str	s1, [x4]
	str	w9, [x4, 4]
	b	.L1297
	.p2align 2,,3
.L1362:
	sub	x3, x2, #1
	ldr	w7, [x6, 4]
	str	s0, [x0, x1]
	mov	x1, x2
	add	x3, x3, x3, lsr 63
	str	w7, [x4, 4]
	asr	x2, x3, 1
	cmp	x1, 0
	bgt	.L1301
	mov	x4, x6
	ldr	w8, [sp, 140]
	mov	w1, 2139095039
	fmov	s8, w1
	str	s1, [x4]
	str	w9, [x4, 4]
	b	.L1297
.L1337:
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
	beq	.L1419
	ldr	x0, [x19]
	cmp	x22, x0
	beq	.L1420
.L1340:
	mov	x0, 512
.LEHB94:
	bl	_Znwm
.LEHE94:
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
	cbz	w1, .L1341
	b	.L1338
	.p2align 2,,3
.L1285:
	add	x3, sp, 140
	add	x2, sp, 156
	mov	x0, x21
.LEHB95:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE95:
	ldr	x0, [x21, 8]
	ldr	s8, [sp, 156]
	ldr	w7, [x0, -4]
	ldr	s2, [x0, -8]
	b	.L1286
.L1420:
	mov	x0, x19
	mov	x1, 1
.LEHB96:
	bl	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb
.LEHE96:
	ldr	x22, [x19, 40]
	b	.L1340
.L1293:
	sub	x3, x3, #8
	add	x4, x0, x3
	b	.L1294
.L1287:
	sub	x0, x2, #8
	add	x4, x3, x0
	b	.L1288
.L1298:
	sub	x3, x3, #8
	add	x4, x0, x3
	b	.L1299
.L1414:
.LEHB97:
	bl	_ZSt20__throw_system_errori
.L1413:
	mov	w0, 1
	bl	_ZSt20__throw_system_errori
.LEHE97:
.L1419:
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
.LEHB98:
	bl	_ZSt20__throw_length_errorPKc
.LEHE98:
.L1417:
.LEHB99:
	bl	_ZSt20__throw_system_errori
.LEHE99:
.L1358:
	ldrb	w1, [sp, 168]
	mov	x19, x0
	cbz	w1, .L1346
	add	x0, sp, 160
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L1346
.L1359:
	ldrb	w1, [sp, 168]
	mov	x19, x0
	cbz	w1, .L1346
	add	x0, sp, 160
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L1346:
	ldr	x0, [sp, 176]
	cbz	x0, .L1349
	bl	_ZdlPv
.L1349:
	ldr	x0, [x21]
	cbz	x0, .L1350
	bl	_ZdlPv
.L1350:
	mov	x0, x19
.LEHB100:
	bl	_Unwind_Resume
.LEHE100:
.L1357:
	mov	x19, x0
	b	.L1346
	.cfi_endproc
.LFE11463:
	.section	.gcc_except_table
.LLSDA11463:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11463-.LLSDACSB11463
.LLSDACSB11463:
	.uleb128 .LEHB90-.LFB11463
	.uleb128 .LEHE90-.LEHB90
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB91-.LFB11463
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L1357-.LFB11463
	.uleb128 0
	.uleb128 .LEHB92-.LFB11463
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L1358-.LFB11463
	.uleb128 0
	.uleb128 .LEHB93-.LFB11463
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L1357-.LFB11463
	.uleb128 0
	.uleb128 .LEHB94-.LFB11463
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L1359-.LFB11463
	.uleb128 0
	.uleb128 .LEHB95-.LFB11463
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L1357-.LFB11463
	.uleb128 0
	.uleb128 .LEHB96-.LFB11463
	.uleb128 .LEHE96-.LEHB96
	.uleb128 .L1359-.LFB11463
	.uleb128 0
	.uleb128 .LEHB97-.LFB11463
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L1357-.LFB11463
	.uleb128 0
	.uleb128 .LEHB98-.LFB11463
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L1359-.LFB11463
	.uleb128 0
	.uleb128 .LEHB99-.LFB11463
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L1357-.LFB11463
	.uleb128 0
	.uleb128 .LEHB100-.LFB11463
	.uleb128 .LEHE100-.LEHB100
	.uleb128 0
	.uleb128 0
.LLSDACSE11463:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi, .-_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi
	.section	.rodata._ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii.str1.8,"aMS",@progbits,1
	.align	3
.LC28:
	.string	"Level of item to be updated cannot be bigger than max level"
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii
	.type	_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii, %function
_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii:
.LFB11517:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11517
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
	bge	.L1422
	mov	x0, x1
	uxtw	x21, w2
	ldr	x1, [x19, 24]
	add	x28, x19, 192
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	madd	x1, x21, x1, x4
	ldr	x4, [x19, 256]
	add	x1, x4, x1
.LEHB101:
	blr	x3
.LEHE101:
	fmov	s8, s0
.L1435:
	ldr	w0, [sp, 116]
	sub	w0, w0, #1
	sxtw	x0, w0
	mov	x27, x0
	.p2align 3,,7
.L1433:
	ldr	x0, [x28]
	mov	w1, 48
	strb	wzr, [sp, 184]
	umaddl	x0, w24, w1, x0
	str	x0, [sp, 176]
	cbz	x0, .L1518
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	ldr	x1, [x1]
	cbz	x1, .L1424
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1519
.L1424:
	mov	w0, 1
	strb	w0, [sp, 184]
	ldr	w0, [sp, 116]
	cbnz	w0, .L1425
	ldr	x0, [x19, 24]
	ldr	x1, [x19, 240]
	ldr	x20, [x19, 256]
	madd	x0, x21, x0, x1
	add	x20, x20, x0
	ldrh	w22, [x20]
	cbz	w22, .L1427
.L1522:
	sub	w22, w22, #1
	add	x0, x20, 8
	add	x20, x20, 4
	mov	w25, 0
	add	x22, x0, x22, uxtw 2
	.p2align 3,,7
.L1430:
	ldr	w21, [x20]
	mov	x0, x23
	ldr	x5, [x19, 24]
	uxtw	x1, w21
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	madd	x1, x1, x5, x4
	ldr	x4, [x19, 256]
	add	x1, x4, x1
.LEHB102:
	blr	x3
.LEHE102:
	fcmpe	s0, s8
	bmi	.L1474
.L1428:
	add	x20, x20, 4
	cmp	x22, x20
	bne	.L1430
	ldrb	w0, [sp, 184]
	cbnz	w0, .L1520
.L1431:
	cbz	w25, .L1465
.L1521:
	uxtw	x21, w24
	b	.L1433
	.p2align 2,,3
.L1520:
	ldr	x0, [sp, 176]
	cbz	x0, .L1431
.L1466:
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	ldr	x1, [x1]
	cbz	x1, .L1431
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	cbnz	w25, .L1521
.L1465:
	ldp	w0, w1, [sp, 116]
	sub	w0, w0, #1
	str	w0, [sp, 116]
	cmp	w1, w0
	beq	.L1434
	uxtw	x21, w24
	b	.L1435
	.p2align 2,,3
.L1474:
	fmov	s8, s0
	mov	w24, w21
	mov	w25, 1
	b	.L1428
	.p2align 2,,3
.L1425:
	ldr	x0, [x19, 264]
	ldr	x20, [x19, 32]
	ldr	x0, [x0, x21, lsl 3]
	madd	x20, x27, x20, x0
	ldrh	w22, [x20]
	cbnz	w22, .L1522
.L1427:
	ldr	x0, [sp, 176]
	cbz	x0, .L1465
	mov	w25, 0
	b	.L1466
.L1422:
	bgt	.L1436
.L1434:
	ldr	w0, [sp, 120]
	tbnz	w0, #31, .L1421
	.p2align 3,,7
.L1437:
	ldr	w3, [sp, 120]
	mov	x2, x23
	mov	x0, x19
	add	x8, sp, 144
	mov	w1, w24
.LEHB103:
	bl	_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi
.LEHE103:
	stp	xzr, xzr, [sp, 176]
	ldp	x2, x0, [sp, 144]
	str	xzr, [sp, 192]
	cmp	x2, x0
	beq	.L1438
	.p2align 3,,7
.L1446:
	ldr	w0, [x2, 4]
	cmp	w0, w26
	beq	.L1439
	ldp	x1, x0, [sp, 184]
	cmp	x1, x0
	beq	.L1440
	ldr	x0, [x2]
	str	x0, [x1], 8
	str	x1, [sp, 184]
.L1441:
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
	ble	.L1442
	.p2align 3,,7
.L1445:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s0, [x3, x2]
	fcmpe	s1, s0
	bgt	.L1475
.L1443:
	str	w7, [x4, 4]
	str	s1, [x4]
.L1439:
	add	x0, sp, 144
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x2, x0, [sp, 144]
	cmp	x0, x2
	bne	.L1446
	ldp	x1, x0, [sp, 176]
	cmp	x0, x1
	beq	.L1447
	ldr	w2, [sp, 124]
	ldr	x0, [x19, 24]
	ldr	x3, [x19, 256]
	mul	x2, x2, x0
	ldr	x1, [x19, 240]
	add	x0, x3, x2
	add	x0, x0, x1
	ldrb	w0, [x0, 2]
	tbz	x0, 0, .L1449
	ldr	x1, [x19, 232]
	mov	x0, x23
	ldr	x4, [x19, 304]
	add	x1, x2, x1
	ldr	x2, [x19, 312]
	add	x1, x3, x1
.LEHB104:
	blr	x4
	ldp	x1, x0, [sp, 184]
	str	s0, [sp, 140]
	cmp	x1, x0
	beq	.L1450
	ldr	w8, [sp, 124]
	add	x0, x1, 8
	str	s0, [x1]
	str	w8, [x1, 4]
	str	x0, [sp, 184]
.L1451:
	ldr	x3, [sp, 176]
	sub	x2, x0, x3
	asr	x7, x2, 3
	sub	x0, x7, #2
	sub	x1, x7, #1
	add	x0, x0, x0, lsr 63
	asr	x0, x0, 1
	cmp	x1, 0
	ble	.L1452
	.p2align 3,,7
.L1455:
	lsl	x2, x0, 3
	lsl	x1, x1, 3
	add	x5, x3, x2
	add	x4, x3, x1
	ldr	s1, [x3, x2]
	fcmpe	s1, s0
	bmi	.L1476
.L1453:
	ldr	x0, [x19, 72]
	str	s0, [x4]
	str	w8, [x4, 4]
	cmp	x0, x7
	bcc	.L1523
.L1449:
	ldr	w3, [sp, 120]
	add	x2, sp, 176
	mov	w1, w26
	mov	x0, x19
	mov	w4, 1
	bl	_ZN7hnswlib15HierarchicalNSWIfE25mutuallyConnectNewElementEPKvjRSt14priority_queueISt4pairIfjESt6vectorIS6_SaIS6_EENS1_14CompareByFirstEEib.isra.0
	ldr	x1, [sp, 176]
	mov	w24, w0
.L1447:
	cbz	x1, .L1516
	mov	x0, x1
	bl	_ZdlPv
.L1516:
	ldr	x2, [sp, 144]
.L1438:
	cbz	x2, .L1457
	mov	x0, x2
	bl	_ZdlPv
.L1457:
	ldr	w0, [sp, 120]
	sub	w0, w0, #1
	str	w0, [sp, 120]
	cmn	w0, #1
	bne	.L1437
.L1421:
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
.L1475:
	.cfi_restore_state
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s0, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L1445
	mov	x4, x5
	b	.L1443
	.p2align 2,,3
.L1476:
	sub	x2, x0, #1
	ldr	w6, [x5, 4]
	str	s1, [x3, x1]
	mov	x1, x0
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x0, x2, 1
	cmp	x1, 0
	bgt	.L1455
	mov	x4, x5
	ldr	x0, [x19, 72]
	str	s0, [x4]
	str	w8, [x4, 4]
	cmp	x0, x7
	bcs	.L1449
.L1523:
	add	x0, sp, 176
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	b	.L1449
	.p2align 2,,3
.L1440:
	add	x0, sp, 176
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x1, [sp, 184]
	b	.L1441
.L1442:
	sub	x2, x2, #8
	add	x4, x3, x2
	b	.L1443
.L1450:
	add	x3, sp, 124
	add	x2, sp, 140
	add	x0, sp, 176
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE104:
	ldr	x0, [sp, 184]
	ldr	w8, [x0, -4]
	ldr	s0, [x0, -8]
	b	.L1451
.L1452:
	sub	x0, x2, #8
	add	x4, x3, x0
	b	.L1453
.L1519:
.LEHB105:
	bl	_ZSt20__throw_system_errori
.L1518:
	mov	w0, 1
	bl	_ZSt20__throw_system_errori
.LEHE105:
.L1436:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC28
	mov	x19, x0
	add	x1, x1, :lo12:.LC28
.LEHB106:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE106:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x19
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB107:
	bl	__cxa_throw
.LEHE107:
.L1473:
	ldr	x1, [sp, 176]
	mov	x19, x0
	cbz	x1, .L1463
	mov	x0, x1
	bl	_ZdlPv
.L1463:
	ldr	x0, [sp, 144]
	cbz	x0, .L1517
	bl	_ZdlPv
	b	.L1517
.L1471:
	ldrb	w1, [sp, 184]
	mov	x19, x0
	cbz	w1, .L1517
	add	x0, sp, 176
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L1517
.L1472:
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	bl	__cxa_free_exception
.L1517:
	mov	x0, x19
.LEHB108:
	bl	_Unwind_Resume
.LEHE108:
	.cfi_endproc
.LFE11517:
	.section	.gcc_except_table
.LLSDA11517:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11517-.LLSDACSB11517
.LLSDACSB11517:
	.uleb128 .LEHB101-.LFB11517
	.uleb128 .LEHE101-.LEHB101
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB102-.LFB11517
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L1471-.LFB11517
	.uleb128 0
	.uleb128 .LEHB103-.LFB11517
	.uleb128 .LEHE103-.LEHB103
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB104-.LFB11517
	.uleb128 .LEHE104-.LEHB104
	.uleb128 .L1473-.LFB11517
	.uleb128 0
	.uleb128 .LEHB105-.LFB11517
	.uleb128 .LEHE105-.LEHB105
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB106-.LFB11517
	.uleb128 .LEHE106-.LEHB106
	.uleb128 .L1472-.LFB11517
	.uleb128 0
	.uleb128 .LEHB107-.LFB11517
	.uleb128 .LEHE107-.LEHB107
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB108-.LFB11517
	.uleb128 .LEHE108-.LEHB108
	.uleb128 0
	.uleb128 0
.LLSDACSE11517:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii, .-_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii
	.section	.text._ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm,"axG",@progbits,_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm
	.type	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm, %function
_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm:
.LFB12283:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12283
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
	beq	.L1546
	mov	x20, x2
	mov	x0, 1152921504606846975
	cmp	x1, x0
	bhi	.L1547
	lsl	x22, x1, 3
	mov	x0, x22
.LEHB109:
	bl	_Znwm
	mov	x20, x0
	mov	x2, x22
	mov	w1, 0
	bl	memset
	add	x8, x21, 48
.L1526:
	ldr	x4, [x21, 16]
	str	xzr, [x21, 16]
	cbz	x4, .L1528
	add	x7, x21, 16
	mov	x6, 0
	.p2align 3,,7
.L1529:
	ldr	w5, [x4, 8]
	mov	x3, x4
	ldr	x4, [x4]
	udiv	x2, x5, x19
	msub	x2, x2, x19, x5
	ldr	x1, [x20, x2, lsl 3]
	cbz	x1, .L1548
	ldr	x0, [x1]
	str	x0, [x3]
	ldr	x0, [x20, x2, lsl 3]
	str	x3, [x0]
	cbnz	x4, .L1529
.L1528:
	ldr	x0, [x21]
	cmp	x0, x8
	beq	.L1532
	bl	_ZdlPv
.L1532:
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
.L1548:
	.cfi_restore_state
	ldr	x0, [x21, 16]
	str	x0, [x3]
	str	x3, [x21, 16]
	str	x7, [x20, x2, lsl 3]
	ldr	x0, [x3]
	cbz	x0, .L1535
	str	x3, [x20, x6, lsl 3]
	mov	x6, x2
	cbnz	x4, .L1529
	b	.L1528
	.p2align 2,,3
.L1535:
	mov	x6, x2
	cbnz	x4, .L1529
	b	.L1528
	.p2align 2,,3
.L1546:
	mov	x20, x0
	str	xzr, [x20, 48]!
	mov	x8, x20
	b	.L1526
.L1547:
	bl	_ZSt17__throw_bad_allocv
.LEHE109:
.L1536:
	bl	__cxa_begin_catch
	ldr	x0, [x20]
	str	x0, [x21, 40]
.LEHB110:
	bl	__cxa_rethrow
.LEHE110:
.L1537:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB111:
	bl	_Unwind_Resume
.LEHE111:
	.cfi_endproc
.LFE12283:
	.section	.gcc_except_table
	.align	2
.LLSDA12283:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT12283-.LLSDATTD12283
.LLSDATTD12283:
	.byte	0x1
	.uleb128 .LLSDACSE12283-.LLSDACSB12283
.LLSDACSB12283:
	.uleb128 .LEHB109-.LFB12283
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L1536-.LFB12283
	.uleb128 0x1
	.uleb128 .LEHB110-.LFB12283
	.uleb128 .LEHE110-.LEHB110
	.uleb128 .L1537-.LFB12283
	.uleb128 0
	.uleb128 .LEHB111-.LFB12283
	.uleb128 .LEHE111-.LEHB111
	.uleb128 0
	.uleb128 0
.LLSDACSE12283:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT12283:
	.section	.text._ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm,"axG",@progbits,_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm,comdat
	.size	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm, .-_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm
	.section	.text._ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf,comdat
	.align	2
	.p2align 4,,11
	.type	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0, %function
_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0:
.LFB12718:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12718
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
	cbz	x8, .L1550
	ldr	x4, [x8]
	ldr	w5, [x4, 8]
	cmp	w1, w5
	beq	.L1551
.L1575:
	ldr	x6, [x4]
	cbz	x6, .L1550
	ldr	w5, [x6, 8]
	mov	x8, x4
	uxtw	x9, w5
	udiv	x4, x9, x7
	msub	x4, x4, x7, x9
	cmp	x0, x4
	bne	.L1550
	mov	x4, x6
	cmp	w1, w5
	bne	.L1575
.L1551:
	ldr	x0, [x8]
	mov	x21, 0
	cbz	x0, .L1550
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
.L1550:
	.cfi_restore_state
	mov	x0, 16
.LEHB112:
	bl	_Znwm
.LEHE112:
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
.LEHB113:
	bl	_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm
	tst	w0, 255
	bne	.L1576
	ldr	x0, [x19]
	add	x2, x0, x22
	ldr	x1, [x0, x22]
	cbz	x1, .L1555
.L1577:
	ldr	x1, [x1]
	str	x1, [x23]
	ldr	x0, [x0, x22]
	str	x23, [x0]
.L1556:
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
.L1576:
	.cfi_restore_state
	add	x2, sp, 88
	mov	x0, x19
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm
.LEHE113:
	ldr	x0, [x19, 8]
	udiv	x22, x20, x0
	msub	x22, x22, x0, x20
	ldr	x0, [x19]
	lsl	x22, x22, 3
	add	x2, x0, x22
	ldr	x1, [x0, x22]
	cbnz	x1, .L1577
.L1555:
	ldr	x1, [x19, 16]
	str	x1, [x23]
	str	x23, [x19, 16]
	cbz	x1, .L1557
	ldr	w4, [x1, 8]
	ldr	x3, [x19, 8]
	udiv	x1, x4, x3
	msub	x1, x1, x3, x4
	str	x23, [x0, x1, lsl 3]
.L1557:
	add	x0, x19, 16
	str	x0, [x2]
	b	.L1556
.L1560:
	mov	x19, x0
	mov	x0, x23
	bl	_ZdlPv
	mov	x0, x19
.LEHB114:
	bl	_Unwind_Resume
.LEHE114:
	.cfi_endproc
.LFE12718:
	.section	.gcc_except_table
.LLSDA12718:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12718-.LLSDACSB12718
.LLSDACSB12718:
	.uleb128 .LEHB112-.LFB12718
	.uleb128 .LEHE112-.LEHB112
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB113-.LFB12718
	.uleb128 .LEHE113-.LEHB113
	.uleb128 .L1560-.LFB12718
	.uleb128 0
	.uleb128 .LEHB114-.LFB12718
	.uleb128 .LEHE114-.LEHB114
	.uleb128 0
	.uleb128 0
.LLSDACSE12718:
	.section	.text._ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf,comdat
	.size	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0, .-_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf
	.type	_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf, %function
_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf:
.LFB11166:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11166
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
	beq	.L1701
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -264
	.cfi_offset 25, -272
.L1579:
	ldr	x0, [x19, 272]
	ldr	w25, [x0, w1, uxtw 2]
	tbnz	w25, #31, .L1581
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
.L1585:
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
.LEHB115:
	bl	_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji
.LEHE115:
	ldp	x0, x1, [sp, 168]
	cmp	x0, x1
	bne	.L1582
	cbz	x0, .L1584
.L1696:
	bl	_ZdlPv
.L1584:
	add	x0, sp, 280
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	add	x0, sp, 224
	add	x24, x24, 1
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	ldr	w1, [sp, 156]
	cmp	w25, w24
	bge	.L1585
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
.L1581:
	mov	w3, w1
	ldr	w5, [sp, 140]
	ldr	w2, [sp, 152]
	mov	w4, w25
	ldr	x1, [sp, 144]
	mov	x0, x19
.LEHB116:
	bl	_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii
.LEHE116:
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
.L1578:
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
.L1582:
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
.LEHB117:
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0
	ldp	x21, x23, [sp, 168]
	cmp	x23, x21
	beq	.L1597
	mov	x27, 5
	mov	w0, 1065353215
	movk	x27, 0x2, lsl 32
	fmov	s10, w0
	.p2align 3,,7
.L1596:
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
	bge	.L1641
	fadd	s0, s0, s1
.L1589:
	fcmpe	s8, s0
	bmi	.L1592
	mov	x1, x21
	add	x0, sp, 280
	mov	x2, 1
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0
	ldr	w1, [x21]
	add	x8, sp, 192
	mov	w2, w28
	mov	x0, x19
	bl	_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji
.LEHE117:
	ldp	x0, x22, [sp, 192]
	cmp	x22, x0
	beq	.L1593
	mov	x20, x0
	.p2align 3,,7
.L1594:
	mov	x1, x20
	add	x0, sp, 224
	mov	x2, 1
.LEHB118:
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0
.LEHE118:
	add	x20, x20, 4
	cmp	x22, x20
	bne	.L1594
	ldr	x0, [sp, 192]
.L1593:
	cbz	x0, .L1592
	bl	_ZdlPv
	.p2align 3,,7
.L1592:
	add	x21, x21, 4
	cmp	x23, x21
	bne	.L1596
.L1597:
	ldr	x21, [sp, 296]
	cbz	x21, .L1588
	sub	x28, x24, #1
	.p2align 3,,7
.L1587:
	ldp	x2, x4, [sp, 224]
	ldr	w0, [x21, 8]
	uxtw	x1, w0
	udiv	x5, x1, x4
	msub	x5, x5, x4, x1
	ldr	x6, [x2, x5, lsl 3]
	stp	xzr, xzr, [sp, 192]
	str	xzr, [sp, 208]
	cbz	x6, .L1697
	ldr	x1, [x6]
	ldr	w2, [x1, 8]
	cmp	w2, w0
	beq	.L1601
.L1702:
	ldr	x3, [x1]
	cbz	x3, .L1697
	ldr	w2, [x3, 8]
	mov	x6, x1
	uxtw	x7, w2
	udiv	x1, x7, x4
	msub	x1, x1, x4, x7
	cmp	x5, x1
	bne	.L1697
	mov	x1, x3
	cmp	w2, w0
	bne	.L1702
.L1601:
	ldr	x2, [x6]
	ldr	x1, [sp, 248]
	sub	x22, x1, #1
	cbz	x2, .L1600
.L1603:
	ldr	x1, [x19, 72]
	ldr	x20, [sp, 240]
	cmp	x1, x22
	csel	x22, x1, x22, ls
	cbnz	x20, .L1622
	b	.L1604
	.p2align 2,,3
.L1607:
	ldr	s1, [x3]
	fcmpe	s1, s0
	bgt	.L1649
.L1614:
	ldr	x20, [x20]
	cbz	x20, .L1604
.L1606:
	ldr	w0, [x21, 8]
.L1622:
	ldr	w1, [x20, 8]
	add	x23, x20, 8
	cmp	w1, w0
	beq	.L1614
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
.LEHB119:
	blr	x6
	ldp	x3, x1, [sp, 192]
	str	s0, [sp, 164]
	sub	x0, x1, x3
	cmp	x22, x0, asr 3
	bls	.L1607
	ldr	x0, [sp, 208]
	cmp	x1, x0
	beq	.L1608
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
	ble	.L1610
	.p2align 3,,7
.L1613:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s1, [x3, x2]
	fcmpe	s1, s0
	bmi	.L1648
	str	w7, [x4, 4]
	str	s0, [x4]
.L1705:
	ldr	x20, [x20]
	cbnz	x20, .L1606
.L1604:
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
	cbz	x23, .L1703
	adrp	x1, .LC5
	ldr	x27, [x1, #:lo12:.LC5]
	cbz	x27, .L1625
	mov	x0, x23
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1626
	ldr	w0, [x21, 8]
.L1625:
	cbnz	x24, .L1627
	ldr	x2, [x19, 24]
	ldr	x1, [x19, 240]
	ldr	x22, [x19, 256]
	madd	x0, x0, x2, x1
	add	x22, x22, x0
.L1628:
	ldp	x0, x20, [sp, 192]
	sub	x20, x20, x0
	asr	x20, x20, 3
	strh	w20, [x22]
	cbz	x20, .L1629
	mov	x26, 0
	b	.L1630
	.p2align 2,,3
.L1704:
	ldr	x0, [sp, 192]
.L1630:
	add	x26, x26, 1
	ldr	w2, [x0, 4]
	add	x0, sp, 192
	str	w2, [x22, x26, lsl 2]
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	cmp	x20, x26
	bne	.L1704
.L1629:
	cbz	x27, .L1631
	mov	x0, x23
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L1631:
	ldr	x0, [sp, 192]
	cbz	x0, .L1632
	bl	_ZdlPv
.L1632:
	ldr	x21, [x21]
	cbnz	x21, .L1587
.L1588:
	ldr	x0, [sp, 168]
	cbnz	x0, .L1696
	b	.L1584
	.p2align 2,,3
.L1648:
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s1, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L1613
	mov	x4, x5
	str	s0, [x4]
	str	w7, [x4, 4]
	b	.L1705
	.p2align 2,,3
.L1649:
	add	x0, sp, 192
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x1, x0, [sp, 200]
	cmp	x1, x0
	beq	.L1616
	ldr	s1, [sp, 164]
	add	x0, x1, 8
	ldr	w7, [x20, 8]
	str	w7, [x1, 4]
	str	s1, [x1]
	str	x0, [sp, 200]
.L1617:
	ldr	x3, [sp, 192]
	sub	x2, x0, x3
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L1618
	.p2align 3,,7
.L1621:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s0, [x3, x2]
	fcmpe	s0, s1
	bmi	.L1650
	str	s1, [x4]
	str	w7, [x4, 4]
	b	.L1614
	.p2align 2,,3
.L1650:
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s0, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L1621
	mov	x4, x5
	str	s1, [x4]
	str	w7, [x4, 4]
	b	.L1614
	.p2align 2,,3
.L1627:
	ldr	x1, [x19, 264]
	ldr	x22, [x19, 32]
	ldr	x0, [x1, x0, lsl 3]
	madd	x22, x28, x22, x0
	b	.L1628
.L1697:
	ldr	x1, [sp, 248]
.L1600:
	mov	x22, x1
	b	.L1603
	.p2align 2,,3
.L1608:
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
	bgt	.L1613
.L1610:
	sub	x0, x2, #8
	add	x4, x3, x0
	str	s0, [x4]
	str	w7, [x4, 4]
	b	.L1705
	.p2align 2,,3
.L1616:
	mov	x3, x23
	add	x2, sp, 164
	add	x0, sp, 192
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x0, [sp, 200]
	ldr	w7, [x0, -4]
	ldr	s1, [x0, -8]
	b	.L1617
.L1641:
	fmov	s0, s10
	b	.L1589
.L1618:
	sub	x0, x2, #8
	add	x4, x3, x0
	str	s1, [x4]
	str	w7, [x4, 4]
	b	.L1614
.L1701:
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
	beq	.L1578
	ldr	w1, [sp, 156]
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -264
	.cfi_offset 25, -272
	b	.L1579
.L1703:
	.cfi_offset 21, -304
	.cfi_offset 22, -296
	.cfi_offset 23, -288
	.cfi_offset 24, -280
	.cfi_offset 27, -256
	.cfi_offset 28, -248
	.cfi_offset 74, -224
	mov	w0, 1
	bl	_ZSt20__throw_system_errori
.L1626:
	bl	_ZSt20__throw_system_errori
.LEHE119:
.L1647:
.L1700:
	ldr	x1, [sp, 192]
	mov	x19, x0
	cbz	x1, .L1635
	mov	x0, x1
	bl	_ZdlPv
.L1635:
	ldr	x0, [sp, 168]
	cbz	x0, .L1639
	bl	_ZdlPv
.L1639:
	add	x0, sp, 280
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	add	x0, sp, 224
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	mov	x0, x19
.LEHB120:
	bl	_Unwind_Resume
.LEHE120:
.L1644:
	mov	x19, x0
	b	.L1639
.L1646:
	b	.L1700
.L1645:
	mov	x19, x0
	b	.L1635
	.cfi_endproc
.LFE11166:
	.section	.gcc_except_table
.LLSDA11166:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11166-.LLSDACSB11166
.LLSDACSB11166:
	.uleb128 .LEHB115-.LFB11166
	.uleb128 .LEHE115-.LEHB115
	.uleb128 .L1644-.LFB11166
	.uleb128 0
	.uleb128 .LEHB116-.LFB11166
	.uleb128 .LEHE116-.LEHB116
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB117-.LFB11166
	.uleb128 .LEHE117-.LEHB117
	.uleb128 .L1645-.LFB11166
	.uleb128 0
	.uleb128 .LEHB118-.LFB11166
	.uleb128 .LEHE118-.LEHB118
	.uleb128 .L1646-.LFB11166
	.uleb128 0
	.uleb128 .LEHB119-.LFB11166
	.uleb128 .LEHE119-.LEHB119
	.uleb128 .L1647-.LFB11166
	.uleb128 0
	.uleb128 .LEHB120-.LFB11166
	.uleb128 .LEHE120-.LEHB120
	.uleb128 0
	.uleb128 0
.LLSDACSE11166:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf, .-_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf
	.section	.rodata._ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi.str1.8,"aMS",@progbits,1
	.align	3
.LC29:
	.string	"Can't use addPoint to update deleted elements if replacement of deleted elements is enabled."
	.align	3
.LC30:
	.string	"The requested to undelete element is not deleted"
	.align	3
.LC31:
	.string	"The number of elements exceeds the specified limit"
	.align	3
.LC32:
	.string	"Not enough memory: addPoint failed to allocate linklist"
	.align	3
.LC33:
	.string	"cand error"
	.align	3
.LC34:
	.string	"Level error"
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi
	.type	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi, %function
_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi:
.LFB11150:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11150
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
	cbz	x26, .L1707
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1947
.L1707:
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
	cbz	x7, .L1708
	ldr	x2, [x7]
	ldr	x1, [x2, 8]
	cmp	x6, x1
	beq	.L1709
.L1948:
	ldr	x3, [x2]
	cbz	x3, .L1708
	ldr	x1, [x3, 8]
	mov	x7, x2
	udiv	x2, x1, x4
	msub	x2, x2, x4, x1
	cmp	x5, x2
	bne	.L1708
	mov	x2, x3
	cmp	x6, x1
	bne	.L1948
.L1709:
	ldr	x1, [x7]
	cbz	x1, .L1708
	ldrb	w0, [x19, 456]
	ldr	w27, [x1, 16]
	uxtw	x20, w27
	cbz	w0, .L1949
	ldr	x0, [x19, 24]
	ldr	x2, [x19, 256]
	ldr	x1, [x19, 240]
	madd	x0, x20, x0, x2
	add	x0, x0, x1
	ldrb	w0, [x0, 2]
	tbnz	x0, 0, .L1950
	ldr	x0, [sp, 208]
	cbz	x0, .L1724
	cbz	x26, .L1717
.L1964:
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L1717:
	strb	wzr, [sp, 216]
.L1716:
	ldr	x0, [x19, 24]
	ldr	x2, [x19, 256]
	ldr	x1, [x19, 240]
	madd	x0, x20, x0, x2
	add	x0, x0, x1
	ldrb	w0, [x0, 2]
	tbz	x0, 0, .L1724
	str	w27, [sp, 192]
	add	x0, x19, 16
	ldar	x0, [x0]
	cmp	x0, x20
	bls	.L1951
	ldr	w1, [sp, 192]
	ldr	x3, [x19, 24]
	ldr	x2, [x19, 240]
	ldr	x0, [x19, 256]
	madd	x1, x1, x3, x2
	add	x0, x0, x1
	ldrb	w1, [x0, 2]
	tbz	x1, 0, .L1720
	and	w1, w1, -2
	strb	w1, [x0, 2]
	add	x0, x19, 40
.L1971:
	ldaxr	x1, [x0]
	sub	x1, x1, #1
	stlxr	w2, x1, [x0]
	cbnz	w2, .L1971
	ldrb	w0, [x19, 456]
	cbnz	w0, .L1952
.L1724:
	fmov	s0, 1.0e+0
	mov	x1, x23
	mov	x0, x19
	mov	w2, w27
.LEHB121:
	bl	_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf
	ldrb	w0, [sp, 216]
	cbnz	w0, .L1953
.L1706:
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
.L1708:
	.cfi_restore_state
	add	x1, x19, 16
	ldar	x2, [x1]
	ldr	x3, [x19, 8]
	cmp	x3, x2
	bls	.L1954
	ldar	x20, [x1]
	str	x20, [sp, 144]
	mov	w27, w20
.L1970:
	ldaxr	x2, [x1]
	add	x2, x2, 1
	stlxr	w3, x2, [x1]
	cbnz	w3, .L1970
	add	x1, sp, 152
	bl	_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_
.LEHE121:
	ldrb	w1, [sp, 216]
	str	w20, [x0]
	cbnz	w1, .L1955
.L1729:
	ldr	x2, [sp, 144]
	strb	wzr, [sp, 184]
	ldr	x1, [x19, 192]
	and	x20, x2, 4294967295
	ubfiz	x0, x2, 1, 32
	add	x0, x0, x2, uxtw
	add	x0, x1, x0, lsl 4
	str	x0, [sp, 176]
	cbz	x0, .L1956
	cbz	x26, .L1731
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1957
.L1731:
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
	bge	.L1795
	fadd	d0, d0, d4
.L1732:
	bl	log
	ldr	w0, [sp, 128]
	cmp	w0, 0
	bgt	.L1733
	fnmul	d0, d0, d8
	fcvtzs	w0, d0
	str	w0, [sp, 128]
.L1733:
	ldr	x1, [x19, 272]
	add	x0, x19, 144
	ldr	w2, [sp, 128]
	str	w2, [x1, x20, lsl 2]
	str	x0, [sp, 192]
	strb	wzr, [sp, 200]
	cbz	x26, .L1735
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1958
.L1735:
	ldr	w0, [x19, 104]
	mov	w1, w0
	mov	w0, 1
	str	w1, [sp, 136]
	strb	w0, [sp, 200]
	mov	w0, w1
	ldr	w1, [sp, 128]
	cmp	w0, w1
	blt	.L1736
	ldr	x0, [sp, 192]
	cbz	x0, .L1736
	cbz	x26, .L1737
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L1737:
	strb	wzr, [sp, 200]
.L1736:
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
	cbnz	w0, .L1959
.L1738:
	cmn	w24, #1
	beq	.L1740
	ldr	w0, [sp, 128]
	ldr	w20, [sp, 136]
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -200
	.cfi_offset 21, -208
	ldr	x4, [x19, 24]
	ldr	x3, [x19, 256]
	cmp	w20, w0
	ble	.L1741
	ldr	x6, [x19, 232]
	uxtw	x1, w24
	ldp	x5, x2, [x19, 304]
	mov	x0, x23
	madd	x1, x1, x4, x6
	add	x1, x3, x1
.LEHB122:
	blr	x5
.LEHE122:
	sxtw	x0, w20
	fmov	s8, s0
	sub	x0, x0, #1
	add	x28, x19, 192
	str	x0, [sp, 120]
	sub	w0, w20, #1
	str	w0, [sp, 132]
	.p2align 3,,7
.L1753:
	ldr	w0, [sp, 132]
	str	w0, [sp, 140]
	.p2align 3,,7
.L1751:
	ldr	x0, [x28]
	mov	w1, 48
	strb	wzr, [sp, 216]
	umaddl	x0, w24, w1, x0
	str	x0, [sp, 208]
	cbz	x0, .L1960
	cbz	x26, .L1743
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1961
.L1743:
	mov	w1, 1
	strb	w1, [sp, 216]
	ldr	x0, [x19, 32]
	ldr	x2, [sp, 120]
	ldr	x1, [x19, 264]
	mul	x0, x2, x0
	ldr	x1, [x1, w24, uxtw 3]
	add	x20, x1, x0
	ldrh	w22, [x1, x0]
	cbz	w22, .L1744
	sub	w22, w22, #1
	add	x0, x20, 8
	add	x20, x20, 4
	mov	w25, 0
	add	x22, x0, x22, uxtw 2
	.p2align 3,,7
.L1748:
	ldr	w21, [x20]
	ldr	x0, [x19, 8]
	uxtw	x1, w21
	cmp	x1, x0
	bhi	.L1962
	ldr	x5, [x19, 24]
	mov	x0, x23
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	madd	x1, x1, x5, x4
	ldr	x4, [x19, 256]
	add	x1, x4, x1
.LEHB123:
	blr	x3
.LEHE123:
	fcmpe	s0, s8
	bmi	.L1810
.L1746:
	add	x20, x20, 4
	cmp	x22, x20
	bne	.L1748
	ldrb	w0, [sp, 216]
	cbnz	w0, .L1963
.L1749:
	cbnz	w25, .L1751
.L1792:
	ldr	w0, [sp, 132]
	ldr	w1, [sp, 140]
	sub	w0, w0, #1
	str	w0, [sp, 132]
	ldr	x0, [sp, 120]
	sub	x0, x0, #1
	str	x0, [sp, 120]
	ldr	w0, [sp, 128]
	cmp	w0, w1
	blt	.L1753
	ldr	w0, [sp, 168]
	ldr	x3, [x19, 24]
	ldr	x2, [x19, 256]
	ldr	x1, [x19, 240]
	madd	x0, x0, x3, x2
	add	x0, x0, x1
	ldrb	w21, [x0, 2]
	ldr	w0, [sp, 128]
	and	w21, w21, 1
	tbnz	w0, #31, .L1943
	mov	w20, w0
	b	.L1758
.L1949:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 72
	ldr	x0, [sp, 208]
	cbz	x0, .L1716
	cbnz	x26, .L1964
	b	.L1717
.L1953:
	ldr	x0, [sp, 208]
	cbz	x0, .L1706
	cbz	x26, .L1706
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
.L1952:
	.cfi_restore_state
	add	x20, x19, 464
	cbz	x26, .L1722
	mov	x0, x20
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1965
.L1722:
	add	x2, sp, 192
	add	x0, x19, 512
	mov	w1, 0
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj
	cbz	x26, .L1724
	mov	x0, x20
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L1724
.L1955:
	ldr	x0, [sp, 208]
	cbz	x0, .L1729
	cbz	x26, .L1729
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L1729
	.p2align 2,,3
.L1963:
	.cfi_offset 21, -208
	.cfi_offset 22, -200
	.cfi_offset 72, -144
	ldr	x0, [sp, 208]
	cbz	x0, .L1749
.L1793:
	cbz	x26, .L1749
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	cbnz	w25, .L1751
	b	.L1792
	.p2align 2,,3
.L1810:
	fmov	s8, s0
	mov	w24, w21
	mov	w25, 1
	b	.L1746
	.p2align 2,,3
.L1744:
	ldr	x0, [sp, 208]
	cbz	x0, .L1792
	mov	w25, 0
	b	.L1793
.L1741:
	ldr	w0, [sp, 168]
	ldr	x1, [x19, 240]
	ldr	w2, [sp, 136]
	madd	x0, x0, x4, x3
	mov	w20, w2
	add	x0, x0, x1
	ldrb	w21, [x0, 2]
	and	w21, w21, 1
	tbnz	w2, #31, .L1944
	.p2align 3,,7
.L1758:
	mov	w1, w24
	add	x8, sp, 208
	mov	w3, w20
	mov	x2, x23
	mov	x0, x19
.LEHB124:
	bl	_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi
.LEHE124:
	cbz	w21, .L1760
	ldr	w1, [sp, 168]
	mov	x0, x23
	ldr	x5, [x19, 24]
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	madd	x1, x1, x5, x4
	ldr	x4, [x19, 256]
	add	x1, x4, x1
.LEHB125:
	blr	x3
	ldp	x1, x0, [sp, 216]
	str	s0, [sp, 172]
	cmp	x1, x0
	beq	.L1761
	ldr	w8, [sp, 168]
	add	x0, x1, 8
	str	s0, [x1]
	str	w8, [x1, 4]
	str	x0, [sp, 216]
.L1762:
	ldr	x3, [sp, 208]
	sub	x2, x0, x3
	asr	x7, x2, 3
	sub	x0, x7, #2
	sub	x1, x7, #1
	add	x0, x0, x0, lsr 63
	asr	x0, x0, 1
	cmp	x1, 0
	ble	.L1763
	.p2align 3,,7
.L1766:
	lsl	x2, x0, 3
	lsl	x1, x1, 3
	add	x5, x3, x2
	add	x4, x3, x1
	ldr	s1, [x3, x2]
	fcmpe	s1, s0
	bmi	.L1811
.L1764:
	ldr	x0, [x19, 72]
	str	s0, [x4]
	str	w8, [x4, 4]
	cmp	x0, x7
	bcc	.L1966
.L1760:
	mov	w3, w20
	add	x2, sp, 208
	mov	w1, w27
	mov	x0, x19
	mov	w4, 0
	bl	_ZN7hnswlib15HierarchicalNSWIfE25mutuallyConnectNewElementEPKvjRSt14priority_queueISt4pairIfjESt6vectorIS6_SaIS6_EENS1_14CompareByFirstEEib.isra.0
.LEHE125:
	ldr	x1, [sp, 208]
	mov	w24, w0
	cbz	x1, .L1768
	mov	x0, x1
	bl	_ZdlPv
.L1768:
	subs	w20, w20, #1
	bmi	.L1944
	ldr	w0, [sp, 136]
	cmp	w0, w20
	bge	.L1758
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC34
	mov	x20, x0
	add	x1, x1, :lo12:.LC34
.LEHB126:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE126:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB127:
	bl	__cxa_throw
.LEHE127:
	.p2align 2,,3
.L1811:
	sub	x2, x0, #1
	ldr	w6, [x5, 4]
	str	s1, [x3, x1]
	mov	x1, x0
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x0, x2, 1
	cmp	x1, 0
	bgt	.L1766
	mov	x4, x5
	ldr	x0, [x19, 72]
	str	s0, [x4]
	str	w8, [x4, 4]
	cmp	x0, x7
	bcs	.L1760
.L1966:
	add	x0, sp, 208
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	b	.L1760
.L1944:
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
.L1755:
	ldr	w0, [sp, 128]
	ldr	w1, [sp, 136]
	cmp	w1, w0
	bge	.L1772
	str	w0, [x19, 104]
	ldr	w0, [sp, 144]
	str	w0, [x19, 216]
.L1772:
	ldrb	w0, [sp, 200]
	cbnz	w0, .L1967
.L1773:
	ldrb	w0, [sp, 184]
	cbnz	w0, .L1968
.L1942:
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
.L1968:
	.cfi_restore_state
	ldr	x0, [sp, 176]
	cbz	x0, .L1942
	cbz	x26, .L1942
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	ldr	d8, [sp, 96]
	.cfi_restore 72
	b	.L1706
.L1761:
	.cfi_offset 21, -208
	.cfi_offset 22, -200
	.cfi_offset 72, -144
	add	x3, sp, 168
	add	x2, sp, 172
	add	x0, sp, 208
.LEHB128:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE128:
	ldr	x0, [sp, 216]
	ldr	w8, [x0, -4]
	ldr	s0, [x0, -8]
	b	.L1762
.L1967:
	.cfi_restore 21
	.cfi_restore 22
	ldr	x0, [sp, 192]
	cbz	x0, .L1773
	cbz	x26, .L1773
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L1773
.L1740:
	ldr	w0, [sp, 128]
	str	w0, [x19, 104]
	str	wzr, [x19, 216]
	b	.L1755
.L1959:
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
	cbz	x0, .L1969
	mov	x2, x21
	mov	w1, 0
	bl	memset
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	b	.L1738
.L1943:
	.cfi_offset 21, -208
	.cfi_offset 22, -200
	ldp	x21, x22, [sp, 32]
	.cfi_remember_state
	.cfi_restore 22
	.cfi_restore 21
	b	.L1772
.L1763:
	.cfi_restore_state
	sub	x0, x2, #8
	add	x4, x3, x0
	b	.L1764
.L1795:
	.cfi_restore 21
	.cfi_restore 22
	mov	x0, 4607182418800017407
	fmov	d0, x0
	b	.L1732
.L1958:
.LEHB129:
	bl	_ZSt20__throw_system_errori
.LEHE129:
.L1957:
	.cfi_restore 72
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -200
	.cfi_offset 21, -208
	str	d8, [sp, 96]
	.cfi_offset 72, -144
.LEHB130:
	bl	_ZSt20__throw_system_errori
.LEHE130:
.L1961:
.LEHB131:
	bl	_ZSt20__throw_system_errori
.L1960:
	mov	w0, 1
	bl	_ZSt20__throw_system_errori
.LEHE131:
.L1947:
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
.LEHB132:
	bl	_ZSt20__throw_system_errori
.L1951:
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
.L1956:
	.cfi_restore_state
	mov	w0, 1
	stp	x21, x22, [sp, 32]
	.cfi_remember_state
	.cfi_offset 22, -200
	.cfi_offset 21, -208
	str	d8, [sp, 96]
	.cfi_offset 72, -144
	bl	_ZSt20__throw_system_errori
.LEHE132:
.L1965:
	.cfi_restore_state
.LEHB133:
	bl	_ZSt20__throw_system_errori
.LEHE133:
.L1808:
	.cfi_offset 21, -208
	.cfi_offset 22, -200
	.cfi_offset 72, -144
	ldr	x1, [sp, 208]
	mov	x19, x0
	cbz	x1, .L1778
	mov	x0, x1
	bl	_ZdlPv
	b	.L1778
.L1802:
	.cfi_restore 21
	.cfi_restore 22
	mov	x19, x0
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -200
	.cfi_offset 21, -208
.L1786:
	ldrb	w0, [sp, 184]
	cbz	w0, .L1787
	add	x0, sp, 176
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L1787:
	mov	x0, x19
.LEHB134:
	bl	_Unwind_Resume
.LEHE134:
.L1807:
.L1946:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
.L1778:
	ldrb	w0, [sp, 200]
	cbz	w0, .L1786
	add	x0, sp, 192
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L1786
.L1806:
	mov	x19, x0
.L1780:
	ldrb	w0, [sp, 216]
	cbz	w0, .L1778
	add	x0, sp, 208
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L1778
.L1962:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC33
	mov	x20, x0
	add	x1, x1, :lo12:.LC33
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
.L1805:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
	b	.L1780
.L1803:
	mov	x19, x0
	b	.L1778
.L1969:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC32
	mov	x20, x0
	add	x1, x1, :lo12:.LC32
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
.L1954:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 72
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC31
	mov	x20, x0
	add	x1, x1, :lo12:.LC31
.LEHB139:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE139:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB140:
	bl	__cxa_throw
.LEHE140:
.L1799:
	mov	x19, x0
	b	.L1726
.L1720:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC30
	mov	x20, x0
	add	x1, x1, :lo12:.LC30
.LEHB141:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE141:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB142:
	bl	__cxa_throw
.LEHE142:
.L1950:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC29
	mov	x20, x0
	add	x1, x1, :lo12:.LC29
.LEHB143:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE143:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB144:
	bl	__cxa_throw
.LEHE144:
.L1804:
	.cfi_offset 21, -208
	.cfi_offset 22, -200
	.cfi_offset 72, -144
	b	.L1946
.L1801:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 72
.L1945:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
.L1726:
	ldrb	w0, [sp, 216]
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -200
	.cfi_offset 21, -208
	str	d8, [sp, 96]
	.cfi_offset 72, -144
	cbz	w0, .L1787
	add	x0, sp, 208
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L1787
.L1809:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 72
	b	.L1945
.L1800:
	b	.L1945
	.cfi_endproc
.LFE11150:
	.section	.gcc_except_table
.LLSDA11150:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11150-.LLSDACSB11150
.LLSDACSB11150:
	.uleb128 .LEHB121-.LFB11150
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L1799-.LFB11150
	.uleb128 0
	.uleb128 .LEHB122-.LFB11150
	.uleb128 .LEHE122-.LEHB122
	.uleb128 .L1803-.LFB11150
	.uleb128 0
	.uleb128 .LEHB123-.LFB11150
	.uleb128 .LEHE123-.LEHB123
	.uleb128 .L1806-.LFB11150
	.uleb128 0
	.uleb128 .LEHB124-.LFB11150
	.uleb128 .LEHE124-.LEHB124
	.uleb128 .L1803-.LFB11150
	.uleb128 0
	.uleb128 .LEHB125-.LFB11150
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L1808-.LFB11150
	.uleb128 0
	.uleb128 .LEHB126-.LFB11150
	.uleb128 .LEHE126-.LEHB126
	.uleb128 .L1807-.LFB11150
	.uleb128 0
	.uleb128 .LEHB127-.LFB11150
	.uleb128 .LEHE127-.LEHB127
	.uleb128 .L1803-.LFB11150
	.uleb128 0
	.uleb128 .LEHB128-.LFB11150
	.uleb128 .LEHE128-.LEHB128
	.uleb128 .L1808-.LFB11150
	.uleb128 0
	.uleb128 .LEHB129-.LFB11150
	.uleb128 .LEHE129-.LEHB129
	.uleb128 .L1802-.LFB11150
	.uleb128 0
	.uleb128 .LEHB130-.LFB11150
	.uleb128 .LEHE130-.LEHB130
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB131-.LFB11150
	.uleb128 .LEHE131-.LEHB131
	.uleb128 .L1803-.LFB11150
	.uleb128 0
	.uleb128 .LEHB132-.LFB11150
	.uleb128 .LEHE132-.LEHB132
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB133-.LFB11150
	.uleb128 .LEHE133-.LEHB133
	.uleb128 .L1799-.LFB11150
	.uleb128 0
	.uleb128 .LEHB134-.LFB11150
	.uleb128 .LEHE134-.LEHB134
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB135-.LFB11150
	.uleb128 .LEHE135-.LEHB135
	.uleb128 .L1805-.LFB11150
	.uleb128 0
	.uleb128 .LEHB136-.LFB11150
	.uleb128 .LEHE136-.LEHB136
	.uleb128 .L1806-.LFB11150
	.uleb128 0
	.uleb128 .LEHB137-.LFB11150
	.uleb128 .LEHE137-.LEHB137
	.uleb128 .L1804-.LFB11150
	.uleb128 0
	.uleb128 .LEHB138-.LFB11150
	.uleb128 .LEHE138-.LEHB138
	.uleb128 .L1803-.LFB11150
	.uleb128 0
	.uleb128 .LEHB139-.LFB11150
	.uleb128 .LEHE139-.LEHB139
	.uleb128 .L1801-.LFB11150
	.uleb128 0
	.uleb128 .LEHB140-.LFB11150
	.uleb128 .LEHE140-.LEHB140
	.uleb128 .L1799-.LFB11150
	.uleb128 0
	.uleb128 .LEHB141-.LFB11150
	.uleb128 .LEHE141-.LEHB141
	.uleb128 .L1809-.LFB11150
	.uleb128 0
	.uleb128 .LEHB142-.LFB11150
	.uleb128 .LEHE142-.LEHB142
	.uleb128 .L1799-.LFB11150
	.uleb128 0
	.uleb128 .LEHB143-.LFB11150
	.uleb128 .LEHE143-.LEHB143
	.uleb128 .L1800-.LFB11150
	.uleb128 0
	.uleb128 .LEHB144-.LFB11150
	.uleb128 .LEHE144-.LEHB144
	.uleb128 .L1799-.LFB11150
	.uleb128 0
.LLSDACSE11150:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi, .-_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi
	.text
	.align	2
	.p2align 4,,11
	.type	_Z11build_indexPfmm._omp_fn.0, %function
_Z11build_indexPfmm._omp_fn.0:
.LFB12669:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12669
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
	blt	.L1973
.L1983:
	madd	w19, w23, w19, w1
	add	w23, w23, w19
	cmp	w19, w23
	bge	.L1972
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
	b	.L1982
	.p2align 2,,3
.L1979:
	add	w19, w19, 1
	add	x20, x20, x24
	add	x21, x21, 1
	cmp	w19, w23
	beq	.L2005
.L1982:
	ldr	x0, [x22]
	ldr	x4, [x0]
	cmp	x4, x25
	bne	.L1975
	ldr	x1, [x22, 120]
	and	w0, w19, 65535
	strb	wzr, [sp, 104]
	smaddl	x0, w0, w26, x1
	str	x0, [sp, 96]
	cbz	x0, .L2006
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	ldr	x1, [x1]
	cbz	x1, .L1977
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2007
.L1977:
	mov	x2, x21
	mov	x1, x20
	mov	x0, x22
	mov	w3, -1
	strb	w27, [sp, 104]
.LEHB145:
	bl	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi
.LEHE145:
	ldrb	w0, [sp, 104]
	cbz	w0, .L1979
	ldr	x0, [sp, 96]
	cbz	x0, .L1979
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	ldr	x1, [x1]
	cbz	x1, .L1979
	add	w19, w19, 1
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	add	x20, x20, x24
	add	x21, x21, 1
	cmp	w19, w23
	bne	.L1982
	.p2align 3,,7
.L2005:
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 80]
	.cfi_restore 28
	.cfi_restore 27
.L1972:
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
.L1975:
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
	b	.L1979
	.p2align 2,,3
.L1973:
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	add	w23, w23, 1
	mov	w1, 0
	b	.L1983
.L2006:
	.cfi_offset 25, -48
	.cfi_offset 26, -40
	.cfi_offset 27, -32
	.cfi_offset 28, -24
	mov	w0, 1
.LEHB146:
	bl	_ZSt20__throw_system_errori
.L2007:
	bl	_ZSt20__throw_system_errori
.LEHE146:
.L1984:
	ldrb	w1, [sp, 104]
	mov	x19, x0
	cbz	w1, .L1981
	add	x0, sp, 96
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L1981:
	mov	x0, x19
.LEHB147:
	bl	_Unwind_Resume
.LEHE147:
	.cfi_endproc
.LFE12669:
	.section	.gcc_except_table
.LLSDA12669:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12669-.LLSDACSB12669
.LLSDACSB12669:
	.uleb128 .LEHB145-.LFB12669
	.uleb128 .LEHE145-.LEHB145
	.uleb128 .L1984-.LFB12669
	.uleb128 0
	.uleb128 .LEHB146-.LFB12669
	.uleb128 .LEHE146-.LEHB146
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB147-.LFB12669
	.uleb128 .LEHE147-.LEHB147
	.uleb128 0
	.uleb128 0
.LLSDACSE12669:
	.text
	.size	_Z11build_indexPfmm._omp_fn.0, .-_Z11build_indexPfmm._omp_fn.0
	.section	.rodata.str1.8
	.align	3
.LC35:
	.string	"Not enough memory"
	.align	3
.LC36:
	.string	"Not enough memory: HierarchicalNSW failed to allocate linklists"
	.text
	.align	2
	.p2align 4,,11
	.global	_Z11build_indexPfmm
	.type	_Z11build_indexPfmm, %function
_Z11build_indexPfmm:
.LFB10397:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10397
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
.LEHB148:
	bl	_Znwm
.LEHE148:
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
.LEHB149:
	bl	_Znwm
.LEHE149:
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
	bhi	.L2138
	add	x23, x19, 192
	str	xzr, [x19, 192]
	add	x20, x21, x21, lsl 1
	stp	xzr, xzr, [x23, 8]
	lsl	x20, x20, 4
	cbz	x21, .L2010
	mov	x0, x20
.LEHB150:
	bl	_Znwm
.LEHE150:
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
.LEHB151:
	bl	_Znwm
.LEHE151:
	str	x0, [x19, 272]
	add	x20, x0, x23
	str	x20, [x22, 16]
	mov	x2, x23
	mov	w1, 0
	bl	memset
.L2067:
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
	cbz	x0, .L2139
	add	x0, x19, 16
	stlr	xzr, [x0]
	mov	x0, 136
.LEHB152:
	bl	_Znwm
.LEHE152:
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
.LEHB153:
	bl	_Znwm
.LEHE153:
	ldr	x1, [x20, 8]
	mov	x26, x0
	str	x26, [x20]
	mov	x0, 512
	sub	x1, x1, #1
	lsr	x1, x1, 1
	add	x3, x26, x1, lsl 3
	stp	x3, x1, [sp, 96]
.LEHB154:
	bl	_Znwm
.LEHE154:
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
.LEHB155:
	bl	_Znwm
.LEHE155:
	mov	x26, x0
	ldr	w1, [x20, 128]
	mov	w2, -1
	strh	w2, [x0]
	str	w1, [x26, 16]
	ubfiz	x0, x1, 1, 32
.LEHB156:
	bl	_Znam
.LEHE156:
	ldp	x1, x2, [x20, 16]
	str	x0, [x26, 8]
	cmp	x2, x1
	beq	.L2140
	mov	x0, x1
	str	x26, [x0, -8]!
	str	x0, [x20, 16]
.L2018:
	ldr	x26, [x19, 112]
	str	x20, [x19, 112]
	cbz	x26, .L2021
	add	x22, x26, 48
	add	x20, x26, 16
	.p2align 3,,7
.L2032:
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
	cbz	x0, .L2029
	sub	x3, x3, #8
	ldr	x23, [x1]
	cmp	x1, x3
	beq	.L2030
	add	x1, x1, 8
	str	x1, [x26, 16]
	cbz	x23, .L2032
.L2141:
	ldr	x0, [x23, 8]
	cbz	x0, .L2033
	bl	_ZdaPv
.L2033:
	mov	x0, x23
	bl	_ZdlPv
	b	.L2032
	.p2align 2,,3
.L2030:
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
	cbz	x23, .L2032
	b	.L2141
	.p2align 2,,3
.L2029:
	ldr	x0, [x26]
	cbz	x0, .L2034
	add	x20, x5, 8
	cmp	x23, x20
	bcs	.L2035
	.p2align 3,,7
.L2036:
	ldr	x0, [x23], 8
	bl	_ZdlPv
	cmp	x20, x23
	bhi	.L2036
	ldr	x0, [x26]
.L2035:
	bl	_ZdlPv
.L2034:
	mov	x0, x26
	bl	_ZdlPv
.L2021:
	ldr	x0, [x19, 8]
	mov	w1, -1
	str	w1, [x19, 104]
	str	w1, [x19, 216]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [x19, 264]
	cbz	x0, .L2142
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
	cbz	x0, .L2143
	adrp	x1, .LC5
	ldr	x20, [x1, #:lo12:.LC5]
	cbz	x20, .L2059
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2144
.L2059:
	mov	w4, 1
	mov	x1, x27
	mov	x0, x19
	mov	w3, -1
	mov	x2, 0
	strb	w4, [sp, 184]
.LEHB157:
	bl	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi
.LEHE157:
	ldrb	w0, [sp, 184]
	cbnz	w0, .L2145
.L2060:
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
.LEHB158:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
.LEHE158:
	add	x1, sp, 144
	mov	x0, x19
.LEHB159:
	blr	x20
.LEHE159:
	ldr	x0, [sp, 144]
	add	x1, sp, 160
	cmp	x0, x1
	beq	.L2008
	bl	_ZdlPv
.L2008:
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
.L2010:
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
	b	.L2067
	.p2align 2,,3
.L2145:
	ldr	x0, [sp, 176]
	cbz	x0, .L2060
	cbz	x20, .L2060
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L2060
	.p2align 2,,3
.L2140:
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
	beq	.L2016
	ldr	x0, [x20]
	cmp	x6, x0
	beq	.L2017
.L2019:
	mov	x0, 512
.LEHB160:
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
	b	.L2018
.L2017:
	mov	x0, x20
	mov	w2, 1
	mov	x1, 1
	bl	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb
	ldr	x0, [x20, 40]
	str	x0, [sp, 96]
	b	.L2019
.L2016:
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	bl	_ZSt20__throw_length_errorPKc
.LEHE160:
.L2143:
	mov	w0, 1
.LEHB161:
	bl	_ZSt20__throw_system_errori
.LEHE161:
.L2138:
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
.LEHB162:
	bl	_ZSt20__throw_length_errorPKc
.LEHE162:
.L2144:
.LEHB163:
	bl	_ZSt20__throw_system_errori
.LEHE163:
.L2081:
	ldrb	w1, [sp, 184]
	mov	x19, x0
	cbz	w1, .L2066
	add	x0, sp, 176
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L2066:
	mov	x0, x19
.LEHB164:
	bl	_Unwind_Resume
.LEHE164:
.L2074:
	mov	x1, x0
.L2023:
	mov	x0, x20
	mov	x20, x1
	bl	_ZdlPv
.L2041:
	mov	x0, x24
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	mov	x0, x28
	bl	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED1Ev
	ldr	x0, [x19, 272]
	cbz	x0, .L2044
	bl	_ZdlPv
.L2044:
	ldr	x0, [x19, 192]
	cbz	x0, .L2046
	bl	_ZdlPv
.L2046:
	ldr	x0, [x19, 120]
	cbz	x0, .L2048
	bl	_ZdlPv
.L2048:
	ldr	x21, [x19, 112]
	cbz	x21, .L2049
	add	x24, x21, 48
	add	x22, x21, 16
.L2053:
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
	cbz	x0, .L2050
	sub	x4, x4, #8
	ldr	x23, [x1]
	cmp	x1, x4
	beq	.L2051
	add	x1, x1, 8
	str	x1, [x21, 16]
	cbz	x23, .L2053
.L2148:
	ldr	x0, [x23, 8]
	cbz	x0, .L2054
	bl	_ZdaPv
.L2054:
	mov	x0, x23
	bl	_ZdlPv
	b	.L2053
.L2072:
	mov	x20, x0
	b	.L2041
.L2139:
	mov	x0, x20
	bl	__cxa_allocate_exception
	adrp	x1, .LC35
	mov	x21, x0
	add	x1, x1, :lo12:.LC35
.LEHB165:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE165:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x21
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB166:
	bl	__cxa_throw
.LEHE166:
.L2075:
.L2137:
	mov	x20, x0
	mov	x0, x21
	bl	__cxa_free_exception
	b	.L2041
.L2146:
	ldr	x0, [x23], 8
	bl	_ZdlPv
.L2058:
	cmp	x22, x23
	bhi	.L2146
	ldr	x0, [x21]
	bl	_ZdlPv
.L2056:
	mov	x0, x21
	bl	_ZdlPv
.L2049:
	mov	x0, x19
	bl	_ZdlPv
	mov	x0, x20
.LEHB167:
	bl	_Unwind_Resume
.LEHE167:
.L2069:
	mov	x20, x0
	b	.L2048
.L2071:
	mov	x20, x0
	b	.L2044
.L2076:
	mov	x21, x0
.L2025:
	ldr	x0, [x20]
	cbz	x0, .L2026
	ldr	x22, [x20, 72]
	ldr	x23, [x20, 40]
	add	x22, x22, 8
.L2028:
	cmp	x22, x23
	bhi	.L2147
	ldr	x0, [x20]
	bl	_ZdlPv
.L2026:
	mov	x1, x21
	b	.L2023
.L2079:
	bl	__cxa_begin_catch
.LEHB168:
	bl	__cxa_rethrow
.LEHE168:
.L2068:
	ldr	x2, [sp, 144]
	add	x1, sp, 160
	mov	x19, x0
	cmp	x2, x1
	beq	.L2066
	mov	x0, x2
	bl	_ZdlPv
	b	.L2066
.L2080:
	mov	x21, x0
	bl	__cxa_end_catch
	mov	x0, x21
	bl	__cxa_begin_catch
	ldr	x0, [x20]
	bl	_ZdlPv
	stp	xzr, xzr, [x20]
.LEHB169:
	bl	__cxa_rethrow
.LEHE169:
.L2078:
	mov	x21, x0
	bl	__cxa_end_catch
	mov	x1, x21
	b	.L2023
.L2077:
	mov	x21, x0
	mov	x0, x26
	bl	_ZdlPv
	b	.L2025
.L2070:
	mov	x20, x0
	b	.L2046
.L2142:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC36
	mov	x21, x0
	add	x1, x1, :lo12:.LC36
.LEHB170:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE170:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x21
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB171:
	bl	__cxa_throw
.LEHE171:
.L2073:
	b	.L2137
.L2147:
	ldr	x0, [x23], 8
	bl	_ZdlPv
	b	.L2028
.L2050:
	ldr	x0, [x21]
	cbz	x0, .L2056
	add	x22, x3, 8
	b	.L2058
.L2051:
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
	cbnz	x23, .L2148
	b	.L2053
	.cfi_endproc
.LFE10397:
	.section	.gcc_except_table
	.align	2
.LLSDA10397:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10397-.LLSDATTD10397
.LLSDATTD10397:
	.byte	0x1
	.uleb128 .LLSDACSE10397-.LLSDACSB10397
.LLSDACSB10397:
	.uleb128 .LEHB148-.LFB10397
	.uleb128 .LEHE148-.LEHB148
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB149-.LFB10397
	.uleb128 .LEHE149-.LEHB149
	.uleb128 .L2069-.LFB10397
	.uleb128 0
	.uleb128 .LEHB150-.LFB10397
	.uleb128 .LEHE150-.LEHB150
	.uleb128 .L2070-.LFB10397
	.uleb128 0
	.uleb128 .LEHB151-.LFB10397
	.uleb128 .LEHE151-.LEHB151
	.uleb128 .L2071-.LFB10397
	.uleb128 0
	.uleb128 .LEHB152-.LFB10397
	.uleb128 .LEHE152-.LEHB152
	.uleb128 .L2072-.LFB10397
	.uleb128 0
	.uleb128 .LEHB153-.LFB10397
	.uleb128 .LEHE153-.LEHB153
	.uleb128 .L2074-.LFB10397
	.uleb128 0
	.uleb128 .LEHB154-.LFB10397
	.uleb128 .LEHE154-.LEHB154
	.uleb128 .L2079-.LFB10397
	.uleb128 0x1
	.uleb128 .LEHB155-.LFB10397
	.uleb128 .LEHE155-.LEHB155
	.uleb128 .L2076-.LFB10397
	.uleb128 0
	.uleb128 .LEHB156-.LFB10397
	.uleb128 .LEHE156-.LEHB156
	.uleb128 .L2077-.LFB10397
	.uleb128 0
	.uleb128 .LEHB157-.LFB10397
	.uleb128 .LEHE157-.LEHB157
	.uleb128 .L2081-.LFB10397
	.uleb128 0
	.uleb128 .LEHB158-.LFB10397
	.uleb128 .LEHE158-.LEHB158
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB159-.LFB10397
	.uleb128 .LEHE159-.LEHB159
	.uleb128 .L2068-.LFB10397
	.uleb128 0
	.uleb128 .LEHB160-.LFB10397
	.uleb128 .LEHE160-.LEHB160
	.uleb128 .L2076-.LFB10397
	.uleb128 0
	.uleb128 .LEHB161-.LFB10397
	.uleb128 .LEHE161-.LEHB161
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB162-.LFB10397
	.uleb128 .LEHE162-.LEHB162
	.uleb128 .L2070-.LFB10397
	.uleb128 0
	.uleb128 .LEHB163-.LFB10397
	.uleb128 .LEHE163-.LEHB163
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB164-.LFB10397
	.uleb128 .LEHE164-.LEHB164
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB165-.LFB10397
	.uleb128 .LEHE165-.LEHB165
	.uleb128 .L2075-.LFB10397
	.uleb128 0
	.uleb128 .LEHB166-.LFB10397
	.uleb128 .LEHE166-.LEHB166
	.uleb128 .L2072-.LFB10397
	.uleb128 0
	.uleb128 .LEHB167-.LFB10397
	.uleb128 .LEHE167-.LEHB167
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB168-.LFB10397
	.uleb128 .LEHE168-.LEHB168
	.uleb128 .L2080-.LFB10397
	.uleb128 0x1
	.uleb128 .LEHB169-.LFB10397
	.uleb128 .LEHE169-.LEHB169
	.uleb128 .L2078-.LFB10397
	.uleb128 0
	.uleb128 .LEHB170-.LFB10397
	.uleb128 .LEHE170-.LEHB170
	.uleb128 .L2073-.LFB10397
	.uleb128 0
	.uleb128 .LEHB171-.LFB10397
	.uleb128 .LEHE171-.LEHB171
	.uleb128 .L2072-.LFB10397
	.uleb128 0
.LLSDACSE10397:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT10397:
	.text
	.size	_Z11build_indexPfmm, .-_Z11build_indexPfmm
	.section	.rodata._ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb.str1.8,"aMS",@progbits,1
	.align	3
.LC38:
	.string	"Replacement of deleted elements is disabled in constructor"
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb
	.type	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb, %function
_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb:
.LFB10847:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10847
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
	bne	.L2287
	mov	x21, x1
	ubfiz	x0, x2, 1, 16
	ldr	x1, [x19, 120]
	add	x0, x0, x2, uxth
	strb	wzr, [sp, 104]
	add	x0, x1, x0, lsl 4
	str	x0, [sp, 96]
	cbz	x0, .L2288
	adrp	x1, .LC5
	ldr	x20, [x1, #:lo12:.LC5]
	cbz	x20, .L2152
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2289
.L2152:
	mov	w0, 1
	strb	w0, [sp, 104]
	cbz	w22, .L2290
	add	x22, x19, 464
	str	x22, [sp, 112]
	strb	wzr, [sp, 120]
	cbz	x20, .L2156
	mov	x0, x22
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2291
.L2156:
	ldr	x24, [x19, 536]
	mov	w0, 1
	strb	w0, [sp, 120]
	add	x23, x19, 512
	cbnz	x24, .L2292
	ldr	x0, [sp, 112]
	cbz	x0, .L2279
	cbz	x20, .L2293
.L2189:
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	strb	wzr, [sp, 120]
	ldr	x2, [sp, 72]
	cbz	x24, .L2184
.L2159:
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
	cbz	x20, .L2161
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2294
.L2161:
	mov	w3, 1
	add	x2, sp, 88
	add	x24, x19, 368
	mov	w1, 0
	mov	x0, x24
	strb	w3, [sp, 136]
	bl	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_
	mov	x0, x24
	add	x1, sp, 72
.LEHB172:
	bl	_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_
	ldrb	w1, [sp, 136]
	ldr	w2, [sp, 80]
	str	w2, [x0]
	cbz	w1, .L2295
	ldr	x0, [sp, 128]
	cbz	x0, .L2163
	cbz	x20, .L2164
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L2164:
	strb	wzr, [sp, 136]
.L2163:
	ldr	w0, [sp, 80]
	str	w0, [sp, 84]
	add	x1, x19, 16
	ldar	x1, [x1]
	cmp	x1, x0, uxtw
	bls	.L2296
	ldr	w1, [sp, 84]
	ldr	x3, [x19, 24]
	ldr	x2, [x19, 240]
	ldr	x0, [x19, 256]
	madd	x1, x1, x3, x2
	add	x0, x0, x1
	ldrb	w1, [x0, 2]
	tbz	x1, 0, .L2166
	and	w1, w1, -2
	strb	w1, [x0, 2]
	add	x0, x19, 40
.L2303:
	ldaxr	x1, [x0]
	sub	x1, x1, #1
	stlxr	w2, x1, [x0]
	cbnz	w2, .L2303
	ldrb	w0, [x19, 456]
	cbnz	w0, .L2297
.L2167:
	ldr	w2, [sp, 80]
	fmov	s0, 1.0e+0
	mov	x1, x21
	mov	x0, x19
	bl	_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf
.LEHE172:
	ldrb	w0, [sp, 136]
	cbnz	w0, .L2298
.L2160:
	ldrb	w0, [sp, 120]
	cbnz	w0, .L2299
.L2174:
	ldrb	w0, [sp, 104]
	cbnz	w0, .L2300
.L2149:
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
.L2292:
	.cfi_restore_state
	ldr	x3, [x23, 16]
	add	x2, sp, 80
	mov	x0, x23
	mov	w1, 0
	ldr	w3, [x3, 8]
	str	w3, [sp, 80]
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj
	ldrb	w0, [sp, 120]
	cbz	w0, .L2301
	ldr	x0, [sp, 112]
	cbz	x0, .L2280
	cbnz	x20, .L2189
	strb	wzr, [sp, 120]
.L2280:
	ldr	x2, [sp, 72]
	b	.L2159
	.p2align 2,,3
.L2290:
	ldr	x2, [sp, 72]
	mov	x1, x21
	mov	x0, x19
	mov	w3, -1
.LEHB173:
	bl	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi
.LEHE173:
	ldrb	w0, [sp, 104]
	cbz	w0, .L2149
.L2300:
	ldr	x0, [sp, 96]
	cbz	x0, .L2149
	cbz	x20, .L2149
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
.L2293:
	.cfi_restore_state
	strb	wzr, [sp, 120]
.L2279:
	ldr	x2, [sp, 72]
.L2184:
	mov	x1, x21
	mov	x0, x19
	mov	w3, -1
.LEHB174:
	bl	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi
.LEHE174:
	ldrb	w0, [sp, 120]
	cbz	w0, .L2174
.L2299:
	ldr	x0, [sp, 112]
	cbz	x0, .L2174
	cbz	x20, .L2174
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L2174
	.p2align 2,,3
.L2297:
	cbz	x20, .L2168
	mov	x0, x22
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2302
.L2168:
	mov	x0, x23
	add	x2, sp, 84
	mov	w1, 0
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj
	cbz	x20, .L2167
	mov	x0, x22
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L2167
	.p2align 2,,3
.L2298:
	ldr	x0, [sp, 128]
	cbz	x0, .L2160
	cbz	x20, .L2160
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L2160
.L2291:
.LEHB175:
	bl	_ZSt20__throw_system_errori
.LEHE175:
.L2288:
	mov	w0, 1
.LEHB176:
	bl	_ZSt20__throw_system_errori
.LEHE176:
.L2301:
	mov	w0, 1
.LEHB177:
	bl	_ZSt20__throw_system_errori
.LEHE177:
.L2289:
.LEHB178:
	bl	_ZSt20__throw_system_errori
.LEHE178:
.L2296:
	bl	_ZN7hnswlib15HierarchicalNSWIfE21unmarkDeletedInternalEj.part.0
.L2295:
	mov	w0, 1
.LEHB179:
	bl	_ZSt20__throw_system_errori
.LEHE179:
.L2294:
.LEHB180:
	bl	_ZSt20__throw_system_errori
.LEHE180:
.L2302:
.LEHB181:
	bl	_ZSt20__throw_system_errori
.LEHE181:
.L2193:
	mov	x19, x0
.L2179:
	ldrb	w0, [sp, 104]
	cbz	w0, .L2180
	add	x0, sp, 96
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L2180:
	mov	x0, x19
.LEHB182:
	bl	_Unwind_Resume
.LEHE182:
.L2166:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC30
	mov	x20, x0
	add	x1, x1, :lo12:.LC30
.LEHB183:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE183:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB184:
	bl	__cxa_throw
.LEHE184:
.L2287:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC38
	mov	x19, x0
	add	x1, x1, :lo12:.LC38
.LEHB185:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE185:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x19
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB186:
	bl	__cxa_throw
.LEHE186:
.L2195:
	mov	x19, x0
	b	.L2172
.L2194:
	mov	x19, x0
.L2177:
	ldrb	w0, [sp, 120]
	cbz	w0, .L2179
	add	x0, sp, 112
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L2179
.L2196:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
.L2172:
	ldrb	w0, [sp, 136]
	cbz	w0, .L2177
	add	x0, sp, 128
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L2177
.L2192:
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	bl	__cxa_free_exception
	mov	x0, x19
.LEHB187:
	bl	_Unwind_Resume
.LEHE187:
	.cfi_endproc
.LFE10847:
	.section	.gcc_except_table
.LLSDA10847:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10847-.LLSDACSB10847
.LLSDACSB10847:
	.uleb128 .LEHB172-.LFB10847
	.uleb128 .LEHE172-.LEHB172
	.uleb128 .L2195-.LFB10847
	.uleb128 0
	.uleb128 .LEHB173-.LFB10847
	.uleb128 .LEHE173-.LEHB173
	.uleb128 .L2193-.LFB10847
	.uleb128 0
	.uleb128 .LEHB174-.LFB10847
	.uleb128 .LEHE174-.LEHB174
	.uleb128 .L2194-.LFB10847
	.uleb128 0
	.uleb128 .LEHB175-.LFB10847
	.uleb128 .LEHE175-.LEHB175
	.uleb128 .L2193-.LFB10847
	.uleb128 0
	.uleb128 .LEHB176-.LFB10847
	.uleb128 .LEHE176-.LEHB176
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB177-.LFB10847
	.uleb128 .LEHE177-.LEHB177
	.uleb128 .L2194-.LFB10847
	.uleb128 0
	.uleb128 .LEHB178-.LFB10847
	.uleb128 .LEHE178-.LEHB178
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB179-.LFB10847
	.uleb128 .LEHE179-.LEHB179
	.uleb128 .L2195-.LFB10847
	.uleb128 0
	.uleb128 .LEHB180-.LFB10847
	.uleb128 .LEHE180-.LEHB180
	.uleb128 .L2194-.LFB10847
	.uleb128 0
	.uleb128 .LEHB181-.LFB10847
	.uleb128 .LEHE181-.LEHB181
	.uleb128 .L2195-.LFB10847
	.uleb128 0
	.uleb128 .LEHB182-.LFB10847
	.uleb128 .LEHE182-.LEHB182
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB183-.LFB10847
	.uleb128 .LEHE183-.LEHB183
	.uleb128 .L2196-.LFB10847
	.uleb128 0
	.uleb128 .LEHB184-.LFB10847
	.uleb128 .LEHE184-.LEHB184
	.uleb128 .L2195-.LFB10847
	.uleb128 0
	.uleb128 .LEHB185-.LFB10847
	.uleb128 .LEHE185-.LEHB185
	.uleb128 .L2192-.LFB10847
	.uleb128 0
	.uleb128 .LEHB186-.LFB10847
	.uleb128 .LEHE186-.LEHB186
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB187-.LFB10847
	.uleb128 .LEHE187-.LEHB187
	.uleb128 0
	.uleb128 0
.LLSDACSE10847:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb, .-_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb
	.section	.text._ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm
	.type	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm, %function
_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm:
.LFB12537:
	.cfi_startproc
	cbz	x1, .L2328
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
	bhi	.L2306
	mov	x2, x1
	mov	x3, x20
	.p2align 3,,7
.L2307:
	str	wzr, [x2]
	subs	x3, x3, #1
	str	xzr, [x2, 8]
	add	x2, x2, 16
	bne	.L2307
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
.L2328:
	ret
	.p2align 2,,3
.L2306:
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
	bcc	.L2331
	cmp	x20, x21
	csel	x2, x20, x21, cs
	adds	x2, x21, x2
	bcs	.L2310
	cbnz	x2, .L2332
	mov	x23, 0
	mov	x24, 0
.L2312:
	add	x2, x24, x19
	mov	x3, x20
	.p2align 3,,7
.L2313:
	str	wzr, [x2]
	subs	x3, x3, #1
	str	xzr, [x2, 8]
	add	x2, x2, 16
	bne	.L2313
	cmp	x1, x0
	beq	.L2317
	sub	x1, x1, x0
	mov	x2, x24
	add	x1, x24, x1
	mov	x3, x0
	.p2align 3,,7
.L2318:
	ldp	x4, x5, [x3], 16
	stp	x4, x5, [x2], 16
	cmp	x2, x1
	bne	.L2318
.L2317:
	cbz	x0, .L2316
	bl	_ZdlPv
.L2316:
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
.L2332:
	.cfi_restore_state
	cmp	x2, x3
	csel	x2, x2, x3, ls
	lsl	x23, x2, 4
.L2311:
	mov	x0, x23
	bl	_Znwm
	mov	x24, x0
	add	x23, x0, x23
	ldp	x0, x1, [x22]
	b	.L2312
.L2310:
	mov	x23, 9223372036854775792
	b	.L2311
.L2331:
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12537:
	.size	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm, .-_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm
	.section	.text._ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE,"axG",@progbits,_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE
	.type	_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE, %function
_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE:
.LFB12455:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12455
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
.LEHB188:
	blr	x4
.LEHE188:
	ldp	x0, x2, [sp, 32]
	ldp	x3, x4, [x19]
	sub	x20, x2, x0
	sub	x1, x4, x3
	asr	x5, x20, 4
	cmp	x20, x1
	bhi	.L2371
	bcc	.L2372
.L2335:
	cmp	x2, x0
	beq	.L2336
.L2373:
	sub	x20, x20, #16
	b	.L2344
	.p2align 2,,3
.L2337:
	ldp	x0, x2, [sp, 32]
	sub	x20, x20, #16
	sub	x2, x2, #16
	str	x2, [sp, 40]
	cmp	x0, x2
	beq	.L2345
.L2344:
	ldr	x3, [x19]
	sub	x1, x2, x0
	ldr	s1, [x0]
	add	x4, x3, x20
	ldr	x5, [x0, 8]
	str	s1, [x3, x20]
	str	x5, [x4, 8]
	cmp	x1, 16
	ble	.L2337
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
	ble	.L2351
	mov	x4, 0
	b	.L2342
	.p2align 2,,3
.L2353:
	mov	x5, x2
.L2341:
	lsl	x2, x4, 4
	add	x4, x0, x2
	str	s1, [x0, x2]
	str	x5, [x4, 8]
	cmp	x1, x7
	bge	.L2338
.L2354:
	mov	x4, x1
.L2342:
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
	bmi	.L2357
	ldr	x5, [x8, 8]
	bgt	.L2352
	ldr	x2, [x2, 8]
	cmp	x2, x5
	bhi	.L2353
.L2352:
	fmov	s1, s2
	lsl	x2, x4, 4
	add	x4, x0, x2
	mov	x1, x6
	str	s1, [x0, x2]
	str	x5, [x4, 8]
	cmp	x1, x7
	blt	.L2354
.L2338:
	tbnz	x9, 0, .L2343
	sub	x9, x9, #2
	add	x9, x9, x9, lsr 63
	cmp	x1, x9, asr 1
	bne	.L2343
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
.L2343:
	mov	x2, 0
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldp	x0, x2, [sp, 32]
	sub	x20, x20, #16
	sub	x2, x2, #16
	str	x2, [sp, 40]
	cmp	x0, x2
	bne	.L2344
.L2345:
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
.L2357:
	.cfi_restore_state
	ldr	x5, [x2, 8]
	b	.L2341
	.p2align 2,,3
.L2372:
	add	x3, x3, x20
	cmp	x4, x3
	beq	.L2335
	str	x3, [x19, 8]
	cmp	x2, x0
	bne	.L2373
.L2336:
	cbnz	x2, .L2345
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
.L2371:
	.cfi_restore_state
	sub	x1, x5, x1, asr 4
	mov	x0, x19
.LEHB189:
	bl	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm
.LEHE189:
	ldp	x0, x2, [sp, 32]
	b	.L2335
	.p2align 2,,3
.L2351:
	mov	x1, 0
	b	.L2338
.L2356:
	ldr	x1, [sp, 32]
	mov	x20, x0
	cbz	x1, .L2349
	mov	x0, x1
	bl	_ZdlPv
.L2349:
	ldr	x0, [x19]
	cbz	x0, .L2350
	bl	_ZdlPv
.L2350:
	mov	x0, x20
.LEHB190:
	bl	_Unwind_Resume
.LEHE190:
.L2355:
	mov	x20, x0
	b	.L2349
	.cfi_endproc
.LFE12455:
	.section	.gcc_except_table
.LLSDA12455:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12455-.LLSDACSB12455
.LLSDACSB12455:
	.uleb128 .LEHB188-.LFB12455
	.uleb128 .LEHE188-.LEHB188
	.uleb128 .L2355-.LFB12455
	.uleb128 0
	.uleb128 .LEHB189-.LFB12455
	.uleb128 .LEHE189-.LEHB189
	.uleb128 .L2356-.LFB12455
	.uleb128 0
	.uleb128 .LEHB190-.LFB12455
	.uleb128 .LEHE190-.LEHB190
	.uleb128 0
	.uleb128 0
.LLSDACSE12455:
	.section	.text._ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE,"axG",@progbits,_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE,comdat
	.size	_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE, .-_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB12597:
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
	beq	.L2392
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	mov	x28, x3
	adds	x1, x1, x0
	bcs	.L2385
	cbnz	x1, .L2379
	mov	x25, 8
	mov	x22, 0
	mov	x20, 0
.L2384:
	ldr	s0, [x27]
	add	x0, x20, x26
	ldr	w1, [x28]
	str	s0, [x20, x26]
	str	w1, [x0, 4]
	cmp	x19, x24
	beq	.L2380
	mov	x4, x20
	mov	x3, x24
	.p2align 3,,7
.L2381:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L2381
	add	x26, x26, 8
	add	x25, x20, x26
.L2380:
	cmp	x19, x23
	beq	.L2382
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L2382:
	cbz	x24, .L2383
	mov	x0, x24
	bl	_ZdlPv
.L2383:
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
.L2385:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L2378:
	mov	x0, x22
	bl	_Znwm
	mov	x20, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L2384
.L2379:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L2378
.L2392:
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12597:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB12599:
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
	beq	.L2411
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	mov	x28, x3
	adds	x1, x1, x0
	bcs	.L2404
	cbnz	x1, .L2398
	mov	x25, 8
	mov	x22, 0
	mov	x20, 0
.L2403:
	ldr	s0, [x27]
	add	x0, x20, x26
	ldr	w1, [x28]
	str	s0, [x20, x26]
	str	w1, [x0, 4]
	cmp	x19, x24
	beq	.L2399
	mov	x4, x20
	mov	x3, x24
	.p2align 3,,7
.L2400:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L2400
	add	x26, x26, 8
	add	x25, x20, x26
.L2399:
	cmp	x19, x23
	beq	.L2401
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L2401:
	cbz	x24, .L2402
	mov	x0, x24
	bl	_ZdlPv
.L2402:
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
.L2404:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L2397:
	mov	x0, x22
	bl	_Znwm
	mov	x20, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L2403
.L2398:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L2397
.L2411:
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12599:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE,"axG",@progbits,_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE
	.type	_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE, %function
_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE:
.LFB12485:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12485
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
.LEHB191:
	bl	_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv
.LEHE191:
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
.LEHB192:
	blr	x3
	ldp	x1, x0, [x19, 8]
	str	s0, [sp, 140]
	fmov	s8, s0
	cmp	x1, x0
	beq	.L2413
	ldr	w7, [sp, 124]
	fmov	s2, s0
	fmov	s1, s0
	str	s0, [x1]
	str	w7, [x1, 4]
	add	x0, x1, 8
	str	x0, [x19, 8]
.L2414:
	ldr	x3, [x19]
	sub	x2, x0, x3
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L2415
	.p2align 3,,7
.L2418:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s0, [x3, x2]
	fcmpe	s0, s2
	bmi	.L2468
.L2416:
	ldp	x1, x0, [sp, 168]
	fneg	s1, s1
	str	w7, [x4, 4]
	str	s2, [x4]
	str	s1, [sp, 144]
	cmp	x1, x0
	beq	.L2419
.L2499:
	ldr	w8, [sp, 124]
	add	x7, x1, 8
	str	s1, [x1]
	mov	w9, w8
	str	w8, [x1, 4]
	str	x7, [sp, 168]
.L2420:
	ldr	x0, [sp, 160]
	sub	x3, x7, x0
	asr	x1, x3, 3
	sub	x2, x1, #2
	sub	x1, x1, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x1, 0
	ble	.L2421
	.p2align 3,,7
.L2424:
	lsl	x3, x2, 3
	lsl	x1, x1, 3
	add	x5, x0, x3
	add	x4, x0, x1
	ldr	s0, [x0, x3]
	fcmpe	s0, s1
	bmi	.L2469
.L2422:
	str	s1, [x4]
	str	w9, [x4, 4]
	strh	w24, [x23, w8, uxtw 1]
	cmp	x0, x7
	beq	.L2425
	.p2align 3,,7
.L2427:
	ldr	s0, [x0]
	ldr	w20, [x0, 4]
	fneg	s0, s0
	fcmpe	s0, s8
	bgt	.L2425
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
	cbnz	x25, .L2426
	b	.L2446
	.p2align 2,,3
.L2497:
	mov	x20, x0
.L2426:
	ldr	w1, [x26, x20, lsl 2]
	sbfiz	x0, x1, 1, 32
	ldrh	w2, [x23, x0]
	str	w1, [sp, 136]
	cmp	w2, w24
	beq	.L2428
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
	bhi	.L2429
	fcmpe	s0, s8
	bmi	.L2429
.L2428:
	add	x0, x20, 1
	cmp	x25, x20
	bne	.L2497
.L2446:
	ldp	x0, x1, [sp, 160]
	cmp	x1, x0
	bne	.L2427
.L2425:
	adrp	x0, .LC5
	strb	wzr, [sp, 152]
	ldr	x20, [x21, 112]
	ldr	x21, [x0, #:lo12:.LC5]
	add	x0, x20, 80
	str	x0, [sp, 144]
	cbz	x21, .L2447
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2498
.L2447:
	ldp	x0, x1, [x20, 16]
	mov	w2, 1
	strb	w2, [sp, 152]
	cmp	x0, x1
	beq	.L2448
	str	x28, [x0, -8]!
	str	x0, [x20, 16]
.L2449:
	ldr	x0, [sp, 144]
	cbz	x0, .L2452
	cbz	x21, .L2452
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L2452:
	ldr	x0, [sp, 160]
	cbz	x0, .L2412
	bl	_ZdlPv
.L2412:
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
.L2468:
	.cfi_restore_state
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s0, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L2418
	mov	x4, x5
	fneg	s1, s1
	ldp	x1, x0, [sp, 168]
	str	w7, [x4, 4]
	str	s2, [x4]
	str	s1, [sp, 144]
	cmp	x1, x0
	bne	.L2499
.L2419:
	add	x3, sp, 124
	add	x2, sp, 144
	add	x0, sp, 160
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x7, [sp, 168]
	ldr	w8, [sp, 124]
	ldr	w9, [x7, -4]
	ldr	s1, [x7, -8]
	b	.L2420
	.p2align 2,,3
.L2469:
	sub	x3, x2, #1
	ldr	w6, [x5, 4]
	str	s0, [x0, x1]
	mov	x1, x2
	add	x3, x3, x3, lsr 63
	str	w6, [x4, 4]
	asr	x2, x3, 1
	cmp	x1, 0
	bgt	.L2424
	mov	x4, x5
	b	.L2422
	.p2align 2,,3
.L2429:
	ldp	x2, x0, [sp, 168]
	fneg	s1, s0
	str	s1, [sp, 144]
	cmp	x2, x0
	beq	.L2432
	ldr	w8, [sp, 136]
	add	x0, x2, 8
	str	s1, [x2]
	str	w8, [x2, 4]
	str	x0, [sp, 168]
.L2433:
	ldr	x4, [sp, 160]
	sub	x3, x0, x4
	asr	x0, x3, 3
	sub	x2, x0, #2
	sub	x0, x0, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x0, 0
	ble	.L2434
	.p2align 3,,7
.L2437:
	lsl	x3, x2, 3
	lsl	x0, x0, 3
	add	x6, x4, x3
	add	x5, x4, x0
	ldr	s2, [x4, x3]
	fcmpe	s2, s1
	bmi	.L2470
.L2435:
	ldr	x0, [x19, 16]
	str	s1, [x5]
	str	w8, [x5, 4]
	cmp	x0, x1
	beq	.L2438
.L2500:
	ldr	s2, [sp, 140]
	add	x5, x1, 8
	ldr	w9, [sp, 136]
	str	w9, [x1, 4]
	str	s2, [x1]
	str	x5, [x19, 8]
.L2439:
	ldr	x1, [x19]
	sub	x3, x5, x1
	asr	x8, x3, 3
	sub	x0, x8, #2
	sub	x2, x8, #1
	add	x0, x0, x0, lsr 63
	asr	x0, x0, 1
	cmp	x2, 0
	ble	.L2440
	.p2align 3,,7
.L2443:
	lsl	x3, x0, 3
	lsl	x2, x2, 3
	add	x6, x1, x3
	add	x4, x1, x2
	ldr	s1, [x1, x3]
	fcmpe	s1, s2
	bmi	.L2471
.L2441:
	str	s2, [x4]
	str	w9, [x4, 4]
	cmp	x22, x8
	bcs	.L2444
	.p2align 3,,7
.L2445:
	mov	x0, x19
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x1, x5, [x19]
	sub	x0, x5, x1
	cmp	x22, x0, asr 3
	bcc	.L2445
.L2444:
	cmp	x1, x5
	beq	.L2428
	ldr	s8, [x1]
	b	.L2428
	.p2align 2,,3
.L2470:
	sub	x3, x2, #1
	ldr	w7, [x6, 4]
	str	s2, [x4, x0]
	mov	x0, x2
	add	x3, x3, x3, lsr 63
	str	w7, [x5, 4]
	asr	x2, x3, 1
	cmp	x0, 0
	bgt	.L2437
	mov	x5, x6
	ldr	x0, [x19, 16]
	str	s1, [x5]
	str	w8, [x5, 4]
	cmp	x0, x1
	bne	.L2500
.L2438:
	add	x3, sp, 136
	add	x2, sp, 140
	mov	x0, x19
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x5, [x19, 8]
	ldr	w9, [x5, -4]
	ldr	s2, [x5, -8]
	b	.L2439
	.p2align 2,,3
.L2471:
	sub	x3, x0, #1
	ldr	w7, [x6, 4]
	str	s1, [x1, x2]
	mov	x2, x0
	add	x3, x3, x3, lsr 63
	str	w7, [x4, 4]
	asr	x0, x3, 1
	cmp	x2, 0
	bgt	.L2443
	mov	x4, x6
	b	.L2441
	.p2align 2,,3
.L2432:
	mov	x1, x2
	add	x3, sp, 136
	add	x2, sp, 144
	add	x0, sp, 160
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x0, [sp, 168]
	ldr	x1, [x19, 8]
	ldr	w8, [x0, -4]
	ldr	s1, [x0, -8]
	b	.L2433
.L2434:
	sub	x0, x3, #8
	add	x5, x4, x0
	b	.L2435
.L2440:
	sub	x3, x3, #8
	add	x4, x1, x3
	b	.L2441
.L2413:
	add	x3, sp, 124
	add	x2, sp, 140
	mov	x0, x19
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE192:
	ldr	x0, [x19, 8]
	ldr	s1, [sp, 140]
	ldr	w7, [x0, -4]
	ldr	s2, [x0, -8]
	b	.L2414
.L2448:
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
	beq	.L2501
	ldr	x0, [x20]
	cmp	x23, x0
	beq	.L2502
.L2451:
	mov	x0, 512
.LEHB193:
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
	cbz	w1, .L2452
	b	.L2449
	.p2align 2,,3
.L2502:
	mov	x0, x20
	mov	x1, 1
	bl	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb
	ldr	x23, [x20, 40]
	b	.L2451
.L2415:
	sub	x0, x2, #8
	add	x4, x3, x0
	b	.L2416
.L2421:
	sub	x3, x3, #8
	add	x4, x0, x3
	b	.L2422
.L2501:
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	bl	_ZSt20__throw_length_errorPKc
.LEHE193:
.L2498:
.LEHB194:
	bl	_ZSt20__throw_system_errori
.LEHE194:
.L2466:
	mov	x20, x0
.L2457:
	ldr	x0, [sp, 160]
	cbz	x0, .L2458
	bl	_ZdlPv
.L2458:
	ldr	x0, [x19]
	cbz	x0, .L2459
	bl	_ZdlPv
.L2459:
	mov	x0, x20
.LEHB195:
	bl	_Unwind_Resume
.LEHE195:
.L2467:
	ldrb	w1, [sp, 152]
	mov	x20, x0
	cbz	w1, .L2457
	add	x0, sp, 144
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L2457
	.cfi_endproc
.LFE12485:
	.section	.gcc_except_table
.LLSDA12485:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12485-.LLSDACSB12485
.LLSDACSB12485:
	.uleb128 .LEHB191-.LFB12485
	.uleb128 .LEHE191-.LEHB191
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB192-.LFB12485
	.uleb128 .LEHE192-.LEHB192
	.uleb128 .L2466-.LFB12485
	.uleb128 0
	.uleb128 .LEHB193-.LFB12485
	.uleb128 .LEHE193-.LEHB193
	.uleb128 .L2467-.LFB12485
	.uleb128 0
	.uleb128 .LEHB194-.LFB12485
	.uleb128 .LEHE194-.LEHB194
	.uleb128 .L2466-.LFB12485
	.uleb128 0
	.uleb128 .LEHB195-.LFB12485
	.uleb128 .LEHE195-.LEHB195
	.uleb128 0
	.uleb128 0
.LLSDACSE12485:
	.section	.text._ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE,"axG",@progbits,_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE,comdat
	.size	_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE, .-_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE
	.section	.text._ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB12607:
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
	beq	.L2521
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	adds	x1, x1, x0
	bcs	.L2514
	cbnz	x1, .L2508
	mov	x25, 16
	mov	x22, 0
	mov	x21, 0
.L2513:
	add	x2, x21, x26
	ldp	x0, x1, [x27]
	stp	x0, x1, [x2]
	cmp	x19, x24
	beq	.L2509
	mov	x4, x21
	mov	x3, x24
	.p2align 3,,7
.L2510:
	ldp	x6, x7, [x3], 16
	stp	x6, x7, [x4], 16
	cmp	x3, x19
	bne	.L2510
	add	x26, x26, 16
	add	x25, x21, x26
.L2509:
	cmp	x19, x23
	beq	.L2511
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L2511:
	cbz	x24, .L2512
	mov	x0, x24
	bl	_ZdlPv
.L2512:
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
.L2514:
	.cfi_restore_state
	mov	x22, 9223372036854775792
.L2507:
	mov	x0, x22
	bl	_Znwm
	mov	x21, x0
	add	x22, x0, x22
	add	x25, x0, 16
	b	.L2513
.L2508:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 4
	b	.L2507
.L2521:
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12607:
	.size	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE,"axG",@progbits,_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE
	.type	_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE, %function
_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE:
.LFB12424:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12424
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
	cbz	x0, .L2522
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
.LEHB196:
	blr	x3
	ldr	w0, [x19, 104]
	fmov	s8, s0
	cmp	w0, 0
	ble	.L2525
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
.L2528:
	ldr	x0, [x19, 32]
	ldr	x1, [x19, 264]
	mul	x0, x27, x0
	ldr	x1, [x1, x20, lsl 3]
	add	x20, x1, x0
	ldrh	w22, [x1, x0]
.L2721:
	ldaxr	x0, [x26]
	add	x0, x0, 1
	stlxr	w1, x0, [x26]
	cbnz	w1, .L2721
	ldr	x1, [sp, 112]
	and	x0, x22, 65535
.L2722:
	ldaxr	x2, [x1]
	add	x2, x2, x0
	stlxr	w3, x2, [x1]
	cbnz	w3, .L2722
	cbz	w22, .L2526
	sub	w22, w22, #1
	add	x0, x20, 8
	add	x20, x20, 4
	mov	w24, 0
	add	x22, x0, x22, uxtw 2
	.p2align 3,,7
.L2533:
	ldr	w21, [x20]
	ldr	x0, [x19, 8]
	uxtw	x1, w21
	cmp	x1, x0
	bhi	.L2706
	ldr	x5, [x19, 24]
	mov	x0, x23
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	madd	x1, x1, x5, x4
	ldr	x4, [x19, 256]
	add	x1, x4, x1
	blr	x3
.LEHE196:
	fcmpe	s0, s8
	bmi	.L2632
.L2530:
	add	x20, x20, 4
	cmp	x20, x22
	bne	.L2533
	uxtw	x20, w25
	cbnz	w24, .L2528
	.p2align 3,,7
.L2526:
	ldr	x0, [sp, 136]
	sub	x27, x27, #1
	cmp	x0, x27
	beq	.L2525
	uxtw	x20, w25
	b	.L2528
.L2525:
	stp	xzr, xzr, [sp, 176]
	str	xzr, [sp, 192]
	add	x0, x19, 40
	ldar	x0, [x0]
	orr	x0, x28, x0
	cbz	x0, .L2707
	ldr	x20, [x19, 80]
	str	w25, [sp, 148]
	ldr	x1, [sp, 128]
	ldr	x0, [x19, 112]
	cmp	x20, x1
	csel	x20, x20, x1, cs
.LEHB197:
	bl	_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv
.LEHE197:
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
	tbnz	x0, 0, .L2708
	cbz	x28, .L2542
	ldr	x4, [x28]
	adrp	x0, _ZN7hnswlib17BaseFilterFunctorclEm
	add	x0, x0, :lo12:_ZN7hnswlib17BaseFilterFunctorclEm
	ldr	x4, [x4]
	cmp	x4, x0
	bne	.L2709
.L2542:
	ldr	x1, [x19, 232]
	mov	x0, x23
	ldr	x4, [x19, 304]
	add	x1, x2, x1
	ldr	x2, [x19, 312]
	add	x1, x3, x1
.LEHB198:
	blr	x4
	ldp	x1, x0, [sp, 216]
	str	s0, [sp, 156]
	fmov	s8, s0
	cmp	x1, x0
	beq	.L2710
	ldr	w7, [sp, 148]
	fmov	s2, s0
	fmov	s1, s0
	str	s0, [x1]
	str	w7, [x1, 4]
	add	x0, x1, 8
	str	x0, [sp, 216]
.L2554:
	ldr	x4, [sp, 208]
	sub	x2, x0, x4
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L2555
.L2558:
	lsl	x3, x1, 3
	lsl	x0, x0, 3
	add	x5, x4, x3
	add	x2, x4, x0
	ldr	s0, [x4, x3]
	fcmpe	s0, s2
	bmi	.L2634
.L2556:
	ldp	x1, x0, [sp, 248]
	fneg	s1, s1
	str	w7, [x2, 4]
	str	s2, [x2]
	str	s1, [sp, 160]
	cmp	x1, x0
	beq	.L2559
	ldr	w5, [sp, 148]
	add	x4, x1, 8
	str	s1, [x1]
	mov	w9, w5
	str	w5, [x1, 4]
	str	x4, [sp, 248]
.L2560:
	ldr	x0, [sp, 240]
	sub	x3, x4, x0
	asr	x1, x3, 3
	sub	x2, x1, #2
	sub	x1, x1, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x1, 0
	ble	.L2561
.L2564:
	lsl	x3, x2, 3
	lsl	x1, x1, 3
	add	x7, x0, x3
	add	x6, x0, x1
	ldr	s0, [x0, x3]
	fcmpe	s0, s1
	bmi	.L2635
.L2562:
	str	w9, [x6, 4]
	str	s1, [x6]
.L2552:
	strh	w24, [x22, w5, uxtw 1]
	cmp	x4, x0
	beq	.L2565
	.p2align 3,,7
.L2569:
	ldr	s0, [x0]
	ldr	w21, [x0, 4]
	fneg	s0, s0
	fcmpe	s0, s8
	bgt	.L2636
.L2566:
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
	cbz	x25, .L2591
	adrp	x0, _ZN7hnswlib17BaseFilterFunctorclEm
	add	x27, x0, :lo12:_ZN7hnswlib17BaseFilterFunctorclEm
	b	.L2568
	.p2align 2,,3
.L2711:
	fcmpe	s0, s8
	bmi	.L2571
.L2570:
	add	x0, x21, 1
	cmp	x25, x21
	beq	.L2591
.L2713:
	mov	x21, x0
.L2568:
	ldr	w1, [x26, x21, lsl 2]
	sbfiz	x0, x1, 1, 32
	ldrh	w2, [x22, x0]
	str	w1, [sp, 152]
	cmp	w2, w24
	beq	.L2570
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
.LEHE198:
	ldp	x1, x0, [sp, 208]
	str	s0, [sp, 156]
	sub	x0, x0, x1
	cmp	x20, x0, asr 3
	bls	.L2711
.L2571:
	ldp	x1, x0, [sp, 248]
	fneg	s0, s0
	str	s0, [sp, 160]
	cmp	x1, x0
	beq	.L2574
	ldr	w7, [sp, 152]
	add	x0, x1, 8
	str	s0, [x1]
	mov	w8, w7
	str	w7, [x1, 4]
	str	x0, [sp, 248]
.L2575:
	ldr	x3, [sp, 240]
	sub	x2, x0, x3
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L2576
	.p2align 3,,7
.L2579:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s1, [x3, x2]
	fcmpe	s1, s0
	bmi	.L2637
.L2577:
	ldr	x2, [x19, 24]
	uxtw	x7, w7
	ldr	x1, [x19, 256]
	ldr	x0, [x19, 240]
	str	w8, [x4, 4]
	madd	x7, x7, x2, x1
	str	s0, [x4]
	add	x0, x7, x0
	ldrb	w0, [x0, 2]
	tbnz	x0, 0, .L2700
	cbz	x28, .L2582
	ldr	x0, [x28]
	ldr	x2, [x0]
	cmp	x2, x27
	bne	.L2712
.L2582:
	ldp	x1, x0, [sp, 216]
	cmp	x1, x0
	beq	.L2583
	ldr	s1, [sp, 156]
	add	x2, x1, 8
	ldr	w9, [sp, 152]
	str	w9, [x1, 4]
	str	s1, [x1]
	str	x2, [sp, 216]
.L2584:
	ldr	x0, [sp, 208]
	sub	x4, x2, x0
	asr	x8, x4, 3
	sub	x1, x8, #2
	sub	x3, x8, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x3, 0
	ble	.L2585
	.p2align 3,,7
.L2588:
	lsl	x4, x1, 3
	lsl	x3, x3, 3
	add	x6, x0, x4
	add	x5, x0, x3
	ldr	s0, [x0, x4]
	fcmpe	s0, s1
	bmi	.L2638
.L2586:
	str	w9, [x5, 4]
	str	s1, [x5]
.L2581:
	cmp	x8, x20
	bls	.L2589
	.p2align 3,,7
.L2590:
	add	x0, sp, 208
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x0, x2, [sp, 208]
	sub	x1, x2, x0
	cmp	x20, x1, asr 3
	bcc	.L2590
.L2589:
	cmp	x0, x2
	beq	.L2570
	ldr	s8, [x0]
	add	x0, x21, 1
	cmp	x25, x21
	bne	.L2713
.L2591:
	ldp	x0, x1, [sp, 240]
	cmp	x0, x1
	bne	.L2569
.L2565:
	adrp	x0, .LC5
	strb	wzr, [sp, 168]
	ldr	x20, [x19, 112]
	ldr	x23, [x0, #:lo12:.LC5]
	add	x0, x20, 80
	str	x0, [sp, 160]
	cbz	x23, .L2592
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2714
.L2592:
	ldp	x1, x0, [x20, 16]
	mov	w2, 1
	strb	w2, [sp, 168]
	cmp	x1, x0
	beq	.L2593
	ldr	x0, [sp, 112]
	str	x0, [x1, -8]!
	str	x1, [x20, 16]
.L2594:
	ldr	x0, [sp, 160]
	cbz	x0, .L2597
	cbz	x23, .L2597
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L2597:
	ldr	x0, [sp, 240]
	cbz	x0, .L2599
	bl	_ZdlPv
.L2599:
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
	cbz	x0, .L2540
	bl	_ZdlPv
	ldr	x0, [sp, 208]
	cbz	x0, .L2540
	bl	_ZdlPv
.L2716:
	ldp	x0, x1, [sp, 176]
	ldr	x3, [sp, 128]
	sub	x2, x1, x0
	cmp	x3, x2, asr 3
	bcs	.L2704
	.p2align 3,,7
.L2715:
	add	x0, sp, 176
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
.L2540:
	ldp	x0, x1, [sp, 176]
	ldr	x3, [sp, 128]
	sub	x2, x1, x0
	cmp	x3, x2, asr 3
	bcc	.L2715
	cmp	x1, x0
	bne	.L2614
.L2717:
	cbz	x0, .L2699
	bl	_ZdlPv
.L2699:
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
.L2522:
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
.L2632:
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
	b	.L2530
.L2634:
	sub	x3, x1, #1
	ldr	w6, [x5, 4]
	str	s0, [x4, x0]
	mov	x0, x1
	add	x3, x3, x3, lsr 63
	str	w6, [x2, 4]
	asr	x1, x3, 1
	cmp	x0, 0
	bgt	.L2558
	mov	x2, x5
	b	.L2556
	.p2align 2,,3
.L2635:
	sub	x3, x2, #1
	ldr	w8, [x7, 4]
	str	s0, [x0, x1]
	mov	x1, x2
	add	x3, x3, x3, lsr 63
	str	w8, [x6, 4]
	asr	x2, x3, 1
	cmp	x1, 0
	bgt	.L2564
	mov	x6, x7
	b	.L2562
	.p2align 2,,3
.L2637:
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s1, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L2579
	mov	x4, x5
	b	.L2577
	.p2align 2,,3
.L2638:
	sub	x4, x1, #1
	ldr	w7, [x6, 4]
	str	s0, [x0, x3]
	mov	x3, x1
	add	x4, x4, x4, lsr 63
	str	w7, [x5, 4]
	asr	x1, x4, 1
	cmp	x3, 0
	bgt	.L2588
	mov	x5, x6
	b	.L2586
.L2707:
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
.LEHB199:
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
	cbz	x0, .L2540
	bl	_ZdlPv
	ldr	x0, [sp, 240]
	cbz	x0, .L2540
	bl	_ZdlPv
	b	.L2716
	.p2align 2,,3
.L2718:
	ldp	x2, x3, [sp, 240]
	stp	x2, x3, [x1], 16
	str	x1, [x4, 8]
.L2613:
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
.L2704:
	cmp	x1, x0
	beq	.L2717
.L2614:
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
	bne	.L2718
	ldr	x20, [sp, 120]
	add	x2, sp, 240
	mov	x0, x20
	bl	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE199:
	ldr	x1, [x20, 8]
	b	.L2613
.L2712:
	ldr	x1, [x19, 248]
	mov	x0, x28
	ldr	x1, [x7, x1]
.LEHB200:
	blr	x2
	tst	w0, 255
	bne	.L2582
	.p2align 3,,7
.L2700:
	ldp	x0, x2, [sp, 208]
	sub	x8, x2, x0
	asr	x8, x8, 3
	b	.L2581
	.p2align 2,,3
.L2574:
	add	x3, sp, 152
	add	x2, sp, 160
	add	x0, sp, 240
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x0, [sp, 248]
	ldr	w7, [sp, 152]
	ldr	w8, [x0, -4]
	ldr	s0, [x0, -8]
	b	.L2575
	.p2align 2,,3
.L2636:
	ldp	x1, x0, [sp, 208]
	sub	x0, x0, x1
	cmp	x20, x0, asr 3
	bne	.L2566
	b	.L2565
	.p2align 2,,3
.L2576:
	sub	x0, x2, #8
	add	x4, x3, x0
	b	.L2577
.L2583:
	add	x3, sp, 152
	add	x2, sp, 156
	add	x0, sp, 208
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE200:
	ldr	x2, [sp, 216]
	ldr	w9, [x2, -4]
	ldr	s1, [x2, -8]
	b	.L2584
.L2585:
	sub	x4, x4, #8
	add	x5, x0, x4
	b	.L2586
.L2593:
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
	beq	.L2719
	ldr	x0, [x20]
	cmp	x22, x0
	beq	.L2720
.L2596:
	mov	x0, 512
.LEHB201:
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
	cbz	w1, .L2597
	b	.L2594
	.p2align 2,,3
.L2720:
	mov	x0, x20
	mov	x1, 1
	bl	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb
.LEHE201:
	ldr	x22, [x20, 40]
	b	.L2596
.L2559:
	add	x3, sp, 148
	add	x2, sp, 160
	add	x0, sp, 240
.LEHB202:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x4, [sp, 248]
	ldr	w5, [sp, 148]
	ldr	w9, [x4, -4]
	ldr	s1, [x4, -8]
	b	.L2560
.L2710:
	add	x3, sp, 148
	add	x2, sp, 156
	add	x0, sp, 208
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x0, [sp, 216]
	ldr	s1, [sp, 156]
	ldr	w7, [x0, -4]
	ldr	s2, [x0, -8]
	b	.L2554
.L2709:
	ldr	x2, [x19, 248]
	mov	x0, x28
	ldr	x1, [x1, x2]
	blr	x4
	tst	w0, 255
	bne	.L2543
	ldp	x1, x0, [sp, 248]
	mvni	v0.2s, 0x80, lsl 16
	str	s0, [sp, 160]
	cmp	x1, x0
	beq	.L2545
	ldr	w5, [sp, 148]
	fmov	s1, s0
	str	s0, [x1]
	add	x4, x1, 8
	mov	w9, w5
	str	w5, [x1, 4]
	str	x4, [sp, 248]
.L2547:
	ldr	x0, [sp, 240]
	sub	x3, x4, x0
	asr	x1, x3, 3
	sub	x2, x1, #2
	sub	x1, x1, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x1, 0
	ble	.L2548
.L2551:
	lsl	x3, x2, 3
	lsl	x1, x1, 3
	add	x7, x0, x3
	add	x6, x0, x1
	ldr	s0, [x0, x3]
	fcmpe	s0, s1
	bmi	.L2633
.L2549:
	mov	w1, 2139095039
	fmov	s8, w1
	str	s1, [x6]
	str	w9, [x6, 4]
	b	.L2552
.L2633:
	sub	x3, x2, #1
	ldr	w8, [x7, 4]
	str	s0, [x0, x1]
	mov	x1, x2
	add	x3, x3, x3, lsr 63
	str	w8, [x6, 4]
	asr	x2, x3, 1
	cmp	x1, 0
	bgt	.L2551
	mov	x6, x7
	b	.L2549
.L2708:
	mvni	v0.2s, 0x80, lsl 16
	mov	x1, 0
	str	s0, [sp, 160]
.L2545:
	add	x3, sp, 148
	add	x2, sp, 160
	add	x0, sp, 240
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE202:
	ldr	x4, [sp, 248]
	ldr	w5, [sp, 148]
	ldr	w9, [x4, -4]
	ldr	s1, [x4, -8]
	b	.L2547
.L2548:
	sub	x3, x3, #8
	add	x6, x0, x3
	b	.L2549
.L2543:
	ldr	w2, [sp, 148]
	ldr	x0, [x19, 24]
	ldr	x3, [x19, 256]
	mul	x2, x2, x0
	b	.L2542
.L2561:
	sub	x3, x3, #8
	add	x6, x0, x3
	b	.L2562
.L2555:
	sub	x2, x2, #8
	add	x2, x4, x2
	b	.L2556
.L2719:
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
.LEHB203:
	bl	_ZSt20__throw_length_errorPKc
.LEHE203:
.L2714:
.LEHB204:
	bl	_ZSt20__throw_system_errori
.LEHE204:
.L2631:
	ldrb	w1, [sp, 168]
	mov	x19, x0
	cbz	w1, .L2602
	add	x0, sp, 160
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L2602:
	ldr	x0, [sp, 240]
	cbz	x0, .L2605
	bl	_ZdlPv
.L2605:
	ldr	x0, [sp, 208]
	cbz	x0, .L2607
	bl	_ZdlPv
.L2607:
	ldr	x0, [sp, 176]
	cbz	x0, .L2617
	bl	_ZdlPv
.L2617:
	ldr	x0, [sp, 120]
	ldr	x0, [x0]
	cbz	x0, .L2619
	bl	_ZdlPv
.L2619:
	mov	x0, x19
.LEHB205:
	bl	_Unwind_Resume
.LEHE205:
.L2629:
	mov	x19, x0
	b	.L2607
.L2627:
	mov	x19, x0
	b	.L2617
.L2630:
	mov	x19, x0
	b	.L2602
.L2706:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC33
	mov	x20, x0
	add	x1, x1, :lo12:.LC33
.LEHB206:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE206:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB207:
	bl	__cxa_throw
.LEHE207:
.L2628:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
	b	.L2617
	.cfi_endproc
.LFE12424:
	.section	.gcc_except_table
.LLSDA12424:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12424-.LLSDACSB12424
.LLSDACSB12424:
	.uleb128 .LEHB196-.LFB12424
	.uleb128 .LEHE196-.LEHB196
	.uleb128 .L2627-.LFB12424
	.uleb128 0
	.uleb128 .LEHB197-.LFB12424
	.uleb128 .LEHE197-.LEHB197
	.uleb128 .L2629-.LFB12424
	.uleb128 0
	.uleb128 .LEHB198-.LFB12424
	.uleb128 .LEHE198-.LEHB198
	.uleb128 .L2630-.LFB12424
	.uleb128 0
	.uleb128 .LEHB199-.LFB12424
	.uleb128 .LEHE199-.LEHB199
	.uleb128 .L2629-.LFB12424
	.uleb128 0
	.uleb128 .LEHB200-.LFB12424
	.uleb128 .LEHE200-.LEHB200
	.uleb128 .L2630-.LFB12424
	.uleb128 0
	.uleb128 .LEHB201-.LFB12424
	.uleb128 .LEHE201-.LEHB201
	.uleb128 .L2631-.LFB12424
	.uleb128 0
	.uleb128 .LEHB202-.LFB12424
	.uleb128 .LEHE202-.LEHB202
	.uleb128 .L2630-.LFB12424
	.uleb128 0
	.uleb128 .LEHB203-.LFB12424
	.uleb128 .LEHE203-.LEHB203
	.uleb128 .L2631-.LFB12424
	.uleb128 0
	.uleb128 .LEHB204-.LFB12424
	.uleb128 .LEHE204-.LEHB204
	.uleb128 .L2630-.LFB12424
	.uleb128 0
	.uleb128 .LEHB205-.LFB12424
	.uleb128 .LEHE205-.LEHB205
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB206-.LFB12424
	.uleb128 .LEHE206-.LEHB206
	.uleb128 .L2628-.LFB12424
	.uleb128 0
	.uleb128 .LEHB207-.LFB12424
	.uleb128 .LEHE207-.LEHB207
	.uleb128 .L2627-.LFB12424
	.uleb128 0
.LLSDACSE12424:
	.section	.text._ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE,"axG",@progbits,_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE,comdat
	.size	_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE, .-_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE
	.section	.text.startup
	.align	2
	.p2align 4,,11
	.type	_GLOBAL__sub_I__Z11flat_searchPfS_mmm, %function
_GLOBAL__sub_I__Z11flat_searchPfS_mmm:
.LFB12668:
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
.LFE12668:
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
.LC37:
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
