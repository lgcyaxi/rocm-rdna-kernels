
/******************************************/
/* Function Prefix                        */
/******************************************/



/******************************************/
/* Begin Kernel                           */
/******************************************/

// Component.Signature.SignatureDefault
.amdgcn_target "amdgcn-amd-amdhsa--gfx1010"
.text
.protected Cijk_Ailk_Bjlk_HB_MT256x128x16_SN_K1_PGR1_TT16_8_WG16_16_1
.globl Cijk_Ailk_Bjlk_HB_MT256x128x16_SN_K1_PGR1_TT16_8_WG16_16_1
.p2align 8
.type Cijk_Ailk_Bjlk_HB_MT256x128x16_SN_K1_PGR1_TT16_8_WG16_16_1,@function
.section .rodata,#alloc
.p2align 6
.amdhsa_kernel Cijk_Ailk_Bjlk_HB_MT256x128x16_SN_K1_PGR1_TT16_8_WG16_16_1
  .amdhsa_user_sgpr_kernarg_segment_ptr 1
  .amdhsa_user_sgpr_count 2
  .amdhsa_next_free_vgpr 111 // vgprs
  .amdhsa_next_free_sgpr 63 // sgprs
  .amdhsa_group_segment_fixed_size 28672 // lds bytes
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
/* SubGroup= 16 x 16 */
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
  - .name: Cijk_Ailk_Bjlk_HB_MT256x128x16_SN_K1_PGR1_TT16_8_WG16_16_1
    .symbol: 'Cijk_Ailk_Bjlk_HB_MT256x128x16_SN_K1_PGR1_TT16_8_WG16_16_1.kd'
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
    .group_segment_fixed_size:   28672
    .kernarg_segment_align:      8
    .kernarg_segment_size:       128
    .max_flat_workgroup_size:    256
    .private_segment_fixed_size: 0
    .sgpr_count:                 63
    .sgpr_spill_count:           0
    .vgpr_count:                 111
    .vgpr_spill_count:           0
    .wavefront_size:             32
...
.end_amdgpu_metadata
Cijk_Ailk_Bjlk_HB_MT256x128x16_SN_K1_PGR1_TT16_8_WG16_16_1:

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
/* ValuC range: [0-64),  */
.set vgprValuC, 0
/* ValuA/B   Xn=PLR buffer idx,  In=InnerUnroll idx */
.set vgprValuA_X0_I0, 66
.set vgprValuA_X1_I0, 74
.set vgprG2LA, 96
.set vgprValuB_X0_I0, 83
.set vgprValuB_X1_I0, 87
.set vgprG2LB, 104
.set vgprLocalWriteAddrA, 91
.set vgprLocalWriteAddrB, 92
.set vgprGlobalReadOffsetA, 93
.set vgprGlobalReadOffsetB, 95
.set vgprLocalReadAddrA, 108
.set vgprLocalReadAddrB, 109
.set vgprSerial, 110
/* Num VGPR=111 */
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
.set MT1, 128
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
.macro GLOBAL_OFFSET_B vgprAddr:req vgprOffset1J:req vgprOffsetL:req vgprTmp:req
v_mul_lo_u32 v[\vgprTmp+0], s[sgprStrideBL], v[\vgprOffsetL] // mul d1 lower
_v_add_co_u32 v[\vgprAddr+0], vcc_lo, v[\vgprOffset1J], v[\vgprTmp+0] // accumulate K lower
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
/* 16x8 thread-tile                       */
/******************************************/
.macro MAC_16x8_X0
// Component.MAC.FMA_F16_Packed
v_pk_fma_f16 v[vgprValuC + 0 + 0*16 + 0], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 0], v[vgprValuC + 0 + 0*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 0
s_setprio 1 // Raise priority while processing macs
v_pk_fma_f16 v[vgprValuC + 0 + 0*16 + 8], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 0], v[vgprValuC + 0 + 0*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 8
v_pk_fma_f16 v[vgprValuC + 1 + 0*16 + 0], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 0], v[vgprValuC + 1 + 0*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 1
v_pk_fma_f16 v[vgprValuC + 1 + 0*16 + 8], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 0], v[vgprValuC + 1 + 0*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 9
v_pk_fma_f16 v[vgprValuC + 2 + 0*16 + 0], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 0], v[vgprValuC + 2 + 0*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 2
v_pk_fma_f16 v[vgprValuC + 2 + 0*16 + 8], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 0], v[vgprValuC + 2 + 0*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 10
v_pk_fma_f16 v[vgprValuC + 3 + 0*16 + 0], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 0], v[vgprValuC + 3 + 0*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 3
v_pk_fma_f16 v[vgprValuC + 3 + 0*16 + 8], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 0], v[vgprValuC + 3 + 0*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 11
v_pk_fma_f16 v[vgprValuC + 4 + 0*16 + 0], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 0], v[vgprValuC + 4 + 0*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 4
v_pk_fma_f16 v[vgprValuC + 4 + 0*16 + 8], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 0], v[vgprValuC + 4 + 0*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 12
v_pk_fma_f16 v[vgprValuC + 5 + 0*16 + 0], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 0], v[vgprValuC + 5 + 0*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 5
v_pk_fma_f16 v[vgprValuC + 5 + 0*16 + 8], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 0], v[vgprValuC + 5 + 0*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 13
v_pk_fma_f16 v[vgprValuC + 6 + 0*16 + 0], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 0], v[vgprValuC + 6 + 0*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 6
v_pk_fma_f16 v[vgprValuC + 6 + 0*16 + 8], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 0], v[vgprValuC + 6 + 0*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 14
v_pk_fma_f16 v[vgprValuC + 7 + 0*16 + 0], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 0], v[vgprValuC + 7 + 0*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 7
v_pk_fma_f16 v[vgprValuC + 7 + 0*16 + 8], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 0], v[vgprValuC + 7 + 0*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 15
v_pk_fma_f16 v[vgprValuC + 0 + 1*16 + 0], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 1], v[vgprValuC + 0 + 1*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 16
v_pk_fma_f16 v[vgprValuC + 0 + 1*16 + 8], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 1], v[vgprValuC + 0 + 1*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 24
v_pk_fma_f16 v[vgprValuC + 1 + 1*16 + 0], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 1], v[vgprValuC + 1 + 1*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 17
v_pk_fma_f16 v[vgprValuC + 1 + 1*16 + 8], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 1], v[vgprValuC + 1 + 1*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 25
v_pk_fma_f16 v[vgprValuC + 2 + 1*16 + 0], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 1], v[vgprValuC + 2 + 1*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 18
v_pk_fma_f16 v[vgprValuC + 2 + 1*16 + 8], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 1], v[vgprValuC + 2 + 1*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 26
v_pk_fma_f16 v[vgprValuC + 3 + 1*16 + 0], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 1], v[vgprValuC + 3 + 1*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 19
v_pk_fma_f16 v[vgprValuC + 3 + 1*16 + 8], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 1], v[vgprValuC + 3 + 1*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 27
v_pk_fma_f16 v[vgprValuC + 4 + 1*16 + 0], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 1], v[vgprValuC + 4 + 1*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 20
v_pk_fma_f16 v[vgprValuC + 4 + 1*16 + 8], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 1], v[vgprValuC + 4 + 1*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 28
v_pk_fma_f16 v[vgprValuC + 5 + 1*16 + 0], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 1], v[vgprValuC + 5 + 1*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 21
v_pk_fma_f16 v[vgprValuC + 5 + 1*16 + 8], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 1], v[vgprValuC + 5 + 1*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 29
v_pk_fma_f16 v[vgprValuC + 6 + 1*16 + 0], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 1], v[vgprValuC + 6 + 1*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 22
v_pk_fma_f16 v[vgprValuC + 6 + 1*16 + 8], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 1], v[vgprValuC + 6 + 1*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 30
v_pk_fma_f16 v[vgprValuC + 7 + 1*16 + 0], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 1], v[vgprValuC + 7 + 1*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 23
v_pk_fma_f16 v[vgprValuC + 7 + 1*16 + 8], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 1], v[vgprValuC + 7 + 1*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 31
v_pk_fma_f16 v[vgprValuC + 0 + 2*16 + 0], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 2], v[vgprValuC + 0 + 2*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 32
v_pk_fma_f16 v[vgprValuC + 0 + 2*16 + 8], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 2], v[vgprValuC + 0 + 2*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 40
v_pk_fma_f16 v[vgprValuC + 1 + 2*16 + 0], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 2], v[vgprValuC + 1 + 2*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 33
v_pk_fma_f16 v[vgprValuC + 1 + 2*16 + 8], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 2], v[vgprValuC + 1 + 2*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 41
v_pk_fma_f16 v[vgprValuC + 2 + 2*16 + 0], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 2], v[vgprValuC + 2 + 2*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 34
v_pk_fma_f16 v[vgprValuC + 2 + 2*16 + 8], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 2], v[vgprValuC + 2 + 2*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 42
v_pk_fma_f16 v[vgprValuC + 3 + 2*16 + 0], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 2], v[vgprValuC + 3 + 2*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 35
v_pk_fma_f16 v[vgprValuC + 3 + 2*16 + 8], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 2], v[vgprValuC + 3 + 2*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 43
v_pk_fma_f16 v[vgprValuC + 4 + 2*16 + 0], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 2], v[vgprValuC + 4 + 2*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 36
v_pk_fma_f16 v[vgprValuC + 4 + 2*16 + 8], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 2], v[vgprValuC + 4 + 2*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 44
v_pk_fma_f16 v[vgprValuC + 5 + 2*16 + 0], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 2], v[vgprValuC + 5 + 2*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 37
v_pk_fma_f16 v[vgprValuC + 5 + 2*16 + 8], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 2], v[vgprValuC + 5 + 2*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 45
v_pk_fma_f16 v[vgprValuC + 6 + 2*16 + 0], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 2], v[vgprValuC + 6 + 2*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 38
v_pk_fma_f16 v[vgprValuC + 6 + 2*16 + 8], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 2], v[vgprValuC + 6 + 2*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 46
v_pk_fma_f16 v[vgprValuC + 7 + 2*16 + 0], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 2], v[vgprValuC + 7 + 2*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 39
v_pk_fma_f16 v[vgprValuC + 7 + 2*16 + 8], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 2], v[vgprValuC + 7 + 2*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 47
v_pk_fma_f16 v[vgprValuC + 0 + 3*16 + 0], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 3], v[vgprValuC + 0 + 3*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 48
v_pk_fma_f16 v[vgprValuC + 0 + 3*16 + 8], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 3], v[vgprValuC + 0 + 3*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 56
v_pk_fma_f16 v[vgprValuC + 1 + 3*16 + 0], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 3], v[vgprValuC + 1 + 3*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 49
v_pk_fma_f16 v[vgprValuC + 1 + 3*16 + 8], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 3], v[vgprValuC + 1 + 3*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 57
v_pk_fma_f16 v[vgprValuC + 2 + 3*16 + 0], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 3], v[vgprValuC + 2 + 3*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 50
v_pk_fma_f16 v[vgprValuC + 2 + 3*16 + 8], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 3], v[vgprValuC + 2 + 3*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 58
v_pk_fma_f16 v[vgprValuC + 3 + 3*16 + 0], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 3], v[vgprValuC + 3 + 3*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 51
v_pk_fma_f16 v[vgprValuC + 3 + 3*16 + 8], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 3], v[vgprValuC + 3 + 3*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 59
v_pk_fma_f16 v[vgprValuC + 4 + 3*16 + 0], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 3], v[vgprValuC + 4 + 3*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 52
v_pk_fma_f16 v[vgprValuC + 4 + 3*16 + 8], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 3], v[vgprValuC + 4 + 3*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 60
v_pk_fma_f16 v[vgprValuC + 5 + 3*16 + 0], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 3], v[vgprValuC + 5 + 3*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 53
v_pk_fma_f16 v[vgprValuC + 5 + 3*16 + 8], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 3], v[vgprValuC + 5 + 3*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 61
v_pk_fma_f16 v[vgprValuC + 6 + 3*16 + 0], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 3], v[vgprValuC + 6 + 3*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 54
v_pk_fma_f16 v[vgprValuC + 6 + 3*16 + 8], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 3], v[vgprValuC + 6 + 3*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 62
v_pk_fma_f16 v[vgprValuC + 7 + 3*16 + 0], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 3], v[vgprValuC + 7 + 3*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 55
v_pk_fma_f16 v[vgprValuC + 7 + 3*16 + 8], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 3], v[vgprValuC + 7 + 3*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 63
s_setprio 0 // Reset priority after macs
.endm
.macro MAC_16x8_X1
// Component.MAC.FMA_F16_Packed
v_pk_fma_f16 v[vgprValuC + 0 + 0*16 + 0], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 0], v[vgprValuC + 0 + 0*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 0
s_setprio 1 // Raise priority while processing macs
v_pk_fma_f16 v[vgprValuC + 0 + 0*16 + 8], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 0], v[vgprValuC + 0 + 0*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 8
v_pk_fma_f16 v[vgprValuC + 1 + 0*16 + 0], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 0], v[vgprValuC + 1 + 0*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 1
v_pk_fma_f16 v[vgprValuC + 1 + 0*16 + 8], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 0], v[vgprValuC + 1 + 0*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 9
v_pk_fma_f16 v[vgprValuC + 2 + 0*16 + 0], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 0], v[vgprValuC + 2 + 0*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 2
v_pk_fma_f16 v[vgprValuC + 2 + 0*16 + 8], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 0], v[vgprValuC + 2 + 0*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 10
v_pk_fma_f16 v[vgprValuC + 3 + 0*16 + 0], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 0], v[vgprValuC + 3 + 0*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 3
v_pk_fma_f16 v[vgprValuC + 3 + 0*16 + 8], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 0], v[vgprValuC + 3 + 0*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 11
v_pk_fma_f16 v[vgprValuC + 4 + 0*16 + 0], v[vgprValuA_X1_I0 + 4], v[vgprValuB_X1_I0 + 0], v[vgprValuC + 4 + 0*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 4
v_pk_fma_f16 v[vgprValuC + 4 + 0*16 + 8], v[vgprValuA_X1_I0 + 4], v[vgprValuB_X1_I0 + 0], v[vgprValuC + 4 + 0*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 12
v_pk_fma_f16 v[vgprValuC + 5 + 0*16 + 0], v[vgprValuA_X1_I0 + 5], v[vgprValuB_X1_I0 + 0], v[vgprValuC + 5 + 0*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 5
v_pk_fma_f16 v[vgprValuC + 5 + 0*16 + 8], v[vgprValuA_X1_I0 + 5], v[vgprValuB_X1_I0 + 0], v[vgprValuC + 5 + 0*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 13
v_pk_fma_f16 v[vgprValuC + 6 + 0*16 + 0], v[vgprValuA_X1_I0 + 6], v[vgprValuB_X1_I0 + 0], v[vgprValuC + 6 + 0*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 6
v_pk_fma_f16 v[vgprValuC + 6 + 0*16 + 8], v[vgprValuA_X1_I0 + 6], v[vgprValuB_X1_I0 + 0], v[vgprValuC + 6 + 0*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 14
v_pk_fma_f16 v[vgprValuC + 7 + 0*16 + 0], v[vgprValuA_X1_I0 + 7], v[vgprValuB_X1_I0 + 0], v[vgprValuC + 7 + 0*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 7
v_pk_fma_f16 v[vgprValuC + 7 + 0*16 + 8], v[vgprValuA_X1_I0 + 7], v[vgprValuB_X1_I0 + 0], v[vgprValuC + 7 + 0*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 15
v_pk_fma_f16 v[vgprValuC + 0 + 1*16 + 0], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 1], v[vgprValuC + 0 + 1*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 16
v_pk_fma_f16 v[vgprValuC + 0 + 1*16 + 8], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 1], v[vgprValuC + 0 + 1*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 24
v_pk_fma_f16 v[vgprValuC + 1 + 1*16 + 0], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 1], v[vgprValuC + 1 + 1*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 17
v_pk_fma_f16 v[vgprValuC + 1 + 1*16 + 8], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 1], v[vgprValuC + 1 + 1*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 25
v_pk_fma_f16 v[vgprValuC + 2 + 1*16 + 0], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 1], v[vgprValuC + 2 + 1*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 18
v_pk_fma_f16 v[vgprValuC + 2 + 1*16 + 8], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 1], v[vgprValuC + 2 + 1*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 26
v_pk_fma_f16 v[vgprValuC + 3 + 1*16 + 0], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 1], v[vgprValuC + 3 + 1*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 19
v_pk_fma_f16 v[vgprValuC + 3 + 1*16 + 8], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 1], v[vgprValuC + 3 + 1*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 27
v_pk_fma_f16 v[vgprValuC + 4 + 1*16 + 0], v[vgprValuA_X1_I0 + 4], v[vgprValuB_X1_I0 + 1], v[vgprValuC + 4 + 1*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 20
v_pk_fma_f16 v[vgprValuC + 4 + 1*16 + 8], v[vgprValuA_X1_I0 + 4], v[vgprValuB_X1_I0 + 1], v[vgprValuC + 4 + 1*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 28
v_pk_fma_f16 v[vgprValuC + 5 + 1*16 + 0], v[vgprValuA_X1_I0 + 5], v[vgprValuB_X1_I0 + 1], v[vgprValuC + 5 + 1*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 21
v_pk_fma_f16 v[vgprValuC + 5 + 1*16 + 8], v[vgprValuA_X1_I0 + 5], v[vgprValuB_X1_I0 + 1], v[vgprValuC + 5 + 1*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 29
v_pk_fma_f16 v[vgprValuC + 6 + 1*16 + 0], v[vgprValuA_X1_I0 + 6], v[vgprValuB_X1_I0 + 1], v[vgprValuC + 6 + 1*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 22
v_pk_fma_f16 v[vgprValuC + 6 + 1*16 + 8], v[vgprValuA_X1_I0 + 6], v[vgprValuB_X1_I0 + 1], v[vgprValuC + 6 + 1*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 30
v_pk_fma_f16 v[vgprValuC + 7 + 1*16 + 0], v[vgprValuA_X1_I0 + 7], v[vgprValuB_X1_I0 + 1], v[vgprValuC + 7 + 1*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 23
v_pk_fma_f16 v[vgprValuC + 7 + 1*16 + 8], v[vgprValuA_X1_I0 + 7], v[vgprValuB_X1_I0 + 1], v[vgprValuC + 7 + 1*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 31
v_pk_fma_f16 v[vgprValuC + 0 + 2*16 + 0], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 2], v[vgprValuC + 0 + 2*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 32
v_pk_fma_f16 v[vgprValuC + 0 + 2*16 + 8], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 2], v[vgprValuC + 0 + 2*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 40
v_pk_fma_f16 v[vgprValuC + 1 + 2*16 + 0], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 2], v[vgprValuC + 1 + 2*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 33
v_pk_fma_f16 v[vgprValuC + 1 + 2*16 + 8], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 2], v[vgprValuC + 1 + 2*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 41
v_pk_fma_f16 v[vgprValuC + 2 + 2*16 + 0], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 2], v[vgprValuC + 2 + 2*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 34
v_pk_fma_f16 v[vgprValuC + 2 + 2*16 + 8], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 2], v[vgprValuC + 2 + 2*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 42
v_pk_fma_f16 v[vgprValuC + 3 + 2*16 + 0], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 2], v[vgprValuC + 3 + 2*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 35
v_pk_fma_f16 v[vgprValuC + 3 + 2*16 + 8], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 2], v[vgprValuC + 3 + 2*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 43
v_pk_fma_f16 v[vgprValuC + 4 + 2*16 + 0], v[vgprValuA_X1_I0 + 4], v[vgprValuB_X1_I0 + 2], v[vgprValuC + 4 + 2*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 36
v_pk_fma_f16 v[vgprValuC + 4 + 2*16 + 8], v[vgprValuA_X1_I0 + 4], v[vgprValuB_X1_I0 + 2], v[vgprValuC + 4 + 2*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 44
v_pk_fma_f16 v[vgprValuC + 5 + 2*16 + 0], v[vgprValuA_X1_I0 + 5], v[vgprValuB_X1_I0 + 2], v[vgprValuC + 5 + 2*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 37
v_pk_fma_f16 v[vgprValuC + 5 + 2*16 + 8], v[vgprValuA_X1_I0 + 5], v[vgprValuB_X1_I0 + 2], v[vgprValuC + 5 + 2*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 45
v_pk_fma_f16 v[vgprValuC + 6 + 2*16 + 0], v[vgprValuA_X1_I0 + 6], v[vgprValuB_X1_I0 + 2], v[vgprValuC + 6 + 2*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 38
v_pk_fma_f16 v[vgprValuC + 6 + 2*16 + 8], v[vgprValuA_X1_I0 + 6], v[vgprValuB_X1_I0 + 2], v[vgprValuC + 6 + 2*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 46
v_pk_fma_f16 v[vgprValuC + 7 + 2*16 + 0], v[vgprValuA_X1_I0 + 7], v[vgprValuB_X1_I0 + 2], v[vgprValuC + 7 + 2*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 39
v_pk_fma_f16 v[vgprValuC + 7 + 2*16 + 8], v[vgprValuA_X1_I0 + 7], v[vgprValuB_X1_I0 + 2], v[vgprValuC + 7 + 2*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 47
v_pk_fma_f16 v[vgprValuC + 0 + 3*16 + 0], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 3], v[vgprValuC + 0 + 3*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 48
v_pk_fma_f16 v[vgprValuC + 0 + 3*16 + 8], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 3], v[vgprValuC + 0 + 3*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 56
v_pk_fma_f16 v[vgprValuC + 1 + 3*16 + 0], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 3], v[vgprValuC + 1 + 3*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 49
v_pk_fma_f16 v[vgprValuC + 1 + 3*16 + 8], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 3], v[vgprValuC + 1 + 3*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 57
v_pk_fma_f16 v[vgprValuC + 2 + 3*16 + 0], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 3], v[vgprValuC + 2 + 3*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 50
v_pk_fma_f16 v[vgprValuC + 2 + 3*16 + 8], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 3], v[vgprValuC + 2 + 3*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 58
v_pk_fma_f16 v[vgprValuC + 3 + 3*16 + 0], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 3], v[vgprValuC + 3 + 3*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 51
v_pk_fma_f16 v[vgprValuC + 3 + 3*16 + 8], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 3], v[vgprValuC + 3 + 3*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 59
v_pk_fma_f16 v[vgprValuC + 4 + 3*16 + 0], v[vgprValuA_X1_I0 + 4], v[vgprValuB_X1_I0 + 3], v[vgprValuC + 4 + 3*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 52
v_pk_fma_f16 v[vgprValuC + 4 + 3*16 + 8], v[vgprValuA_X1_I0 + 4], v[vgprValuB_X1_I0 + 3], v[vgprValuC + 4 + 3*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 60
v_pk_fma_f16 v[vgprValuC + 5 + 3*16 + 0], v[vgprValuA_X1_I0 + 5], v[vgprValuB_X1_I0 + 3], v[vgprValuC + 5 + 3*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 53
v_pk_fma_f16 v[vgprValuC + 5 + 3*16 + 8], v[vgprValuA_X1_I0 + 5], v[vgprValuB_X1_I0 + 3], v[vgprValuC + 5 + 3*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 61
v_pk_fma_f16 v[vgprValuC + 6 + 3*16 + 0], v[vgprValuA_X1_I0 + 6], v[vgprValuB_X1_I0 + 3], v[vgprValuC + 6 + 3*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 54
v_pk_fma_f16 v[vgprValuC + 6 + 3*16 + 8], v[vgprValuA_X1_I0 + 6], v[vgprValuB_X1_I0 + 3], v[vgprValuC + 6 + 3*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 62
v_pk_fma_f16 v[vgprValuC + 7 + 3*16 + 0], v[vgprValuA_X1_I0 + 7], v[vgprValuB_X1_I0 + 3], v[vgprValuC + 7 + 3*16 + 0] op_sel:[0,0,0] op_sel_hi:[1,0,1] // 55
v_pk_fma_f16 v[vgprValuC + 7 + 3*16 + 8], v[vgprValuA_X1_I0 + 7], v[vgprValuB_X1_I0 + 3], v[vgprValuC + 7 + 3*16 + 8] op_sel:[0,1,0] op_sel_hi:[1,1,1] // 63
s_setprio 0 // Reset priority after macs
.endm



/******************************************/
/* Allocate Resources                     */
/******************************************/

Cijk_Ailk_Bjlk_HB_MT256x128x16_SN_K1_PGR1_TT16_8_WG16_16_1_preloaded: // Kernel start when preloading
s_mov_b32 vcc_hi, 0                                // Ensure hi bits are zero

/* Load Kernel Args */
_s_load_b512 s[24:39], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x0 // 
_s_load_b512 s[40:55], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x40 // 
s_mov_b32 m0, 0x7000                               // LDS clamp at 28672 bytes
v_mov_b32 v[vgprSerial], v0                        // thread serial id

/******************************************/
/* Local Read Addresses                   */
/******************************************/


/* local read addresses: tile assignments a/b */

/*lr0I = serial % SG0I*/
v_lshrrev_b32 v0, 4, v[vgprSerial]                 // v0 = v[vgprSerial] / 16
v_and_b32 v1, 15, v[vgprSerial]                    // v1 = v[vgprSerial] % 16
/*lr1J = (serial / SG1J) % SG1J*/
v_lshrrev_b32 v2, 4, v0                            // v2 = v0 / 16
v_and_b32 v3, 15, v0                               // v3 = v0 % 16


/* local read addresses: final offsets a */

v_lshrrev_b32 v0, 8, v[vgprSerial]                 // LSU offset: sgid = Serial / subGroup(256)
v_lshlrev_b32 v0, 0x8, v0                          // LSU offset: lsuoffset = sgid*(MT0+PAD)
v_lshlrev_b32 v1, 0x3, v1                          // Final Offset: lrAOffset * VW
_v_add_lshl_u32 v[vgprLocalReadAddrA], v0, v1, 0x1 // Final Offset: offset = (lro0*VW+lsuoffset)*bpe


/* local read addresses: final offsets b */

v_lshrrev_b32 v0, 8, v[vgprSerial]                 // LSU offset: sgid = Serial / subGroup(256)
v_lshlrev_b32 v0, 0x7, v0                          // LSU offset: lsuoffset = sgid*(MT1+PAD)
v_lshlrev_b32 v3, 0x3, v3                          // Final Offset: lrBOffset * VW
_v_add_lshl_u32 v[vgprLocalReadAddrB], v0, v3, 0x1 // Final Offset: offset = (lro1*VW+lsuoffset)*bpe


/* local read addresses: declare addresses a */

/* N/A */


/* local read addresses: declare addresses b */

_v_add_co_u32 v[vgprLocalReadAddrB+0], vcc_lo, 0x2000, v[vgprLocalReadAddrB+0] //  += LdsOffsetB (lower)


/* global read addresses: tile offset assignment a */

/* LVCA = 32 */
/* v0 = (local)groA-tile = serial%LVCA (note (wgA*MTA) will be added to SRD) */
/* v1 = groA-unroll = serial/LVCA */
v_lshrrev_b32 v1, 5, v[vgprSerial]                 // v1 = v[vgprSerial] / 32
v_and_b32 v0, 31, v[vgprSerial]                    // v0 = v[vgprSerial] % 32
/* gro-tile *= glvw */
v_lshlrev_b32 v0, 0x3, v0                          // v0 = v0 * 8


/* global read addresses: tile offset assignment b */

/* LVCB = 16 */
/* v2 = (local)groB-tile = serial%LVCB (note (wgB*MTB) will be added to SRD) */
/* v3 = groB-unroll = serial/LVCB */
v_lshrrev_b32 v3, 4, v[vgprSerial]                 // v3 = v[vgprSerial] / 16
v_and_b32 v2, 15, v[vgprSerial]                    // v2 = v[vgprSerial] % 16
/* gro-tile *= glvw */
v_lshlrev_b32 v2, 0x3, v2                          // v2 = v2 * 8


/******************************************/
/* Local Write Addresses                  */
/******************************************/

/* lwaTileAssignmentA = v0 */

/* lwaTileAssignmentB = v2 */

/* lwaUnrollAssignmentA = v1 */

/* lwaUnrollAssignmentB = v3 */


/* local write addresses: first offset a */

v_mul_u32_u24 v[vgprLocalWriteAddrA], 0x100, v1    // lwAL**(MTA + PAD)
_v_add_lshl_u32 v[vgprLocalWriteAddrA], v0, v[vgprLocalWriteAddrA], 0x1 // lwFOA = (lwAA + lwAL*(MT0I+PAD))*bpe


/* local write addresses: first offset b */

v_mul_u32_u24 v[vgprLocalWriteAddrB], 0x80, v3     // lwBL**(MTB + PAD)
_v_add_lshl_u32 v[vgprLocalWriteAddrB], v2, v[vgprLocalWriteAddrB], 0x1 // lwFOB = (lwBB + lwBL*(MT1J+PAD))*bpe
_v_add_co_u32 v[vgprLocalWriteAddrB], vcc_lo, 0x2000, v[vgprLocalWriteAddrB] // lwFOB = lwB1J + lwBL*MT1J + LDS_OFFSET_B=4096*2







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

s_mul_i32 s58, s[sgprWorkGroup0], 256              // WorkGroup[01] * MT
s_sub_u32 s58, s[sgprSizeI], s58                   // edge = Size0I - WG*MT
s_sub_u32 s58, s58, 8                              // edge -= margin(8)
v_mov_b32 v9, s58                                  // edge vgpr = Size0I- WG*MT - margin(8)
v_min_i32 v4, v9, v4                               // offset = (offset < edge) ? offset(v4) : edge(v9)


/* global read addresses: shift b */

s_mul_i32 s58, s[sgprWorkGroup1], 128              // WorkGroup[01] * MT
s_sub_u32 s58, s[sgprSizeJ], s58                   // edge = Size1J - WG*MT
s_sub_u32 s58, s58, 8                              // edge -= margin(8)
v_mov_b32 v9, s58                                  // edge vgpr = Size1J- WG*MT - margin(8)
v_min_i32 v5, v9, v5                               // offset = (offset < edge) ? offset(v5) : edge(v9)


/* global read addresses: final offsets a */

GLOBAL_OFFSET_A vgprGlobalReadOffsetA+0,  4,  6, 9 // gROA_0_0_0_0
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+1,  4,  7, 9 // gROA_0_0_1_0


/* global read addresses: final offsets b */

GLOBAL_OFFSET_B vgprGlobalReadOffsetB+0,  5,  8, 9 // gROB_0_0_0_0


/* global read addresses: addresses a */

/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s61, s[sgprWorkGroup0], 256           // WorkGroup[01] * MT
s_mul_i32 s60, s[sgprWorkGroup0], 256              // WorkGroup[01] * MT
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
s_mul_hi_u32 s61, s[sgprWorkGroup1], 128           // WorkGroup[01] * MT
s_mul_i32 s60, s[sgprWorkGroup1], 128              // WorkGroup[01] * MT
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

s_mul_i32 s[sgprGlobalReadIncsB+0], DepthU*BpeB, s[sgprStrideBL] // incrB unrollIdx)

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



/* initC: remove C-tile 0-64 from pool */

/* initC: remove AB-tile 66-91 from pool */
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
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+3] offset:4096 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 4096

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


/* local read prefetch b */

_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0


/* local read inc a */

/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */


/* local read inc b */

/* N/A, lro->128 */
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
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:512 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:768 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:256 // L -> Reg lro=128 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->512 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
_buffer_load_b128 v[vgprG2LA+0:vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_0_0
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 1 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:512 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->768 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->384 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
_buffer_load_b128 v[vgprG2LA+4:vgprG2LA+4+3], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_1_0
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 2 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:1536 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:1792 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:768 // L -> Reg lro=384 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1024 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->512 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
_buffer_load_b128 v[vgprG2LB+0:vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 3 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:2048 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:2304 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1280 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->640 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

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
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 4 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:2560 // L -> Reg lro=1280 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:2816 // L -> Reg lro=1280 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1280 // L -> Reg lro=640 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1536 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->768 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

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
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 5 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:3072 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:3328 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1536 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1792 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->896 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 6 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=1792 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:3840 // L -> Reg lro=1792 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1792 // L -> Reg lro=896 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->2048 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1024 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 7 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:4096 // L -> Reg lro=2048 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:4352 // L -> Reg lro=2048 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:2048 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->2304 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1152 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 8 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:4608 // L -> Reg lro=2304 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:4864 // L -> Reg lro=2304 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:2304 // L -> Reg lro=1152 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->2560 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1280 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 9 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:5120 // L -> Reg lro=2560 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:5376 // L -> Reg lro=2560 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:2560 // L -> Reg lro=1280 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->2816 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1408 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 10 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:5632 // L -> Reg lro=2816 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:5888 // L -> Reg lro=2816 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:2816 // L -> Reg lro=1408 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->3072 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1536 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 11 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:6144 // L -> Reg lro=3072 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:6400 // L -> Reg lro=3072 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:3072 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->3328 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1664 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 12 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:6656 // L -> Reg lro=3328 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:6912 // L -> Reg lro=3328 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:3328 // L -> Reg lro=1664 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->3584 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1792 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
/* sched write - iter 12 writesPerItem=1 */
s_waitcnt vmcnt(2)                                 // lgkmcnt=-1 vmcnt=2wait for global read before writing to local
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+3] offset:16384 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 16384
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 13 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:7168 // L -> Reg lro=3584 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:7424 // L -> Reg lro=3584 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:3584 // L -> Reg lro=1792 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->3840 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1920 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
/* sched write - iter 13 writesPerItem=1 */
s_waitcnt vmcnt(1)                                 // lgkmcnt=-1 vmcnt=1wait for global read before writing to local
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+3] offset:20480 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 20480
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 14 (reset local read pointers iteration)  (swap and reset local write pointers iteration)  (swap local read pointers iteration)  */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:7680 // L -> Reg lro=3840 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:7936 // L -> Reg lro=3840 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:3840 // L -> Reg lro=1920 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
/* sched write - iter 14 writesPerItem=1 */
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
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 15 */

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-13wait for local write
s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //

/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:16384 // L -> Reg lro=0 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:16640 // L -> Reg lro=0 swapByteOffset=16384 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:16384 // L -> Reg lro=0 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->128 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
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
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:16896 // L -> Reg lro=256 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:17152 // L -> Reg lro=256 swapByteOffset=16384 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:16640 // L -> Reg lro=128 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->512 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
_buffer_load_b128 v[vgprG2LA+0:vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_0_0
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 1 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:17408 // L -> Reg lro=512 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:17664 // L -> Reg lro=512 swapByteOffset=16384 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:16896 // L -> Reg lro=256 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->768 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->384 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
_buffer_load_b128 v[vgprG2LA+4:vgprG2LA+4+3], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_1_0
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 2 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:17920 // L -> Reg lro=768 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:18176 // L -> Reg lro=768 swapByteOffset=16384 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:17152 // L -> Reg lro=384 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1024 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->512 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
_buffer_load_b128 v[vgprG2LB+0:vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 3 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:18432 // L -> Reg lro=1024 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:18688 // L -> Reg lro=1024 swapByteOffset=16384 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:17408 // L -> Reg lro=512 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1280 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->640 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

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
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 4 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:18944 // L -> Reg lro=1280 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:19200 // L -> Reg lro=1280 swapByteOffset=16384 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:17664 // L -> Reg lro=640 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1536 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->768 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

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
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 5 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:19456 // L -> Reg lro=1536 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:19712 // L -> Reg lro=1536 swapByteOffset=16384 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:17920 // L -> Reg lro=768 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1792 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->896 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 6 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:19968 // L -> Reg lro=1792 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:20224 // L -> Reg lro=1792 swapByteOffset=16384 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:18176 // L -> Reg lro=896 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->2048 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1024 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 7 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:20480 // L -> Reg lro=2048 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:20736 // L -> Reg lro=2048 swapByteOffset=16384 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:18432 // L -> Reg lro=1024 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->2304 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1152 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 8 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:20992 // L -> Reg lro=2304 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:21248 // L -> Reg lro=2304 swapByteOffset=16384 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:18688 // L -> Reg lro=1152 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->2560 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1280 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 9 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:21504 // L -> Reg lro=2560 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:21760 // L -> Reg lro=2560 swapByteOffset=16384 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:18944 // L -> Reg lro=1280 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->2816 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1408 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 10 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:22016 // L -> Reg lro=2816 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:22272 // L -> Reg lro=2816 swapByteOffset=16384 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:19200 // L -> Reg lro=1408 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->3072 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1536 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 11 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:22528 // L -> Reg lro=3072 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:22784 // L -> Reg lro=3072 swapByteOffset=16384 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:19456 // L -> Reg lro=1536 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->3328 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1664 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 12 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:23040 // L -> Reg lro=3328 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:23296 // L -> Reg lro=3328 swapByteOffset=16384 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:19712 // L -> Reg lro=1664 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->3584 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1792 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
/* sched write - iter 12 writesPerItem=1 */
s_waitcnt vmcnt(2)                                 // lgkmcnt=-1 vmcnt=2wait for global read before writing to local
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+3] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 13 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:23552 // L -> Reg lro=3584 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:23808 // L -> Reg lro=3584 swapByteOffset=16384 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:19968 // L -> Reg lro=1792 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->3840 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1920 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
/* sched write - iter 13 writesPerItem=1 */
s_waitcnt vmcnt(1)                                 // lgkmcnt=-1 vmcnt=1wait for global read before writing to local
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+3] offset:4096 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 4096
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 14 (reset local read pointers iteration)  (swap and reset local write pointers iteration)  (swap local read pointers iteration)  */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:24064 // L -> Reg lro=3840 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:24320 // L -> Reg lro=3840 swapByteOffset=16384 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:20224 // L -> Reg lro=1920 swapByteOffset=16384 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
/* sched write - iter 14 writesPerItem=1 */
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
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 15 */

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-13wait for local write
s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //

/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->128 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
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

s_mov_b32 s56, 0x3c003c00                          // Packed alpha==1.0
s_cmp_eq_u32 s[sgprAlpha], s56                     // alpha == 1.0?
s_cbranch_scc0 OptNLL_End_15                       // branch if alpha != 1

s_and_b32 s56, 255, s[sgprSizeI]                   // s56 = s[sgprSizeI] % 256
s_add_u32 s57, -0x1, s[sgprNumWorkGroups0]         // 
s_cmp_ge_u32 s[sgprWorkGroup0], s57                // wg0 >= nwg0-1 ?
s_cselect_b32 s56, s56, 0                          // set rMT0
s_cmpk_gt_u32 s56, 0x0                             // rMT0 > 0
s_cbranch_scc1 OptNLL_End_15                       // jump if edges required
s_and_b32 s56, 127, s[sgprSizeJ]                   // s56 = s[sgprSizeJ] % 128
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
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:512 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:768 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:256 // L -> Reg lro=128 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->512 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 1 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:512 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->768 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->384 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 2 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:1536 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:1792 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:768 // L -> Reg lro=384 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1024 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->512 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 3 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:2048 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:2304 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1280 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->640 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 4 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:2560 // L -> Reg lro=1280 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:2816 // L -> Reg lro=1280 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1280 // L -> Reg lro=640 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1536 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->768 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 5 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:3072 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:3328 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1536 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1792 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->896 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 6 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=1792 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:3840 // L -> Reg lro=1792 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1792 // L -> Reg lro=896 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->2048 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1024 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 7 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:4096 // L -> Reg lro=2048 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:4352 // L -> Reg lro=2048 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:2048 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->2304 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1152 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 8 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:4608 // L -> Reg lro=2304 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:4864 // L -> Reg lro=2304 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:2304 // L -> Reg lro=1152 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->2560 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1280 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 9 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:5120 // L -> Reg lro=2560 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:5376 // L -> Reg lro=2560 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:2560 // L -> Reg lro=1280 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->2816 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1408 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 10 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:5632 // L -> Reg lro=2816 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:5888 // L -> Reg lro=2816 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:2816 // L -> Reg lro=1408 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->3072 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1536 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 11 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:6144 // L -> Reg lro=3072 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:6400 // L -> Reg lro=3072 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:3072 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->3328 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1664 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 12 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:6656 // L -> Reg lro=3328 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:6912 // L -> Reg lro=3328 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:3328 // L -> Reg lro=1664 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->3584 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1792 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 13 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:7168 // L -> Reg lro=3584 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:7424 // L -> Reg lro=3584 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:3584 // L -> Reg lro=1792 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->3840 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1920 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 14 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:7680 // L -> Reg lro=3840 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:7936 // L -> Reg lro=3840 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:3840 // L -> Reg lro=1920 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 15 (last unrolled loop) */

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=0 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1
/* Stores for OptNLL */
Summation_End_OptNLL_16:
/* endSummation: add vgpr [66...108) to pool */
.set NumFullBlocks, UNDEF
.set WgmRemainder1, UNDEF
.set MagicNumberWgmRemainder1, UNDEF
/* computeStoreVgprs */
v_lshrrev_b32 v67, 4, v[vgprSerial]                // v67 = v[vgprSerial] / 16
v_and_b32 v66, 15, v[vgprSerial]                   // v66 = v[vgprSerial] % 16
v_lshlrev_b32 v66, 0x3, v66                        // v66 = v66 * 8
v_lshlrev_b32 v67, 0x3, v67                        // v67 = v67 * 8
v_mul_lo_u32 v68, v67, s[sgprStrideC1J]            // rowStart vgpr
v_mul_lo_u32 v69, v67, s[sgprStrideD1J]            // rowStart vgpr

s_mul_i32 s54, 0x100, s[sgprWorkGroup0]            // s54 = wg0*MT0
_v_add_co_u32 v66, vcc_lo, s54, v66                // coord0 = tid0*VW + wg0*MT0
s_mul_i32 s56, 0x80, s[sgprWorkGroup1]             // <- wg1*MT1
_v_add_co_u32 v67, vcc_lo, s56, v67                // coord1 = tid1*VW + wg1*MT1
GW_B0_E0_19:

/* edge=0, allocate 1 sgpr. perBatchTmpS=1 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=16 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw8); (0,1,0,0:vw8); (0,0,1,0:vw8); (0,1,1,0:vw8); (0,0,2,0:vw8); (0,1,2,0:vw8); (0,0,3,0:vw8); (0,1,3,0:vw8); (0,0,4,0:vw8); (0,1,4,0:vw8); (0,0,5,0:vw8); (0,1,5,0:vw8); (0,0,6,0:vw8); (0,1,6,0:vw8); (0,0,7,0:vw8); (0,1,7,0:vw8) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
/* (d1,vc1,d0,vc0)=(0,1,1,0) */
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
/* (d1,vc1,d0,vc0)=(0,2,1,0) */
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
/* (d1,vc1,d0,vc0)=(0,3,1,0) */
/* (d1,vc1,d0,vc0)=(0,4,0,0) */
/* (d1,vc1,d0,vc0)=(0,4,1,0) */
/* (d1,vc1,d0,vc0)=(0,5,0,0) */
/* (d1,vc1,d0,vc0)=(0,5,1,0) */
/* (d1,vc1,d0,vc0)=(0,6,0,0) */
/* (d1,vc1,d0,vc0)=(0,6,1,0) */
/* (d1,vc1,d0,vc0)=(0,7,0,0) */
/* (d1,vc1,d0,vc0)=(0,7,1,0) */
_v_add_lshl_u32 v72, v69, v66, 0x1                 // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=66, coord0Vgpr=66

/* apply mask, calc new C and issue writes */
_buffer_store_b128 v[0:3], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[4:7], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[8:11], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[12:15], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[16:19], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[20:23], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[24:27], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[28:31], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[32:35], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[36:39], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[40:43], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[44:47], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[48:51], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[52:55], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[56:59], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[60:63], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_branch label_GW_End_21                           // jump to end
label_GW_End_21:

s_endpgm                                           // Kernel End
OptNLL_End_15:


/******************************************/
/* Ord. NoLoadLoop - Begin                                      */
/******************************************/




/* iter 0 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:512 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:768 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:256 // L -> Reg lro=128 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->512 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 1 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:512 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->768 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->384 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 2 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:1536 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:1792 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:768 // L -> Reg lro=384 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1024 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->512 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 3 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:2048 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:2304 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1280 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->640 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 4 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:2560 // L -> Reg lro=1280 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:2816 // L -> Reg lro=1280 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1280 // L -> Reg lro=640 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1536 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->768 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 5 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:3072 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:3328 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1536 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1792 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->896 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 6 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=1792 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:3840 // L -> Reg lro=1792 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1792 // L -> Reg lro=896 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->2048 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1024 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 7 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:4096 // L -> Reg lro=2048 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:4352 // L -> Reg lro=2048 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:2048 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->2304 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1152 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 8 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:4608 // L -> Reg lro=2304 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:4864 // L -> Reg lro=2304 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:2304 // L -> Reg lro=1152 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->2560 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1280 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 9 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:5120 // L -> Reg lro=2560 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:5376 // L -> Reg lro=2560 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:2560 // L -> Reg lro=1280 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->2816 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1408 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 10 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:5632 // L -> Reg lro=2816 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:5888 // L -> Reg lro=2816 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:2816 // L -> Reg lro=1408 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->3072 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1536 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 11 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:6144 // L -> Reg lro=3072 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:6400 // L -> Reg lro=3072 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:3072 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->3328 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1664 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 12 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:6656 // L -> Reg lro=3328 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:6912 // L -> Reg lro=3328 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:3328 // L -> Reg lro=1664 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->3584 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1792 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 13 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:7168 // L -> Reg lro=3584 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:7424 // L -> Reg lro=3584 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:3584 // L -> Reg lro=1792 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->3840 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1920 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X1

/* iter 14 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:7680 // L -> Reg lro=3840 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:7936 // L -> Reg lro=3840 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:3840 // L -> Reg lro=1920 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_waitcnt lgkmcnt(3)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=3 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* iter 15 (last unrolled loop) */

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=0 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
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
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+3] offset:4096 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 4096


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


/* local read b */

_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0


/* local read inc a */

s_mov_b32 s56, 0x200                               // inc
_v_add_co_u32 v[vgprLocalReadAddrA], vcc_lo, s56, v[vgprLocalReadAddrA] // lrA += 512 (LSU*(MT+PAD)*bpe)


/* local read inc b */

s_mov_b32 s56, 0x100                               // inc
_v_add_co_u32 v[vgprLocalReadAddrB], vcc_lo, s56, v[vgprLocalReadAddrB] // lrB += 256 (LSU*(MT+PAD)*bpe)

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-14wait for local read

.align32 8, 0xbf800001                             // align v_pk_fma
MAC_16x8_X0

/* closeLoop loopL finalLoop=1 tailLoop=1 */
s_sub_i32 s[sgprLoopCounterL], s[sgprLoopCounterL], 0x1 // dec counterL (tailLoop)
s_add_u32 s[sgprOrigLoopCounter], s[sgprOrigLoopCounter], 0x1 // inc counterL
s_cmp_le_i32 s[sgprLoopCounterL], 0x0              // counterL<=0
s_cbranch_scc0 TailLoopBeginL_6                    // restart LoopL
TailLoopEndL_7:

SkipTailLoopL_8:

Summation_End_28:
/* endSummation: add vgpr [66...108) to pool */
.set NumFullBlocks, UNDEF
.set WgmRemainder1, UNDEF
.set MagicNumberWgmRemainder1, UNDEF


/* shift vector components d0 */

v_mov_b32 v67, s[sgprWorkGroup0]                   // 
v_mul_i32_i24 v67, -0x100, v67                     // wg*MT
_v_add_co_u32 v67, vcc_lo, s[sgprSizesFree+0], v67 // wgMT = Size - wg*MT
v_mov_b32 v66, 0x100                               // MT
v_min_u32 v67, v66, v67                            // wgMT = (wgMT < MT) ? wgMT : MT
v_lshrrev_b32 v66, 3, v67                          // v66 = v67 / 8
v_and_b32 v68, 7, v67                              // v68 = v67 % 8
v_and_b32 v69, 15, v66                             // v69 = v66 % 16
v_and_b32 v70, 15, v[vgprSerial]                   // v70 = v[vgprSerial] % 16
v_lshrrev_b32 v71, 7, v67                          // v71 = v67 / 128
v_and_b32 v72, 7, v67                              // v72 = v67 % 8
v_mov_b32 v73, v72                                 // duplicate
v_lshrrev_b32 v72, 3, v73                          // v72 = v73 / 8
_v_add_co_u32 v72, vcc_lo, v71, v72                // vId = 2 components
v_cmp_eq_u32 vcc_lo, v68, 0x1                      // wgMT%VW == 1
s_cbranch_vccnz label_0029                         // shift d0 r=1
v_cmp_eq_u32 vcc_lo, v68, 0x2                      // wgMT%VW == 2
s_cbranch_vccnz label_0032                         // shift d0 r=2
v_cmp_eq_u32 vcc_lo, v68, 0x3                      // wgMT%VW == 3
s_cbranch_vccnz label_0035                         // shift d0 r=3
v_cmp_eq_u32 vcc_lo, v68, 0x4                      // wgMT%VW == 4
s_cbranch_vccnz label_0038                         // shift d0 r=4
v_cmp_eq_u32 vcc_lo, v68, 0x5                      // wgMT%VW == 5
s_cbranch_vccnz label_0041                         // shift d0 r=5
v_cmp_eq_u32 vcc_lo, v68, 0x6                      // wgMT%VW == 6
s_cbranch_vccnz label_0044                         // shift d0 r=6
v_cmp_eq_u32 vcc_lo, v68, 0x7                      // wgMT%VW == 7
s_cbranch_vccnz label_0047                         // shift d0 r=7
s_branch label_0050                                // no shifting

/******************************************/
/* shift d0 r=1                           */
/******************************************/
label_0029:
v_cmp_eq_u32 vcc_lo, v72, 0x0                      // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0030                         // shift d0, r=1, v=0
v_cmp_eq_u32 vcc_lo, v72, 0x1                      // wgMT/(SG*VW) == 1
s_cbranch_vccnz label_0031                         // shift d0, r=1, v=1

/* shift d0 r=1 v=0 */
label_0030:
_v_cmpx_eq_u32 s53, v70, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=7, dst=0
// 1, 0, 0, 0, 0, 7
// srcLo=0, dstLo=1
v_lshrrev_b32 v0, 0x10, v3                         // hi16 -> lo16
// src=23, dst=16
// 1, 0, 1, 0, 16, 23
// srcLo=0, dstLo=1
v_lshrrev_b32 v8, 0x10, v11                        // hi16 -> lo16
// src=39, dst=32
// 1, 0, 2, 0, 32, 39
// srcLo=0, dstLo=1
v_lshrrev_b32 v16, 0x10, v19                       // hi16 -> lo16
// src=55, dst=48
// 1, 0, 3, 0, 48, 55
// srcLo=0, dstLo=1
v_lshrrev_b32 v24, 0x10, v27                       // hi16 -> lo16
// src=71, dst=64
// 1, 0, 4, 0, 64, 71
// srcLo=0, dstLo=1
v_lshrrev_b32 v32, 0x10, v35                       // hi16 -> lo16
// src=87, dst=80
// 1, 0, 5, 0, 80, 87
// srcLo=0, dstLo=1
v_lshrrev_b32 v40, 0x10, v43                       // hi16 -> lo16
// src=103, dst=96
// 1, 0, 6, 0, 96, 103
// srcLo=0, dstLo=1
v_lshrrev_b32 v48, 0x10, v51                       // hi16 -> lo16
// src=119, dst=112
// 1, 0, 7, 0, 112, 119
// srcLo=0, dstLo=1
v_lshrrev_b32 v56, 0x10, v59                       // hi16 -> lo16
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0050                                // done shifting

/* shift d0 r=1 v=1 */
label_0031:
_v_cmpx_eq_u32 s53, v70, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=15, dst=8
// 1, 1, 0, 0, 8, 15
// srcLo=0, dstLo=1
v_lshrrev_b32 v4, 0x10, v7                         // hi16 -> lo16
// src=31, dst=24
// 1, 1, 1, 0, 24, 31
// srcLo=0, dstLo=1
v_lshrrev_b32 v12, 0x10, v15                       // hi16 -> lo16
// src=47, dst=40
// 1, 1, 2, 0, 40, 47
// srcLo=0, dstLo=1
v_lshrrev_b32 v20, 0x10, v23                       // hi16 -> lo16
// src=63, dst=56
// 1, 1, 3, 0, 56, 63
// srcLo=0, dstLo=1
v_lshrrev_b32 v28, 0x10, v31                       // hi16 -> lo16
// src=79, dst=72
// 1, 1, 4, 0, 72, 79
// srcLo=0, dstLo=1
v_lshrrev_b32 v36, 0x10, v39                       // hi16 -> lo16
// src=95, dst=88
// 1, 1, 5, 0, 88, 95
// srcLo=0, dstLo=1
v_lshrrev_b32 v44, 0x10, v47                       // hi16 -> lo16
// src=111, dst=104
// 1, 1, 6, 0, 104, 111
// srcLo=0, dstLo=1
v_lshrrev_b32 v52, 0x10, v55                       // hi16 -> lo16
// src=127, dst=120
// 1, 1, 7, 0, 120, 127
// srcLo=0, dstLo=1
v_lshrrev_b32 v60, 0x10, v63                       // hi16 -> lo16
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0050                                // done shifting

/******************************************/
/* shift d0 r=2                           */
/******************************************/
label_0032:
v_cmp_eq_u32 vcc_lo, v72, 0x0                      // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0033                         // shift d0, r=2, v=0
v_cmp_eq_u32 vcc_lo, v72, 0x1                      // wgMT/(SG*VW) == 1
s_cbranch_vccnz label_0034                         // shift d0, r=2, v=1

/* shift d0 r=2 v=0 */
label_0033:
_v_cmpx_eq_u32 s53, v70, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=6, dst=0
// 2, 0, 0, 0, 0, 6
v_mov_b32 v0, v3                                   // rC[0+0*VW+0*TT0I] = rC[6+0*VW+0*TT0I]
// src=7, dst=1
// 2, 0, 0, 1, 1, 7
// src=22, dst=16
// 2, 0, 1, 0, 16, 22
v_mov_b32 v8, v11                                  // rC[0+0*VW+1*TT0I] = rC[6+0*VW+1*TT0I]
// src=23, dst=17
// 2, 0, 1, 1, 17, 23
// src=38, dst=32
// 2, 0, 2, 0, 32, 38
v_mov_b32 v16, v19                                 // rC[0+0*VW+2*TT0I] = rC[6+0*VW+2*TT0I]
// src=39, dst=33
// 2, 0, 2, 1, 33, 39
// src=54, dst=48
// 2, 0, 3, 0, 48, 54
v_mov_b32 v24, v27                                 // rC[0+0*VW+3*TT0I] = rC[6+0*VW+3*TT0I]
// src=55, dst=49
// 2, 0, 3, 1, 49, 55
// src=70, dst=64
// 2, 0, 4, 0, 64, 70
v_mov_b32 v32, v35                                 // rC[0+0*VW+4*TT0I] = rC[6+0*VW+4*TT0I]
// src=71, dst=65
// 2, 0, 4, 1, 65, 71
// src=86, dst=80
// 2, 0, 5, 0, 80, 86
v_mov_b32 v40, v43                                 // rC[0+0*VW+5*TT0I] = rC[6+0*VW+5*TT0I]
// src=87, dst=81
// 2, 0, 5, 1, 81, 87
// src=102, dst=96
// 2, 0, 6, 0, 96, 102
v_mov_b32 v48, v51                                 // rC[0+0*VW+6*TT0I] = rC[6+0*VW+6*TT0I]
// src=103, dst=97
// 2, 0, 6, 1, 97, 103
// src=118, dst=112
// 2, 0, 7, 0, 112, 118
v_mov_b32 v56, v59                                 // rC[0+0*VW+7*TT0I] = rC[6+0*VW+7*TT0I]
// src=119, dst=113
// 2, 0, 7, 1, 113, 119
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0050                                // done shifting

/* shift d0 r=2 v=1 */
label_0034:
_v_cmpx_eq_u32 s53, v70, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=14, dst=8
// 2, 1, 0, 0, 8, 14
v_mov_b32 v4, v7                                   // rC[0+1*VW+0*TT0I] = rC[6+1*VW+0*TT0I]
// src=15, dst=9
// 2, 1, 0, 1, 9, 15
// src=30, dst=24
// 2, 1, 1, 0, 24, 30
v_mov_b32 v12, v15                                 // rC[0+1*VW+1*TT0I] = rC[6+1*VW+1*TT0I]
// src=31, dst=25
// 2, 1, 1, 1, 25, 31
// src=46, dst=40
// 2, 1, 2, 0, 40, 46
v_mov_b32 v20, v23                                 // rC[0+1*VW+2*TT0I] = rC[6+1*VW+2*TT0I]
// src=47, dst=41
// 2, 1, 2, 1, 41, 47
// src=62, dst=56
// 2, 1, 3, 0, 56, 62
v_mov_b32 v28, v31                                 // rC[0+1*VW+3*TT0I] = rC[6+1*VW+3*TT0I]
// src=63, dst=57
// 2, 1, 3, 1, 57, 63
// src=78, dst=72
// 2, 1, 4, 0, 72, 78
v_mov_b32 v36, v39                                 // rC[0+1*VW+4*TT0I] = rC[6+1*VW+4*TT0I]
// src=79, dst=73
// 2, 1, 4, 1, 73, 79
// src=94, dst=88
// 2, 1, 5, 0, 88, 94
v_mov_b32 v44, v47                                 // rC[0+1*VW+5*TT0I] = rC[6+1*VW+5*TT0I]
// src=95, dst=89
// 2, 1, 5, 1, 89, 95
// src=110, dst=104
// 2, 1, 6, 0, 104, 110
v_mov_b32 v52, v55                                 // rC[0+1*VW+6*TT0I] = rC[6+1*VW+6*TT0I]
// src=111, dst=105
// 2, 1, 6, 1, 105, 111
// src=126, dst=120
// 2, 1, 7, 0, 120, 126
v_mov_b32 v60, v63                                 // rC[0+1*VW+7*TT0I] = rC[6+1*VW+7*TT0I]
// src=127, dst=121
// 2, 1, 7, 1, 121, 127
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0050                                // done shifting

/******************************************/
/* shift d0 r=3                           */
/******************************************/
label_0035:
v_cmp_eq_u32 vcc_lo, v72, 0x0                      // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0036                         // shift d0, r=3, v=0
v_cmp_eq_u32 vcc_lo, v72, 0x1                      // wgMT/(SG*VW) == 1
s_cbranch_vccnz label_0037                         // shift d0, r=3, v=1

/* shift d0 r=3 v=0 */
label_0036:
_v_cmpx_eq_u32 s53, v70, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=5, dst=0
// 3, 0, 0, 0, 0, 5
// srcLo=0, dstLo=1
v_lshrrev_b32 v0, 0x10, v2                         // hi16 -> lo16
// src=6, dst=1
// 3, 0, 0, 1, 1, 6
// srcLo=1, dstLo=0
v_and_b32 v0, 0x0000FFFF, v0                       // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v3                        // left shift src 16 bits
v_or_b32 v0, v71, v0                               // dst = tmpSrc | dst
// src=7, dst=2
// 3, 0, 0, 2, 2, 7
// srcLo=0, dstLo=1
v_lshrrev_b32 v1, 0x10, v3                         // hi16 -> lo16
// src=21, dst=16
// 3, 0, 1, 0, 16, 21
// srcLo=0, dstLo=1
v_lshrrev_b32 v8, 0x10, v10                        // hi16 -> lo16
// src=22, dst=17
// 3, 0, 1, 1, 17, 22
// srcLo=1, dstLo=0
v_and_b32 v8, 0x0000FFFF, v8                       // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v11                       // left shift src 16 bits
v_or_b32 v8, v71, v8                               // dst = tmpSrc | dst
// src=23, dst=18
// 3, 0, 1, 2, 18, 23
// srcLo=0, dstLo=1
v_lshrrev_b32 v9, 0x10, v11                        // hi16 -> lo16
// src=37, dst=32
// 3, 0, 2, 0, 32, 37
// srcLo=0, dstLo=1
v_lshrrev_b32 v16, 0x10, v18                       // hi16 -> lo16
// src=38, dst=33
// 3, 0, 2, 1, 33, 38
// srcLo=1, dstLo=0
v_and_b32 v16, 0x0000FFFF, v16                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v19                       // left shift src 16 bits
v_or_b32 v16, v71, v16                             // dst = tmpSrc | dst
// src=39, dst=34
// 3, 0, 2, 2, 34, 39
// srcLo=0, dstLo=1
v_lshrrev_b32 v17, 0x10, v19                       // hi16 -> lo16
// src=53, dst=48
// 3, 0, 3, 0, 48, 53
// srcLo=0, dstLo=1
v_lshrrev_b32 v24, 0x10, v26                       // hi16 -> lo16
// src=54, dst=49
// 3, 0, 3, 1, 49, 54
// srcLo=1, dstLo=0
v_and_b32 v24, 0x0000FFFF, v24                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v27                       // left shift src 16 bits
v_or_b32 v24, v71, v24                             // dst = tmpSrc | dst
// src=55, dst=50
// 3, 0, 3, 2, 50, 55
// srcLo=0, dstLo=1
v_lshrrev_b32 v25, 0x10, v27                       // hi16 -> lo16
// src=69, dst=64
// 3, 0, 4, 0, 64, 69
// srcLo=0, dstLo=1
v_lshrrev_b32 v32, 0x10, v34                       // hi16 -> lo16
// src=70, dst=65
// 3, 0, 4, 1, 65, 70
// srcLo=1, dstLo=0
v_and_b32 v32, 0x0000FFFF, v32                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v35                       // left shift src 16 bits
v_or_b32 v32, v71, v32                             // dst = tmpSrc | dst
// src=71, dst=66
// 3, 0, 4, 2, 66, 71
// srcLo=0, dstLo=1
v_lshrrev_b32 v33, 0x10, v35                       // hi16 -> lo16
// src=85, dst=80
// 3, 0, 5, 0, 80, 85
// srcLo=0, dstLo=1
v_lshrrev_b32 v40, 0x10, v42                       // hi16 -> lo16
// src=86, dst=81
// 3, 0, 5, 1, 81, 86
// srcLo=1, dstLo=0
v_and_b32 v40, 0x0000FFFF, v40                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v43                       // left shift src 16 bits
v_or_b32 v40, v71, v40                             // dst = tmpSrc | dst
// src=87, dst=82
// 3, 0, 5, 2, 82, 87
// srcLo=0, dstLo=1
v_lshrrev_b32 v41, 0x10, v43                       // hi16 -> lo16
// src=101, dst=96
// 3, 0, 6, 0, 96, 101
// srcLo=0, dstLo=1
v_lshrrev_b32 v48, 0x10, v50                       // hi16 -> lo16
// src=102, dst=97
// 3, 0, 6, 1, 97, 102
// srcLo=1, dstLo=0
v_and_b32 v48, 0x0000FFFF, v48                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v51                       // left shift src 16 bits
v_or_b32 v48, v71, v48                             // dst = tmpSrc | dst
// src=103, dst=98
// 3, 0, 6, 2, 98, 103
// srcLo=0, dstLo=1
v_lshrrev_b32 v49, 0x10, v51                       // hi16 -> lo16
// src=117, dst=112
// 3, 0, 7, 0, 112, 117
// srcLo=0, dstLo=1
v_lshrrev_b32 v56, 0x10, v58                       // hi16 -> lo16
// src=118, dst=113
// 3, 0, 7, 1, 113, 118
// srcLo=1, dstLo=0
v_and_b32 v56, 0x0000FFFF, v56                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v59                       // left shift src 16 bits
v_or_b32 v56, v71, v56                             // dst = tmpSrc | dst
// src=119, dst=114
// 3, 0, 7, 2, 114, 119
// srcLo=0, dstLo=1
v_lshrrev_b32 v57, 0x10, v59                       // hi16 -> lo16
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0050                                // done shifting

/* shift d0 r=3 v=1 */
label_0037:
_v_cmpx_eq_u32 s53, v70, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=13, dst=8
// 3, 1, 0, 0, 8, 13
// srcLo=0, dstLo=1
v_lshrrev_b32 v4, 0x10, v6                         // hi16 -> lo16
// src=14, dst=9
// 3, 1, 0, 1, 9, 14
// srcLo=1, dstLo=0
v_and_b32 v4, 0x0000FFFF, v4                       // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v7                        // left shift src 16 bits
v_or_b32 v4, v71, v4                               // dst = tmpSrc | dst
// src=15, dst=10
// 3, 1, 0, 2, 10, 15
// srcLo=0, dstLo=1
v_lshrrev_b32 v5, 0x10, v7                         // hi16 -> lo16
// src=29, dst=24
// 3, 1, 1, 0, 24, 29
// srcLo=0, dstLo=1
v_lshrrev_b32 v12, 0x10, v14                       // hi16 -> lo16
// src=30, dst=25
// 3, 1, 1, 1, 25, 30
// srcLo=1, dstLo=0
v_and_b32 v12, 0x0000FFFF, v12                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v15                       // left shift src 16 bits
v_or_b32 v12, v71, v12                             // dst = tmpSrc | dst
// src=31, dst=26
// 3, 1, 1, 2, 26, 31
// srcLo=0, dstLo=1
v_lshrrev_b32 v13, 0x10, v15                       // hi16 -> lo16
// src=45, dst=40
// 3, 1, 2, 0, 40, 45
// srcLo=0, dstLo=1
v_lshrrev_b32 v20, 0x10, v22                       // hi16 -> lo16
// src=46, dst=41
// 3, 1, 2, 1, 41, 46
// srcLo=1, dstLo=0
v_and_b32 v20, 0x0000FFFF, v20                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v23                       // left shift src 16 bits
v_or_b32 v20, v71, v20                             // dst = tmpSrc | dst
// src=47, dst=42
// 3, 1, 2, 2, 42, 47
// srcLo=0, dstLo=1
v_lshrrev_b32 v21, 0x10, v23                       // hi16 -> lo16
// src=61, dst=56
// 3, 1, 3, 0, 56, 61
// srcLo=0, dstLo=1
v_lshrrev_b32 v28, 0x10, v30                       // hi16 -> lo16
// src=62, dst=57
// 3, 1, 3, 1, 57, 62
// srcLo=1, dstLo=0
v_and_b32 v28, 0x0000FFFF, v28                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v31                       // left shift src 16 bits
v_or_b32 v28, v71, v28                             // dst = tmpSrc | dst
// src=63, dst=58
// 3, 1, 3, 2, 58, 63
// srcLo=0, dstLo=1
v_lshrrev_b32 v29, 0x10, v31                       // hi16 -> lo16
// src=77, dst=72
// 3, 1, 4, 0, 72, 77
// srcLo=0, dstLo=1
v_lshrrev_b32 v36, 0x10, v38                       // hi16 -> lo16
// src=78, dst=73
// 3, 1, 4, 1, 73, 78
// srcLo=1, dstLo=0
v_and_b32 v36, 0x0000FFFF, v36                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v39                       // left shift src 16 bits
v_or_b32 v36, v71, v36                             // dst = tmpSrc | dst
// src=79, dst=74
// 3, 1, 4, 2, 74, 79
// srcLo=0, dstLo=1
v_lshrrev_b32 v37, 0x10, v39                       // hi16 -> lo16
// src=93, dst=88
// 3, 1, 5, 0, 88, 93
// srcLo=0, dstLo=1
v_lshrrev_b32 v44, 0x10, v46                       // hi16 -> lo16
// src=94, dst=89
// 3, 1, 5, 1, 89, 94
// srcLo=1, dstLo=0
v_and_b32 v44, 0x0000FFFF, v44                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v47                       // left shift src 16 bits
v_or_b32 v44, v71, v44                             // dst = tmpSrc | dst
// src=95, dst=90
// 3, 1, 5, 2, 90, 95
// srcLo=0, dstLo=1
v_lshrrev_b32 v45, 0x10, v47                       // hi16 -> lo16
// src=109, dst=104
// 3, 1, 6, 0, 104, 109
// srcLo=0, dstLo=1
v_lshrrev_b32 v52, 0x10, v54                       // hi16 -> lo16
// src=110, dst=105
// 3, 1, 6, 1, 105, 110
// srcLo=1, dstLo=0
v_and_b32 v52, 0x0000FFFF, v52                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v55                       // left shift src 16 bits
v_or_b32 v52, v71, v52                             // dst = tmpSrc | dst
// src=111, dst=106
// 3, 1, 6, 2, 106, 111
// srcLo=0, dstLo=1
v_lshrrev_b32 v53, 0x10, v55                       // hi16 -> lo16
// src=125, dst=120
// 3, 1, 7, 0, 120, 125
// srcLo=0, dstLo=1
v_lshrrev_b32 v60, 0x10, v62                       // hi16 -> lo16
// src=126, dst=121
// 3, 1, 7, 1, 121, 126
// srcLo=1, dstLo=0
v_and_b32 v60, 0x0000FFFF, v60                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v63                       // left shift src 16 bits
v_or_b32 v60, v71, v60                             // dst = tmpSrc | dst
// src=127, dst=122
// 3, 1, 7, 2, 122, 127
// srcLo=0, dstLo=1
v_lshrrev_b32 v61, 0x10, v63                       // hi16 -> lo16
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0050                                // done shifting

/******************************************/
/* shift d0 r=4                           */
/******************************************/
label_0038:
v_cmp_eq_u32 vcc_lo, v72, 0x0                      // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0039                         // shift d0, r=4, v=0
v_cmp_eq_u32 vcc_lo, v72, 0x1                      // wgMT/(SG*VW) == 1
s_cbranch_vccnz label_0040                         // shift d0, r=4, v=1

/* shift d0 r=4 v=0 */
label_0039:
_v_cmpx_eq_u32 s53, v70, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
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
// src=20, dst=16
// 4, 0, 1, 0, 16, 20
v_mov_b32 v8, v10                                  // rC[0+0*VW+1*TT0I] = rC[4+0*VW+1*TT0I]
// src=21, dst=17
// 4, 0, 1, 1, 17, 21
// src=22, dst=18
// 4, 0, 1, 2, 18, 22
v_mov_b32 v9, v11                                  // rC[2+0*VW+1*TT0I] = rC[6+0*VW+1*TT0I]
// src=23, dst=19
// 4, 0, 1, 3, 19, 23
// src=36, dst=32
// 4, 0, 2, 0, 32, 36
v_mov_b32 v16, v18                                 // rC[0+0*VW+2*TT0I] = rC[4+0*VW+2*TT0I]
// src=37, dst=33
// 4, 0, 2, 1, 33, 37
// src=38, dst=34
// 4, 0, 2, 2, 34, 38
v_mov_b32 v17, v19                                 // rC[2+0*VW+2*TT0I] = rC[6+0*VW+2*TT0I]
// src=39, dst=35
// 4, 0, 2, 3, 35, 39
// src=52, dst=48
// 4, 0, 3, 0, 48, 52
v_mov_b32 v24, v26                                 // rC[0+0*VW+3*TT0I] = rC[4+0*VW+3*TT0I]
// src=53, dst=49
// 4, 0, 3, 1, 49, 53
// src=54, dst=50
// 4, 0, 3, 2, 50, 54
v_mov_b32 v25, v27                                 // rC[2+0*VW+3*TT0I] = rC[6+0*VW+3*TT0I]
// src=55, dst=51
// 4, 0, 3, 3, 51, 55
// src=68, dst=64
// 4, 0, 4, 0, 64, 68
v_mov_b32 v32, v34                                 // rC[0+0*VW+4*TT0I] = rC[4+0*VW+4*TT0I]
// src=69, dst=65
// 4, 0, 4, 1, 65, 69
// src=70, dst=66
// 4, 0, 4, 2, 66, 70
v_mov_b32 v33, v35                                 // rC[2+0*VW+4*TT0I] = rC[6+0*VW+4*TT0I]
// src=71, dst=67
// 4, 0, 4, 3, 67, 71
// src=84, dst=80
// 4, 0, 5, 0, 80, 84
v_mov_b32 v40, v42                                 // rC[0+0*VW+5*TT0I] = rC[4+0*VW+5*TT0I]
// src=85, dst=81
// 4, 0, 5, 1, 81, 85
// src=86, dst=82
// 4, 0, 5, 2, 82, 86
v_mov_b32 v41, v43                                 // rC[2+0*VW+5*TT0I] = rC[6+0*VW+5*TT0I]
// src=87, dst=83
// 4, 0, 5, 3, 83, 87
// src=100, dst=96
// 4, 0, 6, 0, 96, 100
v_mov_b32 v48, v50                                 // rC[0+0*VW+6*TT0I] = rC[4+0*VW+6*TT0I]
// src=101, dst=97
// 4, 0, 6, 1, 97, 101
// src=102, dst=98
// 4, 0, 6, 2, 98, 102
v_mov_b32 v49, v51                                 // rC[2+0*VW+6*TT0I] = rC[6+0*VW+6*TT0I]
// src=103, dst=99
// 4, 0, 6, 3, 99, 103
// src=116, dst=112
// 4, 0, 7, 0, 112, 116
v_mov_b32 v56, v58                                 // rC[0+0*VW+7*TT0I] = rC[4+0*VW+7*TT0I]
// src=117, dst=113
// 4, 0, 7, 1, 113, 117
// src=118, dst=114
// 4, 0, 7, 2, 114, 118
v_mov_b32 v57, v59                                 // rC[2+0*VW+7*TT0I] = rC[6+0*VW+7*TT0I]
// src=119, dst=115
// 4, 0, 7, 3, 115, 119
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0050                                // done shifting

/* shift d0 r=4 v=1 */
label_0040:
_v_cmpx_eq_u32 s53, v70, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=12, dst=8
// 4, 1, 0, 0, 8, 12
v_mov_b32 v4, v6                                   // rC[0+1*VW+0*TT0I] = rC[4+1*VW+0*TT0I]
// src=13, dst=9
// 4, 1, 0, 1, 9, 13
// src=14, dst=10
// 4, 1, 0, 2, 10, 14
v_mov_b32 v5, v7                                   // rC[2+1*VW+0*TT0I] = rC[6+1*VW+0*TT0I]
// src=15, dst=11
// 4, 1, 0, 3, 11, 15
// src=28, dst=24
// 4, 1, 1, 0, 24, 28
v_mov_b32 v12, v14                                 // rC[0+1*VW+1*TT0I] = rC[4+1*VW+1*TT0I]
// src=29, dst=25
// 4, 1, 1, 1, 25, 29
// src=30, dst=26
// 4, 1, 1, 2, 26, 30
v_mov_b32 v13, v15                                 // rC[2+1*VW+1*TT0I] = rC[6+1*VW+1*TT0I]
// src=31, dst=27
// 4, 1, 1, 3, 27, 31
// src=44, dst=40
// 4, 1, 2, 0, 40, 44
v_mov_b32 v20, v22                                 // rC[0+1*VW+2*TT0I] = rC[4+1*VW+2*TT0I]
// src=45, dst=41
// 4, 1, 2, 1, 41, 45
// src=46, dst=42
// 4, 1, 2, 2, 42, 46
v_mov_b32 v21, v23                                 // rC[2+1*VW+2*TT0I] = rC[6+1*VW+2*TT0I]
// src=47, dst=43
// 4, 1, 2, 3, 43, 47
// src=60, dst=56
// 4, 1, 3, 0, 56, 60
v_mov_b32 v28, v30                                 // rC[0+1*VW+3*TT0I] = rC[4+1*VW+3*TT0I]
// src=61, dst=57
// 4, 1, 3, 1, 57, 61
// src=62, dst=58
// 4, 1, 3, 2, 58, 62
v_mov_b32 v29, v31                                 // rC[2+1*VW+3*TT0I] = rC[6+1*VW+3*TT0I]
// src=63, dst=59
// 4, 1, 3, 3, 59, 63
// src=76, dst=72
// 4, 1, 4, 0, 72, 76
v_mov_b32 v36, v38                                 // rC[0+1*VW+4*TT0I] = rC[4+1*VW+4*TT0I]
// src=77, dst=73
// 4, 1, 4, 1, 73, 77
// src=78, dst=74
// 4, 1, 4, 2, 74, 78
v_mov_b32 v37, v39                                 // rC[2+1*VW+4*TT0I] = rC[6+1*VW+4*TT0I]
// src=79, dst=75
// 4, 1, 4, 3, 75, 79
// src=92, dst=88
// 4, 1, 5, 0, 88, 92
v_mov_b32 v44, v46                                 // rC[0+1*VW+5*TT0I] = rC[4+1*VW+5*TT0I]
// src=93, dst=89
// 4, 1, 5, 1, 89, 93
// src=94, dst=90
// 4, 1, 5, 2, 90, 94
v_mov_b32 v45, v47                                 // rC[2+1*VW+5*TT0I] = rC[6+1*VW+5*TT0I]
// src=95, dst=91
// 4, 1, 5, 3, 91, 95
// src=108, dst=104
// 4, 1, 6, 0, 104, 108
v_mov_b32 v52, v54                                 // rC[0+1*VW+6*TT0I] = rC[4+1*VW+6*TT0I]
// src=109, dst=105
// 4, 1, 6, 1, 105, 109
// src=110, dst=106
// 4, 1, 6, 2, 106, 110
v_mov_b32 v53, v55                                 // rC[2+1*VW+6*TT0I] = rC[6+1*VW+6*TT0I]
// src=111, dst=107
// 4, 1, 6, 3, 107, 111
// src=124, dst=120
// 4, 1, 7, 0, 120, 124
v_mov_b32 v60, v62                                 // rC[0+1*VW+7*TT0I] = rC[4+1*VW+7*TT0I]
// src=125, dst=121
// 4, 1, 7, 1, 121, 125
// src=126, dst=122
// 4, 1, 7, 2, 122, 126
v_mov_b32 v61, v63                                 // rC[2+1*VW+7*TT0I] = rC[6+1*VW+7*TT0I]
// src=127, dst=123
// 4, 1, 7, 3, 123, 127
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0050                                // done shifting

/******************************************/
/* shift d0 r=5                           */
/******************************************/
label_0041:
v_cmp_eq_u32 vcc_lo, v72, 0x0                      // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0042                         // shift d0, r=5, v=0
v_cmp_eq_u32 vcc_lo, v72, 0x1                      // wgMT/(SG*VW) == 1
s_cbranch_vccnz label_0043                         // shift d0, r=5, v=1

/* shift d0 r=5 v=0 */
label_0042:
_v_cmpx_eq_u32 s53, v70, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=3, dst=0
// 5, 0, 0, 0, 0, 3
// srcLo=0, dstLo=1
v_lshrrev_b32 v0, 0x10, v1                         // hi16 -> lo16
// src=4, dst=1
// 5, 0, 0, 1, 1, 4
// srcLo=1, dstLo=0
v_and_b32 v0, 0x0000FFFF, v0                       // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v2                        // left shift src 16 bits
v_or_b32 v0, v71, v0                               // dst = tmpSrc | dst
// src=5, dst=2
// 5, 0, 0, 2, 2, 5
// srcLo=0, dstLo=1
v_lshrrev_b32 v1, 0x10, v2                         // hi16 -> lo16
// src=6, dst=3
// 5, 0, 0, 3, 3, 6
// srcLo=1, dstLo=0
v_and_b32 v1, 0x0000FFFF, v1                       // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v3                        // left shift src 16 bits
v_or_b32 v1, v71, v1                               // dst = tmpSrc | dst
// src=7, dst=4
// 5, 0, 0, 4, 4, 7
// srcLo=0, dstLo=1
v_lshrrev_b32 v2, 0x10, v3                         // hi16 -> lo16
// src=19, dst=16
// 5, 0, 1, 0, 16, 19
// srcLo=0, dstLo=1
v_lshrrev_b32 v8, 0x10, v9                         // hi16 -> lo16
// src=20, dst=17
// 5, 0, 1, 1, 17, 20
// srcLo=1, dstLo=0
v_and_b32 v8, 0x0000FFFF, v8                       // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v10                       // left shift src 16 bits
v_or_b32 v8, v71, v8                               // dst = tmpSrc | dst
// src=21, dst=18
// 5, 0, 1, 2, 18, 21
// srcLo=0, dstLo=1
v_lshrrev_b32 v9, 0x10, v10                        // hi16 -> lo16
// src=22, dst=19
// 5, 0, 1, 3, 19, 22
// srcLo=1, dstLo=0
v_and_b32 v9, 0x0000FFFF, v9                       // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v11                       // left shift src 16 bits
v_or_b32 v9, v71, v9                               // dst = tmpSrc | dst
// src=23, dst=20
// 5, 0, 1, 4, 20, 23
// srcLo=0, dstLo=1
v_lshrrev_b32 v10, 0x10, v11                       // hi16 -> lo16
// src=35, dst=32
// 5, 0, 2, 0, 32, 35
// srcLo=0, dstLo=1
v_lshrrev_b32 v16, 0x10, v17                       // hi16 -> lo16
// src=36, dst=33
// 5, 0, 2, 1, 33, 36
// srcLo=1, dstLo=0
v_and_b32 v16, 0x0000FFFF, v16                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v18                       // left shift src 16 bits
v_or_b32 v16, v71, v16                             // dst = tmpSrc | dst
// src=37, dst=34
// 5, 0, 2, 2, 34, 37
// srcLo=0, dstLo=1
v_lshrrev_b32 v17, 0x10, v18                       // hi16 -> lo16
// src=38, dst=35
// 5, 0, 2, 3, 35, 38
// srcLo=1, dstLo=0
v_and_b32 v17, 0x0000FFFF, v17                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v19                       // left shift src 16 bits
v_or_b32 v17, v71, v17                             // dst = tmpSrc | dst
// src=39, dst=36
// 5, 0, 2, 4, 36, 39
// srcLo=0, dstLo=1
v_lshrrev_b32 v18, 0x10, v19                       // hi16 -> lo16
// src=51, dst=48
// 5, 0, 3, 0, 48, 51
// srcLo=0, dstLo=1
v_lshrrev_b32 v24, 0x10, v25                       // hi16 -> lo16
// src=52, dst=49
// 5, 0, 3, 1, 49, 52
// srcLo=1, dstLo=0
v_and_b32 v24, 0x0000FFFF, v24                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v26                       // left shift src 16 bits
v_or_b32 v24, v71, v24                             // dst = tmpSrc | dst
// src=53, dst=50
// 5, 0, 3, 2, 50, 53
// srcLo=0, dstLo=1
v_lshrrev_b32 v25, 0x10, v26                       // hi16 -> lo16
// src=54, dst=51
// 5, 0, 3, 3, 51, 54
// srcLo=1, dstLo=0
v_and_b32 v25, 0x0000FFFF, v25                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v27                       // left shift src 16 bits
v_or_b32 v25, v71, v25                             // dst = tmpSrc | dst
// src=55, dst=52
// 5, 0, 3, 4, 52, 55
// srcLo=0, dstLo=1
v_lshrrev_b32 v26, 0x10, v27                       // hi16 -> lo16
// src=67, dst=64
// 5, 0, 4, 0, 64, 67
// srcLo=0, dstLo=1
v_lshrrev_b32 v32, 0x10, v33                       // hi16 -> lo16
// src=68, dst=65
// 5, 0, 4, 1, 65, 68
// srcLo=1, dstLo=0
v_and_b32 v32, 0x0000FFFF, v32                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v34                       // left shift src 16 bits
v_or_b32 v32, v71, v32                             // dst = tmpSrc | dst
// src=69, dst=66
// 5, 0, 4, 2, 66, 69
// srcLo=0, dstLo=1
v_lshrrev_b32 v33, 0x10, v34                       // hi16 -> lo16
// src=70, dst=67
// 5, 0, 4, 3, 67, 70
// srcLo=1, dstLo=0
v_and_b32 v33, 0x0000FFFF, v33                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v35                       // left shift src 16 bits
v_or_b32 v33, v71, v33                             // dst = tmpSrc | dst
// src=71, dst=68
// 5, 0, 4, 4, 68, 71
// srcLo=0, dstLo=1
v_lshrrev_b32 v34, 0x10, v35                       // hi16 -> lo16
// src=83, dst=80
// 5, 0, 5, 0, 80, 83
// srcLo=0, dstLo=1
v_lshrrev_b32 v40, 0x10, v41                       // hi16 -> lo16
// src=84, dst=81
// 5, 0, 5, 1, 81, 84
// srcLo=1, dstLo=0
v_and_b32 v40, 0x0000FFFF, v40                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v42                       // left shift src 16 bits
v_or_b32 v40, v71, v40                             // dst = tmpSrc | dst
// src=85, dst=82
// 5, 0, 5, 2, 82, 85
// srcLo=0, dstLo=1
v_lshrrev_b32 v41, 0x10, v42                       // hi16 -> lo16
// src=86, dst=83
// 5, 0, 5, 3, 83, 86
// srcLo=1, dstLo=0
v_and_b32 v41, 0x0000FFFF, v41                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v43                       // left shift src 16 bits
v_or_b32 v41, v71, v41                             // dst = tmpSrc | dst
// src=87, dst=84
// 5, 0, 5, 4, 84, 87
// srcLo=0, dstLo=1
v_lshrrev_b32 v42, 0x10, v43                       // hi16 -> lo16
// src=99, dst=96
// 5, 0, 6, 0, 96, 99
// srcLo=0, dstLo=1
v_lshrrev_b32 v48, 0x10, v49                       // hi16 -> lo16
// src=100, dst=97
// 5, 0, 6, 1, 97, 100
// srcLo=1, dstLo=0
v_and_b32 v48, 0x0000FFFF, v48                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v50                       // left shift src 16 bits
v_or_b32 v48, v71, v48                             // dst = tmpSrc | dst
// src=101, dst=98
// 5, 0, 6, 2, 98, 101
// srcLo=0, dstLo=1
v_lshrrev_b32 v49, 0x10, v50                       // hi16 -> lo16
// src=102, dst=99
// 5, 0, 6, 3, 99, 102
// srcLo=1, dstLo=0
v_and_b32 v49, 0x0000FFFF, v49                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v51                       // left shift src 16 bits
v_or_b32 v49, v71, v49                             // dst = tmpSrc | dst
// src=103, dst=100
// 5, 0, 6, 4, 100, 103
// srcLo=0, dstLo=1
v_lshrrev_b32 v50, 0x10, v51                       // hi16 -> lo16
// src=115, dst=112
// 5, 0, 7, 0, 112, 115
// srcLo=0, dstLo=1
v_lshrrev_b32 v56, 0x10, v57                       // hi16 -> lo16
// src=116, dst=113
// 5, 0, 7, 1, 113, 116
// srcLo=1, dstLo=0
v_and_b32 v56, 0x0000FFFF, v56                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v58                       // left shift src 16 bits
v_or_b32 v56, v71, v56                             // dst = tmpSrc | dst
// src=117, dst=114
// 5, 0, 7, 2, 114, 117
// srcLo=0, dstLo=1
v_lshrrev_b32 v57, 0x10, v58                       // hi16 -> lo16
// src=118, dst=115
// 5, 0, 7, 3, 115, 118
// srcLo=1, dstLo=0
v_and_b32 v57, 0x0000FFFF, v57                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v59                       // left shift src 16 bits
v_or_b32 v57, v71, v57                             // dst = tmpSrc | dst
// src=119, dst=116
// 5, 0, 7, 4, 116, 119
// srcLo=0, dstLo=1
v_lshrrev_b32 v58, 0x10, v59                       // hi16 -> lo16
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0050                                // done shifting

/* shift d0 r=5 v=1 */
label_0043:
_v_cmpx_eq_u32 s53, v70, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=11, dst=8
// 5, 1, 0, 0, 8, 11
// srcLo=0, dstLo=1
v_lshrrev_b32 v4, 0x10, v5                         // hi16 -> lo16
// src=12, dst=9
// 5, 1, 0, 1, 9, 12
// srcLo=1, dstLo=0
v_and_b32 v4, 0x0000FFFF, v4                       // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v6                        // left shift src 16 bits
v_or_b32 v4, v71, v4                               // dst = tmpSrc | dst
// src=13, dst=10
// 5, 1, 0, 2, 10, 13
// srcLo=0, dstLo=1
v_lshrrev_b32 v5, 0x10, v6                         // hi16 -> lo16
// src=14, dst=11
// 5, 1, 0, 3, 11, 14
// srcLo=1, dstLo=0
v_and_b32 v5, 0x0000FFFF, v5                       // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v7                        // left shift src 16 bits
v_or_b32 v5, v71, v5                               // dst = tmpSrc | dst
// src=15, dst=12
// 5, 1, 0, 4, 12, 15
// srcLo=0, dstLo=1
v_lshrrev_b32 v6, 0x10, v7                         // hi16 -> lo16
// src=27, dst=24
// 5, 1, 1, 0, 24, 27
// srcLo=0, dstLo=1
v_lshrrev_b32 v12, 0x10, v13                       // hi16 -> lo16
// src=28, dst=25
// 5, 1, 1, 1, 25, 28
// srcLo=1, dstLo=0
v_and_b32 v12, 0x0000FFFF, v12                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v14                       // left shift src 16 bits
v_or_b32 v12, v71, v12                             // dst = tmpSrc | dst
// src=29, dst=26
// 5, 1, 1, 2, 26, 29
// srcLo=0, dstLo=1
v_lshrrev_b32 v13, 0x10, v14                       // hi16 -> lo16
// src=30, dst=27
// 5, 1, 1, 3, 27, 30
// srcLo=1, dstLo=0
v_and_b32 v13, 0x0000FFFF, v13                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v15                       // left shift src 16 bits
v_or_b32 v13, v71, v13                             // dst = tmpSrc | dst
// src=31, dst=28
// 5, 1, 1, 4, 28, 31
// srcLo=0, dstLo=1
v_lshrrev_b32 v14, 0x10, v15                       // hi16 -> lo16
// src=43, dst=40
// 5, 1, 2, 0, 40, 43
// srcLo=0, dstLo=1
v_lshrrev_b32 v20, 0x10, v21                       // hi16 -> lo16
// src=44, dst=41
// 5, 1, 2, 1, 41, 44
// srcLo=1, dstLo=0
v_and_b32 v20, 0x0000FFFF, v20                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v22                       // left shift src 16 bits
v_or_b32 v20, v71, v20                             // dst = tmpSrc | dst
// src=45, dst=42
// 5, 1, 2, 2, 42, 45
// srcLo=0, dstLo=1
v_lshrrev_b32 v21, 0x10, v22                       // hi16 -> lo16
// src=46, dst=43
// 5, 1, 2, 3, 43, 46
// srcLo=1, dstLo=0
v_and_b32 v21, 0x0000FFFF, v21                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v23                       // left shift src 16 bits
v_or_b32 v21, v71, v21                             // dst = tmpSrc | dst
// src=47, dst=44
// 5, 1, 2, 4, 44, 47
// srcLo=0, dstLo=1
v_lshrrev_b32 v22, 0x10, v23                       // hi16 -> lo16
// src=59, dst=56
// 5, 1, 3, 0, 56, 59
// srcLo=0, dstLo=1
v_lshrrev_b32 v28, 0x10, v29                       // hi16 -> lo16
// src=60, dst=57
// 5, 1, 3, 1, 57, 60
// srcLo=1, dstLo=0
v_and_b32 v28, 0x0000FFFF, v28                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v30                       // left shift src 16 bits
v_or_b32 v28, v71, v28                             // dst = tmpSrc | dst
// src=61, dst=58
// 5, 1, 3, 2, 58, 61
// srcLo=0, dstLo=1
v_lshrrev_b32 v29, 0x10, v30                       // hi16 -> lo16
// src=62, dst=59
// 5, 1, 3, 3, 59, 62
// srcLo=1, dstLo=0
v_and_b32 v29, 0x0000FFFF, v29                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v31                       // left shift src 16 bits
v_or_b32 v29, v71, v29                             // dst = tmpSrc | dst
// src=63, dst=60
// 5, 1, 3, 4, 60, 63
// srcLo=0, dstLo=1
v_lshrrev_b32 v30, 0x10, v31                       // hi16 -> lo16
// src=75, dst=72
// 5, 1, 4, 0, 72, 75
// srcLo=0, dstLo=1
v_lshrrev_b32 v36, 0x10, v37                       // hi16 -> lo16
// src=76, dst=73
// 5, 1, 4, 1, 73, 76
// srcLo=1, dstLo=0
v_and_b32 v36, 0x0000FFFF, v36                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v38                       // left shift src 16 bits
v_or_b32 v36, v71, v36                             // dst = tmpSrc | dst
// src=77, dst=74
// 5, 1, 4, 2, 74, 77
// srcLo=0, dstLo=1
v_lshrrev_b32 v37, 0x10, v38                       // hi16 -> lo16
// src=78, dst=75
// 5, 1, 4, 3, 75, 78
// srcLo=1, dstLo=0
v_and_b32 v37, 0x0000FFFF, v37                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v39                       // left shift src 16 bits
v_or_b32 v37, v71, v37                             // dst = tmpSrc | dst
// src=79, dst=76
// 5, 1, 4, 4, 76, 79
// srcLo=0, dstLo=1
v_lshrrev_b32 v38, 0x10, v39                       // hi16 -> lo16
// src=91, dst=88
// 5, 1, 5, 0, 88, 91
// srcLo=0, dstLo=1
v_lshrrev_b32 v44, 0x10, v45                       // hi16 -> lo16
// src=92, dst=89
// 5, 1, 5, 1, 89, 92
// srcLo=1, dstLo=0
v_and_b32 v44, 0x0000FFFF, v44                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v46                       // left shift src 16 bits
v_or_b32 v44, v71, v44                             // dst = tmpSrc | dst
// src=93, dst=90
// 5, 1, 5, 2, 90, 93
// srcLo=0, dstLo=1
v_lshrrev_b32 v45, 0x10, v46                       // hi16 -> lo16
// src=94, dst=91
// 5, 1, 5, 3, 91, 94
// srcLo=1, dstLo=0
v_and_b32 v45, 0x0000FFFF, v45                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v47                       // left shift src 16 bits
v_or_b32 v45, v71, v45                             // dst = tmpSrc | dst
// src=95, dst=92
// 5, 1, 5, 4, 92, 95
// srcLo=0, dstLo=1
v_lshrrev_b32 v46, 0x10, v47                       // hi16 -> lo16
// src=107, dst=104
// 5, 1, 6, 0, 104, 107
// srcLo=0, dstLo=1
v_lshrrev_b32 v52, 0x10, v53                       // hi16 -> lo16
// src=108, dst=105
// 5, 1, 6, 1, 105, 108
// srcLo=1, dstLo=0
v_and_b32 v52, 0x0000FFFF, v52                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v54                       // left shift src 16 bits
v_or_b32 v52, v71, v52                             // dst = tmpSrc | dst
// src=109, dst=106
// 5, 1, 6, 2, 106, 109
// srcLo=0, dstLo=1
v_lshrrev_b32 v53, 0x10, v54                       // hi16 -> lo16
// src=110, dst=107
// 5, 1, 6, 3, 107, 110
// srcLo=1, dstLo=0
v_and_b32 v53, 0x0000FFFF, v53                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v55                       // left shift src 16 bits
v_or_b32 v53, v71, v53                             // dst = tmpSrc | dst
// src=111, dst=108
// 5, 1, 6, 4, 108, 111
// srcLo=0, dstLo=1
v_lshrrev_b32 v54, 0x10, v55                       // hi16 -> lo16
// src=123, dst=120
// 5, 1, 7, 0, 120, 123
// srcLo=0, dstLo=1
v_lshrrev_b32 v60, 0x10, v61                       // hi16 -> lo16
// src=124, dst=121
// 5, 1, 7, 1, 121, 124
// srcLo=1, dstLo=0
v_and_b32 v60, 0x0000FFFF, v60                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v62                       // left shift src 16 bits
v_or_b32 v60, v71, v60                             // dst = tmpSrc | dst
// src=125, dst=122
// 5, 1, 7, 2, 122, 125
// srcLo=0, dstLo=1
v_lshrrev_b32 v61, 0x10, v62                       // hi16 -> lo16
// src=126, dst=123
// 5, 1, 7, 3, 123, 126
// srcLo=1, dstLo=0
v_and_b32 v61, 0x0000FFFF, v61                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v63                       // left shift src 16 bits
v_or_b32 v61, v71, v61                             // dst = tmpSrc | dst
// src=127, dst=124
// 5, 1, 7, 4, 124, 127
// srcLo=0, dstLo=1
v_lshrrev_b32 v62, 0x10, v63                       // hi16 -> lo16
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0050                                // done shifting

/******************************************/
/* shift d0 r=6                           */
/******************************************/
label_0044:
v_cmp_eq_u32 vcc_lo, v72, 0x0                      // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0045                         // shift d0, r=6, v=0
v_cmp_eq_u32 vcc_lo, v72, 0x1                      // wgMT/(SG*VW) == 1
s_cbranch_vccnz label_0046                         // shift d0, r=6, v=1

/* shift d0 r=6 v=0 */
label_0045:
_v_cmpx_eq_u32 s53, v70, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
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
// src=18, dst=16
// 6, 0, 1, 0, 16, 18
v_mov_b32 v8, v9                                   // rC[0+0*VW+1*TT0I] = rC[2+0*VW+1*TT0I]
// src=19, dst=17
// 6, 0, 1, 1, 17, 19
// src=20, dst=18
// 6, 0, 1, 2, 18, 20
v_mov_b32 v9, v10                                  // rC[2+0*VW+1*TT0I] = rC[4+0*VW+1*TT0I]
// src=21, dst=19
// 6, 0, 1, 3, 19, 21
// src=22, dst=20
// 6, 0, 1, 4, 20, 22
v_mov_b32 v10, v11                                 // rC[4+0*VW+1*TT0I] = rC[6+0*VW+1*TT0I]
// src=23, dst=21
// 6, 0, 1, 5, 21, 23
// src=34, dst=32
// 6, 0, 2, 0, 32, 34
v_mov_b32 v16, v17                                 // rC[0+0*VW+2*TT0I] = rC[2+0*VW+2*TT0I]
// src=35, dst=33
// 6, 0, 2, 1, 33, 35
// src=36, dst=34
// 6, 0, 2, 2, 34, 36
v_mov_b32 v17, v18                                 // rC[2+0*VW+2*TT0I] = rC[4+0*VW+2*TT0I]
// src=37, dst=35
// 6, 0, 2, 3, 35, 37
// src=38, dst=36
// 6, 0, 2, 4, 36, 38
v_mov_b32 v18, v19                                 // rC[4+0*VW+2*TT0I] = rC[6+0*VW+2*TT0I]
// src=39, dst=37
// 6, 0, 2, 5, 37, 39
// src=50, dst=48
// 6, 0, 3, 0, 48, 50
v_mov_b32 v24, v25                                 // rC[0+0*VW+3*TT0I] = rC[2+0*VW+3*TT0I]
// src=51, dst=49
// 6, 0, 3, 1, 49, 51
// src=52, dst=50
// 6, 0, 3, 2, 50, 52
v_mov_b32 v25, v26                                 // rC[2+0*VW+3*TT0I] = rC[4+0*VW+3*TT0I]
// src=53, dst=51
// 6, 0, 3, 3, 51, 53
// src=54, dst=52
// 6, 0, 3, 4, 52, 54
v_mov_b32 v26, v27                                 // rC[4+0*VW+3*TT0I] = rC[6+0*VW+3*TT0I]
// src=55, dst=53
// 6, 0, 3, 5, 53, 55
// src=66, dst=64
// 6, 0, 4, 0, 64, 66
v_mov_b32 v32, v33                                 // rC[0+0*VW+4*TT0I] = rC[2+0*VW+4*TT0I]
// src=67, dst=65
// 6, 0, 4, 1, 65, 67
// src=68, dst=66
// 6, 0, 4, 2, 66, 68
v_mov_b32 v33, v34                                 // rC[2+0*VW+4*TT0I] = rC[4+0*VW+4*TT0I]
// src=69, dst=67
// 6, 0, 4, 3, 67, 69
// src=70, dst=68
// 6, 0, 4, 4, 68, 70
v_mov_b32 v34, v35                                 // rC[4+0*VW+4*TT0I] = rC[6+0*VW+4*TT0I]
// src=71, dst=69
// 6, 0, 4, 5, 69, 71
// src=82, dst=80
// 6, 0, 5, 0, 80, 82
v_mov_b32 v40, v41                                 // rC[0+0*VW+5*TT0I] = rC[2+0*VW+5*TT0I]
// src=83, dst=81
// 6, 0, 5, 1, 81, 83
// src=84, dst=82
// 6, 0, 5, 2, 82, 84
v_mov_b32 v41, v42                                 // rC[2+0*VW+5*TT0I] = rC[4+0*VW+5*TT0I]
// src=85, dst=83
// 6, 0, 5, 3, 83, 85
// src=86, dst=84
// 6, 0, 5, 4, 84, 86
v_mov_b32 v42, v43                                 // rC[4+0*VW+5*TT0I] = rC[6+0*VW+5*TT0I]
// src=87, dst=85
// 6, 0, 5, 5, 85, 87
// src=98, dst=96
// 6, 0, 6, 0, 96, 98
v_mov_b32 v48, v49                                 // rC[0+0*VW+6*TT0I] = rC[2+0*VW+6*TT0I]
// src=99, dst=97
// 6, 0, 6, 1, 97, 99
// src=100, dst=98
// 6, 0, 6, 2, 98, 100
v_mov_b32 v49, v50                                 // rC[2+0*VW+6*TT0I] = rC[4+0*VW+6*TT0I]
// src=101, dst=99
// 6, 0, 6, 3, 99, 101
// src=102, dst=100
// 6, 0, 6, 4, 100, 102
v_mov_b32 v50, v51                                 // rC[4+0*VW+6*TT0I] = rC[6+0*VW+6*TT0I]
// src=103, dst=101
// 6, 0, 6, 5, 101, 103
// src=114, dst=112
// 6, 0, 7, 0, 112, 114
v_mov_b32 v56, v57                                 // rC[0+0*VW+7*TT0I] = rC[2+0*VW+7*TT0I]
// src=115, dst=113
// 6, 0, 7, 1, 113, 115
// src=116, dst=114
// 6, 0, 7, 2, 114, 116
v_mov_b32 v57, v58                                 // rC[2+0*VW+7*TT0I] = rC[4+0*VW+7*TT0I]
// src=117, dst=115
// 6, 0, 7, 3, 115, 117
// src=118, dst=116
// 6, 0, 7, 4, 116, 118
v_mov_b32 v58, v59                                 // rC[4+0*VW+7*TT0I] = rC[6+0*VW+7*TT0I]
// src=119, dst=117
// 6, 0, 7, 5, 117, 119
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0050                                // done shifting

/* shift d0 r=6 v=1 */
label_0046:
_v_cmpx_eq_u32 s53, v70, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=10, dst=8
// 6, 1, 0, 0, 8, 10
v_mov_b32 v4, v5                                   // rC[0+1*VW+0*TT0I] = rC[2+1*VW+0*TT0I]
// src=11, dst=9
// 6, 1, 0, 1, 9, 11
// src=12, dst=10
// 6, 1, 0, 2, 10, 12
v_mov_b32 v5, v6                                   // rC[2+1*VW+0*TT0I] = rC[4+1*VW+0*TT0I]
// src=13, dst=11
// 6, 1, 0, 3, 11, 13
// src=14, dst=12
// 6, 1, 0, 4, 12, 14
v_mov_b32 v6, v7                                   // rC[4+1*VW+0*TT0I] = rC[6+1*VW+0*TT0I]
// src=15, dst=13
// 6, 1, 0, 5, 13, 15
// src=26, dst=24
// 6, 1, 1, 0, 24, 26
v_mov_b32 v12, v13                                 // rC[0+1*VW+1*TT0I] = rC[2+1*VW+1*TT0I]
// src=27, dst=25
// 6, 1, 1, 1, 25, 27
// src=28, dst=26
// 6, 1, 1, 2, 26, 28
v_mov_b32 v13, v14                                 // rC[2+1*VW+1*TT0I] = rC[4+1*VW+1*TT0I]
// src=29, dst=27
// 6, 1, 1, 3, 27, 29
// src=30, dst=28
// 6, 1, 1, 4, 28, 30
v_mov_b32 v14, v15                                 // rC[4+1*VW+1*TT0I] = rC[6+1*VW+1*TT0I]
// src=31, dst=29
// 6, 1, 1, 5, 29, 31
// src=42, dst=40
// 6, 1, 2, 0, 40, 42
v_mov_b32 v20, v21                                 // rC[0+1*VW+2*TT0I] = rC[2+1*VW+2*TT0I]
// src=43, dst=41
// 6, 1, 2, 1, 41, 43
// src=44, dst=42
// 6, 1, 2, 2, 42, 44
v_mov_b32 v21, v22                                 // rC[2+1*VW+2*TT0I] = rC[4+1*VW+2*TT0I]
// src=45, dst=43
// 6, 1, 2, 3, 43, 45
// src=46, dst=44
// 6, 1, 2, 4, 44, 46
v_mov_b32 v22, v23                                 // rC[4+1*VW+2*TT0I] = rC[6+1*VW+2*TT0I]
// src=47, dst=45
// 6, 1, 2, 5, 45, 47
// src=58, dst=56
// 6, 1, 3, 0, 56, 58
v_mov_b32 v28, v29                                 // rC[0+1*VW+3*TT0I] = rC[2+1*VW+3*TT0I]
// src=59, dst=57
// 6, 1, 3, 1, 57, 59
// src=60, dst=58
// 6, 1, 3, 2, 58, 60
v_mov_b32 v29, v30                                 // rC[2+1*VW+3*TT0I] = rC[4+1*VW+3*TT0I]
// src=61, dst=59
// 6, 1, 3, 3, 59, 61
// src=62, dst=60
// 6, 1, 3, 4, 60, 62
v_mov_b32 v30, v31                                 // rC[4+1*VW+3*TT0I] = rC[6+1*VW+3*TT0I]
// src=63, dst=61
// 6, 1, 3, 5, 61, 63
// src=74, dst=72
// 6, 1, 4, 0, 72, 74
v_mov_b32 v36, v37                                 // rC[0+1*VW+4*TT0I] = rC[2+1*VW+4*TT0I]
// src=75, dst=73
// 6, 1, 4, 1, 73, 75
// src=76, dst=74
// 6, 1, 4, 2, 74, 76
v_mov_b32 v37, v38                                 // rC[2+1*VW+4*TT0I] = rC[4+1*VW+4*TT0I]
// src=77, dst=75
// 6, 1, 4, 3, 75, 77
// src=78, dst=76
// 6, 1, 4, 4, 76, 78
v_mov_b32 v38, v39                                 // rC[4+1*VW+4*TT0I] = rC[6+1*VW+4*TT0I]
// src=79, dst=77
// 6, 1, 4, 5, 77, 79
// src=90, dst=88
// 6, 1, 5, 0, 88, 90
v_mov_b32 v44, v45                                 // rC[0+1*VW+5*TT0I] = rC[2+1*VW+5*TT0I]
// src=91, dst=89
// 6, 1, 5, 1, 89, 91
// src=92, dst=90
// 6, 1, 5, 2, 90, 92
v_mov_b32 v45, v46                                 // rC[2+1*VW+5*TT0I] = rC[4+1*VW+5*TT0I]
// src=93, dst=91
// 6, 1, 5, 3, 91, 93
// src=94, dst=92
// 6, 1, 5, 4, 92, 94
v_mov_b32 v46, v47                                 // rC[4+1*VW+5*TT0I] = rC[6+1*VW+5*TT0I]
// src=95, dst=93
// 6, 1, 5, 5, 93, 95
// src=106, dst=104
// 6, 1, 6, 0, 104, 106
v_mov_b32 v52, v53                                 // rC[0+1*VW+6*TT0I] = rC[2+1*VW+6*TT0I]
// src=107, dst=105
// 6, 1, 6, 1, 105, 107
// src=108, dst=106
// 6, 1, 6, 2, 106, 108
v_mov_b32 v53, v54                                 // rC[2+1*VW+6*TT0I] = rC[4+1*VW+6*TT0I]
// src=109, dst=107
// 6, 1, 6, 3, 107, 109
// src=110, dst=108
// 6, 1, 6, 4, 108, 110
v_mov_b32 v54, v55                                 // rC[4+1*VW+6*TT0I] = rC[6+1*VW+6*TT0I]
// src=111, dst=109
// 6, 1, 6, 5, 109, 111
// src=122, dst=120
// 6, 1, 7, 0, 120, 122
v_mov_b32 v60, v61                                 // rC[0+1*VW+7*TT0I] = rC[2+1*VW+7*TT0I]
// src=123, dst=121
// 6, 1, 7, 1, 121, 123
// src=124, dst=122
// 6, 1, 7, 2, 122, 124
v_mov_b32 v61, v62                                 // rC[2+1*VW+7*TT0I] = rC[4+1*VW+7*TT0I]
// src=125, dst=123
// 6, 1, 7, 3, 123, 125
// src=126, dst=124
// 6, 1, 7, 4, 124, 126
v_mov_b32 v62, v63                                 // rC[4+1*VW+7*TT0I] = rC[6+1*VW+7*TT0I]
// src=127, dst=125
// 6, 1, 7, 5, 125, 127
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0050                                // done shifting

/******************************************/
/* shift d0 r=7                           */
/******************************************/
label_0047:
v_cmp_eq_u32 vcc_lo, v72, 0x0                      // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0048                         // shift d0, r=7, v=0
v_cmp_eq_u32 vcc_lo, v72, 0x1                      // wgMT/(SG*VW) == 1
s_cbranch_vccnz label_0049                         // shift d0, r=7, v=1

/* shift d0 r=7 v=0 */
label_0048:
_v_cmpx_eq_u32 s53, v70, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=1, dst=0
// 7, 0, 0, 0, 0, 1
// srcLo=0, dstLo=1
v_lshrrev_b32 v0, 0x10, v0                         // hi16 -> lo16
// src=2, dst=1
// 7, 0, 0, 1, 1, 2
// srcLo=1, dstLo=0
v_and_b32 v0, 0x0000FFFF, v0                       // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v1                        // left shift src 16 bits
v_or_b32 v0, v71, v0                               // dst = tmpSrc | dst
// src=3, dst=2
// 7, 0, 0, 2, 2, 3
// srcLo=0, dstLo=1
v_lshrrev_b32 v1, 0x10, v1                         // hi16 -> lo16
// src=4, dst=3
// 7, 0, 0, 3, 3, 4
// srcLo=1, dstLo=0
v_and_b32 v1, 0x0000FFFF, v1                       // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v2                        // left shift src 16 bits
v_or_b32 v1, v71, v1                               // dst = tmpSrc | dst
// src=5, dst=4
// 7, 0, 0, 4, 4, 5
// srcLo=0, dstLo=1
v_lshrrev_b32 v2, 0x10, v2                         // hi16 -> lo16
// src=6, dst=5
// 7, 0, 0, 5, 5, 6
// srcLo=1, dstLo=0
v_and_b32 v2, 0x0000FFFF, v2                       // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v3                        // left shift src 16 bits
v_or_b32 v2, v71, v2                               // dst = tmpSrc | dst
// src=7, dst=6
// 7, 0, 0, 6, 6, 7
// srcLo=0, dstLo=1
v_lshrrev_b32 v3, 0x10, v3                         // hi16 -> lo16
// src=17, dst=16
// 7, 0, 1, 0, 16, 17
// srcLo=0, dstLo=1
v_lshrrev_b32 v8, 0x10, v8                         // hi16 -> lo16
// src=18, dst=17
// 7, 0, 1, 1, 17, 18
// srcLo=1, dstLo=0
v_and_b32 v8, 0x0000FFFF, v8                       // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v9                        // left shift src 16 bits
v_or_b32 v8, v71, v8                               // dst = tmpSrc | dst
// src=19, dst=18
// 7, 0, 1, 2, 18, 19
// srcLo=0, dstLo=1
v_lshrrev_b32 v9, 0x10, v9                         // hi16 -> lo16
// src=20, dst=19
// 7, 0, 1, 3, 19, 20
// srcLo=1, dstLo=0
v_and_b32 v9, 0x0000FFFF, v9                       // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v10                       // left shift src 16 bits
v_or_b32 v9, v71, v9                               // dst = tmpSrc | dst
// src=21, dst=20
// 7, 0, 1, 4, 20, 21
// srcLo=0, dstLo=1
v_lshrrev_b32 v10, 0x10, v10                       // hi16 -> lo16
// src=22, dst=21
// 7, 0, 1, 5, 21, 22
// srcLo=1, dstLo=0
v_and_b32 v10, 0x0000FFFF, v10                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v11                       // left shift src 16 bits
v_or_b32 v10, v71, v10                             // dst = tmpSrc | dst
// src=23, dst=22
// 7, 0, 1, 6, 22, 23
// srcLo=0, dstLo=1
v_lshrrev_b32 v11, 0x10, v11                       // hi16 -> lo16
// src=33, dst=32
// 7, 0, 2, 0, 32, 33
// srcLo=0, dstLo=1
v_lshrrev_b32 v16, 0x10, v16                       // hi16 -> lo16
// src=34, dst=33
// 7, 0, 2, 1, 33, 34
// srcLo=1, dstLo=0
v_and_b32 v16, 0x0000FFFF, v16                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v17                       // left shift src 16 bits
v_or_b32 v16, v71, v16                             // dst = tmpSrc | dst
// src=35, dst=34
// 7, 0, 2, 2, 34, 35
// srcLo=0, dstLo=1
v_lshrrev_b32 v17, 0x10, v17                       // hi16 -> lo16
// src=36, dst=35
// 7, 0, 2, 3, 35, 36
// srcLo=1, dstLo=0
v_and_b32 v17, 0x0000FFFF, v17                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v18                       // left shift src 16 bits
v_or_b32 v17, v71, v17                             // dst = tmpSrc | dst
// src=37, dst=36
// 7, 0, 2, 4, 36, 37
// srcLo=0, dstLo=1
v_lshrrev_b32 v18, 0x10, v18                       // hi16 -> lo16
// src=38, dst=37
// 7, 0, 2, 5, 37, 38
// srcLo=1, dstLo=0
v_and_b32 v18, 0x0000FFFF, v18                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v19                       // left shift src 16 bits
v_or_b32 v18, v71, v18                             // dst = tmpSrc | dst
// src=39, dst=38
// 7, 0, 2, 6, 38, 39
// srcLo=0, dstLo=1
v_lshrrev_b32 v19, 0x10, v19                       // hi16 -> lo16
// src=49, dst=48
// 7, 0, 3, 0, 48, 49
// srcLo=0, dstLo=1
v_lshrrev_b32 v24, 0x10, v24                       // hi16 -> lo16
// src=50, dst=49
// 7, 0, 3, 1, 49, 50
// srcLo=1, dstLo=0
v_and_b32 v24, 0x0000FFFF, v24                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v25                       // left shift src 16 bits
v_or_b32 v24, v71, v24                             // dst = tmpSrc | dst
// src=51, dst=50
// 7, 0, 3, 2, 50, 51
// srcLo=0, dstLo=1
v_lshrrev_b32 v25, 0x10, v25                       // hi16 -> lo16
// src=52, dst=51
// 7, 0, 3, 3, 51, 52
// srcLo=1, dstLo=0
v_and_b32 v25, 0x0000FFFF, v25                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v26                       // left shift src 16 bits
v_or_b32 v25, v71, v25                             // dst = tmpSrc | dst
// src=53, dst=52
// 7, 0, 3, 4, 52, 53
// srcLo=0, dstLo=1
v_lshrrev_b32 v26, 0x10, v26                       // hi16 -> lo16
// src=54, dst=53
// 7, 0, 3, 5, 53, 54
// srcLo=1, dstLo=0
v_and_b32 v26, 0x0000FFFF, v26                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v27                       // left shift src 16 bits
v_or_b32 v26, v71, v26                             // dst = tmpSrc | dst
// src=55, dst=54
// 7, 0, 3, 6, 54, 55
// srcLo=0, dstLo=1
v_lshrrev_b32 v27, 0x10, v27                       // hi16 -> lo16
// src=65, dst=64
// 7, 0, 4, 0, 64, 65
// srcLo=0, dstLo=1
v_lshrrev_b32 v32, 0x10, v32                       // hi16 -> lo16
// src=66, dst=65
// 7, 0, 4, 1, 65, 66
// srcLo=1, dstLo=0
v_and_b32 v32, 0x0000FFFF, v32                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v33                       // left shift src 16 bits
v_or_b32 v32, v71, v32                             // dst = tmpSrc | dst
// src=67, dst=66
// 7, 0, 4, 2, 66, 67
// srcLo=0, dstLo=1
v_lshrrev_b32 v33, 0x10, v33                       // hi16 -> lo16
// src=68, dst=67
// 7, 0, 4, 3, 67, 68
// srcLo=1, dstLo=0
v_and_b32 v33, 0x0000FFFF, v33                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v34                       // left shift src 16 bits
v_or_b32 v33, v71, v33                             // dst = tmpSrc | dst
// src=69, dst=68
// 7, 0, 4, 4, 68, 69
// srcLo=0, dstLo=1
v_lshrrev_b32 v34, 0x10, v34                       // hi16 -> lo16
// src=70, dst=69
// 7, 0, 4, 5, 69, 70
// srcLo=1, dstLo=0
v_and_b32 v34, 0x0000FFFF, v34                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v35                       // left shift src 16 bits
v_or_b32 v34, v71, v34                             // dst = tmpSrc | dst
// src=71, dst=70
// 7, 0, 4, 6, 70, 71
// srcLo=0, dstLo=1
v_lshrrev_b32 v35, 0x10, v35                       // hi16 -> lo16
// src=81, dst=80
// 7, 0, 5, 0, 80, 81
// srcLo=0, dstLo=1
v_lshrrev_b32 v40, 0x10, v40                       // hi16 -> lo16
// src=82, dst=81
// 7, 0, 5, 1, 81, 82
// srcLo=1, dstLo=0
v_and_b32 v40, 0x0000FFFF, v40                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v41                       // left shift src 16 bits
v_or_b32 v40, v71, v40                             // dst = tmpSrc | dst
// src=83, dst=82
// 7, 0, 5, 2, 82, 83
// srcLo=0, dstLo=1
v_lshrrev_b32 v41, 0x10, v41                       // hi16 -> lo16
// src=84, dst=83
// 7, 0, 5, 3, 83, 84
// srcLo=1, dstLo=0
v_and_b32 v41, 0x0000FFFF, v41                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v42                       // left shift src 16 bits
v_or_b32 v41, v71, v41                             // dst = tmpSrc | dst
// src=85, dst=84
// 7, 0, 5, 4, 84, 85
// srcLo=0, dstLo=1
v_lshrrev_b32 v42, 0x10, v42                       // hi16 -> lo16
// src=86, dst=85
// 7, 0, 5, 5, 85, 86
// srcLo=1, dstLo=0
v_and_b32 v42, 0x0000FFFF, v42                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v43                       // left shift src 16 bits
v_or_b32 v42, v71, v42                             // dst = tmpSrc | dst
// src=87, dst=86
// 7, 0, 5, 6, 86, 87
// srcLo=0, dstLo=1
v_lshrrev_b32 v43, 0x10, v43                       // hi16 -> lo16
// src=97, dst=96
// 7, 0, 6, 0, 96, 97
// srcLo=0, dstLo=1
v_lshrrev_b32 v48, 0x10, v48                       // hi16 -> lo16
// src=98, dst=97
// 7, 0, 6, 1, 97, 98
// srcLo=1, dstLo=0
v_and_b32 v48, 0x0000FFFF, v48                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v49                       // left shift src 16 bits
v_or_b32 v48, v71, v48                             // dst = tmpSrc | dst
// src=99, dst=98
// 7, 0, 6, 2, 98, 99
// srcLo=0, dstLo=1
v_lshrrev_b32 v49, 0x10, v49                       // hi16 -> lo16
// src=100, dst=99
// 7, 0, 6, 3, 99, 100
// srcLo=1, dstLo=0
v_and_b32 v49, 0x0000FFFF, v49                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v50                       // left shift src 16 bits
v_or_b32 v49, v71, v49                             // dst = tmpSrc | dst
// src=101, dst=100
// 7, 0, 6, 4, 100, 101
// srcLo=0, dstLo=1
v_lshrrev_b32 v50, 0x10, v50                       // hi16 -> lo16
// src=102, dst=101
// 7, 0, 6, 5, 101, 102
// srcLo=1, dstLo=0
v_and_b32 v50, 0x0000FFFF, v50                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v51                       // left shift src 16 bits
v_or_b32 v50, v71, v50                             // dst = tmpSrc | dst
// src=103, dst=102
// 7, 0, 6, 6, 102, 103
// srcLo=0, dstLo=1
v_lshrrev_b32 v51, 0x10, v51                       // hi16 -> lo16
// src=113, dst=112
// 7, 0, 7, 0, 112, 113
// srcLo=0, dstLo=1
v_lshrrev_b32 v56, 0x10, v56                       // hi16 -> lo16
// src=114, dst=113
// 7, 0, 7, 1, 113, 114
// srcLo=1, dstLo=0
v_and_b32 v56, 0x0000FFFF, v56                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v57                       // left shift src 16 bits
v_or_b32 v56, v71, v56                             // dst = tmpSrc | dst
// src=115, dst=114
// 7, 0, 7, 2, 114, 115
// srcLo=0, dstLo=1
v_lshrrev_b32 v57, 0x10, v57                       // hi16 -> lo16
// src=116, dst=115
// 7, 0, 7, 3, 115, 116
// srcLo=1, dstLo=0
v_and_b32 v57, 0x0000FFFF, v57                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v58                       // left shift src 16 bits
v_or_b32 v57, v71, v57                             // dst = tmpSrc | dst
// src=117, dst=116
// 7, 0, 7, 4, 116, 117
// srcLo=0, dstLo=1
v_lshrrev_b32 v58, 0x10, v58                       // hi16 -> lo16
// src=118, dst=117
// 7, 0, 7, 5, 117, 118
// srcLo=1, dstLo=0
v_and_b32 v58, 0x0000FFFF, v58                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v59                       // left shift src 16 bits
v_or_b32 v58, v71, v58                             // dst = tmpSrc | dst
// src=119, dst=118
// 7, 0, 7, 6, 118, 119
// srcLo=0, dstLo=1
v_lshrrev_b32 v59, 0x10, v59                       // hi16 -> lo16
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0050                                // done shifting

/* shift d0 r=7 v=1 */
label_0049:
_v_cmpx_eq_u32 s53, v70, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=9, dst=8
// 7, 1, 0, 0, 8, 9
// srcLo=0, dstLo=1
v_lshrrev_b32 v4, 0x10, v4                         // hi16 -> lo16
// src=10, dst=9
// 7, 1, 0, 1, 9, 10
// srcLo=1, dstLo=0
v_and_b32 v4, 0x0000FFFF, v4                       // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v5                        // left shift src 16 bits
v_or_b32 v4, v71, v4                               // dst = tmpSrc | dst
// src=11, dst=10
// 7, 1, 0, 2, 10, 11
// srcLo=0, dstLo=1
v_lshrrev_b32 v5, 0x10, v5                         // hi16 -> lo16
// src=12, dst=11
// 7, 1, 0, 3, 11, 12
// srcLo=1, dstLo=0
v_and_b32 v5, 0x0000FFFF, v5                       // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v6                        // left shift src 16 bits
v_or_b32 v5, v71, v5                               // dst = tmpSrc | dst
// src=13, dst=12
// 7, 1, 0, 4, 12, 13
// srcLo=0, dstLo=1
v_lshrrev_b32 v6, 0x10, v6                         // hi16 -> lo16
// src=14, dst=13
// 7, 1, 0, 5, 13, 14
// srcLo=1, dstLo=0
v_and_b32 v6, 0x0000FFFF, v6                       // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v7                        // left shift src 16 bits
v_or_b32 v6, v71, v6                               // dst = tmpSrc | dst
// src=15, dst=14
// 7, 1, 0, 6, 14, 15
// srcLo=0, dstLo=1
v_lshrrev_b32 v7, 0x10, v7                         // hi16 -> lo16
// src=25, dst=24
// 7, 1, 1, 0, 24, 25
// srcLo=0, dstLo=1
v_lshrrev_b32 v12, 0x10, v12                       // hi16 -> lo16
// src=26, dst=25
// 7, 1, 1, 1, 25, 26
// srcLo=1, dstLo=0
v_and_b32 v12, 0x0000FFFF, v12                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v13                       // left shift src 16 bits
v_or_b32 v12, v71, v12                             // dst = tmpSrc | dst
// src=27, dst=26
// 7, 1, 1, 2, 26, 27
// srcLo=0, dstLo=1
v_lshrrev_b32 v13, 0x10, v13                       // hi16 -> lo16
// src=28, dst=27
// 7, 1, 1, 3, 27, 28
// srcLo=1, dstLo=0
v_and_b32 v13, 0x0000FFFF, v13                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v14                       // left shift src 16 bits
v_or_b32 v13, v71, v13                             // dst = tmpSrc | dst
// src=29, dst=28
// 7, 1, 1, 4, 28, 29
// srcLo=0, dstLo=1
v_lshrrev_b32 v14, 0x10, v14                       // hi16 -> lo16
// src=30, dst=29
// 7, 1, 1, 5, 29, 30
// srcLo=1, dstLo=0
v_and_b32 v14, 0x0000FFFF, v14                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v15                       // left shift src 16 bits
v_or_b32 v14, v71, v14                             // dst = tmpSrc | dst
// src=31, dst=30
// 7, 1, 1, 6, 30, 31
// srcLo=0, dstLo=1
v_lshrrev_b32 v15, 0x10, v15                       // hi16 -> lo16
// src=41, dst=40
// 7, 1, 2, 0, 40, 41
// srcLo=0, dstLo=1
v_lshrrev_b32 v20, 0x10, v20                       // hi16 -> lo16
// src=42, dst=41
// 7, 1, 2, 1, 41, 42
// srcLo=1, dstLo=0
v_and_b32 v20, 0x0000FFFF, v20                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v21                       // left shift src 16 bits
v_or_b32 v20, v71, v20                             // dst = tmpSrc | dst
// src=43, dst=42
// 7, 1, 2, 2, 42, 43
// srcLo=0, dstLo=1
v_lshrrev_b32 v21, 0x10, v21                       // hi16 -> lo16
// src=44, dst=43
// 7, 1, 2, 3, 43, 44
// srcLo=1, dstLo=0
v_and_b32 v21, 0x0000FFFF, v21                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v22                       // left shift src 16 bits
v_or_b32 v21, v71, v21                             // dst = tmpSrc | dst
// src=45, dst=44
// 7, 1, 2, 4, 44, 45
// srcLo=0, dstLo=1
v_lshrrev_b32 v22, 0x10, v22                       // hi16 -> lo16
// src=46, dst=45
// 7, 1, 2, 5, 45, 46
// srcLo=1, dstLo=0
v_and_b32 v22, 0x0000FFFF, v22                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v23                       // left shift src 16 bits
v_or_b32 v22, v71, v22                             // dst = tmpSrc | dst
// src=47, dst=46
// 7, 1, 2, 6, 46, 47
// srcLo=0, dstLo=1
v_lshrrev_b32 v23, 0x10, v23                       // hi16 -> lo16
// src=57, dst=56
// 7, 1, 3, 0, 56, 57
// srcLo=0, dstLo=1
v_lshrrev_b32 v28, 0x10, v28                       // hi16 -> lo16
// src=58, dst=57
// 7, 1, 3, 1, 57, 58
// srcLo=1, dstLo=0
v_and_b32 v28, 0x0000FFFF, v28                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v29                       // left shift src 16 bits
v_or_b32 v28, v71, v28                             // dst = tmpSrc | dst
// src=59, dst=58
// 7, 1, 3, 2, 58, 59
// srcLo=0, dstLo=1
v_lshrrev_b32 v29, 0x10, v29                       // hi16 -> lo16
// src=60, dst=59
// 7, 1, 3, 3, 59, 60
// srcLo=1, dstLo=0
v_and_b32 v29, 0x0000FFFF, v29                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v30                       // left shift src 16 bits
v_or_b32 v29, v71, v29                             // dst = tmpSrc | dst
// src=61, dst=60
// 7, 1, 3, 4, 60, 61
// srcLo=0, dstLo=1
v_lshrrev_b32 v30, 0x10, v30                       // hi16 -> lo16
// src=62, dst=61
// 7, 1, 3, 5, 61, 62
// srcLo=1, dstLo=0
v_and_b32 v30, 0x0000FFFF, v30                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v31                       // left shift src 16 bits
v_or_b32 v30, v71, v30                             // dst = tmpSrc | dst
// src=63, dst=62
// 7, 1, 3, 6, 62, 63
// srcLo=0, dstLo=1
v_lshrrev_b32 v31, 0x10, v31                       // hi16 -> lo16
// src=73, dst=72
// 7, 1, 4, 0, 72, 73
// srcLo=0, dstLo=1
v_lshrrev_b32 v36, 0x10, v36                       // hi16 -> lo16
// src=74, dst=73
// 7, 1, 4, 1, 73, 74
// srcLo=1, dstLo=0
v_and_b32 v36, 0x0000FFFF, v36                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v37                       // left shift src 16 bits
v_or_b32 v36, v71, v36                             // dst = tmpSrc | dst
// src=75, dst=74
// 7, 1, 4, 2, 74, 75
// srcLo=0, dstLo=1
v_lshrrev_b32 v37, 0x10, v37                       // hi16 -> lo16
// src=76, dst=75
// 7, 1, 4, 3, 75, 76
// srcLo=1, dstLo=0
v_and_b32 v37, 0x0000FFFF, v37                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v38                       // left shift src 16 bits
v_or_b32 v37, v71, v37                             // dst = tmpSrc | dst
// src=77, dst=76
// 7, 1, 4, 4, 76, 77
// srcLo=0, dstLo=1
v_lshrrev_b32 v38, 0x10, v38                       // hi16 -> lo16
// src=78, dst=77
// 7, 1, 4, 5, 77, 78
// srcLo=1, dstLo=0
v_and_b32 v38, 0x0000FFFF, v38                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v39                       // left shift src 16 bits
v_or_b32 v38, v71, v38                             // dst = tmpSrc | dst
// src=79, dst=78
// 7, 1, 4, 6, 78, 79
// srcLo=0, dstLo=1
v_lshrrev_b32 v39, 0x10, v39                       // hi16 -> lo16
// src=89, dst=88
// 7, 1, 5, 0, 88, 89
// srcLo=0, dstLo=1
v_lshrrev_b32 v44, 0x10, v44                       // hi16 -> lo16
// src=90, dst=89
// 7, 1, 5, 1, 89, 90
// srcLo=1, dstLo=0
v_and_b32 v44, 0x0000FFFF, v44                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v45                       // left shift src 16 bits
v_or_b32 v44, v71, v44                             // dst = tmpSrc | dst
// src=91, dst=90
// 7, 1, 5, 2, 90, 91
// srcLo=0, dstLo=1
v_lshrrev_b32 v45, 0x10, v45                       // hi16 -> lo16
// src=92, dst=91
// 7, 1, 5, 3, 91, 92
// srcLo=1, dstLo=0
v_and_b32 v45, 0x0000FFFF, v45                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v46                       // left shift src 16 bits
v_or_b32 v45, v71, v45                             // dst = tmpSrc | dst
// src=93, dst=92
// 7, 1, 5, 4, 92, 93
// srcLo=0, dstLo=1
v_lshrrev_b32 v46, 0x10, v46                       // hi16 -> lo16
// src=94, dst=93
// 7, 1, 5, 5, 93, 94
// srcLo=1, dstLo=0
v_and_b32 v46, 0x0000FFFF, v46                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v47                       // left shift src 16 bits
v_or_b32 v46, v71, v46                             // dst = tmpSrc | dst
// src=95, dst=94
// 7, 1, 5, 6, 94, 95
// srcLo=0, dstLo=1
v_lshrrev_b32 v47, 0x10, v47                       // hi16 -> lo16
// src=105, dst=104
// 7, 1, 6, 0, 104, 105
// srcLo=0, dstLo=1
v_lshrrev_b32 v52, 0x10, v52                       // hi16 -> lo16
// src=106, dst=105
// 7, 1, 6, 1, 105, 106
// srcLo=1, dstLo=0
v_and_b32 v52, 0x0000FFFF, v52                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v53                       // left shift src 16 bits
v_or_b32 v52, v71, v52                             // dst = tmpSrc | dst
// src=107, dst=106
// 7, 1, 6, 2, 106, 107
// srcLo=0, dstLo=1
v_lshrrev_b32 v53, 0x10, v53                       // hi16 -> lo16
// src=108, dst=107
// 7, 1, 6, 3, 107, 108
// srcLo=1, dstLo=0
v_and_b32 v53, 0x0000FFFF, v53                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v54                       // left shift src 16 bits
v_or_b32 v53, v71, v53                             // dst = tmpSrc | dst
// src=109, dst=108
// 7, 1, 6, 4, 108, 109
// srcLo=0, dstLo=1
v_lshrrev_b32 v54, 0x10, v54                       // hi16 -> lo16
// src=110, dst=109
// 7, 1, 6, 5, 109, 110
// srcLo=1, dstLo=0
v_and_b32 v54, 0x0000FFFF, v54                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v55                       // left shift src 16 bits
v_or_b32 v54, v71, v54                             // dst = tmpSrc | dst
// src=111, dst=110
// 7, 1, 6, 6, 110, 111
// srcLo=0, dstLo=1
v_lshrrev_b32 v55, 0x10, v55                       // hi16 -> lo16
// src=121, dst=120
// 7, 1, 7, 0, 120, 121
// srcLo=0, dstLo=1
v_lshrrev_b32 v60, 0x10, v60                       // hi16 -> lo16
// src=122, dst=121
// 7, 1, 7, 1, 121, 122
// srcLo=1, dstLo=0
v_and_b32 v60, 0x0000FFFF, v60                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v61                       // left shift src 16 bits
v_or_b32 v60, v71, v60                             // dst = tmpSrc | dst
// src=123, dst=122
// 7, 1, 7, 2, 122, 123
// srcLo=0, dstLo=1
v_lshrrev_b32 v61, 0x10, v61                       // hi16 -> lo16
// src=124, dst=123
// 7, 1, 7, 3, 123, 124
// srcLo=1, dstLo=0
v_and_b32 v61, 0x0000FFFF, v61                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v62                       // left shift src 16 bits
v_or_b32 v61, v71, v61                             // dst = tmpSrc | dst
// src=125, dst=124
// 7, 1, 7, 4, 124, 125
// srcLo=0, dstLo=1
v_lshrrev_b32 v62, 0x10, v62                       // hi16 -> lo16
// src=126, dst=125
// 7, 1, 7, 5, 125, 126
// srcLo=1, dstLo=0
v_and_b32 v62, 0x0000FFFF, v62                     // zero out dst hi16
v_lshlrev_b32 v71, 0x10, v63                       // left shift src 16 bits
v_or_b32 v62, v71, v62                             // dst = tmpSrc | dst
// src=127, dst=126
// 7, 1, 7, 6, 126, 127
// srcLo=0, dstLo=1
v_lshrrev_b32 v63, 0x10, v63                       // hi16 -> lo16
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0050                                // done shifting
label_0050: // end shift0


/* shift vector components d1 */

v_mov_b32 v67, s[sgprWorkGroup1]                   // 
v_mul_i32_i24 v67, -0x80, v67                      // wg*MT
_v_add_co_u32 v67, vcc_lo, s[sgprSizesFree+1], v67 // wgMT = Size - wg*MT
v_mov_b32 v66, 0x80                                // MT
v_min_u32 v67, v66, v67                            // wgMT = (wgMT < MT) ? wgMT : MT
v_lshrrev_b32 v66, 3, v67                          // v66 = v67 / 8
v_and_b32 v68, 7, v67                              // v68 = v67 % 8
v_and_b32 v69, 15, v66                             // v69 = v66 % 16
v_lshrrev_b32 v70, 4, v[vgprSerial]                // v70 = v[vgprSerial] / 16
v_and_b32 v71, 15, v70                             // v71 = v70 % 16
v_lshrrev_b32 v70, 7, v67                          // v70 = v67 / 128
v_and_b32 v72, 7, v67                              // v72 = v67 % 8
v_mov_b32 v73, v72                                 // duplicate
v_lshrrev_b32 v72, 3, v73                          // v72 = v73 / 8
_v_add_co_u32 v72, vcc_lo, v70, v72                // vId = 2 components
v_cmp_eq_u32 vcc_lo, v68, 0x1                      // wgMT%VW == 1
s_cbranch_vccnz label_0053                         // shift d1 r=1
v_cmp_eq_u32 vcc_lo, v68, 0x2                      // wgMT%VW == 2
s_cbranch_vccnz label_0055                         // shift d1 r=2
v_cmp_eq_u32 vcc_lo, v68, 0x3                      // wgMT%VW == 3
s_cbranch_vccnz label_0057                         // shift d1 r=3
v_cmp_eq_u32 vcc_lo, v68, 0x4                      // wgMT%VW == 4
s_cbranch_vccnz label_0059                         // shift d1 r=4
v_cmp_eq_u32 vcc_lo, v68, 0x5                      // wgMT%VW == 5
s_cbranch_vccnz label_0061                         // shift d1 r=5
v_cmp_eq_u32 vcc_lo, v68, 0x6                      // wgMT%VW == 6
s_cbranch_vccnz label_0063                         // shift d1 r=6
v_cmp_eq_u32 vcc_lo, v68, 0x7                      // wgMT%VW == 7
s_cbranch_vccnz label_0065                         // shift d1 r=7
s_branch label_0067                                // no shifting

/******************************************/
/* shift d1 r=1                           */
/******************************************/
label_0053:
v_cmp_eq_u32 vcc_lo, v72, 0x0                      // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0054                         // shift d1, r=1, v=0

/* shift d1 r=1 v=0 */
label_0054:
_v_cmpx_eq_u32 s53, v71, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=112, dst=0
// 1, 0, 0, 0, 0, 112
v_mov_b32 v0, v56                                  // rC[0+0*TT0I*VW+0*TT0I] = rC[0+0*TT0I*VW+7*TT0I]
// src=113, dst=1
// 1, 0, 1, 0, 1, 113
// src=114, dst=2
// 1, 0, 2, 0, 2, 114
v_mov_b32 v1, v57                                  // rC[2+0*TT0I*VW+0*TT0I] = rC[2+0*TT0I*VW+7*TT0I]
// src=115, dst=3
// 1, 0, 3, 0, 3, 115
// src=116, dst=4
// 1, 0, 4, 0, 4, 116
v_mov_b32 v2, v58                                  // rC[4+0*TT0I*VW+0*TT0I] = rC[4+0*TT0I*VW+7*TT0I]
// src=117, dst=5
// 1, 0, 5, 0, 5, 117
// src=118, dst=6
// 1, 0, 6, 0, 6, 118
v_mov_b32 v3, v59                                  // rC[6+0*TT0I*VW+0*TT0I] = rC[6+0*TT0I*VW+7*TT0I]
// src=119, dst=7
// 1, 0, 7, 0, 7, 119
// src=120, dst=8
// 1, 0, 8, 0, 8, 120
v_mov_b32 v4, v60                                  // rC[8+0*TT0I*VW+0*TT0I] = rC[8+0*TT0I*VW+7*TT0I]
// src=121, dst=9
// 1, 0, 9, 0, 9, 121
// src=122, dst=10
// 1, 0, 10, 0, 10, 122
v_mov_b32 v5, v61                                  // rC[10+0*TT0I*VW+0*TT0I] = rC[10+0*TT0I*VW+7*TT0I]
// src=123, dst=11
// 1, 0, 11, 0, 11, 123
// src=124, dst=12
// 1, 0, 12, 0, 12, 124
v_mov_b32 v6, v62                                  // rC[12+0*TT0I*VW+0*TT0I] = rC[12+0*TT0I*VW+7*TT0I]
// src=125, dst=13
// 1, 0, 13, 0, 13, 125
// src=126, dst=14
// 1, 0, 14, 0, 14, 126
v_mov_b32 v7, v63                                  // rC[14+0*TT0I*VW+0*TT0I] = rC[14+0*TT0I*VW+7*TT0I]
// src=127, dst=15
// 1, 0, 15, 0, 15, 127
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0067                                // done shifting

/******************************************/
/* shift d1 r=2                           */
/******************************************/
label_0055:
v_cmp_eq_u32 vcc_lo, v72, 0x0                      // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0056                         // shift d1, r=2, v=0

/* shift d1 r=2 v=0 */
label_0056:
_v_cmpx_eq_u32 s53, v71, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=96, dst=0
// 2, 0, 0, 0, 0, 96
v_mov_b32 v0, v48                                  // rC[0+0*TT0I*VW+0*TT0I] = rC[0+0*TT0I*VW+6*TT0I]
// src=112, dst=16
// 2, 0, 0, 1, 16, 112
v_mov_b32 v8, v56                                  // rC[0+0*TT0I*VW+1*TT0I] = rC[0+0*TT0I*VW+7*TT0I]
// src=97, dst=1
// 2, 0, 1, 0, 1, 97
// src=113, dst=17
// 2, 0, 1, 1, 17, 113
// src=98, dst=2
// 2, 0, 2, 0, 2, 98
v_mov_b32 v1, v49                                  // rC[2+0*TT0I*VW+0*TT0I] = rC[2+0*TT0I*VW+6*TT0I]
// src=114, dst=18
// 2, 0, 2, 1, 18, 114
v_mov_b32 v9, v57                                  // rC[2+0*TT0I*VW+1*TT0I] = rC[2+0*TT0I*VW+7*TT0I]
// src=99, dst=3
// 2, 0, 3, 0, 3, 99
// src=115, dst=19
// 2, 0, 3, 1, 19, 115
// src=100, dst=4
// 2, 0, 4, 0, 4, 100
v_mov_b32 v2, v50                                  // rC[4+0*TT0I*VW+0*TT0I] = rC[4+0*TT0I*VW+6*TT0I]
// src=116, dst=20
// 2, 0, 4, 1, 20, 116
v_mov_b32 v10, v58                                 // rC[4+0*TT0I*VW+1*TT0I] = rC[4+0*TT0I*VW+7*TT0I]
// src=101, dst=5
// 2, 0, 5, 0, 5, 101
// src=117, dst=21
// 2, 0, 5, 1, 21, 117
// src=102, dst=6
// 2, 0, 6, 0, 6, 102
v_mov_b32 v3, v51                                  // rC[6+0*TT0I*VW+0*TT0I] = rC[6+0*TT0I*VW+6*TT0I]
// src=118, dst=22
// 2, 0, 6, 1, 22, 118
v_mov_b32 v11, v59                                 // rC[6+0*TT0I*VW+1*TT0I] = rC[6+0*TT0I*VW+7*TT0I]
// src=103, dst=7
// 2, 0, 7, 0, 7, 103
// src=119, dst=23
// 2, 0, 7, 1, 23, 119
// src=104, dst=8
// 2, 0, 8, 0, 8, 104
v_mov_b32 v4, v52                                  // rC[8+0*TT0I*VW+0*TT0I] = rC[8+0*TT0I*VW+6*TT0I]
// src=120, dst=24
// 2, 0, 8, 1, 24, 120
v_mov_b32 v12, v60                                 // rC[8+0*TT0I*VW+1*TT0I] = rC[8+0*TT0I*VW+7*TT0I]
// src=105, dst=9
// 2, 0, 9, 0, 9, 105
// src=121, dst=25
// 2, 0, 9, 1, 25, 121
// src=106, dst=10
// 2, 0, 10, 0, 10, 106
v_mov_b32 v5, v53                                  // rC[10+0*TT0I*VW+0*TT0I] = rC[10+0*TT0I*VW+6*TT0I]
// src=122, dst=26
// 2, 0, 10, 1, 26, 122
v_mov_b32 v13, v61                                 // rC[10+0*TT0I*VW+1*TT0I] = rC[10+0*TT0I*VW+7*TT0I]
// src=107, dst=11
// 2, 0, 11, 0, 11, 107
// src=123, dst=27
// 2, 0, 11, 1, 27, 123
// src=108, dst=12
// 2, 0, 12, 0, 12, 108
v_mov_b32 v6, v54                                  // rC[12+0*TT0I*VW+0*TT0I] = rC[12+0*TT0I*VW+6*TT0I]
// src=124, dst=28
// 2, 0, 12, 1, 28, 124
v_mov_b32 v14, v62                                 // rC[12+0*TT0I*VW+1*TT0I] = rC[12+0*TT0I*VW+7*TT0I]
// src=109, dst=13
// 2, 0, 13, 0, 13, 109
// src=125, dst=29
// 2, 0, 13, 1, 29, 125
// src=110, dst=14
// 2, 0, 14, 0, 14, 110
v_mov_b32 v7, v55                                  // rC[14+0*TT0I*VW+0*TT0I] = rC[14+0*TT0I*VW+6*TT0I]
// src=126, dst=30
// 2, 0, 14, 1, 30, 126
v_mov_b32 v15, v63                                 // rC[14+0*TT0I*VW+1*TT0I] = rC[14+0*TT0I*VW+7*TT0I]
// src=111, dst=15
// 2, 0, 15, 0, 15, 111
// src=127, dst=31
// 2, 0, 15, 1, 31, 127
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0067                                // done shifting

/******************************************/
/* shift d1 r=3                           */
/******************************************/
label_0057:
v_cmp_eq_u32 vcc_lo, v72, 0x0                      // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0058                         // shift d1, r=3, v=0

/* shift d1 r=3 v=0 */
label_0058:
_v_cmpx_eq_u32 s53, v71, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=80, dst=0
// 3, 0, 0, 0, 0, 80
v_mov_b32 v0, v40                                  // rC[0+0*TT0I*VW+0*TT0I] = rC[0+0*TT0I*VW+5*TT0I]
// src=96, dst=16
// 3, 0, 0, 1, 16, 96
v_mov_b32 v8, v48                                  // rC[0+0*TT0I*VW+1*TT0I] = rC[0+0*TT0I*VW+6*TT0I]
// src=112, dst=32
// 3, 0, 0, 2, 32, 112
v_mov_b32 v16, v56                                 // rC[0+0*TT0I*VW+2*TT0I] = rC[0+0*TT0I*VW+7*TT0I]
// src=81, dst=1
// 3, 0, 1, 0, 1, 81
// src=97, dst=17
// 3, 0, 1, 1, 17, 97
// src=113, dst=33
// 3, 0, 1, 2, 33, 113
// src=82, dst=2
// 3, 0, 2, 0, 2, 82
v_mov_b32 v1, v41                                  // rC[2+0*TT0I*VW+0*TT0I] = rC[2+0*TT0I*VW+5*TT0I]
// src=98, dst=18
// 3, 0, 2, 1, 18, 98
v_mov_b32 v9, v49                                  // rC[2+0*TT0I*VW+1*TT0I] = rC[2+0*TT0I*VW+6*TT0I]
// src=114, dst=34
// 3, 0, 2, 2, 34, 114
v_mov_b32 v17, v57                                 // rC[2+0*TT0I*VW+2*TT0I] = rC[2+0*TT0I*VW+7*TT0I]
// src=83, dst=3
// 3, 0, 3, 0, 3, 83
// src=99, dst=19
// 3, 0, 3, 1, 19, 99
// src=115, dst=35
// 3, 0, 3, 2, 35, 115
// src=84, dst=4
// 3, 0, 4, 0, 4, 84
v_mov_b32 v2, v42                                  // rC[4+0*TT0I*VW+0*TT0I] = rC[4+0*TT0I*VW+5*TT0I]
// src=100, dst=20
// 3, 0, 4, 1, 20, 100
v_mov_b32 v10, v50                                 // rC[4+0*TT0I*VW+1*TT0I] = rC[4+0*TT0I*VW+6*TT0I]
// src=116, dst=36
// 3, 0, 4, 2, 36, 116
v_mov_b32 v18, v58                                 // rC[4+0*TT0I*VW+2*TT0I] = rC[4+0*TT0I*VW+7*TT0I]
// src=85, dst=5
// 3, 0, 5, 0, 5, 85
// src=101, dst=21
// 3, 0, 5, 1, 21, 101
// src=117, dst=37
// 3, 0, 5, 2, 37, 117
// src=86, dst=6
// 3, 0, 6, 0, 6, 86
v_mov_b32 v3, v43                                  // rC[6+0*TT0I*VW+0*TT0I] = rC[6+0*TT0I*VW+5*TT0I]
// src=102, dst=22
// 3, 0, 6, 1, 22, 102
v_mov_b32 v11, v51                                 // rC[6+0*TT0I*VW+1*TT0I] = rC[6+0*TT0I*VW+6*TT0I]
// src=118, dst=38
// 3, 0, 6, 2, 38, 118
v_mov_b32 v19, v59                                 // rC[6+0*TT0I*VW+2*TT0I] = rC[6+0*TT0I*VW+7*TT0I]
// src=87, dst=7
// 3, 0, 7, 0, 7, 87
// src=103, dst=23
// 3, 0, 7, 1, 23, 103
// src=119, dst=39
// 3, 0, 7, 2, 39, 119
// src=88, dst=8
// 3, 0, 8, 0, 8, 88
v_mov_b32 v4, v44                                  // rC[8+0*TT0I*VW+0*TT0I] = rC[8+0*TT0I*VW+5*TT0I]
// src=104, dst=24
// 3, 0, 8, 1, 24, 104
v_mov_b32 v12, v52                                 // rC[8+0*TT0I*VW+1*TT0I] = rC[8+0*TT0I*VW+6*TT0I]
// src=120, dst=40
// 3, 0, 8, 2, 40, 120
v_mov_b32 v20, v60                                 // rC[8+0*TT0I*VW+2*TT0I] = rC[8+0*TT0I*VW+7*TT0I]
// src=89, dst=9
// 3, 0, 9, 0, 9, 89
// src=105, dst=25
// 3, 0, 9, 1, 25, 105
// src=121, dst=41
// 3, 0, 9, 2, 41, 121
// src=90, dst=10
// 3, 0, 10, 0, 10, 90
v_mov_b32 v5, v45                                  // rC[10+0*TT0I*VW+0*TT0I] = rC[10+0*TT0I*VW+5*TT0I]
// src=106, dst=26
// 3, 0, 10, 1, 26, 106
v_mov_b32 v13, v53                                 // rC[10+0*TT0I*VW+1*TT0I] = rC[10+0*TT0I*VW+6*TT0I]
// src=122, dst=42
// 3, 0, 10, 2, 42, 122
v_mov_b32 v21, v61                                 // rC[10+0*TT0I*VW+2*TT0I] = rC[10+0*TT0I*VW+7*TT0I]
// src=91, dst=11
// 3, 0, 11, 0, 11, 91
// src=107, dst=27
// 3, 0, 11, 1, 27, 107
// src=123, dst=43
// 3, 0, 11, 2, 43, 123
// src=92, dst=12
// 3, 0, 12, 0, 12, 92
v_mov_b32 v6, v46                                  // rC[12+0*TT0I*VW+0*TT0I] = rC[12+0*TT0I*VW+5*TT0I]
// src=108, dst=28
// 3, 0, 12, 1, 28, 108
v_mov_b32 v14, v54                                 // rC[12+0*TT0I*VW+1*TT0I] = rC[12+0*TT0I*VW+6*TT0I]
// src=124, dst=44
// 3, 0, 12, 2, 44, 124
v_mov_b32 v22, v62                                 // rC[12+0*TT0I*VW+2*TT0I] = rC[12+0*TT0I*VW+7*TT0I]
// src=93, dst=13
// 3, 0, 13, 0, 13, 93
// src=109, dst=29
// 3, 0, 13, 1, 29, 109
// src=125, dst=45
// 3, 0, 13, 2, 45, 125
// src=94, dst=14
// 3, 0, 14, 0, 14, 94
v_mov_b32 v7, v47                                  // rC[14+0*TT0I*VW+0*TT0I] = rC[14+0*TT0I*VW+5*TT0I]
// src=110, dst=30
// 3, 0, 14, 1, 30, 110
v_mov_b32 v15, v55                                 // rC[14+0*TT0I*VW+1*TT0I] = rC[14+0*TT0I*VW+6*TT0I]
// src=126, dst=46
// 3, 0, 14, 2, 46, 126
v_mov_b32 v23, v63                                 // rC[14+0*TT0I*VW+2*TT0I] = rC[14+0*TT0I*VW+7*TT0I]
// src=95, dst=15
// 3, 0, 15, 0, 15, 95
// src=111, dst=31
// 3, 0, 15, 1, 31, 111
// src=127, dst=47
// 3, 0, 15, 2, 47, 127
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0067                                // done shifting

/******************************************/
/* shift d1 r=4                           */
/******************************************/
label_0059:
v_cmp_eq_u32 vcc_lo, v72, 0x0                      // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0060                         // shift d1, r=4, v=0

/* shift d1 r=4 v=0 */
label_0060:
_v_cmpx_eq_u32 s53, v71, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=64, dst=0
// 4, 0, 0, 0, 0, 64
v_mov_b32 v0, v32                                  // rC[0+0*TT0I*VW+0*TT0I] = rC[0+0*TT0I*VW+4*TT0I]
// src=80, dst=16
// 4, 0, 0, 1, 16, 80
v_mov_b32 v8, v40                                  // rC[0+0*TT0I*VW+1*TT0I] = rC[0+0*TT0I*VW+5*TT0I]
// src=96, dst=32
// 4, 0, 0, 2, 32, 96
v_mov_b32 v16, v48                                 // rC[0+0*TT0I*VW+2*TT0I] = rC[0+0*TT0I*VW+6*TT0I]
// src=112, dst=48
// 4, 0, 0, 3, 48, 112
v_mov_b32 v24, v56                                 // rC[0+0*TT0I*VW+3*TT0I] = rC[0+0*TT0I*VW+7*TT0I]
// src=65, dst=1
// 4, 0, 1, 0, 1, 65
// src=81, dst=17
// 4, 0, 1, 1, 17, 81
// src=97, dst=33
// 4, 0, 1, 2, 33, 97
// src=113, dst=49
// 4, 0, 1, 3, 49, 113
// src=66, dst=2
// 4, 0, 2, 0, 2, 66
v_mov_b32 v1, v33                                  // rC[2+0*TT0I*VW+0*TT0I] = rC[2+0*TT0I*VW+4*TT0I]
// src=82, dst=18
// 4, 0, 2, 1, 18, 82
v_mov_b32 v9, v41                                  // rC[2+0*TT0I*VW+1*TT0I] = rC[2+0*TT0I*VW+5*TT0I]
// src=98, dst=34
// 4, 0, 2, 2, 34, 98
v_mov_b32 v17, v49                                 // rC[2+0*TT0I*VW+2*TT0I] = rC[2+0*TT0I*VW+6*TT0I]
// src=114, dst=50
// 4, 0, 2, 3, 50, 114
v_mov_b32 v25, v57                                 // rC[2+0*TT0I*VW+3*TT0I] = rC[2+0*TT0I*VW+7*TT0I]
// src=67, dst=3
// 4, 0, 3, 0, 3, 67
// src=83, dst=19
// 4, 0, 3, 1, 19, 83
// src=99, dst=35
// 4, 0, 3, 2, 35, 99
// src=115, dst=51
// 4, 0, 3, 3, 51, 115
// src=68, dst=4
// 4, 0, 4, 0, 4, 68
v_mov_b32 v2, v34                                  // rC[4+0*TT0I*VW+0*TT0I] = rC[4+0*TT0I*VW+4*TT0I]
// src=84, dst=20
// 4, 0, 4, 1, 20, 84
v_mov_b32 v10, v42                                 // rC[4+0*TT0I*VW+1*TT0I] = rC[4+0*TT0I*VW+5*TT0I]
// src=100, dst=36
// 4, 0, 4, 2, 36, 100
v_mov_b32 v18, v50                                 // rC[4+0*TT0I*VW+2*TT0I] = rC[4+0*TT0I*VW+6*TT0I]
// src=116, dst=52
// 4, 0, 4, 3, 52, 116
v_mov_b32 v26, v58                                 // rC[4+0*TT0I*VW+3*TT0I] = rC[4+0*TT0I*VW+7*TT0I]
// src=69, dst=5
// 4, 0, 5, 0, 5, 69
// src=85, dst=21
// 4, 0, 5, 1, 21, 85
// src=101, dst=37
// 4, 0, 5, 2, 37, 101
// src=117, dst=53
// 4, 0, 5, 3, 53, 117
// src=70, dst=6
// 4, 0, 6, 0, 6, 70
v_mov_b32 v3, v35                                  // rC[6+0*TT0I*VW+0*TT0I] = rC[6+0*TT0I*VW+4*TT0I]
// src=86, dst=22
// 4, 0, 6, 1, 22, 86
v_mov_b32 v11, v43                                 // rC[6+0*TT0I*VW+1*TT0I] = rC[6+0*TT0I*VW+5*TT0I]
// src=102, dst=38
// 4, 0, 6, 2, 38, 102
v_mov_b32 v19, v51                                 // rC[6+0*TT0I*VW+2*TT0I] = rC[6+0*TT0I*VW+6*TT0I]
// src=118, dst=54
// 4, 0, 6, 3, 54, 118
v_mov_b32 v27, v59                                 // rC[6+0*TT0I*VW+3*TT0I] = rC[6+0*TT0I*VW+7*TT0I]
// src=71, dst=7
// 4, 0, 7, 0, 7, 71
// src=87, dst=23
// 4, 0, 7, 1, 23, 87
// src=103, dst=39
// 4, 0, 7, 2, 39, 103
// src=119, dst=55
// 4, 0, 7, 3, 55, 119
// src=72, dst=8
// 4, 0, 8, 0, 8, 72
v_mov_b32 v4, v36                                  // rC[8+0*TT0I*VW+0*TT0I] = rC[8+0*TT0I*VW+4*TT0I]
// src=88, dst=24
// 4, 0, 8, 1, 24, 88
v_mov_b32 v12, v44                                 // rC[8+0*TT0I*VW+1*TT0I] = rC[8+0*TT0I*VW+5*TT0I]
// src=104, dst=40
// 4, 0, 8, 2, 40, 104
v_mov_b32 v20, v52                                 // rC[8+0*TT0I*VW+2*TT0I] = rC[8+0*TT0I*VW+6*TT0I]
// src=120, dst=56
// 4, 0, 8, 3, 56, 120
v_mov_b32 v28, v60                                 // rC[8+0*TT0I*VW+3*TT0I] = rC[8+0*TT0I*VW+7*TT0I]
// src=73, dst=9
// 4, 0, 9, 0, 9, 73
// src=89, dst=25
// 4, 0, 9, 1, 25, 89
// src=105, dst=41
// 4, 0, 9, 2, 41, 105
// src=121, dst=57
// 4, 0, 9, 3, 57, 121
// src=74, dst=10
// 4, 0, 10, 0, 10, 74
v_mov_b32 v5, v37                                  // rC[10+0*TT0I*VW+0*TT0I] = rC[10+0*TT0I*VW+4*TT0I]
// src=90, dst=26
// 4, 0, 10, 1, 26, 90
v_mov_b32 v13, v45                                 // rC[10+0*TT0I*VW+1*TT0I] = rC[10+0*TT0I*VW+5*TT0I]
// src=106, dst=42
// 4, 0, 10, 2, 42, 106
v_mov_b32 v21, v53                                 // rC[10+0*TT0I*VW+2*TT0I] = rC[10+0*TT0I*VW+6*TT0I]
// src=122, dst=58
// 4, 0, 10, 3, 58, 122
v_mov_b32 v29, v61                                 // rC[10+0*TT0I*VW+3*TT0I] = rC[10+0*TT0I*VW+7*TT0I]
// src=75, dst=11
// 4, 0, 11, 0, 11, 75
// src=91, dst=27
// 4, 0, 11, 1, 27, 91
// src=107, dst=43
// 4, 0, 11, 2, 43, 107
// src=123, dst=59
// 4, 0, 11, 3, 59, 123
// src=76, dst=12
// 4, 0, 12, 0, 12, 76
v_mov_b32 v6, v38                                  // rC[12+0*TT0I*VW+0*TT0I] = rC[12+0*TT0I*VW+4*TT0I]
// src=92, dst=28
// 4, 0, 12, 1, 28, 92
v_mov_b32 v14, v46                                 // rC[12+0*TT0I*VW+1*TT0I] = rC[12+0*TT0I*VW+5*TT0I]
// src=108, dst=44
// 4, 0, 12, 2, 44, 108
v_mov_b32 v22, v54                                 // rC[12+0*TT0I*VW+2*TT0I] = rC[12+0*TT0I*VW+6*TT0I]
// src=124, dst=60
// 4, 0, 12, 3, 60, 124
v_mov_b32 v30, v62                                 // rC[12+0*TT0I*VW+3*TT0I] = rC[12+0*TT0I*VW+7*TT0I]
// src=77, dst=13
// 4, 0, 13, 0, 13, 77
// src=93, dst=29
// 4, 0, 13, 1, 29, 93
// src=109, dst=45
// 4, 0, 13, 2, 45, 109
// src=125, dst=61
// 4, 0, 13, 3, 61, 125
// src=78, dst=14
// 4, 0, 14, 0, 14, 78
v_mov_b32 v7, v39                                  // rC[14+0*TT0I*VW+0*TT0I] = rC[14+0*TT0I*VW+4*TT0I]
// src=94, dst=30
// 4, 0, 14, 1, 30, 94
v_mov_b32 v15, v47                                 // rC[14+0*TT0I*VW+1*TT0I] = rC[14+0*TT0I*VW+5*TT0I]
// src=110, dst=46
// 4, 0, 14, 2, 46, 110
v_mov_b32 v23, v55                                 // rC[14+0*TT0I*VW+2*TT0I] = rC[14+0*TT0I*VW+6*TT0I]
// src=126, dst=62
// 4, 0, 14, 3, 62, 126
v_mov_b32 v31, v63                                 // rC[14+0*TT0I*VW+3*TT0I] = rC[14+0*TT0I*VW+7*TT0I]
// src=79, dst=15
// 4, 0, 15, 0, 15, 79
// src=95, dst=31
// 4, 0, 15, 1, 31, 95
// src=111, dst=47
// 4, 0, 15, 2, 47, 111
// src=127, dst=63
// 4, 0, 15, 3, 63, 127
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0067                                // done shifting

/******************************************/
/* shift d1 r=5                           */
/******************************************/
label_0061:
v_cmp_eq_u32 vcc_lo, v72, 0x0                      // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0062                         // shift d1, r=5, v=0

/* shift d1 r=5 v=0 */
label_0062:
_v_cmpx_eq_u32 s53, v71, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=48, dst=0
// 5, 0, 0, 0, 0, 48
v_mov_b32 v0, v24                                  // rC[0+0*TT0I*VW+0*TT0I] = rC[0+0*TT0I*VW+3*TT0I]
// src=64, dst=16
// 5, 0, 0, 1, 16, 64
v_mov_b32 v8, v32                                  // rC[0+0*TT0I*VW+1*TT0I] = rC[0+0*TT0I*VW+4*TT0I]
// src=80, dst=32
// 5, 0, 0, 2, 32, 80
v_mov_b32 v16, v40                                 // rC[0+0*TT0I*VW+2*TT0I] = rC[0+0*TT0I*VW+5*TT0I]
// src=96, dst=48
// 5, 0, 0, 3, 48, 96
v_mov_b32 v24, v48                                 // rC[0+0*TT0I*VW+3*TT0I] = rC[0+0*TT0I*VW+6*TT0I]
// src=112, dst=64
// 5, 0, 0, 4, 64, 112
v_mov_b32 v32, v56                                 // rC[0+0*TT0I*VW+4*TT0I] = rC[0+0*TT0I*VW+7*TT0I]
// src=49, dst=1
// 5, 0, 1, 0, 1, 49
// src=65, dst=17
// 5, 0, 1, 1, 17, 65
// src=81, dst=33
// 5, 0, 1, 2, 33, 81
// src=97, dst=49
// 5, 0, 1, 3, 49, 97
// src=113, dst=65
// 5, 0, 1, 4, 65, 113
// src=50, dst=2
// 5, 0, 2, 0, 2, 50
v_mov_b32 v1, v25                                  // rC[2+0*TT0I*VW+0*TT0I] = rC[2+0*TT0I*VW+3*TT0I]
// src=66, dst=18
// 5, 0, 2, 1, 18, 66
v_mov_b32 v9, v33                                  // rC[2+0*TT0I*VW+1*TT0I] = rC[2+0*TT0I*VW+4*TT0I]
// src=82, dst=34
// 5, 0, 2, 2, 34, 82
v_mov_b32 v17, v41                                 // rC[2+0*TT0I*VW+2*TT0I] = rC[2+0*TT0I*VW+5*TT0I]
// src=98, dst=50
// 5, 0, 2, 3, 50, 98
v_mov_b32 v25, v49                                 // rC[2+0*TT0I*VW+3*TT0I] = rC[2+0*TT0I*VW+6*TT0I]
// src=114, dst=66
// 5, 0, 2, 4, 66, 114
v_mov_b32 v33, v57                                 // rC[2+0*TT0I*VW+4*TT0I] = rC[2+0*TT0I*VW+7*TT0I]
// src=51, dst=3
// 5, 0, 3, 0, 3, 51
// src=67, dst=19
// 5, 0, 3, 1, 19, 67
// src=83, dst=35
// 5, 0, 3, 2, 35, 83
// src=99, dst=51
// 5, 0, 3, 3, 51, 99
// src=115, dst=67
// 5, 0, 3, 4, 67, 115
// src=52, dst=4
// 5, 0, 4, 0, 4, 52
v_mov_b32 v2, v26                                  // rC[4+0*TT0I*VW+0*TT0I] = rC[4+0*TT0I*VW+3*TT0I]
// src=68, dst=20
// 5, 0, 4, 1, 20, 68
v_mov_b32 v10, v34                                 // rC[4+0*TT0I*VW+1*TT0I] = rC[4+0*TT0I*VW+4*TT0I]
// src=84, dst=36
// 5, 0, 4, 2, 36, 84
v_mov_b32 v18, v42                                 // rC[4+0*TT0I*VW+2*TT0I] = rC[4+0*TT0I*VW+5*TT0I]
// src=100, dst=52
// 5, 0, 4, 3, 52, 100
v_mov_b32 v26, v50                                 // rC[4+0*TT0I*VW+3*TT0I] = rC[4+0*TT0I*VW+6*TT0I]
// src=116, dst=68
// 5, 0, 4, 4, 68, 116
v_mov_b32 v34, v58                                 // rC[4+0*TT0I*VW+4*TT0I] = rC[4+0*TT0I*VW+7*TT0I]
// src=53, dst=5
// 5, 0, 5, 0, 5, 53
// src=69, dst=21
// 5, 0, 5, 1, 21, 69
// src=85, dst=37
// 5, 0, 5, 2, 37, 85
// src=101, dst=53
// 5, 0, 5, 3, 53, 101
// src=117, dst=69
// 5, 0, 5, 4, 69, 117
// src=54, dst=6
// 5, 0, 6, 0, 6, 54
v_mov_b32 v3, v27                                  // rC[6+0*TT0I*VW+0*TT0I] = rC[6+0*TT0I*VW+3*TT0I]
// src=70, dst=22
// 5, 0, 6, 1, 22, 70
v_mov_b32 v11, v35                                 // rC[6+0*TT0I*VW+1*TT0I] = rC[6+0*TT0I*VW+4*TT0I]
// src=86, dst=38
// 5, 0, 6, 2, 38, 86
v_mov_b32 v19, v43                                 // rC[6+0*TT0I*VW+2*TT0I] = rC[6+0*TT0I*VW+5*TT0I]
// src=102, dst=54
// 5, 0, 6, 3, 54, 102
v_mov_b32 v27, v51                                 // rC[6+0*TT0I*VW+3*TT0I] = rC[6+0*TT0I*VW+6*TT0I]
// src=118, dst=70
// 5, 0, 6, 4, 70, 118
v_mov_b32 v35, v59                                 // rC[6+0*TT0I*VW+4*TT0I] = rC[6+0*TT0I*VW+7*TT0I]
// src=55, dst=7
// 5, 0, 7, 0, 7, 55
// src=71, dst=23
// 5, 0, 7, 1, 23, 71
// src=87, dst=39
// 5, 0, 7, 2, 39, 87
// src=103, dst=55
// 5, 0, 7, 3, 55, 103
// src=119, dst=71
// 5, 0, 7, 4, 71, 119
// src=56, dst=8
// 5, 0, 8, 0, 8, 56
v_mov_b32 v4, v28                                  // rC[8+0*TT0I*VW+0*TT0I] = rC[8+0*TT0I*VW+3*TT0I]
// src=72, dst=24
// 5, 0, 8, 1, 24, 72
v_mov_b32 v12, v36                                 // rC[8+0*TT0I*VW+1*TT0I] = rC[8+0*TT0I*VW+4*TT0I]
// src=88, dst=40
// 5, 0, 8, 2, 40, 88
v_mov_b32 v20, v44                                 // rC[8+0*TT0I*VW+2*TT0I] = rC[8+0*TT0I*VW+5*TT0I]
// src=104, dst=56
// 5, 0, 8, 3, 56, 104
v_mov_b32 v28, v52                                 // rC[8+0*TT0I*VW+3*TT0I] = rC[8+0*TT0I*VW+6*TT0I]
// src=120, dst=72
// 5, 0, 8, 4, 72, 120
v_mov_b32 v36, v60                                 // rC[8+0*TT0I*VW+4*TT0I] = rC[8+0*TT0I*VW+7*TT0I]
// src=57, dst=9
// 5, 0, 9, 0, 9, 57
// src=73, dst=25
// 5, 0, 9, 1, 25, 73
// src=89, dst=41
// 5, 0, 9, 2, 41, 89
// src=105, dst=57
// 5, 0, 9, 3, 57, 105
// src=121, dst=73
// 5, 0, 9, 4, 73, 121
// src=58, dst=10
// 5, 0, 10, 0, 10, 58
v_mov_b32 v5, v29                                  // rC[10+0*TT0I*VW+0*TT0I] = rC[10+0*TT0I*VW+3*TT0I]
// src=74, dst=26
// 5, 0, 10, 1, 26, 74
v_mov_b32 v13, v37                                 // rC[10+0*TT0I*VW+1*TT0I] = rC[10+0*TT0I*VW+4*TT0I]
// src=90, dst=42
// 5, 0, 10, 2, 42, 90
v_mov_b32 v21, v45                                 // rC[10+0*TT0I*VW+2*TT0I] = rC[10+0*TT0I*VW+5*TT0I]
// src=106, dst=58
// 5, 0, 10, 3, 58, 106
v_mov_b32 v29, v53                                 // rC[10+0*TT0I*VW+3*TT0I] = rC[10+0*TT0I*VW+6*TT0I]
// src=122, dst=74
// 5, 0, 10, 4, 74, 122
v_mov_b32 v37, v61                                 // rC[10+0*TT0I*VW+4*TT0I] = rC[10+0*TT0I*VW+7*TT0I]
// src=59, dst=11
// 5, 0, 11, 0, 11, 59
// src=75, dst=27
// 5, 0, 11, 1, 27, 75
// src=91, dst=43
// 5, 0, 11, 2, 43, 91
// src=107, dst=59
// 5, 0, 11, 3, 59, 107
// src=123, dst=75
// 5, 0, 11, 4, 75, 123
// src=60, dst=12
// 5, 0, 12, 0, 12, 60
v_mov_b32 v6, v30                                  // rC[12+0*TT0I*VW+0*TT0I] = rC[12+0*TT0I*VW+3*TT0I]
// src=76, dst=28
// 5, 0, 12, 1, 28, 76
v_mov_b32 v14, v38                                 // rC[12+0*TT0I*VW+1*TT0I] = rC[12+0*TT0I*VW+4*TT0I]
// src=92, dst=44
// 5, 0, 12, 2, 44, 92
v_mov_b32 v22, v46                                 // rC[12+0*TT0I*VW+2*TT0I] = rC[12+0*TT0I*VW+5*TT0I]
// src=108, dst=60
// 5, 0, 12, 3, 60, 108
v_mov_b32 v30, v54                                 // rC[12+0*TT0I*VW+3*TT0I] = rC[12+0*TT0I*VW+6*TT0I]
// src=124, dst=76
// 5, 0, 12, 4, 76, 124
v_mov_b32 v38, v62                                 // rC[12+0*TT0I*VW+4*TT0I] = rC[12+0*TT0I*VW+7*TT0I]
// src=61, dst=13
// 5, 0, 13, 0, 13, 61
// src=77, dst=29
// 5, 0, 13, 1, 29, 77
// src=93, dst=45
// 5, 0, 13, 2, 45, 93
// src=109, dst=61
// 5, 0, 13, 3, 61, 109
// src=125, dst=77
// 5, 0, 13, 4, 77, 125
// src=62, dst=14
// 5, 0, 14, 0, 14, 62
v_mov_b32 v7, v31                                  // rC[14+0*TT0I*VW+0*TT0I] = rC[14+0*TT0I*VW+3*TT0I]
// src=78, dst=30
// 5, 0, 14, 1, 30, 78
v_mov_b32 v15, v39                                 // rC[14+0*TT0I*VW+1*TT0I] = rC[14+0*TT0I*VW+4*TT0I]
// src=94, dst=46
// 5, 0, 14, 2, 46, 94
v_mov_b32 v23, v47                                 // rC[14+0*TT0I*VW+2*TT0I] = rC[14+0*TT0I*VW+5*TT0I]
// src=110, dst=62
// 5, 0, 14, 3, 62, 110
v_mov_b32 v31, v55                                 // rC[14+0*TT0I*VW+3*TT0I] = rC[14+0*TT0I*VW+6*TT0I]
// src=126, dst=78
// 5, 0, 14, 4, 78, 126
v_mov_b32 v39, v63                                 // rC[14+0*TT0I*VW+4*TT0I] = rC[14+0*TT0I*VW+7*TT0I]
// src=63, dst=15
// 5, 0, 15, 0, 15, 63
// src=79, dst=31
// 5, 0, 15, 1, 31, 79
// src=95, dst=47
// 5, 0, 15, 2, 47, 95
// src=111, dst=63
// 5, 0, 15, 3, 63, 111
// src=127, dst=79
// 5, 0, 15, 4, 79, 127
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0067                                // done shifting

/******************************************/
/* shift d1 r=6                           */
/******************************************/
label_0063:
v_cmp_eq_u32 vcc_lo, v72, 0x0                      // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0064                         // shift d1, r=6, v=0

/* shift d1 r=6 v=0 */
label_0064:
_v_cmpx_eq_u32 s53, v71, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=32, dst=0
// 6, 0, 0, 0, 0, 32
v_mov_b32 v0, v16                                  // rC[0+0*TT0I*VW+0*TT0I] = rC[0+0*TT0I*VW+2*TT0I]
// src=48, dst=16
// 6, 0, 0, 1, 16, 48
v_mov_b32 v8, v24                                  // rC[0+0*TT0I*VW+1*TT0I] = rC[0+0*TT0I*VW+3*TT0I]
// src=64, dst=32
// 6, 0, 0, 2, 32, 64
v_mov_b32 v16, v32                                 // rC[0+0*TT0I*VW+2*TT0I] = rC[0+0*TT0I*VW+4*TT0I]
// src=80, dst=48
// 6, 0, 0, 3, 48, 80
v_mov_b32 v24, v40                                 // rC[0+0*TT0I*VW+3*TT0I] = rC[0+0*TT0I*VW+5*TT0I]
// src=96, dst=64
// 6, 0, 0, 4, 64, 96
v_mov_b32 v32, v48                                 // rC[0+0*TT0I*VW+4*TT0I] = rC[0+0*TT0I*VW+6*TT0I]
// src=112, dst=80
// 6, 0, 0, 5, 80, 112
v_mov_b32 v40, v56                                 // rC[0+0*TT0I*VW+5*TT0I] = rC[0+0*TT0I*VW+7*TT0I]
// src=33, dst=1
// 6, 0, 1, 0, 1, 33
// src=49, dst=17
// 6, 0, 1, 1, 17, 49
// src=65, dst=33
// 6, 0, 1, 2, 33, 65
// src=81, dst=49
// 6, 0, 1, 3, 49, 81
// src=97, dst=65
// 6, 0, 1, 4, 65, 97
// src=113, dst=81
// 6, 0, 1, 5, 81, 113
// src=34, dst=2
// 6, 0, 2, 0, 2, 34
v_mov_b32 v1, v17                                  // rC[2+0*TT0I*VW+0*TT0I] = rC[2+0*TT0I*VW+2*TT0I]
// src=50, dst=18
// 6, 0, 2, 1, 18, 50
v_mov_b32 v9, v25                                  // rC[2+0*TT0I*VW+1*TT0I] = rC[2+0*TT0I*VW+3*TT0I]
// src=66, dst=34
// 6, 0, 2, 2, 34, 66
v_mov_b32 v17, v33                                 // rC[2+0*TT0I*VW+2*TT0I] = rC[2+0*TT0I*VW+4*TT0I]
// src=82, dst=50
// 6, 0, 2, 3, 50, 82
v_mov_b32 v25, v41                                 // rC[2+0*TT0I*VW+3*TT0I] = rC[2+0*TT0I*VW+5*TT0I]
// src=98, dst=66
// 6, 0, 2, 4, 66, 98
v_mov_b32 v33, v49                                 // rC[2+0*TT0I*VW+4*TT0I] = rC[2+0*TT0I*VW+6*TT0I]
// src=114, dst=82
// 6, 0, 2, 5, 82, 114
v_mov_b32 v41, v57                                 // rC[2+0*TT0I*VW+5*TT0I] = rC[2+0*TT0I*VW+7*TT0I]
// src=35, dst=3
// 6, 0, 3, 0, 3, 35
// src=51, dst=19
// 6, 0, 3, 1, 19, 51
// src=67, dst=35
// 6, 0, 3, 2, 35, 67
// src=83, dst=51
// 6, 0, 3, 3, 51, 83
// src=99, dst=67
// 6, 0, 3, 4, 67, 99
// src=115, dst=83
// 6, 0, 3, 5, 83, 115
// src=36, dst=4
// 6, 0, 4, 0, 4, 36
v_mov_b32 v2, v18                                  // rC[4+0*TT0I*VW+0*TT0I] = rC[4+0*TT0I*VW+2*TT0I]
// src=52, dst=20
// 6, 0, 4, 1, 20, 52
v_mov_b32 v10, v26                                 // rC[4+0*TT0I*VW+1*TT0I] = rC[4+0*TT0I*VW+3*TT0I]
// src=68, dst=36
// 6, 0, 4, 2, 36, 68
v_mov_b32 v18, v34                                 // rC[4+0*TT0I*VW+2*TT0I] = rC[4+0*TT0I*VW+4*TT0I]
// src=84, dst=52
// 6, 0, 4, 3, 52, 84
v_mov_b32 v26, v42                                 // rC[4+0*TT0I*VW+3*TT0I] = rC[4+0*TT0I*VW+5*TT0I]
// src=100, dst=68
// 6, 0, 4, 4, 68, 100
v_mov_b32 v34, v50                                 // rC[4+0*TT0I*VW+4*TT0I] = rC[4+0*TT0I*VW+6*TT0I]
// src=116, dst=84
// 6, 0, 4, 5, 84, 116
v_mov_b32 v42, v58                                 // rC[4+0*TT0I*VW+5*TT0I] = rC[4+0*TT0I*VW+7*TT0I]
// src=37, dst=5
// 6, 0, 5, 0, 5, 37
// src=53, dst=21
// 6, 0, 5, 1, 21, 53
// src=69, dst=37
// 6, 0, 5, 2, 37, 69
// src=85, dst=53
// 6, 0, 5, 3, 53, 85
// src=101, dst=69
// 6, 0, 5, 4, 69, 101
// src=117, dst=85
// 6, 0, 5, 5, 85, 117
// src=38, dst=6
// 6, 0, 6, 0, 6, 38
v_mov_b32 v3, v19                                  // rC[6+0*TT0I*VW+0*TT0I] = rC[6+0*TT0I*VW+2*TT0I]
// src=54, dst=22
// 6, 0, 6, 1, 22, 54
v_mov_b32 v11, v27                                 // rC[6+0*TT0I*VW+1*TT0I] = rC[6+0*TT0I*VW+3*TT0I]
// src=70, dst=38
// 6, 0, 6, 2, 38, 70
v_mov_b32 v19, v35                                 // rC[6+0*TT0I*VW+2*TT0I] = rC[6+0*TT0I*VW+4*TT0I]
// src=86, dst=54
// 6, 0, 6, 3, 54, 86
v_mov_b32 v27, v43                                 // rC[6+0*TT0I*VW+3*TT0I] = rC[6+0*TT0I*VW+5*TT0I]
// src=102, dst=70
// 6, 0, 6, 4, 70, 102
v_mov_b32 v35, v51                                 // rC[6+0*TT0I*VW+4*TT0I] = rC[6+0*TT0I*VW+6*TT0I]
// src=118, dst=86
// 6, 0, 6, 5, 86, 118
v_mov_b32 v43, v59                                 // rC[6+0*TT0I*VW+5*TT0I] = rC[6+0*TT0I*VW+7*TT0I]
// src=39, dst=7
// 6, 0, 7, 0, 7, 39
// src=55, dst=23
// 6, 0, 7, 1, 23, 55
// src=71, dst=39
// 6, 0, 7, 2, 39, 71
// src=87, dst=55
// 6, 0, 7, 3, 55, 87
// src=103, dst=71
// 6, 0, 7, 4, 71, 103
// src=119, dst=87
// 6, 0, 7, 5, 87, 119
// src=40, dst=8
// 6, 0, 8, 0, 8, 40
v_mov_b32 v4, v20                                  // rC[8+0*TT0I*VW+0*TT0I] = rC[8+0*TT0I*VW+2*TT0I]
// src=56, dst=24
// 6, 0, 8, 1, 24, 56
v_mov_b32 v12, v28                                 // rC[8+0*TT0I*VW+1*TT0I] = rC[8+0*TT0I*VW+3*TT0I]
// src=72, dst=40
// 6, 0, 8, 2, 40, 72
v_mov_b32 v20, v36                                 // rC[8+0*TT0I*VW+2*TT0I] = rC[8+0*TT0I*VW+4*TT0I]
// src=88, dst=56
// 6, 0, 8, 3, 56, 88
v_mov_b32 v28, v44                                 // rC[8+0*TT0I*VW+3*TT0I] = rC[8+0*TT0I*VW+5*TT0I]
// src=104, dst=72
// 6, 0, 8, 4, 72, 104
v_mov_b32 v36, v52                                 // rC[8+0*TT0I*VW+4*TT0I] = rC[8+0*TT0I*VW+6*TT0I]
// src=120, dst=88
// 6, 0, 8, 5, 88, 120
v_mov_b32 v44, v60                                 // rC[8+0*TT0I*VW+5*TT0I] = rC[8+0*TT0I*VW+7*TT0I]
// src=41, dst=9
// 6, 0, 9, 0, 9, 41
// src=57, dst=25
// 6, 0, 9, 1, 25, 57
// src=73, dst=41
// 6, 0, 9, 2, 41, 73
// src=89, dst=57
// 6, 0, 9, 3, 57, 89
// src=105, dst=73
// 6, 0, 9, 4, 73, 105
// src=121, dst=89
// 6, 0, 9, 5, 89, 121
// src=42, dst=10
// 6, 0, 10, 0, 10, 42
v_mov_b32 v5, v21                                  // rC[10+0*TT0I*VW+0*TT0I] = rC[10+0*TT0I*VW+2*TT0I]
// src=58, dst=26
// 6, 0, 10, 1, 26, 58
v_mov_b32 v13, v29                                 // rC[10+0*TT0I*VW+1*TT0I] = rC[10+0*TT0I*VW+3*TT0I]
// src=74, dst=42
// 6, 0, 10, 2, 42, 74
v_mov_b32 v21, v37                                 // rC[10+0*TT0I*VW+2*TT0I] = rC[10+0*TT0I*VW+4*TT0I]
// src=90, dst=58
// 6, 0, 10, 3, 58, 90
v_mov_b32 v29, v45                                 // rC[10+0*TT0I*VW+3*TT0I] = rC[10+0*TT0I*VW+5*TT0I]
// src=106, dst=74
// 6, 0, 10, 4, 74, 106
v_mov_b32 v37, v53                                 // rC[10+0*TT0I*VW+4*TT0I] = rC[10+0*TT0I*VW+6*TT0I]
// src=122, dst=90
// 6, 0, 10, 5, 90, 122
v_mov_b32 v45, v61                                 // rC[10+0*TT0I*VW+5*TT0I] = rC[10+0*TT0I*VW+7*TT0I]
// src=43, dst=11
// 6, 0, 11, 0, 11, 43
// src=59, dst=27
// 6, 0, 11, 1, 27, 59
// src=75, dst=43
// 6, 0, 11, 2, 43, 75
// src=91, dst=59
// 6, 0, 11, 3, 59, 91
// src=107, dst=75
// 6, 0, 11, 4, 75, 107
// src=123, dst=91
// 6, 0, 11, 5, 91, 123
// src=44, dst=12
// 6, 0, 12, 0, 12, 44
v_mov_b32 v6, v22                                  // rC[12+0*TT0I*VW+0*TT0I] = rC[12+0*TT0I*VW+2*TT0I]
// src=60, dst=28
// 6, 0, 12, 1, 28, 60
v_mov_b32 v14, v30                                 // rC[12+0*TT0I*VW+1*TT0I] = rC[12+0*TT0I*VW+3*TT0I]
// src=76, dst=44
// 6, 0, 12, 2, 44, 76
v_mov_b32 v22, v38                                 // rC[12+0*TT0I*VW+2*TT0I] = rC[12+0*TT0I*VW+4*TT0I]
// src=92, dst=60
// 6, 0, 12, 3, 60, 92
v_mov_b32 v30, v46                                 // rC[12+0*TT0I*VW+3*TT0I] = rC[12+0*TT0I*VW+5*TT0I]
// src=108, dst=76
// 6, 0, 12, 4, 76, 108
v_mov_b32 v38, v54                                 // rC[12+0*TT0I*VW+4*TT0I] = rC[12+0*TT0I*VW+6*TT0I]
// src=124, dst=92
// 6, 0, 12, 5, 92, 124
v_mov_b32 v46, v62                                 // rC[12+0*TT0I*VW+5*TT0I] = rC[12+0*TT0I*VW+7*TT0I]
// src=45, dst=13
// 6, 0, 13, 0, 13, 45
// src=61, dst=29
// 6, 0, 13, 1, 29, 61
// src=77, dst=45
// 6, 0, 13, 2, 45, 77
// src=93, dst=61
// 6, 0, 13, 3, 61, 93
// src=109, dst=77
// 6, 0, 13, 4, 77, 109
// src=125, dst=93
// 6, 0, 13, 5, 93, 125
// src=46, dst=14
// 6, 0, 14, 0, 14, 46
v_mov_b32 v7, v23                                  // rC[14+0*TT0I*VW+0*TT0I] = rC[14+0*TT0I*VW+2*TT0I]
// src=62, dst=30
// 6, 0, 14, 1, 30, 62
v_mov_b32 v15, v31                                 // rC[14+0*TT0I*VW+1*TT0I] = rC[14+0*TT0I*VW+3*TT0I]
// src=78, dst=46
// 6, 0, 14, 2, 46, 78
v_mov_b32 v23, v39                                 // rC[14+0*TT0I*VW+2*TT0I] = rC[14+0*TT0I*VW+4*TT0I]
// src=94, dst=62
// 6, 0, 14, 3, 62, 94
v_mov_b32 v31, v47                                 // rC[14+0*TT0I*VW+3*TT0I] = rC[14+0*TT0I*VW+5*TT0I]
// src=110, dst=78
// 6, 0, 14, 4, 78, 110
v_mov_b32 v39, v55                                 // rC[14+0*TT0I*VW+4*TT0I] = rC[14+0*TT0I*VW+6*TT0I]
// src=126, dst=94
// 6, 0, 14, 5, 94, 126
v_mov_b32 v47, v63                                 // rC[14+0*TT0I*VW+5*TT0I] = rC[14+0*TT0I*VW+7*TT0I]
// src=47, dst=15
// 6, 0, 15, 0, 15, 47
// src=63, dst=31
// 6, 0, 15, 1, 31, 63
// src=79, dst=47
// 6, 0, 15, 2, 47, 79
// src=95, dst=63
// 6, 0, 15, 3, 63, 95
// src=111, dst=79
// 6, 0, 15, 4, 79, 111
// src=127, dst=95
// 6, 0, 15, 5, 95, 127
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0067                                // done shifting

/******************************************/
/* shift d1 r=7                           */
/******************************************/
label_0065:
v_cmp_eq_u32 vcc_lo, v72, 0x0                      // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0066                         // shift d1, r=7, v=0

/* shift d1 r=7 v=0 */
label_0066:
_v_cmpx_eq_u32 s53, v71, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=16, dst=0
// 7, 0, 0, 0, 0, 16
v_mov_b32 v0, v8                                   // rC[0+0*TT0I*VW+0*TT0I] = rC[0+0*TT0I*VW+1*TT0I]
// src=32, dst=16
// 7, 0, 0, 1, 16, 32
v_mov_b32 v8, v16                                  // rC[0+0*TT0I*VW+1*TT0I] = rC[0+0*TT0I*VW+2*TT0I]
// src=48, dst=32
// 7, 0, 0, 2, 32, 48
v_mov_b32 v16, v24                                 // rC[0+0*TT0I*VW+2*TT0I] = rC[0+0*TT0I*VW+3*TT0I]
// src=64, dst=48
// 7, 0, 0, 3, 48, 64
v_mov_b32 v24, v32                                 // rC[0+0*TT0I*VW+3*TT0I] = rC[0+0*TT0I*VW+4*TT0I]
// src=80, dst=64
// 7, 0, 0, 4, 64, 80
v_mov_b32 v32, v40                                 // rC[0+0*TT0I*VW+4*TT0I] = rC[0+0*TT0I*VW+5*TT0I]
// src=96, dst=80
// 7, 0, 0, 5, 80, 96
v_mov_b32 v40, v48                                 // rC[0+0*TT0I*VW+5*TT0I] = rC[0+0*TT0I*VW+6*TT0I]
// src=112, dst=96
// 7, 0, 0, 6, 96, 112
v_mov_b32 v48, v56                                 // rC[0+0*TT0I*VW+6*TT0I] = rC[0+0*TT0I*VW+7*TT0I]
// src=17, dst=1
// 7, 0, 1, 0, 1, 17
// src=33, dst=17
// 7, 0, 1, 1, 17, 33
// src=49, dst=33
// 7, 0, 1, 2, 33, 49
// src=65, dst=49
// 7, 0, 1, 3, 49, 65
// src=81, dst=65
// 7, 0, 1, 4, 65, 81
// src=97, dst=81
// 7, 0, 1, 5, 81, 97
// src=113, dst=97
// 7, 0, 1, 6, 97, 113
// src=18, dst=2
// 7, 0, 2, 0, 2, 18
v_mov_b32 v1, v9                                   // rC[2+0*TT0I*VW+0*TT0I] = rC[2+0*TT0I*VW+1*TT0I]
// src=34, dst=18
// 7, 0, 2, 1, 18, 34
v_mov_b32 v9, v17                                  // rC[2+0*TT0I*VW+1*TT0I] = rC[2+0*TT0I*VW+2*TT0I]
// src=50, dst=34
// 7, 0, 2, 2, 34, 50
v_mov_b32 v17, v25                                 // rC[2+0*TT0I*VW+2*TT0I] = rC[2+0*TT0I*VW+3*TT0I]
// src=66, dst=50
// 7, 0, 2, 3, 50, 66
v_mov_b32 v25, v33                                 // rC[2+0*TT0I*VW+3*TT0I] = rC[2+0*TT0I*VW+4*TT0I]
// src=82, dst=66
// 7, 0, 2, 4, 66, 82
v_mov_b32 v33, v41                                 // rC[2+0*TT0I*VW+4*TT0I] = rC[2+0*TT0I*VW+5*TT0I]
// src=98, dst=82
// 7, 0, 2, 5, 82, 98
v_mov_b32 v41, v49                                 // rC[2+0*TT0I*VW+5*TT0I] = rC[2+0*TT0I*VW+6*TT0I]
// src=114, dst=98
// 7, 0, 2, 6, 98, 114
v_mov_b32 v49, v57                                 // rC[2+0*TT0I*VW+6*TT0I] = rC[2+0*TT0I*VW+7*TT0I]
// src=19, dst=3
// 7, 0, 3, 0, 3, 19
// src=35, dst=19
// 7, 0, 3, 1, 19, 35
// src=51, dst=35
// 7, 0, 3, 2, 35, 51
// src=67, dst=51
// 7, 0, 3, 3, 51, 67
// src=83, dst=67
// 7, 0, 3, 4, 67, 83
// src=99, dst=83
// 7, 0, 3, 5, 83, 99
// src=115, dst=99
// 7, 0, 3, 6, 99, 115
// src=20, dst=4
// 7, 0, 4, 0, 4, 20
v_mov_b32 v2, v10                                  // rC[4+0*TT0I*VW+0*TT0I] = rC[4+0*TT0I*VW+1*TT0I]
// src=36, dst=20
// 7, 0, 4, 1, 20, 36
v_mov_b32 v10, v18                                 // rC[4+0*TT0I*VW+1*TT0I] = rC[4+0*TT0I*VW+2*TT0I]
// src=52, dst=36
// 7, 0, 4, 2, 36, 52
v_mov_b32 v18, v26                                 // rC[4+0*TT0I*VW+2*TT0I] = rC[4+0*TT0I*VW+3*TT0I]
// src=68, dst=52
// 7, 0, 4, 3, 52, 68
v_mov_b32 v26, v34                                 // rC[4+0*TT0I*VW+3*TT0I] = rC[4+0*TT0I*VW+4*TT0I]
// src=84, dst=68
// 7, 0, 4, 4, 68, 84
v_mov_b32 v34, v42                                 // rC[4+0*TT0I*VW+4*TT0I] = rC[4+0*TT0I*VW+5*TT0I]
// src=100, dst=84
// 7, 0, 4, 5, 84, 100
v_mov_b32 v42, v50                                 // rC[4+0*TT0I*VW+5*TT0I] = rC[4+0*TT0I*VW+6*TT0I]
// src=116, dst=100
// 7, 0, 4, 6, 100, 116
v_mov_b32 v50, v58                                 // rC[4+0*TT0I*VW+6*TT0I] = rC[4+0*TT0I*VW+7*TT0I]
// src=21, dst=5
// 7, 0, 5, 0, 5, 21
// src=37, dst=21
// 7, 0, 5, 1, 21, 37
// src=53, dst=37
// 7, 0, 5, 2, 37, 53
// src=69, dst=53
// 7, 0, 5, 3, 53, 69
// src=85, dst=69
// 7, 0, 5, 4, 69, 85
// src=101, dst=85
// 7, 0, 5, 5, 85, 101
// src=117, dst=101
// 7, 0, 5, 6, 101, 117
// src=22, dst=6
// 7, 0, 6, 0, 6, 22
v_mov_b32 v3, v11                                  // rC[6+0*TT0I*VW+0*TT0I] = rC[6+0*TT0I*VW+1*TT0I]
// src=38, dst=22
// 7, 0, 6, 1, 22, 38
v_mov_b32 v11, v19                                 // rC[6+0*TT0I*VW+1*TT0I] = rC[6+0*TT0I*VW+2*TT0I]
// src=54, dst=38
// 7, 0, 6, 2, 38, 54
v_mov_b32 v19, v27                                 // rC[6+0*TT0I*VW+2*TT0I] = rC[6+0*TT0I*VW+3*TT0I]
// src=70, dst=54
// 7, 0, 6, 3, 54, 70
v_mov_b32 v27, v35                                 // rC[6+0*TT0I*VW+3*TT0I] = rC[6+0*TT0I*VW+4*TT0I]
// src=86, dst=70
// 7, 0, 6, 4, 70, 86
v_mov_b32 v35, v43                                 // rC[6+0*TT0I*VW+4*TT0I] = rC[6+0*TT0I*VW+5*TT0I]
// src=102, dst=86
// 7, 0, 6, 5, 86, 102
v_mov_b32 v43, v51                                 // rC[6+0*TT0I*VW+5*TT0I] = rC[6+0*TT0I*VW+6*TT0I]
// src=118, dst=102
// 7, 0, 6, 6, 102, 118
v_mov_b32 v51, v59                                 // rC[6+0*TT0I*VW+6*TT0I] = rC[6+0*TT0I*VW+7*TT0I]
// src=23, dst=7
// 7, 0, 7, 0, 7, 23
// src=39, dst=23
// 7, 0, 7, 1, 23, 39
// src=55, dst=39
// 7, 0, 7, 2, 39, 55
// src=71, dst=55
// 7, 0, 7, 3, 55, 71
// src=87, dst=71
// 7, 0, 7, 4, 71, 87
// src=103, dst=87
// 7, 0, 7, 5, 87, 103
// src=119, dst=103
// 7, 0, 7, 6, 103, 119
// src=24, dst=8
// 7, 0, 8, 0, 8, 24
v_mov_b32 v4, v12                                  // rC[8+0*TT0I*VW+0*TT0I] = rC[8+0*TT0I*VW+1*TT0I]
// src=40, dst=24
// 7, 0, 8, 1, 24, 40
v_mov_b32 v12, v20                                 // rC[8+0*TT0I*VW+1*TT0I] = rC[8+0*TT0I*VW+2*TT0I]
// src=56, dst=40
// 7, 0, 8, 2, 40, 56
v_mov_b32 v20, v28                                 // rC[8+0*TT0I*VW+2*TT0I] = rC[8+0*TT0I*VW+3*TT0I]
// src=72, dst=56
// 7, 0, 8, 3, 56, 72
v_mov_b32 v28, v36                                 // rC[8+0*TT0I*VW+3*TT0I] = rC[8+0*TT0I*VW+4*TT0I]
// src=88, dst=72
// 7, 0, 8, 4, 72, 88
v_mov_b32 v36, v44                                 // rC[8+0*TT0I*VW+4*TT0I] = rC[8+0*TT0I*VW+5*TT0I]
// src=104, dst=88
// 7, 0, 8, 5, 88, 104
v_mov_b32 v44, v52                                 // rC[8+0*TT0I*VW+5*TT0I] = rC[8+0*TT0I*VW+6*TT0I]
// src=120, dst=104
// 7, 0, 8, 6, 104, 120
v_mov_b32 v52, v60                                 // rC[8+0*TT0I*VW+6*TT0I] = rC[8+0*TT0I*VW+7*TT0I]
// src=25, dst=9
// 7, 0, 9, 0, 9, 25
// src=41, dst=25
// 7, 0, 9, 1, 25, 41
// src=57, dst=41
// 7, 0, 9, 2, 41, 57
// src=73, dst=57
// 7, 0, 9, 3, 57, 73
// src=89, dst=73
// 7, 0, 9, 4, 73, 89
// src=105, dst=89
// 7, 0, 9, 5, 89, 105
// src=121, dst=105
// 7, 0, 9, 6, 105, 121
// src=26, dst=10
// 7, 0, 10, 0, 10, 26
v_mov_b32 v5, v13                                  // rC[10+0*TT0I*VW+0*TT0I] = rC[10+0*TT0I*VW+1*TT0I]
// src=42, dst=26
// 7, 0, 10, 1, 26, 42
v_mov_b32 v13, v21                                 // rC[10+0*TT0I*VW+1*TT0I] = rC[10+0*TT0I*VW+2*TT0I]
// src=58, dst=42
// 7, 0, 10, 2, 42, 58
v_mov_b32 v21, v29                                 // rC[10+0*TT0I*VW+2*TT0I] = rC[10+0*TT0I*VW+3*TT0I]
// src=74, dst=58
// 7, 0, 10, 3, 58, 74
v_mov_b32 v29, v37                                 // rC[10+0*TT0I*VW+3*TT0I] = rC[10+0*TT0I*VW+4*TT0I]
// src=90, dst=74
// 7, 0, 10, 4, 74, 90
v_mov_b32 v37, v45                                 // rC[10+0*TT0I*VW+4*TT0I] = rC[10+0*TT0I*VW+5*TT0I]
// src=106, dst=90
// 7, 0, 10, 5, 90, 106
v_mov_b32 v45, v53                                 // rC[10+0*TT0I*VW+5*TT0I] = rC[10+0*TT0I*VW+6*TT0I]
// src=122, dst=106
// 7, 0, 10, 6, 106, 122
v_mov_b32 v53, v61                                 // rC[10+0*TT0I*VW+6*TT0I] = rC[10+0*TT0I*VW+7*TT0I]
// src=27, dst=11
// 7, 0, 11, 0, 11, 27
// src=43, dst=27
// 7, 0, 11, 1, 27, 43
// src=59, dst=43
// 7, 0, 11, 2, 43, 59
// src=75, dst=59
// 7, 0, 11, 3, 59, 75
// src=91, dst=75
// 7, 0, 11, 4, 75, 91
// src=107, dst=91
// 7, 0, 11, 5, 91, 107
// src=123, dst=107
// 7, 0, 11, 6, 107, 123
// src=28, dst=12
// 7, 0, 12, 0, 12, 28
v_mov_b32 v6, v14                                  // rC[12+0*TT0I*VW+0*TT0I] = rC[12+0*TT0I*VW+1*TT0I]
// src=44, dst=28
// 7, 0, 12, 1, 28, 44
v_mov_b32 v14, v22                                 // rC[12+0*TT0I*VW+1*TT0I] = rC[12+0*TT0I*VW+2*TT0I]
// src=60, dst=44
// 7, 0, 12, 2, 44, 60
v_mov_b32 v22, v30                                 // rC[12+0*TT0I*VW+2*TT0I] = rC[12+0*TT0I*VW+3*TT0I]
// src=76, dst=60
// 7, 0, 12, 3, 60, 76
v_mov_b32 v30, v38                                 // rC[12+0*TT0I*VW+3*TT0I] = rC[12+0*TT0I*VW+4*TT0I]
// src=92, dst=76
// 7, 0, 12, 4, 76, 92
v_mov_b32 v38, v46                                 // rC[12+0*TT0I*VW+4*TT0I] = rC[12+0*TT0I*VW+5*TT0I]
// src=108, dst=92
// 7, 0, 12, 5, 92, 108
v_mov_b32 v46, v54                                 // rC[12+0*TT0I*VW+5*TT0I] = rC[12+0*TT0I*VW+6*TT0I]
// src=124, dst=108
// 7, 0, 12, 6, 108, 124
v_mov_b32 v54, v62                                 // rC[12+0*TT0I*VW+6*TT0I] = rC[12+0*TT0I*VW+7*TT0I]
// src=29, dst=13
// 7, 0, 13, 0, 13, 29
// src=45, dst=29
// 7, 0, 13, 1, 29, 45
// src=61, dst=45
// 7, 0, 13, 2, 45, 61
// src=77, dst=61
// 7, 0, 13, 3, 61, 77
// src=93, dst=77
// 7, 0, 13, 4, 77, 93
// src=109, dst=93
// 7, 0, 13, 5, 93, 109
// src=125, dst=109
// 7, 0, 13, 6, 109, 125
// src=30, dst=14
// 7, 0, 14, 0, 14, 30
v_mov_b32 v7, v15                                  // rC[14+0*TT0I*VW+0*TT0I] = rC[14+0*TT0I*VW+1*TT0I]
// src=46, dst=30
// 7, 0, 14, 1, 30, 46
v_mov_b32 v15, v23                                 // rC[14+0*TT0I*VW+1*TT0I] = rC[14+0*TT0I*VW+2*TT0I]
// src=62, dst=46
// 7, 0, 14, 2, 46, 62
v_mov_b32 v23, v31                                 // rC[14+0*TT0I*VW+2*TT0I] = rC[14+0*TT0I*VW+3*TT0I]
// src=78, dst=62
// 7, 0, 14, 3, 62, 78
v_mov_b32 v31, v39                                 // rC[14+0*TT0I*VW+3*TT0I] = rC[14+0*TT0I*VW+4*TT0I]
// src=94, dst=78
// 7, 0, 14, 4, 78, 94
v_mov_b32 v39, v47                                 // rC[14+0*TT0I*VW+4*TT0I] = rC[14+0*TT0I*VW+5*TT0I]
// src=110, dst=94
// 7, 0, 14, 5, 94, 110
v_mov_b32 v47, v55                                 // rC[14+0*TT0I*VW+5*TT0I] = rC[14+0*TT0I*VW+6*TT0I]
// src=126, dst=110
// 7, 0, 14, 6, 110, 126
v_mov_b32 v55, v63                                 // rC[14+0*TT0I*VW+6*TT0I] = rC[14+0*TT0I*VW+7*TT0I]
// src=31, dst=15
// 7, 0, 15, 0, 15, 31
// src=47, dst=31
// 7, 0, 15, 1, 31, 47
// src=63, dst=47
// 7, 0, 15, 2, 47, 63
// src=79, dst=63
// 7, 0, 15, 3, 63, 79
// src=95, dst=79
// 7, 0, 15, 4, 79, 95
// src=111, dst=95
// 7, 0, 15, 5, 95, 111
// src=127, dst=111
// 7, 0, 15, 6, 111, 127
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0067                                // done shifting
label_0067: // end shift0



/* not-LocalSplitU: global write indices */

/* computeStoreVgprs */
v_lshrrev_b32 v67, 4, v[vgprSerial]                // v67 = v[vgprSerial] / 16
v_and_b32 v66, 15, v[vgprSerial]                   // v66 = v[vgprSerial] % 16
v_lshlrev_b32 v66, 0x3, v66                        // v66 = v66 * 8
v_lshlrev_b32 v67, 0x3, v67                        // v67 = v67 * 8
v_mul_lo_u32 v68, v67, s[sgprStrideC1J]            // rowStart vgpr
v_mul_lo_u32 v69, v67, s[sgprStrideD1J]            // rowStart vgpr

s_mul_i32 s54, 0x100, s[sgprWorkGroup0]            // s54 = wg0*MT0
_v_add_co_u32 v66, vcc_lo, s54, v66                // coord0 = tid0*VW + wg0*MT0
s_mul_i32 s56, 0x80, s[sgprWorkGroup1]             // <- wg1*MT1
_v_add_co_u32 v67, vcc_lo, s56, v67                // coord1 = tid1*VW + wg1*MT1


/* not-LocalSplitU: global write */

s_cmpk_eq_u32 s[sgprBeta], 0x0                     // Beta == 0
s_cbranch_scc0 GW_Beta_83                          // Branch if Beta is not zero

s_and_b32 s54, 255, s[sgprSizeI]                   // s54 = s[sgprSizeI] % 256
s_add_u32 s55, -0x1, s[sgprNumWorkGroups0]         // 
s_cmp_ge_u32 s[sgprWorkGroup0], s55                // wg0 >= nwg0-1 ?
s_cselect_b32 s54, s54, 0                          // set rMT0
s_cmpk_gt_u32 s54, 0x0                             // rMT0 > 0
s_cbranch_scc1 GW_B0_E1_74                         // jump if edges required
s_and_b32 s54, 127, s[sgprSizeJ]                   // s54 = s[sgprSizeJ] % 128
s_add_u32 s55, -0x1, s[sgprNumWorkGroups1]         // 
s_cmp_ge_u32 s[sgprWorkGroup1], s55                // wg1 >= nwg1-1
s_cselect_b32 s54, s54, 0                          // set rMT1
s_cmpk_gt_u32 s54, 0x0                             // rMT1 > 0
s_cbranch_scc1 GW_B0_E1_74                         // jump if edges required
GW_B0_E0_71:

/* edge=0, allocate 1 sgpr. perBatchTmpS=1 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=16 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Alpha Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw8); (0,1,0,0:vw8); (0,0,1,0:vw8); (0,1,1,0:vw8); (0,0,2,0:vw8); (0,1,2,0:vw8); (0,0,3,0:vw8); (0,1,3,0:vw8); (0,0,4,0:vw8); (0,1,4,0:vw8); (0,0,5,0:vw8); (0,1,5,0:vw8); (0,0,6,0:vw8); (0,1,6,0:vw8); (0,0,7,0:vw8); (0,1,7,0:vw8) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
/* (d1,vc1,d0,vc0)=(0,1,1,0) */
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
/* (d1,vc1,d0,vc0)=(0,2,1,0) */
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
/* (d1,vc1,d0,vc0)=(0,3,1,0) */
/* (d1,vc1,d0,vc0)=(0,4,0,0) */
/* (d1,vc1,d0,vc0)=(0,4,1,0) */
/* (d1,vc1,d0,vc0)=(0,5,0,0) */
/* (d1,vc1,d0,vc0)=(0,5,1,0) */
/* (d1,vc1,d0,vc0)=(0,6,0,0) */
/* (d1,vc1,d0,vc0)=(0,6,1,0) */
/* (d1,vc1,d0,vc0)=(0,7,0,0) */
/* (d1,vc1,d0,vc0)=(0,7,1,0) */
_v_add_lshl_u32 v72, v69, v66, 0x1                 // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=66, coord0Vgpr=66

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 1, 0, 0), (0, 0, 1, 0), (0, 1, 1, 0), (0, 0, 2, 0), (0, 1, 2, 0), (0, 0, 3, 0), (0, 1, 3, 0), (0, 0, 4, 0), (0, 1, 4, 0), (0, 0, 5, 0), (0, 1, 5, 0), (0, 0, 6, 0), (0, 1, 6, 0), (0, 0, 7, 0), (0, 1, 7, 0)] */
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
v_pk_mul_f16 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha sumIdx=64 vi=1
v_pk_mul_f16 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha sumIdx=64 vi=3
v_pk_mul_f16 v[vgprValuC+34], s[sgprAlpha], v[vgprValuC+34] // *= alpha sumIdx=64 vi=5
v_pk_mul_f16 v[vgprValuC+35], s[sgprAlpha], v[vgprValuC+35] // *= alpha sumIdx=64 vi=7
v_pk_mul_f16 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha sumIdx=72 vi=1
v_pk_mul_f16 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha sumIdx=72 vi=3
v_pk_mul_f16 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha sumIdx=72 vi=5
v_pk_mul_f16 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha sumIdx=72 vi=7
v_pk_mul_f16 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha sumIdx=80 vi=1
v_pk_mul_f16 v[vgprValuC+41], s[sgprAlpha], v[vgprValuC+41] // *= alpha sumIdx=80 vi=3
v_pk_mul_f16 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha sumIdx=80 vi=5
v_pk_mul_f16 v[vgprValuC+43], s[sgprAlpha], v[vgprValuC+43] // *= alpha sumIdx=80 vi=7
v_pk_mul_f16 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha sumIdx=88 vi=1
v_pk_mul_f16 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha sumIdx=88 vi=3
v_pk_mul_f16 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha sumIdx=88 vi=5
v_pk_mul_f16 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha sumIdx=88 vi=7
v_pk_mul_f16 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha sumIdx=96 vi=1
v_pk_mul_f16 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha sumIdx=96 vi=3
v_pk_mul_f16 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha sumIdx=96 vi=5
v_pk_mul_f16 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha sumIdx=96 vi=7
v_pk_mul_f16 v[vgprValuC+52], s[sgprAlpha], v[vgprValuC+52] // *= alpha sumIdx=104 vi=1
v_pk_mul_f16 v[vgprValuC+53], s[sgprAlpha], v[vgprValuC+53] // *= alpha sumIdx=104 vi=3
v_pk_mul_f16 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha sumIdx=104 vi=5
v_pk_mul_f16 v[vgprValuC+55], s[sgprAlpha], v[vgprValuC+55] // *= alpha sumIdx=104 vi=7
v_pk_mul_f16 v[vgprValuC+56], s[sgprAlpha], v[vgprValuC+56] // *= alpha sumIdx=112 vi=1
v_pk_mul_f16 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha sumIdx=112 vi=3
v_pk_mul_f16 v[vgprValuC+58], s[sgprAlpha], v[vgprValuC+58] // *= alpha sumIdx=112 vi=5
v_pk_mul_f16 v[vgprValuC+59], s[sgprAlpha], v[vgprValuC+59] // *= alpha sumIdx=112 vi=7
v_pk_mul_f16 v[vgprValuC+60], s[sgprAlpha], v[vgprValuC+60] // *= alpha sumIdx=120 vi=1
v_pk_mul_f16 v[vgprValuC+61], s[sgprAlpha], v[vgprValuC+61] // *= alpha sumIdx=120 vi=3
v_pk_mul_f16 v[vgprValuC+62], s[sgprAlpha], v[vgprValuC+62] // *= alpha sumIdx=120 vi=5
v_pk_mul_f16 v[vgprValuC+63], s[sgprAlpha], v[vgprValuC+63] // *= alpha sumIdx=120 vi=7

/* apply mask, calc new C and issue writes */
_buffer_store_b128 v[0:3], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[4:7], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[8:11], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[12:15], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[16:19], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[20:23], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[24:27], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[28:31], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[32:35], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[36:39], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[40:43], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[44:47], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[48:51], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[52:55], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[56:59], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[60:63], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_branch label_GW_End_82                           // jump to end
GW_B0_E1_74:

/* edge=1, allocate 3 sgpr. perBatchTmpS=2 perBatchMaskS=1 perElementMaskS=0 elementsPerBatch=36 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,0,0,1:vw1); (0,0,0,2:vw1); (0,0,0,3:vw1); (0,0,0,4:vw1); (0,0,0,5:vw1); (0,0,0,6:vw1); (0,0,0,7:vw1); (0,1,0,0:vw1); (0,1,0,1:vw1); (0,1,0,2:vw1); (0,1,0,3:vw1); (0,1,0,4:vw1); (0,1,0,5:vw1); (0,1,0,6:vw1); (0,1,0,7:vw1); (0,0,1,0:vw1); (0,0,1,1:vw1); (0,0,1,2:vw1); (0,0,1,3:vw1); (0,0,1,4:vw1); (0,0,1,5:vw1); (0,0,1,6:vw1); (0,0,1,7:vw1); (0,1,1,0:vw1); (0,1,1,1:vw1); (0,1,1,2:vw1); (0,1,1,3:vw1); (0,1,1,4:vw1); (0,1,1,5:vw1); (0,1,1,6:vw1); (0,1,1,7:vw1); (0,0,2,0:vw1); (0,0,2,1:vw1); (0,0,2,2:vw1); (0,0,2,3:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v72, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v73, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v73, -1, v73, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v74, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v75, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v75, -1, v75, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v76, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v77, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, -1, v77, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v78, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v79, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v79, -1, v79, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=1 vc0=0
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v80, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v81, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v81, -1, v81, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v82, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v83, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v83, -1, v83, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,4) */
s_mov_b32 s54, 132                                 // coordOffset0 d0=1 vc0=4
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v84, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,5) */
s_mov_b32 s54, 133                                 // coordOffset0 d0=1 vc0=5
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v85, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v85, -1, v85, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,6) */
s_mov_b32 s54, 134                                 // coordOffset0 d0=1 vc0=6
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v86, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,7) */
s_mov_b32 s54, 135                                 // coordOffset0 d0=1 vc0=7
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v87, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v87, -1, v87, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v88, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v88, -1, v88, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v89, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v89, -1, v89, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v90, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v91, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v91, -1, v91, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v92, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v93, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v93, -1, v93, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v94, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v94, -1, v94, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v95, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v95, -1, v95, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=1 vc0=0
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v96, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v97, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v97, -1, v97, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v98, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v99, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v99, -1, v99, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,4) */
s_mov_b32 s54, 132                                 // coordOffset0 d0=1 vc0=4
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v100, v69, v70, 0x1                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v100, -1, v100, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,5) */
s_mov_b32 s54, 133                                 // coordOffset0 d0=1 vc0=5
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v101, v69, v70, 0x1                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v101, -1, v101, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,6) */
s_mov_b32 s54, 134                                 // coordOffset0 d0=1 vc0=6
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v102, v69, v70, 0x1                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v102, -1, v102, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,7) */
s_mov_b32 s54, 135                                 // coordOffset0 d0=1 vc0=7
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v103, v69, v70, 0x1                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v103, -1, v103, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v104, v69, v66, 0x1                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v104, -1, v104, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v105, v69, v70, 0x1                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v105, -1, v105, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v106, v69, v70, 0x1                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v106, -1, v106, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v107, v69, v70, 0x1                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v107, -1, v107, s56                  // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 0, 1), (0, 0, 0, 2), (0, 0, 0, 3), (0, 0, 0, 4), (0, 0, 0, 5), (0, 0, 0, 6), (0, 0, 0, 7), (0, 1, 0, 0), (0, 1, 0, 1), (0, 1, 0, 2), (0, 1, 0, 3), (0, 1, 0, 4), (0, 1, 0, 5), (0, 1, 0, 6), (0, 1, 0, 7), (0, 0, 1, 0), (0, 0, 1, 1), (0, 0, 1, 2), (0, 0, 1, 3), (0, 0, 1, 4), (0, 0, 1, 5), (0, 0, 1, 6), (0, 0, 1, 7), (0, 1, 1, 0), (0, 1, 1, 1), (0, 1, 1, 2), (0, 1, 1, 3), (0, 1, 1, 4), (0, 1, 1, 5), (0, 1, 1, 6), (0, 1, 1, 7), (0, 0, 2, 0), (0, 0, 2, 1), (0, 0, 2, 2), (0, 0, 2, 3)] */
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
v_pk_mul_f16 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha sumIdx=29 vi=0
v_pk_mul_f16 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha sumIdx=31 vi=0
v_pk_mul_f16 v[vgprValuC+16], s[sgprAlpha], v[vgprValuC+16] // *= alpha sumIdx=33 vi=0
v_pk_mul_f16 v[vgprValuC+17], s[sgprAlpha], v[vgprValuC+17] // *= alpha sumIdx=35 vi=0

/* apply mask, calc new C and issue writes */
_buffer_store_b16 v0, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v0, v73, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v1, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v1, v75, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v2, v76, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v2, v77, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v3, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v3, v79, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v4, v80, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v4, v81, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v5, v82, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v5, v83, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v6, v84, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v6, v85, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v7, v86, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v7, v87, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v8, v88, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v8, v89, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v9, v90, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v9, v91, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v10, v92, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v10, v93, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v11, v94, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v11, v95, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v12, v96, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v12, v97, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v13, v98, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v13, v99, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v14, v100, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v14, v101, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v15, v102, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v15, v103, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v16, v104, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v16, v105, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v17, v106, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v17, v107, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Edge Batch #1 (d1,d0,vc1,vc0) = */
/*    (0,0,2,4:vw1); (0,0,2,5:vw1); (0,0,2,6:vw1); (0,0,2,7:vw1); (0,1,2,0:vw1); (0,1,2,1:vw1); (0,1,2,2:vw1); (0,1,2,3:vw1); (0,1,2,4:vw1); (0,1,2,5:vw1); (0,1,2,6:vw1); (0,1,2,7:vw1); (0,0,3,0:vw1); (0,0,3,1:vw1); (0,0,3,2:vw1); (0,0,3,3:vw1); (0,0,3,4:vw1); (0,0,3,5:vw1); (0,0,3,6:vw1); (0,0,3,7:vw1); (0,1,3,0:vw1); (0,1,3,1:vw1); (0,1,3,2:vw1); (0,1,3,3:vw1); (0,1,3,4:vw1); (0,1,3,5:vw1); (0,1,3,6:vw1); (0,1,3,7:vw1); (0,0,4,0:vw1); (0,0,4,1:vw1); (0,0,4,2:vw1); (0,0,4,3:vw1); (0,0,4,4:vw1); (0,0,4,5:vw1); (0,0,4,6:vw1); (0,0,4,7:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,2,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v72, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v73, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v73, -1, v73, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v74, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v75, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v75, -1, v75, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=1 vc0=0
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v76, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v77, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, -1, v77, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v78, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v79, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v79, -1, v79, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,4) */
s_mov_b32 s54, 132                                 // coordOffset0 d0=1 vc0=4
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v80, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,5) */
s_mov_b32 s54, 133                                 // coordOffset0 d0=1 vc0=5
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v81, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v81, -1, v81, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,6) */
s_mov_b32 s54, 134                                 // coordOffset0 d0=1 vc0=6
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v82, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,7) */
s_mov_b32 s54, 135                                 // coordOffset0 d0=1 vc0=7
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v83, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v83, -1, v83, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v84, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v85, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v85, -1, v85, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v86, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v87, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v87, -1, v87, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v88, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v88, -1, v88, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v89, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v89, -1, v89, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v90, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v91, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v91, -1, v91, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=1 vc0=0
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v92, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v93, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v93, -1, v93, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v94, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v94, -1, v94, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v95, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v95, -1, v95, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,4) */
s_mov_b32 s54, 132                                 // coordOffset0 d0=1 vc0=4
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v96, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,5) */
s_mov_b32 s54, 133                                 // coordOffset0 d0=1 vc0=5
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v97, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v97, -1, v97, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,6) */
s_mov_b32 s54, 134                                 // coordOffset0 d0=1 vc0=6
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v98, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,7) */
s_mov_b32 s54, 135                                 // coordOffset0 d0=1 vc0=7
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v99, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v99, -1, v99, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v100, v69, v66, 0x1                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v100, -1, v100, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v101, v69, v70, 0x1                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v101, -1, v101, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v102, v69, v70, 0x1                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v102, -1, v102, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v103, v69, v70, 0x1                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v103, -1, v103, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v104, v69, v70, 0x1                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v104, -1, v104, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v105, v69, v70, 0x1                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v105, -1, v105, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v106, v69, v70, 0x1                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v106, -1, v106, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v107, v69, v70, 0x1                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v107, -1, v107, s56                  // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 2, 4), (0, 0, 2, 5), (0, 0, 2, 6), (0, 0, 2, 7), (0, 1, 2, 0), (0, 1, 2, 1), (0, 1, 2, 2), (0, 1, 2, 3), (0, 1, 2, 4), (0, 1, 2, 5), (0, 1, 2, 6), (0, 1, 2, 7), (0, 0, 3, 0), (0, 0, 3, 1), (0, 0, 3, 2), (0, 0, 3, 3), (0, 0, 3, 4), (0, 0, 3, 5), (0, 0, 3, 6), (0, 0, 3, 7), (0, 1, 3, 0), (0, 1, 3, 1), (0, 1, 3, 2), (0, 1, 3, 3), (0, 1, 3, 4), (0, 1, 3, 5), (0, 1, 3, 6), (0, 1, 3, 7), (0, 0, 4, 0), (0, 0, 4, 1), (0, 0, 4, 2), (0, 0, 4, 3), (0, 0, 4, 4), (0, 0, 4, 5), (0, 0, 4, 6), (0, 0, 4, 7)] */
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
v_pk_mul_f16 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha sumIdx=57 vi=0
v_pk_mul_f16 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha sumIdx=59 vi=0
v_pk_mul_f16 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha sumIdx=61 vi=0
v_pk_mul_f16 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha sumIdx=63 vi=0
v_pk_mul_f16 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha sumIdx=65 vi=0
v_pk_mul_f16 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha sumIdx=67 vi=0
v_pk_mul_f16 v[vgprValuC+34], s[sgprAlpha], v[vgprValuC+34] // *= alpha sumIdx=69 vi=0
v_pk_mul_f16 v[vgprValuC+35], s[sgprAlpha], v[vgprValuC+35] // *= alpha sumIdx=71 vi=0

/* apply mask, calc new C and issue writes */
_buffer_store_b16 v18, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v18, v73, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v19, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v19, v75, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v20, v76, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v20, v77, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v21, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v21, v79, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v22, v80, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v22, v81, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v23, v82, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v23, v83, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v24, v84, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v24, v85, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v25, v86, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v25, v87, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v26, v88, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v26, v89, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v27, v90, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v27, v91, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v28, v92, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v28, v93, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v29, v94, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v29, v95, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v30, v96, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v30, v97, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v31, v98, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v31, v99, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v32, v100, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v32, v101, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v33, v102, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v33, v103, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v34, v104, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v34, v105, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v35, v106, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v35, v107, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Edge Batch #2 (d1,d0,vc1,vc0) = */
/*    (0,1,4,0:vw1); (0,1,4,1:vw1); (0,1,4,2:vw1); (0,1,4,3:vw1); (0,1,4,4:vw1); (0,1,4,5:vw1); (0,1,4,6:vw1); (0,1,4,7:vw1); (0,0,5,0:vw1); (0,0,5,1:vw1); (0,0,5,2:vw1); (0,0,5,3:vw1); (0,0,5,4:vw1); (0,0,5,5:vw1); (0,0,5,6:vw1); (0,0,5,7:vw1); (0,1,5,0:vw1); (0,1,5,1:vw1); (0,1,5,2:vw1); (0,1,5,3:vw1); (0,1,5,4:vw1); (0,1,5,5:vw1); (0,1,5,6:vw1); (0,1,5,7:vw1); (0,0,6,0:vw1); (0,0,6,1:vw1); (0,0,6,2:vw1); (0,0,6,3:vw1); (0,0,6,4:vw1); (0,0,6,5:vw1); (0,0,6,6:vw1); (0,0,6,7:vw1); (0,1,6,0:vw1); (0,1,6,1:vw1); (0,1,6,2:vw1); (0,1,6,3:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,4,1,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=1 vc0=0
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v72, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,1,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v73, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v73, -1, v73, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,1,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v74, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,1,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v75, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v75, -1, v75, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,1,4) */
s_mov_b32 s54, 132                                 // coordOffset0 d0=1 vc0=4
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v76, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,1,5) */
s_mov_b32 s54, 133                                 // coordOffset0 d0=1 vc0=5
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v77, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, -1, v77, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,1,6) */
s_mov_b32 s54, 134                                 // coordOffset0 d0=1 vc0=6
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v78, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,1,7) */
s_mov_b32 s54, 135                                 // coordOffset0 d0=1 vc0=7
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v79, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v79, -1, v79, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v80, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v81, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v81, -1, v81, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v82, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v83, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v83, -1, v83, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v84, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v85, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v85, -1, v85, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v86, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v87, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v87, -1, v87, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,1,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=1 vc0=0
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v88, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v88, -1, v88, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,1,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v89, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v89, -1, v89, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,1,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v90, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,1,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v91, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v91, -1, v91, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,1,4) */
s_mov_b32 s54, 132                                 // coordOffset0 d0=1 vc0=4
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v92, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,1,5) */
s_mov_b32 s54, 133                                 // coordOffset0 d0=1 vc0=5
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v93, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v93, -1, v93, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,1,6) */
s_mov_b32 s54, 134                                 // coordOffset0 d0=1 vc0=6
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v94, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v94, -1, v94, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,1,7) */
s_mov_b32 s54, 135                                 // coordOffset0 d0=1 vc0=7
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v95, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v95, -1, v95, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v96, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v97, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v97, -1, v97, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v98, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v99, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v99, -1, v99, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v100, v69, v70, 0x1                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v100, -1, v100, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v101, v69, v70, 0x1                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v101, -1, v101, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v102, v69, v70, 0x1                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v102, -1, v102, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v103, v69, v70, 0x1                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v103, -1, v103, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,1,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=1 vc0=0
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v104, v69, v70, 0x1                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v104, -1, v104, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,1,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v105, v69, v70, 0x1                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v105, -1, v105, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,1,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v106, v69, v70, 0x1                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v106, -1, v106, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,1,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v107, v69, v70, 0x1                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v107, -1, v107, s56                  // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 1, 4, 0), (0, 1, 4, 1), (0, 1, 4, 2), (0, 1, 4, 3), (0, 1, 4, 4), (0, 1, 4, 5), (0, 1, 4, 6), (0, 1, 4, 7), (0, 0, 5, 0), (0, 0, 5, 1), (0, 0, 5, 2), (0, 0, 5, 3), (0, 0, 5, 4), (0, 0, 5, 5), (0, 0, 5, 6), (0, 0, 5, 7), (0, 1, 5, 0), (0, 1, 5, 1), (0, 1, 5, 2), (0, 1, 5, 3), (0, 1, 5, 4), (0, 1, 5, 5), (0, 1, 5, 6), (0, 1, 5, 7), (0, 0, 6, 0), (0, 0, 6, 1), (0, 0, 6, 2), (0, 0, 6, 3), (0, 0, 6, 4), (0, 0, 6, 5), (0, 0, 6, 6), (0, 0, 6, 7), (0, 1, 6, 0), (0, 1, 6, 1), (0, 1, 6, 2), (0, 1, 6, 3)] */
v_pk_mul_f16 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha sumIdx=73 vi=0
v_pk_mul_f16 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha sumIdx=75 vi=0
v_pk_mul_f16 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha sumIdx=77 vi=0
v_pk_mul_f16 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha sumIdx=79 vi=0
v_pk_mul_f16 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha sumIdx=81 vi=0
v_pk_mul_f16 v[vgprValuC+41], s[sgprAlpha], v[vgprValuC+41] // *= alpha sumIdx=83 vi=0
v_pk_mul_f16 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha sumIdx=85 vi=0
v_pk_mul_f16 v[vgprValuC+43], s[sgprAlpha], v[vgprValuC+43] // *= alpha sumIdx=87 vi=0
v_pk_mul_f16 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha sumIdx=89 vi=0
v_pk_mul_f16 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha sumIdx=91 vi=0
v_pk_mul_f16 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha sumIdx=93 vi=0
v_pk_mul_f16 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha sumIdx=95 vi=0
v_pk_mul_f16 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha sumIdx=97 vi=0
v_pk_mul_f16 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha sumIdx=99 vi=0
v_pk_mul_f16 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha sumIdx=101 vi=0
v_pk_mul_f16 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha sumIdx=103 vi=0
v_pk_mul_f16 v[vgprValuC+52], s[sgprAlpha], v[vgprValuC+52] // *= alpha sumIdx=105 vi=0
v_pk_mul_f16 v[vgprValuC+53], s[sgprAlpha], v[vgprValuC+53] // *= alpha sumIdx=107 vi=0

/* apply mask, calc new C and issue writes */
_buffer_store_b16 v36, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v36, v73, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v37, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v37, v75, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v38, v76, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v38, v77, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v39, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v39, v79, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v40, v80, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v40, v81, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v41, v82, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v41, v83, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v42, v84, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v42, v85, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v43, v86, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v43, v87, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v44, v88, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v44, v89, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v45, v90, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v45, v91, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v46, v92, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v46, v93, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v47, v94, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v47, v95, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v48, v96, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v48, v97, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v49, v98, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v49, v99, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v50, v100, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v50, v101, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v51, v102, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v51, v103, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v52, v104, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v52, v105, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v53, v106, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v53, v107, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Edge Batch #3 (d1,d0,vc1,vc0) = */
/*    (0,1,6,4:vw1); (0,1,6,5:vw1); (0,1,6,6:vw1); (0,1,6,7:vw1); (0,0,7,0:vw1); (0,0,7,1:vw1); (0,0,7,2:vw1); (0,0,7,3:vw1); (0,0,7,4:vw1); (0,0,7,5:vw1); (0,0,7,6:vw1); (0,0,7,7:vw1); (0,1,7,0:vw1); (0,1,7,1:vw1); (0,1,7,2:vw1); (0,1,7,3:vw1); (0,1,7,4:vw1); (0,1,7,5:vw1); (0,1,7,6:vw1); (0,1,7,7:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,6,1,4) */
s_mov_b32 s54, 132                                 // coordOffset0 d0=1 vc0=4
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v72, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,1,5) */
s_mov_b32 s54, 133                                 // coordOffset0 d0=1 vc0=5
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v73, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v73, -1, v73, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,1,6) */
s_mov_b32 s54, 134                                 // coordOffset0 d0=1 vc0=6
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v74, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,1,7) */
s_mov_b32 s54, 135                                 // coordOffset0 d0=1 vc0=7
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v75, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v75, -1, v75, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v76, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v77, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, -1, v77, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v78, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v79, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v79, -1, v79, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v80, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v81, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v81, -1, v81, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v82, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v83, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v83, -1, v83, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,1,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=1 vc0=0
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v84, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,1,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v85, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v85, -1, v85, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,1,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v86, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,1,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v87, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v87, -1, v87, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,1,4) */
s_mov_b32 s54, 132                                 // coordOffset0 d0=1 vc0=4
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v88, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v88, -1, v88, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,1,5) */
s_mov_b32 s54, 133                                 // coordOffset0 d0=1 vc0=5
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v89, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v89, -1, v89, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,1,6) */
s_mov_b32 s54, 134                                 // coordOffset0 d0=1 vc0=6
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v90, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,1,7) */
s_mov_b32 s54, 135                                 // coordOffset0 d0=1 vc0=7
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v91, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v91, -1, v91, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 1, 6, 4), (0, 1, 6, 5), (0, 1, 6, 6), (0, 1, 6, 7), (0, 0, 7, 0), (0, 0, 7, 1), (0, 0, 7, 2), (0, 0, 7, 3), (0, 0, 7, 4), (0, 0, 7, 5), (0, 0, 7, 6), (0, 0, 7, 7), (0, 1, 7, 0), (0, 1, 7, 1), (0, 1, 7, 2), (0, 1, 7, 3), (0, 1, 7, 4), (0, 1, 7, 5), (0, 1, 7, 6), (0, 1, 7, 7)] */
v_pk_mul_f16 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha sumIdx=109 vi=0
v_pk_mul_f16 v[vgprValuC+55], s[sgprAlpha], v[vgprValuC+55] // *= alpha sumIdx=111 vi=0
v_pk_mul_f16 v[vgprValuC+56], s[sgprAlpha], v[vgprValuC+56] // *= alpha sumIdx=113 vi=0
v_pk_mul_f16 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha sumIdx=115 vi=0
v_pk_mul_f16 v[vgprValuC+58], s[sgprAlpha], v[vgprValuC+58] // *= alpha sumIdx=117 vi=0
v_pk_mul_f16 v[vgprValuC+59], s[sgprAlpha], v[vgprValuC+59] // *= alpha sumIdx=119 vi=0
v_pk_mul_f16 v[vgprValuC+60], s[sgprAlpha], v[vgprValuC+60] // *= alpha sumIdx=121 vi=0
v_pk_mul_f16 v[vgprValuC+61], s[sgprAlpha], v[vgprValuC+61] // *= alpha sumIdx=123 vi=0
v_pk_mul_f16 v[vgprValuC+62], s[sgprAlpha], v[vgprValuC+62] // *= alpha sumIdx=125 vi=0
v_pk_mul_f16 v[vgprValuC+63], s[sgprAlpha], v[vgprValuC+63] // *= alpha sumIdx=127 vi=0

/* apply mask, calc new C and issue writes */
_buffer_store_b16 v54, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v54, v73, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v55, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v55, v75, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v56, v76, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v56, v77, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v57, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v57, v79, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v58, v80, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v58, v81, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v59, v82, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v59, v83, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v60, v84, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v60, v85, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v61, v86, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v61, v87, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v62, v88, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v62, v89, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b16 v63, v90, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v63, v91, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_branch label_GW_End_82                           // jump to end
GW_Beta_83:
s_and_b32 s54, 255, s[sgprSizeI]                   // s54 = s[sgprSizeI] % 256
s_add_u32 s55, -0x1, s[sgprNumWorkGroups0]         // 
s_cmp_ge_u32 s[sgprWorkGroup0], s55                // wg0 >= nwg0-1 ?
s_cselect_b32 s54, s54, 0                          // set rMT0
s_cmpk_gt_u32 s54, 0x0                             // rMT0 > 0
s_cbranch_scc1 GW_B1_E1_81                         // jump if edges required
s_and_b32 s54, 127, s[sgprSizeJ]                   // s54 = s[sgprSizeJ] % 128
s_add_u32 s55, -0x1, s[sgprNumWorkGroups1]         // 
s_cmp_ge_u32 s[sgprWorkGroup1], s55                // wg1 >= nwg1-1
s_cselect_b32 s54, s54, 0                          // set rMT1
s_cmpk_gt_u32 s54, 0x0                             // rMT1 > 0
s_cbranch_scc1 GW_B1_E1_81                         // jump if edges required
GW_B1_E0_78:

/* edge=0, allocate 1 sgpr. perBatchTmpS=1 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=8 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Alpha Beta Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw8); (0,1,0,0:vw8); (0,0,1,0:vw8); (0,1,1,0:vw8); (0,0,2,0:vw8); (0,1,2,0:vw8); (0,0,3,0:vw8); (0,1,3,0:vw8) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
_v_add_lshl_u32 v73, v68, v66, 0x1                 // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=66, coord0Vgpr=66
_buffer_load_b128 v[76:79], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
_buffer_load_b128 v[80:83], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:256 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[84:87], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,1,1,0) */
_buffer_load_b128 v[88:91], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:256 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[92:95], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,2,1,0) */
_buffer_load_b128 v[96:99], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:256 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[100:103], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,3,1,0) */
_buffer_load_b128 v[104:107], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:256 // load C for beta calc
_v_add_lshl_u32 v72, v69, v66, 0x1                 // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=66, coord0Vgpr=66

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 1, 0, 0), (0, 0, 1, 0), (0, 1, 1, 0), (0, 0, 2, 0), (0, 1, 2, 0), (0, 0, 3, 0), (0, 1, 3, 0)] */
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

s_waitcnt vmcnt(7)                                 // wait C (interleaved) 7 = 8 - 0 - 1
v_pk_mul_f16 v76, s[sgprBeta], v76                 // v76 = C*beta ei=0 vi=0
v_pk_add_f16 v[vgprValuC+0], v76, v[vgprValuC+0]   // sum*alpha + C*beta
v_pk_mul_f16 v77, s[sgprBeta], v77                 // v77 = C*beta ei=0 vi=2
v_pk_add_f16 v[vgprValuC+1], v77, v[vgprValuC+1]   // sum*alpha + C*beta
v_pk_mul_f16 v78, s[sgprBeta], v78                 // v78 = C*beta ei=0 vi=4
v_pk_add_f16 v[vgprValuC+2], v78, v[vgprValuC+2]   // sum*alpha + C*beta
v_pk_mul_f16 v79, s[sgprBeta], v79                 // v79 = C*beta ei=0 vi=6
v_pk_add_f16 v[vgprValuC+3], v79, v[vgprValuC+3]   // sum*alpha + C*beta
_buffer_store_b128 v[0:3], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(6)                                 // wait C (interleaved) 6 = 8 - 1 - 1
v_pk_mul_f16 v80, s[sgprBeta], v80                 // v80 = C*beta ei=1 vi=0
v_pk_add_f16 v[vgprValuC+4], v80, v[vgprValuC+4]   // sum*alpha + C*beta
v_pk_mul_f16 v81, s[sgprBeta], v81                 // v81 = C*beta ei=1 vi=2
v_pk_add_f16 v[vgprValuC+5], v81, v[vgprValuC+5]   // sum*alpha + C*beta
v_pk_mul_f16 v82, s[sgprBeta], v82                 // v82 = C*beta ei=1 vi=4
v_pk_add_f16 v[vgprValuC+6], v82, v[vgprValuC+6]   // sum*alpha + C*beta
v_pk_mul_f16 v83, s[sgprBeta], v83                 // v83 = C*beta ei=1 vi=6
v_pk_add_f16 v[vgprValuC+7], v83, v[vgprValuC+7]   // sum*alpha + C*beta
_buffer_store_b128 v[4:7], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D

s_waitcnt vmcnt(5)                                 // wait C (interleaved) 5 = 8 - 2 - 1
v_pk_mul_f16 v84, s[sgprBeta], v84                 // v84 = C*beta ei=2 vi=0
v_pk_add_f16 v[vgprValuC+8], v84, v[vgprValuC+8]   // sum*alpha + C*beta
v_pk_mul_f16 v85, s[sgprBeta], v85                 // v85 = C*beta ei=2 vi=2
v_pk_add_f16 v[vgprValuC+9], v85, v[vgprValuC+9]   // sum*alpha + C*beta
v_pk_mul_f16 v86, s[sgprBeta], v86                 // v86 = C*beta ei=2 vi=4
v_pk_add_f16 v[vgprValuC+10], v86, v[vgprValuC+10] // sum*alpha + C*beta
v_pk_mul_f16 v87, s[sgprBeta], v87                 // v87 = C*beta ei=2 vi=6
v_pk_add_f16 v[vgprValuC+11], v87, v[vgprValuC+11] // sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[8:11], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(4)                                 // wait C (interleaved) 4 = 8 - 3 - 1
v_pk_mul_f16 v88, s[sgprBeta], v88                 // v88 = C*beta ei=3 vi=0
v_pk_add_f16 v[vgprValuC+12], v88, v[vgprValuC+12] // sum*alpha + C*beta
v_pk_mul_f16 v89, s[sgprBeta], v89                 // v89 = C*beta ei=3 vi=2
v_pk_add_f16 v[vgprValuC+13], v89, v[vgprValuC+13] // sum*alpha + C*beta
v_pk_mul_f16 v90, s[sgprBeta], v90                 // v90 = C*beta ei=3 vi=4
v_pk_add_f16 v[vgprValuC+14], v90, v[vgprValuC+14] // sum*alpha + C*beta
v_pk_mul_f16 v91, s[sgprBeta], v91                 // v91 = C*beta ei=3 vi=6
v_pk_add_f16 v[vgprValuC+15], v91, v[vgprValuC+15] // sum*alpha + C*beta
_buffer_store_b128 v[12:15], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D

s_waitcnt vmcnt(3)                                 // wait C (interleaved) 3 = 8 - 4 - 1
v_pk_mul_f16 v92, s[sgprBeta], v92                 // v92 = C*beta ei=4 vi=0
v_pk_add_f16 v[vgprValuC+16], v92, v[vgprValuC+16] // sum*alpha + C*beta
v_pk_mul_f16 v93, s[sgprBeta], v93                 // v93 = C*beta ei=4 vi=2
v_pk_add_f16 v[vgprValuC+17], v93, v[vgprValuC+17] // sum*alpha + C*beta
v_pk_mul_f16 v94, s[sgprBeta], v94                 // v94 = C*beta ei=4 vi=4
v_pk_add_f16 v[vgprValuC+18], v94, v[vgprValuC+18] // sum*alpha + C*beta
v_pk_mul_f16 v95, s[sgprBeta], v95                 // v95 = C*beta ei=4 vi=6
v_pk_add_f16 v[vgprValuC+19], v95, v[vgprValuC+19] // sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[16:19], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(2)                                 // wait C (interleaved) 2 = 8 - 5 - 1
v_pk_mul_f16 v96, s[sgprBeta], v96                 // v96 = C*beta ei=5 vi=0
v_pk_add_f16 v[vgprValuC+20], v96, v[vgprValuC+20] // sum*alpha + C*beta
v_pk_mul_f16 v97, s[sgprBeta], v97                 // v97 = C*beta ei=5 vi=2
v_pk_add_f16 v[vgprValuC+21], v97, v[vgprValuC+21] // sum*alpha + C*beta
v_pk_mul_f16 v98, s[sgprBeta], v98                 // v98 = C*beta ei=5 vi=4
v_pk_add_f16 v[vgprValuC+22], v98, v[vgprValuC+22] // sum*alpha + C*beta
v_pk_mul_f16 v99, s[sgprBeta], v99                 // v99 = C*beta ei=5 vi=6
v_pk_add_f16 v[vgprValuC+23], v99, v[vgprValuC+23] // sum*alpha + C*beta
_buffer_store_b128 v[20:23], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D

s_waitcnt vmcnt(1)                                 // wait C (interleaved) 1 = 8 - 6 - 1
v_pk_mul_f16 v100, s[sgprBeta], v100               // v100 = C*beta ei=6 vi=0
v_pk_add_f16 v[vgprValuC+24], v100, v[vgprValuC+24] // sum*alpha + C*beta
v_pk_mul_f16 v101, s[sgprBeta], v101               // v101 = C*beta ei=6 vi=2
v_pk_add_f16 v[vgprValuC+25], v101, v[vgprValuC+25] // sum*alpha + C*beta
v_pk_mul_f16 v102, s[sgprBeta], v102               // v102 = C*beta ei=6 vi=4
v_pk_add_f16 v[vgprValuC+26], v102, v[vgprValuC+26] // sum*alpha + C*beta
v_pk_mul_f16 v103, s[sgprBeta], v103               // v103 = C*beta ei=6 vi=6
v_pk_add_f16 v[vgprValuC+27], v103, v[vgprValuC+27] // sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[24:27], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(0)                                 // wait C (interleaved) 0 = 8 - 7 - 1
v_pk_mul_f16 v104, s[sgprBeta], v104               // v104 = C*beta ei=7 vi=0
v_pk_add_f16 v[vgprValuC+28], v104, v[vgprValuC+28] // sum*alpha + C*beta
v_pk_mul_f16 v105, s[sgprBeta], v105               // v105 = C*beta ei=7 vi=2
v_pk_add_f16 v[vgprValuC+29], v105, v[vgprValuC+29] // sum*alpha + C*beta
v_pk_mul_f16 v106, s[sgprBeta], v106               // v106 = C*beta ei=7 vi=4
v_pk_add_f16 v[vgprValuC+30], v106, v[vgprValuC+30] // sum*alpha + C*beta
v_pk_mul_f16 v107, s[sgprBeta], v107               // v107 = C*beta ei=7 vi=6
v_pk_add_f16 v[vgprValuC+31], v107, v[vgprValuC+31] // sum*alpha + C*beta
_buffer_store_b128 v[28:31], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Alpha Beta Batch #1 (d1,d0,vc1,vc0) = */
/*    (0,0,4,0:vw8); (0,1,4,0:vw8); (0,0,5,0:vw8); (0,1,5,0:vw8); (0,0,6,0:vw8); (0,1,6,0:vw8); (0,0,7,0:vw8); (0,1,7,0:vw8) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,4,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[76:79], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,4,1,0) */
_buffer_load_b128 v[80:83], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:256 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,5,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[84:87], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,5,1,0) */
_buffer_load_b128 v[88:91], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:256 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,6,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[92:95], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,6,1,0) */
_buffer_load_b128 v[96:99], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:256 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,7,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[100:103], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,7,1,0) */
_buffer_load_b128 v[104:107], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:256 // load C for beta calc

/* rC *= alpha batchElements=[(0, 0, 4, 0), (0, 1, 4, 0), (0, 0, 5, 0), (0, 1, 5, 0), (0, 0, 6, 0), (0, 1, 6, 0), (0, 0, 7, 0), (0, 1, 7, 0)] */
v_pk_mul_f16 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha sumIdx=64 vi=1
v_pk_mul_f16 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha sumIdx=64 vi=3
v_pk_mul_f16 v[vgprValuC+34], s[sgprAlpha], v[vgprValuC+34] // *= alpha sumIdx=64 vi=5
v_pk_mul_f16 v[vgprValuC+35], s[sgprAlpha], v[vgprValuC+35] // *= alpha sumIdx=64 vi=7
v_pk_mul_f16 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha sumIdx=72 vi=1
v_pk_mul_f16 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha sumIdx=72 vi=3
v_pk_mul_f16 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha sumIdx=72 vi=5
v_pk_mul_f16 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha sumIdx=72 vi=7
v_pk_mul_f16 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha sumIdx=80 vi=1
v_pk_mul_f16 v[vgprValuC+41], s[sgprAlpha], v[vgprValuC+41] // *= alpha sumIdx=80 vi=3
v_pk_mul_f16 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha sumIdx=80 vi=5
v_pk_mul_f16 v[vgprValuC+43], s[sgprAlpha], v[vgprValuC+43] // *= alpha sumIdx=80 vi=7
v_pk_mul_f16 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha sumIdx=88 vi=1
v_pk_mul_f16 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha sumIdx=88 vi=3
v_pk_mul_f16 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha sumIdx=88 vi=5
v_pk_mul_f16 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha sumIdx=88 vi=7
v_pk_mul_f16 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha sumIdx=96 vi=1
v_pk_mul_f16 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha sumIdx=96 vi=3
v_pk_mul_f16 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha sumIdx=96 vi=5
v_pk_mul_f16 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha sumIdx=96 vi=7
v_pk_mul_f16 v[vgprValuC+52], s[sgprAlpha], v[vgprValuC+52] // *= alpha sumIdx=104 vi=1
v_pk_mul_f16 v[vgprValuC+53], s[sgprAlpha], v[vgprValuC+53] // *= alpha sumIdx=104 vi=3
v_pk_mul_f16 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha sumIdx=104 vi=5
v_pk_mul_f16 v[vgprValuC+55], s[sgprAlpha], v[vgprValuC+55] // *= alpha sumIdx=104 vi=7
v_pk_mul_f16 v[vgprValuC+56], s[sgprAlpha], v[vgprValuC+56] // *= alpha sumIdx=112 vi=1
v_pk_mul_f16 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha sumIdx=112 vi=3
v_pk_mul_f16 v[vgprValuC+58], s[sgprAlpha], v[vgprValuC+58] // *= alpha sumIdx=112 vi=5
v_pk_mul_f16 v[vgprValuC+59], s[sgprAlpha], v[vgprValuC+59] // *= alpha sumIdx=112 vi=7
v_pk_mul_f16 v[vgprValuC+60], s[sgprAlpha], v[vgprValuC+60] // *= alpha sumIdx=120 vi=1
v_pk_mul_f16 v[vgprValuC+61], s[sgprAlpha], v[vgprValuC+61] // *= alpha sumIdx=120 vi=3
v_pk_mul_f16 v[vgprValuC+62], s[sgprAlpha], v[vgprValuC+62] // *= alpha sumIdx=120 vi=5
v_pk_mul_f16 v[vgprValuC+63], s[sgprAlpha], v[vgprValuC+63] // *= alpha sumIdx=120 vi=7

/* apply mask, calc new C and issue writes */

s_waitcnt vmcnt(7)                                 // wait C (interleaved) 7 = 8 - 0 - 1
v_pk_mul_f16 v76, s[sgprBeta], v76                 // v76 = C*beta ei=0 vi=0
v_pk_add_f16 v[vgprValuC+32], v76, v[vgprValuC+32] // sum*alpha + C*beta
v_pk_mul_f16 v77, s[sgprBeta], v77                 // v77 = C*beta ei=0 vi=2
v_pk_add_f16 v[vgprValuC+33], v77, v[vgprValuC+33] // sum*alpha + C*beta
v_pk_mul_f16 v78, s[sgprBeta], v78                 // v78 = C*beta ei=0 vi=4
v_pk_add_f16 v[vgprValuC+34], v78, v[vgprValuC+34] // sum*alpha + C*beta
v_pk_mul_f16 v79, s[sgprBeta], v79                 // v79 = C*beta ei=0 vi=6
v_pk_add_f16 v[vgprValuC+35], v79, v[vgprValuC+35] // sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[32:35], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(6)                                 // wait C (interleaved) 6 = 8 - 1 - 1
v_pk_mul_f16 v80, s[sgprBeta], v80                 // v80 = C*beta ei=1 vi=0
v_pk_add_f16 v[vgprValuC+36], v80, v[vgprValuC+36] // sum*alpha + C*beta
v_pk_mul_f16 v81, s[sgprBeta], v81                 // v81 = C*beta ei=1 vi=2
v_pk_add_f16 v[vgprValuC+37], v81, v[vgprValuC+37] // sum*alpha + C*beta
v_pk_mul_f16 v82, s[sgprBeta], v82                 // v82 = C*beta ei=1 vi=4
v_pk_add_f16 v[vgprValuC+38], v82, v[vgprValuC+38] // sum*alpha + C*beta
v_pk_mul_f16 v83, s[sgprBeta], v83                 // v83 = C*beta ei=1 vi=6
v_pk_add_f16 v[vgprValuC+39], v83, v[vgprValuC+39] // sum*alpha + C*beta
_buffer_store_b128 v[36:39], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D

s_waitcnt vmcnt(5)                                 // wait C (interleaved) 5 = 8 - 2 - 1
v_pk_mul_f16 v84, s[sgprBeta], v84                 // v84 = C*beta ei=2 vi=0
v_pk_add_f16 v[vgprValuC+40], v84, v[vgprValuC+40] // sum*alpha + C*beta
v_pk_mul_f16 v85, s[sgprBeta], v85                 // v85 = C*beta ei=2 vi=2
v_pk_add_f16 v[vgprValuC+41], v85, v[vgprValuC+41] // sum*alpha + C*beta
v_pk_mul_f16 v86, s[sgprBeta], v86                 // v86 = C*beta ei=2 vi=4
v_pk_add_f16 v[vgprValuC+42], v86, v[vgprValuC+42] // sum*alpha + C*beta
v_pk_mul_f16 v87, s[sgprBeta], v87                 // v87 = C*beta ei=2 vi=6
v_pk_add_f16 v[vgprValuC+43], v87, v[vgprValuC+43] // sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[40:43], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(4)                                 // wait C (interleaved) 4 = 8 - 3 - 1
v_pk_mul_f16 v88, s[sgprBeta], v88                 // v88 = C*beta ei=3 vi=0
v_pk_add_f16 v[vgprValuC+44], v88, v[vgprValuC+44] // sum*alpha + C*beta
v_pk_mul_f16 v89, s[sgprBeta], v89                 // v89 = C*beta ei=3 vi=2
v_pk_add_f16 v[vgprValuC+45], v89, v[vgprValuC+45] // sum*alpha + C*beta
v_pk_mul_f16 v90, s[sgprBeta], v90                 // v90 = C*beta ei=3 vi=4
v_pk_add_f16 v[vgprValuC+46], v90, v[vgprValuC+46] // sum*alpha + C*beta
v_pk_mul_f16 v91, s[sgprBeta], v91                 // v91 = C*beta ei=3 vi=6
v_pk_add_f16 v[vgprValuC+47], v91, v[vgprValuC+47] // sum*alpha + C*beta
_buffer_store_b128 v[44:47], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D

s_waitcnt vmcnt(3)                                 // wait C (interleaved) 3 = 8 - 4 - 1
v_pk_mul_f16 v92, s[sgprBeta], v92                 // v92 = C*beta ei=4 vi=0
v_pk_add_f16 v[vgprValuC+48], v92, v[vgprValuC+48] // sum*alpha + C*beta
v_pk_mul_f16 v93, s[sgprBeta], v93                 // v93 = C*beta ei=4 vi=2
v_pk_add_f16 v[vgprValuC+49], v93, v[vgprValuC+49] // sum*alpha + C*beta
v_pk_mul_f16 v94, s[sgprBeta], v94                 // v94 = C*beta ei=4 vi=4
v_pk_add_f16 v[vgprValuC+50], v94, v[vgprValuC+50] // sum*alpha + C*beta
v_pk_mul_f16 v95, s[sgprBeta], v95                 // v95 = C*beta ei=4 vi=6
v_pk_add_f16 v[vgprValuC+51], v95, v[vgprValuC+51] // sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[48:51], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(2)                                 // wait C (interleaved) 2 = 8 - 5 - 1
v_pk_mul_f16 v96, s[sgprBeta], v96                 // v96 = C*beta ei=5 vi=0
v_pk_add_f16 v[vgprValuC+52], v96, v[vgprValuC+52] // sum*alpha + C*beta
v_pk_mul_f16 v97, s[sgprBeta], v97                 // v97 = C*beta ei=5 vi=2
v_pk_add_f16 v[vgprValuC+53], v97, v[vgprValuC+53] // sum*alpha + C*beta
v_pk_mul_f16 v98, s[sgprBeta], v98                 // v98 = C*beta ei=5 vi=4
v_pk_add_f16 v[vgprValuC+54], v98, v[vgprValuC+54] // sum*alpha + C*beta
v_pk_mul_f16 v99, s[sgprBeta], v99                 // v99 = C*beta ei=5 vi=6
v_pk_add_f16 v[vgprValuC+55], v99, v[vgprValuC+55] // sum*alpha + C*beta
_buffer_store_b128 v[52:55], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D

s_waitcnt vmcnt(1)                                 // wait C (interleaved) 1 = 8 - 6 - 1
v_pk_mul_f16 v100, s[sgprBeta], v100               // v100 = C*beta ei=6 vi=0
v_pk_add_f16 v[vgprValuC+56], v100, v[vgprValuC+56] // sum*alpha + C*beta
v_pk_mul_f16 v101, s[sgprBeta], v101               // v101 = C*beta ei=6 vi=2
v_pk_add_f16 v[vgprValuC+57], v101, v[vgprValuC+57] // sum*alpha + C*beta
v_pk_mul_f16 v102, s[sgprBeta], v102               // v102 = C*beta ei=6 vi=4
v_pk_add_f16 v[vgprValuC+58], v102, v[vgprValuC+58] // sum*alpha + C*beta
v_pk_mul_f16 v103, s[sgprBeta], v103               // v103 = C*beta ei=6 vi=6
v_pk_add_f16 v[vgprValuC+59], v103, v[vgprValuC+59] // sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[56:59], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(0)                                 // wait C (interleaved) 0 = 8 - 7 - 1
v_pk_mul_f16 v104, s[sgprBeta], v104               // v104 = C*beta ei=7 vi=0
v_pk_add_f16 v[vgprValuC+60], v104, v[vgprValuC+60] // sum*alpha + C*beta
v_pk_mul_f16 v105, s[sgprBeta], v105               // v105 = C*beta ei=7 vi=2
v_pk_add_f16 v[vgprValuC+61], v105, v[vgprValuC+61] // sum*alpha + C*beta
v_pk_mul_f16 v106, s[sgprBeta], v106               // v106 = C*beta ei=7 vi=4
v_pk_add_f16 v[vgprValuC+62], v106, v[vgprValuC+62] // sum*alpha + C*beta
v_pk_mul_f16 v107, s[sgprBeta], v107               // v107 = C*beta ei=7 vi=6
v_pk_add_f16 v[vgprValuC+63], v107, v[vgprValuC+63] // sum*alpha + C*beta
_buffer_store_b128 v[60:63], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_branch label_GW_End_82                           // jump to end
GW_B1_E1_81:

/* edge=1, allocate 3 sgpr. perBatchTmpS=2 perBatchMaskS=1 perElementMaskS=0 elementsPerBatch=18 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,0,0,1:vw1); (0,0,0,2:vw1); (0,0,0,3:vw1); (0,0,0,4:vw1); (0,0,0,5:vw1); (0,0,0,6:vw1); (0,0,0,7:vw1); (0,1,0,0:vw1); (0,1,0,1:vw1); (0,1,0,2:vw1); (0,1,0,3:vw1); (0,1,0,4:vw1); (0,1,0,5:vw1); (0,1,0,6:vw1); (0,1,0,7:vw1); (0,0,1,0:vw1); (0,0,1,1:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v72, v68, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v73, v72, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v72, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v74, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v73, v74, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v74, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v75, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v75, -1, v75, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v76, v75, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v75, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v75, -1, v75, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v77, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, -1, v77, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v76, v77, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v77, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, -1, v77, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v78, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v79, v78, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v78, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v80, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v79, v80, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v80, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v81, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v81, -1, v81, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v82, v81, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v81, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v81, -1, v81, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v83, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v83, -1, v83, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v82, v83, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v83, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v83, -1, v83, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=1 vc0=0
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v84, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v85, v84, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v84, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v86, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v85, v86, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v86, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v87, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v87, -1, v87, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v88, v87, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v87, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v87, -1, v87, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v89, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v89, -1, v89, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v88, v89, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v89, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v89, -1, v89, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,4) */
s_mov_b32 s54, 132                                 // coordOffset0 d0=1 vc0=4
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v90, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v91, v90, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v90, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,5) */
s_mov_b32 s54, 133                                 // coordOffset0 d0=1 vc0=5
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v92, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v91, v92, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v92, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,6) */
s_mov_b32 s54, 134                                 // coordOffset0 d0=1 vc0=6
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v93, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v93, -1, v93, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v94, v93, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v93, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v93, -1, v93, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,7) */
s_mov_b32 s54, 135                                 // coordOffset0 d0=1 vc0=7
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v95, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v95, -1, v95, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v94, v95, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v95, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v95, -1, v95, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v96, v68, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v97, v96, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v96, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v98, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v97, v98, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v98, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 0, 1), (0, 0, 0, 2), (0, 0, 0, 3), (0, 0, 0, 4), (0, 0, 0, 5), (0, 0, 0, 6), (0, 0, 0, 7), (0, 1, 0, 0), (0, 1, 0, 1), (0, 1, 0, 2), (0, 1, 0, 3), (0, 1, 0, 4), (0, 1, 0, 5), (0, 1, 0, 6), (0, 1, 0, 7), (0, 0, 1, 0), (0, 0, 1, 1)] */
v_pk_mul_f16 v[vgprValuC+0], s[sgprAlpha], v[vgprValuC+0] // *= alpha sumIdx=1 vi=0
v_pk_mul_f16 v[vgprValuC+1], s[sgprAlpha], v[vgprValuC+1] // *= alpha sumIdx=3 vi=0
v_pk_mul_f16 v[vgprValuC+2], s[sgprAlpha], v[vgprValuC+2] // *= alpha sumIdx=5 vi=0
v_pk_mul_f16 v[vgprValuC+3], s[sgprAlpha], v[vgprValuC+3] // *= alpha sumIdx=7 vi=0
v_pk_mul_f16 v[vgprValuC+4], s[sgprAlpha], v[vgprValuC+4] // *= alpha sumIdx=9 vi=0
v_pk_mul_f16 v[vgprValuC+5], s[sgprAlpha], v[vgprValuC+5] // *= alpha sumIdx=11 vi=0
v_pk_mul_f16 v[vgprValuC+6], s[sgprAlpha], v[vgprValuC+6] // *= alpha sumIdx=13 vi=0
v_pk_mul_f16 v[vgprValuC+7], s[sgprAlpha], v[vgprValuC+7] // *= alpha sumIdx=15 vi=0
v_pk_mul_f16 v[vgprValuC+8], s[sgprAlpha], v[vgprValuC+8] // *= alpha sumIdx=17 vi=0
s_waitcnt vmcnt(0)                                 // wait C
s_waitcnt_vscnt null, 0                            // writes

/* apply mask, calc new C and issue writes */
v_pk_mul_f16 v73, s[sgprBeta], v73                 // v73 = C*beta ei=0 vi=0
v_pk_add_f16 v[vgprValuC+0], v73, v[vgprValuC+0]   // sum*alpha + C*beta
_buffer_store_b16 v0, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v0, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v76, s[sgprBeta], v76                 // v76 = C*beta ei=2 vi=0
v_pk_add_f16 v[vgprValuC+1], v76, v[vgprValuC+1]   // sum*alpha + C*beta
_buffer_store_b16 v1, v75, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v1, v77, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v79, s[sgprBeta], v79                 // v79 = C*beta ei=4 vi=0
v_pk_add_f16 v[vgprValuC+2], v79, v[vgprValuC+2]   // sum*alpha + C*beta
_buffer_store_b16 v2, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v2, v80, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v82, s[sgprBeta], v82                 // v82 = C*beta ei=6 vi=0
v_pk_add_f16 v[vgprValuC+3], v82, v[vgprValuC+3]   // sum*alpha + C*beta
_buffer_store_b16 v3, v81, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v3, v83, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v85, s[sgprBeta], v85                 // v85 = C*beta ei=8 vi=0
v_pk_add_f16 v[vgprValuC+4], v85, v[vgprValuC+4]   // sum*alpha + C*beta
_buffer_store_b16 v4, v84, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v4, v86, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v88, s[sgprBeta], v88                 // v88 = C*beta ei=10 vi=0
v_pk_add_f16 v[vgprValuC+5], v88, v[vgprValuC+5]   // sum*alpha + C*beta
_buffer_store_b16 v5, v87, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v5, v89, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v91, s[sgprBeta], v91                 // v91 = C*beta ei=12 vi=0
v_pk_add_f16 v[vgprValuC+6], v91, v[vgprValuC+6]   // sum*alpha + C*beta
_buffer_store_b16 v6, v90, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v6, v92, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v94, s[sgprBeta], v94                 // v94 = C*beta ei=14 vi=0
v_pk_add_f16 v[vgprValuC+7], v94, v[vgprValuC+7]   // sum*alpha + C*beta
_buffer_store_b16 v7, v93, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v7, v95, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v97, s[sgprBeta], v97                 // v97 = C*beta ei=16 vi=0
v_pk_add_f16 v[vgprValuC+8], v97, v[vgprValuC+8]   // sum*alpha + C*beta
_buffer_store_b16 v8, v96, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v8, v98, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #1 (d1,d0,vc1,vc0) = */
/*    (0,0,1,2:vw1); (0,0,1,3:vw1); (0,0,1,4:vw1); (0,0,1,5:vw1); (0,0,1,6:vw1); (0,0,1,7:vw1); (0,1,1,0:vw1); (0,1,1,1:vw1); (0,1,1,2:vw1); (0,1,1,3:vw1); (0,1,1,4:vw1); (0,1,1,5:vw1); (0,1,1,6:vw1); (0,1,1,7:vw1); (0,0,2,0:vw1); (0,0,2,1:vw1); (0,0,2,2:vw1); (0,0,2,3:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,1,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v72, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v73, v72, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v72, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v74, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v73, v74, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v74, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v75, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v75, -1, v75, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v76, v75, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v75, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v75, -1, v75, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v77, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, -1, v77, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v76, v77, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v77, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, -1, v77, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v78, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v79, v78, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v78, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v80, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v79, v80, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v80, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=1 vc0=0
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v81, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v81, -1, v81, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v82, v81, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v81, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v81, -1, v81, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v83, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v83, -1, v83, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v82, v83, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v83, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v83, -1, v83, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v84, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v85, v84, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v84, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v86, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v85, v86, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v86, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,4) */
s_mov_b32 s54, 132                                 // coordOffset0 d0=1 vc0=4
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v87, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v87, -1, v87, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v88, v87, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v87, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v87, -1, v87, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,5) */
s_mov_b32 s54, 133                                 // coordOffset0 d0=1 vc0=5
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v89, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v89, -1, v89, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v88, v89, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v89, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v89, -1, v89, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,6) */
s_mov_b32 s54, 134                                 // coordOffset0 d0=1 vc0=6
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v90, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v91, v90, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v90, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,7) */
s_mov_b32 s54, 135                                 // coordOffset0 d0=1 vc0=7
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v92, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v91, v92, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v92, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v93, v68, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v93, -1, v93, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v94, v93, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v93, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v93, -1, v93, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v95, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v95, -1, v95, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v94, v95, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v95, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v95, -1, v95, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v96, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v97, v96, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v96, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v98, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v97, v98, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v98, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 1, 2), (0, 0, 1, 3), (0, 0, 1, 4), (0, 0, 1, 5), (0, 0, 1, 6), (0, 0, 1, 7), (0, 1, 1, 0), (0, 1, 1, 1), (0, 1, 1, 2), (0, 1, 1, 3), (0, 1, 1, 4), (0, 1, 1, 5), (0, 1, 1, 6), (0, 1, 1, 7), (0, 0, 2, 0), (0, 0, 2, 1), (0, 0, 2, 2), (0, 0, 2, 3)] */
v_pk_mul_f16 v[vgprValuC+9], s[sgprAlpha], v[vgprValuC+9] // *= alpha sumIdx=19 vi=0
v_pk_mul_f16 v[vgprValuC+10], s[sgprAlpha], v[vgprValuC+10] // *= alpha sumIdx=21 vi=0
v_pk_mul_f16 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha sumIdx=23 vi=0
v_pk_mul_f16 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha sumIdx=25 vi=0
v_pk_mul_f16 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha sumIdx=27 vi=0
v_pk_mul_f16 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha sumIdx=29 vi=0
v_pk_mul_f16 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha sumIdx=31 vi=0
v_pk_mul_f16 v[vgprValuC+16], s[sgprAlpha], v[vgprValuC+16] // *= alpha sumIdx=33 vi=0
v_pk_mul_f16 v[vgprValuC+17], s[sgprAlpha], v[vgprValuC+17] // *= alpha sumIdx=35 vi=0
s_waitcnt vmcnt(0)                                 // wait C
s_waitcnt_vscnt null, 0                            // writes

/* apply mask, calc new C and issue writes */
v_pk_mul_f16 v73, s[sgprBeta], v73                 // v73 = C*beta ei=0 vi=0
v_pk_add_f16 v[vgprValuC+9], v73, v[vgprValuC+9]   // sum*alpha + C*beta
_buffer_store_b16 v9, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v9, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v76, s[sgprBeta], v76                 // v76 = C*beta ei=2 vi=0
v_pk_add_f16 v[vgprValuC+10], v76, v[vgprValuC+10] // sum*alpha + C*beta
_buffer_store_b16 v10, v75, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v10, v77, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v79, s[sgprBeta], v79                 // v79 = C*beta ei=4 vi=0
v_pk_add_f16 v[vgprValuC+11], v79, v[vgprValuC+11] // sum*alpha + C*beta
_buffer_store_b16 v11, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v11, v80, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v82, s[sgprBeta], v82                 // v82 = C*beta ei=6 vi=0
v_pk_add_f16 v[vgprValuC+12], v82, v[vgprValuC+12] // sum*alpha + C*beta
_buffer_store_b16 v12, v81, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v12, v83, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v85, s[sgprBeta], v85                 // v85 = C*beta ei=8 vi=0
v_pk_add_f16 v[vgprValuC+13], v85, v[vgprValuC+13] // sum*alpha + C*beta
_buffer_store_b16 v13, v84, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v13, v86, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v88, s[sgprBeta], v88                 // v88 = C*beta ei=10 vi=0
v_pk_add_f16 v[vgprValuC+14], v88, v[vgprValuC+14] // sum*alpha + C*beta
_buffer_store_b16 v14, v87, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v14, v89, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v91, s[sgprBeta], v91                 // v91 = C*beta ei=12 vi=0
v_pk_add_f16 v[vgprValuC+15], v91, v[vgprValuC+15] // sum*alpha + C*beta
_buffer_store_b16 v15, v90, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v15, v92, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v94, s[sgprBeta], v94                 // v94 = C*beta ei=14 vi=0
v_pk_add_f16 v[vgprValuC+16], v94, v[vgprValuC+16] // sum*alpha + C*beta
_buffer_store_b16 v16, v93, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v16, v95, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v97, s[sgprBeta], v97                 // v97 = C*beta ei=16 vi=0
v_pk_add_f16 v[vgprValuC+17], v97, v[vgprValuC+17] // sum*alpha + C*beta
_buffer_store_b16 v17, v96, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v17, v98, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #2 (d1,d0,vc1,vc0) = */
/*    (0,0,2,4:vw1); (0,0,2,5:vw1); (0,0,2,6:vw1); (0,0,2,7:vw1); (0,1,2,0:vw1); (0,1,2,1:vw1); (0,1,2,2:vw1); (0,1,2,3:vw1); (0,1,2,4:vw1); (0,1,2,5:vw1); (0,1,2,6:vw1); (0,1,2,7:vw1); (0,0,3,0:vw1); (0,0,3,1:vw1); (0,0,3,2:vw1); (0,0,3,3:vw1); (0,0,3,4:vw1); (0,0,3,5:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,2,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v72, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v73, v72, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v72, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v74, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v73, v74, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v74, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v75, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v75, -1, v75, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v76, v75, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v75, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v75, -1, v75, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v77, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, -1, v77, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v76, v77, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v77, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, -1, v77, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=1 vc0=0
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v78, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v79, v78, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v78, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v80, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v79, v80, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v80, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v81, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v81, -1, v81, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v82, v81, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v81, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v81, -1, v81, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v83, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v83, -1, v83, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v82, v83, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v83, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v83, -1, v83, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,4) */
s_mov_b32 s54, 132                                 // coordOffset0 d0=1 vc0=4
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v84, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v85, v84, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v84, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,5) */
s_mov_b32 s54, 133                                 // coordOffset0 d0=1 vc0=5
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v86, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v85, v86, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v86, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,6) */
s_mov_b32 s54, 134                                 // coordOffset0 d0=1 vc0=6
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v87, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v87, -1, v87, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v88, v87, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v87, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v87, -1, v87, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,7) */
s_mov_b32 s54, 135                                 // coordOffset0 d0=1 vc0=7
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v89, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v89, -1, v89, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v88, v89, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v89, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v89, -1, v89, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v90, v68, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v91, v90, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v90, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v92, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v91, v92, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v92, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v93, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v93, -1, v93, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v94, v93, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v93, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v93, -1, v93, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v95, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v95, -1, v95, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v94, v95, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v95, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v95, -1, v95, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v96, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v97, v96, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v96, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v98, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v97, v98, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v98, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 2, 4), (0, 0, 2, 5), (0, 0, 2, 6), (0, 0, 2, 7), (0, 1, 2, 0), (0, 1, 2, 1), (0, 1, 2, 2), (0, 1, 2, 3), (0, 1, 2, 4), (0, 1, 2, 5), (0, 1, 2, 6), (0, 1, 2, 7), (0, 0, 3, 0), (0, 0, 3, 1), (0, 0, 3, 2), (0, 0, 3, 3), (0, 0, 3, 4), (0, 0, 3, 5)] */
v_pk_mul_f16 v[vgprValuC+18], s[sgprAlpha], v[vgprValuC+18] // *= alpha sumIdx=37 vi=0
v_pk_mul_f16 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+19] // *= alpha sumIdx=39 vi=0
v_pk_mul_f16 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+20] // *= alpha sumIdx=41 vi=0
v_pk_mul_f16 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha sumIdx=43 vi=0
v_pk_mul_f16 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha sumIdx=45 vi=0
v_pk_mul_f16 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+23] // *= alpha sumIdx=47 vi=0
v_pk_mul_f16 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha sumIdx=49 vi=0
v_pk_mul_f16 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha sumIdx=51 vi=0
v_pk_mul_f16 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha sumIdx=53 vi=0
s_waitcnt vmcnt(0)                                 // wait C
s_waitcnt_vscnt null, 0                            // writes

/* apply mask, calc new C and issue writes */
v_pk_mul_f16 v73, s[sgprBeta], v73                 // v73 = C*beta ei=0 vi=0
v_pk_add_f16 v[vgprValuC+18], v73, v[vgprValuC+18] // sum*alpha + C*beta
_buffer_store_b16 v18, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v18, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v76, s[sgprBeta], v76                 // v76 = C*beta ei=2 vi=0
v_pk_add_f16 v[vgprValuC+19], v76, v[vgprValuC+19] // sum*alpha + C*beta
_buffer_store_b16 v19, v75, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v19, v77, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v79, s[sgprBeta], v79                 // v79 = C*beta ei=4 vi=0
v_pk_add_f16 v[vgprValuC+20], v79, v[vgprValuC+20] // sum*alpha + C*beta
_buffer_store_b16 v20, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v20, v80, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v82, s[sgprBeta], v82                 // v82 = C*beta ei=6 vi=0
v_pk_add_f16 v[vgprValuC+21], v82, v[vgprValuC+21] // sum*alpha + C*beta
_buffer_store_b16 v21, v81, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v21, v83, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v85, s[sgprBeta], v85                 // v85 = C*beta ei=8 vi=0
v_pk_add_f16 v[vgprValuC+22], v85, v[vgprValuC+22] // sum*alpha + C*beta
_buffer_store_b16 v22, v84, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v22, v86, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v88, s[sgprBeta], v88                 // v88 = C*beta ei=10 vi=0
v_pk_add_f16 v[vgprValuC+23], v88, v[vgprValuC+23] // sum*alpha + C*beta
_buffer_store_b16 v23, v87, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v23, v89, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v91, s[sgprBeta], v91                 // v91 = C*beta ei=12 vi=0
v_pk_add_f16 v[vgprValuC+24], v91, v[vgprValuC+24] // sum*alpha + C*beta
_buffer_store_b16 v24, v90, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v24, v92, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v94, s[sgprBeta], v94                 // v94 = C*beta ei=14 vi=0
v_pk_add_f16 v[vgprValuC+25], v94, v[vgprValuC+25] // sum*alpha + C*beta
_buffer_store_b16 v25, v93, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v25, v95, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v97, s[sgprBeta], v97                 // v97 = C*beta ei=16 vi=0
v_pk_add_f16 v[vgprValuC+26], v97, v[vgprValuC+26] // sum*alpha + C*beta
_buffer_store_b16 v26, v96, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v26, v98, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #3 (d1,d0,vc1,vc0) = */
/*    (0,0,3,6:vw1); (0,0,3,7:vw1); (0,1,3,0:vw1); (0,1,3,1:vw1); (0,1,3,2:vw1); (0,1,3,3:vw1); (0,1,3,4:vw1); (0,1,3,5:vw1); (0,1,3,6:vw1); (0,1,3,7:vw1); (0,0,4,0:vw1); (0,0,4,1:vw1); (0,0,4,2:vw1); (0,0,4,3:vw1); (0,0,4,4:vw1); (0,0,4,5:vw1); (0,0,4,6:vw1); (0,0,4,7:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,3,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v72, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v73, v72, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v72, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v74, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v73, v74, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v74, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=1 vc0=0
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v75, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v75, -1, v75, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v76, v75, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v75, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v75, -1, v75, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v77, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, -1, v77, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v76, v77, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v77, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, -1, v77, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v78, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v79, v78, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v78, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v80, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v79, v80, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v80, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,4) */
s_mov_b32 s54, 132                                 // coordOffset0 d0=1 vc0=4
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v81, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v81, -1, v81, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v82, v81, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v81, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v81, -1, v81, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,5) */
s_mov_b32 s54, 133                                 // coordOffset0 d0=1 vc0=5
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v83, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v83, -1, v83, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v82, v83, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v83, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v83, -1, v83, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,6) */
s_mov_b32 s54, 134                                 // coordOffset0 d0=1 vc0=6
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v84, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v85, v84, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v84, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,7) */
s_mov_b32 s54, 135                                 // coordOffset0 d0=1 vc0=7
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v86, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v85, v86, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v86, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v87, v68, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v87, -1, v87, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v88, v87, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v87, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v87, -1, v87, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v89, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v89, -1, v89, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v88, v89, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v89, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v89, -1, v89, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v90, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v91, v90, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v90, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v92, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v91, v92, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v92, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v93, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v93, -1, v93, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v94, v93, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v93, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v93, -1, v93, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v95, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v95, -1, v95, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v94, v95, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v95, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v95, -1, v95, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v96, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v97, v96, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v96, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v98, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v97, v98, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v98, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 3, 6), (0, 0, 3, 7), (0, 1, 3, 0), (0, 1, 3, 1), (0, 1, 3, 2), (0, 1, 3, 3), (0, 1, 3, 4), (0, 1, 3, 5), (0, 1, 3, 6), (0, 1, 3, 7), (0, 0, 4, 0), (0, 0, 4, 1), (0, 0, 4, 2), (0, 0, 4, 3), (0, 0, 4, 4), (0, 0, 4, 5), (0, 0, 4, 6), (0, 0, 4, 7)] */
v_pk_mul_f16 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha sumIdx=55 vi=0
v_pk_mul_f16 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha sumIdx=57 vi=0
v_pk_mul_f16 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha sumIdx=59 vi=0
v_pk_mul_f16 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha sumIdx=61 vi=0
v_pk_mul_f16 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha sumIdx=63 vi=0
v_pk_mul_f16 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha sumIdx=65 vi=0
v_pk_mul_f16 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha sumIdx=67 vi=0
v_pk_mul_f16 v[vgprValuC+34], s[sgprAlpha], v[vgprValuC+34] // *= alpha sumIdx=69 vi=0
v_pk_mul_f16 v[vgprValuC+35], s[sgprAlpha], v[vgprValuC+35] // *= alpha sumIdx=71 vi=0
s_waitcnt vmcnt(0)                                 // wait C
s_waitcnt_vscnt null, 0                            // writes

/* apply mask, calc new C and issue writes */
v_pk_mul_f16 v73, s[sgprBeta], v73                 // v73 = C*beta ei=0 vi=0
v_pk_add_f16 v[vgprValuC+27], v73, v[vgprValuC+27] // sum*alpha + C*beta
_buffer_store_b16 v27, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v27, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v76, s[sgprBeta], v76                 // v76 = C*beta ei=2 vi=0
v_pk_add_f16 v[vgprValuC+28], v76, v[vgprValuC+28] // sum*alpha + C*beta
_buffer_store_b16 v28, v75, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v28, v77, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v79, s[sgprBeta], v79                 // v79 = C*beta ei=4 vi=0
v_pk_add_f16 v[vgprValuC+29], v79, v[vgprValuC+29] // sum*alpha + C*beta
_buffer_store_b16 v29, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v29, v80, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v82, s[sgprBeta], v82                 // v82 = C*beta ei=6 vi=0
v_pk_add_f16 v[vgprValuC+30], v82, v[vgprValuC+30] // sum*alpha + C*beta
_buffer_store_b16 v30, v81, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v30, v83, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v85, s[sgprBeta], v85                 // v85 = C*beta ei=8 vi=0
v_pk_add_f16 v[vgprValuC+31], v85, v[vgprValuC+31] // sum*alpha + C*beta
_buffer_store_b16 v31, v84, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v31, v86, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v88, s[sgprBeta], v88                 // v88 = C*beta ei=10 vi=0
v_pk_add_f16 v[vgprValuC+32], v88, v[vgprValuC+32] // sum*alpha + C*beta
_buffer_store_b16 v32, v87, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v32, v89, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v91, s[sgprBeta], v91                 // v91 = C*beta ei=12 vi=0
v_pk_add_f16 v[vgprValuC+33], v91, v[vgprValuC+33] // sum*alpha + C*beta
_buffer_store_b16 v33, v90, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v33, v92, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v94, s[sgprBeta], v94                 // v94 = C*beta ei=14 vi=0
v_pk_add_f16 v[vgprValuC+34], v94, v[vgprValuC+34] // sum*alpha + C*beta
_buffer_store_b16 v34, v93, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v34, v95, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v97, s[sgprBeta], v97                 // v97 = C*beta ei=16 vi=0
v_pk_add_f16 v[vgprValuC+35], v97, v[vgprValuC+35] // sum*alpha + C*beta
_buffer_store_b16 v35, v96, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v35, v98, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #4 (d1,d0,vc1,vc0) = */
/*    (0,1,4,0:vw1); (0,1,4,1:vw1); (0,1,4,2:vw1); (0,1,4,3:vw1); (0,1,4,4:vw1); (0,1,4,5:vw1); (0,1,4,6:vw1); (0,1,4,7:vw1); (0,0,5,0:vw1); (0,0,5,1:vw1); (0,0,5,2:vw1); (0,0,5,3:vw1); (0,0,5,4:vw1); (0,0,5,5:vw1); (0,0,5,6:vw1); (0,0,5,7:vw1); (0,1,5,0:vw1); (0,1,5,1:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,4,1,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=1 vc0=0
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v72, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v73, v72, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v72, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,1,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v74, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v73, v74, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v74, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,1,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v75, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v75, -1, v75, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v76, v75, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v75, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v75, -1, v75, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,1,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v77, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, -1, v77, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v76, v77, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v77, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, -1, v77, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,1,4) */
s_mov_b32 s54, 132                                 // coordOffset0 d0=1 vc0=4
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v78, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v79, v78, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v78, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,1,5) */
s_mov_b32 s54, 133                                 // coordOffset0 d0=1 vc0=5
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v80, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v79, v80, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v80, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,1,6) */
s_mov_b32 s54, 134                                 // coordOffset0 d0=1 vc0=6
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v81, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v81, -1, v81, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v82, v81, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v81, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v81, -1, v81, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,1,7) */
s_mov_b32 s54, 135                                 // coordOffset0 d0=1 vc0=7
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v83, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v83, -1, v83, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v82, v83, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v83, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v83, -1, v83, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v84, v68, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v85, v84, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v84, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v86, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v85, v86, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v86, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v87, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v87, -1, v87, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v88, v87, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v87, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v87, -1, v87, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v89, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v89, -1, v89, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v88, v89, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v89, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v89, -1, v89, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v90, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v91, v90, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v90, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v92, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v91, v92, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v92, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v93, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v93, -1, v93, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v94, v93, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v93, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v93, -1, v93, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v95, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v95, -1, v95, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v94, v95, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v95, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v95, -1, v95, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,1,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=1 vc0=0
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v96, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v97, v96, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v96, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,1,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v98, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v97, v98, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v98, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 1, 4, 0), (0, 1, 4, 1), (0, 1, 4, 2), (0, 1, 4, 3), (0, 1, 4, 4), (0, 1, 4, 5), (0, 1, 4, 6), (0, 1, 4, 7), (0, 0, 5, 0), (0, 0, 5, 1), (0, 0, 5, 2), (0, 0, 5, 3), (0, 0, 5, 4), (0, 0, 5, 5), (0, 0, 5, 6), (0, 0, 5, 7), (0, 1, 5, 0), (0, 1, 5, 1)] */
v_pk_mul_f16 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha sumIdx=73 vi=0
v_pk_mul_f16 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha sumIdx=75 vi=0
v_pk_mul_f16 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha sumIdx=77 vi=0
v_pk_mul_f16 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha sumIdx=79 vi=0
v_pk_mul_f16 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha sumIdx=81 vi=0
v_pk_mul_f16 v[vgprValuC+41], s[sgprAlpha], v[vgprValuC+41] // *= alpha sumIdx=83 vi=0
v_pk_mul_f16 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha sumIdx=85 vi=0
v_pk_mul_f16 v[vgprValuC+43], s[sgprAlpha], v[vgprValuC+43] // *= alpha sumIdx=87 vi=0
v_pk_mul_f16 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha sumIdx=89 vi=0
s_waitcnt vmcnt(0)                                 // wait C
s_waitcnt_vscnt null, 0                            // writes

/* apply mask, calc new C and issue writes */
v_pk_mul_f16 v73, s[sgprBeta], v73                 // v73 = C*beta ei=0 vi=0
v_pk_add_f16 v[vgprValuC+36], v73, v[vgprValuC+36] // sum*alpha + C*beta
_buffer_store_b16 v36, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v36, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v76, s[sgprBeta], v76                 // v76 = C*beta ei=2 vi=0
v_pk_add_f16 v[vgprValuC+37], v76, v[vgprValuC+37] // sum*alpha + C*beta
_buffer_store_b16 v37, v75, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v37, v77, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v79, s[sgprBeta], v79                 // v79 = C*beta ei=4 vi=0
v_pk_add_f16 v[vgprValuC+38], v79, v[vgprValuC+38] // sum*alpha + C*beta
_buffer_store_b16 v38, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v38, v80, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v82, s[sgprBeta], v82                 // v82 = C*beta ei=6 vi=0
v_pk_add_f16 v[vgprValuC+39], v82, v[vgprValuC+39] // sum*alpha + C*beta
_buffer_store_b16 v39, v81, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v39, v83, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v85, s[sgprBeta], v85                 // v85 = C*beta ei=8 vi=0
v_pk_add_f16 v[vgprValuC+40], v85, v[vgprValuC+40] // sum*alpha + C*beta
_buffer_store_b16 v40, v84, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v40, v86, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v88, s[sgprBeta], v88                 // v88 = C*beta ei=10 vi=0
v_pk_add_f16 v[vgprValuC+41], v88, v[vgprValuC+41] // sum*alpha + C*beta
_buffer_store_b16 v41, v87, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v41, v89, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v91, s[sgprBeta], v91                 // v91 = C*beta ei=12 vi=0
v_pk_add_f16 v[vgprValuC+42], v91, v[vgprValuC+42] // sum*alpha + C*beta
_buffer_store_b16 v42, v90, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v42, v92, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v94, s[sgprBeta], v94                 // v94 = C*beta ei=14 vi=0
v_pk_add_f16 v[vgprValuC+43], v94, v[vgprValuC+43] // sum*alpha + C*beta
_buffer_store_b16 v43, v93, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v43, v95, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v97, s[sgprBeta], v97                 // v97 = C*beta ei=16 vi=0
v_pk_add_f16 v[vgprValuC+44], v97, v[vgprValuC+44] // sum*alpha + C*beta
_buffer_store_b16 v44, v96, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v44, v98, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #5 (d1,d0,vc1,vc0) = */
/*    (0,1,5,2:vw1); (0,1,5,3:vw1); (0,1,5,4:vw1); (0,1,5,5:vw1); (0,1,5,6:vw1); (0,1,5,7:vw1); (0,0,6,0:vw1); (0,0,6,1:vw1); (0,0,6,2:vw1); (0,0,6,3:vw1); (0,0,6,4:vw1); (0,0,6,5:vw1); (0,0,6,6:vw1); (0,0,6,7:vw1); (0,1,6,0:vw1); (0,1,6,1:vw1); (0,1,6,2:vw1); (0,1,6,3:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,5,1,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v72, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v73, v72, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v72, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,1,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v74, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v73, v74, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v74, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,1,4) */
s_mov_b32 s54, 132                                 // coordOffset0 d0=1 vc0=4
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v75, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v75, -1, v75, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v76, v75, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v75, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v75, -1, v75, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,1,5) */
s_mov_b32 s54, 133                                 // coordOffset0 d0=1 vc0=5
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v77, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, -1, v77, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v76, v77, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v77, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, -1, v77, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,1,6) */
s_mov_b32 s54, 134                                 // coordOffset0 d0=1 vc0=6
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v78, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v79, v78, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v78, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,1,7) */
s_mov_b32 s54, 135                                 // coordOffset0 d0=1 vc0=7
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v80, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v79, v80, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v80, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v81, v68, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v81, -1, v81, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v82, v81, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v81, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v81, -1, v81, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v83, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v83, -1, v83, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v82, v83, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v83, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v83, -1, v83, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v84, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v85, v84, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v84, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v86, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v85, v86, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v86, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v87, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v87, -1, v87, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v88, v87, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v87, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v87, -1, v87, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v89, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v89, -1, v89, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v88, v89, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v89, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v89, -1, v89, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v90, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v91, v90, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v90, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v92, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v91, v92, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v92, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,1,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=1 vc0=0
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v93, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v93, -1, v93, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v94, v93, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v93, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v93, -1, v93, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,1,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v95, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v95, -1, v95, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v94, v95, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v95, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v95, -1, v95, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,1,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v96, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v97, v96, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v96, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,1,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v98, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v97, v98, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v98, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 1, 5, 2), (0, 1, 5, 3), (0, 1, 5, 4), (0, 1, 5, 5), (0, 1, 5, 6), (0, 1, 5, 7), (0, 0, 6, 0), (0, 0, 6, 1), (0, 0, 6, 2), (0, 0, 6, 3), (0, 0, 6, 4), (0, 0, 6, 5), (0, 0, 6, 6), (0, 0, 6, 7), (0, 1, 6, 0), (0, 1, 6, 1), (0, 1, 6, 2), (0, 1, 6, 3)] */
v_pk_mul_f16 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha sumIdx=91 vi=0
v_pk_mul_f16 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha sumIdx=93 vi=0
v_pk_mul_f16 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha sumIdx=95 vi=0
v_pk_mul_f16 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha sumIdx=97 vi=0
v_pk_mul_f16 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha sumIdx=99 vi=0
v_pk_mul_f16 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha sumIdx=101 vi=0
v_pk_mul_f16 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha sumIdx=103 vi=0
v_pk_mul_f16 v[vgprValuC+52], s[sgprAlpha], v[vgprValuC+52] // *= alpha sumIdx=105 vi=0
v_pk_mul_f16 v[vgprValuC+53], s[sgprAlpha], v[vgprValuC+53] // *= alpha sumIdx=107 vi=0
s_waitcnt vmcnt(0)                                 // wait C
s_waitcnt_vscnt null, 0                            // writes

/* apply mask, calc new C and issue writes */
v_pk_mul_f16 v73, s[sgprBeta], v73                 // v73 = C*beta ei=0 vi=0
v_pk_add_f16 v[vgprValuC+45], v73, v[vgprValuC+45] // sum*alpha + C*beta
_buffer_store_b16 v45, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v45, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v76, s[sgprBeta], v76                 // v76 = C*beta ei=2 vi=0
v_pk_add_f16 v[vgprValuC+46], v76, v[vgprValuC+46] // sum*alpha + C*beta
_buffer_store_b16 v46, v75, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v46, v77, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v79, s[sgprBeta], v79                 // v79 = C*beta ei=4 vi=0
v_pk_add_f16 v[vgprValuC+47], v79, v[vgprValuC+47] // sum*alpha + C*beta
_buffer_store_b16 v47, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v47, v80, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v82, s[sgprBeta], v82                 // v82 = C*beta ei=6 vi=0
v_pk_add_f16 v[vgprValuC+48], v82, v[vgprValuC+48] // sum*alpha + C*beta
_buffer_store_b16 v48, v81, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v48, v83, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v85, s[sgprBeta], v85                 // v85 = C*beta ei=8 vi=0
v_pk_add_f16 v[vgprValuC+49], v85, v[vgprValuC+49] // sum*alpha + C*beta
_buffer_store_b16 v49, v84, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v49, v86, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v88, s[sgprBeta], v88                 // v88 = C*beta ei=10 vi=0
v_pk_add_f16 v[vgprValuC+50], v88, v[vgprValuC+50] // sum*alpha + C*beta
_buffer_store_b16 v50, v87, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v50, v89, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v91, s[sgprBeta], v91                 // v91 = C*beta ei=12 vi=0
v_pk_add_f16 v[vgprValuC+51], v91, v[vgprValuC+51] // sum*alpha + C*beta
_buffer_store_b16 v51, v90, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v51, v92, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v94, s[sgprBeta], v94                 // v94 = C*beta ei=14 vi=0
v_pk_add_f16 v[vgprValuC+52], v94, v[vgprValuC+52] // sum*alpha + C*beta
_buffer_store_b16 v52, v93, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v52, v95, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v97, s[sgprBeta], v97                 // v97 = C*beta ei=16 vi=0
v_pk_add_f16 v[vgprValuC+53], v97, v[vgprValuC+53] // sum*alpha + C*beta
_buffer_store_b16 v53, v96, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v53, v98, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #6 (d1,d0,vc1,vc0) = */
/*    (0,1,6,4:vw1); (0,1,6,5:vw1); (0,1,6,6:vw1); (0,1,6,7:vw1); (0,0,7,0:vw1); (0,0,7,1:vw1); (0,0,7,2:vw1); (0,0,7,3:vw1); (0,0,7,4:vw1); (0,0,7,5:vw1); (0,0,7,6:vw1); (0,0,7,7:vw1); (0,1,7,0:vw1); (0,1,7,1:vw1); (0,1,7,2:vw1); (0,1,7,3:vw1); (0,1,7,4:vw1); (0,1,7,5:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,6,1,4) */
s_mov_b32 s54, 132                                 // coordOffset0 d0=1 vc0=4
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v72, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v73, v72, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v72, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,1,5) */
s_mov_b32 s54, 133                                 // coordOffset0 d0=1 vc0=5
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v74, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v73, v74, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v74, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,1,6) */
s_mov_b32 s54, 134                                 // coordOffset0 d0=1 vc0=6
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v75, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v75, -1, v75, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v76, v75, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v75, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v75, -1, v75, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,1,7) */
s_mov_b32 s54, 135                                 // coordOffset0 d0=1 vc0=7
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v77, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, -1, v77, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v76, v77, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v77, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, -1, v77, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v78, v68, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v79, v78, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v78, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v80, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v79, v80, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v80, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v81, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v81, -1, v81, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v82, v81, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v81, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v81, -1, v81, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v83, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v83, -1, v83, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v82, v83, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v83, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v83, -1, v83, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v84, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v85, v84, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v84, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v86, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v85, v86, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v86, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v87, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v87, -1, v87, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v88, v87, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v87, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v87, -1, v87, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v89, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v89, -1, v89, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v88, v89, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v89, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v89, -1, v89, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,1,0) */
s_mov_b32 s54, 128                                 // coordOffset0 d0=1 vc0=0
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v90, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v91, v90, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v90, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,1,1) */
s_mov_b32 s54, 129                                 // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v92, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v91, v92, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v92, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,1,2) */
s_mov_b32 s54, 130                                 // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v93, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v93, -1, v93, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v94, v93, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v93, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v93, -1, v93, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,1,3) */
s_mov_b32 s54, 131                                 // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v95, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v95, -1, v95, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v94, v95, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v95, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v95, -1, v95, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,1,4) */
s_mov_b32 s54, 132                                 // coordOffset0 d0=1 vc0=4
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v96, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v97, v96, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v96, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,1,5) */
s_mov_b32 s54, 133                                 // coordOffset0 d0=1 vc0=5
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v98, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v97, v98, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v98, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 1, 6, 4), (0, 1, 6, 5), (0, 1, 6, 6), (0, 1, 6, 7), (0, 0, 7, 0), (0, 0, 7, 1), (0, 0, 7, 2), (0, 0, 7, 3), (0, 0, 7, 4), (0, 0, 7, 5), (0, 0, 7, 6), (0, 0, 7, 7), (0, 1, 7, 0), (0, 1, 7, 1), (0, 1, 7, 2), (0, 1, 7, 3), (0, 1, 7, 4), (0, 1, 7, 5)] */
v_pk_mul_f16 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha sumIdx=109 vi=0
v_pk_mul_f16 v[vgprValuC+55], s[sgprAlpha], v[vgprValuC+55] // *= alpha sumIdx=111 vi=0
v_pk_mul_f16 v[vgprValuC+56], s[sgprAlpha], v[vgprValuC+56] // *= alpha sumIdx=113 vi=0
v_pk_mul_f16 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha sumIdx=115 vi=0
v_pk_mul_f16 v[vgprValuC+58], s[sgprAlpha], v[vgprValuC+58] // *= alpha sumIdx=117 vi=0
v_pk_mul_f16 v[vgprValuC+59], s[sgprAlpha], v[vgprValuC+59] // *= alpha sumIdx=119 vi=0
v_pk_mul_f16 v[vgprValuC+60], s[sgprAlpha], v[vgprValuC+60] // *= alpha sumIdx=121 vi=0
v_pk_mul_f16 v[vgprValuC+61], s[sgprAlpha], v[vgprValuC+61] // *= alpha sumIdx=123 vi=0
v_pk_mul_f16 v[vgprValuC+62], s[sgprAlpha], v[vgprValuC+62] // *= alpha sumIdx=125 vi=0
s_waitcnt vmcnt(0)                                 // wait C
s_waitcnt_vscnt null, 0                            // writes

/* apply mask, calc new C and issue writes */
v_pk_mul_f16 v73, s[sgprBeta], v73                 // v73 = C*beta ei=0 vi=0
v_pk_add_f16 v[vgprValuC+54], v73, v[vgprValuC+54] // sum*alpha + C*beta
_buffer_store_b16 v54, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v54, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v76, s[sgprBeta], v76                 // v76 = C*beta ei=2 vi=0
v_pk_add_f16 v[vgprValuC+55], v76, v[vgprValuC+55] // sum*alpha + C*beta
_buffer_store_b16 v55, v75, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v55, v77, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v79, s[sgprBeta], v79                 // v79 = C*beta ei=4 vi=0
v_pk_add_f16 v[vgprValuC+56], v79, v[vgprValuC+56] // sum*alpha + C*beta
_buffer_store_b16 v56, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v56, v80, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v82, s[sgprBeta], v82                 // v82 = C*beta ei=6 vi=0
v_pk_add_f16 v[vgprValuC+57], v82, v[vgprValuC+57] // sum*alpha + C*beta
_buffer_store_b16 v57, v81, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v57, v83, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v85, s[sgprBeta], v85                 // v85 = C*beta ei=8 vi=0
v_pk_add_f16 v[vgprValuC+58], v85, v[vgprValuC+58] // sum*alpha + C*beta
_buffer_store_b16 v58, v84, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v58, v86, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v88, s[sgprBeta], v88                 // v88 = C*beta ei=10 vi=0
v_pk_add_f16 v[vgprValuC+59], v88, v[vgprValuC+59] // sum*alpha + C*beta
_buffer_store_b16 v59, v87, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v59, v89, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v91, s[sgprBeta], v91                 // v91 = C*beta ei=12 vi=0
v_pk_add_f16 v[vgprValuC+60], v91, v[vgprValuC+60] // sum*alpha + C*beta
_buffer_store_b16 v60, v90, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v60, v92, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v94, s[sgprBeta], v94                 // v94 = C*beta ei=14 vi=0
v_pk_add_f16 v[vgprValuC+61], v94, v[vgprValuC+61] // sum*alpha + C*beta
_buffer_store_b16 v61, v93, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v61, v95, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_pk_mul_f16 v97, s[sgprBeta], v97                 // v97 = C*beta ei=16 vi=0
v_pk_add_f16 v[vgprValuC+62], v97, v[vgprValuC+62] // sum*alpha + C*beta
_buffer_store_b16 v62, v96, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v62, v98, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #7 (d1,d0,vc1,vc0) = */
/*    (0,1,7,6:vw1); (0,1,7,7:vw1)        */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,7,1,6) */
s_mov_b32 s54, 134                                 // coordOffset0 d0=1 vc0=6
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v72, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v73, v72, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v72, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,1,7) */
s_mov_b32 s54, 135                                 // coordOffset0 d0=1 vc0=7
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v74, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v73, v74, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v74, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 1, 7, 6), (0, 1, 7, 7)] */
v_pk_mul_f16 v[vgprValuC+63], s[sgprAlpha], v[vgprValuC+63] // *= alpha sumIdx=127 vi=0
s_waitcnt vmcnt(0)                                 // wait C
s_waitcnt_vscnt null, 0                            // writes

/* apply mask, calc new C and issue writes */
v_pk_mul_f16 v73, s[sgprBeta], v73                 // v73 = C*beta ei=0 vi=0
v_pk_add_f16 v[vgprValuC+63], v73, v[vgprValuC+63] // sum*alpha + C*beta
_buffer_store_b16 v63, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_d16_hi_b16 v63, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_branch label_GW_End_82                           // jump to end
label_GW_End_82:

label_0087:  /// KernelEnd
s_endpgm                                           // Kernel End

