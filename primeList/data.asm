[1 of 2] Compiling Prime            ( Prime.hs, Prime.o )

==================== Asm code ====================
.data
.align 3
.align 0
.globl __stginit_main:Prime
__stginit_main:Prime:



==================== Asm code ====================
.data
.align 3
.align 0
lvl_r30j_closure:
	.quad	GHC.Integer.Type.S#_con_info
	.quad	0



==================== Asm code ====================
.section	__TEXT,__cstring,cstring_literals
.align 1
.align 0
lvl1_r37K_bytes:
	.asciz "Prime.hs:(5,1)-(8,54)|function eratos"



==================== Asm code ====================
.const_data
.align 3
.align 0
S393_srt:
	.quad	Control.Exception.Base.patError_closure



==================== Asm code ====================
.data
.align 3
.align 0
lvl2_r37L_closure:
	.quad	lvl2_r37L_info
	.quad	0
	.quad	0
	.quad	0



==================== Asm code ====================
.text
.align 3
lvl2_r37L_info_dsp:
.align 3
	.quad	S393_srt-(lvl2_r37L_info)+0
	.quad	0
	.quad	4294967317
lvl2_r37L_info:
_c390:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb _c391
_c392:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je _c38Z
_c38Y:
	movq stg_bh_upd_frame_info@GOTPCREL(%rip),%rbx
	movq %rbx,-16(%rbp)
	movq %rax,-8(%rbp)
	leaq lvl1_r37K_bytes(%rip),%r14
	addq $-16,%rbp
	jmp Control.Exception.Base.patError_info
_c391:
	jmp *-16(%r13)
_c38Z:
	jmp *(%rbx)
	.long  lvl2_r37L_info - lvl2_r37L_info_dsp



==================== Asm code ====================
.data
.align 3
.align 0
$spoly_go_r37M_closure:
	.quad	$spoly_go_r37M_info



==================== Asm code ====================
.text
.align 3
$spoly_go_r37M_info_dsp:
.align 3
	.quad	12884901911
	.quad	0
	.quad	14
$spoly_go_r37M_info:
_c39f:
	movq %rdi,%r14
	jmp poly_go_r37N_info
	.long  $spoly_go_r37M_info - $spoly_go_r37M_info_dsp



==================== Asm code ====================
.data
.align 3
.align 0
poly_go_r37N_closure:
	.quad	poly_go_r37N_info



==================== Asm code ====================
.text
.align 3
poly_go_r37N_info_dsp:
.align 3
	.quad	8589934607
	.quad	0
	.quad	14
poly_go_r37N_info:
_c39t:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jae _c39j
_c39u:
	leaq poly_go_r37N_closure(%rip),%rbx
	jmp *-8(%r13)
.align 3
	.quad	1
	.quad	30
block_c39m_info:
_c39m:
	movq %rbx,%rax
	andl $7,%eax
	cmpq $1,%rax
	jne _c39r
_c39q:
	movq 8(%rbp),%rbx
	addq $16,%rbp
	jmp stg_ap_0_fast
_c39r:
	addq $16,%rbp
	movq 6(%rbx),%rax
	movq 14(%rbx),%rbx
_n39O:
	movq %rax,%rsi
	movq %rbx,%r14
_c39j:
	leaq block_c39m_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %r14,%rbx
	movq %rsi,-8(%rbp)
	addq $-16,%rbp
	testb $7,%bl
	jne _c39m
_c39n:
	jmp *(%rbx)
	.long  poly_go_r37N_info - poly_go_r37N_info_dsp



==================== Asm code ====================
.const_data
.align 3
.align 0
S3cZ_srt:
	.quad	GHC.List.lastError_closure
	.quad	Prime.$weratos_closure
	.quad	lvl2_r37L_closure



==================== Asm code ====================
.data
.align 3
.align 0
.globl Prime.$weratos_closure
Prime.$weratos_closure:
	.quad	Prime.$weratos_info
	.quad	0



==================== Asm code ====================
.text
.align 3
$dNum_s38e_info_dsp:
.align 3
	.quad	1
	.quad	16
$dNum_s38e_info:
_c3ad:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb _c3ae
_c3af:
	movq stg_upd_frame_info@GOTPCREL(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%r14
	addq $-16,%rbp
	jmp GHC.Real.$p1Real_info
_c3ae:
	jmp *-16(%r13)
	.long  $dNum_s38e_info - $dNum_s38e_info_dsp



==================== Asm code ====================
.text
.align 3
sat_s38h_info_dsp:
.align 3
	.quad	S3cZ_srt-(sat_s38h_info)+0
	.quad	2
	.quad	4294967314
sat_s38h_info:
_c3ao:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb _c3ap
_c3aq:
	movq stg_upd_frame_info@GOTPCREL(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%rdi
	movq 16(%rbx),%rsi
	leaq GHC.List.lastError_closure(%rip),%r14
	addq $-16,%rbp
	jmp $spoly_go_r37M_info
_c3ap:
	jmp *-16(%r13)
	.long  sat_s38h_info - sat_s38h_info_dsp



==================== Asm code ====================
.text
.align 3
sat_s38g_info_dsp:
.align 3
	.quad	2
	.quad	18
sat_s38g_info:
_c3av:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb _c3aw
_c3ax:
	movq stg_upd_frame_info@GOTPCREL(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 24(%rbx),%r14
	movq stg_ap_pp_info@GOTPCREL(%rip),%rax
	movq %rax,-40(%rbp)
	movq 16(%rbx),%rax
	movq %rax,-32(%rbp)
	movq %rax,-24(%rbp)
	addq $-40,%rbp
	jmp GHC.Num.*_info
_c3aw:
	jmp *-16(%r13)
	.long  sat_s38g_info - sat_s38g_info_dsp



==================== Asm code ====================
.text
.align 3
lvl3_s38j_info_dsp:
.align 3
	.quad	1
	.quad	16
lvl3_s38j_info:
_c3aK:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb _c3aL
_c3aM:
	movq stg_upd_frame_info@GOTPCREL(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%r14
	movq stg_ap_p_info@GOTPCREL(%rip),%rax
	movq %rax,-32(%rbp)
	leaq lvl_r30j_closure+1(%rip),%rax
	movq %rax,-24(%rbp)
	addq $-32,%rbp
	jmp GHC.Num.fromInteger_info
_c3aL:
	jmp *-16(%r13)
	.long  lvl3_s38j_info - lvl3_s38j_info_dsp



==================== Asm code ====================
.text
.align 3
sat_s38w_info_dsp:
.align 3
	.quad	3
	.quad	15
sat_s38w_info:
_c3b6:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb _c3b7
_c3b8:
	movq stg_upd_frame_info@GOTPCREL(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%r14
	movq stg_ap_pp_info@GOTPCREL(%rip),%rax
	movq %rax,-40(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	addq $-40,%rbp
	jmp GHC.Real.mod_info
_c3b7:
	jmp *-16(%r13)
	.long  sat_s38w_info - sat_s38w_info_dsp



==================== Asm code ====================
.text
.align 3
go_s38m_info_dsp:
.align 3
	.quad	4294967301
	.quad	4
	.quad	8
go_s38m_info:
_c3bd:
	leaq -56(%rbp),%rax
	cmpq %r15,%rax
	jae _c3aT
_c3be:
	jmp *-8(%r13)
_c3bz:
	movq $56,904(%r13)
	jmp *stg_gc_unpt_r1@GOTPCREL(%rip)
_c3bw:
	addq $56,%r12
	cmpq 856(%r13),%r12
	ja _c3bz
_c3by:
	leaq stg_ap_2_upd_info(%rip),%rbx
	movq %rbx,-48(%r12)
	movq %rax,-32(%r12)
	movq %rcx,-24(%r12)
	leaq :_con_info(%rip),%rax
	movq %rax,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	leaq -48(%r12),%rax
	movq %rax,(%r12)
	leaq -14(%r12),%rbx
	addq $32,%rbp
	jmp *(%rbp)
_c3bl:
	movq $40,904(%r13)
	jmp *stg_gc_unpt_r1@GOTPCREL(%rip)
_c3bb:
	addq $40,%r12
	cmpq 856(%r13),%r12
	ja _c3bl
_c3bk:
	movq 6(%rbx),%rax
	movq 14(%rbx),%rbx
	leaq sat_s38w_info(%rip),%rcx
	movq %rcx,-32(%r12)
	movq 8(%rbp),%rcx
	movq %rcx,-16(%r12)
	movq 16(%rbp),%rcx
	movq %rcx,-8(%r12)
	movq %rax,(%r12)
	leaq block_c3bi_info(%rip),%rcx
	movq %rcx,16(%rbp)
	movq 32(%rbp),%r14
	movq stg_ap_pp_info@GOTPCREL(%rip),%rcx
	movq %rcx,-8(%rbp)
	leaq -32(%r12),%rcx
	movq %rcx,(%rbp)
	movq 24(%rbp),%rcx
	movq %rcx,8(%rbp)
	movq %rbx,24(%rbp)
	movq %rax,32(%rbp)
	addq $-8,%rbp
	jmp GHC.Classes./=_info
.align 3
	.quad	5
	.quad	30
block_c3aW_info:
_c3aW:
	movq %rbx,%rax
	andl $7,%eax
	cmpq $1,%rax
	jne _c3bb
_c3ba:
	leaq []_closure+1(%rip),%rbx
	addq $48,%rbp
	jmp *(%rbp)
.align 3
	.quad	3
	.quad	30
block_c3bi_info:
_c3bi:
	movq 24(%rbp),%rax
	movq 8(%rbp),%rcx
	movq %rbx,%rdx
	andl $7,%edx
	cmpq $1,%rdx
	jne _c3bw
_c3br:
	addq $32,%rbp
_n3dP:
	movq %rcx,%r14
	movq %rax,%rbx
_c3aT:
	leaq block_c3aW_info(%rip),%rax
	movq %rax,-48(%rbp)
	movq %rbx,%rax
	movq %r14,%rbx
	movq 7(%rax),%rcx
	movq %rcx,-40(%rbp)
	movq 15(%rax),%rcx
	movq %rcx,-32(%rbp)
	movq 23(%rax),%rcx
	movq %rcx,-24(%rbp)
	movq 31(%rax),%rcx
	movq %rcx,-16(%rbp)
	movq %rax,-8(%rbp)
	addq $-48,%rbp
	testb $7,%bl
	jne _c3aW
_c3aX:
	jmp *(%rbx)
	.long  go_s38m_info - go_s38m_info_dsp



==================== Asm code ====================
.text
.align 3
sat_s38p_info_dsp:
.align 3
	.quad	3
	.quad	15
sat_s38p_info:
_c3bL:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb _c3bM
_c3bN:
	movq stg_upd_frame_info@GOTPCREL(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%r14
	movq stg_ap_pp_info@GOTPCREL(%rip),%rax
	movq %rax,-40(%rbp)
	movq 32(%rbx),%rax
	movq %rax,-32(%rbp)
	movq 24(%rbx),%rax
	movq %rax,-24(%rbp)
	addq $-40,%rbp
	jmp GHC.Real.mod_info
_c3bM:
	jmp *-16(%r13)
	.long  sat_s38p_info - sat_s38p_info_dsp



==================== Asm code ====================
.text
.align 3
$sgo_s38l_info_dsp:
.align 3
	.quad	8589934607
	.quad	5
	.quad	8
$sgo_s38l_info:
_c3bU:
	leaq -56(%rbp),%rax
	cmpq %r15,%rax
	jb _c3bV
_c3bW:
	addq $40,%r12
	cmpq 856(%r13),%r12
	ja _c3bY
_c3bX:
	movq 6(%rbx),%rax
	movq 14(%rbx),%rcx
	movq 22(%rbx),%rdx
	movq 30(%rbx),%rdi
	movq 38(%rbx),%rbx
	leaq sat_s38p_info(%rip),%r8
	movq %r8,-32(%r12)
	movq %rax,-16(%r12)
	movq %rcx,-8(%r12)
	movq %r14,(%r12)
	leaq block_c3bO_info(%rip),%rax
	movq %rax,-32(%rbp)
	movq %r14,%rax
	movq %rdi,%r14
	movq stg_ap_pp_info@GOTPCREL(%rip),%rcx
	movq %rcx,-56(%rbp)
	leaq -32(%r12),%rcx
	movq %rcx,-48(%rbp)
	movq %rdx,-40(%rbp)
	movq %rbx,-24(%rbp)
	movq %rax,-16(%rbp)
	movq %rsi,-8(%rbp)
	addq $-56,%rbp
	jmp GHC.Classes./=_info
_c3c8:
	movq $56,904(%r13)
	jmp *stg_gc_unpt_r1@GOTPCREL(%rip)
_c3bS:
	addq $56,%r12
	cmpq 856(%r13),%r12
	ja _c3c8
_c3c7:
	leaq stg_ap_2_upd_info(%rip),%rbx
	movq %rbx,-48(%r12)
	movq %rax,-32(%r12)
	movq %rcx,-24(%r12)
	leaq :_con_info(%rip),%rax
	movq %rax,-16(%r12)
	movq 16(%rbp),%rax
	movq %rax,-8(%r12)
	leaq -48(%r12),%rax
	movq %rax,(%r12)
	leaq -14(%r12),%rbx
	addq $32,%rbp
	jmp *(%rbp)
_c3bY:
	movq $40,904(%r13)
_c3bV:
	jmp *-8(%r13)
.align 3
	.quad	3
	.quad	30
block_c3bO_info:
_c3bO:
	movq 8(%rbp),%rax
	movq 24(%rbp),%rcx
	movq %rbx,%rdx
	andl $7,%edx
	cmpq $1,%rdx
	jne _c3bS
_c3bR:
	movq %rcx,%r14
	movq %rax,%rbx
	addq $32,%rbp
	jmp go_s38m_info
	.long  $sgo_s38l_info - $sgo_s38l_info_dsp



==================== Asm code ====================
.text
.align 3
sat_s38D_info_dsp:
.align 3
	.quad	S3cZ_srt-(sat_s38D_info)+8
	.quad	6
	.quad	4294967311
sat_s38D_info:
_c3c9:
	leaq -64(%rbp),%rax
	cmpq %r15,%rax
	jb _c3ch
_c3ci:
	addq $24,%r12
	cmpq 856(%r13),%r12
	ja _c3ck
_c3cj:
	movq stg_upd_frame_info@GOTPCREL(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq 24(%rbx),%rcx
	movq 32(%rbx),%rdx
	movq 40(%rbx),%rsi
	movq 48(%rbx),%rdi
	movq 56(%rbx),%rbx
	leaq lvl3_s38j_info(%rip),%r8
	movq %r8,-16(%r12)
	movq %rdi,(%r12)
	leaq block_c3aN_info(%rip),%rdi
	movq %rdi,-64(%rbp)
	movq %rbx,%r14
	leaq -16(%r12),%rbx
	movq %rbx,-56(%rbp)
	movq %rax,-48(%rbp)
	movq %rcx,-40(%rbp)
	movq %rdx,-32(%rbp)
	movq %rsi,-24(%rbp)
	addq $-64,%rbp
	jmp GHC.Classes.$p1Ord_info
_c3cr:
	movq $24,904(%r13)
	jmp *stg_gc_pp@GOTPCREL(%rip)
.align 3
	.quad	0
	.quad	30
block_c3ce_info:
_c3ce:
	addq $24,%r12
	cmpq 856(%r13),%r12
	ja _c3cr
_c3cq:
	leaq :_con_info(%rip),%rax
	movq %rax,-16(%r12)
	movq %rbx,-8(%r12)
	movq %r14,(%r12)
	leaq -14(%r12),%rbx
	addq $8,%rbp
	jmp *(%rbp)
_c3cn:
	movq $88,904(%r13)
	jmp *stg_gc_unpt_r1@GOTPCREL(%rip)
.align 3
	.quad	S3cZ_srt-(block_c3aN_info)+8
	.quad	5
	.quad	4294967326
block_c3aN_info:
_c3aN:
	addq $88,%r12
	cmpq 856(%r13),%r12
	ja _c3cn
_c3cm:
	leaq go_s38m_info(%rip),%rax
	movq %rax,-80(%r12)
	movq 16(%rbp),%rax
	movq %rax,-72(%r12)
	movq 24(%rbp),%rcx
	movq %rcx,-64(%r12)
	movq 8(%rbp),%rdx
	movq %rdx,-56(%r12)
	movq %rbx,-48(%r12)
	leaq $sgo_s38l_info(%rip),%rsi
	movq %rsi,-40(%r12)
	movq %rax,-32(%r12)
	movq %rcx,-24(%r12)
	movq %rdx,-16(%r12)
	movq %rbx,-8(%r12)
	leaq -79(%r12),%rax
	movq %rax,(%r12)
	leaq block_c3ca_info(%rip),%rax
	movq %rax,8(%rbp)
	movq 40(%rbp),%rsi
	movq 32(%rbp),%r14
	leaq -38(%r12),%rbx
	addq $8,%rbp
	jmp $sgo_s38l_info
_c3ck:
	movq $24,904(%r13)
_c3ch:
	jmp *-16(%r13)
.align 3
	.quad	S3cZ_srt-(block_c3ca_info)+8
	.quad	900
	.quad	4294967326
block_c3ca_info:
_c3ca:
	leaq block_c3ce_info(%rip),%rax
	movq %rax,32(%rbp)
	movq %rbx,%rsi
	movq 8(%rbp),%r14
	addq $32,%rbp
	jmp Prime.$weratos_info
	.long  sat_s38D_info - sat_s38D_info_dsp



==================== Asm code ====================
.text
.align 3
Prime.$weratos_info_dsp:
.align 3
	.quad	S3cZ_srt-(Prime.$weratos_info)+0
	.quad	8589934607
	.quad	0
	.quad	30064771086
.globl Prime.$weratos_info
Prime.$weratos_info:
_c3cw:
	leaq -88(%rbp),%rax
	cmpq %r15,%rax
	jb _c3cx
_c3cy:
	leaq block_c39T_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rsi,%rbx
	movq %r14,-8(%rbp)
	addq $-16,%rbp
	testb $7,%bl
	jne _c39T
_c39U:
	jmp *(%rbx)
_c3cW:
	movq 40(%rbp),%r14
	movq %rax,%rbx
	addq $64,%rbp
	jmp *(%rbp)
_c3cS:
	movq $64,904(%r13)
	jmp *stg_gc_unpt_r1@GOTPCREL(%rip)
.align 3
	.quad	S3cZ_srt-(block_c3ay_info)+8
	.quad	7
	.quad	4294967326
block_c3ay_info:
_c3ay:
	movq 48(%rbp),%rax
	movq %rbx,%rcx
	andl $7,%ecx
	cmpq $1,%rcx
	jne _c3cW
_c3cP:
	addq $64,%r12
	cmpq 856(%r13),%r12
	ja _c3cS
_c3cR:
	leaq sat_s38D_info(%rip),%rbx
	movq %rbx,-56(%r12)
	movq 56(%rbp),%rbx
	movq %rbx,-40(%r12)
	movq %rax,-32(%r12)
	movq 24(%rbp),%rbx
	movq %rbx,-24(%r12)
	movq 32(%rbp),%rbx
	movq %rbx,-16(%r12)
	movq 16(%rbp),%rbx
	movq %rbx,-8(%r12)
	movq 8(%rbp),%rbx
	movq %rbx,(%r12)
	leaq -56(%r12),%r14
	movq %rax,%rbx
	addq $64,%rbp
	jmp *(%rbp)
_c3cN:
	movq $64,904(%r13)
	jmp *stg_gc_unpt_r1@GOTPCREL(%rip)
.align 3
	.quad	S3cZ_srt-(block_c3ag_info)+0
	.quad	6
	.quad	12884901918
block_c3ag_info:
_c3ag:
	addq $64,%r12
	cmpq 856(%r13),%r12
	ja _c3cN
_c3cM:
	leaq sat_s38h_info(%rip),%rax
	movq %rax,-56(%r12)
	movq 16(%rbp),%rax
	movq %rax,-40(%r12)
	movq 24(%rbp),%rax
	movq %rax,-32(%r12)
	leaq sat_s38g_info(%rip),%rax
	movq %rax,-24(%r12)
	movq 40(%rbp),%rax
	movq %rax,-8(%r12)
	movq 8(%rbp),%rax
	movq %rax,(%r12)
	leaq block_c3ay_info(%rip),%rax
	movq %rax,-8(%rbp)
	movq %rbx,%r14
	movq stg_ap_pp_info@GOTPCREL(%rip),%rax
	movq %rax,-32(%rbp)
	leaq -24(%r12),%rax
	movq %rax,-24(%rbp)
	leaq -56(%r12),%rax
	movq %rax,-16(%rbp)
	movq %rbx,(%rbp)
	addq $-32,%rbp
	jmp GHC.Classes.>_info
_c3cK:
	movq $24,904(%r13)
	jmp *stg_gc_unpt_r1@GOTPCREL(%rip)
.align 3
	.quad	S3cZ_srt-(block_c3a5_info)+0
	.quad	5
	.quad	12884901918
block_c3a5_info:
_c3a5:
	addq $24,%r12
	cmpq 856(%r13),%r12
	ja _c3cK
_c3cJ:
	leaq $dNum_s38e_info(%rip),%rax
	movq %rax,-16(%r12)
	movq %rbx,(%r12)
	leaq block_c3ag_info(%rip),%rax
	movq %rax,-8(%rbp)
	movq %rbx,%r14
	leaq -16(%r12),%rax
	movq %rax,(%rbp)
	addq $-8,%rbp
	jmp GHC.Real.$p2Real_info
_c3cH:
	leaq block_c3a5_info(%rip),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbp),%r14
	movq 6(%rbx),%rax
	movq %rax,-16(%rbp)
	movq 14(%rbx),%rax
	movq %rax,-8(%rbp)
	movq %rbx,(%rbp)
	addq $-24,%rbp
	jmp GHC.Real.$p1Integral_info
.align 3
	.quad	S3cZ_srt-(block_c39Z_info)+0
	.quad	2
	.quad	12884901918
block_c39Z_info:
_c39Z:
	movq %rbx,%rax
	andl $7,%eax
	cmpq $1,%rax
	jne _c3cH
_c3cF:
	leaq GHC.Types.[]_closure+1(%rip),%r14
	movq 8(%rbp),%rbx
	addq $24,%rbp
	jmp *(%rbp)
_c3cx:
	leaq Prime.$weratos_closure(%rip),%rbx
	jmp *-8(%r13)
.align 3
	.quad	S3cZ_srt-(block_c39T_info)+0
	.quad	1
	.quad	30064771102
block_c39T_info:
_c39T:
	movq %rbx,%rax
	andl $7,%eax
	cmpq $1,%rax
	jne _c3cu
_c3ct:
	leaq lvl2_r37L_closure(%rip),%rbx
	addq $16,%rbp
	jmp *(%rbx)
_c3cu:
	leaq block_c39Z_info(%rip),%rax
	movq %rax,-8(%rbp)
	movq 6(%rbx),%rax
	movq 14(%rbx),%rbx
	movq %rax,(%rbp)
	addq $-8,%rbp
	testb $7,%bl
	jne _c39Z
_c3a0:
	jmp *(%rbx)
	.long  Prime.$weratos_info - Prime.$weratos_info_dsp



==================== Asm code ====================
.data
.align 3
.align 0
.globl Prime.primeList1_closure
Prime.primeList1_closure:
	.quad	GHC.Integer.Type.S#_con_info
	.quad	2



==================== Asm code ====================
.const_data
.align 3
.align 0
S3fw_srt:
	.quad	Prime.$weratos_closure
	.quad	Prime.$wprimeList_closure



==================== Asm code ====================
.data
.align 3
.align 0
.globl Prime.$wprimeList_closure
Prime.$wprimeList_closure:
	.quad	Prime.$wprimeList_info
	.quad	0



==================== Asm code ====================
.text
.align 3
sat_s38J_info_dsp:
.align 3
	.quad	1
	.quad	16
sat_s38J_info:
_c3f6:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb _c3fa
_c3fb:
	movq stg_upd_frame_info@GOTPCREL(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	leaq block_c3f4_info(%rip),%rax
	movq %rax,-24(%rbp)
	movq 16(%rbx),%r14
	addq $-24,%rbp
	jmp GHC.Real.$p1Integral_info
_c3fa:
	jmp *-16(%r13)
.align 3
	.quad	0
	.quad	30
block_c3f9_info:
_c3f9:
	movq %rbx,%r14
	movq stg_ap_p_info@GOTPCREL(%rip),%rax
	movq %rax,-8(%rbp)
	leaq Prime.primeList1_closure+1(%rip),%rax
	movq %rax,(%rbp)
	addq $-8,%rbp
	jmp GHC.Num.fromInteger_info
.align 3
	.quad	0
	.quad	30
block_c3f4_info:
_c3f4:
	leaq block_c3f9_info(%rip),%rax
	movq %rax,(%rbp)
	movq %rbx,%r14
	jmp GHC.Real.$p1Real_info
	.long  sat_s38J_info - sat_s38J_info_dsp



==================== Asm code ====================
.text
.align 3
Prime.$wprimeList_info_dsp:
.align 3
	.quad	S3fw_srt-(Prime.$wprimeList_info)+0
	.quad	8589934607
	.quad	0
	.quad	12884901902
.globl Prime.$wprimeList_info
Prime.$wprimeList_info:
_c3fj:
	leaq -48(%rbp),%rax
	cmpq %r15,%rax
	jb _c3fn
_c3fo:
	addq $24,%r12
	cmpq 856(%r13),%r12
	ja _c3fq
_c3fp:
	leaq sat_s38J_info(%rip),%rax
	movq %rax,-16(%r12)
	movq %r14,(%r12)
	leaq block_c3fh_info(%rip),%rax
	movq %rax,-32(%rbp)
	movq %r14,%rax
	leaq -16(%r12),%rbx
	movq %rbx,-24(%rbp)
	movq %rax,-16(%rbp)
	movq %rsi,-8(%rbp)
	addq $-32,%rbp
	jmp GHC.Real.$p2Integral_info
_c3fq:
	movq $24,904(%r13)
_c3fn:
	leaq Prime.$wprimeList_closure(%rip),%rbx
	jmp *-8(%r13)
.align 3
	.quad	S3fw_srt-(block_c3fm_info)+0
	.quad	130
	.quad	4294967326
block_c3fm_info:
_c3fm:
	movq %rbx,%rsi
	movq 8(%rbp),%r14
	addq $24,%rbp
	jmp Prime.$weratos_info
.align 3
	.quad	S3fw_srt-(block_c3fh_info)+0
	.quad	3
	.quad	4294967326
block_c3fh_info:
_c3fh:
	movq 8(%rbp),%rax
	leaq block_c3fm_info(%rip),%rcx
	movq %rcx,8(%rbp)
	movq %rbx,%r14
	movq stg_ap_pp_info@GOTPCREL(%rip),%rbx
	movq %rbx,-16(%rbp)
	movq %rax,-8(%rbp)
	movq 24(%rbp),%rax
	movq %rax,(%rbp)
	addq $-16,%rbp
	jmp GHC.Enum.enumFromTo_info
	.long  Prime.$wprimeList_info - Prime.$wprimeList_info_dsp



==================== Asm code ====================
.const_data
.align 3
.align 0
S3g3_srt:
	.quad	Prime.$wprimeList_closure
	.quad	Prime.primeList_closure



==================== Asm code ====================
.data
.align 3
.align 0
.globl Prime.primeList_closure
Prime.primeList_closure:
	.quad	Prime.primeList_info
	.quad	0



==================== Asm code ====================
.text
.align 3
Prime.primeList_info_dsp:
.align 3
	.quad	S3g3_srt-(Prime.primeList_info)+0
	.quad	8589934607
	.quad	0
	.quad	12884901902
.globl Prime.primeList_info
Prime.primeList_info:
_c3fX:
	leaq -8(%rbp),%rax
	cmpq %r15,%rax
	jb _c3fY
_c3fZ:
	leaq block_c3fU_info(%rip),%rax
	movq %rax,-8(%rbp)
	addq $-8,%rbp
	jmp Prime.$wprimeList_info
_c3g2:
	movq $24,904(%r13)
	jmp *stg_gc_pp@GOTPCREL(%rip)
.align 3
	.quad	0
	.quad	30
block_c3fU_info:
_c3fU:
	addq $24,%r12
	cmpq 856(%r13),%r12
	ja _c3g2
_c3g1:
	leaq :_con_info(%rip),%rax
	movq %rax,-16(%r12)
	movq %rbx,-8(%r12)
	movq %r14,(%r12)
	leaq -14(%r12),%rbx
	addq $8,%rbp
	jmp *(%rbp)
_c3fY:
	leaq Prime.primeList_closure(%rip),%rbx
	jmp *-8(%r13)
	.long  Prime.primeList_info - Prime.primeList_info_dsp



==================== Asm code ====================
.section	__TEXT,__cstring,cstring_literals
.align 1
.align 0
.globl Prime.$trModule4_bytes
Prime.$trModule4_bytes:
	.asciz "main"



==================== Asm code ====================
.data
.align 3
.align 0
.globl Prime.$trModule3_closure
Prime.$trModule3_closure:
	.quad	GHC.Types.TrNameS_con_info
	.quad	Prime.$trModule4_bytes



==================== Asm code ====================
.section	__TEXT,__cstring,cstring_literals
.align 1
.align 0
.globl Prime.$trModule2_bytes
Prime.$trModule2_bytes:
	.asciz "Prime"



==================== Asm code ====================
.data
.align 3
.align 0
.globl Prime.$trModule1_closure
Prime.$trModule1_closure:
	.quad	GHC.Types.TrNameS_con_info
	.quad	Prime.$trModule2_bytes



==================== Asm code ====================
.data
.align 3
.align 0
.globl Prime.$trModule_closure
Prime.$trModule_closure:
	.quad	GHC.Types.Module_con_info
	.quad	Prime.$trModule3_closure+1
	.quad	Prime.$trModule1_closure+1
	.quad	3


[2 of 2] Compiling Main             ( Main.hs, Main.o )

==================== Asm code ====================
.data
.align 3
.align 0
.globl __stginit_main:Main
__stginit_main:Main:



==================== Asm code ====================
.data
.align 3
.align 0
lvl_r5rG_closure:
	.quad	GHC.Integer.Type.S#_con_info
	.quad	1



==================== Asm code ====================
.data
.align 3
.align 0
lim_r5rH_closure:
	.quad	GHC.Integer.Type.S#_con_info
	.quad	1000000



==================== Asm code ====================
.const_data
.align 3
.align 0
S5sy_srt:
	.quad	Main.main_go_closure
	.quad	GHC.Integer.Type.plusInteger_closure



==================== Asm code ====================
.data
.align 3
.align 0
.globl Main.main_go_closure
Main.main_go_closure:
	.quad	Main.main_go_info
	.quad	0



==================== Asm code ====================
.text
.align 3
sat_s5rP_info_dsp:
.align 3
	.quad	S5sy_srt-(sat_s5rP_info)+0
	.quad	1
	.quad	12884901904
sat_s5rP_info:
_c5si:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb _c5sj
_c5sk:
	movq stg_upd_frame_info@GOTPCREL(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	leaq block_c5sg_info(%rip),%rax
	movq %rax,-24(%rbp)
	leaq lvl_r5rG_closure+1(%rip),%rsi
	movq 16(%rbx),%r14
	addq $-24,%rbp
	jmp GHC.Integer.Type.plusInteger_info
_c5sj:
	jmp *-16(%r13)
.align 3
	.quad	S5sy_srt-(block_c5sg_info)+0
	.quad	0
	.quad	4294967326
block_c5sg_info:
_c5sg:
	movq %rbx,%r14
	addq $8,%rbp
	jmp Main.main_go_info
	.long  sat_s5rP_info - sat_s5rP_info_dsp



==================== Asm code ====================
.text
.align 3
Main.main_go_info_dsp:
.align 3
	.quad	S5sy_srt-(Main.main_go_info)+0
	.quad	4294967301
	.quad	0
	.quad	12884901902
.globl Main.main_go_info
Main.main_go_info:
_c5so:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb _c5sp
_c5sq:
	leaq block_c5s6_info(%rip),%rax
	movq %rax,-16(%rbp)
	leaq lim_r5rH_closure+1(%rip),%rsi
	movq %r14,%rax
	movq %rax,-8(%rbp)
	addq $-16,%rbp
	jmp GHC.Integer.Type.gtInteger#_info
_c5sx:
	addq $-48,%r12
	leaq []_closure+1(%rip),%rbx
	addq $16,%rbp
	jmp *(%rbp)
.align 3
	.quad	S5sy_srt-(block_c5s6_info)+0
	.quad	1
	.quad	12884901918
block_c5s6_info:
_c5s6:
	addq $48,%r12
	cmpq 856(%r13),%r12
	ja _c5st
_c5ss:
	testq %rbx,%rbx
	jne _c5sx
_c5sw:
	leaq sat_s5rP_info(%rip),%rax
	movq %rax,-40(%r12)
	movq 8(%rbp),%rax
	movq %rax,-24(%r12)
	leaq :_con_info(%rip),%rbx
	movq %rbx,-16(%r12)
	movq %rax,-8(%r12)
	leaq -40(%r12),%rax
	movq %rax,(%r12)
	leaq -14(%r12),%rbx
	addq $16,%rbp
	jmp *(%rbp)
_c5st:
	movq $48,904(%r13)
	jmp *stg_gc_unbx_r1@GOTPCREL(%rip)
_c5sp:
	leaq Main.main_go_closure(%rip),%rbx
	jmp *-8(%r13)
	.long  Main.main_go_info - Main.main_go_info_dsp



==================== Asm code ====================
.const_data
.align 3
.align 0
S5sW_srt:
	.quad	Main.main_go_closure



==================== Asm code ====================
.data
.align 3
.align 0
.globl Main.main3_closure
Main.main3_closure:
	.quad	Main.main3_info
	.quad	0
	.quad	0
	.quad	0



==================== Asm code ====================
.text
.align 3
Main.main3_info_dsp:
.align 3
	.quad	S5sW_srt-(Main.main3_info)+0
	.quad	0
	.quad	4294967317
.globl Main.main3_info
Main.main3_info:
_c5sT:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb _c5sU
_c5sV:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je _c5sS
_c5sR:
	movq stg_bh_upd_frame_info@GOTPCREL(%rip),%rbx
	movq %rbx,-16(%rbp)
	movq %rax,-8(%rbp)
	leaq Prime.primeList1_closure(%rip),%r14
	addq $-16,%rbp
	jmp Main.main_go_info
_c5sU:
	jmp *-16(%r13)
_c5sS:
	jmp *(%rbx)
	.long  Main.main3_info - Main.main3_info_dsp



==================== Asm code ====================
.const_data
.align 3
.align 0
S5tu_srt:
	.quad	Prime.$weratos_closure
	.quad	GHC.Real.$fIntegralInteger_closure
	.quad	Main.main3_closure



==================== Asm code ====================
.data
.align 3
.align 0
.globl Main.main2_closure
Main.main2_closure:
	.quad	Main.main2_info
	.quad	0
	.quad	0
	.quad	0



==================== Asm code ====================
.text
.align 3
Main.main2_info_dsp:
.align 3
	.quad	S5tu_srt-(Main.main2_info)+0
	.quad	0
	.quad	30064771093
.globl Main.main2_info
Main.main2_info:
_c5tf:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb _c5tl
_c5tm:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je _c5t9
_c5t8:
	movq stg_bh_upd_frame_info@GOTPCREL(%rip),%rbx
	movq %rbx,-16(%rbp)
	movq %rax,-8(%rbp)
	leaq block_c5ta_info(%rip),%rax
	movq %rax,-24(%rbp)
	leaq Main.main3_closure(%rip),%rsi
	leaq GHC.Real.$fIntegralInteger_closure(%rip),%r14
	addq $-24,%rbp
	jmp Prime.$weratos_info
_c5tt:
	movq $24,904(%r13)
	jmp *stg_gc_pp@GOTPCREL(%rip)
.align 3
	.quad	0
	.quad	30
block_c5ti_info:
_c5ti:
	addq $24,%r12
	cmpq 856(%r13),%r12
	ja _c5tt
_c5ts:
	leaq :_con_info(%rip),%rax
	movq %rax,-16(%r12)
	movq %rbx,-8(%r12)
	movq %r14,(%r12)
	leaq -14(%r12),%rbx
	addq $8,%rbp
	jmp *(%rbp)
_c5tp:
	movq $24,904(%r13)
	jmp *stg_gc_pp@GOTPCREL(%rip)
.align 3
	.quad	0
	.quad	30
block_c5ta_info:
_c5ta:
	addq $24,%r12
	cmpq 856(%r13),%r12
	ja _c5tp
_c5to:
	leaq :_con_info(%rip),%rax
	movq %rax,-16(%r12)
	movq %rbx,-8(%r12)
	movq %r14,(%r12)
	leaq block_c5td_info(%rip),%rax
	movq %rax,(%rbp)
	xorl %esi,%esi
	leaq -14(%r12),%r14
	jmp GHC.List.$wlenAcc_info
_c5tl:
	jmp *-16(%r13)
.align 3
	.quad	0
	.quad	30
block_c5td_info:
_c5td:
	leaq block_c5ti_info(%rip),%rax
	movq %rax,(%rbp)
	leaq GHC.Types.[]_closure+1(%rip),%rdi
	movq %rbx,%rsi
	xorl %r14d,%r14d
	jmp GHC.Show.$wshowSignedInt_info
_c5t9:
	jmp *(%rbx)
	.long  Main.main2_info - Main.main2_info_dsp



==================== Asm code ====================
.const_data
.align 3
.align 0
S5tO_srt:
	.quad	Main.main2_closure
	.quad	GHC.IO.Handle.FD.stdout_closure
	.quad	GHC.IO.Handle.Text.hPutStr2_closure



==================== Asm code ====================
.data
.align 3
.align 0
.globl Main.main1_closure
Main.main1_closure:
	.quad	Main.main1_info
	.quad	0



==================== Asm code ====================
.text
.align 3
Main.main1_info_dsp:
.align 3
	.quad	S5tO_srt-(Main.main1_info)+0
	.quad	4294967299
	.quad	0
	.quad	30064771086
.globl Main.main1_info
Main.main1_info:
_c5tL:
	leaq GHC.Types.True_closure+2(%rip),%rdi
	leaq Main.main2_closure(%rip),%rsi
	leaq GHC.IO.Handle.FD.stdout_closure(%rip),%r14
	jmp GHC.IO.Handle.Text.hPutStr2_info
	.long  Main.main1_info - Main.main1_info_dsp



==================== Asm code ====================
.const_data
.align 3
.align 0
S5u0_srt:
	.quad	Main.main1_closure



==================== Asm code ====================
.data
.align 3
.align 0
.globl Main.main_closure
Main.main_closure:
	.quad	Main.main_info
	.quad	0



==================== Asm code ====================
.text
.align 3
Main.main_info_dsp:
.align 3
	.quad	S5u0_srt-(Main.main_info)+0
	.quad	4294967299
	.quad	0
	.quad	4294967310
.globl Main.main_info
Main.main_info:
_c5tX:
	jmp Main.main1_info
	.long  Main.main_info - Main.main_info_dsp



==================== Asm code ====================
.const_data
.align 3
.align 0
S5uc_srt:
	.quad	GHC.TopHandler.runMainIO1_closure
	.quad	Main.main1_closure



==================== Asm code ====================
.data
.align 3
.align 0
.globl Main.main4_closure
Main.main4_closure:
	.quad	Main.main4_info
	.quad	0



==================== Asm code ====================
.text
.align 3
Main.main4_info_dsp:
.align 3
	.quad	S5uc_srt-(Main.main4_info)+0
	.quad	4294967299
	.quad	0
	.quad	12884901902
.globl Main.main4_info
Main.main4_info:
_c5u9:
	leaq Main.main1_closure+1(%rip),%r14
	jmp GHC.TopHandler.runMainIO1_info
	.long  Main.main4_info - Main.main4_info_dsp



==================== Asm code ====================
.const_data
.align 3
.align 0
S5uo_srt:
	.quad	Main.main4_closure



==================== Asm code ====================
.data
.align 3
.align 0
.globl :Main.main_closure
:Main.main_closure:
	.quad	:Main.main_info
	.quad	0



==================== Asm code ====================
.text
.align 3
:Main.main_info_dsp:
.align 3
	.quad	S5uo_srt-(:Main.main_info)+0
	.quad	4294967299
	.quad	0
	.quad	4294967310
.globl :Main.main_info
:Main.main_info:
_c5ul:
	jmp Main.main4_info
	.long  :Main.main_info - :Main.main_info_dsp



==================== Asm code ====================
.section	__TEXT,__cstring,cstring_literals
.align 1
.align 0
.globl Main.$trModule4_bytes
Main.$trModule4_bytes:
	.asciz "main"



==================== Asm code ====================
.data
.align 3
.align 0
.globl Main.$trModule3_closure
Main.$trModule3_closure:
	.quad	GHC.Types.TrNameS_con_info
	.quad	Main.$trModule4_bytes



==================== Asm code ====================
.section	__TEXT,__cstring,cstring_literals
.align 1
.align 0
.globl Main.$trModule2_bytes
Main.$trModule2_bytes:
	.asciz "Main"



==================== Asm code ====================
.data
.align 3
.align 0
.globl Main.$trModule1_closure
Main.$trModule1_closure:
	.quad	GHC.Types.TrNameS_con_info
	.quad	Main.$trModule2_bytes



==================== Asm code ====================
.data
.align 3
.align 0
.globl Main.$trModule_closure
Main.$trModule_closure:
	.quad	GHC.Types.Module_con_info
	.quad	Main.$trModule3_closure+1
	.quad	Main.$trModule1_closure+1
	.quad	3


Linking Main ...
