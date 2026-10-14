
/******************************************/
/* Function Prefix                        */
/******************************************/



/******************************************/
/* Begin Kernel                           */
/******************************************/

// Component.Signature.SignatureDefault
.amdgcn_target "amdgcn-amd-amdhsa--gfx1010"
.text
.protected Cijk_Ailk_Bjlk_SB_MT256x64x8_SN_K1_PGR1_TT16_8_WG16_8_1
.globl Cijk_Ailk_Bjlk_SB_MT256x64x8_SN_K1_PGR1_TT16_8_WG16_8_1
.p2align 8
.type Cijk_Ailk_Bjlk_SB_MT256x64x8_SN_K1_PGR1_TT16_8_WG16_8_1,@function
.section .rodata,#alloc
.p2align 6
.amdhsa_kernel Cijk_Ailk_Bjlk_SB_MT256x64x8_SN_K1_PGR1_TT16_8_WG16_8_1
  .amdhsa_user_sgpr_kernarg_segment_ptr 1
  .amdhsa_user_sgpr_count 2
  .amdhsa_next_free_vgpr 209 // vgprs
  .amdhsa_next_free_sgpr 63 // sgprs
  .amdhsa_group_segment_fixed_size 26624 // lds bytes
  .amdhsa_wavefront_size32 1 // 32-thread wavefronts
  .amdhsa_private_segment_fixed_size 0
  .amdhsa_system_sgpr_workgroup_id_x 1
  .amdhsa_system_sgpr_workgroup_id_y 1
  .amdhsa_system_sgpr_workgroup_id_z 1
  .amdhsa_system_vgpr_workitem_id 0
  .amdhsa_float_denorm_mode_32 3
  .amdhsa_float_denorm_mode_16_64 3
.end_amdhsa_kernel
.text

/******************************************/
/* Optimizations and Config:              */
/******************************************/
/* ThreadTile= 16 x 8 */
/* SubGroup= 16 x 8 */
/* VectorWidth=4 */
/* GlobalLoadVectorWidthA=4, GlobalLoadVectorWidthB=4 */
/* DirectToLdsA=False */
/* DirectToLdsB=False */
/* UseSgprForGRO=False */
.amdgpu_metadata
---
amdhsa.version:
  - 1
  - 1
amdhsa.target: amdgcn-amd-amdhsa--gfx1010
amdhsa.kernels:
  - .name: Cijk_Ailk_Bjlk_SB_MT256x64x8_SN_K1_PGR1_TT16_8_WG16_8_1
    .symbol: 'Cijk_Ailk_Bjlk_SB_MT256x64x8_SN_K1_PGR1_TT16_8_WG16_8_1.kd'
    .language:                   OpenCL C
    .language_version:
      - 2
      - 0
    .args:
      - .name:            Tensor2dSizeA
        .size:            8
        .offset:          0
        .value_kind:      by_value
        .value_type:      u64
      - .name:            Tensor2dSizeB
        .size:            8
        .offset:          8
        .value_kind:      by_value
        .value_type:      u64
      - .name:            AddressD
        .size:            8
        .offset:          16
        .value_kind:      by_value
        .value_type:      u64
      - .name:            AddressC
        .size:            8
        .offset:          24
        .value_kind:      by_value
        .value_type:      u64
      - .name:            AddressA
        .size:            8
        .offset:          32
        .value_kind:      by_value
        .value_type:      u64
      - .name:            AddressB
        .size:            8
        .offset:          40
        .value_kind:      by_value
        .value_type:      u64
      - .name:            Alpha
        .size:            4
        .offset:          48
        .value_kind:      by_value
        .value_type:      u32
      - .name:            Beta
        .size:            4
        .offset:          52
        .value_kind:      by_value
        .value_type:      u32
      - .name:            StridesD
        .size:            8
        .offset:          56
        .value_kind:      by_value
        .value_type:      u64
      - .name:            StridesC
        .size:            8
        .offset:          64
        .value_kind:      by_value
        .value_type:      u64
      - .name:            StridesA
        .size:            8
        .offset:          72
        .value_kind:      by_value
        .value_type:      u64
      - .name:            StridesB
        .size:            8
        .offset:          80
        .value_kind:      by_value
        .value_type:      u64
      - .name:            SizesFree
        .size:            12
        .offset:          88
        .value_kind:      by_value
        .value_type:      u96
      - .name:            SizesSum
        .size:            4
        .offset:          100
        .value_kind:      by_value
        .value_type:      u32
      - .name:            OrigStaggerUIter
        .size:            4
        .offset:          104
        .value_kind:      by_value
        .value_type:      u32
      - .name:            NumWorkGroups0
        .size:            4
        .offset:          108
        .value_kind:      by_value
        .value_type:      u32
      - .name:            NumWorkGroups1
        .size:            4
        .offset:          112
        .value_kind:      by_value
        .value_type:      u32
      - .name:            NumFullBlocks
        .size:            4
        .offset:          116
        .value_kind:      by_value
        .value_type:      u32
      - .name:            WgmRemainder1
        .size:            4
        .offset:          120
        .value_kind:      by_value
        .value_type:      u32
      - .name:            MagicNumberWgmRemainder1
        .size:            4
        .offset:          124
        .value_kind:      by_value
        .value_type:      u32
    .group_segment_fixed_size:   26624
    .kernarg_segment_align:      8
    .kernarg_segment_size:       128
    .max_flat_workgroup_size:    128
    .private_segment_fixed_size: 0
    .sgpr_count:                 63
    .sgpr_spill_count:           0
    .vgpr_count:                 209
    .vgpr_spill_count:           0
    .wavefront_size:             32
...
.end_amdgpu_metadata
Cijk_Ailk_Bjlk_SB_MT256x64x8_SN_K1_PGR1_TT16_8_WG16_8_1:

/******************************************/
/* Asm syntax workarounds                 */
/******************************************/
.macro _v_add_co_u32 dst:req, cc:req, src0:req, src1:req, dpp=
   v_add_co_u32 \dst, \cc, \src0, \src1 \dpp
.endm

.macro _v_add_u32 dst:req, src0:req, src1:req, dpp=
   v_add_nc_u32 \dst, \src0 \src1 \dpp
.endm

.macro _v_add_i32 dst:req, src0:req, src1:req, dpp=
   v_add_nc_i32 \dst, \src0 \src1 \dpp
.endm

.macro _v_addc_co_u32 dst:req, ccOut:req, src0:req, ccIn:req, src1:req, dpp=
   v_add_co_ci_u32 \dst, \ccOut, \src0, \ccIn, \src1 \dpp
.endm

.macro _v_sub_co_u32 dst:req, cc:req, src0:req, src1:req, dpp=
   v_sub_co_u32 \dst, \cc, \src0, \src1 \dpp
.endm

.macro _v_sub_u32 dst:req, src0:req, src1:req, dpp=
   v_sub_nc_u32 \dst, \src0, \src1 \dpp
.endm

.macro _v_sub_i32 dst:req, src0:req, src1:req, dpp=
   v_sub_nc_i32 \dst, \src0, \src1 \dpp
.endm

.macro _v_add_lshl_u32 dst:req, src0:req, src1:req, shiftCnt:req
    v_add_lshl_u32 \dst, \src0, \src1, \shiftCnt
.endm

.macro _v_lshl_add_u32 dst:req, src0:req, src1:req, shiftCnt:req
    v_lshl_add_u32 \dst, \src0, \src1, \shiftCnt
.endm

.macro _v_lshl_or_b32 dst:req, src0:req, shiftCnt:req, src1:req
    v_lshl_or_b32 \dst, \src0, \shiftCnt, \src1
.endm

.macro _v_dot2acc_f32_f16 dst, src0, src1
v_dot2c_f32_f16 \dst, \src0, \src1
.endm

.macro _v_cmpx_lt_i16 dst, src0, src1=
   v_cmp_lt_i16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_lt_i32 dst, src0, src1=
   v_cmp_lt_i32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_lt_i64 dst, src0, src1=
   v_cmp_lt_i64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_lt_u16 dst, src0, src1=
   v_cmp_lt_u16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_lt_u32 dst, src0, src1=
   v_cmp_lt_u32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_lt_u64 dst, src0, src1=
   v_cmp_lt_u64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_eq_i16 dst, src0, src1=
   v_cmp_eq_i16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_eq_i32 dst, src0, src1=
   v_cmp_eq_i32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_eq_i64 dst, src0, src1=
   v_cmp_eq_i64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_eq_u16 dst, src0, src1=
   v_cmp_eq_u16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_eq_u32 dst, src0, src1=
   v_cmp_eq_u32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_eq_u64 dst, src0, src1=
   v_cmp_eq_u64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_le_i16 dst, src0, src1=
   v_cmp_le_i16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_le_i32 dst, src0, src1=
   v_cmp_le_i32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_le_i64 dst, src0, src1=
   v_cmp_le_i64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_le_u16 dst, src0, src1=
   v_cmp_le_u16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_le_u32 dst, src0, src1=
   v_cmp_le_u32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_le_u64 dst, src0, src1=
   v_cmp_le_u64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_gt_i16 dst, src0, src1=
   v_cmp_gt_i16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_gt_i32 dst, src0, src1=
   v_cmp_gt_i32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_gt_i64 dst, src0, src1=
   v_cmp_gt_i64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_gt_u16 dst, src0, src1=
   v_cmp_gt_u16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_gt_u32 dst, src0, src1=
   v_cmp_gt_u32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_gt_u64 dst, src0, src1=
   v_cmp_gt_u64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_ne_i16 dst, src0, src1=
   v_cmp_ne_i16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_ne_i32 dst, src0, src1=
   v_cmp_ne_i32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_ne_i64 dst, src0, src1=
   v_cmp_ne_i64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_ne_u16 dst, src0, src1=
   v_cmp_ne_u16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_ne_u32 dst, src0, src1=
   v_cmp_ne_u32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_ne_u64 dst, src0, src1=
   v_cmp_ne_u64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_lg_i16 dst, src0, src1=
   v_cmp_lg_i16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_lg_i32 dst, src0, src1=
   v_cmp_lg_i32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_lg_i64 dst, src0, src1=
   v_cmp_lg_i64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_lg_u16 dst, src0, src1=
   v_cmp_lg_u16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_lg_u32 dst, src0, src1=
   v_cmp_lg_u32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_lg_u64 dst, src0, src1=
   v_cmp_lg_u64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_ge_i16 dst, src0, src1=
   v_cmp_ge_i16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_ge_i32 dst, src0, src1=
   v_cmp_ge_i32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_ge_i64 dst, src0, src1=
   v_cmp_ge_i64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_ge_u16 dst, src0, src1=
   v_cmp_ge_u16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_ge_u32 dst, src0, src1=
   v_cmp_ge_u32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_ge_u64 dst, src0, src1=
   v_cmp_ge_u64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_o_i16 dst, src0, src1=
   v_cmp_o_i16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_o_i32 dst, src0, src1=
   v_cmp_o_i32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_o_i64 dst, src0, src1=
   v_cmp_o_i64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_o_u16 dst, src0, src1=
   v_cmp_o_u16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_o_u32 dst, src0, src1=
   v_cmp_o_u32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_o_u64 dst, src0, src1=
   v_cmp_o_u64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_u_i16 dst, src0, src1=
   v_cmp_u_i16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_u_i32 dst, src0, src1=
   v_cmp_u_i32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_u_i64 dst, src0, src1=
   v_cmp_u_i64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_u_u16 dst, src0, src1=
   v_cmp_u_u16 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_u_u32 dst, src0, src1=
   v_cmp_u_u32 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm

.macro _v_cmpx_u_u64 dst, src0, src1=
   v_cmp_u_u64 \dst, \src0, \src1
   s_mov_b32 exec_lo \dst
.endm
.macro _v_mac_f32 c:req, a:req, b:req
    v_fmac_f32 \c, \a, \b
.endmacro

/* scale global load macros */
.macro _s_load_b32 dst base offset
    s_load_dword \dst \base \offset
.endm

.macro _s_load_b64 dst base offset
    s_load_dwordx2 \dst \base \offset
.endm

.macro _s_load_b128 dst base offset
    s_load_dwordx4 \dst \base \offset
.endm

.macro _s_load_b256 dst base offset
    s_load_dwordx8 \dst \base \offset
.endm

.macro _s_load_b512 dst base offset
    s_load_dwordx16 \dst \base \offset
.endm


/* ds operation macros */
.macro _ds_load_u8 dst src offset
    ds_read_u8 \dst \src \offset
.endm

.macro _ds_load_u8_d16_hi dst src offset
    ds_read_u8_d16_hi \dst \src \offset
.endm

.macro _ds_load_u16 dst src offset
    ds_read_u16 \dst \src \offset
.endm

.macro _ds_load_u16_d16_hi dst src offset
    ds_read_u16_d16_hi \dst \src \offset
.endm

.macro _ds_load_b32 dst src offset
    ds_read_b32 \dst \src \offset
.endm

.macro _ds_load_b64 dst src offset
    ds_read_b64 \dst \src \offset
.endm

.macro _ds_load_b128 dst src offset
    ds_read_b128 \dst \src \offset
.endm

.macro _ds_store_b8 dst src offset
    ds_write_b8 \dst \src \offset
.endm

.macro _ds_store_b8_d16_hi dst src offset
    ds_write_b8_d16_hi \dst \src \offset
.endm

.macro _ds_store_b16 dst src offset
    ds_write_b16 \dst \src \offset
.endm

.macro _ds_store_b16_d16_hi dst src offset
    ds_write_b16_d16_hi \dst \src \offset
.endm

.macro _ds_store_b32 dst src offset
    ds_write_b32 \dst \src \offset
.endm

.macro _ds_store_b64 dst src offset
    ds_write_b64 \dst \src \offset
.endm

.macro _ds_store_b128 dst src offset
    ds_write_b128 \dst \src \offset
.endm

.macro _ds_load2_b32 dst src offset1 offset2
    ds_read2_b32 \dst \src \offset1 \offset2
.endm

.macro _ds_load2_b64 dst src offset1 offset2
    ds_read2_b64 \dst \src \offset1 \offset2
.endm

.macro _ds_store2_b32 dst src offset1 offset2
    ds_write2_b32 \dst \src \offset1 \offset2
.endm

.macro _ds_store2_b64 dst src offset1 offset2
    ds_write2_b64 \dst \src \offset1 \offset2
.endm


/* buffer memory operation macros */
.macro _buffer_load_b32 dst voffset base soffset offen ioffset md0 md1 md2
    buffer_load_dword \dst \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_load_b64 dst voffset base soffset offen ioffset md0 md1 md2
    buffer_load_dwordx2 \dst \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_load_b96 dst voffset base soffset offen ioffset md0 md1 md2
    buffer_load_dwordx3 \dst \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_load_b128 dst voffset base soffset offen ioffset md0 md1 md2
    buffer_load_dwordx4 \dst \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_load_d16_b16 dst voffset base soffset offen ioffset md0 md1 md2
    buffer_load_short_d16 \dst \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_load_d16_hi_b16 dst voffset base soffset offen ioffset md0 md1 md2
    buffer_load_short_d16_hi \dst \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_load_d16_u8 dst voffset base soffset offen ioffset md0 md1 md2
    buffer_load_ubyte_d16 \dst \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_load_d16_hi_u8 dst voffset base soffset offen ioffset md0 md1 md2
    buffer_load_ubyte_d16_hi \dst \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_load_u16 dst voffset base soffset offen ioffset md0 md1 md2
    buffer_load_ushort \dst \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_load_b32_dtl voffset base soffset offen ioffset md0 md1 md2
    buffer_load_dword \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_load_b64_dtl voffset base soffset offen ioffset md0 md1 md2
    buffer_load_dwordx2 \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_load_b128_dtl voffset base soffset offen ioffset md0 md1 md2
    buffer_load_dwordx4 \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_load_u16_dtl voffset base soffset offen ioffset md0 md1 md2
    buffer_load_ushort \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_store_b32 src voffset base soffset offen ioffset md0 md1 md2
    buffer_store_dword \src \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_store_b64 src voffset base soffset offen ioffset md0 md1 md2
    buffer_store_dwordx2 \src \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_store_b96 src voffset base soffset offen ioffset md0 md1 md2
    buffer_store_dwordx3 \src \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_store_b128 src voffset base soffset offen ioffset md0 md1 md2
    buffer_store_dwordx4 \src \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_store_b16 src voffset base soffset offen ioffset md0 md1 md2
    buffer_store_short \src \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_store_d16_hi_b16 src voffset base soffset offen ioffset md0 md1 md2
    buffer_store_short_d16_hi \src \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_store_b8 src voffset base soffset offen ioffset md0 md1 md2
    buffer_store_byte \src \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_store_d16_hi_b8 src voffset base soffset offen ioffset md0 md1 md2
    buffer_store_byte_d16_hi \src \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_atomic_cmpswap_b32 dst voffset base soffset offen ioffset md0 md1 md2
    buffer_atomic_cmpswap \dst \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm

.macro _buffer_atomic_cmpswap_b64 dst voffset base soffset offen ioffset md0 md1 md2
    buffer_atomic_cmpswap_x2 \dst \voffset \base \soffset \offen \ioffset \md0 \md1 \md2
.endm


/* buffer memory operation macros */
.macro _global_load_b32 dst base src ioffset md0 md1 md2
    global_load_dword \dst \base \src \ioffset \md0 \md1 \md2
.endm

.macro _global_load_b64 dst base src ioffset md0 md1 md2
    global_load_dwordx2 \dst \base \src \ioffset \md0 \md1 \md2
.endm

.macro _global_load_b96 dst base src ioffset md0 md1 md2
    global_load_dwordx3 \dst \base \src \ioffset \md0 \md1 \md2
.endm

.macro _global_load_b128 dst base src ioffset md0 md1 md2
    global_load_dwordx4 \dst \base \src \ioffset \md0 \md1 \md2
.endm

.macro _global_load_d16_b16 dst base src ioffset md0 md1 md2
    global_load_short_d16 \dst \base \src \ioffset \md0 \md1 \md2
.endm

.macro _global_load_d16_hi_b16 dst base src ioffset md0 md1 md2
    global_load_short_d16_hi \dst \base \src \ioffset \md0 \md1 \md2
.endm

.macro _global_load_d16_u8 dst base src ioffset md0 md1 md2
    global_load_ubyte_d16 \dst \base \src \ioffset \md0 \md1 \md2
.endm

.macro _global_load_d16_hi_u8 dst base src ioffset md0 md1 md2
    global_load_ubyte_d16_hi \dst \base \src \ioffset \md0 \md1 \md2
.endm

.macro _global_load_u16 dst base src ioffset md0 md1 md2
    global_load_ushort \dst \base \src \ioffset \md0 \md1 \md2
.endm

.macro _global_store_b32 base src src2 md0 md1 md2
    global_store_dword \base \src \src2 \md0 \md1 \md2
.endm

.macro _global_store_b64 base src src2 md0 md1 md2
    global_store_dwordx2 \base \src \src2 \md0 \md1 \md2
.endm

.macro _global_store_b96 base src src2 md0 md1 md2
    global_store_dwordx3 \base \src \src2 \md0 \md1 \md2
.endm

.macro _global_store_b128 base src src2 md0 md1 md2
    global_store_dwordx4 \base \src \src2 \md0 \md1 \md2
.endm

.macro _global_store_d16_b16 base src src2 md0 md1 md2
    global_store_short \base \src \src2 \md0 \md1 \md2
.endm

.macro _global_store_d16_hi_b16 base src src2 md0 md1 md2
    global_store_short_d16_hi \base \src \src2 \md0 \md1 \md2
.endm

.macro _global_store_d16_u8 base src src2 md0 md1 md2
    global_store_ubyte_d16 \base \src \src2 \md0 \md1 \md2
.endm

.macro _global_store_d16_hi_u8 base src src2 md0 md1 md2
    global_store_ubyte_d16_hi \base \src \src2 \md0 \md1 \md2
.endm

.macro _global_store_u16 base src src2 md0 md1 md2
    global_store_ushort \base \src \src2 \md0 \md1 \md2
.endm

.macro _global_atomic_cmpswap_b32 tmp base data src ioffset md
    global_atomic_cmpswap \tmp \base \data \src \ioffset \md
.endm

.macro _global_atomic_cmpswap_b64 tmp base data src ioffset md
    global_atomic_cmpswap_x2 \tmp \base \data \src \ioffset \md
.endm


/******************************************/
/* Magic div and mod functions            */
/******************************************/
.macro V_MAGIC_DIV dstIdx:req, dividend:req, magicNumber:req, magicShift:req, magicA:req
    v_mul_hi_u32 v[\dstIdx+1], \dividend, \magicNumber
    v_mul_lo_u32 v[\dstIdx+0], \dividend, \magicA
    _v_add_u32 v[\dstIdx+0], v[\dstIdx+0], v[\dstIdx+1]
    v_lshrrev_b32 v[\dstIdx+0], \magicShift, v[\dstIdx+0]
.endm

/******************************************/
/* VGPR Assignments                       */
/******************************************/
/* ValuC range: [0-128),  */
.set vgprValuC, 0
/* ValuA/B   Xn=PLR buffer idx,  In=InnerUnroll idx */
.set vgprValuA_X0_I0, 130
.set vgprValuA_X1_I0, 146
.set vgprG2LA, 186
.set vgprValuB_X0_I0, 163
.set vgprValuB_X1_I0, 171
.set vgprG2LB, 202
.set vgprLocalWriteAddrA, 179
.set vgprLocalWriteAddrB, 180
.set vgprGlobalReadOffsetA, 181
.set vgprGlobalReadOffsetB, 185
.set vgprLocalReadAddrA, 206
.set vgprLocalReadAddrB, 207
.set vgprSerial, 208
/* Num VGPR=209 */
/* Num AccVGPR=0 */

/******************************************/
/* SGPR Assignments                       */
/******************************************/
.set sgprKernArgAddress, 0 // (2)
.set sgprWorkGroup0, 2 // (1)
.set sgprWorkGroup1, 3 // (1)
.set sgprWorkGroup2, 4 // (1)
.set sgprLoopCounterL, 5 // (1)
.set sgprOrigLoopCounter, 6 // (1)
.set sgprSrdA, 8 // (4)
.set sgprSrdB, 12 // (4)
.set sgprSrdD, 16 // (4)
.set sgprSrdC, 20 // (4)
.set sgprTensor2dSizeA, 24 // (2)
.set sgprTensor2dSizeB, 26 // (2)
.set sgprAddressD, 28 // (2)
.set sgprAddressC, 30 // (2)
.set sgprAddressA, 32 // (2)
.set sgprAddressB, 34 // (2)
.set sgprAlpha, 36 // (1)
.set sgprBeta, 37 // (1)
.set sgprStridesD, 38 // (2)
.set sgprStridesC, 40 // (2)
.set sgprStridesA, 42 // (2)
.set sgprStridesB, 44 // (2)
.set sgprSizesFree, 46 // (3)
.set sgprSizesSum, 49 // (1)
.set sgprOrigStaggerUIter, 50 // (1)
.set sgprNumWorkGroups0, 51 // (1)
.set sgprNumWorkGroups1, 52 // (1)
.set sgprNumFullBlocks, 53 // (1)
.set sgprWgmRemainder1, 54 // (1)
.set sgprMagicNumberWgmRemainder1, 55 // (1)
.set sgprShadowLimitA, 0 // (2)
.set sgprShadowLimitB, 28 // (2)
.set sgprStaggerUIter, 7 // (1)
.set sgprWrapUA, 30 // (2)
.set sgprWrapUB, 32 // (2)
.set sgprGlobalReadIncsA, 34 // (1)
.set sgprGlobalReadIncsB, 35 // (1)
/* max SGPR=63 */

/* Size Assignments */
.set sgprSizeI, sgprSizesFree+0
.set sgprSizeJ, sgprSizesFree+1
.set sgprSizeK, sgprSizesFree+2
.set sgprSizeL, sgprSizesSum+0

/* Stride Assignments */
.set constStrideD0I, 1
.set sgprStrideD1J, sgprStridesD+0
.set sgprStrideDK, sgprStridesD+1
.set constStrideC0I, 1
.set sgprStrideC1J, sgprStridesC+0
.set sgprStrideCK, sgprStridesC+1
.set constStrideA0I, 1
.set sgprStrideAL, sgprStridesA+0
.set sgprStrideAK, sgprStridesA+1
.set constStrideB1J, 1
.set sgprStrideBL, sgprStridesB+0
.set sgprStrideBK, sgprStridesB+1

.set MT0, 256
.set MT1, 64
.set DepthU, 8
.set GSU, 1
.set BpeA, 4
.set BpeALog2, 2
.set BpeB, 4
.set BpeBLog2, 2
/* Number of elements to shift-left SRD */
.set SrdShiftLeftA, 4
.set SrdShiftLeftB, 4
/* 2GB limit - set offsets to -1 to exceed this and clamp */
.set BufferLimitA, 0xffffffff
.set BufferLimitB, 0xffffffff
.set BufferOOB, 0xfffff000

/******************************************/
/* Bits 127:96 of SRD.                    */
/* hex: 0x31004000                        */
/* dst_sel_x (3b): 0                      */
/* dst_sel_y (3b): 0                      */
/* dst_sel_z (3b): 0                      */
/* dst_sel_w (3b): 0                      */
/* format (7b): 4                         */
/* _unusedA (2b): 0                       */
/* index_stride (2b): 0                   */
/* add_tid_enable (1b): 0                 */
/* resource_level (1b): 1                 */
/* _unusedB (1b): 0                       */
/* LLC_noalloc (2b): 0                    */
/* oob_select (2b): 3                     */
/* type (2b): 0                           */
/******************************************/
.set Srd127_96, 0x31004000

/* Global Offset A */
.macro GLOBAL_OFFSET_A vgprAddr:req vgprOffset0I:req vgprOffsetL:req vgprTmp:req
v_mul_lo_u32 v[\vgprTmp+0], s[sgprStrideAL], v[\vgprOffsetL] // mul d1 lower
_v_add_co_u32 v[\vgprAddr+0], vcc_lo, v[\vgprOffset0I], v[\vgprTmp+0] // accumulate K lower
_v_add_u32 v[\vgprAddr+0], 0x4, v[\vgprAddr+0]     // add prepad for pointer shift
v_lshlrev_b32 v[\vgprAddr+0], 0x2, v[\vgprAddr+0]  // offset *= bytes/element
.endm

/* Global Offset B */
.macro GLOBAL_OFFSET_B vgprAddr:req vgprOffset1J:req vgprOffsetL:req vgprTmp:req
v_mul_lo_u32 v[\vgprTmp+0], s[sgprStrideBL], v[\vgprOffsetL] // mul d1 lower
_v_add_co_u32 v[\vgprAddr+0], vcc_lo, v[\vgprOffset1J], v[\vgprTmp+0] // accumulate K lower
_v_add_u32 v[\vgprAddr+0], 0x4, v[\vgprAddr+0]     // add prepad for pointer shift
v_lshlrev_b32 v[\vgprAddr+0], 0x2, v[\vgprAddr+0]  // offset *= bytes/element
.endm

/******************************************/
/* Dynamic Scalar Divide: vQuotient=vDividend/vDivisor; vRemainder=vDividend%vDivisor; */
/******************************************/
.macro DYNAMIC_VECTOR_DIVIDE vQuotient vRemainder vDividend vDivisor vTmp0 vTmp1 sTmp
v_cvt_f32_u32 v[\vQuotient], v[\vDivisor]          // 
v_rcp_f32 v[\vQuotient], v[\vQuotient]             // 
v_mul_f32 v[\vQuotient], 0x4f800000, v[\vQuotient] // 
v_cvt_u32_f32 v[\vQuotient], v[\vQuotient]         // 
v_mul_lo_u32 v[\vRemainder], v[\vDivisor], v[\vQuotient] // 
v_mul_hi_u32 v[\vTmp0], v[\vDivisor], v[\vQuotient] // 
_v_sub_co_u32 v[\vTmp1], vcc_lo, 0x0, v[\vRemainder] // 
v_cmp_ne_i32 s[\sTmp], 0x0, v[\vTmp0]              // 
v_cndmask_b32 v[\vRemainder], v[\vTmp1], v[\vRemainder], s[\sTmp] // 
v_mul_hi_u32 v[\vRemainder], v[\vRemainder], v[\vQuotient] // 
_v_sub_co_u32 v[\vTmp0], vcc_lo, v[\vQuotient], v[\vRemainder] // 
_v_add_co_u32 v[\vQuotient], vcc_lo, v[\vQuotient], v[\vRemainder] // 
v_cndmask_b32 v[\vQuotient], v[\vQuotient], v[\vTmp0], s[\sTmp] // 
v_mul_hi_u32 v[\vQuotient], v[\vQuotient], v[\vDividend] // 
v_mul_lo_u32 v[\vRemainder], v[\vQuotient], v[\vDivisor] // 
_v_sub_co_u32 v[\vTmp0], vcc_lo, v[\vDividend], v[\vRemainder] // 
v_cmp_ge_u32 s[\sTmp], v[\vDividend], v[\vRemainder] // 
_v_add_co_u32 v[\vRemainder], vcc_lo, 0x1, v[\vQuotient] // 
_v_add_co_u32 v[\vTmp1], vcc_lo, -1, v[\vQuotient] // 
v_cmp_le_u32 vcc_lo, v[\vDivisor], v[\vTmp0]       // 
s_and_b32 vcc_lo, s[\sTmp], vcc_lo                 // 
v_cndmask_b32 v[\vQuotient], v[\vQuotient], v[\vRemainder], vcc_lo // 
v_cndmask_b32 v[\vQuotient], v[\vTmp1], v[\vQuotient], s[\sTmp] // 
v_cmp_ne_i32 vcc_lo, 0x0, v[\vDivisor]             // 
v_cndmask_b32 v[\vQuotient], -1, v[\vQuotient], vcc_lo // final result
v_mul_lo_u32 v[\vRemainder], v[\vQuotient], v[\vDivisor] // 
_v_sub_co_u32 v[\vRemainder], vcc_lo, v[\vDividend], v[\vRemainder] // final result
.endm

/******************************************/
/* 16x8 thread-tile                       */
/******************************************/
.macro MAC_16x8_X0
// Component.MAC.MAC_F32_Plain
v_fmac_f32 v[vgprValuC + 0 + 0*16], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 0]
s_setprio 1 // Raise priority while processing macs
v_fmac_f32 v[vgprValuC + 1 + 0*16], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 2 + 0*16], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 3 + 0*16], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 4 + 0*16], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 5 + 0*16], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 6 + 0*16], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 7 + 0*16], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 8 + 0*16], v[vgprValuA_X0_I0 + 8], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 9 + 0*16], v[vgprValuA_X0_I0 + 9], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 10 + 0*16], v[vgprValuA_X0_I0 + 10], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 11 + 0*16], v[vgprValuA_X0_I0 + 11], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 12 + 0*16], v[vgprValuA_X0_I0 + 12], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 13 + 0*16], v[vgprValuA_X0_I0 + 13], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 14 + 0*16], v[vgprValuA_X0_I0 + 14], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 15 + 0*16], v[vgprValuA_X0_I0 + 15], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 0 + 1*16], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 1 + 1*16], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 2 + 1*16], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 3 + 1*16], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 4 + 1*16], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 5 + 1*16], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 6 + 1*16], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 7 + 1*16], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 8 + 1*16], v[vgprValuA_X0_I0 + 8], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 9 + 1*16], v[vgprValuA_X0_I0 + 9], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 10 + 1*16], v[vgprValuA_X0_I0 + 10], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 11 + 1*16], v[vgprValuA_X0_I0 + 11], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 12 + 1*16], v[vgprValuA_X0_I0 + 12], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 13 + 1*16], v[vgprValuA_X0_I0 + 13], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 14 + 1*16], v[vgprValuA_X0_I0 + 14], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 15 + 1*16], v[vgprValuA_X0_I0 + 15], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 0 + 2*16], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 1 + 2*16], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 2 + 2*16], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 3 + 2*16], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 4 + 2*16], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 5 + 2*16], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 6 + 2*16], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 7 + 2*16], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 8 + 2*16], v[vgprValuA_X0_I0 + 8], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 9 + 2*16], v[vgprValuA_X0_I0 + 9], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 10 + 2*16], v[vgprValuA_X0_I0 + 10], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 11 + 2*16], v[vgprValuA_X0_I0 + 11], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 12 + 2*16], v[vgprValuA_X0_I0 + 12], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 13 + 2*16], v[vgprValuA_X0_I0 + 13], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 14 + 2*16], v[vgprValuA_X0_I0 + 14], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 15 + 2*16], v[vgprValuA_X0_I0 + 15], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 0 + 3*16], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 1 + 3*16], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 2 + 3*16], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 3 + 3*16], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 4 + 3*16], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 5 + 3*16], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 6 + 3*16], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 7 + 3*16], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 8 + 3*16], v[vgprValuA_X0_I0 + 8], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 9 + 3*16], v[vgprValuA_X0_I0 + 9], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 10 + 3*16], v[vgprValuA_X0_I0 + 10], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 11 + 3*16], v[vgprValuA_X0_I0 + 11], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 12 + 3*16], v[vgprValuA_X0_I0 + 12], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 13 + 3*16], v[vgprValuA_X0_I0 + 13], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 14 + 3*16], v[vgprValuA_X0_I0 + 14], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 15 + 3*16], v[vgprValuA_X0_I0 + 15], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 0 + 4*16], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 1 + 4*16], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 2 + 4*16], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 3 + 4*16], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 4 + 4*16], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 5 + 4*16], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 6 + 4*16], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 7 + 4*16], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 8 + 4*16], v[vgprValuA_X0_I0 + 8], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 9 + 4*16], v[vgprValuA_X0_I0 + 9], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 10 + 4*16], v[vgprValuA_X0_I0 + 10], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 11 + 4*16], v[vgprValuA_X0_I0 + 11], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 12 + 4*16], v[vgprValuA_X0_I0 + 12], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 13 + 4*16], v[vgprValuA_X0_I0 + 13], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 14 + 4*16], v[vgprValuA_X0_I0 + 14], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 15 + 4*16], v[vgprValuA_X0_I0 + 15], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 0 + 5*16], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 1 + 5*16], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 2 + 5*16], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 3 + 5*16], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 4 + 5*16], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 5 + 5*16], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 6 + 5*16], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 7 + 5*16], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 8 + 5*16], v[vgprValuA_X0_I0 + 8], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 9 + 5*16], v[vgprValuA_X0_I0 + 9], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 10 + 5*16], v[vgprValuA_X0_I0 + 10], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 11 + 5*16], v[vgprValuA_X0_I0 + 11], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 12 + 5*16], v[vgprValuA_X0_I0 + 12], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 13 + 5*16], v[vgprValuA_X0_I0 + 13], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 14 + 5*16], v[vgprValuA_X0_I0 + 14], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 15 + 5*16], v[vgprValuA_X0_I0 + 15], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 0 + 6*16], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 1 + 6*16], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 2 + 6*16], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 3 + 6*16], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 4 + 6*16], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 5 + 6*16], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 6 + 6*16], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 7 + 6*16], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 8 + 6*16], v[vgprValuA_X0_I0 + 8], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 9 + 6*16], v[vgprValuA_X0_I0 + 9], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 10 + 6*16], v[vgprValuA_X0_I0 + 10], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 11 + 6*16], v[vgprValuA_X0_I0 + 11], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 12 + 6*16], v[vgprValuA_X0_I0 + 12], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 13 + 6*16], v[vgprValuA_X0_I0 + 13], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 14 + 6*16], v[vgprValuA_X0_I0 + 14], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 15 + 6*16], v[vgprValuA_X0_I0 + 15], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 0 + 7*16], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 1 + 7*16], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 2 + 7*16], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 3 + 7*16], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 4 + 7*16], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 5 + 7*16], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 6 + 7*16], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 7 + 7*16], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 8 + 7*16], v[vgprValuA_X0_I0 + 8], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 9 + 7*16], v[vgprValuA_X0_I0 + 9], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 10 + 7*16], v[vgprValuA_X0_I0 + 10], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 11 + 7*16], v[vgprValuA_X0_I0 + 11], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 12 + 7*16], v[vgprValuA_X0_I0 + 12], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 13 + 7*16], v[vgprValuA_X0_I0 + 13], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 14 + 7*16], v[vgprValuA_X0_I0 + 14], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 15 + 7*16], v[vgprValuA_X0_I0 + 15], v[vgprValuB_X0_I0 + 7]
s_setprio 0 // Reset priority after macs
.endm
.macro MAC_16x8_X1
// Component.MAC.MAC_F32_Plain
v_fmac_f32 v[vgprValuC + 0 + 0*16], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 0]
s_setprio 1 // Raise priority while processing macs
v_fmac_f32 v[vgprValuC + 1 + 0*16], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 0]
v_fmac_f32 v[vgprValuC + 2 + 0*16], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 0]
v_fmac_f32 v[vgprValuC + 3 + 0*16], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 0]
v_fmac_f32 v[vgprValuC + 4 + 0*16], v[vgprValuA_X1_I0 + 4], v[vgprValuB_X1_I0 + 0]
v_fmac_f32 v[vgprValuC + 5 + 0*16], v[vgprValuA_X1_I0 + 5], v[vgprValuB_X1_I0 + 0]
v_fmac_f32 v[vgprValuC + 6 + 0*16], v[vgprValuA_X1_I0 + 6], v[vgprValuB_X1_I0 + 0]
v_fmac_f32 v[vgprValuC + 7 + 0*16], v[vgprValuA_X1_I0 + 7], v[vgprValuB_X1_I0 + 0]
v_fmac_f32 v[vgprValuC + 8 + 0*16], v[vgprValuA_X1_I0 + 8], v[vgprValuB_X1_I0 + 0]
v_fmac_f32 v[vgprValuC + 9 + 0*16], v[vgprValuA_X1_I0 + 9], v[vgprValuB_X1_I0 + 0]
v_fmac_f32 v[vgprValuC + 10 + 0*16], v[vgprValuA_X1_I0 + 10], v[vgprValuB_X1_I0 + 0]
v_fmac_f32 v[vgprValuC + 11 + 0*16], v[vgprValuA_X1_I0 + 11], v[vgprValuB_X1_I0 + 0]
v_fmac_f32 v[vgprValuC + 12 + 0*16], v[vgprValuA_X1_I0 + 12], v[vgprValuB_X1_I0 + 0]
v_fmac_f32 v[vgprValuC + 13 + 0*16], v[vgprValuA_X1_I0 + 13], v[vgprValuB_X1_I0 + 0]
v_fmac_f32 v[vgprValuC + 14 + 0*16], v[vgprValuA_X1_I0 + 14], v[vgprValuB_X1_I0 + 0]
v_fmac_f32 v[vgprValuC + 15 + 0*16], v[vgprValuA_X1_I0 + 15], v[vgprValuB_X1_I0 + 0]
v_fmac_f32 v[vgprValuC + 0 + 1*16], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 1]
v_fmac_f32 v[vgprValuC + 1 + 1*16], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 1]
v_fmac_f32 v[vgprValuC + 2 + 1*16], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 1]
v_fmac_f32 v[vgprValuC + 3 + 1*16], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 1]
v_fmac_f32 v[vgprValuC + 4 + 1*16], v[vgprValuA_X1_I0 + 4], v[vgprValuB_X1_I0 + 1]
v_fmac_f32 v[vgprValuC + 5 + 1*16], v[vgprValuA_X1_I0 + 5], v[vgprValuB_X1_I0 + 1]
v_fmac_f32 v[vgprValuC + 6 + 1*16], v[vgprValuA_X1_I0 + 6], v[vgprValuB_X1_I0 + 1]
v_fmac_f32 v[vgprValuC + 7 + 1*16], v[vgprValuA_X1_I0 + 7], v[vgprValuB_X1_I0 + 1]
v_fmac_f32 v[vgprValuC + 8 + 1*16], v[vgprValuA_X1_I0 + 8], v[vgprValuB_X1_I0 + 1]
v_fmac_f32 v[vgprValuC + 9 + 1*16], v[vgprValuA_X1_I0 + 9], v[vgprValuB_X1_I0 + 1]
v_fmac_f32 v[vgprValuC + 10 + 1*16], v[vgprValuA_X1_I0 + 10], v[vgprValuB_X1_I0 + 1]
v_fmac_f32 v[vgprValuC + 11 + 1*16], v[vgprValuA_X1_I0 + 11], v[vgprValuB_X1_I0 + 1]
v_fmac_f32 v[vgprValuC + 12 + 1*16], v[vgprValuA_X1_I0 + 12], v[vgprValuB_X1_I0 + 1]
v_fmac_f32 v[vgprValuC + 13 + 1*16], v[vgprValuA_X1_I0 + 13], v[vgprValuB_X1_I0 + 1]
v_fmac_f32 v[vgprValuC + 14 + 1*16], v[vgprValuA_X1_I0 + 14], v[vgprValuB_X1_I0 + 1]
v_fmac_f32 v[vgprValuC + 15 + 1*16], v[vgprValuA_X1_I0 + 15], v[vgprValuB_X1_I0 + 1]
v_fmac_f32 v[vgprValuC + 0 + 2*16], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 2]
v_fmac_f32 v[vgprValuC + 1 + 2*16], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 2]
v_fmac_f32 v[vgprValuC + 2 + 2*16], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 2]
v_fmac_f32 v[vgprValuC + 3 + 2*16], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 2]
v_fmac_f32 v[vgprValuC + 4 + 2*16], v[vgprValuA_X1_I0 + 4], v[vgprValuB_X1_I0 + 2]
v_fmac_f32 v[vgprValuC + 5 + 2*16], v[vgprValuA_X1_I0 + 5], v[vgprValuB_X1_I0 + 2]
v_fmac_f32 v[vgprValuC + 6 + 2*16], v[vgprValuA_X1_I0 + 6], v[vgprValuB_X1_I0 + 2]
v_fmac_f32 v[vgprValuC + 7 + 2*16], v[vgprValuA_X1_I0 + 7], v[vgprValuB_X1_I0 + 2]
v_fmac_f32 v[vgprValuC + 8 + 2*16], v[vgprValuA_X1_I0 + 8], v[vgprValuB_X1_I0 + 2]
v_fmac_f32 v[vgprValuC + 9 + 2*16], v[vgprValuA_X1_I0 + 9], v[vgprValuB_X1_I0 + 2]
v_fmac_f32 v[vgprValuC + 10 + 2*16], v[vgprValuA_X1_I0 + 10], v[vgprValuB_X1_I0 + 2]
v_fmac_f32 v[vgprValuC + 11 + 2*16], v[vgprValuA_X1_I0 + 11], v[vgprValuB_X1_I0 + 2]
v_fmac_f32 v[vgprValuC + 12 + 2*16], v[vgprValuA_X1_I0 + 12], v[vgprValuB_X1_I0 + 2]
v_fmac_f32 v[vgprValuC + 13 + 2*16], v[vgprValuA_X1_I0 + 13], v[vgprValuB_X1_I0 + 2]
v_fmac_f32 v[vgprValuC + 14 + 2*16], v[vgprValuA_X1_I0 + 14], v[vgprValuB_X1_I0 + 2]
v_fmac_f32 v[vgprValuC + 15 + 2*16], v[vgprValuA_X1_I0 + 15], v[vgprValuB_X1_I0 + 2]
v_fmac_f32 v[vgprValuC + 0 + 3*16], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 3]
v_fmac_f32 v[vgprValuC + 1 + 3*16], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 3]
v_fmac_f32 v[vgprValuC + 2 + 3*16], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 3]
v_fmac_f32 v[vgprValuC + 3 + 3*16], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 3]
v_fmac_f32 v[vgprValuC + 4 + 3*16], v[vgprValuA_X1_I0 + 4], v[vgprValuB_X1_I0 + 3]
v_fmac_f32 v[vgprValuC + 5 + 3*16], v[vgprValuA_X1_I0 + 5], v[vgprValuB_X1_I0 + 3]
v_fmac_f32 v[vgprValuC + 6 + 3*16], v[vgprValuA_X1_I0 + 6], v[vgprValuB_X1_I0 + 3]
v_fmac_f32 v[vgprValuC + 7 + 3*16], v[vgprValuA_X1_I0 + 7], v[vgprValuB_X1_I0 + 3]
v_fmac_f32 v[vgprValuC + 8 + 3*16], v[vgprValuA_X1_I0 + 8], v[vgprValuB_X1_I0 + 3]
v_fmac_f32 v[vgprValuC + 9 + 3*16], v[vgprValuA_X1_I0 + 9], v[vgprValuB_X1_I0 + 3]
v_fmac_f32 v[vgprValuC + 10 + 3*16], v[vgprValuA_X1_I0 + 10], v[vgprValuB_X1_I0 + 3]
v_fmac_f32 v[vgprValuC + 11 + 3*16], v[vgprValuA_X1_I0 + 11], v[vgprValuB_X1_I0 + 3]
v_fmac_f32 v[vgprValuC + 12 + 3*16], v[vgprValuA_X1_I0 + 12], v[vgprValuB_X1_I0 + 3]
v_fmac_f32 v[vgprValuC + 13 + 3*16], v[vgprValuA_X1_I0 + 13], v[vgprValuB_X1_I0 + 3]
v_fmac_f32 v[vgprValuC + 14 + 3*16], v[vgprValuA_X1_I0 + 14], v[vgprValuB_X1_I0 + 3]
v_fmac_f32 v[vgprValuC + 15 + 3*16], v[vgprValuA_X1_I0 + 15], v[vgprValuB_X1_I0 + 3]
v_fmac_f32 v[vgprValuC + 0 + 4*16], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 4]
v_fmac_f32 v[vgprValuC + 1 + 4*16], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 4]
v_fmac_f32 v[vgprValuC + 2 + 4*16], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 4]
v_fmac_f32 v[vgprValuC + 3 + 4*16], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 4]
v_fmac_f32 v[vgprValuC + 4 + 4*16], v[vgprValuA_X1_I0 + 4], v[vgprValuB_X1_I0 + 4]
v_fmac_f32 v[vgprValuC + 5 + 4*16], v[vgprValuA_X1_I0 + 5], v[vgprValuB_X1_I0 + 4]
v_fmac_f32 v[vgprValuC + 6 + 4*16], v[vgprValuA_X1_I0 + 6], v[vgprValuB_X1_I0 + 4]
v_fmac_f32 v[vgprValuC + 7 + 4*16], v[vgprValuA_X1_I0 + 7], v[vgprValuB_X1_I0 + 4]
v_fmac_f32 v[vgprValuC + 8 + 4*16], v[vgprValuA_X1_I0 + 8], v[vgprValuB_X1_I0 + 4]
v_fmac_f32 v[vgprValuC + 9 + 4*16], v[vgprValuA_X1_I0 + 9], v[vgprValuB_X1_I0 + 4]
v_fmac_f32 v[vgprValuC + 10 + 4*16], v[vgprValuA_X1_I0 + 10], v[vgprValuB_X1_I0 + 4]
v_fmac_f32 v[vgprValuC + 11 + 4*16], v[vgprValuA_X1_I0 + 11], v[vgprValuB_X1_I0 + 4]
v_fmac_f32 v[vgprValuC + 12 + 4*16], v[vgprValuA_X1_I0 + 12], v[vgprValuB_X1_I0 + 4]
v_fmac_f32 v[vgprValuC + 13 + 4*16], v[vgprValuA_X1_I0 + 13], v[vgprValuB_X1_I0 + 4]
v_fmac_f32 v[vgprValuC + 14 + 4*16], v[vgprValuA_X1_I0 + 14], v[vgprValuB_X1_I0 + 4]
v_fmac_f32 v[vgprValuC + 15 + 4*16], v[vgprValuA_X1_I0 + 15], v[vgprValuB_X1_I0 + 4]
v_fmac_f32 v[vgprValuC + 0 + 5*16], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 5]
v_fmac_f32 v[vgprValuC + 1 + 5*16], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 5]
v_fmac_f32 v[vgprValuC + 2 + 5*16], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 5]
v_fmac_f32 v[vgprValuC + 3 + 5*16], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 5]
v_fmac_f32 v[vgprValuC + 4 + 5*16], v[vgprValuA_X1_I0 + 4], v[vgprValuB_X1_I0 + 5]
v_fmac_f32 v[vgprValuC + 5 + 5*16], v[vgprValuA_X1_I0 + 5], v[vgprValuB_X1_I0 + 5]
v_fmac_f32 v[vgprValuC + 6 + 5*16], v[vgprValuA_X1_I0 + 6], v[vgprValuB_X1_I0 + 5]
v_fmac_f32 v[vgprValuC + 7 + 5*16], v[vgprValuA_X1_I0 + 7], v[vgprValuB_X1_I0 + 5]
v_fmac_f32 v[vgprValuC + 8 + 5*16], v[vgprValuA_X1_I0 + 8], v[vgprValuB_X1_I0 + 5]
v_fmac_f32 v[vgprValuC + 9 + 5*16], v[vgprValuA_X1_I0 + 9], v[vgprValuB_X1_I0 + 5]
v_fmac_f32 v[vgprValuC + 10 + 5*16], v[vgprValuA_X1_I0 + 10], v[vgprValuB_X1_I0 + 5]
v_fmac_f32 v[vgprValuC + 11 + 5*16], v[vgprValuA_X1_I0 + 11], v[vgprValuB_X1_I0 + 5]
v_fmac_f32 v[vgprValuC + 12 + 5*16], v[vgprValuA_X1_I0 + 12], v[vgprValuB_X1_I0 + 5]
v_fmac_f32 v[vgprValuC + 13 + 5*16], v[vgprValuA_X1_I0 + 13], v[vgprValuB_X1_I0 + 5]
v_fmac_f32 v[vgprValuC + 14 + 5*16], v[vgprValuA_X1_I0 + 14], v[vgprValuB_X1_I0 + 5]
v_fmac_f32 v[vgprValuC + 15 + 5*16], v[vgprValuA_X1_I0 + 15], v[vgprValuB_X1_I0 + 5]
v_fmac_f32 v[vgprValuC + 0 + 6*16], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 6]
v_fmac_f32 v[vgprValuC + 1 + 6*16], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 6]
v_fmac_f32 v[vgprValuC + 2 + 6*16], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 6]
v_fmac_f32 v[vgprValuC + 3 + 6*16], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 6]
v_fmac_f32 v[vgprValuC + 4 + 6*16], v[vgprValuA_X1_I0 + 4], v[vgprValuB_X1_I0 + 6]
v_fmac_f32 v[vgprValuC + 5 + 6*16], v[vgprValuA_X1_I0 + 5], v[vgprValuB_X1_I0 + 6]
v_fmac_f32 v[vgprValuC + 6 + 6*16], v[vgprValuA_X1_I0 + 6], v[vgprValuB_X1_I0 + 6]
v_fmac_f32 v[vgprValuC + 7 + 6*16], v[vgprValuA_X1_I0 + 7], v[vgprValuB_X1_I0 + 6]
v_fmac_f32 v[vgprValuC + 8 + 6*16], v[vgprValuA_X1_I0 + 8], v[vgprValuB_X1_I0 + 6]
v_fmac_f32 v[vgprValuC + 9 + 6*16], v[vgprValuA_X1_I0 + 9], v[vgprValuB_X1_I0 + 6]
v_fmac_f32 v[vgprValuC + 10 + 6*16], v[vgprValuA_X1_I0 + 10], v[vgprValuB_X1_I0 + 6]
v_fmac_f32 v[vgprValuC + 11 + 6*16], v[vgprValuA_X1_I0 + 11], v[vgprValuB_X1_I0 + 6]
v_fmac_f32 v[vgprValuC + 12 + 6*16], v[vgprValuA_X1_I0 + 12], v[vgprValuB_X1_I0 + 6]
v_fmac_f32 v[vgprValuC + 13 + 6*16], v[vgprValuA_X1_I0 + 13], v[vgprValuB_X1_I0 + 6]
v_fmac_f32 v[vgprValuC + 14 + 6*16], v[vgprValuA_X1_I0 + 14], v[vgprValuB_X1_I0 + 6]
v_fmac_f32 v[vgprValuC + 15 + 6*16], v[vgprValuA_X1_I0 + 15], v[vgprValuB_X1_I0 + 6]
v_fmac_f32 v[vgprValuC + 0 + 7*16], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 7]
v_fmac_f32 v[vgprValuC + 1 + 7*16], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 7]
v_fmac_f32 v[vgprValuC + 2 + 7*16], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 7]
v_fmac_f32 v[vgprValuC + 3 + 7*16], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 7]
v_fmac_f32 v[vgprValuC + 4 + 7*16], v[vgprValuA_X1_I0 + 4], v[vgprValuB_X1_I0 + 7]
v_fmac_f32 v[vgprValuC + 5 + 7*16], v[vgprValuA_X1_I0 + 5], v[vgprValuB_X1_I0 + 7]
v_fmac_f32 v[vgprValuC + 6 + 7*16], v[vgprValuA_X1_I0 + 6], v[vgprValuB_X1_I0 + 7]
v_fmac_f32 v[vgprValuC + 7 + 7*16], v[vgprValuA_X1_I0 + 7], v[vgprValuB_X1_I0 + 7]
v_fmac_f32 v[vgprValuC + 8 + 7*16], v[vgprValuA_X1_I0 + 8], v[vgprValuB_X1_I0 + 7]
v_fmac_f32 v[vgprValuC + 9 + 7*16], v[vgprValuA_X1_I0 + 9], v[vgprValuB_X1_I0 + 7]
v_fmac_f32 v[vgprValuC + 10 + 7*16], v[vgprValuA_X1_I0 + 10], v[vgprValuB_X1_I0 + 7]
v_fmac_f32 v[vgprValuC + 11 + 7*16], v[vgprValuA_X1_I0 + 11], v[vgprValuB_X1_I0 + 7]
v_fmac_f32 v[vgprValuC + 12 + 7*16], v[vgprValuA_X1_I0 + 12], v[vgprValuB_X1_I0 + 7]
v_fmac_f32 v[vgprValuC + 13 + 7*16], v[vgprValuA_X1_I0 + 13], v[vgprValuB_X1_I0 + 7]
v_fmac_f32 v[vgprValuC + 14 + 7*16], v[vgprValuA_X1_I0 + 14], v[vgprValuB_X1_I0 + 7]
v_fmac_f32 v[vgprValuC + 15 + 7*16], v[vgprValuA_X1_I0 + 15], v[vgprValuB_X1_I0 + 7]
s_setprio 0 // Reset priority after macs
.endm



/******************************************/
/* Allocate Resources                     */
/******************************************/

Cijk_Ailk_Bjlk_SB_MT256x64x8_SN_K1_PGR1_TT16_8_WG16_8_1_preloaded: // Kernel start when preloading
s_mov_b32 vcc_hi, 0                                // Ensure hi bits are zero

/* Load Kernel Args */
_s_load_b512 s[24:39], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x0 // 
_s_load_b512 s[40:55], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x40 // 
s_mov_b32 m0, 0x6800                               // LDS clamp at 26624 bytes
v_mov_b32 v[vgprSerial], v0                        // thread serial id

/******************************************/
/* Local Read Addresses                   */
/******************************************/


/* local read addresses: tile assignments a/b */

/*lr0I = serial % SG0I*/
v_lshrrev_b32 v0, 4, v[vgprSerial]                 // v0 = v[vgprSerial] / 16
v_and_b32 v1, 15, v[vgprSerial]                    // v1 = v[vgprSerial] % 16
/*lr1J = (serial / SG1J) % SG1J*/
v_lshrrev_b32 v2, 3, v0                            // v2 = v0 / 8
v_and_b32 v3, 7, v0                                // v3 = v0 % 8


/* local read addresses: final offsets a */

v_lshrrev_b32 v0, 7, v[vgprSerial]                 // LSU offset: sgid = Serial / subGroup(128)
v_lshlrev_b32 v0, 0x8, v0                          // LSU offset: lsuoffset = sgid*(MT0+PAD)
v_lshlrev_b32 v1, 0x2, v1                          // Final Offset: lrAOffset * VW
_v_add_lshl_u32 v[vgprLocalReadAddrA], v0, v1, 0x2 // Final Offset: offset = (lro0*VW+lsuoffset)*bpe


/* local read addresses: final offsets b */

v_lshrrev_b32 v0, 7, v[vgprSerial]                 // LSU offset: sgid = Serial / subGroup(128)
v_lshlrev_b32 v0, 0x6, v0                          // LSU offset: lsuoffset = sgid*(MT1+PAD)
v_lshlrev_b32 v3, 0x2, v3                          // Final Offset: lrBOffset * VW
_v_add_lshl_u32 v[vgprLocalReadAddrB], v0, v3, 0x2 // Final Offset: offset = (lro1*VW+lsuoffset)*bpe


/* local read addresses: declare addresses a */

/* N/A */


/* local read addresses: declare addresses b */

_v_add_co_u32 v[vgprLocalReadAddrB+0], vcc_lo, 0x2000, v[vgprLocalReadAddrB+0] //  += LdsOffsetB (lower)


/* global read addresses: tile offset assignment a */

/* LVCA = 64 */
/* v0 = (local)groA-tile = serial%LVCA (note (wgA*MTA) will be added to SRD) */
/* v1 = groA-unroll = serial/LVCA */
v_lshrrev_b32 v1, 6, v[vgprSerial]                 // v1 = v[vgprSerial] / 64
v_and_b32 v0, 63, v[vgprSerial]                    // v0 = v[vgprSerial] % 64
/* gro-tile *= glvw */
v_lshlrev_b32 v0, 0x2, v0                          // v0 = v0 * 4


/* global read addresses: tile offset assignment b */

/* LVCB = 16 */
/* v2 = (local)groB-tile = serial%LVCB (note (wgB*MTB) will be added to SRD) */
/* v3 = groB-unroll = serial/LVCB */
v_lshrrev_b32 v3, 4, v[vgprSerial]                 // v3 = v[vgprSerial] / 16
v_and_b32 v2, 15, v[vgprSerial]                    // v2 = v[vgprSerial] % 16
/* gro-tile *= glvw */
v_lshlrev_b32 v2, 0x2, v2                          // v2 = v2 * 4


/******************************************/
/* Local Write Addresses                  */
/******************************************/

/* lwaTileAssignmentA = v0 */

/* lwaTileAssignmentB = v2 */

/* lwaUnrollAssignmentA = v1 */

/* lwaUnrollAssignmentB = v3 */


/* local write addresses: first offset a */

v_mul_u32_u24 v[vgprLocalWriteAddrA], 0x100, v1    // lwAL**(MTA + PAD)
_v_add_lshl_u32 v[vgprLocalWriteAddrA], v0, v[vgprLocalWriteAddrA], 0x2 // lwFOA = (lwAA + lwAL*(MT0I+PAD))*bpe


/* local write addresses: first offset b */

v_mul_u32_u24 v[vgprLocalWriteAddrB], 0x40, v3     // lwBL**(MTB + PAD)
_v_add_lshl_u32 v[vgprLocalWriteAddrB], v2, v[vgprLocalWriteAddrB], 0x2 // lwFOB = (lwBB + lwBL*(MT1J+PAD))*bpe
_v_add_co_u32 v[vgprLocalWriteAddrB], vcc_lo, 0x2000, v[vgprLocalWriteAddrB] // lwFOB = lwB1J + lwBL*MT1J + LDS_OFFSET_B=2048*4







s_waitcnt lgkmcnt(0)                               // wait for 128 bytes of kern args
s_mov_b64 s[sgprSrdC+0:sgprSrdC+0+1], s[sgprAddressC+0:sgprAddressC+0+1] // copy addressC
s_mov_b64 s[sgprSrdD+0:sgprSrdD+0+1], s[sgprAddressD+0:sgprAddressD+0+1] // copy addressD
s_sub_u32 s[sgprSrdA+0], s[sgprAddressA+0], 16     // pre-pad to make room for possible pointer shift
s_subb_u32 s[sgprSrdA+1], s[sgprAddressA+1], 0     // pre-pad to make room for possible pointer shift
s_sub_u32 s[sgprSrdB+0], s[sgprAddressB+0], 16     // pre-pad to make room for possible pointer shift
s_subb_u32 s[sgprSrdB+1], s[sgprAddressB+1], 0     // pre-pad to make room for possible pointer shift

.set AddressD, UNDEF
.set AddressC, UNDEF
.set AddressA, UNDEF
.set AddressB, UNDEF

/* Short circuit condition if Alpha == 0, then sumDims=0 */
v_cmp_eq_f32 vcc_lo, s[sgprAlpha], 0.0             // Alpha == 0.0f ?
s_cbranch_vccz label_AlphaNonZero                  // branch if alpha != 0
s_mov_b32 s[sgprSizesSum+0], 0x0                   // Set summation dim=0 if Alpha == 0
label_AlphaNonZero:



/******************************************/
/* Begin setupNewTile, isPap=False           */
/******************************************/


/* global read addresses: work-group */

/* graWorkGroup mapping */
s_mov_b32 s61, 0x10000001L                         // magic number for WGM==8
s_mul_hi_u32 s59, s[sgprWorkGroup1], s61           // s_magic mul
s_mul_i32 s58, s[sgprWorkGroup1], s61              // s_magic mul
s_lshr_b64 s[58:59], s[58:59], 31                  // sMagicDiv
s_mul_i32 s59, s58, 8                              // quotient * non-magic divisor
s_sub_u32 s59, s[sgprWorkGroup1], s59              // WorkGroup1=remainder
s_mul_i32 s59, s59, s[sgprNumWorkGroups0]          // (wg1 % WGM)*nwg0
s_add_u32 s59, s59, s[sgprWorkGroup0]              // wgSerial = wg0 + (wg1 % WGM)*nwg1
s_cmp_ge_u32 s58, s[sgprNumFullBlocks]             // blockId >= numFullBlocks ?
s_cmov_b32 s61, s[sgprMagicNumberWgmRemainder1]    // 
s_cselect_b32 s60, s[sgprWgmRemainder1], 8         // 
s_mul_hi_u32 s3, s59, s61                          // s_magic mul
s_mul_i32 s2, s59, s61                             // s_magic mul
s_lshr_b64 s[2:3], s[2:3], 31                      // sMagicDiv
s_mul_i32 s[sgprWorkGroup1], s[sgprWorkGroup0], s60 // quotient * non-magic divisor
s_sub_u32 s[sgprWorkGroup1], s59, s[sgprWorkGroup1] // WorkGroup1=remainder
s_mul_i32 s58, s58, 8                              // blockId * WGM
s_add_u32 s[sgprWorkGroup1], s[sgprWorkGroup1], s58 // wg1 += blockId * WGM


/* global read addresses: unroll assignment a */

/* v1 */


/* global read addresses: unroll assignment b */

/* v3 */


/* global read addresses: other free assignments */

/* s[sgprWorkGroup2] */


/* global read addresses: tile offsets a */

v_mov_b32 v4, v0                                   // groA0I_0


/* global read addresses: tile offsets b */

v_mov_b32 v5, v2                                   // groB1J_0


/* global read addresses: unroll offsets a */

v_mov_b32 v6, v1                                   // groAL_0
_v_add_co_u32 v7, vcc_lo, 2, v6                    // groAL_1 + LSPA
_v_add_co_u32 v8, vcc_lo, 2, v7                    // groAL_2 + LSPA
_v_add_co_u32 v9, vcc_lo, 2, v8                    // groAL_3 + LSPA


/* global read addresses: unroll offsets b */

v_mov_b32 v10, v3                                  // groBL_0


/* global read addresses: shift a */

s_mul_i32 s58, s[sgprWorkGroup0], 256              // WorkGroup[01] * MT
s_sub_u32 s58, s[sgprSizeI], s58                   // edge = Size0I - WG*MT
s_sub_u32 s58, s58, 4                              // edge -= margin(4)
v_mov_b32 v11, s58                                 // edge vgpr = Size0I- WG*MT - margin(4)
v_min_i32 v4, v11, v4                              // offset = (offset < edge) ? offset(v4) : edge(v11)


/* global read addresses: shift b */

s_mul_i32 s58, s[sgprWorkGroup1], 64               // WorkGroup[01] * MT
s_sub_u32 s58, s[sgprSizeJ], s58                   // edge = Size1J - WG*MT
s_sub_u32 s58, s58, 4                              // edge -= margin(4)
v_mov_b32 v11, s58                                 // edge vgpr = Size1J- WG*MT - margin(4)
v_min_i32 v5, v11, v5                              // offset = (offset < edge) ? offset(v5) : edge(v11)


/* global read addresses: final offsets a */

GLOBAL_OFFSET_A vgprGlobalReadOffsetA+0,  4,  6, 11 // gROA_0_0_0_0
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+1,  4,  7, 11 // gROA_0_0_1_0
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+2,  4,  8, 11 // gROA_0_0_2_0
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+3,  4,  9, 11 // gROA_0_0_3_0


/* global read addresses: final offsets b */

GLOBAL_OFFSET_B vgprGlobalReadOffsetB+0,  5, 10, 6 // gROB_0_0_0_0


/* global read addresses: addresses a */

/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s61, s[sgprWorkGroup0], 256           // WorkGroup[01] * MT
s_mul_i32 s60, s[sgprWorkGroup0], 256              // WorkGroup[01] * MT
s_sub_u32 s[sgprShadowLimitA+0], s[sgprTensor2dSizeA], s60 // sub tileStart
s_subb_u32 s[sgprShadowLimitA+1], s[sgprTensor2dSizeA+1], s61 // sub tileStart
s_lshl_b64 s[sgprShadowLimitA:sgprShadowLimitA+1], s[sgprShadowLimitA:sgprShadowLimitA+1], 0x2 // Set limit to use bytes
s_add_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], 16 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimitA // Move shadow to real if we are within 2^32
s_mul_hi_u32 s59, s[sgprStrideAK], s[sgprWorkGroup2] // Stride*WG
s_mul_i32 s58, s[sgprStrideAK], s[sgprWorkGroup2]  // Stride*WG
s_add_u32 s60, s60, s58                            // accum wg term to tilestart
s_addc_u32 s61, s61, s59                           // accum wg term to tilestart
s_lshl_b64 s[60:61], s[60:61], 0x2                 // tileStart *= BPE
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s60        // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s61       // SRD base = Address+ tileStart1
s_mov_b32 s[sgprSrdA+3], Srd127_96                 // Set bits 127_96 in SRD


/* global read addresses: addresses b */

/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s61, s[sgprWorkGroup1], 64            // WorkGroup[01] * MT
s_mul_i32 s60, s[sgprWorkGroup1], 64               // WorkGroup[01] * MT
s_sub_u32 s[sgprShadowLimitB+0], s[sgprTensor2dSizeB], s60 // sub tileStart
s_subb_u32 s[sgprShadowLimitB+1], s[sgprTensor2dSizeB+1], s61 // sub tileStart
s_lshl_b64 s[sgprShadowLimitB:sgprShadowLimitB+1], s[sgprShadowLimitB:sgprShadowLimitB+1], 0x2 // Set limit to use bytes
s_add_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], 16 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimitB // Move shadow to real if we are within 2^32
s_mul_hi_u32 s59, s[sgprStrideBK], s[sgprWorkGroup2] // Stride*WG
s_mul_i32 s58, s[sgprStrideBK], s[sgprWorkGroup2]  // Stride*WG
s_add_u32 s60, s60, s58                            // accum wg term to tilestart
s_addc_u32 s61, s61, s59                           // accum wg term to tilestart
s_lshl_b64 s[60:61], s[60:61], 0x2                 // tileStart *= BPE
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s60        // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s61       // SRD base = Address+ tileStart1
s_mov_b32 s[sgprSrdB+3], Srd127_96                 // Set bits 127_96 in SRD


/* global read addresses: increments a */

s_mul_i32 s[sgprGlobalReadIncsA+0], DepthU*BpeA, s[sgprStrideAL] // incrA unrollIdx)


/* global read addresses: increments b */

s_mul_i32 s[sgprGlobalReadIncsB+0], DepthU*BpeB, s[sgprStrideBL] // incrB unrollIdx)

/* declare loop num iterations */


s_lshr_b32 s[sgprLoopCounterL], s[sgprSizesSum+0], 3 // s[sgprLoopCounterL] = s[sgprSizesSum+0] / 8
s_mov_b32 s[sgprOrigLoopCounter], s[sgprLoopCounterL] // copy loop counter

s_mul_i32 s58, s[sgprNumWorkGroups0], s[sgprNumWorkGroups1] // wgSerial = (nwg0*ngw1)*wg2 + (nwg0)*wg1 + wg0
s_mul_i32 s58, s58, s[sgprWorkGroup2]              // 
s_mul_i32 s59, s[sgprNumWorkGroups0], s[sgprWorkGroup1] // 
s_add_u32 s58, s58, s59                            // 
s_add_u32 s58, s58, s[sgprWorkGroup0]              // 
s_and_b32 s[sgprStaggerUIter], s[sgprOrigStaggerUIter], s58 // Compute actual stagger start for this tile
s_lshl_b32 s[sgprStaggerUIter], s[sgprStaggerUIter], 3 // shift by StaggerUStride


/* SRDs += (StaggerUIter) * GlobalReadIncsA+0 */
s_mul_hi_u32 s59, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] //  stagger byte offset
s_mul_i32 s58, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] //  stagger byte offset
s_mul_hi_u32 s[sgprWrapUA+1], s[sgprLoopCounterL], s[sgprGlobalReadIncsA+0] // Number of bytes accessed by the unroll loop
s_mul_i32 s[sgprWrapUA+0], s[sgprLoopCounterL], s[sgprGlobalReadIncsA+0] // Number of bytes accessed by the unroll loop
s_sub_u32 s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0], s[sgprWrapUA+0] // remove one iteration
s_subb_u32 s[sgprWrapUA+1], 0, s[sgprWrapUA+1]     // remove one iteration
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s58        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], s59      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s58 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s59 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimitA // Move shadow to real if we are within 2^32


/* SRDs += (StaggerUIter) * GlobalReadIncsB+0 */
s_mul_hi_u32 s59, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] //  stagger byte offset
s_mul_i32 s58, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] //  stagger byte offset
s_mul_hi_u32 s[sgprWrapUB+1], s[sgprLoopCounterL], s[sgprGlobalReadIncsB+0] // Number of bytes accessed by the unroll loop
s_mul_i32 s[sgprWrapUB+0], s[sgprLoopCounterL], s[sgprGlobalReadIncsB+0] // Number of bytes accessed by the unroll loop
s_sub_u32 s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0], s[sgprWrapUB+0] // remove one iteration
s_subb_u32 s[sgprWrapUB+1], 0, s[sgprWrapUB+1]     // remove one iteration
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s58        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], s59      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s58 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s59 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimitB // Move shadow to real if we are within 2^32
s_add_u32 s[sgprStaggerUIter], s[sgprStaggerUIter], 2 // Subtract (PGR-1); StaggerUIter now contains target iteration to wrap

/* local read addresses: init pointers a */


/* localReadInitPointers */

/* local read addresses: init pointers b */


/* localReadInitPointers */


/* prefetch: global -> local */

s_cmp_eq_u32 s[sgprLoopCounterL], 0                // at last iteration?
s_cbranch_scc1 ShadowInitStart_10                  // skip to ShadowInitStart iter b/c numIter==0


_buffer_load_b128 v[vgprG2LA+0:vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_0_0
_buffer_load_b128 v[vgprG2LA+4:vgprG2LA+4+3], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_1_0
_buffer_load_b128 v[vgprG2LA+8:vgprG2LA+8+3], v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_2_0
_buffer_load_b128 v[vgprG2LA+12:vgprG2LA+12+3], v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_3_0


_buffer_load_b128 v[vgprG2LB+0:vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0


/* global read inc A loopL */
s_add_u32 s60, s[sgprLoopCounterL], 1              // remove pf(1)
s_cmp_eq_u32 s[sgprStaggerUIter], s60              // Is this wrapIter? (pf)
s_cselect_b32 s58, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
s_cselect_b32 s59, s[sgprWrapUA+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s58        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], s59      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s58 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s59 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimitA // Move shadow to real if we are within 2^32

/* global read inc B loopL */
s_add_u32 s60, s[sgprLoopCounterL], 1              // remove pf(1)
s_cmp_eq_u32 s[sgprStaggerUIter], s60              // Is this wrapIter? (pf)
s_cselect_b32 s58, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
s_cselect_b32 s59, s[sgprWrapUB+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s58        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], s59      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s58 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s59 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimitB // Move shadow to real if we are within 2^32


/******************************************/
/* End setupNewTile, isPap=False             */
/******************************************/

ShadowInitStart_10: // 

s_mov_b32 s[sgprSrdD+2], BufferOOB                 // 
s_mov_b32 s[sgprSrdD+3], Srd127_96                 // Set bits 127_96 in post-loop SRD

s_mov_b32 s[sgprSrdC+2], BufferOOB                 // 
s_mov_b32 s[sgprSrdC+3], Srd127_96                 // Set bits 127_96 in post-loop SRD


s_mul_i32 s58, MT1, s[sgprWorkGroup1]              // <- wg1*MT1
s_mul_hi_u32 s57, s58, s[sgprStrideC1J]            // CScale s58 by Stride
s_mul_i32 s56, s58, s[sgprStrideC1J]               // CScale s58 by Stride
s_lshl_b64 s[56:57], s[56:57], 2                   // scale by bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s56        // add lo to SRD
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], s57       // add hi to SRD
s_mul_hi_u32 s57, s58, s[sgprStrideD1J]            // Scale s58 by Stride
s_mul_i32 s56, s58, s[sgprStrideD1J]               // Scale s58 by Stride
s_lshl_b64 s[56:57], s[56:57], 2                   // scale by bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s56        // add lo to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], s57       // add hi to SRD

s_mul_hi_u32 s57, s[sgprWorkGroup2], s[sgprStrideCK] // CScale s[sgprWorkGroup2] by Stride
s_mul_i32 s56, s[sgprWorkGroup2], s[sgprStrideCK]  // CScale s[sgprWorkGroup2] by Stride
s_lshl_b64 s[56:57], s[56:57], 2                   // scale by bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s56        // add lo to SRD
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], s57       // add hi to SRD
s_mul_hi_u32 s57, s[sgprWorkGroup2], s[sgprStrideDK] // Scale s[sgprWorkGroup2] by Stride
s_mul_i32 s56, s[sgprWorkGroup2], s[sgprStrideDK]  // Scale s[sgprWorkGroup2] by Stride
s_lshl_b64 s[56:57], s[56:57], 2                   // scale by bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s56        // add lo to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], s57       // add hi to SRD



/* initC: remove C-tile 0-128 from pool */

/* initC: remove AB-tile 130-179 from pool */
v_mov_b32 v[vgprValuC+0], 0x0                      // initC
v_mov_b32 v[vgprValuC+1], 0x0                      // initC
v_mov_b32 v[vgprValuC+2], 0x0                      // initC
v_mov_b32 v[vgprValuC+3], 0x0                      // initC
v_mov_b32 v[vgprValuC+4], 0x0                      // initC
v_mov_b32 v[vgprValuC+5], 0x0                      // initC
v_mov_b32 v[vgprValuC+6], 0x0                      // initC
v_mov_b32 v[vgprValuC+7], 0x0                      // initC
v_mov_b32 v[vgprValuC+8], 0x0                      // initC
v_mov_b32 v[vgprValuC+9], 0x0                      // initC
v_mov_b32 v[vgprValuC+10], 0x0                     // initC
v_mov_b32 v[vgprValuC+11], 0x0                     // initC
v_mov_b32 v[vgprValuC+12], 0x0                     // initC
v_mov_b32 v[vgprValuC+13], 0x0                     // initC
v_mov_b32 v[vgprValuC+14], 0x0                     // initC
v_mov_b32 v[vgprValuC+15], 0x0                     // initC
v_mov_b32 v[vgprValuC+16], 0x0                     // initC
v_mov_b32 v[vgprValuC+17], 0x0                     // initC
v_mov_b32 v[vgprValuC+18], 0x0                     // initC
v_mov_b32 v[vgprValuC+19], 0x0                     // initC
v_mov_b32 v[vgprValuC+20], 0x0                     // initC
v_mov_b32 v[vgprValuC+21], 0x0                     // initC
v_mov_b32 v[vgprValuC+22], 0x0                     // initC
v_mov_b32 v[vgprValuC+23], 0x0                     // initC
v_mov_b32 v[vgprValuC+24], 0x0                     // initC
v_mov_b32 v[vgprValuC+25], 0x0                     // initC
v_mov_b32 v[vgprValuC+26], 0x0                     // initC
v_mov_b32 v[vgprValuC+27], 0x0                     // initC
v_mov_b32 v[vgprValuC+28], 0x0                     // initC
v_mov_b32 v[vgprValuC+29], 0x0                     // initC
v_mov_b32 v[vgprValuC+30], 0x0                     // initC
v_mov_b32 v[vgprValuC+31], 0x0                     // initC
v_mov_b32 v[vgprValuC+32], 0x0                     // initC
v_mov_b32 v[vgprValuC+33], 0x0                     // initC
v_mov_b32 v[vgprValuC+34], 0x0                     // initC
v_mov_b32 v[vgprValuC+35], 0x0                     // initC
v_mov_b32 v[vgprValuC+36], 0x0                     // initC
v_mov_b32 v[vgprValuC+37], 0x0                     // initC
v_mov_b32 v[vgprValuC+38], 0x0                     // initC
v_mov_b32 v[vgprValuC+39], 0x0                     // initC
v_mov_b32 v[vgprValuC+40], 0x0                     // initC
v_mov_b32 v[vgprValuC+41], 0x0                     // initC
v_mov_b32 v[vgprValuC+42], 0x0                     // initC
v_mov_b32 v[vgprValuC+43], 0x0                     // initC
v_mov_b32 v[vgprValuC+44], 0x0                     // initC
v_mov_b32 v[vgprValuC+45], 0x0                     // initC
v_mov_b32 v[vgprValuC+46], 0x0                     // initC
v_mov_b32 v[vgprValuC+47], 0x0                     // initC
v_mov_b32 v[vgprValuC+48], 0x0                     // initC
v_mov_b32 v[vgprValuC+49], 0x0                     // initC
v_mov_b32 v[vgprValuC+50], 0x0                     // initC
v_mov_b32 v[vgprValuC+51], 0x0                     // initC
v_mov_b32 v[vgprValuC+52], 0x0                     // initC
v_mov_b32 v[vgprValuC+53], 0x0                     // initC
v_mov_b32 v[vgprValuC+54], 0x0                     // initC
v_mov_b32 v[vgprValuC+55], 0x0                     // initC
v_mov_b32 v[vgprValuC+56], 0x0                     // initC
v_mov_b32 v[vgprValuC+57], 0x0                     // initC
v_mov_b32 v[vgprValuC+58], 0x0                     // initC
v_mov_b32 v[vgprValuC+59], 0x0                     // initC
v_mov_b32 v[vgprValuC+60], 0x0                     // initC
v_mov_b32 v[vgprValuC+61], 0x0                     // initC
v_mov_b32 v[vgprValuC+62], 0x0                     // initC
v_mov_b32 v[vgprValuC+63], 0x0                     // initC
v_mov_b32 v[vgprValuC+64], 0x0                     // initC
v_mov_b32 v[vgprValuC+65], 0x0                     // initC
v_mov_b32 v[vgprValuC+66], 0x0                     // initC
v_mov_b32 v[vgprValuC+67], 0x0                     // initC
v_mov_b32 v[vgprValuC+68], 0x0                     // initC
v_mov_b32 v[vgprValuC+69], 0x0                     // initC
v_mov_b32 v[vgprValuC+70], 0x0                     // initC
v_mov_b32 v[vgprValuC+71], 0x0                     // initC
v_mov_b32 v[vgprValuC+72], 0x0                     // initC
v_mov_b32 v[vgprValuC+73], 0x0                     // initC
v_mov_b32 v[vgprValuC+74], 0x0                     // initC
v_mov_b32 v[vgprValuC+75], 0x0                     // initC
v_mov_b32 v[vgprValuC+76], 0x0                     // initC
v_mov_b32 v[vgprValuC+77], 0x0                     // initC
v_mov_b32 v[vgprValuC+78], 0x0                     // initC
v_mov_b32 v[vgprValuC+79], 0x0                     // initC
v_mov_b32 v[vgprValuC+80], 0x0                     // initC
v_mov_b32 v[vgprValuC+81], 0x0                     // initC
v_mov_b32 v[vgprValuC+82], 0x0                     // initC
v_mov_b32 v[vgprValuC+83], 0x0                     // initC
v_mov_b32 v[vgprValuC+84], 0x0                     // initC
v_mov_b32 v[vgprValuC+85], 0x0                     // initC
v_mov_b32 v[vgprValuC+86], 0x0                     // initC
v_mov_b32 v[vgprValuC+87], 0x0                     // initC
v_mov_b32 v[vgprValuC+88], 0x0                     // initC
v_mov_b32 v[vgprValuC+89], 0x0                     // initC
v_mov_b32 v[vgprValuC+90], 0x0                     // initC
v_mov_b32 v[vgprValuC+91], 0x0                     // initC
v_mov_b32 v[vgprValuC+92], 0x0                     // initC
v_mov_b32 v[vgprValuC+93], 0x0                     // initC
v_mov_b32 v[vgprValuC+94], 0x0                     // initC
v_mov_b32 v[vgprValuC+95], 0x0                     // initC
v_mov_b32 v[vgprValuC+96], 0x0                     // initC
v_mov_b32 v[vgprValuC+97], 0x0                     // initC
v_mov_b32 v[vgprValuC+98], 0x0                     // initC
v_mov_b32 v[vgprValuC+99], 0x0                     // initC
v_mov_b32 v[vgprValuC+100], 0x0                    // initC
v_mov_b32 v[vgprValuC+101], 0x0                    // initC
v_mov_b32 v[vgprValuC+102], 0x0                    // initC
v_mov_b32 v[vgprValuC+103], 0x0                    // initC
v_mov_b32 v[vgprValuC+104], 0x0                    // initC
v_mov_b32 v[vgprValuC+105], 0x0                    // initC
v_mov_b32 v[vgprValuC+106], 0x0                    // initC
v_mov_b32 v[vgprValuC+107], 0x0                    // initC
v_mov_b32 v[vgprValuC+108], 0x0                    // initC
v_mov_b32 v[vgprValuC+109], 0x0                    // initC
v_mov_b32 v[vgprValuC+110], 0x0                    // initC
v_mov_b32 v[vgprValuC+111], 0x0                    // initC
v_mov_b32 v[vgprValuC+112], 0x0                    // initC
v_mov_b32 v[vgprValuC+113], 0x0                    // initC
v_mov_b32 v[vgprValuC+114], 0x0                    // initC
v_mov_b32 v[vgprValuC+115], 0x0                    // initC
v_mov_b32 v[vgprValuC+116], 0x0                    // initC
v_mov_b32 v[vgprValuC+117], 0x0                    // initC
v_mov_b32 v[vgprValuC+118], 0x0                    // initC
v_mov_b32 v[vgprValuC+119], 0x0                    // initC
v_mov_b32 v[vgprValuC+120], 0x0                    // initC
v_mov_b32 v[vgprValuC+121], 0x0                    // initC
v_mov_b32 v[vgprValuC+122], 0x0                    // initC
v_mov_b32 v[vgprValuC+123], 0x0                    // initC
v_mov_b32 v[vgprValuC+124], 0x0                    // initC
v_mov_b32 v[vgprValuC+125], 0x0                    // initC
v_mov_b32 v[vgprValuC+126], 0x0                    // initC
v_mov_b32 v[vgprValuC+127], 0x0                    // initC

s_cmp_eq_u32 s[sgprLoopCounterL], 0                // at last iteration?

/* after InitC, skip to end of prefetch last iter if numIter==0 */
s_cbranch_scc0 label_NoBranch_11                   // Only branch on scc1
s_getpc_B64 s[56:57]                               // addr of next instr
s_add_i32 s58, PrefetchGlobalLastIterEnd_5, 0x4    // target branch offset
s_add_u32 s56, s56, s58                            // add target branch offset
s_addc_u32 s57, s57, 0                             // add high and carry
s_setpc_b64 s[56:57]                               // branch to PrefetchGlobalLastIterEnd_5
label_NoBranch_11:

s_waitcnt vmcnt(0)                                 // lgkmcnt=-1 vmcnt=0 8wait for global read


/* local write a */
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+3] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+3] offset:2048 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 2048
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+8:vgprG2LA+8+3] offset:4096 // lwoA_0_0_2_0 = (0*LSCA) + (2*LSPA)(*MT0I+PAD) = 4096
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+12:vgprG2LA+12+3] offset:6144 // lwoA_0_0_3_0 = (0*LSCA) + (3*LSPA)(*MT0I+PAD) = 6144

/* local write b */
_ds_store_b128 v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+3] offset:0 // lwoB_0_0_0_0 = (0*LSCB) + (0*LSPB)(*MT1J+PAD) = 0


/* local write swap a */


/* (EPS=1) local write swap internal offset -> 16384 */


/* local write swap b */


/* (EPS=1) local write swap internal offset -> 16384 */



s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-10prefetch wait for local write

s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //


/* local read prefetch a */

_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+8:vgprValuA_X0_I0+8+3], v[vgprLocalReadAddrA] offset:512 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+12:vgprValuA_X0_I0+12+3], v[vgprLocalReadAddrA] offset:768 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=0 iui=0


/* local read prefetch b */

_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0


/* local read inc a */

/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */


/* local read inc b */

/* N/A, lro->64 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */



/******************************************/
/* Unrolled Loop(s) - Begin               */
/******************************************/

openLoopL_12:
s_cmp_le_u32 s[sgprLoopCounterL], 0x1              // LoopCounterL < EndCounter
s_cbranch_scc1 LoopEndL_2                          // do not enter LoopL
LoopBeginL_1:


/******************************************/
/* Unrolled Loop 1/2 - Begin              */
/******************************************/

label_0013: // LoopCopy1 


/* Begin Each Unroll: Check VGPR.checkin for INT8 LW */



/* iter 0 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+8:vgprValuA_X1_I0+8+3], v[vgprLocalReadAddrA] offset:1536 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=1 iui=0
_buffer_load_b128 v[vgprG2LA+0:vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_0_0
_buffer_load_b128 v[vgprG2LA+4:vgprG2LA+4+3], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_1_0
_buffer_load_b128 v[vgprG2LA+8:vgprG2LA+8+3], v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_2_0
_buffer_load_b128 v[vgprG2LA+12:vgprG2LA+12+3], v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_3_0
_ds_load_b128 v[vgprValuA_X1_I0+12:vgprValuA_X1_I0+12+3], v[vgprLocalReadAddrA] offset:1792 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:256 // L -> Reg lro=64 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:384 // L -> Reg lro=64 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->512 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->128 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(6)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=6 newLW=0 newLR=0
MAC_16x8_X0

/* iter 1 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:2048 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:2304 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+8:vgprValuA_X0_I0+8+3], v[vgprLocalReadAddrA] offset:2560 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=0 iui=0
_buffer_load_b128 v[vgprG2LB+0:vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0
_ds_load_b128 v[vgprValuA_X0_I0+12:vgprValuA_X0_I0+12+3], v[vgprLocalReadAddrA] offset:2816 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:512 // L -> Reg lro=128 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:640 // L -> Reg lro=128 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->768 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->192 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(6)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=6 newLW=0 newLR=0
MAC_16x8_X1

/* iter 2 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:3072 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:3328 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+8:vgprValuA_X1_I0+8+3], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=1 iui=0

/* global read inc A loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s56, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
s_cselect_b32 s57, s[sgprWrapUA+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s56        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], s57      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s56 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s57 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimitA // Move shadow to real if we are within 2^32
_ds_load_b128 v[vgprValuA_X1_I0+12:vgprValuA_X1_I0+12+3], v[vgprLocalReadAddrA] offset:3840 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:768 // L -> Reg lro=192 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:896 // L -> Reg lro=192 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1024 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(6)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=6 newLW=0 newLR=0
MAC_16x8_X0

/* iter 3 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:4096 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:4352 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+8:vgprValuA_X0_I0+8+3], v[vgprLocalReadAddrA] offset:4608 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=0 iui=0

/* global read inc B loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s56, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
s_cselect_b32 s57, s[sgprWrapUB+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s56        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], s57      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s56 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s57 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimitB // Move shadow to real if we are within 2^32
_ds_load_b128 v[vgprValuA_X0_I0+12:vgprValuA_X0_I0+12+3], v[vgprLocalReadAddrA] offset:4864 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1024 // L -> Reg lro=256 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:1152 // L -> Reg lro=256 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1280 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->320 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
/* sched write - iter 3 writesPerItem=1 */
s_waitcnt vmcnt(4)                                 // lgkmcnt=-1 vmcnt=4wait for global read before writing to local
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+3] offset:16384 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 16384
s_waitcnt lgkmcnt(7)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=7 newLW=0 newLR=0
MAC_16x8_X1

/* iter 4 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:5120 // L -> Reg lro=1280 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:5376 // L -> Reg lro=1280 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+8:vgprValuA_X1_I0+8+3], v[vgprLocalReadAddrA] offset:5632 // L -> Reg lro=1280 swapByteOffset=0 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+12:vgprValuA_X1_I0+12+3], v[vgprLocalReadAddrA] offset:5888 // L -> Reg lro=1280 swapByteOffset=0 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1280 // L -> Reg lro=320 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:1408 // L -> Reg lro=320 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1536 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->384 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
/* sched write - iter 4 writesPerItem=1 */
s_waitcnt vmcnt(3)                                 // lgkmcnt=-1 vmcnt=3wait for global read before writing to local
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+3] offset:18432 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 18432
s_waitcnt lgkmcnt(7)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=7 newLW=0 newLR=0
MAC_16x8_X0

/* iter 5 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:6144 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:6400 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+8:vgprValuA_X0_I0+8+3], v[vgprLocalReadAddrA] offset:6656 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+12:vgprValuA_X0_I0+12+3], v[vgprLocalReadAddrA] offset:6912 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1536 // L -> Reg lro=384 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:1664 // L -> Reg lro=384 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1792 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->448 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
/* sched write - iter 5 writesPerItem=1 */
s_waitcnt vmcnt(2)                                 // lgkmcnt=-1 vmcnt=2wait for global read before writing to local
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+8:vgprG2LA+8+3] offset:20480 // lwoA_0_0_2_0 = (0*LSCA) + (2*LSPA)(*MT0I+PAD) = 20480
s_waitcnt lgkmcnt(7)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=7 newLW=0 newLR=0
MAC_16x8_X1

/* iter 6 (reset local read pointers iteration)  (swap and reset local write pointers iteration)  (swap local read pointers iteration)  */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:7168 // L -> Reg lro=1792 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:7424 // L -> Reg lro=1792 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+8:vgprValuA_X1_I0+8+3], v[vgprLocalReadAddrA] offset:7680 // L -> Reg lro=1792 swapByteOffset=0 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+12:vgprValuA_X1_I0+12+3], v[vgprLocalReadAddrA] offset:7936 // L -> Reg lro=1792 swapByteOffset=0 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1792 // L -> Reg lro=448 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:1920 // L -> Reg lro=448 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
/* sched write - iter 6 writesPerItem=1 */
s_waitcnt vmcnt(1)                                 // lgkmcnt=-1 vmcnt=1wait for global read before writing to local
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+12:vgprG2LA+12+3] offset:22528 // lwoA_0_0_3_0 = (0*LSCA) + (3*LSPA)(*MT0I+PAD) = 22528
/* sched write - iter 6 writesPerItem=1 */
s_waitcnt vmcnt(0)                                 // lgkmcnt=-1 vmcnt=0wait for global read before writing to local
_ds_store_b128 v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+3] offset:16384 // lwoB_0_0_0_0 = (0*LSCB) + (0*LSPB)(*MT1J+PAD) = 16384

/* local write swap offsets a */

/* (EPS=1) local write swap internal offset -> 0 */

/* local write swap offsets b */

/* (EPS=1) local write swap internal offset -> 0 */

/* local read swap offsets a */

/* local read swap internal offset -> 16384 */

/* local read swap offsets b */

/* local read swap internal offset -> 16384 */

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */
s_waitcnt lgkmcnt(8)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=8 newLW=0 newLR=0
MAC_16x8_X0

/* iter 7 */

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-13wait for local write
s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //

/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:16384 // L -> Reg lro=0 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:16640 // L -> Reg lro=0 swapByteOffset=16384 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+8:vgprValuA_X0_I0+8+3], v[vgprLocalReadAddrA] offset:16896 // L -> Reg lro=0 swapByteOffset=16384 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+12:vgprValuA_X0_I0+12+3], v[vgprLocalReadAddrA] offset:17152 // L -> Reg lro=0 swapByteOffset=16384 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:16384 // L -> Reg lro=0 swapByteOffset=16384 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:16512 // L -> Reg lro=0 swapByteOffset=16384 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->64 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(6)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=6 newLW=0 newLR=0
MAC_16x8_X1

/******************************************/
/* Unrolled Loop - End 1/2                */
/******************************************/


/* closeLoop loopL finalLoop=0 tailLoop=0 */
s_sub_u32 s[sgprLoopCounterL], s[sgprLoopCounterL], 1 // dec counterL
s_cmp_eq_i32 s[sgprLoopCounterL], 0x1              // counterL==1
s_cbranch_scc1 LoopEndL_oddexit_3                  // exit LoopL


/******************************************/
/* Unrolled Loop 2/2 - Begin              */
/******************************************/

label_0014: // LoopCopy2 


/* Begin Each Unroll: Check VGPR.checkin for INT8 LW */



/* iter 0 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:17408 // L -> Reg lro=256 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:17664 // L -> Reg lro=256 swapByteOffset=16384 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+8:vgprValuA_X1_I0+8+3], v[vgprLocalReadAddrA] offset:17920 // L -> Reg lro=256 swapByteOffset=16384 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=1 iui=0
_buffer_load_b128 v[vgprG2LA+0:vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_0_0
_buffer_load_b128 v[vgprG2LA+4:vgprG2LA+4+3], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_1_0
_buffer_load_b128 v[vgprG2LA+8:vgprG2LA+8+3], v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_2_0
_buffer_load_b128 v[vgprG2LA+12:vgprG2LA+12+3], v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_3_0
_ds_load_b128 v[vgprValuA_X1_I0+12:vgprValuA_X1_I0+12+3], v[vgprLocalReadAddrA] offset:18176 // L -> Reg lro=256 swapByteOffset=16384 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:16640 // L -> Reg lro=64 swapByteOffset=16384 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:16768 // L -> Reg lro=64 swapByteOffset=16384 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->512 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->128 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(6)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=6 newLW=0 newLR=0
MAC_16x8_X0

/* iter 1 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:18432 // L -> Reg lro=512 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:18688 // L -> Reg lro=512 swapByteOffset=16384 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+8:vgprValuA_X0_I0+8+3], v[vgprLocalReadAddrA] offset:18944 // L -> Reg lro=512 swapByteOffset=16384 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=0 iui=0
_buffer_load_b128 v[vgprG2LB+0:vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0
_ds_load_b128 v[vgprValuA_X0_I0+12:vgprValuA_X0_I0+12+3], v[vgprLocalReadAddrA] offset:19200 // L -> Reg lro=512 swapByteOffset=16384 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:16896 // L -> Reg lro=128 swapByteOffset=16384 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:17024 // L -> Reg lro=128 swapByteOffset=16384 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->768 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->192 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(6)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=6 newLW=0 newLR=0
MAC_16x8_X1

/* iter 2 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:19456 // L -> Reg lro=768 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:19712 // L -> Reg lro=768 swapByteOffset=16384 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+8:vgprValuA_X1_I0+8+3], v[vgprLocalReadAddrA] offset:19968 // L -> Reg lro=768 swapByteOffset=16384 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=1 iui=0

/* global read inc A loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s56, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
s_cselect_b32 s57, s[sgprWrapUA+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s56        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], s57      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s56 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s57 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimitA // Move shadow to real if we are within 2^32
_ds_load_b128 v[vgprValuA_X1_I0+12:vgprValuA_X1_I0+12+3], v[vgprLocalReadAddrA] offset:20224 // L -> Reg lro=768 swapByteOffset=16384 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:17152 // L -> Reg lro=192 swapByteOffset=16384 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:17280 // L -> Reg lro=192 swapByteOffset=16384 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1024 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(6)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=6 newLW=0 newLR=0
MAC_16x8_X0

/* iter 3 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:20480 // L -> Reg lro=1024 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:20736 // L -> Reg lro=1024 swapByteOffset=16384 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+8:vgprValuA_X0_I0+8+3], v[vgprLocalReadAddrA] offset:20992 // L -> Reg lro=1024 swapByteOffset=16384 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=0 iui=0

/* global read inc B loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s56, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
s_cselect_b32 s57, s[sgprWrapUB+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s56        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], s57      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s56 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s57 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimitB // Move shadow to real if we are within 2^32
_ds_load_b128 v[vgprValuA_X0_I0+12:vgprValuA_X0_I0+12+3], v[vgprLocalReadAddrA] offset:21248 // L -> Reg lro=1024 swapByteOffset=16384 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:17408 // L -> Reg lro=256 swapByteOffset=16384 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:17536 // L -> Reg lro=256 swapByteOffset=16384 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1280 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->320 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
/* sched write - iter 3 writesPerItem=1 */
s_waitcnt vmcnt(4)                                 // lgkmcnt=-1 vmcnt=4wait for global read before writing to local
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+3] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0
s_waitcnt lgkmcnt(7)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=7 newLW=0 newLR=0
MAC_16x8_X1

/* iter 4 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:21504 // L -> Reg lro=1280 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:21760 // L -> Reg lro=1280 swapByteOffset=16384 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+8:vgprValuA_X1_I0+8+3], v[vgprLocalReadAddrA] offset:22016 // L -> Reg lro=1280 swapByteOffset=16384 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+12:vgprValuA_X1_I0+12+3], v[vgprLocalReadAddrA] offset:22272 // L -> Reg lro=1280 swapByteOffset=16384 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:17664 // L -> Reg lro=320 swapByteOffset=16384 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:17792 // L -> Reg lro=320 swapByteOffset=16384 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1536 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->384 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
/* sched write - iter 4 writesPerItem=1 */
s_waitcnt vmcnt(3)                                 // lgkmcnt=-1 vmcnt=3wait for global read before writing to local
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+3] offset:2048 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 2048
s_waitcnt lgkmcnt(7)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=7 newLW=0 newLR=0
MAC_16x8_X0

/* iter 5 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:22528 // L -> Reg lro=1536 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:22784 // L -> Reg lro=1536 swapByteOffset=16384 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+8:vgprValuA_X0_I0+8+3], v[vgprLocalReadAddrA] offset:23040 // L -> Reg lro=1536 swapByteOffset=16384 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+12:vgprValuA_X0_I0+12+3], v[vgprLocalReadAddrA] offset:23296 // L -> Reg lro=1536 swapByteOffset=16384 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:17920 // L -> Reg lro=384 swapByteOffset=16384 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:18048 // L -> Reg lro=384 swapByteOffset=16384 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1792 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->448 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
/* sched write - iter 5 writesPerItem=1 */
s_waitcnt vmcnt(2)                                 // lgkmcnt=-1 vmcnt=2wait for global read before writing to local
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+8:vgprG2LA+8+3] offset:4096 // lwoA_0_0_2_0 = (0*LSCA) + (2*LSPA)(*MT0I+PAD) = 4096
s_waitcnt lgkmcnt(7)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=7 newLW=0 newLR=0
MAC_16x8_X1

/* iter 6 (reset local read pointers iteration)  (swap and reset local write pointers iteration)  (swap local read pointers iteration)  */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:23552 // L -> Reg lro=1792 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:23808 // L -> Reg lro=1792 swapByteOffset=16384 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+8:vgprValuA_X1_I0+8+3], v[vgprLocalReadAddrA] offset:24064 // L -> Reg lro=1792 swapByteOffset=16384 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+12:vgprValuA_X1_I0+12+3], v[vgprLocalReadAddrA] offset:24320 // L -> Reg lro=1792 swapByteOffset=16384 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:18176 // L -> Reg lro=448 swapByteOffset=16384 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:18304 // L -> Reg lro=448 swapByteOffset=16384 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
/* sched write - iter 6 writesPerItem=1 */
s_waitcnt vmcnt(1)                                 // lgkmcnt=-1 vmcnt=1wait for global read before writing to local
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+12:vgprG2LA+12+3] offset:6144 // lwoA_0_0_3_0 = (0*LSCA) + (3*LSPA)(*MT0I+PAD) = 6144
/* sched write - iter 6 writesPerItem=1 */
s_waitcnt vmcnt(0)                                 // lgkmcnt=-1 vmcnt=0wait for global read before writing to local
_ds_store_b128 v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+3] offset:0 // lwoB_0_0_0_0 = (0*LSCB) + (0*LSPB)(*MT1J+PAD) = 0

/* local write swap offsets a */

/* (EPS=1) local write swap internal offset -> 16384 */

/* local write swap offsets b */

/* (EPS=1) local write swap internal offset -> 16384 */

/* local read swap offsets a */

/* local read swap internal offset -> 0 */

/* local read swap offsets b */

/* local read swap internal offset -> 0 */

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */
s_waitcnt lgkmcnt(8)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=8 newLW=0 newLR=0
MAC_16x8_X0

/* iter 7 */

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-13wait for local write
s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //

/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+8:vgprValuA_X0_I0+8+3], v[vgprLocalReadAddrA] offset:512 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+12:vgprValuA_X0_I0+12+3], v[vgprLocalReadAddrA] offset:768 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->64 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(6)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=6 newLW=0 newLR=0
MAC_16x8_X1

/******************************************/
/* Unrolled Loop - End 2/2 (final)        */
/******************************************/


/* closeLoop loopL finalLoop=1 tailLoop=0 */
s_sub_u32 s[sgprLoopCounterL], s[sgprLoopCounterL], 1 // dec counterL
s_cmp_eq_i32 s[sgprLoopCounterL], 0x1              // counterL==1
s_cbranch_scc0 LoopBeginL_1                        // restart LoopL
LoopEndL_evenexit_4: // unroll loop eveniter exit
s_branch LoopEndL_2                                // exit unroll loopL (and skip second exit code)
LoopEndL_oddexit_3: // unroll loop odditer exit

/* Select high bank of LDS */
v_xor_b32 v[vgprLocalReadAddrA], 0x4000, v[vgprLocalReadAddrA] // swap Red Blk
v_xor_b32 v[vgprLocalReadAddrB], 0x4000, v[vgprLocalReadAddrB] // swap Red Blk
LoopEndL_2:


/* Before NLL: Check VGPR.checkin for INT8 LW */


/******************************************/
/* Opt. NoLoadLoop Without PAP - Begin                                      */
/******************************************/

s_cmpk_eq_u32 s[sgprBeta], 0x0                     // Beta == 0
s_cbranch_scc0 OptNLL_End_15                       // Branch if Beta is not zero

s_cmp_eq_u32 s[sgprAlpha], 1.0                     // Alpha == 1.0 ?
s_cbranch_scc0 OptNLL_End_15                       // branch if alpha != 1

s_and_b32 s56, 255, s[sgprSizeI]                   // s56 = s[sgprSizeI] % 256
s_add_u32 s57, -0x1, s[sgprNumWorkGroups0]         // 
s_cmp_ge_u32 s[sgprWorkGroup0], s57                // wg0 >= nwg0-1 ?
s_cselect_b32 s56, s56, 0                          // set rMT0
s_cmpk_gt_u32 s56, 0x0                             // rMT0 > 0
s_cbranch_scc1 OptNLL_End_15                       // jump if edges required
s_and_b32 s56, 63, s[sgprSizeJ]                    // s56 = s[sgprSizeJ] % 64
s_add_u32 s57, -0x1, s[sgprNumWorkGroups1]         // 
s_cmp_ge_u32 s[sgprWorkGroup1], s57                // wg1 >= nwg1-1
s_cselect_b32 s56, s56, 0                          // set rMT1
s_cmpk_gt_u32 s56, 0x0                             // rMT1 > 0
s_cbranch_scc1 OptNLL_End_15                       // jump if edges required

s_and_b32 s57, 7, s[sgprSizesSum+0]                // s57 = s[sgprSizesSum+0] % 8
s_cmp_eq_u32 s57, 0x0                              // numIterL == 0
s_cbranch_scc0 OptNLL_End_15                       // skip if tail loop required



/* iter 0 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+8:vgprValuA_X1_I0+8+3], v[vgprLocalReadAddrA] offset:1536 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+12:vgprValuA_X1_I0+12+3], v[vgprLocalReadAddrA] offset:1792 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:256 // L -> Reg lro=64 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:384 // L -> Reg lro=64 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->512 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->128 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(6)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=6 newLW=0 newLR=0
MAC_16x8_X0

/* iter 1 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:2048 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:2304 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+8:vgprValuA_X0_I0+8+3], v[vgprLocalReadAddrA] offset:2560 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+12:vgprValuA_X0_I0+12+3], v[vgprLocalReadAddrA] offset:2816 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:512 // L -> Reg lro=128 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:640 // L -> Reg lro=128 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->768 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->192 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(6)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=6 newLW=0 newLR=0
MAC_16x8_X1

/* iter 2 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:3072 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:3328 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+8:vgprValuA_X1_I0+8+3], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+12:vgprValuA_X1_I0+12+3], v[vgprLocalReadAddrA] offset:3840 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:768 // L -> Reg lro=192 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:896 // L -> Reg lro=192 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1024 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(6)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=6 newLW=0 newLR=0
MAC_16x8_X0

/* iter 3 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:4096 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:4352 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+8:vgprValuA_X0_I0+8+3], v[vgprLocalReadAddrA] offset:4608 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+12:vgprValuA_X0_I0+12+3], v[vgprLocalReadAddrA] offset:4864 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1024 // L -> Reg lro=256 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:1152 // L -> Reg lro=256 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1280 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->320 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(6)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=6 newLW=0 newLR=0
MAC_16x8_X1

/* iter 4 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:5120 // L -> Reg lro=1280 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:5376 // L -> Reg lro=1280 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+8:vgprValuA_X1_I0+8+3], v[vgprLocalReadAddrA] offset:5632 // L -> Reg lro=1280 swapByteOffset=0 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+12:vgprValuA_X1_I0+12+3], v[vgprLocalReadAddrA] offset:5888 // L -> Reg lro=1280 swapByteOffset=0 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1280 // L -> Reg lro=320 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:1408 // L -> Reg lro=320 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1536 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->384 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(6)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=6 newLW=0 newLR=0
MAC_16x8_X0

/* iter 5 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:6144 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:6400 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+8:vgprValuA_X0_I0+8+3], v[vgprLocalReadAddrA] offset:6656 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+12:vgprValuA_X0_I0+12+3], v[vgprLocalReadAddrA] offset:6912 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1536 // L -> Reg lro=384 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:1664 // L -> Reg lro=384 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1792 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->448 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(6)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=6 newLW=0 newLR=0
MAC_16x8_X1

/* iter 6 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:7168 // L -> Reg lro=1792 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:7424 // L -> Reg lro=1792 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+8:vgprValuA_X1_I0+8+3], v[vgprLocalReadAddrA] offset:7680 // L -> Reg lro=1792 swapByteOffset=0 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+12:vgprValuA_X1_I0+12+3], v[vgprLocalReadAddrA] offset:7936 // L -> Reg lro=1792 swapByteOffset=0 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1792 // L -> Reg lro=448 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:1920 // L -> Reg lro=448 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
s_waitcnt lgkmcnt(6)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=6 newLW=0 newLR=0
MAC_16x8_X0

/* iter 7 (last unrolled loop) */

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=0 newLW=0 newLR=0
MAC_16x8_X1
/* Stores for OptNLL */
Summation_End_OptNLL_16:
/* endSummation: add vgpr [130...206) to pool */
.set NumFullBlocks, UNDEF
.set WgmRemainder1, UNDEF
.set MagicNumberWgmRemainder1, UNDEF
/* computeStoreVgprs */
v_lshrrev_b32 v131, 4, v[vgprSerial]               // v131 = v[vgprSerial] / 16
v_and_b32 v130, 15, v[vgprSerial]                  // v130 = v[vgprSerial] % 16
v_lshlrev_b32 v130, 0x2, v130                      // v130 = v130 * 4
v_lshlrev_b32 v131, 0x2, v131                      // v131 = v131 * 4
v_mul_lo_u32 v132, v131, s[sgprStrideC1J]          // rowStart vgpr
v_mul_lo_u32 v133, v131, s[sgprStrideD1J]          // rowStart vgpr

s_mul_i32 s54, 0x100, s[sgprWorkGroup0]            // s54 = wg0*MT0
_v_add_co_u32 v130, vcc_lo, s54, v130              // coord0 = tid0*VW + wg0*MT0
s_mul_i32 s56, 0x40, s[sgprWorkGroup1]             // <- wg1*MT1
_v_add_co_u32 v131, vcc_lo, s56, v131              // coord1 = tid1*VW + wg1*MT1
GW_B0_E0_19:

/* edge=0, allocate 1 sgpr. perBatchTmpS=1 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=32 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,1,0,0:vw4); (0,2,0,0:vw4); (0,3,0,0:vw4); (0,0,1,0:vw4); (0,1,1,0:vw4); (0,2,1,0:vw4); (0,3,1,0:vw4); (0,0,2,0:vw4); (0,1,2,0:vw4); (0,2,2,0:vw4); (0,3,2,0:vw4); (0,0,3,0:vw4); (0,1,3,0:vw4); (0,2,3,0:vw4); (0,3,3,0:vw4); (1,0,0,0:vw4); (1,1,0,0:vw4); (1,2,0,0:vw4); (1,3,0,0:vw4); (1,0,1,0:vw4); (1,1,1,0:vw4); (1,2,1,0:vw4); (1,3,1,0:vw4); (1,0,2,0:vw4); (1,1,2,0:vw4); (1,2,2,0:vw4); (1,3,2,0:vw4); (1,0,3,0:vw4); (1,1,3,0:vw4); (1,2,3,0:vw4); (1,3,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
/* (d1,vc1,d0,vc0)=(0,0,2,0) */
/* (d1,vc1,d0,vc0)=(0,0,3,0) */
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
/* (d1,vc1,d0,vc0)=(0,1,1,0) */
/* (d1,vc1,d0,vc0)=(0,1,2,0) */
/* (d1,vc1,d0,vc0)=(0,1,3,0) */
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
/* (d1,vc1,d0,vc0)=(0,2,1,0) */
/* (d1,vc1,d0,vc0)=(0,2,2,0) */
/* (d1,vc1,d0,vc0)=(0,2,3,0) */
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
/* (d1,vc1,d0,vc0)=(0,3,1,0) */
/* (d1,vc1,d0,vc0)=(0,3,2,0) */
/* (d1,vc1,d0,vc0)=(0,3,3,0) */
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
/* (d1,vc1,d0,vc0)=(1,0,1,0) */
/* (d1,vc1,d0,vc0)=(1,0,2,0) */
/* (d1,vc1,d0,vc0)=(1,0,3,0) */
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
/* (d1,vc1,d0,vc0)=(1,1,1,0) */
/* (d1,vc1,d0,vc0)=(1,1,2,0) */
/* (d1,vc1,d0,vc0)=(1,1,3,0) */
/* (d1,vc1,d0,vc0)=(1,2,0,0) */
/* (d1,vc1,d0,vc0)=(1,2,1,0) */
/* (d1,vc1,d0,vc0)=(1,2,2,0) */
/* (d1,vc1,d0,vc0)=(1,2,3,0) */
/* (d1,vc1,d0,vc0)=(1,3,0,0) */
/* (d1,vc1,d0,vc0)=(1,3,1,0) */
/* (d1,vc1,d0,vc0)=(1,3,2,0) */
/* (d1,vc1,d0,vc0)=(1,3,3,0) */
_v_add_lshl_u32 v136, v133, v130, 0x2              // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=130, coord0Vgpr=130

/* apply mask, calc new C and issue writes */
_buffer_store_b128 v[0:3], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[4:7], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
_buffer_store_b128 v[8:11], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:512 // store D
_buffer_store_b128 v[12:15], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:768 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[16:19], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[20:23], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
_buffer_store_b128 v[24:27], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:512 // store D
_buffer_store_b128 v[28:31], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:768 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[32:35], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[36:39], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
_buffer_store_b128 v[40:43], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:512 // store D
_buffer_store_b128 v[44:47], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:768 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[48:51], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[52:55], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
_buffer_store_b128 v[56:59], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:512 // store D
_buffer_store_b128 v[60:63], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:768 // store D
s_mul_i32 s54, s[sgprStrideD1J], 116               // scale StrideD *= numRows(29) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[64:67], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[68:71], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
_buffer_store_b128 v[72:75], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:512 // store D
_buffer_store_b128 v[76:79], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:768 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[80:83], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[84:87], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
_buffer_store_b128 v[88:91], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:512 // store D
_buffer_store_b128 v[92:95], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:768 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[96:99], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[100:103], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
_buffer_store_b128 v[104:107], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:512 // store D
_buffer_store_b128 v[108:111], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:768 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[112:115], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[116:119], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
_buffer_store_b128 v[120:123], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:512 // store D
_buffer_store_b128 v[124:127], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:768 // store D
s_branch label_GW_End_21                           // jump to end
label_GW_End_21:

s_endpgm                                           // Kernel End
OptNLL_End_15:


/******************************************/
/* Ord. NoLoadLoop - Begin                                      */
/******************************************/




/* iter 0 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+8:vgprValuA_X1_I0+8+3], v[vgprLocalReadAddrA] offset:1536 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+12:vgprValuA_X1_I0+12+3], v[vgprLocalReadAddrA] offset:1792 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:256 // L -> Reg lro=64 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:384 // L -> Reg lro=64 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->512 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->128 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(6)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=6 newLW=0 newLR=0
MAC_16x8_X0

/* iter 1 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:2048 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:2304 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+8:vgprValuA_X0_I0+8+3], v[vgprLocalReadAddrA] offset:2560 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+12:vgprValuA_X0_I0+12+3], v[vgprLocalReadAddrA] offset:2816 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:512 // L -> Reg lro=128 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:640 // L -> Reg lro=128 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->768 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->192 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(6)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=6 newLW=0 newLR=0
MAC_16x8_X1

/* iter 2 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:3072 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:3328 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+8:vgprValuA_X1_I0+8+3], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+12:vgprValuA_X1_I0+12+3], v[vgprLocalReadAddrA] offset:3840 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:768 // L -> Reg lro=192 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:896 // L -> Reg lro=192 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1024 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(6)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=6 newLW=0 newLR=0
MAC_16x8_X0

/* iter 3 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:4096 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:4352 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+8:vgprValuA_X0_I0+8+3], v[vgprLocalReadAddrA] offset:4608 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+12:vgprValuA_X0_I0+12+3], v[vgprLocalReadAddrA] offset:4864 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1024 // L -> Reg lro=256 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:1152 // L -> Reg lro=256 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1280 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->320 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(6)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=6 newLW=0 newLR=0
MAC_16x8_X1

/* iter 4 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:5120 // L -> Reg lro=1280 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:5376 // L -> Reg lro=1280 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+8:vgprValuA_X1_I0+8+3], v[vgprLocalReadAddrA] offset:5632 // L -> Reg lro=1280 swapByteOffset=0 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+12:vgprValuA_X1_I0+12+3], v[vgprLocalReadAddrA] offset:5888 // L -> Reg lro=1280 swapByteOffset=0 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1280 // L -> Reg lro=320 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:1408 // L -> Reg lro=320 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1536 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->384 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(6)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=6 newLW=0 newLR=0
MAC_16x8_X0

/* iter 5 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:6144 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:6400 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+8:vgprValuA_X0_I0+8+3], v[vgprLocalReadAddrA] offset:6656 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+12:vgprValuA_X0_I0+12+3], v[vgprLocalReadAddrA] offset:6912 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1536 // L -> Reg lro=384 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:1664 // L -> Reg lro=384 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1792 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->448 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(6)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=6 newLW=0 newLR=0
MAC_16x8_X1

/* iter 6 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:7168 // L -> Reg lro=1792 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:7424 // L -> Reg lro=1792 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+8:vgprValuA_X1_I0+8+3], v[vgprLocalReadAddrA] offset:7680 // L -> Reg lro=1792 swapByteOffset=0 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+12:vgprValuA_X1_I0+12+3], v[vgprLocalReadAddrA] offset:7936 // L -> Reg lro=1792 swapByteOffset=0 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1792 // L -> Reg lro=448 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:1920 // L -> Reg lro=448 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
s_waitcnt lgkmcnt(6)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=6 newLW=0 newLR=0
MAC_16x8_X0

/* iter 7 (last unrolled loop) */

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=0 newLW=0 newLR=0
MAC_16x8_X1
PrefetchGlobalLastIterEnd_5:


/******************************************/
/* Tail Loop                              */
/******************************************/


/* local write reset offsets a */


v_and_b32 v[vgprLocalWriteAddrA], 0xf03fff, v[vgprLocalWriteAddrA] // reset to Red


/* local write reset offsets b */


v_and_b32 v[vgprLocalWriteAddrB], 0xf03fff, v[vgprLocalWriteAddrB] // reset to Red


//numIterL = (((sizeL % LOCAL_DEPTHU) + LOCAL_SPLITU - 1) / LOCAL_SPLITU)
s_and_b32 s[sgprLoopCounterL], 7, s[sgprSizesSum+0] // s[sgprLoopCounterL] = s[sgprSizesSum+0] % 8
s_cmp_eq_u32 s[sgprLoopCounterL], 0x0              // numIterL == 0
s_cbranch_scc1 SkipTailLoopL_8                     // skip to end of tail loop b/c numIter==0
s_mov_b32 s[sgprOrigLoopCounter], 0                // repurpose to count each localRead increment


/* remove stagger offsets for tail loop */

s_mov_b32 s58, 3                                   // 
s_mul_hi_u32 s57, s58, s[sgprGlobalReadIncsA+0]    // 3 * GlobalReadIncs
s_mul_i32 s56, s58, s[sgprGlobalReadIncsA+0]       // 3 * GlobalReadIncs
s_mul_hi_u32 s59, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] // StaggerUIter * GlobalReadIncs
s_mul_i32 s58, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] // StaggerUIter * GlobalReadIncs
s_sub_u32 s56, s56, s58                            // start offset S in bytes
s_subb_u32 s57, s57, s59                           // start offset S in bytes
s_sub_u32 s56, s56, s[sgprWrapUA]                  // S - WrapU
s_subb_u32 s57, s57, s[sgprWrapUA+1]               // S - WrapU
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s56        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], s57      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s56 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s57 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimitA // Move shadow to real if we are within 2^32

s_mov_b32 s58, 3                                   // 
s_mul_hi_u32 s57, s58, s[sgprGlobalReadIncsB+0]    // 3 * GlobalReadIncs
s_mul_i32 s56, s58, s[sgprGlobalReadIncsB+0]       // 3 * GlobalReadIncs
s_mul_hi_u32 s59, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] // StaggerUIter * GlobalReadIncs
s_mul_i32 s58, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] // StaggerUIter * GlobalReadIncs
s_sub_u32 s56, s56, s58                            // start offset S in bytes
s_subb_u32 s57, s57, s59                           // start offset S in bytes
s_sub_u32 s56, s56, s[sgprWrapUB]                  // S - WrapU
s_subb_u32 s57, s57, s[sgprWrapUB+1]               // S - WrapU
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s56        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], s57      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s56 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s57 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimitB // Move shadow to real if we are within 2^32


/* Update M0 for DTLDS */



/* global read a */

/* g2l=0, load component 0 */
_buffer_load_b32 v[vgprG2LA+0+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // load one buffer value
/* g2l=0, load component 1 */
_buffer_load_b32 v[vgprG2LA+0+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:4 // load one buffer value
/* g2l=0, load component 2 */
_buffer_load_b32 v[vgprG2LA+0+2], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:8 // load one buffer value
/* g2l=0, load component 3 */
_buffer_load_b32 v[vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:12 // load one buffer value
/* g2l=4, load component 0 */
_buffer_load_b32 v[vgprG2LA+4+0], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // load one buffer value
/* g2l=4, load component 1 */
_buffer_load_b32 v[vgprG2LA+4+1], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:4 // load one buffer value
/* g2l=4, load component 2 */
_buffer_load_b32 v[vgprG2LA+4+2], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:8 // load one buffer value
/* g2l=4, load component 3 */
_buffer_load_b32 v[vgprG2LA+4+3], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:12 // load one buffer value
/* g2l=8, load component 0 */
_buffer_load_b32 v[vgprG2LA+8+0], v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // load one buffer value
/* g2l=8, load component 1 */
_buffer_load_b32 v[vgprG2LA+8+1], v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], 0, offen offset:4 // load one buffer value
/* g2l=8, load component 2 */
_buffer_load_b32 v[vgprG2LA+8+2], v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], 0, offen offset:8 // load one buffer value
/* g2l=8, load component 3 */
_buffer_load_b32 v[vgprG2LA+8+3], v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], 0, offen offset:12 // load one buffer value
/* g2l=12, load component 0 */
_buffer_load_b32 v[vgprG2LA+12+0], v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // load one buffer value
/* g2l=12, load component 1 */
_buffer_load_b32 v[vgprG2LA+12+1], v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], 0, offen offset:4 // load one buffer value
/* g2l=12, load component 2 */
_buffer_load_b32 v[vgprG2LA+12+2], v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], 0, offen offset:8 // load one buffer value
/* g2l=12, load component 3 */
_buffer_load_b32 v[vgprG2LA+12+3], v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], 0, offen offset:12 // load one buffer value


/* Update M0 for DTLDS */



/* global read b */

/* g2l=0, load component 0 */
_buffer_load_b32 v[vgprG2LB+0+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // load one buffer value
/* g2l=0, load component 1 */
_buffer_load_b32 v[vgprG2LB+0+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:4 // load one buffer value
/* g2l=0, load component 2 */
_buffer_load_b32 v[vgprG2LB+0+2], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:8 // load one buffer value
/* g2l=0, load component 3 */
_buffer_load_b32 v[vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:12 // load one buffer value

s_waitcnt vmcnt(0)                                 // lgkmcnt=-1 vmcnt=02wait for global read

s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //


/* Done global A/B reads */




/* local write a */

_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+3] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+3] offset:2048 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 2048
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+8:vgprG2LA+8+3] offset:4096 // lwoA_0_0_2_0 = (0*LSCA) + (2*LSPA)(*MT0I+PAD) = 4096
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+12:vgprG2LA+12+3] offset:6144 // lwoA_0_0_3_0 = (0*LSCA) + (3*LSPA)(*MT0I+PAD) = 6144


/* local write b */

_ds_store_b128 v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+3] offset:0 // lwoB_0_0_0_0 = (0*LSCB) + (0*LSPB)(*MT1J+PAD) = 0


/* Recalc local read offsets */


s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-15wait for local write

s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //


/* local read reset offsets a */


/* localReadResetOffsets */
/* handled internally */
v_and_b32 v[vgprLocalReadAddrA], 0x3fff, v[vgprLocalReadAddrA] // reset Red,Blk -> Red


/* local read reset offsets b */


/* localReadResetOffsets */
/* handled internally */
v_and_b32 v[vgprLocalReadAddrB], 0x3fff, v[vgprLocalReadAddrB] // reset Red,Blk -> Red


/* local read init pointers a */


/* localReadInitPointers */


/* local read init pointers b */


/* localReadInitPointers */


/* tail loop: macs */

TailLoopBeginL_6:


/* local read a */

_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+8:vgprValuA_X0_I0+8+3], v[vgprLocalReadAddrA] offset:512 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=2 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+12:vgprValuA_X0_I0+12+3], v[vgprLocalReadAddrA] offset:768 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=3 rIdx=0 oIdx=0 buffer=0 iui=0


/* local read b */

_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0


/* local read inc a */

s_mov_b32 s56, 0x400                               // inc
_v_add_co_u32 v[vgprLocalReadAddrA], vcc_lo, s56, v[vgprLocalReadAddrA] // lrA += 1024 (LSU*(MT+PAD)*bpe)


/* local read inc b */

s_mov_b32 s56, 0x100                               // inc
_v_add_co_u32 v[vgprLocalReadAddrB], vcc_lo, s56, v[vgprLocalReadAddrB] // lrB += 256 (LSU*(MT+PAD)*bpe)

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-14wait for local read

MAC_16x8_X0

/* closeLoop loopL finalLoop=1 tailLoop=1 */
s_sub_i32 s[sgprLoopCounterL], s[sgprLoopCounterL], 0x1 // dec counterL (tailLoop)
s_add_u32 s[sgprOrigLoopCounter], s[sgprOrigLoopCounter], 0x1 // inc counterL
s_cmp_le_i32 s[sgprLoopCounterL], 0x0              // counterL<=0
s_cbranch_scc0 TailLoopBeginL_6                    // restart LoopL
TailLoopEndL_7:

SkipTailLoopL_8:

Summation_End_28:
/* endSummation: add vgpr [130...206) to pool */
.set NumFullBlocks, UNDEF
.set WgmRemainder1, UNDEF
.set MagicNumberWgmRemainder1, UNDEF


/* shift vector components d0 */

v_mov_b32 v131, s[sgprWorkGroup0]                  // 
v_mul_i32_i24 v131, -0x100, v131                   // wg*MT
_v_add_co_u32 v131, vcc_lo, s[sgprSizesFree+0], v131 // wgMT = Size - wg*MT
v_mov_b32 v130, 0x100                              // MT
v_min_u32 v131, v130, v131                         // wgMT = (wgMT < MT) ? wgMT : MT
v_lshrrev_b32 v130, 2, v131                        // v130 = v131 / 4
v_and_b32 v132, 3, v131                            // v132 = v131 % 4
v_and_b32 v133, 15, v130                           // v133 = v130 % 16
v_and_b32 v134, 15, v[vgprSerial]                  // v134 = v[vgprSerial] % 16
v_lshrrev_b32 v135, 6, v131                        // v135 = v131 / 64
v_and_b32 v136, 3, v131                            // v136 = v131 % 4
v_mov_b32 v137, v136                               // duplicate
v_lshrrev_b32 v136, 2, v137                        // v136 = v137 / 4
_v_add_co_u32 v136, vcc_lo, v135, v136             // vId = 2 components
v_cmp_eq_u32 vcc_lo, v132, 0x1                     // wgMT%VW == 1
s_cbranch_vccnz label_0029                         // shift d0 r=1
v_cmp_eq_u32 vcc_lo, v132, 0x2                     // wgMT%VW == 2
s_cbranch_vccnz label_0034                         // shift d0 r=2
v_cmp_eq_u32 vcc_lo, v132, 0x3                     // wgMT%VW == 3
s_cbranch_vccnz label_0039                         // shift d0 r=3
s_branch label_0044                                // no shifting

/******************************************/
/* shift d0 r=1                           */
/******************************************/
label_0029:
v_cmp_eq_u32 vcc_lo, v136, 0x0                     // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0030                         // shift d0, r=1, v=0
v_cmp_eq_u32 vcc_lo, v136, 0x1                     // wgMT/(SG*VW) == 1
s_cbranch_vccnz label_0031                         // shift d0, r=1, v=1
v_cmp_eq_u32 vcc_lo, v136, 0x2                     // wgMT/(SG*VW) == 2
s_cbranch_vccnz label_0032                         // shift d0, r=1, v=2
v_cmp_eq_u32 vcc_lo, v136, 0x3                     // wgMT/(SG*VW) == 3
s_cbranch_vccnz label_0033                         // shift d0, r=1, v=3

/* shift d0 r=1 v=0 */
label_0030:
_v_cmpx_eq_u32 s53, v134, v133                     // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=3, dst=0
v_mov_b32 v0, v3                                   // rC[0+0*VW+0*TT0I] = rC[3+0*VW+0*TT0I]
// src=19, dst=16
v_mov_b32 v16, v19                                 // rC[0+0*VW+1*TT0I] = rC[3+0*VW+1*TT0I]
// src=35, dst=32
v_mov_b32 v32, v35                                 // rC[0+0*VW+2*TT0I] = rC[3+0*VW+2*TT0I]
// src=51, dst=48
v_mov_b32 v48, v51                                 // rC[0+0*VW+3*TT0I] = rC[3+0*VW+3*TT0I]
// src=67, dst=64
v_mov_b32 v64, v67                                 // rC[0+0*VW+4*TT0I] = rC[3+0*VW+4*TT0I]
// src=83, dst=80
v_mov_b32 v80, v83                                 // rC[0+0*VW+5*TT0I] = rC[3+0*VW+5*TT0I]
// src=99, dst=96
v_mov_b32 v96, v99                                 // rC[0+0*VW+6*TT0I] = rC[3+0*VW+6*TT0I]
// src=115, dst=112
v_mov_b32 v112, v115                               // rC[0+0*VW+7*TT0I] = rC[3+0*VW+7*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0044                                // done shifting

/* shift d0 r=1 v=1 */
label_0031:
_v_cmpx_eq_u32 s53, v134, v133                     // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=7, dst=4
v_mov_b32 v4, v7                                   // rC[0+1*VW+0*TT0I] = rC[3+1*VW+0*TT0I]
// src=23, dst=20
v_mov_b32 v20, v23                                 // rC[0+1*VW+1*TT0I] = rC[3+1*VW+1*TT0I]
// src=39, dst=36
v_mov_b32 v36, v39                                 // rC[0+1*VW+2*TT0I] = rC[3+1*VW+2*TT0I]
// src=55, dst=52
v_mov_b32 v52, v55                                 // rC[0+1*VW+3*TT0I] = rC[3+1*VW+3*TT0I]
// src=71, dst=68
v_mov_b32 v68, v71                                 // rC[0+1*VW+4*TT0I] = rC[3+1*VW+4*TT0I]
// src=87, dst=84
v_mov_b32 v84, v87                                 // rC[0+1*VW+5*TT0I] = rC[3+1*VW+5*TT0I]
// src=103, dst=100
v_mov_b32 v100, v103                               // rC[0+1*VW+6*TT0I] = rC[3+1*VW+6*TT0I]
// src=119, dst=116
v_mov_b32 v116, v119                               // rC[0+1*VW+7*TT0I] = rC[3+1*VW+7*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0044                                // done shifting

/* shift d0 r=1 v=2 */
label_0032:
_v_cmpx_eq_u32 s53, v134, v133                     // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=11, dst=8
v_mov_b32 v8, v11                                  // rC[0+2*VW+0*TT0I] = rC[3+2*VW+0*TT0I]
// src=27, dst=24
v_mov_b32 v24, v27                                 // rC[0+2*VW+1*TT0I] = rC[3+2*VW+1*TT0I]
// src=43, dst=40
v_mov_b32 v40, v43                                 // rC[0+2*VW+2*TT0I] = rC[3+2*VW+2*TT0I]
// src=59, dst=56
v_mov_b32 v56, v59                                 // rC[0+2*VW+3*TT0I] = rC[3+2*VW+3*TT0I]
// src=75, dst=72
v_mov_b32 v72, v75                                 // rC[0+2*VW+4*TT0I] = rC[3+2*VW+4*TT0I]
// src=91, dst=88
v_mov_b32 v88, v91                                 // rC[0+2*VW+5*TT0I] = rC[3+2*VW+5*TT0I]
// src=107, dst=104
v_mov_b32 v104, v107                               // rC[0+2*VW+6*TT0I] = rC[3+2*VW+6*TT0I]
// src=123, dst=120
v_mov_b32 v120, v123                               // rC[0+2*VW+7*TT0I] = rC[3+2*VW+7*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0044                                // done shifting

/* shift d0 r=1 v=3 */
label_0033:
_v_cmpx_eq_u32 s53, v134, v133                     // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=15, dst=12
v_mov_b32 v12, v15                                 // rC[0+3*VW+0*TT0I] = rC[3+3*VW+0*TT0I]
// src=31, dst=28
v_mov_b32 v28, v31                                 // rC[0+3*VW+1*TT0I] = rC[3+3*VW+1*TT0I]
// src=47, dst=44
v_mov_b32 v44, v47                                 // rC[0+3*VW+2*TT0I] = rC[3+3*VW+2*TT0I]
// src=63, dst=60
v_mov_b32 v60, v63                                 // rC[0+3*VW+3*TT0I] = rC[3+3*VW+3*TT0I]
// src=79, dst=76
v_mov_b32 v76, v79                                 // rC[0+3*VW+4*TT0I] = rC[3+3*VW+4*TT0I]
// src=95, dst=92
v_mov_b32 v92, v95                                 // rC[0+3*VW+5*TT0I] = rC[3+3*VW+5*TT0I]
// src=111, dst=108
v_mov_b32 v108, v111                               // rC[0+3*VW+6*TT0I] = rC[3+3*VW+6*TT0I]
// src=127, dst=124
v_mov_b32 v124, v127                               // rC[0+3*VW+7*TT0I] = rC[3+3*VW+7*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0044                                // done shifting

/******************************************/
/* shift d0 r=2                           */
/******************************************/
label_0034:
v_cmp_eq_u32 vcc_lo, v136, 0x0                     // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0035                         // shift d0, r=2, v=0
v_cmp_eq_u32 vcc_lo, v136, 0x1                     // wgMT/(SG*VW) == 1
s_cbranch_vccnz label_0036                         // shift d0, r=2, v=1
v_cmp_eq_u32 vcc_lo, v136, 0x2                     // wgMT/(SG*VW) == 2
s_cbranch_vccnz label_0037                         // shift d0, r=2, v=2
v_cmp_eq_u32 vcc_lo, v136, 0x3                     // wgMT/(SG*VW) == 3
s_cbranch_vccnz label_0038                         // shift d0, r=2, v=3

/* shift d0 r=2 v=0 */
label_0035:
_v_cmpx_eq_u32 s53, v134, v133                     // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=2, dst=0
v_mov_b32 v0, v2                                   // rC[0+0*VW+0*TT0I] = rC[2+0*VW+0*TT0I]
// src=3, dst=1
v_mov_b32 v1, v3                                   // rC[1+0*VW+0*TT0I] = rC[3+0*VW+0*TT0I]
// src=18, dst=16
v_mov_b32 v16, v18                                 // rC[0+0*VW+1*TT0I] = rC[2+0*VW+1*TT0I]
// src=19, dst=17
v_mov_b32 v17, v19                                 // rC[1+0*VW+1*TT0I] = rC[3+0*VW+1*TT0I]
// src=34, dst=32
v_mov_b32 v32, v34                                 // rC[0+0*VW+2*TT0I] = rC[2+0*VW+2*TT0I]
// src=35, dst=33
v_mov_b32 v33, v35                                 // rC[1+0*VW+2*TT0I] = rC[3+0*VW+2*TT0I]
// src=50, dst=48
v_mov_b32 v48, v50                                 // rC[0+0*VW+3*TT0I] = rC[2+0*VW+3*TT0I]
// src=51, dst=49
v_mov_b32 v49, v51                                 // rC[1+0*VW+3*TT0I] = rC[3+0*VW+3*TT0I]
// src=66, dst=64
v_mov_b32 v64, v66                                 // rC[0+0*VW+4*TT0I] = rC[2+0*VW+4*TT0I]
// src=67, dst=65
v_mov_b32 v65, v67                                 // rC[1+0*VW+4*TT0I] = rC[3+0*VW+4*TT0I]
// src=82, dst=80
v_mov_b32 v80, v82                                 // rC[0+0*VW+5*TT0I] = rC[2+0*VW+5*TT0I]
// src=83, dst=81
v_mov_b32 v81, v83                                 // rC[1+0*VW+5*TT0I] = rC[3+0*VW+5*TT0I]
// src=98, dst=96
v_mov_b32 v96, v98                                 // rC[0+0*VW+6*TT0I] = rC[2+0*VW+6*TT0I]
// src=99, dst=97
v_mov_b32 v97, v99                                 // rC[1+0*VW+6*TT0I] = rC[3+0*VW+6*TT0I]
// src=114, dst=112
v_mov_b32 v112, v114                               // rC[0+0*VW+7*TT0I] = rC[2+0*VW+7*TT0I]
// src=115, dst=113
v_mov_b32 v113, v115                               // rC[1+0*VW+7*TT0I] = rC[3+0*VW+7*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0044                                // done shifting

/* shift d0 r=2 v=1 */
label_0036:
_v_cmpx_eq_u32 s53, v134, v133                     // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=6, dst=4
v_mov_b32 v4, v6                                   // rC[0+1*VW+0*TT0I] = rC[2+1*VW+0*TT0I]
// src=7, dst=5
v_mov_b32 v5, v7                                   // rC[1+1*VW+0*TT0I] = rC[3+1*VW+0*TT0I]
// src=22, dst=20
v_mov_b32 v20, v22                                 // rC[0+1*VW+1*TT0I] = rC[2+1*VW+1*TT0I]
// src=23, dst=21
v_mov_b32 v21, v23                                 // rC[1+1*VW+1*TT0I] = rC[3+1*VW+1*TT0I]
// src=38, dst=36
v_mov_b32 v36, v38                                 // rC[0+1*VW+2*TT0I] = rC[2+1*VW+2*TT0I]
// src=39, dst=37
v_mov_b32 v37, v39                                 // rC[1+1*VW+2*TT0I] = rC[3+1*VW+2*TT0I]
// src=54, dst=52
v_mov_b32 v52, v54                                 // rC[0+1*VW+3*TT0I] = rC[2+1*VW+3*TT0I]
// src=55, dst=53
v_mov_b32 v53, v55                                 // rC[1+1*VW+3*TT0I] = rC[3+1*VW+3*TT0I]
// src=70, dst=68
v_mov_b32 v68, v70                                 // rC[0+1*VW+4*TT0I] = rC[2+1*VW+4*TT0I]
// src=71, dst=69
v_mov_b32 v69, v71                                 // rC[1+1*VW+4*TT0I] = rC[3+1*VW+4*TT0I]
// src=86, dst=84
v_mov_b32 v84, v86                                 // rC[0+1*VW+5*TT0I] = rC[2+1*VW+5*TT0I]
// src=87, dst=85
v_mov_b32 v85, v87                                 // rC[1+1*VW+5*TT0I] = rC[3+1*VW+5*TT0I]
// src=102, dst=100
v_mov_b32 v100, v102                               // rC[0+1*VW+6*TT0I] = rC[2+1*VW+6*TT0I]
// src=103, dst=101
v_mov_b32 v101, v103                               // rC[1+1*VW+6*TT0I] = rC[3+1*VW+6*TT0I]
// src=118, dst=116
v_mov_b32 v116, v118                               // rC[0+1*VW+7*TT0I] = rC[2+1*VW+7*TT0I]
// src=119, dst=117
v_mov_b32 v117, v119                               // rC[1+1*VW+7*TT0I] = rC[3+1*VW+7*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0044                                // done shifting

/* shift d0 r=2 v=2 */
label_0037:
_v_cmpx_eq_u32 s53, v134, v133                     // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=10, dst=8
v_mov_b32 v8, v10                                  // rC[0+2*VW+0*TT0I] = rC[2+2*VW+0*TT0I]
// src=11, dst=9
v_mov_b32 v9, v11                                  // rC[1+2*VW+0*TT0I] = rC[3+2*VW+0*TT0I]
// src=26, dst=24
v_mov_b32 v24, v26                                 // rC[0+2*VW+1*TT0I] = rC[2+2*VW+1*TT0I]
// src=27, dst=25
v_mov_b32 v25, v27                                 // rC[1+2*VW+1*TT0I] = rC[3+2*VW+1*TT0I]
// src=42, dst=40
v_mov_b32 v40, v42                                 // rC[0+2*VW+2*TT0I] = rC[2+2*VW+2*TT0I]
// src=43, dst=41
v_mov_b32 v41, v43                                 // rC[1+2*VW+2*TT0I] = rC[3+2*VW+2*TT0I]
// src=58, dst=56
v_mov_b32 v56, v58                                 // rC[0+2*VW+3*TT0I] = rC[2+2*VW+3*TT0I]
// src=59, dst=57
v_mov_b32 v57, v59                                 // rC[1+2*VW+3*TT0I] = rC[3+2*VW+3*TT0I]
// src=74, dst=72
v_mov_b32 v72, v74                                 // rC[0+2*VW+4*TT0I] = rC[2+2*VW+4*TT0I]
// src=75, dst=73
v_mov_b32 v73, v75                                 // rC[1+2*VW+4*TT0I] = rC[3+2*VW+4*TT0I]
// src=90, dst=88
v_mov_b32 v88, v90                                 // rC[0+2*VW+5*TT0I] = rC[2+2*VW+5*TT0I]
// src=91, dst=89
v_mov_b32 v89, v91                                 // rC[1+2*VW+5*TT0I] = rC[3+2*VW+5*TT0I]
// src=106, dst=104
v_mov_b32 v104, v106                               // rC[0+2*VW+6*TT0I] = rC[2+2*VW+6*TT0I]
// src=107, dst=105
v_mov_b32 v105, v107                               // rC[1+2*VW+6*TT0I] = rC[3+2*VW+6*TT0I]
// src=122, dst=120
v_mov_b32 v120, v122                               // rC[0+2*VW+7*TT0I] = rC[2+2*VW+7*TT0I]
// src=123, dst=121
v_mov_b32 v121, v123                               // rC[1+2*VW+7*TT0I] = rC[3+2*VW+7*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0044                                // done shifting

/* shift d0 r=2 v=3 */
label_0038:
_v_cmpx_eq_u32 s53, v134, v133                     // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=14, dst=12
v_mov_b32 v12, v14                                 // rC[0+3*VW+0*TT0I] = rC[2+3*VW+0*TT0I]
// src=15, dst=13
v_mov_b32 v13, v15                                 // rC[1+3*VW+0*TT0I] = rC[3+3*VW+0*TT0I]
// src=30, dst=28
v_mov_b32 v28, v30                                 // rC[0+3*VW+1*TT0I] = rC[2+3*VW+1*TT0I]
// src=31, dst=29
v_mov_b32 v29, v31                                 // rC[1+3*VW+1*TT0I] = rC[3+3*VW+1*TT0I]
// src=46, dst=44
v_mov_b32 v44, v46                                 // rC[0+3*VW+2*TT0I] = rC[2+3*VW+2*TT0I]
// src=47, dst=45
v_mov_b32 v45, v47                                 // rC[1+3*VW+2*TT0I] = rC[3+3*VW+2*TT0I]
// src=62, dst=60
v_mov_b32 v60, v62                                 // rC[0+3*VW+3*TT0I] = rC[2+3*VW+3*TT0I]
// src=63, dst=61
v_mov_b32 v61, v63                                 // rC[1+3*VW+3*TT0I] = rC[3+3*VW+3*TT0I]
// src=78, dst=76
v_mov_b32 v76, v78                                 // rC[0+3*VW+4*TT0I] = rC[2+3*VW+4*TT0I]
// src=79, dst=77
v_mov_b32 v77, v79                                 // rC[1+3*VW+4*TT0I] = rC[3+3*VW+4*TT0I]
// src=94, dst=92
v_mov_b32 v92, v94                                 // rC[0+3*VW+5*TT0I] = rC[2+3*VW+5*TT0I]
// src=95, dst=93
v_mov_b32 v93, v95                                 // rC[1+3*VW+5*TT0I] = rC[3+3*VW+5*TT0I]
// src=110, dst=108
v_mov_b32 v108, v110                               // rC[0+3*VW+6*TT0I] = rC[2+3*VW+6*TT0I]
// src=111, dst=109
v_mov_b32 v109, v111                               // rC[1+3*VW+6*TT0I] = rC[3+3*VW+6*TT0I]
// src=126, dst=124
v_mov_b32 v124, v126                               // rC[0+3*VW+7*TT0I] = rC[2+3*VW+7*TT0I]
// src=127, dst=125
v_mov_b32 v125, v127                               // rC[1+3*VW+7*TT0I] = rC[3+3*VW+7*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0044                                // done shifting

/******************************************/
/* shift d0 r=3                           */
/******************************************/
label_0039:
v_cmp_eq_u32 vcc_lo, v136, 0x0                     // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0040                         // shift d0, r=3, v=0
v_cmp_eq_u32 vcc_lo, v136, 0x1                     // wgMT/(SG*VW) == 1
s_cbranch_vccnz label_0041                         // shift d0, r=3, v=1
v_cmp_eq_u32 vcc_lo, v136, 0x2                     // wgMT/(SG*VW) == 2
s_cbranch_vccnz label_0042                         // shift d0, r=3, v=2
v_cmp_eq_u32 vcc_lo, v136, 0x3                     // wgMT/(SG*VW) == 3
s_cbranch_vccnz label_0043                         // shift d0, r=3, v=3

/* shift d0 r=3 v=0 */
label_0040:
_v_cmpx_eq_u32 s53, v134, v133                     // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=1, dst=0
v_mov_b32 v0, v1                                   // rC[0+0*VW+0*TT0I] = rC[1+0*VW+0*TT0I]
// src=2, dst=1
v_mov_b32 v1, v2                                   // rC[1+0*VW+0*TT0I] = rC[2+0*VW+0*TT0I]
// src=3, dst=2
v_mov_b32 v2, v3                                   // rC[2+0*VW+0*TT0I] = rC[3+0*VW+0*TT0I]
// src=17, dst=16
v_mov_b32 v16, v17                                 // rC[0+0*VW+1*TT0I] = rC[1+0*VW+1*TT0I]
// src=18, dst=17
v_mov_b32 v17, v18                                 // rC[1+0*VW+1*TT0I] = rC[2+0*VW+1*TT0I]
// src=19, dst=18
v_mov_b32 v18, v19                                 // rC[2+0*VW+1*TT0I] = rC[3+0*VW+1*TT0I]
// src=33, dst=32
v_mov_b32 v32, v33                                 // rC[0+0*VW+2*TT0I] = rC[1+0*VW+2*TT0I]
// src=34, dst=33
v_mov_b32 v33, v34                                 // rC[1+0*VW+2*TT0I] = rC[2+0*VW+2*TT0I]
// src=35, dst=34
v_mov_b32 v34, v35                                 // rC[2+0*VW+2*TT0I] = rC[3+0*VW+2*TT0I]
// src=49, dst=48
v_mov_b32 v48, v49                                 // rC[0+0*VW+3*TT0I] = rC[1+0*VW+3*TT0I]
// src=50, dst=49
v_mov_b32 v49, v50                                 // rC[1+0*VW+3*TT0I] = rC[2+0*VW+3*TT0I]
// src=51, dst=50
v_mov_b32 v50, v51                                 // rC[2+0*VW+3*TT0I] = rC[3+0*VW+3*TT0I]
// src=65, dst=64
v_mov_b32 v64, v65                                 // rC[0+0*VW+4*TT0I] = rC[1+0*VW+4*TT0I]
// src=66, dst=65
v_mov_b32 v65, v66                                 // rC[1+0*VW+4*TT0I] = rC[2+0*VW+4*TT0I]
// src=67, dst=66
v_mov_b32 v66, v67                                 // rC[2+0*VW+4*TT0I] = rC[3+0*VW+4*TT0I]
// src=81, dst=80
v_mov_b32 v80, v81                                 // rC[0+0*VW+5*TT0I] = rC[1+0*VW+5*TT0I]
// src=82, dst=81
v_mov_b32 v81, v82                                 // rC[1+0*VW+5*TT0I] = rC[2+0*VW+5*TT0I]
// src=83, dst=82
v_mov_b32 v82, v83                                 // rC[2+0*VW+5*TT0I] = rC[3+0*VW+5*TT0I]
// src=97, dst=96
v_mov_b32 v96, v97                                 // rC[0+0*VW+6*TT0I] = rC[1+0*VW+6*TT0I]
// src=98, dst=97
v_mov_b32 v97, v98                                 // rC[1+0*VW+6*TT0I] = rC[2+0*VW+6*TT0I]
// src=99, dst=98
v_mov_b32 v98, v99                                 // rC[2+0*VW+6*TT0I] = rC[3+0*VW+6*TT0I]
// src=113, dst=112
v_mov_b32 v112, v113                               // rC[0+0*VW+7*TT0I] = rC[1+0*VW+7*TT0I]
// src=114, dst=113
v_mov_b32 v113, v114                               // rC[1+0*VW+7*TT0I] = rC[2+0*VW+7*TT0I]
// src=115, dst=114
v_mov_b32 v114, v115                               // rC[2+0*VW+7*TT0I] = rC[3+0*VW+7*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0044                                // done shifting

/* shift d0 r=3 v=1 */
label_0041:
_v_cmpx_eq_u32 s53, v134, v133                     // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=5, dst=4
v_mov_b32 v4, v5                                   // rC[0+1*VW+0*TT0I] = rC[1+1*VW+0*TT0I]
// src=6, dst=5
v_mov_b32 v5, v6                                   // rC[1+1*VW+0*TT0I] = rC[2+1*VW+0*TT0I]
// src=7, dst=6
v_mov_b32 v6, v7                                   // rC[2+1*VW+0*TT0I] = rC[3+1*VW+0*TT0I]
// src=21, dst=20
v_mov_b32 v20, v21                                 // rC[0+1*VW+1*TT0I] = rC[1+1*VW+1*TT0I]
// src=22, dst=21
v_mov_b32 v21, v22                                 // rC[1+1*VW+1*TT0I] = rC[2+1*VW+1*TT0I]
// src=23, dst=22
v_mov_b32 v22, v23                                 // rC[2+1*VW+1*TT0I] = rC[3+1*VW+1*TT0I]
// src=37, dst=36
v_mov_b32 v36, v37                                 // rC[0+1*VW+2*TT0I] = rC[1+1*VW+2*TT0I]
// src=38, dst=37
v_mov_b32 v37, v38                                 // rC[1+1*VW+2*TT0I] = rC[2+1*VW+2*TT0I]
// src=39, dst=38
v_mov_b32 v38, v39                                 // rC[2+1*VW+2*TT0I] = rC[3+1*VW+2*TT0I]
// src=53, dst=52
v_mov_b32 v52, v53                                 // rC[0+1*VW+3*TT0I] = rC[1+1*VW+3*TT0I]
// src=54, dst=53
v_mov_b32 v53, v54                                 // rC[1+1*VW+3*TT0I] = rC[2+1*VW+3*TT0I]
// src=55, dst=54
v_mov_b32 v54, v55                                 // rC[2+1*VW+3*TT0I] = rC[3+1*VW+3*TT0I]
// src=69, dst=68
v_mov_b32 v68, v69                                 // rC[0+1*VW+4*TT0I] = rC[1+1*VW+4*TT0I]
// src=70, dst=69
v_mov_b32 v69, v70                                 // rC[1+1*VW+4*TT0I] = rC[2+1*VW+4*TT0I]
// src=71, dst=70
v_mov_b32 v70, v71                                 // rC[2+1*VW+4*TT0I] = rC[3+1*VW+4*TT0I]
// src=85, dst=84
v_mov_b32 v84, v85                                 // rC[0+1*VW+5*TT0I] = rC[1+1*VW+5*TT0I]
// src=86, dst=85
v_mov_b32 v85, v86                                 // rC[1+1*VW+5*TT0I] = rC[2+1*VW+5*TT0I]
// src=87, dst=86
v_mov_b32 v86, v87                                 // rC[2+1*VW+5*TT0I] = rC[3+1*VW+5*TT0I]
// src=101, dst=100
v_mov_b32 v100, v101                               // rC[0+1*VW+6*TT0I] = rC[1+1*VW+6*TT0I]
// src=102, dst=101
v_mov_b32 v101, v102                               // rC[1+1*VW+6*TT0I] = rC[2+1*VW+6*TT0I]
// src=103, dst=102
v_mov_b32 v102, v103                               // rC[2+1*VW+6*TT0I] = rC[3+1*VW+6*TT0I]
// src=117, dst=116
v_mov_b32 v116, v117                               // rC[0+1*VW+7*TT0I] = rC[1+1*VW+7*TT0I]
// src=118, dst=117
v_mov_b32 v117, v118                               // rC[1+1*VW+7*TT0I] = rC[2+1*VW+7*TT0I]
// src=119, dst=118
v_mov_b32 v118, v119                               // rC[2+1*VW+7*TT0I] = rC[3+1*VW+7*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0044                                // done shifting

/* shift d0 r=3 v=2 */
label_0042:
_v_cmpx_eq_u32 s53, v134, v133                     // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=9, dst=8
v_mov_b32 v8, v9                                   // rC[0+2*VW+0*TT0I] = rC[1+2*VW+0*TT0I]
// src=10, dst=9
v_mov_b32 v9, v10                                  // rC[1+2*VW+0*TT0I] = rC[2+2*VW+0*TT0I]
// src=11, dst=10
v_mov_b32 v10, v11                                 // rC[2+2*VW+0*TT0I] = rC[3+2*VW+0*TT0I]
// src=25, dst=24
v_mov_b32 v24, v25                                 // rC[0+2*VW+1*TT0I] = rC[1+2*VW+1*TT0I]
// src=26, dst=25
v_mov_b32 v25, v26                                 // rC[1+2*VW+1*TT0I] = rC[2+2*VW+1*TT0I]
// src=27, dst=26
v_mov_b32 v26, v27                                 // rC[2+2*VW+1*TT0I] = rC[3+2*VW+1*TT0I]
// src=41, dst=40
v_mov_b32 v40, v41                                 // rC[0+2*VW+2*TT0I] = rC[1+2*VW+2*TT0I]
// src=42, dst=41
v_mov_b32 v41, v42                                 // rC[1+2*VW+2*TT0I] = rC[2+2*VW+2*TT0I]
// src=43, dst=42
v_mov_b32 v42, v43                                 // rC[2+2*VW+2*TT0I] = rC[3+2*VW+2*TT0I]
// src=57, dst=56
v_mov_b32 v56, v57                                 // rC[0+2*VW+3*TT0I] = rC[1+2*VW+3*TT0I]
// src=58, dst=57
v_mov_b32 v57, v58                                 // rC[1+2*VW+3*TT0I] = rC[2+2*VW+3*TT0I]
// src=59, dst=58
v_mov_b32 v58, v59                                 // rC[2+2*VW+3*TT0I] = rC[3+2*VW+3*TT0I]
// src=73, dst=72
v_mov_b32 v72, v73                                 // rC[0+2*VW+4*TT0I] = rC[1+2*VW+4*TT0I]
// src=74, dst=73
v_mov_b32 v73, v74                                 // rC[1+2*VW+4*TT0I] = rC[2+2*VW+4*TT0I]
// src=75, dst=74
v_mov_b32 v74, v75                                 // rC[2+2*VW+4*TT0I] = rC[3+2*VW+4*TT0I]
// src=89, dst=88
v_mov_b32 v88, v89                                 // rC[0+2*VW+5*TT0I] = rC[1+2*VW+5*TT0I]
// src=90, dst=89
v_mov_b32 v89, v90                                 // rC[1+2*VW+5*TT0I] = rC[2+2*VW+5*TT0I]
// src=91, dst=90
v_mov_b32 v90, v91                                 // rC[2+2*VW+5*TT0I] = rC[3+2*VW+5*TT0I]
// src=105, dst=104
v_mov_b32 v104, v105                               // rC[0+2*VW+6*TT0I] = rC[1+2*VW+6*TT0I]
// src=106, dst=105
v_mov_b32 v105, v106                               // rC[1+2*VW+6*TT0I] = rC[2+2*VW+6*TT0I]
// src=107, dst=106
v_mov_b32 v106, v107                               // rC[2+2*VW+6*TT0I] = rC[3+2*VW+6*TT0I]
// src=121, dst=120
v_mov_b32 v120, v121                               // rC[0+2*VW+7*TT0I] = rC[1+2*VW+7*TT0I]
// src=122, dst=121
v_mov_b32 v121, v122                               // rC[1+2*VW+7*TT0I] = rC[2+2*VW+7*TT0I]
// src=123, dst=122
v_mov_b32 v122, v123                               // rC[2+2*VW+7*TT0I] = rC[3+2*VW+7*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0044                                // done shifting

/* shift d0 r=3 v=3 */
label_0043:
_v_cmpx_eq_u32 s53, v134, v133                     // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=13, dst=12
v_mov_b32 v12, v13                                 // rC[0+3*VW+0*TT0I] = rC[1+3*VW+0*TT0I]
// src=14, dst=13
v_mov_b32 v13, v14                                 // rC[1+3*VW+0*TT0I] = rC[2+3*VW+0*TT0I]
// src=15, dst=14
v_mov_b32 v14, v15                                 // rC[2+3*VW+0*TT0I] = rC[3+3*VW+0*TT0I]
// src=29, dst=28
v_mov_b32 v28, v29                                 // rC[0+3*VW+1*TT0I] = rC[1+3*VW+1*TT0I]
// src=30, dst=29
v_mov_b32 v29, v30                                 // rC[1+3*VW+1*TT0I] = rC[2+3*VW+1*TT0I]
// src=31, dst=30
v_mov_b32 v30, v31                                 // rC[2+3*VW+1*TT0I] = rC[3+3*VW+1*TT0I]
// src=45, dst=44
v_mov_b32 v44, v45                                 // rC[0+3*VW+2*TT0I] = rC[1+3*VW+2*TT0I]
// src=46, dst=45
v_mov_b32 v45, v46                                 // rC[1+3*VW+2*TT0I] = rC[2+3*VW+2*TT0I]
// src=47, dst=46
v_mov_b32 v46, v47                                 // rC[2+3*VW+2*TT0I] = rC[3+3*VW+2*TT0I]
// src=61, dst=60
v_mov_b32 v60, v61                                 // rC[0+3*VW+3*TT0I] = rC[1+3*VW+3*TT0I]
// src=62, dst=61
v_mov_b32 v61, v62                                 // rC[1+3*VW+3*TT0I] = rC[2+3*VW+3*TT0I]
// src=63, dst=62
v_mov_b32 v62, v63                                 // rC[2+3*VW+3*TT0I] = rC[3+3*VW+3*TT0I]
// src=77, dst=76
v_mov_b32 v76, v77                                 // rC[0+3*VW+4*TT0I] = rC[1+3*VW+4*TT0I]
// src=78, dst=77
v_mov_b32 v77, v78                                 // rC[1+3*VW+4*TT0I] = rC[2+3*VW+4*TT0I]
// src=79, dst=78
v_mov_b32 v78, v79                                 // rC[2+3*VW+4*TT0I] = rC[3+3*VW+4*TT0I]
// src=93, dst=92
v_mov_b32 v92, v93                                 // rC[0+3*VW+5*TT0I] = rC[1+3*VW+5*TT0I]
// src=94, dst=93
v_mov_b32 v93, v94                                 // rC[1+3*VW+5*TT0I] = rC[2+3*VW+5*TT0I]
// src=95, dst=94
v_mov_b32 v94, v95                                 // rC[2+3*VW+5*TT0I] = rC[3+3*VW+5*TT0I]
// src=109, dst=108
v_mov_b32 v108, v109                               // rC[0+3*VW+6*TT0I] = rC[1+3*VW+6*TT0I]
// src=110, dst=109
v_mov_b32 v109, v110                               // rC[1+3*VW+6*TT0I] = rC[2+3*VW+6*TT0I]
// src=111, dst=110
v_mov_b32 v110, v111                               // rC[2+3*VW+6*TT0I] = rC[3+3*VW+6*TT0I]
// src=125, dst=124
v_mov_b32 v124, v125                               // rC[0+3*VW+7*TT0I] = rC[1+3*VW+7*TT0I]
// src=126, dst=125
v_mov_b32 v125, v126                               // rC[1+3*VW+7*TT0I] = rC[2+3*VW+7*TT0I]
// src=127, dst=126
v_mov_b32 v126, v127                               // rC[2+3*VW+7*TT0I] = rC[3+3*VW+7*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0044                                // done shifting
label_0044: // end shift0


/* shift vector components d1 */

v_mov_b32 v131, s[sgprWorkGroup1]                  // 
v_mul_i32_i24 v131, -0x40, v131                    // wg*MT
_v_add_co_u32 v131, vcc_lo, s[sgprSizesFree+1], v131 // wgMT = Size - wg*MT
v_mov_b32 v130, 0x40                               // MT
v_min_u32 v131, v130, v131                         // wgMT = (wgMT < MT) ? wgMT : MT
v_lshrrev_b32 v130, 2, v131                        // v130 = v131 / 4
v_and_b32 v132, 3, v131                            // v132 = v131 % 4
v_and_b32 v133, 7, v130                            // v133 = v130 % 8
v_lshrrev_b32 v134, 4, v[vgprSerial]               // v134 = v[vgprSerial] / 16
v_and_b32 v135, 7, v134                            // v135 = v134 % 8
v_lshrrev_b32 v134, 5, v131                        // v134 = v131 / 32
v_and_b32 v136, 3, v131                            // v136 = v131 % 4
v_mov_b32 v137, v136                               // duplicate
v_lshrrev_b32 v136, 2, v137                        // v136 = v137 / 4
_v_add_co_u32 v136, vcc_lo, v134, v136             // vId = 2 components
v_cmp_eq_u32 vcc_lo, v132, 0x1                     // wgMT%VW == 1
s_cbranch_vccnz label_0049                         // shift d1 r=1
v_cmp_eq_u32 vcc_lo, v132, 0x2                     // wgMT%VW == 2
s_cbranch_vccnz label_0052                         // shift d1 r=2
v_cmp_eq_u32 vcc_lo, v132, 0x3                     // wgMT%VW == 3
s_cbranch_vccnz label_0055                         // shift d1 r=3
s_branch label_0058                                // no shifting

/******************************************/
/* shift d1 r=1                           */
/******************************************/
label_0049:
v_cmp_eq_u32 vcc_lo, v136, 0x0                     // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0050                         // shift d1, r=1, v=0
v_cmp_eq_u32 vcc_lo, v136, 0x1                     // wgMT/(SG*VW) == 1
s_cbranch_vccnz label_0051                         // shift d1, r=1, v=1

/* shift d1 r=1 v=0 */
label_0050:
_v_cmpx_eq_u32 s53, v135, v133                     // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=48, dst=0
v_mov_b32 v0, v48                                  // rC[0+0*TT0I*VW+0*TT0I] = rC[0+0*TT0I*VW+3*TT0I]
// src=49, dst=1
v_mov_b32 v1, v49                                  // rC[1+0*TT0I*VW+0*TT0I] = rC[1+0*TT0I*VW+3*TT0I]
// src=50, dst=2
v_mov_b32 v2, v50                                  // rC[2+0*TT0I*VW+0*TT0I] = rC[2+0*TT0I*VW+3*TT0I]
// src=51, dst=3
v_mov_b32 v3, v51                                  // rC[3+0*TT0I*VW+0*TT0I] = rC[3+0*TT0I*VW+3*TT0I]
// src=52, dst=4
v_mov_b32 v4, v52                                  // rC[4+0*TT0I*VW+0*TT0I] = rC[4+0*TT0I*VW+3*TT0I]
// src=53, dst=5
v_mov_b32 v5, v53                                  // rC[5+0*TT0I*VW+0*TT0I] = rC[5+0*TT0I*VW+3*TT0I]
// src=54, dst=6
v_mov_b32 v6, v54                                  // rC[6+0*TT0I*VW+0*TT0I] = rC[6+0*TT0I*VW+3*TT0I]
// src=55, dst=7
v_mov_b32 v7, v55                                  // rC[7+0*TT0I*VW+0*TT0I] = rC[7+0*TT0I*VW+3*TT0I]
// src=56, dst=8
v_mov_b32 v8, v56                                  // rC[8+0*TT0I*VW+0*TT0I] = rC[8+0*TT0I*VW+3*TT0I]
// src=57, dst=9
v_mov_b32 v9, v57                                  // rC[9+0*TT0I*VW+0*TT0I] = rC[9+0*TT0I*VW+3*TT0I]
// src=58, dst=10
v_mov_b32 v10, v58                                 // rC[10+0*TT0I*VW+0*TT0I] = rC[10+0*TT0I*VW+3*TT0I]
// src=59, dst=11
v_mov_b32 v11, v59                                 // rC[11+0*TT0I*VW+0*TT0I] = rC[11+0*TT0I*VW+3*TT0I]
// src=60, dst=12
v_mov_b32 v12, v60                                 // rC[12+0*TT0I*VW+0*TT0I] = rC[12+0*TT0I*VW+3*TT0I]
// src=61, dst=13
v_mov_b32 v13, v61                                 // rC[13+0*TT0I*VW+0*TT0I] = rC[13+0*TT0I*VW+3*TT0I]
// src=62, dst=14
v_mov_b32 v14, v62                                 // rC[14+0*TT0I*VW+0*TT0I] = rC[14+0*TT0I*VW+3*TT0I]
// src=63, dst=15
v_mov_b32 v15, v63                                 // rC[15+0*TT0I*VW+0*TT0I] = rC[15+0*TT0I*VW+3*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0058                                // done shifting

/* shift d1 r=1 v=1 */
label_0051:
_v_cmpx_eq_u32 s53, v135, v133                     // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=112, dst=64
v_mov_b32 v64, v112                                // rC[0+1*TT0I*VW+0*TT0I] = rC[0+1*TT0I*VW+3*TT0I]
// src=113, dst=65
v_mov_b32 v65, v113                                // rC[1+1*TT0I*VW+0*TT0I] = rC[1+1*TT0I*VW+3*TT0I]
// src=114, dst=66
v_mov_b32 v66, v114                                // rC[2+1*TT0I*VW+0*TT0I] = rC[2+1*TT0I*VW+3*TT0I]
// src=115, dst=67
v_mov_b32 v67, v115                                // rC[3+1*TT0I*VW+0*TT0I] = rC[3+1*TT0I*VW+3*TT0I]
// src=116, dst=68
v_mov_b32 v68, v116                                // rC[4+1*TT0I*VW+0*TT0I] = rC[4+1*TT0I*VW+3*TT0I]
// src=117, dst=69
v_mov_b32 v69, v117                                // rC[5+1*TT0I*VW+0*TT0I] = rC[5+1*TT0I*VW+3*TT0I]
// src=118, dst=70
v_mov_b32 v70, v118                                // rC[6+1*TT0I*VW+0*TT0I] = rC[6+1*TT0I*VW+3*TT0I]
// src=119, dst=71
v_mov_b32 v71, v119                                // rC[7+1*TT0I*VW+0*TT0I] = rC[7+1*TT0I*VW+3*TT0I]
// src=120, dst=72
v_mov_b32 v72, v120                                // rC[8+1*TT0I*VW+0*TT0I] = rC[8+1*TT0I*VW+3*TT0I]
// src=121, dst=73
v_mov_b32 v73, v121                                // rC[9+1*TT0I*VW+0*TT0I] = rC[9+1*TT0I*VW+3*TT0I]
// src=122, dst=74
v_mov_b32 v74, v122                                // rC[10+1*TT0I*VW+0*TT0I] = rC[10+1*TT0I*VW+3*TT0I]
// src=123, dst=75
v_mov_b32 v75, v123                                // rC[11+1*TT0I*VW+0*TT0I] = rC[11+1*TT0I*VW+3*TT0I]
// src=124, dst=76
v_mov_b32 v76, v124                                // rC[12+1*TT0I*VW+0*TT0I] = rC[12+1*TT0I*VW+3*TT0I]
// src=125, dst=77
v_mov_b32 v77, v125                                // rC[13+1*TT0I*VW+0*TT0I] = rC[13+1*TT0I*VW+3*TT0I]
// src=126, dst=78
v_mov_b32 v78, v126                                // rC[14+1*TT0I*VW+0*TT0I] = rC[14+1*TT0I*VW+3*TT0I]
// src=127, dst=79
v_mov_b32 v79, v127                                // rC[15+1*TT0I*VW+0*TT0I] = rC[15+1*TT0I*VW+3*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0058                                // done shifting

/******************************************/
/* shift d1 r=2                           */
/******************************************/
label_0052:
v_cmp_eq_u32 vcc_lo, v136, 0x0                     // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0053                         // shift d1, r=2, v=0
v_cmp_eq_u32 vcc_lo, v136, 0x1                     // wgMT/(SG*VW) == 1
s_cbranch_vccnz label_0054                         // shift d1, r=2, v=1

/* shift d1 r=2 v=0 */
label_0053:
_v_cmpx_eq_u32 s53, v135, v133                     // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=32, dst=0
v_mov_b32 v0, v32                                  // rC[0+0*TT0I*VW+0*TT0I] = rC[0+0*TT0I*VW+2*TT0I]
// src=48, dst=16
v_mov_b32 v16, v48                                 // rC[0+0*TT0I*VW+1*TT0I] = rC[0+0*TT0I*VW+3*TT0I]
// src=33, dst=1
v_mov_b32 v1, v33                                  // rC[1+0*TT0I*VW+0*TT0I] = rC[1+0*TT0I*VW+2*TT0I]
// src=49, dst=17
v_mov_b32 v17, v49                                 // rC[1+0*TT0I*VW+1*TT0I] = rC[1+0*TT0I*VW+3*TT0I]
// src=34, dst=2
v_mov_b32 v2, v34                                  // rC[2+0*TT0I*VW+0*TT0I] = rC[2+0*TT0I*VW+2*TT0I]
// src=50, dst=18
v_mov_b32 v18, v50                                 // rC[2+0*TT0I*VW+1*TT0I] = rC[2+0*TT0I*VW+3*TT0I]
// src=35, dst=3
v_mov_b32 v3, v35                                  // rC[3+0*TT0I*VW+0*TT0I] = rC[3+0*TT0I*VW+2*TT0I]
// src=51, dst=19
v_mov_b32 v19, v51                                 // rC[3+0*TT0I*VW+1*TT0I] = rC[3+0*TT0I*VW+3*TT0I]
// src=36, dst=4
v_mov_b32 v4, v36                                  // rC[4+0*TT0I*VW+0*TT0I] = rC[4+0*TT0I*VW+2*TT0I]
// src=52, dst=20
v_mov_b32 v20, v52                                 // rC[4+0*TT0I*VW+1*TT0I] = rC[4+0*TT0I*VW+3*TT0I]
// src=37, dst=5
v_mov_b32 v5, v37                                  // rC[5+0*TT0I*VW+0*TT0I] = rC[5+0*TT0I*VW+2*TT0I]
// src=53, dst=21
v_mov_b32 v21, v53                                 // rC[5+0*TT0I*VW+1*TT0I] = rC[5+0*TT0I*VW+3*TT0I]
// src=38, dst=6
v_mov_b32 v6, v38                                  // rC[6+0*TT0I*VW+0*TT0I] = rC[6+0*TT0I*VW+2*TT0I]
// src=54, dst=22
v_mov_b32 v22, v54                                 // rC[6+0*TT0I*VW+1*TT0I] = rC[6+0*TT0I*VW+3*TT0I]
// src=39, dst=7
v_mov_b32 v7, v39                                  // rC[7+0*TT0I*VW+0*TT0I] = rC[7+0*TT0I*VW+2*TT0I]
// src=55, dst=23
v_mov_b32 v23, v55                                 // rC[7+0*TT0I*VW+1*TT0I] = rC[7+0*TT0I*VW+3*TT0I]
// src=40, dst=8
v_mov_b32 v8, v40                                  // rC[8+0*TT0I*VW+0*TT0I] = rC[8+0*TT0I*VW+2*TT0I]
// src=56, dst=24
v_mov_b32 v24, v56                                 // rC[8+0*TT0I*VW+1*TT0I] = rC[8+0*TT0I*VW+3*TT0I]
// src=41, dst=9
v_mov_b32 v9, v41                                  // rC[9+0*TT0I*VW+0*TT0I] = rC[9+0*TT0I*VW+2*TT0I]
// src=57, dst=25
v_mov_b32 v25, v57                                 // rC[9+0*TT0I*VW+1*TT0I] = rC[9+0*TT0I*VW+3*TT0I]
// src=42, dst=10
v_mov_b32 v10, v42                                 // rC[10+0*TT0I*VW+0*TT0I] = rC[10+0*TT0I*VW+2*TT0I]
// src=58, dst=26
v_mov_b32 v26, v58                                 // rC[10+0*TT0I*VW+1*TT0I] = rC[10+0*TT0I*VW+3*TT0I]
// src=43, dst=11
v_mov_b32 v11, v43                                 // rC[11+0*TT0I*VW+0*TT0I] = rC[11+0*TT0I*VW+2*TT0I]
// src=59, dst=27
v_mov_b32 v27, v59                                 // rC[11+0*TT0I*VW+1*TT0I] = rC[11+0*TT0I*VW+3*TT0I]
// src=44, dst=12
v_mov_b32 v12, v44                                 // rC[12+0*TT0I*VW+0*TT0I] = rC[12+0*TT0I*VW+2*TT0I]
// src=60, dst=28
v_mov_b32 v28, v60                                 // rC[12+0*TT0I*VW+1*TT0I] = rC[12+0*TT0I*VW+3*TT0I]
// src=45, dst=13
v_mov_b32 v13, v45                                 // rC[13+0*TT0I*VW+0*TT0I] = rC[13+0*TT0I*VW+2*TT0I]
// src=61, dst=29
v_mov_b32 v29, v61                                 // rC[13+0*TT0I*VW+1*TT0I] = rC[13+0*TT0I*VW+3*TT0I]
// src=46, dst=14
v_mov_b32 v14, v46                                 // rC[14+0*TT0I*VW+0*TT0I] = rC[14+0*TT0I*VW+2*TT0I]
// src=62, dst=30
v_mov_b32 v30, v62                                 // rC[14+0*TT0I*VW+1*TT0I] = rC[14+0*TT0I*VW+3*TT0I]
// src=47, dst=15
v_mov_b32 v15, v47                                 // rC[15+0*TT0I*VW+0*TT0I] = rC[15+0*TT0I*VW+2*TT0I]
// src=63, dst=31
v_mov_b32 v31, v63                                 // rC[15+0*TT0I*VW+1*TT0I] = rC[15+0*TT0I*VW+3*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0058                                // done shifting

/* shift d1 r=2 v=1 */
label_0054:
_v_cmpx_eq_u32 s53, v135, v133                     // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=96, dst=64
v_mov_b32 v64, v96                                 // rC[0+1*TT0I*VW+0*TT0I] = rC[0+1*TT0I*VW+2*TT0I]
// src=112, dst=80
v_mov_b32 v80, v112                                // rC[0+1*TT0I*VW+1*TT0I] = rC[0+1*TT0I*VW+3*TT0I]
// src=97, dst=65
v_mov_b32 v65, v97                                 // rC[1+1*TT0I*VW+0*TT0I] = rC[1+1*TT0I*VW+2*TT0I]
// src=113, dst=81
v_mov_b32 v81, v113                                // rC[1+1*TT0I*VW+1*TT0I] = rC[1+1*TT0I*VW+3*TT0I]
// src=98, dst=66
v_mov_b32 v66, v98                                 // rC[2+1*TT0I*VW+0*TT0I] = rC[2+1*TT0I*VW+2*TT0I]
// src=114, dst=82
v_mov_b32 v82, v114                                // rC[2+1*TT0I*VW+1*TT0I] = rC[2+1*TT0I*VW+3*TT0I]
// src=99, dst=67
v_mov_b32 v67, v99                                 // rC[3+1*TT0I*VW+0*TT0I] = rC[3+1*TT0I*VW+2*TT0I]
// src=115, dst=83
v_mov_b32 v83, v115                                // rC[3+1*TT0I*VW+1*TT0I] = rC[3+1*TT0I*VW+3*TT0I]
// src=100, dst=68
v_mov_b32 v68, v100                                // rC[4+1*TT0I*VW+0*TT0I] = rC[4+1*TT0I*VW+2*TT0I]
// src=116, dst=84
v_mov_b32 v84, v116                                // rC[4+1*TT0I*VW+1*TT0I] = rC[4+1*TT0I*VW+3*TT0I]
// src=101, dst=69
v_mov_b32 v69, v101                                // rC[5+1*TT0I*VW+0*TT0I] = rC[5+1*TT0I*VW+2*TT0I]
// src=117, dst=85
v_mov_b32 v85, v117                                // rC[5+1*TT0I*VW+1*TT0I] = rC[5+1*TT0I*VW+3*TT0I]
// src=102, dst=70
v_mov_b32 v70, v102                                // rC[6+1*TT0I*VW+0*TT0I] = rC[6+1*TT0I*VW+2*TT0I]
// src=118, dst=86
v_mov_b32 v86, v118                                // rC[6+1*TT0I*VW+1*TT0I] = rC[6+1*TT0I*VW+3*TT0I]
// src=103, dst=71
v_mov_b32 v71, v103                                // rC[7+1*TT0I*VW+0*TT0I] = rC[7+1*TT0I*VW+2*TT0I]
// src=119, dst=87
v_mov_b32 v87, v119                                // rC[7+1*TT0I*VW+1*TT0I] = rC[7+1*TT0I*VW+3*TT0I]
// src=104, dst=72
v_mov_b32 v72, v104                                // rC[8+1*TT0I*VW+0*TT0I] = rC[8+1*TT0I*VW+2*TT0I]
// src=120, dst=88
v_mov_b32 v88, v120                                // rC[8+1*TT0I*VW+1*TT0I] = rC[8+1*TT0I*VW+3*TT0I]
// src=105, dst=73
v_mov_b32 v73, v105                                // rC[9+1*TT0I*VW+0*TT0I] = rC[9+1*TT0I*VW+2*TT0I]
// src=121, dst=89
v_mov_b32 v89, v121                                // rC[9+1*TT0I*VW+1*TT0I] = rC[9+1*TT0I*VW+3*TT0I]
// src=106, dst=74
v_mov_b32 v74, v106                                // rC[10+1*TT0I*VW+0*TT0I] = rC[10+1*TT0I*VW+2*TT0I]
// src=122, dst=90
v_mov_b32 v90, v122                                // rC[10+1*TT0I*VW+1*TT0I] = rC[10+1*TT0I*VW+3*TT0I]
// src=107, dst=75
v_mov_b32 v75, v107                                // rC[11+1*TT0I*VW+0*TT0I] = rC[11+1*TT0I*VW+2*TT0I]
// src=123, dst=91
v_mov_b32 v91, v123                                // rC[11+1*TT0I*VW+1*TT0I] = rC[11+1*TT0I*VW+3*TT0I]
// src=108, dst=76
v_mov_b32 v76, v108                                // rC[12+1*TT0I*VW+0*TT0I] = rC[12+1*TT0I*VW+2*TT0I]
// src=124, dst=92
v_mov_b32 v92, v124                                // rC[12+1*TT0I*VW+1*TT0I] = rC[12+1*TT0I*VW+3*TT0I]
// src=109, dst=77
v_mov_b32 v77, v109                                // rC[13+1*TT0I*VW+0*TT0I] = rC[13+1*TT0I*VW+2*TT0I]
// src=125, dst=93
v_mov_b32 v93, v125                                // rC[13+1*TT0I*VW+1*TT0I] = rC[13+1*TT0I*VW+3*TT0I]
// src=110, dst=78
v_mov_b32 v78, v110                                // rC[14+1*TT0I*VW+0*TT0I] = rC[14+1*TT0I*VW+2*TT0I]
// src=126, dst=94
v_mov_b32 v94, v126                                // rC[14+1*TT0I*VW+1*TT0I] = rC[14+1*TT0I*VW+3*TT0I]
// src=111, dst=79
v_mov_b32 v79, v111                                // rC[15+1*TT0I*VW+0*TT0I] = rC[15+1*TT0I*VW+2*TT0I]
// src=127, dst=95
v_mov_b32 v95, v127                                // rC[15+1*TT0I*VW+1*TT0I] = rC[15+1*TT0I*VW+3*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0058                                // done shifting

/******************************************/
/* shift d1 r=3                           */
/******************************************/
label_0055:
v_cmp_eq_u32 vcc_lo, v136, 0x0                     // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0056                         // shift d1, r=3, v=0
v_cmp_eq_u32 vcc_lo, v136, 0x1                     // wgMT/(SG*VW) == 1
s_cbranch_vccnz label_0057                         // shift d1, r=3, v=1

/* shift d1 r=3 v=0 */
label_0056:
_v_cmpx_eq_u32 s53, v135, v133                     // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=16, dst=0
v_mov_b32 v0, v16                                  // rC[0+0*TT0I*VW+0*TT0I] = rC[0+0*TT0I*VW+1*TT0I]
// src=32, dst=16
v_mov_b32 v16, v32                                 // rC[0+0*TT0I*VW+1*TT0I] = rC[0+0*TT0I*VW+2*TT0I]
// src=48, dst=32
v_mov_b32 v32, v48                                 // rC[0+0*TT0I*VW+2*TT0I] = rC[0+0*TT0I*VW+3*TT0I]
// src=17, dst=1
v_mov_b32 v1, v17                                  // rC[1+0*TT0I*VW+0*TT0I] = rC[1+0*TT0I*VW+1*TT0I]
// src=33, dst=17
v_mov_b32 v17, v33                                 // rC[1+0*TT0I*VW+1*TT0I] = rC[1+0*TT0I*VW+2*TT0I]
// src=49, dst=33
v_mov_b32 v33, v49                                 // rC[1+0*TT0I*VW+2*TT0I] = rC[1+0*TT0I*VW+3*TT0I]
// src=18, dst=2
v_mov_b32 v2, v18                                  // rC[2+0*TT0I*VW+0*TT0I] = rC[2+0*TT0I*VW+1*TT0I]
// src=34, dst=18
v_mov_b32 v18, v34                                 // rC[2+0*TT0I*VW+1*TT0I] = rC[2+0*TT0I*VW+2*TT0I]
// src=50, dst=34
v_mov_b32 v34, v50                                 // rC[2+0*TT0I*VW+2*TT0I] = rC[2+0*TT0I*VW+3*TT0I]
// src=19, dst=3
v_mov_b32 v3, v19                                  // rC[3+0*TT0I*VW+0*TT0I] = rC[3+0*TT0I*VW+1*TT0I]
// src=35, dst=19
v_mov_b32 v19, v35                                 // rC[3+0*TT0I*VW+1*TT0I] = rC[3+0*TT0I*VW+2*TT0I]
// src=51, dst=35
v_mov_b32 v35, v51                                 // rC[3+0*TT0I*VW+2*TT0I] = rC[3+0*TT0I*VW+3*TT0I]
// src=20, dst=4
v_mov_b32 v4, v20                                  // rC[4+0*TT0I*VW+0*TT0I] = rC[4+0*TT0I*VW+1*TT0I]
// src=36, dst=20
v_mov_b32 v20, v36                                 // rC[4+0*TT0I*VW+1*TT0I] = rC[4+0*TT0I*VW+2*TT0I]
// src=52, dst=36
v_mov_b32 v36, v52                                 // rC[4+0*TT0I*VW+2*TT0I] = rC[4+0*TT0I*VW+3*TT0I]
// src=21, dst=5
v_mov_b32 v5, v21                                  // rC[5+0*TT0I*VW+0*TT0I] = rC[5+0*TT0I*VW+1*TT0I]
// src=37, dst=21
v_mov_b32 v21, v37                                 // rC[5+0*TT0I*VW+1*TT0I] = rC[5+0*TT0I*VW+2*TT0I]
// src=53, dst=37
v_mov_b32 v37, v53                                 // rC[5+0*TT0I*VW+2*TT0I] = rC[5+0*TT0I*VW+3*TT0I]
// src=22, dst=6
v_mov_b32 v6, v22                                  // rC[6+0*TT0I*VW+0*TT0I] = rC[6+0*TT0I*VW+1*TT0I]
// src=38, dst=22
v_mov_b32 v22, v38                                 // rC[6+0*TT0I*VW+1*TT0I] = rC[6+0*TT0I*VW+2*TT0I]
// src=54, dst=38
v_mov_b32 v38, v54                                 // rC[6+0*TT0I*VW+2*TT0I] = rC[6+0*TT0I*VW+3*TT0I]
// src=23, dst=7
v_mov_b32 v7, v23                                  // rC[7+0*TT0I*VW+0*TT0I] = rC[7+0*TT0I*VW+1*TT0I]
// src=39, dst=23
v_mov_b32 v23, v39                                 // rC[7+0*TT0I*VW+1*TT0I] = rC[7+0*TT0I*VW+2*TT0I]
// src=55, dst=39
v_mov_b32 v39, v55                                 // rC[7+0*TT0I*VW+2*TT0I] = rC[7+0*TT0I*VW+3*TT0I]
// src=24, dst=8
v_mov_b32 v8, v24                                  // rC[8+0*TT0I*VW+0*TT0I] = rC[8+0*TT0I*VW+1*TT0I]
// src=40, dst=24
v_mov_b32 v24, v40                                 // rC[8+0*TT0I*VW+1*TT0I] = rC[8+0*TT0I*VW+2*TT0I]
// src=56, dst=40
v_mov_b32 v40, v56                                 // rC[8+0*TT0I*VW+2*TT0I] = rC[8+0*TT0I*VW+3*TT0I]
// src=25, dst=9
v_mov_b32 v9, v25                                  // rC[9+0*TT0I*VW+0*TT0I] = rC[9+0*TT0I*VW+1*TT0I]
// src=41, dst=25
v_mov_b32 v25, v41                                 // rC[9+0*TT0I*VW+1*TT0I] = rC[9+0*TT0I*VW+2*TT0I]
// src=57, dst=41
v_mov_b32 v41, v57                                 // rC[9+0*TT0I*VW+2*TT0I] = rC[9+0*TT0I*VW+3*TT0I]
// src=26, dst=10
v_mov_b32 v10, v26                                 // rC[10+0*TT0I*VW+0*TT0I] = rC[10+0*TT0I*VW+1*TT0I]
// src=42, dst=26
v_mov_b32 v26, v42                                 // rC[10+0*TT0I*VW+1*TT0I] = rC[10+0*TT0I*VW+2*TT0I]
// src=58, dst=42
v_mov_b32 v42, v58                                 // rC[10+0*TT0I*VW+2*TT0I] = rC[10+0*TT0I*VW+3*TT0I]
// src=27, dst=11
v_mov_b32 v11, v27                                 // rC[11+0*TT0I*VW+0*TT0I] = rC[11+0*TT0I*VW+1*TT0I]
// src=43, dst=27
v_mov_b32 v27, v43                                 // rC[11+0*TT0I*VW+1*TT0I] = rC[11+0*TT0I*VW+2*TT0I]
// src=59, dst=43
v_mov_b32 v43, v59                                 // rC[11+0*TT0I*VW+2*TT0I] = rC[11+0*TT0I*VW+3*TT0I]
// src=28, dst=12
v_mov_b32 v12, v28                                 // rC[12+0*TT0I*VW+0*TT0I] = rC[12+0*TT0I*VW+1*TT0I]
// src=44, dst=28
v_mov_b32 v28, v44                                 // rC[12+0*TT0I*VW+1*TT0I] = rC[12+0*TT0I*VW+2*TT0I]
// src=60, dst=44
v_mov_b32 v44, v60                                 // rC[12+0*TT0I*VW+2*TT0I] = rC[12+0*TT0I*VW+3*TT0I]
// src=29, dst=13
v_mov_b32 v13, v29                                 // rC[13+0*TT0I*VW+0*TT0I] = rC[13+0*TT0I*VW+1*TT0I]
// src=45, dst=29
v_mov_b32 v29, v45                                 // rC[13+0*TT0I*VW+1*TT0I] = rC[13+0*TT0I*VW+2*TT0I]
// src=61, dst=45
v_mov_b32 v45, v61                                 // rC[13+0*TT0I*VW+2*TT0I] = rC[13+0*TT0I*VW+3*TT0I]
// src=30, dst=14
v_mov_b32 v14, v30                                 // rC[14+0*TT0I*VW+0*TT0I] = rC[14+0*TT0I*VW+1*TT0I]
// src=46, dst=30
v_mov_b32 v30, v46                                 // rC[14+0*TT0I*VW+1*TT0I] = rC[14+0*TT0I*VW+2*TT0I]
// src=62, dst=46
v_mov_b32 v46, v62                                 // rC[14+0*TT0I*VW+2*TT0I] = rC[14+0*TT0I*VW+3*TT0I]
// src=31, dst=15
v_mov_b32 v15, v31                                 // rC[15+0*TT0I*VW+0*TT0I] = rC[15+0*TT0I*VW+1*TT0I]
// src=47, dst=31
v_mov_b32 v31, v47                                 // rC[15+0*TT0I*VW+1*TT0I] = rC[15+0*TT0I*VW+2*TT0I]
// src=63, dst=47
v_mov_b32 v47, v63                                 // rC[15+0*TT0I*VW+2*TT0I] = rC[15+0*TT0I*VW+3*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0058                                // done shifting

/* shift d1 r=3 v=1 */
label_0057:
_v_cmpx_eq_u32 s53, v135, v133                     // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=80, dst=64
v_mov_b32 v64, v80                                 // rC[0+1*TT0I*VW+0*TT0I] = rC[0+1*TT0I*VW+1*TT0I]
// src=96, dst=80
v_mov_b32 v80, v96                                 // rC[0+1*TT0I*VW+1*TT0I] = rC[0+1*TT0I*VW+2*TT0I]
// src=112, dst=96
v_mov_b32 v96, v112                                // rC[0+1*TT0I*VW+2*TT0I] = rC[0+1*TT0I*VW+3*TT0I]
// src=81, dst=65
v_mov_b32 v65, v81                                 // rC[1+1*TT0I*VW+0*TT0I] = rC[1+1*TT0I*VW+1*TT0I]
// src=97, dst=81
v_mov_b32 v81, v97                                 // rC[1+1*TT0I*VW+1*TT0I] = rC[1+1*TT0I*VW+2*TT0I]
// src=113, dst=97
v_mov_b32 v97, v113                                // rC[1+1*TT0I*VW+2*TT0I] = rC[1+1*TT0I*VW+3*TT0I]
// src=82, dst=66
v_mov_b32 v66, v82                                 // rC[2+1*TT0I*VW+0*TT0I] = rC[2+1*TT0I*VW+1*TT0I]
// src=98, dst=82
v_mov_b32 v82, v98                                 // rC[2+1*TT0I*VW+1*TT0I] = rC[2+1*TT0I*VW+2*TT0I]
// src=114, dst=98
v_mov_b32 v98, v114                                // rC[2+1*TT0I*VW+2*TT0I] = rC[2+1*TT0I*VW+3*TT0I]
// src=83, dst=67
v_mov_b32 v67, v83                                 // rC[3+1*TT0I*VW+0*TT0I] = rC[3+1*TT0I*VW+1*TT0I]
// src=99, dst=83
v_mov_b32 v83, v99                                 // rC[3+1*TT0I*VW+1*TT0I] = rC[3+1*TT0I*VW+2*TT0I]
// src=115, dst=99
v_mov_b32 v99, v115                                // rC[3+1*TT0I*VW+2*TT0I] = rC[3+1*TT0I*VW+3*TT0I]
// src=84, dst=68
v_mov_b32 v68, v84                                 // rC[4+1*TT0I*VW+0*TT0I] = rC[4+1*TT0I*VW+1*TT0I]
// src=100, dst=84
v_mov_b32 v84, v100                                // rC[4+1*TT0I*VW+1*TT0I] = rC[4+1*TT0I*VW+2*TT0I]
// src=116, dst=100
v_mov_b32 v100, v116                               // rC[4+1*TT0I*VW+2*TT0I] = rC[4+1*TT0I*VW+3*TT0I]
// src=85, dst=69
v_mov_b32 v69, v85                                 // rC[5+1*TT0I*VW+0*TT0I] = rC[5+1*TT0I*VW+1*TT0I]
// src=101, dst=85
v_mov_b32 v85, v101                                // rC[5+1*TT0I*VW+1*TT0I] = rC[5+1*TT0I*VW+2*TT0I]
// src=117, dst=101
v_mov_b32 v101, v117                               // rC[5+1*TT0I*VW+2*TT0I] = rC[5+1*TT0I*VW+3*TT0I]
// src=86, dst=70
v_mov_b32 v70, v86                                 // rC[6+1*TT0I*VW+0*TT0I] = rC[6+1*TT0I*VW+1*TT0I]
// src=102, dst=86
v_mov_b32 v86, v102                                // rC[6+1*TT0I*VW+1*TT0I] = rC[6+1*TT0I*VW+2*TT0I]
// src=118, dst=102
v_mov_b32 v102, v118                               // rC[6+1*TT0I*VW+2*TT0I] = rC[6+1*TT0I*VW+3*TT0I]
// src=87, dst=71
v_mov_b32 v71, v87                                 // rC[7+1*TT0I*VW+0*TT0I] = rC[7+1*TT0I*VW+1*TT0I]
// src=103, dst=87
v_mov_b32 v87, v103                                // rC[7+1*TT0I*VW+1*TT0I] = rC[7+1*TT0I*VW+2*TT0I]
// src=119, dst=103
v_mov_b32 v103, v119                               // rC[7+1*TT0I*VW+2*TT0I] = rC[7+1*TT0I*VW+3*TT0I]
// src=88, dst=72
v_mov_b32 v72, v88                                 // rC[8+1*TT0I*VW+0*TT0I] = rC[8+1*TT0I*VW+1*TT0I]
// src=104, dst=88
v_mov_b32 v88, v104                                // rC[8+1*TT0I*VW+1*TT0I] = rC[8+1*TT0I*VW+2*TT0I]
// src=120, dst=104
v_mov_b32 v104, v120                               // rC[8+1*TT0I*VW+2*TT0I] = rC[8+1*TT0I*VW+3*TT0I]
// src=89, dst=73
v_mov_b32 v73, v89                                 // rC[9+1*TT0I*VW+0*TT0I] = rC[9+1*TT0I*VW+1*TT0I]
// src=105, dst=89
v_mov_b32 v89, v105                                // rC[9+1*TT0I*VW+1*TT0I] = rC[9+1*TT0I*VW+2*TT0I]
// src=121, dst=105
v_mov_b32 v105, v121                               // rC[9+1*TT0I*VW+2*TT0I] = rC[9+1*TT0I*VW+3*TT0I]
// src=90, dst=74
v_mov_b32 v74, v90                                 // rC[10+1*TT0I*VW+0*TT0I] = rC[10+1*TT0I*VW+1*TT0I]
// src=106, dst=90
v_mov_b32 v90, v106                                // rC[10+1*TT0I*VW+1*TT0I] = rC[10+1*TT0I*VW+2*TT0I]
// src=122, dst=106
v_mov_b32 v106, v122                               // rC[10+1*TT0I*VW+2*TT0I] = rC[10+1*TT0I*VW+3*TT0I]
// src=91, dst=75
v_mov_b32 v75, v91                                 // rC[11+1*TT0I*VW+0*TT0I] = rC[11+1*TT0I*VW+1*TT0I]
// src=107, dst=91
v_mov_b32 v91, v107                                // rC[11+1*TT0I*VW+1*TT0I] = rC[11+1*TT0I*VW+2*TT0I]
// src=123, dst=107
v_mov_b32 v107, v123                               // rC[11+1*TT0I*VW+2*TT0I] = rC[11+1*TT0I*VW+3*TT0I]
// src=92, dst=76
v_mov_b32 v76, v92                                 // rC[12+1*TT0I*VW+0*TT0I] = rC[12+1*TT0I*VW+1*TT0I]
// src=108, dst=92
v_mov_b32 v92, v108                                // rC[12+1*TT0I*VW+1*TT0I] = rC[12+1*TT0I*VW+2*TT0I]
// src=124, dst=108
v_mov_b32 v108, v124                               // rC[12+1*TT0I*VW+2*TT0I] = rC[12+1*TT0I*VW+3*TT0I]
// src=93, dst=77
v_mov_b32 v77, v93                                 // rC[13+1*TT0I*VW+0*TT0I] = rC[13+1*TT0I*VW+1*TT0I]
// src=109, dst=93
v_mov_b32 v93, v109                                // rC[13+1*TT0I*VW+1*TT0I] = rC[13+1*TT0I*VW+2*TT0I]
// src=125, dst=109
v_mov_b32 v109, v125                               // rC[13+1*TT0I*VW+2*TT0I] = rC[13+1*TT0I*VW+3*TT0I]
// src=94, dst=78
v_mov_b32 v78, v94                                 // rC[14+1*TT0I*VW+0*TT0I] = rC[14+1*TT0I*VW+1*TT0I]
// src=110, dst=94
v_mov_b32 v94, v110                                // rC[14+1*TT0I*VW+1*TT0I] = rC[14+1*TT0I*VW+2*TT0I]
// src=126, dst=110
v_mov_b32 v110, v126                               // rC[14+1*TT0I*VW+2*TT0I] = rC[14+1*TT0I*VW+3*TT0I]
// src=95, dst=79
v_mov_b32 v79, v95                                 // rC[15+1*TT0I*VW+0*TT0I] = rC[15+1*TT0I*VW+1*TT0I]
// src=111, dst=95
v_mov_b32 v95, v111                                // rC[15+1*TT0I*VW+1*TT0I] = rC[15+1*TT0I*VW+2*TT0I]
// src=127, dst=111
v_mov_b32 v111, v127                               // rC[15+1*TT0I*VW+2*TT0I] = rC[15+1*TT0I*VW+3*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0058                                // done shifting
label_0058: // end shift0



/* not-LocalSplitU: global write indices */

/* computeStoreVgprs */
v_lshrrev_b32 v131, 4, v[vgprSerial]               // v131 = v[vgprSerial] / 16
v_and_b32 v130, 15, v[vgprSerial]                  // v130 = v[vgprSerial] % 16
v_lshlrev_b32 v130, 0x2, v130                      // v130 = v130 * 4
v_lshlrev_b32 v131, 0x2, v131                      // v131 = v131 * 4
v_mul_lo_u32 v132, v131, s[sgprStrideC1J]          // rowStart vgpr
v_mul_lo_u32 v133, v131, s[sgprStrideD1J]          // rowStart vgpr

s_mul_i32 s54, 0x100, s[sgprWorkGroup0]            // s54 = wg0*MT0
_v_add_co_u32 v130, vcc_lo, s54, v130              // coord0 = tid0*VW + wg0*MT0
s_mul_i32 s56, 0x40, s[sgprWorkGroup1]             // <- wg1*MT1
_v_add_co_u32 v131, vcc_lo, s56, v131              // coord1 = tid1*VW + wg1*MT1


/* not-LocalSplitU: global write */

s_cmpk_eq_u32 s[sgprBeta], 0x0                     // Beta == 0
s_cbranch_scc0 GW_Beta_75                          // Branch if Beta is not zero

s_and_b32 s54, 255, s[sgprSizeI]                   // s54 = s[sgprSizeI] % 256
s_add_u32 s55, -0x1, s[sgprNumWorkGroups0]         // 
s_cmp_ge_u32 s[sgprWorkGroup0], s55                // wg0 >= nwg0-1 ?
s_cselect_b32 s54, s54, 0                          // set rMT0
s_cmpk_gt_u32 s54, 0x0                             // rMT0 > 0
s_cbranch_scc1 GW_B0_E1_66                         // jump if edges required
s_and_b32 s54, 63, s[sgprSizeJ]                    // s54 = s[sgprSizeJ] % 64
s_add_u32 s55, -0x1, s[sgprNumWorkGroups1]         // 
s_cmp_ge_u32 s[sgprWorkGroup1], s55                // wg1 >= nwg1-1
s_cselect_b32 s54, s54, 0                          // set rMT1
s_cmpk_gt_u32 s54, 0x0                             // rMT1 > 0
s_cbranch_scc1 GW_B0_E1_66                         // jump if edges required
GW_B0_E0_63:

/* edge=0, allocate 1 sgpr. perBatchTmpS=1 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=32 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Alpha Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,1,0,0:vw4); (0,2,0,0:vw4); (0,3,0,0:vw4); (0,0,1,0:vw4); (0,1,1,0:vw4); (0,2,1,0:vw4); (0,3,1,0:vw4); (0,0,2,0:vw4); (0,1,2,0:vw4); (0,2,2,0:vw4); (0,3,2,0:vw4); (0,0,3,0:vw4); (0,1,3,0:vw4); (0,2,3,0:vw4); (0,3,3,0:vw4); (1,0,0,0:vw4); (1,1,0,0:vw4); (1,2,0,0:vw4); (1,3,0,0:vw4); (1,0,1,0:vw4); (1,1,1,0:vw4); (1,2,1,0:vw4); (1,3,1,0:vw4); (1,0,2,0:vw4); (1,1,2,0:vw4); (1,2,2,0:vw4); (1,3,2,0:vw4); (1,0,3,0:vw4); (1,1,3,0:vw4); (1,2,3,0:vw4); (1,3,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
/* (d1,vc1,d0,vc0)=(0,0,2,0) */
/* (d1,vc1,d0,vc0)=(0,0,3,0) */
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
/* (d1,vc1,d0,vc0)=(0,1,1,0) */
/* (d1,vc1,d0,vc0)=(0,1,2,0) */
/* (d1,vc1,d0,vc0)=(0,1,3,0) */
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
/* (d1,vc1,d0,vc0)=(0,2,1,0) */
/* (d1,vc1,d0,vc0)=(0,2,2,0) */
/* (d1,vc1,d0,vc0)=(0,2,3,0) */
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
/* (d1,vc1,d0,vc0)=(0,3,1,0) */
/* (d1,vc1,d0,vc0)=(0,3,2,0) */
/* (d1,vc1,d0,vc0)=(0,3,3,0) */
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
/* (d1,vc1,d0,vc0)=(1,0,1,0) */
/* (d1,vc1,d0,vc0)=(1,0,2,0) */
/* (d1,vc1,d0,vc0)=(1,0,3,0) */
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
/* (d1,vc1,d0,vc0)=(1,1,1,0) */
/* (d1,vc1,d0,vc0)=(1,1,2,0) */
/* (d1,vc1,d0,vc0)=(1,1,3,0) */
/* (d1,vc1,d0,vc0)=(1,2,0,0) */
/* (d1,vc1,d0,vc0)=(1,2,1,0) */
/* (d1,vc1,d0,vc0)=(1,2,2,0) */
/* (d1,vc1,d0,vc0)=(1,2,3,0) */
/* (d1,vc1,d0,vc0)=(1,3,0,0) */
/* (d1,vc1,d0,vc0)=(1,3,1,0) */
/* (d1,vc1,d0,vc0)=(1,3,2,0) */
/* (d1,vc1,d0,vc0)=(1,3,3,0) */
_v_add_lshl_u32 v136, v133, v130, 0x2              // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=130, coord0Vgpr=130

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 1, 0, 0), (0, 2, 0, 0), (0, 3, 0, 0), (0, 0, 1, 0), (0, 1, 1, 0), (0, 2, 1, 0), (0, 3, 1, 0), (0, 0, 2, 0), (0, 1, 2, 0), (0, 2, 2, 0), (0, 3, 2, 0), (0, 0, 3, 0), (0, 1, 3, 0), (0, 2, 3, 0), (0, 3, 3, 0), (1, 0, 0, 0), (1, 1, 0, 0), (1, 2, 0, 0), (1, 3, 0, 0), (1, 0, 1, 0), (1, 1, 1, 0), (1, 2, 1, 0), (1, 3, 1, 0), (1, 0, 2, 0), (1, 1, 2, 0), (1, 2, 2, 0), (1, 3, 2, 0), (1, 0, 3, 0), (1, 1, 3, 0), (1, 2, 3, 0), (1, 3, 3, 0)] */
v_mul_f32 v[vgprValuC+0], s[sgprAlpha], v[vgprValuC+0] // *= alpha
v_mul_f32 v[vgprValuC+1], s[sgprAlpha], v[vgprValuC+1] // *= alpha
v_mul_f32 v[vgprValuC+2], s[sgprAlpha], v[vgprValuC+2] // *= alpha
v_mul_f32 v[vgprValuC+3], s[sgprAlpha], v[vgprValuC+3] // *= alpha
v_mul_f32 v[vgprValuC+4], s[sgprAlpha], v[vgprValuC+4] // *= alpha
v_mul_f32 v[vgprValuC+5], s[sgprAlpha], v[vgprValuC+5] // *= alpha
v_mul_f32 v[vgprValuC+6], s[sgprAlpha], v[vgprValuC+6] // *= alpha
v_mul_f32 v[vgprValuC+7], s[sgprAlpha], v[vgprValuC+7] // *= alpha
v_mul_f32 v[vgprValuC+8], s[sgprAlpha], v[vgprValuC+8] // *= alpha
v_mul_f32 v[vgprValuC+9], s[sgprAlpha], v[vgprValuC+9] // *= alpha
v_mul_f32 v[vgprValuC+10], s[sgprAlpha], v[vgprValuC+10] // *= alpha
v_mul_f32 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha
v_mul_f32 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_mul_f32 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha
v_mul_f32 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha
v_mul_f32 v[vgprValuC+16], s[sgprAlpha], v[vgprValuC+16] // *= alpha
v_mul_f32 v[vgprValuC+17], s[sgprAlpha], v[vgprValuC+17] // *= alpha
v_mul_f32 v[vgprValuC+18], s[sgprAlpha], v[vgprValuC+18] // *= alpha
v_mul_f32 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+19] // *= alpha
v_mul_f32 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+20] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha
v_mul_f32 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+23] // *= alpha
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha
v_mul_f32 v[vgprValuC+34], s[sgprAlpha], v[vgprValuC+34] // *= alpha
v_mul_f32 v[vgprValuC+35], s[sgprAlpha], v[vgprValuC+35] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha
v_mul_f32 v[vgprValuC+41], s[sgprAlpha], v[vgprValuC+41] // *= alpha
v_mul_f32 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha
v_mul_f32 v[vgprValuC+43], s[sgprAlpha], v[vgprValuC+43] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+52], s[sgprAlpha], v[vgprValuC+52] // *= alpha
v_mul_f32 v[vgprValuC+53], s[sgprAlpha], v[vgprValuC+53] // *= alpha
v_mul_f32 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha
v_mul_f32 v[vgprValuC+55], s[sgprAlpha], v[vgprValuC+55] // *= alpha
v_mul_f32 v[vgprValuC+56], s[sgprAlpha], v[vgprValuC+56] // *= alpha
v_mul_f32 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha
v_mul_f32 v[vgprValuC+58], s[sgprAlpha], v[vgprValuC+58] // *= alpha
v_mul_f32 v[vgprValuC+59], s[sgprAlpha], v[vgprValuC+59] // *= alpha
v_mul_f32 v[vgprValuC+60], s[sgprAlpha], v[vgprValuC+60] // *= alpha
v_mul_f32 v[vgprValuC+61], s[sgprAlpha], v[vgprValuC+61] // *= alpha
v_mul_f32 v[vgprValuC+62], s[sgprAlpha], v[vgprValuC+62] // *= alpha
v_mul_f32 v[vgprValuC+63], s[sgprAlpha], v[vgprValuC+63] // *= alpha
v_mul_f32 v[vgprValuC+64], s[sgprAlpha], v[vgprValuC+64] // *= alpha
v_mul_f32 v[vgprValuC+65], s[sgprAlpha], v[vgprValuC+65] // *= alpha
v_mul_f32 v[vgprValuC+66], s[sgprAlpha], v[vgprValuC+66] // *= alpha
v_mul_f32 v[vgprValuC+67], s[sgprAlpha], v[vgprValuC+67] // *= alpha
v_mul_f32 v[vgprValuC+68], s[sgprAlpha], v[vgprValuC+68] // *= alpha
v_mul_f32 v[vgprValuC+69], s[sgprAlpha], v[vgprValuC+69] // *= alpha
v_mul_f32 v[vgprValuC+70], s[sgprAlpha], v[vgprValuC+70] // *= alpha
v_mul_f32 v[vgprValuC+71], s[sgprAlpha], v[vgprValuC+71] // *= alpha
v_mul_f32 v[vgprValuC+72], s[sgprAlpha], v[vgprValuC+72] // *= alpha
v_mul_f32 v[vgprValuC+73], s[sgprAlpha], v[vgprValuC+73] // *= alpha
v_mul_f32 v[vgprValuC+74], s[sgprAlpha], v[vgprValuC+74] // *= alpha
v_mul_f32 v[vgprValuC+75], s[sgprAlpha], v[vgprValuC+75] // *= alpha
v_mul_f32 v[vgprValuC+76], s[sgprAlpha], v[vgprValuC+76] // *= alpha
v_mul_f32 v[vgprValuC+77], s[sgprAlpha], v[vgprValuC+77] // *= alpha
v_mul_f32 v[vgprValuC+78], s[sgprAlpha], v[vgprValuC+78] // *= alpha
v_mul_f32 v[vgprValuC+79], s[sgprAlpha], v[vgprValuC+79] // *= alpha
v_mul_f32 v[vgprValuC+80], s[sgprAlpha], v[vgprValuC+80] // *= alpha
v_mul_f32 v[vgprValuC+81], s[sgprAlpha], v[vgprValuC+81] // *= alpha
v_mul_f32 v[vgprValuC+82], s[sgprAlpha], v[vgprValuC+82] // *= alpha
v_mul_f32 v[vgprValuC+83], s[sgprAlpha], v[vgprValuC+83] // *= alpha
v_mul_f32 v[vgprValuC+84], s[sgprAlpha], v[vgprValuC+84] // *= alpha
v_mul_f32 v[vgprValuC+85], s[sgprAlpha], v[vgprValuC+85] // *= alpha
v_mul_f32 v[vgprValuC+86], s[sgprAlpha], v[vgprValuC+86] // *= alpha
v_mul_f32 v[vgprValuC+87], s[sgprAlpha], v[vgprValuC+87] // *= alpha
v_mul_f32 v[vgprValuC+88], s[sgprAlpha], v[vgprValuC+88] // *= alpha
v_mul_f32 v[vgprValuC+89], s[sgprAlpha], v[vgprValuC+89] // *= alpha
v_mul_f32 v[vgprValuC+90], s[sgprAlpha], v[vgprValuC+90] // *= alpha
v_mul_f32 v[vgprValuC+91], s[sgprAlpha], v[vgprValuC+91] // *= alpha
v_mul_f32 v[vgprValuC+92], s[sgprAlpha], v[vgprValuC+92] // *= alpha
v_mul_f32 v[vgprValuC+93], s[sgprAlpha], v[vgprValuC+93] // *= alpha
v_mul_f32 v[vgprValuC+94], s[sgprAlpha], v[vgprValuC+94] // *= alpha
v_mul_f32 v[vgprValuC+95], s[sgprAlpha], v[vgprValuC+95] // *= alpha
v_mul_f32 v[vgprValuC+96], s[sgprAlpha], v[vgprValuC+96] // *= alpha
v_mul_f32 v[vgprValuC+97], s[sgprAlpha], v[vgprValuC+97] // *= alpha
v_mul_f32 v[vgprValuC+98], s[sgprAlpha], v[vgprValuC+98] // *= alpha
v_mul_f32 v[vgprValuC+99], s[sgprAlpha], v[vgprValuC+99] // *= alpha
v_mul_f32 v[vgprValuC+100], s[sgprAlpha], v[vgprValuC+100] // *= alpha
v_mul_f32 v[vgprValuC+101], s[sgprAlpha], v[vgprValuC+101] // *= alpha
v_mul_f32 v[vgprValuC+102], s[sgprAlpha], v[vgprValuC+102] // *= alpha
v_mul_f32 v[vgprValuC+103], s[sgprAlpha], v[vgprValuC+103] // *= alpha
v_mul_f32 v[vgprValuC+104], s[sgprAlpha], v[vgprValuC+104] // *= alpha
v_mul_f32 v[vgprValuC+105], s[sgprAlpha], v[vgprValuC+105] // *= alpha
v_mul_f32 v[vgprValuC+106], s[sgprAlpha], v[vgprValuC+106] // *= alpha
v_mul_f32 v[vgprValuC+107], s[sgprAlpha], v[vgprValuC+107] // *= alpha
v_mul_f32 v[vgprValuC+108], s[sgprAlpha], v[vgprValuC+108] // *= alpha
v_mul_f32 v[vgprValuC+109], s[sgprAlpha], v[vgprValuC+109] // *= alpha
v_mul_f32 v[vgprValuC+110], s[sgprAlpha], v[vgprValuC+110] // *= alpha
v_mul_f32 v[vgprValuC+111], s[sgprAlpha], v[vgprValuC+111] // *= alpha
v_mul_f32 v[vgprValuC+112], s[sgprAlpha], v[vgprValuC+112] // *= alpha
v_mul_f32 v[vgprValuC+113], s[sgprAlpha], v[vgprValuC+113] // *= alpha
v_mul_f32 v[vgprValuC+114], s[sgprAlpha], v[vgprValuC+114] // *= alpha
v_mul_f32 v[vgprValuC+115], s[sgprAlpha], v[vgprValuC+115] // *= alpha
v_mul_f32 v[vgprValuC+116], s[sgprAlpha], v[vgprValuC+116] // *= alpha
v_mul_f32 v[vgprValuC+117], s[sgprAlpha], v[vgprValuC+117] // *= alpha
v_mul_f32 v[vgprValuC+118], s[sgprAlpha], v[vgprValuC+118] // *= alpha
v_mul_f32 v[vgprValuC+119], s[sgprAlpha], v[vgprValuC+119] // *= alpha
v_mul_f32 v[vgprValuC+120], s[sgprAlpha], v[vgprValuC+120] // *= alpha
v_mul_f32 v[vgprValuC+121], s[sgprAlpha], v[vgprValuC+121] // *= alpha
v_mul_f32 v[vgprValuC+122], s[sgprAlpha], v[vgprValuC+122] // *= alpha
v_mul_f32 v[vgprValuC+123], s[sgprAlpha], v[vgprValuC+123] // *= alpha
v_mul_f32 v[vgprValuC+124], s[sgprAlpha], v[vgprValuC+124] // *= alpha
v_mul_f32 v[vgprValuC+125], s[sgprAlpha], v[vgprValuC+125] // *= alpha
v_mul_f32 v[vgprValuC+126], s[sgprAlpha], v[vgprValuC+126] // *= alpha
v_mul_f32 v[vgprValuC+127], s[sgprAlpha], v[vgprValuC+127] // *= alpha

/* apply mask, calc new C and issue writes */
_buffer_store_b128 v[0:3], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[4:7], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
_buffer_store_b128 v[8:11], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:512 // store D
_buffer_store_b128 v[12:15], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:768 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[16:19], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[20:23], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
_buffer_store_b128 v[24:27], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:512 // store D
_buffer_store_b128 v[28:31], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:768 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[32:35], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[36:39], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
_buffer_store_b128 v[40:43], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:512 // store D
_buffer_store_b128 v[44:47], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:768 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[48:51], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[52:55], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
_buffer_store_b128 v[56:59], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:512 // store D
_buffer_store_b128 v[60:63], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:768 // store D
s_mul_i32 s54, s[sgprStrideD1J], 116               // scale StrideD *= numRows(29) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[64:67], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[68:71], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
_buffer_store_b128 v[72:75], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:512 // store D
_buffer_store_b128 v[76:79], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:768 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[80:83], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[84:87], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
_buffer_store_b128 v[88:91], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:512 // store D
_buffer_store_b128 v[92:95], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:768 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[96:99], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[100:103], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
_buffer_store_b128 v[104:107], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:512 // store D
_buffer_store_b128 v[108:111], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:768 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[112:115], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[116:119], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
_buffer_store_b128 v[120:123], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:512 // store D
_buffer_store_b128 v[124:127], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:768 // store D
s_branch label_GW_End_74                           // jump to end
GW_B0_E1_66:

/* edge=1, allocate 3 sgpr. perBatchTmpS=2 perBatchMaskS=1 perElementMaskS=0 elementsPerBatch=70 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,0,0,1:vw1); (0,0,0,2:vw1); (0,0,0,3:vw1); (0,1,0,0:vw1); (0,1,0,1:vw1); (0,1,0,2:vw1); (0,1,0,3:vw1); (0,2,0,0:vw1); (0,2,0,1:vw1); (0,2,0,2:vw1); (0,2,0,3:vw1); (0,3,0,0:vw1); (0,3,0,1:vw1); (0,3,0,2:vw1); (0,3,0,3:vw1); (0,0,1,0:vw1); (0,0,1,1:vw1); (0,0,1,2:vw1); (0,0,1,3:vw1); (0,1,1,0:vw1); (0,1,1,1:vw1); (0,1,1,2:vw1); (0,1,1,3:vw1); (0,2,1,0:vw1); (0,2,1,1:vw1); (0,2,1,2:vw1); (0,2,1,3:vw1); (0,3,1,0:vw1); (0,3,1,1:vw1); (0,3,1,2:vw1); (0,3,1,3:vw1); (0,0,2,0:vw1); (0,0,2,1:vw1); (0,0,2,2:vw1); (0,0,2,3:vw1); (0,1,2,0:vw1); (0,1,2,1:vw1); (0,1,2,2:vw1); (0,1,2,3:vw1); (0,2,2,0:vw1); (0,2,2,1:vw1); (0,2,2,2:vw1); (0,2,2,3:vw1); (0,3,2,0:vw1); (0,3,2,1:vw1); (0,3,2,2:vw1); (0,3,2,3:vw1); (0,0,3,0:vw1); (0,0,3,1:vw1); (0,0,3,2:vw1); (0,0,3,3:vw1); (0,1,3,0:vw1); (0,1,3,1:vw1); (0,1,3,2:vw1); (0,1,3,3:vw1); (0,2,3,0:vw1); (0,2,3,1:vw1); (0,2,3,2:vw1); (0,2,3,3:vw1); (0,3,3,0:vw1); (0,3,3,1:vw1); (0,3,3,2:vw1); (0,3,3,3:vw1); (1,0,0,0:vw1); (1,0,0,1:vw1); (1,0,0,2:vw1); (1,0,0,3:vw1); (1,1,0,0:vw1); (1,1,0,1:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s54, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v136, v133, v130, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v136, -1, v136, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v137, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v137, -1, v137, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,2) */
_v_add_co_u32 v134, vcc_lo, v130, 2                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v138, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v138, -1, v138, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,3) */
_v_add_co_u32 v134, vcc_lo, v130, 3                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v139, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v139, -1, v139, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v140, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v140, -1, v140, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v141, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v141, -1, v141, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v142, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v142, -1, v142, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v143, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v143, -1, v143, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,2,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=2 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v144, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v144, -1, v144, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,2,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=2 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v145, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v145, -1, v145, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,2,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=2 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v146, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v146, -1, v146, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,2,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=2 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v147, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v147, -1, v147, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,3,0) */
s_mov_b32 s54, 192                                 // coordOffset0 d0=3 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v148, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v148, -1, v148, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,3,1) */
s_mov_b32 s54, 193                                 // coordOffset0 d0=3 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v149, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v149, -1, v149, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,3,2) */
s_mov_b32 s54, 194                                 // coordOffset0 d0=3 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v150, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v150, -1, v150, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,3,3) */
s_mov_b32 s54, 195                                 // coordOffset0 d0=3 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v151, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v151, -1, v151, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v152, v133, v130, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v152, -1, v152, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v153, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v153, -1, v153, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,2) */
_v_add_co_u32 v134, vcc_lo, v130, 2                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v154, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v154, -1, v154, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,3) */
_v_add_co_u32 v134, vcc_lo, v130, 3                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v155, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v155, -1, v155, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v156, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v156, -1, v156, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v157, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v157, -1, v157, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v158, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v158, -1, v158, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v159, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v159, -1, v159, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,2,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=2 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v160, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v160, -1, v160, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,2,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=2 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v161, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v161, -1, v161, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,2,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=2 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v162, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v162, -1, v162, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,2,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=2 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v163, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v163, -1, v163, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,3,0) */
s_mov_b32 s54, 192                                 // coordOffset0 d0=3 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v164, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v164, -1, v164, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,3,1) */
s_mov_b32 s54, 193                                 // coordOffset0 d0=3 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v165, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v165, -1, v165, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,3,2) */
s_mov_b32 s54, 194                                 // coordOffset0 d0=3 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v166, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v166, -1, v166, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,3,3) */
s_mov_b32 s54, 195                                 // coordOffset0 d0=3 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v167, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v167, -1, v167, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v168, v133, v130, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v168, -1, v168, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v169, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v169, -1, v169, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,2) */
_v_add_co_u32 v134, vcc_lo, v130, 2                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v170, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v170, -1, v170, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,3) */
_v_add_co_u32 v134, vcc_lo, v130, 3                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v171, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v171, -1, v171, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v172, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v172, -1, v172, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v173, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v173, -1, v173, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v174, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v174, -1, v174, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v175, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v175, -1, v175, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,2,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=2 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v176, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v176, -1, v176, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,2,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=2 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v177, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v177, -1, v177, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,2,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=2 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v178, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v178, -1, v178, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,2,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=2 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v179, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v179, -1, v179, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,3,0) */
s_mov_b32 s54, 192                                 // coordOffset0 d0=3 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v180, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v180, -1, v180, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,3,1) */
s_mov_b32 s54, 193                                 // coordOffset0 d0=3 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v181, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v181, -1, v181, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,3,2) */
s_mov_b32 s54, 194                                 // coordOffset0 d0=3 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v182, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v182, -1, v182, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,3,3) */
s_mov_b32 s54, 195                                 // coordOffset0 d0=3 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v183, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v183, -1, v183, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v184, v133, v130, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v184, -1, v184, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v185, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v185, -1, v185, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,2) */
_v_add_co_u32 v134, vcc_lo, v130, 2                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v186, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v186, -1, v186, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,3) */
_v_add_co_u32 v134, vcc_lo, v130, 3                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v187, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v187, -1, v187, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v188, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v188, -1, v188, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v189, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v189, -1, v189, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v190, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v190, -1, v190, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v191, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v191, -1, v191, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,2,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=2 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v192, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v192, -1, v192, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,2,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=2 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v193, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v193, -1, v193, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,2,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=2 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v194, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v194, -1, v194, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,2,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=2 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v195, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v195, -1, v195, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,3,0) */
s_mov_b32 s54, 192                                 // coordOffset0 d0=3 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v196, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v196, -1, v196, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,3,1) */
s_mov_b32 s54, 193                                 // coordOffset0 d0=3 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v197, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v197, -1, v197, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,3,2) */
s_mov_b32 s54, 194                                 // coordOffset0 d0=3 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v198, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v198, -1, v198, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,3,3) */
s_mov_b32 s54, 195                                 // coordOffset0 d0=3 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v199, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v199, -1, v199, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 29               // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s54, s[sgprStrideC1J], 29                // scale stride
_v_add_u32 v132, v132, s54                         // ROWINC- Move cinRowPtr to next row
s_mul_i32 s54, s[sgprStrideD1J], 29                // scale stride
_v_add_u32 v133, v133, s54                         // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v200, v133, v130, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v200, -1, v200, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v201, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v201, -1, v201, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,2) */
_v_add_co_u32 v134, vcc_lo, v130, 2                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v202, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v202, -1, v202, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,3) */
_v_add_co_u32 v134, vcc_lo, v130, 3                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v203, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v203, -1, v203, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v204, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v204, -1, v204, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v205, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v205, -1, v205, s56                  // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 0, 1), (0, 0, 0, 2), (0, 0, 0, 3), (0, 1, 0, 0), (0, 1, 0, 1), (0, 1, 0, 2), (0, 1, 0, 3), (0, 2, 0, 0), (0, 2, 0, 1), (0, 2, 0, 2), (0, 2, 0, 3), (0, 3, 0, 0), (0, 3, 0, 1), (0, 3, 0, 2), (0, 3, 0, 3), (0, 0, 1, 0), (0, 0, 1, 1), (0, 0, 1, 2), (0, 0, 1, 3), (0, 1, 1, 0), (0, 1, 1, 1), (0, 1, 1, 2), (0, 1, 1, 3), (0, 2, 1, 0), (0, 2, 1, 1), (0, 2, 1, 2), (0, 2, 1, 3), (0, 3, 1, 0), (0, 3, 1, 1), (0, 3, 1, 2), (0, 3, 1, 3), (0, 0, 2, 0), (0, 0, 2, 1), (0, 0, 2, 2), (0, 0, 2, 3), (0, 1, 2, 0), (0, 1, 2, 1), (0, 1, 2, 2), (0, 1, 2, 3), (0, 2, 2, 0), (0, 2, 2, 1), (0, 2, 2, 2), (0, 2, 2, 3), (0, 3, 2, 0), (0, 3, 2, 1), (0, 3, 2, 2), (0, 3, 2, 3), (0, 0, 3, 0), (0, 0, 3, 1), (0, 0, 3, 2), (0, 0, 3, 3), (0, 1, 3, 0), (0, 1, 3, 1), (0, 1, 3, 2), (0, 1, 3, 3), (0, 2, 3, 0), (0, 2, 3, 1), (0, 2, 3, 2), (0, 2, 3, 3), (0, 3, 3, 0), (0, 3, 3, 1), (0, 3, 3, 2), (0, 3, 3, 3), (1, 0, 0, 0), (1, 0, 0, 1), (1, 0, 0, 2), (1, 0, 0, 3), (1, 1, 0, 0), (1, 1, 0, 1)] */
v_mul_f32 v[vgprValuC+0], s[sgprAlpha], v[vgprValuC+0] // *= alpha
v_mul_f32 v[vgprValuC+1], s[sgprAlpha], v[vgprValuC+1] // *= alpha
v_mul_f32 v[vgprValuC+2], s[sgprAlpha], v[vgprValuC+2] // *= alpha
v_mul_f32 v[vgprValuC+3], s[sgprAlpha], v[vgprValuC+3] // *= alpha
v_mul_f32 v[vgprValuC+4], s[sgprAlpha], v[vgprValuC+4] // *= alpha
v_mul_f32 v[vgprValuC+5], s[sgprAlpha], v[vgprValuC+5] // *= alpha
v_mul_f32 v[vgprValuC+6], s[sgprAlpha], v[vgprValuC+6] // *= alpha
v_mul_f32 v[vgprValuC+7], s[sgprAlpha], v[vgprValuC+7] // *= alpha
v_mul_f32 v[vgprValuC+8], s[sgprAlpha], v[vgprValuC+8] // *= alpha
v_mul_f32 v[vgprValuC+9], s[sgprAlpha], v[vgprValuC+9] // *= alpha
v_mul_f32 v[vgprValuC+10], s[sgprAlpha], v[vgprValuC+10] // *= alpha
v_mul_f32 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha
v_mul_f32 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_mul_f32 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha
v_mul_f32 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha
v_mul_f32 v[vgprValuC+16], s[sgprAlpha], v[vgprValuC+16] // *= alpha
v_mul_f32 v[vgprValuC+17], s[sgprAlpha], v[vgprValuC+17] // *= alpha
v_mul_f32 v[vgprValuC+18], s[sgprAlpha], v[vgprValuC+18] // *= alpha
v_mul_f32 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+19] // *= alpha
v_mul_f32 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+20] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha
v_mul_f32 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+23] // *= alpha
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha
v_mul_f32 v[vgprValuC+34], s[sgprAlpha], v[vgprValuC+34] // *= alpha
v_mul_f32 v[vgprValuC+35], s[sgprAlpha], v[vgprValuC+35] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha
v_mul_f32 v[vgprValuC+41], s[sgprAlpha], v[vgprValuC+41] // *= alpha
v_mul_f32 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha
v_mul_f32 v[vgprValuC+43], s[sgprAlpha], v[vgprValuC+43] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+52], s[sgprAlpha], v[vgprValuC+52] // *= alpha
v_mul_f32 v[vgprValuC+53], s[sgprAlpha], v[vgprValuC+53] // *= alpha
v_mul_f32 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha
v_mul_f32 v[vgprValuC+55], s[sgprAlpha], v[vgprValuC+55] // *= alpha
v_mul_f32 v[vgprValuC+56], s[sgprAlpha], v[vgprValuC+56] // *= alpha
v_mul_f32 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha
v_mul_f32 v[vgprValuC+58], s[sgprAlpha], v[vgprValuC+58] // *= alpha
v_mul_f32 v[vgprValuC+59], s[sgprAlpha], v[vgprValuC+59] // *= alpha
v_mul_f32 v[vgprValuC+60], s[sgprAlpha], v[vgprValuC+60] // *= alpha
v_mul_f32 v[vgprValuC+61], s[sgprAlpha], v[vgprValuC+61] // *= alpha
v_mul_f32 v[vgprValuC+62], s[sgprAlpha], v[vgprValuC+62] // *= alpha
v_mul_f32 v[vgprValuC+63], s[sgprAlpha], v[vgprValuC+63] // *= alpha
v_mul_f32 v[vgprValuC+64], s[sgprAlpha], v[vgprValuC+64] // *= alpha
v_mul_f32 v[vgprValuC+65], s[sgprAlpha], v[vgprValuC+65] // *= alpha
v_mul_f32 v[vgprValuC+66], s[sgprAlpha], v[vgprValuC+66] // *= alpha
v_mul_f32 v[vgprValuC+67], s[sgprAlpha], v[vgprValuC+67] // *= alpha
v_mul_f32 v[vgprValuC+68], s[sgprAlpha], v[vgprValuC+68] // *= alpha
v_mul_f32 v[vgprValuC+69], s[sgprAlpha], v[vgprValuC+69] // *= alpha

/* apply mask, calc new C and issue writes */
_buffer_store_b32 v0, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v1, v137, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v2, v138, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v3, v139, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v4, v140, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v5, v141, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v6, v142, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v7, v143, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v8, v144, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v9, v145, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v10, v146, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v11, v147, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v12, v148, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v13, v149, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v14, v150, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v15, v151, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v16, v152, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v17, v153, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v18, v154, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v19, v155, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v20, v156, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v21, v157, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v22, v158, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v23, v159, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v24, v160, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v25, v161, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v26, v162, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v27, v163, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v28, v164, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v29, v165, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v30, v166, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v31, v167, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v32, v168, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v33, v169, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v34, v170, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v35, v171, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v36, v172, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v37, v173, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v38, v174, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v39, v175, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v40, v176, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v41, v177, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v42, v178, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v43, v179, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v44, v180, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v45, v181, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v46, v182, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v47, v183, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v48, v184, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v49, v185, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v50, v186, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v51, v187, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v52, v188, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v53, v189, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v54, v190, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v55, v191, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v56, v192, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v57, v193, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v58, v194, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v59, v195, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v60, v196, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v61, v197, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v62, v198, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v63, v199, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v64, v200, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v65, v201, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v66, v202, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v67, v203, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v68, v204, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v69, v205, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Edge Batch #1 (d1,d0,vc1,vc0) = */
/*    (1,1,0,2:vw1); (1,1,0,3:vw1); (1,2,0,0:vw1); (1,2,0,1:vw1); (1,2,0,2:vw1); (1,2,0,3:vw1); (1,3,0,0:vw1); (1,3,0,1:vw1); (1,3,0,2:vw1); (1,3,0,3:vw1); (1,0,1,0:vw1); (1,0,1,1:vw1); (1,0,1,2:vw1); (1,0,1,3:vw1); (1,1,1,0:vw1); (1,1,1,1:vw1); (1,1,1,2:vw1); (1,1,1,3:vw1); (1,2,1,0:vw1); (1,2,1,1:vw1); (1,2,1,2:vw1); (1,2,1,3:vw1); (1,3,1,0:vw1); (1,3,1,1:vw1); (1,3,1,2:vw1); (1,3,1,3:vw1); (1,0,2,0:vw1); (1,0,2,1:vw1); (1,0,2,2:vw1); (1,0,2,3:vw1); (1,1,2,0:vw1); (1,1,2,1:vw1); (1,1,2,2:vw1); (1,1,2,3:vw1); (1,2,2,0:vw1); (1,2,2,1:vw1); (1,2,2,2:vw1); (1,2,2,3:vw1); (1,3,2,0:vw1); (1,3,2,1:vw1); (1,3,2,2:vw1); (1,3,2,3:vw1); (1,0,3,0:vw1); (1,0,3,1:vw1); (1,0,3,2:vw1); (1,0,3,3:vw1); (1,1,3,0:vw1); (1,1,3,1:vw1); (1,1,3,2:vw1); (1,1,3,3:vw1); (1,2,3,0:vw1); (1,2,3,1:vw1); (1,2,3,2:vw1); (1,2,3,3:vw1); (1,3,3,0:vw1); (1,3,3,1:vw1); (1,3,3,2:vw1); (1,3,3,3:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(1,0,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v136, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v136, -1, v136, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v137, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v137, -1, v137, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,2,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=2 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v138, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v138, -1, v138, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,2,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=2 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v139, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v139, -1, v139, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,2,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=2 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v140, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v140, -1, v140, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,2,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=2 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v141, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v141, -1, v141, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,3,0) */
s_mov_b32 s54, 192                                 // coordOffset0 d0=3 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v142, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v142, -1, v142, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,3,1) */
s_mov_b32 s54, 193                                 // coordOffset0 d0=3 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v143, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v143, -1, v143, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,3,2) */
s_mov_b32 s54, 194                                 // coordOffset0 d0=3 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v144, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v144, -1, v144, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,3,3) */
s_mov_b32 s54, 195                                 // coordOffset0 d0=3 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v145, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v145, -1, v145, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v146, v133, v130, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v146, -1, v146, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v147, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v147, -1, v147, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,0,2) */
_v_add_co_u32 v134, vcc_lo, v130, 2                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v148, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v148, -1, v148, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,0,3) */
_v_add_co_u32 v134, vcc_lo, v130, 3                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v149, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v149, -1, v149, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v150, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v150, -1, v150, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v151, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v151, -1, v151, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v152, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v152, -1, v152, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v153, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v153, -1, v153, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,2,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=2 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v154, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v154, -1, v154, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,2,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=2 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v155, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v155, -1, v155, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,2,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=2 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v156, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v156, -1, v156, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,2,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=2 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v157, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v157, -1, v157, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,3,0) */
s_mov_b32 s54, 192                                 // coordOffset0 d0=3 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v158, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v158, -1, v158, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,3,1) */
s_mov_b32 s54, 193                                 // coordOffset0 d0=3 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v159, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v159, -1, v159, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,3,2) */
s_mov_b32 s54, 194                                 // coordOffset0 d0=3 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v160, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v160, -1, v160, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,3,3) */
s_mov_b32 s54, 195                                 // coordOffset0 d0=3 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v161, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v161, -1, v161, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v162, v133, v130, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v162, -1, v162, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v163, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v163, -1, v163, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,0,2) */
_v_add_co_u32 v134, vcc_lo, v130, 2                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v164, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v164, -1, v164, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,0,3) */
_v_add_co_u32 v134, vcc_lo, v130, 3                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v165, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v165, -1, v165, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v166, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v166, -1, v166, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v167, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v167, -1, v167, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v168, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v168, -1, v168, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v169, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v169, -1, v169, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,2,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=2 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v170, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v170, -1, v170, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,2,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=2 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v171, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v171, -1, v171, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,2,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=2 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v172, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v172, -1, v172, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,2,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=2 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v173, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v173, -1, v173, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,3,0) */
s_mov_b32 s54, 192                                 // coordOffset0 d0=3 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v174, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v174, -1, v174, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,3,1) */
s_mov_b32 s54, 193                                 // coordOffset0 d0=3 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v175, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v175, -1, v175, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,3,2) */
s_mov_b32 s54, 194                                 // coordOffset0 d0=3 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v176, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v176, -1, v176, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,3,3) */
s_mov_b32 s54, 195                                 // coordOffset0 d0=3 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v177, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v177, -1, v177, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v178, v133, v130, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v178, -1, v178, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v179, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v179, -1, v179, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,0,2) */
_v_add_co_u32 v134, vcc_lo, v130, 2                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v180, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v180, -1, v180, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,0,3) */
_v_add_co_u32 v134, vcc_lo, v130, 3                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v181, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v181, -1, v181, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v182, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v182, -1, v182, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v183, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v183, -1, v183, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v184, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v184, -1, v184, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v185, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v185, -1, v185, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,2,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=2 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v186, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v186, -1, v186, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,2,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=2 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v187, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v187, -1, v187, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,2,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=2 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v188, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v188, -1, v188, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,2,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=2 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v189, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v189, -1, v189, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,3,0) */
s_mov_b32 s54, 192                                 // coordOffset0 d0=3 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v190, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v190, -1, v190, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,3,1) */
s_mov_b32 s54, 193                                 // coordOffset0 d0=3 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v191, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v191, -1, v191, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,3,2) */
s_mov_b32 s54, 194                                 // coordOffset0 d0=3 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v192, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v192, -1, v192, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,3,3) */
s_mov_b32 s54, 195                                 // coordOffset0 d0=3 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v193, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v193, -1, v193, s56                  // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(1, 1, 0, 2), (1, 1, 0, 3), (1, 2, 0, 0), (1, 2, 0, 1), (1, 2, 0, 2), (1, 2, 0, 3), (1, 3, 0, 0), (1, 3, 0, 1), (1, 3, 0, 2), (1, 3, 0, 3), (1, 0, 1, 0), (1, 0, 1, 1), (1, 0, 1, 2), (1, 0, 1, 3), (1, 1, 1, 0), (1, 1, 1, 1), (1, 1, 1, 2), (1, 1, 1, 3), (1, 2, 1, 0), (1, 2, 1, 1), (1, 2, 1, 2), (1, 2, 1, 3), (1, 3, 1, 0), (1, 3, 1, 1), (1, 3, 1, 2), (1, 3, 1, 3), (1, 0, 2, 0), (1, 0, 2, 1), (1, 0, 2, 2), (1, 0, 2, 3), (1, 1, 2, 0), (1, 1, 2, 1), (1, 1, 2, 2), (1, 1, 2, 3), (1, 2, 2, 0), (1, 2, 2, 1), (1, 2, 2, 2), (1, 2, 2, 3), (1, 3, 2, 0), (1, 3, 2, 1), (1, 3, 2, 2), (1, 3, 2, 3), (1, 0, 3, 0), (1, 0, 3, 1), (1, 0, 3, 2), (1, 0, 3, 3), (1, 1, 3, 0), (1, 1, 3, 1), (1, 1, 3, 2), (1, 1, 3, 3), (1, 2, 3, 0), (1, 2, 3, 1), (1, 2, 3, 2), (1, 2, 3, 3), (1, 3, 3, 0), (1, 3, 3, 1), (1, 3, 3, 2), (1, 3, 3, 3)] */
v_mul_f32 v[vgprValuC+70], s[sgprAlpha], v[vgprValuC+70] // *= alpha
v_mul_f32 v[vgprValuC+71], s[sgprAlpha], v[vgprValuC+71] // *= alpha
v_mul_f32 v[vgprValuC+72], s[sgprAlpha], v[vgprValuC+72] // *= alpha
v_mul_f32 v[vgprValuC+73], s[sgprAlpha], v[vgprValuC+73] // *= alpha
v_mul_f32 v[vgprValuC+74], s[sgprAlpha], v[vgprValuC+74] // *= alpha
v_mul_f32 v[vgprValuC+75], s[sgprAlpha], v[vgprValuC+75] // *= alpha
v_mul_f32 v[vgprValuC+76], s[sgprAlpha], v[vgprValuC+76] // *= alpha
v_mul_f32 v[vgprValuC+77], s[sgprAlpha], v[vgprValuC+77] // *= alpha
v_mul_f32 v[vgprValuC+78], s[sgprAlpha], v[vgprValuC+78] // *= alpha
v_mul_f32 v[vgprValuC+79], s[sgprAlpha], v[vgprValuC+79] // *= alpha
v_mul_f32 v[vgprValuC+80], s[sgprAlpha], v[vgprValuC+80] // *= alpha
v_mul_f32 v[vgprValuC+81], s[sgprAlpha], v[vgprValuC+81] // *= alpha
v_mul_f32 v[vgprValuC+82], s[sgprAlpha], v[vgprValuC+82] // *= alpha
v_mul_f32 v[vgprValuC+83], s[sgprAlpha], v[vgprValuC+83] // *= alpha
v_mul_f32 v[vgprValuC+84], s[sgprAlpha], v[vgprValuC+84] // *= alpha
v_mul_f32 v[vgprValuC+85], s[sgprAlpha], v[vgprValuC+85] // *= alpha
v_mul_f32 v[vgprValuC+86], s[sgprAlpha], v[vgprValuC+86] // *= alpha
v_mul_f32 v[vgprValuC+87], s[sgprAlpha], v[vgprValuC+87] // *= alpha
v_mul_f32 v[vgprValuC+88], s[sgprAlpha], v[vgprValuC+88] // *= alpha
v_mul_f32 v[vgprValuC+89], s[sgprAlpha], v[vgprValuC+89] // *= alpha
v_mul_f32 v[vgprValuC+90], s[sgprAlpha], v[vgprValuC+90] // *= alpha
v_mul_f32 v[vgprValuC+91], s[sgprAlpha], v[vgprValuC+91] // *= alpha
v_mul_f32 v[vgprValuC+92], s[sgprAlpha], v[vgprValuC+92] // *= alpha
v_mul_f32 v[vgprValuC+93], s[sgprAlpha], v[vgprValuC+93] // *= alpha
v_mul_f32 v[vgprValuC+94], s[sgprAlpha], v[vgprValuC+94] // *= alpha
v_mul_f32 v[vgprValuC+95], s[sgprAlpha], v[vgprValuC+95] // *= alpha
v_mul_f32 v[vgprValuC+96], s[sgprAlpha], v[vgprValuC+96] // *= alpha
v_mul_f32 v[vgprValuC+97], s[sgprAlpha], v[vgprValuC+97] // *= alpha
v_mul_f32 v[vgprValuC+98], s[sgprAlpha], v[vgprValuC+98] // *= alpha
v_mul_f32 v[vgprValuC+99], s[sgprAlpha], v[vgprValuC+99] // *= alpha
v_mul_f32 v[vgprValuC+100], s[sgprAlpha], v[vgprValuC+100] // *= alpha
v_mul_f32 v[vgprValuC+101], s[sgprAlpha], v[vgprValuC+101] // *= alpha
v_mul_f32 v[vgprValuC+102], s[sgprAlpha], v[vgprValuC+102] // *= alpha
v_mul_f32 v[vgprValuC+103], s[sgprAlpha], v[vgprValuC+103] // *= alpha
v_mul_f32 v[vgprValuC+104], s[sgprAlpha], v[vgprValuC+104] // *= alpha
v_mul_f32 v[vgprValuC+105], s[sgprAlpha], v[vgprValuC+105] // *= alpha
v_mul_f32 v[vgprValuC+106], s[sgprAlpha], v[vgprValuC+106] // *= alpha
v_mul_f32 v[vgprValuC+107], s[sgprAlpha], v[vgprValuC+107] // *= alpha
v_mul_f32 v[vgprValuC+108], s[sgprAlpha], v[vgprValuC+108] // *= alpha
v_mul_f32 v[vgprValuC+109], s[sgprAlpha], v[vgprValuC+109] // *= alpha
v_mul_f32 v[vgprValuC+110], s[sgprAlpha], v[vgprValuC+110] // *= alpha
v_mul_f32 v[vgprValuC+111], s[sgprAlpha], v[vgprValuC+111] // *= alpha
v_mul_f32 v[vgprValuC+112], s[sgprAlpha], v[vgprValuC+112] // *= alpha
v_mul_f32 v[vgprValuC+113], s[sgprAlpha], v[vgprValuC+113] // *= alpha
v_mul_f32 v[vgprValuC+114], s[sgprAlpha], v[vgprValuC+114] // *= alpha
v_mul_f32 v[vgprValuC+115], s[sgprAlpha], v[vgprValuC+115] // *= alpha
v_mul_f32 v[vgprValuC+116], s[sgprAlpha], v[vgprValuC+116] // *= alpha
v_mul_f32 v[vgprValuC+117], s[sgprAlpha], v[vgprValuC+117] // *= alpha
v_mul_f32 v[vgprValuC+118], s[sgprAlpha], v[vgprValuC+118] // *= alpha
v_mul_f32 v[vgprValuC+119], s[sgprAlpha], v[vgprValuC+119] // *= alpha
v_mul_f32 v[vgprValuC+120], s[sgprAlpha], v[vgprValuC+120] // *= alpha
v_mul_f32 v[vgprValuC+121], s[sgprAlpha], v[vgprValuC+121] // *= alpha
v_mul_f32 v[vgprValuC+122], s[sgprAlpha], v[vgprValuC+122] // *= alpha
v_mul_f32 v[vgprValuC+123], s[sgprAlpha], v[vgprValuC+123] // *= alpha
v_mul_f32 v[vgprValuC+124], s[sgprAlpha], v[vgprValuC+124] // *= alpha
v_mul_f32 v[vgprValuC+125], s[sgprAlpha], v[vgprValuC+125] // *= alpha
v_mul_f32 v[vgprValuC+126], s[sgprAlpha], v[vgprValuC+126] // *= alpha
v_mul_f32 v[vgprValuC+127], s[sgprAlpha], v[vgprValuC+127] // *= alpha

/* apply mask, calc new C and issue writes */
_buffer_store_b32 v70, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v71, v137, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v72, v138, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v73, v139, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v74, v140, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v75, v141, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v76, v142, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v77, v143, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v78, v144, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v79, v145, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v80, v146, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v81, v147, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v82, v148, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v83, v149, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v84, v150, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v85, v151, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v86, v152, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v87, v153, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v88, v154, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v89, v155, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v90, v156, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v91, v157, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v92, v158, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v93, v159, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v94, v160, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v95, v161, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v96, v162, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v97, v163, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v98, v164, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v99, v165, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v100, v166, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v101, v167, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v102, v168, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v103, v169, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v104, v170, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v105, v171, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v106, v172, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v107, v173, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v108, v174, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v109, v175, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v110, v176, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v111, v177, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v112, v178, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v113, v179, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v114, v180, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v115, v181, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v116, v182, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v117, v183, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v118, v184, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v119, v185, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v120, v186, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v121, v187, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v122, v188, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v123, v189, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v124, v190, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v125, v191, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v126, v192, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v127, v193, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_branch label_GW_End_74                           // jump to end
GW_Beta_75:
s_and_b32 s54, 255, s[sgprSizeI]                   // s54 = s[sgprSizeI] % 256
s_add_u32 s55, -0x1, s[sgprNumWorkGroups0]         // 
s_cmp_ge_u32 s[sgprWorkGroup0], s55                // wg0 >= nwg0-1 ?
s_cselect_b32 s54, s54, 0                          // set rMT0
s_cmpk_gt_u32 s54, 0x0                             // rMT0 > 0
s_cbranch_scc1 GW_B1_E1_73                         // jump if edges required
s_and_b32 s54, 63, s[sgprSizeJ]                    // s54 = s[sgprSizeJ] % 64
s_add_u32 s55, -0x1, s[sgprNumWorkGroups1]         // 
s_cmp_ge_u32 s[sgprWorkGroup1], s55                // wg1 >= nwg1-1
s_cselect_b32 s54, s54, 0                          // set rMT1
s_cmpk_gt_u32 s54, 0x0                             // rMT1 > 0
s_cbranch_scc1 GW_B1_E1_73                         // jump if edges required
GW_B1_E0_70:

/* edge=0, allocate 1 sgpr. perBatchTmpS=1 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=16 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Alpha Beta Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,1,0,0:vw4); (0,2,0,0:vw4); (0,3,0,0:vw4); (0,0,1,0:vw4); (0,1,1,0:vw4); (0,2,1,0:vw4); (0,3,1,0:vw4); (0,0,2,0:vw4); (0,1,2,0:vw4); (0,2,2,0:vw4); (0,3,2,0:vw4); (0,0,3,0:vw4); (0,1,3,0:vw4); (0,2,3,0:vw4); (0,3,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
_v_add_lshl_u32 v137, v132, v130, 0x2              // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=130, coord0Vgpr=130
_buffer_load_b128 v[140:143], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
_buffer_load_b128 v[144:147], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:256 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,2,0) */
_buffer_load_b128 v[148:151], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:512 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,3,0) */
_buffer_load_b128 v[152:155], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:768 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[156:159], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,1,1,0) */
_buffer_load_b128 v[160:163], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:256 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,1,2,0) */
_buffer_load_b128 v[164:167], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:512 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,1,3,0) */
_buffer_load_b128 v[168:171], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:768 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[172:175], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,2,1,0) */
_buffer_load_b128 v[176:179], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:256 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,2,2,0) */
_buffer_load_b128 v[180:183], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:512 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,2,3,0) */
_buffer_load_b128 v[184:187], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:768 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[188:191], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,3,1,0) */
_buffer_load_b128 v[192:195], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:256 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,3,2,0) */
_buffer_load_b128 v[196:199], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:512 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,3,3,0) */
_buffer_load_b128 v[200:203], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:768 // load C for beta calc
_v_add_lshl_u32 v136, v133, v130, 0x2              // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=130, coord0Vgpr=130

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 1, 0, 0), (0, 2, 0, 0), (0, 3, 0, 0), (0, 0, 1, 0), (0, 1, 1, 0), (0, 2, 1, 0), (0, 3, 1, 0), (0, 0, 2, 0), (0, 1, 2, 0), (0, 2, 2, 0), (0, 3, 2, 0), (0, 0, 3, 0), (0, 1, 3, 0), (0, 2, 3, 0), (0, 3, 3, 0)] */
v_mul_f32 v[vgprValuC+0], s[sgprAlpha], v[vgprValuC+0] // *= alpha
v_mul_f32 v[vgprValuC+1], s[sgprAlpha], v[vgprValuC+1] // *= alpha
v_mul_f32 v[vgprValuC+2], s[sgprAlpha], v[vgprValuC+2] // *= alpha
v_mul_f32 v[vgprValuC+3], s[sgprAlpha], v[vgprValuC+3] // *= alpha
v_mul_f32 v[vgprValuC+4], s[sgprAlpha], v[vgprValuC+4] // *= alpha
v_mul_f32 v[vgprValuC+5], s[sgprAlpha], v[vgprValuC+5] // *= alpha
v_mul_f32 v[vgprValuC+6], s[sgprAlpha], v[vgprValuC+6] // *= alpha
v_mul_f32 v[vgprValuC+7], s[sgprAlpha], v[vgprValuC+7] // *= alpha
v_mul_f32 v[vgprValuC+8], s[sgprAlpha], v[vgprValuC+8] // *= alpha
v_mul_f32 v[vgprValuC+9], s[sgprAlpha], v[vgprValuC+9] // *= alpha
v_mul_f32 v[vgprValuC+10], s[sgprAlpha], v[vgprValuC+10] // *= alpha
v_mul_f32 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha
v_mul_f32 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_mul_f32 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha
v_mul_f32 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha
v_mul_f32 v[vgprValuC+16], s[sgprAlpha], v[vgprValuC+16] // *= alpha
v_mul_f32 v[vgprValuC+17], s[sgprAlpha], v[vgprValuC+17] // *= alpha
v_mul_f32 v[vgprValuC+18], s[sgprAlpha], v[vgprValuC+18] // *= alpha
v_mul_f32 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+19] // *= alpha
v_mul_f32 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+20] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha
v_mul_f32 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+23] // *= alpha
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha
v_mul_f32 v[vgprValuC+34], s[sgprAlpha], v[vgprValuC+34] // *= alpha
v_mul_f32 v[vgprValuC+35], s[sgprAlpha], v[vgprValuC+35] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha
v_mul_f32 v[vgprValuC+41], s[sgprAlpha], v[vgprValuC+41] // *= alpha
v_mul_f32 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha
v_mul_f32 v[vgprValuC+43], s[sgprAlpha], v[vgprValuC+43] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+52], s[sgprAlpha], v[vgprValuC+52] // *= alpha
v_mul_f32 v[vgprValuC+53], s[sgprAlpha], v[vgprValuC+53] // *= alpha
v_mul_f32 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha
v_mul_f32 v[vgprValuC+55], s[sgprAlpha], v[vgprValuC+55] // *= alpha
v_mul_f32 v[vgprValuC+56], s[sgprAlpha], v[vgprValuC+56] // *= alpha
v_mul_f32 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha
v_mul_f32 v[vgprValuC+58], s[sgprAlpha], v[vgprValuC+58] // *= alpha
v_mul_f32 v[vgprValuC+59], s[sgprAlpha], v[vgprValuC+59] // *= alpha
v_mul_f32 v[vgprValuC+60], s[sgprAlpha], v[vgprValuC+60] // *= alpha
v_mul_f32 v[vgprValuC+61], s[sgprAlpha], v[vgprValuC+61] // *= alpha
v_mul_f32 v[vgprValuC+62], s[sgprAlpha], v[vgprValuC+62] // *= alpha
v_mul_f32 v[vgprValuC+63], s[sgprAlpha], v[vgprValuC+63] // *= alpha

/* apply mask, calc new C and issue writes */

s_waitcnt vmcnt(15)                                // wait C (interleaved) 15 = 16 - 0 - 1
_v_mac_f32 v[vgprValuC+0], v140, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+1], v141, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+2], v142, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+3], v143, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[0:3], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(14)                                // wait C (interleaved) 14 = 16 - 1 - 1
_v_mac_f32 v[vgprValuC+4], v144, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+5], v145, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+6], v146, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+7], v147, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[4:7], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D

s_waitcnt vmcnt(13)                                // wait C (interleaved) 13 = 16 - 2 - 1
_v_mac_f32 v[vgprValuC+8], v148, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+9], v149, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+10], v150, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+11], v151, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[8:11], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:512 // store D

s_waitcnt vmcnt(12)                                // wait C (interleaved) 12 = 16 - 3 - 1
_v_mac_f32 v[vgprValuC+12], v152, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+13], v153, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+14], v154, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+15], v155, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[12:15], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:768 // store D

s_waitcnt vmcnt(11)                                // wait C (interleaved) 11 = 16 - 4 - 1
_v_mac_f32 v[vgprValuC+16], v156, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+17], v157, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+18], v158, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+19], v159, s[sgprBeta]      // finalSum = sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[16:19], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(10)                                // wait C (interleaved) 10 = 16 - 5 - 1
_v_mac_f32 v[vgprValuC+20], v160, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+21], v161, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+22], v162, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+23], v163, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[20:23], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D

s_waitcnt vmcnt(9)                                 // wait C (interleaved) 9 = 16 - 6 - 1
_v_mac_f32 v[vgprValuC+24], v164, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+25], v165, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+26], v166, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+27], v167, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[24:27], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:512 // store D

s_waitcnt vmcnt(8)                                 // wait C (interleaved) 8 = 16 - 7 - 1
_v_mac_f32 v[vgprValuC+28], v168, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+29], v169, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+30], v170, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+31], v171, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[28:31], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:768 // store D

s_waitcnt vmcnt(7)                                 // wait C (interleaved) 7 = 16 - 8 - 1
_v_mac_f32 v[vgprValuC+32], v172, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+33], v173, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+34], v174, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+35], v175, s[sgprBeta]      // finalSum = sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[32:35], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(6)                                 // wait C (interleaved) 6 = 16 - 9 - 1
_v_mac_f32 v[vgprValuC+36], v176, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+37], v177, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+38], v178, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+39], v179, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[36:39], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D

s_waitcnt vmcnt(5)                                 // wait C (interleaved) 5 = 16 - 10 - 1
_v_mac_f32 v[vgprValuC+40], v180, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+41], v181, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+42], v182, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+43], v183, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[40:43], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:512 // store D

s_waitcnt vmcnt(4)                                 // wait C (interleaved) 4 = 16 - 11 - 1
_v_mac_f32 v[vgprValuC+44], v184, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+45], v185, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+46], v186, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+47], v187, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[44:47], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:768 // store D

s_waitcnt vmcnt(3)                                 // wait C (interleaved) 3 = 16 - 12 - 1
_v_mac_f32 v[vgprValuC+48], v188, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+49], v189, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+50], v190, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+51], v191, s[sgprBeta]      // finalSum = sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[48:51], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(2)                                 // wait C (interleaved) 2 = 16 - 13 - 1
_v_mac_f32 v[vgprValuC+52], v192, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+53], v193, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+54], v194, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+55], v195, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[52:55], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D

s_waitcnt vmcnt(1)                                 // wait C (interleaved) 1 = 16 - 14 - 1
_v_mac_f32 v[vgprValuC+56], v196, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+57], v197, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+58], v198, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+59], v199, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[56:59], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:512 // store D

s_waitcnt vmcnt(0)                                 // wait C (interleaved) 0 = 16 - 15 - 1
_v_mac_f32 v[vgprValuC+60], v200, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+61], v201, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+62], v202, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+63], v203, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[60:63], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:768 // store D
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Alpha Beta Batch #1 (d1,d0,vc1,vc0) = */
/*    (1,0,0,0:vw4); (1,1,0,0:vw4); (1,2,0,0:vw4); (1,3,0,0:vw4); (1,0,1,0:vw4); (1,1,1,0:vw4); (1,2,1,0:vw4); (1,3,1,0:vw4); (1,0,2,0:vw4); (1,1,2,0:vw4); (1,2,2,0:vw4); (1,3,2,0:vw4); (1,0,3,0:vw4); (1,1,3,0:vw4); (1,2,3,0:vw4); (1,3,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
s_mul_i32 s54, s[sgprStrideC1J], 116               // scale StrideC *= numRows(29) * bpe
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[140:143], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,1,0) */
_buffer_load_b128 v[144:147], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:256 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,2,0) */
_buffer_load_b128 v[148:151], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:512 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,3,0) */
_buffer_load_b128 v[152:155], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:768 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[156:159], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,1,1,0) */
_buffer_load_b128 v[160:163], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:256 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,1,2,0) */
_buffer_load_b128 v[164:167], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:512 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,1,3,0) */
_buffer_load_b128 v[168:171], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:768 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,2,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[172:175], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,2,1,0) */
_buffer_load_b128 v[176:179], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:256 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,2,2,0) */
_buffer_load_b128 v[180:183], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:512 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,2,3,0) */
_buffer_load_b128 v[184:187], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:768 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,3,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[188:191], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,3,1,0) */
_buffer_load_b128 v[192:195], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:256 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,3,2,0) */
_buffer_load_b128 v[196:199], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:512 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,3,3,0) */
_buffer_load_b128 v[200:203], v137, s[sgprSrdC:sgprSrdC+3], 0, offen offset:768 // load C for beta calc

/* rC *= alpha batchElements=[(1, 0, 0, 0), (1, 1, 0, 0), (1, 2, 0, 0), (1, 3, 0, 0), (1, 0, 1, 0), (1, 1, 1, 0), (1, 2, 1, 0), (1, 3, 1, 0), (1, 0, 2, 0), (1, 1, 2, 0), (1, 2, 2, 0), (1, 3, 2, 0), (1, 0, 3, 0), (1, 1, 3, 0), (1, 2, 3, 0), (1, 3, 3, 0)] */
v_mul_f32 v[vgprValuC+64], s[sgprAlpha], v[vgprValuC+64] // *= alpha
v_mul_f32 v[vgprValuC+65], s[sgprAlpha], v[vgprValuC+65] // *= alpha
v_mul_f32 v[vgprValuC+66], s[sgprAlpha], v[vgprValuC+66] // *= alpha
v_mul_f32 v[vgprValuC+67], s[sgprAlpha], v[vgprValuC+67] // *= alpha
v_mul_f32 v[vgprValuC+68], s[sgprAlpha], v[vgprValuC+68] // *= alpha
v_mul_f32 v[vgprValuC+69], s[sgprAlpha], v[vgprValuC+69] // *= alpha
v_mul_f32 v[vgprValuC+70], s[sgprAlpha], v[vgprValuC+70] // *= alpha
v_mul_f32 v[vgprValuC+71], s[sgprAlpha], v[vgprValuC+71] // *= alpha
v_mul_f32 v[vgprValuC+72], s[sgprAlpha], v[vgprValuC+72] // *= alpha
v_mul_f32 v[vgprValuC+73], s[sgprAlpha], v[vgprValuC+73] // *= alpha
v_mul_f32 v[vgprValuC+74], s[sgprAlpha], v[vgprValuC+74] // *= alpha
v_mul_f32 v[vgprValuC+75], s[sgprAlpha], v[vgprValuC+75] // *= alpha
v_mul_f32 v[vgprValuC+76], s[sgprAlpha], v[vgprValuC+76] // *= alpha
v_mul_f32 v[vgprValuC+77], s[sgprAlpha], v[vgprValuC+77] // *= alpha
v_mul_f32 v[vgprValuC+78], s[sgprAlpha], v[vgprValuC+78] // *= alpha
v_mul_f32 v[vgprValuC+79], s[sgprAlpha], v[vgprValuC+79] // *= alpha
v_mul_f32 v[vgprValuC+80], s[sgprAlpha], v[vgprValuC+80] // *= alpha
v_mul_f32 v[vgprValuC+81], s[sgprAlpha], v[vgprValuC+81] // *= alpha
v_mul_f32 v[vgprValuC+82], s[sgprAlpha], v[vgprValuC+82] // *= alpha
v_mul_f32 v[vgprValuC+83], s[sgprAlpha], v[vgprValuC+83] // *= alpha
v_mul_f32 v[vgprValuC+84], s[sgprAlpha], v[vgprValuC+84] // *= alpha
v_mul_f32 v[vgprValuC+85], s[sgprAlpha], v[vgprValuC+85] // *= alpha
v_mul_f32 v[vgprValuC+86], s[sgprAlpha], v[vgprValuC+86] // *= alpha
v_mul_f32 v[vgprValuC+87], s[sgprAlpha], v[vgprValuC+87] // *= alpha
v_mul_f32 v[vgprValuC+88], s[sgprAlpha], v[vgprValuC+88] // *= alpha
v_mul_f32 v[vgprValuC+89], s[sgprAlpha], v[vgprValuC+89] // *= alpha
v_mul_f32 v[vgprValuC+90], s[sgprAlpha], v[vgprValuC+90] // *= alpha
v_mul_f32 v[vgprValuC+91], s[sgprAlpha], v[vgprValuC+91] // *= alpha
v_mul_f32 v[vgprValuC+92], s[sgprAlpha], v[vgprValuC+92] // *= alpha
v_mul_f32 v[vgprValuC+93], s[sgprAlpha], v[vgprValuC+93] // *= alpha
v_mul_f32 v[vgprValuC+94], s[sgprAlpha], v[vgprValuC+94] // *= alpha
v_mul_f32 v[vgprValuC+95], s[sgprAlpha], v[vgprValuC+95] // *= alpha
v_mul_f32 v[vgprValuC+96], s[sgprAlpha], v[vgprValuC+96] // *= alpha
v_mul_f32 v[vgprValuC+97], s[sgprAlpha], v[vgprValuC+97] // *= alpha
v_mul_f32 v[vgprValuC+98], s[sgprAlpha], v[vgprValuC+98] // *= alpha
v_mul_f32 v[vgprValuC+99], s[sgprAlpha], v[vgprValuC+99] // *= alpha
v_mul_f32 v[vgprValuC+100], s[sgprAlpha], v[vgprValuC+100] // *= alpha
v_mul_f32 v[vgprValuC+101], s[sgprAlpha], v[vgprValuC+101] // *= alpha
v_mul_f32 v[vgprValuC+102], s[sgprAlpha], v[vgprValuC+102] // *= alpha
v_mul_f32 v[vgprValuC+103], s[sgprAlpha], v[vgprValuC+103] // *= alpha
v_mul_f32 v[vgprValuC+104], s[sgprAlpha], v[vgprValuC+104] // *= alpha
v_mul_f32 v[vgprValuC+105], s[sgprAlpha], v[vgprValuC+105] // *= alpha
v_mul_f32 v[vgprValuC+106], s[sgprAlpha], v[vgprValuC+106] // *= alpha
v_mul_f32 v[vgprValuC+107], s[sgprAlpha], v[vgprValuC+107] // *= alpha
v_mul_f32 v[vgprValuC+108], s[sgprAlpha], v[vgprValuC+108] // *= alpha
v_mul_f32 v[vgprValuC+109], s[sgprAlpha], v[vgprValuC+109] // *= alpha
v_mul_f32 v[vgprValuC+110], s[sgprAlpha], v[vgprValuC+110] // *= alpha
v_mul_f32 v[vgprValuC+111], s[sgprAlpha], v[vgprValuC+111] // *= alpha
v_mul_f32 v[vgprValuC+112], s[sgprAlpha], v[vgprValuC+112] // *= alpha
v_mul_f32 v[vgprValuC+113], s[sgprAlpha], v[vgprValuC+113] // *= alpha
v_mul_f32 v[vgprValuC+114], s[sgprAlpha], v[vgprValuC+114] // *= alpha
v_mul_f32 v[vgprValuC+115], s[sgprAlpha], v[vgprValuC+115] // *= alpha
v_mul_f32 v[vgprValuC+116], s[sgprAlpha], v[vgprValuC+116] // *= alpha
v_mul_f32 v[vgprValuC+117], s[sgprAlpha], v[vgprValuC+117] // *= alpha
v_mul_f32 v[vgprValuC+118], s[sgprAlpha], v[vgprValuC+118] // *= alpha
v_mul_f32 v[vgprValuC+119], s[sgprAlpha], v[vgprValuC+119] // *= alpha
v_mul_f32 v[vgprValuC+120], s[sgprAlpha], v[vgprValuC+120] // *= alpha
v_mul_f32 v[vgprValuC+121], s[sgprAlpha], v[vgprValuC+121] // *= alpha
v_mul_f32 v[vgprValuC+122], s[sgprAlpha], v[vgprValuC+122] // *= alpha
v_mul_f32 v[vgprValuC+123], s[sgprAlpha], v[vgprValuC+123] // *= alpha
v_mul_f32 v[vgprValuC+124], s[sgprAlpha], v[vgprValuC+124] // *= alpha
v_mul_f32 v[vgprValuC+125], s[sgprAlpha], v[vgprValuC+125] // *= alpha
v_mul_f32 v[vgprValuC+126], s[sgprAlpha], v[vgprValuC+126] // *= alpha
v_mul_f32 v[vgprValuC+127], s[sgprAlpha], v[vgprValuC+127] // *= alpha

/* apply mask, calc new C and issue writes */

s_waitcnt vmcnt(15)                                // wait C (interleaved) 15 = 16 - 0 - 1
_v_mac_f32 v[vgprValuC+64], v140, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+65], v141, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+66], v142, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+67], v143, s[sgprBeta]      // finalSum = sum*alpha + C*beta
s_mul_i32 s54, s[sgprStrideD1J], 116               // scale StrideD *= numRows(29) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[64:67], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(14)                                // wait C (interleaved) 14 = 16 - 1 - 1
_v_mac_f32 v[vgprValuC+68], v144, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+69], v145, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+70], v146, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+71], v147, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[68:71], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D

s_waitcnt vmcnt(13)                                // wait C (interleaved) 13 = 16 - 2 - 1
_v_mac_f32 v[vgprValuC+72], v148, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+73], v149, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+74], v150, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+75], v151, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[72:75], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:512 // store D

s_waitcnt vmcnt(12)                                // wait C (interleaved) 12 = 16 - 3 - 1
_v_mac_f32 v[vgprValuC+76], v152, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+77], v153, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+78], v154, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+79], v155, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[76:79], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:768 // store D

s_waitcnt vmcnt(11)                                // wait C (interleaved) 11 = 16 - 4 - 1
_v_mac_f32 v[vgprValuC+80], v156, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+81], v157, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+82], v158, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+83], v159, s[sgprBeta]      // finalSum = sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[80:83], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(10)                                // wait C (interleaved) 10 = 16 - 5 - 1
_v_mac_f32 v[vgprValuC+84], v160, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+85], v161, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+86], v162, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+87], v163, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[84:87], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D

s_waitcnt vmcnt(9)                                 // wait C (interleaved) 9 = 16 - 6 - 1
_v_mac_f32 v[vgprValuC+88], v164, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+89], v165, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+90], v166, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+91], v167, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[88:91], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:512 // store D

s_waitcnt vmcnt(8)                                 // wait C (interleaved) 8 = 16 - 7 - 1
_v_mac_f32 v[vgprValuC+92], v168, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+93], v169, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+94], v170, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+95], v171, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[92:95], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:768 // store D

s_waitcnt vmcnt(7)                                 // wait C (interleaved) 7 = 16 - 8 - 1
_v_mac_f32 v[vgprValuC+96], v172, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+97], v173, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+98], v174, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+99], v175, s[sgprBeta]      // finalSum = sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[96:99], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(6)                                 // wait C (interleaved) 6 = 16 - 9 - 1
_v_mac_f32 v[vgprValuC+100], v176, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+101], v177, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+102], v178, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+103], v179, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[100:103], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D

s_waitcnt vmcnt(5)                                 // wait C (interleaved) 5 = 16 - 10 - 1
_v_mac_f32 v[vgprValuC+104], v180, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+105], v181, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+106], v182, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+107], v183, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[104:107], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:512 // store D

s_waitcnt vmcnt(4)                                 // wait C (interleaved) 4 = 16 - 11 - 1
_v_mac_f32 v[vgprValuC+108], v184, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+109], v185, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+110], v186, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+111], v187, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[108:111], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:768 // store D

s_waitcnt vmcnt(3)                                 // wait C (interleaved) 3 = 16 - 12 - 1
_v_mac_f32 v[vgprValuC+112], v188, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+113], v189, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+114], v190, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+115], v191, s[sgprBeta]     // finalSum = sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[112:115], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(2)                                 // wait C (interleaved) 2 = 16 - 13 - 1
_v_mac_f32 v[vgprValuC+116], v192, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+117], v193, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+118], v194, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+119], v195, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[116:119], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D

s_waitcnt vmcnt(1)                                 // wait C (interleaved) 1 = 16 - 14 - 1
_v_mac_f32 v[vgprValuC+120], v196, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+121], v197, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+122], v198, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+123], v199, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[120:123], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:512 // store D

s_waitcnt vmcnt(0)                                 // wait C (interleaved) 0 = 16 - 15 - 1
_v_mac_f32 v[vgprValuC+124], v200, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+125], v201, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+126], v202, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+127], v203, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[124:127], v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:768 // store D
s_branch label_GW_End_74                           // jump to end
GW_B1_E1_73:

/* edge=1, allocate 3 sgpr. perBatchTmpS=2 perBatchMaskS=1 perElementMaskS=0 elementsPerBatch=35 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,0,0,1:vw1); (0,0,0,2:vw1); (0,0,0,3:vw1); (0,1,0,0:vw1); (0,1,0,1:vw1); (0,1,0,2:vw1); (0,1,0,3:vw1); (0,2,0,0:vw1); (0,2,0,1:vw1); (0,2,0,2:vw1); (0,2,0,3:vw1); (0,3,0,0:vw1); (0,3,0,1:vw1); (0,3,0,2:vw1); (0,3,0,3:vw1); (0,0,1,0:vw1); (0,0,1,1:vw1); (0,0,1,2:vw1); (0,0,1,3:vw1); (0,1,1,0:vw1); (0,1,1,1:vw1); (0,1,1,2:vw1); (0,1,1,3:vw1); (0,2,1,0:vw1); (0,2,1,1:vw1); (0,2,1,2:vw1); (0,2,1,3:vw1); (0,3,1,0:vw1); (0,3,1,1:vw1); (0,3,1,2:vw1); (0,3,1,3:vw1); (0,0,2,0:vw1); (0,0,2,1:vw1); (0,0,2,2:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s54, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v136, v132, v130, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v136, -1, v136, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v137, v136, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v136, v133, v130, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v136, -1, v136, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v138, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v138, -1, v138, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v139, v138, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v138, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v138, -1, v138, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,2) */
_v_add_co_u32 v134, vcc_lo, v130, 2                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v140, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v140, -1, v140, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v141, v140, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v140, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v140, -1, v140, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,3) */
_v_add_co_u32 v134, vcc_lo, v130, 3                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v142, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v142, -1, v142, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v143, v142, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v142, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v142, -1, v142, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v144, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v144, -1, v144, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v145, v144, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v144, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v144, -1, v144, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v146, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v146, -1, v146, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v147, v146, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v146, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v146, -1, v146, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v148, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v148, -1, v148, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v149, v148, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v148, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v148, -1, v148, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v150, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v150, -1, v150, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v151, v150, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v150, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v150, -1, v150, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,2,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=2 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v152, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v152, -1, v152, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v153, v152, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v152, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v152, -1, v152, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,2,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=2 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v154, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v154, -1, v154, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v155, v154, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v154, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v154, -1, v154, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,2,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=2 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v156, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v156, -1, v156, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v157, v156, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v156, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v156, -1, v156, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,2,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=2 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v158, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v158, -1, v158, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v159, v158, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v158, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v158, -1, v158, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,3,0) */
s_mov_b32 s54, 192                                 // coordOffset0 d0=3 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v160, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v160, -1, v160, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v161, v160, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v160, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v160, -1, v160, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,3,1) */
s_mov_b32 s54, 193                                 // coordOffset0 d0=3 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v162, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v162, -1, v162, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v163, v162, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v162, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v162, -1, v162, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,3,2) */
s_mov_b32 s54, 194                                 // coordOffset0 d0=3 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v164, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v164, -1, v164, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v165, v164, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v164, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v164, -1, v164, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,3,3) */
s_mov_b32 s54, 195                                 // coordOffset0 d0=3 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v166, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v166, -1, v166, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v167, v166, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v166, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v166, -1, v166, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v168, v132, v130, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v168, -1, v168, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v169, v168, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v168, v133, v130, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v168, -1, v168, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v170, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v170, -1, v170, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v171, v170, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v170, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v170, -1, v170, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,2) */
_v_add_co_u32 v134, vcc_lo, v130, 2                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v172, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v172, -1, v172, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v173, v172, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v172, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v172, -1, v172, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,3) */
_v_add_co_u32 v134, vcc_lo, v130, 3                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v174, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v174, -1, v174, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v175, v174, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v174, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v174, -1, v174, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v176, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v176, -1, v176, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v177, v176, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v176, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v176, -1, v176, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v178, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v178, -1, v178, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v179, v178, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v178, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v178, -1, v178, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v180, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v180, -1, v180, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v181, v180, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v180, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v180, -1, v180, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v182, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v182, -1, v182, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v183, v182, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v182, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v182, -1, v182, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,2,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=2 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v184, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v184, -1, v184, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v185, v184, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v184, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v184, -1, v184, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,2,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=2 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v186, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v186, -1, v186, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v187, v186, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v186, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v186, -1, v186, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,2,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=2 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v188, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v188, -1, v188, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v189, v188, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v188, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v188, -1, v188, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,2,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=2 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v190, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v190, -1, v190, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v191, v190, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v190, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v190, -1, v190, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,3,0) */
s_mov_b32 s54, 192                                 // coordOffset0 d0=3 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v192, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v192, -1, v192, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v193, v192, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v192, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v192, -1, v192, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,3,1) */
s_mov_b32 s54, 193                                 // coordOffset0 d0=3 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v194, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v194, -1, v194, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v195, v194, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v194, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v194, -1, v194, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,3,2) */
s_mov_b32 s54, 194                                 // coordOffset0 d0=3 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v196, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v196, -1, v196, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v197, v196, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v196, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v196, -1, v196, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,3,3) */
s_mov_b32 s54, 195                                 // coordOffset0 d0=3 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v198, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v198, -1, v198, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v199, v198, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v198, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v198, -1, v198, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v200, v132, v130, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v200, -1, v200, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v201, v200, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v200, v133, v130, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v200, -1, v200, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v202, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v202, -1, v202, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v203, v202, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v202, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v202, -1, v202, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,2) */
_v_add_co_u32 v134, vcc_lo, v130, 2                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v204, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v204, -1, v204, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v205, v204, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v204, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v204, -1, v204, s56                  // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 0, 1), (0, 0, 0, 2), (0, 0, 0, 3), (0, 1, 0, 0), (0, 1, 0, 1), (0, 1, 0, 2), (0, 1, 0, 3), (0, 2, 0, 0), (0, 2, 0, 1), (0, 2, 0, 2), (0, 2, 0, 3), (0, 3, 0, 0), (0, 3, 0, 1), (0, 3, 0, 2), (0, 3, 0, 3), (0, 0, 1, 0), (0, 0, 1, 1), (0, 0, 1, 2), (0, 0, 1, 3), (0, 1, 1, 0), (0, 1, 1, 1), (0, 1, 1, 2), (0, 1, 1, 3), (0, 2, 1, 0), (0, 2, 1, 1), (0, 2, 1, 2), (0, 2, 1, 3), (0, 3, 1, 0), (0, 3, 1, 1), (0, 3, 1, 2), (0, 3, 1, 3), (0, 0, 2, 0), (0, 0, 2, 1), (0, 0, 2, 2)] */
v_mul_f32 v[vgprValuC+0], s[sgprAlpha], v[vgprValuC+0] // *= alpha
v_mul_f32 v[vgprValuC+1], s[sgprAlpha], v[vgprValuC+1] // *= alpha
v_mul_f32 v[vgprValuC+2], s[sgprAlpha], v[vgprValuC+2] // *= alpha
v_mul_f32 v[vgprValuC+3], s[sgprAlpha], v[vgprValuC+3] // *= alpha
v_mul_f32 v[vgprValuC+4], s[sgprAlpha], v[vgprValuC+4] // *= alpha
v_mul_f32 v[vgprValuC+5], s[sgprAlpha], v[vgprValuC+5] // *= alpha
v_mul_f32 v[vgprValuC+6], s[sgprAlpha], v[vgprValuC+6] // *= alpha
v_mul_f32 v[vgprValuC+7], s[sgprAlpha], v[vgprValuC+7] // *= alpha
v_mul_f32 v[vgprValuC+8], s[sgprAlpha], v[vgprValuC+8] // *= alpha
v_mul_f32 v[vgprValuC+9], s[sgprAlpha], v[vgprValuC+9] // *= alpha
v_mul_f32 v[vgprValuC+10], s[sgprAlpha], v[vgprValuC+10] // *= alpha
v_mul_f32 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha
v_mul_f32 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_mul_f32 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha
v_mul_f32 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha
v_mul_f32 v[vgprValuC+16], s[sgprAlpha], v[vgprValuC+16] // *= alpha
v_mul_f32 v[vgprValuC+17], s[sgprAlpha], v[vgprValuC+17] // *= alpha
v_mul_f32 v[vgprValuC+18], s[sgprAlpha], v[vgprValuC+18] // *= alpha
v_mul_f32 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+19] // *= alpha
v_mul_f32 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+20] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha
v_mul_f32 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+23] // *= alpha
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha
v_mul_f32 v[vgprValuC+34], s[sgprAlpha], v[vgprValuC+34] // *= alpha
s_waitcnt vmcnt(0)                                 // wait C
s_waitcnt_vscnt null, 0                            // writes

/* apply mask, calc new C and issue writes */
_v_mac_f32 v[vgprValuC+0], v137, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v0, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+1], v139, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v1, v138, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+2], v141, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v2, v140, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+3], v143, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v3, v142, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+4], v145, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v4, v144, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+5], v147, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v5, v146, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+6], v149, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v6, v148, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+7], v151, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v7, v150, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+8], v153, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v8, v152, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+9], v155, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v9, v154, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+10], v157, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v10, v156, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+11], v159, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v11, v158, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+12], v161, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v12, v160, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+13], v163, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v13, v162, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+14], v165, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v14, v164, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+15], v167, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v15, v166, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+16], v169, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v16, v168, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+17], v171, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v17, v170, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+18], v173, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v18, v172, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+19], v175, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v19, v174, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+20], v177, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v20, v176, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+21], v179, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v21, v178, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+22], v181, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v22, v180, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+23], v183, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v23, v182, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+24], v185, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v24, v184, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+25], v187, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v25, v186, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+26], v189, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v26, v188, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+27], v191, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v27, v190, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+28], v193, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v28, v192, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+29], v195, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v29, v194, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+30], v197, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v30, v196, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+31], v199, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v31, v198, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+32], v201, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v32, v200, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+33], v203, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v33, v202, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+34], v205, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v34, v204, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #1 (d1,d0,vc1,vc0) = */
/*    (0,0,2,3:vw1); (0,1,2,0:vw1); (0,1,2,1:vw1); (0,1,2,2:vw1); (0,1,2,3:vw1); (0,2,2,0:vw1); (0,2,2,1:vw1); (0,2,2,2:vw1); (0,2,2,3:vw1); (0,3,2,0:vw1); (0,3,2,1:vw1); (0,3,2,2:vw1); (0,3,2,3:vw1); (0,0,3,0:vw1); (0,0,3,1:vw1); (0,0,3,2:vw1); (0,0,3,3:vw1); (0,1,3,0:vw1); (0,1,3,1:vw1); (0,1,3,2:vw1); (0,1,3,3:vw1); (0,2,3,0:vw1); (0,2,3,1:vw1); (0,2,3,2:vw1); (0,2,3,3:vw1); (0,3,3,0:vw1); (0,3,3,1:vw1); (0,3,3,2:vw1); (0,3,3,3:vw1); (1,0,0,0:vw1); (1,0,0,1:vw1); (1,0,0,2:vw1); (1,0,0,3:vw1); (1,1,0,0:vw1); (1,1,0,1:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,2,0,3) */
_v_add_co_u32 v134, vcc_lo, v130, 3                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v136, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v136, -1, v136, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v137, v136, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v136, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v136, -1, v136, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v138, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v138, -1, v138, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v139, v138, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v138, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v138, -1, v138, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v140, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v140, -1, v140, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v141, v140, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v140, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v140, -1, v140, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v142, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v142, -1, v142, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v143, v142, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v142, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v142, -1, v142, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v144, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v144, -1, v144, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v145, v144, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v144, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v144, -1, v144, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,2,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=2 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v146, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v146, -1, v146, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v147, v146, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v146, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v146, -1, v146, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,2,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=2 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v148, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v148, -1, v148, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v149, v148, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v148, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v148, -1, v148, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,2,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=2 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v150, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v150, -1, v150, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v151, v150, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v150, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v150, -1, v150, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,2,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=2 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v152, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v152, -1, v152, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v153, v152, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v152, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v152, -1, v152, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,3,0) */
s_mov_b32 s54, 192                                 // coordOffset0 d0=3 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v154, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v154, -1, v154, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v155, v154, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v154, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v154, -1, v154, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,3,1) */
s_mov_b32 s54, 193                                 // coordOffset0 d0=3 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v156, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v156, -1, v156, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v157, v156, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v156, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v156, -1, v156, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,3,2) */
s_mov_b32 s54, 194                                 // coordOffset0 d0=3 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v158, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v158, -1, v158, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v159, v158, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v158, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v158, -1, v158, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,3,3) */
s_mov_b32 s54, 195                                 // coordOffset0 d0=3 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v160, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v160, -1, v160, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v161, v160, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v160, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v160, -1, v160, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v162, v132, v130, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v162, -1, v162, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v163, v162, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v162, v133, v130, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v162, -1, v162, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v164, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v164, -1, v164, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v165, v164, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v164, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v164, -1, v164, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,2) */
_v_add_co_u32 v134, vcc_lo, v130, 2                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v166, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v166, -1, v166, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v167, v166, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v166, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v166, -1, v166, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,3) */
_v_add_co_u32 v134, vcc_lo, v130, 3                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v168, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v168, -1, v168, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v169, v168, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v168, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v168, -1, v168, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v170, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v170, -1, v170, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v171, v170, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v170, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v170, -1, v170, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v172, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v172, -1, v172, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v173, v172, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v172, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v172, -1, v172, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v174, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v174, -1, v174, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v175, v174, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v174, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v174, -1, v174, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v176, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v176, -1, v176, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v177, v176, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v176, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v176, -1, v176, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,2,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=2 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v178, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v178, -1, v178, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v179, v178, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v178, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v178, -1, v178, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,2,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=2 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v180, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v180, -1, v180, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v181, v180, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v180, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v180, -1, v180, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,2,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=2 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v182, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v182, -1, v182, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v183, v182, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v182, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v182, -1, v182, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,2,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=2 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v184, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v184, -1, v184, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v185, v184, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v184, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v184, -1, v184, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,3,0) */
s_mov_b32 s54, 192                                 // coordOffset0 d0=3 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v186, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v186, -1, v186, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v187, v186, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v186, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v186, -1, v186, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,3,1) */
s_mov_b32 s54, 193                                 // coordOffset0 d0=3 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v188, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v188, -1, v188, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v189, v188, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v188, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v188, -1, v188, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,3,2) */
s_mov_b32 s54, 194                                 // coordOffset0 d0=3 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v190, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v190, -1, v190, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v191, v190, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v190, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v190, -1, v190, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,3,3) */
s_mov_b32 s54, 195                                 // coordOffset0 d0=3 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v192, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v192, -1, v192, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v193, v192, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v192, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v192, -1, v192, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 29               // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s54, s[sgprStrideC1J], 29                // scale stride
_v_add_u32 v132, v132, s54                         // ROWINC- Move cinRowPtr to next row
s_mul_i32 s54, s[sgprStrideD1J], 29                // scale stride
_v_add_u32 v133, v133, s54                         // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v194, v132, v130, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v194, -1, v194, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v195, v194, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v194, v133, v130, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v194, -1, v194, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v196, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v196, -1, v196, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v197, v196, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v196, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v196, -1, v196, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,2) */
_v_add_co_u32 v134, vcc_lo, v130, 2                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v198, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v198, -1, v198, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v199, v198, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v198, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v198, -1, v198, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,3) */
_v_add_co_u32 v134, vcc_lo, v130, 3                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v200, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v200, -1, v200, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v201, v200, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v200, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v200, -1, v200, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v202, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v202, -1, v202, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v203, v202, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v202, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v202, -1, v202, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v204, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v204, -1, v204, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v205, v204, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v204, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v204, -1, v204, s56                  // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 2, 3), (0, 1, 2, 0), (0, 1, 2, 1), (0, 1, 2, 2), (0, 1, 2, 3), (0, 2, 2, 0), (0, 2, 2, 1), (0, 2, 2, 2), (0, 2, 2, 3), (0, 3, 2, 0), (0, 3, 2, 1), (0, 3, 2, 2), (0, 3, 2, 3), (0, 0, 3, 0), (0, 0, 3, 1), (0, 0, 3, 2), (0, 0, 3, 3), (0, 1, 3, 0), (0, 1, 3, 1), (0, 1, 3, 2), (0, 1, 3, 3), (0, 2, 3, 0), (0, 2, 3, 1), (0, 2, 3, 2), (0, 2, 3, 3), (0, 3, 3, 0), (0, 3, 3, 1), (0, 3, 3, 2), (0, 3, 3, 3), (1, 0, 0, 0), (1, 0, 0, 1), (1, 0, 0, 2), (1, 0, 0, 3), (1, 1, 0, 0), (1, 1, 0, 1)] */
v_mul_f32 v[vgprValuC+35], s[sgprAlpha], v[vgprValuC+35] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha
v_mul_f32 v[vgprValuC+41], s[sgprAlpha], v[vgprValuC+41] // *= alpha
v_mul_f32 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha
v_mul_f32 v[vgprValuC+43], s[sgprAlpha], v[vgprValuC+43] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+52], s[sgprAlpha], v[vgprValuC+52] // *= alpha
v_mul_f32 v[vgprValuC+53], s[sgprAlpha], v[vgprValuC+53] // *= alpha
v_mul_f32 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha
v_mul_f32 v[vgprValuC+55], s[sgprAlpha], v[vgprValuC+55] // *= alpha
v_mul_f32 v[vgprValuC+56], s[sgprAlpha], v[vgprValuC+56] // *= alpha
v_mul_f32 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha
v_mul_f32 v[vgprValuC+58], s[sgprAlpha], v[vgprValuC+58] // *= alpha
v_mul_f32 v[vgprValuC+59], s[sgprAlpha], v[vgprValuC+59] // *= alpha
v_mul_f32 v[vgprValuC+60], s[sgprAlpha], v[vgprValuC+60] // *= alpha
v_mul_f32 v[vgprValuC+61], s[sgprAlpha], v[vgprValuC+61] // *= alpha
v_mul_f32 v[vgprValuC+62], s[sgprAlpha], v[vgprValuC+62] // *= alpha
v_mul_f32 v[vgprValuC+63], s[sgprAlpha], v[vgprValuC+63] // *= alpha
v_mul_f32 v[vgprValuC+64], s[sgprAlpha], v[vgprValuC+64] // *= alpha
v_mul_f32 v[vgprValuC+65], s[sgprAlpha], v[vgprValuC+65] // *= alpha
v_mul_f32 v[vgprValuC+66], s[sgprAlpha], v[vgprValuC+66] // *= alpha
v_mul_f32 v[vgprValuC+67], s[sgprAlpha], v[vgprValuC+67] // *= alpha
v_mul_f32 v[vgprValuC+68], s[sgprAlpha], v[vgprValuC+68] // *= alpha
v_mul_f32 v[vgprValuC+69], s[sgprAlpha], v[vgprValuC+69] // *= alpha
s_waitcnt vmcnt(0)                                 // wait C
s_waitcnt_vscnt null, 0                            // writes

/* apply mask, calc new C and issue writes */
_v_mac_f32 v[vgprValuC+35], v137, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v35, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+36], v139, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v36, v138, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+37], v141, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v37, v140, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+38], v143, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v38, v142, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+39], v145, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v39, v144, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+40], v147, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v40, v146, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+41], v149, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v41, v148, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+42], v151, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v42, v150, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+43], v153, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v43, v152, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+44], v155, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v44, v154, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+45], v157, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v45, v156, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+46], v159, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v46, v158, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+47], v161, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v47, v160, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+48], v163, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v48, v162, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+49], v165, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v49, v164, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+50], v167, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v50, v166, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+51], v169, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v51, v168, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+52], v171, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v52, v170, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+53], v173, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v53, v172, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+54], v175, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v54, v174, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+55], v177, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v55, v176, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+56], v179, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v56, v178, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+57], v181, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v57, v180, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+58], v183, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v58, v182, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+59], v185, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v59, v184, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+60], v187, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v60, v186, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+61], v189, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v61, v188, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+62], v191, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v62, v190, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+63], v193, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v63, v192, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+64], v195, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v64, v194, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+65], v197, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v65, v196, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+66], v199, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v66, v198, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+67], v201, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v67, v200, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+68], v203, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v68, v202, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+69], v205, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v69, v204, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #2 (d1,d0,vc1,vc0) = */
/*    (1,1,0,2:vw1); (1,1,0,3:vw1); (1,2,0,0:vw1); (1,2,0,1:vw1); (1,2,0,2:vw1); (1,2,0,3:vw1); (1,3,0,0:vw1); (1,3,0,1:vw1); (1,3,0,2:vw1); (1,3,0,3:vw1); (1,0,1,0:vw1); (1,0,1,1:vw1); (1,0,1,2:vw1); (1,0,1,3:vw1); (1,1,1,0:vw1); (1,1,1,1:vw1); (1,1,1,2:vw1); (1,1,1,3:vw1); (1,2,1,0:vw1); (1,2,1,1:vw1); (1,2,1,2:vw1); (1,2,1,3:vw1); (1,3,1,0:vw1); (1,3,1,1:vw1); (1,3,1,2:vw1); (1,3,1,3:vw1); (1,0,2,0:vw1); (1,0,2,1:vw1); (1,0,2,2:vw1); (1,0,2,3:vw1); (1,1,2,0:vw1); (1,1,2,1:vw1); (1,1,2,2:vw1); (1,1,2,3:vw1); (1,2,2,0:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(1,0,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v136, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v136, -1, v136, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v137, v136, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v136, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v136, -1, v136, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v138, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v138, -1, v138, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v139, v138, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v138, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v138, -1, v138, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,2,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=2 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v140, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v140, -1, v140, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v141, v140, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v140, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v140, -1, v140, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,2,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=2 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v142, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v142, -1, v142, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v143, v142, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v142, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v142, -1, v142, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,2,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=2 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v144, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v144, -1, v144, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v145, v144, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v144, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v144, -1, v144, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,2,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=2 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v146, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v146, -1, v146, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v147, v146, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v146, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v146, -1, v146, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,3,0) */
s_mov_b32 s54, 192                                 // coordOffset0 d0=3 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v148, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v148, -1, v148, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v149, v148, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v148, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v148, -1, v148, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,3,1) */
s_mov_b32 s54, 193                                 // coordOffset0 d0=3 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v150, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v150, -1, v150, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v151, v150, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v150, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v150, -1, v150, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,3,2) */
s_mov_b32 s54, 194                                 // coordOffset0 d0=3 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v152, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v152, -1, v152, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v153, v152, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v152, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v152, -1, v152, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,3,3) */
s_mov_b32 s54, 195                                 // coordOffset0 d0=3 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v154, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v154, -1, v154, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v155, v154, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v154, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v154, -1, v154, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v156, v132, v130, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v156, -1, v156, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v157, v156, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v156, v133, v130, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v156, -1, v156, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v158, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v158, -1, v158, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v159, v158, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v158, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v158, -1, v158, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,0,2) */
_v_add_co_u32 v134, vcc_lo, v130, 2                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v160, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v160, -1, v160, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v161, v160, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v160, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v160, -1, v160, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,0,3) */
_v_add_co_u32 v134, vcc_lo, v130, 3                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v162, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v162, -1, v162, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v163, v162, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v162, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v162, -1, v162, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v164, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v164, -1, v164, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v165, v164, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v164, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v164, -1, v164, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v166, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v166, -1, v166, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v167, v166, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v166, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v166, -1, v166, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v168, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v168, -1, v168, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v169, v168, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v168, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v168, -1, v168, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v170, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v170, -1, v170, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v171, v170, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v170, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v170, -1, v170, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,2,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=2 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v172, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v172, -1, v172, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v173, v172, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v172, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v172, -1, v172, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,2,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=2 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v174, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v174, -1, v174, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v175, v174, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v174, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v174, -1, v174, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,2,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=2 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v176, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v176, -1, v176, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v177, v176, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v176, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v176, -1, v176, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,2,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=2 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v178, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v178, -1, v178, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v179, v178, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v178, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v178, -1, v178, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,3,0) */
s_mov_b32 s54, 192                                 // coordOffset0 d0=3 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v180, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v180, -1, v180, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v181, v180, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v180, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v180, -1, v180, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,3,1) */
s_mov_b32 s54, 193                                 // coordOffset0 d0=3 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v182, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v182, -1, v182, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v183, v182, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v182, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v182, -1, v182, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,3,2) */
s_mov_b32 s54, 194                                 // coordOffset0 d0=3 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v184, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v184, -1, v184, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v185, v184, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v184, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v184, -1, v184, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,3,3) */
s_mov_b32 s54, 195                                 // coordOffset0 d0=3 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v186, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v186, -1, v186, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v187, v186, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v186, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v186, -1, v186, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v188, v132, v130, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v188, -1, v188, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v189, v188, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v188, v133, v130, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v188, -1, v188, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v190, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v190, -1, v190, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v191, v190, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v190, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v190, -1, v190, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,0,2) */
_v_add_co_u32 v134, vcc_lo, v130, 2                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v192, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v192, -1, v192, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v193, v192, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v192, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v192, -1, v192, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,0,3) */
_v_add_co_u32 v134, vcc_lo, v130, 3                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v194, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v194, -1, v194, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v195, v194, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v194, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v194, -1, v194, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v196, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v196, -1, v196, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v197, v196, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v196, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v196, -1, v196, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v198, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v198, -1, v198, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v199, v198, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v198, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v198, -1, v198, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v200, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v200, -1, v200, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v201, v200, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v200, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v200, -1, v200, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v202, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v202, -1, v202, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v203, v202, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v202, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v202, -1, v202, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,2,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=2 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v204, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v204, -1, v204, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v205, v204, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v204, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v204, -1, v204, s56                  // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(1, 1, 0, 2), (1, 1, 0, 3), (1, 2, 0, 0), (1, 2, 0, 1), (1, 2, 0, 2), (1, 2, 0, 3), (1, 3, 0, 0), (1, 3, 0, 1), (1, 3, 0, 2), (1, 3, 0, 3), (1, 0, 1, 0), (1, 0, 1, 1), (1, 0, 1, 2), (1, 0, 1, 3), (1, 1, 1, 0), (1, 1, 1, 1), (1, 1, 1, 2), (1, 1, 1, 3), (1, 2, 1, 0), (1, 2, 1, 1), (1, 2, 1, 2), (1, 2, 1, 3), (1, 3, 1, 0), (1, 3, 1, 1), (1, 3, 1, 2), (1, 3, 1, 3), (1, 0, 2, 0), (1, 0, 2, 1), (1, 0, 2, 2), (1, 0, 2, 3), (1, 1, 2, 0), (1, 1, 2, 1), (1, 1, 2, 2), (1, 1, 2, 3), (1, 2, 2, 0)] */
v_mul_f32 v[vgprValuC+70], s[sgprAlpha], v[vgprValuC+70] // *= alpha
v_mul_f32 v[vgprValuC+71], s[sgprAlpha], v[vgprValuC+71] // *= alpha
v_mul_f32 v[vgprValuC+72], s[sgprAlpha], v[vgprValuC+72] // *= alpha
v_mul_f32 v[vgprValuC+73], s[sgprAlpha], v[vgprValuC+73] // *= alpha
v_mul_f32 v[vgprValuC+74], s[sgprAlpha], v[vgprValuC+74] // *= alpha
v_mul_f32 v[vgprValuC+75], s[sgprAlpha], v[vgprValuC+75] // *= alpha
v_mul_f32 v[vgprValuC+76], s[sgprAlpha], v[vgprValuC+76] // *= alpha
v_mul_f32 v[vgprValuC+77], s[sgprAlpha], v[vgprValuC+77] // *= alpha
v_mul_f32 v[vgprValuC+78], s[sgprAlpha], v[vgprValuC+78] // *= alpha
v_mul_f32 v[vgprValuC+79], s[sgprAlpha], v[vgprValuC+79] // *= alpha
v_mul_f32 v[vgprValuC+80], s[sgprAlpha], v[vgprValuC+80] // *= alpha
v_mul_f32 v[vgprValuC+81], s[sgprAlpha], v[vgprValuC+81] // *= alpha
v_mul_f32 v[vgprValuC+82], s[sgprAlpha], v[vgprValuC+82] // *= alpha
v_mul_f32 v[vgprValuC+83], s[sgprAlpha], v[vgprValuC+83] // *= alpha
v_mul_f32 v[vgprValuC+84], s[sgprAlpha], v[vgprValuC+84] // *= alpha
v_mul_f32 v[vgprValuC+85], s[sgprAlpha], v[vgprValuC+85] // *= alpha
v_mul_f32 v[vgprValuC+86], s[sgprAlpha], v[vgprValuC+86] // *= alpha
v_mul_f32 v[vgprValuC+87], s[sgprAlpha], v[vgprValuC+87] // *= alpha
v_mul_f32 v[vgprValuC+88], s[sgprAlpha], v[vgprValuC+88] // *= alpha
v_mul_f32 v[vgprValuC+89], s[sgprAlpha], v[vgprValuC+89] // *= alpha
v_mul_f32 v[vgprValuC+90], s[sgprAlpha], v[vgprValuC+90] // *= alpha
v_mul_f32 v[vgprValuC+91], s[sgprAlpha], v[vgprValuC+91] // *= alpha
v_mul_f32 v[vgprValuC+92], s[sgprAlpha], v[vgprValuC+92] // *= alpha
v_mul_f32 v[vgprValuC+93], s[sgprAlpha], v[vgprValuC+93] // *= alpha
v_mul_f32 v[vgprValuC+94], s[sgprAlpha], v[vgprValuC+94] // *= alpha
v_mul_f32 v[vgprValuC+95], s[sgprAlpha], v[vgprValuC+95] // *= alpha
v_mul_f32 v[vgprValuC+96], s[sgprAlpha], v[vgprValuC+96] // *= alpha
v_mul_f32 v[vgprValuC+97], s[sgprAlpha], v[vgprValuC+97] // *= alpha
v_mul_f32 v[vgprValuC+98], s[sgprAlpha], v[vgprValuC+98] // *= alpha
v_mul_f32 v[vgprValuC+99], s[sgprAlpha], v[vgprValuC+99] // *= alpha
v_mul_f32 v[vgprValuC+100], s[sgprAlpha], v[vgprValuC+100] // *= alpha
v_mul_f32 v[vgprValuC+101], s[sgprAlpha], v[vgprValuC+101] // *= alpha
v_mul_f32 v[vgprValuC+102], s[sgprAlpha], v[vgprValuC+102] // *= alpha
v_mul_f32 v[vgprValuC+103], s[sgprAlpha], v[vgprValuC+103] // *= alpha
v_mul_f32 v[vgprValuC+104], s[sgprAlpha], v[vgprValuC+104] // *= alpha
s_waitcnt vmcnt(0)                                 // wait C
s_waitcnt_vscnt null, 0                            // writes

/* apply mask, calc new C and issue writes */
_v_mac_f32 v[vgprValuC+70], v137, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v70, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+71], v139, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v71, v138, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+72], v141, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v72, v140, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+73], v143, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v73, v142, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+74], v145, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v74, v144, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+75], v147, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v75, v146, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+76], v149, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v76, v148, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+77], v151, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v77, v150, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+78], v153, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v78, v152, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+79], v155, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v79, v154, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+80], v157, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v80, v156, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+81], v159, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v81, v158, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+82], v161, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v82, v160, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+83], v163, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v83, v162, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+84], v165, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v84, v164, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+85], v167, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v85, v166, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+86], v169, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v86, v168, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+87], v171, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v87, v170, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+88], v173, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v88, v172, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+89], v175, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v89, v174, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+90], v177, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v90, v176, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+91], v179, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v91, v178, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+92], v181, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v92, v180, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+93], v183, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v93, v182, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+94], v185, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v94, v184, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+95], v187, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v95, v186, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+96], v189, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v96, v188, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+97], v191, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v97, v190, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+98], v193, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v98, v192, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+99], v195, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v99, v194, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+100], v197, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v100, v196, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+101], v199, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v101, v198, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+102], v201, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v102, v200, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+103], v203, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v103, v202, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+104], v205, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v104, v204, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #3 (d1,d0,vc1,vc0) = */
/*    (1,2,2,1:vw1); (1,2,2,2:vw1); (1,2,2,3:vw1); (1,3,2,0:vw1); (1,3,2,1:vw1); (1,3,2,2:vw1); (1,3,2,3:vw1); (1,0,3,0:vw1); (1,0,3,1:vw1); (1,0,3,2:vw1); (1,0,3,3:vw1); (1,1,3,0:vw1); (1,1,3,1:vw1); (1,1,3,2:vw1); (1,1,3,3:vw1); (1,2,3,0:vw1); (1,2,3,1:vw1); (1,2,3,2:vw1); (1,2,3,3:vw1); (1,3,3,0:vw1); (1,3,3,1:vw1); (1,3,3,2:vw1); (1,3,3,3:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(1,2,2,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=2 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v136, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v136, -1, v136, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v137, v136, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v136, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v136, -1, v136, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,2,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=2 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v138, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v138, -1, v138, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v139, v138, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v138, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v138, -1, v138, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,2,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=2 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v140, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v140, -1, v140, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v141, v140, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v140, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v140, -1, v140, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,3,0) */
s_mov_b32 s54, 192                                 // coordOffset0 d0=3 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v142, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v142, -1, v142, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v143, v142, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v142, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v142, -1, v142, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,3,1) */
s_mov_b32 s54, 193                                 // coordOffset0 d0=3 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v144, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v144, -1, v144, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v145, v144, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v144, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v144, -1, v144, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,3,2) */
s_mov_b32 s54, 194                                 // coordOffset0 d0=3 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v146, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v146, -1, v146, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v147, v146, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v146, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v146, -1, v146, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,3,3) */
s_mov_b32 s54, 195                                 // coordOffset0 d0=3 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v148, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v148, -1, v148, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v149, v148, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v148, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v148, -1, v148, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,0,0) */
_v_add_co_u32 v131, vcc_lo, v131, 1                // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v132, v132, s[sgprStrideC1J]            // ROWINC- Move cinRowPtr to next row
_v_add_u32 v133, v133, s[sgprStrideD1J]            // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v130, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v150, v132, v130, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v150, -1, v150, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v151, v150, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v150, v133, v130, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v150, -1, v150, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,0,1) */
_v_add_co_u32 v134, vcc_lo, v130, 1                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v152, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v152, -1, v152, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v153, v152, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v152, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v152, -1, v152, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,0,2) */
_v_add_co_u32 v134, vcc_lo, v130, 2                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v154, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v154, -1, v154, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v155, v154, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v154, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v154, -1, v154, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,0,3) */
_v_add_co_u32 v134, vcc_lo, v130, 3                // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v156, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v156, -1, v156, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v157, v156, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v156, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v156, -1, v156, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,1,0) */
_v_add_co_u32 v134, vcc_lo, v130, 64               // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v158, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v158, -1, v158, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v159, v158, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v158, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v158, -1, v158, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v160, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v160, -1, v160, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v161, v160, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v160, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v160, -1, v160, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v162, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v162, -1, v162, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v163, v162, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v162, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v162, -1, v162, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v164, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v164, -1, v164, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v165, v164, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v164, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v164, -1, v164, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,2,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=2 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v166, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v166, -1, v166, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v167, v166, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v166, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v166, -1, v166, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,2,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=2 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v168, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v168, -1, v168, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v169, v168, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v168, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v168, -1, v168, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,2,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=2 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v170, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v170, -1, v170, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v171, v170, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v170, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v170, -1, v170, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,2,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=2 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v172, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v172, -1, v172, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v173, v172, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v172, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v172, -1, v172, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,3,0) */
s_mov_b32 s54, 192                                 // coordOffset0 d0=3 vc0=0
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v174, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v174, -1, v174, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v175, v174, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v174, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v174, -1, v174, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,3,1) */
s_mov_b32 s54, 193                                 // coordOffset0 d0=3 vc0=1
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v176, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v176, -1, v176, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v177, v176, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v176, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v176, -1, v176, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,3,2) */
s_mov_b32 s54, 194                                 // coordOffset0 d0=3 vc0=2
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v178, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v178, -1, v178, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v179, v178, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v178, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v178, -1, v178, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,3,3) */
s_mov_b32 s54, 195                                 // coordOffset0 d0=3 vc0=3
_v_add_co_u32 v134, vcc_lo, v130, s54              // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v134, s[sgprSizeI]               // coord0 < size0
v_cmp_lt_u32 s56, v131, s[sgprSizeJ]               // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v180, v132, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v180, -1, v180, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v181, v180, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v180, v133, v134, 0x2              // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v180, -1, v180, s56                  // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(1, 2, 2, 1), (1, 2, 2, 2), (1, 2, 2, 3), (1, 3, 2, 0), (1, 3, 2, 1), (1, 3, 2, 2), (1, 3, 2, 3), (1, 0, 3, 0), (1, 0, 3, 1), (1, 0, 3, 2), (1, 0, 3, 3), (1, 1, 3, 0), (1, 1, 3, 1), (1, 1, 3, 2), (1, 1, 3, 3), (1, 2, 3, 0), (1, 2, 3, 1), (1, 2, 3, 2), (1, 2, 3, 3), (1, 3, 3, 0), (1, 3, 3, 1), (1, 3, 3, 2), (1, 3, 3, 3)] */
v_mul_f32 v[vgprValuC+105], s[sgprAlpha], v[vgprValuC+105] // *= alpha
v_mul_f32 v[vgprValuC+106], s[sgprAlpha], v[vgprValuC+106] // *= alpha
v_mul_f32 v[vgprValuC+107], s[sgprAlpha], v[vgprValuC+107] // *= alpha
v_mul_f32 v[vgprValuC+108], s[sgprAlpha], v[vgprValuC+108] // *= alpha
v_mul_f32 v[vgprValuC+109], s[sgprAlpha], v[vgprValuC+109] // *= alpha
v_mul_f32 v[vgprValuC+110], s[sgprAlpha], v[vgprValuC+110] // *= alpha
v_mul_f32 v[vgprValuC+111], s[sgprAlpha], v[vgprValuC+111] // *= alpha
v_mul_f32 v[vgprValuC+112], s[sgprAlpha], v[vgprValuC+112] // *= alpha
v_mul_f32 v[vgprValuC+113], s[sgprAlpha], v[vgprValuC+113] // *= alpha
v_mul_f32 v[vgprValuC+114], s[sgprAlpha], v[vgprValuC+114] // *= alpha
v_mul_f32 v[vgprValuC+115], s[sgprAlpha], v[vgprValuC+115] // *= alpha
v_mul_f32 v[vgprValuC+116], s[sgprAlpha], v[vgprValuC+116] // *= alpha
v_mul_f32 v[vgprValuC+117], s[sgprAlpha], v[vgprValuC+117] // *= alpha
v_mul_f32 v[vgprValuC+118], s[sgprAlpha], v[vgprValuC+118] // *= alpha
v_mul_f32 v[vgprValuC+119], s[sgprAlpha], v[vgprValuC+119] // *= alpha
v_mul_f32 v[vgprValuC+120], s[sgprAlpha], v[vgprValuC+120] // *= alpha
v_mul_f32 v[vgprValuC+121], s[sgprAlpha], v[vgprValuC+121] // *= alpha
v_mul_f32 v[vgprValuC+122], s[sgprAlpha], v[vgprValuC+122] // *= alpha
v_mul_f32 v[vgprValuC+123], s[sgprAlpha], v[vgprValuC+123] // *= alpha
v_mul_f32 v[vgprValuC+124], s[sgprAlpha], v[vgprValuC+124] // *= alpha
v_mul_f32 v[vgprValuC+125], s[sgprAlpha], v[vgprValuC+125] // *= alpha
v_mul_f32 v[vgprValuC+126], s[sgprAlpha], v[vgprValuC+126] // *= alpha
v_mul_f32 v[vgprValuC+127], s[sgprAlpha], v[vgprValuC+127] // *= alpha
s_waitcnt vmcnt(0)                                 // wait C
s_waitcnt_vscnt null, 0                            // writes

/* apply mask, calc new C and issue writes */
_v_mac_f32 v[vgprValuC+105], v137, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v105, v136, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+106], v139, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v106, v138, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+107], v141, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v107, v140, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+108], v143, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v108, v142, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+109], v145, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v109, v144, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+110], v147, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v110, v146, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+111], v149, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v111, v148, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+112], v151, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v112, v150, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+113], v153, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v113, v152, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+114], v155, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v114, v154, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+115], v157, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v115, v156, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+116], v159, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v116, v158, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+117], v161, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v117, v160, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+118], v163, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v118, v162, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+119], v165, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v119, v164, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+120], v167, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v120, v166, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+121], v169, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v121, v168, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+122], v171, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v122, v170, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+123], v173, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v123, v172, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+124], v175, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v124, v174, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+125], v177, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v125, v176, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+126], v179, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v126, v178, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+127], v181, s[sgprBeta]     // finalSum = sum*alpha + C*beta
_buffer_store_b32 v127, v180, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_branch label_GW_End_74                           // jump to end
label_GW_End_74:

label_0079:  /// KernelEnd
s_endpgm                                           // Kernel End

