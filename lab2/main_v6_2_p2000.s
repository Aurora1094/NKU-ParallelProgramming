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
.LFB12940:
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
.LFE12940:
	.size	_ZN7hnswlib15HierarchicalNSWIfE21unmarkDeletedInternalEj.part.0, .-_ZN7hnswlib15HierarchicalNSWIfE21unmarkDeletedInternalEj.part.0
	.align	2
	.p2align 4,,11
	.type	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0, %function
_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0:
.LFB12996:
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
.LFE12996:
	.size	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0, .-_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	.section	.rodata.str1.8
	.align	3
.LC3:
	.string	"basic_string::_M_construct null not valid"
	.text
	.align	2
	.p2align 4,,11
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0:
.LFB12963:
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
	beq	.L40
	sub	x19, x2, x1
	str	x19, [sp, 56]
	mov	x21, x1
	mov	x20, x0
	cmp	x19, 15
	bhi	.L41
	ldr	x0, [x0]
	cmp	x19, 1
	bne	.L33
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
.L33:
	.cfi_restore_state
	cbnz	x19, .L32
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
.L41:
	.cfi_restore_state
	add	x1, sp, 56
	mov	x2, 0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	str	x0, [x20]
	ldr	x1, [sp, 56]
	str	x1, [x20, 16]
.L32:
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
.L40:
	.cfi_restore_state
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	_ZSt19__throw_logic_errorPKc
	.cfi_endproc
.LFE12963:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
	.section	.text._ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt7greaterIS3_EEEEvT_T0_SF_T1_RT2_.isra.0,"axG",@progbits,_Z21pq_search_rerank_v6_2PfRK7PQIndexS_mmmm,comdat
	.align	2
	.p2align 4,,11
	.type	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt7greaterIS3_EEEEvT_T0_SF_T1_RT2_.isra.0, %function
_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt7greaterIS3_EEEEvT_T0_SF_T1_RT2_.isra.0:
.LFB12955:
	.cfi_startproc
	sub	x4, x1, #1
	lsr	x9, x3, 32
	mov	w10, w9
	lsr	w3, w3, 0
	add	x4, x4, x4, lsr 63
	fmov	d0, x3
	asr	x4, x4, 1
	cmp	x1, x2
	ble	.L54
.L43:
	lsl	x3, x4, 3
	add	x5, x0, x3
	ldr	s1, [x0, x3]
	fcmpe	s0, s1
	bmi	.L45
	bgt	.L54
	ldr	w7, [x5, 4]
	cmp	w10, w7
	bcc	.L48
.L54:
	add	x5, x0, x1, lsl 3
.L44:
	str	s0, [x5]
	str	w9, [x5, 4]
	ret
	.p2align 2,,3
.L45:
	ldr	w7, [x5, 4]
.L48:
	lsl	x6, x1, 3
	sub	x3, x4, #1
	add	x8, x0, x6
	mov	x1, x4
	add	x3, x3, x3, lsr 63
	str	s1, [x0, x6]
	str	w7, [x8, 4]
	asr	x4, x3, 1
	cmp	x2, x1
	blt	.L43
	b	.L44
	.cfi_endproc
.LFE12955:
	.size	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt7greaterIS3_EEEEvT_T0_SF_T1_RT2_.isra.0, .-_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt7greaterIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	.section	.text._ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt7greaterIS3_EEEEvT_T0_SF_T1_T2_.isra.0,"axG",@progbits,_Z21pq_search_rerank_v6_2PfRK7PQIndexS_mmmm,comdat
	.align	2
	.p2align 4,,11
	.type	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt7greaterIS3_EEEEvT_T0_SF_T1_T2_.isra.0, %function
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt7greaterIS3_EEEEvT_T0_SF_T1_T2_.isra.0:
.LFB12967:
	.cfi_startproc
	mov	x10, x2
	mov	x2, x1
	sub	x8, x10, #1
	add	x8, x8, x8, lsr 63
	asr	x8, x8, 1
	cmp	x1, x8
	bge	.L56
	mov	x5, x1
	b	.L60
	.p2align 2,,3
.L64:
	mov	w6, w4
	.p2align 3,,7
.L59:
	lsl	x4, x5, 3
	mov	x5, x1
	add	x7, x0, x4
	str	s0, [x0, x4]
	str	w6, [x7, 4]
	cmp	x1, x8
	bge	.L56
.L60:
	add	x4, x5, 1
	lsl	x7, x4, 1
	lsl	x4, x4, 4
	sub	x1, x7, #1
	add	x9, x0, x4
	lsl	x6, x1, 3
	ldr	s1, [x0, x4]
	add	x4, x0, x6
	ldr	s0, [x0, x6]
	fcmpe	s0, s1
	bmi	.L66
	ldr	w6, [x9, 4]
	bgt	.L63
	ldr	w4, [x4, 4]
	cmp	w4, w6
	bcc	.L64
.L63:
	fmov	s0, s1
	lsl	x4, x5, 3
	mov	x1, x7
	add	x7, x0, x4
	mov	x5, x1
	str	s0, [x0, x4]
	str	w6, [x7, 4]
	cmp	x1, x8
	blt	.L60
.L56:
	tbnz	x10, 0, .L61
	sub	x10, x10, #2
	add	x10, x10, x10, lsr 63
	cmp	x1, x10, asr 1
	beq	.L68
.L61:
	b	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt7greaterIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	.p2align 2,,3
.L66:
	ldr	w6, [x4, 4]
	b	.L59
	.p2align 2,,3
.L68:
	lsl	x5, x1, 1
	lsl	x4, x1, 3
	add	x1, x5, 1
	add	x6, x0, x4
	lsl	x5, x1, 3
	add	x7, x0, x5
	ldr	s0, [x0, x5]
	ldr	w5, [x7, 4]
	str	s0, [x0, x4]
	str	w5, [x6, 4]
	b	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt7greaterIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	.cfi_endproc
.LFE12967:
	.size	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt7greaterIS3_EEEEvT_T0_SF_T1_T2_.isra.0, .-_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt7greaterIS3_EEEEvT_T0_SF_T1_T2_.isra.0
	.text
	.align	2
	.p2align 4,,11
	.type	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0, %function
_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0:
.LFB12952:
	.cfi_startproc
	sub	x4, x1, #1
	lsr	x9, x3, 32
	mov	w10, w9
	lsr	w3, w3, 0
	add	x4, x4, x4, lsr 63
	fmov	d0, x3
	asr	x4, x4, 1
	cmp	x1, x2
	ble	.L81
.L70:
	lsl	x3, x4, 3
	add	x5, x0, x3
	ldr	s1, [x0, x3]
	fcmpe	s0, s1
	bgt	.L72
	bmi	.L81
	ldr	w7, [x5, 4]
	cmp	w10, w7
	bhi	.L75
.L81:
	add	x5, x0, x1, lsl 3
.L71:
	str	s0, [x5]
	str	w9, [x5, 4]
	ret
	.p2align 2,,3
.L72:
	ldr	w7, [x5, 4]
.L75:
	lsl	x6, x1, 3
	sub	x3, x4, #1
	add	x8, x0, x6
	mov	x1, x4
	add	x3, x3, x3, lsr 63
	str	s1, [x0, x6]
	str	w7, [x8, 4]
	asr	x4, x3, 1
	cmp	x2, x1
	blt	.L70
	b	.L71
	.cfi_endproc
.LFE12952:
	.size	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0, .-_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	.align	2
	.p2align 4,,11
	.type	_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0, %function
_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0:
.LFB12950:
	.cfi_startproc
	cbz	x0, .L143
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
.L100:
	ldr	x24, [x23, 24]
	cbz	x24, .L84
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -24
	.cfi_offset 25, -32
.L99:
	ldr	x25, [x24, 24]
	cbz	x25, .L85
.L98:
	ldr	x26, [x25, 24]
	cbz	x26, .L86
.L97:
	ldr	x19, [x26, 24]
	cbz	x19, .L87
.L96:
	ldr	x20, [x19, 24]
	cbz	x20, .L88
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -56
	.cfi_offset 21, -64
	str	x27, [sp, 80]
	.cfi_offset 27, -16
.L95:
	ldr	x27, [x20, 24]
	cbz	x27, .L89
.L94:
	ldr	x21, [x27, 24]
	cbz	x21, .L90
.L93:
	ldr	x22, [x21, 24]
	cbz	x22, .L91
.L92:
	ldr	x0, [x22, 24]
	bl	_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0
	mov	x0, x22
	ldr	x22, [x22, 16]
	bl	_ZdlPv
	cbnz	x22, .L92
.L91:
	ldr	x22, [x21, 16]
	mov	x0, x21
	bl	_ZdlPv
	cbz	x22, .L90
	mov	x21, x22
	b	.L93
.L144:
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldr	x27, [sp, 80]
	.cfi_restore 27
.L88:
	mov	x0, x19
	ldr	x20, [x19, 16]
	bl	_ZdlPv
	cbz	x20, .L87
	mov	x19, x20
	b	.L96
	.p2align 2,,3
.L89:
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 27, -16
	ldr	x21, [x20, 16]
	mov	x0, x20
	bl	_ZdlPv
	cbz	x21, .L144
	mov	x20, x21
	b	.L95
.L87:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 27
	ldr	x19, [x26, 16]
	mov	x0, x26
	bl	_ZdlPv
	cbz	x19, .L86
	mov	x26, x19
	b	.L97
	.p2align 2,,3
.L90:
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 27, -16
	ldr	x21, [x27, 16]
	mov	x0, x27
	bl	_ZdlPv
	cbz	x21, .L89
	mov	x27, x21
	b	.L94
.L86:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 27
	ldr	x19, [x25, 16]
	mov	x0, x25
	bl	_ZdlPv
	cbz	x19, .L85
	mov	x25, x19
	b	.L98
.L85:
	ldr	x19, [x24, 16]
	mov	x0, x24
	bl	_ZdlPv
	cbz	x19, .L145
	mov	x24, x19
	b	.L99
.L145:
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
.L84:
	mov	x0, x23
	ldr	x19, [x23, 16]
	bl	_ZdlPv
	cbz	x19, .L146
	mov	x23, x19
	b	.L100
.L146:
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
.L143:
	ret
	.cfi_endproc
.LFE12950:
	.size	_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0, .-_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0
	.section	.text._ZN7PQIndexD2Ev,"axG",@progbits,_ZN7PQIndexD5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7PQIndexD2Ev
	.type	_ZN7PQIndexD2Ev, %function
_ZN7PQIndexD2Ev:
.LFB10486:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	ldr	x0, [x0, 64]
	cbz	x0, .L148
	bl	_ZdlPv
.L148:
	ldr	x0, [x19, 40]
	cbz	x0, .L147
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	b	_ZdlPv
	.p2align 2,,3
.L147:
	.cfi_restore_state
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10486:
	.size	_ZN7PQIndexD2Ev, .-_ZN7PQIndexD2Ev
	.weak	_ZN7PQIndexD1Ev
	.set	_ZN7PQIndexD1Ev,_ZN7PQIndexD2Ev
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
.LFB10736:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10736
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
	beq	.L168
	str	x20, [sp, 72]
	mov	x19, x8
	mov	x21, x1
	cmp	x20, 15
	bhi	.L169
	cmp	x20, 1
	bne	.L158
	ldrb	w1, [x23]
	mov	x0, x22
	strb	w1, [x8, 16]
.L159:
	str	x20, [x19, 8]
	strb	wzr, [x0, x20]
	mov	x0, x21
	bl	strlen
	mov	x2, x0
	ldr	x1, [x19, 8]
	mov	x0, 4611686018427387903
	sub	x0, x0, x1
	cmp	x2, x0
	bhi	.L170
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
.L158:
	.cfi_restore_state
	mov	x0, x22
	cbz	x20, .L159
	b	.L157
	.p2align 2,,3
.L169:
	add	x1, sp, 72
	mov	x0, x8
	mov	x2, 0
.LEHB1:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
.LEHE1:
	ldr	x1, [sp, 72]
	str	x0, [x19]
	str	x1, [x19, 16]
.L157:
	mov	x2, x20
	mov	x1, x23
	bl	memcpy
	ldr	x0, [x19]
	ldr	x20, [sp, 72]
	b	.L159
.L170:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
.LEHB2:
	bl	_ZSt20__throw_length_errorPKc
.LEHE2:
.L168:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
.LEHB3:
	bl	_ZSt19__throw_logic_errorPKc
.L164:
	ldr	x1, [x19]
	mov	x19, x0
	cmp	x1, x22
	beq	.L162
	mov	x0, x1
	bl	_ZdlPv
.L162:
	mov	x0, x19
	bl	_Unwind_Resume
.LEHE3:
	.cfi_endproc
.LFE10736:
	.global	__gxx_personality_v0
	.section	.gcc_except_table._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,"aG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,comdat
.LLSDA10736:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10736-.LLSDACSB10736
.LLSDACSB10736:
	.uleb128 .LEHB0-.LFB10736
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L164-.LFB10736
	.uleb128 0
	.uleb128 .LEHB1-.LFB10736
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB10736
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L164-.LFB10736
	.uleb128 0
	.uleb128 .LEHB3-.LFB10736
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE10736:
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,comdat
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_, .-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
	.section	.text._ZNSt11unique_lockISt5mutexE6unlockEv,"axG",@progbits,_ZNSt11unique_lockISt5mutexE6unlockEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt11unique_lockISt5mutexE6unlockEv
	.type	_ZNSt11unique_lockISt5mutexE6unlockEv, %function
_ZNSt11unique_lockISt5mutexE6unlockEv:
.LFB11143:
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
	cbz	w0, .L182
	ldr	x0, [x19]
	cbz	x0, .L171
	adrp	x1, .LC5
	ldr	x1, [x1, #:lo12:.LC5]
	cbz	x1, .L174
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L174:
	strb	wzr, [x19, 8]
.L171:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
.L182:
	.cfi_restore_state
	mov	w0, 1
	bl	_ZSt20__throw_system_errori
	.cfi_endproc
.LFE11143:
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
	cbz	x21, .L184
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L216
.L184:
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
	cbnz	x0, .L217
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
.L188:
	ldrb	w0, [sp, 56]
	cbnz	w0, .L187
.L189:
	ldrh	w0, [x20]
	add	w0, w0, 1
	and	w0, w0, 65535
	strh	w0, [x20]
	cbz	w0, .L218
.L183:
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
.L217:
	.cfi_restore_state
	sub	x4, x4, #8
	ldr	x20, [x2]
	cmp	x2, x4
	beq	.L186
	add	x2, x2, 8
	str	x2, [x19, 16]
.L187:
	ldr	x0, [sp, 48]
	cbz	x0, .L189
	cbz	x21, .L189
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	ldrh	w0, [x20]
	add	w0, w0, 1
	and	w0, w0, 65535
	strh	w0, [x20]
	cbnz	w0, .L183
.L218:
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
.L186:
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
	b	.L188
.L216:
.LEHB6:
	bl	_ZSt20__throw_system_errori
.LEHE6:
.L195:
	mov	x19, x0
	b	.L193
.L196:
	mov	x19, x0
	mov	x0, x20
	bl	_ZdlPv
.L193:
	ldrb	w0, [sp, 56]
	cbz	w0, .L194
	add	x0, sp, 48
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L194:
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
	.uleb128 .L195-.LFB4141
	.uleb128 0
	.uleb128 .LEHB5-.LFB4141
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L196-.LFB4141
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
	.section	.rodata._ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf.str1.8,"aMS",@progbits,1
	.align	3
.LC6:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf,"axG",@progbits,_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf
	.type	_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf, %function
_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf:
.LFB11215:
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
	bhi	.L246
	ldr	x4, [x19, 8]
	sub	x0, x4, x3
	asr	x0, x0, 2
	cmp	x1, x0
	bls	.L227
	ldr	s0, [x2]
	cmp	x3, x4
	beq	.L228
	.p2align 3,,7
.L229:
	str	s0, [x3], 4
	cmp	x4, x3
	bne	.L229
	ldr	s0, [x20]
.L228:
	sub	x1, x1, x0
	add	x1, x4, x1, lsl 2
	cmp	x4, x1
	beq	.L231
	.p2align 3,,7
.L230:
	str	s0, [x4], 4
	cmp	x1, x4
	bne	.L230
.L231:
	str	x1, [x19, 8]
.L219:
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
.L227:
	.cfi_restore_state
	mov	x0, x3
	cbz	x1, .L232
	add	x0, x3, x1, lsl 2
	ldr	s0, [x2]
	cmp	x3, x0
	beq	.L232
	.p2align 3,,7
.L233:
	str	s0, [x3], 4
	cmp	x0, x3
	bne	.L233
.L232:
	cmp	x4, x0
	beq	.L219
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
.L246:
	.cfi_restore_state
	str	x21, [sp, 32]
	.cfi_offset 21, -16
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bhi	.L247
	lsl	x21, x1, 2
	cbz	x1, .L234
	mov	x0, x21
	bl	_Znwm
	add	x2, x0, x21
	ldr	s0, [x20]
	cmp	x0, x2
	beq	.L223
	mov	x1, x0
	.p2align 3,,7
.L224:
	str	s0, [x1], 4
	cmp	x1, x2
	bne	.L224
.L223:
	ldr	x3, [x19]
.L222:
	stp	x0, x2, [x19]
	str	x2, [x19, 16]
	cbz	x3, .L245
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
.L245:
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
.L234:
	.cfi_restore_state
	mov	x0, 0
	mov	x2, 0
	b	.L222
.L247:
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE11215:
	.size	_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf, .-_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf
	.section	.text._ZNSt6vectorIhSaIhEE14_M_fill_assignEmRKh,"axG",@progbits,_ZNSt6vectorIhSaIhEE14_M_fill_assignEmRKh,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorIhSaIhEE14_M_fill_assignEmRKh
	.type	_ZNSt6vectorIhSaIhEE14_M_fill_assignEmRKh, %function
_ZNSt6vectorIhSaIhEE14_M_fill_assignEmRKh:
.LFB11216:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x20, x0
	mov	x19, x1
	ldr	x0, [x0]
	ldr	x1, [x20, 16]
	str	x21, [sp, 32]
	.cfi_offset 21, -16
	mov	x21, x2
	sub	x1, x1, x0
	cmp	x19, x1
	bhi	.L272
	ldr	x3, [x20, 8]
	sub	x2, x3, x0
	cmp	x19, x2
	bhi	.L273
	cbz	x19, .L257
	ldrb	w1, [x21]
	mov	x2, x19
	add	x21, x0, x19
	bl	memset
	ldr	x3, [x20, 8]
	mov	x0, x21
.L257:
	cmp	x0, x3
	beq	.L248
	str	x0, [x20, 8]
.L248:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L273:
	.cfi_restore_state
	cbnz	x2, .L274
.L255:
	subs	x2, x19, x2
	bne	.L275
	str	x3, [x20, 8]
.L277:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L272:
	.cfi_restore_state
	cmp	x19, 0
	blt	.L276
	beq	.L258
	mov	x0, x19
	bl	_Znwm
	ldrb	w1, [x21]
	mov	x2, x19
	mov	x21, x0
	add	x19, x0, x19
	bl	memset
	ldr	x0, [x20]
.L251:
	stp	x21, x19, [x20]
	str	x19, [x20, 16]
	cbz	x0, .L248
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	_ZdlPv
	.p2align 2,,3
.L275:
	.cfi_restore_state
	ldrb	w1, [x21]
	mov	x0, x3
	add	x21, x3, x2
	bl	memset
	mov	x3, x21
	str	x3, [x20, 8]
	b	.L277
	.p2align 2,,3
.L274:
	ldrb	w1, [x21]
	bl	memset
	ldp	x2, x3, [x20]
	sub	x2, x3, x2
	b	.L255
	.p2align 2,,3
.L258:
	mov	x21, 0
	mov	x19, 0
	b	.L251
.L276:
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE11216:
	.size	_ZNSt6vectorIhSaIhEE14_M_fill_assignEmRKh, .-_ZNSt6vectorIhSaIhEE14_M_fill_assignEmRKh
	.section	.text._Z20build_pq_index_basicPKfmmmmmi,"axG",@progbits,_Z20build_pq_index_basicPKfmmmmmi,comdat
	.align	2
	.p2align 4,,11
	.weak	_Z20build_pq_index_basicPKfmmmmmi
	.type	_Z20build_pq_index_basicPKfmmmmmi, %function
_Z20build_pq_index_basicPKfmmmmmi:
.LFB10461:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10461
	stp	x29, x30, [sp, -272]!
	.cfi_def_cfa_offset 272
	.cfi_offset 29, -272
	.cfi_offset 30, -264
	mov	x7, x8
	add	x9, x8, 64
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	cmp	x3, 0
	.cfi_offset 19, -256
	.cfi_offset 20, -248
	mov	x20, x2
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	.cfi_offset 21, -240
	.cfi_offset 22, -232
	.cfi_offset 23, -224
	.cfi_offset 24, -216
	mov	x24, x5
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -208
	.cfi_offset 26, -200
	mov	x25, x1
	stp	x27, x28, [sp, 80]
	.cfi_offset 27, -192
	.cfi_offset 28, -184
	mov	x28, x0
	mov	w0, w6
	str	d8, [sp, 96]
	.cfi_offset 72, -176
	str	x4, [x7, 8]
	stp	x2, x1, [x7, 24]
	mov	x2, 1
	csel	x22, x3, x2, ne
	stp	xzr, xzr, [x7, 40]
	stp	xzr, xzr, [x7, 56]
	stp	xzr, xzr, [x7, 72]
	str	x8, [sp, 120]
	add	x8, x8, 40
	str	x8, [sp, 152]
	str	x9, [sp, 168]
	cbnz	x4, .L279
	mov	x1, x2
	str	x2, [x7, 8]
.L280:
	udiv	x19, x20, x22
	msub	x2, x19, x22, x20
	cbnz	x2, .L353
	mul	x1, x1, x22
.L281:
	cmp	x24, 0
	mul	x1, x19, x1
	ccmp	x25, x24, 0, ne
	add	x2, sp, 268
	csel	x24, x24, x25, cs
	cmp	w0, 0
	ldr	x21, [sp, 120]
	csinc	w0, w0, wzr, gt
	str	w0, [sp, 180]
	ldr	x0, [sp, 152]
	str	x22, [x21]
	str	x19, [x21, 16]
	str	wzr, [sp, 268]
.LEHB8:
	bl	_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf
	ldr	x1, [x21]
	add	x2, sp, 268
	ldr	x0, [sp, 168]
	strb	wzr, [sp, 268]
	mul	x1, x25, x1
	bl	_ZNSt6vectorIhSaIhEE14_M_fill_assignEmRKh
	ldr	x7, [x21]
	cbz	x7, .L332
	sub	x0, x25, #1
	mvni	v8.2s, 0x7f, msl 16
	lsl	x23, x19, 2
	str	x0, [sp, 184]
	sub	x1, x24, #1
	mov	x27, 0
	mul	x0, x20, x0
	str	xzr, [sp, 128]
	str	x0, [sp, 192]
	str	x1, [sp, 200]
.L333:
	ldp	x0, x1, [sp, 120]
	ldr	x4, [x0, 8]
	ldr	x0, [sp, 152]
	mul	x21, x4, x19
	ldr	x0, [x0]
	mul	x1, x1, x21
	add	x0, x0, x1, lsl 2
	str	x0, [sp, 160]
	cbz	x4, .L291
	ldr	x0, [sp, 192]
	mov	x5, 0
	ldr	x2, [sp, 160]
	add	x6, x27, x0
	mov	x3, 0
.L292:
	udiv	x0, x5, x4
	mov	x1, x27
	ldr	x7, [sp, 200]
	cmp	x24, x0
	csel	x0, x7, x0, ls
	cmp	x24, 1
	bls	.L289
	mul	x0, x0, x25
	udiv	x0, x0, x24
	madd	x1, x20, x0, x27
	cmp	x25, x0
	csel	x1, x1, x6, hi
.L289:
	add	x1, x28, x1, lsl 2
	mov	x0, 0
	cmp	x20, x22
	bcc	.L293
	.p2align 3,,7
.L294:
	ldr	s0, [x1, x0, lsl 2]
	str	s0, [x2, x0, lsl 2]
	add	x0, x0, 1
	cmp	x0, x19
	bcc	.L294
.L293:
	add	x3, x3, 1
	add	x5, x5, x24
	add	x2, x2, x23
	cmp	x4, x3
	bne	.L292
.L291:
	cmp	x24, 0
	blt	.L407
	beq	.L357
	mov	x0, x24
	bl	_Znwm
.LEHE8:
	ldr	x1, [sp, 120]
	mov	x2, x24
	mov	x26, x0
	ldr	x4, [x1, 8]
	mov	w1, 0
	str	x4, [sp, 136]
	mul	x21, x19, x4
	bl	memset
	ldr	x4, [sp, 136]
.L295:
	mov	x0, 2305843009213693951
	cmp	x21, x0
	bhi	.L408
	cbz	x21, .L358
	lsl	x2, x21, 2
	mov	x21, x2
	mov	x0, x2
.LEHB9:
	bl	_Znwm
.LEHE9:
	mov	x2, x21
	mov	w1, 0
	add	x3, x0, x2
	str	x3, [sp, 136]
	ldr	x3, [sp, 120]
	mov	x21, x0
	ldr	x4, [x3, 8]
	str	x4, [sp, 144]
	bl	memset
	ldr	x4, [sp, 144]
.L297:
	mov	x0, 2305843009213693951
	cmp	x4, x0
	bhi	.L409
	cbz	x4, .L359
	lsl	x2, x4, 2
	str	x2, [sp, 144]
	mov	x0, x2
.LEHB10:
	bl	_Znwm
.LEHE10:
	ldr	x2, [sp, 144]
	mov	w1, 0
	str	x0, [sp, 216]
	add	x3, x0, x2
	str	x3, [sp, 144]
	ldr	x3, [sp, 120]
	ldr	x4, [x3, 8]
	str	x4, [sp, 208]
	bl	memset
	ldp	x4, x5, [sp, 208]
.L299:
	add	x6, x5, x4, lsl 2
	lsl	x8, x27, 2
	mov	x3, x27
	mov	x27, x26
	mov	x26, x5
	mov	x5, x21
	mov	x21, x4
	ldr	x9, [sp, 160]
	mov	w7, 0
	ldr	x4, [sp, 184]
.L318:
	mov	x13, 0
	mov	x12, 0
	cbz	x24, .L350
	.p2align 3,,7
.L300:
	cmp	x24, 1
	beq	.L303
	udiv	x0, x13, x24
	cmp	x25, x0
	csel	x0, x0, x4, hi
	madd	x2, x20, x0, x3
	lsl	x2, x2, 2
	cbz	x21, .L361
.L352:
	fmov	s3, s8
	add	x2, x28, x2
	mov	x1, x9
	mov	x10, 0
	mov	w11, 0
	.p2align 3,,7
.L310:
	movi	v0.2s, #0
	cmp	x20, x22
	bcc	.L306
	mov	x0, 0
	.p2align 3,,7
.L307:
	ldr	s2, [x1, x0, lsl 2]
	ldr	s1, [x2, x0, lsl 2]
	add	x0, x0, 1
	fmadd	s0, s2, s1, s0
	cmp	x0, x19
	bcc	.L307
.L306:
	fcmpe	s3, s0
	bmi	.L369
.L308:
	add	x10, x10, 1
	add	x1, x1, x23
	cmp	x10, x21
	bcc	.L310
	strb	w11, [x27, x12]
	add	x12, x12, 1
	add	x13, x13, x25
	cmp	x24, x12
	bne	.L300
.L350:
	ldr	x0, [sp, 136]
	cmp	x0, x5
	beq	.L301
	ldr	x0, [sp, 136]
	mov	w1, 0
	str	x9, [sp, 160]
	sub	x2, x0, x5
	mov	x0, x5
	str	w7, [sp, 208]
	stp	x8, x4, [sp, 216]
	stp	x3, x6, [sp, 232]
	bl	memset
	ldr	w7, [sp, 208]
	ldp	x8, x4, [sp, 216]
	mov	x5, x0
	ldp	x3, x6, [sp, 232]
	ldr	x9, [sp, 160]
.L301:
	ldr	x0, [sp, 144]
	cmp	x26, x0
	beq	.L312
	ldr	x0, [sp, 144]
	mov	w1, 0
	str	x9, [sp, 160]
	sub	x2, x0, x26
	mov	x0, x26
	str	w7, [sp, 208]
	stp	x8, x4, [sp, 216]
	stp	x3, x5, [sp, 232]
	str	x6, [sp, 248]
	bl	memset
	ldp	x8, x4, [sp, 216]
	ldp	x3, x5, [sp, 232]
	ldr	w7, [sp, 208]
	ldr	x9, [sp, 160]
	ldr	x6, [sp, 248]
.L312:
	cbz	x24, .L348
	mov	x12, 0
	mov	x11, 0
	.p2align 3,,7
.L315:
	ldrb	w10, [x27, x11]
	and	x0, x10, 255
	mul	x0, x0, x19
	cmp	x24, 1
	beq	.L319
	udiv	x1, x12, x24
	cmp	x25, x1
	csel	x1, x1, x4, hi
	madd	x2, x20, x1, x3
	cmp	x20, x22
	bcc	.L322
.L321:
	add	x2, x28, x2, lsl 2
	add	x1, x5, x0, lsl 2
	mov	x0, 0
	.p2align 3,,7
.L323:
	ldr	s0, [x1, x0, lsl 2]
	ldr	s1, [x2, x0, lsl 2]
	fadd	s0, s0, s1
	str	s0, [x1, x0, lsl 2]
	add	x0, x0, 1
	cmp	x0, x19
	bcc	.L323
.L322:
	uxtw	x10, w10
	add	x11, x11, 1
	add	x12, x12, x25
	ldr	w0, [x26, x10, lsl 2]
	add	w0, w0, 1
	str	w0, [x26, x10, lsl 2]
	cmp	x24, x11
	bne	.L315
.L348:
	mov	x2, x5
	mov	x1, x9
	mov	x10, x26
	fmov	s2, 1.0e+0
	cbnz	x21, .L326
	b	.L325
.L327:
	add	x10, x10, 4
	add	x2, x2, x23
	add	x1, x1, x23
	cmp	x10, x6
	beq	.L325
.L326:
	ldr	w0, [x10]
	cbz	w0, .L327
	scvtf	s1, w0
	fdiv	s1, s2, s1
	cmp	x20, x22
	bcc	.L327
	mov	x0, 0
	.p2align 3,,7
.L328:
	ldr	s0, [x2, x0, lsl 2]
	fmul	s0, s0, s1
	str	s0, [x1, x0, lsl 2]
	add	x0, x0, 1
	cmp	x0, x19
	bcc	.L328
	add	x10, x10, 4
	add	x2, x2, x23
	add	x1, x1, x23
	cmp	x10, x6
	bne	.L326
.L325:
	ldr	w0, [sp, 180]
	add	w7, w7, 1
	cmp	w0, w7
	bne	.L318
	mov	x21, x5
	mov	x5, x26
	mov	x26, x27
	mov	x27, x3
	cbz	x5, .L329
	mov	x0, x5
	bl	_ZdlPv
.L329:
	cbz	x21, .L330
	mov	x0, x21
	bl	_ZdlPv
.L330:
	cbz	x26, .L331
	mov	x0, x26
	bl	_ZdlPv
.L331:
	ldr	x0, [sp, 120]
	add	x27, x27, x19
	ldr	x7, [x0]
	ldr	x0, [sp, 128]
	add	x0, x0, 1
	str	x0, [sp, 128]
	cmp	x7, x0
	bhi	.L333
.L332:
	mov	x11, 0
	mov	x10, 0
	cbz	x25, .L278
	mvni	v4.2s, 0x7f, msl 16
	ldr	x12, [sp, 120]
	ldr	x13, [sp, 168]
.L284:
	mov	x9, 0
	cbz	x7, .L342
.L334:
	ldp	x5, x2, [x12, 8]
	ldr	x0, [sp, 152]
	madd	x3, x2, x9, x11
	mul	x1, x2, x5
	ldr	x0, [x0]
	lsl	x3, x3, 2
	cbz	x5, .L364
	mul	x1, x1, x9
	fmov	s3, s4
	add	x3, x28, x3
	lsl	x6, x2, 2
	mov	x4, 0
	mov	w8, 0
	add	x1, x0, x1, lsl 2
	.p2align 3,,7
.L341:
	movi	v0.2s, #0
	cbz	x2, .L337
	mov	x0, 0
	.p2align 3,,7
.L338:
	ldr	s2, [x3, x0, lsl 2]
	ldr	s1, [x1, x0, lsl 2]
	add	x0, x0, 1
	fmadd	s0, s2, s1, s0
	cmp	x2, x0
	bne	.L338
.L337:
	fcmpe	s0, s3
	bgt	.L370
.L339:
	add	x4, x4, 1
	add	x1, x1, x6
	cmp	x5, x4
	bne	.L341
	ldr	x0, [x13]
	madd	x7, x7, x10, x0
	strb	w8, [x7, x9]
	add	x9, x9, 1
	ldr	x7, [x12]
	cmp	x7, x9
	bhi	.L334
.L342:
	add	x10, x10, 1
	add	x11, x11, x20
	cmp	x25, x10
	bne	.L284
.L278:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldr	d8, [sp, 96]
	ldr	x0, [sp, 120]
	ldp	x29, x30, [sp], 272
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
.L369:
	.cfi_restore_state
	fmov	s3, s0
	and	w11, w10, 255
	b	.L308
.L319:
	cmp	x20, x22
	bcc	.L349
	mov	x2, x3
	b	.L321
.L303:
	cbz	x21, .L351
	mov	x2, x8
	b	.L352
.L361:
	mov	w11, 0
	strb	w11, [x27, x12]
	add	x12, x12, 1
	add	x13, x13, x25
	cmp	x24, x12
	bne	.L300
	b	.L350
.L349:
	ldr	w0, [x26, x10, lsl 2]
	add	w0, w0, 1
	str	w0, [x26, x10, lsl 2]
	b	.L348
.L351:
	strb	wzr, [x27, x12]
	b	.L350
.L359:
	mov	x5, 0
	str	xzr, [sp, 144]
	b	.L299
.L358:
	mov	x21, 0
	str	xzr, [sp, 136]
	b	.L297
.L357:
	mov	x26, 0
	b	.L295
.L370:
	fmov	s3, s0
	and	w8, w4, 255
	b	.L339
.L364:
	ldr	x0, [x13]
	mov	w8, 0
	madd	x7, x7, x10, x0
	strb	w8, [x7, x9]
	add	x9, x9, 1
	ldr	x7, [x12]
	cmp	x7, x9
	bhi	.L334
	b	.L342
.L353:
	mov	x19, x20
	mov	x22, 1
	b	.L281
.L279:
	mov	x1, x4
	cmp	x4, 256
	bls	.L280
	ldr	x3, [sp, 120]
	mov	x2, 256
	mov	x1, x2
	str	x2, [x3, 8]
	b	.L280
.L407:
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
.LEHB11:
	bl	_ZSt20__throw_length_errorPKc
.LEHE11:
.L409:
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
.LEHB12:
	bl	_ZSt20__throw_length_errorPKc
.LEHE12:
.L408:
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
.LEHB13:
	bl	_ZSt20__throw_length_errorPKc
.LEHE13:
.L367:
	mov	x19, x0
.L345:
	cbz	x26, .L347
.L410:
	mov	x0, x26
	bl	_ZdlPv
.L347:
	ldr	x0, [sp, 120]
	bl	_ZN7PQIndexD1Ev
	mov	x0, x19
.LEHB14:
	bl	_Unwind_Resume
.LEHE14:
.L366:
	mov	x19, x0
	b	.L347
.L368:
	mov	x19, x0
	cbz	x21, .L345
	mov	x0, x21
	bl	_ZdlPv
	cbnz	x26, .L410
	b	.L347
	.cfi_endproc
.LFE10461:
	.section	.gcc_except_table._Z20build_pq_index_basicPKfmmmmmi,"aG",@progbits,_Z20build_pq_index_basicPKfmmmmmi,comdat
.LLSDA10461:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10461-.LLSDACSB10461
.LLSDACSB10461:
	.uleb128 .LEHB8-.LFB10461
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L366-.LFB10461
	.uleb128 0
	.uleb128 .LEHB9-.LFB10461
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L367-.LFB10461
	.uleb128 0
	.uleb128 .LEHB10-.LFB10461
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L368-.LFB10461
	.uleb128 0
	.uleb128 .LEHB11-.LFB10461
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L366-.LFB10461
	.uleb128 0
	.uleb128 .LEHB12-.LFB10461
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L368-.LFB10461
	.uleb128 0
	.uleb128 .LEHB13-.LFB10461
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L367-.LFB10461
	.uleb128 0
	.uleb128 .LEHB14-.LFB10461
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE10461:
	.section	.text._Z20build_pq_index_basicPKfmmmmmi,"axG",@progbits,_Z20build_pq_index_basicPKfmmmmmi,comdat
	.size	_Z20build_pq_index_basicPKfmmmmmi, .-_Z20build_pq_index_basicPKfmmmmmi
	.section	.text._ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev,"axG",@progbits,_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev
	.type	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev, %function
_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev:
.LFB11339:
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
	cbz	x19, .L412
	.p2align 3,,7
.L413:
	mov	x0, x19
	ldr	x19, [x19]
	bl	_ZdlPv
	cbnz	x19, .L413
.L412:
	ldp	x0, x2, [x20]
	mov	w1, 0
	lsl	x2, x2, 3
	bl	memset
	mov	x1, x20
	ldr	x0, [x1], 48
	stp	xzr, xzr, [x20, 16]
	cmp	x0, x1
	beq	.L411
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
.L411:
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
.LFE11339:
	.size	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev, .-_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev
	.weak	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED1Ev
	.set	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED1Ev,_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev
	.section	.text._ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev,"axG",@progbits,_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev
	.type	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev, %function
_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev:
.LFB11351:
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
	cbz	x19, .L421
	.p2align 3,,7
.L422:
	mov	x0, x19
	ldr	x19, [x19]
	bl	_ZdlPv
	cbnz	x19, .L422
.L421:
	ldp	x0, x2, [x20]
	mov	w1, 0
	lsl	x2, x2, 3
	bl	memset
	mov	x1, x20
	ldr	x0, [x1], 48
	stp	xzr, xzr, [x20, 16]
	cmp	x0, x1
	beq	.L420
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
.L420:
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
.LFE11351:
	.size	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev, .-_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev
	.weak	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	.set	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev,_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev
	.section	.text._ZN7hnswlib15HierarchicalNSWIfED2Ev,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfED2Ev
	.type	_ZN7hnswlib15HierarchicalNSWIfED2Ev, %function
_ZN7hnswlib15HierarchicalNSWIfED2Ev:
.LFB12719:
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
.L432:
	ldar	x0, [x20]
	uxtw	x1, w19
	add	w19, w19, 1
	cmp	x1, x0
	bcs	.L430
.L488:
	ldr	x0, [x22, 272]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	ble	.L432
	ldr	x0, [x22, 264]
	ldr	x0, [x0, x1, lsl 3]
	bl	free
	ldar	x0, [x20]
	uxtw	x1, w19
	add	w19, w19, 1
	cmp	x1, x0
	bcc	.L488
.L430:
	ldr	x0, [x22, 264]
	bl	free
	str	xzr, [x22, 264]
	stlr	xzr, [x20]
	ldr	x23, [x22, 112]
	str	xzr, [x22, 112]
	cbz	x23, .L433
	add	x20, x23, 48
	add	x19, x23, 16
	b	.L437
	.p2align 2,,3
.L487:
	str	x0, [x23, 16]
	cbnz	x21, .L489
.L437:
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
	cbz	x1, .L434
	ldr	x21, [x4]
	cmp	x4, x3
	bne	.L487
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
	cbz	x21, .L437
	.p2align 3,,7
.L489:
	ldr	x0, [x21, 8]
	cbz	x0, .L438
	bl	_ZdaPv
.L438:
	mov	x0, x21
	bl	_ZdlPv
	b	.L437
	.p2align 2,,3
.L434:
	ldr	x0, [x23]
	cbz	x0, .L440
	add	x19, x6, 8
	cmp	x21, x19
	bcs	.L441
	.p2align 3,,7
.L442:
	ldr	x0, [x21], 8
	bl	_ZdlPv
	cmp	x19, x21
	bhi	.L442
	ldr	x0, [x23]
.L441:
	bl	_ZdlPv
.L440:
	mov	x0, x23
	bl	_ZdlPv
.L433:
	add	x0, x22, 512
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	add	x0, x22, 368
	bl	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED1Ev
	ldr	x0, [x22, 272]
	cbz	x0, .L443
	bl	_ZdlPv
.L443:
	ldr	x0, [x22, 192]
	cbz	x0, .L444
	bl	_ZdlPv
.L444:
	ldr	x0, [x22, 120]
	cbz	x0, .L445
	bl	_ZdlPv
.L445:
	ldr	x22, [x22, 112]
	cbz	x22, .L429
	add	x20, x22, 48
	add	x19, x22, 16
	.p2align 3,,7
.L450:
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
	cbz	x0, .L447
	ldr	x21, [x3]
	cmp	x3, x2
	beq	.L448
	str	x6, [x22, 16]
	cbz	x21, .L450
.L490:
	ldr	x0, [x21, 8]
	cbz	x0, .L451
	bl	_ZdaPv
.L451:
	mov	x0, x21
	bl	_ZdlPv
	b	.L450
	.p2align 2,,3
.L448:
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
	cbz	x21, .L450
	b	.L490
	.p2align 2,,3
.L447:
	ldr	x0, [x22]
	cbz	x0, .L453
	add	x19, x5, 8
	cmp	x21, x19
	bcs	.L454
	.p2align 3,,7
.L455:
	ldr	x0, [x21], 8
	bl	_ZdlPv
	cmp	x19, x21
	bhi	.L455
	ldr	x0, [x22]
.L454:
	bl	_ZdlPv
.L453:
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
.L429:
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
.LFE12719:
	.size	_ZN7hnswlib15HierarchicalNSWIfED2Ev, .-_ZN7hnswlib15HierarchicalNSWIfED2Ev
	.weak	_ZN7hnswlib15HierarchicalNSWIfED1Ev
	.set	_ZN7hnswlib15HierarchicalNSWIfED1Ev,_ZN7hnswlib15HierarchicalNSWIfED2Ev
	.section	.text._ZN7hnswlib15HierarchicalNSWIfED0Ev,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfED0Ev
	.type	_ZN7hnswlib15HierarchicalNSWIfED0Ev, %function
_ZN7hnswlib15HierarchicalNSWIfED0Ev:
.LFB12721:
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
.LFE12721:
	.size	_ZN7hnswlib15HierarchicalNSWIfED0Ev, .-_ZN7hnswlib15HierarchicalNSWIfED0Ev
	.section	.text._ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv,"axG",@progbits,_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	.type	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv, %function
_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv:
.LFB11705:
	.cfi_startproc
	ldp	x1, x2, [x0]
	sub	x3, x2, x1
	sub	x9, x2, #8
	cmp	x3, 8
	bgt	.L515
	str	x9, [x0, 8]
	ret
	.p2align 2,,3
.L515:
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
	ble	.L495
	mov	x4, 0
	.p2align 3,,7
.L499:
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
	bmi	.L510
.L496:
	lsl	x2, x4, 3
	ldr	w6, [x7, 4]
	add	x5, x1, x2
	mov	x4, x3
	str	s0, [x1, x2]
	str	w6, [x5, 4]
	cmp	x3, x8
	blt	.L499
	lsl	x6, x3, 3
	cbz	x12, .L516
.L502:
	sub	x3, x3, #1
	asr	x4, x3, 1
	.p2align 3,,7
.L505:
	lsl	x5, x4, 3
	sub	x2, x4, #1
	add	x8, x1, x5
	add	x7, x1, x6
	add	x2, x2, x2, lsr 63
	ldr	s0, [x1, x5]
	asr	x2, x2, 1
	fcmpe	s2, s0
	bgt	.L511
.L500:
	str	w10, [x7, 4]
	str	s2, [x7]
.L518:
	str	x9, [x0, 8]
	ret
	.p2align 2,,3
.L511:
	ldr	w3, [x8, 4]
	str	s0, [x1, x6]
	lsl	x6, x4, 3
	str	w3, [x7, 4]
	cbz	x4, .L517
	mov	x4, x2
	b	.L505
	.p2align 2,,3
.L510:
	fmov	s0, s1
	mov	x7, x2
	mov	x3, x6
	b	.L496
	.p2align 2,,3
.L516:
	sub	x11, x11, #2
	add	x11, x11, x11, lsr 63
	cmp	x3, x11, asr 1
	beq	.L501
	sub	x4, x3, #1
	lsl	x6, x3, 3
	asr	x4, x4, 1
	b	.L505
	.p2align 2,,3
.L517:
	mov	x7, x8
	str	s2, [x7]
	str	w10, [x7, 4]
	b	.L518
	.p2align 2,,3
.L495:
	mov	x7, x1
	cbnz	x12, .L500
	cmp	x3, 2
	bhi	.L500
	mov	x3, 0
	.p2align 3,,7
.L501:
	lsl	x3, x3, 1
	add	x3, x3, 1
	lsl	x6, x3, 3
	add	x2, x1, x6
	ldr	s0, [x1, x6]
	ldr	w2, [x2, 4]
	str	w2, [x7, 4]
	str	s0, [x7]
	b	.L502
	.cfi_endproc
.LFE11705:
	.size	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv, .-_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji
	.type	_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji, %function
_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji:
.LFB11724:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11724
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
	cbz	x0, .L550
	adrp	x1, .LC5
	mov	x20, x8
	mov	w19, w2
	ldr	x22, [x1, #:lo12:.LC5]
	cbz	x22, .L521
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L551
.L521:
	mov	w0, 1
	strb	w0, [sp, 104]
	cbz	w19, .L552
	ldr	x0, [x21, 264]
	sub	w19, w19, #1
	ldr	x1, [x21, 32]
	sxtw	x19, w19
	ldr	x0, [x0, x23, lsl 3]
	madd	x19, x19, x1, x0
	ldrh	w21, [x19]
	stp	xzr, xzr, [x20]
	str	xzr, [x20, 16]
	cbz	w21, .L524
.L554:
	ubfiz	x21, x21, 2, 16
	str	x25, [sp, 64]
	.cfi_offset 25, -48
	mov	x0, x21
.LEHB15:
	bl	_Znwm
.LEHE15:
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
	cbnz	w25, .L553
	ldr	x25, [sp, 64]
	.cfi_restore 25
.L519:
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
.L552:
	.cfi_restore_state
	ldr	x1, [x21, 24]
	ldr	x0, [x21, 240]
	ldr	x19, [x21, 256]
	madd	x23, x23, x1, x0
	add	x19, x19, x23
	ldrh	w21, [x19]
	stp	xzr, xzr, [x20]
	str	xzr, [x20, 16]
	cbnz	w21, .L554
.L524:
	stp	xzr, xzr, [x20]
	str	xzr, [x20, 16]
.L528:
	ldr	x0, [sp, 96]
	cbz	x0, .L519
	cbz	x22, .L519
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
.L550:
	.cfi_restore_state
	mov	w0, 1
	str	x25, [sp, 64]
	.cfi_offset 25, -48
.LEHB16:
	bl	_ZSt20__throw_system_errori
.L553:
	ldr	x25, [sp, 64]
	.cfi_restore 25
	b	.L528
.L551:
	str	x25, [sp, 64]
	.cfi_offset 25, -48
	bl	_ZSt20__throw_system_errori
.LEHE16:
.L529:
	ldrb	w1, [sp, 104]
	mov	x19, x0
	cbz	w1, .L527
	add	x0, sp, 96
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L527:
	mov	x0, x19
.LEHB17:
	bl	_Unwind_Resume
.LEHE17:
	.cfi_endproc
.LFE11724:
	.section	.gcc_except_table._ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji,"aG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji,comdat
.LLSDA11724:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11724-.LLSDACSB11724
.LLSDACSB11724:
	.uleb128 .LEHB15-.LFB11724
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L529-.LFB11724
	.uleb128 0
	.uleb128 .LEHB16-.LFB11724
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB11724
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE11724:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji, .-_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, %function
_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB11014:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11014
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
.LEHB18:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE18:
	adrp	x25, _ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+24
	adrp	x24, _ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+64
	add	x25, x25, :lo12:_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+24
	add	x24, x24, :lo12:_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+64
	add	x0, sp, 96
	str	x25, [sp, 88]
	str	x24, [sp, 344]
.LEHB19:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE19:
	add	x0, sp, 88
	add	x1, sp, 96
	add	x0, x0, 256
.LEHB20:
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
	cbz	x2, .L582
	mov	w1, 0
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE20:
.L557:
	add	x1, x20, 240
	add	x0, sp, 88
	mov	x2, 8
.LEHB21:
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
	bcs	.L562
	.p2align 3,,7
.L584:
	ldr	x0, [x20, 272]
	mov	w3, 0
	ldr	w0, [x0, x19, lsl 2]
	cmp	w0, 0
	ble	.L563
	ldr	x3, [x20, 32]
	mul	w3, w0, w3
.L563:
	add	x1, sp, 84
	add	x0, sp, 88
	mov	x2, 4
	str	w3, [sp, 84]
	bl	_ZNSo5writeEPKcl
	ldr	w2, [sp, 84]
	cbnz	w2, .L583
	add	x19, x19, 1
.L586:
	ldar	x0, [x21]
	cmp	x19, x0
	bcc	.L584
.L562:
	add	x0, sp, 96
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE21:
	cbz	x0, .L585
.L566:
	adrp	x1, _ZTVSt13basic_filebufIcSt11char_traitsIcEE+16
	add	x1, x1, :lo12:_ZTVSt13basic_filebufIcSt11char_traitsIcEE+16
	add	x0, sp, 96
	stp	x25, x1, [sp, 88]
	str	x24, [sp, 344]
.LEHB22:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE22:
.L568:
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
.L583:
	.cfi_restore_state
	ldr	x1, [x20, 264]
	uxtw	x2, w2
	add	x0, sp, 88
	ldr	x1, [x1, x19, lsl 3]
.LEHB23:
	bl	_ZNSo5writeEPKcl
.LEHE23:
	add	x19, x19, 1
	b	.L586
	.p2align 2,,3
.L582:
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
.LEHB24:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE24:
	b	.L557
	.p2align 2,,3
.L585:
	ldr	x0, [sp, 88]
	add	x1, sp, 88
	ldr	x0, [x0, -24]
	add	x0, x1, x0
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
.LEHB25:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE25:
	b	.L566
.L575:
	bl	__cxa_begin_catch
	bl	__cxa_end_catch
	b	.L568
.L571:
	mov	x19, x0
	add	x0, sp, 88
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	mov	x0, x19
.LEHB26:
	bl	_Unwind_Resume
.L574:
	mov	x19, x0
	add	x0, sp, 96
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
.L560:
	ldr	x0, [x22, -24]
	add	x1, sp, 88
	str	x22, [sp, 88]
	str	x26, [x1, x0]
.L561:
	add	x0, sp, 344
	str	x23, [sp, 344]
	bl	_ZNSt8ios_baseD2Ev
	mov	x0, x19
	bl	_Unwind_Resume
.LEHE26:
.L573:
	mov	x19, x0
	b	.L560
.L572:
	mov	x19, x0
	b	.L561
	.cfi_endproc
.LFE11014:
	.section	.gcc_except_table._ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"aG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align	2
.LLSDA11014:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11014-.LLSDATTD11014
.LLSDATTD11014:
	.byte	0x1
	.uleb128 .LLSDACSE11014-.LLSDACSB11014
.LLSDACSB11014:
	.uleb128 .LEHB18-.LFB11014
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L572-.LFB11014
	.uleb128 0
	.uleb128 .LEHB19-.LFB11014
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L573-.LFB11014
	.uleb128 0
	.uleb128 .LEHB20-.LFB11014
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L574-.LFB11014
	.uleb128 0
	.uleb128 .LEHB21-.LFB11014
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L571-.LFB11014
	.uleb128 0
	.uleb128 .LEHB22-.LFB11014
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L575-.LFB11014
	.uleb128 0x1
	.uleb128 .LEHB23-.LFB11014
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L571-.LFB11014
	.uleb128 0
	.uleb128 .LEHB24-.LFB11014
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L574-.LFB11014
	.uleb128 0
	.uleb128 .LEHB25-.LFB11014
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L571-.LFB11014
	.uleb128 0
	.uleb128 .LEHB26-.LFB11014
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
.LLSDACSE11014:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT11014:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.rodata._Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_.str1.8,"aMS",@progbits,1
	.align	3
.LC7:
	.string	"load data "
	.align	3
.LC8:
	.string	"\n"
	.align	3
.LC9:
	.string	"dimension: "
	.align	3
.LC10:
	.string	"  number:"
	.align	3
.LC11:
	.string	"  size_per_element:"
	.section	.text._Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,"axG",@progbits,_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,comdat
	.align	2
	.p2align 4,,11
	.weak	_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
	.type	_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_, %function
_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_:
.LFB11015:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11015
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
.LEHB27:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE27:
	adrp	x27, _ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+24
	adrp	x26, _ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+64
	add	x27, x27, :lo12:_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+24
	add	x26, x26, :lo12:_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+64
	add	x0, sp, 112
	str	x27, [sp, 96]
	str	x26, [sp, 360]
.LEHB28:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE28:
	add	x0, sp, 96
	add	x1, sp, 112
	add	x0, x0, 264
.LEHB29:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE29:
	ldr	x1, [x24]
	add	x0, sp, 112
	mov	w2, 12
.LEHB30:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	mov	x2, x0
	ldr	x0, [sp, 96]
	ldr	x1, [x0, -24]
	add	x0, sp, 96
	add	x0, x0, x1
	cbz	x2, .L614
	mov	w1, 0
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.L593:
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
	bhi	.L594
	lsl	x0, x0, 2
	bl	_Znam
	ldr	x1, [x20]
	mov	x22, x0
	mov	x19, 0
	cbz	x1, .L598
	.p2align 3,,7
.L596:
	ldr	x2, [x21]
	add	x0, sp, 96
	lsl	x2, x2, 2
	madd	x1, x2, x19, x22
	bl	_ZNSi4readEPcl
	ldr	x0, [x20]
	add	x19, x19, 1
	cmp	x0, x19
	bhi	.L596
.L598:
	add	x0, sp, 112
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	cbz	x0, .L615
.L599:
	adrp	x19, _ZSt4cerr
	add	x19, x19, :lo12:_ZSt4cerr
	adrp	x1, .LC7
	mov	x0, x19
	add	x1, x1, :lo12:.LC7
	mov	x2, 10
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [x24]
	mov	x0, x19
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x24, .LC8
	add	x24, x24, :lo12:.LC8
	mov	x1, x24
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC9
	mov	x0, x19
	add	x1, x1, :lo12:.LC9
	mov	x2, 11
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x1, [x21]
	mov	x0, x19
	bl	_ZNSo9_M_insertImEERSoT_
	adrp	x1, .LC10
	mov	x19, x0
	add	x1, x1, :lo12:.LC10
	mov	x2, 9
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x1, [x20]
	mov	x0, x19
	bl	_ZNSo9_M_insertImEERSoT_
	adrp	x1, .LC11
	mov	x19, x0
	add	x1, x1, :lo12:.LC11
	mov	x2, 19
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x0, x19
	mov	x1, 4
	bl	_ZNSo9_M_insertImEERSoT_
	mov	x1, x24
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.LEHE30:
	adrp	x1, _ZTVSt13basic_filebufIcSt11char_traitsIcEE+16
	add	x1, x1, :lo12:_ZTVSt13basic_filebufIcSt11char_traitsIcEE+16
	add	x0, sp, 112
	str	x27, [sp, 96]
	str	x1, [sp, 112]
	str	x26, [sp, 360]
.LEHB31:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE31:
.L601:
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
.L614:
	.cfi_restore_state
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
.LEHB32:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	b	.L593
	.p2align 2,,3
.L615:
	ldr	x0, [sp, 96]
	add	x1, sp, 96
	ldr	x0, [x0, -24]
	add	x0, x1, x0
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE32:
	b	.L599
.L608:
	bl	__cxa_begin_catch
	bl	__cxa_end_catch
	b	.L601
.L607:
	mov	x19, x0
	add	x0, sp, 112
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
.L590:
	ldr	x0, [x23, -24]
	add	x1, sp, 96
	str	x23, [sp, 96]
	str	x28, [x1, x0]
	str	xzr, [sp, 104]
.L591:
	add	x0, sp, 360
	str	x25, [sp, 360]
	bl	_ZNSt8ios_baseD2Ev
	mov	x0, x19
.LEHB33:
	bl	_Unwind_Resume
.LEHE33:
.L606:
	mov	x19, x0
	b	.L590
.L594:
.LEHB34:
	bl	__cxa_throw_bad_array_new_length
.LEHE34:
.L605:
	mov	x19, x0
	b	.L591
.L604:
	mov	x19, x0
	add	x0, sp, 96
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	x0, x19
.LEHB35:
	bl	_Unwind_Resume
.LEHE35:
	.cfi_endproc
.LFE11015:
	.section	.gcc_except_table._Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,"aG",@progbits,_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,comdat
	.align	2
.LLSDA11015:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11015-.LLSDATTD11015
.LLSDATTD11015:
	.byte	0x1
	.uleb128 .LLSDACSE11015-.LLSDACSB11015
.LLSDACSB11015:
	.uleb128 .LEHB27-.LFB11015
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L605-.LFB11015
	.uleb128 0
	.uleb128 .LEHB28-.LFB11015
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L606-.LFB11015
	.uleb128 0
	.uleb128 .LEHB29-.LFB11015
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L607-.LFB11015
	.uleb128 0
	.uleb128 .LEHB30-.LFB11015
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L604-.LFB11015
	.uleb128 0
	.uleb128 .LEHB31-.LFB11015
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L608-.LFB11015
	.uleb128 0x1
	.uleb128 .LEHB32-.LFB11015
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L604-.LFB11015
	.uleb128 0
	.uleb128 .LEHB33-.LFB11015
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB34-.LFB11015
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L604-.LFB11015
	.uleb128 0
	.uleb128 .LEHB35-.LFB11015
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
.LLSDACSE11015:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT11015:
	.section	.text._Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,"axG",@progbits,_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,comdat
	.size	_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_, .-_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
	.section	.text._Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,"axG",@progbits,_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,comdat
	.align	2
	.p2align 4,,11
	.weak	_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
	.type	_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_, %function
_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_:
.LFB11016:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11016
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
.LEHB36:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE36:
	adrp	x27, _ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+24
	adrp	x26, _ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+64
	add	x27, x27, :lo12:_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+24
	add	x26, x26, :lo12:_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+64
	add	x0, sp, 112
	str	x27, [sp, 96]
	str	x26, [sp, 360]
.LEHB37:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE37:
	add	x0, sp, 96
	add	x1, sp, 112
	add	x0, x0, 264
.LEHB38:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE38:
	ldr	x1, [x24]
	add	x0, sp, 112
	mov	w2, 12
.LEHB39:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	mov	x2, x0
	ldr	x0, [sp, 96]
	ldr	x1, [x0, -24]
	add	x0, sp, 96
	add	x0, x0, x1
	cbz	x2, .L643
	mov	w1, 0
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.L622:
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
	bhi	.L623
	lsl	x0, x0, 2
	bl	_Znam
	ldr	x1, [x20]
	mov	x22, x0
	mov	x19, 0
	cbz	x1, .L627
	.p2align 3,,7
.L625:
	ldr	x2, [x21]
	add	x0, sp, 96
	lsl	x2, x2, 2
	madd	x1, x2, x19, x22
	bl	_ZNSi4readEPcl
	ldr	x0, [x20]
	add	x19, x19, 1
	cmp	x0, x19
	bhi	.L625
.L627:
	add	x0, sp, 112
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	cbz	x0, .L644
.L628:
	adrp	x19, _ZSt4cerr
	add	x19, x19, :lo12:_ZSt4cerr
	adrp	x1, .LC7
	mov	x0, x19
	add	x1, x1, :lo12:.LC7
	mov	x2, 10
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [x24]
	mov	x0, x19
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x24, .LC8
	add	x24, x24, :lo12:.LC8
	mov	x1, x24
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC9
	mov	x0, x19
	add	x1, x1, :lo12:.LC9
	mov	x2, 11
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x1, [x21]
	mov	x0, x19
	bl	_ZNSo9_M_insertImEERSoT_
	adrp	x1, .LC10
	mov	x19, x0
	add	x1, x1, :lo12:.LC10
	mov	x2, 9
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x1, [x20]
	mov	x0, x19
	bl	_ZNSo9_M_insertImEERSoT_
	adrp	x1, .LC11
	mov	x19, x0
	add	x1, x1, :lo12:.LC11
	mov	x2, 19
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x0, x19
	mov	x1, 4
	bl	_ZNSo9_M_insertImEERSoT_
	mov	x1, x24
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.LEHE39:
	adrp	x1, _ZTVSt13basic_filebufIcSt11char_traitsIcEE+16
	add	x1, x1, :lo12:_ZTVSt13basic_filebufIcSt11char_traitsIcEE+16
	add	x0, sp, 112
	str	x27, [sp, 96]
	str	x1, [sp, 112]
	str	x26, [sp, 360]
.LEHB40:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE40:
.L630:
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
.L643:
	.cfi_restore_state
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
.LEHB41:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	b	.L622
	.p2align 2,,3
.L644:
	ldr	x0, [sp, 96]
	add	x1, sp, 96
	ldr	x0, [x0, -24]
	add	x0, x1, x0
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE41:
	b	.L628
.L637:
	bl	__cxa_begin_catch
	bl	__cxa_end_catch
	b	.L630
.L636:
	mov	x19, x0
	add	x0, sp, 112
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
.L619:
	ldr	x0, [x23, -24]
	add	x1, sp, 96
	str	x23, [sp, 96]
	str	x28, [x1, x0]
	str	xzr, [sp, 104]
.L620:
	add	x0, sp, 360
	str	x25, [sp, 360]
	bl	_ZNSt8ios_baseD2Ev
	mov	x0, x19
.LEHB42:
	bl	_Unwind_Resume
.LEHE42:
.L635:
	mov	x19, x0
	b	.L619
.L623:
.LEHB43:
	bl	__cxa_throw_bad_array_new_length
.LEHE43:
.L634:
	mov	x19, x0
	b	.L620
.L633:
	mov	x19, x0
	add	x0, sp, 96
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	x0, x19
.LEHB44:
	bl	_Unwind_Resume
.LEHE44:
	.cfi_endproc
.LFE11016:
	.section	.gcc_except_table._Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,"aG",@progbits,_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,comdat
	.align	2
.LLSDA11016:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11016-.LLSDATTD11016
.LLSDATTD11016:
	.byte	0x1
	.uleb128 .LLSDACSE11016-.LLSDACSB11016
.LLSDACSB11016:
	.uleb128 .LEHB36-.LFB11016
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L634-.LFB11016
	.uleb128 0
	.uleb128 .LEHB37-.LFB11016
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L635-.LFB11016
	.uleb128 0
	.uleb128 .LEHB38-.LFB11016
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L636-.LFB11016
	.uleb128 0
	.uleb128 .LEHB39-.LFB11016
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L633-.LFB11016
	.uleb128 0
	.uleb128 .LEHB40-.LFB11016
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L637-.LFB11016
	.uleb128 0x1
	.uleb128 .LEHB41-.LFB11016
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L633-.LFB11016
	.uleb128 0
	.uleb128 .LEHB42-.LFB11016
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB43-.LFB11016
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L633-.LFB11016
	.uleb128 0
	.uleb128 .LEHB44-.LFB11016
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
.LLSDACSE11016:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT11016:
	.section	.text._Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,"axG",@progbits,_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,comdat
	.size	_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_, .-_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
	.section	.text._ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb,"axG",@progbits,_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb
	.type	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb, %function
_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb:
.LFB11881:
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
	bls	.L646
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
	bls	.L648
	cmp	x1, x3
	beq	.L649
	mov	x0, x19
	bl	memmove
	b	.L649
	.p2align 2,,3
.L646:
	cmp	x0, x21
	add	x23, x0, 2
	csel	x0, x0, x21, cs
	mov	x1, 1152921504606846975
	add	x23, x23, x0
	cmp	x23, x1
	bhi	.L658
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
	beq	.L652
	sub	x2, x3, x1
	mov	x0, x19
	bl	memmove
.L652:
	ldr	x0, [x20]
	bl	_ZdlPv
	stp	x24, x23, [x20]
.L649:
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
.L648:
	.cfi_restore_state
	cmp	x1, x3
	beq	.L649
	add	x0, x22, 8
	sub	x0, x0, x2
	add	x0, x19, x0
	bl	memmove
	b	.L649
.L658:
	bl	_ZSt17__throw_bad_allocv
	.cfi_endproc
.LFE11881:
	.size	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb, .-_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb
	.section	.rodata._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.str1.8,"aMS",@progbits,1
	.align	3
.LC12:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB11891:
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
	beq	.L677
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	adds	x1, x1, x0
	bcs	.L670
	cbnz	x1, .L664
	mov	x25, 8
	mov	x22, 0
	mov	x21, 0
.L669:
	ldr	x0, [x27]
	str	x0, [x21, x26]
	cmp	x19, x24
	beq	.L665
	mov	x4, x21
	mov	x3, x24
	.p2align 3,,7
.L666:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L666
	add	x26, x26, 8
	add	x25, x21, x26
.L665:
	cmp	x19, x23
	beq	.L667
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L667:
	cbz	x24, .L668
	mov	x0, x24
	bl	_ZdlPv
.L668:
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
.L670:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L663:
	mov	x0, x22
	bl	_Znwm
	mov	x21, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L669
.L664:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L663
.L677:
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE11891:
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
	cbz	x2, .L678
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
	cbz	x25, .L699
	.p2align 3,,7
.L718:
	movi	v0.2s, #0
	mov	x5, 0
	.p2align 3,,7
.L681:
	ldr	s2, [x19, x5]
	ldr	s1, [x21, x5]
	add	x5, x5, 4
	fmadd	s0, s2, s1, s0
	cmp	x20, x5
	bne	.L681
	sub	x2, x1, x0
	fsub	s0, s8, s0
	cmp	x26, x2, asr 3
	bhi	.L717
.L682:
	ldr	s1, [x0]
	fcmpe	s1, s0
	bgt	.L705
.L685:
	add	x23, x23, 1
	add	x19, x19, x20
	cmp	x24, x23
	beq	.L716
.L719:
	ldp	x0, x1, [x22]
	cbnz	x25, .L718
.L699:
	sub	x2, x1, x0
	fmov	s0, 1.0e+0
	cmp	x26, x2, asr 3
	bls	.L682
	.p2align 3,,7
.L717:
	ldr	x2, [x22, 16]
	str	s0, [sp, 104]
	str	w23, [sp, 108]
	cmp	x2, x1
	beq	.L683
	ldr	x2, [sp, 104]
	str	x2, [x1], 8
	str	x1, [x22, 8]
.L684:
	ldr	x3, [x1, -8]
	sub	x2, x1, x0
	add	x23, x23, 1
	add	x19, x19, x20
	asr	x1, x2, 3
	mov	x2, 0
	sub	x1, x1, #1
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	cmp	x24, x23
	bne	.L719
.L716:
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
.L678:
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
.L705:
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
	beq	.L687
	ldr	x2, [sp, 104]
	str	x2, [x1], 8
	str	x1, [x22, 8]
.L688:
	ldr	x3, [x1, -8]
	sub	x2, x1, x0
	asr	x1, x2, 3
	mov	x2, 0
	sub	x1, x1, #1
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldp	x0, x1, [x22]
	sub	x2, x1, x0
	cmp	x2, 8
	bgt	.L720
.L689:
	sub	x1, x1, #8
	str	x1, [x22, 8]
	b	.L685
.L720:
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
	ble	.L700
	mov	x2, 0
	b	.L694
.L702:
	mov	w3, w4
.L693:
	lsl	x2, x2, 3
	add	x4, x0, x2
	str	s0, [x0, x2]
	str	w3, [x4, 4]
	cmp	x1, x6
	bge	.L690
.L703:
	mov	x2, x1
.L694:
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
	bmi	.L706
	ldr	w3, [x8, 4]
	bgt	.L701
	ldr	w4, [x7, 4]
	cmp	w4, w3
	bhi	.L702
.L701:
	fmov	s0, s1
	lsl	x2, x2, 3
	add	x4, x0, x2
	mov	x1, x5
	str	s0, [x0, x2]
	str	w3, [x4, 4]
	cmp	x1, x6
	blt	.L703
.L690:
	tbnz	x9, 0, .L695
.L722:
	sub	x9, x9, #2
	add	x9, x9, x9, lsr 63
	cmp	x1, x9, asr 1
	beq	.L721
.L695:
	mov	x3, x27
	mov	x2, 0
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldr	x1, [x22, 8]
	b	.L689
	.p2align 2,,3
.L706:
	ldr	w3, [x7, 4]
	b	.L693
.L683:
	add	x2, sp, 104
	mov	x0, x22
.LEHB45:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldp	x0, x1, [x22]
	b	.L684
.L687:
	add	x2, sp, 104
	mov	x0, x22
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE45:
	ldp	x0, x1, [x22]
	b	.L688
.L721:
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
	b	.L689
.L700:
	mov	x1, 0
	tbnz	x9, 0, .L695
	b	.L722
.L704:
	ldr	x1, [x22]
	mov	x19, x0
	cbz	x1, .L698
	mov	x0, x1
	bl	_ZdlPv
.L698:
	mov	x0, x19
.LEHB46:
	bl	_Unwind_Resume
.LEHE46:
	.cfi_endproc
.LFE6074:
	.section	.gcc_except_table,"a",@progbits
.LLSDA6074:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6074-.LLSDACSB6074
.LLSDACSB6074:
	.uleb128 .LEHB45-.LFB6074
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L704-.LFB6074
	.uleb128 0
	.uleb128 .LEHB46-.LFB6074
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0
	.uleb128 0
.LLSDACSE6074:
	.text
	.size	_Z11flat_searchPfS_mmm, .-_Z11flat_searchPfS_mmm
	.section	.rodata._Z21pq_search_rerank_v6_2PfRK7PQIndexS_mmmm.str1.8,"aMS",@progbits,1
	.align	3
.LC13:
	.string	"vector::_M_default_append"
	.section	.text._Z21pq_search_rerank_v6_2PfRK7PQIndexS_mmmm,"axG",@progbits,_Z21pq_search_rerank_v6_2PfRK7PQIndexS_mmmm,comdat
	.align	2
	.p2align 4,,11
	.weak	_Z21pq_search_rerank_v6_2PfRK7PQIndexS_mmmm
	.type	_Z21pq_search_rerank_v6_2PfRK7PQIndexS_mmmm, %function
_Z21pq_search_rerank_v6_2PfRK7PQIndexS_mmmm:
.LFB10504:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10504
	stp	x29, x30, [sp, -176]!
	.cfi_def_cfa_offset 176
	.cfi_offset 29, -176
	.cfi_offset 30, -168
	cmp	x6, x5
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -128
	.cfi_offset 24, -120
	mov	x24, x1
	csel	x1, x6, x5, cs
	stp	x19, x20, [sp, 16]
	cmp	x1, x3
	.cfi_offset 19, -160
	.cfi_offset 20, -152
	mov	x20, x2
	ldp	x9, x10, [x24]
	stp	x21, x22, [sp, 32]
	mov	x19, x4
	stp	x25, x26, [sp, 64]
	.cfi_offset 21, -144
	.cfi_offset 22, -136
	.cfi_offset 25, -112
	.cfi_offset 26, -104
	mov	x22, x8
	mov	x26, x3
	stp	x27, x28, [sp, 80]
	csel	x25, x1, x3, ls
	mul	x10, x9, x10
	str	x0, [sp, 112]
	.cfi_offset 27, -96
	.cfi_offset 28, -88
	mov	x27, x5
	mov	x21, 0
	cbnz	x10, .L825
.L724:
	cbz	x9, .L735
	ldp	x10, x2, [x24, 8]
	add	x15, x24, 40
	mov	x13, 0
	mul	x14, x2, x10
	.p2align 3,,7
.L726:
	mul	x6, x2, x13
	mul	x11, x14, x13
	ldr	x8, [x15]
	add	x6, x20, x6, lsl 2
	cbz	x10, .L729
	mul	x12, x10, x13
	mov	x7, 0
	.p2align 3,,7
.L734:
	madd	x5, x7, x2, x11
	add	x5, x8, x5, lsl 2
	cmp	x2, 3
	bls	.L780
	movi	v0.4s, 0
	mov	x4, x6
	mov	x3, x5
	mov	x0, 4
	b	.L731
	.p2align 2,,3
.L781:
	mov	x0, x1
.L731:
	ldr	q2, [x4], 16
	add	x1, x0, 4
	ldr	q1, [x3], 16
	fmla	v0.4s, v2.4s, v1.4s
	cmp	x1, x2
	bls	.L781
.L730:
	faddp	v0.4s, v0.4s, v0.4s
	faddp	v0.4s, v0.4s, v0.4s
	cmp	x2, x0
	bls	.L732
	.p2align 3,,7
.L733:
	ldr	s2, [x6, x0, lsl 2]
	ldr	s1, [x5, x0, lsl 2]
	add	x0, x0, 1
	fmadd	s0, s2, s1, s0
	cmp	x0, x2
	bne	.L733
.L732:
	add	x0, x12, x7
	add	x7, x7, 1
	str	s0, [x21, x0, lsl 2]
	cmp	x10, x7
	bhi	.L734
.L729:
	add	x13, x13, 1
	cmp	x9, x13
	bhi	.L726
.L735:
	stp	xzr, xzr, [sp, 144]
	str	xzr, [sp, 160]
	cbz	x26, .L727
	mov	x23, 0
	str	d8, [sp, 96]
	.cfi_offset 72, -80
	add	x28, x24, 64
	mov	x5, 0
	mul	x1, x9, x23
	mov	x0, 0
	ldr	x2, [x28]
	cbz	x9, .L782
	.p2align 3,,7
.L827:
	add	x4, x2, x9
	movi	v2.2s, #0
	ldr	x6, [x24, 8]
	add	x4, x4, x1
	add	x2, x2, x1
	mov	x3, 0
	.p2align 3,,7
.L737:
	ldrb	w1, [x2], 1
	add	x1, x1, x3
	add	x3, x3, x6
	ldr	s0, [x21, x1, lsl 2]
	fadd	s2, s2, s0
	cmp	x4, x2
	bne	.L737
	sub	x1, x5, x0
	cmp	x25, x1, asr 3
	bhi	.L826
.L738:
	ldr	s0, [x0]
	fcmpe	s0, s2
	bmi	.L794
.L741:
	add	x23, x23, 1
	cmp	x26, x23
	beq	.L746
.L828:
	ldr	x9, [x24]
	ldr	x2, [x28]
	mul	x1, x9, x23
	cbnz	x9, .L827
.L782:
	sub	x1, x5, x0
	movi	v2.2s, #0
	cmp	x25, x1, asr 3
	bls	.L738
.L826:
	ldr	x1, [sp, 160]
	str	s2, [sp, 128]
	str	w23, [sp, 132]
	cmp	x1, x5
	beq	.L739
	ldr	x1, [sp, 128]
	str	x1, [x5], 8
	str	x5, [sp, 152]
.L740:
	ldr	x3, [x5, -8]
	sub	x1, x5, x0
	mov	x2, 0
	add	x23, x23, 1
	asr	x1, x1, 3
	sub	x1, x1, #1
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt7greaterIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldp	x0, x5, [sp, 144]
	cmp	x26, x23
	bne	.L828
.L746:
	stp	xzr, xzr, [x22]
	fmov	s8, 1.0e+0
	str	xzr, [x22, 16]
	cmp	x0, x5
	beq	.L749
	.p2align 3,,7
.L748:
	sub	x1, x5, x0
	ldr	w11, [x0, 4]
	cmp	x1, 8
	bgt	.L829
.L750:
	ldr	x0, [sp, 152]
	uxtw	x3, w11
	sub	x0, x0, #8
	str	x0, [sp, 152]
	ldr	x0, [sp, 112]
	mul	x3, x3, x19
	add	x3, x0, x3, lsl 2
	cmp	x19, 15
	bls	.L783
	movi	v1.4s, 0
	mov	x0, x3
	add	x1, x20, 48
	mov	x2, 16
	mov	v2.16b, v1.16b
	mov	v3.16b, v1.16b
	mov	v0.16b, v1.16b
	b	.L752
	.p2align 2,,3
.L784:
	mov	x2, x4
.L752:
	ldp	q18, q16, [x1, -48]
	add	x4, x2, 16
	ldr	q6, [x1, -16]
	ldp	q19, q17, [x0]
	ldp	q7, q5, [x0, 32]
	add	x0, x0, 64
	ldr	q4, [x1], 64
	fmla	v0.4s, v19.4s, v18.4s
	fmla	v3.4s, v17.4s, v16.4s
	fmla	v2.4s, v7.4s, v6.4s
	fmla	v1.4s, v5.4s, v4.4s
	cmp	x19, x4
	bcs	.L784
	fadd	v0.4s, v0.4s, v3.4s
	add	x0, x2, 4
	fadd	v2.4s, v2.4s, v1.4s
	fadd	v0.4s, v0.4s, v2.4s
	cmp	x19, x0
	bcs	.L754
	b	.L830
	.p2align 2,,3
.L786:
	mov	x0, x4
.L754:
	lsl	x1, x2, 2
	add	x4, x0, 4
	mov	x2, x0
	ldr	q2, [x3, x1]
	ldr	q1, [x20, x1]
	fmla	v0.4s, v2.4s, v1.4s
	cmp	x19, x4
	bcs	.L786
.L753:
	str	q0, [sp, 128]
	ldp	s0, s3, [sp, 128]
	ldp	s2, s1, [sp, 136]
	fadd	s0, s0, s3
	fadd	s0, s0, s2
	fadd	s0, s0, s1
	cmp	x19, x0
	bls	.L755
	.p2align 3,,7
.L756:
	ldr	s2, [x3, x0, lsl 2]
	ldr	s1, [x20, x0, lsl 2]
	add	x0, x0, 1
	fmadd	s0, s2, s1, s0
	cmp	x19, x0
	bne	.L756
.L755:
	ldp	x0, x1, [x22]
	fsub	s0, s8, s0
	sub	x2, x1, x0
	cmp	x27, x2, asr 3
	bhi	.L831
	ldr	s1, [x0]
	fcmpe	s0, s1
	bmi	.L795
.L760:
	ldp	x0, x5, [sp, 144]
	cmp	x0, x5
	bne	.L748
.L749:
	cbz	x5, .L824
	mov	x0, x5
	bl	_ZdlPv
	ldr	d8, [sp, 96]
	.cfi_restore 72
.L747:
	cbz	x21, .L723
	mov	x0, x21
	bl	_ZdlPv
.L723:
	mov	x0, x22
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 176
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
.L780:
	.cfi_restore_state
	movi	v0.4s, 0
	mov	x0, 0
	b	.L730
.L794:
	.cfi_offset 72, -80
	cmp	x1, 8
	bgt	.L832
	ldr	x0, [sp, 160]
	sub	x1, x5, #8
	str	s2, [sp, 128]
	str	w23, [sp, 132]
	str	x1, [sp, 152]
	cmp	x1, x0
	beq	.L744
.L835:
	ldr	x0, [sp, 128]
	str	x0, [x5, -8]
	str	x5, [sp, 152]
.L745:
	ldr	x0, [sp, 144]
	mov	x2, 0
	ldr	x3, [x5, -8]
	sub	x5, x5, x0
	asr	x5, x5, 3
	sub	x1, x5, #1
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt7greaterIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldp	x0, x5, [sp, 144]
	b	.L741
.L831:
	ldr	x2, [x22, 16]
	str	s0, [sp, 128]
	str	w11, [sp, 132]
	cmp	x1, x2
	beq	.L758
	ldr	x2, [sp, 128]
	str	x2, [x1], 8
	str	x1, [x22, 8]
.L759:
	ldr	x3, [x1, -8]
	sub	x2, x1, x0
	asr	x1, x2, 3
	mov	x2, 0
	sub	x1, x1, #1
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	b	.L760
.L829:
	ldr	x3, [x5, -8]
	sub	x2, x5, #8
	ldr	s0, [x0]
	sub	x2, x2, x0
	str	w11, [x5, -4]
	mov	x1, 0
	asr	x2, x2, 3
	str	s0, [x5, -8]
	bl	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt7greaterIS3_EEEEvT_T0_SF_T1_T2_.isra.0
	b	.L750
.L795:
	ldr	x2, [x22, 16]
	str	s0, [sp, 128]
	str	w11, [sp, 132]
	cmp	x1, x2
	beq	.L762
	ldr	x2, [sp, 128]
	str	x2, [x1], 8
	str	x1, [x22, 8]
.L763:
	ldr	x3, [x1, -8]
	sub	x2, x1, x0
	asr	x1, x2, 3
	mov	x2, 0
	sub	x1, x1, #1
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldp	x0, x1, [x22]
	sub	x2, x1, x0
	cmp	x2, 8
	bgt	.L833
.L764:
	sub	x1, x1, #8
	str	x1, [x22, 8]
	b	.L760
.L783:
	movi	v0.4s, 0
	mov	x0, 4
	mov	x2, 0
	cmp	x19, x0
	bcs	.L754
.L830:
	mov	x0, x2
	b	.L753
.L833:
	sub	x3, x1, #8
	ldr	w4, [x1, -8]
	ldr	x7, [sp, 120]
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
	str	x4, [sp, 120]
	asr	x6, x2, 1
	cmp	x3, 16
	ble	.L787
	mov	x2, 0
	b	.L769
.L789:
	mov	w3, w4
.L768:
	lsl	x2, x2, 3
	add	x4, x0, x2
	str	s0, [x0, x2]
	str	w3, [x4, 4]
	cmp	x6, x1
	ble	.L765
.L790:
	mov	x2, x1
.L769:
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
	bmi	.L796
	ldr	w3, [x8, 4]
	bgt	.L788
	ldr	w4, [x7, 4]
	cmp	w4, w3
	bhi	.L789
.L788:
	fmov	s0, s1
	lsl	x2, x2, 3
	add	x4, x0, x2
	mov	x1, x5
	str	s0, [x0, x2]
	str	w3, [x4, 4]
	cmp	x6, x1
	bgt	.L790
.L765:
	tbnz	x9, 0, .L770
.L837:
	sub	x9, x9, #2
	add	x9, x9, x9, lsr 63
	cmp	x1, x9, asr 1
	beq	.L834
.L770:
	ldr	x3, [sp, 120]
	mov	x2, 0
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldr	x1, [x22, 8]
	b	.L764
.L796:
	ldr	w3, [x7, 4]
	b	.L768
.L832:
	ldr	x3, [x5, -8]
	sub	x2, x5, #8
	ldr	w1, [x0, 4]
	sub	x2, x2, x0
	str	w1, [x5, -4]
	asr	x2, x2, 3
	mov	x1, 0
	str	s0, [x5, -8]
	bl	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt7greaterIS3_EEEEvT_T0_SF_T1_T2_.isra.0
	ldr	x5, [sp, 152]
	str	s2, [sp, 128]
	ldr	x0, [sp, 160]
	sub	x1, x5, #8
	str	w23, [sp, 132]
	str	x1, [sp, 152]
	cmp	x1, x0
	bne	.L835
.L744:
	add	x2, sp, 128
	add	x0, sp, 144
.LEHB47:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE47:
	ldr	x5, [sp, 152]
	b	.L745
.L758:
	add	x2, sp, 128
	mov	x0, x22
.LEHB48:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE48:
	ldp	x0, x1, [x22]
	b	.L759
.L824:
	ldr	d8, [sp, 96]
	.cfi_remember_state
	.cfi_restore 72
	b	.L747
.L739:
	.cfi_restore_state
	mov	x1, x5
	add	x2, sp, 128
	add	x0, sp, 144
.LEHB49:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE49:
	ldp	x0, x5, [sp, 144]
	b	.L740
.L762:
	add	x2, sp, 128
	mov	x0, x22
.LEHB50:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE50:
	ldp	x0, x1, [x22]
	b	.L763
.L825:
	.cfi_restore 72
	mov	x0, 2305843009213693951
	cmp	x10, x0
	bhi	.L836
	lsl	x23, x10, 2
	mov	x0, x23
.LEHB51:
	bl	_Znwm
	mov	x2, x23
	mov	x21, x0
	mov	w1, 0
	bl	memset
	ldr	x9, [x24]
	b	.L724
.L834:
	.cfi_offset 72, -80
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
	ldr	x3, [sp, 120]
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldr	x1, [x22, 8]
	b	.L764
.L727:
	.cfi_restore 72
	stp	xzr, xzr, [x22]
	str	xzr, [x22, 16]
	b	.L747
.L787:
	.cfi_offset 72, -80
	mov	x1, 0
	tbnz	x9, 0, .L770
	b	.L837
.L836:
	.cfi_restore 72
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	str	d8, [sp, 96]
	.cfi_offset 72, -80
	bl	_ZSt20__throw_length_errorPKc
.L793:
	ldr	x1, [x22]
	mov	x19, x0
	cbz	x1, .L774
	mov	x0, x1
	bl	_ZdlPv
.L774:
	ldr	x0, [sp, 144]
	cbz	x0, .L775
	bl	_ZdlPv
.L775:
.L791:
	cbz	x21, .L777
	mov	x0, x21
	bl	_ZdlPv
.L777:
	mov	x0, x19
	bl	_Unwind_Resume
.LEHE51:
.L792:
	mov	x19, x0
	b	.L774
	.cfi_endproc
.LFE10504:
	.section	.gcc_except_table
.LLSDA10504:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10504-.LLSDACSB10504
.LLSDACSB10504:
	.uleb128 .LEHB47-.LFB10504
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L792-.LFB10504
	.uleb128 0
	.uleb128 .LEHB48-.LFB10504
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L793-.LFB10504
	.uleb128 0
	.uleb128 .LEHB49-.LFB10504
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L792-.LFB10504
	.uleb128 0
	.uleb128 .LEHB50-.LFB10504
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L793-.LFB10504
	.uleb128 0
	.uleb128 .LEHB51-.LFB10504
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
.LLSDACSE10504:
	.section	.text._Z21pq_search_rerank_v6_2PfRK7PQIndexS_mmmm,"axG",@progbits,_Z21pq_search_rerank_v6_2PfRK7PQIndexS_mmmm,comdat
	.size	_Z21pq_search_rerank_v6_2PfRK7PQIndexS_mmmm, .-_Z21pq_search_rerank_v6_2PfRK7PQIndexS_mmmm
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
.LFB10515:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10515
	stp	x29, x30, [sp, -432]!
	.cfi_def_cfa_offset 432
	.cfi_offset 29, -432
	.cfi_offset 30, -424
	adrp	x2, .LC14+9
	add	x2, x2, :lo12:.LC14+9
	add	x3, sp, 248
	mov	x29, sp
	add	x0, sp, 232
	adrp	x1, .LC14
	add	x1, x1, :lo12:.LC14
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	stp	d8, d9, [sp, 96]
	.cfi_offset 19, -416
	.cfi_offset 20, -408
	.cfi_offset 21, -400
	.cfi_offset 22, -392
	.cfi_offset 23, -384
	.cfi_offset 24, -376
	.cfi_offset 25, -368
	.cfi_offset 26, -360
	.cfi_offset 27, -352
	.cfi_offset 28, -344
	.cfi_offset 72, -336
	.cfi_offset 73, -328
	stp	xzr, xzr, [sp, 168]
	stp	xzr, xzr, [sp, 184]
	str	x3, [sp, 232]
.LEHB52:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
.LEHE52:
	adrp	x1, .LC15
	add	x0, sp, 232
	add	x8, sp, 344
	add	x1, x1, :lo12:.LC15
.LEHB53:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
.LEHE53:
	add	x2, sp, 192
	add	x1, sp, 168
	add	x0, sp, 344
.LEHB54:
	bl	_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
.LEHE54:
	mov	x2, x0
	add	x1, sp, 360
	ldr	x0, [sp, 344]
	str	x2, [sp, 144]
	cmp	x0, x1
	beq	.L839
	bl	_ZdlPv
.L839:
	adrp	x1, .LC16
	add	x8, sp, 344
	add	x1, x1, :lo12:.LC16
	add	x0, sp, 232
.LEHB55:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
.LEHE55:
	add	x1, sp, 168
	add	x2, sp, 184
	add	x0, sp, 344
.LEHB56:
	bl	_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
.LEHE56:
	mov	x26, x0
	add	x1, sp, 360
	ldr	x0, [sp, 344]
	cmp	x0, x1
	beq	.L840
	bl	_ZdlPv
.L840:
	adrp	x1, .LC17
	add	x8, sp, 344
	add	x1, x1, :lo12:.LC17
	add	x0, sp, 232
.LEHB57:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
.LEHE57:
	add	x2, sp, 192
	add	x1, sp, 176
	add	x0, sp, 344
.LEHB58:
	bl	_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
.LEHE58:
	mov	x2, x0
	add	x1, sp, 360
	ldr	x0, [sp, 344]
	str	x2, [sp, 136]
	cmp	x0, x1
	beq	.L841
	bl	_ZdlPv
.L841:
	mov	x1, 2000
	mov	x0, 32000
	str	x1, [sp, 168]
.LEHB59:
	bl	_Znwm
.LEHE59:
	mov	x1, 32000
	add	x1, x0, x1
	str	x0, [sp, 152]
.L843:
	cmp	x1, x0
	beq	.L842
	add	x0, x0, 16
	str	wzr, [x0, -16]
	str	xzr, [x0, -8]
	b	.L843
.L842:
	ldr	x0, [sp, 136]
	add	x8, sp, 344
	ldr	x1, [sp, 176]
	mov	w6, 3
	ldr	x2, [sp, 192]
	mov	x5, 10000
	mov	x4, 256
	mov	x3, 4
.LEHB60:
	bl	_Z20build_pq_index_basicPKfmmmmmi
.LEHE60:
	ldr	x0, [sp, 168]
	cbz	x0, .L846
	ldr	x0, [sp, 152]
	add	x23, sp, 304
	mov	x24, 0
	str	x0, [sp, 120]
	mov	x28, x0
	.p2align 3,,7
.L876:
	mov	x1, 0
	add	x0, sp, 200
	bl	gettimeofday
	ldr	x4, [sp, 192]
	add	x8, sp, 264
	ldp	x0, x7, [sp, 136]
	add	x1, sp, 344
	ldr	x3, [sp, 176]
	mul	x2, x4, x24
	mov	x6, 2000
	mov	x5, 10
	add	x2, x7, x2, lsl 2
.LEHB61:
	bl	_Z21pq_search_rerank_v6_2PfRK7PQIndexS_mmmm
.LEHE61:
	mov	x1, 0
	add	x0, sp, 216
	bl	gettimeofday
	mov	x22, 0
	ldp	x0, x2, [sp, 216]
	mov	x3, 16960
	ldr	x1, [sp, 200]
	movk	x3, 0xf, lsl 16
	mov	x25, 0
	mov	w21, 1
	str	wzr, [sp, 304]
	msub	x1, x1, x3, x2
	stp	xzr, x23, [sp, 312]
	madd	x0, x0, x3, x1
	ldr	x2, [sp, 208]
	stp	x23, xzr, [sp, 328]
	sub	x0, x0, x2
	str	x0, [sp, 128]
	.p2align 3,,7
.L848:
	ldr	x0, [sp, 184]
	madd	x0, x24, x0, x22
	ldr	w20, [x26, x0, lsl 2]
	cbz	x25, .L895
	mov	x19, x25
	b	.L852
	.p2align 2,,3
.L930:
	mov	x19, x0
.L852:
	ldp	x0, x2, [x19, 16]
	ldr	w1, [x19, 32]
	cmp	w20, w1
	csel	x0, x0, x2, cc
	csel	w2, w21, wzr, cc
	cbnz	x0, .L930
	cbnz	w2, .L851
.L935:
	bls	.L856
.L892:
	mov	w25, 1
	cmp	x19, x23
	bne	.L941
.L857:
	mov	x0, 40
.LEHB62:
	bl	_Znwm
.LEHE62:
	mov	x1, x0
	mov	x2, x19
	mov	w0, w25
	mov	x3, x23
	str	w20, [x1, 32]
	bl	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
	ldr	x0, [sp, 336]
	ldr	x25, [sp, 312]
	add	x0, x0, 1
	str	x0, [sp, 336]
.L856:
	add	x22, x22, 1
	cmp	x22, 10
	bne	.L848
	ldp	x0, x6, [sp, 264]
	movi	v0.2s, #0
	mov	x11, 0
	cmp	x6, x0
	beq	.L850
	.p2align 3,,7
.L849:
	ldr	w5, [x0, 4]
	cbz	x25, .L859
	mov	x1, x25
	mov	x7, x23
	.p2align 3,,7
.L860:
	ldr	w2, [x1, 32]
	ldp	x4, x3, [x1, 16]
	cmp	w5, w2
	bls	.L899
	mov	x1, x3
	cbnz	x1, .L860
.L861:
	cmp	x7, x23
	beq	.L859
	ldr	w1, [x7, 32]
	cmp	w5, w1
	cinc	x11, x11, cs
.L859:
	sub	x1, x6, x0
	cmp	x1, 8
	bgt	.L942
.L864:
	sub	x6, x6, #8
	str	x6, [sp, 272]
	cmp	x0, x6
	bne	.L849
	ucvtf	s0, x11
	fmov	s1, 1.0e+1
	fdiv	s0, s0, s1
.L850:
	ldp	x1, x2, [sp, 120]
	str	x2, [x1, 8]
	str	s0, [x1]
	cbz	x25, .L874
.L871:
	ldr	x0, [x25, 24]
	bl	_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0
	mov	x0, x25
	ldr	x25, [x25, 16]
	bl	_ZdlPv
	cbnz	x25, .L871
	ldr	x0, [sp, 264]
.L874:
	cbz	x0, .L873
	bl	_ZdlPv
.L873:
	ldr	x1, [sp, 120]
	add	x24, x24, 1
	ldr	x0, [sp, 168]
	add	x1, x1, 16
	str	x1, [sp, 120]
	cmp	x0, x24
	bhi	.L876
	cbz	x0, .L846
	movi	v8.2s, #0
	ldr	x1, [sp, 152]
	fmov	s9, s8
	add	x0, x1, x0, lsl 4
	.p2align 3,,7
.L877:
	ldr	x1, [x28, 8]
	add	x28, x28, 16
	ldr	s1, [x28, -16]
	scvtf	s0, x1
	fadd	s9, s9, s1
	fadd	s8, s8, s0
	cmp	x0, x28
	bne	.L877
.L845:
	adrp	x20, _ZSt4cout
	add	x20, x20, :lo12:_ZSt4cout
	adrp	x1, .LC18
	mov	x0, x20
	add	x1, x1, :lo12:.LC18
.LEHB63:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	x1, [sp, 168]
	ucvtf	s0, x1
	fdiv	s0, s9, s0
	fcvt	d0, s0
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x19, .LC8
	add	x19, x19, :lo12:.LC8
	mov	x1, x19
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x1, .LC19
	mov	x0, x20
	add	x1, x1, :lo12:.LC19
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	x1, [sp, 168]
	ucvtf	s0, x1
	fdiv	s0, s8, s0
	fcvt	d0, s0
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	x1, x19
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE63:
	add	x0, sp, 344
	bl	_ZN7PQIndexD1Ev
	ldr	x0, [sp, 152]
	bl	_ZdlPv
	ldr	x0, [sp, 232]
	add	x1, sp, 248
	cmp	x0, x1
	beq	.L917
	bl	_ZdlPv
.L917:
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	d8, d9, [sp, 96]
	ldp	x29, x30, [sp], 432
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
.L895:
	.cfi_restore_state
	mov	x19, x23
.L851:
	ldr	x0, [sp, 320]
	cmp	x19, x0
	beq	.L892
	mov	x0, x19
	bl	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	ldr	w0, [x0, 32]
	cmp	w20, w0
	b	.L935
	.p2align 2,,3
.L899:
	mov	x7, x1
	mov	x1, x4
	cbnz	x1, .L860
	b	.L861
	.p2align 2,,3
.L942:
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
	ble	.L900
	mov	x2, 0
	b	.L869
	.p2align 2,,3
.L902:
	mov	w3, w4
	.p2align 3,,7
.L868:
	lsl	x2, x2, 3
	add	x4, x0, x2
	str	s0, [x0, x2]
	str	w3, [x4, 4]
	cmp	x1, x7
	bge	.L865
.L903:
	mov	x2, x1
.L869:
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
	bmi	.L912
	ldr	w3, [x8, 4]
	bgt	.L901
	ldr	w4, [x6, 4]
	cmp	w3, w4
	bcc	.L902
.L901:
	fmov	s0, s1
	lsl	x2, x2, 3
	add	x4, x0, x2
	mov	x1, x5
	str	s0, [x0, x2]
	str	w3, [x4, 4]
	cmp	x1, x7
	blt	.L903
.L865:
	tbnz	x9, 0, .L870
	sub	x9, x9, #2
	add	x9, x9, x9, lsr 63
	cmp	x1, x9, asr 1
	bne	.L870
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
.L870:
	mov	x3, x27
	mov	x2, 0
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldp	x0, x6, [sp, 264]
	ldr	x25, [sp, 312]
	b	.L864
	.p2align 2,,3
.L912:
	ldr	w3, [x6, 4]
	b	.L868
	.p2align 2,,3
.L941:
	ldr	w0, [x19, 32]
	cmp	w20, w0
	cset	w25, cc
	b	.L857
.L900:
	mov	x1, 0
	b	.L865
.L846:
	movi	v8.2s, #0
	fmov	s9, s8
	b	.L845
.L904:
	mov	x19, x0
.L881:
	ldr	x0, [sp, 232]
	add	x1, sp, 248
	cmp	x0, x1
	beq	.L891
	bl	_ZdlPv
.L891:
	mov	x0, x19
.LEHB64:
	bl	_Unwind_Resume
.LEHE64:
.L911:
	mov	x19, x0
	b	.L881
.L908:
	mov	x19, x0
.L889:
	ldr	x0, [sp, 152]
	bl	_ZdlPv
	b	.L881
.L909:
	mov	x19, x0
	ldr	x0, [sp, 312]
	bl	_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0
	ldr	x0, [sp, 264]
	cbz	x0, .L888
	bl	_ZdlPv
.L888:
	add	x0, sp, 344
	bl	_ZN7PQIndexD1Ev
	b	.L889
.L910:
	mov	x19, x0
	b	.L888
.L907:
.L939:
	ldr	x1, [sp, 344]
	add	x2, sp, 360
	mov	x19, x0
	cmp	x1, x2
	beq	.L881
	mov	x0, x1
	bl	_ZdlPv
	b	.L881
.L906:
	b	.L939
.L905:
	b	.L939
	.cfi_endproc
.LFE10515:
	.section	.gcc_except_table
.LLSDA10515:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10515-.LLSDACSB10515
.LLSDACSB10515:
	.uleb128 .LEHB52-.LFB10515
	.uleb128 .LEHE52-.LEHB52
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB53-.LFB10515
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L904-.LFB10515
	.uleb128 0
	.uleb128 .LEHB54-.LFB10515
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L905-.LFB10515
	.uleb128 0
	.uleb128 .LEHB55-.LFB10515
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L904-.LFB10515
	.uleb128 0
	.uleb128 .LEHB56-.LFB10515
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L906-.LFB10515
	.uleb128 0
	.uleb128 .LEHB57-.LFB10515
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L904-.LFB10515
	.uleb128 0
	.uleb128 .LEHB58-.LFB10515
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L907-.LFB10515
	.uleb128 0
	.uleb128 .LEHB59-.LFB10515
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L911-.LFB10515
	.uleb128 0
	.uleb128 .LEHB60-.LFB10515
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L908-.LFB10515
	.uleb128 0
	.uleb128 .LEHB61-.LFB10515
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L910-.LFB10515
	.uleb128 0
	.uleb128 .LEHB62-.LFB10515
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L909-.LFB10515
	.uleb128 0
	.uleb128 .LEHB63-.LFB10515
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L910-.LFB10515
	.uleb128 0
	.uleb128 .LEHB64-.LFB10515
	.uleb128 .LEHE64-.LEHB64
	.uleb128 0
	.uleb128 0
.LLSDACSE10515:
	.section	.text.startup
	.size	main, .-main
	.section	.text._ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj,"axG",@progbits,_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj
	.type	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj, %function
_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj:
.LFB12011:
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
	cbz	x6, .L954
	ldr	x2, [x6]
	mov	x5, x6
	ldr	w0, [x2, 8]
.L946:
	cmp	w8, w0
	beq	.L945
	ldr	x0, [x2]
	mov	x5, x2
	mov	x2, x0
	cbz	x0, .L954
	ldr	w0, [x0, 8]
	uxtw	x7, w0
	udiv	x4, x7, x1
	msub	x4, x4, x1, x7
	cmp	x3, x4
	beq	.L946
.L954:
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
.L945:
	.cfi_restore_state
	ldr	x0, [x5]
	ldr	x2, [x0]
	cmp	x6, x5
	beq	.L961
	cbz	x2, .L948
	ldr	w6, [x2, 8]
	udiv	x4, x6, x1
	msub	x1, x4, x1, x6
	cmp	x3, x1
	beq	.L948
	str	x5, [x9, x1, lsl 3]
	ldr	x2, [x0]
.L948:
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
.L961:
	.cfi_restore_state
	cbz	x2, .L955
	ldr	w6, [x2, 8]
	udiv	x4, x6, x1
	msub	x1, x4, x1, x6
	cmp	x3, x1
	beq	.L948
	str	x5, [x9, x1, lsl 3]
	ldr	x1, [x9, x3, lsl 3]
.L947:
	add	x4, x19, 16
	cmp	x1, x4
	beq	.L962
.L949:
	str	xzr, [x9, x3, lsl 3]
	ldr	x2, [x0]
	b	.L948
	.p2align 2,,3
.L955:
	mov	x1, x5
	b	.L947
	.p2align 2,,3
.L962:
	str	x2, [x19, 16]
	b	.L949
	.cfi_endproc
.LFE12011:
	.size	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj, .-_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj
	.section	.text._ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_,"axG",@progbits,_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_
	.type	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_, %function
_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_:
.LFB12012:
	.cfi_startproc
	ldr	x5, [x2]
	ldr	x2, [x0, 8]
	ldr	x8, [x0]
	udiv	x4, x5, x2
	msub	x4, x4, x2, x5
	ldr	x7, [x8, x4, lsl 3]
	cbz	x7, .L972
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
.L966:
	cmp	x5, x1
	beq	.L965
	ldr	x0, [x3]
	mov	x6, x3
	mov	x3, x0
	cbz	x0, .L974
	ldr	x1, [x0, 8]
	udiv	x0, x1, x2
	msub	x0, x0, x2, x1
	cmp	x4, x0
	beq	.L966
.L974:
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
.L965:
	.cfi_restore_state
	ldr	x0, [x6]
	ldr	x1, [x0]
	cmp	x7, x6
	beq	.L984
	cbz	x1, .L968
	ldr	x5, [x1, 8]
	udiv	x3, x5, x2
	msub	x2, x3, x2, x5
	cmp	x4, x2
	beq	.L968
	str	x6, [x8, x2, lsl 3]
	ldr	x1, [x0]
.L968:
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
.L984:
	.cfi_restore_state
	cbz	x1, .L975
	ldr	x5, [x1, 8]
	udiv	x3, x5, x2
	msub	x2, x3, x2, x5
	cmp	x4, x2
	beq	.L968
	str	x6, [x8, x2, lsl 3]
	ldr	x2, [x8, x4, lsl 3]
.L967:
	add	x3, x19, 16
	cmp	x2, x3
	beq	.L985
.L969:
	str	xzr, [x8, x4, lsl 3]
	ldr	x1, [x0]
	b	.L968
	.p2align 2,,3
.L975:
	mov	x2, x6
	b	.L967
	.p2align 2,,3
.L972:
	.cfi_def_cfa_offset 0
	.cfi_restore 19
	.cfi_restore 29
	.cfi_restore 30
	mov	x0, 0
	ret
	.p2align 2,,3
.L985:
	.cfi_def_cfa_offset 32
	.cfi_offset 19, -16
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	str	x1, [x19, 16]
	b	.L969
	.cfi_endproc
.LFE12012:
	.size	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_, .-_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB12191:
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
	beq	.L1004
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	mov	x28, x3
	adds	x1, x1, x0
	bcs	.L997
	cbnz	x1, .L991
	mov	x25, 8
	mov	x22, 0
	mov	x20, 0
.L996:
	ldr	s0, [x27]
	add	x0, x20, x26
	ldr	w1, [x28]
	str	s0, [x20, x26]
	str	w1, [x0, 4]
	cmp	x19, x24
	beq	.L992
	mov	x4, x20
	mov	x3, x24
	.p2align 3,,7
.L993:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L993
	add	x26, x26, 8
	add	x25, x20, x26
.L992:
	cmp	x19, x23
	beq	.L994
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L994:
	cbz	x24, .L995
	mov	x0, x24
	bl	_ZdlPv
.L995:
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
.L997:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L990:
	mov	x0, x22
	bl	_Znwm
	mov	x20, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L996
.L991:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L990
.L1004:
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12191:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_
	.type	_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_, %function
_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_:
.LFB12207:
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
	beq	.L1020
	cmp	x3, 0
	mov	x20, x0
	csinc	x0, x3, xzr, ne
	mov	x27, x2
	sub	x26, x24, x25
	adds	x3, x3, x0
	bcs	.L1017
	cbnz	x3, .L1010
	mov	x19, 0
	mov	x23, 0
.L1016:
	ldr	w0, [x27]
	add	x22, x26, 4
	sub	x21, x21, x24
	add	x22, x23, x22
	str	w0, [x23, x26]
	add	x27, x22, x21
	cmp	x26, 0
	bgt	.L1021
	cmp	x21, 0
	bgt	.L1012
	cbnz	x25, .L1015
.L1013:
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
.L1021:
	.cfi_restore_state
	mov	x2, x26
	mov	x1, x25
	mov	x0, x23
	bl	memmove
	cmp	x21, 0
	bgt	.L1012
.L1015:
	mov	x0, x25
	bl	_ZdlPv
	b	.L1013
	.p2align 2,,3
.L1012:
	mov	x2, x21
	mov	x1, x24
	mov	x0, x22
	bl	memcpy
	cbz	x25, .L1013
	b	.L1015
	.p2align 2,,3
.L1017:
	mov	x19, 9223372036854775804
.L1009:
	mov	x0, x19
	bl	_Znwm
	mov	x23, x0
	add	x19, x0, x19
	b	.L1016
	.p2align 2,,3
.L1010:
	cmp	x3, x1
	csel	x3, x3, x1, ls
	lsl	x19, x3, 2
	b	.L1009
.L1020:
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12207:
	.size	_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_, .-_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_
	.section	.text._ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_,"axG",@progbits,_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_
	.type	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_, %function
_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_:
.LFB12233:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12233
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
	beq	.L1044
	mov	x20, x2
	mov	x0, 1152921504606846975
	cmp	x1, x0
	bhi	.L1045
	lsl	x22, x1, 3
	mov	x0, x22
.LEHB65:
	bl	_Znwm
	mov	x20, x0
	mov	x2, x22
	mov	w1, 0
	bl	memset
	add	x8, x21, 48
.L1024:
	ldr	x4, [x21, 16]
	str	xzr, [x21, 16]
	cbz	x4, .L1026
	add	x7, x21, 16
	mov	x6, 0
	.p2align 3,,7
.L1027:
	ldr	x5, [x4, 8]
	mov	x3, x4
	ldr	x4, [x4]
	udiv	x2, x5, x19
	msub	x2, x2, x19, x5
	ldr	x1, [x20, x2, lsl 3]
	cbz	x1, .L1046
	ldr	x0, [x1]
	str	x0, [x3]
	ldr	x0, [x20, x2, lsl 3]
	str	x3, [x0]
	cbnz	x4, .L1027
.L1026:
	ldr	x0, [x21]
	cmp	x0, x8
	beq	.L1030
	bl	_ZdlPv
.L1030:
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
.L1046:
	.cfi_restore_state
	ldr	x0, [x21, 16]
	str	x0, [x3]
	str	x3, [x21, 16]
	str	x7, [x20, x2, lsl 3]
	ldr	x0, [x3]
	cbz	x0, .L1033
	str	x3, [x20, x6, lsl 3]
	mov	x6, x2
	cbnz	x4, .L1027
	b	.L1026
	.p2align 2,,3
.L1033:
	mov	x6, x2
	cbnz	x4, .L1027
	b	.L1026
	.p2align 2,,3
.L1044:
	mov	x20, x0
	str	xzr, [x20, 48]!
	mov	x8, x20
	b	.L1024
.L1045:
	bl	_ZSt17__throw_bad_allocv
.LEHE65:
.L1034:
	bl	__cxa_begin_catch
	ldr	x0, [x20]
	str	x0, [x21, 40]
.LEHB66:
	bl	__cxa_rethrow
.LEHE66:
.L1035:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB67:
	bl	_Unwind_Resume
.LEHE67:
	.cfi_endproc
.LFE12233:
	.section	.gcc_except_table
	.align	2
.LLSDA12233:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT12233-.LLSDATTD12233
.LLSDATTD12233:
	.byte	0x1
	.uleb128 .LLSDACSE12233-.LLSDACSB12233
.LLSDACSB12233:
	.uleb128 .LEHB65-.LFB12233
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L1034-.LFB12233
	.uleb128 0x1
	.uleb128 .LEHB66-.LFB12233
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L1035-.LFB12233
	.uleb128 0
	.uleb128 .LEHB67-.LFB12233
	.uleb128 .LEHE67-.LEHB67
	.uleb128 0
	.uleb128 0
.LLSDACSE12233:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT12233:
	.section	.text._ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_,"axG",@progbits,_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_,comdat
	.size	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_, .-_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_
	.section	.text._ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_,"axG",@progbits,_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_
	.type	_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_, %function
_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_:
.LFB11712:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11712
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
	cbz	x6, .L1048
	ldr	x3, [x6]
	ldr	x0, [x3, 8]
	cmp	x21, x0
	beq	.L1049
.L1072:
	ldr	x4, [x3]
	cbz	x4, .L1048
	ldr	x0, [x4, 8]
	mov	x6, x3
	udiv	x3, x0, x5
	msub	x3, x3, x5, x0
	cmp	x2, x3
	bne	.L1048
	mov	x3, x4
	cmp	x21, x0
	bne	.L1072
.L1049:
	ldr	x1, [x6]
	add	x0, x1, 16
	cbz	x1, .L1048
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
.L1048:
	.cfi_restore_state
	mov	x0, 24
.LEHB68:
	bl	_Znwm
.LEHE68:
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
.LEHB69:
	bl	_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm
	tst	w0, 255
	bne	.L1073
	ldr	x0, [x19]
	add	x2, x0, x22
	ldr	x1, [x0, x22]
	cbz	x1, .L1053
.L1074:
	ldr	x1, [x1]
	str	x1, [x20]
	ldr	x0, [x0, x22]
	str	x20, [x0]
.L1054:
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
.L1073:
	.cfi_restore_state
	add	x2, sp, 72
	mov	x0, x19
	bl	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_
.LEHE69:
	ldr	x0, [x19, 8]
	udiv	x22, x21, x0
	msub	x22, x22, x0, x21
	ldr	x0, [x19]
	lsl	x22, x22, 3
	add	x2, x0, x22
	ldr	x1, [x0, x22]
	cbnz	x1, .L1074
.L1053:
	ldr	x1, [x19, 16]
	str	x1, [x20]
	str	x20, [x19, 16]
	cbz	x1, .L1055
	ldr	x4, [x1, 8]
	ldr	x3, [x19, 8]
	udiv	x1, x4, x3
	msub	x1, x1, x3, x4
	str	x20, [x0, x1, lsl 3]
.L1055:
	add	x0, x19, 16
	str	x0, [x2]
	b	.L1054
.L1058:
	mov	x19, x0
	mov	x0, x20
	bl	_ZdlPv
	mov	x0, x19
.LEHB70:
	bl	_Unwind_Resume
.LEHE70:
	.cfi_endproc
.LFE11712:
	.section	.gcc_except_table
.LLSDA11712:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11712-.LLSDACSB11712
.LLSDACSB11712:
	.uleb128 .LEHB68-.LFB11712
	.uleb128 .LEHE68-.LEHB68
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB69-.LFB11712
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L1058-.LFB11712
	.uleb128 0
	.uleb128 .LEHB70-.LFB11712
	.uleb128 .LEHE70-.LEHB70
	.uleb128 0
	.uleb128 0
.LLSDACSE11712:
	.section	.text._ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_,"axG",@progbits,_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_,comdat
	.size	_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_, .-_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB12270:
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
	beq	.L1093
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	mov	x28, x3
	adds	x1, x1, x0
	bcs	.L1086
	cbnz	x1, .L1080
	mov	x25, 8
	mov	x22, 0
	mov	x20, 0
.L1085:
	ldr	s0, [x27]
	add	x0, x20, x26
	ldr	w1, [x28]
	str	s0, [x20, x26]
	str	w1, [x0, 4]
	cmp	x19, x24
	beq	.L1081
	mov	x4, x20
	mov	x3, x24
	.p2align 3,,7
.L1082:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L1082
	add	x26, x26, 8
	add	x25, x20, x26
.L1081:
	cmp	x19, x23
	beq	.L1083
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L1083:
	cbz	x24, .L1084
	mov	x0, x24
	bl	_ZdlPv
.L1084:
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
.L1086:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L1079:
	mov	x0, x22
	bl	_Znwm
	mov	x20, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L1085
.L1080:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L1079
.L1093:
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12270:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB12276:
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
	beq	.L1112
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	adds	x1, x1, x0
	bcs	.L1105
	cbnz	x1, .L1099
	mov	x25, 8
	mov	x22, 0
	mov	x21, 0
.L1104:
	ldr	x0, [x27]
	str	x0, [x21, x26]
	cmp	x19, x24
	beq	.L1100
	mov	x4, x21
	mov	x3, x24
	.p2align 3,,7
.L1101:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L1101
	add	x26, x26, 8
	add	x25, x21, x26
.L1100:
	cmp	x19, x23
	beq	.L1102
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L1102:
	cbz	x24, .L1103
	mov	x0, x24
	bl	_ZdlPv
.L1103:
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
.L1105:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L1098:
	mov	x0, x22
	bl	_Znwm
	mov	x21, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L1104
.L1099:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L1098
.L1112:
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12276:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm
	.type	_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm, %function
_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm:
.LFB11752:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11752
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
	bhi	.L1113
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
	beq	.L1203
	str	d8, [sp, 96]
	.cfi_offset 72, -80
	b	.L1115
	.p2align 2,,3
.L1205:
	ldr	w0, [x23, 4]
	add	x21, x21, 8
	str	w0, [x21, -4]
	str	s8, [x21, -8]
.L1120:
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
	beq	.L1204
.L1115:
	ldr	s8, [x23]
	fneg	s8, s8
	cmp	x25, x21
	bne	.L1205
	sub	x27, x25, x20
	asr	x0, x27, 3
	cmp	x0, x28
	beq	.L1206
	cmp	x0, 0
	csinc	x1, x0, xzr, ne
	adds	x0, x0, x1
	bcs	.L1123
	cbnz	x0, .L1207
	mov	x2, 8
	mov	x25, 0
	mov	x4, 0
.L1125:
	add	x0, x4, x27
	ldr	w1, [x23, 4]
	str	s8, [x4, x27]
	str	w1, [x0, 4]
	cmp	x21, x20
	beq	.L1160
	mov	x2, x4
	mov	x1, x20
	.p2align 3,,7
.L1127:
	ldr	x3, [x1], 8
	str	x3, [x2], 8
	cmp	x1, x21
	bne	.L1127
	sub	x21, x21, x20
	add	x21, x21, 8
	add	x21, x4, x21
	cbz	x20, .L1128
.L1212:
	mov	x0, x20
	str	x4, [sp, 120]
	bl	_ZdlPv
	ldr	x4, [sp, 120]
.L1128:
	mov	x20, x4
	b	.L1120
	.p2align 2,,3
.L1204:
	ldr	x23, [sp, 160]
	cmp	x21, x20
	beq	.L1202
	.p2align 3,,7
.L1117:
	ldr	x25, [sp, 152]
	sub	x0, x23, x25
	cmp	x24, x0, asr 3
	bls	.L1118
	ldr	x0, [x20]
	str	x0, [sp, 144]
	sub	x0, x21, x20
	sub	x21, x21, #8
	ldr	s8, [sp, 144]
	cmp	x0, 8
	fneg	s8, s8
	bgt	.L1208
.L1131:
	cmp	x23, x25
	beq	.L1138
	.p2align 3,,7
.L1142:
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
.LEHB71:
	blr	x6
	fcmpe	s8, s0
	bgt	.L1201
	add	x25, x25, 8
	cmp	x25, x23
	bne	.L1142
	ldr	x25, [sp, 160]
.L1138:
	ldr	x0, [sp, 168]
	cmp	x0, x25
	beq	.L1209
	mov	x23, x25
	ldr	x0, [sp, 144]
	str	x0, [x23], 8
	str	x23, [sp, 160]
.L1141:
	cmp	x20, x21
	bne	.L1117
.L1202:
	ldr	x25, [sp, 152]
.L1118:
	cmp	x23, x25
	beq	.L1143
	ldr	x1, [x22, 8]
	.p2align 3,,7
.L1150:
	ldr	x0, [x25]
	str	x0, [sp, 144]
	ldr	x0, [x22, 16]
	ldr	s1, [sp, 144]
	fneg	s1, s1
	str	s1, [sp, 140]
	cmp	x0, x1
	beq	.L1144
	ldr	w8, [sp, 148]
	add	x1, x1, 8
	str	s1, [x1, -8]
	str	w8, [x1, -4]
	str	x1, [x22, 8]
.L1145:
	ldr	x4, [x22]
	sub	x3, x1, x4
	asr	x0, x3, 3
	sub	x2, x0, #2
	sub	x0, x0, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x0, 0
	ble	.L1146
	.p2align 3,,7
.L1149:
	lsl	x3, x2, 3
	lsl	x0, x0, 3
	add	x6, x4, x3
	add	x5, x4, x0
	ldr	s0, [x4, x3]
	fcmpe	s0, s1
	bmi	.L1169
	add	x25, x25, 8
	str	s1, [x5]
	str	w8, [x5, 4]
	cmp	x23, x25
	bne	.L1150
.L1211:
	ldr	x25, [sp, 152]
.L1143:
	cbz	x25, .L1151
	mov	x0, x25
	bl	_ZdlPv
.L1151:
	cbnz	x20, .L1210
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 80]
	.cfi_restore 28
	.cfi_restore 27
	ldr	d8, [sp, 96]
	.cfi_restore 72
.L1113:
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
.L1209:
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
.L1201:
	ldr	x23, [sp, 160]
	b	.L1141
	.p2align 2,,3
.L1208:
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
	ble	.L1161
	mov	x0, 0
	b	.L1136
	.p2align 2,,3
.L1163:
	mov	w2, w3
.L1135:
	lsl	x0, x0, 3
	add	x3, x20, x0
	str	s0, [x20, x0]
	str	w2, [x3, 4]
	cmp	x1, x6
	bge	.L1132
.L1164:
	mov	x0, x1
.L1136:
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
	bmi	.L1167
	ldr	w2, [x7, 4]
	bgt	.L1162
	ldr	w3, [x5, 4]
	cmp	w3, w2
	bhi	.L1163
.L1162:
	fmov	s0, s1
	lsl	x0, x0, 3
	add	x3, x20, x0
	mov	x1, x4
	str	s0, [x20, x0]
	str	w2, [x3, 4]
	cmp	x1, x6
	blt	.L1164
.L1132:
	tbnz	x8, 0, .L1137
	sub	x8, x8, #2
	add	x8, x8, x8, lsr 63
	cmp	x1, x8, asr 1
	bne	.L1137
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
.L1137:
	mov	x3, x26
	mov	x0, x20
	mov	x2, 0
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldp	x25, x23, [sp, 152]
	b	.L1131
	.p2align 2,,3
.L1167:
	ldr	w2, [x5, 4]
	b	.L1135
	.p2align 2,,3
.L1169:
	sub	x3, x2, #1
	ldr	w7, [x6, 4]
	str	s0, [x4, x0]
	mov	x0, x2
	add	x3, x3, x3, lsr 63
	str	w7, [x5, 4]
	asr	x2, x3, 1
	cmp	x0, 0
	bgt	.L1149
	mov	x5, x6
	add	x25, x25, 8
	str	s1, [x5]
	str	w8, [x5, 4]
	cmp	x23, x25
	bne	.L1150
	b	.L1211
	.p2align 2,,3
.L1144:
	add	x3, sp, 148
	add	x2, sp, 140
	mov	x0, x22
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x1, [x22, 8]
	ldr	w8, [x1, -4]
	ldr	s1, [x1, -8]
	b	.L1145
.L1210:
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
.L1146:
	.cfi_restore_state
	sub	x3, x3, #8
	add	x25, x25, 8
	add	x5, x4, x3
	str	s1, [x5]
	str	w8, [x5, 4]
	cmp	x23, x25
	bne	.L1150
	b	.L1211
.L1161:
	mov	x1, 0
	b	.L1132
.L1160:
	mov	x21, x2
	cbnz	x20, .L1212
	b	.L1128
.L1203:
	.cfi_restore 72
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 80]
	.cfi_restore 28
	.cfi_restore 27
	b	.L1113
.L1207:
	.cfi_offset 25, -112
	.cfi_offset 26, -104
	.cfi_offset 27, -96
	.cfi_offset 28, -88
	.cfi_offset 72, -80
	cmp	x0, x28
	csel	x0, x0, x28, ls
	lsl	x25, x0, 3
.L1124:
	mov	x0, x25
	bl	_Znwm
	mov	x4, x0
	add	x25, x0, x25
	add	x2, x0, 8
	b	.L1125
.L1206:
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	_ZSt20__throw_length_errorPKc
.LEHE71:
.L1123:
	mov	x25, 9223372036854775800
	b	.L1124
.L1166:
	ldr	x1, [sp, 152]
	mov	x19, x0
	cbz	x1, .L1153
	mov	x0, x1
	bl	_ZdlPv
.L1153:
	cbz	x20, .L1154
	mov	x0, x20
	bl	_ZdlPv
.L1154:
	mov	x0, x19
.LEHB72:
	bl	_Unwind_Resume
.LEHE72:
	.cfi_endproc
.LFE11752:
	.section	.gcc_except_table
.LLSDA11752:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11752-.LLSDACSB11752
.LLSDACSB11752:
	.uleb128 .LEHB71-.LFB11752
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L1166-.LFB11752
	.uleb128 0
	.uleb128 .LEHB72-.LFB11752
	.uleb128 .LEHE72-.LEHB72
	.uleb128 0
	.uleb128 0
.LLSDACSE11752:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm, .-_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB12364:
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
	beq	.L1231
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	mov	x28, x3
	adds	x1, x1, x0
	bcs	.L1224
	cbnz	x1, .L1218
	mov	x25, 8
	mov	x22, 0
	mov	x20, 0
.L1223:
	ldr	s0, [x27]
	add	x0, x20, x26
	ldr	w1, [x28]
	str	s0, [x20, x26]
	str	w1, [x0, 4]
	cmp	x19, x24
	beq	.L1219
	mov	x4, x20
	mov	x3, x24
	.p2align 3,,7
.L1220:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L1220
	add	x26, x26, 8
	add	x25, x20, x26
.L1219:
	cmp	x19, x23
	beq	.L1221
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L1221:
	cbz	x24, .L1222
	mov	x0, x24
	bl	_ZdlPv
.L1222:
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
.L1224:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L1217:
	mov	x0, x22
	bl	_Znwm
	mov	x20, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L1223
.L1218:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L1217
.L1231:
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12364:
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
.LFB12958:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12958
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
.LEHB73:
	bl	_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm
.LEHE73:
	ldp	x2, x1, [x21]
	ldr	x0, [x19, 48]
	sub	x3, x1, x2
	cmp	x0, x3, asr 3
	bcc	.L1387
	stp	xzr, xzr, [sp, 152]
	mov	x3, 2305843009213693951
	str	xzr, [sp, 168]
	cmp	x0, x3
	bhi	.L1388
	cbnz	x0, .L1389
	mov	x20, 0
.L1236:
	cmp	x1, x2
	bne	.L1244
	b	.L1240
	.p2align 2,,3
.L1390:
	ldr	w0, [x2, 4]
	str	w0, [x20], 4
	mov	x0, x21
	str	x20, [sp, 160]
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x2, x0, [x21]
	ldr	x20, [sp, 160]
	cmp	x0, x2
	beq	.L1240
.L1244:
	ldr	x0, [sp, 168]
	cmp	x0, x20
	bne	.L1390
	add	x2, x2, 4
	mov	x1, x20
	add	x0, sp, 152
.LEHB74:
	bl	_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_
	mov	x0, x21
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x2, x0, [x21]
	ldr	x20, [sp, 160]
	cmp	x0, x2
	bne	.L1244
.L1240:
	ldr	w0, [sp, 124]
	mov	w3, 48
	ldr	x2, [x19, 192]
	uxtw	x1, w0
	ldr	w4, [x20, -4]
	str	w4, [sp, 120]
	umaddl	x0, w0, w3, x2
	strb	wzr, [sp, 184]
	str	x0, [sp, 176]
	cbnz	w28, .L1391
	cbnz	w26, .L1249
.L1404:
	ldr	x2, [x19, 24]
	ldr	x0, [x19, 240]
	ldr	x3, [x19, 256]
	madd	x1, x1, x2, x0
	add	x3, x3, x1
.L1250:
	ldr	w0, [x3]
	cmp	w0, 0
	ccmp	w28, 0, 0, ne
	beq	.L1392
	ldp	x2, x7, [sp, 152]
	mov	x1, 1
	sub	x5, x7, x2
	sub	x6, x2, #4
	asr	x5, x5, 2
	strh	w5, [x3]
	cbnz	x5, .L1252
	b	.L1257
	.p2align 2,,3
.L1309:
	mov	x1, x0
.L1252:
	ldr	w0, [x3, x1, lsl 2]
	cmp	w0, 0
	ccmp	w28, 0, 0, ne
	beq	.L1393
	ldr	w0, [x6, x1, lsl 2]
	ldr	x4, [x19, 272]
	ldr	w4, [x4, w0, uxtw 2]
	cmp	w26, w4
	bgt	.L1394
	str	w0, [x3, x1, lsl 2]
	add	x0, x1, 1
	cmp	x5, x1
	bne	.L1309
.L1257:
	ldrb	w0, [sp, 184]
	cbnz	w0, .L1395
.L1254:
	cmp	x2, x7
	beq	.L1259
	sub	w0, w26, #1
	add	x1, x19, 192
	mov	x24, 0
	sxtw	x0, w0
	stp	x1, x0, [sp, 104]
	b	.L1289
	.p2align 2,,3
.L1401:
	ldr	x1, [x19, 24]
	ldr	x2, [x19, 240]
	ldr	x20, [x19, 256]
	madd	x1, x4, x1, x2
	add	x20, x20, x1
.L1263:
	ldrh	w2, [x20]
	and	x22, x2, 65535
	cmp	x27, x2, uxth
	bcc	.L1396
	ldr	w1, [sp, 124]
	cmp	w1, w0
	beq	.L1397
	ldr	x0, [x19, 272]
	ldr	w0, [x0, x4, lsl 2]
	cmp	w26, w0
	bgt	.L1398
	add	x21, x20, 4
	cbnz	w28, .L1399
.L1267:
	cmp	x22, x27
	bcs	.L1270
	uxtw	x0, w2
	add	w2, w2, 1
	str	w1, [x21, x0, lsl 2]
	strh	w2, [x20]
.L1268:
	ldr	x0, [sp, 136]
	cbz	x0, .L1288
	ldr	x1, [sp, 96]
	cbz	x1, .L1288
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L1288:
	ldp	x2, x0, [sp, 152]
	add	x24, x24, 1
	sub	x0, x0, x2
	cmp	x24, x0, asr 2
	bcs	.L1259
.L1289:
	ldr	x1, [sp, 104]
	mov	w3, 48
	ldr	w0, [x2, x24, lsl 2]
	lsl	x25, x24, 2
	strb	wzr, [sp, 144]
	ldr	x1, [x1]
	umaddl	x0, w0, w3, x1
	str	x0, [sp, 136]
	cbz	x0, .L1400
	adrp	x1, .LC5
	ldr	x1, [x1, #:lo12:.LC5]
	str	x1, [sp, 96]
	cbz	x1, .L1261
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1381
	ldr	x2, [sp, 152]
.L1261:
	mov	w0, 1
	strb	w0, [sp, 144]
	ldr	w0, [x2, x25]
	uxtw	x4, w0
	cbz	w26, .L1401
	ldr	x1, [x19, 264]
	ldr	x20, [x19, 32]
	ldr	x1, [x1, x4, lsl 3]
	ldr	x2, [sp, 112]
	madd	x20, x2, x20, x1
	b	.L1263
.L1389:
	lsl	x22, x0, 2
	mov	x0, x22
	bl	_Znwm
.LEHE74:
	ldp	x23, x2, [sp, 152]
	mov	x20, x0
	sub	x2, x2, x23
	cmp	x2, 0
	bgt	.L1402
	cbnz	x23, .L1238
.L1239:
	add	x0, x20, x22
	stp	x20, x20, [sp, 152]
	str	x0, [sp, 168]
	ldp	x2, x1, [x21]
	b	.L1236
.L1402:
	mov	x1, x23
	bl	memmove
.L1238:
	mov	x0, x23
	bl	_ZdlPv
	b	.L1239
.L1391:
	cbz	x0, .L1403
	adrp	x2, .LC5
	ldr	x2, [x2, #:lo12:.LC5]
	cbz	x2, .L1247
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1248
	ldr	w1, [sp, 124]
.L1247:
	mov	w0, 1
	strb	w0, [sp, 184]
	cbz	w26, .L1404
.L1249:
	ldr	x0, [x19, 264]
	sub	w3, w26, #1
	ldr	x2, [x19, 32]
	sxtw	x3, w3
	ldr	x0, [x0, x1, lsl 3]
	madd	x3, x3, x2, x0
	b	.L1250
	.p2align 2,,3
.L1399:
	cbz	x22, .L1267
	mov	x0, 1
	b	.L1269
	.p2align 2,,3
.L1405:
	add	x3, x0, 1
	cmp	x22, x0
	beq	.L1267
	mov	x0, x3
.L1269:
	ldr	w3, [x20, x0, lsl 2]
	cmp	w1, w3
	bne	.L1405
	b	.L1268
	.p2align 2,,3
.L1270:
	ldr	x3, [x19, 24]
	uxtw	x0, w1
	ldr	x5, [x19, 232]
	ldp	x6, x2, [x19, 304]
	madd	x0, x0, x3, x5
	madd	x3, x3, x4, x5
	ldr	x1, [x19, 256]
	add	x0, x1, x0
	add	x1, x1, x3
.LEHB75:
	blr	x6
.LEHE75:
	add	x0, sp, 176
	add	x3, sp, 124
	add	x2, sp, 128
	mov	x1, 0
	str	s0, [sp, 128]
	stp	xzr, xzr, [sp, 176]
	str	xzr, [sp, 192]
.LEHB76:
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
	ble	.L1271
	.p2align 3,,7
.L1274:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s0, [x3, x2]
	fcmpe	s1, s0
	bgt	.L1326
.L1272:
	str	w7, [x4, 4]
	mov	x23, 0
	str	s1, [x4]
	cbz	x22, .L1283
	.p2align 3,,7
.L1284:
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
	beq	.L1277
	ldr	w7, [x21]
	add	x0, x1, 8
	str	s0, [x1]
	str	w7, [x1, 4]
	str	x0, [sp, 184]
.L1278:
	ldr	x3, [sp, 176]
	sub	x2, x0, x3
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L1279
	.p2align 3,,7
.L1282:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s1, [x3, x2]
	fcmpe	s1, s0
	bmi	.L1327
	add	x23, x23, 1
	str	s0, [x4]
	str	w7, [x4, 4]
	add	x21, x21, 4
	cmp	x22, x23
	bne	.L1284
.L1283:
	mov	x2, x27
	add	x1, sp, 176
	mov	x0, x19
	bl	_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm
	ldp	x0, x1, [sp, 176]
	cmp	x1, x0
	beq	.L1314
	mov	x21, 1
	.p2align 3,,7
.L1286:
	ldr	w1, [x0, 4]
	add	x0, sp, 176
	str	w1, [x20, x21, lsl 2]
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x0, x1, [sp, 176]
	mov	x2, x21
	add	x21, x21, 1
	cmp	x1, x0
	bne	.L1286
	and	w2, w2, 65535
.L1285:
	strh	w2, [x20]
	cbz	x0, .L1287
	bl	_ZdlPv
.L1287:
	ldrb	w0, [sp, 144]
	cbnz	w0, .L1268
	ldp	x2, x0, [sp, 152]
	add	x24, x24, 1
	sub	x0, x0, x2
	cmp	x24, x0, asr 2
	bcc	.L1289
.L1259:
	cbz	x2, .L1232
	mov	x0, x2
	bl	_ZdlPv
.L1232:
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
.L1326:
	.cfi_restore_state
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s0, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L1274
	mov	x4, x5
	b	.L1272
	.p2align 2,,3
.L1327:
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s1, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L1282
	mov	x4, x5
	add	x23, x23, 1
	add	x21, x21, 4
	str	s0, [x4]
	str	w7, [x4, 4]
	cmp	x22, x23
	bne	.L1284
	b	.L1283
	.p2align 2,,3
.L1277:
	mov	x3, x21
	add	x2, sp, 132
	add	x0, sp, 176
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE76:
	ldr	x0, [sp, 184]
	ldr	w7, [x0, -4]
	ldr	s0, [x0, -8]
	b	.L1278
.L1279:
	sub	x0, x2, #8
	add	x23, x23, 1
	add	x4, x3, x0
	add	x21, x21, 4
	str	s0, [x4]
	str	w7, [x4, 4]
	cmp	x22, x23
	bne	.L1284
	b	.L1283
.L1395:
	ldr	x0, [sp, 176]
	cbz	x0, .L1254
	adrp	x1, .LC5
	ldr	x1, [x1, #:lo12:.LC5]
	cbz	x1, .L1254
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	ldp	x2, x7, [sp, 152]
	b	.L1254
.L1314:
	mov	w2, 0
	b	.L1285
.L1271:
	sub	x2, x2, #8
	add	x4, x3, x2
	b	.L1272
.L1248:
.LEHB77:
	bl	_ZSt20__throw_system_errori
.LEHE77:
.L1388:
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
.LEHB78:
	bl	_ZSt20__throw_length_errorPKc
.L1381:
	bl	_ZSt20__throw_system_errori
.LEHE78:
.L1403:
	mov	w0, 1
.LEHB79:
	bl	_ZSt20__throw_system_errori
.LEHE79:
	.p2align 2,,3
.L1400:
	mov	w0, 1
.LEHB80:
	bl	_ZSt20__throw_system_errori
.LEHE80:
.L1321:
	mov	x19, x0
.L1293:
	ldrb	w0, [sp, 184]
	cbz	w0, .L1297
	add	x0, sp, 176
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L1297:
	ldr	x0, [sp, 152]
	cbz	x0, .L1305
	bl	_ZdlPv
.L1305:
	mov	x0, x19
.LEHB81:
	bl	_Unwind_Resume
.LEHE81:
.L1396:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC25
	mov	x20, x0
	add	x1, x1, :lo12:.LC25
.LEHB82:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE82:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB83:
	bl	__cxa_throw
.LEHE83:
.L1397:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC26
	mov	x20, x0
	add	x1, x1, :lo12:.LC26
.LEHB84:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE84:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB85:
	bl	__cxa_throw
.LEHE85:
.L1320:
.L1385:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
.L1299:
	ldrb	w0, [sp, 144]
	cbz	w0, .L1297
	add	x0, sp, 136
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L1297
.L1319:
	b	.L1385
.L1316:
	mov	x19, x0
	b	.L1299
.L1317:
	ldr	x1, [sp, 176]
	mov	x19, x0
	cbz	x1, .L1299
	mov	x0, x1
	bl	_ZdlPv
	b	.L1299
.L1315:
	mov	x19, x0
	b	.L1297
.L1392:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC22
	mov	x20, x0
	add	x1, x1, :lo12:.LC22
.LEHB86:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE86:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB87:
	bl	__cxa_throw
.LEHE87:
.L1324:
.L1384:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
	b	.L1293
.L1387:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC20
	mov	x19, x0
	add	x1, x1, :lo12:.LC20
.LEHB88:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE88:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x19
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB89:
	bl	__cxa_throw
.LEHE89:
.L1393:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC23
	mov	x20, x0
	add	x1, x1, :lo12:.LC23
.LEHB90:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE90:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB91:
	bl	__cxa_throw
.LEHE91:
.L1398:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC24
	mov	x20, x0
	add	x1, x1, :lo12:.LC24
.LEHB92:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE92:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB93:
	bl	__cxa_throw
.LEHE93:
.L1394:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC24
	mov	x20, x0
	add	x1, x1, :lo12:.LC24
.LEHB94:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE94:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB95:
	bl	__cxa_throw
.LEHE95:
.L1325:
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	bl	__cxa_free_exception
	mov	x0, x19
.LEHB96:
	bl	_Unwind_Resume
.LEHE96:
.L1318:
	b	.L1385
.L1323:
	b	.L1384
.L1322:
	b	.L1384
	.cfi_endproc
.LFE12958:
	.section	.gcc_except_table
.LLSDA12958:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12958-.LLSDACSB12958
.LLSDACSB12958:
	.uleb128 .LEHB73-.LFB12958
	.uleb128 .LEHE73-.LEHB73
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB74-.LFB12958
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L1315-.LFB12958
	.uleb128 0
	.uleb128 .LEHB75-.LFB12958
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L1316-.LFB12958
	.uleb128 0
	.uleb128 .LEHB76-.LFB12958
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L1317-.LFB12958
	.uleb128 0
	.uleb128 .LEHB77-.LFB12958
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L1321-.LFB12958
	.uleb128 0
	.uleb128 .LEHB78-.LFB12958
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L1315-.LFB12958
	.uleb128 0
	.uleb128 .LEHB79-.LFB12958
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L1321-.LFB12958
	.uleb128 0
	.uleb128 .LEHB80-.LFB12958
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L1315-.LFB12958
	.uleb128 0
	.uleb128 .LEHB81-.LFB12958
	.uleb128 .LEHE81-.LEHB81
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB82-.LFB12958
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L1320-.LFB12958
	.uleb128 0
	.uleb128 .LEHB83-.LFB12958
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L1316-.LFB12958
	.uleb128 0
	.uleb128 .LEHB84-.LFB12958
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L1319-.LFB12958
	.uleb128 0
	.uleb128 .LEHB85-.LFB12958
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L1316-.LFB12958
	.uleb128 0
	.uleb128 .LEHB86-.LFB12958
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L1324-.LFB12958
	.uleb128 0
	.uleb128 .LEHB87-.LFB12958
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L1321-.LFB12958
	.uleb128 0
	.uleb128 .LEHB88-.LFB12958
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L1325-.LFB12958
	.uleb128 0
	.uleb128 .LEHB89-.LFB12958
	.uleb128 .LEHE89-.LEHB89
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB90-.LFB12958
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L1323-.LFB12958
	.uleb128 0
	.uleb128 .LEHB91-.LFB12958
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L1321-.LFB12958
	.uleb128 0
	.uleb128 .LEHB92-.LFB12958
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L1318-.LFB12958
	.uleb128 0
	.uleb128 .LEHB93-.LFB12958
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L1316-.LFB12958
	.uleb128 0
	.uleb128 .LEHB94-.LFB12958
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L1322-.LFB12958
	.uleb128 0
	.uleb128 .LEHB95-.LFB12958
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L1321-.LFB12958
	.uleb128 0
	.uleb128 .LEHB96-.LFB12958
	.uleb128 .LEHE96-.LEHB96
	.uleb128 0
	.uleb128 0
.LLSDACSE12958:
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
.LFB11701:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11701
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
.LEHB97:
	bl	_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv
.LEHE97:
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
	tbnz	x0, 0, .L1407
	ldr	x1, [x19, 232]
	mov	x0, x26
	ldr	x4, [x19, 304]
	add	x1, x2, x1
	ldr	x2, [x19, 312]
	add	x1, x3, x1
.LEHB98:
	blr	x4
	ldp	x1, x0, [x21, 8]
	str	s0, [sp, 120]
	str	s0, [sp, 156]
	fmov	s8, s0
	cmp	x1, x0
	beq	.L1408
	ldr	w7, [sp, 140]
	fmov	s2, s0
	str	s0, [x1]
	add	x0, x1, 8
	str	w7, [x1, 4]
	str	x0, [x21, 8]
.L1409:
	ldr	x3, [x21]
	sub	x2, x0, x3
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L1410
	.p2align 3,,7
.L1413:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s0, [x3, x2]
	fcmpe	s0, s2
	bmi	.L1483
.L1411:
	ldp	x1, x0, [sp, 184]
	fneg	s1, s8
	str	w7, [x4, 4]
	str	s2, [x4]
	str	s1, [sp, 160]
	cmp	x1, x0
	beq	.L1414
.L1535:
	ldr	w9, [sp, 140]
	add	x5, x1, 8
	str	s1, [x1]
	mov	w8, w9
	str	w9, [x1, 4]
	str	x5, [sp, 184]
.L1415:
	ldr	x0, [sp, 176]
	sub	x3, x5, x0
	asr	x1, x3, 3
	sub	x2, x1, #2
	sub	x1, x1, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x1, 0
	ble	.L1416
	.p2align 3,,7
.L1419:
	lsl	x3, x2, 3
	lsl	x1, x1, 3
	add	x6, x0, x3
	add	x4, x0, x1
	ldr	s0, [x0, x3]
	fcmpe	s0, s1
	bmi	.L1484
.L1417:
	str	w9, [x4, 4]
	str	s1, [x4]
.L1420:
	strh	w23, [x22, w8, uxtw 1]
	cmp	x0, x5
	beq	.L1534
	sub	w1, w28, #1
	sxtw	x1, w1
	str	x1, [sp, 120]
	.p2align 3,,7
.L1458:
	ldr	s0, [x0]
	ldr	w20, [x0, 4]
	fneg	s0, s0
	fcmpe	s0, s8
	bgt	.L1486
	b	.L1426
	.p2align 2,,3
.L1483:
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s0, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L1413
	mov	x4, x5
	fneg	s1, s8
	ldp	x1, x0, [sp, 184]
	str	w7, [x4, 4]
	str	s2, [x4]
	str	s1, [sp, 160]
	cmp	x1, x0
	bne	.L1535
.L1414:
	add	x3, sp, 140
	add	x2, sp, 160
	add	x0, sp, 176
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE98:
	ldr	x5, [sp, 184]
	ldr	w8, [sp, 140]
	ldr	w9, [x5, -4]
	ldr	s1, [x5, -8]
	b	.L1415
	.p2align 2,,3
.L1484:
	sub	x3, x2, #1
	ldr	w7, [x6, 4]
	str	s0, [x0, x1]
	mov	x1, x2
	add	x3, x3, x3, lsr 63
	str	w7, [x4, 4]
	asr	x2, x3, 1
	cmp	x1, 0
	bgt	.L1419
	mov	x4, x6
	b	.L1417
	.p2align 2,,3
.L1486:
	ldp	x2, x0, [x21]
	ldr	x1, [x19, 72]
	sub	x0, x0, x2
	cmp	x1, x0, asr 3
	beq	.L1534
.L1426:
	add	x0, sp, 176
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldr	x0, [x19, 192]
	mov	w1, 48
	strb	wzr, [sp, 168]
	uxtw	x25, w20
	umaddl	x0, w20, w1, x0
	str	x0, [sp, 160]
	cbz	x0, .L1536
	adrp	x1, .LC5
	ldr	x27, [x1, #:lo12:.LC5]
	cbz	x27, .L1430
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1537
.L1430:
	mov	w0, 1
	strb	w0, [sp, 168]
	cbnz	w28, .L1431
	ldr	x1, [x19, 24]
	ldr	x0, [x19, 240]
	ldr	x24, [x19, 256]
	madd	x25, x25, x1, x0
	add	x24, x24, x25
	ldrh	w25, [x24]
	cbz	x25, .L1433
.L1541:
	mov	x20, 0
	b	.L1434
	.p2align 2,,3
.L1538:
	fcmpe	s0, s8
	bmi	.L1438
.L1437:
	cmp	x25, x20
	beq	.L1435
.L1434:
	add	x20, x20, 1
	ldr	w0, [x24, x20, lsl 2]
	str	w0, [sp, 148]
	uxtw	x1, w0
	ubfiz	x0, x0, 1, 32
	ldrh	w2, [x22, x0]
	cmp	w2, w23
	beq	.L1437
	ldr	x5, [x19, 24]
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	strh	w23, [x22, x0]
	madd	x1, x1, x5, x4
	mov	x0, x26
	ldr	x4, [x19, 256]
	add	x1, x4, x1
.LEHB99:
	blr	x3
	ldp	x0, x6, [x21]
	str	s0, [sp, 152]
	ldr	x1, [x19, 72]
	sub	x0, x6, x0
	cmp	x1, x0, asr 3
	bls	.L1538
.L1438:
	ldp	x1, x0, [sp, 184]
	fneg	s0, s0
	str	s0, [sp, 156]
	cmp	x1, x0
	beq	.L1441
	ldr	w7, [sp, 148]
	add	x0, x1, 8
	str	s0, [x1]
	mov	w8, w7
	str	w7, [x1, 4]
	str	x0, [sp, 184]
.L1442:
	ldr	x4, [sp, 176]
	sub	x3, x0, x4
	asr	x0, x3, 3
	sub	x2, x0, #2
	sub	x0, x0, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x0, 0
	ble	.L1443
	.p2align 3,,7
.L1446:
	lsl	x3, x2, 3
	lsl	x0, x0, 3
	add	x1, x4, x3
	add	x5, x4, x0
	ldr	s1, [x4, x3]
	fcmpe	s1, s0
	bmi	.L1487
.L1444:
	ldr	x3, [x19, 24]
	uxtw	x0, w7
	ldr	x2, [x19, 256]
	ldr	x1, [x19, 240]
	str	w8, [x5, 4]
	madd	x0, x0, x3, x2
	str	s0, [x5]
	add	x0, x0, x1
	ldrb	w0, [x0, 2]
	tbz	x0, 0, .L1447
	ldr	x2, [x21]
	sub	x9, x6, x2
	asr	x9, x9, 3
.L1448:
	ldr	x0, [x19, 72]
	cmp	x0, x9
	bcc	.L1539
.L1455:
	cmp	x2, x6
	beq	.L1437
	ldr	s8, [x2]
	cmp	x25, x20
	bne	.L1434
.L1435:
	ldrb	w0, [sp, 168]
	cbnz	w0, .L1433
.L1456:
	ldp	x0, x1, [sp, 176]
	cmp	x0, x1
	bne	.L1458
.L1428:
	ldr	x19, [x19, 112]
	strb	wzr, [sp, 168]
	add	x0, x19, 80
	str	x0, [sp, 160]
	cbz	x27, .L1459
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1540
.L1459:
	ldp	x0, x1, [x19, 16]
	mov	w2, 1
	strb	w2, [sp, 168]
	cmp	x0, x1
	beq	.L1460
	ldr	x1, [sp, 128]
	str	x1, [x0, -8]!
	str	x0, [x19, 16]
.L1461:
	ldr	x0, [sp, 160]
	cbz	x0, .L1464
	cbz	x27, .L1464
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L1464:
	ldr	x0, [sp, 176]
	cbz	x0, .L1406
	bl	_ZdlPv
.L1406:
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
.L1487:
	.cfi_restore_state
	sub	x3, x2, #1
	ldr	w9, [x1, 4]
	str	s1, [x4, x0]
	mov	x0, x2
	add	x3, x3, x3, lsr 63
	str	w9, [x5, 4]
	asr	x2, x3, 1
	cmp	x0, 0
	bgt	.L1446
	mov	x5, x1
	b	.L1444
	.p2align 2,,3
.L1539:
	mov	x0, x21
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x2, x6, [x21]
	b	.L1455
	.p2align 2,,3
.L1447:
	ldr	x0, [x21, 16]
	cmp	x0, x6
	beq	.L1449
	ldr	s1, [sp, 152]
	add	x6, x6, 8
	str	w7, [x6, -4]
	str	s1, [x6, -8]
	str	x6, [x21, 8]
.L1450:
	ldr	x2, [x21]
	sub	x3, x6, x2
	asr	x9, x3, 3
	sub	x0, x9, #2
	sub	x1, x9, #1
	add	x0, x0, x0, lsr 63
	asr	x0, x0, 1
	cmp	x1, 0
	ble	.L1451
	.p2align 3,,7
.L1454:
	lsl	x3, x0, 3
	lsl	x1, x1, 3
	add	x5, x2, x3
	add	x4, x2, x1
	ldr	s0, [x2, x3]
	fcmpe	s0, s1
	bmi	.L1488
	str	s1, [x4]
	str	w7, [x4, 4]
	b	.L1448
	.p2align 2,,3
.L1488:
	sub	x3, x0, #1
	ldr	w8, [x5, 4]
	str	s0, [x2, x1]
	mov	x1, x0
	add	x3, x3, x3, lsr 63
	str	w8, [x4, 4]
	asr	x0, x3, 1
	cmp	x1, 0
	bgt	.L1454
	mov	x4, x5
	str	s1, [x4]
	str	w7, [x4, 4]
	b	.L1448
	.p2align 2,,3
.L1441:
	add	x3, sp, 148
	add	x2, sp, 156
	add	x0, sp, 176
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x0, [sp, 184]
	ldr	w7, [sp, 148]
	ldr	x6, [x21, 8]
	ldr	w8, [x0, -4]
	ldr	s0, [x0, -8]
	b	.L1442
	.p2align 2,,3
.L1431:
	ldr	x0, [x19, 264]
	ldr	x24, [x19, 32]
	ldr	x0, [x0, x25, lsl 3]
	ldr	x1, [sp, 120]
	madd	x24, x1, x24, x0
	ldrh	w25, [x24]
	cbnz	x25, .L1541
.L1433:
	ldr	x0, [sp, 160]
	cbz	x0, .L1456
	cbz	x27, .L1456
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L1456
.L1449:
	mov	x1, x6
	add	x3, sp, 148
	add	x2, sp, 152
	mov	x0, x21
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE99:
	ldr	x6, [x21, 8]
	ldr	w7, [x6, -4]
	ldr	s1, [x6, -8]
	b	.L1450
.L1443:
	sub	x0, x3, #8
	add	x5, x4, x0
	b	.L1444
.L1451:
	sub	x3, x3, #8
	add	x4, x2, x3
	str	s1, [x4]
	str	w7, [x4, 4]
	b	.L1448
.L1534:
	adrp	x0, .LC5
	ldr	x27, [x0, #:lo12:.LC5]
	b	.L1428
.L1407:
	mvni	v0.2s, 0x80, lsl 16
	add	x3, sp, 140
	add	x2, sp, 160
	add	x0, sp, 176
	mov	x1, 0
	str	s0, [sp, 160]
.LEHB100:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE100:
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
	ble	.L1421
.L1424:
	lsl	x3, x2, 3
	lsl	x1, x1, 3
	add	x6, x0, x3
	add	x4, x0, x1
	ldr	s0, [x0, x3]
	fcmpe	s1, s0
	bgt	.L1485
.L1422:
	ldr	w8, [sp, 140]
	mov	w1, 2139095039
	fmov	s8, w1
	str	s1, [x4]
	str	w9, [x4, 4]
	b	.L1420
	.p2align 2,,3
.L1485:
	sub	x3, x2, #1
	ldr	w7, [x6, 4]
	str	s0, [x0, x1]
	mov	x1, x2
	add	x3, x3, x3, lsr 63
	str	w7, [x4, 4]
	asr	x2, x3, 1
	cmp	x1, 0
	bgt	.L1424
	mov	x4, x6
	ldr	w8, [sp, 140]
	mov	w1, 2139095039
	fmov	s8, w1
	str	s1, [x4]
	str	w9, [x4, 4]
	b	.L1420
.L1460:
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
	beq	.L1542
	ldr	x0, [x19]
	cmp	x22, x0
	beq	.L1543
.L1463:
	mov	x0, 512
.LEHB101:
	bl	_Znwm
.LEHE101:
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
	cbz	w1, .L1464
	b	.L1461
	.p2align 2,,3
.L1408:
	add	x3, sp, 140
	add	x2, sp, 156
	mov	x0, x21
.LEHB102:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE102:
	ldr	x0, [x21, 8]
	ldr	s8, [sp, 156]
	ldr	w7, [x0, -4]
	ldr	s2, [x0, -8]
	b	.L1409
.L1543:
	mov	x0, x19
	mov	x1, 1
.LEHB103:
	bl	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb
.LEHE103:
	ldr	x22, [x19, 40]
	b	.L1463
.L1416:
	sub	x3, x3, #8
	add	x4, x0, x3
	b	.L1417
.L1410:
	sub	x0, x2, #8
	add	x4, x3, x0
	b	.L1411
.L1421:
	sub	x3, x3, #8
	add	x4, x0, x3
	b	.L1422
.L1537:
.LEHB104:
	bl	_ZSt20__throw_system_errori
.L1536:
	mov	w0, 1
	bl	_ZSt20__throw_system_errori
.LEHE104:
.L1542:
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
.LEHB105:
	bl	_ZSt20__throw_length_errorPKc
.LEHE105:
.L1540:
.LEHB106:
	bl	_ZSt20__throw_system_errori
.LEHE106:
.L1481:
	ldrb	w1, [sp, 168]
	mov	x19, x0
	cbz	w1, .L1469
	add	x0, sp, 160
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L1469
.L1482:
	ldrb	w1, [sp, 168]
	mov	x19, x0
	cbz	w1, .L1469
	add	x0, sp, 160
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L1469:
	ldr	x0, [sp, 176]
	cbz	x0, .L1472
	bl	_ZdlPv
.L1472:
	ldr	x0, [x21]
	cbz	x0, .L1473
	bl	_ZdlPv
.L1473:
	mov	x0, x19
.LEHB107:
	bl	_Unwind_Resume
.LEHE107:
.L1480:
	mov	x19, x0
	b	.L1469
	.cfi_endproc
.LFE11701:
	.section	.gcc_except_table
.LLSDA11701:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11701-.LLSDACSB11701
.LLSDACSB11701:
	.uleb128 .LEHB97-.LFB11701
	.uleb128 .LEHE97-.LEHB97
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB98-.LFB11701
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L1480-.LFB11701
	.uleb128 0
	.uleb128 .LEHB99-.LFB11701
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L1481-.LFB11701
	.uleb128 0
	.uleb128 .LEHB100-.LFB11701
	.uleb128 .LEHE100-.LEHB100
	.uleb128 .L1480-.LFB11701
	.uleb128 0
	.uleb128 .LEHB101-.LFB11701
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L1482-.LFB11701
	.uleb128 0
	.uleb128 .LEHB102-.LFB11701
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L1480-.LFB11701
	.uleb128 0
	.uleb128 .LEHB103-.LFB11701
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L1482-.LFB11701
	.uleb128 0
	.uleb128 .LEHB104-.LFB11701
	.uleb128 .LEHE104-.LEHB104
	.uleb128 .L1480-.LFB11701
	.uleb128 0
	.uleb128 .LEHB105-.LFB11701
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L1482-.LFB11701
	.uleb128 0
	.uleb128 .LEHB106-.LFB11701
	.uleb128 .LEHE106-.LEHB106
	.uleb128 .L1480-.LFB11701
	.uleb128 0
	.uleb128 .LEHB107-.LFB11701
	.uleb128 .LEHE107-.LEHB107
	.uleb128 0
	.uleb128 0
.LLSDACSE11701:
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
.LFB11755:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11755
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
	bge	.L1545
	mov	x0, x1
	uxtw	x21, w2
	ldr	x1, [x19, 24]
	add	x28, x19, 192
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	madd	x1, x21, x1, x4
	ldr	x4, [x19, 256]
	add	x1, x4, x1
.LEHB108:
	blr	x3
.LEHE108:
	fmov	s8, s0
.L1558:
	ldr	w0, [sp, 116]
	sub	w0, w0, #1
	sxtw	x0, w0
	mov	x27, x0
	.p2align 3,,7
.L1556:
	ldr	x0, [x28]
	mov	w1, 48
	strb	wzr, [sp, 184]
	umaddl	x0, w24, w1, x0
	str	x0, [sp, 176]
	cbz	x0, .L1641
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	ldr	x1, [x1]
	cbz	x1, .L1547
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1642
.L1547:
	mov	w0, 1
	strb	w0, [sp, 184]
	ldr	w0, [sp, 116]
	cbnz	w0, .L1548
	ldr	x0, [x19, 24]
	ldr	x1, [x19, 240]
	ldr	x20, [x19, 256]
	madd	x0, x21, x0, x1
	add	x20, x20, x0
	ldrh	w22, [x20]
	cbz	w22, .L1550
.L1645:
	sub	w22, w22, #1
	add	x0, x20, 8
	add	x20, x20, 4
	mov	w25, 0
	add	x22, x0, x22, uxtw 2
	.p2align 3,,7
.L1553:
	ldr	w21, [x20]
	mov	x0, x23
	ldr	x5, [x19, 24]
	uxtw	x1, w21
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	madd	x1, x1, x5, x4
	ldr	x4, [x19, 256]
	add	x1, x4, x1
.LEHB109:
	blr	x3
.LEHE109:
	fcmpe	s0, s8
	bmi	.L1597
.L1551:
	add	x20, x20, 4
	cmp	x22, x20
	bne	.L1553
	ldrb	w0, [sp, 184]
	cbnz	w0, .L1643
.L1554:
	cbz	w25, .L1588
.L1644:
	uxtw	x21, w24
	b	.L1556
	.p2align 2,,3
.L1643:
	ldr	x0, [sp, 176]
	cbz	x0, .L1554
.L1589:
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	ldr	x1, [x1]
	cbz	x1, .L1554
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	cbnz	w25, .L1644
.L1588:
	ldp	w0, w1, [sp, 116]
	sub	w0, w0, #1
	str	w0, [sp, 116]
	cmp	w1, w0
	beq	.L1557
	uxtw	x21, w24
	b	.L1558
	.p2align 2,,3
.L1597:
	fmov	s8, s0
	mov	w24, w21
	mov	w25, 1
	b	.L1551
	.p2align 2,,3
.L1548:
	ldr	x0, [x19, 264]
	ldr	x20, [x19, 32]
	ldr	x0, [x0, x21, lsl 3]
	madd	x20, x27, x20, x0
	ldrh	w22, [x20]
	cbnz	w22, .L1645
.L1550:
	ldr	x0, [sp, 176]
	cbz	x0, .L1588
	mov	w25, 0
	b	.L1589
.L1545:
	bgt	.L1559
.L1557:
	ldr	w0, [sp, 120]
	tbnz	w0, #31, .L1544
	.p2align 3,,7
.L1560:
	ldr	w3, [sp, 120]
	mov	x2, x23
	mov	x0, x19
	add	x8, sp, 144
	mov	w1, w24
.LEHB110:
	bl	_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi
.LEHE110:
	stp	xzr, xzr, [sp, 176]
	ldp	x2, x0, [sp, 144]
	str	xzr, [sp, 192]
	cmp	x2, x0
	beq	.L1561
	.p2align 3,,7
.L1569:
	ldr	w0, [x2, 4]
	cmp	w0, w26
	beq	.L1562
	ldp	x1, x0, [sp, 184]
	cmp	x1, x0
	beq	.L1563
	ldr	x0, [x2]
	str	x0, [x1], 8
	str	x1, [sp, 184]
.L1564:
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
	ble	.L1565
	.p2align 3,,7
.L1568:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s0, [x3, x2]
	fcmpe	s1, s0
	bgt	.L1598
.L1566:
	str	w7, [x4, 4]
	str	s1, [x4]
.L1562:
	add	x0, sp, 144
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x2, x0, [sp, 144]
	cmp	x0, x2
	bne	.L1569
	ldp	x1, x0, [sp, 176]
	cmp	x0, x1
	beq	.L1570
	ldr	w2, [sp, 124]
	ldr	x0, [x19, 24]
	ldr	x3, [x19, 256]
	mul	x2, x2, x0
	ldr	x1, [x19, 240]
	add	x0, x3, x2
	add	x0, x0, x1
	ldrb	w0, [x0, 2]
	tbz	x0, 0, .L1572
	ldr	x1, [x19, 232]
	mov	x0, x23
	ldr	x4, [x19, 304]
	add	x1, x2, x1
	ldr	x2, [x19, 312]
	add	x1, x3, x1
.LEHB111:
	blr	x4
	ldp	x1, x0, [sp, 184]
	str	s0, [sp, 140]
	cmp	x1, x0
	beq	.L1573
	ldr	w8, [sp, 124]
	add	x0, x1, 8
	str	s0, [x1]
	str	w8, [x1, 4]
	str	x0, [sp, 184]
.L1574:
	ldr	x3, [sp, 176]
	sub	x2, x0, x3
	asr	x7, x2, 3
	sub	x0, x7, #2
	sub	x1, x7, #1
	add	x0, x0, x0, lsr 63
	asr	x0, x0, 1
	cmp	x1, 0
	ble	.L1575
	.p2align 3,,7
.L1578:
	lsl	x2, x0, 3
	lsl	x1, x1, 3
	add	x5, x3, x2
	add	x4, x3, x1
	ldr	s1, [x3, x2]
	fcmpe	s1, s0
	bmi	.L1599
.L1576:
	ldr	x0, [x19, 72]
	str	s0, [x4]
	str	w8, [x4, 4]
	cmp	x0, x7
	bcc	.L1646
.L1572:
	ldr	w3, [sp, 120]
	add	x2, sp, 176
	mov	w1, w26
	mov	x0, x19
	mov	w4, 1
	bl	_ZN7hnswlib15HierarchicalNSWIfE25mutuallyConnectNewElementEPKvjRSt14priority_queueISt4pairIfjESt6vectorIS6_SaIS6_EENS1_14CompareByFirstEEib.isra.0
	ldr	x1, [sp, 176]
	mov	w24, w0
.L1570:
	cbz	x1, .L1639
	mov	x0, x1
	bl	_ZdlPv
.L1639:
	ldr	x2, [sp, 144]
.L1561:
	cbz	x2, .L1580
	mov	x0, x2
	bl	_ZdlPv
.L1580:
	ldr	w0, [sp, 120]
	sub	w0, w0, #1
	str	w0, [sp, 120]
	cmn	w0, #1
	bne	.L1560
.L1544:
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
.L1598:
	.cfi_restore_state
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s0, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L1568
	mov	x4, x5
	b	.L1566
	.p2align 2,,3
.L1599:
	sub	x2, x0, #1
	ldr	w6, [x5, 4]
	str	s1, [x3, x1]
	mov	x1, x0
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x0, x2, 1
	cmp	x1, 0
	bgt	.L1578
	mov	x4, x5
	ldr	x0, [x19, 72]
	str	s0, [x4]
	str	w8, [x4, 4]
	cmp	x0, x7
	bcs	.L1572
.L1646:
	add	x0, sp, 176
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	b	.L1572
	.p2align 2,,3
.L1563:
	add	x0, sp, 176
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x1, [sp, 184]
	b	.L1564
.L1565:
	sub	x2, x2, #8
	add	x4, x3, x2
	b	.L1566
.L1573:
	add	x3, sp, 124
	add	x2, sp, 140
	add	x0, sp, 176
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE111:
	ldr	x0, [sp, 184]
	ldr	w8, [x0, -4]
	ldr	s0, [x0, -8]
	b	.L1574
.L1575:
	sub	x0, x2, #8
	add	x4, x3, x0
	b	.L1576
.L1642:
.LEHB112:
	bl	_ZSt20__throw_system_errori
.L1641:
	mov	w0, 1
	bl	_ZSt20__throw_system_errori
.LEHE112:
.L1559:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC28
	mov	x19, x0
	add	x1, x1, :lo12:.LC28
.LEHB113:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE113:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x19
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB114:
	bl	__cxa_throw
.LEHE114:
.L1596:
	ldr	x1, [sp, 176]
	mov	x19, x0
	cbz	x1, .L1586
	mov	x0, x1
	bl	_ZdlPv
.L1586:
	ldr	x0, [sp, 144]
	cbz	x0, .L1640
	bl	_ZdlPv
	b	.L1640
.L1594:
	ldrb	w1, [sp, 184]
	mov	x19, x0
	cbz	w1, .L1640
	add	x0, sp, 176
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L1640
.L1595:
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	bl	__cxa_free_exception
.L1640:
	mov	x0, x19
.LEHB115:
	bl	_Unwind_Resume
.LEHE115:
	.cfi_endproc
.LFE11755:
	.section	.gcc_except_table
.LLSDA11755:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11755-.LLSDACSB11755
.LLSDACSB11755:
	.uleb128 .LEHB108-.LFB11755
	.uleb128 .LEHE108-.LEHB108
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB109-.LFB11755
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L1594-.LFB11755
	.uleb128 0
	.uleb128 .LEHB110-.LFB11755
	.uleb128 .LEHE110-.LEHB110
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB111-.LFB11755
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L1596-.LFB11755
	.uleb128 0
	.uleb128 .LEHB112-.LFB11755
	.uleb128 .LEHE112-.LEHB112
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB113-.LFB11755
	.uleb128 .LEHE113-.LEHB113
	.uleb128 .L1595-.LFB11755
	.uleb128 0
	.uleb128 .LEHB114-.LFB11755
	.uleb128 .LEHE114-.LEHB114
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB115-.LFB11755
	.uleb128 .LEHE115-.LEHB115
	.uleb128 0
	.uleb128 0
.LLSDACSE11755:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii, .-_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii
	.section	.text._ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm,"axG",@progbits,_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm
	.type	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm, %function
_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm:
.LFB12539:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12539
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
	beq	.L1669
	mov	x20, x2
	mov	x0, 1152921504606846975
	cmp	x1, x0
	bhi	.L1670
	lsl	x22, x1, 3
	mov	x0, x22
.LEHB116:
	bl	_Znwm
	mov	x20, x0
	mov	x2, x22
	mov	w1, 0
	bl	memset
	add	x8, x21, 48
.L1649:
	ldr	x4, [x21, 16]
	str	xzr, [x21, 16]
	cbz	x4, .L1651
	add	x7, x21, 16
	mov	x6, 0
	.p2align 3,,7
.L1652:
	ldr	w5, [x4, 8]
	mov	x3, x4
	ldr	x4, [x4]
	udiv	x2, x5, x19
	msub	x2, x2, x19, x5
	ldr	x1, [x20, x2, lsl 3]
	cbz	x1, .L1671
	ldr	x0, [x1]
	str	x0, [x3]
	ldr	x0, [x20, x2, lsl 3]
	str	x3, [x0]
	cbnz	x4, .L1652
.L1651:
	ldr	x0, [x21]
	cmp	x0, x8
	beq	.L1655
	bl	_ZdlPv
.L1655:
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
.L1671:
	.cfi_restore_state
	ldr	x0, [x21, 16]
	str	x0, [x3]
	str	x3, [x21, 16]
	str	x7, [x20, x2, lsl 3]
	ldr	x0, [x3]
	cbz	x0, .L1658
	str	x3, [x20, x6, lsl 3]
	mov	x6, x2
	cbnz	x4, .L1652
	b	.L1651
	.p2align 2,,3
.L1658:
	mov	x6, x2
	cbnz	x4, .L1652
	b	.L1651
	.p2align 2,,3
.L1669:
	mov	x20, x0
	str	xzr, [x20, 48]!
	mov	x8, x20
	b	.L1649
.L1670:
	bl	_ZSt17__throw_bad_allocv
.LEHE116:
.L1659:
	bl	__cxa_begin_catch
	ldr	x0, [x20]
	str	x0, [x21, 40]
.LEHB117:
	bl	__cxa_rethrow
.LEHE117:
.L1660:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB118:
	bl	_Unwind_Resume
.LEHE118:
	.cfi_endproc
.LFE12539:
	.section	.gcc_except_table
	.align	2
.LLSDA12539:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT12539-.LLSDATTD12539
.LLSDATTD12539:
	.byte	0x1
	.uleb128 .LLSDACSE12539-.LLSDACSB12539
.LLSDACSB12539:
	.uleb128 .LEHB116-.LFB12539
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L1659-.LFB12539
	.uleb128 0x1
	.uleb128 .LEHB117-.LFB12539
	.uleb128 .LEHE117-.LEHB117
	.uleb128 .L1660-.LFB12539
	.uleb128 0
	.uleb128 .LEHB118-.LFB12539
	.uleb128 .LEHE118-.LEHB118
	.uleb128 0
	.uleb128 0
.LLSDACSE12539:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT12539:
	.section	.text._ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm,"axG",@progbits,_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm,comdat
	.size	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm, .-_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm
	.section	.text._ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf,comdat
	.align	2
	.p2align 4,,11
	.type	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0, %function
_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0:
.LFB12980:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12980
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
	cbz	x8, .L1673
	ldr	x4, [x8]
	ldr	w5, [x4, 8]
	cmp	w1, w5
	beq	.L1674
.L1698:
	ldr	x6, [x4]
	cbz	x6, .L1673
	ldr	w5, [x6, 8]
	mov	x8, x4
	uxtw	x9, w5
	udiv	x4, x9, x7
	msub	x4, x4, x7, x9
	cmp	x0, x4
	bne	.L1673
	mov	x4, x6
	cmp	w1, w5
	bne	.L1698
.L1674:
	ldr	x0, [x8]
	mov	x21, 0
	cbz	x0, .L1673
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
.L1673:
	.cfi_restore_state
	mov	x0, 16
.LEHB119:
	bl	_Znwm
.LEHE119:
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
.LEHB120:
	bl	_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm
	tst	w0, 255
	bne	.L1699
	ldr	x0, [x19]
	add	x2, x0, x22
	ldr	x1, [x0, x22]
	cbz	x1, .L1678
.L1700:
	ldr	x1, [x1]
	str	x1, [x23]
	ldr	x0, [x0, x22]
	str	x23, [x0]
.L1679:
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
.L1699:
	.cfi_restore_state
	add	x2, sp, 88
	mov	x0, x19
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm
.LEHE120:
	ldr	x0, [x19, 8]
	udiv	x22, x20, x0
	msub	x22, x22, x0, x20
	ldr	x0, [x19]
	lsl	x22, x22, 3
	add	x2, x0, x22
	ldr	x1, [x0, x22]
	cbnz	x1, .L1700
.L1678:
	ldr	x1, [x19, 16]
	str	x1, [x23]
	str	x23, [x19, 16]
	cbz	x1, .L1680
	ldr	w4, [x1, 8]
	ldr	x3, [x19, 8]
	udiv	x1, x4, x3
	msub	x1, x1, x3, x4
	str	x23, [x0, x1, lsl 3]
.L1680:
	add	x0, x19, 16
	str	x0, [x2]
	b	.L1679
.L1683:
	mov	x19, x0
	mov	x0, x23
	bl	_ZdlPv
	mov	x0, x19
.LEHB121:
	bl	_Unwind_Resume
.LEHE121:
	.cfi_endproc
.LFE12980:
	.section	.gcc_except_table
.LLSDA12980:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12980-.LLSDACSB12980
.LLSDACSB12980:
	.uleb128 .LEHB119-.LFB12980
	.uleb128 .LEHE119-.LEHB119
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB120-.LFB12980
	.uleb128 .LEHE120-.LEHB120
	.uleb128 .L1683-.LFB12980
	.uleb128 0
	.uleb128 .LEHB121-.LFB12980
	.uleb128 .LEHE121-.LEHB121
	.uleb128 0
	.uleb128 0
.LLSDACSE12980:
	.section	.text._ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf,comdat
	.size	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0, .-_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf
	.type	_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf, %function
_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf:
.LFB11381:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11381
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
	beq	.L1824
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -264
	.cfi_offset 25, -272
.L1702:
	ldr	x0, [x19, 272]
	ldr	w25, [x0, w1, uxtw 2]
	tbnz	w25, #31, .L1704
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
.L1708:
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
.LEHB122:
	bl	_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji
.LEHE122:
	ldp	x0, x1, [sp, 168]
	cmp	x0, x1
	bne	.L1705
	cbz	x0, .L1707
.L1819:
	bl	_ZdlPv
.L1707:
	add	x0, sp, 280
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	add	x0, sp, 224
	add	x24, x24, 1
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	ldr	w1, [sp, 156]
	cmp	w25, w24
	bge	.L1708
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
.L1704:
	mov	w3, w1
	ldr	w5, [sp, 140]
	ldr	w2, [sp, 152]
	mov	w4, w25
	ldr	x1, [sp, 144]
	mov	x0, x19
.LEHB123:
	bl	_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii
.LEHE123:
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
.L1701:
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
.L1705:
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
.LEHB124:
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0
	ldp	x21, x23, [sp, 168]
	cmp	x23, x21
	beq	.L1720
	mov	x27, 5
	mov	w0, 1065353215
	movk	x27, 0x2, lsl 32
	fmov	s10, w0
	.p2align 3,,7
.L1719:
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
	bge	.L1764
	fadd	s0, s0, s1
.L1712:
	fcmpe	s8, s0
	bmi	.L1715
	mov	x1, x21
	add	x0, sp, 280
	mov	x2, 1
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0
	ldr	w1, [x21]
	add	x8, sp, 192
	mov	w2, w28
	mov	x0, x19
	bl	_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji
.LEHE124:
	ldp	x0, x22, [sp, 192]
	cmp	x22, x0
	beq	.L1716
	mov	x20, x0
	.p2align 3,,7
.L1717:
	mov	x1, x20
	add	x0, sp, 224
	mov	x2, 1
.LEHB125:
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0
.LEHE125:
	add	x20, x20, 4
	cmp	x22, x20
	bne	.L1717
	ldr	x0, [sp, 192]
.L1716:
	cbz	x0, .L1715
	bl	_ZdlPv
	.p2align 3,,7
.L1715:
	add	x21, x21, 4
	cmp	x23, x21
	bne	.L1719
.L1720:
	ldr	x21, [sp, 296]
	cbz	x21, .L1711
	sub	x28, x24, #1
	.p2align 3,,7
.L1710:
	ldp	x2, x4, [sp, 224]
	ldr	w0, [x21, 8]
	uxtw	x1, w0
	udiv	x5, x1, x4
	msub	x5, x5, x4, x1
	ldr	x6, [x2, x5, lsl 3]
	stp	xzr, xzr, [sp, 192]
	str	xzr, [sp, 208]
	cbz	x6, .L1820
	ldr	x1, [x6]
	ldr	w2, [x1, 8]
	cmp	w2, w0
	beq	.L1724
.L1825:
	ldr	x3, [x1]
	cbz	x3, .L1820
	ldr	w2, [x3, 8]
	mov	x6, x1
	uxtw	x7, w2
	udiv	x1, x7, x4
	msub	x1, x1, x4, x7
	cmp	x5, x1
	bne	.L1820
	mov	x1, x3
	cmp	w2, w0
	bne	.L1825
.L1724:
	ldr	x2, [x6]
	ldr	x1, [sp, 248]
	sub	x22, x1, #1
	cbz	x2, .L1723
.L1726:
	ldr	x1, [x19, 72]
	ldr	x20, [sp, 240]
	cmp	x1, x22
	csel	x22, x1, x22, ls
	cbnz	x20, .L1745
	b	.L1727
	.p2align 2,,3
.L1730:
	ldr	s1, [x3]
	fcmpe	s1, s0
	bgt	.L1772
.L1737:
	ldr	x20, [x20]
	cbz	x20, .L1727
.L1729:
	ldr	w0, [x21, 8]
.L1745:
	ldr	w1, [x20, 8]
	add	x23, x20, 8
	cmp	w1, w0
	beq	.L1737
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
.LEHB126:
	blr	x6
	ldp	x3, x1, [sp, 192]
	str	s0, [sp, 164]
	sub	x0, x1, x3
	cmp	x22, x0, asr 3
	bls	.L1730
	ldr	x0, [sp, 208]
	cmp	x1, x0
	beq	.L1731
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
	ble	.L1733
	.p2align 3,,7
.L1736:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s1, [x3, x2]
	fcmpe	s1, s0
	bmi	.L1771
	str	w7, [x4, 4]
	str	s0, [x4]
.L1828:
	ldr	x20, [x20]
	cbnz	x20, .L1729
.L1727:
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
	cbz	x23, .L1826
	adrp	x1, .LC5
	ldr	x27, [x1, #:lo12:.LC5]
	cbz	x27, .L1748
	mov	x0, x23
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1749
	ldr	w0, [x21, 8]
.L1748:
	cbnz	x24, .L1750
	ldr	x2, [x19, 24]
	ldr	x1, [x19, 240]
	ldr	x22, [x19, 256]
	madd	x0, x0, x2, x1
	add	x22, x22, x0
.L1751:
	ldp	x0, x20, [sp, 192]
	sub	x20, x20, x0
	asr	x20, x20, 3
	strh	w20, [x22]
	cbz	x20, .L1752
	mov	x26, 0
	b	.L1753
	.p2align 2,,3
.L1827:
	ldr	x0, [sp, 192]
.L1753:
	add	x26, x26, 1
	ldr	w2, [x0, 4]
	add	x0, sp, 192
	str	w2, [x22, x26, lsl 2]
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	cmp	x20, x26
	bne	.L1827
.L1752:
	cbz	x27, .L1754
	mov	x0, x23
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L1754:
	ldr	x0, [sp, 192]
	cbz	x0, .L1755
	bl	_ZdlPv
.L1755:
	ldr	x21, [x21]
	cbnz	x21, .L1710
.L1711:
	ldr	x0, [sp, 168]
	cbnz	x0, .L1819
	b	.L1707
	.p2align 2,,3
.L1771:
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s1, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L1736
	mov	x4, x5
	str	s0, [x4]
	str	w7, [x4, 4]
	b	.L1828
	.p2align 2,,3
.L1772:
	add	x0, sp, 192
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x1, x0, [sp, 200]
	cmp	x1, x0
	beq	.L1739
	ldr	s1, [sp, 164]
	add	x0, x1, 8
	ldr	w7, [x20, 8]
	str	w7, [x1, 4]
	str	s1, [x1]
	str	x0, [sp, 200]
.L1740:
	ldr	x3, [sp, 192]
	sub	x2, x0, x3
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L1741
	.p2align 3,,7
.L1744:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s0, [x3, x2]
	fcmpe	s0, s1
	bmi	.L1773
	str	s1, [x4]
	str	w7, [x4, 4]
	b	.L1737
	.p2align 2,,3
.L1773:
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s0, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L1744
	mov	x4, x5
	str	s1, [x4]
	str	w7, [x4, 4]
	b	.L1737
	.p2align 2,,3
.L1750:
	ldr	x1, [x19, 264]
	ldr	x22, [x19, 32]
	ldr	x0, [x1, x0, lsl 3]
	madd	x22, x28, x22, x0
	b	.L1751
.L1820:
	ldr	x1, [sp, 248]
.L1723:
	mov	x22, x1
	b	.L1726
	.p2align 2,,3
.L1731:
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
	bgt	.L1736
.L1733:
	sub	x0, x2, #8
	add	x4, x3, x0
	str	s0, [x4]
	str	w7, [x4, 4]
	b	.L1828
	.p2align 2,,3
.L1739:
	mov	x3, x23
	add	x2, sp, 164
	add	x0, sp, 192
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x0, [sp, 200]
	ldr	w7, [x0, -4]
	ldr	s1, [x0, -8]
	b	.L1740
.L1764:
	fmov	s0, s10
	b	.L1712
.L1741:
	sub	x0, x2, #8
	add	x4, x3, x0
	str	s1, [x4]
	str	w7, [x4, 4]
	b	.L1737
.L1824:
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
	beq	.L1701
	ldr	w1, [sp, 156]
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -264
	.cfi_offset 25, -272
	b	.L1702
.L1826:
	.cfi_offset 21, -304
	.cfi_offset 22, -296
	.cfi_offset 23, -288
	.cfi_offset 24, -280
	.cfi_offset 27, -256
	.cfi_offset 28, -248
	.cfi_offset 74, -224
	mov	w0, 1
	bl	_ZSt20__throw_system_errori
.L1749:
	bl	_ZSt20__throw_system_errori
.LEHE126:
.L1770:
.L1823:
	ldr	x1, [sp, 192]
	mov	x19, x0
	cbz	x1, .L1758
	mov	x0, x1
	bl	_ZdlPv
.L1758:
	ldr	x0, [sp, 168]
	cbz	x0, .L1762
	bl	_ZdlPv
.L1762:
	add	x0, sp, 280
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	add	x0, sp, 224
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	mov	x0, x19
.LEHB127:
	bl	_Unwind_Resume
.LEHE127:
.L1767:
	mov	x19, x0
	b	.L1762
.L1769:
	b	.L1823
.L1768:
	mov	x19, x0
	b	.L1758
	.cfi_endproc
.LFE11381:
	.section	.gcc_except_table
.LLSDA11381:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11381-.LLSDACSB11381
.LLSDACSB11381:
	.uleb128 .LEHB122-.LFB11381
	.uleb128 .LEHE122-.LEHB122
	.uleb128 .L1767-.LFB11381
	.uleb128 0
	.uleb128 .LEHB123-.LFB11381
	.uleb128 .LEHE123-.LEHB123
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB124-.LFB11381
	.uleb128 .LEHE124-.LEHB124
	.uleb128 .L1768-.LFB11381
	.uleb128 0
	.uleb128 .LEHB125-.LFB11381
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L1769-.LFB11381
	.uleb128 0
	.uleb128 .LEHB126-.LFB11381
	.uleb128 .LEHE126-.LEHB126
	.uleb128 .L1770-.LFB11381
	.uleb128 0
	.uleb128 .LEHB127-.LFB11381
	.uleb128 .LEHE127-.LEHB127
	.uleb128 0
	.uleb128 0
.LLSDACSE11381:
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
.LFB11365:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11365
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
	cbz	x26, .L1830
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2070
.L1830:
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
	cbz	x7, .L1831
	ldr	x2, [x7]
	ldr	x1, [x2, 8]
	cmp	x6, x1
	beq	.L1832
.L2071:
	ldr	x3, [x2]
	cbz	x3, .L1831
	ldr	x1, [x3, 8]
	mov	x7, x2
	udiv	x2, x1, x4
	msub	x2, x2, x4, x1
	cmp	x5, x2
	bne	.L1831
	mov	x2, x3
	cmp	x6, x1
	bne	.L2071
.L1832:
	ldr	x1, [x7]
	cbz	x1, .L1831
	ldrb	w0, [x19, 456]
	ldr	w27, [x1, 16]
	uxtw	x20, w27
	cbz	w0, .L2072
	ldr	x0, [x19, 24]
	ldr	x2, [x19, 256]
	ldr	x1, [x19, 240]
	madd	x0, x20, x0, x2
	add	x0, x0, x1
	ldrb	w0, [x0, 2]
	tbnz	x0, 0, .L2073
	ldr	x0, [sp, 208]
	cbz	x0, .L1847
	cbz	x26, .L1840
.L2087:
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L1840:
	strb	wzr, [sp, 216]
.L1839:
	ldr	x0, [x19, 24]
	ldr	x2, [x19, 256]
	ldr	x1, [x19, 240]
	madd	x0, x20, x0, x2
	add	x0, x0, x1
	ldrb	w0, [x0, 2]
	tbz	x0, 0, .L1847
	str	w27, [sp, 192]
	add	x0, x19, 16
	ldar	x0, [x0]
	cmp	x0, x20
	bls	.L2074
	ldr	w1, [sp, 192]
	ldr	x3, [x19, 24]
	ldr	x2, [x19, 240]
	ldr	x0, [x19, 256]
	madd	x1, x1, x3, x2
	add	x0, x0, x1
	ldrb	w1, [x0, 2]
	tbz	x1, 0, .L1843
	and	w1, w1, -2
	strb	w1, [x0, 2]
	add	x0, x19, 40
.L2094:
	ldaxr	x1, [x0]
	sub	x1, x1, #1
	stlxr	w2, x1, [x0]
	cbnz	w2, .L2094
	ldrb	w0, [x19, 456]
	cbnz	w0, .L2075
.L1847:
	fmov	s0, 1.0e+0
	mov	x1, x23
	mov	x0, x19
	mov	w2, w27
.LEHB128:
	bl	_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf
	ldrb	w0, [sp, 216]
	cbnz	w0, .L2076
.L1829:
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
.L1831:
	.cfi_restore_state
	add	x1, x19, 16
	ldar	x2, [x1]
	ldr	x3, [x19, 8]
	cmp	x3, x2
	bls	.L2077
	ldar	x20, [x1]
	str	x20, [sp, 144]
	mov	w27, w20
.L2093:
	ldaxr	x2, [x1]
	add	x2, x2, 1
	stlxr	w3, x2, [x1]
	cbnz	w3, .L2093
	add	x1, sp, 152
	bl	_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_
.LEHE128:
	ldrb	w1, [sp, 216]
	str	w20, [x0]
	cbnz	w1, .L2078
.L1852:
	ldr	x2, [sp, 144]
	strb	wzr, [sp, 184]
	ldr	x1, [x19, 192]
	and	x20, x2, 4294967295
	ubfiz	x0, x2, 1, 32
	add	x0, x0, x2, uxtw
	add	x0, x1, x0, lsl 4
	str	x0, [sp, 176]
	cbz	x0, .L2079
	cbz	x26, .L1854
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2080
.L1854:
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
	bge	.L1918
	fadd	d0, d0, d4
.L1855:
	bl	log
	ldr	w0, [sp, 128]
	cmp	w0, 0
	bgt	.L1856
	fnmul	d0, d0, d8
	fcvtzs	w0, d0
	str	w0, [sp, 128]
.L1856:
	ldr	x1, [x19, 272]
	add	x0, x19, 144
	ldr	w2, [sp, 128]
	str	w2, [x1, x20, lsl 2]
	str	x0, [sp, 192]
	strb	wzr, [sp, 200]
	cbz	x26, .L1858
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2081
.L1858:
	ldr	w0, [x19, 104]
	mov	w1, w0
	mov	w0, 1
	str	w1, [sp, 136]
	strb	w0, [sp, 200]
	mov	w0, w1
	ldr	w1, [sp, 128]
	cmp	w0, w1
	blt	.L1859
	ldr	x0, [sp, 192]
	cbz	x0, .L1859
	cbz	x26, .L1860
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L1860:
	strb	wzr, [sp, 200]
.L1859:
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
	cbnz	w0, .L2082
.L1861:
	cmn	w24, #1
	beq	.L1863
	ldr	w0, [sp, 128]
	ldr	w20, [sp, 136]
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -200
	.cfi_offset 21, -208
	ldr	x4, [x19, 24]
	ldr	x3, [x19, 256]
	cmp	w20, w0
	ble	.L1864
	ldr	x6, [x19, 232]
	uxtw	x1, w24
	ldp	x5, x2, [x19, 304]
	mov	x0, x23
	madd	x1, x1, x4, x6
	add	x1, x3, x1
.LEHB129:
	blr	x5
.LEHE129:
	sxtw	x0, w20
	fmov	s8, s0
	sub	x0, x0, #1
	add	x28, x19, 192
	str	x0, [sp, 120]
	sub	w0, w20, #1
	str	w0, [sp, 132]
	.p2align 3,,7
.L1876:
	ldr	w0, [sp, 132]
	str	w0, [sp, 140]
	.p2align 3,,7
.L1874:
	ldr	x0, [x28]
	mov	w1, 48
	strb	wzr, [sp, 216]
	umaddl	x0, w24, w1, x0
	str	x0, [sp, 208]
	cbz	x0, .L2083
	cbz	x26, .L1866
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2084
.L1866:
	mov	w1, 1
	strb	w1, [sp, 216]
	ldr	x0, [x19, 32]
	ldr	x2, [sp, 120]
	ldr	x1, [x19, 264]
	mul	x0, x2, x0
	ldr	x1, [x1, w24, uxtw 3]
	add	x20, x1, x0
	ldrh	w22, [x1, x0]
	cbz	w22, .L1867
	sub	w22, w22, #1
	add	x0, x20, 8
	add	x20, x20, 4
	mov	w25, 0
	add	x22, x0, x22, uxtw 2
	.p2align 3,,7
.L1871:
	ldr	w21, [x20]
	ldr	x0, [x19, 8]
	uxtw	x1, w21
	cmp	x1, x0
	bhi	.L2085
	ldr	x5, [x19, 24]
	mov	x0, x23
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	madd	x1, x1, x5, x4
	ldr	x4, [x19, 256]
	add	x1, x4, x1
.LEHB130:
	blr	x3
.LEHE130:
	fcmpe	s0, s8
	bmi	.L1933
.L1869:
	add	x20, x20, 4
	cmp	x22, x20
	bne	.L1871
	ldrb	w0, [sp, 216]
	cbnz	w0, .L2086
.L1872:
	cbnz	w25, .L1874
.L1915:
	ldr	w0, [sp, 132]
	ldr	w1, [sp, 140]
	sub	w0, w0, #1
	str	w0, [sp, 132]
	ldr	x0, [sp, 120]
	sub	x0, x0, #1
	str	x0, [sp, 120]
	ldr	w0, [sp, 128]
	cmp	w0, w1
	blt	.L1876
	ldr	w0, [sp, 168]
	ldr	x3, [x19, 24]
	ldr	x2, [x19, 256]
	ldr	x1, [x19, 240]
	madd	x0, x0, x3, x2
	add	x0, x0, x1
	ldrb	w21, [x0, 2]
	ldr	w0, [sp, 128]
	and	w21, w21, 1
	tbnz	w0, #31, .L2066
	mov	w20, w0
	b	.L1881
.L2072:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 72
	ldr	x0, [sp, 208]
	cbz	x0, .L1839
	cbnz	x26, .L2087
	b	.L1840
.L2076:
	ldr	x0, [sp, 208]
	cbz	x0, .L1829
	cbz	x26, .L1829
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
.L2075:
	.cfi_restore_state
	add	x20, x19, 464
	cbz	x26, .L1845
	mov	x0, x20
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2088
.L1845:
	add	x2, sp, 192
	add	x0, x19, 512
	mov	w1, 0
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj
	cbz	x26, .L1847
	mov	x0, x20
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L1847
.L2078:
	ldr	x0, [sp, 208]
	cbz	x0, .L1852
	cbz	x26, .L1852
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L1852
	.p2align 2,,3
.L2086:
	.cfi_offset 21, -208
	.cfi_offset 22, -200
	.cfi_offset 72, -144
	ldr	x0, [sp, 208]
	cbz	x0, .L1872
.L1916:
	cbz	x26, .L1872
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	cbnz	w25, .L1874
	b	.L1915
	.p2align 2,,3
.L1933:
	fmov	s8, s0
	mov	w24, w21
	mov	w25, 1
	b	.L1869
	.p2align 2,,3
.L1867:
	ldr	x0, [sp, 208]
	cbz	x0, .L1915
	mov	w25, 0
	b	.L1916
.L1864:
	ldr	w0, [sp, 168]
	ldr	x1, [x19, 240]
	ldr	w2, [sp, 136]
	madd	x0, x0, x4, x3
	mov	w20, w2
	add	x0, x0, x1
	ldrb	w21, [x0, 2]
	and	w21, w21, 1
	tbnz	w2, #31, .L2067
	.p2align 3,,7
.L1881:
	mov	w1, w24
	add	x8, sp, 208
	mov	w3, w20
	mov	x2, x23
	mov	x0, x19
.LEHB131:
	bl	_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi
.LEHE131:
	cbz	w21, .L1883
	ldr	w1, [sp, 168]
	mov	x0, x23
	ldr	x5, [x19, 24]
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	madd	x1, x1, x5, x4
	ldr	x4, [x19, 256]
	add	x1, x4, x1
.LEHB132:
	blr	x3
	ldp	x1, x0, [sp, 216]
	str	s0, [sp, 172]
	cmp	x1, x0
	beq	.L1884
	ldr	w8, [sp, 168]
	add	x0, x1, 8
	str	s0, [x1]
	str	w8, [x1, 4]
	str	x0, [sp, 216]
.L1885:
	ldr	x3, [sp, 208]
	sub	x2, x0, x3
	asr	x7, x2, 3
	sub	x0, x7, #2
	sub	x1, x7, #1
	add	x0, x0, x0, lsr 63
	asr	x0, x0, 1
	cmp	x1, 0
	ble	.L1886
	.p2align 3,,7
.L1889:
	lsl	x2, x0, 3
	lsl	x1, x1, 3
	add	x5, x3, x2
	add	x4, x3, x1
	ldr	s1, [x3, x2]
	fcmpe	s1, s0
	bmi	.L1934
.L1887:
	ldr	x0, [x19, 72]
	str	s0, [x4]
	str	w8, [x4, 4]
	cmp	x0, x7
	bcc	.L2089
.L1883:
	mov	w3, w20
	add	x2, sp, 208
	mov	w1, w27
	mov	x0, x19
	mov	w4, 0
	bl	_ZN7hnswlib15HierarchicalNSWIfE25mutuallyConnectNewElementEPKvjRSt14priority_queueISt4pairIfjESt6vectorIS6_SaIS6_EENS1_14CompareByFirstEEib.isra.0
.LEHE132:
	ldr	x1, [sp, 208]
	mov	w24, w0
	cbz	x1, .L1891
	mov	x0, x1
	bl	_ZdlPv
.L1891:
	subs	w20, w20, #1
	bmi	.L2067
	ldr	w0, [sp, 136]
	cmp	w0, w20
	bge	.L1881
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC34
	mov	x20, x0
	add	x1, x1, :lo12:.LC34
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
	.p2align 2,,3
.L1934:
	sub	x2, x0, #1
	ldr	w6, [x5, 4]
	str	s1, [x3, x1]
	mov	x1, x0
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x0, x2, 1
	cmp	x1, 0
	bgt	.L1889
	mov	x4, x5
	ldr	x0, [x19, 72]
	str	s0, [x4]
	str	w8, [x4, 4]
	cmp	x0, x7
	bcs	.L1883
.L2089:
	add	x0, sp, 208
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	b	.L1883
.L2067:
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
.L1878:
	ldr	w0, [sp, 128]
	ldr	w1, [sp, 136]
	cmp	w1, w0
	bge	.L1895
	str	w0, [x19, 104]
	ldr	w0, [sp, 144]
	str	w0, [x19, 216]
.L1895:
	ldrb	w0, [sp, 200]
	cbnz	w0, .L2090
.L1896:
	ldrb	w0, [sp, 184]
	cbnz	w0, .L2091
.L2065:
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
.L2091:
	.cfi_restore_state
	ldr	x0, [sp, 176]
	cbz	x0, .L2065
	cbz	x26, .L2065
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	ldr	d8, [sp, 96]
	.cfi_restore 72
	b	.L1829
.L1884:
	.cfi_offset 21, -208
	.cfi_offset 22, -200
	.cfi_offset 72, -144
	add	x3, sp, 168
	add	x2, sp, 172
	add	x0, sp, 208
.LEHB135:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE135:
	ldr	x0, [sp, 216]
	ldr	w8, [x0, -4]
	ldr	s0, [x0, -8]
	b	.L1885
.L2090:
	.cfi_restore 21
	.cfi_restore 22
	ldr	x0, [sp, 192]
	cbz	x0, .L1896
	cbz	x26, .L1896
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L1896
.L1863:
	ldr	w0, [sp, 128]
	str	w0, [x19, 104]
	str	wzr, [x19, 216]
	b	.L1878
.L2082:
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
	cbz	x0, .L2092
	mov	x2, x21
	mov	w1, 0
	bl	memset
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	b	.L1861
.L2066:
	.cfi_offset 21, -208
	.cfi_offset 22, -200
	ldp	x21, x22, [sp, 32]
	.cfi_remember_state
	.cfi_restore 22
	.cfi_restore 21
	b	.L1895
.L1886:
	.cfi_restore_state
	sub	x0, x2, #8
	add	x4, x3, x0
	b	.L1887
.L1918:
	.cfi_restore 21
	.cfi_restore 22
	mov	x0, 4607182418800017407
	fmov	d0, x0
	b	.L1855
.L2081:
.LEHB136:
	bl	_ZSt20__throw_system_errori
.LEHE136:
.L2080:
	.cfi_restore 72
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -200
	.cfi_offset 21, -208
	str	d8, [sp, 96]
	.cfi_offset 72, -144
.LEHB137:
	bl	_ZSt20__throw_system_errori
.LEHE137:
.L2084:
.LEHB138:
	bl	_ZSt20__throw_system_errori
.L2083:
	mov	w0, 1
	bl	_ZSt20__throw_system_errori
.LEHE138:
.L2070:
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
.LEHB139:
	bl	_ZSt20__throw_system_errori
.L2074:
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
.L2079:
	.cfi_restore_state
	mov	w0, 1
	stp	x21, x22, [sp, 32]
	.cfi_remember_state
	.cfi_offset 22, -200
	.cfi_offset 21, -208
	str	d8, [sp, 96]
	.cfi_offset 72, -144
	bl	_ZSt20__throw_system_errori
.LEHE139:
.L2088:
	.cfi_restore_state
.LEHB140:
	bl	_ZSt20__throw_system_errori
.LEHE140:
.L1931:
	.cfi_offset 21, -208
	.cfi_offset 22, -200
	.cfi_offset 72, -144
	ldr	x1, [sp, 208]
	mov	x19, x0
	cbz	x1, .L1901
	mov	x0, x1
	bl	_ZdlPv
	b	.L1901
.L1925:
	.cfi_restore 21
	.cfi_restore 22
	mov	x19, x0
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -200
	.cfi_offset 21, -208
.L1909:
	ldrb	w0, [sp, 184]
	cbz	w0, .L1910
	add	x0, sp, 176
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L1910:
	mov	x0, x19
.LEHB141:
	bl	_Unwind_Resume
.LEHE141:
.L1930:
.L2069:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
.L1901:
	ldrb	w0, [sp, 200]
	cbz	w0, .L1909
	add	x0, sp, 192
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L1909
.L1929:
	mov	x19, x0
.L1903:
	ldrb	w0, [sp, 216]
	cbz	w0, .L1901
	add	x0, sp, 208
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L1901
.L2085:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC33
	mov	x20, x0
	add	x1, x1, :lo12:.LC33
.LEHB142:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE142:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB143:
	bl	__cxa_throw
.LEHE143:
.L1928:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
	b	.L1903
.L1926:
	mov	x19, x0
	b	.L1901
.L2092:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC32
	mov	x20, x0
	add	x1, x1, :lo12:.LC32
.LEHB144:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE144:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB145:
	bl	__cxa_throw
.LEHE145:
.L2077:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 72
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC31
	mov	x20, x0
	add	x1, x1, :lo12:.LC31
.LEHB146:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE146:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB147:
	bl	__cxa_throw
.LEHE147:
.L1922:
	mov	x19, x0
	b	.L1849
.L1843:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC30
	mov	x20, x0
	add	x1, x1, :lo12:.LC30
.LEHB148:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE148:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB149:
	bl	__cxa_throw
.LEHE149:
.L2073:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC29
	mov	x20, x0
	add	x1, x1, :lo12:.LC29
.LEHB150:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE150:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB151:
	bl	__cxa_throw
.LEHE151:
.L1927:
	.cfi_offset 21, -208
	.cfi_offset 22, -200
	.cfi_offset 72, -144
	b	.L2069
.L1924:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 72
.L2068:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
.L1849:
	ldrb	w0, [sp, 216]
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -200
	.cfi_offset 21, -208
	str	d8, [sp, 96]
	.cfi_offset 72, -144
	cbz	w0, .L1910
	add	x0, sp, 208
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L1910
.L1932:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 72
	b	.L2068
.L1923:
	b	.L2068
	.cfi_endproc
.LFE11365:
	.section	.gcc_except_table
.LLSDA11365:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11365-.LLSDACSB11365
.LLSDACSB11365:
	.uleb128 .LEHB128-.LFB11365
	.uleb128 .LEHE128-.LEHB128
	.uleb128 .L1922-.LFB11365
	.uleb128 0
	.uleb128 .LEHB129-.LFB11365
	.uleb128 .LEHE129-.LEHB129
	.uleb128 .L1926-.LFB11365
	.uleb128 0
	.uleb128 .LEHB130-.LFB11365
	.uleb128 .LEHE130-.LEHB130
	.uleb128 .L1929-.LFB11365
	.uleb128 0
	.uleb128 .LEHB131-.LFB11365
	.uleb128 .LEHE131-.LEHB131
	.uleb128 .L1926-.LFB11365
	.uleb128 0
	.uleb128 .LEHB132-.LFB11365
	.uleb128 .LEHE132-.LEHB132
	.uleb128 .L1931-.LFB11365
	.uleb128 0
	.uleb128 .LEHB133-.LFB11365
	.uleb128 .LEHE133-.LEHB133
	.uleb128 .L1930-.LFB11365
	.uleb128 0
	.uleb128 .LEHB134-.LFB11365
	.uleb128 .LEHE134-.LEHB134
	.uleb128 .L1926-.LFB11365
	.uleb128 0
	.uleb128 .LEHB135-.LFB11365
	.uleb128 .LEHE135-.LEHB135
	.uleb128 .L1931-.LFB11365
	.uleb128 0
	.uleb128 .LEHB136-.LFB11365
	.uleb128 .LEHE136-.LEHB136
	.uleb128 .L1925-.LFB11365
	.uleb128 0
	.uleb128 .LEHB137-.LFB11365
	.uleb128 .LEHE137-.LEHB137
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB138-.LFB11365
	.uleb128 .LEHE138-.LEHB138
	.uleb128 .L1926-.LFB11365
	.uleb128 0
	.uleb128 .LEHB139-.LFB11365
	.uleb128 .LEHE139-.LEHB139
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB140-.LFB11365
	.uleb128 .LEHE140-.LEHB140
	.uleb128 .L1922-.LFB11365
	.uleb128 0
	.uleb128 .LEHB141-.LFB11365
	.uleb128 .LEHE141-.LEHB141
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB142-.LFB11365
	.uleb128 .LEHE142-.LEHB142
	.uleb128 .L1928-.LFB11365
	.uleb128 0
	.uleb128 .LEHB143-.LFB11365
	.uleb128 .LEHE143-.LEHB143
	.uleb128 .L1929-.LFB11365
	.uleb128 0
	.uleb128 .LEHB144-.LFB11365
	.uleb128 .LEHE144-.LEHB144
	.uleb128 .L1927-.LFB11365
	.uleb128 0
	.uleb128 .LEHB145-.LFB11365
	.uleb128 .LEHE145-.LEHB145
	.uleb128 .L1926-.LFB11365
	.uleb128 0
	.uleb128 .LEHB146-.LFB11365
	.uleb128 .LEHE146-.LEHB146
	.uleb128 .L1924-.LFB11365
	.uleb128 0
	.uleb128 .LEHB147-.LFB11365
	.uleb128 .LEHE147-.LEHB147
	.uleb128 .L1922-.LFB11365
	.uleb128 0
	.uleb128 .LEHB148-.LFB11365
	.uleb128 .LEHE148-.LEHB148
	.uleb128 .L1932-.LFB11365
	.uleb128 0
	.uleb128 .LEHB149-.LFB11365
	.uleb128 .LEHE149-.LEHB149
	.uleb128 .L1922-.LFB11365
	.uleb128 0
	.uleb128 .LEHB150-.LFB11365
	.uleb128 .LEHE150-.LEHB150
	.uleb128 .L1923-.LFB11365
	.uleb128 0
	.uleb128 .LEHB151-.LFB11365
	.uleb128 .LEHE151-.LEHB151
	.uleb128 .L1922-.LFB11365
	.uleb128 0
.LLSDACSE11365:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi, .-_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi
	.text
	.align	2
	.p2align 4,,11
	.type	_Z11build_indexPfmm._omp_fn.0, %function
_Z11build_indexPfmm._omp_fn.0:
.LFB12924:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12924
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
	blt	.L2096
.L2106:
	madd	w19, w23, w19, w1
	add	w23, w23, w19
	cmp	w19, w23
	bge	.L2095
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
	b	.L2105
	.p2align 2,,3
.L2102:
	add	w19, w19, 1
	add	x20, x20, x24
	add	x21, x21, 1
	cmp	w19, w23
	beq	.L2128
.L2105:
	ldr	x0, [x22]
	ldr	x4, [x0]
	cmp	x4, x25
	bne	.L2098
	ldr	x1, [x22, 120]
	and	w0, w19, 65535
	strb	wzr, [sp, 104]
	smaddl	x0, w0, w26, x1
	str	x0, [sp, 96]
	cbz	x0, .L2129
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	ldr	x1, [x1]
	cbz	x1, .L2100
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2130
.L2100:
	mov	x2, x21
	mov	x1, x20
	mov	x0, x22
	mov	w3, -1
	strb	w27, [sp, 104]
.LEHB152:
	bl	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi
.LEHE152:
	ldrb	w0, [sp, 104]
	cbz	w0, .L2102
	ldr	x0, [sp, 96]
	cbz	x0, .L2102
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	ldr	x1, [x1]
	cbz	x1, .L2102
	add	w19, w19, 1
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	add	x20, x20, x24
	add	x21, x21, 1
	cmp	w19, w23
	bne	.L2105
	.p2align 3,,7
.L2128:
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 80]
	.cfi_restore 28
	.cfi_restore 27
.L2095:
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
.L2098:
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
	b	.L2102
	.p2align 2,,3
.L2096:
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	add	w23, w23, 1
	mov	w1, 0
	b	.L2106
.L2129:
	.cfi_offset 25, -48
	.cfi_offset 26, -40
	.cfi_offset 27, -32
	.cfi_offset 28, -24
	mov	w0, 1
.LEHB153:
	bl	_ZSt20__throw_system_errori
.L2130:
	bl	_ZSt20__throw_system_errori
.LEHE153:
.L2107:
	ldrb	w1, [sp, 104]
	mov	x19, x0
	cbz	w1, .L2104
	add	x0, sp, 96
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L2104:
	mov	x0, x19
.LEHB154:
	bl	_Unwind_Resume
.LEHE154:
	.cfi_endproc
.LFE12924:
	.section	.gcc_except_table
.LLSDA12924:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12924-.LLSDACSB12924
.LLSDACSB12924:
	.uleb128 .LEHB152-.LFB12924
	.uleb128 .LEHE152-.LEHB152
	.uleb128 .L2107-.LFB12924
	.uleb128 0
	.uleb128 .LEHB153-.LFB12924
	.uleb128 .LEHE153-.LEHB153
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB154-.LFB12924
	.uleb128 .LEHE154-.LEHB154
	.uleb128 0
	.uleb128 0
.LLSDACSE12924:
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
.LFB10514:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10514
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
.LEHB155:
	bl	_Znwm
.LEHE155:
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
.LEHB156:
	bl	_Znwm
.LEHE156:
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
	bhi	.L2261
	add	x23, x19, 192
	str	xzr, [x19, 192]
	add	x20, x21, x21, lsl 1
	stp	xzr, xzr, [x23, 8]
	lsl	x20, x20, 4
	cbz	x21, .L2133
	mov	x0, x20
.LEHB157:
	bl	_Znwm
.LEHE157:
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
.LEHB158:
	bl	_Znwm
.LEHE158:
	str	x0, [x19, 272]
	add	x20, x0, x23
	str	x20, [x22, 16]
	mov	x2, x23
	mov	w1, 0
	bl	memset
.L2190:
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
	cbz	x0, .L2262
	add	x0, x19, 16
	stlr	xzr, [x0]
	mov	x0, 136
.LEHB159:
	bl	_Znwm
.LEHE159:
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
.LEHB160:
	bl	_Znwm
.LEHE160:
	ldr	x1, [x20, 8]
	mov	x26, x0
	str	x26, [x20]
	mov	x0, 512
	sub	x1, x1, #1
	lsr	x1, x1, 1
	add	x3, x26, x1, lsl 3
	stp	x3, x1, [sp, 96]
.LEHB161:
	bl	_Znwm
.LEHE161:
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
.LEHB162:
	bl	_Znwm
.LEHE162:
	mov	x26, x0
	ldr	w1, [x20, 128]
	mov	w2, -1
	strh	w2, [x0]
	str	w1, [x26, 16]
	ubfiz	x0, x1, 1, 32
.LEHB163:
	bl	_Znam
.LEHE163:
	ldp	x1, x2, [x20, 16]
	str	x0, [x26, 8]
	cmp	x2, x1
	beq	.L2263
	mov	x0, x1
	str	x26, [x0, -8]!
	str	x0, [x20, 16]
.L2141:
	ldr	x26, [x19, 112]
	str	x20, [x19, 112]
	cbz	x26, .L2144
	add	x22, x26, 48
	add	x20, x26, 16
	.p2align 3,,7
.L2155:
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
	cbz	x0, .L2152
	sub	x3, x3, #8
	ldr	x23, [x1]
	cmp	x1, x3
	beq	.L2153
	add	x1, x1, 8
	str	x1, [x26, 16]
	cbz	x23, .L2155
.L2264:
	ldr	x0, [x23, 8]
	cbz	x0, .L2156
	bl	_ZdaPv
.L2156:
	mov	x0, x23
	bl	_ZdlPv
	b	.L2155
	.p2align 2,,3
.L2153:
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
	cbz	x23, .L2155
	b	.L2264
	.p2align 2,,3
.L2152:
	ldr	x0, [x26]
	cbz	x0, .L2157
	add	x20, x5, 8
	cmp	x23, x20
	bcs	.L2158
	.p2align 3,,7
.L2159:
	ldr	x0, [x23], 8
	bl	_ZdlPv
	cmp	x20, x23
	bhi	.L2159
	ldr	x0, [x26]
.L2158:
	bl	_ZdlPv
.L2157:
	mov	x0, x26
	bl	_ZdlPv
.L2144:
	ldr	x0, [x19, 8]
	mov	w1, -1
	str	w1, [x19, 104]
	str	w1, [x19, 216]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [x19, 264]
	cbz	x0, .L2265
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
	cbz	x0, .L2266
	adrp	x1, .LC5
	ldr	x20, [x1, #:lo12:.LC5]
	cbz	x20, .L2182
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2267
.L2182:
	mov	w4, 1
	mov	x1, x27
	mov	x0, x19
	mov	w3, -1
	mov	x2, 0
	strb	w4, [sp, 184]
.LEHB164:
	bl	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi
.LEHE164:
	ldrb	w0, [sp, 184]
	cbnz	w0, .L2268
.L2183:
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
.LEHB165:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
.LEHE165:
	add	x1, sp, 144
	mov	x0, x19
.LEHB166:
	blr	x20
.LEHE166:
	ldr	x0, [sp, 144]
	add	x1, sp, 160
	cmp	x0, x1
	beq	.L2131
	bl	_ZdlPv
.L2131:
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
.L2133:
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
	b	.L2190
	.p2align 2,,3
.L2268:
	ldr	x0, [sp, 176]
	cbz	x0, .L2183
	cbz	x20, .L2183
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L2183
	.p2align 2,,3
.L2263:
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
	beq	.L2139
	ldr	x0, [x20]
	cmp	x6, x0
	beq	.L2140
.L2142:
	mov	x0, 512
.LEHB167:
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
	b	.L2141
.L2140:
	mov	x0, x20
	mov	w2, 1
	mov	x1, 1
	bl	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb
	ldr	x0, [x20, 40]
	str	x0, [sp, 96]
	b	.L2142
.L2139:
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	bl	_ZSt20__throw_length_errorPKc
.LEHE167:
.L2266:
	mov	w0, 1
.LEHB168:
	bl	_ZSt20__throw_system_errori
.LEHE168:
.L2261:
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
.LEHB169:
	bl	_ZSt20__throw_length_errorPKc
.LEHE169:
.L2267:
.LEHB170:
	bl	_ZSt20__throw_system_errori
.LEHE170:
.L2204:
	ldrb	w1, [sp, 184]
	mov	x19, x0
	cbz	w1, .L2189
	add	x0, sp, 176
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L2189:
	mov	x0, x19
.LEHB171:
	bl	_Unwind_Resume
.LEHE171:
.L2197:
	mov	x1, x0
.L2146:
	mov	x0, x20
	mov	x20, x1
	bl	_ZdlPv
.L2164:
	mov	x0, x24
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	mov	x0, x28
	bl	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED1Ev
	ldr	x0, [x19, 272]
	cbz	x0, .L2167
	bl	_ZdlPv
.L2167:
	ldr	x0, [x19, 192]
	cbz	x0, .L2169
	bl	_ZdlPv
.L2169:
	ldr	x0, [x19, 120]
	cbz	x0, .L2171
	bl	_ZdlPv
.L2171:
	ldr	x21, [x19, 112]
	cbz	x21, .L2172
	add	x24, x21, 48
	add	x22, x21, 16
.L2176:
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
	cbz	x0, .L2173
	sub	x4, x4, #8
	ldr	x23, [x1]
	cmp	x1, x4
	beq	.L2174
	add	x1, x1, 8
	str	x1, [x21, 16]
	cbz	x23, .L2176
.L2271:
	ldr	x0, [x23, 8]
	cbz	x0, .L2177
	bl	_ZdaPv
.L2177:
	mov	x0, x23
	bl	_ZdlPv
	b	.L2176
.L2195:
	mov	x20, x0
	b	.L2164
.L2262:
	mov	x0, x20
	bl	__cxa_allocate_exception
	adrp	x1, .LC35
	mov	x21, x0
	add	x1, x1, :lo12:.LC35
.LEHB172:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE172:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x21
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB173:
	bl	__cxa_throw
.LEHE173:
.L2198:
.L2260:
	mov	x20, x0
	mov	x0, x21
	bl	__cxa_free_exception
	b	.L2164
.L2269:
	ldr	x0, [x23], 8
	bl	_ZdlPv
.L2181:
	cmp	x22, x23
	bhi	.L2269
	ldr	x0, [x21]
	bl	_ZdlPv
.L2179:
	mov	x0, x21
	bl	_ZdlPv
.L2172:
	mov	x0, x19
	bl	_ZdlPv
	mov	x0, x20
.LEHB174:
	bl	_Unwind_Resume
.LEHE174:
.L2192:
	mov	x20, x0
	b	.L2171
.L2194:
	mov	x20, x0
	b	.L2167
.L2199:
	mov	x21, x0
.L2148:
	ldr	x0, [x20]
	cbz	x0, .L2149
	ldr	x22, [x20, 72]
	ldr	x23, [x20, 40]
	add	x22, x22, 8
.L2151:
	cmp	x22, x23
	bhi	.L2270
	ldr	x0, [x20]
	bl	_ZdlPv
.L2149:
	mov	x1, x21
	b	.L2146
.L2202:
	bl	__cxa_begin_catch
.LEHB175:
	bl	__cxa_rethrow
.LEHE175:
.L2191:
	ldr	x2, [sp, 144]
	add	x1, sp, 160
	mov	x19, x0
	cmp	x2, x1
	beq	.L2189
	mov	x0, x2
	bl	_ZdlPv
	b	.L2189
.L2203:
	mov	x21, x0
	bl	__cxa_end_catch
	mov	x0, x21
	bl	__cxa_begin_catch
	ldr	x0, [x20]
	bl	_ZdlPv
	stp	xzr, xzr, [x20]
.LEHB176:
	bl	__cxa_rethrow
.LEHE176:
.L2201:
	mov	x21, x0
	bl	__cxa_end_catch
	mov	x1, x21
	b	.L2146
.L2200:
	mov	x21, x0
	mov	x0, x26
	bl	_ZdlPv
	b	.L2148
.L2193:
	mov	x20, x0
	b	.L2169
.L2265:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC36
	mov	x21, x0
	add	x1, x1, :lo12:.LC36
.LEHB177:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE177:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x21
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB178:
	bl	__cxa_throw
.LEHE178:
.L2196:
	b	.L2260
.L2270:
	ldr	x0, [x23], 8
	bl	_ZdlPv
	b	.L2151
.L2173:
	ldr	x0, [x21]
	cbz	x0, .L2179
	add	x22, x3, 8
	b	.L2181
.L2174:
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
	cbnz	x23, .L2271
	b	.L2176
	.cfi_endproc
.LFE10514:
	.section	.gcc_except_table
	.align	2
.LLSDA10514:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10514-.LLSDATTD10514
.LLSDATTD10514:
	.byte	0x1
	.uleb128 .LLSDACSE10514-.LLSDACSB10514
.LLSDACSB10514:
	.uleb128 .LEHB155-.LFB10514
	.uleb128 .LEHE155-.LEHB155
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB156-.LFB10514
	.uleb128 .LEHE156-.LEHB156
	.uleb128 .L2192-.LFB10514
	.uleb128 0
	.uleb128 .LEHB157-.LFB10514
	.uleb128 .LEHE157-.LEHB157
	.uleb128 .L2193-.LFB10514
	.uleb128 0
	.uleb128 .LEHB158-.LFB10514
	.uleb128 .LEHE158-.LEHB158
	.uleb128 .L2194-.LFB10514
	.uleb128 0
	.uleb128 .LEHB159-.LFB10514
	.uleb128 .LEHE159-.LEHB159
	.uleb128 .L2195-.LFB10514
	.uleb128 0
	.uleb128 .LEHB160-.LFB10514
	.uleb128 .LEHE160-.LEHB160
	.uleb128 .L2197-.LFB10514
	.uleb128 0
	.uleb128 .LEHB161-.LFB10514
	.uleb128 .LEHE161-.LEHB161
	.uleb128 .L2202-.LFB10514
	.uleb128 0x1
	.uleb128 .LEHB162-.LFB10514
	.uleb128 .LEHE162-.LEHB162
	.uleb128 .L2199-.LFB10514
	.uleb128 0
	.uleb128 .LEHB163-.LFB10514
	.uleb128 .LEHE163-.LEHB163
	.uleb128 .L2200-.LFB10514
	.uleb128 0
	.uleb128 .LEHB164-.LFB10514
	.uleb128 .LEHE164-.LEHB164
	.uleb128 .L2204-.LFB10514
	.uleb128 0
	.uleb128 .LEHB165-.LFB10514
	.uleb128 .LEHE165-.LEHB165
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB166-.LFB10514
	.uleb128 .LEHE166-.LEHB166
	.uleb128 .L2191-.LFB10514
	.uleb128 0
	.uleb128 .LEHB167-.LFB10514
	.uleb128 .LEHE167-.LEHB167
	.uleb128 .L2199-.LFB10514
	.uleb128 0
	.uleb128 .LEHB168-.LFB10514
	.uleb128 .LEHE168-.LEHB168
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB169-.LFB10514
	.uleb128 .LEHE169-.LEHB169
	.uleb128 .L2193-.LFB10514
	.uleb128 0
	.uleb128 .LEHB170-.LFB10514
	.uleb128 .LEHE170-.LEHB170
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB171-.LFB10514
	.uleb128 .LEHE171-.LEHB171
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB172-.LFB10514
	.uleb128 .LEHE172-.LEHB172
	.uleb128 .L2198-.LFB10514
	.uleb128 0
	.uleb128 .LEHB173-.LFB10514
	.uleb128 .LEHE173-.LEHB173
	.uleb128 .L2195-.LFB10514
	.uleb128 0
	.uleb128 .LEHB174-.LFB10514
	.uleb128 .LEHE174-.LEHB174
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB175-.LFB10514
	.uleb128 .LEHE175-.LEHB175
	.uleb128 .L2203-.LFB10514
	.uleb128 0x1
	.uleb128 .LEHB176-.LFB10514
	.uleb128 .LEHE176-.LEHB176
	.uleb128 .L2201-.LFB10514
	.uleb128 0
	.uleb128 .LEHB177-.LFB10514
	.uleb128 .LEHE177-.LEHB177
	.uleb128 .L2196-.LFB10514
	.uleb128 0
	.uleb128 .LEHB178-.LFB10514
	.uleb128 .LEHE178-.LEHB178
	.uleb128 .L2195-.LFB10514
	.uleb128 0
.LLSDACSE10514:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT10514:
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
.LFB11013:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11013
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
	bne	.L2410
	mov	x21, x1
	ubfiz	x0, x2, 1, 16
	ldr	x1, [x19, 120]
	add	x0, x0, x2, uxth
	strb	wzr, [sp, 104]
	add	x0, x1, x0, lsl 4
	str	x0, [sp, 96]
	cbz	x0, .L2411
	adrp	x1, .LC5
	ldr	x20, [x1, #:lo12:.LC5]
	cbz	x20, .L2275
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2412
.L2275:
	mov	w0, 1
	strb	w0, [sp, 104]
	cbz	w22, .L2413
	add	x22, x19, 464
	str	x22, [sp, 112]
	strb	wzr, [sp, 120]
	cbz	x20, .L2279
	mov	x0, x22
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2414
.L2279:
	ldr	x24, [x19, 536]
	mov	w0, 1
	strb	w0, [sp, 120]
	add	x23, x19, 512
	cbnz	x24, .L2415
	ldr	x0, [sp, 112]
	cbz	x0, .L2402
	cbz	x20, .L2416
.L2312:
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	strb	wzr, [sp, 120]
	ldr	x2, [sp, 72]
	cbz	x24, .L2307
.L2282:
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
	cbz	x20, .L2284
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2417
.L2284:
	mov	w3, 1
	add	x2, sp, 88
	add	x24, x19, 368
	mov	w1, 0
	mov	x0, x24
	strb	w3, [sp, 136]
	bl	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_
	mov	x0, x24
	add	x1, sp, 72
.LEHB179:
	bl	_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_
	ldrb	w1, [sp, 136]
	ldr	w2, [sp, 80]
	str	w2, [x0]
	cbz	w1, .L2418
	ldr	x0, [sp, 128]
	cbz	x0, .L2286
	cbz	x20, .L2287
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L2287:
	strb	wzr, [sp, 136]
.L2286:
	ldr	w0, [sp, 80]
	str	w0, [sp, 84]
	add	x1, x19, 16
	ldar	x1, [x1]
	cmp	x1, x0, uxtw
	bls	.L2419
	ldr	w1, [sp, 84]
	ldr	x3, [x19, 24]
	ldr	x2, [x19, 240]
	ldr	x0, [x19, 256]
	madd	x1, x1, x3, x2
	add	x0, x0, x1
	ldrb	w1, [x0, 2]
	tbz	x1, 0, .L2289
	and	w1, w1, -2
	strb	w1, [x0, 2]
	add	x0, x19, 40
.L2426:
	ldaxr	x1, [x0]
	sub	x1, x1, #1
	stlxr	w2, x1, [x0]
	cbnz	w2, .L2426
	ldrb	w0, [x19, 456]
	cbnz	w0, .L2420
.L2290:
	ldr	w2, [sp, 80]
	fmov	s0, 1.0e+0
	mov	x1, x21
	mov	x0, x19
	bl	_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf
.LEHE179:
	ldrb	w0, [sp, 136]
	cbnz	w0, .L2421
.L2283:
	ldrb	w0, [sp, 120]
	cbnz	w0, .L2422
.L2297:
	ldrb	w0, [sp, 104]
	cbnz	w0, .L2423
.L2272:
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
.L2415:
	.cfi_restore_state
	ldr	x3, [x23, 16]
	add	x2, sp, 80
	mov	x0, x23
	mov	w1, 0
	ldr	w3, [x3, 8]
	str	w3, [sp, 80]
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj
	ldrb	w0, [sp, 120]
	cbz	w0, .L2424
	ldr	x0, [sp, 112]
	cbz	x0, .L2403
	cbnz	x20, .L2312
	strb	wzr, [sp, 120]
.L2403:
	ldr	x2, [sp, 72]
	b	.L2282
	.p2align 2,,3
.L2413:
	ldr	x2, [sp, 72]
	mov	x1, x21
	mov	x0, x19
	mov	w3, -1
.LEHB180:
	bl	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi
.LEHE180:
	ldrb	w0, [sp, 104]
	cbz	w0, .L2272
.L2423:
	ldr	x0, [sp, 96]
	cbz	x0, .L2272
	cbz	x20, .L2272
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
.L2416:
	.cfi_restore_state
	strb	wzr, [sp, 120]
.L2402:
	ldr	x2, [sp, 72]
.L2307:
	mov	x1, x21
	mov	x0, x19
	mov	w3, -1
.LEHB181:
	bl	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi
.LEHE181:
	ldrb	w0, [sp, 120]
	cbz	w0, .L2297
.L2422:
	ldr	x0, [sp, 112]
	cbz	x0, .L2297
	cbz	x20, .L2297
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L2297
	.p2align 2,,3
.L2420:
	cbz	x20, .L2291
	mov	x0, x22
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2425
.L2291:
	mov	x0, x23
	add	x2, sp, 84
	mov	w1, 0
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj
	cbz	x20, .L2290
	mov	x0, x22
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L2290
	.p2align 2,,3
.L2421:
	ldr	x0, [sp, 128]
	cbz	x0, .L2283
	cbz	x20, .L2283
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L2283
.L2414:
.LEHB182:
	bl	_ZSt20__throw_system_errori
.LEHE182:
.L2411:
	mov	w0, 1
.LEHB183:
	bl	_ZSt20__throw_system_errori
.LEHE183:
.L2424:
	mov	w0, 1
.LEHB184:
	bl	_ZSt20__throw_system_errori
.LEHE184:
.L2412:
.LEHB185:
	bl	_ZSt20__throw_system_errori
.LEHE185:
.L2419:
	bl	_ZN7hnswlib15HierarchicalNSWIfE21unmarkDeletedInternalEj.part.0
.L2418:
	mov	w0, 1
.LEHB186:
	bl	_ZSt20__throw_system_errori
.LEHE186:
.L2417:
.LEHB187:
	bl	_ZSt20__throw_system_errori
.LEHE187:
.L2425:
.LEHB188:
	bl	_ZSt20__throw_system_errori
.LEHE188:
.L2316:
	mov	x19, x0
.L2302:
	ldrb	w0, [sp, 104]
	cbz	w0, .L2303
	add	x0, sp, 96
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L2303:
	mov	x0, x19
.LEHB189:
	bl	_Unwind_Resume
.LEHE189:
.L2289:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC30
	mov	x20, x0
	add	x1, x1, :lo12:.LC30
.LEHB190:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE190:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB191:
	bl	__cxa_throw
.LEHE191:
.L2410:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC38
	mov	x19, x0
	add	x1, x1, :lo12:.LC38
.LEHB192:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE192:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x19
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB193:
	bl	__cxa_throw
.LEHE193:
.L2318:
	mov	x19, x0
	b	.L2295
.L2317:
	mov	x19, x0
.L2300:
	ldrb	w0, [sp, 120]
	cbz	w0, .L2302
	add	x0, sp, 112
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L2302
.L2319:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
.L2295:
	ldrb	w0, [sp, 136]
	cbz	w0, .L2300
	add	x0, sp, 128
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L2300
.L2315:
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	bl	__cxa_free_exception
	mov	x0, x19
.LEHB194:
	bl	_Unwind_Resume
.LEHE194:
	.cfi_endproc
.LFE11013:
	.section	.gcc_except_table
.LLSDA11013:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11013-.LLSDACSB11013
.LLSDACSB11013:
	.uleb128 .LEHB179-.LFB11013
	.uleb128 .LEHE179-.LEHB179
	.uleb128 .L2318-.LFB11013
	.uleb128 0
	.uleb128 .LEHB180-.LFB11013
	.uleb128 .LEHE180-.LEHB180
	.uleb128 .L2316-.LFB11013
	.uleb128 0
	.uleb128 .LEHB181-.LFB11013
	.uleb128 .LEHE181-.LEHB181
	.uleb128 .L2317-.LFB11013
	.uleb128 0
	.uleb128 .LEHB182-.LFB11013
	.uleb128 .LEHE182-.LEHB182
	.uleb128 .L2316-.LFB11013
	.uleb128 0
	.uleb128 .LEHB183-.LFB11013
	.uleb128 .LEHE183-.LEHB183
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB184-.LFB11013
	.uleb128 .LEHE184-.LEHB184
	.uleb128 .L2317-.LFB11013
	.uleb128 0
	.uleb128 .LEHB185-.LFB11013
	.uleb128 .LEHE185-.LEHB185
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB186-.LFB11013
	.uleb128 .LEHE186-.LEHB186
	.uleb128 .L2318-.LFB11013
	.uleb128 0
	.uleb128 .LEHB187-.LFB11013
	.uleb128 .LEHE187-.LEHB187
	.uleb128 .L2317-.LFB11013
	.uleb128 0
	.uleb128 .LEHB188-.LFB11013
	.uleb128 .LEHE188-.LEHB188
	.uleb128 .L2318-.LFB11013
	.uleb128 0
	.uleb128 .LEHB189-.LFB11013
	.uleb128 .LEHE189-.LEHB189
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB190-.LFB11013
	.uleb128 .LEHE190-.LEHB190
	.uleb128 .L2319-.LFB11013
	.uleb128 0
	.uleb128 .LEHB191-.LFB11013
	.uleb128 .LEHE191-.LEHB191
	.uleb128 .L2318-.LFB11013
	.uleb128 0
	.uleb128 .LEHB192-.LFB11013
	.uleb128 .LEHE192-.LEHB192
	.uleb128 .L2315-.LFB11013
	.uleb128 0
	.uleb128 .LEHB193-.LFB11013
	.uleb128 .LEHE193-.LEHB193
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB194-.LFB11013
	.uleb128 .LEHE194-.LEHB194
	.uleb128 0
	.uleb128 0
.LLSDACSE11013:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb, .-_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb
	.section	.text._ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm
	.type	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm, %function
_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm:
.LFB12792:
	.cfi_startproc
	cbz	x1, .L2451
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
	bhi	.L2429
	mov	x2, x1
	mov	x3, x20
	.p2align 3,,7
.L2430:
	str	wzr, [x2]
	subs	x3, x3, #1
	str	xzr, [x2, 8]
	add	x2, x2, 16
	bne	.L2430
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
.L2451:
	ret
	.p2align 2,,3
.L2429:
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
	bcc	.L2454
	cmp	x20, x21
	csel	x2, x20, x21, cs
	adds	x2, x21, x2
	bcs	.L2433
	cbnz	x2, .L2455
	mov	x23, 0
	mov	x24, 0
.L2435:
	add	x2, x24, x19
	mov	x3, x20
	.p2align 3,,7
.L2436:
	str	wzr, [x2]
	subs	x3, x3, #1
	str	xzr, [x2, 8]
	add	x2, x2, 16
	bne	.L2436
	cmp	x1, x0
	beq	.L2440
	sub	x1, x1, x0
	mov	x2, x24
	add	x1, x24, x1
	mov	x3, x0
	.p2align 3,,7
.L2441:
	ldp	x4, x5, [x3], 16
	stp	x4, x5, [x2], 16
	cmp	x2, x1
	bne	.L2441
.L2440:
	cbz	x0, .L2439
	bl	_ZdlPv
.L2439:
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
.L2455:
	.cfi_restore_state
	cmp	x2, x3
	csel	x2, x2, x3, ls
	lsl	x23, x2, 4
.L2434:
	mov	x0, x23
	bl	_Znwm
	mov	x24, x0
	add	x23, x0, x23
	ldp	x0, x1, [x22]
	b	.L2435
.L2433:
	mov	x23, 9223372036854775792
	b	.L2434
.L2454:
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12792:
	.size	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm, .-_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm
	.section	.text._ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE,"axG",@progbits,_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE
	.type	_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE, %function
_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE:
.LFB12710:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12710
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
.LEHB195:
	blr	x4
.LEHE195:
	ldp	x0, x2, [sp, 32]
	ldp	x3, x4, [x19]
	sub	x20, x2, x0
	sub	x1, x4, x3
	asr	x5, x20, 4
	cmp	x20, x1
	bhi	.L2494
	bcc	.L2495
.L2458:
	cmp	x2, x0
	beq	.L2459
.L2496:
	sub	x20, x20, #16
	b	.L2467
	.p2align 2,,3
.L2460:
	ldp	x0, x2, [sp, 32]
	sub	x20, x20, #16
	sub	x2, x2, #16
	str	x2, [sp, 40]
	cmp	x0, x2
	beq	.L2468
.L2467:
	ldr	x3, [x19]
	sub	x1, x2, x0
	ldr	s1, [x0]
	add	x4, x3, x20
	ldr	x5, [x0, 8]
	str	s1, [x3, x20]
	str	x5, [x4, 8]
	cmp	x1, 16
	ble	.L2460
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
	ble	.L2474
	mov	x4, 0
	b	.L2465
	.p2align 2,,3
.L2476:
	mov	x5, x2
.L2464:
	lsl	x2, x4, 4
	add	x4, x0, x2
	str	s1, [x0, x2]
	str	x5, [x4, 8]
	cmp	x1, x7
	bge	.L2461
.L2477:
	mov	x4, x1
.L2465:
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
	bmi	.L2480
	ldr	x5, [x8, 8]
	bgt	.L2475
	ldr	x2, [x2, 8]
	cmp	x2, x5
	bhi	.L2476
.L2475:
	fmov	s1, s2
	lsl	x2, x4, 4
	add	x4, x0, x2
	mov	x1, x6
	str	s1, [x0, x2]
	str	x5, [x4, 8]
	cmp	x1, x7
	blt	.L2477
.L2461:
	tbnz	x9, 0, .L2466
	sub	x9, x9, #2
	add	x9, x9, x9, lsr 63
	cmp	x1, x9, asr 1
	bne	.L2466
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
.L2466:
	mov	x2, 0
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldp	x0, x2, [sp, 32]
	sub	x20, x20, #16
	sub	x2, x2, #16
	str	x2, [sp, 40]
	cmp	x0, x2
	bne	.L2467
.L2468:
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
.L2480:
	.cfi_restore_state
	ldr	x5, [x2, 8]
	b	.L2464
	.p2align 2,,3
.L2495:
	add	x3, x3, x20
	cmp	x4, x3
	beq	.L2458
	str	x3, [x19, 8]
	cmp	x2, x0
	bne	.L2496
.L2459:
	cbnz	x2, .L2468
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
.L2494:
	.cfi_restore_state
	sub	x1, x5, x1, asr 4
	mov	x0, x19
.LEHB196:
	bl	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm
.LEHE196:
	ldp	x0, x2, [sp, 32]
	b	.L2458
	.p2align 2,,3
.L2474:
	mov	x1, 0
	b	.L2461
.L2479:
	ldr	x1, [sp, 32]
	mov	x20, x0
	cbz	x1, .L2472
	mov	x0, x1
	bl	_ZdlPv
.L2472:
	ldr	x0, [x19]
	cbz	x0, .L2473
	bl	_ZdlPv
.L2473:
	mov	x0, x20
.LEHB197:
	bl	_Unwind_Resume
.LEHE197:
.L2478:
	mov	x20, x0
	b	.L2472
	.cfi_endproc
.LFE12710:
	.section	.gcc_except_table
.LLSDA12710:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12710-.LLSDACSB12710
.LLSDACSB12710:
	.uleb128 .LEHB195-.LFB12710
	.uleb128 .LEHE195-.LEHB195
	.uleb128 .L2478-.LFB12710
	.uleb128 0
	.uleb128 .LEHB196-.LFB12710
	.uleb128 .LEHE196-.LEHB196
	.uleb128 .L2479-.LFB12710
	.uleb128 0
	.uleb128 .LEHB197-.LFB12710
	.uleb128 .LEHE197-.LEHB197
	.uleb128 0
	.uleb128 0
.LLSDACSE12710:
	.section	.text._ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE,"axG",@progbits,_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE,comdat
	.size	_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE, .-_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB12852:
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
	beq	.L2515
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	mov	x28, x3
	adds	x1, x1, x0
	bcs	.L2508
	cbnz	x1, .L2502
	mov	x25, 8
	mov	x22, 0
	mov	x20, 0
.L2507:
	ldr	s0, [x27]
	add	x0, x20, x26
	ldr	w1, [x28]
	str	s0, [x20, x26]
	str	w1, [x0, 4]
	cmp	x19, x24
	beq	.L2503
	mov	x4, x20
	mov	x3, x24
	.p2align 3,,7
.L2504:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L2504
	add	x26, x26, 8
	add	x25, x20, x26
.L2503:
	cmp	x19, x23
	beq	.L2505
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L2505:
	cbz	x24, .L2506
	mov	x0, x24
	bl	_ZdlPv
.L2506:
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
.L2508:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L2501:
	mov	x0, x22
	bl	_Znwm
	mov	x20, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L2507
.L2502:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L2501
.L2515:
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12852:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB12854:
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
	beq	.L2534
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	mov	x28, x3
	adds	x1, x1, x0
	bcs	.L2527
	cbnz	x1, .L2521
	mov	x25, 8
	mov	x22, 0
	mov	x20, 0
.L2526:
	ldr	s0, [x27]
	add	x0, x20, x26
	ldr	w1, [x28]
	str	s0, [x20, x26]
	str	w1, [x0, 4]
	cmp	x19, x24
	beq	.L2522
	mov	x4, x20
	mov	x3, x24
	.p2align 3,,7
.L2523:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L2523
	add	x26, x26, 8
	add	x25, x20, x26
.L2522:
	cmp	x19, x23
	beq	.L2524
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L2524:
	cbz	x24, .L2525
	mov	x0, x24
	bl	_ZdlPv
.L2525:
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
.L2527:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L2520:
	mov	x0, x22
	bl	_Znwm
	mov	x20, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L2526
.L2521:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L2520
.L2534:
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12854:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE,"axG",@progbits,_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE
	.type	_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE, %function
_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE:
.LFB12740:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12740
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
.LEHB198:
	bl	_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv
.LEHE198:
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
.LEHB199:
	blr	x3
	ldp	x1, x0, [x19, 8]
	str	s0, [sp, 140]
	fmov	s8, s0
	cmp	x1, x0
	beq	.L2536
	ldr	w7, [sp, 124]
	fmov	s2, s0
	fmov	s1, s0
	str	s0, [x1]
	str	w7, [x1, 4]
	add	x0, x1, 8
	str	x0, [x19, 8]
.L2537:
	ldr	x3, [x19]
	sub	x2, x0, x3
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L2538
	.p2align 3,,7
.L2541:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s0, [x3, x2]
	fcmpe	s0, s2
	bmi	.L2591
.L2539:
	ldp	x1, x0, [sp, 168]
	fneg	s1, s1
	str	w7, [x4, 4]
	str	s2, [x4]
	str	s1, [sp, 144]
	cmp	x1, x0
	beq	.L2542
.L2622:
	ldr	w8, [sp, 124]
	add	x7, x1, 8
	str	s1, [x1]
	mov	w9, w8
	str	w8, [x1, 4]
	str	x7, [sp, 168]
.L2543:
	ldr	x0, [sp, 160]
	sub	x3, x7, x0
	asr	x1, x3, 3
	sub	x2, x1, #2
	sub	x1, x1, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x1, 0
	ble	.L2544
	.p2align 3,,7
.L2547:
	lsl	x3, x2, 3
	lsl	x1, x1, 3
	add	x5, x0, x3
	add	x4, x0, x1
	ldr	s0, [x0, x3]
	fcmpe	s0, s1
	bmi	.L2592
.L2545:
	str	s1, [x4]
	str	w9, [x4, 4]
	strh	w24, [x23, w8, uxtw 1]
	cmp	x0, x7
	beq	.L2548
	.p2align 3,,7
.L2550:
	ldr	s0, [x0]
	ldr	w20, [x0, 4]
	fneg	s0, s0
	fcmpe	s0, s8
	bgt	.L2548
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
	cbnz	x25, .L2549
	b	.L2569
	.p2align 2,,3
.L2620:
	mov	x20, x0
.L2549:
	ldr	w1, [x26, x20, lsl 2]
	sbfiz	x0, x1, 1, 32
	ldrh	w2, [x23, x0]
	str	w1, [sp, 136]
	cmp	w2, w24
	beq	.L2551
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
	bhi	.L2552
	fcmpe	s0, s8
	bmi	.L2552
.L2551:
	add	x0, x20, 1
	cmp	x25, x20
	bne	.L2620
.L2569:
	ldp	x0, x1, [sp, 160]
	cmp	x1, x0
	bne	.L2550
.L2548:
	adrp	x0, .LC5
	strb	wzr, [sp, 152]
	ldr	x20, [x21, 112]
	ldr	x21, [x0, #:lo12:.LC5]
	add	x0, x20, 80
	str	x0, [sp, 144]
	cbz	x21, .L2570
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2621
.L2570:
	ldp	x0, x1, [x20, 16]
	mov	w2, 1
	strb	w2, [sp, 152]
	cmp	x0, x1
	beq	.L2571
	str	x28, [x0, -8]!
	str	x0, [x20, 16]
.L2572:
	ldr	x0, [sp, 144]
	cbz	x0, .L2575
	cbz	x21, .L2575
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L2575:
	ldr	x0, [sp, 160]
	cbz	x0, .L2535
	bl	_ZdlPv
.L2535:
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
.L2591:
	.cfi_restore_state
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s0, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L2541
	mov	x4, x5
	fneg	s1, s1
	ldp	x1, x0, [sp, 168]
	str	w7, [x4, 4]
	str	s2, [x4]
	str	s1, [sp, 144]
	cmp	x1, x0
	bne	.L2622
.L2542:
	add	x3, sp, 124
	add	x2, sp, 144
	add	x0, sp, 160
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x7, [sp, 168]
	ldr	w8, [sp, 124]
	ldr	w9, [x7, -4]
	ldr	s1, [x7, -8]
	b	.L2543
	.p2align 2,,3
.L2592:
	sub	x3, x2, #1
	ldr	w6, [x5, 4]
	str	s0, [x0, x1]
	mov	x1, x2
	add	x3, x3, x3, lsr 63
	str	w6, [x4, 4]
	asr	x2, x3, 1
	cmp	x1, 0
	bgt	.L2547
	mov	x4, x5
	b	.L2545
	.p2align 2,,3
.L2552:
	ldp	x2, x0, [sp, 168]
	fneg	s1, s0
	str	s1, [sp, 144]
	cmp	x2, x0
	beq	.L2555
	ldr	w8, [sp, 136]
	add	x0, x2, 8
	str	s1, [x2]
	str	w8, [x2, 4]
	str	x0, [sp, 168]
.L2556:
	ldr	x4, [sp, 160]
	sub	x3, x0, x4
	asr	x0, x3, 3
	sub	x2, x0, #2
	sub	x0, x0, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x0, 0
	ble	.L2557
	.p2align 3,,7
.L2560:
	lsl	x3, x2, 3
	lsl	x0, x0, 3
	add	x6, x4, x3
	add	x5, x4, x0
	ldr	s2, [x4, x3]
	fcmpe	s2, s1
	bmi	.L2593
.L2558:
	ldr	x0, [x19, 16]
	str	s1, [x5]
	str	w8, [x5, 4]
	cmp	x0, x1
	beq	.L2561
.L2623:
	ldr	s2, [sp, 140]
	add	x5, x1, 8
	ldr	w9, [sp, 136]
	str	w9, [x1, 4]
	str	s2, [x1]
	str	x5, [x19, 8]
.L2562:
	ldr	x1, [x19]
	sub	x3, x5, x1
	asr	x8, x3, 3
	sub	x0, x8, #2
	sub	x2, x8, #1
	add	x0, x0, x0, lsr 63
	asr	x0, x0, 1
	cmp	x2, 0
	ble	.L2563
	.p2align 3,,7
.L2566:
	lsl	x3, x0, 3
	lsl	x2, x2, 3
	add	x6, x1, x3
	add	x4, x1, x2
	ldr	s1, [x1, x3]
	fcmpe	s1, s2
	bmi	.L2594
.L2564:
	str	s2, [x4]
	str	w9, [x4, 4]
	cmp	x22, x8
	bcs	.L2567
	.p2align 3,,7
.L2568:
	mov	x0, x19
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x1, x5, [x19]
	sub	x0, x5, x1
	cmp	x22, x0, asr 3
	bcc	.L2568
.L2567:
	cmp	x1, x5
	beq	.L2551
	ldr	s8, [x1]
	b	.L2551
	.p2align 2,,3
.L2593:
	sub	x3, x2, #1
	ldr	w7, [x6, 4]
	str	s2, [x4, x0]
	mov	x0, x2
	add	x3, x3, x3, lsr 63
	str	w7, [x5, 4]
	asr	x2, x3, 1
	cmp	x0, 0
	bgt	.L2560
	mov	x5, x6
	ldr	x0, [x19, 16]
	str	s1, [x5]
	str	w8, [x5, 4]
	cmp	x0, x1
	bne	.L2623
.L2561:
	add	x3, sp, 136
	add	x2, sp, 140
	mov	x0, x19
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x5, [x19, 8]
	ldr	w9, [x5, -4]
	ldr	s2, [x5, -8]
	b	.L2562
	.p2align 2,,3
.L2594:
	sub	x3, x0, #1
	ldr	w7, [x6, 4]
	str	s1, [x1, x2]
	mov	x2, x0
	add	x3, x3, x3, lsr 63
	str	w7, [x4, 4]
	asr	x0, x3, 1
	cmp	x2, 0
	bgt	.L2566
	mov	x4, x6
	b	.L2564
	.p2align 2,,3
.L2555:
	mov	x1, x2
	add	x3, sp, 136
	add	x2, sp, 144
	add	x0, sp, 160
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x0, [sp, 168]
	ldr	x1, [x19, 8]
	ldr	w8, [x0, -4]
	ldr	s1, [x0, -8]
	b	.L2556
.L2557:
	sub	x0, x3, #8
	add	x5, x4, x0
	b	.L2558
.L2563:
	sub	x3, x3, #8
	add	x4, x1, x3
	b	.L2564
.L2536:
	add	x3, sp, 124
	add	x2, sp, 140
	mov	x0, x19
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE199:
	ldr	x0, [x19, 8]
	ldr	s1, [sp, 140]
	ldr	w7, [x0, -4]
	ldr	s2, [x0, -8]
	b	.L2537
.L2571:
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
	beq	.L2624
	ldr	x0, [x20]
	cmp	x23, x0
	beq	.L2625
.L2574:
	mov	x0, 512
.LEHB200:
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
	cbz	w1, .L2575
	b	.L2572
	.p2align 2,,3
.L2625:
	mov	x0, x20
	mov	x1, 1
	bl	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb
	ldr	x23, [x20, 40]
	b	.L2574
.L2538:
	sub	x0, x2, #8
	add	x4, x3, x0
	b	.L2539
.L2544:
	sub	x3, x3, #8
	add	x4, x0, x3
	b	.L2545
.L2624:
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	bl	_ZSt20__throw_length_errorPKc
.LEHE200:
.L2621:
.LEHB201:
	bl	_ZSt20__throw_system_errori
.LEHE201:
.L2589:
	mov	x20, x0
.L2580:
	ldr	x0, [sp, 160]
	cbz	x0, .L2581
	bl	_ZdlPv
.L2581:
	ldr	x0, [x19]
	cbz	x0, .L2582
	bl	_ZdlPv
.L2582:
	mov	x0, x20
.LEHB202:
	bl	_Unwind_Resume
.LEHE202:
.L2590:
	ldrb	w1, [sp, 152]
	mov	x20, x0
	cbz	w1, .L2580
	add	x0, sp, 144
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L2580
	.cfi_endproc
.LFE12740:
	.section	.gcc_except_table
.LLSDA12740:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12740-.LLSDACSB12740
.LLSDACSB12740:
	.uleb128 .LEHB198-.LFB12740
	.uleb128 .LEHE198-.LEHB198
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB199-.LFB12740
	.uleb128 .LEHE199-.LEHB199
	.uleb128 .L2589-.LFB12740
	.uleb128 0
	.uleb128 .LEHB200-.LFB12740
	.uleb128 .LEHE200-.LEHB200
	.uleb128 .L2590-.LFB12740
	.uleb128 0
	.uleb128 .LEHB201-.LFB12740
	.uleb128 .LEHE201-.LEHB201
	.uleb128 .L2589-.LFB12740
	.uleb128 0
	.uleb128 .LEHB202-.LFB12740
	.uleb128 .LEHE202-.LEHB202
	.uleb128 0
	.uleb128 0
.LLSDACSE12740:
	.section	.text._ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE,"axG",@progbits,_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE,comdat
	.size	_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE, .-_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE
	.section	.text._ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB12862:
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
	beq	.L2644
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	adds	x1, x1, x0
	bcs	.L2637
	cbnz	x1, .L2631
	mov	x25, 16
	mov	x22, 0
	mov	x21, 0
.L2636:
	add	x2, x21, x26
	ldp	x0, x1, [x27]
	stp	x0, x1, [x2]
	cmp	x19, x24
	beq	.L2632
	mov	x4, x21
	mov	x3, x24
	.p2align 3,,7
.L2633:
	ldp	x6, x7, [x3], 16
	stp	x6, x7, [x4], 16
	cmp	x3, x19
	bne	.L2633
	add	x26, x26, 16
	add	x25, x21, x26
.L2632:
	cmp	x19, x23
	beq	.L2634
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L2634:
	cbz	x24, .L2635
	mov	x0, x24
	bl	_ZdlPv
.L2635:
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
.L2637:
	.cfi_restore_state
	mov	x22, 9223372036854775792
.L2630:
	mov	x0, x22
	bl	_Znwm
	mov	x21, x0
	add	x22, x0, x22
	add	x25, x0, 16
	b	.L2636
.L2631:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 4
	b	.L2630
.L2644:
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12862:
	.size	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE,"axG",@progbits,_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE
	.type	_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE, %function
_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE:
.LFB12679:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12679
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
	cbz	x0, .L2645
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
.LEHB203:
	blr	x3
	ldr	w0, [x19, 104]
	fmov	s8, s0
	cmp	w0, 0
	ble	.L2648
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
.L2651:
	ldr	x0, [x19, 32]
	ldr	x1, [x19, 264]
	mul	x0, x27, x0
	ldr	x1, [x1, x20, lsl 3]
	add	x20, x1, x0
	ldrh	w22, [x1, x0]
.L2844:
	ldaxr	x0, [x26]
	add	x0, x0, 1
	stlxr	w1, x0, [x26]
	cbnz	w1, .L2844
	ldr	x1, [sp, 112]
	and	x0, x22, 65535
.L2845:
	ldaxr	x2, [x1]
	add	x2, x2, x0
	stlxr	w3, x2, [x1]
	cbnz	w3, .L2845
	cbz	w22, .L2649
	sub	w22, w22, #1
	add	x0, x20, 8
	add	x20, x20, 4
	mov	w24, 0
	add	x22, x0, x22, uxtw 2
	.p2align 3,,7
.L2656:
	ldr	w21, [x20]
	ldr	x0, [x19, 8]
	uxtw	x1, w21
	cmp	x1, x0
	bhi	.L2829
	ldr	x5, [x19, 24]
	mov	x0, x23
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	madd	x1, x1, x5, x4
	ldr	x4, [x19, 256]
	add	x1, x4, x1
	blr	x3
.LEHE203:
	fcmpe	s0, s8
	bmi	.L2755
.L2653:
	add	x20, x20, 4
	cmp	x20, x22
	bne	.L2656
	uxtw	x20, w25
	cbnz	w24, .L2651
	.p2align 3,,7
.L2649:
	ldr	x0, [sp, 136]
	sub	x27, x27, #1
	cmp	x0, x27
	beq	.L2648
	uxtw	x20, w25
	b	.L2651
.L2648:
	stp	xzr, xzr, [sp, 176]
	str	xzr, [sp, 192]
	add	x0, x19, 40
	ldar	x0, [x0]
	orr	x0, x28, x0
	cbz	x0, .L2830
	ldr	x20, [x19, 80]
	str	w25, [sp, 148]
	ldr	x1, [sp, 128]
	ldr	x0, [x19, 112]
	cmp	x20, x1
	csel	x20, x20, x1, cs
.LEHB204:
	bl	_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv
.LEHE204:
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
	tbnz	x0, 0, .L2831
	cbz	x28, .L2665
	ldr	x4, [x28]
	adrp	x0, _ZN7hnswlib17BaseFilterFunctorclEm
	add	x0, x0, :lo12:_ZN7hnswlib17BaseFilterFunctorclEm
	ldr	x4, [x4]
	cmp	x4, x0
	bne	.L2832
.L2665:
	ldr	x1, [x19, 232]
	mov	x0, x23
	ldr	x4, [x19, 304]
	add	x1, x2, x1
	ldr	x2, [x19, 312]
	add	x1, x3, x1
.LEHB205:
	blr	x4
	ldp	x1, x0, [sp, 216]
	str	s0, [sp, 156]
	fmov	s8, s0
	cmp	x1, x0
	beq	.L2833
	ldr	w7, [sp, 148]
	fmov	s2, s0
	fmov	s1, s0
	str	s0, [x1]
	str	w7, [x1, 4]
	add	x0, x1, 8
	str	x0, [sp, 216]
.L2677:
	ldr	x4, [sp, 208]
	sub	x2, x0, x4
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L2678
.L2681:
	lsl	x3, x1, 3
	lsl	x0, x0, 3
	add	x5, x4, x3
	add	x2, x4, x0
	ldr	s0, [x4, x3]
	fcmpe	s0, s2
	bmi	.L2757
.L2679:
	ldp	x1, x0, [sp, 248]
	fneg	s1, s1
	str	w7, [x2, 4]
	str	s2, [x2]
	str	s1, [sp, 160]
	cmp	x1, x0
	beq	.L2682
	ldr	w5, [sp, 148]
	add	x4, x1, 8
	str	s1, [x1]
	mov	w9, w5
	str	w5, [x1, 4]
	str	x4, [sp, 248]
.L2683:
	ldr	x0, [sp, 240]
	sub	x3, x4, x0
	asr	x1, x3, 3
	sub	x2, x1, #2
	sub	x1, x1, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x1, 0
	ble	.L2684
.L2687:
	lsl	x3, x2, 3
	lsl	x1, x1, 3
	add	x7, x0, x3
	add	x6, x0, x1
	ldr	s0, [x0, x3]
	fcmpe	s0, s1
	bmi	.L2758
.L2685:
	str	w9, [x6, 4]
	str	s1, [x6]
.L2675:
	strh	w24, [x22, w5, uxtw 1]
	cmp	x4, x0
	beq	.L2688
	.p2align 3,,7
.L2692:
	ldr	s0, [x0]
	ldr	w21, [x0, 4]
	fneg	s0, s0
	fcmpe	s0, s8
	bgt	.L2759
.L2689:
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
	cbz	x25, .L2714
	adrp	x0, _ZN7hnswlib17BaseFilterFunctorclEm
	add	x27, x0, :lo12:_ZN7hnswlib17BaseFilterFunctorclEm
	b	.L2691
	.p2align 2,,3
.L2834:
	fcmpe	s0, s8
	bmi	.L2694
.L2693:
	add	x0, x21, 1
	cmp	x25, x21
	beq	.L2714
.L2836:
	mov	x21, x0
.L2691:
	ldr	w1, [x26, x21, lsl 2]
	sbfiz	x0, x1, 1, 32
	ldrh	w2, [x22, x0]
	str	w1, [sp, 152]
	cmp	w2, w24
	beq	.L2693
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
.LEHE205:
	ldp	x1, x0, [sp, 208]
	str	s0, [sp, 156]
	sub	x0, x0, x1
	cmp	x20, x0, asr 3
	bls	.L2834
.L2694:
	ldp	x1, x0, [sp, 248]
	fneg	s0, s0
	str	s0, [sp, 160]
	cmp	x1, x0
	beq	.L2697
	ldr	w7, [sp, 152]
	add	x0, x1, 8
	str	s0, [x1]
	mov	w8, w7
	str	w7, [x1, 4]
	str	x0, [sp, 248]
.L2698:
	ldr	x3, [sp, 240]
	sub	x2, x0, x3
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L2699
	.p2align 3,,7
.L2702:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s1, [x3, x2]
	fcmpe	s1, s0
	bmi	.L2760
.L2700:
	ldr	x2, [x19, 24]
	uxtw	x7, w7
	ldr	x1, [x19, 256]
	ldr	x0, [x19, 240]
	str	w8, [x4, 4]
	madd	x7, x7, x2, x1
	str	s0, [x4]
	add	x0, x7, x0
	ldrb	w0, [x0, 2]
	tbnz	x0, 0, .L2823
	cbz	x28, .L2705
	ldr	x0, [x28]
	ldr	x2, [x0]
	cmp	x2, x27
	bne	.L2835
.L2705:
	ldp	x1, x0, [sp, 216]
	cmp	x1, x0
	beq	.L2706
	ldr	s1, [sp, 156]
	add	x2, x1, 8
	ldr	w9, [sp, 152]
	str	w9, [x1, 4]
	str	s1, [x1]
	str	x2, [sp, 216]
.L2707:
	ldr	x0, [sp, 208]
	sub	x4, x2, x0
	asr	x8, x4, 3
	sub	x1, x8, #2
	sub	x3, x8, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x3, 0
	ble	.L2708
	.p2align 3,,7
.L2711:
	lsl	x4, x1, 3
	lsl	x3, x3, 3
	add	x6, x0, x4
	add	x5, x0, x3
	ldr	s0, [x0, x4]
	fcmpe	s0, s1
	bmi	.L2761
.L2709:
	str	w9, [x5, 4]
	str	s1, [x5]
.L2704:
	cmp	x8, x20
	bls	.L2712
	.p2align 3,,7
.L2713:
	add	x0, sp, 208
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x0, x2, [sp, 208]
	sub	x1, x2, x0
	cmp	x20, x1, asr 3
	bcc	.L2713
.L2712:
	cmp	x0, x2
	beq	.L2693
	ldr	s8, [x0]
	add	x0, x21, 1
	cmp	x25, x21
	bne	.L2836
.L2714:
	ldp	x0, x1, [sp, 240]
	cmp	x0, x1
	bne	.L2692
.L2688:
	adrp	x0, .LC5
	strb	wzr, [sp, 168]
	ldr	x20, [x19, 112]
	ldr	x23, [x0, #:lo12:.LC5]
	add	x0, x20, 80
	str	x0, [sp, 160]
	cbz	x23, .L2715
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2837
.L2715:
	ldp	x1, x0, [x20, 16]
	mov	w2, 1
	strb	w2, [sp, 168]
	cmp	x1, x0
	beq	.L2716
	ldr	x0, [sp, 112]
	str	x0, [x1, -8]!
	str	x1, [x20, 16]
.L2717:
	ldr	x0, [sp, 160]
	cbz	x0, .L2720
	cbz	x23, .L2720
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L2720:
	ldr	x0, [sp, 240]
	cbz	x0, .L2722
	bl	_ZdlPv
.L2722:
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
	cbz	x0, .L2663
	bl	_ZdlPv
	ldr	x0, [sp, 208]
	cbz	x0, .L2663
	bl	_ZdlPv
.L2839:
	ldp	x0, x1, [sp, 176]
	ldr	x3, [sp, 128]
	sub	x2, x1, x0
	cmp	x3, x2, asr 3
	bcs	.L2827
	.p2align 3,,7
.L2838:
	add	x0, sp, 176
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
.L2663:
	ldp	x0, x1, [sp, 176]
	ldr	x3, [sp, 128]
	sub	x2, x1, x0
	cmp	x3, x2, asr 3
	bcc	.L2838
	cmp	x1, x0
	bne	.L2737
.L2840:
	cbz	x0, .L2822
	bl	_ZdlPv
.L2822:
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
.L2645:
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
.L2755:
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
	b	.L2653
.L2757:
	sub	x3, x1, #1
	ldr	w6, [x5, 4]
	str	s0, [x4, x0]
	mov	x0, x1
	add	x3, x3, x3, lsr 63
	str	w6, [x2, 4]
	asr	x1, x3, 1
	cmp	x0, 0
	bgt	.L2681
	mov	x2, x5
	b	.L2679
	.p2align 2,,3
.L2758:
	sub	x3, x2, #1
	ldr	w8, [x7, 4]
	str	s0, [x0, x1]
	mov	x1, x2
	add	x3, x3, x3, lsr 63
	str	w8, [x6, 4]
	asr	x2, x3, 1
	cmp	x1, 0
	bgt	.L2687
	mov	x6, x7
	b	.L2685
	.p2align 2,,3
.L2760:
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s1, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L2702
	mov	x4, x5
	b	.L2700
	.p2align 2,,3
.L2761:
	sub	x4, x1, #1
	ldr	w7, [x6, 4]
	str	s0, [x0, x3]
	mov	x3, x1
	add	x4, x4, x4, lsr 63
	str	w7, [x5, 4]
	asr	x1, x4, 1
	cmp	x3, 0
	bgt	.L2711
	mov	x5, x6
	b	.L2709
.L2830:
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
.LEHB206:
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
	cbz	x0, .L2663
	bl	_ZdlPv
	ldr	x0, [sp, 240]
	cbz	x0, .L2663
	bl	_ZdlPv
	b	.L2839
	.p2align 2,,3
.L2841:
	ldp	x2, x3, [sp, 240]
	stp	x2, x3, [x1], 16
	str	x1, [x4, 8]
.L2736:
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
.L2827:
	cmp	x1, x0
	beq	.L2840
.L2737:
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
	bne	.L2841
	ldr	x20, [sp, 120]
	add	x2, sp, 240
	mov	x0, x20
	bl	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE206:
	ldr	x1, [x20, 8]
	b	.L2736
.L2835:
	ldr	x1, [x19, 248]
	mov	x0, x28
	ldr	x1, [x7, x1]
.LEHB207:
	blr	x2
	tst	w0, 255
	bne	.L2705
	.p2align 3,,7
.L2823:
	ldp	x0, x2, [sp, 208]
	sub	x8, x2, x0
	asr	x8, x8, 3
	b	.L2704
	.p2align 2,,3
.L2697:
	add	x3, sp, 152
	add	x2, sp, 160
	add	x0, sp, 240
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x0, [sp, 248]
	ldr	w7, [sp, 152]
	ldr	w8, [x0, -4]
	ldr	s0, [x0, -8]
	b	.L2698
	.p2align 2,,3
.L2759:
	ldp	x1, x0, [sp, 208]
	sub	x0, x0, x1
	cmp	x20, x0, asr 3
	bne	.L2689
	b	.L2688
	.p2align 2,,3
.L2699:
	sub	x0, x2, #8
	add	x4, x3, x0
	b	.L2700
.L2706:
	add	x3, sp, 152
	add	x2, sp, 156
	add	x0, sp, 208
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE207:
	ldr	x2, [sp, 216]
	ldr	w9, [x2, -4]
	ldr	s1, [x2, -8]
	b	.L2707
.L2708:
	sub	x4, x4, #8
	add	x5, x0, x4
	b	.L2709
.L2716:
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
	beq	.L2842
	ldr	x0, [x20]
	cmp	x22, x0
	beq	.L2843
.L2719:
	mov	x0, 512
.LEHB208:
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
	cbz	w1, .L2720
	b	.L2717
	.p2align 2,,3
.L2843:
	mov	x0, x20
	mov	x1, 1
	bl	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb
.LEHE208:
	ldr	x22, [x20, 40]
	b	.L2719
.L2682:
	add	x3, sp, 148
	add	x2, sp, 160
	add	x0, sp, 240
.LEHB209:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x4, [sp, 248]
	ldr	w5, [sp, 148]
	ldr	w9, [x4, -4]
	ldr	s1, [x4, -8]
	b	.L2683
.L2833:
	add	x3, sp, 148
	add	x2, sp, 156
	add	x0, sp, 208
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x0, [sp, 216]
	ldr	s1, [sp, 156]
	ldr	w7, [x0, -4]
	ldr	s2, [x0, -8]
	b	.L2677
.L2832:
	ldr	x2, [x19, 248]
	mov	x0, x28
	ldr	x1, [x1, x2]
	blr	x4
	tst	w0, 255
	bne	.L2666
	ldp	x1, x0, [sp, 248]
	mvni	v0.2s, 0x80, lsl 16
	str	s0, [sp, 160]
	cmp	x1, x0
	beq	.L2668
	ldr	w5, [sp, 148]
	fmov	s1, s0
	str	s0, [x1]
	add	x4, x1, 8
	mov	w9, w5
	str	w5, [x1, 4]
	str	x4, [sp, 248]
.L2670:
	ldr	x0, [sp, 240]
	sub	x3, x4, x0
	asr	x1, x3, 3
	sub	x2, x1, #2
	sub	x1, x1, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x1, 0
	ble	.L2671
.L2674:
	lsl	x3, x2, 3
	lsl	x1, x1, 3
	add	x7, x0, x3
	add	x6, x0, x1
	ldr	s0, [x0, x3]
	fcmpe	s0, s1
	bmi	.L2756
.L2672:
	mov	w1, 2139095039
	fmov	s8, w1
	str	s1, [x6]
	str	w9, [x6, 4]
	b	.L2675
.L2756:
	sub	x3, x2, #1
	ldr	w8, [x7, 4]
	str	s0, [x0, x1]
	mov	x1, x2
	add	x3, x3, x3, lsr 63
	str	w8, [x6, 4]
	asr	x2, x3, 1
	cmp	x1, 0
	bgt	.L2674
	mov	x6, x7
	b	.L2672
.L2831:
	mvni	v0.2s, 0x80, lsl 16
	mov	x1, 0
	str	s0, [sp, 160]
.L2668:
	add	x3, sp, 148
	add	x2, sp, 160
	add	x0, sp, 240
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE209:
	ldr	x4, [sp, 248]
	ldr	w5, [sp, 148]
	ldr	w9, [x4, -4]
	ldr	s1, [x4, -8]
	b	.L2670
.L2671:
	sub	x3, x3, #8
	add	x6, x0, x3
	b	.L2672
.L2666:
	ldr	w2, [sp, 148]
	ldr	x0, [x19, 24]
	ldr	x3, [x19, 256]
	mul	x2, x2, x0
	b	.L2665
.L2684:
	sub	x3, x3, #8
	add	x6, x0, x3
	b	.L2685
.L2678:
	sub	x2, x2, #8
	add	x2, x4, x2
	b	.L2679
.L2842:
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
.LEHB210:
	bl	_ZSt20__throw_length_errorPKc
.LEHE210:
.L2837:
.LEHB211:
	bl	_ZSt20__throw_system_errori
.LEHE211:
.L2754:
	ldrb	w1, [sp, 168]
	mov	x19, x0
	cbz	w1, .L2725
	add	x0, sp, 160
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L2725:
	ldr	x0, [sp, 240]
	cbz	x0, .L2728
	bl	_ZdlPv
.L2728:
	ldr	x0, [sp, 208]
	cbz	x0, .L2730
	bl	_ZdlPv
.L2730:
	ldr	x0, [sp, 176]
	cbz	x0, .L2740
	bl	_ZdlPv
.L2740:
	ldr	x0, [sp, 120]
	ldr	x0, [x0]
	cbz	x0, .L2742
	bl	_ZdlPv
.L2742:
	mov	x0, x19
.LEHB212:
	bl	_Unwind_Resume
.LEHE212:
.L2752:
	mov	x19, x0
	b	.L2730
.L2750:
	mov	x19, x0
	b	.L2740
.L2753:
	mov	x19, x0
	b	.L2725
.L2829:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC33
	mov	x20, x0
	add	x1, x1, :lo12:.LC33
.LEHB213:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE213:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB214:
	bl	__cxa_throw
.LEHE214:
.L2751:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
	b	.L2740
	.cfi_endproc
.LFE12679:
	.section	.gcc_except_table
.LLSDA12679:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12679-.LLSDACSB12679
.LLSDACSB12679:
	.uleb128 .LEHB203-.LFB12679
	.uleb128 .LEHE203-.LEHB203
	.uleb128 .L2750-.LFB12679
	.uleb128 0
	.uleb128 .LEHB204-.LFB12679
	.uleb128 .LEHE204-.LEHB204
	.uleb128 .L2752-.LFB12679
	.uleb128 0
	.uleb128 .LEHB205-.LFB12679
	.uleb128 .LEHE205-.LEHB205
	.uleb128 .L2753-.LFB12679
	.uleb128 0
	.uleb128 .LEHB206-.LFB12679
	.uleb128 .LEHE206-.LEHB206
	.uleb128 .L2752-.LFB12679
	.uleb128 0
	.uleb128 .LEHB207-.LFB12679
	.uleb128 .LEHE207-.LEHB207
	.uleb128 .L2753-.LFB12679
	.uleb128 0
	.uleb128 .LEHB208-.LFB12679
	.uleb128 .LEHE208-.LEHB208
	.uleb128 .L2754-.LFB12679
	.uleb128 0
	.uleb128 .LEHB209-.LFB12679
	.uleb128 .LEHE209-.LEHB209
	.uleb128 .L2753-.LFB12679
	.uleb128 0
	.uleb128 .LEHB210-.LFB12679
	.uleb128 .LEHE210-.LEHB210
	.uleb128 .L2754-.LFB12679
	.uleb128 0
	.uleb128 .LEHB211-.LFB12679
	.uleb128 .LEHE211-.LEHB211
	.uleb128 .L2753-.LFB12679
	.uleb128 0
	.uleb128 .LEHB212-.LFB12679
	.uleb128 .LEHE212-.LEHB212
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB213-.LFB12679
	.uleb128 .LEHE213-.LEHB213
	.uleb128 .L2751-.LFB12679
	.uleb128 0
	.uleb128 .LEHB214-.LFB12679
	.uleb128 .LEHE214-.LEHB214
	.uleb128 .L2750-.LFB12679
	.uleb128 0
.LLSDACSE12679:
	.section	.text._ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE,"axG",@progbits,_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE,comdat
	.size	_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE, .-_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE
	.section	.text.startup
	.align	2
	.p2align 4,,11
	.type	_GLOBAL__sub_I__Z11flat_searchPfS_mmm, %function
_GLOBAL__sub_I__Z11flat_searchPfS_mmm:
.LFB12923:
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
.LFE12923:
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
