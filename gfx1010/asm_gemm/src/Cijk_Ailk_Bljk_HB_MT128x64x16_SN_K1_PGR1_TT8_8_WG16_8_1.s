
/******************************************/
/* Function Prefix                        */
/******************************************/



/******************************************/
/* Begin Kernel                           */
/******************************************/

// Component.Signature.SignatureDefault
.amdgcn_target "amdgcn-amd-amdhsa--gfx1010"
.text
.protected Cijk_Ailk_Bljk_HB_MT128x64x16_SN_K1_PGR1_TT8_8_WG16_8_1
.globl Cijk_Ailk_Bljk_HB_MT128x64x16_SN_K1_PGR1_TT8_8_WG16_8_1
.p2align 8
.type Cijk_Ailk_Bljk_HB_MT128x64x16_SN_K1_PGR1_TT8_8_WG16_8_1,@function
.section .rodata,#alloc
.p2align 6
.amdhsa_kernel Cijk_Ailk_Bljk_HB_MT128x64x16_SN_K1_PGR1_TT8_8_WG16_8_1
  .amdhsa_user_sgpr_kernarg_segment_ptr 1
  .amdhsa_user_sgpr_count 2
  .amdhsa_next_free_vgpr 71 // vgprs
  .amdhsa_next_free_sgpr 63 // sgprs
  .amdhsa_group_segment_fixed_size 14592 // lds bytes
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
/* ThreadTile= 8 x 8 */
/* SubGroup= 16 x 8 */
/* VectorWidth=8 */
/* GlobalLoadVectorWidthA=8, GlobalLoadVectorWidthB=8 */
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
  - .name: Cijk_Ailk_Bljk_HB_MT128x64x16_SN_K1_PGR1_TT8_8_WG16_8_1
    .symbol: 'Cijk_Ailk_Bljk_HB_MT128x64x16_SN_K1_PGR1_TT8_8_WG16_8_1.kd'
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
    .group_segment_fixed_size:   14592
    .kernarg_segment_align:      8
    .kernarg_segment_size:       128
    .max_flat_workgroup_size:    128
    .private_segment_fixed_size: 0
    .sgpr_count:                 63
    .sgpr_spill_count:           0
    .vgpr_count:                 71
    .vgpr_spill_count:           0
    .wavefront_size:             32
...
.end_amdgpu_metadata
Cijk_Ailk_Bljk_HB_MT128x64x16_SN_K1_PGR1_TT8_8_WG16_8_1:

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
/* ValuC range: [0-32),  */
.set vgprValuC, 0
/* ValuA/B   Xn=PLR buffer idx,  In=InnerUnroll idx */
.set vgprValuA_X0_I0, 34
.set vgprValuA_X1_I0, 38
.set vgprG2LA, 56
.set vgprValuB_X0_I0, 43
.set vgprValuB_X1_I0, 47
.set vgprG2LB, 64
.set vgprLocalWriteAddrA, 51
.set vgprLocalWriteAddrB, 52
.set vgprGlobalReadOffsetA, 53
.set vgprGlobalReadOffsetB, 55
.set vgprLocalReadAddrA, 68
.set vgprLocalReadAddrB, 69
.set vgprSerial, 70
/* Num VGPR=71 */
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
.set constStrideBL, 1
.set sgprStrideB1J, sgprStridesB+0
.set sgprStrideBK, sgprStridesB+1

.set MT0, 128
.set MT1, 64
.set DepthU, 16
.set GSU, 1
.set BpeA, 2
.set BpeALog2, 1
.set BpeB, 2
.set BpeBLog2, 1
/* Number of elements to shift-left SRD */
.set SrdShiftLeftA, 8
.set SrdShiftLeftB, 8
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
_v_add_u32 v[\vgprAddr+0], 0x8, v[\vgprAddr+0]     // add prepad for pointer shift
v_lshlrev_b32 v[\vgprAddr+0], 0x1, v[\vgprAddr+0]  // offset *= bytes/element
.endm

/* Global Offset B */
.macro GLOBAL_OFFSET_B vgprAddr:req vgprOffsetL:req vgprOffset1J:req vgprTmp:req
v_mul_lo_u32 v[\vgprTmp+0], s[sgprStrideB1J], v[\vgprOffset1J] // mul d1 lower
_v_add_co_u32 v[\vgprAddr+0], vcc_lo, v[\vgprOffsetL], v[\vgprTmp+0] // accumulate K lower
_v_add_u32 v[\vgprAddr+0], 0x8, v[\vgprAddr+0]     // add prepad for pointer shift
v_lshlrev_b32 v[\vgprAddr+0], 0x1, v[\vgprAddr+0]  // offset *= bytes/element
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
/* 8x8 thread-tile                        */
/******************************************/
.macro MAC_8x8_X0
// Component.MAC.FMA_F16_Packed
v_pk_fma_f16 v[vgprValuC + 0 + 0*8 + 0], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 0], v[vgprValuC + 0 + 0*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 0
s_setprio 1 // Raise priority while processing macs
v_pk_fma_f16 v[vgprValuC + 0 + 0*8 + 4], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 0], v[vgprValuC + 0 + 0*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 4
v_pk_fma_f16 v[vgprValuC + 1 + 0*8 + 0], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 0], v[vgprValuC + 1 + 0*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 1
v_pk_fma_f16 v[vgprValuC + 1 + 0*8 + 4], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 0], v[vgprValuC + 1 + 0*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 5
v_pk_fma_f16 v[vgprValuC + 2 + 0*8 + 0], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 0], v[vgprValuC + 2 + 0*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 2
v_pk_fma_f16 v[vgprValuC + 2 + 0*8 + 4], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 0], v[vgprValuC + 2 + 0*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 6
v_pk_fma_f16 v[vgprValuC + 3 + 0*8 + 0], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 0], v[vgprValuC + 3 + 0*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 3
v_pk_fma_f16 v[vgprValuC + 3 + 0*8 + 4], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 0], v[vgprValuC + 3 + 0*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 7
v_pk_fma_f16 v[vgprValuC + 0 + 1*8 + 0], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 1], v[vgprValuC + 0 + 1*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 8
v_pk_fma_f16 v[vgprValuC + 0 + 1*8 + 4], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 1], v[vgprValuC + 0 + 1*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 12
v_pk_fma_f16 v[vgprValuC + 1 + 1*8 + 0], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 1], v[vgprValuC + 1 + 1*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 9
v_pk_fma_f16 v[vgprValuC + 1 + 1*8 + 4], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 1], v[vgprValuC + 1 + 1*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 13
v_pk_fma_f16 v[vgprValuC + 2 + 1*8 + 0], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 1], v[vgprValuC + 2 + 1*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 10
v_pk_fma_f16 v[vgprValuC + 2 + 1*8 + 4], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 1], v[vgprValuC + 2 + 1*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 14
v_pk_fma_f16 v[vgprValuC + 3 + 1*8 + 0], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 1], v[vgprValuC + 3 + 1*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 11
v_pk_fma_f16 v[vgprValuC + 3 + 1*8 + 4], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 1], v[vgprValuC + 3 + 1*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 15
v_pk_fma_f16 v[vgprValuC + 0 + 2*8 + 0], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 2], v[vgprValuC + 0 + 2*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 16
v_pk_fma_f16 v[vgprValuC + 0 + 2*8 + 4], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 2], v[vgprValuC + 0 + 2*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 20
v_pk_fma_f16 v[vgprValuC + 1 + 2*8 + 0], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 2], v[vgprValuC + 1 + 2*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 17
v_pk_fma_f16 v[vgprValuC + 1 + 2*8 + 4], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 2], v[vgprValuC + 1 + 2*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 21
v_pk_fma_f16 v[vgprValuC + 2 + 2*8 + 0], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 2], v[vgprValuC + 2 + 2*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 18
v_pk_fma_f16 v[vgprValuC + 2 + 2*8 + 4], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 2], v[vgprValuC + 2 + 2*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 22
v_pk_fma_f16 v[vgprValuC + 3 + 2*8 + 0], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 2], v[vgprValuC + 3 + 2*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 19
v_pk_fma_f16 v[vgprValuC + 3 + 2*8 + 4], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 2], v[vgprValuC + 3 + 2*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 23
v_pk_fma_f16 v[vgprValuC + 0 + 3*8 + 0], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 3], v[vgprValuC + 0 + 3*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 24
v_pk_fma_f16 v[vgprValuC + 0 + 3*8 + 4], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 3], v[vgprValuC + 0 + 3*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 28
v_pk_fma_f16 v[vgprValuC + 1 + 3*8 + 0], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 3], v[vgprValuC + 1 + 3*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 25
v_pk_fma_f16 v[vgprValuC + 1 + 3*8 + 4], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 3], v[vgprValuC + 1 + 3*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 29
v_pk_fma_f16 v[vgprValuC + 2 + 3*8 + 0], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 3], v[vgprValuC + 2 + 3*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 26
v_pk_fma_f16 v[vgprValuC + 2 + 3*8 + 4], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 3], v[vgprValuC + 2 + 3*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 30
v_pk_fma_f16 v[vgprValuC + 3 + 3*8 + 0], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 3], v[vgprValuC + 3 + 3*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 27
v_pk_fma_f16 v[vgprValuC + 3 + 3*8 + 4], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 3], v[vgprValuC + 3 + 3*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 31
s_setprio 0 // Reset priority after macs
.endm
.macro MAC_8x8_X1
// Component.MAC.FMA_F16_Packed
v_pk_fma_f16 v[vgprValuC + 0 + 0*8 + 0], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 0], v[vgprValuC + 0 + 0*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 0
s_setprio 1 // Raise priority while processing macs
v_pk_fma_f16 v[vgprValuC + 0 + 0*8 + 4], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 0], v[vgprValuC + 0 + 0*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 4
v_pk_fma_f16 v[vgprValuC + 1 + 0*8 + 0], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 0], v[vgprValuC + 1 + 0*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 1
v_pk_fma_f16 v[vgprValuC + 1 + 0*8 + 4], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 0], v[vgprValuC + 1 + 0*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 5
v_pk_fma_f16 v[vgprValuC + 2 + 0*8 + 0], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 0], v[vgprValuC + 2 + 0*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 2
v_pk_fma_f16 v[vgprValuC + 2 + 0*8 + 4], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 0], v[vgprValuC + 2 + 0*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 6
v_pk_fma_f16 v[vgprValuC + 3 + 0*8 + 0], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 0], v[vgprValuC + 3 + 0*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 3
v_pk_fma_f16 v[vgprValuC + 3 + 0*8 + 4], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 0], v[vgprValuC + 3 + 0*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 7
v_pk_fma_f16 v[vgprValuC + 0 + 1*8 + 0], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 1], v[vgprValuC + 0 + 1*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 8
v_pk_fma_f16 v[vgprValuC + 0 + 1*8 + 4], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 1], v[vgprValuC + 0 + 1*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 12
v_pk_fma_f16 v[vgprValuC + 1 + 1*8 + 0], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 1], v[vgprValuC + 1 + 1*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 9
v_pk_fma_f16 v[vgprValuC + 1 + 1*8 + 4], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 1], v[vgprValuC + 1 + 1*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 13
v_pk_fma_f16 v[vgprValuC + 2 + 1*8 + 0], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 1], v[vgprValuC + 2 + 1*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 10
v_pk_fma_f16 v[vgprValuC + 2 + 1*8 + 4], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 1], v[vgprValuC + 2 + 1*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 14
v_pk_fma_f16 v[vgprValuC + 3 + 1*8 + 0], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 1], v[vgprValuC + 3 + 1*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 11
v_pk_fma_f16 v[vgprValuC + 3 + 1*8 + 4], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 1], v[vgprValuC + 3 + 1*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 15
v_pk_fma_f16 v[vgprValuC + 0 + 2*8 + 0], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 2], v[vgprValuC + 0 + 2*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 16
v_pk_fma_f16 v[vgprValuC + 0 + 2*8 + 4], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 2], v[vgprValuC + 0 + 2*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 20
v_pk_fma_f16 v[vgprValuC + 1 + 2*8 + 0], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 2], v[vgprValuC + 1 + 2*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 17
v_pk_fma_f16 v[vgprValuC + 1 + 2*8 + 4], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 2], v[vgprValuC + 1 + 2*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 21
v_pk_fma_f16 v[vgprValuC + 2 + 2*8 + 0], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 2], v[vgprValuC + 2 + 2*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 18
v_pk_fma_f16 v[vgprValuC + 2 + 2*8 + 4], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 2], v[vgprValuC + 2 + 2*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 22
v_pk_fma_f16 v[vgprValuC + 3 + 2*8 + 0], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 2], v[vgprValuC + 3 + 2*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 19
v_pk_fma_f16 v[vgprValuC + 3 + 2*8 + 4], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 2], v[vgprValuC + 3 + 2*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 23
v_pk_fma_f16 v[vgprValuC + 0 + 3*8 + 0], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 3], v[vgprValuC + 0 + 3*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 24
v_pk_fma_f16 v[vgprValuC + 0 + 3*8 + 4], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 3], v[vgprValuC + 0 + 3*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 28
v_pk_fma_f16 v[vgprValuC + 1 + 3*8 + 0], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 3], v[vgprValuC + 1 + 3*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 25
v_pk_fma_f16 v[vgprValuC + 1 + 3*8 + 4], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 3], v[vgprValuC + 1 + 3*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 29
v_pk_fma_f16 v[vgprValuC + 2 + 3*8 + 0], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 3], v[vgprValuC + 2 + 3*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 26
v_pk_fma_f16 v[vgprValuC + 2 + 3*8 + 4], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 3], v[vgprValuC + 2 + 3*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 30
v_pk_fma_f16 v[vgprValuC + 3 + 3*8 + 0], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 3], v[vgprValuC + 3 + 3*8 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 27
v_pk_fma_f16 v[vgprValuC + 3 + 3*8 + 4], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 3], v[vgprValuC + 3 + 3*8 + 4] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 31
s_setprio 0 // Reset priority after macs
.endm



/******************************************/
/* Allocate Resources                     */
/******************************************/

Cijk_Ailk_Bljk_HB_MT128x64x16_SN_K1_PGR1_TT8_8_WG16_8_1_preloaded: // Kernel start when preloading
s_mov_b32 vcc_hi, 0                                // Ensure hi bits are zero

/* Load Kernel Args */
_s_load_b512 s[24:39], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x0 // 
_s_load_b512 s[40:55], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x40 // 
s_mov_b32 m0, 0x3900                               // LDS clamp at 14592 bytes
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
v_lshlrev_b32 v0, 0x7, v0                          // LSU offset: lsuoffset = sgid*(MT0+PAD)
v_lshlrev_b32 v1, 0x3, v1                          // Final Offset: lrAOffset * VW
_v_add_lshl_u32 v[vgprLocalReadAddrA], v0, v1, 0x1 // Final Offset: offset = (lro0*VW+lsuoffset)*bpe


/* local read addresses: final offsets b */

v_lshrrev_b32 v0, 7, v[vgprSerial]                 // LSU offset: sgid = Serial / subGroup(128)
s_mov_b32 s7, 0x48                                 // LSU offset: lsuoffset = sgid*(MT1+PAD)
v_mul_lo_u32 v0, s7, v0                            // LSU offset: lsuoffset = sgid*(MT1+PAD)
v_lshlrev_b32 v3, 0x3, v3                          // Final Offset: lrBOffset * VW
_v_add_lshl_u32 v[vgprLocalReadAddrB], v0, v3, 0x1 // Final Offset: offset = (lro1*VW+lsuoffset)*bpe


/* local read addresses: declare addresses a */

/* N/A */


/* local read addresses: declare addresses b */

_v_add_co_u32 v[vgprLocalReadAddrB+0], vcc_lo, 0x1000, v[vgprLocalReadAddrB+0] //  += LdsOffsetB (lower)


/* global read addresses: tile offset assignment a */

/* LVCA = 16 */
/* v0 = (local)groA-tile = serial%LVCA (note (wgA*MTA) will be added to SRD) */
/* v1 = groA-unroll = serial/LVCA */
v_lshrrev_b32 v1, 4, v[vgprSerial]                 // v1 = v[vgprSerial] / 16
v_and_b32 v0, 15, v[vgprSerial]                    // v0 = v[vgprSerial] % 16
/* gro-tile *= glvw */
v_lshlrev_b32 v0, 0x3, v0                          // v0 = v0 * 8


/* global read addresses: tile offset assignment b */

/* LVCB = 2 */
/* v2 = (local)groB-tile = serial/LVCB (note (wgB*MTB) will be added to SRD) */
/* v3 = groB-unroll = serial%LVCB */
v_lshrrev_b32 v2, 1, v[vgprSerial]                 // v2 = v[vgprSerial] / 2
v_and_b32 v3, 1, v[vgprSerial]                     // v3 = v[vgprSerial] % 2
/* gro-unroll *= glvw */
v_lshlrev_b32 v3, 0x3, v3                          // v3 = v3 * 8


/******************************************/
/* Local Write Addresses                  */
/******************************************/

/* lwaTileAssignmentA = v0 */

/* lwaTileAssignmentB = v2 */

/* lwaUnrollAssignmentA = v1 */

/* lwaUnrollAssignmentB = v3 */


/* local write addresses: first offset a */

v_mul_u32_u24 v[vgprLocalWriteAddrA], 0x80, v1     // lwAL**(MTA + PAD)
_v_add_lshl_u32 v[vgprLocalWriteAddrA], v0, v[vgprLocalWriteAddrA], 0x1 // lwFOA = (lwAA + lwAL*(MT0I+PAD))*bpe


/* local write addresses: first offset b */

v_mul_u32_u24 v[vgprLocalWriteAddrB], 0x48, v3     // lwBL**(MTB + PAD)
_v_add_lshl_u32 v[vgprLocalWriteAddrB], v2, v[vgprLocalWriteAddrB], 0x1 // lwFOB = (lwBB + lwBL*(MT1J+PAD))*bpe
_v_add_co_u32 v[vgprLocalWriteAddrB], vcc_lo, 0x1000, v[vgprLocalWriteAddrB] // lwFOB = lwB1J + lwBL*MT1J + LDS_OFFSET_B=2048*2







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
_v_add_co_u32 v7, vcc_lo, 8, v6                    // groAL_1 + LSPA


/* global read addresses: unroll offsets b */

v_mov_b32 v8, v3                                   // groBL_0


/* global read addresses: shift a */

s_mul_i32 s58, s[sgprWorkGroup0], 128              // WorkGroup[01] * MT
s_sub_u32 s58, s[sgprSizeI], s58                   // edge = Size0I - WG*MT
s_sub_u32 s58, s58, 8                              // edge -= margin(8)
v_mov_b32 v9, s58                                  // edge vgpr = Size0I- WG*MT - margin(8)
v_min_i32 v4, v9, v4                               // offset = (offset < edge) ? offset(v4) : edge(v9)


/* global read addresses: final offsets a */

GLOBAL_OFFSET_A vgprGlobalReadOffsetA+0,  4,  6, 9 // gROA_0_0_0_0
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+1,  4,  7, 9 // gROA_0_0_1_0


/* global read addresses: final offsets b */

GLOBAL_OFFSET_B vgprGlobalReadOffsetB+0,  8,  5, 9 // gROB_0_0_0_0


/* global read addresses: addresses a */

/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s61, s[sgprWorkGroup0], 128           // WorkGroup[01] * MT
s_mul_i32 s60, s[sgprWorkGroup0], 128              // WorkGroup[01] * MT
s_sub_u32 s[sgprShadowLimitA+0], s[sgprTensor2dSizeA], s60 // sub tileStart
s_subb_u32 s[sgprShadowLimitA+1], s[sgprTensor2dSizeA+1], s61 // sub tileStart
s_lshl_b64 s[sgprShadowLimitA:sgprShadowLimitA+1], s[sgprShadowLimitA:sgprShadowLimitA+1], 0x1 // Set limit to use bytes
s_add_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], 16 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimitA // Move shadow to real if we are within 2^32
s_mul_hi_u32 s59, s[sgprStrideAK], s[sgprWorkGroup2] // Stride*WG
s_mul_i32 s58, s[sgprStrideAK], s[sgprWorkGroup2]  // Stride*WG
s_add_u32 s60, s60, s58                            // accum wg term to tilestart
s_addc_u32 s61, s61, s59                           // accum wg term to tilestart
s_lshl_b64 s[60:61], s[60:61], 0x1                 // tileStart *= BPE
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s60        // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s61       // SRD base = Address+ tileStart1
s_mov_b32 s[sgprSrdA+3], Srd127_96                 // Set bits 127_96 in SRD


/* global read addresses: addresses b */

/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s61, s[sgprWorkGroup1], 64            // WorkGroup[01] * MT
s_mul_i32 s60, s[sgprWorkGroup1], 64               // WorkGroup[01] * MT
s_mul_hi_u32 s61, s60, s[sgprStrideB1J]            // tlu=0, scaled tile-offset by stride
s_mul_i32 s60, s60, s[sgprStrideB1J]               // tlu=0, scaled tile-offset by stride
s_sub_u32 s[sgprShadowLimitB+0], s[sgprTensor2dSizeB], s60 // sub tileStart
s_subb_u32 s[sgprShadowLimitB+1], s[sgprTensor2dSizeB+1], s61 // sub tileStart
s_lshl_b64 s[sgprShadowLimitB:sgprShadowLimitB+1], s[sgprShadowLimitB:sgprShadowLimitB+1], 0x1 // Set limit to use bytes
s_add_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], 16 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimitB // Move shadow to real if we are within 2^32
s_mul_hi_u32 s59, s[sgprStrideBK], s[sgprWorkGroup2] // Stride*WG
s_mul_i32 s58, s[sgprStrideBK], s[sgprWorkGroup2]  // Stride*WG
s_add_u32 s60, s60, s58                            // accum wg term to tilestart
s_addc_u32 s61, s61, s59                           // accum wg term to tilestart
s_lshl_b64 s[60:61], s[60:61], 0x1                 // tileStart *= BPE
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s60        // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s61       // SRD base = Address+ tileStart1
s_mov_b32 s[sgprSrdB+3], Srd127_96                 // Set bits 127_96 in SRD


/* global read addresses: increments a */

s_mul_i32 s[sgprGlobalReadIncsA+0], DepthU*BpeA, s[sgprStrideAL] // incrA unrollIdx)


/* global read addresses: increments b */

s_mov_b32 s[sgprGlobalReadIncsB+0], DepthU*BpeB    // incrB (unrollIdx)

/* declare loop num iterations */


s_lshr_b32 s[sgprLoopCounterL], s[sgprSizesSum+0], 4 // s[sgprLoopCounterL] = s[sgprSizesSum+0] / 16
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
s_lshl_b64 s[56:57], s[56:57], 1                   // scale by bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s56        // add lo to SRD
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], s57       // add hi to SRD
s_mul_hi_u32 s57, s58, s[sgprStrideD1J]            // Scale s58 by Stride
s_mul_i32 s56, s58, s[sgprStrideD1J]               // Scale s58 by Stride
s_lshl_b64 s[56:57], s[56:57], 1                   // scale by bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s56        // add lo to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], s57       // add hi to SRD

s_mul_hi_u32 s57, s[sgprWorkGroup2], s[sgprStrideCK] // CScale s[sgprWorkGroup2] by Stride
s_mul_i32 s56, s[sgprWorkGroup2], s[sgprStrideCK]  // CScale s[sgprWorkGroup2] by Stride
s_lshl_b64 s[56:57], s[56:57], 1                   // scale by bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s56        // add lo to SRD
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], s57       // add hi to SRD
s_mul_hi_u32 s57, s[sgprWorkGroup2], s[sgprStrideDK] // Scale s[sgprWorkGroup2] by Stride
s_mul_i32 s56, s[sgprWorkGroup2], s[sgprStrideDK]  // Scale s[sgprWorkGroup2] by Stride
s_lshl_b64 s[56:57], s[56:57], 1                   // scale by bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s56        // add lo to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], s57       // add hi to SRD



/* initC: remove C-tile 0-32 from pool */

/* initC: remove AB-tile 34-51 from pool */
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

/* local write b */
_ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+0] offset:0 // lwoB_0_0_0_0 = (0 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
_ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+0] offset:144 // lwoB_0_1_0_0 = (1 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 144
_ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+1:vgprG2LB+1+0] offset:288 // lwoB_0_2_0_0 = (2 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 288
_ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+1:vgprG2LB+1+0] offset:432 // lwoB_0_3_0_0 = (3 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 432
_ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+2:vgprG2LB+2+0] offset:576 // lwoB_0_4_0_0 = (4 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 576
_ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+2:vgprG2LB+2+0] offset:720 // lwoB_0_5_0_0 = (5 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 720
_ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+3:vgprG2LB+3+0] offset:864 // lwoB_0_6_0_0 = (6 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 864
_ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+3:vgprG2LB+3+0] offset:1008 // lwoB_0_7_0_0 = (7 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 1008


/* local write swap a */


/* (EPS=1) local write swap internal offset -> 8192 */


/* local write swap b */


/* (EPS=1) local write swap internal offset -> 8192 */



s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-10prefetch wait for local write

s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //


/* local read prefetch a */

_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0


/* local read prefetch b */

_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0


/* local read inc a */

/* N/A, lro->128 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */


/* local read inc b */

/* N/A, lro->72 */
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
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:256 // L -> Reg lro=128 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_buffer_load_b128 v[vgprG2LA+0:vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_0_0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:144 // L -> Reg lro=72 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->144 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 1 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:512 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_buffer_load_b128 v[vgprG2LA+4:vgprG2LA+4+3], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_1_0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:288 // L -> Reg lro=144 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->384 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->216 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 2 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:768 // L -> Reg lro=384 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_buffer_load_b128 v[vgprG2LB+0:vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:432 // L -> Reg lro=216 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->512 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->288 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 3 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

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

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:576 // L -> Reg lro=288 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->640 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->360 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 4 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=640 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

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

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:720 // L -> Reg lro=360 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->768 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->432 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 5 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:1536 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:864 // L -> Reg lro=432 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->896 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->504 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 6 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:1792 // L -> Reg lro=896 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1008 // L -> Reg lro=504 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1024 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->576 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 7 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:2048 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1152 // L -> Reg lro=576 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1152 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->648 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 8 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:2304 // L -> Reg lro=1152 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1296 // L -> Reg lro=648 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1280 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->720 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 9 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:2560 // L -> Reg lro=1280 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1440 // L -> Reg lro=720 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1408 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->792 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 10 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:2816 // L -> Reg lro=1408 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1584 // L -> Reg lro=792 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1536 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->864 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 11 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:3072 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1728 // L -> Reg lro=864 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1664 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->936 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 12 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:3328 // L -> Reg lro=1664 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1872 // L -> Reg lro=936 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1792 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1008 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
/* sched write - iter 12 writesPerItem=1 */
s_waitcnt vmcnt(2)                                 // lgkmcnt=-1 vmcnt=2wait for global read before writing to local
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+3] offset:8192 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 8192
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 13 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=1792 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:2016 // L -> Reg lro=1008 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1920 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1080 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
/* sched write - iter 13 writesPerItem=1 */
s_waitcnt vmcnt(1)                                 // lgkmcnt=-1 vmcnt=1wait for global read before writing to local
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+3] offset:10240 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 10240
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 14 (reset local read pointers iteration)  (swap and reset local write pointers iteration)  (swap local read pointers iteration)  */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:3840 // L -> Reg lro=1920 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:2160 // L -> Reg lro=1080 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
/* sched write - iter 14 writesPerItem=8 */
s_waitcnt vmcnt(0)                                 // lgkmcnt=-1 vmcnt=0wait for global read before writing to local
_ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+0] offset:8192 // lwoB_0_0_0_0 = (0 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 8192
_ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+0] offset:8336 // lwoB_0_1_0_0 = (1 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 8336
_ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+1:vgprG2LB+1+0] offset:8480 // lwoB_0_2_0_0 = (2 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 8480
_ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+1:vgprG2LB+1+0] offset:8624 // lwoB_0_3_0_0 = (3 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 8624
_ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+2:vgprG2LB+2+0] offset:8768 // lwoB_0_4_0_0 = (4 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 8768
_ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+2:vgprG2LB+2+0] offset:8912 // lwoB_0_5_0_0 = (5 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 8912
_ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+3:vgprG2LB+3+0] offset:9056 // lwoB_0_6_0_0 = (6 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 9056
_ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+3:vgprG2LB+3+0] offset:9200 // lwoB_0_7_0_0 = (7 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 9200

/* local write swap offsets a */

/* (EPS=1) local write swap internal offset -> 0 */

/* local write swap offsets b */

/* (EPS=1) local write swap internal offset -> 0 */

/* local read swap offsets a */

/* local read swap internal offset -> 8192 */

/* local read swap offsets b */

/* local read swap internal offset -> 8192 */

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */
s_waitcnt lgkmcnt(10)                              // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=10 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 15 */

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-13wait for local write
s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //

/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:8192 // L -> Reg lro=0 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:8192 // L -> Reg lro=0 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->128 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->72 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

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
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:8448 // L -> Reg lro=128 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_buffer_load_b128 v[vgprG2LA+0:vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_0_0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:8336 // L -> Reg lro=72 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->144 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 1 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:8704 // L -> Reg lro=256 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_buffer_load_b128 v[vgprG2LA+4:vgprG2LA+4+3], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_1_0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:8480 // L -> Reg lro=144 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->384 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->216 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 2 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:8960 // L -> Reg lro=384 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_buffer_load_b128 v[vgprG2LB+0:vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:8624 // L -> Reg lro=216 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->512 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->288 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 3 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:9216 // L -> Reg lro=512 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

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

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:8768 // L -> Reg lro=288 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->640 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->360 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 4 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:9472 // L -> Reg lro=640 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

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

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:8912 // L -> Reg lro=360 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->768 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->432 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 5 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:9728 // L -> Reg lro=768 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:9056 // L -> Reg lro=432 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->896 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->504 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 6 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:9984 // L -> Reg lro=896 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:9200 // L -> Reg lro=504 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1024 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->576 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 7 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:10240 // L -> Reg lro=1024 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:9344 // L -> Reg lro=576 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1152 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->648 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 8 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:10496 // L -> Reg lro=1152 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:9488 // L -> Reg lro=648 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1280 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->720 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 9 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:10752 // L -> Reg lro=1280 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:9632 // L -> Reg lro=720 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1408 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->792 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 10 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:11008 // L -> Reg lro=1408 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:9776 // L -> Reg lro=792 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1536 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->864 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 11 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:11264 // L -> Reg lro=1536 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:9920 // L -> Reg lro=864 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1664 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->936 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 12 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:11520 // L -> Reg lro=1664 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:10064 // L -> Reg lro=936 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1792 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1008 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
/* sched write - iter 12 writesPerItem=1 */
s_waitcnt vmcnt(2)                                 // lgkmcnt=-1 vmcnt=2wait for global read before writing to local
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+3] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 13 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:11776 // L -> Reg lro=1792 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:10208 // L -> Reg lro=1008 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1920 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1080 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
/* sched write - iter 13 writesPerItem=1 */
s_waitcnt vmcnt(1)                                 // lgkmcnt=-1 vmcnt=1wait for global read before writing to local
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+3] offset:2048 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 2048
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 14 (reset local read pointers iteration)  (swap and reset local write pointers iteration)  (swap local read pointers iteration)  */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:12032 // L -> Reg lro=1920 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:10352 // L -> Reg lro=1080 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
/* sched write - iter 14 writesPerItem=8 */
s_waitcnt vmcnt(0)                                 // lgkmcnt=-1 vmcnt=0wait for global read before writing to local
_ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+0] offset:0 // lwoB_0_0_0_0 = (0 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
_ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+0] offset:144 // lwoB_0_1_0_0 = (1 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 144
_ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+1:vgprG2LB+1+0] offset:288 // lwoB_0_2_0_0 = (2 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 288
_ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+1:vgprG2LB+1+0] offset:432 // lwoB_0_3_0_0 = (3 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 432
_ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+2:vgprG2LB+2+0] offset:576 // lwoB_0_4_0_0 = (4 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 576
_ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+2:vgprG2LB+2+0] offset:720 // lwoB_0_5_0_0 = (5 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 720
_ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+3:vgprG2LB+3+0] offset:864 // lwoB_0_6_0_0 = (6 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 864
_ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+3:vgprG2LB+3+0] offset:1008 // lwoB_0_7_0_0 = (7 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 1008

/* local write swap offsets a */

/* (EPS=1) local write swap internal offset -> 8192 */

/* local write swap offsets b */

/* (EPS=1) local write swap internal offset -> 8192 */

/* local read swap offsets a */

/* local read swap internal offset -> 0 */

/* local read swap offsets b */

/* local read swap internal offset -> 0 */

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */
s_waitcnt lgkmcnt(10)                              // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=10 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 15 */

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-13wait for local write
s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //

/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->128 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->72 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

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
v_xor_b32 v[vgprLocalReadAddrA], 0x2000, v[vgprLocalReadAddrA] // swap Red Blk
v_xor_b32 v[vgprLocalReadAddrB], 0x2000, v[vgprLocalReadAddrB] // swap Red Blk
LoopEndL_2:


/* Before NLL: Check VGPR.checkin for INT8 LW */


/******************************************/
/* Opt. NoLoadLoop Without PAP - Begin                                      */
/******************************************/

s_cmpk_eq_u32 s[sgprBeta], 0x0                     // Beta == 0
s_cbranch_scc0 OptNLL_End_15                       // Branch if Beta is not zero

s_mov_b32 s56, 0x3c003c00                          // Packed alpha==1.0
s_cmp_eq_u32 s[sgprAlpha], s56                     // alpha == 1.0?
s_cbranch_scc0 OptNLL_End_15                       // branch if alpha != 1

s_and_b32 s56, 127, s[sgprSizeI]                   // s56 = s[sgprSizeI] % 128
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

s_and_b32 s57, 15, s[sgprSizesSum+0]               // s57 = s[sgprSizesSum+0] % 16
s_cmp_eq_u32 s57, 0x0                              // numIterL == 0
s_cbranch_scc0 OptNLL_End_15                       // skip if tail loop required



/* iter 0 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:256 // L -> Reg lro=128 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:144 // L -> Reg lro=72 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->144 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 1 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:512 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:288 // L -> Reg lro=144 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->384 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->216 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 2 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:768 // L -> Reg lro=384 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:432 // L -> Reg lro=216 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->512 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->288 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 3 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:576 // L -> Reg lro=288 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->640 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->360 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 4 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=640 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:720 // L -> Reg lro=360 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->768 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->432 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 5 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:1536 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:864 // L -> Reg lro=432 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->896 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->504 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 6 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:1792 // L -> Reg lro=896 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1008 // L -> Reg lro=504 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1024 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->576 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 7 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:2048 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1152 // L -> Reg lro=576 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1152 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->648 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 8 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:2304 // L -> Reg lro=1152 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1296 // L -> Reg lro=648 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1280 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->720 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 9 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:2560 // L -> Reg lro=1280 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1440 // L -> Reg lro=720 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1408 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->792 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 10 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:2816 // L -> Reg lro=1408 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1584 // L -> Reg lro=792 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1536 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->864 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 11 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:3072 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1728 // L -> Reg lro=864 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1664 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->936 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 12 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:3328 // L -> Reg lro=1664 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1872 // L -> Reg lro=936 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1792 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1008 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 13 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=1792 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:2016 // L -> Reg lro=1008 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1920 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1080 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 14 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:3840 // L -> Reg lro=1920 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:2160 // L -> Reg lro=1080 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 15 (last unrolled loop) */

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=0 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1
/* Stores for OptNLL */
Summation_End_OptNLL_16:
/* endSummation: add vgpr [34...68) to pool */
.set NumFullBlocks, UNDEF
.set WgmRemainder1, UNDEF
.set MagicNumberWgmRemainder1, UNDEF
/* computeStoreVgprs */
v_lshrrev_b32 v35, 4, v[vgprSerial]                // v35 = v[vgprSerial] / 16
v_and_b32 v34, 15, v[vgprSerial]                   // v34 = v[vgprSerial] % 16
v_lshlrev_b32 v34, 0x3, v34                        // v34 = v34 * 8
v_lshlrev_b32 v35, 0x3, v35                        // v35 = v35 * 8
v_mul_lo_u32 v36, v35, s[sgprStrideC1J]            // rowStart vgpr
v_mul_lo_u32 v37, v35, s[sgprStrideD1J]            // rowStart vgpr

s_mul_i32 s54, 0x80, s[sgprWorkGroup0]             // s54 = wg0*MT0
_v_add_co_u32 v34, vcc_lo, s54, v34                // coord0 = tid0*VW + wg0*MT0
s_mul_i32 s56, 0x40, s[sgprWorkGroup1]             // <- wg1*MT1
_v_add_co_u32 v35, vcc_lo, s56, v35                // coord1 = tid1*VW + wg1*MT1
GW_B0_E0_19:

/* edge=0, allocate 1 sgpr. perBatchTmpS=1 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=8 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw8); (0,0,1,0:vw8); (0,0,2,0:vw8); (0,0,3,0:vw8); (0,0,4,0:vw8); (0,0,5,0:vw8); (0,0,6,0:vw8); (0,0,7,0:vw8) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
/* (d1,vc1,d0,vc0)=(0,4,0,0) */
/* (d1,vc1,d0,vc0)=(0,5,0,0) */
/* (d1,vc1,d0,vc0)=(0,6,0,0) */
/* (d1,vc1,d0,vc0)=(0,7,0,0) */
_v_add_lshl_u32 v40, v37, v34, 0x1                 // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=34, coord0Vgpr=34

/* apply mask, calc new C and issue writes */
_buffer_store_b128 v[0:3], v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[4:7], v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[8:11], v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[12:15], v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[16:19], v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[20:23], v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[24:27], v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[28:31], v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_branch label_GW_End_21                           // jump to end
label_GW_End_21:

s_endpgm                                           // Kernel End
OptNLL_End_15:


/******************************************/
/* Ord. NoLoadLoop - Begin                                      */
/******************************************/




/* iter 0 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:256 // L -> Reg lro=128 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:144 // L -> Reg lro=72 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->144 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 1 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:512 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:288 // L -> Reg lro=144 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->384 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->216 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 2 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:768 // L -> Reg lro=384 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:432 // L -> Reg lro=216 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->512 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->288 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 3 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:576 // L -> Reg lro=288 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->640 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->360 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 4 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=640 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:720 // L -> Reg lro=360 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->768 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->432 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 5 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:1536 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:864 // L -> Reg lro=432 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->896 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->504 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 6 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:1792 // L -> Reg lro=896 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1008 // L -> Reg lro=504 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1024 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->576 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 7 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:2048 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1152 // L -> Reg lro=576 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1152 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->648 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 8 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:2304 // L -> Reg lro=1152 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1296 // L -> Reg lro=648 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1280 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->720 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 9 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:2560 // L -> Reg lro=1280 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1440 // L -> Reg lro=720 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1408 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->792 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 10 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:2816 // L -> Reg lro=1408 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1584 // L -> Reg lro=792 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1536 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->864 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 11 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:3072 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1728 // L -> Reg lro=864 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1664 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->936 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 12 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:3328 // L -> Reg lro=1664 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1872 // L -> Reg lro=936 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1792 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1008 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 13 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=1792 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:2016 // L -> Reg lro=1008 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1920 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1080 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 14 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:3840 // L -> Reg lro=1920 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:2160 // L -> Reg lro=1080 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 15 (last unrolled loop) */

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=0 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1
PrefetchGlobalLastIterEnd_5:


/******************************************/
/* Tail Loop                              */
/******************************************/


/* local write reset offsets a */


v_and_b32 v[vgprLocalWriteAddrA], 0xf01fff, v[vgprLocalWriteAddrA] // reset to Red


/* local write reset offsets b */


v_and_b32 v[vgprLocalWriteAddrB], 0xf01fff, v[vgprLocalWriteAddrB] // reset to Red


//numIterL = (((sizeL % LOCAL_DEPTHU) + LOCAL_SPLITU - 1) / LOCAL_SPLITU)
s_and_b32 s[sgprLoopCounterL], 15, s[sgprSizesSum+0] // s[sgprLoopCounterL] = s[sgprSizesSum+0] % 16
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
_buffer_load_d16_b16 v[vgprG2LA+0+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // load one buffer value
/* g2l=0, load component 1 */
_buffer_load_d16_hi_b16 v[vgprG2LA+0+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:2 // load one buffer value
/* g2l=0, load component 2 */
_buffer_load_d16_b16 v[vgprG2LA+0+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:4 // load one buffer value
/* g2l=0, load component 3 */
_buffer_load_d16_hi_b16 v[vgprG2LA+0+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:6 // load one buffer value
/* g2l=0, load component 4 */
_buffer_load_d16_b16 v[vgprG2LA+0+2], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:8 // load one buffer value
/* g2l=0, load component 5 */
_buffer_load_d16_hi_b16 v[vgprG2LA+0+2], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:10 // load one buffer value
/* g2l=0, load component 6 */
_buffer_load_d16_b16 v[vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:12 // load one buffer value
/* g2l=0, load component 7 */
_buffer_load_d16_hi_b16 v[vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:14 // load one buffer value
/* g2l=4, load component 0 */
_buffer_load_d16_b16 v[vgprG2LA+4+0], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // load one buffer value
/* g2l=4, load component 1 */
_buffer_load_d16_hi_b16 v[vgprG2LA+4+0], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:2 // load one buffer value
/* g2l=4, load component 2 */
_buffer_load_d16_b16 v[vgprG2LA+4+1], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:4 // load one buffer value
/* g2l=4, load component 3 */
_buffer_load_d16_hi_b16 v[vgprG2LA+4+1], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:6 // load one buffer value
/* g2l=4, load component 4 */
_buffer_load_d16_b16 v[vgprG2LA+4+2], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:8 // load one buffer value
/* g2l=4, load component 5 */
_buffer_load_d16_hi_b16 v[vgprG2LA+4+2], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:10 // load one buffer value
/* g2l=4, load component 6 */
_buffer_load_d16_b16 v[vgprG2LA+4+3], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:12 // load one buffer value
/* g2l=4, load component 7 */
_buffer_load_d16_hi_b16 v[vgprG2LA+4+3], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:14 // load one buffer value


/* Update M0 for DTLDS */



/* global read b */

/* g2l=0, load component 0 */
_buffer_load_d16_b16 v[vgprG2LB+0+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // load one buffer value
/* g2l=0, load component 1 */
_buffer_load_d16_hi_b16 v[vgprG2LB+0+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:2 // load one buffer value
/* g2l=0, load component 2 */
_buffer_load_d16_b16 v[vgprG2LB+0+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:4 // load one buffer value
/* g2l=0, load component 3 */
_buffer_load_d16_hi_b16 v[vgprG2LB+0+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:6 // load one buffer value
/* g2l=0, load component 4 */
_buffer_load_d16_b16 v[vgprG2LB+0+2], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:8 // load one buffer value
/* g2l=0, load component 5 */
_buffer_load_d16_hi_b16 v[vgprG2LB+0+2], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:10 // load one buffer value
/* g2l=0, load component 6 */
_buffer_load_d16_b16 v[vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:12 // load one buffer value
/* g2l=0, load component 7 */
_buffer_load_d16_hi_b16 v[vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:14 // load one buffer value

s_waitcnt vmcnt(0)                                 // lgkmcnt=-1 vmcnt=02wait for global read

s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //


/* Done global A/B reads */




/* local write a */

_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+3] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+3] offset:2048 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 2048


/* local write b */

_ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+0] offset:0 // lwoB_0_0_0_0 = (0 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
_ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+0] offset:144 // lwoB_0_1_0_0 = (1 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 144
_ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+1:vgprG2LB+1+0] offset:288 // lwoB_0_2_0_0 = (2 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 288
_ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+1:vgprG2LB+1+0] offset:432 // lwoB_0_3_0_0 = (3 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 432
_ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+2:vgprG2LB+2+0] offset:576 // lwoB_0_4_0_0 = (4 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 576
_ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+2:vgprG2LB+2+0] offset:720 // lwoB_0_5_0_0 = (5 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 720
_ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+3:vgprG2LB+3+0] offset:864 // lwoB_0_6_0_0 = (6 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 864
_ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+3:vgprG2LB+3+0] offset:1008 // lwoB_0_7_0_0 = (7 + 0*LSCB)*(MT1J+PAD) + (0*LSPB) = 1008


/* Recalc local read offsets */


s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-15wait for local write

s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //


/* local read reset offsets a */


/* localReadResetOffsets */
/* handled internally */
v_and_b32 v[vgprLocalReadAddrA], 0x1fff, v[vgprLocalReadAddrA] // reset Red,Blk -> Red


/* local read reset offsets b */


/* localReadResetOffsets */
/* handled internally */
v_and_b32 v[vgprLocalReadAddrB], 0x1fff, v[vgprLocalReadAddrB] // reset Red,Blk -> Red


/* local read init pointers a */


/* localReadInitPointers */


/* local read init pointers b */


/* localReadInitPointers */


/* tail loop: macs */

TailLoopBeginL_6:


/* local read a */

_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0


/* local read b */

_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0


/* local read inc a */

s_mov_b32 s56, 0x100                               // inc
_v_add_co_u32 v[vgprLocalReadAddrA], vcc_lo, s56, v[vgprLocalReadAddrA] // lrA += 256 (LSU*(MT+PAD)*bpe)


/* local read inc b */

s_mov_b32 s56, 0x90                                // inc
_v_add_co_u32 v[vgprLocalReadAddrB], vcc_lo, s56, v[vgprLocalReadAddrB] // lrB += 144 (LSU*(MT+PAD)*bpe)

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-14wait for local read

.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* closeLoop loopL finalLoop=1 tailLoop=1 */
s_sub_i32 s[sgprLoopCounterL], s[sgprLoopCounterL], 0x1 // dec counterL (tailLoop)
s_add_u32 s[sgprOrigLoopCounter], s[sgprOrigLoopCounter], 0x1 // inc counterL
s_cmp_le_i32 s[sgprLoopCounterL], 0x0              // counterL<=0
s_cbranch_scc0 TailLoopBeginL_6                    // restart LoopL
TailLoopEndL_7:

SkipTailLoopL_8:

Summation_End_28:
/* endSummation: add vgpr [34...68) to pool */
.set NumFullBlocks, UNDEF
.set WgmRemainder1, UNDEF
.set MagicNumberWgmRemainder1, UNDEF


/* shift vector components d0 */

v_mov_b32 v35, s[sgprWorkGroup0]                   // 
v_mul_i32_i24 v35, -0x80, v35                      // wg*MT
_v_add_co_u32 v35, vcc_lo, s[sgprSizesFree+0], v35 // wgMT = Size - wg*MT
v_mov_b32 v34, 0x80                                // MT
v_min_u32 v35, v34, v35                            // wgMT = (wgMT < MT) ? wgMT : MT
v_lshrrev_b32 v34, 3, v35                          // v34 = v35 / 8
v_and_b32 v36, 7, v35                              // v36 = v35 % 8
v_and_b32 v37, 15, v34                             // v37 = v34 % 16
v_and_b32 v38, 15, v[vgprSerial]                   // v38 = v[vgprSerial] % 16
v_lshrrev_b32 v39, 7, v35                          // v39 = v35 / 128
v_and_b32 v40, 7, v35                              // v40 = v35 % 8
v_mov_b32 v41, v40                                 // duplicate
v_lshrrev_b32 v40, 3, v41                          // v40 = v41 / 8
_v_add_co_u32 v40, vcc_lo, v39, v40                // vId = 2 components
v_cmp_eq_u32 vcc_lo, v36, 0x1                      // wgMT%VW == 1
s_cbranch_vccnz label_0029                         // shift d0 r=1
v_cmp_eq_u32 vcc_lo, v36, 0x2                      // wgMT%VW == 2
s_cbranch_vccnz label_0031                         // shift d0 r=2
v_cmp_eq_u32 vcc_lo, v36, 0x3                      // wgMT%VW == 3
s_cbranch_vccnz label_0033                         // shift d0 r=3
v_cmp_eq_u32 vcc_lo, v36, 0x4                      // wgMT%VW == 4
s_cbranch_vccnz label_0035                         // shift d0 r=4
v_cmp_eq_u32 vcc_lo, v36, 0x5                      // wgMT%VW == 5
s_cbranch_vccnz label_0037                         // shift d0 r=5
v_cmp_eq_u32 vcc_lo, v36, 0x6                      // wgMT%VW == 6
s_cbranch_vccnz label_0039                         // shift d0 r=6
v_cmp_eq_u32 vcc_lo, v36, 0x7                      // wgMT%VW == 7
s_cbranch_vccnz label_0041                         // shift d0 r=7
s_branch label_0043                                // no shifting

/******************************************/
/* shift d0 r=1                           */
/******************************************/
label_0029:
v_cmp_eq_u32 vcc_lo, v40, 0x0                      // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0030                         // shift d0, r=1, v=0

/* shift d0 r=1 v=0 */
label_0030:
_v_cmpx_eq_u32 s53, v38, v37                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=7, dst=0
// 1, 0, 0, 0, 0, 7
// srcLo=0, dstLo=1
v_lshrrev_b32 v0, 0x10, v3                         // hi16 -> lo16
// src=15, dst=8
// 1, 0, 1, 0, 8, 15
// srcLo=0, dstLo=1
v_lshrrev_b32 v4, 0x10, v7                         // hi16 -> lo16
// src=23, dst=16
// 1, 0, 2, 0, 16, 23
// srcLo=0, dstLo=1
v_lshrrev_b32 v8, 0x10, v11                        // hi16 -> lo16
// src=31, dst=24
// 1, 0, 3, 0, 24, 31
// srcLo=0, dstLo=1
v_lshrrev_b32 v12, 0x10, v15                       // hi16 -> lo16
// src=39, dst=32
// 1, 0, 4, 0, 32, 39
// srcLo=0, dstLo=1
v_lshrrev_b32 v16, 0x10, v19                       // hi16 -> lo16
// src=47, dst=40
// 1, 0, 5, 0, 40, 47
// srcLo=0, dstLo=1
v_lshrrev_b32 v20, 0x10, v23                       // hi16 -> lo16
// src=55, dst=48
// 1, 0, 6, 0, 48, 55
// srcLo=0, dstLo=1
v_lshrrev_b32 v24, 0x10, v27                       // hi16 -> lo16
// src=63, dst=56
// 1, 0, 7, 0, 56, 63
// srcLo=0, dstLo=1
v_lshrrev_b32 v28, 0x10, v31                       // hi16 -> lo16
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0043                                // done shifting

/******************************************/
/* shift d0 r=2                           */
/******************************************/
label_0031:
v_cmp_eq_u32 vcc_lo, v40, 0x0                      // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0032                         // shift d0, r=2, v=0

/* shift d0 r=2 v=0 */
label_0032:
_v_cmpx_eq_u32 s53, v38, v37                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=6, dst=0
// 2, 0, 0, 0, 0, 6
v_mov_b32 v0, v3                                   // rC[0+0*VW+0*TT0I] = rC[6+0*VW+0*TT0I]
// src=7, dst=1
// 2, 0, 0, 1, 1, 7
// src=14, dst=8
// 2, 0, 1, 0, 8, 14
v_mov_b32 v4, v7                                   // rC[0+0*VW+1*TT0I] = rC[6+0*VW+1*TT0I]
// src=15, dst=9
// 2, 0, 1, 1, 9, 15
// src=22, dst=16
// 2, 0, 2, 0, 16, 22
v_mov_b32 v8, v11                                  // rC[0+0*VW+2*TT0I] = rC[6+0*VW+2*TT0I]
// src=23, dst=17
// 2, 0, 2, 1, 17, 23
// src=30, dst=24
// 2, 0, 3, 0, 24, 30
v_mov_b32 v12, v15                                 // rC[0+0*VW+3*TT0I] = rC[6+0*VW+3*TT0I]
// src=31, dst=25
// 2, 0, 3, 1, 25, 31
// src=38, dst=32
// 2, 0, 4, 0, 32, 38
v_mov_b32 v16, v19                                 // rC[0+0*VW+4*TT0I] = rC[6+0*VW+4*TT0I]
// src=39, dst=33
// 2, 0, 4, 1, 33, 39
// src=46, dst=40
// 2, 0, 5, 0, 40, 46
v_mov_b32 v20, v23                                 // rC[0+0*VW+5*TT0I] = rC[6+0*VW+5*TT0I]
// src=47, dst=41
// 2, 0, 5, 1, 41, 47
// src=54, dst=48
// 2, 0, 6, 0, 48, 54
v_mov_b32 v24, v27                                 // rC[0+0*VW+6*TT0I] = rC[6+0*VW+6*TT0I]
// src=55, dst=49
// 2, 0, 6, 1, 49, 55
// src=62, dst=56
// 2, 0, 7, 0, 56, 62
v_mov_b32 v28, v31                                 // rC[0+0*VW+7*TT0I] = rC[6+0*VW+7*TT0I]
// src=63, dst=57
// 2, 0, 7, 1, 57, 63
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0043                                // done shifting

/******************************************/
/* shift d0 r=3                           */
/******************************************/
label_0033:
v_cmp_eq_u32 vcc_lo, v40, 0x0                      // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0034                         // shift d0, r=3, v=0

/* shift d0 r=3 v=0 */
label_0034:
_v_cmpx_eq_u32 s53, v38, v37                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=5, dst=0
// 3, 0, 0, 0, 0, 5
// srcLo=0, dstLo=1
v_lshrrev_b32 v0, 0x10, v2                         // hi16 -> lo16
// src=6, dst=1
// 3, 0, 0, 1, 1, 6
// srcLo=1, dstLo=0
v_and_b32 v0, 0x0000FFFF, v0                       // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v3                        // left shift src 16 bits
v_or_b32 v0, v39, v0                               // dst = tmpSrc | dst
// src=7, dst=2
// 3, 0, 0, 2, 2, 7
// srcLo=0, dstLo=1
v_lshrrev_b32 v1, 0x10, v3                         // hi16 -> lo16
// src=13, dst=8
// 3, 0, 1, 0, 8, 13
// srcLo=0, dstLo=1
v_lshrrev_b32 v4, 0x10, v6                         // hi16 -> lo16
// src=14, dst=9
// 3, 0, 1, 1, 9, 14
// srcLo=1, dstLo=0
v_and_b32 v4, 0x0000FFFF, v4                       // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v7                        // left shift src 16 bits
v_or_b32 v4, v39, v4                               // dst = tmpSrc | dst
// src=15, dst=10
// 3, 0, 1, 2, 10, 15
// srcLo=0, dstLo=1
v_lshrrev_b32 v5, 0x10, v7                         // hi16 -> lo16
// src=21, dst=16
// 3, 0, 2, 0, 16, 21
// srcLo=0, dstLo=1
v_lshrrev_b32 v8, 0x10, v10                        // hi16 -> lo16
// src=22, dst=17
// 3, 0, 2, 1, 17, 22
// srcLo=1, dstLo=0
v_and_b32 v8, 0x0000FFFF, v8                       // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v11                       // left shift src 16 bits
v_or_b32 v8, v39, v8                               // dst = tmpSrc | dst
// src=23, dst=18
// 3, 0, 2, 2, 18, 23
// srcLo=0, dstLo=1
v_lshrrev_b32 v9, 0x10, v11                        // hi16 -> lo16
// src=29, dst=24
// 3, 0, 3, 0, 24, 29
// srcLo=0, dstLo=1
v_lshrrev_b32 v12, 0x10, v14                       // hi16 -> lo16
// src=30, dst=25
// 3, 0, 3, 1, 25, 30
// srcLo=1, dstLo=0
v_and_b32 v12, 0x0000FFFF, v12                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v15                       // left shift src 16 bits
v_or_b32 v12, v39, v12                             // dst = tmpSrc | dst
// src=31, dst=26
// 3, 0, 3, 2, 26, 31
// srcLo=0, dstLo=1
v_lshrrev_b32 v13, 0x10, v15                       // hi16 -> lo16
// src=37, dst=32
// 3, 0, 4, 0, 32, 37
// srcLo=0, dstLo=1
v_lshrrev_b32 v16, 0x10, v18                       // hi16 -> lo16
// src=38, dst=33
// 3, 0, 4, 1, 33, 38
// srcLo=1, dstLo=0
v_and_b32 v16, 0x0000FFFF, v16                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v19                       // left shift src 16 bits
v_or_b32 v16, v39, v16                             // dst = tmpSrc | dst
// src=39, dst=34
// 3, 0, 4, 2, 34, 39
// srcLo=0, dstLo=1
v_lshrrev_b32 v17, 0x10, v19                       // hi16 -> lo16
// src=45, dst=40
// 3, 0, 5, 0, 40, 45
// srcLo=0, dstLo=1
v_lshrrev_b32 v20, 0x10, v22                       // hi16 -> lo16
// src=46, dst=41
// 3, 0, 5, 1, 41, 46
// srcLo=1, dstLo=0
v_and_b32 v20, 0x0000FFFF, v20                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v23                       // left shift src 16 bits
v_or_b32 v20, v39, v20                             // dst = tmpSrc | dst
// src=47, dst=42
// 3, 0, 5, 2, 42, 47
// srcLo=0, dstLo=1
v_lshrrev_b32 v21, 0x10, v23                       // hi16 -> lo16
// src=53, dst=48
// 3, 0, 6, 0, 48, 53
// srcLo=0, dstLo=1
v_lshrrev_b32 v24, 0x10, v26                       // hi16 -> lo16
// src=54, dst=49
// 3, 0, 6, 1, 49, 54
// srcLo=1, dstLo=0
v_and_b32 v24, 0x0000FFFF, v24                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v27                       // left shift src 16 bits
v_or_b32 v24, v39, v24                             // dst = tmpSrc | dst
// src=55, dst=50
// 3, 0, 6, 2, 50, 55
// srcLo=0, dstLo=1
v_lshrrev_b32 v25, 0x10, v27                       // hi16 -> lo16
// src=61, dst=56
// 3, 0, 7, 0, 56, 61
// srcLo=0, dstLo=1
v_lshrrev_b32 v28, 0x10, v30                       // hi16 -> lo16
// src=62, dst=57
// 3, 0, 7, 1, 57, 62
// srcLo=1, dstLo=0
v_and_b32 v28, 0x0000FFFF, v28                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v31                       // left shift src 16 bits
v_or_b32 v28, v39, v28                             // dst = tmpSrc | dst
// src=63, dst=58
// 3, 0, 7, 2, 58, 63
// srcLo=0, dstLo=1
v_lshrrev_b32 v29, 0x10, v31                       // hi16 -> lo16
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0043                                // done shifting

/******************************************/
/* shift d0 r=4                           */
/******************************************/
label_0035:
v_cmp_eq_u32 vcc_lo, v40, 0x0                      // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0036                         // shift d0, r=4, v=0

/* shift d0 r=4 v=0 */
label_0036:
_v_cmpx_eq_u32 s53, v38, v37                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=4, dst=0
// 4, 0, 0, 0, 0, 4
v_mov_b32 v0, v2                                   // rC[0+0*VW+0*TT0I] = rC[4+0*VW+0*TT0I]
// src=5, dst=1
// 4, 0, 0, 1, 1, 5
// src=6, dst=2
// 4, 0, 0, 2, 2, 6
v_mov_b32 v1, v3                                   // rC[2+0*VW+0*TT0I] = rC[6+0*VW+0*TT0I]
// src=7, dst=3
// 4, 0, 0, 3, 3, 7
// src=12, dst=8
// 4, 0, 1, 0, 8, 12
v_mov_b32 v4, v6                                   // rC[0+0*VW+1*TT0I] = rC[4+0*VW+1*TT0I]
// src=13, dst=9
// 4, 0, 1, 1, 9, 13
// src=14, dst=10
// 4, 0, 1, 2, 10, 14
v_mov_b32 v5, v7                                   // rC[2+0*VW+1*TT0I] = rC[6+0*VW+1*TT0I]
// src=15, dst=11
// 4, 0, 1, 3, 11, 15
// src=20, dst=16
// 4, 0, 2, 0, 16, 20
v_mov_b32 v8, v10                                  // rC[0+0*VW+2*TT0I] = rC[4+0*VW+2*TT0I]
// src=21, dst=17
// 4, 0, 2, 1, 17, 21
// src=22, dst=18
// 4, 0, 2, 2, 18, 22
v_mov_b32 v9, v11                                  // rC[2+0*VW+2*TT0I] = rC[6+0*VW+2*TT0I]
// src=23, dst=19
// 4, 0, 2, 3, 19, 23
// src=28, dst=24
// 4, 0, 3, 0, 24, 28
v_mov_b32 v12, v14                                 // rC[0+0*VW+3*TT0I] = rC[4+0*VW+3*TT0I]
// src=29, dst=25
// 4, 0, 3, 1, 25, 29
// src=30, dst=26
// 4, 0, 3, 2, 26, 30
v_mov_b32 v13, v15                                 // rC[2+0*VW+3*TT0I] = rC[6+0*VW+3*TT0I]
// src=31, dst=27
// 4, 0, 3, 3, 27, 31
// src=36, dst=32
// 4, 0, 4, 0, 32, 36
v_mov_b32 v16, v18                                 // rC[0+0*VW+4*TT0I] = rC[4+0*VW+4*TT0I]
// src=37, dst=33
// 4, 0, 4, 1, 33, 37
// src=38, dst=34
// 4, 0, 4, 2, 34, 38
v_mov_b32 v17, v19                                 // rC[2+0*VW+4*TT0I] = rC[6+0*VW+4*TT0I]
// src=39, dst=35
// 4, 0, 4, 3, 35, 39
// src=44, dst=40
// 4, 0, 5, 0, 40, 44
v_mov_b32 v20, v22                                 // rC[0+0*VW+5*TT0I] = rC[4+0*VW+5*TT0I]
// src=45, dst=41
// 4, 0, 5, 1, 41, 45
// src=46, dst=42
// 4, 0, 5, 2, 42, 46
v_mov_b32 v21, v23                                 // rC[2+0*VW+5*TT0I] = rC[6+0*VW+5*TT0I]
// src=47, dst=43
// 4, 0, 5, 3, 43, 47
// src=52, dst=48
// 4, 0, 6, 0, 48, 52
v_mov_b32 v24, v26                                 // rC[0+0*VW+6*TT0I] = rC[4+0*VW+6*TT0I]
// src=53, dst=49
// 4, 0, 6, 1, 49, 53
// src=54, dst=50
// 4, 0, 6, 2, 50, 54
v_mov_b32 v25, v27                                 // rC[2+0*VW+6*TT0I] = rC[6+0*VW+6*TT0I]
// src=55, dst=51
// 4, 0, 6, 3, 51, 55
// src=60, dst=56
// 4, 0, 7, 0, 56, 60
v_mov_b32 v28, v30                                 // rC[0+0*VW+7*TT0I] = rC[4+0*VW+7*TT0I]
// src=61, dst=57
// 4, 0, 7, 1, 57, 61
// src=62, dst=58
// 4, 0, 7, 2, 58, 62
v_mov_b32 v29, v31                                 // rC[2+0*VW+7*TT0I] = rC[6+0*VW+7*TT0I]
// src=63, dst=59
// 4, 0, 7, 3, 59, 63
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0043                                // done shifting

/******************************************/
/* shift d0 r=5                           */
/******************************************/
label_0037:
v_cmp_eq_u32 vcc_lo, v40, 0x0                      // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0038                         // shift d0, r=5, v=0

/* shift d0 r=5 v=0 */
label_0038:
_v_cmpx_eq_u32 s53, v38, v37                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=3, dst=0
// 5, 0, 0, 0, 0, 3
// srcLo=0, dstLo=1
v_lshrrev_b32 v0, 0x10, v1                         // hi16 -> lo16
// src=4, dst=1
// 5, 0, 0, 1, 1, 4
// srcLo=1, dstLo=0
v_and_b32 v0, 0x0000FFFF, v0                       // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v2                        // left shift src 16 bits
v_or_b32 v0, v39, v0                               // dst = tmpSrc | dst
// src=5, dst=2
// 5, 0, 0, 2, 2, 5
// srcLo=0, dstLo=1
v_lshrrev_b32 v1, 0x10, v2                         // hi16 -> lo16
// src=6, dst=3
// 5, 0, 0, 3, 3, 6
// srcLo=1, dstLo=0
v_and_b32 v1, 0x0000FFFF, v1                       // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v3                        // left shift src 16 bits
v_or_b32 v1, v39, v1                               // dst = tmpSrc | dst
// src=7, dst=4
// 5, 0, 0, 4, 4, 7
// srcLo=0, dstLo=1
v_lshrrev_b32 v2, 0x10, v3                         // hi16 -> lo16
// src=11, dst=8
// 5, 0, 1, 0, 8, 11
// srcLo=0, dstLo=1
v_lshrrev_b32 v4, 0x10, v5                         // hi16 -> lo16
// src=12, dst=9
// 5, 0, 1, 1, 9, 12
// srcLo=1, dstLo=0
v_and_b32 v4, 0x0000FFFF, v4                       // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v6                        // left shift src 16 bits
v_or_b32 v4, v39, v4                               // dst = tmpSrc | dst
// src=13, dst=10
// 5, 0, 1, 2, 10, 13
// srcLo=0, dstLo=1
v_lshrrev_b32 v5, 0x10, v6                         // hi16 -> lo16
// src=14, dst=11
// 5, 0, 1, 3, 11, 14
// srcLo=1, dstLo=0
v_and_b32 v5, 0x0000FFFF, v5                       // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v7                        // left shift src 16 bits
v_or_b32 v5, v39, v5                               // dst = tmpSrc | dst
// src=15, dst=12
// 5, 0, 1, 4, 12, 15
// srcLo=0, dstLo=1
v_lshrrev_b32 v6, 0x10, v7                         // hi16 -> lo16
// src=19, dst=16
// 5, 0, 2, 0, 16, 19
// srcLo=0, dstLo=1
v_lshrrev_b32 v8, 0x10, v9                         // hi16 -> lo16
// src=20, dst=17
// 5, 0, 2, 1, 17, 20
// srcLo=1, dstLo=0
v_and_b32 v8, 0x0000FFFF, v8                       // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v10                       // left shift src 16 bits
v_or_b32 v8, v39, v8                               // dst = tmpSrc | dst
// src=21, dst=18
// 5, 0, 2, 2, 18, 21
// srcLo=0, dstLo=1
v_lshrrev_b32 v9, 0x10, v10                        // hi16 -> lo16
// src=22, dst=19
// 5, 0, 2, 3, 19, 22
// srcLo=1, dstLo=0
v_and_b32 v9, 0x0000FFFF, v9                       // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v11                       // left shift src 16 bits
v_or_b32 v9, v39, v9                               // dst = tmpSrc | dst
// src=23, dst=20
// 5, 0, 2, 4, 20, 23
// srcLo=0, dstLo=1
v_lshrrev_b32 v10, 0x10, v11                       // hi16 -> lo16
// src=27, dst=24
// 5, 0, 3, 0, 24, 27
// srcLo=0, dstLo=1
v_lshrrev_b32 v12, 0x10, v13                       // hi16 -> lo16
// src=28, dst=25
// 5, 0, 3, 1, 25, 28
// srcLo=1, dstLo=0
v_and_b32 v12, 0x0000FFFF, v12                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v14                       // left shift src 16 bits
v_or_b32 v12, v39, v12                             // dst = tmpSrc | dst
// src=29, dst=26
// 5, 0, 3, 2, 26, 29
// srcLo=0, dstLo=1
v_lshrrev_b32 v13, 0x10, v14                       // hi16 -> lo16
// src=30, dst=27
// 5, 0, 3, 3, 27, 30
// srcLo=1, dstLo=0
v_and_b32 v13, 0x0000FFFF, v13                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v15                       // left shift src 16 bits
v_or_b32 v13, v39, v13                             // dst = tmpSrc | dst
// src=31, dst=28
// 5, 0, 3, 4, 28, 31
// srcLo=0, dstLo=1
v_lshrrev_b32 v14, 0x10, v15                       // hi16 -> lo16
// src=35, dst=32
// 5, 0, 4, 0, 32, 35
// srcLo=0, dstLo=1
v_lshrrev_b32 v16, 0x10, v17                       // hi16 -> lo16
// src=36, dst=33
// 5, 0, 4, 1, 33, 36
// srcLo=1, dstLo=0
v_and_b32 v16, 0x0000FFFF, v16                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v18                       // left shift src 16 bits
v_or_b32 v16, v39, v16                             // dst = tmpSrc | dst
// src=37, dst=34
// 5, 0, 4, 2, 34, 37
// srcLo=0, dstLo=1
v_lshrrev_b32 v17, 0x10, v18                       // hi16 -> lo16
// src=38, dst=35
// 5, 0, 4, 3, 35, 38
// srcLo=1, dstLo=0
v_and_b32 v17, 0x0000FFFF, v17                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v19                       // left shift src 16 bits
v_or_b32 v17, v39, v17                             // dst = tmpSrc | dst
// src=39, dst=36
// 5, 0, 4, 4, 36, 39
// srcLo=0, dstLo=1
v_lshrrev_b32 v18, 0x10, v19                       // hi16 -> lo16
// src=43, dst=40
// 5, 0, 5, 0, 40, 43
// srcLo=0, dstLo=1
v_lshrrev_b32 v20, 0x10, v21                       // hi16 -> lo16
// src=44, dst=41
// 5, 0, 5, 1, 41, 44
// srcLo=1, dstLo=0
v_and_b32 v20, 0x0000FFFF, v20                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v22                       // left shift src 16 bits
v_or_b32 v20, v39, v20                             // dst = tmpSrc | dst
// src=45, dst=42
// 5, 0, 5, 2, 42, 45
// srcLo=0, dstLo=1
v_lshrrev_b32 v21, 0x10, v22                       // hi16 -> lo16
// src=46, dst=43
// 5, 0, 5, 3, 43, 46
// srcLo=1, dstLo=0
v_and_b32 v21, 0x0000FFFF, v21                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v23                       // left shift src 16 bits
v_or_b32 v21, v39, v21                             // dst = tmpSrc | dst
// src=47, dst=44
// 5, 0, 5, 4, 44, 47
// srcLo=0, dstLo=1
v_lshrrev_b32 v22, 0x10, v23                       // hi16 -> lo16
// src=51, dst=48
// 5, 0, 6, 0, 48, 51
// srcLo=0, dstLo=1
v_lshrrev_b32 v24, 0x10, v25                       // hi16 -> lo16
// src=52, dst=49
// 5, 0, 6, 1, 49, 52
// srcLo=1, dstLo=0
v_and_b32 v24, 0x0000FFFF, v24                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v26                       // left shift src 16 bits
v_or_b32 v24, v39, v24                             // dst = tmpSrc | dst
// src=53, dst=50
// 5, 0, 6, 2, 50, 53
// srcLo=0, dstLo=1
v_lshrrev_b32 v25, 0x10, v26                       // hi16 -> lo16
// src=54, dst=51
// 5, 0, 6, 3, 51, 54
// srcLo=1, dstLo=0
v_and_b32 v25, 0x0000FFFF, v25                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v27                       // left shift src 16 bits
v_or_b32 v25, v39, v25                             // dst = tmpSrc | dst
// src=55, dst=52
// 5, 0, 6, 4, 52, 55
// srcLo=0, dstLo=1
v_lshrrev_b32 v26, 0x10, v27                       // hi16 -> lo16
// src=59, dst=56
// 5, 0, 7, 0, 56, 59
// srcLo=0, dstLo=1
v_lshrrev_b32 v28, 0x10, v29                       // hi16 -> lo16
// src=60, dst=57
// 5, 0, 7, 1, 57, 60
// srcLo=1, dstLo=0
v_and_b32 v28, 0x0000FFFF, v28                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v30                       // left shift src 16 bits
v_or_b32 v28, v39, v28                             // dst = tmpSrc | dst
// src=61, dst=58
// 5, 0, 7, 2, 58, 61
// srcLo=0, dstLo=1
v_lshrrev_b32 v29, 0x10, v30                       // hi16 -> lo16
// src=62, dst=59
// 5, 0, 7, 3, 59, 62
// srcLo=1, dstLo=0
v_and_b32 v29, 0x0000FFFF, v29                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v31                       // left shift src 16 bits
v_or_b32 v29, v39, v29                             // dst = tmpSrc | dst
// src=63, dst=60
// 5, 0, 7, 4, 60, 63
// srcLo=0, dstLo=1
v_lshrrev_b32 v30, 0x10, v31                       // hi16 -> lo16
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0043                                // done shifting

/******************************************/
/* shift d0 r=6                           */
/******************************************/
label_0039:
v_cmp_eq_u32 vcc_lo, v40, 0x0                      // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0040                         // shift d0, r=6, v=0

/* shift d0 r=6 v=0 */
label_0040:
_v_cmpx_eq_u32 s53, v38, v37                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=2, dst=0
// 6, 0, 0, 0, 0, 2
v_mov_b32 v0, v1                                   // rC[0+0*VW+0*TT0I] = rC[2+0*VW+0*TT0I]
// src=3, dst=1
// 6, 0, 0, 1, 1, 3
// src=4, dst=2
// 6, 0, 0, 2, 2, 4
v_mov_b32 v1, v2                                   // rC[2+0*VW+0*TT0I] = rC[4+0*VW+0*TT0I]
// src=5, dst=3
// 6, 0, 0, 3, 3, 5
// src=6, dst=4
// 6, 0, 0, 4, 4, 6
v_mov_b32 v2, v3                                   // rC[4+0*VW+0*TT0I] = rC[6+0*VW+0*TT0I]
// src=7, dst=5
// 6, 0, 0, 5, 5, 7
// src=10, dst=8
// 6, 0, 1, 0, 8, 10
v_mov_b32 v4, v5                                   // rC[0+0*VW+1*TT0I] = rC[2+0*VW+1*TT0I]
// src=11, dst=9
// 6, 0, 1, 1, 9, 11
// src=12, dst=10
// 6, 0, 1, 2, 10, 12
v_mov_b32 v5, v6                                   // rC[2+0*VW+1*TT0I] = rC[4+0*VW+1*TT0I]
// src=13, dst=11
// 6, 0, 1, 3, 11, 13
// src=14, dst=12
// 6, 0, 1, 4, 12, 14
v_mov_b32 v6, v7                                   // rC[4+0*VW+1*TT0I] = rC[6+0*VW+1*TT0I]
// src=15, dst=13
// 6, 0, 1, 5, 13, 15
// src=18, dst=16
// 6, 0, 2, 0, 16, 18
v_mov_b32 v8, v9                                   // rC[0+0*VW+2*TT0I] = rC[2+0*VW+2*TT0I]
// src=19, dst=17
// 6, 0, 2, 1, 17, 19
// src=20, dst=18
// 6, 0, 2, 2, 18, 20
v_mov_b32 v9, v10                                  // rC[2+0*VW+2*TT0I] = rC[4+0*VW+2*TT0I]
// src=21, dst=19
// 6, 0, 2, 3, 19, 21
// src=22, dst=20
// 6, 0, 2, 4, 20, 22
v_mov_b32 v10, v11                                 // rC[4+0*VW+2*TT0I] = rC[6+0*VW+2*TT0I]
// src=23, dst=21
// 6, 0, 2, 5, 21, 23
// src=26, dst=24
// 6, 0, 3, 0, 24, 26
v_mov_b32 v12, v13                                 // rC[0+0*VW+3*TT0I] = rC[2+0*VW+3*TT0I]
// src=27, dst=25
// 6, 0, 3, 1, 25, 27
// src=28, dst=26
// 6, 0, 3, 2, 26, 28
v_mov_b32 v13, v14                                 // rC[2+0*VW+3*TT0I] = rC[4+0*VW+3*TT0I]
// src=29, dst=27
// 6, 0, 3, 3, 27, 29
// src=30, dst=28
// 6, 0, 3, 4, 28, 30
v_mov_b32 v14, v15                                 // rC[4+0*VW+3*TT0I] = rC[6+0*VW+3*TT0I]
// src=31, dst=29
// 6, 0, 3, 5, 29, 31
// src=34, dst=32
// 6, 0, 4, 0, 32, 34
v_mov_b32 v16, v17                                 // rC[0+0*VW+4*TT0I] = rC[2+0*VW+4*TT0I]
// src=35, dst=33
// 6, 0, 4, 1, 33, 35
// src=36, dst=34
// 6, 0, 4, 2, 34, 36
v_mov_b32 v17, v18                                 // rC[2+0*VW+4*TT0I] = rC[4+0*VW+4*TT0I]
// src=37, dst=35
// 6, 0, 4, 3, 35, 37
// src=38, dst=36
// 6, 0, 4, 4, 36, 38
v_mov_b32 v18, v19                                 // rC[4+0*VW+4*TT0I] = rC[6+0*VW+4*TT0I]
// src=39, dst=37
// 6, 0, 4, 5, 37, 39
// src=42, dst=40
// 6, 0, 5, 0, 40, 42
v_mov_b32 v20, v21                                 // rC[0+0*VW+5*TT0I] = rC[2+0*VW+5*TT0I]
// src=43, dst=41
// 6, 0, 5, 1, 41, 43
// src=44, dst=42
// 6, 0, 5, 2, 42, 44
v_mov_b32 v21, v22                                 // rC[2+0*VW+5*TT0I] = rC[4+0*VW+5*TT0I]
// src=45, dst=43
// 6, 0, 5, 3, 43, 45
// src=46, dst=44
// 6, 0, 5, 4, 44, 46
v_mov_b32 v22, v23                                 // rC[4+0*VW+5*TT0I] = rC[6+0*VW+5*TT0I]
// src=47, dst=45
// 6, 0, 5, 5, 45, 47
// src=50, dst=48
// 6, 0, 6, 0, 48, 50
v_mov_b32 v24, v25                                 // rC[0+0*VW+6*TT0I] = rC[2+0*VW+6*TT0I]
// src=51, dst=49
// 6, 0, 6, 1, 49, 51
// src=52, dst=50
// 6, 0, 6, 2, 50, 52
v_mov_b32 v25, v26                                 // rC[2+0*VW+6*TT0I] = rC[4+0*VW+6*TT0I]
// src=53, dst=51
// 6, 0, 6, 3, 51, 53
// src=54, dst=52
// 6, 0, 6, 4, 52, 54
v_mov_b32 v26, v27                                 // rC[4+0*VW+6*TT0I] = rC[6+0*VW+6*TT0I]
// src=55, dst=53
// 6, 0, 6, 5, 53, 55
// src=58, dst=56
// 6, 0, 7, 0, 56, 58
v_mov_b32 v28, v29                                 // rC[0+0*VW+7*TT0I] = rC[2+0*VW+7*TT0I]
// src=59, dst=57
// 6, 0, 7, 1, 57, 59
// src=60, dst=58
// 6, 0, 7, 2, 58, 60
v_mov_b32 v29, v30                                 // rC[2+0*VW+7*TT0I] = rC[4+0*VW+7*TT0I]
// src=61, dst=59
// 6, 0, 7, 3, 59, 61
// src=62, dst=60
// 6, 0, 7, 4, 60, 62
v_mov_b32 v30, v31                                 // rC[4+0*VW+7*TT0I] = rC[6+0*VW+7*TT0I]
// src=63, dst=61
// 6, 0, 7, 5, 61, 63
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0043                                // done shifting

/******************************************/
/* shift d0 r=7                           */
/******************************************/
label_0041:
v_cmp_eq_u32 vcc_lo, v40, 0x0                      // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0042                         // shift d0, r=7, v=0

/* shift d0 r=7 v=0 */
label_0042:
_v_cmpx_eq_u32 s53, v38, v37                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=1, dst=0
// 7, 0, 0, 0, 0, 1
// srcLo=0, dstLo=1
v_lshrrev_b32 v0, 0x10, v0                         // hi16 -> lo16
// src=2, dst=1
// 7, 0, 0, 1, 1, 2
// srcLo=1, dstLo=0
v_and_b32 v0, 0x0000FFFF, v0                       // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v1                        // left shift src 16 bits
v_or_b32 v0, v39, v0                               // dst = tmpSrc | dst
// src=3, dst=2
// 7, 0, 0, 2, 2, 3
// srcLo=0, dstLo=1
v_lshrrev_b32 v1, 0x10, v1                         // hi16 -> lo16
// src=4, dst=3
// 7, 0, 0, 3, 3, 4
// srcLo=1, dstLo=0
v_and_b32 v1, 0x0000FFFF, v1                       // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v2                        // left shift src 16 bits
v_or_b32 v1, v39, v1                               // dst = tmpSrc | dst
// src=5, dst=4
// 7, 0, 0, 4, 4, 5
// srcLo=0, dstLo=1
v_lshrrev_b32 v2, 0x10, v2                         // hi16 -> lo16
// src=6, dst=5
// 7, 0, 0, 5, 5, 6
// srcLo=1, dstLo=0
v_and_b32 v2, 0x0000FFFF, v2                       // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v3                        // left shift src 16 bits
v_or_b32 v2, v39, v2                               // dst = tmpSrc | dst
// src=7, dst=6
// 7, 0, 0, 6, 6, 7
// srcLo=0, dstLo=1
v_lshrrev_b32 v3, 0x10, v3                         // hi16 -> lo16
// src=9, dst=8
// 7, 0, 1, 0, 8, 9
// srcLo=0, dstLo=1
v_lshrrev_b32 v4, 0x10, v4                         // hi16 -> lo16
// src=10, dst=9
// 7, 0, 1, 1, 9, 10
// srcLo=1, dstLo=0
v_and_b32 v4, 0x0000FFFF, v4                       // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v5                        // left shift src 16 bits
v_or_b32 v4, v39, v4                               // dst = tmpSrc | dst
// src=11, dst=10
// 7, 0, 1, 2, 10, 11
// srcLo=0, dstLo=1
v_lshrrev_b32 v5, 0x10, v5                         // hi16 -> lo16
// src=12, dst=11
// 7, 0, 1, 3, 11, 12
// srcLo=1, dstLo=0
v_and_b32 v5, 0x0000FFFF, v5                       // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v6                        // left shift src 16 bits
v_or_b32 v5, v39, v5                               // dst = tmpSrc | dst
// src=13, dst=12
// 7, 0, 1, 4, 12, 13
// srcLo=0, dstLo=1
v_lshrrev_b32 v6, 0x10, v6                         // hi16 -> lo16
// src=14, dst=13
// 7, 0, 1, 5, 13, 14
// srcLo=1, dstLo=0
v_and_b32 v6, 0x0000FFFF, v6                       // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v7                        // left shift src 16 bits
v_or_b32 v6, v39, v6                               // dst = tmpSrc | dst
// src=15, dst=14
// 7, 0, 1, 6, 14, 15
// srcLo=0, dstLo=1
v_lshrrev_b32 v7, 0x10, v7                         // hi16 -> lo16
// src=17, dst=16
// 7, 0, 2, 0, 16, 17
// srcLo=0, dstLo=1
v_lshrrev_b32 v8, 0x10, v8                         // hi16 -> lo16
// src=18, dst=17
// 7, 0, 2, 1, 17, 18
// srcLo=1, dstLo=0
v_and_b32 v8, 0x0000FFFF, v8                       // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v9                        // left shift src 16 bits
v_or_b32 v8, v39, v8                               // dst = tmpSrc | dst
// src=19, dst=18
// 7, 0, 2, 2, 18, 19
// srcLo=0, dstLo=1
v_lshrrev_b32 v9, 0x10, v9                         // hi16 -> lo16
// src=20, dst=19
// 7, 0, 2, 3, 19, 20
// srcLo=1, dstLo=0
v_and_b32 v9, 0x0000FFFF, v9                       // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v10                       // left shift src 16 bits
v_or_b32 v9, v39, v9                               // dst = tmpSrc | dst
// src=21, dst=20
// 7, 0, 2, 4, 20, 21
// srcLo=0, dstLo=1
v_lshrrev_b32 v10, 0x10, v10                       // hi16 -> lo16
// src=22, dst=21
// 7, 0, 2, 5, 21, 22
// srcLo=1, dstLo=0
v_and_b32 v10, 0x0000FFFF, v10                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v11                       // left shift src 16 bits
v_or_b32 v10, v39, v10                             // dst = tmpSrc | dst
// src=23, dst=22
// 7, 0, 2, 6, 22, 23
// srcLo=0, dstLo=1
v_lshrrev_b32 v11, 0x10, v11                       // hi16 -> lo16
// src=25, dst=24
// 7, 0, 3, 0, 24, 25
// srcLo=0, dstLo=1
v_lshrrev_b32 v12, 0x10, v12                       // hi16 -> lo16
// src=26, dst=25
// 7, 0, 3, 1, 25, 26
// srcLo=1, dstLo=0
v_and_b32 v12, 0x0000FFFF, v12                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v13                       // left shift src 16 bits
v_or_b32 v12, v39, v12                             // dst = tmpSrc | dst
// src=27, dst=26
// 7, 0, 3, 2, 26, 27
// srcLo=0, dstLo=1
v_lshrrev_b32 v13, 0x10, v13                       // hi16 -> lo16
// src=28, dst=27
// 7, 0, 3, 3, 27, 28
// srcLo=1, dstLo=0
v_and_b32 v13, 0x0000FFFF, v13                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v14                       // left shift src 16 bits
v_or_b32 v13, v39, v13                             // dst = tmpSrc | dst
// src=29, dst=28
// 7, 0, 3, 4, 28, 29
// srcLo=0, dstLo=1
v_lshrrev_b32 v14, 0x10, v14                       // hi16 -> lo16
// src=30, dst=29
// 7, 0, 3, 5, 29, 30
// srcLo=1, dstLo=0
v_and_b32 v14, 0x0000FFFF, v14                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v15                       // left shift src 16 bits
v_or_b32 v14, v39, v14                             // dst = tmpSrc | dst
// src=31, dst=30
// 7, 0, 3, 6, 30, 31
// srcLo=0, dstLo=1
v_lshrrev_b32 v15, 0x10, v15                       // hi16 -> lo16
// src=33, dst=32
// 7, 0, 4, 0, 32, 33
// srcLo=0, dstLo=1
v_lshrrev_b32 v16, 0x10, v16                       // hi16 -> lo16
// src=34, dst=33
// 7, 0, 4, 1, 33, 34
// srcLo=1, dstLo=0
v_and_b32 v16, 0x0000FFFF, v16                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v17                       // left shift src 16 bits
v_or_b32 v16, v39, v16                             // dst = tmpSrc | dst
// src=35, dst=34
// 7, 0, 4, 2, 34, 35
// srcLo=0, dstLo=1
v_lshrrev_b32 v17, 0x10, v17                       // hi16 -> lo16
// src=36, dst=35
// 7, 0, 4, 3, 35, 36
// srcLo=1, dstLo=0
v_and_b32 v17, 0x0000FFFF, v17                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v18                       // left shift src 16 bits
v_or_b32 v17, v39, v17                             // dst = tmpSrc | dst
// src=37, dst=36
// 7, 0, 4, 4, 36, 37
// srcLo=0, dstLo=1
v_lshrrev_b32 v18, 0x10, v18                       // hi16 -> lo16
// src=38, dst=37
// 7, 0, 4, 5, 37, 38
// srcLo=1, dstLo=0
v_and_b32 v18, 0x0000FFFF, v18                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v19                       // left shift src 16 bits
v_or_b32 v18, v39, v18                             // dst = tmpSrc | dst
// src=39, dst=38
// 7, 0, 4, 6, 38, 39
// srcLo=0, dstLo=1
v_lshrrev_b32 v19, 0x10, v19                       // hi16 -> lo16
// src=41, dst=40
// 7, 0, 5, 0, 40, 41
// srcLo=0, dstLo=1
v_lshrrev_b32 v20, 0x10, v20                       // hi16 -> lo16
// src=42, dst=41
// 7, 0, 5, 1, 41, 42
// srcLo=1, dstLo=0
v_and_b32 v20, 0x0000FFFF, v20                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v21                       // left shift src 16 bits
v_or_b32 v20, v39, v20                             // dst = tmpSrc | dst
// src=43, dst=42
// 7, 0, 5, 2, 42, 43
// srcLo=0, dstLo=1
v_lshrrev_b32 v21, 0x10, v21                       // hi16 -> lo16
// src=44, dst=43
// 7, 0, 5, 3, 43, 44
// srcLo=1, dstLo=0
v_and_b32 v21, 0x0000FFFF, v21                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v22                       // left shift src 16 bits
v_or_b32 v21, v39, v21                             // dst = tmpSrc | dst
// src=45, dst=44
// 7, 0, 5, 4, 44, 45
// srcLo=0, dstLo=1
v_lshrrev_b32 v22, 0x10, v22                       // hi16 -> lo16
// src=46, dst=45
// 7, 0, 5, 5, 45, 46
// srcLo=1, dstLo=0
v_and_b32 v22, 0x0000FFFF, v22                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v23                       // left shift src 16 bits
v_or_b32 v22, v39, v22                             // dst = tmpSrc | dst
// src=47, dst=46
// 7, 0, 5, 6, 46, 47
// srcLo=0, dstLo=1
v_lshrrev_b32 v23, 0x10, v23                       // hi16 -> lo16
// src=49, dst=48
// 7, 0, 6, 0, 48, 49
// srcLo=0, dstLo=1
v_lshrrev_b32 v24, 0x10, v24                       // hi16 -> lo16
// src=50, dst=49
// 7, 0, 6, 1, 49, 50
// srcLo=1, dstLo=0
v_and_b32 v24, 0x0000FFFF, v24                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v25                       // left shift src 16 bits
v_or_b32 v24, v39, v24                             // dst = tmpSrc | dst
// src=51, dst=50
// 7, 0, 6, 2, 50, 51
// srcLo=0, dstLo=1
v_lshrrev_b32 v25, 0x10, v25                       // hi16 -> lo16
// src=52, dst=51
// 7, 0, 6, 3, 51, 52
// srcLo=1, dstLo=0
v_and_b32 v25, 0x0000FFFF, v25                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v26                       // left shift src 16 bits
v_or_b32 v25, v39, v25                             // dst = tmpSrc | dst
// src=53, dst=52
// 7, 0, 6, 4, 52, 53
// srcLo=0, dstLo=1
v_lshrrev_b32 v26, 0x10, v26                       // hi16 -> lo16
// src=54, dst=53
// 7, 0, 6, 5, 53, 54
// srcLo=1, dstLo=0
v_and_b32 v26, 0x0000FFFF, v26                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v27                       // left shift src 16 bits
v_or_b32 v26, v39, v26                             // dst = tmpSrc | dst
// src=55, dst=54
// 7, 0, 6, 6, 54, 55
// srcLo=0, dstLo=1
v_lshrrev_b32 v27, 0x10, v27                       // hi16 -> lo16
// src=57, dst=56
// 7, 0, 7, 0, 56, 57
// srcLo=0, dstLo=1
v_lshrrev_b32 v28, 0x10, v28                       // hi16 -> lo16
// src=58, dst=57
// 7, 0, 7, 1, 57, 58
// srcLo=1, dstLo=0
v_and_b32 v28, 0x0000FFFF, v28                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v29                       // left shift src 16 bits
v_or_b32 v28, v39, v28                             // dst = tmpSrc | dst
// src=59, dst=58
// 7, 0, 7, 2, 58, 59
// srcLo=0, dstLo=1
v_lshrrev_b32 v29, 0x10, v29                       // hi16 -> lo16
// src=60, dst=59
// 7, 0, 7, 3, 59, 60
// srcLo=1, dstLo=0
v_and_b32 v29, 0x0000FFFF, v29                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v30                       // left shift src 16 bits
v_or_b32 v29, v39, v29                             // dst = tmpSrc | dst
// src=61, dst=60
// 7, 0, 7, 4, 60, 61
// srcLo=0, dstLo=1
v_lshrrev_b32 v30, 0x10, v30                       // hi16 -> lo16
// src=62, dst=61
// 7, 0, 7, 5, 61, 62
// srcLo=1, dstLo=0
v_and_b32 v30, 0x0000FFFF, v30                     // zero out dst hi16
v_lshlrev_b32 v39, 0x10, v31                       // left shift src 16 bits
v_or_b32 v30, v39, v30                             // dst = tmpSrc | dst
// src=63, dst=62
// 7, 0, 7, 6, 62, 63
// srcLo=0, dstLo=1
v_lshrrev_b32 v31, 0x10, v31                       // hi16 -> lo16
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0043                                // done shifting
label_0043: // end shift0



/* not-LocalSplitU: global write indices */

/* computeStoreVgprs */
v_lshrrev_b32 v35, 4, v[vgprSerial]                // v35 = v[vgprSerial] / 16
v_and_b32 v34, 15, v[vgprSerial]                   // v34 = v[vgprSerial] % 16
v_lshlrev_b32 v34, 0x3, v34                        // v34 = v34 * 8
v_lshlrev_b32 v35, 0x3, v35                        // v35 = v35 * 8
v_mul_lo_u32 v36, v35, s[sgprStrideC1J]            // rowStart vgpr
v_mul_lo_u32 v37, v35, s[sgprStrideD1J]            // rowStart vgpr

s_mul_i32 s54, 0x80, s[sgprWorkGroup0]             // s54 = wg0*MT0
_v_add_co_u32 v34, vcc_lo, s54, v34                // coord0 = tid0*VW + wg0*MT0
s_mul_i32 s56, 0x40, s[sgprWorkGroup1]             // <- wg1*MT1
_v_add_co_u32 v35, vcc_lo, s56, v35                // coord1 = tid1*VW + wg1*MT1


/* not-LocalSplitU: global write */

s_cmpk_eq_u32 s[sgprBeta], 0x0                     // Beta == 0
s_cbranch_scc0 GW_Beta_59                          // Branch if Beta is not zero

s_and_b32 s54, 127, s[sgprSizeI]                   // s54 = s[sgprSizeI] % 128
s_add_u32 s55, -0x1, s[sgprNumWorkGroups0]         // 
s_cmp_ge_u32 s[sgprWorkGroup0], s55                // wg0 >= nwg0-1 ?
s_cselect_b32 s54, s54, 0                          // set rMT0
s_cmpk_gt_u32 s54, 0x0                             // rMT0 > 0
s_cbranch_scc1 GW_B0_E1_50                         // jump if edges required
s_and_b32 s54, 63, s[sgprSizeJ]                    // s54 = s[sgprSizeJ] % 64
s_add_u32 s55, -0x1, s[sgprNumWorkGroups1]         // 
s_cmp_ge_u32 s[sgprWorkGroup1], s55                // wg1 >= nwg1-1
s_cselect_b32 s54, s54, 0                          // set rMT1
s_cmpk_gt_u32 s54, 0x0                             // rMT1 > 0
s_cbranch_scc1 GW_B0_E1_50                         // jump if edges required
GW_B0_E0_47:

/* edge=0, allocate 1 sgpr. perBatchTmpS=1 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=8 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Alpha Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw8); (0,0,1,0:vw8); (0,0,2,0:vw8); (0,0,3,0:vw8); (0,0,4,0:vw8); (0,0,5,0:vw8); (0,0,6,0:vw8); (0,0,7,0:vw8) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
/* (d1,vc1,d0,vc0)=(0,4,0,0) */
/* (d1,vc1,d0,vc0)=(0,5,0,0) */
/* (d1,vc1,d0,vc0)=(0,6,0,0) */
/* (d1,vc1,d0,vc0)=(0,7,0,0) */
_v_add_lshl_u32 v40, v37, v34, 0x1                 // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=34, coord0Vgpr=34

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0), (0, 0, 2, 0), (0, 0, 3, 0), (0, 0, 4, 0), (0, 0, 5, 0), (0, 0, 6, 0), (0, 0, 7, 0)] */
v_pk_mul_f16 v[vgprValuC+0], s[sgprAlpha], v[vgprValuC+0] // *= alpha sumIdx=0 vi=1
v_pk_mul_f16 v[vgprValuC+1], s[sgprAlpha], v[vgprValuC+1] // *= alpha sumIdx=0 vi=3
v_pk_mul_f16 v[vgprValuC+2], s[sgprAlpha], v[vgprValuC+2] // *= alpha sumIdx=0 vi=5
v_pk_mul_f16 v[vgprValuC+3], s[sgprAlpha], v[vgprValuC+3] // *= alpha sumIdx=0 vi=7
v_pk_mul_f16 v[vgprValuC+4], s[sgprAlpha], v[vgprValuC+4] // *= alpha sumIdx=8 vi=1
v_pk_mul_f16 v[vgprValuC+5], s[sgprAlpha], v[vgprValuC+5] // *= alpha sumIdx=8 vi=3
v_pk_mul_f16 v[vgprValuC+6], s[sgprAlpha], v[vgprValuC+6] // *= alpha sumIdx=8 vi=5
v_pk_mul_f16 v[vgprValuC+7], s[sgprAlpha], v[vgprValuC+7] // *= alpha sumIdx=8 vi=7
v_pk_mul_f16 v[vgprValuC+8], s[sgprAlpha], v[vgprValuC+8] // *= alpha sumIdx=16 vi=1
v_pk_mul_f16 v[vgprValuC+9], s[sgprAlpha], v[vgprValuC+9] // *= alpha sumIdx=16 vi=3
v_pk_mul_f16 v[vgprValuC+10], s[sgprAlpha], v[vgprValuC+10] // *= alpha sumIdx=16 vi=5
v_pk_mul_f16 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha sumIdx=16 vi=7
v_pk_mul_f16 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha sumIdx=24 vi=1
v_pk_mul_f16 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha sumIdx=24 vi=3
v_pk_mul_f16 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha sumIdx=24 vi=5
v_pk_mul_f16 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha sumIdx=24 vi=7
v_pk_mul_f16 v[vgprValuC+16], s[sgprAlpha], v[vgprValuC+16] // *= alpha sumIdx=32 vi=1
v_pk_mul_f16 v[vgprValuC+17], s[sgprAlpha], v[vgprValuC+17] // *= alpha sumIdx=32 vi=3
v_pk_mul_f16 v[vgprValuC+18], s[sgprAlpha], v[vgprValuC+18] // *= alpha sumIdx=32 vi=5
v_pk_mul_f16 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+19] // *= alpha sumIdx=32 vi=7
v_pk_mul_f16 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+20] // *= alpha sumIdx=40 vi=1
v_pk_mul_f16 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha sumIdx=40 vi=3
v_pk_mul_f16 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha sumIdx=40 vi=5
v_pk_mul_f16 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+23] // *= alpha sumIdx=40 vi=7
v_pk_mul_f16 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha sumIdx=48 vi=1
v_pk_mul_f16 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha sumIdx=48 vi=3
v_pk_mul_f16 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha sumIdx=48 vi=5
v_pk_mul_f16 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha sumIdx=48 vi=7
v_pk_mul_f16 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha sumIdx=56 vi=1
v_pk_mul_f16 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha sumIdx=56 vi=3
v_pk_mul_f16 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha sumIdx=56 vi=5
v_pk_mul_f16 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha sumIdx=56 vi=7

/* apply mask, calc new C and issue writes */
_buffer_store_b128 v[0:3], v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[4:7], v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[8:11], v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[12:15], v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[16:19], v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[20:23], v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[24:27], v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[28:31], v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_branch label_GW_End_58                           // jump to end
GW_B0_E1_50:

/* edge=1, allocate 3 sgpr. perBatchTmpS=2 perBatchMaskS=1 perElementMaskS=0 elementsPerBatch=28 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,0,0,1:vw1); (0,0,0,2:vw1); (0,0,0,3:vw1); (0,0,0,4:vw1); (0,0,0,5:vw1); (0,0,0,6:vw1); (0,0,0,7:vw1); (0,0,1,0:vw1); (0,0,1,1:vw1); (0,0,1,2:vw1); (0,0,1,3:vw1); (0,0,1,4:vw1); (0,0,1,5:vw1); (0,0,1,6:vw1); (0,0,1,7:vw1); (0,0,2,0:vw1); (0,0,2,1:vw1); (0,0,2,2:vw1); (0,0,2,3:vw1); (0,0,2,4:vw1); (0,0,2,5:vw1); (0,0,2,6:vw1); (0,0,2,7:vw1); (0,0,3,0:vw1); (0,0,3,1:vw1); (0,0,3,2:vw1); (0,0,3,3:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s54, v34, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v40, v37, v34, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v40, -1, v40, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,1) */
_v_add_co_u32 v38, vcc_lo, v34, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v41, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v41, -1, v41, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,2) */
_v_add_co_u32 v38, vcc_lo, v34, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v42, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, -1, v42, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,3) */
_v_add_co_u32 v38, vcc_lo, v34, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v43, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v43, -1, v43, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,4) */
_v_add_co_u32 v38, vcc_lo, v34, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v44, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v44, -1, v44, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,5) */
_v_add_co_u32 v38, vcc_lo, v34, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v45, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v45, -1, v45, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,6) */
_v_add_co_u32 v38, vcc_lo, v34, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v46, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v46, -1, v46, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,7) */
_v_add_co_u32 v38, vcc_lo, v34, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v47, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v47, -1, v47, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
_v_add_co_u32 v35, vcc_lo, v35, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v36, v36, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v37, v37, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v34, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v48, v37, v34, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v48, -1, v48, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,1) */
_v_add_co_u32 v38, vcc_lo, v34, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v49, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v49, -1, v49, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,2) */
_v_add_co_u32 v38, vcc_lo, v34, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v50, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v50, -1, v50, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,3) */
_v_add_co_u32 v38, vcc_lo, v34, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v51, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v51, -1, v51, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,4) */
_v_add_co_u32 v38, vcc_lo, v34, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v52, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v52, -1, v52, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,5) */
_v_add_co_u32 v38, vcc_lo, v34, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v53, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v53, -1, v53, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,6) */
_v_add_co_u32 v38, vcc_lo, v34, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v54, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v54, -1, v54, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,7) */
_v_add_co_u32 v38, vcc_lo, v34, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v55, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v55, -1, v55, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
_v_add_co_u32 v35, vcc_lo, v35, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v36, v36, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v37, v37, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v34, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v56, v37, v34, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v56, -1, v56, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,1) */
_v_add_co_u32 v38, vcc_lo, v34, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v57, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v57, -1, v57, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,2) */
_v_add_co_u32 v38, vcc_lo, v34, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v58, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v58, -1, v58, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,3) */
_v_add_co_u32 v38, vcc_lo, v34, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v59, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v59, -1, v59, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,4) */
_v_add_co_u32 v38, vcc_lo, v34, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v60, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v60, -1, v60, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,5) */
_v_add_co_u32 v38, vcc_lo, v34, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v61, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v61, -1, v61, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,6) */
_v_add_co_u32 v38, vcc_lo, v34, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v62, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v62, -1, v62, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,7) */
_v_add_co_u32 v38, vcc_lo, v34, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v63, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v63, -1, v63, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
_v_add_co_u32 v35, vcc_lo, v35, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v36, v36, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v37, v37, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v34, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v64, v37, v34, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v64, -1, v64, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,1) */
_v_add_co_u32 v38, vcc_lo, v34, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v65, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v65, -1, v65, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,2) */
_v_add_co_u32 v38, vcc_lo, v34, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v66, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v66, -1, v66, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,3) */
_v_add_co_u32 v38, vcc_lo, v34, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v67, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v67, -1, v67, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 0, 1), (0, 0, 0, 2), (0, 0, 0, 3), (0, 0, 0, 4), (0, 0, 0, 5), (0, 0, 0, 6), (0, 0, 0, 7), (0, 0, 1, 0), (0, 0, 1, 1), (0, 0, 1, 2), (0, 0, 1, 3), (0, 0, 1, 4), (0, 0, 1, 5), (0, 0, 1, 6), (0, 0, 1, 7), (0, 0, 2, 0), (0, 0, 2, 1), (0, 0, 2, 2), (0, 0, 2, 3), (0, 0, 2, 4), (0, 0, 2, 5), (0, 0, 2, 6), (0, 0, 2, 7), (0, 0, 3, 0), (0, 0, 3, 1), (0, 0, 3, 2), (0, 0, 3, 3)] */
v_pk_mul_f16 v[vgprValuC+0], s[sgprAlpha], v[vgprValuC+0] // *= alpha sumIdx=1 vi=0
v_pk_mul_f16 v[vgprValuC+1], s[sgprAlpha], v[vgprValuC+1] // *= alpha sumIdx=3 vi=0
v_pk_mul_f16 v[vgprValuC+2], s[sgprAlpha], v[vgprValuC+2] // *= alpha sumIdx=5 vi=0
v_pk_mul_f16 v[vgprValuC+3], s[sgprAlpha], v[vgprValuC+3] // *= alpha sumIdx=7 vi=0
v_pk_mul_f16 v[vgprValuC+4], s[sgprAlpha], v[vgprValuC+4] // *= alpha sumIdx=9 vi=0
v_pk_mul_f16 v[vgprValuC+5], s[sgprAlpha], v[vgprValuC+5] // *= alpha sumIdx=11 vi=0
v_pk_mul_f16 v[vgprValuC+6], s[sgprAlpha], v[vgprValuC+6] // *= alpha sumIdx=13 vi=0
v_pk_mul_f16 v[vgprValuC+7], s[sgprAlpha], v[vgprValuC+7] // *= alpha sumIdx=15 vi=0
v_pk_mul_f16 v[vgprValuC+8], s[sgprAlpha], v[vgprValuC+8] // *= alpha sumIdx=17 vi=0
v_pk_mul_f16 v[vgprValuC+9], s[sgprAlpha], v[vgprValuC+9] // *= alpha sumIdx=19 vi=0
v_pk_mul_f16 v[vgprValuC+10], s[sgprAlpha], v[vgprValuC+10] // *= alpha sumIdx=21 vi=0
v_pk_mul_f16 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha sumIdx=23 vi=0
v_pk_mul_f16 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha sumIdx=25 vi=0
v_pk_mul_f16 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha sumIdx=27 vi=0

/* apply mask, calc new C and issue writes */
_buffer_store_b16 v0, v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v0, v41, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v1, v42, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v1, v43, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v2, v44, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v2, v45, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v3, v46, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v3, v47, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v4, v48, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v4, v49, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v5, v50, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v5, v51, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v6, v52, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v6, v53, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v7, v54, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v7, v55, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v8, v56, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v8, v57, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v9, v58, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v9, v59, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v10, v60, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v10, v61, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v11, v62, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v11, v63, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v12, v64, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v12, v65, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v13, v66, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v13, v67, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Edge Batch #1 (d1,d0,vc1,vc0) = */
/*    (0,0,3,4:vw1); (0,0,3,5:vw1); (0,0,3,6:vw1); (0,0,3,7:vw1); (0,0,4,0:vw1); (0,0,4,1:vw1); (0,0,4,2:vw1); (0,0,4,3:vw1); (0,0,4,4:vw1); (0,0,4,5:vw1); (0,0,4,6:vw1); (0,0,4,7:vw1); (0,0,5,0:vw1); (0,0,5,1:vw1); (0,0,5,2:vw1); (0,0,5,3:vw1); (0,0,5,4:vw1); (0,0,5,5:vw1); (0,0,5,6:vw1); (0,0,5,7:vw1); (0,0,6,0:vw1); (0,0,6,1:vw1); (0,0,6,2:vw1); (0,0,6,3:vw1); (0,0,6,4:vw1); (0,0,6,5:vw1); (0,0,6,6:vw1); (0,0,6,7:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,3,0,4) */
_v_add_co_u32 v38, vcc_lo, v34, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v40, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v40, -1, v40, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,5) */
_v_add_co_u32 v38, vcc_lo, v34, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v41, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v41, -1, v41, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,6) */
_v_add_co_u32 v38, vcc_lo, v34, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v42, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, -1, v42, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,7) */
_v_add_co_u32 v38, vcc_lo, v34, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v43, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v43, -1, v43, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,0) */
_v_add_co_u32 v35, vcc_lo, v35, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v36, v36, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v37, v37, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v34, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v44, v37, v34, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v44, -1, v44, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,1) */
_v_add_co_u32 v38, vcc_lo, v34, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v45, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v45, -1, v45, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,2) */
_v_add_co_u32 v38, vcc_lo, v34, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v46, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v46, -1, v46, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,3) */
_v_add_co_u32 v38, vcc_lo, v34, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v47, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v47, -1, v47, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,4) */
_v_add_co_u32 v38, vcc_lo, v34, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v48, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v48, -1, v48, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,5) */
_v_add_co_u32 v38, vcc_lo, v34, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v49, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v49, -1, v49, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,6) */
_v_add_co_u32 v38, vcc_lo, v34, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v50, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v50, -1, v50, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,7) */
_v_add_co_u32 v38, vcc_lo, v34, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v51, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v51, -1, v51, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,0) */
_v_add_co_u32 v35, vcc_lo, v35, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v36, v36, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v37, v37, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v34, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v52, v37, v34, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v52, -1, v52, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,1) */
_v_add_co_u32 v38, vcc_lo, v34, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v53, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v53, -1, v53, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,2) */
_v_add_co_u32 v38, vcc_lo, v34, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v54, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v54, -1, v54, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,3) */
_v_add_co_u32 v38, vcc_lo, v34, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v55, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v55, -1, v55, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,4) */
_v_add_co_u32 v38, vcc_lo, v34, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v56, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v56, -1, v56, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,5) */
_v_add_co_u32 v38, vcc_lo, v34, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v57, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v57, -1, v57, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,6) */
_v_add_co_u32 v38, vcc_lo, v34, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v58, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v58, -1, v58, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,7) */
_v_add_co_u32 v38, vcc_lo, v34, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v59, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v59, -1, v59, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,0) */
_v_add_co_u32 v35, vcc_lo, v35, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v36, v36, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v37, v37, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v34, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v60, v37, v34, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v60, -1, v60, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,1) */
_v_add_co_u32 v38, vcc_lo, v34, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v61, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v61, -1, v61, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,2) */
_v_add_co_u32 v38, vcc_lo, v34, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v62, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v62, -1, v62, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,3) */
_v_add_co_u32 v38, vcc_lo, v34, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v63, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v63, -1, v63, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,4) */
_v_add_co_u32 v38, vcc_lo, v34, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v64, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v64, -1, v64, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,5) */
_v_add_co_u32 v38, vcc_lo, v34, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v65, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v65, -1, v65, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,6) */
_v_add_co_u32 v38, vcc_lo, v34, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v66, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v66, -1, v66, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,7) */
_v_add_co_u32 v38, vcc_lo, v34, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v67, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v67, -1, v67, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 3, 4), (0, 0, 3, 5), (0, 0, 3, 6), (0, 0, 3, 7), (0, 0, 4, 0), (0, 0, 4, 1), (0, 0, 4, 2), (0, 0, 4, 3), (0, 0, 4, 4), (0, 0, 4, 5), (0, 0, 4, 6), (0, 0, 4, 7), (0, 0, 5, 0), (0, 0, 5, 1), (0, 0, 5, 2), (0, 0, 5, 3), (0, 0, 5, 4), (0, 0, 5, 5), (0, 0, 5, 6), (0, 0, 5, 7), (0, 0, 6, 0), (0, 0, 6, 1), (0, 0, 6, 2), (0, 0, 6, 3), (0, 0, 6, 4), (0, 0, 6, 5), (0, 0, 6, 6), (0, 0, 6, 7)] */
v_pk_mul_f16 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha sumIdx=29 vi=0
v_pk_mul_f16 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha sumIdx=31 vi=0
v_pk_mul_f16 v[vgprValuC+16], s[sgprAlpha], v[vgprValuC+16] // *= alpha sumIdx=33 vi=0
v_pk_mul_f16 v[vgprValuC+17], s[sgprAlpha], v[vgprValuC+17] // *= alpha sumIdx=35 vi=0
v_pk_mul_f16 v[vgprValuC+18], s[sgprAlpha], v[vgprValuC+18] // *= alpha sumIdx=37 vi=0
v_pk_mul_f16 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+19] // *= alpha sumIdx=39 vi=0
v_pk_mul_f16 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+20] // *= alpha sumIdx=41 vi=0
v_pk_mul_f16 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha sumIdx=43 vi=0
v_pk_mul_f16 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha sumIdx=45 vi=0
v_pk_mul_f16 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+23] // *= alpha sumIdx=47 vi=0
v_pk_mul_f16 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha sumIdx=49 vi=0
v_pk_mul_f16 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha sumIdx=51 vi=0
v_pk_mul_f16 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha sumIdx=53 vi=0
v_pk_mul_f16 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha sumIdx=55 vi=0

/* apply mask, calc new C and issue writes */
_buffer_store_b16 v14, v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v14, v41, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v15, v42, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v15, v43, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v16, v44, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v16, v45, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v17, v46, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v17, v47, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v18, v48, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v18, v49, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v19, v50, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v19, v51, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v20, v52, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v20, v53, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v21, v54, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v21, v55, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v22, v56, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v22, v57, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v23, v58, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v23, v59, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v24, v60, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v24, v61, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v25, v62, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v25, v63, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v26, v64, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v26, v65, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v27, v66, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v27, v67, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Edge Batch #2 (d1,d0,vc1,vc0) = */
/*    (0,0,7,0:vw1); (0,0,7,1:vw1); (0,0,7,2:vw1); (0,0,7,3:vw1); (0,0,7,4:vw1); (0,0,7,5:vw1); (0,0,7,6:vw1); (0,0,7,7:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,7,0,0) */
_v_add_co_u32 v35, vcc_lo, v35, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v36, v36, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v37, v37, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v34, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v40, v37, v34, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v40, -1, v40, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,1) */
_v_add_co_u32 v38, vcc_lo, v34, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v41, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v41, -1, v41, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,2) */
_v_add_co_u32 v38, vcc_lo, v34, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v42, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, -1, v42, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,3) */
_v_add_co_u32 v38, vcc_lo, v34, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v43, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v43, -1, v43, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,4) */
_v_add_co_u32 v38, vcc_lo, v34, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v44, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v44, -1, v44, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,5) */
_v_add_co_u32 v38, vcc_lo, v34, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v45, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v45, -1, v45, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,6) */
_v_add_co_u32 v38, vcc_lo, v34, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v46, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v46, -1, v46, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,7) */
_v_add_co_u32 v38, vcc_lo, v34, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v47, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v47, -1, v47, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 7, 0), (0, 0, 7, 1), (0, 0, 7, 2), (0, 0, 7, 3), (0, 0, 7, 4), (0, 0, 7, 5), (0, 0, 7, 6), (0, 0, 7, 7)] */
v_pk_mul_f16 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha sumIdx=57 vi=0
v_pk_mul_f16 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha sumIdx=59 vi=0
v_pk_mul_f16 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha sumIdx=61 vi=0
v_pk_mul_f16 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha sumIdx=63 vi=0

/* apply mask, calc new C and issue writes */
_buffer_store_b16 v28, v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v28, v41, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v29, v42, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v29, v43, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v30, v44, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v30, v45, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v31, v46, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v31, v47, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_branch label_GW_End_58                           // jump to end
GW_Beta_59:
s_and_b32 s54, 127, s[sgprSizeI]                   // s54 = s[sgprSizeI] % 128
s_add_u32 s55, -0x1, s[sgprNumWorkGroups0]         // 
s_cmp_ge_u32 s[sgprWorkGroup0], s55                // wg0 >= nwg0-1 ?
s_cselect_b32 s54, s54, 0                          // set rMT0
s_cmpk_gt_u32 s54, 0x0                             // rMT0 > 0
s_cbranch_scc1 GW_B1_E1_57                         // jump if edges required
s_and_b32 s54, 63, s[sgprSizeJ]                    // s54 = s[sgprSizeJ] % 64
s_add_u32 s55, -0x1, s[sgprNumWorkGroups1]         // 
s_cmp_ge_u32 s[sgprWorkGroup1], s55                // wg1 >= nwg1-1
s_cselect_b32 s54, s54, 0                          // set rMT1
s_cmpk_gt_u32 s54, 0x0                             // rMT1 > 0
s_cbranch_scc1 GW_B1_E1_57                         // jump if edges required
GW_B1_E0_54:

/* edge=0, allocate 1 sgpr. perBatchTmpS=1 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=6 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Alpha Beta Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw8); (0,0,1,0:vw8); (0,0,2,0:vw8); (0,0,3,0:vw8); (0,0,4,0:vw8); (0,0,5,0:vw8) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
_v_add_lshl_u32 v41, v36, v34, 0x1                 // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=34, coord0Vgpr=34
_buffer_load_b128 v[44:47], v41, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[48:51], v41, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[52:55], v41, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[56:59], v41, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,4,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[60:63], v41, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,5,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[64:67], v41, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v40, v37, v34, 0x1                 // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=34, coord0Vgpr=34

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0), (0, 0, 2, 0), (0, 0, 3, 0), (0, 0, 4, 0), (0, 0, 5, 0)] */
v_pk_mul_f16 v[vgprValuC+0], s[sgprAlpha], v[vgprValuC+0] // *= alpha sumIdx=0 vi=1
v_pk_mul_f16 v[vgprValuC+1], s[sgprAlpha], v[vgprValuC+1] // *= alpha sumIdx=0 vi=3
v_pk_mul_f16 v[vgprValuC+2], s[sgprAlpha], v[vgprValuC+2] // *= alpha sumIdx=0 vi=5
v_pk_mul_f16 v[vgprValuC+3], s[sgprAlpha], v[vgprValuC+3] // *= alpha sumIdx=0 vi=7
v_pk_mul_f16 v[vgprValuC+4], s[sgprAlpha], v[vgprValuC+4] // *= alpha sumIdx=8 vi=1
v_pk_mul_f16 v[vgprValuC+5], s[sgprAlpha], v[vgprValuC+5] // *= alpha sumIdx=8 vi=3
v_pk_mul_f16 v[vgprValuC+6], s[sgprAlpha], v[vgprValuC+6] // *= alpha sumIdx=8 vi=5
v_pk_mul_f16 v[vgprValuC+7], s[sgprAlpha], v[vgprValuC+7] // *= alpha sumIdx=8 vi=7
v_pk_mul_f16 v[vgprValuC+8], s[sgprAlpha], v[vgprValuC+8] // *= alpha sumIdx=16 vi=1
v_pk_mul_f16 v[vgprValuC+9], s[sgprAlpha], v[vgprValuC+9] // *= alpha sumIdx=16 vi=3
v_pk_mul_f16 v[vgprValuC+10], s[sgprAlpha], v[vgprValuC+10] // *= alpha sumIdx=16 vi=5
v_pk_mul_f16 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha sumIdx=16 vi=7
v_pk_mul_f16 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha sumIdx=24 vi=1
v_pk_mul_f16 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha sumIdx=24 vi=3
v_pk_mul_f16 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha sumIdx=24 vi=5
v_pk_mul_f16 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha sumIdx=24 vi=7
v_pk_mul_f16 v[vgprValuC+16], s[sgprAlpha], v[vgprValuC+16] // *= alpha sumIdx=32 vi=1
v_pk_mul_f16 v[vgprValuC+17], s[sgprAlpha], v[vgprValuC+17] // *= alpha sumIdx=32 vi=3
v_pk_mul_f16 v[vgprValuC+18], s[sgprAlpha], v[vgprValuC+18] // *= alpha sumIdx=32 vi=5
v_pk_mul_f16 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+19] // *= alpha sumIdx=32 vi=7
v_pk_mul_f16 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+20] // *= alpha sumIdx=40 vi=1
v_pk_mul_f16 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha sumIdx=40 vi=3
v_pk_mul_f16 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha sumIdx=40 vi=5
v_pk_mul_f16 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+23] // *= alpha sumIdx=40 vi=7

/* apply mask, calc new C and issue writes */

s_waitcnt vmcnt(5)                                 // wait C (interleaved) 5 = 6 - 0 - 1
v_pk_mul_f16 v44, s[sgprBeta], v44                 // v44 = C*beta ei=0 vi=0
v_pk_add_f16 v[vgprValuC+0], v44, v[vgprValuC+0]   // sum*alpha + C*beta
v_pk_mul_f16 v45, s[sgprBeta], v45                 // v45 = C*beta ei=0 vi=2
v_pk_add_f16 v[vgprValuC+1], v45, v[vgprValuC+1]   // sum*alpha + C*beta
v_pk_mul_f16 v46, s[sgprBeta], v46                 // v46 = C*beta ei=0 vi=4
v_pk_add_f16 v[vgprValuC+2], v46, v[vgprValuC+2]   // sum*alpha + C*beta
v_pk_mul_f16 v47, s[sgprBeta], v47                 // v47 = C*beta ei=0 vi=6
v_pk_add_f16 v[vgprValuC+3], v47, v[vgprValuC+3]   // sum*alpha + C*beta
_buffer_store_b128 v[0:3], v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(4)                                 // wait C (interleaved) 4 = 6 - 1 - 1
v_pk_mul_f16 v48, s[sgprBeta], v48                 // v48 = C*beta ei=1 vi=0
v_pk_add_f16 v[vgprValuC+4], v48, v[vgprValuC+4]   // sum*alpha + C*beta
v_pk_mul_f16 v49, s[sgprBeta], v49                 // v49 = C*beta ei=1 vi=2
v_pk_add_f16 v[vgprValuC+5], v49, v[vgprValuC+5]   // sum*alpha + C*beta
v_pk_mul_f16 v50, s[sgprBeta], v50                 // v50 = C*beta ei=1 vi=4
v_pk_add_f16 v[vgprValuC+6], v50, v[vgprValuC+6]   // sum*alpha + C*beta
v_pk_mul_f16 v51, s[sgprBeta], v51                 // v51 = C*beta ei=1 vi=6
v_pk_add_f16 v[vgprValuC+7], v51, v[vgprValuC+7]   // sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[4:7], v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(3)                                 // wait C (interleaved) 3 = 6 - 2 - 1
v_pk_mul_f16 v52, s[sgprBeta], v52                 // v52 = C*beta ei=2 vi=0
v_pk_add_f16 v[vgprValuC+8], v52, v[vgprValuC+8]   // sum*alpha + C*beta
v_pk_mul_f16 v53, s[sgprBeta], v53                 // v53 = C*beta ei=2 vi=2
v_pk_add_f16 v[vgprValuC+9], v53, v[vgprValuC+9]   // sum*alpha + C*beta
v_pk_mul_f16 v54, s[sgprBeta], v54                 // v54 = C*beta ei=2 vi=4
v_pk_add_f16 v[vgprValuC+10], v54, v[vgprValuC+10] // sum*alpha + C*beta
v_pk_mul_f16 v55, s[sgprBeta], v55                 // v55 = C*beta ei=2 vi=6
v_pk_add_f16 v[vgprValuC+11], v55, v[vgprValuC+11] // sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[8:11], v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(2)                                 // wait C (interleaved) 2 = 6 - 3 - 1
v_pk_mul_f16 v56, s[sgprBeta], v56                 // v56 = C*beta ei=3 vi=0
v_pk_add_f16 v[vgprValuC+12], v56, v[vgprValuC+12] // sum*alpha + C*beta
v_pk_mul_f16 v57, s[sgprBeta], v57                 // v57 = C*beta ei=3 vi=2
v_pk_add_f16 v[vgprValuC+13], v57, v[vgprValuC+13] // sum*alpha + C*beta
v_pk_mul_f16 v58, s[sgprBeta], v58                 // v58 = C*beta ei=3 vi=4
v_pk_add_f16 v[vgprValuC+14], v58, v[vgprValuC+14] // sum*alpha + C*beta
v_pk_mul_f16 v59, s[sgprBeta], v59                 // v59 = C*beta ei=3 vi=6
v_pk_add_f16 v[vgprValuC+15], v59, v[vgprValuC+15] // sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[12:15], v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(1)                                 // wait C (interleaved) 1 = 6 - 4 - 1
v_pk_mul_f16 v60, s[sgprBeta], v60                 // v60 = C*beta ei=4 vi=0
v_pk_add_f16 v[vgprValuC+16], v60, v[vgprValuC+16] // sum*alpha + C*beta
v_pk_mul_f16 v61, s[sgprBeta], v61                 // v61 = C*beta ei=4 vi=2
v_pk_add_f16 v[vgprValuC+17], v61, v[vgprValuC+17] // sum*alpha + C*beta
v_pk_mul_f16 v62, s[sgprBeta], v62                 // v62 = C*beta ei=4 vi=4
v_pk_add_f16 v[vgprValuC+18], v62, v[vgprValuC+18] // sum*alpha + C*beta
v_pk_mul_f16 v63, s[sgprBeta], v63                 // v63 = C*beta ei=4 vi=6
v_pk_add_f16 v[vgprValuC+19], v63, v[vgprValuC+19] // sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[16:19], v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(0)                                 // wait C (interleaved) 0 = 6 - 5 - 1
v_pk_mul_f16 v64, s[sgprBeta], v64                 // v64 = C*beta ei=5 vi=0
v_pk_add_f16 v[vgprValuC+20], v64, v[vgprValuC+20] // sum*alpha + C*beta
v_pk_mul_f16 v65, s[sgprBeta], v65                 // v65 = C*beta ei=5 vi=2
v_pk_add_f16 v[vgprValuC+21], v65, v[vgprValuC+21] // sum*alpha + C*beta
v_pk_mul_f16 v66, s[sgprBeta], v66                 // v66 = C*beta ei=5 vi=4
v_pk_add_f16 v[vgprValuC+22], v66, v[vgprValuC+22] // sum*alpha + C*beta
v_pk_mul_f16 v67, s[sgprBeta], v67                 // v67 = C*beta ei=5 vi=6
v_pk_add_f16 v[vgprValuC+23], v67, v[vgprValuC+23] // sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[20:23], v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Alpha Beta Batch #1 (d1,d0,vc1,vc0) = */
/*    (0,0,6,0:vw8); (0,0,7,0:vw8)        */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,6,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[44:47], v41, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,7,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[48:51], v41, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc

/* rC *= alpha batchElements=[(0, 0, 6, 0), (0, 0, 7, 0)] */
v_pk_mul_f16 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha sumIdx=48 vi=1
v_pk_mul_f16 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha sumIdx=48 vi=3
v_pk_mul_f16 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha sumIdx=48 vi=5
v_pk_mul_f16 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha sumIdx=48 vi=7
v_pk_mul_f16 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha sumIdx=56 vi=1
v_pk_mul_f16 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha sumIdx=56 vi=3
v_pk_mul_f16 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha sumIdx=56 vi=5
v_pk_mul_f16 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha sumIdx=56 vi=7

/* apply mask, calc new C and issue writes */

s_waitcnt vmcnt(1)                                 // wait C (interleaved) 1 = 2 - 0 - 1
v_pk_mul_f16 v44, s[sgprBeta], v44                 // v44 = C*beta ei=0 vi=0
v_pk_add_f16 v[vgprValuC+24], v44, v[vgprValuC+24] // sum*alpha + C*beta
v_pk_mul_f16 v45, s[sgprBeta], v45                 // v45 = C*beta ei=0 vi=2
v_pk_add_f16 v[vgprValuC+25], v45, v[vgprValuC+25] // sum*alpha + C*beta
v_pk_mul_f16 v46, s[sgprBeta], v46                 // v46 = C*beta ei=0 vi=4
v_pk_add_f16 v[vgprValuC+26], v46, v[vgprValuC+26] // sum*alpha + C*beta
v_pk_mul_f16 v47, s[sgprBeta], v47                 // v47 = C*beta ei=0 vi=6
v_pk_add_f16 v[vgprValuC+27], v47, v[vgprValuC+27] // sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[24:27], v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(0)                                 // wait C (interleaved) 0 = 2 - 1 - 1
v_pk_mul_f16 v48, s[sgprBeta], v48                 // v48 = C*beta ei=1 vi=0
v_pk_add_f16 v[vgprValuC+28], v48, v[vgprValuC+28] // sum*alpha + C*beta
v_pk_mul_f16 v49, s[sgprBeta], v49                 // v49 = C*beta ei=1 vi=2
v_pk_add_f16 v[vgprValuC+29], v49, v[vgprValuC+29] // sum*alpha + C*beta
v_pk_mul_f16 v50, s[sgprBeta], v50                 // v50 = C*beta ei=1 vi=4
v_pk_add_f16 v[vgprValuC+30], v50, v[vgprValuC+30] // sum*alpha + C*beta
v_pk_mul_f16 v51, s[sgprBeta], v51                 // v51 = C*beta ei=1 vi=6
v_pk_add_f16 v[vgprValuC+31], v51, v[vgprValuC+31] // sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[28:31], v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_branch label_GW_End_58                           // jump to end
GW_B1_E1_57:

/* edge=1, allocate 3 sgpr. perBatchTmpS=2 perBatchMaskS=1 perElementMaskS=0 elementsPerBatch=14 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,0,0,1:vw1); (0,0,0,2:vw1); (0,0,0,3:vw1); (0,0,0,4:vw1); (0,0,0,5:vw1); (0,0,0,6:vw1); (0,0,0,7:vw1); (0,0,1,0:vw1); (0,0,1,1:vw1); (0,0,1,2:vw1); (0,0,1,3:vw1); (0,0,1,4:vw1); (0,0,1,5:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s54, v34, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v40, v36, v34, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v40, -1, v40, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v41, v40, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v40, v37, v34, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v40, -1, v40, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,1) */
_v_add_co_u32 v38, vcc_lo, v34, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v42, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, -1, v42, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v41, v42, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v42, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, -1, v42, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,2) */
_v_add_co_u32 v38, vcc_lo, v34, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v43, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v43, -1, v43, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v44, v43, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v43, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v43, -1, v43, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,3) */
_v_add_co_u32 v38, vcc_lo, v34, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v45, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v45, -1, v45, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v44, v45, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v45, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v45, -1, v45, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,4) */
_v_add_co_u32 v38, vcc_lo, v34, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v46, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v46, -1, v46, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v47, v46, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v46, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v46, -1, v46, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,5) */
_v_add_co_u32 v38, vcc_lo, v34, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v48, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v48, -1, v48, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v47, v48, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v48, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v48, -1, v48, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,6) */
_v_add_co_u32 v38, vcc_lo, v34, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v49, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v49, -1, v49, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v50, v49, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v49, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v49, -1, v49, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,7) */
_v_add_co_u32 v38, vcc_lo, v34, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v51, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v51, -1, v51, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v50, v51, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v51, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v51, -1, v51, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
_v_add_co_u32 v35, vcc_lo, v35, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v36, v36, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v37, v37, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v34, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v52, v36, v34, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v52, -1, v52, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v53, v52, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v52, v37, v34, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v52, -1, v52, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,1) */
_v_add_co_u32 v38, vcc_lo, v34, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v54, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v54, -1, v54, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v53, v54, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v54, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v54, -1, v54, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,2) */
_v_add_co_u32 v38, vcc_lo, v34, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v55, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v55, -1, v55, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v56, v55, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v55, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v55, -1, v55, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,3) */
_v_add_co_u32 v38, vcc_lo, v34, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v57, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v57, -1, v57, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v56, v57, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v57, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v57, -1, v57, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,4) */
_v_add_co_u32 v38, vcc_lo, v34, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v58, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v58, -1, v58, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v59, v58, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v58, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v58, -1, v58, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,5) */
_v_add_co_u32 v38, vcc_lo, v34, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v60, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v60, -1, v60, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v59, v60, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v60, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v60, -1, v60, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 0, 1), (0, 0, 0, 2), (0, 0, 0, 3), (0, 0, 0, 4), (0, 0, 0, 5), (0, 0, 0, 6), (0, 0, 0, 7), (0, 0, 1, 0), (0, 0, 1, 1), (0, 0, 1, 2), (0, 0, 1, 3), (0, 0, 1, 4), (0, 0, 1, 5)] */
v_pk_mul_f16 v[vgprValuC+0], s[sgprAlpha], v[vgprValuC+0] // *= alpha sumIdx=1 vi=0
v_pk_mul_f16 v[vgprValuC+1], s[sgprAlpha], v[vgprValuC+1] // *= alpha sumIdx=3 vi=0
v_pk_mul_f16 v[vgprValuC+2], s[sgprAlpha], v[vgprValuC+2] // *= alpha sumIdx=5 vi=0
v_pk_mul_f16 v[vgprValuC+3], s[sgprAlpha], v[vgprValuC+3] // *= alpha sumIdx=7 vi=0
v_pk_mul_f16 v[vgprValuC+4], s[sgprAlpha], v[vgprValuC+4] // *= alpha sumIdx=9 vi=0
v_pk_mul_f16 v[vgprValuC+5], s[sgprAlpha], v[vgprValuC+5] // *= alpha sumIdx=11 vi=0
v_pk_mul_f16 v[vgprValuC+6], s[sgprAlpha], v[vgprValuC+6] // *= alpha sumIdx=13 vi=0
s_waitcnt vmcnt(0)                                 // wait C
s_waitcnt_vscnt null, 0                            // writes

/* apply mask, calc new C and issue writes */
v_pk_mul_f16 v41, s[sgprBeta], v41                 // v41 = C*beta ei=0 vi=0
v_pk_add_f16 v[vgprValuC+0], v41, v[vgprValuC+0]   // sum*alpha + C*beta
_buffer_store_b16 v0, v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v0, v42, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v44, s[sgprBeta], v44                 // v44 = C*beta ei=2 vi=0
v_pk_add_f16 v[vgprValuC+1], v44, v[vgprValuC+1]   // sum*alpha + C*beta
_buffer_store_b16 v1, v43, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v1, v45, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v47, s[sgprBeta], v47                 // v47 = C*beta ei=4 vi=0
v_pk_add_f16 v[vgprValuC+2], v47, v[vgprValuC+2]   // sum*alpha + C*beta
_buffer_store_b16 v2, v46, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v2, v48, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v50, s[sgprBeta], v50                 // v50 = C*beta ei=6 vi=0
v_pk_add_f16 v[vgprValuC+3], v50, v[vgprValuC+3]   // sum*alpha + C*beta
_buffer_store_b16 v3, v49, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v3, v51, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v53, s[sgprBeta], v53                 // v53 = C*beta ei=8 vi=0
v_pk_add_f16 v[vgprValuC+4], v53, v[vgprValuC+4]   // sum*alpha + C*beta
_buffer_store_b16 v4, v52, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v4, v54, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v56, s[sgprBeta], v56                 // v56 = C*beta ei=10 vi=0
v_pk_add_f16 v[vgprValuC+5], v56, v[vgprValuC+5]   // sum*alpha + C*beta
_buffer_store_b16 v5, v55, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v5, v57, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v59, s[sgprBeta], v59                 // v59 = C*beta ei=12 vi=0
v_pk_add_f16 v[vgprValuC+6], v59, v[vgprValuC+6]   // sum*alpha + C*beta
_buffer_store_b16 v6, v58, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v6, v60, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #1 (d1,d0,vc1,vc0) = */
/*    (0,0,1,6:vw1); (0,0,1,7:vw1); (0,0,2,0:vw1); (0,0,2,1:vw1); (0,0,2,2:vw1); (0,0,2,3:vw1); (0,0,2,4:vw1); (0,0,2,5:vw1); (0,0,2,6:vw1); (0,0,2,7:vw1); (0,0,3,0:vw1); (0,0,3,1:vw1); (0,0,3,2:vw1); (0,0,3,3:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,1,0,6) */
_v_add_co_u32 v38, vcc_lo, v34, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v40, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v40, -1, v40, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v41, v40, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v40, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v40, -1, v40, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,7) */
_v_add_co_u32 v38, vcc_lo, v34, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v42, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, -1, v42, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v41, v42, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v42, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, -1, v42, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
_v_add_co_u32 v35, vcc_lo, v35, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v36, v36, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v37, v37, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v34, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v43, v36, v34, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v43, -1, v43, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v44, v43, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v43, v37, v34, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v43, -1, v43, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,1) */
_v_add_co_u32 v38, vcc_lo, v34, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v45, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v45, -1, v45, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v44, v45, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v45, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v45, -1, v45, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,2) */
_v_add_co_u32 v38, vcc_lo, v34, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v46, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v46, -1, v46, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v47, v46, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v46, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v46, -1, v46, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,3) */
_v_add_co_u32 v38, vcc_lo, v34, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v48, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v48, -1, v48, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v47, v48, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v48, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v48, -1, v48, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,4) */
_v_add_co_u32 v38, vcc_lo, v34, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v49, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v49, -1, v49, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v50, v49, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v49, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v49, -1, v49, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,5) */
_v_add_co_u32 v38, vcc_lo, v34, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v51, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v51, -1, v51, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v50, v51, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v51, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v51, -1, v51, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,6) */
_v_add_co_u32 v38, vcc_lo, v34, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v52, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v52, -1, v52, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v53, v52, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v52, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v52, -1, v52, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,7) */
_v_add_co_u32 v38, vcc_lo, v34, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v54, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v54, -1, v54, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v53, v54, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v54, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v54, -1, v54, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
_v_add_co_u32 v35, vcc_lo, v35, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v36, v36, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v37, v37, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v34, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v55, v36, v34, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v55, -1, v55, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v56, v55, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v55, v37, v34, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v55, -1, v55, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,1) */
_v_add_co_u32 v38, vcc_lo, v34, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v57, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v57, -1, v57, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v56, v57, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v57, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v57, -1, v57, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,2) */
_v_add_co_u32 v38, vcc_lo, v34, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v58, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v58, -1, v58, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v59, v58, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v58, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v58, -1, v58, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,3) */
_v_add_co_u32 v38, vcc_lo, v34, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v60, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v60, -1, v60, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v59, v60, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v60, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v60, -1, v60, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 1, 6), (0, 0, 1, 7), (0, 0, 2, 0), (0, 0, 2, 1), (0, 0, 2, 2), (0, 0, 2, 3), (0, 0, 2, 4), (0, 0, 2, 5), (0, 0, 2, 6), (0, 0, 2, 7), (0, 0, 3, 0), (0, 0, 3, 1), (0, 0, 3, 2), (0, 0, 3, 3)] */
v_pk_mul_f16 v[vgprValuC+7], s[sgprAlpha], v[vgprValuC+7] // *= alpha sumIdx=15 vi=0
v_pk_mul_f16 v[vgprValuC+8], s[sgprAlpha], v[vgprValuC+8] // *= alpha sumIdx=17 vi=0
v_pk_mul_f16 v[vgprValuC+9], s[sgprAlpha], v[vgprValuC+9] // *= alpha sumIdx=19 vi=0
v_pk_mul_f16 v[vgprValuC+10], s[sgprAlpha], v[vgprValuC+10] // *= alpha sumIdx=21 vi=0
v_pk_mul_f16 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha sumIdx=23 vi=0
v_pk_mul_f16 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha sumIdx=25 vi=0
v_pk_mul_f16 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha sumIdx=27 vi=0
s_waitcnt vmcnt(0)                                 // wait C
s_waitcnt_vscnt null, 0                            // writes

/* apply mask, calc new C and issue writes */
v_pk_mul_f16 v41, s[sgprBeta], v41                 // v41 = C*beta ei=0 vi=0
v_pk_add_f16 v[vgprValuC+7], v41, v[vgprValuC+7]   // sum*alpha + C*beta
_buffer_store_b16 v7, v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v7, v42, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v44, s[sgprBeta], v44                 // v44 = C*beta ei=2 vi=0
v_pk_add_f16 v[vgprValuC+8], v44, v[vgprValuC+8]   // sum*alpha + C*beta
_buffer_store_b16 v8, v43, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v8, v45, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v47, s[sgprBeta], v47                 // v47 = C*beta ei=4 vi=0
v_pk_add_f16 v[vgprValuC+9], v47, v[vgprValuC+9]   // sum*alpha + C*beta
_buffer_store_b16 v9, v46, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v9, v48, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v50, s[sgprBeta], v50                 // v50 = C*beta ei=6 vi=0
v_pk_add_f16 v[vgprValuC+10], v50, v[vgprValuC+10] // sum*alpha + C*beta
_buffer_store_b16 v10, v49, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v10, v51, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v53, s[sgprBeta], v53                 // v53 = C*beta ei=8 vi=0
v_pk_add_f16 v[vgprValuC+11], v53, v[vgprValuC+11] // sum*alpha + C*beta
_buffer_store_b16 v11, v52, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v11, v54, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v56, s[sgprBeta], v56                 // v56 = C*beta ei=10 vi=0
v_pk_add_f16 v[vgprValuC+12], v56, v[vgprValuC+12] // sum*alpha + C*beta
_buffer_store_b16 v12, v55, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v12, v57, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v59, s[sgprBeta], v59                 // v59 = C*beta ei=12 vi=0
v_pk_add_f16 v[vgprValuC+13], v59, v[vgprValuC+13] // sum*alpha + C*beta
_buffer_store_b16 v13, v58, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v13, v60, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #2 (d1,d0,vc1,vc0) = */
/*    (0,0,3,4:vw1); (0,0,3,5:vw1); (0,0,3,6:vw1); (0,0,3,7:vw1); (0,0,4,0:vw1); (0,0,4,1:vw1); (0,0,4,2:vw1); (0,0,4,3:vw1); (0,0,4,4:vw1); (0,0,4,5:vw1); (0,0,4,6:vw1); (0,0,4,7:vw1); (0,0,5,0:vw1); (0,0,5,1:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,3,0,4) */
_v_add_co_u32 v38, vcc_lo, v34, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v40, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v40, -1, v40, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v41, v40, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v40, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v40, -1, v40, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,5) */
_v_add_co_u32 v38, vcc_lo, v34, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v42, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, -1, v42, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v41, v42, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v42, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, -1, v42, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,6) */
_v_add_co_u32 v38, vcc_lo, v34, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v43, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v43, -1, v43, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v44, v43, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v43, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v43, -1, v43, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,7) */
_v_add_co_u32 v38, vcc_lo, v34, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v45, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v45, -1, v45, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v44, v45, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v45, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v45, -1, v45, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,0) */
_v_add_co_u32 v35, vcc_lo, v35, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v36, v36, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v37, v37, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v34, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v46, v36, v34, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v46, -1, v46, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v47, v46, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v46, v37, v34, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v46, -1, v46, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,1) */
_v_add_co_u32 v38, vcc_lo, v34, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v48, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v48, -1, v48, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v47, v48, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v48, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v48, -1, v48, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,2) */
_v_add_co_u32 v38, vcc_lo, v34, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v49, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v49, -1, v49, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v50, v49, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v49, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v49, -1, v49, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,3) */
_v_add_co_u32 v38, vcc_lo, v34, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v51, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v51, -1, v51, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v50, v51, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v51, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v51, -1, v51, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,4) */
_v_add_co_u32 v38, vcc_lo, v34, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v52, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v52, -1, v52, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v53, v52, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v52, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v52, -1, v52, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,5) */
_v_add_co_u32 v38, vcc_lo, v34, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v54, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v54, -1, v54, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v53, v54, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v54, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v54, -1, v54, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,6) */
_v_add_co_u32 v38, vcc_lo, v34, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v55, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v55, -1, v55, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v56, v55, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v55, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v55, -1, v55, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,7) */
_v_add_co_u32 v38, vcc_lo, v34, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v57, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v57, -1, v57, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v56, v57, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v57, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v57, -1, v57, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,0) */
_v_add_co_u32 v35, vcc_lo, v35, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v36, v36, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v37, v37, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v34, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v58, v36, v34, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v58, -1, v58, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v59, v58, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v58, v37, v34, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v58, -1, v58, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,1) */
_v_add_co_u32 v38, vcc_lo, v34, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v60, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v60, -1, v60, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v59, v60, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v60, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v60, -1, v60, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 3, 4), (0, 0, 3, 5), (0, 0, 3, 6), (0, 0, 3, 7), (0, 0, 4, 0), (0, 0, 4, 1), (0, 0, 4, 2), (0, 0, 4, 3), (0, 0, 4, 4), (0, 0, 4, 5), (0, 0, 4, 6), (0, 0, 4, 7), (0, 0, 5, 0), (0, 0, 5, 1)] */
v_pk_mul_f16 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha sumIdx=29 vi=0
v_pk_mul_f16 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha sumIdx=31 vi=0
v_pk_mul_f16 v[vgprValuC+16], s[sgprAlpha], v[vgprValuC+16] // *= alpha sumIdx=33 vi=0
v_pk_mul_f16 v[vgprValuC+17], s[sgprAlpha], v[vgprValuC+17] // *= alpha sumIdx=35 vi=0
v_pk_mul_f16 v[vgprValuC+18], s[sgprAlpha], v[vgprValuC+18] // *= alpha sumIdx=37 vi=0
v_pk_mul_f16 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+19] // *= alpha sumIdx=39 vi=0
v_pk_mul_f16 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+20] // *= alpha sumIdx=41 vi=0
s_waitcnt vmcnt(0)                                 // wait C
s_waitcnt_vscnt null, 0                            // writes

/* apply mask, calc new C and issue writes */
v_pk_mul_f16 v41, s[sgprBeta], v41                 // v41 = C*beta ei=0 vi=0
v_pk_add_f16 v[vgprValuC+14], v41, v[vgprValuC+14] // sum*alpha + C*beta
_buffer_store_b16 v14, v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v14, v42, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v44, s[sgprBeta], v44                 // v44 = C*beta ei=2 vi=0
v_pk_add_f16 v[vgprValuC+15], v44, v[vgprValuC+15] // sum*alpha + C*beta
_buffer_store_b16 v15, v43, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v15, v45, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v47, s[sgprBeta], v47                 // v47 = C*beta ei=4 vi=0
v_pk_add_f16 v[vgprValuC+16], v47, v[vgprValuC+16] // sum*alpha + C*beta
_buffer_store_b16 v16, v46, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v16, v48, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v50, s[sgprBeta], v50                 // v50 = C*beta ei=6 vi=0
v_pk_add_f16 v[vgprValuC+17], v50, v[vgprValuC+17] // sum*alpha + C*beta
_buffer_store_b16 v17, v49, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v17, v51, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v53, s[sgprBeta], v53                 // v53 = C*beta ei=8 vi=0
v_pk_add_f16 v[vgprValuC+18], v53, v[vgprValuC+18] // sum*alpha + C*beta
_buffer_store_b16 v18, v52, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v18, v54, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v56, s[sgprBeta], v56                 // v56 = C*beta ei=10 vi=0
v_pk_add_f16 v[vgprValuC+19], v56, v[vgprValuC+19] // sum*alpha + C*beta
_buffer_store_b16 v19, v55, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v19, v57, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v59, s[sgprBeta], v59                 // v59 = C*beta ei=12 vi=0
v_pk_add_f16 v[vgprValuC+20], v59, v[vgprValuC+20] // sum*alpha + C*beta
_buffer_store_b16 v20, v58, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v20, v60, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #3 (d1,d0,vc1,vc0) = */
/*    (0,0,5,2:vw1); (0,0,5,3:vw1); (0,0,5,4:vw1); (0,0,5,5:vw1); (0,0,5,6:vw1); (0,0,5,7:vw1); (0,0,6,0:vw1); (0,0,6,1:vw1); (0,0,6,2:vw1); (0,0,6,3:vw1); (0,0,6,4:vw1); (0,0,6,5:vw1); (0,0,6,6:vw1); (0,0,6,7:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,5,0,2) */
_v_add_co_u32 v38, vcc_lo, v34, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v40, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v40, -1, v40, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v41, v40, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v40, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v40, -1, v40, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,3) */
_v_add_co_u32 v38, vcc_lo, v34, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v42, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, -1, v42, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v41, v42, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v42, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, -1, v42, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,4) */
_v_add_co_u32 v38, vcc_lo, v34, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v43, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v43, -1, v43, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v44, v43, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v43, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v43, -1, v43, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,5) */
_v_add_co_u32 v38, vcc_lo, v34, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v45, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v45, -1, v45, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v44, v45, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v45, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v45, -1, v45, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,6) */
_v_add_co_u32 v38, vcc_lo, v34, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v46, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v46, -1, v46, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v47, v46, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v46, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v46, -1, v46, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,7) */
_v_add_co_u32 v38, vcc_lo, v34, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v48, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v48, -1, v48, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v47, v48, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v48, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v48, -1, v48, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,0) */
_v_add_co_u32 v35, vcc_lo, v35, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v36, v36, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v37, v37, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v34, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v49, v36, v34, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v49, -1, v49, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v50, v49, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v49, v37, v34, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v49, -1, v49, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,1) */
_v_add_co_u32 v38, vcc_lo, v34, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v51, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v51, -1, v51, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v50, v51, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v51, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v51, -1, v51, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,2) */
_v_add_co_u32 v38, vcc_lo, v34, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v52, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v52, -1, v52, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v53, v52, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v52, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v52, -1, v52, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,3) */
_v_add_co_u32 v38, vcc_lo, v34, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v54, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v54, -1, v54, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v53, v54, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v54, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v54, -1, v54, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,4) */
_v_add_co_u32 v38, vcc_lo, v34, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v55, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v55, -1, v55, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v56, v55, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v55, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v55, -1, v55, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,5) */
_v_add_co_u32 v38, vcc_lo, v34, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v57, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v57, -1, v57, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v56, v57, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v57, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v57, -1, v57, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,6) */
_v_add_co_u32 v38, vcc_lo, v34, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v58, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v58, -1, v58, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v59, v58, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v58, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v58, -1, v58, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,7) */
_v_add_co_u32 v38, vcc_lo, v34, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v60, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v60, -1, v60, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v59, v60, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v60, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v60, -1, v60, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 5, 2), (0, 0, 5, 3), (0, 0, 5, 4), (0, 0, 5, 5), (0, 0, 5, 6), (0, 0, 5, 7), (0, 0, 6, 0), (0, 0, 6, 1), (0, 0, 6, 2), (0, 0, 6, 3), (0, 0, 6, 4), (0, 0, 6, 5), (0, 0, 6, 6), (0, 0, 6, 7)] */
v_pk_mul_f16 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha sumIdx=43 vi=0
v_pk_mul_f16 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha sumIdx=45 vi=0
v_pk_mul_f16 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+23] // *= alpha sumIdx=47 vi=0
v_pk_mul_f16 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha sumIdx=49 vi=0
v_pk_mul_f16 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha sumIdx=51 vi=0
v_pk_mul_f16 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha sumIdx=53 vi=0
v_pk_mul_f16 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha sumIdx=55 vi=0
s_waitcnt vmcnt(0)                                 // wait C
s_waitcnt_vscnt null, 0                            // writes

/* apply mask, calc new C and issue writes */
v_pk_mul_f16 v41, s[sgprBeta], v41                 // v41 = C*beta ei=0 vi=0
v_pk_add_f16 v[vgprValuC+21], v41, v[vgprValuC+21] // sum*alpha + C*beta
_buffer_store_b16 v21, v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v21, v42, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v44, s[sgprBeta], v44                 // v44 = C*beta ei=2 vi=0
v_pk_add_f16 v[vgprValuC+22], v44, v[vgprValuC+22] // sum*alpha + C*beta
_buffer_store_b16 v22, v43, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v22, v45, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v47, s[sgprBeta], v47                 // v47 = C*beta ei=4 vi=0
v_pk_add_f16 v[vgprValuC+23], v47, v[vgprValuC+23] // sum*alpha + C*beta
_buffer_store_b16 v23, v46, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v23, v48, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v50, s[sgprBeta], v50                 // v50 = C*beta ei=6 vi=0
v_pk_add_f16 v[vgprValuC+24], v50, v[vgprValuC+24] // sum*alpha + C*beta
_buffer_store_b16 v24, v49, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v24, v51, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v53, s[sgprBeta], v53                 // v53 = C*beta ei=8 vi=0
v_pk_add_f16 v[vgprValuC+25], v53, v[vgprValuC+25] // sum*alpha + C*beta
_buffer_store_b16 v25, v52, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v25, v54, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v56, s[sgprBeta], v56                 // v56 = C*beta ei=10 vi=0
v_pk_add_f16 v[vgprValuC+26], v56, v[vgprValuC+26] // sum*alpha + C*beta
_buffer_store_b16 v26, v55, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v26, v57, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v59, s[sgprBeta], v59                 // v59 = C*beta ei=12 vi=0
v_pk_add_f16 v[vgprValuC+27], v59, v[vgprValuC+27] // sum*alpha + C*beta
_buffer_store_b16 v27, v58, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v27, v60, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #4 (d1,d0,vc1,vc0) = */
/*    (0,0,7,0:vw1); (0,0,7,1:vw1); (0,0,7,2:vw1); (0,0,7,3:vw1); (0,0,7,4:vw1); (0,0,7,5:vw1); (0,0,7,6:vw1); (0,0,7,7:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,7,0,0) */
_v_add_co_u32 v35, vcc_lo, v35, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v36, v36, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v37, v37, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v34, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v40, v36, v34, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v40, -1, v40, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v41, v40, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v40, v37, v34, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v40, -1, v40, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,1) */
_v_add_co_u32 v38, vcc_lo, v34, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v42, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, -1, v42, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v41, v42, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v42, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, -1, v42, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,2) */
_v_add_co_u32 v38, vcc_lo, v34, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v43, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v43, -1, v43, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v44, v43, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v43, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v43, -1, v43, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,3) */
_v_add_co_u32 v38, vcc_lo, v34, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v45, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v45, -1, v45, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v44, v45, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v45, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v45, -1, v45, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,4) */
_v_add_co_u32 v38, vcc_lo, v34, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v46, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v46, -1, v46, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v47, v46, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v46, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v46, -1, v46, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,5) */
_v_add_co_u32 v38, vcc_lo, v34, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v48, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v48, -1, v48, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v47, v48, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v48, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v48, -1, v48, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,6) */
_v_add_co_u32 v38, vcc_lo, v34, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v49, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v49, -1, v49, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v50, v49, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v49, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v49, -1, v49, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,7) */
_v_add_co_u32 v38, vcc_lo, v34, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v38, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v35, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v51, v36, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v51, -1, v51, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v50, v51, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v51, v37, v38, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v51, -1, v51, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 7, 0), (0, 0, 7, 1), (0, 0, 7, 2), (0, 0, 7, 3), (0, 0, 7, 4), (0, 0, 7, 5), (0, 0, 7, 6), (0, 0, 7, 7)] */
v_pk_mul_f16 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha sumIdx=57 vi=0
v_pk_mul_f16 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha sumIdx=59 vi=0
v_pk_mul_f16 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha sumIdx=61 vi=0
v_pk_mul_f16 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha sumIdx=63 vi=0
s_waitcnt vmcnt(0)                                 // wait C
s_waitcnt_vscnt null, 0                            // writes

/* apply mask, calc new C and issue writes */
v_pk_mul_f16 v41, s[sgprBeta], v41                 // v41 = C*beta ei=0 vi=0
v_pk_add_f16 v[vgprValuC+28], v41, v[vgprValuC+28] // sum*alpha + C*beta
_buffer_store_b16 v28, v40, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v28, v42, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v44, s[sgprBeta], v44                 // v44 = C*beta ei=2 vi=0
v_pk_add_f16 v[vgprValuC+29], v44, v[vgprValuC+29] // sum*alpha + C*beta
_buffer_store_b16 v29, v43, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v29, v45, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v47, s[sgprBeta], v47                 // v47 = C*beta ei=4 vi=0
v_pk_add_f16 v[vgprValuC+30], v47, v[vgprValuC+30] // sum*alpha + C*beta
_buffer_store_b16 v30, v46, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v30, v48, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v50, s[sgprBeta], v50                 // v50 = C*beta ei=6 vi=0
v_pk_add_f16 v[vgprValuC+31], v50, v[vgprValuC+31] // sum*alpha + C*beta
_buffer_store_b16 v31, v49, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v31, v51, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_branch label_GW_End_58                           // jump to end
label_GW_End_58:

label_0063:  /// KernelEnd
s_endpgm                                           // Kernel End

