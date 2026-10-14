
/******************************************/
/* Function Prefix                        */
/******************************************/



/******************************************/
/* Begin Kernel                           */
/******************************************/

// Component.Signature.SignatureDefault
.amdgcn_target "amdgcn-amd-amdhsa--gfx1010"
.text
.protected Cijk_Ailk_Bjlk_SB_MT128x64x8_SN_K1_PGR1_TT8_8_WG16_8_1
.globl Cijk_Ailk_Bjlk_SB_MT128x64x8_SN_K1_PGR1_TT8_8_WG16_8_1
.p2align 8
.type Cijk_Ailk_Bjlk_SB_MT128x64x8_SN_K1_PGR1_TT8_8_WG16_8_1,@function
.section .rodata,#alloc
.p2align 6
.amdhsa_kernel Cijk_Ailk_Bjlk_SB_MT128x64x8_SN_K1_PGR1_TT8_8_WG16_8_1
  .amdhsa_user_sgpr_kernarg_segment_ptr 1
  .amdhsa_user_sgpr_count 2
  .amdhsa_next_free_vgpr 119 // vgprs
  .amdhsa_next_free_sgpr 63 // sgprs
  .amdhsa_group_segment_fixed_size 14336 // lds bytes
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
  - .name: Cijk_Ailk_Bjlk_SB_MT128x64x8_SN_K1_PGR1_TT8_8_WG16_8_1
    .symbol: 'Cijk_Ailk_Bjlk_SB_MT128x64x8_SN_K1_PGR1_TT8_8_WG16_8_1.kd'
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
    .group_segment_fixed_size:   14336
    .kernarg_segment_align:      8
    .kernarg_segment_size:       128
    .max_flat_workgroup_size:    128
    .private_segment_fixed_size: 0
    .sgpr_count:                 63
    .sgpr_spill_count:           0
    .vgpr_count:                 119
    .vgpr_spill_count:           0
    .wavefront_size:             32
...
.end_amdgpu_metadata
Cijk_Ailk_Bjlk_SB_MT128x64x8_SN_K1_PGR1_TT8_8_WG16_8_1:

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
.set vgprG2LA, 104
.set vgprValuB_X0_I0, 83
.set vgprValuB_X1_I0, 91
.set vgprG2LB, 112
.set vgprLocalWriteAddrA, 99
.set vgprLocalWriteAddrB, 100
.set vgprGlobalReadOffsetA, 101
.set vgprGlobalReadOffsetB, 103
.set vgprLocalReadAddrA, 116
.set vgprLocalReadAddrB, 117
.set vgprSerial, 118
/* Num VGPR=119 */
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

.set MT0, 128
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
/* 8x8 thread-tile                        */
/******************************************/
.macro MAC_8x8_X0
// Component.MAC.MAC_F32_Plain
v_fmac_f32 v[vgprValuC + 0 + 0*8], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 0]
s_setprio 1 // Raise priority while processing macs
v_fmac_f32 v[vgprValuC + 1 + 0*8], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 2 + 0*8], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 3 + 0*8], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 4 + 0*8], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 5 + 0*8], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 6 + 0*8], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 7 + 0*8], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 0]
v_fmac_f32 v[vgprValuC + 0 + 1*8], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 1 + 1*8], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 2 + 1*8], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 3 + 1*8], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 4 + 1*8], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 5 + 1*8], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 6 + 1*8], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 7 + 1*8], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 1]
v_fmac_f32 v[vgprValuC + 0 + 2*8], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 1 + 2*8], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 2 + 2*8], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 3 + 2*8], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 4 + 2*8], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 5 + 2*8], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 6 + 2*8], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 7 + 2*8], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 2]
v_fmac_f32 v[vgprValuC + 0 + 3*8], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 1 + 3*8], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 2 + 3*8], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 3 + 3*8], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 4 + 3*8], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 5 + 3*8], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 6 + 3*8], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 7 + 3*8], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 3]
v_fmac_f32 v[vgprValuC + 0 + 4*8], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 1 + 4*8], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 2 + 4*8], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 3 + 4*8], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 4 + 4*8], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 5 + 4*8], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 6 + 4*8], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 7 + 4*8], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 4]
v_fmac_f32 v[vgprValuC + 0 + 5*8], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 1 + 5*8], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 2 + 5*8], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 3 + 5*8], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 4 + 5*8], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 5 + 5*8], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 6 + 5*8], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 7 + 5*8], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 5]
v_fmac_f32 v[vgprValuC + 0 + 6*8], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 1 + 6*8], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 2 + 6*8], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 3 + 6*8], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 4 + 6*8], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 5 + 6*8], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 6 + 6*8], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 7 + 6*8], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 6]
v_fmac_f32 v[vgprValuC + 0 + 7*8], v[vgprValuA_X0_I0 + 0], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 1 + 7*8], v[vgprValuA_X0_I0 + 1], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 2 + 7*8], v[vgprValuA_X0_I0 + 2], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 3 + 7*8], v[vgprValuA_X0_I0 + 3], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 4 + 7*8], v[vgprValuA_X0_I0 + 4], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 5 + 7*8], v[vgprValuA_X0_I0 + 5], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 6 + 7*8], v[vgprValuA_X0_I0 + 6], v[vgprValuB_X0_I0 + 7]
v_fmac_f32 v[vgprValuC + 7 + 7*8], v[vgprValuA_X0_I0 + 7], v[vgprValuB_X0_I0 + 7]
s_setprio 0 // Reset priority after macs
.endm
.macro MAC_8x8_X1
// Component.MAC.MAC_F32_Plain
v_fmac_f32 v[vgprValuC + 0 + 0*8], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 0]
s_setprio 1 // Raise priority while processing macs
v_fmac_f32 v[vgprValuC + 1 + 0*8], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 0]
v_fmac_f32 v[vgprValuC + 2 + 0*8], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 0]
v_fmac_f32 v[vgprValuC + 3 + 0*8], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 0]
v_fmac_f32 v[vgprValuC + 4 + 0*8], v[vgprValuA_X1_I0 + 4], v[vgprValuB_X1_I0 + 0]
v_fmac_f32 v[vgprValuC + 5 + 0*8], v[vgprValuA_X1_I0 + 5], v[vgprValuB_X1_I0 + 0]
v_fmac_f32 v[vgprValuC + 6 + 0*8], v[vgprValuA_X1_I0 + 6], v[vgprValuB_X1_I0 + 0]
v_fmac_f32 v[vgprValuC + 7 + 0*8], v[vgprValuA_X1_I0 + 7], v[vgprValuB_X1_I0 + 0]
v_fmac_f32 v[vgprValuC + 0 + 1*8], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 1]
v_fmac_f32 v[vgprValuC + 1 + 1*8], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 1]
v_fmac_f32 v[vgprValuC + 2 + 1*8], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 1]
v_fmac_f32 v[vgprValuC + 3 + 1*8], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 1]
v_fmac_f32 v[vgprValuC + 4 + 1*8], v[vgprValuA_X1_I0 + 4], v[vgprValuB_X1_I0 + 1]
v_fmac_f32 v[vgprValuC + 5 + 1*8], v[vgprValuA_X1_I0 + 5], v[vgprValuB_X1_I0 + 1]
v_fmac_f32 v[vgprValuC + 6 + 1*8], v[vgprValuA_X1_I0 + 6], v[vgprValuB_X1_I0 + 1]
v_fmac_f32 v[vgprValuC + 7 + 1*8], v[vgprValuA_X1_I0 + 7], v[vgprValuB_X1_I0 + 1]
v_fmac_f32 v[vgprValuC + 0 + 2*8], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 2]
v_fmac_f32 v[vgprValuC + 1 + 2*8], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 2]
v_fmac_f32 v[vgprValuC + 2 + 2*8], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 2]
v_fmac_f32 v[vgprValuC + 3 + 2*8], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 2]
v_fmac_f32 v[vgprValuC + 4 + 2*8], v[vgprValuA_X1_I0 + 4], v[vgprValuB_X1_I0 + 2]
v_fmac_f32 v[vgprValuC + 5 + 2*8], v[vgprValuA_X1_I0 + 5], v[vgprValuB_X1_I0 + 2]
v_fmac_f32 v[vgprValuC + 6 + 2*8], v[vgprValuA_X1_I0 + 6], v[vgprValuB_X1_I0 + 2]
v_fmac_f32 v[vgprValuC + 7 + 2*8], v[vgprValuA_X1_I0 + 7], v[vgprValuB_X1_I0 + 2]
v_fmac_f32 v[vgprValuC + 0 + 3*8], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 3]
v_fmac_f32 v[vgprValuC + 1 + 3*8], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 3]
v_fmac_f32 v[vgprValuC + 2 + 3*8], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 3]
v_fmac_f32 v[vgprValuC + 3 + 3*8], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 3]
v_fmac_f32 v[vgprValuC + 4 + 3*8], v[vgprValuA_X1_I0 + 4], v[vgprValuB_X1_I0 + 3]
v_fmac_f32 v[vgprValuC + 5 + 3*8], v[vgprValuA_X1_I0 + 5], v[vgprValuB_X1_I0 + 3]
v_fmac_f32 v[vgprValuC + 6 + 3*8], v[vgprValuA_X1_I0 + 6], v[vgprValuB_X1_I0 + 3]
v_fmac_f32 v[vgprValuC + 7 + 3*8], v[vgprValuA_X1_I0 + 7], v[vgprValuB_X1_I0 + 3]
v_fmac_f32 v[vgprValuC + 0 + 4*8], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 4]
v_fmac_f32 v[vgprValuC + 1 + 4*8], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 4]
v_fmac_f32 v[vgprValuC + 2 + 4*8], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 4]
v_fmac_f32 v[vgprValuC + 3 + 4*8], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 4]
v_fmac_f32 v[vgprValuC + 4 + 4*8], v[vgprValuA_X1_I0 + 4], v[vgprValuB_X1_I0 + 4]
v_fmac_f32 v[vgprValuC + 5 + 4*8], v[vgprValuA_X1_I0 + 5], v[vgprValuB_X1_I0 + 4]
v_fmac_f32 v[vgprValuC + 6 + 4*8], v[vgprValuA_X1_I0 + 6], v[vgprValuB_X1_I0 + 4]
v_fmac_f32 v[vgprValuC + 7 + 4*8], v[vgprValuA_X1_I0 + 7], v[vgprValuB_X1_I0 + 4]
v_fmac_f32 v[vgprValuC + 0 + 5*8], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 5]
v_fmac_f32 v[vgprValuC + 1 + 5*8], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 5]
v_fmac_f32 v[vgprValuC + 2 + 5*8], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 5]
v_fmac_f32 v[vgprValuC + 3 + 5*8], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 5]
v_fmac_f32 v[vgprValuC + 4 + 5*8], v[vgprValuA_X1_I0 + 4], v[vgprValuB_X1_I0 + 5]
v_fmac_f32 v[vgprValuC + 5 + 5*8], v[vgprValuA_X1_I0 + 5], v[vgprValuB_X1_I0 + 5]
v_fmac_f32 v[vgprValuC + 6 + 5*8], v[vgprValuA_X1_I0 + 6], v[vgprValuB_X1_I0 + 5]
v_fmac_f32 v[vgprValuC + 7 + 5*8], v[vgprValuA_X1_I0 + 7], v[vgprValuB_X1_I0 + 5]
v_fmac_f32 v[vgprValuC + 0 + 6*8], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 6]
v_fmac_f32 v[vgprValuC + 1 + 6*8], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 6]
v_fmac_f32 v[vgprValuC + 2 + 6*8], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 6]
v_fmac_f32 v[vgprValuC + 3 + 6*8], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 6]
v_fmac_f32 v[vgprValuC + 4 + 6*8], v[vgprValuA_X1_I0 + 4], v[vgprValuB_X1_I0 + 6]
v_fmac_f32 v[vgprValuC + 5 + 6*8], v[vgprValuA_X1_I0 + 5], v[vgprValuB_X1_I0 + 6]
v_fmac_f32 v[vgprValuC + 6 + 6*8], v[vgprValuA_X1_I0 + 6], v[vgprValuB_X1_I0 + 6]
v_fmac_f32 v[vgprValuC + 7 + 6*8], v[vgprValuA_X1_I0 + 7], v[vgprValuB_X1_I0 + 6]
v_fmac_f32 v[vgprValuC + 0 + 7*8], v[vgprValuA_X1_I0 + 0], v[vgprValuB_X1_I0 + 7]
v_fmac_f32 v[vgprValuC + 1 + 7*8], v[vgprValuA_X1_I0 + 1], v[vgprValuB_X1_I0 + 7]
v_fmac_f32 v[vgprValuC + 2 + 7*8], v[vgprValuA_X1_I0 + 2], v[vgprValuB_X1_I0 + 7]
v_fmac_f32 v[vgprValuC + 3 + 7*8], v[vgprValuA_X1_I0 + 3], v[vgprValuB_X1_I0 + 7]
v_fmac_f32 v[vgprValuC + 4 + 7*8], v[vgprValuA_X1_I0 + 4], v[vgprValuB_X1_I0 + 7]
v_fmac_f32 v[vgprValuC + 5 + 7*8], v[vgprValuA_X1_I0 + 5], v[vgprValuB_X1_I0 + 7]
v_fmac_f32 v[vgprValuC + 6 + 7*8], v[vgprValuA_X1_I0 + 6], v[vgprValuB_X1_I0 + 7]
v_fmac_f32 v[vgprValuC + 7 + 7*8], v[vgprValuA_X1_I0 + 7], v[vgprValuB_X1_I0 + 7]
s_setprio 0 // Reset priority after macs
.endm



/******************************************/
/* Allocate Resources                     */
/******************************************/

Cijk_Ailk_Bjlk_SB_MT128x64x8_SN_K1_PGR1_TT8_8_WG16_8_1_preloaded: // Kernel start when preloading
s_mov_b32 vcc_hi, 0                                // Ensure hi bits are zero

/* Load Kernel Args */
_s_load_b512 s[24:39], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x0 // 
_s_load_b512 s[40:55], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x40 // 
s_mov_b32 m0, 0x3800                               // LDS clamp at 14336 bytes
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

_v_add_co_u32 v[vgprLocalReadAddrB+0], vcc_lo, 0x1000, v[vgprLocalReadAddrB+0] //  += LdsOffsetB (lower)


/* global read addresses: tile offset assignment a */

/* LVCA = 32 */
/* v0 = (local)groA-tile = serial%LVCA (note (wgA*MTA) will be added to SRD) */
/* v1 = groA-unroll = serial/LVCA */
v_lshrrev_b32 v1, 5, v[vgprSerial]                 // v1 = v[vgprSerial] / 32
v_and_b32 v0, 31, v[vgprSerial]                    // v0 = v[vgprSerial] % 32
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

v_mul_u32_u24 v[vgprLocalWriteAddrA], 0x80, v1     // lwAL**(MTA + PAD)
_v_add_lshl_u32 v[vgprLocalWriteAddrA], v0, v[vgprLocalWriteAddrA], 0x2 // lwFOA = (lwAA + lwAL*(MT0I+PAD))*bpe


/* local write addresses: first offset b */

v_mul_u32_u24 v[vgprLocalWriteAddrB], 0x40, v3     // lwBL**(MTB + PAD)
_v_add_lshl_u32 v[vgprLocalWriteAddrB], v2, v[vgprLocalWriteAddrB], 0x2 // lwFOB = (lwBB + lwBL*(MT1J+PAD))*bpe
_v_add_co_u32 v[vgprLocalWriteAddrB], vcc_lo, 0x1000, v[vgprLocalWriteAddrB] // lwFOB = lwB1J + lwBL*MT1J + LDS_OFFSET_B=1024*4







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
_v_add_co_u32 v7, vcc_lo, 4, v6                    // groAL_1 + LSPA


/* global read addresses: unroll offsets b */

v_mov_b32 v8, v3                                   // groBL_0


/* global read addresses: shift a */

s_mul_i32 s58, s[sgprWorkGroup0], 128              // WorkGroup[01] * MT
s_sub_u32 s58, s[sgprSizeI], s58                   // edge = Size0I - WG*MT
s_sub_u32 s58, s58, 4                              // edge -= margin(4)
v_mov_b32 v9, s58                                  // edge vgpr = Size0I- WG*MT - margin(4)
v_min_i32 v4, v9, v4                               // offset = (offset < edge) ? offset(v4) : edge(v9)


/* global read addresses: shift b */

s_mul_i32 s58, s[sgprWorkGroup1], 64               // WorkGroup[01] * MT
s_sub_u32 s58, s[sgprSizeJ], s58                   // edge = Size1J - WG*MT
s_sub_u32 s58, s58, 4                              // edge -= margin(4)
v_mov_b32 v9, s58                                  // edge vgpr = Size1J- WG*MT - margin(4)
v_min_i32 v5, v9, v5                               // offset = (offset < edge) ? offset(v5) : edge(v9)


/* global read addresses: final offsets a */

GLOBAL_OFFSET_A vgprGlobalReadOffsetA+0,  4,  6, 9 // gROA_0_0_0_0
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+1,  4,  7, 9 // gROA_0_0_1_0


/* global read addresses: final offsets b */

GLOBAL_OFFSET_B vgprGlobalReadOffsetB+0,  5,  8, 9 // gROB_0_0_0_0


/* global read addresses: addresses a */

/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s61, s[sgprWorkGroup0], 128           // WorkGroup[01] * MT
s_mul_i32 s60, s[sgprWorkGroup0], 128              // WorkGroup[01] * MT
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



/* initC: remove C-tile 0-64 from pool */

/* initC: remove AB-tile 66-99 from pool */
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
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+3] offset:2048 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 2048

/* local write b */
_ds_store_b128 v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+3] offset:0 // lwoB_0_0_0_0 = (0*LSCB) + (0*LSPB)(*MT1J+PAD) = 0


/* local write swap a */


/* (EPS=1) local write swap internal offset -> 8192 */


/* local write swap b */


/* (EPS=1) local write swap internal offset -> 8192 */



s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-10prefetch wait for local write

s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //


/* local read prefetch a */

_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0


/* local read prefetch b */

_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0


/* local read inc a */

/* N/A, lro->128 */
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
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:512 // L -> Reg lro=128 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:768 // L -> Reg lro=128 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
_buffer_load_b128 v[vgprG2LA+0:vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_0_0
_buffer_load_b128 v[vgprG2LA+4:vgprG2LA+4+3], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_1_0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:256 // L -> Reg lro=64 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:384 // L -> Reg lro=64 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->128 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
MAC_8x8_X0

/* iter 1 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_buffer_load_b128 v[vgprG2LB+0:vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:512 // L -> Reg lro=128 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:640 // L -> Reg lro=128 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->384 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->192 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
MAC_8x8_X1

/* iter 2 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:1536 // L -> Reg lro=384 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:1792 // L -> Reg lro=384 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

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
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:768 // L -> Reg lro=192 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:896 // L -> Reg lro=192 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->512 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
MAC_8x8_X0

/* iter 3 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:2048 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:2304 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

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
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1024 // L -> Reg lro=256 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:1152 // L -> Reg lro=256 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->640 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->320 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
MAC_8x8_X1

/* iter 4 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:2560 // L -> Reg lro=640 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:2816 // L -> Reg lro=640 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1280 // L -> Reg lro=320 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:1408 // L -> Reg lro=320 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->768 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->384 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
/* sched write - iter 4 writesPerItem=1 */
s_waitcnt vmcnt(2)                                 // lgkmcnt=-1 vmcnt=2wait for global read before writing to local
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+3] offset:8192 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 8192
s_waitcnt lgkmcnt(5)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=5 newLW=0 newLR=0
MAC_8x8_X0

/* iter 5 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:3072 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:3328 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1536 // L -> Reg lro=384 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:1664 // L -> Reg lro=384 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->896 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->448 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
/* sched write - iter 5 writesPerItem=1 */
s_waitcnt vmcnt(1)                                 // lgkmcnt=-1 vmcnt=1wait for global read before writing to local
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+3] offset:10240 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 10240
s_waitcnt lgkmcnt(5)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=5 newLW=0 newLR=0
MAC_8x8_X1

/* iter 6 (reset local read pointers iteration)  (swap and reset local write pointers iteration)  (swap local read pointers iteration)  */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=896 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:3840 // L -> Reg lro=896 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1792 // L -> Reg lro=448 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:1920 // L -> Reg lro=448 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
/* sched write - iter 6 writesPerItem=1 */
s_waitcnt vmcnt(0)                                 // lgkmcnt=-1 vmcnt=0wait for global read before writing to local
_ds_store_b128 v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+3] offset:8192 // lwoB_0_0_0_0 = (0*LSCB) + (0*LSPB)(*MT1J+PAD) = 8192

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
s_waitcnt lgkmcnt(5)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=5 newLW=0 newLR=0
MAC_8x8_X0

/* iter 7 */

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-13wait for local write
s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //

/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:8192 // L -> Reg lro=0 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:8448 // L -> Reg lro=0 swapByteOffset=8192 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:8192 // L -> Reg lro=0 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:8320 // L -> Reg lro=0 swapByteOffset=8192 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->128 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->64 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
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
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:8704 // L -> Reg lro=128 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:8960 // L -> Reg lro=128 swapByteOffset=8192 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
_buffer_load_b128 v[vgprG2LA+0:vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_0_0
_buffer_load_b128 v[vgprG2LA+4:vgprG2LA+4+3], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_1_0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:8448 // L -> Reg lro=64 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:8576 // L -> Reg lro=64 swapByteOffset=8192 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->128 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
MAC_8x8_X0

/* iter 1 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:9216 // L -> Reg lro=256 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:9472 // L -> Reg lro=256 swapByteOffset=8192 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
_buffer_load_b128 v[vgprG2LB+0:vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:8704 // L -> Reg lro=128 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:8832 // L -> Reg lro=128 swapByteOffset=8192 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->384 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->192 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
MAC_8x8_X1

/* iter 2 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:9728 // L -> Reg lro=384 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:9984 // L -> Reg lro=384 swapByteOffset=8192 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

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
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:8960 // L -> Reg lro=192 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:9088 // L -> Reg lro=192 swapByteOffset=8192 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->512 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
MAC_8x8_X0

/* iter 3 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:10240 // L -> Reg lro=512 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:10496 // L -> Reg lro=512 swapByteOffset=8192 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

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
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:9216 // L -> Reg lro=256 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:9344 // L -> Reg lro=256 swapByteOffset=8192 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->640 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->320 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
MAC_8x8_X1

/* iter 4 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:10752 // L -> Reg lro=640 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:11008 // L -> Reg lro=640 swapByteOffset=8192 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:9472 // L -> Reg lro=320 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:9600 // L -> Reg lro=320 swapByteOffset=8192 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->768 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->384 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
/* sched write - iter 4 writesPerItem=1 */
s_waitcnt vmcnt(2)                                 // lgkmcnt=-1 vmcnt=2wait for global read before writing to local
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+3] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0
s_waitcnt lgkmcnt(5)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=5 newLW=0 newLR=0
MAC_8x8_X0

/* iter 5 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:11264 // L -> Reg lro=768 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:11520 // L -> Reg lro=768 swapByteOffset=8192 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:9728 // L -> Reg lro=384 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:9856 // L -> Reg lro=384 swapByteOffset=8192 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->896 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->448 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
/* sched write - iter 5 writesPerItem=1 */
s_waitcnt vmcnt(1)                                 // lgkmcnt=-1 vmcnt=1wait for global read before writing to local
_ds_store_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+3] offset:2048 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 2048
s_waitcnt lgkmcnt(5)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=5 newLW=0 newLR=0
MAC_8x8_X1

/* iter 6 (reset local read pointers iteration)  (swap and reset local write pointers iteration)  (swap local read pointers iteration)  */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:11776 // L -> Reg lro=896 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:12032 // L -> Reg lro=896 swapByteOffset=8192 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:9984 // L -> Reg lro=448 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:10112 // L -> Reg lro=448 swapByteOffset=8192 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
/* sched write - iter 6 writesPerItem=1 */
s_waitcnt vmcnt(0)                                 // lgkmcnt=-1 vmcnt=0wait for global read before writing to local
_ds_store_b128 v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+3] offset:0 // lwoB_0_0_0_0 = (0*LSCB) + (0*LSPB)(*MT1J+PAD) = 0

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
s_waitcnt lgkmcnt(5)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=5 newLW=0 newLR=0
MAC_8x8_X0

/* iter 7 */

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-13wait for local write
s_waitcnt_lgkmcnt null, 0                          // extra navi wait
s_barrier //

/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->128 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->64 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
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

s_cmp_eq_u32 s[sgprAlpha], 1.0                     // Alpha == 1.0 ?
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

s_and_b32 s57, 7, s[sgprSizesSum+0]                // s57 = s[sgprSizesSum+0] % 8
s_cmp_eq_u32 s57, 0x0                              // numIterL == 0
s_cbranch_scc0 OptNLL_End_15                       // skip if tail loop required



/* iter 0 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:512 // L -> Reg lro=128 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:768 // L -> Reg lro=128 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:256 // L -> Reg lro=64 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:384 // L -> Reg lro=64 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->128 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
MAC_8x8_X0

/* iter 1 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:512 // L -> Reg lro=128 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:640 // L -> Reg lro=128 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->384 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->192 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
MAC_8x8_X1

/* iter 2 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:1536 // L -> Reg lro=384 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:1792 // L -> Reg lro=384 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:768 // L -> Reg lro=192 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:896 // L -> Reg lro=192 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->512 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
MAC_8x8_X0

/* iter 3 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:2048 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:2304 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1024 // L -> Reg lro=256 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:1152 // L -> Reg lro=256 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->640 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->320 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
MAC_8x8_X1

/* iter 4 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:2560 // L -> Reg lro=640 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:2816 // L -> Reg lro=640 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1280 // L -> Reg lro=320 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:1408 // L -> Reg lro=320 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->768 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->384 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
MAC_8x8_X0

/* iter 5 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:3072 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:3328 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1536 // L -> Reg lro=384 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:1664 // L -> Reg lro=384 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->896 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->448 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
MAC_8x8_X1

/* iter 6 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=896 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:3840 // L -> Reg lro=896 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1792 // L -> Reg lro=448 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:1920 // L -> Reg lro=448 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
MAC_8x8_X0

/* iter 7 (last unrolled loop) */

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=0 newLW=0 newLR=0
MAC_8x8_X1
/* Stores for OptNLL */
Summation_End_OptNLL_16:
/* endSummation: add vgpr [66...116) to pool */
.set NumFullBlocks, UNDEF
.set WgmRemainder1, UNDEF
.set MagicNumberWgmRemainder1, UNDEF
/* computeStoreVgprs */
v_lshrrev_b32 v67, 4, v[vgprSerial]                // v67 = v[vgprSerial] / 16
v_and_b32 v66, 15, v[vgprSerial]                   // v66 = v[vgprSerial] % 16
v_lshlrev_b32 v66, 0x2, v66                        // v66 = v66 * 4
v_lshlrev_b32 v67, 0x2, v67                        // v67 = v67 * 4
v_mul_lo_u32 v68, v67, s[sgprStrideC1J]            // rowStart vgpr
v_mul_lo_u32 v69, v67, s[sgprStrideD1J]            // rowStart vgpr

s_mul_i32 s54, 0x80, s[sgprWorkGroup0]             // s54 = wg0*MT0
_v_add_co_u32 v66, vcc_lo, s54, v66                // coord0 = tid0*VW + wg0*MT0
s_mul_i32 s56, 0x40, s[sgprWorkGroup1]             // <- wg1*MT1
_v_add_co_u32 v67, vcc_lo, s56, v67                // coord1 = tid1*VW + wg1*MT1
GW_B0_E0_19:

/* edge=0, allocate 1 sgpr. perBatchTmpS=1 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=16 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,1,0,0:vw4); (0,0,1,0:vw4); (0,1,1,0:vw4); (0,0,2,0:vw4); (0,1,2,0:vw4); (0,0,3,0:vw4); (0,1,3,0:vw4); (1,0,0,0:vw4); (1,1,0,0:vw4); (1,0,1,0:vw4); (1,1,1,0:vw4); (1,0,2,0:vw4); (1,1,2,0:vw4); (1,0,3,0:vw4); (1,1,3,0:vw4) */
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
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
/* (d1,vc1,d0,vc0)=(1,0,1,0) */
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
/* (d1,vc1,d0,vc0)=(1,1,1,0) */
/* (d1,vc1,d0,vc0)=(1,2,0,0) */
/* (d1,vc1,d0,vc0)=(1,2,1,0) */
/* (d1,vc1,d0,vc0)=(1,3,0,0) */
/* (d1,vc1,d0,vc0)=(1,3,1,0) */
_v_add_lshl_u32 v72, v69, v66, 0x2                 // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=66, coord0Vgpr=66

/* apply mask, calc new C and issue writes */
_buffer_store_b128 v[0:3], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[4:7], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[8:11], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[12:15], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[16:19], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[20:23], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[24:27], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[28:31], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_mul_i32 s54, s[sgprStrideD1J], 116               // scale StrideD *= numRows(29) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[32:35], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[36:39], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[40:43], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[44:47], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[48:51], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[52:55], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
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
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:512 // L -> Reg lro=128 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:768 // L -> Reg lro=128 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:256 // L -> Reg lro=64 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:384 // L -> Reg lro=64 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->128 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
MAC_8x8_X0

/* iter 1 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=256 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:512 // L -> Reg lro=128 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:640 // L -> Reg lro=128 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->384 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->192 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
MAC_8x8_X1

/* iter 2 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:1536 // L -> Reg lro=384 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:1792 // L -> Reg lro=384 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:768 // L -> Reg lro=192 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:896 // L -> Reg lro=192 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->512 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->256 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
MAC_8x8_X0

/* iter 3 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:2048 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:2304 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1024 // L -> Reg lro=256 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:1152 // L -> Reg lro=256 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->640 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->320 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
MAC_8x8_X1

/* iter 4 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:2560 // L -> Reg lro=640 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:2816 // L -> Reg lro=640 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1280 // L -> Reg lro=320 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:1408 // L -> Reg lro=320 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->768 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->384 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
MAC_8x8_X0

/* iter 5 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:3072 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:3328 // L -> Reg lro=768 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1536 // L -> Reg lro=384 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:1664 // L -> Reg lro=384 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->896 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->448 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
MAC_8x8_X1

/* iter 6 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=896 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuA_X1_I0+4:vgprValuA_X1_I0+4+3], v[vgprLocalReadAddrA] offset:3840 // L -> Reg lro=896 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1792 // L -> Reg lro=448 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:1920 // L -> Reg lro=448 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=1 iui=0
s_waitcnt lgkmcnt(4)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=4 newLW=0 newLR=0
MAC_8x8_X0

/* iter 7 (last unrolled loop) */

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=0 newLW=0 newLR=0
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


/* local write b */

_ds_store_b128 v[vgprLocalWriteAddrB], v[vgprG2LB+0:vgprG2LB+0+3] offset:0 // lwoB_0_0_0_0 = (0*LSCB) + (0*LSPB)(*MT1J+PAD) = 0


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
_ds_load_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0


/* local read b */

_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=8 vIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0


/* local read inc a */

s_mov_b32 s56, 0x200                               // inc
_v_add_co_u32 v[vgprLocalReadAddrA], vcc_lo, s56, v[vgprLocalReadAddrA] // lrA += 512 (LSU*(MT+PAD)*bpe)


/* local read inc b */

s_mov_b32 s56, 0x100                               // inc
_v_add_co_u32 v[vgprLocalReadAddrB], vcc_lo, s56, v[vgprLocalReadAddrB] // lrB += 256 (LSU*(MT+PAD)*bpe)

s_waitcnt lgkmcnt(0)                               // lgkmcnt=0 vmcnt=-14wait for local read

MAC_8x8_X0

/* closeLoop loopL finalLoop=1 tailLoop=1 */
s_sub_i32 s[sgprLoopCounterL], s[sgprLoopCounterL], 0x1 // dec counterL (tailLoop)
s_add_u32 s[sgprOrigLoopCounter], s[sgprOrigLoopCounter], 0x1 // inc counterL
s_cmp_le_i32 s[sgprLoopCounterL], 0x0              // counterL<=0
s_cbranch_scc0 TailLoopBeginL_6                    // restart LoopL
TailLoopEndL_7:

SkipTailLoopL_8:

Summation_End_28:
/* endSummation: add vgpr [66...116) to pool */
.set NumFullBlocks, UNDEF
.set WgmRemainder1, UNDEF
.set MagicNumberWgmRemainder1, UNDEF


/* shift vector components d0 */

v_mov_b32 v67, s[sgprWorkGroup0]                   // 
v_mul_i32_i24 v67, -0x80, v67                      // wg*MT
_v_add_co_u32 v67, vcc_lo, s[sgprSizesFree+0], v67 // wgMT = Size - wg*MT
v_mov_b32 v66, 0x80                                // MT
v_min_u32 v67, v66, v67                            // wgMT = (wgMT < MT) ? wgMT : MT
v_lshrrev_b32 v66, 2, v67                          // v66 = v67 / 4
v_and_b32 v68, 3, v67                              // v68 = v67 % 4
v_and_b32 v69, 15, v66                             // v69 = v66 % 16
v_and_b32 v70, 15, v[vgprSerial]                   // v70 = v[vgprSerial] % 16
v_lshrrev_b32 v71, 6, v67                          // v71 = v67 / 64
v_and_b32 v72, 3, v67                              // v72 = v67 % 4
v_mov_b32 v73, v72                                 // duplicate
v_lshrrev_b32 v72, 2, v73                          // v72 = v73 / 4
_v_add_co_u32 v72, vcc_lo, v71, v72                // vId = 2 components
v_cmp_eq_u32 vcc_lo, v68, 0x1                      // wgMT%VW == 1
s_cbranch_vccnz label_0029                         // shift d0 r=1
v_cmp_eq_u32 vcc_lo, v68, 0x2                      // wgMT%VW == 2
s_cbranch_vccnz label_0032                         // shift d0 r=2
v_cmp_eq_u32 vcc_lo, v68, 0x3                      // wgMT%VW == 3
s_cbranch_vccnz label_0035                         // shift d0 r=3
s_branch label_0038                                // no shifting

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
// src=3, dst=0
v_mov_b32 v0, v3                                   // rC[0+0*VW+0*TT0I] = rC[3+0*VW+0*TT0I]
// src=11, dst=8
v_mov_b32 v8, v11                                  // rC[0+0*VW+1*TT0I] = rC[3+0*VW+1*TT0I]
// src=19, dst=16
v_mov_b32 v16, v19                                 // rC[0+0*VW+2*TT0I] = rC[3+0*VW+2*TT0I]
// src=27, dst=24
v_mov_b32 v24, v27                                 // rC[0+0*VW+3*TT0I] = rC[3+0*VW+3*TT0I]
// src=35, dst=32
v_mov_b32 v32, v35                                 // rC[0+0*VW+4*TT0I] = rC[3+0*VW+4*TT0I]
// src=43, dst=40
v_mov_b32 v40, v43                                 // rC[0+0*VW+5*TT0I] = rC[3+0*VW+5*TT0I]
// src=51, dst=48
v_mov_b32 v48, v51                                 // rC[0+0*VW+6*TT0I] = rC[3+0*VW+6*TT0I]
// src=59, dst=56
v_mov_b32 v56, v59                                 // rC[0+0*VW+7*TT0I] = rC[3+0*VW+7*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0038                                // done shifting

/* shift d0 r=1 v=1 */
label_0031:
_v_cmpx_eq_u32 s53, v70, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=7, dst=4
v_mov_b32 v4, v7                                   // rC[0+1*VW+0*TT0I] = rC[3+1*VW+0*TT0I]
// src=15, dst=12
v_mov_b32 v12, v15                                 // rC[0+1*VW+1*TT0I] = rC[3+1*VW+1*TT0I]
// src=23, dst=20
v_mov_b32 v20, v23                                 // rC[0+1*VW+2*TT0I] = rC[3+1*VW+2*TT0I]
// src=31, dst=28
v_mov_b32 v28, v31                                 // rC[0+1*VW+3*TT0I] = rC[3+1*VW+3*TT0I]
// src=39, dst=36
v_mov_b32 v36, v39                                 // rC[0+1*VW+4*TT0I] = rC[3+1*VW+4*TT0I]
// src=47, dst=44
v_mov_b32 v44, v47                                 // rC[0+1*VW+5*TT0I] = rC[3+1*VW+5*TT0I]
// src=55, dst=52
v_mov_b32 v52, v55                                 // rC[0+1*VW+6*TT0I] = rC[3+1*VW+6*TT0I]
// src=63, dst=60
v_mov_b32 v60, v63                                 // rC[0+1*VW+7*TT0I] = rC[3+1*VW+7*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0038                                // done shifting

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
// src=2, dst=0
v_mov_b32 v0, v2                                   // rC[0+0*VW+0*TT0I] = rC[2+0*VW+0*TT0I]
// src=3, dst=1
v_mov_b32 v1, v3                                   // rC[1+0*VW+0*TT0I] = rC[3+0*VW+0*TT0I]
// src=10, dst=8
v_mov_b32 v8, v10                                  // rC[0+0*VW+1*TT0I] = rC[2+0*VW+1*TT0I]
// src=11, dst=9
v_mov_b32 v9, v11                                  // rC[1+0*VW+1*TT0I] = rC[3+0*VW+1*TT0I]
// src=18, dst=16
v_mov_b32 v16, v18                                 // rC[0+0*VW+2*TT0I] = rC[2+0*VW+2*TT0I]
// src=19, dst=17
v_mov_b32 v17, v19                                 // rC[1+0*VW+2*TT0I] = rC[3+0*VW+2*TT0I]
// src=26, dst=24
v_mov_b32 v24, v26                                 // rC[0+0*VW+3*TT0I] = rC[2+0*VW+3*TT0I]
// src=27, dst=25
v_mov_b32 v25, v27                                 // rC[1+0*VW+3*TT0I] = rC[3+0*VW+3*TT0I]
// src=34, dst=32
v_mov_b32 v32, v34                                 // rC[0+0*VW+4*TT0I] = rC[2+0*VW+4*TT0I]
// src=35, dst=33
v_mov_b32 v33, v35                                 // rC[1+0*VW+4*TT0I] = rC[3+0*VW+4*TT0I]
// src=42, dst=40
v_mov_b32 v40, v42                                 // rC[0+0*VW+5*TT0I] = rC[2+0*VW+5*TT0I]
// src=43, dst=41
v_mov_b32 v41, v43                                 // rC[1+0*VW+5*TT0I] = rC[3+0*VW+5*TT0I]
// src=50, dst=48
v_mov_b32 v48, v50                                 // rC[0+0*VW+6*TT0I] = rC[2+0*VW+6*TT0I]
// src=51, dst=49
v_mov_b32 v49, v51                                 // rC[1+0*VW+6*TT0I] = rC[3+0*VW+6*TT0I]
// src=58, dst=56
v_mov_b32 v56, v58                                 // rC[0+0*VW+7*TT0I] = rC[2+0*VW+7*TT0I]
// src=59, dst=57
v_mov_b32 v57, v59                                 // rC[1+0*VW+7*TT0I] = rC[3+0*VW+7*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0038                                // done shifting

/* shift d0 r=2 v=1 */
label_0034:
_v_cmpx_eq_u32 s53, v70, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=6, dst=4
v_mov_b32 v4, v6                                   // rC[0+1*VW+0*TT0I] = rC[2+1*VW+0*TT0I]
// src=7, dst=5
v_mov_b32 v5, v7                                   // rC[1+1*VW+0*TT0I] = rC[3+1*VW+0*TT0I]
// src=14, dst=12
v_mov_b32 v12, v14                                 // rC[0+1*VW+1*TT0I] = rC[2+1*VW+1*TT0I]
// src=15, dst=13
v_mov_b32 v13, v15                                 // rC[1+1*VW+1*TT0I] = rC[3+1*VW+1*TT0I]
// src=22, dst=20
v_mov_b32 v20, v22                                 // rC[0+1*VW+2*TT0I] = rC[2+1*VW+2*TT0I]
// src=23, dst=21
v_mov_b32 v21, v23                                 // rC[1+1*VW+2*TT0I] = rC[3+1*VW+2*TT0I]
// src=30, dst=28
v_mov_b32 v28, v30                                 // rC[0+1*VW+3*TT0I] = rC[2+1*VW+3*TT0I]
// src=31, dst=29
v_mov_b32 v29, v31                                 // rC[1+1*VW+3*TT0I] = rC[3+1*VW+3*TT0I]
// src=38, dst=36
v_mov_b32 v36, v38                                 // rC[0+1*VW+4*TT0I] = rC[2+1*VW+4*TT0I]
// src=39, dst=37
v_mov_b32 v37, v39                                 // rC[1+1*VW+4*TT0I] = rC[3+1*VW+4*TT0I]
// src=46, dst=44
v_mov_b32 v44, v46                                 // rC[0+1*VW+5*TT0I] = rC[2+1*VW+5*TT0I]
// src=47, dst=45
v_mov_b32 v45, v47                                 // rC[1+1*VW+5*TT0I] = rC[3+1*VW+5*TT0I]
// src=54, dst=52
v_mov_b32 v52, v54                                 // rC[0+1*VW+6*TT0I] = rC[2+1*VW+6*TT0I]
// src=55, dst=53
v_mov_b32 v53, v55                                 // rC[1+1*VW+6*TT0I] = rC[3+1*VW+6*TT0I]
// src=62, dst=60
v_mov_b32 v60, v62                                 // rC[0+1*VW+7*TT0I] = rC[2+1*VW+7*TT0I]
// src=63, dst=61
v_mov_b32 v61, v63                                 // rC[1+1*VW+7*TT0I] = rC[3+1*VW+7*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0038                                // done shifting

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
// src=1, dst=0
v_mov_b32 v0, v1                                   // rC[0+0*VW+0*TT0I] = rC[1+0*VW+0*TT0I]
// src=2, dst=1
v_mov_b32 v1, v2                                   // rC[1+0*VW+0*TT0I] = rC[2+0*VW+0*TT0I]
// src=3, dst=2
v_mov_b32 v2, v3                                   // rC[2+0*VW+0*TT0I] = rC[3+0*VW+0*TT0I]
// src=9, dst=8
v_mov_b32 v8, v9                                   // rC[0+0*VW+1*TT0I] = rC[1+0*VW+1*TT0I]
// src=10, dst=9
v_mov_b32 v9, v10                                  // rC[1+0*VW+1*TT0I] = rC[2+0*VW+1*TT0I]
// src=11, dst=10
v_mov_b32 v10, v11                                 // rC[2+0*VW+1*TT0I] = rC[3+0*VW+1*TT0I]
// src=17, dst=16
v_mov_b32 v16, v17                                 // rC[0+0*VW+2*TT0I] = rC[1+0*VW+2*TT0I]
// src=18, dst=17
v_mov_b32 v17, v18                                 // rC[1+0*VW+2*TT0I] = rC[2+0*VW+2*TT0I]
// src=19, dst=18
v_mov_b32 v18, v19                                 // rC[2+0*VW+2*TT0I] = rC[3+0*VW+2*TT0I]
// src=25, dst=24
v_mov_b32 v24, v25                                 // rC[0+0*VW+3*TT0I] = rC[1+0*VW+3*TT0I]
// src=26, dst=25
v_mov_b32 v25, v26                                 // rC[1+0*VW+3*TT0I] = rC[2+0*VW+3*TT0I]
// src=27, dst=26
v_mov_b32 v26, v27                                 // rC[2+0*VW+3*TT0I] = rC[3+0*VW+3*TT0I]
// src=33, dst=32
v_mov_b32 v32, v33                                 // rC[0+0*VW+4*TT0I] = rC[1+0*VW+4*TT0I]
// src=34, dst=33
v_mov_b32 v33, v34                                 // rC[1+0*VW+4*TT0I] = rC[2+0*VW+4*TT0I]
// src=35, dst=34
v_mov_b32 v34, v35                                 // rC[2+0*VW+4*TT0I] = rC[3+0*VW+4*TT0I]
// src=41, dst=40
v_mov_b32 v40, v41                                 // rC[0+0*VW+5*TT0I] = rC[1+0*VW+5*TT0I]
// src=42, dst=41
v_mov_b32 v41, v42                                 // rC[1+0*VW+5*TT0I] = rC[2+0*VW+5*TT0I]
// src=43, dst=42
v_mov_b32 v42, v43                                 // rC[2+0*VW+5*TT0I] = rC[3+0*VW+5*TT0I]
// src=49, dst=48
v_mov_b32 v48, v49                                 // rC[0+0*VW+6*TT0I] = rC[1+0*VW+6*TT0I]
// src=50, dst=49
v_mov_b32 v49, v50                                 // rC[1+0*VW+6*TT0I] = rC[2+0*VW+6*TT0I]
// src=51, dst=50
v_mov_b32 v50, v51                                 // rC[2+0*VW+6*TT0I] = rC[3+0*VW+6*TT0I]
// src=57, dst=56
v_mov_b32 v56, v57                                 // rC[0+0*VW+7*TT0I] = rC[1+0*VW+7*TT0I]
// src=58, dst=57
v_mov_b32 v57, v58                                 // rC[1+0*VW+7*TT0I] = rC[2+0*VW+7*TT0I]
// src=59, dst=58
v_mov_b32 v58, v59                                 // rC[2+0*VW+7*TT0I] = rC[3+0*VW+7*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0038                                // done shifting

/* shift d0 r=3 v=1 */
label_0037:
_v_cmpx_eq_u32 s53, v70, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=5, dst=4
v_mov_b32 v4, v5                                   // rC[0+1*VW+0*TT0I] = rC[1+1*VW+0*TT0I]
// src=6, dst=5
v_mov_b32 v5, v6                                   // rC[1+1*VW+0*TT0I] = rC[2+1*VW+0*TT0I]
// src=7, dst=6
v_mov_b32 v6, v7                                   // rC[2+1*VW+0*TT0I] = rC[3+1*VW+0*TT0I]
// src=13, dst=12
v_mov_b32 v12, v13                                 // rC[0+1*VW+1*TT0I] = rC[1+1*VW+1*TT0I]
// src=14, dst=13
v_mov_b32 v13, v14                                 // rC[1+1*VW+1*TT0I] = rC[2+1*VW+1*TT0I]
// src=15, dst=14
v_mov_b32 v14, v15                                 // rC[2+1*VW+1*TT0I] = rC[3+1*VW+1*TT0I]
// src=21, dst=20
v_mov_b32 v20, v21                                 // rC[0+1*VW+2*TT0I] = rC[1+1*VW+2*TT0I]
// src=22, dst=21
v_mov_b32 v21, v22                                 // rC[1+1*VW+2*TT0I] = rC[2+1*VW+2*TT0I]
// src=23, dst=22
v_mov_b32 v22, v23                                 // rC[2+1*VW+2*TT0I] = rC[3+1*VW+2*TT0I]
// src=29, dst=28
v_mov_b32 v28, v29                                 // rC[0+1*VW+3*TT0I] = rC[1+1*VW+3*TT0I]
// src=30, dst=29
v_mov_b32 v29, v30                                 // rC[1+1*VW+3*TT0I] = rC[2+1*VW+3*TT0I]
// src=31, dst=30
v_mov_b32 v30, v31                                 // rC[2+1*VW+3*TT0I] = rC[3+1*VW+3*TT0I]
// src=37, dst=36
v_mov_b32 v36, v37                                 // rC[0+1*VW+4*TT0I] = rC[1+1*VW+4*TT0I]
// src=38, dst=37
v_mov_b32 v37, v38                                 // rC[1+1*VW+4*TT0I] = rC[2+1*VW+4*TT0I]
// src=39, dst=38
v_mov_b32 v38, v39                                 // rC[2+1*VW+4*TT0I] = rC[3+1*VW+4*TT0I]
// src=45, dst=44
v_mov_b32 v44, v45                                 // rC[0+1*VW+5*TT0I] = rC[1+1*VW+5*TT0I]
// src=46, dst=45
v_mov_b32 v45, v46                                 // rC[1+1*VW+5*TT0I] = rC[2+1*VW+5*TT0I]
// src=47, dst=46
v_mov_b32 v46, v47                                 // rC[2+1*VW+5*TT0I] = rC[3+1*VW+5*TT0I]
// src=53, dst=52
v_mov_b32 v52, v53                                 // rC[0+1*VW+6*TT0I] = rC[1+1*VW+6*TT0I]
// src=54, dst=53
v_mov_b32 v53, v54                                 // rC[1+1*VW+6*TT0I] = rC[2+1*VW+6*TT0I]
// src=55, dst=54
v_mov_b32 v54, v55                                 // rC[2+1*VW+6*TT0I] = rC[3+1*VW+6*TT0I]
// src=61, dst=60
v_mov_b32 v60, v61                                 // rC[0+1*VW+7*TT0I] = rC[1+1*VW+7*TT0I]
// src=62, dst=61
v_mov_b32 v61, v62                                 // rC[1+1*VW+7*TT0I] = rC[2+1*VW+7*TT0I]
// src=63, dst=62
v_mov_b32 v62, v63                                 // rC[2+1*VW+7*TT0I] = rC[3+1*VW+7*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0038                                // done shifting
label_0038: // end shift0


/* shift vector components d1 */

v_mov_b32 v67, s[sgprWorkGroup1]                   // 
v_mul_i32_i24 v67, -0x40, v67                      // wg*MT
_v_add_co_u32 v67, vcc_lo, s[sgprSizesFree+1], v67 // wgMT = Size - wg*MT
v_mov_b32 v66, 0x40                                // MT
v_min_u32 v67, v66, v67                            // wgMT = (wgMT < MT) ? wgMT : MT
v_lshrrev_b32 v66, 2, v67                          // v66 = v67 / 4
v_and_b32 v68, 3, v67                              // v68 = v67 % 4
v_and_b32 v69, 7, v66                              // v69 = v66 % 8
v_lshrrev_b32 v70, 4, v[vgprSerial]                // v70 = v[vgprSerial] / 16
v_and_b32 v71, 7, v70                              // v71 = v70 % 8
v_lshrrev_b32 v70, 5, v67                          // v70 = v67 / 32
v_and_b32 v72, 3, v67                              // v72 = v67 % 4
v_mov_b32 v73, v72                                 // duplicate
v_lshrrev_b32 v72, 2, v73                          // v72 = v73 / 4
_v_add_co_u32 v72, vcc_lo, v70, v72                // vId = 2 components
v_cmp_eq_u32 vcc_lo, v68, 0x1                      // wgMT%VW == 1
s_cbranch_vccnz label_0041                         // shift d1 r=1
v_cmp_eq_u32 vcc_lo, v68, 0x2                      // wgMT%VW == 2
s_cbranch_vccnz label_0044                         // shift d1 r=2
v_cmp_eq_u32 vcc_lo, v68, 0x3                      // wgMT%VW == 3
s_cbranch_vccnz label_0047                         // shift d1 r=3
s_branch label_0050                                // no shifting

/******************************************/
/* shift d1 r=1                           */
/******************************************/
label_0041:
v_cmp_eq_u32 vcc_lo, v72, 0x0                      // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0042                         // shift d1, r=1, v=0
v_cmp_eq_u32 vcc_lo, v72, 0x1                      // wgMT/(SG*VW) == 1
s_cbranch_vccnz label_0043                         // shift d1, r=1, v=1

/* shift d1 r=1 v=0 */
label_0042:
_v_cmpx_eq_u32 s53, v71, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=24, dst=0
v_mov_b32 v0, v24                                  // rC[0+0*TT0I*VW+0*TT0I] = rC[0+0*TT0I*VW+3*TT0I]
// src=25, dst=1
v_mov_b32 v1, v25                                  // rC[1+0*TT0I*VW+0*TT0I] = rC[1+0*TT0I*VW+3*TT0I]
// src=26, dst=2
v_mov_b32 v2, v26                                  // rC[2+0*TT0I*VW+0*TT0I] = rC[2+0*TT0I*VW+3*TT0I]
// src=27, dst=3
v_mov_b32 v3, v27                                  // rC[3+0*TT0I*VW+0*TT0I] = rC[3+0*TT0I*VW+3*TT0I]
// src=28, dst=4
v_mov_b32 v4, v28                                  // rC[4+0*TT0I*VW+0*TT0I] = rC[4+0*TT0I*VW+3*TT0I]
// src=29, dst=5
v_mov_b32 v5, v29                                  // rC[5+0*TT0I*VW+0*TT0I] = rC[5+0*TT0I*VW+3*TT0I]
// src=30, dst=6
v_mov_b32 v6, v30                                  // rC[6+0*TT0I*VW+0*TT0I] = rC[6+0*TT0I*VW+3*TT0I]
// src=31, dst=7
v_mov_b32 v7, v31                                  // rC[7+0*TT0I*VW+0*TT0I] = rC[7+0*TT0I*VW+3*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0050                                // done shifting

/* shift d1 r=1 v=1 */
label_0043:
_v_cmpx_eq_u32 s53, v71, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=56, dst=32
v_mov_b32 v32, v56                                 // rC[0+1*TT0I*VW+0*TT0I] = rC[0+1*TT0I*VW+3*TT0I]
// src=57, dst=33
v_mov_b32 v33, v57                                 // rC[1+1*TT0I*VW+0*TT0I] = rC[1+1*TT0I*VW+3*TT0I]
// src=58, dst=34
v_mov_b32 v34, v58                                 // rC[2+1*TT0I*VW+0*TT0I] = rC[2+1*TT0I*VW+3*TT0I]
// src=59, dst=35
v_mov_b32 v35, v59                                 // rC[3+1*TT0I*VW+0*TT0I] = rC[3+1*TT0I*VW+3*TT0I]
// src=60, dst=36
v_mov_b32 v36, v60                                 // rC[4+1*TT0I*VW+0*TT0I] = rC[4+1*TT0I*VW+3*TT0I]
// src=61, dst=37
v_mov_b32 v37, v61                                 // rC[5+1*TT0I*VW+0*TT0I] = rC[5+1*TT0I*VW+3*TT0I]
// src=62, dst=38
v_mov_b32 v38, v62                                 // rC[6+1*TT0I*VW+0*TT0I] = rC[6+1*TT0I*VW+3*TT0I]
// src=63, dst=39
v_mov_b32 v39, v63                                 // rC[7+1*TT0I*VW+0*TT0I] = rC[7+1*TT0I*VW+3*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0050                                // done shifting

/******************************************/
/* shift d1 r=2                           */
/******************************************/
label_0044:
v_cmp_eq_u32 vcc_lo, v72, 0x0                      // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0045                         // shift d1, r=2, v=0
v_cmp_eq_u32 vcc_lo, v72, 0x1                      // wgMT/(SG*VW) == 1
s_cbranch_vccnz label_0046                         // shift d1, r=2, v=1

/* shift d1 r=2 v=0 */
label_0045:
_v_cmpx_eq_u32 s53, v71, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=16, dst=0
v_mov_b32 v0, v16                                  // rC[0+0*TT0I*VW+0*TT0I] = rC[0+0*TT0I*VW+2*TT0I]
// src=24, dst=8
v_mov_b32 v8, v24                                  // rC[0+0*TT0I*VW+1*TT0I] = rC[0+0*TT0I*VW+3*TT0I]
// src=17, dst=1
v_mov_b32 v1, v17                                  // rC[1+0*TT0I*VW+0*TT0I] = rC[1+0*TT0I*VW+2*TT0I]
// src=25, dst=9
v_mov_b32 v9, v25                                  // rC[1+0*TT0I*VW+1*TT0I] = rC[1+0*TT0I*VW+3*TT0I]
// src=18, dst=2
v_mov_b32 v2, v18                                  // rC[2+0*TT0I*VW+0*TT0I] = rC[2+0*TT0I*VW+2*TT0I]
// src=26, dst=10
v_mov_b32 v10, v26                                 // rC[2+0*TT0I*VW+1*TT0I] = rC[2+0*TT0I*VW+3*TT0I]
// src=19, dst=3
v_mov_b32 v3, v19                                  // rC[3+0*TT0I*VW+0*TT0I] = rC[3+0*TT0I*VW+2*TT0I]
// src=27, dst=11
v_mov_b32 v11, v27                                 // rC[3+0*TT0I*VW+1*TT0I] = rC[3+0*TT0I*VW+3*TT0I]
// src=20, dst=4
v_mov_b32 v4, v20                                  // rC[4+0*TT0I*VW+0*TT0I] = rC[4+0*TT0I*VW+2*TT0I]
// src=28, dst=12
v_mov_b32 v12, v28                                 // rC[4+0*TT0I*VW+1*TT0I] = rC[4+0*TT0I*VW+3*TT0I]
// src=21, dst=5
v_mov_b32 v5, v21                                  // rC[5+0*TT0I*VW+0*TT0I] = rC[5+0*TT0I*VW+2*TT0I]
// src=29, dst=13
v_mov_b32 v13, v29                                 // rC[5+0*TT0I*VW+1*TT0I] = rC[5+0*TT0I*VW+3*TT0I]
// src=22, dst=6
v_mov_b32 v6, v22                                  // rC[6+0*TT0I*VW+0*TT0I] = rC[6+0*TT0I*VW+2*TT0I]
// src=30, dst=14
v_mov_b32 v14, v30                                 // rC[6+0*TT0I*VW+1*TT0I] = rC[6+0*TT0I*VW+3*TT0I]
// src=23, dst=7
v_mov_b32 v7, v23                                  // rC[7+0*TT0I*VW+0*TT0I] = rC[7+0*TT0I*VW+2*TT0I]
// src=31, dst=15
v_mov_b32 v15, v31                                 // rC[7+0*TT0I*VW+1*TT0I] = rC[7+0*TT0I*VW+3*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0050                                // done shifting

/* shift d1 r=2 v=1 */
label_0046:
_v_cmpx_eq_u32 s53, v71, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=48, dst=32
v_mov_b32 v32, v48                                 // rC[0+1*TT0I*VW+0*TT0I] = rC[0+1*TT0I*VW+2*TT0I]
// src=56, dst=40
v_mov_b32 v40, v56                                 // rC[0+1*TT0I*VW+1*TT0I] = rC[0+1*TT0I*VW+3*TT0I]
// src=49, dst=33
v_mov_b32 v33, v49                                 // rC[1+1*TT0I*VW+0*TT0I] = rC[1+1*TT0I*VW+2*TT0I]
// src=57, dst=41
v_mov_b32 v41, v57                                 // rC[1+1*TT0I*VW+1*TT0I] = rC[1+1*TT0I*VW+3*TT0I]
// src=50, dst=34
v_mov_b32 v34, v50                                 // rC[2+1*TT0I*VW+0*TT0I] = rC[2+1*TT0I*VW+2*TT0I]
// src=58, dst=42
v_mov_b32 v42, v58                                 // rC[2+1*TT0I*VW+1*TT0I] = rC[2+1*TT0I*VW+3*TT0I]
// src=51, dst=35
v_mov_b32 v35, v51                                 // rC[3+1*TT0I*VW+0*TT0I] = rC[3+1*TT0I*VW+2*TT0I]
// src=59, dst=43
v_mov_b32 v43, v59                                 // rC[3+1*TT0I*VW+1*TT0I] = rC[3+1*TT0I*VW+3*TT0I]
// src=52, dst=36
v_mov_b32 v36, v52                                 // rC[4+1*TT0I*VW+0*TT0I] = rC[4+1*TT0I*VW+2*TT0I]
// src=60, dst=44
v_mov_b32 v44, v60                                 // rC[4+1*TT0I*VW+1*TT0I] = rC[4+1*TT0I*VW+3*TT0I]
// src=53, dst=37
v_mov_b32 v37, v53                                 // rC[5+1*TT0I*VW+0*TT0I] = rC[5+1*TT0I*VW+2*TT0I]
// src=61, dst=45
v_mov_b32 v45, v61                                 // rC[5+1*TT0I*VW+1*TT0I] = rC[5+1*TT0I*VW+3*TT0I]
// src=54, dst=38
v_mov_b32 v38, v54                                 // rC[6+1*TT0I*VW+0*TT0I] = rC[6+1*TT0I*VW+2*TT0I]
// src=62, dst=46
v_mov_b32 v46, v62                                 // rC[6+1*TT0I*VW+1*TT0I] = rC[6+1*TT0I*VW+3*TT0I]
// src=55, dst=39
v_mov_b32 v39, v55                                 // rC[7+1*TT0I*VW+0*TT0I] = rC[7+1*TT0I*VW+2*TT0I]
// src=63, dst=47
v_mov_b32 v47, v63                                 // rC[7+1*TT0I*VW+1*TT0I] = rC[7+1*TT0I*VW+3*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0050                                // done shifting

/******************************************/
/* shift d1 r=3                           */
/******************************************/
label_0047:
v_cmp_eq_u32 vcc_lo, v72, 0x0                      // wgMT/(SG*VW) == 0
s_cbranch_vccnz label_0048                         // shift d1, r=3, v=0
v_cmp_eq_u32 vcc_lo, v72, 0x1                      // wgMT/(SG*VW) == 1
s_cbranch_vccnz label_0049                         // shift d1, r=3, v=1

/* shift d1 r=3 v=0 */
label_0048:
_v_cmpx_eq_u32 s53, v71, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=8, dst=0
v_mov_b32 v0, v8                                   // rC[0+0*TT0I*VW+0*TT0I] = rC[0+0*TT0I*VW+1*TT0I]
// src=16, dst=8
v_mov_b32 v8, v16                                  // rC[0+0*TT0I*VW+1*TT0I] = rC[0+0*TT0I*VW+2*TT0I]
// src=24, dst=16
v_mov_b32 v16, v24                                 // rC[0+0*TT0I*VW+2*TT0I] = rC[0+0*TT0I*VW+3*TT0I]
// src=9, dst=1
v_mov_b32 v1, v9                                   // rC[1+0*TT0I*VW+0*TT0I] = rC[1+0*TT0I*VW+1*TT0I]
// src=17, dst=9
v_mov_b32 v9, v17                                  // rC[1+0*TT0I*VW+1*TT0I] = rC[1+0*TT0I*VW+2*TT0I]
// src=25, dst=17
v_mov_b32 v17, v25                                 // rC[1+0*TT0I*VW+2*TT0I] = rC[1+0*TT0I*VW+3*TT0I]
// src=10, dst=2
v_mov_b32 v2, v10                                  // rC[2+0*TT0I*VW+0*TT0I] = rC[2+0*TT0I*VW+1*TT0I]
// src=18, dst=10
v_mov_b32 v10, v18                                 // rC[2+0*TT0I*VW+1*TT0I] = rC[2+0*TT0I*VW+2*TT0I]
// src=26, dst=18
v_mov_b32 v18, v26                                 // rC[2+0*TT0I*VW+2*TT0I] = rC[2+0*TT0I*VW+3*TT0I]
// src=11, dst=3
v_mov_b32 v3, v11                                  // rC[3+0*TT0I*VW+0*TT0I] = rC[3+0*TT0I*VW+1*TT0I]
// src=19, dst=11
v_mov_b32 v11, v19                                 // rC[3+0*TT0I*VW+1*TT0I] = rC[3+0*TT0I*VW+2*TT0I]
// src=27, dst=19
v_mov_b32 v19, v27                                 // rC[3+0*TT0I*VW+2*TT0I] = rC[3+0*TT0I*VW+3*TT0I]
// src=12, dst=4
v_mov_b32 v4, v12                                  // rC[4+0*TT0I*VW+0*TT0I] = rC[4+0*TT0I*VW+1*TT0I]
// src=20, dst=12
v_mov_b32 v12, v20                                 // rC[4+0*TT0I*VW+1*TT0I] = rC[4+0*TT0I*VW+2*TT0I]
// src=28, dst=20
v_mov_b32 v20, v28                                 // rC[4+0*TT0I*VW+2*TT0I] = rC[4+0*TT0I*VW+3*TT0I]
// src=13, dst=5
v_mov_b32 v5, v13                                  // rC[5+0*TT0I*VW+0*TT0I] = rC[5+0*TT0I*VW+1*TT0I]
// src=21, dst=13
v_mov_b32 v13, v21                                 // rC[5+0*TT0I*VW+1*TT0I] = rC[5+0*TT0I*VW+2*TT0I]
// src=29, dst=21
v_mov_b32 v21, v29                                 // rC[5+0*TT0I*VW+2*TT0I] = rC[5+0*TT0I*VW+3*TT0I]
// src=14, dst=6
v_mov_b32 v6, v14                                  // rC[6+0*TT0I*VW+0*TT0I] = rC[6+0*TT0I*VW+1*TT0I]
// src=22, dst=14
v_mov_b32 v14, v22                                 // rC[6+0*TT0I*VW+1*TT0I] = rC[6+0*TT0I*VW+2*TT0I]
// src=30, dst=22
v_mov_b32 v22, v30                                 // rC[6+0*TT0I*VW+2*TT0I] = rC[6+0*TT0I*VW+3*TT0I]
// src=15, dst=7
v_mov_b32 v7, v15                                  // rC[7+0*TT0I*VW+0*TT0I] = rC[7+0*TT0I*VW+1*TT0I]
// src=23, dst=15
v_mov_b32 v15, v23                                 // rC[7+0*TT0I*VW+1*TT0I] = rC[7+0*TT0I*VW+2*TT0I]
// src=31, dst=23
v_mov_b32 v23, v31                                 // rC[7+0*TT0I*VW+2*TT0I] = rC[7+0*TT0I*VW+3*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0050                                // done shifting

/* shift d1 r=3 v=1 */
label_0049:
_v_cmpx_eq_u32 s53, v71, v69                       // serial % SG == (wgMT/VECTOR_WIDTH)%SG
// src=40, dst=32
v_mov_b32 v32, v40                                 // rC[0+1*TT0I*VW+0*TT0I] = rC[0+1*TT0I*VW+1*TT0I]
// src=48, dst=40
v_mov_b32 v40, v48                                 // rC[0+1*TT0I*VW+1*TT0I] = rC[0+1*TT0I*VW+2*TT0I]
// src=56, dst=48
v_mov_b32 v48, v56                                 // rC[0+1*TT0I*VW+2*TT0I] = rC[0+1*TT0I*VW+3*TT0I]
// src=41, dst=33
v_mov_b32 v33, v41                                 // rC[1+1*TT0I*VW+0*TT0I] = rC[1+1*TT0I*VW+1*TT0I]
// src=49, dst=41
v_mov_b32 v41, v49                                 // rC[1+1*TT0I*VW+1*TT0I] = rC[1+1*TT0I*VW+2*TT0I]
// src=57, dst=49
v_mov_b32 v49, v57                                 // rC[1+1*TT0I*VW+2*TT0I] = rC[1+1*TT0I*VW+3*TT0I]
// src=42, dst=34
v_mov_b32 v34, v42                                 // rC[2+1*TT0I*VW+0*TT0I] = rC[2+1*TT0I*VW+1*TT0I]
// src=50, dst=42
v_mov_b32 v42, v50                                 // rC[2+1*TT0I*VW+1*TT0I] = rC[2+1*TT0I*VW+2*TT0I]
// src=58, dst=50
v_mov_b32 v50, v58                                 // rC[2+1*TT0I*VW+2*TT0I] = rC[2+1*TT0I*VW+3*TT0I]
// src=43, dst=35
v_mov_b32 v35, v43                                 // rC[3+1*TT0I*VW+0*TT0I] = rC[3+1*TT0I*VW+1*TT0I]
// src=51, dst=43
v_mov_b32 v43, v51                                 // rC[3+1*TT0I*VW+1*TT0I] = rC[3+1*TT0I*VW+2*TT0I]
// src=59, dst=51
v_mov_b32 v51, v59                                 // rC[3+1*TT0I*VW+2*TT0I] = rC[3+1*TT0I*VW+3*TT0I]
// src=44, dst=36
v_mov_b32 v36, v44                                 // rC[4+1*TT0I*VW+0*TT0I] = rC[4+1*TT0I*VW+1*TT0I]
// src=52, dst=44
v_mov_b32 v44, v52                                 // rC[4+1*TT0I*VW+1*TT0I] = rC[4+1*TT0I*VW+2*TT0I]
// src=60, dst=52
v_mov_b32 v52, v60                                 // rC[4+1*TT0I*VW+2*TT0I] = rC[4+1*TT0I*VW+3*TT0I]
// src=45, dst=37
v_mov_b32 v37, v45                                 // rC[5+1*TT0I*VW+0*TT0I] = rC[5+1*TT0I*VW+1*TT0I]
// src=53, dst=45
v_mov_b32 v45, v53                                 // rC[5+1*TT0I*VW+1*TT0I] = rC[5+1*TT0I*VW+2*TT0I]
// src=61, dst=53
v_mov_b32 v53, v61                                 // rC[5+1*TT0I*VW+2*TT0I] = rC[5+1*TT0I*VW+3*TT0I]
// src=46, dst=38
v_mov_b32 v38, v46                                 // rC[6+1*TT0I*VW+0*TT0I] = rC[6+1*TT0I*VW+1*TT0I]
// src=54, dst=46
v_mov_b32 v46, v54                                 // rC[6+1*TT0I*VW+1*TT0I] = rC[6+1*TT0I*VW+2*TT0I]
// src=62, dst=54
v_mov_b32 v54, v62                                 // rC[6+1*TT0I*VW+2*TT0I] = rC[6+1*TT0I*VW+3*TT0I]
// src=47, dst=39
v_mov_b32 v39, v47                                 // rC[7+1*TT0I*VW+0*TT0I] = rC[7+1*TT0I*VW+1*TT0I]
// src=55, dst=47
v_mov_b32 v47, v55                                 // rC[7+1*TT0I*VW+1*TT0I] = rC[7+1*TT0I*VW+2*TT0I]
// src=63, dst=55
v_mov_b32 v55, v63                                 // rC[7+1*TT0I*VW+2*TT0I] = rC[7+1*TT0I*VW+3*TT0I]
s_mov_b32 s53, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s53                      // all threads active
s_branch label_0050                                // done shifting
label_0050: // end shift0



/* not-LocalSplitU: global write indices */

/* computeStoreVgprs */
v_lshrrev_b32 v67, 4, v[vgprSerial]                // v67 = v[vgprSerial] / 16
v_and_b32 v66, 15, v[vgprSerial]                   // v66 = v[vgprSerial] % 16
v_lshlrev_b32 v66, 0x2, v66                        // v66 = v66 * 4
v_lshlrev_b32 v67, 0x2, v67                        // v67 = v67 * 4
v_mul_lo_u32 v68, v67, s[sgprStrideC1J]            // rowStart vgpr
v_mul_lo_u32 v69, v67, s[sgprStrideD1J]            // rowStart vgpr

s_mul_i32 s54, 0x80, s[sgprWorkGroup0]             // s54 = wg0*MT0
_v_add_co_u32 v66, vcc_lo, s54, v66                // coord0 = tid0*VW + wg0*MT0
s_mul_i32 s56, 0x40, s[sgprWorkGroup1]             // <- wg1*MT1
_v_add_co_u32 v67, vcc_lo, s56, v67                // coord1 = tid1*VW + wg1*MT1


/* not-LocalSplitU: global write */

s_cmpk_eq_u32 s[sgprBeta], 0x0                     // Beta == 0
s_cbranch_scc0 GW_Beta_67                          // Branch if Beta is not zero

s_and_b32 s54, 127, s[sgprSizeI]                   // s54 = s[sgprSizeI] % 128
s_add_u32 s55, -0x1, s[sgprNumWorkGroups0]         // 
s_cmp_ge_u32 s[sgprWorkGroup0], s55                // wg0 >= nwg0-1 ?
s_cselect_b32 s54, s54, 0                          // set rMT0
s_cmpk_gt_u32 s54, 0x0                             // rMT0 > 0
s_cbranch_scc1 GW_B0_E1_58                         // jump if edges required
s_and_b32 s54, 63, s[sgprSizeJ]                    // s54 = s[sgprSizeJ] % 64
s_add_u32 s55, -0x1, s[sgprNumWorkGroups1]         // 
s_cmp_ge_u32 s[sgprWorkGroup1], s55                // wg1 >= nwg1-1
s_cselect_b32 s54, s54, 0                          // set rMT1
s_cmpk_gt_u32 s54, 0x0                             // rMT1 > 0
s_cbranch_scc1 GW_B0_E1_58                         // jump if edges required
GW_B0_E0_55:

/* edge=0, allocate 1 sgpr. perBatchTmpS=1 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=16 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Alpha Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,1,0,0:vw4); (0,0,1,0:vw4); (0,1,1,0:vw4); (0,0,2,0:vw4); (0,1,2,0:vw4); (0,0,3,0:vw4); (0,1,3,0:vw4); (1,0,0,0:vw4); (1,1,0,0:vw4); (1,0,1,0:vw4); (1,1,1,0:vw4); (1,0,2,0:vw4); (1,1,2,0:vw4); (1,0,3,0:vw4); (1,1,3,0:vw4) */
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
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
/* (d1,vc1,d0,vc0)=(1,0,1,0) */
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
/* (d1,vc1,d0,vc0)=(1,1,1,0) */
/* (d1,vc1,d0,vc0)=(1,2,0,0) */
/* (d1,vc1,d0,vc0)=(1,2,1,0) */
/* (d1,vc1,d0,vc0)=(1,3,0,0) */
/* (d1,vc1,d0,vc0)=(1,3,1,0) */
_v_add_lshl_u32 v72, v69, v66, 0x2                 // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=66, coord0Vgpr=66

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 1, 0, 0), (0, 0, 1, 0), (0, 1, 1, 0), (0, 0, 2, 0), (0, 1, 2, 0), (0, 0, 3, 0), (0, 1, 3, 0), (1, 0, 0, 0), (1, 1, 0, 0), (1, 0, 1, 0), (1, 1, 1, 0), (1, 0, 2, 0), (1, 1, 2, 0), (1, 0, 3, 0), (1, 1, 3, 0)] */
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
_buffer_store_b128 v[0:3], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[4:7], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[8:11], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[12:15], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[16:19], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[20:23], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[24:27], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[28:31], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_mul_i32 s54, s[sgprStrideD1J], 116               // scale StrideD *= numRows(29) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[32:35], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[36:39], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[40:43], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[44:47], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[48:51], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[52:55], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[56:59], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b128 v[60:63], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_branch label_GW_End_66                           // jump to end
GW_B0_E1_58:

/* edge=1, allocate 3 sgpr. perBatchTmpS=2 perBatchMaskS=1 perElementMaskS=0 elementsPerBatch=44 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,0,0,1:vw1); (0,0,0,2:vw1); (0,0,0,3:vw1); (0,1,0,0:vw1); (0,1,0,1:vw1); (0,1,0,2:vw1); (0,1,0,3:vw1); (0,0,1,0:vw1); (0,0,1,1:vw1); (0,0,1,2:vw1); (0,0,1,3:vw1); (0,1,1,0:vw1); (0,1,1,1:vw1); (0,1,1,2:vw1); (0,1,1,3:vw1); (0,0,2,0:vw1); (0,0,2,1:vw1); (0,0,2,2:vw1); (0,0,2,3:vw1); (0,1,2,0:vw1); (0,1,2,1:vw1); (0,1,2,2:vw1); (0,1,2,3:vw1); (0,0,3,0:vw1); (0,0,3,1:vw1); (0,0,3,2:vw1); (0,0,3,3:vw1); (0,1,3,0:vw1); (0,1,3,1:vw1); (0,1,3,2:vw1); (0,1,3,3:vw1); (1,0,0,0:vw1); (1,0,0,1:vw1); (1,0,0,2:vw1); (1,0,0,3:vw1); (1,1,0,0:vw1); (1,1,0,1:vw1); (1,1,0,2:vw1); (1,1,0,3:vw1); (1,0,1,0:vw1); (1,0,1,1:vw1); (1,0,1,2:vw1); (1,0,1,3:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v72, v69, v66, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v73, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v73, -1, v73, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v74, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v75, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v75, -1, v75, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
_v_add_co_u32 v70, vcc_lo, v66, 64                 // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v76, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v77, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, -1, v77, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v78, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v79, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v79, -1, v79, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v80, v69, v66, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v81, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v81, -1, v81, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v82, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v83, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v83, -1, v83, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,0) */
_v_add_co_u32 v70, vcc_lo, v66, 64                 // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v84, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v85, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v85, -1, v85, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v86, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v87, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v87, -1, v87, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v88, v69, v66, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v88, -1, v88, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v89, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v89, -1, v89, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v90, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v91, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v91, -1, v91, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,0) */
_v_add_co_u32 v70, vcc_lo, v66, 64                 // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v92, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v93, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v93, -1, v93, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v94, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v94, -1, v94, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v95, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v95, -1, v95, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v96, v69, v66, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v97, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v97, -1, v97, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v98, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v99, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v99, -1, v99, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,0) */
_v_add_co_u32 v70, vcc_lo, v66, 64                 // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v100, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v100, -1, v100, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v101, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v101, -1, v101, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v102, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v102, -1, v102, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v103, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v103, -1, v103, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 29                 // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s54, s[sgprStrideC1J], 29                // scale stride
_v_add_u32 v68, v68, s54                           // ROWINC- Move cinRowPtr to next row
s_mul_i32 s54, s[sgprStrideD1J], 29                // scale stride
_v_add_u32 v69, v69, s54                           // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v104, v69, v66, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v104, -1, v104, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v105, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v105, -1, v105, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v106, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v106, -1, v106, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v107, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v107, -1, v107, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,1,0) */
_v_add_co_u32 v70, vcc_lo, v66, 64                 // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v108, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v108, -1, v108, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v109, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v109, -1, v109, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v110, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v110, -1, v110, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v111, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v111, -1, v111, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v112, v69, v66, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v112, -1, v112, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v113, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v113, -1, v113, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v114, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v114, -1, v114, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v115, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v115, -1, v115, s56                  // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 0, 1), (0, 0, 0, 2), (0, 0, 0, 3), (0, 1, 0, 0), (0, 1, 0, 1), (0, 1, 0, 2), (0, 1, 0, 3), (0, 0, 1, 0), (0, 0, 1, 1), (0, 0, 1, 2), (0, 0, 1, 3), (0, 1, 1, 0), (0, 1, 1, 1), (0, 1, 1, 2), (0, 1, 1, 3), (0, 0, 2, 0), (0, 0, 2, 1), (0, 0, 2, 2), (0, 0, 2, 3), (0, 1, 2, 0), (0, 1, 2, 1), (0, 1, 2, 2), (0, 1, 2, 3), (0, 0, 3, 0), (0, 0, 3, 1), (0, 0, 3, 2), (0, 0, 3, 3), (0, 1, 3, 0), (0, 1, 3, 1), (0, 1, 3, 2), (0, 1, 3, 3), (1, 0, 0, 0), (1, 0, 0, 1), (1, 0, 0, 2), (1, 0, 0, 3), (1, 1, 0, 0), (1, 1, 0, 1), (1, 1, 0, 2), (1, 1, 0, 3), (1, 0, 1, 0), (1, 0, 1, 1), (1, 0, 1, 2), (1, 0, 1, 3)] */
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

/* apply mask, calc new C and issue writes */
_buffer_store_b32 v0, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v1, v73, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v2, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v3, v75, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v4, v76, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v5, v77, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v6, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v7, v79, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v8, v80, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v9, v81, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v10, v82, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v11, v83, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v12, v84, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v13, v85, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v14, v86, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v15, v87, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v16, v88, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v17, v89, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v18, v90, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v19, v91, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v20, v92, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v21, v93, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v22, v94, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v23, v95, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v24, v96, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v25, v97, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v26, v98, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v27, v99, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v28, v100, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v29, v101, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v30, v102, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v31, v103, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v32, v104, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v33, v105, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v34, v106, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v35, v107, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v36, v108, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v37, v109, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v38, v110, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v39, v111, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v40, v112, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v41, v113, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v42, v114, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v43, v115, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Edge Batch #1 (d1,d0,vc1,vc0) = */
/*    (1,1,1,0:vw1); (1,1,1,1:vw1); (1,1,1,2:vw1); (1,1,1,3:vw1); (1,0,2,0:vw1); (1,0,2,1:vw1); (1,0,2,2:vw1); (1,0,2,3:vw1); (1,1,2,0:vw1); (1,1,2,1:vw1); (1,1,2,2:vw1); (1,1,2,3:vw1); (1,0,3,0:vw1); (1,0,3,1:vw1); (1,0,3,2:vw1); (1,0,3,3:vw1); (1,1,3,0:vw1); (1,1,3,1:vw1); (1,1,3,2:vw1); (1,1,3,3:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(1,1,1,0) */
_v_add_co_u32 v70, vcc_lo, v66, 64                 // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v72, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v73, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v73, -1, v73, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v74, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v75, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v75, -1, v75, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v76, v69, v66, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v77, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, -1, v77, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v78, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v79, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v79, -1, v79, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,1,0) */
_v_add_co_u32 v70, vcc_lo, v66, 64                 // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v80, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v81, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v81, -1, v81, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v82, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v83, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v83, -1, v83, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v84, v69, v66, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v85, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v85, -1, v85, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v86, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v87, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v87, -1, v87, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,1,0) */
_v_add_co_u32 v70, vcc_lo, v66, 64                 // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v88, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v88, -1, v88, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v89, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v89, -1, v89, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v90, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v91, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v91, -1, v91, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(1, 1, 1, 0), (1, 1, 1, 1), (1, 1, 1, 2), (1, 1, 1, 3), (1, 0, 2, 0), (1, 0, 2, 1), (1, 0, 2, 2), (1, 0, 2, 3), (1, 1, 2, 0), (1, 1, 2, 1), (1, 1, 2, 2), (1, 1, 2, 3), (1, 0, 3, 0), (1, 0, 3, 1), (1, 0, 3, 2), (1, 0, 3, 3), (1, 1, 3, 0), (1, 1, 3, 1), (1, 1, 3, 2), (1, 1, 3, 3)] */
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
_buffer_store_b32 v44, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v45, v73, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v46, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v47, v75, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v48, v76, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v49, v77, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v50, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v51, v79, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v52, v80, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v53, v81, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v54, v82, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v55, v83, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v56, v84, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v57, v85, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v58, v86, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v59, v87, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v60, v88, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v61, v89, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v62, v90, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_buffer_store_b32 v63, v91, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_branch label_GW_End_66                           // jump to end
GW_Beta_67:
s_and_b32 s54, 127, s[sgprSizeI]                   // s54 = s[sgprSizeI] % 128
s_add_u32 s55, -0x1, s[sgprNumWorkGroups0]         // 
s_cmp_ge_u32 s[sgprWorkGroup0], s55                // wg0 >= nwg0-1 ?
s_cselect_b32 s54, s54, 0                          // set rMT0
s_cmpk_gt_u32 s54, 0x0                             // rMT0 > 0
s_cbranch_scc1 GW_B1_E1_65                         // jump if edges required
s_and_b32 s54, 63, s[sgprSizeJ]                    // s54 = s[sgprSizeJ] % 64
s_add_u32 s55, -0x1, s[sgprNumWorkGroups1]         // 
s_cmp_ge_u32 s[sgprWorkGroup1], s55                // wg1 >= nwg1-1
s_cselect_b32 s54, s54, 0                          // set rMT1
s_cmpk_gt_u32 s54, 0x0                             // rMT1 > 0
s_cbranch_scc1 GW_B1_E1_65                         // jump if edges required
GW_B1_E0_62:

/* edge=0, allocate 1 sgpr. perBatchTmpS=1 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=10 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Alpha Beta Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,1,0,0:vw4); (0,0,1,0:vw4); (0,1,1,0:vw4); (0,0,2,0:vw4); (0,1,2,0:vw4); (0,0,3,0:vw4); (0,1,3,0:vw4); (1,0,0,0:vw4); (1,1,0,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
_v_add_lshl_u32 v73, v68, v66, 0x2                 // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=66, coord0Vgpr=66
_buffer_load_b128 v[76:79], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
_buffer_load_b128 v[80:83], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:256 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[84:87], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,1,1,0) */
_buffer_load_b128 v[88:91], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:256 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[92:95], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,2,1,0) */
_buffer_load_b128 v[96:99], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:256 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[100:103], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,3,1,0) */
_buffer_load_b128 v[104:107], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:256 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
s_mul_i32 s54, s[sgprStrideC1J], 116               // scale StrideC *= numRows(29) * bpe
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[108:111], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,0,1,0) */
_buffer_load_b128 v[112:115], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:256 // load C for beta calc
_v_add_lshl_u32 v72, v69, v66, 0x2                 // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=66, coord0Vgpr=66

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 1, 0, 0), (0, 0, 1, 0), (0, 1, 1, 0), (0, 0, 2, 0), (0, 1, 2, 0), (0, 0, 3, 0), (0, 1, 3, 0), (1, 0, 0, 0), (1, 1, 0, 0)] */
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

/* apply mask, calc new C and issue writes */

s_waitcnt vmcnt(9)                                 // wait C (interleaved) 9 = 10 - 0 - 1
_v_mac_f32 v[vgprValuC+0], v76, s[sgprBeta]        // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+1], v77, s[sgprBeta]        // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+2], v78, s[sgprBeta]        // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+3], v79, s[sgprBeta]        // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[0:3], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(8)                                 // wait C (interleaved) 8 = 10 - 1 - 1
_v_mac_f32 v[vgprValuC+4], v80, s[sgprBeta]        // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+5], v81, s[sgprBeta]        // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+6], v82, s[sgprBeta]        // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+7], v83, s[sgprBeta]        // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[4:7], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D

s_waitcnt vmcnt(7)                                 // wait C (interleaved) 7 = 10 - 2 - 1
_v_mac_f32 v[vgprValuC+8], v84, s[sgprBeta]        // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+9], v85, s[sgprBeta]        // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+10], v86, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+11], v87, s[sgprBeta]       // finalSum = sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[8:11], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(6)                                 // wait C (interleaved) 6 = 10 - 3 - 1
_v_mac_f32 v[vgprValuC+12], v88, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+13], v89, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+14], v90, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+15], v91, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[12:15], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D

s_waitcnt vmcnt(5)                                 // wait C (interleaved) 5 = 10 - 4 - 1
_v_mac_f32 v[vgprValuC+16], v92, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+17], v93, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+18], v94, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+19], v95, s[sgprBeta]       // finalSum = sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[16:19], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(4)                                 // wait C (interleaved) 4 = 10 - 5 - 1
_v_mac_f32 v[vgprValuC+20], v96, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+21], v97, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+22], v98, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+23], v99, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[20:23], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D

s_waitcnt vmcnt(3)                                 // wait C (interleaved) 3 = 10 - 6 - 1
_v_mac_f32 v[vgprValuC+24], v100, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+25], v101, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+26], v102, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+27], v103, s[sgprBeta]      // finalSum = sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[24:27], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(2)                                 // wait C (interleaved) 2 = 10 - 7 - 1
_v_mac_f32 v[vgprValuC+28], v104, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+29], v105, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+30], v106, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+31], v107, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[28:31], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D

s_waitcnt vmcnt(1)                                 // wait C (interleaved) 1 = 10 - 8 - 1
_v_mac_f32 v[vgprValuC+32], v108, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+33], v109, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+34], v110, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+35], v111, s[sgprBeta]      // finalSum = sum*alpha + C*beta
s_mul_i32 s54, s[sgprStrideD1J], 116               // scale StrideD *= numRows(29) * bpe
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[32:35], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(0)                                 // wait C (interleaved) 0 = 10 - 9 - 1
_v_mac_f32 v[vgprValuC+36], v112, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+37], v113, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+38], v114, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+39], v115, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[36:39], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Alpha Beta Batch #1 (d1,d0,vc1,vc0) = */
/*    (1,0,1,0:vw4); (1,1,1,0:vw4); (1,0,2,0:vw4); (1,1,2,0:vw4); (1,0,3,0:vw4); (1,1,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[76:79], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,1,1,0) */
_buffer_load_b128 v[80:83], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:256 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,2,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[84:87], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,2,1,0) */
_buffer_load_b128 v[88:91], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:256 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,3,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[92:95], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(1,3,1,0) */
_buffer_load_b128 v[96:99], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:256 // load C for beta calc

/* rC *= alpha batchElements=[(1, 0, 1, 0), (1, 1, 1, 0), (1, 0, 2, 0), (1, 1, 2, 0), (1, 0, 3, 0), (1, 1, 3, 0)] */
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

s_waitcnt vmcnt(5)                                 // wait C (interleaved) 5 = 6 - 0 - 1
_v_mac_f32 v[vgprValuC+40], v76, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+41], v77, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+42], v78, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+43], v79, s[sgprBeta]       // finalSum = sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[40:43], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(4)                                 // wait C (interleaved) 4 = 6 - 1 - 1
_v_mac_f32 v[vgprValuC+44], v80, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+45], v81, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+46], v82, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+47], v83, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[44:47], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D

s_waitcnt vmcnt(3)                                 // wait C (interleaved) 3 = 6 - 2 - 1
_v_mac_f32 v[vgprValuC+48], v84, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+49], v85, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+50], v86, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+51], v87, s[sgprBeta]       // finalSum = sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[48:51], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(2)                                 // wait C (interleaved) 2 = 6 - 3 - 1
_v_mac_f32 v[vgprValuC+52], v88, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+53], v89, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+54], v90, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+55], v91, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[52:55], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D

s_waitcnt vmcnt(1)                                 // wait C (interleaved) 1 = 6 - 4 - 1
_v_mac_f32 v[vgprValuC+56], v92, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+57], v93, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+58], v94, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+59], v95, s[sgprBeta]       // finalSum = sum*alpha + C*beta
s_lshl_b32  s54, s[sgprStrideD1J], 2               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[56:59], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(0)                                 // wait C (interleaved) 0 = 6 - 5 - 1
_v_mac_f32 v[vgprValuC+60], v96, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+61], v97, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+62], v98, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_v_mac_f32 v[vgprValuC+63], v99, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b128 v[60:63], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:256 // store D
s_branch label_GW_End_66                           // jump to end
GW_B1_E1_65:

/* edge=1, allocate 3 sgpr. perBatchTmpS=2 perBatchMaskS=1 perElementMaskS=0 elementsPerBatch=22 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,0,0,1:vw1); (0,0,0,2:vw1); (0,0,0,3:vw1); (0,1,0,0:vw1); (0,1,0,1:vw1); (0,1,0,2:vw1); (0,1,0,3:vw1); (0,0,1,0:vw1); (0,0,1,1:vw1); (0,0,1,2:vw1); (0,0,1,3:vw1); (0,1,1,0:vw1); (0,1,1,1:vw1); (0,1,1,2:vw1); (0,1,1,3:vw1); (0,0,2,0:vw1); (0,0,2,1:vw1); (0,0,2,2:vw1); (0,0,2,3:vw1); (0,1,2,0:vw1); (0,1,2,1:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v72, v68, v66, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v73, v72, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v72, v69, v66, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v74, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v75, v74, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v74, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v76, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v77, v76, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v76, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v78, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v79, v78, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v78, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
_v_add_co_u32 v70, vcc_lo, v66, 64                 // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v80, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v81, v80, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v80, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v82, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v83, v82, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v82, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v84, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v85, v84, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v84, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v86, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v87, v86, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v86, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v88, v68, v66, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v88, -1, v88, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v89, v88, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v88, v69, v66, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v88, -1, v88, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v90, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v91, v90, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v90, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v92, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v93, v92, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v92, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v94, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v94, -1, v94, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v95, v94, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v94, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v94, -1, v94, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,0) */
_v_add_co_u32 v70, vcc_lo, v66, 64                 // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v96, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v97, v96, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v96, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v98, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v99, v98, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v98, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v100, v68, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v100, -1, v100, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v101, v100, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v100, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v100, -1, v100, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v102, v68, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v102, -1, v102, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v103, v102, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v102, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v102, -1, v102, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v104, v68, v66, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v104, -1, v104, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v105, v104, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v104, v69, v66, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v104, -1, v104, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v106, v68, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v106, -1, v106, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v107, v106, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v106, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v106, -1, v106, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v108, v68, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v108, -1, v108, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v109, v108, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v108, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v108, -1, v108, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v110, v68, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v110, -1, v110, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v111, v110, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v110, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v110, -1, v110, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,0) */
_v_add_co_u32 v70, vcc_lo, v66, 64                 // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v112, v68, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v112, -1, v112, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v113, v112, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v112, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v112, -1, v112, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v114, v68, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v114, -1, v114, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v115, v114, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v114, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v114, -1, v114, s56                  // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 0, 1), (0, 0, 0, 2), (0, 0, 0, 3), (0, 1, 0, 0), (0, 1, 0, 1), (0, 1, 0, 2), (0, 1, 0, 3), (0, 0, 1, 0), (0, 0, 1, 1), (0, 0, 1, 2), (0, 0, 1, 3), (0, 1, 1, 0), (0, 1, 1, 1), (0, 1, 1, 2), (0, 1, 1, 3), (0, 0, 2, 0), (0, 0, 2, 1), (0, 0, 2, 2), (0, 0, 2, 3), (0, 1, 2, 0), (0, 1, 2, 1)] */
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
s_waitcnt vmcnt(0)                                 // wait C
s_waitcnt_vscnt null, 0                            // writes

/* apply mask, calc new C and issue writes */
_v_mac_f32 v[vgprValuC+0], v73, s[sgprBeta]        // finalSum = sum*alpha + C*beta
_buffer_store_b32 v0, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+1], v75, s[sgprBeta]        // finalSum = sum*alpha + C*beta
_buffer_store_b32 v1, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+2], v77, s[sgprBeta]        // finalSum = sum*alpha + C*beta
_buffer_store_b32 v2, v76, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+3], v79, s[sgprBeta]        // finalSum = sum*alpha + C*beta
_buffer_store_b32 v3, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+4], v81, s[sgprBeta]        // finalSum = sum*alpha + C*beta
_buffer_store_b32 v4, v80, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+5], v83, s[sgprBeta]        // finalSum = sum*alpha + C*beta
_buffer_store_b32 v5, v82, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+6], v85, s[sgprBeta]        // finalSum = sum*alpha + C*beta
_buffer_store_b32 v6, v84, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+7], v87, s[sgprBeta]        // finalSum = sum*alpha + C*beta
_buffer_store_b32 v7, v86, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+8], v89, s[sgprBeta]        // finalSum = sum*alpha + C*beta
_buffer_store_b32 v8, v88, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+9], v91, s[sgprBeta]        // finalSum = sum*alpha + C*beta
_buffer_store_b32 v9, v90, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+10], v93, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v10, v92, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+11], v95, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v11, v94, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+12], v97, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v12, v96, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+13], v99, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v13, v98, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+14], v101, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v14, v100, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+15], v103, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v15, v102, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+16], v105, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v16, v104, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+17], v107, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v17, v106, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+18], v109, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v18, v108, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+19], v111, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v19, v110, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+20], v113, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v20, v112, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+21], v115, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v21, v114, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #1 (d1,d0,vc1,vc0) = */
/*    (0,1,2,2:vw1); (0,1,2,3:vw1); (0,0,3,0:vw1); (0,0,3,1:vw1); (0,0,3,2:vw1); (0,0,3,3:vw1); (0,1,3,0:vw1); (0,1,3,1:vw1); (0,1,3,2:vw1); (0,1,3,3:vw1); (1,0,0,0:vw1); (1,0,0,1:vw1); (1,0,0,2:vw1); (1,0,0,3:vw1); (1,1,0,0:vw1); (1,1,0,1:vw1); (1,1,0,2:vw1); (1,1,0,3:vw1); (1,0,1,0:vw1); (1,0,1,1:vw1); (1,0,1,2:vw1); (1,0,1,3:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,2,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v72, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v73, v72, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v72, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v74, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v75, v74, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v74, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v76, v68, v66, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v77, v76, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v76, v69, v66, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v78, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v79, v78, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v78, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v80, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v81, v80, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v80, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v82, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v83, v82, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v82, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,0) */
_v_add_co_u32 v70, vcc_lo, v66, 64                 // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v84, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v85, v84, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v84, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v86, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v87, v86, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v86, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v88, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v88, -1, v88, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v89, v88, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v88, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v88, -1, v88, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v90, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v91, v90, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v90, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 29                 // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s54, s[sgprStrideC1J], 29                // scale stride
_v_add_u32 v68, v68, s54                           // ROWINC- Move cinRowPtr to next row
s_mul_i32 s54, s[sgprStrideD1J], 29                // scale stride
_v_add_u32 v69, v69, s54                           // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v92, v68, v66, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v93, v92, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v92, v69, v66, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v94, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v94, -1, v94, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v95, v94, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v94, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v94, -1, v94, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v96, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v97, v96, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v96, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v98, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v99, v98, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v98, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,1,0) */
_v_add_co_u32 v70, vcc_lo, v66, 64                 // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v100, v68, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v100, -1, v100, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v101, v100, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v100, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v100, -1, v100, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v102, v68, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v102, -1, v102, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v103, v102, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v102, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v102, -1, v102, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v104, v68, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v104, -1, v104, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v105, v104, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v104, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v104, -1, v104, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v106, v68, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v106, -1, v106, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v107, v106, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v106, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v106, -1, v106, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v108, v68, v66, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v108, -1, v108, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v109, v108, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v108, v69, v66, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v108, -1, v108, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v110, v68, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v110, -1, v110, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v111, v110, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v110, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v110, -1, v110, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v112, v68, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v112, -1, v112, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v113, v112, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v112, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v112, -1, v112, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v114, v68, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v114, -1, v114, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v115, v114, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v114, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v114, -1, v114, s56                  // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 1, 2, 2), (0, 1, 2, 3), (0, 0, 3, 0), (0, 0, 3, 1), (0, 0, 3, 2), (0, 0, 3, 3), (0, 1, 3, 0), (0, 1, 3, 1), (0, 1, 3, 2), (0, 1, 3, 3), (1, 0, 0, 0), (1, 0, 0, 1), (1, 0, 0, 2), (1, 0, 0, 3), (1, 1, 0, 0), (1, 1, 0, 1), (1, 1, 0, 2), (1, 1, 0, 3), (1, 0, 1, 0), (1, 0, 1, 1), (1, 0, 1, 2), (1, 0, 1, 3)] */
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
s_waitcnt vmcnt(0)                                 // wait C
s_waitcnt_vscnt null, 0                            // writes

/* apply mask, calc new C and issue writes */
_v_mac_f32 v[vgprValuC+22], v73, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v22, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+23], v75, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v23, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+24], v77, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v24, v76, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+25], v79, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v25, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+26], v81, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v26, v80, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+27], v83, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v27, v82, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+28], v85, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v28, v84, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+29], v87, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v29, v86, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+30], v89, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v30, v88, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+31], v91, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v31, v90, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+32], v93, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v32, v92, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+33], v95, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v33, v94, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+34], v97, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v34, v96, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+35], v99, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v35, v98, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+36], v101, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v36, v100, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+37], v103, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v37, v102, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+38], v105, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v38, v104, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+39], v107, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v39, v106, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+40], v109, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v40, v108, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+41], v111, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v41, v110, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+42], v113, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v42, v112, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+43], v115, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v43, v114, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #2 (d1,d0,vc1,vc0) = */
/*    (1,1,1,0:vw1); (1,1,1,1:vw1); (1,1,1,2:vw1); (1,1,1,3:vw1); (1,0,2,0:vw1); (1,0,2,1:vw1); (1,0,2,2:vw1); (1,0,2,3:vw1); (1,1,2,0:vw1); (1,1,2,1:vw1); (1,1,2,2:vw1); (1,1,2,3:vw1); (1,0,3,0:vw1); (1,0,3,1:vw1); (1,0,3,2:vw1); (1,0,3,3:vw1); (1,1,3,0:vw1); (1,1,3,1:vw1); (1,1,3,2:vw1); (1,1,3,3:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(1,1,1,0) */
_v_add_co_u32 v70, vcc_lo, v66, 64                 // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v72, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v73, v72, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v72, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v74, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v75, v74, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v74, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v76, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v77, v76, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v76, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v78, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v79, v78, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v78, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v80, v68, v66, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v81, v80, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v80, v69, v66, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v82, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v83, v82, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v82, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v84, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v85, v84, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v84, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v86, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v87, v86, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v86, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,1,0) */
_v_add_co_u32 v70, vcc_lo, v66, 64                 // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v88, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v88, -1, v88, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v89, v88, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v88, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v88, -1, v88, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v90, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v91, v90, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v90, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v92, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v93, v92, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v92, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v94, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v94, -1, v94, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v95, v94, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v94, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v94, -1, v94, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v96, v68, v66, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v97, v96, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v96, v69, v66, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v98, v68, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDC clip if OOB. offset
_buffer_load_b32 v99, v98, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v98, v69, v70, 0x2                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v100, v68, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v100, -1, v100, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v101, v100, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v100, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v100, -1, v100, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v102, v68, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v102, -1, v102, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v103, v102, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v102, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v102, -1, v102, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,1,0) */
_v_add_co_u32 v70, vcc_lo, v66, 64                 // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v104, v68, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v104, -1, v104, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v105, v104, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v104, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v104, -1, v104, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,1,1) */
s_mov_b32 s54, 65                                  // coordOffset0 d0=1 vc0=1
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v106, v68, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v106, -1, v106, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v107, v106, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v106, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v106, -1, v106, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,1,2) */
s_mov_b32 s54, 66                                  // coordOffset0 d0=1 vc0=2
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v108, v68, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v108, -1, v108, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v109, v108, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v108, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v108, -1, v108, s56                  // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,1,3) */
s_mov_b32 s54, 67                                  // coordOffset0 d0=1 vc0=3
_v_add_co_u32 v70, vcc_lo, v66, s54                // coord0.2: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v110, v68, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v110, -1, v110, s56                  // LDC clip if OOB. offset
_buffer_load_b32 v111, v110, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v110, v69, v70, 0x2                // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v110, -1, v110, s56                  // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(1, 1, 1, 0), (1, 1, 1, 1), (1, 1, 1, 2), (1, 1, 1, 3), (1, 0, 2, 0), (1, 0, 2, 1), (1, 0, 2, 2), (1, 0, 2, 3), (1, 1, 2, 0), (1, 1, 2, 1), (1, 1, 2, 2), (1, 1, 2, 3), (1, 0, 3, 0), (1, 0, 3, 1), (1, 0, 3, 2), (1, 0, 3, 3), (1, 1, 3, 0), (1, 1, 3, 1), (1, 1, 3, 2), (1, 1, 3, 3)] */
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
s_waitcnt vmcnt(0)                                 // wait C
s_waitcnt_vscnt null, 0                            // writes

/* apply mask, calc new C and issue writes */
_v_mac_f32 v[vgprValuC+44], v73, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v44, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+45], v75, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v45, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+46], v77, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v46, v76, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+47], v79, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v47, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+48], v81, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v48, v80, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+49], v83, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v49, v82, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+50], v85, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v50, v84, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+51], v87, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v51, v86, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+52], v89, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v52, v88, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+53], v91, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v53, v90, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+54], v93, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v54, v92, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+55], v95, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v55, v94, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+56], v97, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v56, v96, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+57], v99, s[sgprBeta]       // finalSum = sum*alpha + C*beta
_buffer_store_b32 v57, v98, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+58], v101, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v58, v100, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+59], v103, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v59, v102, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+60], v105, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v60, v104, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+61], v107, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v61, v106, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+62], v109, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v62, v108, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
_v_mac_f32 v[vgprValuC+63], v111, s[sgprBeta]      // finalSum = sum*alpha + C*beta
_buffer_store_b32 v63, v110, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_branch label_GW_End_66                           // jump to end
label_GW_End_66:

label_0071:  /// KernelEnd
s_endpgm                                           // Kernel End

