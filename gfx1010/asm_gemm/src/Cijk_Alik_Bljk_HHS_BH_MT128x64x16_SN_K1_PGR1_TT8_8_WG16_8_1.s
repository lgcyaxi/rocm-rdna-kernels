
/******************************************/
/* Function Prefix                        */
/******************************************/



/******************************************/
/* Begin Kernel                           */
/******************************************/

// Component.Signature.SignatureDefault
.amdgcn_target "amdgcn-amd-amdhsa--gfx1010"
.text
.protected Cijk_Alik_Bljk_HHS_BH_MT128x64x16_SN_K1_PGR1_TT8_8_WG16_8_1
.globl Cijk_Alik_Bljk_HHS_BH_MT128x64x16_SN_K1_PGR1_TT8_8_WG16_8_1
.p2align 8
.type Cijk_Alik_Bljk_HHS_BH_MT128x64x16_SN_K1_PGR1_TT8_8_WG16_8_1,@function
.section .rodata,#alloc
.p2align 6
.amdhsa_kernel Cijk_Alik_Bljk_HHS_BH_MT128x64x16_SN_K1_PGR1_TT8_8_WG16_8_1
  .amdhsa_user_sgpr_kernarg_segment_ptr 1
  .amdhsa_user_sgpr_count 2
  .amdhsa_next_free_vgpr 103 // vgprs
  .amdhsa_next_free_sgpr 64 // sgprs
  .amdhsa_group_segment_fixed_size 14848 // lds bytes
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
/* UseSgprForGRO=1 */
.amdgpu_metadata
---
amdhsa.version:
  - 1
  - 1
amdhsa.target: amdgcn-amd-amdhsa--gfx1010
amdhsa.kernels:
  - .name: Cijk_Alik_Bljk_HHS_BH_MT128x64x16_SN_K1_PGR1_TT8_8_WG16_8_1
    .symbol: 'Cijk_Alik_Bljk_HHS_BH_MT128x64x16_SN_K1_PGR1_TT8_8_WG16_8_1.kd'
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
    .group_segment_fixed_size:   14848
    .kernarg_segment_align:      8
    .kernarg_segment_size:       128
    .max_flat_workgroup_size:    128
    .private_segment_fixed_size: 0
    .sgpr_count:                 64
    .sgpr_spill_count:           0
    .vgpr_count:                 103
    .vgpr_spill_count:           0
    .wavefront_size:             32
...
.end_amdgpu_metadata
Cijk_Alik_Bljk_HHS_BH_MT128x64x16_SN_K1_PGR1_TT8_8_WG16_8_1:

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
.set vgprValuA_X1_I0, 70
.set vgprG2LA, 88
.set vgprValuB_X0_I0, 75
.set vgprValuB_X1_I0, 79
.set vgprG2LB, 96
.set vgprLocalWriteAddrA, 83
.set vgprLocalWriteAddrB, 84
.set vgprGlobalReadOffsetA, 85
.set vgprGlobalReadOffsetB, 86
.set vgprLocalReadAddrA, 100
.set vgprLocalReadAddrB, 101
.set vgprSerial, 102
/* Num VGPR=103 */
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
.set sgprScalarGlobalReadOffsetA, 58 // (1)
/* max SGPR=64 */

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
.set constStrideAL, 1
.set sgprStrideA0I, sgprStridesA+0
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
.macro GLOBAL_OFFSET_A vgprAddr:req vgprOffsetL:req vgprOffset0I:req vgprTmp:req
v_mul_lo_u32 v[\vgprTmp+0], s[sgprStrideA0I], v[\vgprOffset0I] // mul d1 lower
_v_add_co_u32 v[\vgprAddr+0], vcc_lo, v[\vgprOffsetL], v[\vgprTmp+0] // accumulate K lower
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
// Component.MAC.FMA_F16_HPA_MAD_MIX
v_fma_mix_f32 v[vgprValuC + 0*2 + 0*8*2 + 0*2 + 0], v[vgprValuA_X0_I0+0], v[vgprValuB_X0_I0+0], v[vgprValuC + 0*2 + 0*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[0] iui=0
s_setprio 1 // Raise priority while processing macs
v_fma_mix_f32 v[vgprValuC + 0*2 + 0*8*2 + 0*2 + 1], v[vgprValuA_X0_I0+0], v[vgprValuB_X0_I0+0], v[vgprValuC + 0*2 + 0*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[1]
v_fma_mix_f32 v[vgprValuC+0*2 + 0*8*2 + 4*2 + 0], v[vgprValuA_X0_I0+0], v[vgprValuB_X0_I0+0], v[vgprValuC+0*2 + 0*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[8]
v_fma_mix_f32 v[vgprValuC+0*2+0*8*2+4*2+1], v[vgprValuA_X0_I0+0], v[vgprValuB_X0_I0+0], v[vgprValuC+0*2+0*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[9]
v_fma_mix_f32 v[vgprValuC + 1*2 + 0*8*2 + 0*2 + 0], v[vgprValuA_X0_I0+1], v[vgprValuB_X0_I0+0], v[vgprValuC + 1*2 + 0*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[2] iui=0
v_fma_mix_f32 v[vgprValuC + 1*2 + 0*8*2 + 0*2 + 1], v[vgprValuA_X0_I0+1], v[vgprValuB_X0_I0+0], v[vgprValuC + 1*2 + 0*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[3]
v_fma_mix_f32 v[vgprValuC+1*2 + 0*8*2 + 4*2 + 0], v[vgprValuA_X0_I0+1], v[vgprValuB_X0_I0+0], v[vgprValuC+1*2 + 0*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[10]
v_fma_mix_f32 v[vgprValuC+1*2+0*8*2+4*2+1], v[vgprValuA_X0_I0+1], v[vgprValuB_X0_I0+0], v[vgprValuC+1*2+0*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[11]
v_fma_mix_f32 v[vgprValuC + 2*2 + 0*8*2 + 0*2 + 0], v[vgprValuA_X0_I0+2], v[vgprValuB_X0_I0+0], v[vgprValuC + 2*2 + 0*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[4] iui=0
v_fma_mix_f32 v[vgprValuC + 2*2 + 0*8*2 + 0*2 + 1], v[vgprValuA_X0_I0+2], v[vgprValuB_X0_I0+0], v[vgprValuC + 2*2 + 0*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[5]
v_fma_mix_f32 v[vgprValuC+2*2 + 0*8*2 + 4*2 + 0], v[vgprValuA_X0_I0+2], v[vgprValuB_X0_I0+0], v[vgprValuC+2*2 + 0*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[12]
v_fma_mix_f32 v[vgprValuC+2*2+0*8*2+4*2+1], v[vgprValuA_X0_I0+2], v[vgprValuB_X0_I0+0], v[vgprValuC+2*2+0*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[13]
v_fma_mix_f32 v[vgprValuC + 3*2 + 0*8*2 + 0*2 + 0], v[vgprValuA_X0_I0+3], v[vgprValuB_X0_I0+0], v[vgprValuC + 3*2 + 0*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[6] iui=0
v_fma_mix_f32 v[vgprValuC + 3*2 + 0*8*2 + 0*2 + 1], v[vgprValuA_X0_I0+3], v[vgprValuB_X0_I0+0], v[vgprValuC + 3*2 + 0*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[7]
v_fma_mix_f32 v[vgprValuC+3*2 + 0*8*2 + 4*2 + 0], v[vgprValuA_X0_I0+3], v[vgprValuB_X0_I0+0], v[vgprValuC+3*2 + 0*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[14]
v_fma_mix_f32 v[vgprValuC+3*2+0*8*2+4*2+1], v[vgprValuA_X0_I0+3], v[vgprValuB_X0_I0+0], v[vgprValuC+3*2+0*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[15]
v_fma_mix_f32 v[vgprValuC + 0*2 + 1*8*2 + 0*2 + 0], v[vgprValuA_X0_I0+0], v[vgprValuB_X0_I0+1], v[vgprValuC + 0*2 + 1*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[16] iui=0
v_fma_mix_f32 v[vgprValuC + 0*2 + 1*8*2 + 0*2 + 1], v[vgprValuA_X0_I0+0], v[vgprValuB_X0_I0+1], v[vgprValuC + 0*2 + 1*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[17]
v_fma_mix_f32 v[vgprValuC+0*2 + 1*8*2 + 4*2 + 0], v[vgprValuA_X0_I0+0], v[vgprValuB_X0_I0+1], v[vgprValuC+0*2 + 1*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[24]
v_fma_mix_f32 v[vgprValuC+0*2+1*8*2+4*2+1], v[vgprValuA_X0_I0+0], v[vgprValuB_X0_I0+1], v[vgprValuC+0*2+1*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[25]
v_fma_mix_f32 v[vgprValuC + 1*2 + 1*8*2 + 0*2 + 0], v[vgprValuA_X0_I0+1], v[vgprValuB_X0_I0+1], v[vgprValuC + 1*2 + 1*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[18] iui=0
v_fma_mix_f32 v[vgprValuC + 1*2 + 1*8*2 + 0*2 + 1], v[vgprValuA_X0_I0+1], v[vgprValuB_X0_I0+1], v[vgprValuC + 1*2 + 1*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[19]
v_fma_mix_f32 v[vgprValuC+1*2 + 1*8*2 + 4*2 + 0], v[vgprValuA_X0_I0+1], v[vgprValuB_X0_I0+1], v[vgprValuC+1*2 + 1*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[26]
v_fma_mix_f32 v[vgprValuC+1*2+1*8*2+4*2+1], v[vgprValuA_X0_I0+1], v[vgprValuB_X0_I0+1], v[vgprValuC+1*2+1*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[27]
v_fma_mix_f32 v[vgprValuC + 2*2 + 1*8*2 + 0*2 + 0], v[vgprValuA_X0_I0+2], v[vgprValuB_X0_I0+1], v[vgprValuC + 2*2 + 1*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[20] iui=0
v_fma_mix_f32 v[vgprValuC + 2*2 + 1*8*2 + 0*2 + 1], v[vgprValuA_X0_I0+2], v[vgprValuB_X0_I0+1], v[vgprValuC + 2*2 + 1*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[21]
v_fma_mix_f32 v[vgprValuC+2*2 + 1*8*2 + 4*2 + 0], v[vgprValuA_X0_I0+2], v[vgprValuB_X0_I0+1], v[vgprValuC+2*2 + 1*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[28]
v_fma_mix_f32 v[vgprValuC+2*2+1*8*2+4*2+1], v[vgprValuA_X0_I0+2], v[vgprValuB_X0_I0+1], v[vgprValuC+2*2+1*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[29]
v_fma_mix_f32 v[vgprValuC + 3*2 + 1*8*2 + 0*2 + 0], v[vgprValuA_X0_I0+3], v[vgprValuB_X0_I0+1], v[vgprValuC + 3*2 + 1*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[22] iui=0
v_fma_mix_f32 v[vgprValuC + 3*2 + 1*8*2 + 0*2 + 1], v[vgprValuA_X0_I0+3], v[vgprValuB_X0_I0+1], v[vgprValuC + 3*2 + 1*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[23]
v_fma_mix_f32 v[vgprValuC+3*2 + 1*8*2 + 4*2 + 0], v[vgprValuA_X0_I0+3], v[vgprValuB_X0_I0+1], v[vgprValuC+3*2 + 1*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[30]
v_fma_mix_f32 v[vgprValuC+3*2+1*8*2+4*2+1], v[vgprValuA_X0_I0+3], v[vgprValuB_X0_I0+1], v[vgprValuC+3*2+1*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[31]
v_fma_mix_f32 v[vgprValuC + 0*2 + 2*8*2 + 0*2 + 0], v[vgprValuA_X0_I0+0], v[vgprValuB_X0_I0+2], v[vgprValuC + 0*2 + 2*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[32] iui=0
v_fma_mix_f32 v[vgprValuC + 0*2 + 2*8*2 + 0*2 + 1], v[vgprValuA_X0_I0+0], v[vgprValuB_X0_I0+2], v[vgprValuC + 0*2 + 2*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[33]
v_fma_mix_f32 v[vgprValuC+0*2 + 2*8*2 + 4*2 + 0], v[vgprValuA_X0_I0+0], v[vgprValuB_X0_I0+2], v[vgprValuC+0*2 + 2*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[40]
v_fma_mix_f32 v[vgprValuC+0*2+2*8*2+4*2+1], v[vgprValuA_X0_I0+0], v[vgprValuB_X0_I0+2], v[vgprValuC+0*2+2*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[41]
v_fma_mix_f32 v[vgprValuC + 1*2 + 2*8*2 + 0*2 + 0], v[vgprValuA_X0_I0+1], v[vgprValuB_X0_I0+2], v[vgprValuC + 1*2 + 2*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[34] iui=0
v_fma_mix_f32 v[vgprValuC + 1*2 + 2*8*2 + 0*2 + 1], v[vgprValuA_X0_I0+1], v[vgprValuB_X0_I0+2], v[vgprValuC + 1*2 + 2*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[35]
v_fma_mix_f32 v[vgprValuC+1*2 + 2*8*2 + 4*2 + 0], v[vgprValuA_X0_I0+1], v[vgprValuB_X0_I0+2], v[vgprValuC+1*2 + 2*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[42]
v_fma_mix_f32 v[vgprValuC+1*2+2*8*2+4*2+1], v[vgprValuA_X0_I0+1], v[vgprValuB_X0_I0+2], v[vgprValuC+1*2+2*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[43]
v_fma_mix_f32 v[vgprValuC + 2*2 + 2*8*2 + 0*2 + 0], v[vgprValuA_X0_I0+2], v[vgprValuB_X0_I0+2], v[vgprValuC + 2*2 + 2*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[36] iui=0
v_fma_mix_f32 v[vgprValuC + 2*2 + 2*8*2 + 0*2 + 1], v[vgprValuA_X0_I0+2], v[vgprValuB_X0_I0+2], v[vgprValuC + 2*2 + 2*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[37]
v_fma_mix_f32 v[vgprValuC+2*2 + 2*8*2 + 4*2 + 0], v[vgprValuA_X0_I0+2], v[vgprValuB_X0_I0+2], v[vgprValuC+2*2 + 2*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[44]
v_fma_mix_f32 v[vgprValuC+2*2+2*8*2+4*2+1], v[vgprValuA_X0_I0+2], v[vgprValuB_X0_I0+2], v[vgprValuC+2*2+2*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[45]
v_fma_mix_f32 v[vgprValuC + 3*2 + 2*8*2 + 0*2 + 0], v[vgprValuA_X0_I0+3], v[vgprValuB_X0_I0+2], v[vgprValuC + 3*2 + 2*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[38] iui=0
v_fma_mix_f32 v[vgprValuC + 3*2 + 2*8*2 + 0*2 + 1], v[vgprValuA_X0_I0+3], v[vgprValuB_X0_I0+2], v[vgprValuC + 3*2 + 2*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[39]
v_fma_mix_f32 v[vgprValuC+3*2 + 2*8*2 + 4*2 + 0], v[vgprValuA_X0_I0+3], v[vgprValuB_X0_I0+2], v[vgprValuC+3*2 + 2*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[46]
v_fma_mix_f32 v[vgprValuC+3*2+2*8*2+4*2+1], v[vgprValuA_X0_I0+3], v[vgprValuB_X0_I0+2], v[vgprValuC+3*2+2*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[47]
v_fma_mix_f32 v[vgprValuC + 0*2 + 3*8*2 + 0*2 + 0], v[vgprValuA_X0_I0+0], v[vgprValuB_X0_I0+3], v[vgprValuC + 0*2 + 3*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[48] iui=0
v_fma_mix_f32 v[vgprValuC + 0*2 + 3*8*2 + 0*2 + 1], v[vgprValuA_X0_I0+0], v[vgprValuB_X0_I0+3], v[vgprValuC + 0*2 + 3*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[49]
v_fma_mix_f32 v[vgprValuC+0*2 + 3*8*2 + 4*2 + 0], v[vgprValuA_X0_I0+0], v[vgprValuB_X0_I0+3], v[vgprValuC+0*2 + 3*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[56]
v_fma_mix_f32 v[vgprValuC+0*2+3*8*2+4*2+1], v[vgprValuA_X0_I0+0], v[vgprValuB_X0_I0+3], v[vgprValuC+0*2+3*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[57]
v_fma_mix_f32 v[vgprValuC + 1*2 + 3*8*2 + 0*2 + 0], v[vgprValuA_X0_I0+1], v[vgprValuB_X0_I0+3], v[vgprValuC + 1*2 + 3*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[50] iui=0
v_fma_mix_f32 v[vgprValuC + 1*2 + 3*8*2 + 0*2 + 1], v[vgprValuA_X0_I0+1], v[vgprValuB_X0_I0+3], v[vgprValuC + 1*2 + 3*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[51]
v_fma_mix_f32 v[vgprValuC+1*2 + 3*8*2 + 4*2 + 0], v[vgprValuA_X0_I0+1], v[vgprValuB_X0_I0+3], v[vgprValuC+1*2 + 3*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[58]
v_fma_mix_f32 v[vgprValuC+1*2+3*8*2+4*2+1], v[vgprValuA_X0_I0+1], v[vgprValuB_X0_I0+3], v[vgprValuC+1*2+3*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[59]
v_fma_mix_f32 v[vgprValuC + 2*2 + 3*8*2 + 0*2 + 0], v[vgprValuA_X0_I0+2], v[vgprValuB_X0_I0+3], v[vgprValuC + 2*2 + 3*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[52] iui=0
v_fma_mix_f32 v[vgprValuC + 2*2 + 3*8*2 + 0*2 + 1], v[vgprValuA_X0_I0+2], v[vgprValuB_X0_I0+3], v[vgprValuC + 2*2 + 3*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[53]
v_fma_mix_f32 v[vgprValuC+2*2 + 3*8*2 + 4*2 + 0], v[vgprValuA_X0_I0+2], v[vgprValuB_X0_I0+3], v[vgprValuC+2*2 + 3*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[60]
v_fma_mix_f32 v[vgprValuC+2*2+3*8*2+4*2+1], v[vgprValuA_X0_I0+2], v[vgprValuB_X0_I0+3], v[vgprValuC+2*2+3*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[61]
v_fma_mix_f32 v[vgprValuC + 3*2 + 3*8*2 + 0*2 + 0], v[vgprValuA_X0_I0+3], v[vgprValuB_X0_I0+3], v[vgprValuC + 3*2 + 3*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[54] iui=0
v_fma_mix_f32 v[vgprValuC + 3*2 + 3*8*2 + 0*2 + 1], v[vgprValuA_X0_I0+3], v[vgprValuB_X0_I0+3], v[vgprValuC + 3*2 + 3*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[55]
v_fma_mix_f32 v[vgprValuC+3*2 + 3*8*2 + 4*2 + 0], v[vgprValuA_X0_I0+3], v[vgprValuB_X0_I0+3], v[vgprValuC+3*2 + 3*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[62]
v_fma_mix_f32 v[vgprValuC+3*2+3*8*2+4*2+1], v[vgprValuA_X0_I0+3], v[vgprValuB_X0_I0+3], v[vgprValuC+3*2+3*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[63]
s_setprio 0 // Reset priority after macs
.endm
.macro MAC_8x8_X1
// Component.MAC.FMA_F16_HPA_MAD_MIX
v_fma_mix_f32 v[vgprValuC + 0*2 + 0*8*2 + 0*2 + 0], v[vgprValuA_X1_I0+0], v[vgprValuB_X1_I0+0], v[vgprValuC + 0*2 + 0*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[0] iui=0
s_setprio 1 // Raise priority while processing macs
v_fma_mix_f32 v[vgprValuC + 0*2 + 0*8*2 + 0*2 + 1], v[vgprValuA_X1_I0+0], v[vgprValuB_X1_I0+0], v[vgprValuC + 0*2 + 0*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[1]
v_fma_mix_f32 v[vgprValuC+0*2 + 0*8*2 + 4*2 + 0], v[vgprValuA_X1_I0+0], v[vgprValuB_X1_I0+0], v[vgprValuC+0*2 + 0*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[8]
v_fma_mix_f32 v[vgprValuC+0*2+0*8*2+4*2+1], v[vgprValuA_X1_I0+0], v[vgprValuB_X1_I0+0], v[vgprValuC+0*2+0*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[9]
v_fma_mix_f32 v[vgprValuC + 1*2 + 0*8*2 + 0*2 + 0], v[vgprValuA_X1_I0+1], v[vgprValuB_X1_I0+0], v[vgprValuC + 1*2 + 0*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[2] iui=0
v_fma_mix_f32 v[vgprValuC + 1*2 + 0*8*2 + 0*2 + 1], v[vgprValuA_X1_I0+1], v[vgprValuB_X1_I0+0], v[vgprValuC + 1*2 + 0*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[3]
v_fma_mix_f32 v[vgprValuC+1*2 + 0*8*2 + 4*2 + 0], v[vgprValuA_X1_I0+1], v[vgprValuB_X1_I0+0], v[vgprValuC+1*2 + 0*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[10]
v_fma_mix_f32 v[vgprValuC+1*2+0*8*2+4*2+1], v[vgprValuA_X1_I0+1], v[vgprValuB_X1_I0+0], v[vgprValuC+1*2+0*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[11]
v_fma_mix_f32 v[vgprValuC + 2*2 + 0*8*2 + 0*2 + 0], v[vgprValuA_X1_I0+2], v[vgprValuB_X1_I0+0], v[vgprValuC + 2*2 + 0*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[4] iui=0
v_fma_mix_f32 v[vgprValuC + 2*2 + 0*8*2 + 0*2 + 1], v[vgprValuA_X1_I0+2], v[vgprValuB_X1_I0+0], v[vgprValuC + 2*2 + 0*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[5]
v_fma_mix_f32 v[vgprValuC+2*2 + 0*8*2 + 4*2 + 0], v[vgprValuA_X1_I0+2], v[vgprValuB_X1_I0+0], v[vgprValuC+2*2 + 0*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[12]
v_fma_mix_f32 v[vgprValuC+2*2+0*8*2+4*2+1], v[vgprValuA_X1_I0+2], v[vgprValuB_X1_I0+0], v[vgprValuC+2*2+0*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[13]
v_fma_mix_f32 v[vgprValuC + 3*2 + 0*8*2 + 0*2 + 0], v[vgprValuA_X1_I0+3], v[vgprValuB_X1_I0+0], v[vgprValuC + 3*2 + 0*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[6] iui=0
v_fma_mix_f32 v[vgprValuC + 3*2 + 0*8*2 + 0*2 + 1], v[vgprValuA_X1_I0+3], v[vgprValuB_X1_I0+0], v[vgprValuC + 3*2 + 0*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[7]
v_fma_mix_f32 v[vgprValuC+3*2 + 0*8*2 + 4*2 + 0], v[vgprValuA_X1_I0+3], v[vgprValuB_X1_I0+0], v[vgprValuC+3*2 + 0*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[14]
v_fma_mix_f32 v[vgprValuC+3*2+0*8*2+4*2+1], v[vgprValuA_X1_I0+3], v[vgprValuB_X1_I0+0], v[vgprValuC+3*2+0*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[15]
v_fma_mix_f32 v[vgprValuC + 0*2 + 1*8*2 + 0*2 + 0], v[vgprValuA_X1_I0+0], v[vgprValuB_X1_I0+1], v[vgprValuC + 0*2 + 1*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[16] iui=0
v_fma_mix_f32 v[vgprValuC + 0*2 + 1*8*2 + 0*2 + 1], v[vgprValuA_X1_I0+0], v[vgprValuB_X1_I0+1], v[vgprValuC + 0*2 + 1*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[17]
v_fma_mix_f32 v[vgprValuC+0*2 + 1*8*2 + 4*2 + 0], v[vgprValuA_X1_I0+0], v[vgprValuB_X1_I0+1], v[vgprValuC+0*2 + 1*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[24]
v_fma_mix_f32 v[vgprValuC+0*2+1*8*2+4*2+1], v[vgprValuA_X1_I0+0], v[vgprValuB_X1_I0+1], v[vgprValuC+0*2+1*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[25]
v_fma_mix_f32 v[vgprValuC + 1*2 + 1*8*2 + 0*2 + 0], v[vgprValuA_X1_I0+1], v[vgprValuB_X1_I0+1], v[vgprValuC + 1*2 + 1*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[18] iui=0
v_fma_mix_f32 v[vgprValuC + 1*2 + 1*8*2 + 0*2 + 1], v[vgprValuA_X1_I0+1], v[vgprValuB_X1_I0+1], v[vgprValuC + 1*2 + 1*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[19]
v_fma_mix_f32 v[vgprValuC+1*2 + 1*8*2 + 4*2 + 0], v[vgprValuA_X1_I0+1], v[vgprValuB_X1_I0+1], v[vgprValuC+1*2 + 1*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[26]
v_fma_mix_f32 v[vgprValuC+1*2+1*8*2+4*2+1], v[vgprValuA_X1_I0+1], v[vgprValuB_X1_I0+1], v[vgprValuC+1*2+1*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[27]
v_fma_mix_f32 v[vgprValuC + 2*2 + 1*8*2 + 0*2 + 0], v[vgprValuA_X1_I0+2], v[vgprValuB_X1_I0+1], v[vgprValuC + 2*2 + 1*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[20] iui=0
v_fma_mix_f32 v[vgprValuC + 2*2 + 1*8*2 + 0*2 + 1], v[vgprValuA_X1_I0+2], v[vgprValuB_X1_I0+1], v[vgprValuC + 2*2 + 1*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[21]
v_fma_mix_f32 v[vgprValuC+2*2 + 1*8*2 + 4*2 + 0], v[vgprValuA_X1_I0+2], v[vgprValuB_X1_I0+1], v[vgprValuC+2*2 + 1*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[28]
v_fma_mix_f32 v[vgprValuC+2*2+1*8*2+4*2+1], v[vgprValuA_X1_I0+2], v[vgprValuB_X1_I0+1], v[vgprValuC+2*2+1*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[29]
v_fma_mix_f32 v[vgprValuC + 3*2 + 1*8*2 + 0*2 + 0], v[vgprValuA_X1_I0+3], v[vgprValuB_X1_I0+1], v[vgprValuC + 3*2 + 1*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[22] iui=0
v_fma_mix_f32 v[vgprValuC + 3*2 + 1*8*2 + 0*2 + 1], v[vgprValuA_X1_I0+3], v[vgprValuB_X1_I0+1], v[vgprValuC + 3*2 + 1*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[23]
v_fma_mix_f32 v[vgprValuC+3*2 + 1*8*2 + 4*2 + 0], v[vgprValuA_X1_I0+3], v[vgprValuB_X1_I0+1], v[vgprValuC+3*2 + 1*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[30]
v_fma_mix_f32 v[vgprValuC+3*2+1*8*2+4*2+1], v[vgprValuA_X1_I0+3], v[vgprValuB_X1_I0+1], v[vgprValuC+3*2+1*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[31]
v_fma_mix_f32 v[vgprValuC + 0*2 + 2*8*2 + 0*2 + 0], v[vgprValuA_X1_I0+0], v[vgprValuB_X1_I0+2], v[vgprValuC + 0*2 + 2*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[32] iui=0
v_fma_mix_f32 v[vgprValuC + 0*2 + 2*8*2 + 0*2 + 1], v[vgprValuA_X1_I0+0], v[vgprValuB_X1_I0+2], v[vgprValuC + 0*2 + 2*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[33]
v_fma_mix_f32 v[vgprValuC+0*2 + 2*8*2 + 4*2 + 0], v[vgprValuA_X1_I0+0], v[vgprValuB_X1_I0+2], v[vgprValuC+0*2 + 2*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[40]
v_fma_mix_f32 v[vgprValuC+0*2+2*8*2+4*2+1], v[vgprValuA_X1_I0+0], v[vgprValuB_X1_I0+2], v[vgprValuC+0*2+2*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[41]
v_fma_mix_f32 v[vgprValuC + 1*2 + 2*8*2 + 0*2 + 0], v[vgprValuA_X1_I0+1], v[vgprValuB_X1_I0+2], v[vgprValuC + 1*2 + 2*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[34] iui=0
v_fma_mix_f32 v[vgprValuC + 1*2 + 2*8*2 + 0*2 + 1], v[vgprValuA_X1_I0+1], v[vgprValuB_X1_I0+2], v[vgprValuC + 1*2 + 2*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[35]
v_fma_mix_f32 v[vgprValuC+1*2 + 2*8*2 + 4*2 + 0], v[vgprValuA_X1_I0+1], v[vgprValuB_X1_I0+2], v[vgprValuC+1*2 + 2*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[42]
v_fma_mix_f32 v[vgprValuC+1*2+2*8*2+4*2+1], v[vgprValuA_X1_I0+1], v[vgprValuB_X1_I0+2], v[vgprValuC+1*2+2*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[43]
v_fma_mix_f32 v[vgprValuC + 2*2 + 2*8*2 + 0*2 + 0], v[vgprValuA_X1_I0+2], v[vgprValuB_X1_I0+2], v[vgprValuC + 2*2 + 2*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[36] iui=0
v_fma_mix_f32 v[vgprValuC + 2*2 + 2*8*2 + 0*2 + 1], v[vgprValuA_X1_I0+2], v[vgprValuB_X1_I0+2], v[vgprValuC + 2*2 + 2*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[37]
v_fma_mix_f32 v[vgprValuC+2*2 + 2*8*2 + 4*2 + 0], v[vgprValuA_X1_I0+2], v[vgprValuB_X1_I0+2], v[vgprValuC+2*2 + 2*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[44]
v_fma_mix_f32 v[vgprValuC+2*2+2*8*2+4*2+1], v[vgprValuA_X1_I0+2], v[vgprValuB_X1_I0+2], v[vgprValuC+2*2+2*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[45]
v_fma_mix_f32 v[vgprValuC + 3*2 + 2*8*2 + 0*2 + 0], v[vgprValuA_X1_I0+3], v[vgprValuB_X1_I0+2], v[vgprValuC + 3*2 + 2*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[38] iui=0
v_fma_mix_f32 v[vgprValuC + 3*2 + 2*8*2 + 0*2 + 1], v[vgprValuA_X1_I0+3], v[vgprValuB_X1_I0+2], v[vgprValuC + 3*2 + 2*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[39]
v_fma_mix_f32 v[vgprValuC+3*2 + 2*8*2 + 4*2 + 0], v[vgprValuA_X1_I0+3], v[vgprValuB_X1_I0+2], v[vgprValuC+3*2 + 2*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[46]
v_fma_mix_f32 v[vgprValuC+3*2+2*8*2+4*2+1], v[vgprValuA_X1_I0+3], v[vgprValuB_X1_I0+2], v[vgprValuC+3*2+2*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[47]
v_fma_mix_f32 v[vgprValuC + 0*2 + 3*8*2 + 0*2 + 0], v[vgprValuA_X1_I0+0], v[vgprValuB_X1_I0+3], v[vgprValuC + 0*2 + 3*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[48] iui=0
v_fma_mix_f32 v[vgprValuC + 0*2 + 3*8*2 + 0*2 + 1], v[vgprValuA_X1_I0+0], v[vgprValuB_X1_I0+3], v[vgprValuC + 0*2 + 3*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[49]
v_fma_mix_f32 v[vgprValuC+0*2 + 3*8*2 + 4*2 + 0], v[vgprValuA_X1_I0+0], v[vgprValuB_X1_I0+3], v[vgprValuC+0*2 + 3*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[56]
v_fma_mix_f32 v[vgprValuC+0*2+3*8*2+4*2+1], v[vgprValuA_X1_I0+0], v[vgprValuB_X1_I0+3], v[vgprValuC+0*2+3*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[57]
v_fma_mix_f32 v[vgprValuC + 1*2 + 3*8*2 + 0*2 + 0], v[vgprValuA_X1_I0+1], v[vgprValuB_X1_I0+3], v[vgprValuC + 1*2 + 3*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[50] iui=0
v_fma_mix_f32 v[vgprValuC + 1*2 + 3*8*2 + 0*2 + 1], v[vgprValuA_X1_I0+1], v[vgprValuB_X1_I0+3], v[vgprValuC + 1*2 + 3*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[51]
v_fma_mix_f32 v[vgprValuC+1*2 + 3*8*2 + 4*2 + 0], v[vgprValuA_X1_I0+1], v[vgprValuB_X1_I0+3], v[vgprValuC+1*2 + 3*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[58]
v_fma_mix_f32 v[vgprValuC+1*2+3*8*2+4*2+1], v[vgprValuA_X1_I0+1], v[vgprValuB_X1_I0+3], v[vgprValuC+1*2+3*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[59]
v_fma_mix_f32 v[vgprValuC + 2*2 + 3*8*2 + 0*2 + 0], v[vgprValuA_X1_I0+2], v[vgprValuB_X1_I0+3], v[vgprValuC + 2*2 + 3*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[52] iui=0
v_fma_mix_f32 v[vgprValuC + 2*2 + 3*8*2 + 0*2 + 1], v[vgprValuA_X1_I0+2], v[vgprValuB_X1_I0+3], v[vgprValuC + 2*2 + 3*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[53]
v_fma_mix_f32 v[vgprValuC+2*2 + 3*8*2 + 4*2 + 0], v[vgprValuA_X1_I0+2], v[vgprValuB_X1_I0+3], v[vgprValuC+2*2 + 3*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[60]
v_fma_mix_f32 v[vgprValuC+2*2+3*8*2+4*2+1], v[vgprValuA_X1_I0+2], v[vgprValuB_X1_I0+3], v[vgprValuC+2*2+3*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[61]
v_fma_mix_f32 v[vgprValuC + 3*2 + 3*8*2 + 0*2 + 0], v[vgprValuA_X1_I0+3], v[vgprValuB_X1_I0+3], v[vgprValuC + 3*2 + 3*8*2 + 0*2 + 0] op_sel:[0,0,0] op_sel_hi:[1,1,0] //ValuC[54] iui=0
v_fma_mix_f32 v[vgprValuC + 3*2 + 3*8*2 + 0*2 + 1], v[vgprValuA_X1_I0+3], v[vgprValuB_X1_I0+3], v[vgprValuC + 3*2 + 3*8*2 + 0*2 + 1] op_sel:[1,0,0] op_sel_hi:[1,1,0] //ValuC[55]
v_fma_mix_f32 v[vgprValuC+3*2 + 3*8*2 + 4*2 + 0], v[vgprValuA_X1_I0+3], v[vgprValuB_X1_I0+3], v[vgprValuC+3*2 + 3*8*2 + 4*2 + 0] op_sel:[0,1,0] op_sel_hi:[1,1,0] //ValuC[62]
v_fma_mix_f32 v[vgprValuC+3*2+3*8*2+4*2+1], v[vgprValuA_X1_I0+3], v[vgprValuB_X1_I0+3], v[vgprValuC+3*2+3*8*2+4*2+1] op_sel:[1,1,0] op_sel_hi:[1,1,0] //ValuC[63]
s_setprio 0 // Reset priority after macs
.endm



/******************************************/
/* Allocate Resources                     */
/******************************************/

Cijk_Alik_Bljk_HHS_BH_MT128x64x16_SN_K1_PGR1_TT8_8_WG16_8_1_preloaded: // Kernel start when preloading
s_mov_b32 vcc_hi, 0                                // Ensure hi bits are zero

/* Load Kernel Args */
_s_load_b512 s[24:39], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x0 // 
_s_load_b512 s[40:55], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x40 // 
s_mov_b32 m0, 0x3a00                               // LDS clamp at 14848 bytes
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
s_mov_b32 s7, 0x88                                 // LSU offset: lsuoffset = sgid*(MT0+PAD)
v_mul_lo_u32 v0, s7, v0                            // LSU offset: lsuoffset = sgid*(MT0+PAD)
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

_v_add_co_u32 v[vgprLocalReadAddrB+0], vcc_lo, 0x1100, v[vgprLocalReadAddrB+0] //  += LdsOffsetB (lower)


/* global read addresses: tile offset assignment a */

/* LVCA = 2 */
/* v0 = (local)groA-tile = serial/LVCA (note (wgA*MTA) will be added to SRD) */
/* v1 = groA-unroll = serial%LVCA */
v_lshrrev_b32 v0, 1, v[vgprSerial]                 // v0 = v[vgprSerial] / 2
v_and_b32 v1, 1, v[vgprSerial]                     // v1 = v[vgprSerial] % 2
/* gro-unroll *= glvw */
v_lshlrev_b32 v1, 0x3, v1                          // v1 = v1 * 8


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

v_mul_u32_u24 v[vgprLocalWriteAddrA], 0x88, v1     // lwAL**(MTA + PAD)
_v_add_lshl_u32 v[vgprLocalWriteAddrA], v0, v[vgprLocalWriteAddrA], 0x1 // lwFOA = (lwAA + lwAL*(MT0I+PAD))*bpe


/* local write addresses: first offset b */

v_mul_u32_u24 v[vgprLocalWriteAddrB], 0x48, v3     // lwBL**(MTB + PAD)
_v_add_lshl_u32 v[vgprLocalWriteAddrB], v2, v[vgprLocalWriteAddrB], 0x1 // lwFOB = (lwBB + lwBL*(MT1J+PAD))*bpe
_v_add_co_u32 v[vgprLocalWriteAddrB], vcc_lo, 0x1100, v[vgprLocalWriteAddrB] // lwFOB = lwB1J + lwBL*MT1J + LDS_OFFSET_B=2176*2







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
s_mov_b32 s63, 0x10000001L                         // magic number for WGM==8
s_mul_hi_u32 s61, s[sgprWorkGroup1], s63           // s_magic mul
s_mul_i32 s60, s[sgprWorkGroup1], s63              // s_magic mul
s_lshr_b64 s[60:61], s[60:61], 31                  // sMagicDiv
s_mul_i32 s61, s60, 8                              // quotient * non-magic divisor
s_sub_u32 s61, s[sgprWorkGroup1], s61              // WorkGroup1=remainder
s_mul_i32 s61, s61, s[sgprNumWorkGroups0]          // (wg1 % WGM)*nwg0
s_add_u32 s61, s61, s[sgprWorkGroup0]              // wgSerial = wg0 + (wg1 % WGM)*nwg1
s_cmp_ge_u32 s60, s[sgprNumFullBlocks]             // blockId >= numFullBlocks ?
s_cmov_b32 s63, s[sgprMagicNumberWgmRemainder1]    // 
s_cselect_b32 s62, s[sgprWgmRemainder1], 8         // 
s_mul_hi_u32 s3, s61, s63                          // s_magic mul
s_mul_i32 s2, s61, s63                             // s_magic mul
s_lshr_b64 s[2:3], s[2:3], 31                      // sMagicDiv
s_mul_i32 s[sgprWorkGroup1], s[sgprWorkGroup0], s62 // quotient * non-magic divisor
s_sub_u32 s[sgprWorkGroup1], s61, s[sgprWorkGroup1] // WorkGroup1=remainder
s_mul_i32 s60, s60, 8                              // blockId * WGM
s_add_u32 s[sgprWorkGroup1], s[sgprWorkGroup1], s60 // wg1 += blockId * WGM


/* global read addresses: unroll assignment a */

/* v1 */


/* global read addresses: unroll assignment b */

/* v3 */


/* global read addresses: other free assignments */

/* s[sgprWorkGroup2] */


/* global read addresses: tile offsets a */



/* global read addresses: tile offsets b */



/* global read addresses: unroll offsets a */



/* global read addresses: unroll offsets b */



/* global read addresses: final offsets a */

GLOBAL_OFFSET_A vgprGlobalReadOffsetA+0,  1,  0, 4 // gROA_0_0_0_0
s_mul_i32 s[sgprScalarGlobalReadOffsetA+0], s[sgprStrideA0I], 64 // compute offset diff (scaled tileDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetA+0], s[sgprScalarGlobalReadOffsetA+0], 0x1 // scalar offset *= bytes/element


/* global read addresses: final offsets b */

GLOBAL_OFFSET_B vgprGlobalReadOffsetB+0,  3,  2, 4 // gROB_0_0_0_0


/* global read addresses: addresses a */

/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s63, s[sgprWorkGroup0], 128           // WorkGroup[01] * MT
s_mul_i32 s62, s[sgprWorkGroup0], 128              // WorkGroup[01] * MT
s_mul_hi_u32 s63, s62, s[sgprStrideA0I]            // tlu=0, scaled tile-offset by stride
s_mul_i32 s62, s62, s[sgprStrideA0I]               // tlu=0, scaled tile-offset by stride
s_sub_u32 s[sgprShadowLimitA+0], s[sgprTensor2dSizeA], s62 // sub tileStart
s_subb_u32 s[sgprShadowLimitA+1], s[sgprTensor2dSizeA+1], s63 // sub tileStart
s_lshl_b64 s[sgprShadowLimitA:sgprShadowLimitA+1], s[sgprShadowLimitA:sgprShadowLimitA+1], 0x1 // Set limit to use bytes
s_add_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], 16 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimitA // Move shadow to real if we are within 2^32
s_mul_hi_u32 s61, s[sgprStrideAK], s[sgprWorkGroup2] // Stride*WG
s_mul_i32 s60, s[sgprStrideAK], s[sgprWorkGroup2]  // Stride*WG
s_add_u32 s62, s62, s60                            // accum wg term to tilestart
s_addc_u32 s63, s63, s61                           // accum wg term to tilestart
s_lshl_b64 s[62:63], s[62:63], 0x1                 // tileStart *= BPE
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s62        // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s63       // SRD base = Address+ tileStart1
s_mov_b32 s[sgprSrdA+3], Srd127_96                 // Set bits 127_96 in SRD


/* global read addresses: addresses b */

/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s63, s[sgprWorkGroup1], 64            // WorkGroup[01] * MT
s_mul_i32 s62, s[sgprWorkGroup1], 64               // WorkGroup[01] * MT
s_mul_hi_u32 s63, s62, s[sgprStrideB1J]            // tlu=0, scaled tile-offset by stride
s_mul_i32 s62, s62, s[sgprStrideB1J]               // tlu=0, scaled tile-offset by stride
s_sub_u32 s[sgprShadowLimitB+0], s[sgprTensor2dSizeB], s62 // sub tileStart
s_subb_u32 s[sgprShadowLimitB+1], s[sgprTensor2dSizeB+1], s63 // sub tileStart
s_lshl_b64 s[sgprShadowLimitB:sgprShadowLimitB+1], s[sgprShadowLimitB:sgprShadowLimitB+1], 0x1 // Set limit to use bytes
s_add_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], 16 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimitB // Move shadow to real if we are within 2^32
s_mul_hi_u32 s61, s[sgprStrideBK], s[sgprWorkGroup2] // Stride*WG
s_mul_i32 s60, s[sgprStrideBK], s[sgprWorkGroup2]  // Stride*WG
s_add_u32 s62, s62, s60                            // accum wg term to tilestart
s_addc_u32 s63, s63, s61                           // accum wg term to tilestart
s_lshl_b64 s[62:63], s[62:63], 0x1                 // tileStart *= BPE
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s62        // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s63       // SRD base = Address+ tileStart1
s_mov_b32 s[sgprSrdB+3], Srd127_96                 // Set bits 127_96 in SRD


/* global read addresses: increments a */

s_mov_b32 s[sgprGlobalReadIncsA+0], DepthU*BpeA    // incrA (unrollIdx)


/* global read addresses: increments b */

s_mov_b32 s[sgprGlobalReadIncsB+0], DepthU*BpeB    // incrB (unrollIdx)

/* declare loop num iterations */


s_lshr_b32 s[sgprLoopCounterL], s[sgprSizesSum+0], 4 // s[sgprLoopCounterL] = s[sgprSizesSum+0] / 16
s_mov_b32 s[sgprOrigLoopCounter], s[sgprLoopCounterL] // copy loop counter

s_mul_i32 s60, s[sgprNumWorkGroups0], s[sgprNumWorkGroups1] // wgSerial = (nwg0*ngw1)*wg2 + (nwg0)*wg1 + wg0
s_mul_i32 s60, s60, s[sgprWorkGroup2]              // 
s_mul_i32 s61, s[sgprNumWorkGroups0], s[sgprWorkGroup1] // 
s_add_u32 s60, s60, s61                            // 
s_add_u32 s60, s60, s[sgprWorkGroup0]              // 
s_and_b32 s[sgprStaggerUIter], s[sgprOrigStaggerUIter], s60 // Compute actual stagger start for this tile
s_lshl_b32 s[sgprStaggerUIter], s[sgprStaggerUIter], 3 // shift by StaggerUStride


/* SRDs += (StaggerUIter) * GlobalReadIncsA+0 */
s_mul_hi_u32 s61, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] //  stagger byte offset
s_mul_i32 s60, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] //  stagger byte offset
s_mul_hi_u32 s[sgprWrapUA+1], s[sgprLoopCounterL], s[sgprGlobalReadIncsA+0] // Number of bytes accessed by the unroll loop
s_mul_i32 s[sgprWrapUA+0], s[sgprLoopCounterL], s[sgprGlobalReadIncsA+0] // Number of bytes accessed by the unroll loop
s_sub_u32 s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0], s[sgprWrapUA+0] // remove one iteration
s_subb_u32 s[sgprWrapUA+1], 0, s[sgprWrapUA+1]     // remove one iteration
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s60        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], s61      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s60 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s61 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimitA // Move shadow to real if we are within 2^32


/* SRDs += (StaggerUIter) * GlobalReadIncsB+0 */
s_mul_hi_u32 s61, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] //  stagger byte offset
s_mul_i32 s60, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] //  stagger byte offset
s_mul_hi_u32 s[sgprWrapUB+1], s[sgprLoopCounterL], s[sgprGlobalReadIncsB+0] // Number of bytes accessed by the unroll loop
s_mul_i32 s[sgprWrapUB+0], s[sgprLoopCounterL], s[sgprGlobalReadIncsB+0] // Number of bytes accessed by the unroll loop
s_sub_u32 s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0], s[sgprWrapUB+0] // remove one iteration
s_subb_u32 s[sgprWrapUB+1], 0, s[sgprWrapUB+1]     // remove one iteration
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s60        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], s61      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s60 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s61 // limit -= inc)
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
_buffer_load_b128 v[vgprG2LA+4:vgprG2LA+4+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0], offen offset:0 // G -> Reg 0_0_1_0


_buffer_load_b128 v[vgprG2LB+0:vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0


/* global read inc A loopL */
s_add_u32 s62, s[sgprLoopCounterL], 1              // remove pf(1)
s_cmp_eq_u32 s[sgprStaggerUIter], s62              // Is this wrapIter? (pf)
s_cselect_b32 s60, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
s_cselect_b32 s61, s[sgprWrapUA+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s60        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], s61      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s60 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s61 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimitA // Move shadow to real if we are within 2^32

/* global read inc B loopL */
s_add_u32 s62, s[sgprLoopCounterL], 1              // remove pf(1)
s_cmp_eq_u32 s[sgprStaggerUIter], s62              // Is this wrapIter? (pf)
s_cselect_b32 s60, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
s_cselect_b32 s61, s[sgprWrapUB+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s60        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], s61      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s60 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s61 // limit -= inc)
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


s_mul_i32 s62, MT1, s[sgprWorkGroup1]              // <- wg1*MT1
s_mul_hi_u32 s61, s62, s[sgprStrideC1J]            // CScale s62 by Stride
s_mul_i32 s60, s62, s[sgprStrideC1J]               // CScale s62 by Stride
s_lshl_b64 s[60:61], s[60:61], 1                   // scale by bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s60        // add lo to SRD
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], s61       // add hi to SRD
s_mul_hi_u32 s61, s62, s[sgprStrideD1J]            // Scale s62 by Stride
s_mul_i32 s60, s62, s[sgprStrideD1J]               // Scale s62 by Stride
s_lshl_b64 s[60:61], s[60:61], 1                   // scale by bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s60        // add lo to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], s61       // add hi to SRD

s_mul_hi_u32 s61, s[sgprWorkGroup2], s[sgprStrideCK] // CScale s[sgprWorkGroup2] by Stride
s_mul_i32 s60, s[sgprWorkGroup2], s[sgprStrideCK]  // CScale s[sgprWorkGroup2] by Stride
s_lshl_b64 s[60:61], s[60:61], 1                   // scale by bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s60        // add lo to SRD
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], s61       // add hi to SRD
s_mul_hi_u32 s61, s[sgprWorkGroup2], s[sgprStrideDK] // Scale s[sgprWorkGroup2] by Stride
s_mul_i32 s60, s[sgprWorkGroup2], s[sgprStrideDK]  // Scale s[sgprWorkGroup2] by Stride
s_lshl_b64 s[60:61], s[60:61], 1                   // scale by bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s60        // add lo to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], s61       // add hi to SRD



/* initC: remove C-tile 0-64 from pool */

/* initC: remove AB-tile 66-83 from pool */
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
s_getpc_B64 s[60:61]                               // addr of next instr
s_add_i32 s62, PrefetchGlobalLastIterEnd_5, 0x4    // target branch offset
s_add_u32 s60, s60, s62                            // add target branch offset
s_addc_u32 s61, s61, 0                             // add high and carry
s_setpc_b64 s[60:61]                               // branch to PrefetchGlobalLastIterEnd_5
label_NoBranch_11:

s_waitcnt vmcnt(0)                                 // lgkmcnt=-1 vmcnt=0 8wait for global read


/* local write a */
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+0] offset:0 // lwoA_0_0_0_0 = (0 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 0
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+0] offset:272 // lwoA_0_1_0_0 = (1 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 272
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+1:vgprG2LA+1+0] offset:544 // lwoA_0_2_0_0 = (2 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 544
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+1:vgprG2LA+1+0] offset:816 // lwoA_0_3_0_0 = (3 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 816
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+2:vgprG2LA+2+0] offset:1088 // lwoA_0_4_0_0 = (4 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 1088
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+2:vgprG2LA+2+0] offset:1360 // lwoA_0_5_0_0 = (5 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 1360
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+3:vgprG2LA+3+0] offset:1632 // lwoA_0_6_0_0 = (6 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 1632
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+3:vgprG2LA+3+0] offset:1904 // lwoA_0_7_0_0 = (7 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 1904
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+0] offset:128 // lwoA_0_0_1_0 = (0 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 128
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+0] offset:400 // lwoA_0_1_1_0 = (1 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 400
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+5:vgprG2LA+5+0] offset:672 // lwoA_0_2_1_0 = (2 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 672
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+5:vgprG2LA+5+0] offset:944 // lwoA_0_3_1_0 = (3 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 944
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+6:vgprG2LA+6+0] offset:1216 // lwoA_0_4_1_0 = (4 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 1216
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+6:vgprG2LA+6+0] offset:1488 // lwoA_0_5_1_0 = (5 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 1488
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+7:vgprG2LA+7+0] offset:1760 // lwoA_0_6_1_0 = (6 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 1760
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+7:vgprG2LA+7+0] offset:2032 // lwoA_0_7_1_0 = (7 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 2032

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

/* N/A, lro->136 */
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
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:272 // L -> Reg lro=136 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_buffer_load_b128 v[vgprG2LA+0:vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_0_0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:144 // L -> Reg lro=72 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->272 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->144 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 1 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:544 // L -> Reg lro=272 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_buffer_load_b128 v[vgprG2LA+4:vgprG2LA+4+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0], offen offset:0 // G -> Reg 0_0_1_0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:288 // L -> Reg lro=144 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->408 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->216 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 2 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:816 // L -> Reg lro=408 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_buffer_load_b128 v[vgprG2LB+0:vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:432 // L -> Reg lro=216 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->544 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->288 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 3 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:1088 // L -> Reg lro=544 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* global read inc A loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s60, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
s_cselect_b32 s61, s[sgprWrapUA+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s60        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], s61      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s60 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s61 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimitA // Move shadow to real if we are within 2^32

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:576 // L -> Reg lro=288 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->680 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->360 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 4 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:1360 // L -> Reg lro=680 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* global read inc B loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s60, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
s_cselect_b32 s61, s[sgprWrapUB+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s60        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], s61      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s60 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s61 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimitB // Move shadow to real if we are within 2^32

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:720 // L -> Reg lro=360 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->816 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->432 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 5 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:1632 // L -> Reg lro=816 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:864 // L -> Reg lro=432 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->952 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->504 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 6 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:1904 // L -> Reg lro=952 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1008 // L -> Reg lro=504 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1088 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->576 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 7 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:2176 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1152 // L -> Reg lro=576 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1224 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->648 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 8 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:2448 // L -> Reg lro=1224 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1296 // L -> Reg lro=648 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1360 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->720 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 9 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:2720 // L -> Reg lro=1360 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1440 // L -> Reg lro=720 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1496 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->792 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 10 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:2992 // L -> Reg lro=1496 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1584 // L -> Reg lro=792 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1632 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->864 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 11 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:3264 // L -> Reg lro=1632 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1728 // L -> Reg lro=864 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1768 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->936 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 12 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:3536 // L -> Reg lro=1768 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1872 // L -> Reg lro=936 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1904 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1008 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
/* sched write - iter 12 writesPerItem=8 */
s_waitcnt vmcnt(2)                                 // lgkmcnt=-1 vmcnt=2wait for global read before writing to local
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+0] offset:8192 // lwoA_0_0_0_0 = (0 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 8192
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+0] offset:8464 // lwoA_0_1_0_0 = (1 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 8464
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+1:vgprG2LA+1+0] offset:8736 // lwoA_0_2_0_0 = (2 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 8736
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+1:vgprG2LA+1+0] offset:9008 // lwoA_0_3_0_0 = (3 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 9008
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+2:vgprG2LA+2+0] offset:9280 // lwoA_0_4_0_0 = (4 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 9280
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+2:vgprG2LA+2+0] offset:9552 // lwoA_0_5_0_0 = (5 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 9552
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+3:vgprG2LA+3+0] offset:9824 // lwoA_0_6_0_0 = (6 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 9824
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+3:vgprG2LA+3+0] offset:10096 // lwoA_0_7_0_0 = (7 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 10096
s_waitcnt lgkmcnt(10)                              // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=10 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 13 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:3808 // L -> Reg lro=1904 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:2016 // L -> Reg lro=1008 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->2040 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1080 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
/* sched write - iter 13 writesPerItem=8 */
s_waitcnt vmcnt(1)                                 // lgkmcnt=-1 vmcnt=1wait for global read before writing to local
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+0] offset:8320 // lwoA_0_0_1_0 = (0 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 8320
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+0] offset:8592 // lwoA_0_1_1_0 = (1 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 8592
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+5:vgprG2LA+5+0] offset:8864 // lwoA_0_2_1_0 = (2 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 8864
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+5:vgprG2LA+5+0] offset:9136 // lwoA_0_3_1_0 = (3 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 9136
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+6:vgprG2LA+6+0] offset:9408 // lwoA_0_4_1_0 = (4 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 9408
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+6:vgprG2LA+6+0] offset:9680 // lwoA_0_5_1_0 = (5 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 9680
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+7:vgprG2LA+7+0] offset:9952 // lwoA_0_6_1_0 = (6 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 9952
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+7:vgprG2LA+7+0] offset:10224 // lwoA_0_7_1_0 = (7 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 10224
s_waitcnt lgkmcnt(10)                              // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=10 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 14 (reset local read pointers iteration)  (swap and reset local write pointers iteration)  (swap local read pointers iteration)  */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:4080 // L -> Reg lro=2040 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

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
/* N/A, lro->136 */
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
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:8464 // L -> Reg lro=136 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_buffer_load_b128 v[vgprG2LA+0:vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0, offen offset:0 // G -> Reg 0_0_0_0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:8336 // L -> Reg lro=72 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->272 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->144 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 1 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:8736 // L -> Reg lro=272 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
_buffer_load_b128 v[vgprG2LA+4:vgprG2LA+4+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0], offen offset:0 // G -> Reg 0_0_1_0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:8480 // L -> Reg lro=144 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->408 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->216 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 2 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:9008 // L -> Reg lro=408 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
_buffer_load_b128 v[vgprG2LB+0:vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0, offen offset:0 // G -> Reg 0_0_0_0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:8624 // L -> Reg lro=216 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->544 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->288 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 3 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:9280 // L -> Reg lro=544 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* global read inc A loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s60, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
s_cselect_b32 s61, s[sgprWrapUA+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s60        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], s61      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s60 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s61 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimitA // Move shadow to real if we are within 2^32

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:8768 // L -> Reg lro=288 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->680 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->360 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 4 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:9552 // L -> Reg lro=680 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* global read inc B loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s60, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
s_cselect_b32 s61, s[sgprWrapUB+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s60        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], s61      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s60 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s61 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimitB // Move shadow to real if we are within 2^32

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:8912 // L -> Reg lro=360 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->816 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->432 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 5 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:9824 // L -> Reg lro=816 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:9056 // L -> Reg lro=432 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->952 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->504 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 6 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:10096 // L -> Reg lro=952 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:9200 // L -> Reg lro=504 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1088 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->576 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 7 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:10368 // L -> Reg lro=1088 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:9344 // L -> Reg lro=576 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1224 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->648 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 8 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:10640 // L -> Reg lro=1224 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:9488 // L -> Reg lro=648 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1360 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->720 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 9 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:10912 // L -> Reg lro=1360 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:9632 // L -> Reg lro=720 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1496 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->792 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 10 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:11184 // L -> Reg lro=1496 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:9776 // L -> Reg lro=792 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1632 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->864 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 11 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:11456 // L -> Reg lro=1632 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:9920 // L -> Reg lro=864 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1768 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->936 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 12 */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:11728 // L -> Reg lro=1768 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:10064 // L -> Reg lro=936 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1904 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1008 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
/* sched write - iter 12 writesPerItem=8 */
s_waitcnt vmcnt(2)                                 // lgkmcnt=-1 vmcnt=2wait for global read before writing to local
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+0] offset:0 // lwoA_0_0_0_0 = (0 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 0
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+0] offset:272 // lwoA_0_1_0_0 = (1 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 272
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+1:vgprG2LA+1+0] offset:544 // lwoA_0_2_0_0 = (2 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 544
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+1:vgprG2LA+1+0] offset:816 // lwoA_0_3_0_0 = (3 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 816
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+2:vgprG2LA+2+0] offset:1088 // lwoA_0_4_0_0 = (4 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 1088
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+2:vgprG2LA+2+0] offset:1360 // lwoA_0_5_0_0 = (5 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 1360
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+3:vgprG2LA+3+0] offset:1632 // lwoA_0_6_0_0 = (6 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 1632
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+3:vgprG2LA+3+0] offset:1904 // lwoA_0_7_0_0 = (7 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 1904
s_waitcnt lgkmcnt(10)                              // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=10 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 13 */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:12000 // L -> Reg lro=1904 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:10208 // L -> Reg lro=1008 swapByteOffset=8192 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->2040 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1080 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
/* sched write - iter 13 writesPerItem=8 */
s_waitcnt vmcnt(1)                                 // lgkmcnt=-1 vmcnt=1wait for global read before writing to local
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+0] offset:128 // lwoA_0_0_1_0 = (0 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 128
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+0] offset:400 // lwoA_0_1_1_0 = (1 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 400
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+5:vgprG2LA+5+0] offset:672 // lwoA_0_2_1_0 = (2 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 672
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+5:vgprG2LA+5+0] offset:944 // lwoA_0_3_1_0 = (3 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 944
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+6:vgprG2LA+6+0] offset:1216 // lwoA_0_4_1_0 = (4 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 1216
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+6:vgprG2LA+6+0] offset:1488 // lwoA_0_5_1_0 = (5 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 1488
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+7:vgprG2LA+7+0] offset:1760 // lwoA_0_6_1_0 = (6 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 1760
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+7:vgprG2LA+7+0] offset:2032 // lwoA_0_7_1_0 = (7 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 2032
s_waitcnt lgkmcnt(10)                              // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=10 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 14 (reset local read pointers iteration)  (swap and reset local write pointers iteration)  (swap local read pointers iteration)  */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:12272 // L -> Reg lro=2040 swapByteOffset=8192 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

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
/* N/A, lro->136 */
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

s_cmp_eq_u32 s[sgprAlpha], 1.0                     // Alpha == 1.0 ?
s_cbranch_scc0 OptNLL_End_15                       // branch if alpha != 1

s_and_b32 s60, 127, s[sgprSizeI]                   // s60 = s[sgprSizeI] % 128
s_add_u32 s61, -0x1, s[sgprNumWorkGroups0]         // 
s_cmp_ge_u32 s[sgprWorkGroup0], s61                // wg0 >= nwg0-1 ?
s_cselect_b32 s60, s60, 0                          // set rMT0
s_cmpk_gt_u32 s60, 0x0                             // rMT0 > 0
s_cbranch_scc1 OptNLL_End_15                       // jump if edges required
s_and_b32 s60, 63, s[sgprSizeJ]                    // s60 = s[sgprSizeJ] % 64
s_add_u32 s61, -0x1, s[sgprNumWorkGroups1]         // 
s_cmp_ge_u32 s[sgprWorkGroup1], s61                // wg1 >= nwg1-1
s_cselect_b32 s60, s60, 0                          // set rMT1
s_cmpk_gt_u32 s60, 0x0                             // rMT1 > 0
s_cbranch_scc1 OptNLL_End_15                       // jump if edges required

s_and_b32 s61, 15, s[sgprSizesSum+0]               // s61 = s[sgprSizesSum+0] % 16
s_cmp_eq_u32 s61, 0x0                              // numIterL == 0
s_cbranch_scc0 OptNLL_End_15                       // skip if tail loop required



/* iter 0 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:272 // L -> Reg lro=136 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:144 // L -> Reg lro=72 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->272 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->144 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 1 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:544 // L -> Reg lro=272 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:288 // L -> Reg lro=144 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->408 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->216 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 2 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:816 // L -> Reg lro=408 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:432 // L -> Reg lro=216 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->544 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->288 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 3 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:1088 // L -> Reg lro=544 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:576 // L -> Reg lro=288 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->680 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->360 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 4 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:1360 // L -> Reg lro=680 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:720 // L -> Reg lro=360 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->816 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->432 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 5 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:1632 // L -> Reg lro=816 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:864 // L -> Reg lro=432 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->952 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->504 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 6 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:1904 // L -> Reg lro=952 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1008 // L -> Reg lro=504 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1088 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->576 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 7 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:2176 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1152 // L -> Reg lro=576 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1224 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->648 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 8 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:2448 // L -> Reg lro=1224 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1296 // L -> Reg lro=648 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1360 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->720 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 9 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:2720 // L -> Reg lro=1360 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1440 // L -> Reg lro=720 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1496 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->792 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 10 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:2992 // L -> Reg lro=1496 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1584 // L -> Reg lro=792 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1632 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->864 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 11 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:3264 // L -> Reg lro=1632 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1728 // L -> Reg lro=864 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1768 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->936 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 12 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:3536 // L -> Reg lro=1768 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1872 // L -> Reg lro=936 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1904 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1008 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 13 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:3808 // L -> Reg lro=1904 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:2016 // L -> Reg lro=1008 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->2040 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1080 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 14 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:4080 // L -> Reg lro=2040 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

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
/* endSummation: add vgpr [66...100) to pool */
.set NumFullBlocks, UNDEF
.set WgmRemainder1, UNDEF
.set MagicNumberWgmRemainder1, UNDEF
.set ScalarGlobalReadOffsetA, UNDEF
/* computeStoreVgprs */
v_lshrrev_b32 v67, 4, v[vgprSerial]                // v67 = v[vgprSerial] / 16
v_and_b32 v66, 15, v[vgprSerial]                   // v66 = v[vgprSerial] % 16
v_lshlrev_b32 v66, 0x3, v66                        // v66 = v66 * 8
v_lshlrev_b32 v67, 0x3, v67                        // v67 = v67 * 8
v_mul_lo_u32 v68, v67, s[sgprStrideC1J]            // rowStart vgpr
v_mul_lo_u32 v69, v67, s[sgprStrideD1J]            // rowStart vgpr

s_mul_i32 s54, 0x80, s[sgprWorkGroup0]             // s54 = wg0*MT0
_v_add_co_u32 v66, vcc_lo, s54, v66                // coord0 = tid0*VW + wg0*MT0
s_mul_i32 s56, 0x40, s[sgprWorkGroup1]             // <- wg1*MT1
_v_add_co_u32 v67, vcc_lo, s56, v67                // coord1 = tid1*VW + wg1*MT1
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
_v_add_lshl_u32 v72, v69, v66, 0x1                 // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=66, coord0Vgpr=66

/* apply mask, calc new C and issue writes */
v_cvt_f16_f32 v[vgprValuC+0], v[vgprValuC+0]       // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+1], v[vgprValuC+1]       // convert C to fp16
v_pack_b32_f16 v0, v[vgprValuC+0], v[vgprValuC+1]  // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+2], v[vgprValuC+2]       // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+3], v[vgprValuC+3]       // convert C to fp16
v_pack_b32_f16 v1, v[vgprValuC+2], v[vgprValuC+3]  // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+4], v[vgprValuC+4]       // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+5], v[vgprValuC+5]       // convert C to fp16
v_pack_b32_f16 v2, v[vgprValuC+4], v[vgprValuC+5]  // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+6], v[vgprValuC+6]       // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+7], v[vgprValuC+7]       // convert C to fp16
v_pack_b32_f16 v3, v[vgprValuC+6], v[vgprValuC+7]  // Pack with neighbor
_buffer_store_b128 v[0:3], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+8], v[vgprValuC+8]       // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+9], v[vgprValuC+9]       // convert C to fp16
v_pack_b32_f16 v8, v[vgprValuC+8], v[vgprValuC+9]  // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+10], v[vgprValuC+10]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+11], v[vgprValuC+11]     // convert C to fp16
v_pack_b32_f16 v9, v[vgprValuC+10], v[vgprValuC+11] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+12], v[vgprValuC+12]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+13], v[vgprValuC+13]     // convert C to fp16
v_pack_b32_f16 v10, v[vgprValuC+12], v[vgprValuC+13] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+14], v[vgprValuC+14]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+15], v[vgprValuC+15]     // convert C to fp16
v_pack_b32_f16 v11, v[vgprValuC+14], v[vgprValuC+15] // Pack with neighbor
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[8:11], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+16], v[vgprValuC+16]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+17], v[vgprValuC+17]     // convert C to fp16
v_pack_b32_f16 v16, v[vgprValuC+16], v[vgprValuC+17] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+18], v[vgprValuC+18]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+19], v[vgprValuC+19]     // convert C to fp16
v_pack_b32_f16 v17, v[vgprValuC+18], v[vgprValuC+19] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+20], v[vgprValuC+20]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+21], v[vgprValuC+21]     // convert C to fp16
v_pack_b32_f16 v18, v[vgprValuC+20], v[vgprValuC+21] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+22], v[vgprValuC+22]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+23], v[vgprValuC+23]     // convert C to fp16
v_pack_b32_f16 v19, v[vgprValuC+22], v[vgprValuC+23] // Pack with neighbor
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[16:19], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+24], v[vgprValuC+24]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+25], v[vgprValuC+25]     // convert C to fp16
v_pack_b32_f16 v24, v[vgprValuC+24], v[vgprValuC+25] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+26], v[vgprValuC+26]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+27], v[vgprValuC+27]     // convert C to fp16
v_pack_b32_f16 v25, v[vgprValuC+26], v[vgprValuC+27] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+28], v[vgprValuC+28]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+29], v[vgprValuC+29]     // convert C to fp16
v_pack_b32_f16 v26, v[vgprValuC+28], v[vgprValuC+29] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+30], v[vgprValuC+30]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+31], v[vgprValuC+31]     // convert C to fp16
v_pack_b32_f16 v27, v[vgprValuC+30], v[vgprValuC+31] // Pack with neighbor
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[24:27], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+32], v[vgprValuC+32]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+33], v[vgprValuC+33]     // convert C to fp16
v_pack_b32_f16 v32, v[vgprValuC+32], v[vgprValuC+33] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+34], v[vgprValuC+34]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+35], v[vgprValuC+35]     // convert C to fp16
v_pack_b32_f16 v33, v[vgprValuC+34], v[vgprValuC+35] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+36], v[vgprValuC+36]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+37], v[vgprValuC+37]     // convert C to fp16
v_pack_b32_f16 v34, v[vgprValuC+36], v[vgprValuC+37] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+38], v[vgprValuC+38]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+39], v[vgprValuC+39]     // convert C to fp16
v_pack_b32_f16 v35, v[vgprValuC+38], v[vgprValuC+39] // Pack with neighbor
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[32:35], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+40], v[vgprValuC+40]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+41], v[vgprValuC+41]     // convert C to fp16
v_pack_b32_f16 v40, v[vgprValuC+40], v[vgprValuC+41] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+42], v[vgprValuC+42]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+43], v[vgprValuC+43]     // convert C to fp16
v_pack_b32_f16 v41, v[vgprValuC+42], v[vgprValuC+43] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+44], v[vgprValuC+44]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+45], v[vgprValuC+45]     // convert C to fp16
v_pack_b32_f16 v42, v[vgprValuC+44], v[vgprValuC+45] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+46], v[vgprValuC+46]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+47], v[vgprValuC+47]     // convert C to fp16
v_pack_b32_f16 v43, v[vgprValuC+46], v[vgprValuC+47] // Pack with neighbor
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[40:43], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+48], v[vgprValuC+48]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+49], v[vgprValuC+49]     // convert C to fp16
v_pack_b32_f16 v48, v[vgprValuC+48], v[vgprValuC+49] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+50], v[vgprValuC+50]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+51], v[vgprValuC+51]     // convert C to fp16
v_pack_b32_f16 v49, v[vgprValuC+50], v[vgprValuC+51] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+52], v[vgprValuC+52]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+53], v[vgprValuC+53]     // convert C to fp16
v_pack_b32_f16 v50, v[vgprValuC+52], v[vgprValuC+53] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+54], v[vgprValuC+54]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+55], v[vgprValuC+55]     // convert C to fp16
v_pack_b32_f16 v51, v[vgprValuC+54], v[vgprValuC+55] // Pack with neighbor
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[48:51], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+56], v[vgprValuC+56]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+57], v[vgprValuC+57]     // convert C to fp16
v_pack_b32_f16 v56, v[vgprValuC+56], v[vgprValuC+57] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+58], v[vgprValuC+58]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+59], v[vgprValuC+59]     // convert C to fp16
v_pack_b32_f16 v57, v[vgprValuC+58], v[vgprValuC+59] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+60], v[vgprValuC+60]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+61], v[vgprValuC+61]     // convert C to fp16
v_pack_b32_f16 v58, v[vgprValuC+60], v[vgprValuC+61] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+62], v[vgprValuC+62]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+63], v[vgprValuC+63]     // convert C to fp16
v_pack_b32_f16 v59, v[vgprValuC+62], v[vgprValuC+63] // Pack with neighbor
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[56:59], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_branch label_GW_End_21                           // jump to end
label_GW_End_21:

s_endpgm                                           // Kernel End
OptNLL_End_15:


/******************************************/
/* Ord. NoLoadLoop - Begin                                      */
/******************************************/




/* iter 0 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:272 // L -> Reg lro=136 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:144 // L -> Reg lro=72 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->272 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->144 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 1 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:544 // L -> Reg lro=272 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:288 // L -> Reg lro=144 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->408 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->216 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 2 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:816 // L -> Reg lro=408 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:432 // L -> Reg lro=216 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->544 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->288 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 3 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:1088 // L -> Reg lro=544 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:576 // L -> Reg lro=288 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->680 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->360 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 4 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:1360 // L -> Reg lro=680 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:720 // L -> Reg lro=360 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->816 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->432 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 5 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:1632 // L -> Reg lro=816 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:864 // L -> Reg lro=432 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->952 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->504 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 6 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:1904 // L -> Reg lro=952 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1008 // L -> Reg lro=504 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1088 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->576 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 7 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:2176 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1152 // L -> Reg lro=576 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1224 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->648 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 8 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:2448 // L -> Reg lro=1224 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1296 // L -> Reg lro=648 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1360 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->720 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 9 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:2720 // L -> Reg lro=1360 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1440 // L -> Reg lro=720 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1496 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->792 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 10 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:2992 // L -> Reg lro=1496 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1584 // L -> Reg lro=792 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1632 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->864 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 11 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:3264 // L -> Reg lro=1632 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:1728 // L -> Reg lro=864 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->1768 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->936 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 12 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:3536 // L -> Reg lro=1768 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:1872 // L -> Reg lro=936 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

/* local read increment a */
/* N/A, lro->1904 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1008 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X0

/* iter 13 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA] offset:3808 // L -> Reg lro=1904 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
_ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:2016 // L -> Reg lro=1008 swapByteOffset=0 ti=8 vIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read increment a */
/* N/A, lro->2040 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */

/* local read increment b */
/* N/A, lro->1080 */
/* self.localReadDoCntA 0 self.localReadDoCntB 0 */
s_waitcnt lgkmcnt(2)                               // lgkmcnt=0 vmcnt=-1wait for prior local read local write old=0, new=2 newLW=0 newLR=0
.align32 8, 0xbf800001                             // align v_pk_fma
MAC_8x8_X1

/* iter 14 (last unrolled loop) */


/* local read a */
_ds_load_b128 v[vgprValuA_X1_I0+0:vgprValuA_X1_I0+0+3], v[vgprLocalReadAddrA] offset:4080 // L -> Reg lro=2040 swapByteOffset=0 ti=16 vIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

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

s_mov_b32 s62, 3                                   // 
s_mul_hi_u32 s61, s62, s[sgprGlobalReadIncsA+0]    // 3 * GlobalReadIncs
s_mul_i32 s60, s62, s[sgprGlobalReadIncsA+0]       // 3 * GlobalReadIncs
s_mul_hi_u32 s63, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] // StaggerUIter * GlobalReadIncs
s_mul_i32 s62, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] // StaggerUIter * GlobalReadIncs
s_sub_u32 s60, s60, s62                            // start offset S in bytes
s_subb_u32 s61, s61, s63                           // start offset S in bytes
s_sub_u32 s60, s60, s[sgprWrapUA]                  // S - WrapU
s_subb_u32 s61, s61, s[sgprWrapUA+1]               // S - WrapU
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s60        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdA+1], s[sgprSrdA+1], s61      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s60 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s61 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimitA // Move shadow to real if we are within 2^32

s_mov_b32 s62, 3                                   // 
s_mul_hi_u32 s61, s62, s[sgprGlobalReadIncsB+0]    // 3 * GlobalReadIncs
s_mul_i32 s60, s62, s[sgprGlobalReadIncsB+0]       // 3 * GlobalReadIncs
s_mul_hi_u32 s63, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] // StaggerUIter * GlobalReadIncs
s_mul_i32 s62, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] // StaggerUIter * GlobalReadIncs
s_sub_u32 s60, s60, s62                            // start offset S in bytes
s_subb_u32 s61, s61, s63                           // start offset S in bytes
s_sub_u32 s60, s60, s[sgprWrapUB]                  // S - WrapU
s_subb_u32 s61, s61, s[sgprWrapUB+1]               // S - WrapU
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s60        // gra SRD += inc(lower)
s_addc_u32  s[sgprSrdB+1], s[sgprSrdB+1], s61      // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s60 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s61 // limit -= inc)
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
_buffer_load_d16_b16 v[vgprG2LA+4+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0], offen offset:0 // load one buffer value
/* g2l=4, load component 1 */
_buffer_load_d16_hi_b16 v[vgprG2LA+4+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0], offen offset:2 // load one buffer value
/* g2l=4, load component 2 */
_buffer_load_d16_b16 v[vgprG2LA+4+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0], offen offset:4 // load one buffer value
/* g2l=4, load component 3 */
_buffer_load_d16_hi_b16 v[vgprG2LA+4+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0], offen offset:6 // load one buffer value
/* g2l=4, load component 4 */
_buffer_load_d16_b16 v[vgprG2LA+4+2], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0], offen offset:8 // load one buffer value
/* g2l=4, load component 5 */
_buffer_load_d16_hi_b16 v[vgprG2LA+4+2], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0], offen offset:10 // load one buffer value
/* g2l=4, load component 6 */
_buffer_load_d16_b16 v[vgprG2LA+4+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0], offen offset:12 // load one buffer value
/* g2l=4, load component 7 */
_buffer_load_d16_hi_b16 v[vgprG2LA+4+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0], offen offset:14 // load one buffer value


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

_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+0] offset:0 // lwoA_0_0_0_0 = (0 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 0
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+0] offset:272 // lwoA_0_1_0_0 = (1 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 272
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+1:vgprG2LA+1+0] offset:544 // lwoA_0_2_0_0 = (2 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 544
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+1:vgprG2LA+1+0] offset:816 // lwoA_0_3_0_0 = (3 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 816
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+2:vgprG2LA+2+0] offset:1088 // lwoA_0_4_0_0 = (4 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 1088
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+2:vgprG2LA+2+0] offset:1360 // lwoA_0_5_0_0 = (5 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 1360
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+3:vgprG2LA+3+0] offset:1632 // lwoA_0_6_0_0 = (6 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 1632
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+3:vgprG2LA+3+0] offset:1904 // lwoA_0_7_0_0 = (7 + 0*LSCA)*(MT0I+PAD) + (0*LSPA) = 1904
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+0] offset:128 // lwoA_0_0_1_0 = (0 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 128
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+4:vgprG2LA+4+0] offset:400 // lwoA_0_1_1_0 = (1 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 400
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+5:vgprG2LA+5+0] offset:672 // lwoA_0_2_1_0 = (2 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 672
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+5:vgprG2LA+5+0] offset:944 // lwoA_0_3_1_0 = (3 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 944
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+6:vgprG2LA+6+0] offset:1216 // lwoA_0_4_1_0 = (4 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 1216
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+6:vgprG2LA+6+0] offset:1488 // lwoA_0_5_1_0 = (5 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 1488
_ds_store_b16 v[vgprLocalWriteAddrA], v[vgprG2LA+7:vgprG2LA+7+0] offset:1760 // lwoA_0_6_1_0 = (6 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 1760
_ds_store_b16_d16_hi v[vgprLocalWriteAddrA], v[vgprG2LA+7:vgprG2LA+7+0] offset:2032 // lwoA_0_7_1_0 = (7 + 0*LSCA)*(MT0I+PAD) + (1*LSPA) = 2032


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

s_mov_b32 s56, 0x110                               // inc
_v_add_co_u32 v[vgprLocalReadAddrA], vcc_lo, s56, v[vgprLocalReadAddrA] // lrA += 272 (LSU*(MT+PAD)*bpe)


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
/* endSummation: add vgpr [66...100) to pool */
.set NumFullBlocks, UNDEF
.set WgmRemainder1, UNDEF
.set MagicNumberWgmRemainder1, UNDEF
.set ScalarGlobalReadOffsetA, UNDEF



/* not-LocalSplitU: global write indices */

/* computeStoreVgprs */
v_lshrrev_b32 v67, 4, v[vgprSerial]                // v67 = v[vgprSerial] / 16
v_and_b32 v66, 15, v[vgprSerial]                   // v66 = v[vgprSerial] % 16
v_lshlrev_b32 v66, 0x3, v66                        // v66 = v66 * 8
v_lshlrev_b32 v67, 0x3, v67                        // v67 = v67 * 8
v_mul_lo_u32 v68, v67, s[sgprStrideC1J]            // rowStart vgpr
v_mul_lo_u32 v69, v67, s[sgprStrideD1J]            // rowStart vgpr

s_mul_i32 s54, 0x80, s[sgprWorkGroup0]             // s54 = wg0*MT0
_v_add_co_u32 v66, vcc_lo, s54, v66                // coord0 = tid0*VW + wg0*MT0
s_mul_i32 s56, 0x40, s[sgprWorkGroup1]             // <- wg1*MT1
_v_add_co_u32 v67, vcc_lo, s56, v67                // coord1 = tid1*VW + wg1*MT1


/* not-LocalSplitU: global write */

s_cmpk_eq_u32 s[sgprBeta], 0x0                     // Beta == 0
s_cbranch_scc0 GW_Beta_43                          // Branch if Beta is not zero

s_and_b32 s54, 127, s[sgprSizeI]                   // s54 = s[sgprSizeI] % 128
s_add_u32 s55, -0x1, s[sgprNumWorkGroups0]         // 
s_cmp_ge_u32 s[sgprWorkGroup0], s55                // wg0 >= nwg0-1 ?
s_cselect_b32 s54, s54, 0                          // set rMT0
s_cmpk_gt_u32 s54, 0x0                             // rMT0 > 0
s_cbranch_scc1 GW_B0_E1_34                         // jump if edges required
s_and_b32 s54, 63, s[sgprSizeJ]                    // s54 = s[sgprSizeJ] % 64
s_add_u32 s55, -0x1, s[sgprNumWorkGroups1]         // 
s_cmp_ge_u32 s[sgprWorkGroup1], s55                // wg1 >= nwg1-1
s_cselect_b32 s54, s54, 0                          // set rMT1
s_cmpk_gt_u32 s54, 0x0                             // rMT1 > 0
s_cbranch_scc1 GW_B0_E1_34                         // jump if edges required
GW_B0_E0_31:

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
_v_add_lshl_u32 v72, v69, v66, 0x1                 // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=66, coord0Vgpr=66

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0), (0, 0, 2, 0), (0, 0, 3, 0), (0, 0, 4, 0), (0, 0, 5, 0), (0, 0, 6, 0), (0, 0, 7, 0)] */
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
v_cvt_f16_f32 v[vgprValuC+0], v[vgprValuC+0]       // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+1], v[vgprValuC+1]       // convert C to fp16
v_pack_b32_f16 v0, v[vgprValuC+0], v[vgprValuC+1]  // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+2], v[vgprValuC+2]       // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+3], v[vgprValuC+3]       // convert C to fp16
v_pack_b32_f16 v1, v[vgprValuC+2], v[vgprValuC+3]  // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+4], v[vgprValuC+4]       // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+5], v[vgprValuC+5]       // convert C to fp16
v_pack_b32_f16 v2, v[vgprValuC+4], v[vgprValuC+5]  // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+6], v[vgprValuC+6]       // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+7], v[vgprValuC+7]       // convert C to fp16
v_pack_b32_f16 v3, v[vgprValuC+6], v[vgprValuC+7]  // Pack with neighbor
_buffer_store_b128 v[0:3], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+8], v[vgprValuC+8]       // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+9], v[vgprValuC+9]       // convert C to fp16
v_pack_b32_f16 v8, v[vgprValuC+8], v[vgprValuC+9]  // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+10], v[vgprValuC+10]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+11], v[vgprValuC+11]     // convert C to fp16
v_pack_b32_f16 v9, v[vgprValuC+10], v[vgprValuC+11] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+12], v[vgprValuC+12]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+13], v[vgprValuC+13]     // convert C to fp16
v_pack_b32_f16 v10, v[vgprValuC+12], v[vgprValuC+13] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+14], v[vgprValuC+14]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+15], v[vgprValuC+15]     // convert C to fp16
v_pack_b32_f16 v11, v[vgprValuC+14], v[vgprValuC+15] // Pack with neighbor
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[8:11], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+16], v[vgprValuC+16]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+17], v[vgprValuC+17]     // convert C to fp16
v_pack_b32_f16 v16, v[vgprValuC+16], v[vgprValuC+17] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+18], v[vgprValuC+18]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+19], v[vgprValuC+19]     // convert C to fp16
v_pack_b32_f16 v17, v[vgprValuC+18], v[vgprValuC+19] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+20], v[vgprValuC+20]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+21], v[vgprValuC+21]     // convert C to fp16
v_pack_b32_f16 v18, v[vgprValuC+20], v[vgprValuC+21] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+22], v[vgprValuC+22]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+23], v[vgprValuC+23]     // convert C to fp16
v_pack_b32_f16 v19, v[vgprValuC+22], v[vgprValuC+23] // Pack with neighbor
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[16:19], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+24], v[vgprValuC+24]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+25], v[vgprValuC+25]     // convert C to fp16
v_pack_b32_f16 v24, v[vgprValuC+24], v[vgprValuC+25] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+26], v[vgprValuC+26]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+27], v[vgprValuC+27]     // convert C to fp16
v_pack_b32_f16 v25, v[vgprValuC+26], v[vgprValuC+27] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+28], v[vgprValuC+28]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+29], v[vgprValuC+29]     // convert C to fp16
v_pack_b32_f16 v26, v[vgprValuC+28], v[vgprValuC+29] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+30], v[vgprValuC+30]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+31], v[vgprValuC+31]     // convert C to fp16
v_pack_b32_f16 v27, v[vgprValuC+30], v[vgprValuC+31] // Pack with neighbor
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[24:27], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+32], v[vgprValuC+32]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+33], v[vgprValuC+33]     // convert C to fp16
v_pack_b32_f16 v32, v[vgprValuC+32], v[vgprValuC+33] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+34], v[vgprValuC+34]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+35], v[vgprValuC+35]     // convert C to fp16
v_pack_b32_f16 v33, v[vgprValuC+34], v[vgprValuC+35] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+36], v[vgprValuC+36]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+37], v[vgprValuC+37]     // convert C to fp16
v_pack_b32_f16 v34, v[vgprValuC+36], v[vgprValuC+37] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+38], v[vgprValuC+38]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+39], v[vgprValuC+39]     // convert C to fp16
v_pack_b32_f16 v35, v[vgprValuC+38], v[vgprValuC+39] // Pack with neighbor
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[32:35], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+40], v[vgprValuC+40]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+41], v[vgprValuC+41]     // convert C to fp16
v_pack_b32_f16 v40, v[vgprValuC+40], v[vgprValuC+41] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+42], v[vgprValuC+42]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+43], v[vgprValuC+43]     // convert C to fp16
v_pack_b32_f16 v41, v[vgprValuC+42], v[vgprValuC+43] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+44], v[vgprValuC+44]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+45], v[vgprValuC+45]     // convert C to fp16
v_pack_b32_f16 v42, v[vgprValuC+44], v[vgprValuC+45] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+46], v[vgprValuC+46]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+47], v[vgprValuC+47]     // convert C to fp16
v_pack_b32_f16 v43, v[vgprValuC+46], v[vgprValuC+47] // Pack with neighbor
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[40:43], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+48], v[vgprValuC+48]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+49], v[vgprValuC+49]     // convert C to fp16
v_pack_b32_f16 v48, v[vgprValuC+48], v[vgprValuC+49] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+50], v[vgprValuC+50]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+51], v[vgprValuC+51]     // convert C to fp16
v_pack_b32_f16 v49, v[vgprValuC+50], v[vgprValuC+51] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+52], v[vgprValuC+52]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+53], v[vgprValuC+53]     // convert C to fp16
v_pack_b32_f16 v50, v[vgprValuC+52], v[vgprValuC+53] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+54], v[vgprValuC+54]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+55], v[vgprValuC+55]     // convert C to fp16
v_pack_b32_f16 v51, v[vgprValuC+54], v[vgprValuC+55] // Pack with neighbor
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[48:51], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+56], v[vgprValuC+56]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+57], v[vgprValuC+57]     // convert C to fp16
v_pack_b32_f16 v56, v[vgprValuC+56], v[vgprValuC+57] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+58], v[vgprValuC+58]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+59], v[vgprValuC+59]     // convert C to fp16
v_pack_b32_f16 v57, v[vgprValuC+58], v[vgprValuC+59] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+60], v[vgprValuC+60]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+61], v[vgprValuC+61]     // convert C to fp16
v_pack_b32_f16 v58, v[vgprValuC+60], v[vgprValuC+61] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+62], v[vgprValuC+62]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+63], v[vgprValuC+63]     // convert C to fp16
v_pack_b32_f16 v59, v[vgprValuC+62], v[vgprValuC+63] // Pack with neighbor
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[56:59], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_branch label_GW_End_42                           // jump to end
GW_B0_E1_34:

/* edge=1, allocate 3 sgpr. perBatchTmpS=2 perBatchMaskS=1 perElementMaskS=0 elementsPerBatch=28 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,0,0,1:vw1); (0,0,0,2:vw1); (0,0,0,3:vw1); (0,0,0,4:vw1); (0,0,0,5:vw1); (0,0,0,6:vw1); (0,0,0,7:vw1); (0,0,1,0:vw1); (0,0,1,1:vw1); (0,0,1,2:vw1); (0,0,1,3:vw1); (0,0,1,4:vw1); (0,0,1,5:vw1); (0,0,1,6:vw1); (0,0,1,7:vw1); (0,0,2,0:vw1); (0,0,2,1:vw1); (0,0,2,2:vw1); (0,0,2,3:vw1); (0,0,2,4:vw1); (0,0,2,5:vw1); (0,0,2,6:vw1); (0,0,2,7:vw1); (0,0,3,0:vw1); (0,0,3,1:vw1); (0,0,3,2:vw1); (0,0,3,3:vw1) */
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
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v80, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v81, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v81, -1, v81, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v82, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v83, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v83, -1, v83, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v84, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v85, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v85, -1, v85, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v86, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v87, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v87, -1, v87, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v88, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v88, -1, v88, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v89, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v89, -1, v89, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v90, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v91, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v91, -1, v91, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v92, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v93, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v93, -1, v93, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v94, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v94, -1, v94, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v95, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v95, -1, v95, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v96, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v97, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v97, -1, v97, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v98, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v99, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v99, -1, v99, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 0, 1), (0, 0, 0, 2), (0, 0, 0, 3), (0, 0, 0, 4), (0, 0, 0, 5), (0, 0, 0, 6), (0, 0, 0, 7), (0, 0, 1, 0), (0, 0, 1, 1), (0, 0, 1, 2), (0, 0, 1, 3), (0, 0, 1, 4), (0, 0, 1, 5), (0, 0, 1, 6), (0, 0, 1, 7), (0, 0, 2, 0), (0, 0, 2, 1), (0, 0, 2, 2), (0, 0, 2, 3), (0, 0, 2, 4), (0, 0, 2, 5), (0, 0, 2, 6), (0, 0, 2, 7), (0, 0, 3, 0), (0, 0, 3, 1), (0, 0, 3, 2), (0, 0, 3, 3)] */
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

/* apply mask, calc new C and issue writes */
v_cvt_f16_f32 v[vgprValuC+0], v[vgprValuC+0]       // convert C to fp16
_buffer_store_b16 v0, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+1], v[vgprValuC+1]       // convert C to fp16
_buffer_store_b16 v1, v73, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+2], v[vgprValuC+2]       // convert C to fp16
_buffer_store_b16 v2, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+3], v[vgprValuC+3]       // convert C to fp16
_buffer_store_b16 v3, v75, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+4], v[vgprValuC+4]       // convert C to fp16
_buffer_store_b16 v4, v76, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+5], v[vgprValuC+5]       // convert C to fp16
_buffer_store_b16 v5, v77, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+6], v[vgprValuC+6]       // convert C to fp16
_buffer_store_b16 v6, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+7], v[vgprValuC+7]       // convert C to fp16
_buffer_store_b16 v7, v79, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+8], v[vgprValuC+8]       // convert C to fp16
_buffer_store_b16 v8, v80, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+9], v[vgprValuC+9]       // convert C to fp16
_buffer_store_b16 v9, v81, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+10], v[vgprValuC+10]     // convert C to fp16
_buffer_store_b16 v10, v82, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+11], v[vgprValuC+11]     // convert C to fp16
_buffer_store_b16 v11, v83, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+12], v[vgprValuC+12]     // convert C to fp16
_buffer_store_b16 v12, v84, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+13], v[vgprValuC+13]     // convert C to fp16
_buffer_store_b16 v13, v85, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+14], v[vgprValuC+14]     // convert C to fp16
_buffer_store_b16 v14, v86, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+15], v[vgprValuC+15]     // convert C to fp16
_buffer_store_b16 v15, v87, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+16], v[vgprValuC+16]     // convert C to fp16
_buffer_store_b16 v16, v88, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+17], v[vgprValuC+17]     // convert C to fp16
_buffer_store_b16 v17, v89, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+18], v[vgprValuC+18]     // convert C to fp16
_buffer_store_b16 v18, v90, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+19], v[vgprValuC+19]     // convert C to fp16
_buffer_store_b16 v19, v91, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+20], v[vgprValuC+20]     // convert C to fp16
_buffer_store_b16 v20, v92, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+21], v[vgprValuC+21]     // convert C to fp16
_buffer_store_b16 v21, v93, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+22], v[vgprValuC+22]     // convert C to fp16
_buffer_store_b16 v22, v94, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+23], v[vgprValuC+23]     // convert C to fp16
_buffer_store_b16 v23, v95, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+24], v[vgprValuC+24]     // convert C to fp16
_buffer_store_b16 v24, v96, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+25], v[vgprValuC+25]     // convert C to fp16
_buffer_store_b16 v25, v97, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+26], v[vgprValuC+26]     // convert C to fp16
_buffer_store_b16 v26, v98, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+27], v[vgprValuC+27]     // convert C to fp16
_buffer_store_b16 v27, v99, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Edge Batch #1 (d1,d0,vc1,vc0) = */
/*    (0,0,3,4:vw1); (0,0,3,5:vw1); (0,0,3,6:vw1); (0,0,3,7:vw1); (0,0,4,0:vw1); (0,0,4,1:vw1); (0,0,4,2:vw1); (0,0,4,3:vw1); (0,0,4,4:vw1); (0,0,4,5:vw1); (0,0,4,6:vw1); (0,0,4,7:vw1); (0,0,5,0:vw1); (0,0,5,1:vw1); (0,0,5,2:vw1); (0,0,5,3:vw1); (0,0,5,4:vw1); (0,0,5,5:vw1); (0,0,5,6:vw1); (0,0,5,7:vw1); (0,0,6,0:vw1); (0,0,6,1:vw1); (0,0,6,2:vw1); (0,0,6,3:vw1); (0,0,6,4:vw1); (0,0,6,5:vw1); (0,0,6,6:vw1); (0,0,6,7:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,3,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v72, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v73, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v73, -1, v73, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v74, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v75, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v75, -1, v75, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v76, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v77, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, -1, v77, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v78, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v79, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v79, -1, v79, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v80, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v81, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v81, -1, v81, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v82, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
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
_v_add_lshl_u32 v84, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v85, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v85, -1, v85, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v86, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v87, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v87, -1, v87, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v88, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v88, -1, v88, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v89, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v89, -1, v89, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v90, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v91, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v91, -1, v91, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v92, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v93, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v93, -1, v93, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v94, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v94, -1, v94, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v95, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v95, -1, v95, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v96, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v97, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v97, -1, v97, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v98, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v99, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v99, -1, v99, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 3, 4), (0, 0, 3, 5), (0, 0, 3, 6), (0, 0, 3, 7), (0, 0, 4, 0), (0, 0, 4, 1), (0, 0, 4, 2), (0, 0, 4, 3), (0, 0, 4, 4), (0, 0, 4, 5), (0, 0, 4, 6), (0, 0, 4, 7), (0, 0, 5, 0), (0, 0, 5, 1), (0, 0, 5, 2), (0, 0, 5, 3), (0, 0, 5, 4), (0, 0, 5, 5), (0, 0, 5, 6), (0, 0, 5, 7), (0, 0, 6, 0), (0, 0, 6, 1), (0, 0, 6, 2), (0, 0, 6, 3), (0, 0, 6, 4), (0, 0, 6, 5), (0, 0, 6, 6), (0, 0, 6, 7)] */
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

/* apply mask, calc new C and issue writes */
v_cvt_f16_f32 v[vgprValuC+28], v[vgprValuC+28]     // convert C to fp16
_buffer_store_b16 v28, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+29], v[vgprValuC+29]     // convert C to fp16
_buffer_store_b16 v29, v73, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+30], v[vgprValuC+30]     // convert C to fp16
_buffer_store_b16 v30, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+31], v[vgprValuC+31]     // convert C to fp16
_buffer_store_b16 v31, v75, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+32], v[vgprValuC+32]     // convert C to fp16
_buffer_store_b16 v32, v76, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+33], v[vgprValuC+33]     // convert C to fp16
_buffer_store_b16 v33, v77, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+34], v[vgprValuC+34]     // convert C to fp16
_buffer_store_b16 v34, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+35], v[vgprValuC+35]     // convert C to fp16
_buffer_store_b16 v35, v79, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+36], v[vgprValuC+36]     // convert C to fp16
_buffer_store_b16 v36, v80, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+37], v[vgprValuC+37]     // convert C to fp16
_buffer_store_b16 v37, v81, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+38], v[vgprValuC+38]     // convert C to fp16
_buffer_store_b16 v38, v82, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+39], v[vgprValuC+39]     // convert C to fp16
_buffer_store_b16 v39, v83, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+40], v[vgprValuC+40]     // convert C to fp16
_buffer_store_b16 v40, v84, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+41], v[vgprValuC+41]     // convert C to fp16
_buffer_store_b16 v41, v85, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+42], v[vgprValuC+42]     // convert C to fp16
_buffer_store_b16 v42, v86, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+43], v[vgprValuC+43]     // convert C to fp16
_buffer_store_b16 v43, v87, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+44], v[vgprValuC+44]     // convert C to fp16
_buffer_store_b16 v44, v88, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+45], v[vgprValuC+45]     // convert C to fp16
_buffer_store_b16 v45, v89, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+46], v[vgprValuC+46]     // convert C to fp16
_buffer_store_b16 v46, v90, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+47], v[vgprValuC+47]     // convert C to fp16
_buffer_store_b16 v47, v91, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+48], v[vgprValuC+48]     // convert C to fp16
_buffer_store_b16 v48, v92, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+49], v[vgprValuC+49]     // convert C to fp16
_buffer_store_b16 v49, v93, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+50], v[vgprValuC+50]     // convert C to fp16
_buffer_store_b16 v50, v94, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+51], v[vgprValuC+51]     // convert C to fp16
_buffer_store_b16 v51, v95, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+52], v[vgprValuC+52]     // convert C to fp16
_buffer_store_b16 v52, v96, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+53], v[vgprValuC+53]     // convert C to fp16
_buffer_store_b16 v53, v97, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+54], v[vgprValuC+54]     // convert C to fp16
_buffer_store_b16 v54, v98, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+55], v[vgprValuC+55]     // convert C to fp16
_buffer_store_b16 v55, v99, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Edge Batch #2 (d1,d0,vc1,vc0) = */
/*    (0,0,7,0:vw1); (0,0,7,1:vw1); (0,0,7,2:vw1); (0,0,7,3:vw1); (0,0,7,4:vw1); (0,0,7,5:vw1); (0,0,7,6:vw1); (0,0,7,7:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,7,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v72, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v73, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v73, -1, v73, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v74, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v75, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v75, -1, v75, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v76, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v77, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, -1, v77, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v78, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v79, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v79, -1, v79, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 7, 0), (0, 0, 7, 1), (0, 0, 7, 2), (0, 0, 7, 3), (0, 0, 7, 4), (0, 0, 7, 5), (0, 0, 7, 6), (0, 0, 7, 7)] */
v_mul_f32 v[vgprValuC+56], s[sgprAlpha], v[vgprValuC+56] // *= alpha
v_mul_f32 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha
v_mul_f32 v[vgprValuC+58], s[sgprAlpha], v[vgprValuC+58] // *= alpha
v_mul_f32 v[vgprValuC+59], s[sgprAlpha], v[vgprValuC+59] // *= alpha
v_mul_f32 v[vgprValuC+60], s[sgprAlpha], v[vgprValuC+60] // *= alpha
v_mul_f32 v[vgprValuC+61], s[sgprAlpha], v[vgprValuC+61] // *= alpha
v_mul_f32 v[vgprValuC+62], s[sgprAlpha], v[vgprValuC+62] // *= alpha
v_mul_f32 v[vgprValuC+63], s[sgprAlpha], v[vgprValuC+63] // *= alpha

/* apply mask, calc new C and issue writes */
v_cvt_f16_f32 v[vgprValuC+56], v[vgprValuC+56]     // convert C to fp16
_buffer_store_b16 v56, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+57], v[vgprValuC+57]     // convert C to fp16
_buffer_store_b16 v57, v73, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+58], v[vgprValuC+58]     // convert C to fp16
_buffer_store_b16 v58, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+59], v[vgprValuC+59]     // convert C to fp16
_buffer_store_b16 v59, v75, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+60], v[vgprValuC+60]     // convert C to fp16
_buffer_store_b16 v60, v76, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+61], v[vgprValuC+61]     // convert C to fp16
_buffer_store_b16 v61, v77, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+62], v[vgprValuC+62]     // convert C to fp16
_buffer_store_b16 v62, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_cvt_f16_f32 v[vgprValuC+63], v[vgprValuC+63]     // convert C to fp16
_buffer_store_b16 v63, v79, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_branch label_GW_End_42                           // jump to end
GW_Beta_43:
s_and_b32 s54, 127, s[sgprSizeI]                   // s54 = s[sgprSizeI] % 128
s_add_u32 s55, -0x1, s[sgprNumWorkGroups0]         // 
s_cmp_ge_u32 s[sgprWorkGroup0], s55                // wg0 >= nwg0-1 ?
s_cselect_b32 s54, s54, 0                          // set rMT0
s_cmpk_gt_u32 s54, 0x0                             // rMT0 > 0
s_cbranch_scc1 GW_B1_E1_41                         // jump if edges required
s_and_b32 s54, 63, s[sgprSizeJ]                    // s54 = s[sgprSizeJ] % 64
s_add_u32 s55, -0x1, s[sgprNumWorkGroups1]         // 
s_cmp_ge_u32 s[sgprWorkGroup1], s55                // wg1 >= nwg1-1
s_cselect_b32 s54, s54, 0                          // set rMT1
s_cmpk_gt_u32 s54, 0x0                             // rMT1 > 0
s_cbranch_scc1 GW_B1_E1_41                         // jump if edges required
GW_B1_E0_38:

/* edge=0, allocate 1 sgpr. perBatchTmpS=1 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=6 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Alpha Beta Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw8); (0,0,1,0:vw8); (0,0,2,0:vw8); (0,0,3,0:vw8); (0,0,4,0:vw8); (0,0,5,0:vw8) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
_v_add_lshl_u32 v73, v68, v66, 0x1                 // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=66, coord0Vgpr=66
_buffer_load_b128 v[76:79], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[80:83], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[84:87], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[88:91], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,4,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[92:95], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,5,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[96:99], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v72, v69, v66, 0x1                 // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=66, coord0Vgpr=66

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0), (0, 0, 2, 0), (0, 0, 3, 0), (0, 0, 4, 0), (0, 0, 5, 0)] */
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

/* apply mask, calc new C and issue writes */

s_waitcnt vmcnt(5)                                 // wait C (interleaved) 5 = 6 - 0 - 1
v_fma_mix_f32 v[vgprValuC+0], s[sgprBeta], v76, v[vgprValuC+0], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+1], s[sgprBeta], v76, v[vgprValuC+1], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+2], s[sgprBeta], v77, v[vgprValuC+2], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+3], s[sgprBeta], v77, v[vgprValuC+3], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+4], s[sgprBeta], v78, v[vgprValuC+4], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+5], s[sgprBeta], v78, v[vgprValuC+5], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+6], s[sgprBeta], v79, v[vgprValuC+6], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+7], s[sgprBeta], v79, v[vgprValuC+7], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+0], v[vgprValuC+0]       // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+1], v[vgprValuC+1]       // convert C to fp16
v_pack_b32_f16 v0, v[vgprValuC+0], v[vgprValuC+1]  // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+2], v[vgprValuC+2]       // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+3], v[vgprValuC+3]       // convert C to fp16
v_pack_b32_f16 v1, v[vgprValuC+2], v[vgprValuC+3]  // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+4], v[vgprValuC+4]       // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+5], v[vgprValuC+5]       // convert C to fp16
v_pack_b32_f16 v2, v[vgprValuC+4], v[vgprValuC+5]  // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+6], v[vgprValuC+6]       // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+7], v[vgprValuC+7]       // convert C to fp16
v_pack_b32_f16 v3, v[vgprValuC+6], v[vgprValuC+7]  // Pack with neighbor
_buffer_store_b128 v[0:3], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(4)                                 // wait C (interleaved) 4 = 6 - 1 - 1
v_fma_mix_f32 v[vgprValuC+8], s[sgprBeta], v80, v[vgprValuC+8], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+9], s[sgprBeta], v80, v[vgprValuC+9], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+10], s[sgprBeta], v81, v[vgprValuC+10], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+11], s[sgprBeta], v81, v[vgprValuC+11], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+12], s[sgprBeta], v82, v[vgprValuC+12], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+13], s[sgprBeta], v82, v[vgprValuC+13], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+14], s[sgprBeta], v83, v[vgprValuC+14], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+15], s[sgprBeta], v83, v[vgprValuC+15], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+8], v[vgprValuC+8]       // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+9], v[vgprValuC+9]       // convert C to fp16
v_pack_b32_f16 v8, v[vgprValuC+8], v[vgprValuC+9]  // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+10], v[vgprValuC+10]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+11], v[vgprValuC+11]     // convert C to fp16
v_pack_b32_f16 v9, v[vgprValuC+10], v[vgprValuC+11] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+12], v[vgprValuC+12]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+13], v[vgprValuC+13]     // convert C to fp16
v_pack_b32_f16 v10, v[vgprValuC+12], v[vgprValuC+13] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+14], v[vgprValuC+14]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+15], v[vgprValuC+15]     // convert C to fp16
v_pack_b32_f16 v11, v[vgprValuC+14], v[vgprValuC+15] // Pack with neighbor
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[8:11], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(3)                                 // wait C (interleaved) 3 = 6 - 2 - 1
v_fma_mix_f32 v[vgprValuC+16], s[sgprBeta], v84, v[vgprValuC+16], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+17], s[sgprBeta], v84, v[vgprValuC+17], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+18], s[sgprBeta], v85, v[vgprValuC+18], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+19], s[sgprBeta], v85, v[vgprValuC+19], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+20], s[sgprBeta], v86, v[vgprValuC+20], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+21], s[sgprBeta], v86, v[vgprValuC+21], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+22], s[sgprBeta], v87, v[vgprValuC+22], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+23], s[sgprBeta], v87, v[vgprValuC+23], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+16], v[vgprValuC+16]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+17], v[vgprValuC+17]     // convert C to fp16
v_pack_b32_f16 v16, v[vgprValuC+16], v[vgprValuC+17] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+18], v[vgprValuC+18]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+19], v[vgprValuC+19]     // convert C to fp16
v_pack_b32_f16 v17, v[vgprValuC+18], v[vgprValuC+19] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+20], v[vgprValuC+20]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+21], v[vgprValuC+21]     // convert C to fp16
v_pack_b32_f16 v18, v[vgprValuC+20], v[vgprValuC+21] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+22], v[vgprValuC+22]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+23], v[vgprValuC+23]     // convert C to fp16
v_pack_b32_f16 v19, v[vgprValuC+22], v[vgprValuC+23] // Pack with neighbor
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[16:19], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(2)                                 // wait C (interleaved) 2 = 6 - 3 - 1
v_fma_mix_f32 v[vgprValuC+24], s[sgprBeta], v88, v[vgprValuC+24], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+25], s[sgprBeta], v88, v[vgprValuC+25], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+26], s[sgprBeta], v89, v[vgprValuC+26], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+27], s[sgprBeta], v89, v[vgprValuC+27], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+28], s[sgprBeta], v90, v[vgprValuC+28], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+29], s[sgprBeta], v90, v[vgprValuC+29], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+30], s[sgprBeta], v91, v[vgprValuC+30], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+31], s[sgprBeta], v91, v[vgprValuC+31], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+24], v[vgprValuC+24]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+25], v[vgprValuC+25]     // convert C to fp16
v_pack_b32_f16 v24, v[vgprValuC+24], v[vgprValuC+25] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+26], v[vgprValuC+26]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+27], v[vgprValuC+27]     // convert C to fp16
v_pack_b32_f16 v25, v[vgprValuC+26], v[vgprValuC+27] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+28], v[vgprValuC+28]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+29], v[vgprValuC+29]     // convert C to fp16
v_pack_b32_f16 v26, v[vgprValuC+28], v[vgprValuC+29] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+30], v[vgprValuC+30]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+31], v[vgprValuC+31]     // convert C to fp16
v_pack_b32_f16 v27, v[vgprValuC+30], v[vgprValuC+31] // Pack with neighbor
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[24:27], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(1)                                 // wait C (interleaved) 1 = 6 - 4 - 1
v_fma_mix_f32 v[vgprValuC+32], s[sgprBeta], v92, v[vgprValuC+32], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+33], s[sgprBeta], v92, v[vgprValuC+33], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+34], s[sgprBeta], v93, v[vgprValuC+34], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+35], s[sgprBeta], v93, v[vgprValuC+35], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+36], s[sgprBeta], v94, v[vgprValuC+36], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+37], s[sgprBeta], v94, v[vgprValuC+37], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+38], s[sgprBeta], v95, v[vgprValuC+38], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+39], s[sgprBeta], v95, v[vgprValuC+39], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+32], v[vgprValuC+32]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+33], v[vgprValuC+33]     // convert C to fp16
v_pack_b32_f16 v32, v[vgprValuC+32], v[vgprValuC+33] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+34], v[vgprValuC+34]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+35], v[vgprValuC+35]     // convert C to fp16
v_pack_b32_f16 v33, v[vgprValuC+34], v[vgprValuC+35] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+36], v[vgprValuC+36]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+37], v[vgprValuC+37]     // convert C to fp16
v_pack_b32_f16 v34, v[vgprValuC+36], v[vgprValuC+37] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+38], v[vgprValuC+38]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+39], v[vgprValuC+39]     // convert C to fp16
v_pack_b32_f16 v35, v[vgprValuC+38], v[vgprValuC+39] // Pack with neighbor
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[32:35], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(0)                                 // wait C (interleaved) 0 = 6 - 5 - 1
v_fma_mix_f32 v[vgprValuC+40], s[sgprBeta], v96, v[vgprValuC+40], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+41], s[sgprBeta], v96, v[vgprValuC+41], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+42], s[sgprBeta], v97, v[vgprValuC+42], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+43], s[sgprBeta], v97, v[vgprValuC+43], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+44], s[sgprBeta], v98, v[vgprValuC+44], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+45], s[sgprBeta], v98, v[vgprValuC+45], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+46], s[sgprBeta], v99, v[vgprValuC+46], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+47], s[sgprBeta], v99, v[vgprValuC+47], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+40], v[vgprValuC+40]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+41], v[vgprValuC+41]     // convert C to fp16
v_pack_b32_f16 v40, v[vgprValuC+40], v[vgprValuC+41] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+42], v[vgprValuC+42]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+43], v[vgprValuC+43]     // convert C to fp16
v_pack_b32_f16 v41, v[vgprValuC+42], v[vgprValuC+43] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+44], v[vgprValuC+44]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+45], v[vgprValuC+45]     // convert C to fp16
v_pack_b32_f16 v42, v[vgprValuC+44], v[vgprValuC+45] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+46], v[vgprValuC+46]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+47], v[vgprValuC+47]     // convert C to fp16
v_pack_b32_f16 v43, v[vgprValuC+46], v[vgprValuC+47] // Pack with neighbor
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[40:43], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
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
_buffer_load_b128 v[76:79], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
/* (d1,vc1,d0,vc0)=(0,7,0,0) */
s_lshl_b32  s54, s[sgprStrideC1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdC+0], s[sgprSrdC+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdC+1], s[sgprSrdC+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_load_b128 v[80:83], v73, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc

/* rC *= alpha batchElements=[(0, 0, 6, 0), (0, 0, 7, 0)] */
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

s_waitcnt vmcnt(1)                                 // wait C (interleaved) 1 = 2 - 0 - 1
v_fma_mix_f32 v[vgprValuC+48], s[sgprBeta], v76, v[vgprValuC+48], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+49], s[sgprBeta], v76, v[vgprValuC+49], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+50], s[sgprBeta], v77, v[vgprValuC+50], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+51], s[sgprBeta], v77, v[vgprValuC+51], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+52], s[sgprBeta], v78, v[vgprValuC+52], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+53], s[sgprBeta], v78, v[vgprValuC+53], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+54], s[sgprBeta], v79, v[vgprValuC+54], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+55], s[sgprBeta], v79, v[vgprValuC+55], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+48], v[vgprValuC+48]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+49], v[vgprValuC+49]     // convert C to fp16
v_pack_b32_f16 v48, v[vgprValuC+48], v[vgprValuC+49] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+50], v[vgprValuC+50]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+51], v[vgprValuC+51]     // convert C to fp16
v_pack_b32_f16 v49, v[vgprValuC+50], v[vgprValuC+51] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+52], v[vgprValuC+52]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+53], v[vgprValuC+53]     // convert C to fp16
v_pack_b32_f16 v50, v[vgprValuC+52], v[vgprValuC+53] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+54], v[vgprValuC+54]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+55], v[vgprValuC+55]     // convert C to fp16
v_pack_b32_f16 v51, v[vgprValuC+54], v[vgprValuC+55] // Pack with neighbor
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[48:51], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D

s_waitcnt vmcnt(0)                                 // wait C (interleaved) 0 = 2 - 1 - 1
v_fma_mix_f32 v[vgprValuC+56], s[sgprBeta], v80, v[vgprValuC+56], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+57], s[sgprBeta], v80, v[vgprValuC+57], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+58], s[sgprBeta], v81, v[vgprValuC+58], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+59], s[sgprBeta], v81, v[vgprValuC+59], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+60], s[sgprBeta], v82, v[vgprValuC+60], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+61], s[sgprBeta], v82, v[vgprValuC+61], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+62], s[sgprBeta], v83, v[vgprValuC+62], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+63], s[sgprBeta], v83, v[vgprValuC+63], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+56], v[vgprValuC+56]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+57], v[vgprValuC+57]     // convert C to fp16
v_pack_b32_f16 v56, v[vgprValuC+56], v[vgprValuC+57] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+58], v[vgprValuC+58]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+59], v[vgprValuC+59]     // convert C to fp16
v_pack_b32_f16 v57, v[vgprValuC+58], v[vgprValuC+59] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+60], v[vgprValuC+60]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+61], v[vgprValuC+61]     // convert C to fp16
v_pack_b32_f16 v58, v[vgprValuC+60], v[vgprValuC+61] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+62], v[vgprValuC+62]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+63], v[vgprValuC+63]     // convert C to fp16
v_pack_b32_f16 v59, v[vgprValuC+62], v[vgprValuC+63] // Pack with neighbor
s_lshl_b32  s54, s[sgprStrideD1J], 1               // incToNextRow: Scale by BPE
s_add_u32  s[sgprSrdD+0], s[sgprSrdD+0], s54       // incToNextRow: gra SRD += inc(lower)
s_addc_u32  s[sgprSrdD+1], s[sgprSrdD+1], 0        // incToNextRow: gra SRD += inc(upper)
_buffer_store_b128 v[56:59], v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_branch label_GW_End_42                           // jump to end
GW_B1_E1_41:

/* edge=1, allocate 3 sgpr. perBatchTmpS=2 perBatchMaskS=1 perElementMaskS=0 elementsPerBatch=14 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,0,0,1:vw1); (0,0,0,2:vw1); (0,0,0,3:vw1); (0,0,0,4:vw1); (0,0,0,5:vw1); (0,0,0,6:vw1); (0,0,0,7:vw1); (0,0,1,0:vw1); (0,0,1,1:vw1); (0,0,1,2:vw1); (0,0,1,3:vw1); (0,0,1,4:vw1); (0,0,1,5:vw1) */
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
_buffer_load_d16_hi_b16 v75, v74, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v74, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v76, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v77, v76, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v76, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v78, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v79, v78, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v78, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v80, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v81, v80, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v80, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v82, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v83, v82, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v82, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v84, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v85, v84, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v84, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v86, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v87, v86, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v86, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v88, v68, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v88, -1, v88, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v89, v88, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v88, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v88, -1, v88, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v90, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v91, v90, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v90, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v92, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v93, v92, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v92, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v94, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v94, -1, v94, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v95, v94, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v94, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v94, -1, v94, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v96, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v97, v96, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v96, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v98, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v99, v98, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v98, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 0, 1), (0, 0, 0, 2), (0, 0, 0, 3), (0, 0, 0, 4), (0, 0, 0, 5), (0, 0, 0, 6), (0, 0, 0, 7), (0, 0, 1, 0), (0, 0, 1, 1), (0, 0, 1, 2), (0, 0, 1, 3), (0, 0, 1, 4), (0, 0, 1, 5)] */
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
s_waitcnt vmcnt(0)                                 // wait C
s_waitcnt_vscnt null, 0                            // writes

/* apply mask, calc new C and issue writes */
v_fma_mix_f32 v[vgprValuC+0], s[sgprBeta], v73, v[vgprValuC+0], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+0], v[vgprValuC+0]       // convert C to fp16
_buffer_store_b16 v0, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+1], s[sgprBeta], v75, v[vgprValuC+1], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+1], v[vgprValuC+1]       // convert C to fp16
_buffer_store_b16 v1, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+2], s[sgprBeta], v77, v[vgprValuC+2], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+2], v[vgprValuC+2]       // convert C to fp16
_buffer_store_b16 v2, v76, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+3], s[sgprBeta], v79, v[vgprValuC+3], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+3], v[vgprValuC+3]       // convert C to fp16
_buffer_store_b16 v3, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+4], s[sgprBeta], v81, v[vgprValuC+4], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+4], v[vgprValuC+4]       // convert C to fp16
_buffer_store_b16 v4, v80, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+5], s[sgprBeta], v83, v[vgprValuC+5], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+5], v[vgprValuC+5]       // convert C to fp16
_buffer_store_b16 v5, v82, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+6], s[sgprBeta], v85, v[vgprValuC+6], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+6], v[vgprValuC+6]       // convert C to fp16
_buffer_store_b16 v6, v84, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+7], s[sgprBeta], v87, v[vgprValuC+7], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+7], v[vgprValuC+7]       // convert C to fp16
_buffer_store_b16 v7, v86, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+8], s[sgprBeta], v89, v[vgprValuC+8], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+8], v[vgprValuC+8]       // convert C to fp16
_buffer_store_b16 v8, v88, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+9], s[sgprBeta], v91, v[vgprValuC+9], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+9], v[vgprValuC+9]       // convert C to fp16
_buffer_store_b16 v9, v90, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+10], s[sgprBeta], v93, v[vgprValuC+10], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+10], v[vgprValuC+10]     // convert C to fp16
_buffer_store_b16 v10, v92, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+11], s[sgprBeta], v95, v[vgprValuC+11], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+11], v[vgprValuC+11]     // convert C to fp16
_buffer_store_b16 v11, v94, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+12], s[sgprBeta], v97, v[vgprValuC+12], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+12], v[vgprValuC+12]     // convert C to fp16
_buffer_store_b16 v12, v96, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+13], s[sgprBeta], v99, v[vgprValuC+13], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+13], v[vgprValuC+13]     // convert C to fp16
_buffer_store_b16 v13, v98, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #1 (d1,d0,vc1,vc0) = */
/*    (0,0,1,6:vw1); (0,0,1,7:vw1); (0,0,2,0:vw1); (0,0,2,1:vw1); (0,0,2,2:vw1); (0,0,2,3:vw1); (0,0,2,4:vw1); (0,0,2,5:vw1); (0,0,2,6:vw1); (0,0,2,7:vw1); (0,0,3,0:vw1); (0,0,3,1:vw1); (0,0,3,2:vw1); (0,0,3,3:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,1,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v72, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v73, v72, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v72, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v74, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v75, v74, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v74, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v76, v68, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v77, v76, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v76, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v78, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v79, v78, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v78, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v80, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v81, v80, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v80, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v82, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v83, v82, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v82, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v84, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v85, v84, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v84, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v86, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v87, v86, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v86, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v88, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v88, -1, v88, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v89, v88, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v88, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v88, -1, v88, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v90, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v91, v90, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v90, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v92, v68, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v93, v92, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v92, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v94, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v94, -1, v94, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v95, v94, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v94, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v94, -1, v94, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v96, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v97, v96, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v96, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v98, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v99, v98, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v98, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 1, 6), (0, 0, 1, 7), (0, 0, 2, 0), (0, 0, 2, 1), (0, 0, 2, 2), (0, 0, 2, 3), (0, 0, 2, 4), (0, 0, 2, 5), (0, 0, 2, 6), (0, 0, 2, 7), (0, 0, 3, 0), (0, 0, 3, 1), (0, 0, 3, 2), (0, 0, 3, 3)] */
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
s_waitcnt vmcnt(0)                                 // wait C
s_waitcnt_vscnt null, 0                            // writes

/* apply mask, calc new C and issue writes */
v_fma_mix_f32 v[vgprValuC+14], s[sgprBeta], v73, v[vgprValuC+14], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+14], v[vgprValuC+14]     // convert C to fp16
_buffer_store_b16 v14, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+15], s[sgprBeta], v75, v[vgprValuC+15], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+15], v[vgprValuC+15]     // convert C to fp16
_buffer_store_b16 v15, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+16], s[sgprBeta], v77, v[vgprValuC+16], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+16], v[vgprValuC+16]     // convert C to fp16
_buffer_store_b16 v16, v76, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+17], s[sgprBeta], v79, v[vgprValuC+17], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+17], v[vgprValuC+17]     // convert C to fp16
_buffer_store_b16 v17, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+18], s[sgprBeta], v81, v[vgprValuC+18], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+18], v[vgprValuC+18]     // convert C to fp16
_buffer_store_b16 v18, v80, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+19], s[sgprBeta], v83, v[vgprValuC+19], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+19], v[vgprValuC+19]     // convert C to fp16
_buffer_store_b16 v19, v82, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+20], s[sgprBeta], v85, v[vgprValuC+20], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+20], v[vgprValuC+20]     // convert C to fp16
_buffer_store_b16 v20, v84, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+21], s[sgprBeta], v87, v[vgprValuC+21], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+21], v[vgprValuC+21]     // convert C to fp16
_buffer_store_b16 v21, v86, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+22], s[sgprBeta], v89, v[vgprValuC+22], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+22], v[vgprValuC+22]     // convert C to fp16
_buffer_store_b16 v22, v88, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+23], s[sgprBeta], v91, v[vgprValuC+23], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+23], v[vgprValuC+23]     // convert C to fp16
_buffer_store_b16 v23, v90, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+24], s[sgprBeta], v93, v[vgprValuC+24], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+24], v[vgprValuC+24]     // convert C to fp16
_buffer_store_b16 v24, v92, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+25], s[sgprBeta], v95, v[vgprValuC+25], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+25], v[vgprValuC+25]     // convert C to fp16
_buffer_store_b16 v25, v94, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+26], s[sgprBeta], v97, v[vgprValuC+26], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+26], v[vgprValuC+26]     // convert C to fp16
_buffer_store_b16 v26, v96, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+27], s[sgprBeta], v99, v[vgprValuC+27], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+27], v[vgprValuC+27]     // convert C to fp16
_buffer_store_b16 v27, v98, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #2 (d1,d0,vc1,vc0) = */
/*    (0,0,3,4:vw1); (0,0,3,5:vw1); (0,0,3,6:vw1); (0,0,3,7:vw1); (0,0,4,0:vw1); (0,0,4,1:vw1); (0,0,4,2:vw1); (0,0,4,3:vw1); (0,0,4,4:vw1); (0,0,4,5:vw1); (0,0,4,6:vw1); (0,0,4,7:vw1); (0,0,5,0:vw1); (0,0,5,1:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,3,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v72, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v73, v72, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v72, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v74, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v75, v74, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v74, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v76, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v77, v76, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v76, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v78, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v79, v78, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v78, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v80, v68, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v81, v80, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v80, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v82, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v83, v82, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v82, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v84, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v85, v84, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v84, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v86, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v87, v86, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v86, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v88, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v88, -1, v88, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v89, v88, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v88, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v88, -1, v88, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v90, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v91, v90, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v90, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v92, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v93, v92, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v92, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v94, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v94, -1, v94, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v95, v94, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v94, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v94, -1, v94, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,0) */
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
/* (d1,vc1,d0,vc0)=(0,5,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v98, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v99, v98, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v98, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 3, 4), (0, 0, 3, 5), (0, 0, 3, 6), (0, 0, 3, 7), (0, 0, 4, 0), (0, 0, 4, 1), (0, 0, 4, 2), (0, 0, 4, 3), (0, 0, 4, 4), (0, 0, 4, 5), (0, 0, 4, 6), (0, 0, 4, 7), (0, 0, 5, 0), (0, 0, 5, 1)] */
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
s_waitcnt vmcnt(0)                                 // wait C
s_waitcnt_vscnt null, 0                            // writes

/* apply mask, calc new C and issue writes */
v_fma_mix_f32 v[vgprValuC+28], s[sgprBeta], v73, v[vgprValuC+28], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+28], v[vgprValuC+28]     // convert C to fp16
_buffer_store_b16 v28, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+29], s[sgprBeta], v75, v[vgprValuC+29], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+29], v[vgprValuC+29]     // convert C to fp16
_buffer_store_b16 v29, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+30], s[sgprBeta], v77, v[vgprValuC+30], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+30], v[vgprValuC+30]     // convert C to fp16
_buffer_store_b16 v30, v76, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+31], s[sgprBeta], v79, v[vgprValuC+31], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+31], v[vgprValuC+31]     // convert C to fp16
_buffer_store_b16 v31, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+32], s[sgprBeta], v81, v[vgprValuC+32], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+32], v[vgprValuC+32]     // convert C to fp16
_buffer_store_b16 v32, v80, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+33], s[sgprBeta], v83, v[vgprValuC+33], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+33], v[vgprValuC+33]     // convert C to fp16
_buffer_store_b16 v33, v82, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+34], s[sgprBeta], v85, v[vgprValuC+34], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+34], v[vgprValuC+34]     // convert C to fp16
_buffer_store_b16 v34, v84, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+35], s[sgprBeta], v87, v[vgprValuC+35], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+35], v[vgprValuC+35]     // convert C to fp16
_buffer_store_b16 v35, v86, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+36], s[sgprBeta], v89, v[vgprValuC+36], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+36], v[vgprValuC+36]     // convert C to fp16
_buffer_store_b16 v36, v88, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+37], s[sgprBeta], v91, v[vgprValuC+37], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+37], v[vgprValuC+37]     // convert C to fp16
_buffer_store_b16 v37, v90, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+38], s[sgprBeta], v93, v[vgprValuC+38], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+38], v[vgprValuC+38]     // convert C to fp16
_buffer_store_b16 v38, v92, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+39], s[sgprBeta], v95, v[vgprValuC+39], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+39], v[vgprValuC+39]     // convert C to fp16
_buffer_store_b16 v39, v94, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+40], s[sgprBeta], v97, v[vgprValuC+40], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+40], v[vgprValuC+40]     // convert C to fp16
_buffer_store_b16 v40, v96, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+41], s[sgprBeta], v99, v[vgprValuC+41], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+41], v[vgprValuC+41]     // convert C to fp16
_buffer_store_b16 v41, v98, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #3 (d1,d0,vc1,vc0) = */
/*    (0,0,5,2:vw1); (0,0,5,3:vw1); (0,0,5,4:vw1); (0,0,5,5:vw1); (0,0,5,6:vw1); (0,0,5,7:vw1); (0,0,6,0:vw1); (0,0,6,1:vw1); (0,0,6,2:vw1); (0,0,6,3:vw1); (0,0,6,4:vw1); (0,0,6,5:vw1); (0,0,6,6:vw1); (0,0,6,7:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,5,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v72, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v73, v72, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v72, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v74, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v75, v74, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v74, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v76, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v77, v76, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v76, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v78, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v79, v78, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v78, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v80, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v81, v80, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v80, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v82, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v83, v82, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v82, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,0) */
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
/* (d1,vc1,d0,vc0)=(0,6,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v86, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v87, v86, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v86, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v88, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v88, -1, v88, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v89, v88, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v88, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v88, -1, v88, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v90, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v91, v90, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v90, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v90, -1, v90, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v92, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v93, v92, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v92, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v92, -1, v92, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v94, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v94, -1, v94, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v95, v94, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v94, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v94, -1, v94, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v96, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v97, v96, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v96, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v96, -1, v96, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v98, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v99, v98, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v98, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v98, -1, v98, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 5, 2), (0, 0, 5, 3), (0, 0, 5, 4), (0, 0, 5, 5), (0, 0, 5, 6), (0, 0, 5, 7), (0, 0, 6, 0), (0, 0, 6, 1), (0, 0, 6, 2), (0, 0, 6, 3), (0, 0, 6, 4), (0, 0, 6, 5), (0, 0, 6, 6), (0, 0, 6, 7)] */
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
s_waitcnt vmcnt(0)                                 // wait C
s_waitcnt_vscnt null, 0                            // writes

/* apply mask, calc new C and issue writes */
v_fma_mix_f32 v[vgprValuC+42], s[sgprBeta], v73, v[vgprValuC+42], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+42], v[vgprValuC+42]     // convert C to fp16
_buffer_store_b16 v42, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+43], s[sgprBeta], v75, v[vgprValuC+43], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+43], v[vgprValuC+43]     // convert C to fp16
_buffer_store_b16 v43, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+44], s[sgprBeta], v77, v[vgprValuC+44], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+44], v[vgprValuC+44]     // convert C to fp16
_buffer_store_b16 v44, v76, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+45], s[sgprBeta], v79, v[vgprValuC+45], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+45], v[vgprValuC+45]     // convert C to fp16
_buffer_store_b16 v45, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+46], s[sgprBeta], v81, v[vgprValuC+46], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+46], v[vgprValuC+46]     // convert C to fp16
_buffer_store_b16 v46, v80, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+47], s[sgprBeta], v83, v[vgprValuC+47], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+47], v[vgprValuC+47]     // convert C to fp16
_buffer_store_b16 v47, v82, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+48], s[sgprBeta], v85, v[vgprValuC+48], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+48], v[vgprValuC+48]     // convert C to fp16
_buffer_store_b16 v48, v84, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+49], s[sgprBeta], v87, v[vgprValuC+49], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+49], v[vgprValuC+49]     // convert C to fp16
_buffer_store_b16 v49, v86, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+50], s[sgprBeta], v89, v[vgprValuC+50], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+50], v[vgprValuC+50]     // convert C to fp16
_buffer_store_b16 v50, v88, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+51], s[sgprBeta], v91, v[vgprValuC+51], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+51], v[vgprValuC+51]     // convert C to fp16
_buffer_store_b16 v51, v90, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+52], s[sgprBeta], v93, v[vgprValuC+52], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+52], v[vgprValuC+52]     // convert C to fp16
_buffer_store_b16 v52, v92, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+53], s[sgprBeta], v95, v[vgprValuC+53], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+53], v[vgprValuC+53]     // convert C to fp16
_buffer_store_b16 v53, v94, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+54], s[sgprBeta], v97, v[vgprValuC+54], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+54], v[vgprValuC+54]     // convert C to fp16
_buffer_store_b16 v54, v96, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+55], s[sgprBeta], v99, v[vgprValuC+55], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+55], v[vgprValuC+55]     // convert C to fp16
_buffer_store_b16 v55, v98, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Alpha Beta Edge Batch #4 (d1,d0,vc1,vc0) = */
/*    (0,0,7,0:vw1); (0,0,7,1:vw1); (0,0,7,2:vw1); (0,0,7,3:vw1); (0,0,7,4:vw1); (0,0,7,5:vw1); (0,0,7,6:vw1); (0,0,7,7:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,7,0,0) */
_v_add_co_u32 v67, vcc_lo, v67, 1                  // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
_v_add_u32 v68, v68, s[sgprStrideC1J]              // ROWINC- Move cinRowPtr to next row
_v_add_u32 v69, v69, s[sgprStrideD1J]              // Move coutRowPtr to next row
v_cmp_lt_u32 s54, v66, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v72, v68, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v73, v72, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v72, v69, v66, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v72, -1, v72, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,1) */
_v_add_co_u32 v70, vcc_lo, v66, 1                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v74, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v75, v74, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v74, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v74, -1, v74, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,2) */
_v_add_co_u32 v70, vcc_lo, v66, 2                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v76, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v77, v76, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v76, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, -1, v76, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,3) */
_v_add_co_u32 v70, vcc_lo, v66, 3                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v78, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v79, v78, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v78, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v78, -1, v78, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,4) */
_v_add_co_u32 v70, vcc_lo, v66, 4                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v80, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v81, v80, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v80, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v80, -1, v80, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,5) */
_v_add_co_u32 v70, vcc_lo, v66, 5                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v82, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v83, v82, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v82, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v82, -1, v82, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,6) */
_v_add_co_u32 v70, vcc_lo, v66, 6                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v84, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDC clip if OOB. offset
_buffer_load_d16_b16 v85, v84, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v84, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v84, -1, v84, s56                    // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,7) */
_v_add_co_u32 v70, vcc_lo, v66, 7                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s54, v70, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s56, v67, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s56, s54, s56                            // in0 && in1
_v_add_lshl_u32 v86, v68, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDC clip if OOB. offset
_buffer_load_d16_hi_b16 v87, v86, s[sgprSrdC:sgprSrdC+3], 0, offen offset:0 // load C for beta calc
_v_add_lshl_u32 v86, v69, v70, 0x1                 // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v86, -1, v86, s56                    // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 7, 0), (0, 0, 7, 1), (0, 0, 7, 2), (0, 0, 7, 3), (0, 0, 7, 4), (0, 0, 7, 5), (0, 0, 7, 6), (0, 0, 7, 7)] */
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
v_fma_mix_f32 v[vgprValuC+56], s[sgprBeta], v73, v[vgprValuC+56], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+56], v[vgprValuC+56]     // convert C to fp16
_buffer_store_b16 v56, v72, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+57], s[sgprBeta], v75, v[vgprValuC+57], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+57], v[vgprValuC+57]     // convert C to fp16
_buffer_store_b16 v57, v74, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+58], s[sgprBeta], v77, v[vgprValuC+58], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+58], v[vgprValuC+58]     // convert C to fp16
_buffer_store_b16 v58, v76, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+59], s[sgprBeta], v79, v[vgprValuC+59], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+59], v[vgprValuC+59]     // convert C to fp16
_buffer_store_b16 v59, v78, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+60], s[sgprBeta], v81, v[vgprValuC+60], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+60], v[vgprValuC+60]     // convert C to fp16
_buffer_store_b16 v60, v80, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+61], s[sgprBeta], v83, v[vgprValuC+61], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+61], v[vgprValuC+61]     // convert C to fp16
_buffer_store_b16 v61, v82, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+62], s[sgprBeta], v85, v[vgprValuC+62], op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+62], v[vgprValuC+62]     // convert C to fp16
_buffer_store_b16 v62, v84, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
v_fma_mix_f32 v[vgprValuC+63], s[sgprBeta], v87, v[vgprValuC+63], op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v[vgprValuC+63], v[vgprValuC+63]     // convert C to fp16
_buffer_store_b16 v63, v86, s[sgprSrdD:sgprSrdD+3], 0, offen, offset:0 // store D
s_branch label_GW_End_42                           // jump to end
label_GW_End_42:

label_0047:  /// KernelEnd
s_endpgm                                           // Kernel End

