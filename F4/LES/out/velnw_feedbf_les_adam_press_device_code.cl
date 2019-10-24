

__attribute__((always_inline))
inline unsigned int F3D2C(
        unsigned int i_rng,unsigned int j_rng, // ranges, i.e. (hb-lb)+1
        int i_lb, int j_lb, int k_lb, // lower bounds
        int ix, int jx, int kx
        ) {
    return (i_rng*j_rng*(kx-k_lb)+i_rng*(jx-j_lb)+ix-i_lb);
}

__attribute__((always_inline))
inline unsigned int F2D2C(
        unsigned int i_rng, // ranges, i.e. (hb-lb)+1
        int i_lb, int j_lb, // lower bounds
        int ix, int jx
        ) {
    return (i_rng*(jx-j_lb)+ix-i_lb);
}


__attribute__((always_inline))
inline unsigned int F1D2C(
        int i_lb, // lower bounds
        int ix
        ) {
    return ix-i_lb;
}

__attribute__((always_inline))
inline unsigned int F4D2C(
        unsigned int i_rng,unsigned int j_rng, unsigned int k_rng, // ranges, i.e. (hb-lb)+1
        int i_lb, int j_lb, int k_lb, int l_lb, // lower bounds
        int ix, int jx, int kx, int lx
        ) {
    return (i_rng*j_rng*k_rng*(lx-l_lb)+
            i_rng*j_rng*(kx-k_lb)+
            i_rng*(jx-j_lb)+
            ix-i_lb
            );
}



            pipe float p0_velnw_0_p0_velnw_1_smart_cache_u_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_0_smart_cache_p0_velnw_0_p0_ip1_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_0_smart_cache_p0_velnw_0_p0_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_0_p0_i_j_k_reader_p0_velnw_0_smart_cache_p0_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_0_dxs_i_reader_p0_velnw_0_dxs_i_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_0_f_i_j_k_reader_p0_velnw_0_f_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_0_u_i_j_k_reader_p0_velnw_0_u_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_1_p0_velnw_2_smart_cache_v_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_1_p0_velnw_2_smart_cache_u_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_1_smart_cache_p0_velnw_1_u_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_1_smart_cache_p0_velnw_1_p0_i_jp1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_1_smart_cache_p0_velnw_1_p0_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_1_p0_i_j_k_reader_p0_velnw_1_smart_cache_p0_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_1_dys_j_reader_p0_velnw_1_dys_j_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_1_g_i_j_k_reader_p0_velnw_1_g_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_1_v_i_j_k_reader_p0_velnw_1_v_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_2_p0_feedbf_u_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_2_p0_feedbf_v_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_2_p0_feedbf_w_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_2_smart_cache_p0_velnw_2_v_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_2_smart_cache_p0_velnw_2_u_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_2_smart_cache_p0_velnw_2_p0_i_j_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_2_smart_cache_p0_velnw_2_p0_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_2_p0_i_j_k_reader_p0_velnw_2_smart_cache_p0_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_2_dzs_k_reader_p0_velnw_2_dzs_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_2_h_i_j_k_reader_p0_velnw_2_h_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_velnw_2_w_i_j_k_reader_p0_velnw_2_w_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_feedbf_p0_les_0_smart_cache_fx_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_feedbf_p0_les_0_smart_cache_fy_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_feedbf_p0_les_0_smart_cache_fz_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_feedbf_p0_les_0_smart_cache_usum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_feedbf_p0_les_0_smart_cache_vsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_feedbf_p0_les_0_smart_cache_wsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_feedbf_p0_les_0_smart_cache_w_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_feedbf_p0_les_0_smart_cache_v_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_feedbf_p0_les_0_smart_cache_u_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_feedbf_p0_les_0_smart_cache_h_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_feedbf_p0_les_0_smart_cache_g_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_feedbf_p0_les_0_smart_cache_f_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_feedbf_bmask1_i_j_k_reader_p0_feedbf_bmask1_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_feedbf_cmask1_i_j_k_reader_p0_feedbf_cmask1_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_feedbf_dmask1_i_j_k_reader_p0_feedbf_dmask1_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_feedbf_f_i_j_k_reader_p0_feedbf_f_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_feedbf_fx_i_j_k_reader_p0_feedbf_fx_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_feedbf_fy_i_j_k_reader_p0_feedbf_fy_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_feedbf_fz_i_j_k_reader_p0_feedbf_fz_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_feedbf_g_i_j_k_reader_p0_feedbf_g_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_feedbf_h_i_j_k_reader_p0_feedbf_h_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_feedbf_usum_i_j_k_reader_p0_feedbf_usum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_feedbf_vsum_i_j_k_reader_p0_feedbf_vsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_feedbf_wsum_i_j_k_reader_p0_feedbf_wsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_p0_les_1_smart_cache_fx_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_p0_les_1_smart_cache_fy_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_p0_les_1_smart_cache_fz_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_p0_les_1_smart_cache_usum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_p0_les_1_smart_cache_vsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_p0_les_1_smart_cache_wsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_p0_les_1_smart_cache_w_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_p0_les_1_smart_cache_v_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_p0_les_1_smart_cache_u_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_p0_les_1_smart_cache_h_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_p0_les_1_smart_cache_g_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_p0_les_1_smart_cache_sm_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_p0_les_1_smart_cache_f_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_fx_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_fy_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_fz_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_usum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_vsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_wsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_w_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_v_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_u_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_h_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_g_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_f_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_diu2_im1_jp1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_diu2_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_diu2_i_jp1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_diu2_im1_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_diu3_im1_j_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_diu3_i_j_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_diu3_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_diu3_im1_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_diu4_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_diu4_ip1_jm1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_diu4_ip1_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_diu4_i_jm1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_diu6_i_jm1_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_diu6_i_j_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_diu6_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_diu6_i_jm1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_diu7_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_diu7_ip1_j_km1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_diu7_ip1_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_diu7_i_j_km1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_diu8_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_diu8_i_jp1_km1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_diu8_i_jp1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_smart_cache_p0_les_0_diu8_i_j_km1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_diu2_i_j_k_reader_p0_les_0_smart_cache_diu2_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_diu3_i_j_k_reader_p0_les_0_smart_cache_diu3_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_diu4_i_j_k_reader_p0_les_0_smart_cache_diu4_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_diu6_i_j_k_reader_p0_les_0_smart_cache_diu6_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_diu7_i_j_k_reader_p0_les_0_smart_cache_diu7_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_diu8_i_j_k_reader_p0_les_0_smart_cache_diu8_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_delx1_k_reader_p0_les_0_delx1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_diu1_i_j_k_reader_p0_les_0_diu1_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_diu5_i_j_k_reader_p0_les_0_diu5_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_diu9_i_j_k_reader_p0_les_0_diu9_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_0_sm_i_j_k_reader_p0_les_0_sm_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_p0_les_2_smart_cache_fx_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_p0_les_2_smart_cache_fy_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_p0_les_2_smart_cache_fz_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_p0_les_2_smart_cache_usum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_p0_les_2_smart_cache_vsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_p0_les_2_smart_cache_wsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_p0_les_2_smart_cache_w_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_p0_les_2_smart_cache_v_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_p0_les_2_smart_cache_u_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_p0_les_2_smart_cache_f_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_p0_les_2_smart_cache_h_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_p0_les_2_smart_cache_sm_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_p0_les_2_smart_cache_g_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_f_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_fx_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_fy_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_fz_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_usum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_vsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_wsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_w_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_v_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_u_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_h_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_g_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_diu1_ip1_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_diu1_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_diu2_i_jp1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_diu2_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_diu3_i_j_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_diu3_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_diu4_ip1_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_diu4_ip1_jm1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_diu7_ip1_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_diu7_ip1_j_km1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_dx1_ip1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_dx1_i_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_dy1_jp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_dy1_j_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_dzn_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_dzn_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_dzn_km1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_sm_i_jm1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_sm_i_j_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_sm_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_sm_i_jp1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_sm_ip1_jm1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_sm_ip1_j_km1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_sm_ip1_j_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_sm_ip1_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_sm_ip1_jp1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_smart_cache_p0_les_1_sm_i_j_km1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_diu1_i_j_k_reader_p0_les_1_smart_cache_diu1_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_diu2_i_j_k_reader_p0_les_1_smart_cache_diu2_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_diu3_i_j_k_reader_p0_les_1_smart_cache_diu3_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_diu4_i_j_k_reader_p0_les_1_smart_cache_diu4_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_diu7_i_j_k_reader_p0_les_1_smart_cache_diu7_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_dx1_i_reader_p0_les_1_smart_cache_dx1_i_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_dy1_j_reader_p0_les_1_smart_cache_dy1_j_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_dzn_k_reader_p0_les_1_smart_cache_dzn_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_1_dxs_i_reader_p0_les_1_dxs_i_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_p0_les_3_smart_cache_fx_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_p0_les_3_smart_cache_fy_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_p0_les_3_smart_cache_fz_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_p0_les_3_smart_cache_usum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_p0_les_3_smart_cache_vsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_p0_les_3_smart_cache_wsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_p0_les_3_smart_cache_w_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_p0_les_3_smart_cache_v_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_p0_les_3_smart_cache_u_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_p0_les_3_smart_cache_g_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_p0_les_3_smart_cache_f_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_p0_les_3_smart_cache_sm_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_p0_les_3_smart_cache_h_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_g_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_fx_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_fy_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_fz_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_usum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_vsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_wsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_w_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_v_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_u_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_f_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_h_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_diu2_im1_jp1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_diu2_i_jp1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_diu4_ip1_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_diu4_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_diu5_i_jp1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_diu5_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_diu6_i_j_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_diu6_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_diu8_i_jp1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_diu8_i_jp1_km1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_dx1_ip1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_dx1_i_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_dx1_im1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_dy1_jp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_dy1_j_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_dzn_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_dzn_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_dzn_km1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_sm_im1_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_sm_im1_jp1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_sm_i_j_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_sm_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_sm_i_jp1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_sm_ip1_j_km1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_sm_ip1_j_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_sm_ip1_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_sm_ip1_jp1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_smart_cache_p0_les_2_sm_i_j_km1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_diu2_i_j_k_reader_p0_les_2_smart_cache_diu2_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_diu4_i_j_k_reader_p0_les_2_smart_cache_diu4_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_diu5_i_j_k_reader_p0_les_2_smart_cache_diu5_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_diu6_i_j_k_reader_p0_les_2_smart_cache_diu6_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_diu8_i_j_k_reader_p0_les_2_smart_cache_diu8_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_dx1_i_reader_p0_les_2_smart_cache_dx1_i_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_dy1_j_reader_p0_les_2_smart_cache_dy1_j_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_dzn_k_reader_p0_les_2_smart_cache_dzn_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_2_dys_j_reader_p0_les_2_dys_j_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_p0_adam_f_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_p0_adam_g_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_p0_adam_h_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_h_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_fx_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_fy_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_fz_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_usum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_vsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_wsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_w_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_v_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_u_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_g_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_f_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_diu3_im1_j_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_diu3_i_j_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_diu6_i_jm1_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_diu6_i_j_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_diu7_ip1_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_diu7_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_diu8_i_jp1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_diu8_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_diu9_i_j_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_diu9_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_dx1_ip1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_dx1_i_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_dx1_im1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_dy1_jp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_dy1_j_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_dy1_jm1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_dzn_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_dzn_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_sm_im1_j_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_sm_im1_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_sm_i_jm1_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_sm_i_j_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_sm_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_sm_i_jp1_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_sm_i_jp1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_sm_ip1_j_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_sm_ip1_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_smart_cache_p0_les_3_sm_i_jm1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_diu3_i_j_k_reader_p0_les_3_smart_cache_diu3_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_diu6_i_j_k_reader_p0_les_3_smart_cache_diu6_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_diu7_i_j_k_reader_p0_les_3_smart_cache_diu7_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_diu8_i_j_k_reader_p0_les_3_smart_cache_diu8_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_diu9_i_j_k_reader_p0_les_3_smart_cache_diu9_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_dx1_i_reader_p0_les_3_smart_cache_dx1_i_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_dy1_j_reader_p0_les_3_smart_cache_dy1_j_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_les_3_dzn_k_reader_p0_les_3_smart_cache_dzn_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_adam_p0_press_0_smart_cache_fx_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_adam_p0_press_0_smart_cache_fy_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_adam_p0_press_0_smart_cache_fz_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_adam_p0_press_0_smart_cache_usum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_adam_p0_press_0_smart_cache_vsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_adam_p0_press_0_smart_cache_wsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_adam_p0_press_0_smart_cache_fold_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_adam_p0_press_0_smart_cache_gold_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_adam_p0_press_0_smart_cache_hold_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_adam_p0_press_0_smart_cache_f_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_adam_p0_press_0_smart_cache_g_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_adam_p0_press_0_smart_cache_h_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_adam_p0_press_0_smart_cache_u_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_adam_p0_press_0_smart_cache_v_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_adam_p0_press_0_smart_cache_w_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_adam_fold_i_j_k_reader_p0_adam_fold_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_adam_gold_i_j_k_reader_p0_adam_gold_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_adam_hold_i_j_k_reader_p0_adam_hold_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_p0_press_1_rhs_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_smart_cache_p0_press_0_fx_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_smart_cache_p0_press_0_fy_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_smart_cache_p0_press_0_fz_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_smart_cache_p0_press_0_usum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_smart_cache_p0_press_0_vsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_smart_cache_p0_press_0_wsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_smart_cache_p0_press_0_fold_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_smart_cache_p0_press_0_gold_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_smart_cache_p0_press_0_hold_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_smart_cache_p0_press_0_f_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_smart_cache_p0_press_0_f_im1_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_smart_cache_p0_press_0_g_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_smart_cache_p0_press_0_g_i_jm1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_smart_cache_p0_press_0_h_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_smart_cache_p0_press_0_h_i_j_km1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_smart_cache_p0_press_0_u_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_smart_cache_p0_press_0_u_im1_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_smart_cache_p0_press_0_v_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_smart_cache_p0_press_0_v_i_jm1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_smart_cache_p0_press_0_w_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_smart_cache_p0_press_0_w_i_j_km1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_dx1_i_reader_p0_press_0_dx1_i_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_dy1_j_reader_p0_press_0_dy1_j_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_dzn_k_reader_p0_press_0_dzn_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_0_rhs_i_j_k_reader_p0_press_0_rhs_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_1_p0_press_2_hold_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_1_p0_press_2_h_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_1_p0_press_2_gold_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_1_p0_press_2_g_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_1_p0_press_2_fold_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_1_p0_press_2_f_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_1_p0_press_2_wsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_1_p0_press_2_vsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_1_p0_press_2_usum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_1_p0_press_2_fz_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_1_p0_press_2_fy_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_1_p0_press_2_fx_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_1_p0_press_2_w_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_1_p0_press_2_v_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_1_p0_press_2_u_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_1_p0_press_2_rhs_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_1_p0_press_2_area_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_1_p0_press_2_rhsav_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_1_dx1_i_reader_p0_press_1_dx1_i_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_1_dy1_j_reader_p0_press_1_dy1_j_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_1_dzn_k_reader_p0_press_1_dzn_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_2_p0_press_2_output_writer_rhs_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_2_p0_press_2_output_writer_u_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_2_p0_press_2_output_writer_v_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_2_p0_press_2_output_writer_w_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_2_p0_press_2_output_writer_f_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_2_p0_press_2_output_writer_fx_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_2_p0_press_2_output_writer_fy_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_2_p0_press_2_output_writer_fz_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_2_p0_press_2_output_writer_g_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_2_p0_press_2_output_writer_h_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_2_p0_press_2_output_writer_usum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_2_p0_press_2_output_writer_vsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_2_p0_press_2_output_writer_wsum_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_2_p0_press_2_output_writer_fold_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_2_p0_press_2_output_writer_gold_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p0_press_2_p0_press_2_output_writer_hold_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_p1_press_output_writer_p0_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_p1_press_output_writer_p1_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_smart_cache_p1_press_dxs_i_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_smart_cache_p1_press_dxs_im1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_smart_cache_p1_press_dys_j_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_smart_cache_p1_press_dys_jm1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_smart_cache_p1_press_dzs_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_smart_cache_p1_press_dzs_km1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_smart_cache_p1_press_p0_im1_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_smart_cache_p1_press_p0_i_jm1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_smart_cache_p1_press_p0_i_j_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_smart_cache_p1_press_p0_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_smart_cache_p1_press_p0_i_jp1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_smart_cache_p1_press_p0_ip1_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_smart_cache_p1_press_p0_i_j_km1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_smart_cache_p1_press_p1_im1_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_smart_cache_p1_press_p1_i_jm1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_smart_cache_p1_press_p1_i_j_kp1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_smart_cache_p1_press_p1_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_smart_cache_p1_press_p1_i_jp1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_smart_cache_p1_press_p1_ip1_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_smart_cache_p1_press_p1_i_j_km1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_dxs_i_reader_p1_press_smart_cache_dxs_i_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_dys_j_reader_p1_press_smart_cache_dys_j_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_dzs_k_reader_p1_press_smart_cache_dzs_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_p0_i_j_k_reader_p1_press_smart_cache_p0_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_p1_i_j_k_reader_p1_press_smart_cache_p1_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p1_press_rhs_i_j_k_reader_p1_press_rhs_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p2_press_0_p2_press_1_pco_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p2_press_0_p2_press_1_pav_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p2_press_0_dx1_i_reader_p2_press_0_dx1_i_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p2_press_0_dy1_j_reader_p2_press_0_dy1_j_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p2_press_0_dzn_k_reader_p2_press_0_dzn_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p2_press_0_p0_i_j_k_reader_p2_press_0_p0_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p2_press_1_p2_press_2_smart_cache_p0_synthidx2_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p2_press_1_p0_i_j_k_reader_p2_press_1_p0_i_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p2_press_2_p2_press_3_smart_cache_p0_i_synthidx1_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p2_press_2_smart_cache_p2_press_2_p0_synthidx2p1_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p2_press_2_smart_cache_p2_press_2_p0_synthidx2m1_j_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p2_press_3_p2_press_4_smart_cache_p0_i_j_synthidx0_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p2_press_3_smart_cache_p2_press_3_p0_i_synthidx1p300_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p2_press_3_smart_cache_p2_press_3_p0_i_synthidx1m300_k_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p2_press_4_p2_press_4_output_writer_p0_i_j_synthidx0_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p2_press_4_smart_cache_p2_press_4_p0_i_j_synthidx0p1_pipe __attribute__((xcl_reqd_pipe_depth(32)));
            pipe float p2_press_4_smart_cache_p2_press_4_p0_i_j_synthidx0m1_pipe __attribute__((xcl_reqd_pipe_depth(32)));

__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_velnw_0_p0_i_j_k_reader(__global float *p0) {

      float p0_i_j_k;
      int i;
      int j;
      float p0_velnw_0_p0_i_j_k_reader_p0_velnw_0_smart_cache_p0_i_j_k_pipe;
      int k;
    for (i = 0;i <= 81;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                p0_i_j_k = p0[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_velnw_0_p0_i_j_k_reader_p0_velnw_0_smart_cache_p0_i_j_k_pipe,&p0_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_velnw_0_dxs_i_reader(__global float *dxs) {

      float dxs_i;
      float p0_velnw_0_dxs_i_reader_p0_velnw_0_dxs_i_pipe;
      int i;
    for (i = 0;i <= 300;i += 1) {
                dxs_i = dxs[F1D2C(0 , i)];
                write_pipe_block(p0_velnw_0_dxs_i_reader_p0_velnw_0_dxs_i_pipe,&dxs_i);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_velnw_0_f_i_j_k_reader(__global float *f) {

      float f_i_j_k;
      int i;
      int j;
      int p0_velnw_0_f_i_j_k_reader_p0_velnw_0_f_i_j_k_pipe;
      int k;
    for (i = 0;i <= 80;i += 1) {
        for (j = 0;j <= 300;j += 1) {
            for (k = 0;k <= 300;k += 1) {
                                f_i_j_k = f[F3D2C(((300 - 0 )+1),((300 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_velnw_0_f_i_j_k_reader_p0_velnw_0_f_i_j_k_pipe,&f_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_velnw_0_u_i_j_k_reader(__global float *u) {

      float u_i_j_k;
      int i;
      int j;
      int p0_velnw_0_u_i_j_k_reader_p0_velnw_0_u_i_j_k_pipe;
      int k;
    for (i = 0;i <= 81;i += 1) {
        for (j = -1;j <= 301;j += 1) {
            for (k = 0;k <= 301;k += 1) {
                                u_i_j_k = u[F3D2C(((301 - 0 )+1),((301 - -1 )+1) , 0,-1,0 , i,j,k)];
                                write_pipe_block(p0_velnw_0_u_i_j_k_reader_p0_velnw_0_u_i_j_k_pipe,&u_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_velnw_0_smart_cache() {

      float p0_read_in;
      float p0_buffer[2];
      float p0_ip1_j_k;
      float p0_i_j_k;
      int i;
      int count;
      int compindex;
      const int nloop = 7645296;
      const int smartcachesize = 2;
      const int maxpositiveoffset = 1;
      const int maxnegativeoffset = 0;
      float p0_velnw_0_p0_i_j_k_reader_p0_velnw_0_smart_cache_p0_i_j_k_pipe;
      float p0_velnw_0_smart_cache_p0_velnw_0_p0_i_j_k_pipe;
      float p0_velnw_0_smart_cache_p0_velnw_0_p0_ip1_j_k_pipe;
      const int driverloopsize = 7645296;
    for (count = 0;count <= nloop;count += 1) {
                compindex = count-maxpositiveoffset;
                
#pragma unroll
        for (i = 0;i <= smartcachesize-2;i += 1) {
                        p0_buffer[F1D2C(0 , i)] = p0_buffer[F1D2C(0 , i+1)];
        }
        if (count<=driverloopsize) {
                        read_pipe_block(p0_velnw_0_p0_i_j_k_reader_p0_velnw_0_smart_cache_p0_i_j_k_pipe,&p0_read_in);
                        *p0_buffer = p0_read_in;
        }
        if (compindex>=0) {
                        p0_i_j_k = p0_buffer[F1D2C(0 , 0)];
                        write_pipe_block(p0_velnw_0_smart_cache_p0_velnw_0_p0_i_j_k_pipe,&p0_i_j_k);
                        p0_ip1_j_k = *p0_buffer;
                        write_pipe_block(p0_velnw_0_smart_cache_p0_velnw_0_p0_ip1_j_k_pipe,&p0_ip1_j_k);
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_velnw_0(float dt,float ro) {

      const int nloop = 7645295;
      int idx;
      float dxs_i;
      float f_i_j_k;
      int i;
      int j;
      int k;
      float p0_ip1_j_k;
      float p0_i_j_k;
      float pz;
      int p0_velnw_0_dxs_i_reader_p0_velnw_0_dxs_i_pipe;
      int p0_velnw_0_p0_velnw_1_smart_cache_u_i_j_k_pipe;
      int p0_velnw_0_smart_cache_p0_velnw_0_p0_i_j_k_pipe;
      int p0_velnw_0_u_i_j_k_reader_p0_velnw_0_u_i_j_k_pipe;
      int p0_velnw_0_f_i_j_k_reader_p0_velnw_0_f_i_j_k_pipe;
      int p0_velnw_0_smart_cache_p0_velnw_0_p0_ip1_j_k_pipe;
      float u_i_j_k;
    for (idx = 0;idx <= nloop;idx += 1) {
                read_pipe_block(p0_velnw_0_dxs_i_reader_p0_velnw_0_dxs_i_pipe,&dxs_i);
                read_pipe_block(p0_velnw_0_f_i_j_k_reader_p0_velnw_0_f_i_j_k_pipe,&f_i_j_k);
                read_pipe_block(p0_velnw_0_smart_cache_p0_velnw_0_p0_i_j_k_pipe,&p0_i_j_k);
                read_pipe_block(p0_velnw_0_smart_cache_p0_velnw_0_p0_ip1_j_k_pipe,&p0_ip1_j_k);
                read_pipe_block(p0_velnw_0_u_i_j_k_reader_p0_velnw_0_u_i_j_k_pipe,&u_i_j_k);
                i = idx%304;
                j = idx/304%303;
                k = idx/92112;
        if ((i>=1)&&(i<=300)&&(j>=1)&&(j<=300)&&(k>=1)&&(k<=80)) {
                        pz = (-p0_i_j_k+p0_ip1_j_k)/ro/dxs_i;
                        u_i_j_k = u_i_j_k+dt*(f_i_j_k-pz);
        }
                write_pipe_block(p0_velnw_0_p0_velnw_1_smart_cache_u_i_j_k_pipe,&u_i_j_k);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_velnw_1_p0_i_j_k_reader(__global float *p0) {

      float p0_i_j_k;
      int i;
      int j;
      float p0_velnw_1_p0_i_j_k_reader_p0_velnw_1_smart_cache_p0_i_j_k_pipe;
      int k;
    for (i = 0;i <= 81;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                p0_i_j_k = p0[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_velnw_1_p0_i_j_k_reader_p0_velnw_1_smart_cache_p0_i_j_k_pipe,&p0_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_velnw_1_dys_j_reader(__global float *dys) {

      float dys_j;
      int p0_velnw_1_dys_j_reader_p0_velnw_1_dys_j_pipe;
      int i;
    for (i = 0;i <= 300;i += 1) {
                dys_j = dys[F1D2C(0 , i)];
                write_pipe_block(p0_velnw_1_dys_j_reader_p0_velnw_1_dys_j_pipe,&dys_j);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_velnw_1_g_i_j_k_reader(__global float *g) {

      float g_i_j_k;
      int i;
      int j;
      float p0_velnw_1_g_i_j_k_reader_p0_velnw_1_g_i_j_k_pipe;
      int k;
    for (i = 0;i <= 80;i += 1) {
        for (j = 0;j <= 300;j += 1) {
            for (k = 0;k <= 300;k += 1) {
                                g_i_j_k = g[F3D2C(((300 - 0 )+1),((300 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_velnw_1_g_i_j_k_reader_p0_velnw_1_g_i_j_k_pipe,&g_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_velnw_1_v_i_j_k_reader(__global float *v) {

      float v_i_j_k;
      int i;
      int j;
      float p0_velnw_1_v_i_j_k_reader_p0_velnw_1_v_i_j_k_pipe;
      int k;
    for (i = 0;i <= 81;i += 1) {
        for (j = -1;j <= 301;j += 1) {
            for (k = 0;k <= 301;k += 1) {
                                v_i_j_k = v[F3D2C(((301 - 0 )+1),((301 - -1 )+1) , 0,-1,0 , i,j,k)];
                                write_pipe_block(p0_velnw_1_v_i_j_k_reader_p0_velnw_1_v_i_j_k_pipe,&v_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_velnw_1_smart_cache() {

      float u_read_in;
      float p0_read_in;
      float u_buffer[304];
      float p0_buffer[304];
      float u_i_j_k;
      float p0_i_jp1_k;
      float p0_i_j_k;
      int i;
      int count;
      int compindex;
      const int nloop = 7645598;
      const int smartcachesize = 304;
      const int maxpositiveoffset = 303;
      const int maxnegativeoffset = 0;
      int p0_velnw_1_smart_cache_p0_velnw_1_p0_i_j_k_pipe;
      int p0_velnw_1_smart_cache_p0_velnw_1_p0_i_jp1_k_pipe;
      int p0_velnw_1_smart_cache_p0_velnw_1_u_i_j_k_pipe;
      int p0_velnw_0_p0_velnw_1_smart_cache_u_i_j_k_pipe;
      int p0_velnw_1_p0_i_j_k_reader_p0_velnw_1_smart_cache_p0_i_j_k_pipe;
      const int driverloopsize = 7645296;
    for (count = 0;count <= nloop;count += 1) {
                compindex = count-maxpositiveoffset;
                
#pragma unroll
        for (i = 0;i <= smartcachesize-2;i += 1) {
                        u_buffer[F1D2C(0 , i)] = u_buffer[F1D2C(0 , i+1)];
                        p0_buffer[F1D2C(0 , i)] = p0_buffer[F1D2C(0 , i+1)];
        }
        if (count<=driverloopsize) {
                        read_pipe_block(p0_velnw_1_p0_i_j_k_reader_p0_velnw_1_smart_cache_p0_i_j_k_pipe,&p0_read_in);
                        p0_buffer[F1D2C(0 , 303)] = p0_read_in;
                        read_pipe_block(p0_velnw_0_p0_velnw_1_smart_cache_u_i_j_k_pipe,&u_read_in);
                        u_buffer[F1D2C(0 , 303)] = u_read_in;
        }
        if (compindex>=0) {
                        p0_i_j_k = p0_buffer[F1D2C(0 , 0)];
                        write_pipe_block(p0_velnw_1_smart_cache_p0_velnw_1_p0_i_j_k_pipe,&p0_i_j_k);
                        p0_i_jp1_k = p0_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_velnw_1_smart_cache_p0_velnw_1_p0_i_jp1_k_pipe,&p0_i_jp1_k);
                        u_i_j_k = u_buffer[F1D2C(0 , 0)];
                        write_pipe_block(p0_velnw_1_smart_cache_p0_velnw_1_u_i_j_k_pipe,&u_i_j_k);
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_velnw_1(float dt,float ro) {

      const int nloop = 7645295;
      int idx;
      float dys_j;
      float g_i_j_k;
      int i;
      int j;
      int k;
      float p0_i_jp1_k;
      float p0_i_j_k;
      float pz;
      float p0_velnw_1_p0_velnw_2_smart_cache_v_i_j_k_pipe;
      float p0_velnw_1_smart_cache_p0_velnw_1_p0_i_jp1_k_pipe;
      float p0_velnw_1_smart_cache_p0_velnw_1_u_i_j_k_pipe;
      float p0_velnw_1_p0_velnw_2_smart_cache_u_i_j_k_pipe;
      float p0_velnw_1_smart_cache_p0_velnw_1_p0_i_j_k_pipe;
      float p0_velnw_1_dys_j_reader_p0_velnw_1_dys_j_pipe;
      float p0_velnw_1_g_i_j_k_reader_p0_velnw_1_g_i_j_k_pipe;
      float u_i_j_k;
      float p0_velnw_1_v_i_j_k_reader_p0_velnw_1_v_i_j_k_pipe;
      float v_i_j_k;
    for (idx = 0;idx <= nloop;idx += 1) {
                read_pipe_block(p0_velnw_1_dys_j_reader_p0_velnw_1_dys_j_pipe,&dys_j);
                read_pipe_block(p0_velnw_1_g_i_j_k_reader_p0_velnw_1_g_i_j_k_pipe,&g_i_j_k);
                read_pipe_block(p0_velnw_1_smart_cache_p0_velnw_1_p0_i_j_k_pipe,&p0_i_j_k);
                read_pipe_block(p0_velnw_1_smart_cache_p0_velnw_1_p0_i_jp1_k_pipe,&p0_i_jp1_k);
                read_pipe_block(p0_velnw_1_smart_cache_p0_velnw_1_u_i_j_k_pipe,&u_i_j_k);
                read_pipe_block(p0_velnw_1_v_i_j_k_reader_p0_velnw_1_v_i_j_k_pipe,&v_i_j_k);
                i = idx%304;
                j = idx/304%303;
                k = idx/92112;
        if ((i>=1)&&(i<=300)&&(j>=1)&&(j<=300)&&(k>=1)&&(k<=80)) {
                        pz = (-p0_i_j_k+p0_i_jp1_k)/ro/dys_j;
                        v_i_j_k = v_i_j_k+dt*(g_i_j_k-pz);
        }
                write_pipe_block(p0_velnw_1_p0_velnw_2_smart_cache_u_i_j_k_pipe,&u_i_j_k);
                write_pipe_block(p0_velnw_1_p0_velnw_2_smart_cache_v_i_j_k_pipe,&v_i_j_k);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_velnw_2_p0_i_j_k_reader(__global float *p0) {

      float p0_i_j_k;
      int i;
      int j;
      int p0_velnw_2_p0_i_j_k_reader_p0_velnw_2_smart_cache_p0_i_j_k_pipe;
      int k;
    for (i = 0;i <= 81;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                p0_i_j_k = p0[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_velnw_2_p0_i_j_k_reader_p0_velnw_2_smart_cache_p0_i_j_k_pipe,&p0_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_velnw_2_dzs_k_reader(__global float *dzs) {

      float dzs_k;
      int p0_velnw_2_dzs_k_reader_p0_velnw_2_dzs_k_pipe;
      int i;
    for (i = -1;i <= 82;i += 1) {
                dzs_k = dzs[F1D2C(-1 , i)];
                write_pipe_block(p0_velnw_2_dzs_k_reader_p0_velnw_2_dzs_k_pipe,&dzs_k);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_velnw_2_h_i_j_k_reader(__global float *h) {

      float h_i_j_k;
      int i;
      int j;
      float p0_velnw_2_h_i_j_k_reader_p0_velnw_2_h_i_j_k_pipe;
      int k;
    for (i = 0;i <= 80;i += 1) {
        for (j = 0;j <= 300;j += 1) {
            for (k = 0;k <= 300;k += 1) {
                                h_i_j_k = h[F3D2C(((300 - 0 )+1),((300 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_velnw_2_h_i_j_k_reader_p0_velnw_2_h_i_j_k_pipe,&h_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_velnw_2_w_i_j_k_reader(__global float *w) {

      float w_i_j_k;
      int i;
      int j;
      float p0_velnw_2_w_i_j_k_reader_p0_velnw_2_w_i_j_k_pipe;
      int k;
    for (i = -1;i <= 81;i += 1) {
        for (j = -1;j <= 301;j += 1) {
            for (k = 0;k <= 301;k += 1) {
                                w_i_j_k = w[F3D2C(((301 - 0 )+1),((301 - -1 )+1) , 0,-1,-1 , i,j,k)];
                                write_pipe_block(p0_velnw_2_w_i_j_k_reader_p0_velnw_2_w_i_j_k_pipe,&w_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_velnw_2_smart_cache() {

      float v_read_in;
      float u_read_in;
      float p0_read_in;
      float v_buffer[91810];
      float u_buffer[91810];
      float p0_buffer[91810];
      float v_i_j_k;
      float u_i_j_k;
      float p0_i_j_kp1;
      float p0_i_j_k;
      int i;
      int count;
      int compindex;
      const int nloop = 7737104;
      const int smartcachesize = 91810;
      const int maxpositiveoffset = 91809;
      const int maxnegativeoffset = 0;
      int p0_velnw_2_smart_cache_p0_velnw_2_v_i_j_k_pipe;
      int p0_velnw_2_smart_cache_p0_velnw_2_p0_i_j_k_pipe;
      int p0_velnw_2_p0_i_j_k_reader_p0_velnw_2_smart_cache_p0_i_j_k_pipe;
      int p0_velnw_1_p0_velnw_2_smart_cache_u_i_j_k_pipe;
      int p0_velnw_1_p0_velnw_2_smart_cache_v_i_j_k_pipe;
      int p0_velnw_2_smart_cache_p0_velnw_2_u_i_j_k_pipe;
      int p0_velnw_2_smart_cache_p0_velnw_2_p0_i_j_kp1_pipe;
      const int driverloopsize = 7645296;
    for (count = 0;count <= nloop;count += 1) {
                compindex = count-maxpositiveoffset;
                
#pragma unroll
        for (i = 0;i <= smartcachesize-2;i += 1) {
                        v_buffer[F1D2C(0 , i)] = v_buffer[F1D2C(0 , i+1)];
                        u_buffer[F1D2C(0 , i)] = u_buffer[F1D2C(0 , i+1)];
                        p0_buffer[F1D2C(0 , i)] = p0_buffer[F1D2C(0 , i+1)];
        }
        if (count<=driverloopsize) {
                        read_pipe_block(p0_velnw_2_p0_i_j_k_reader_p0_velnw_2_smart_cache_p0_i_j_k_pipe,&p0_read_in);
                        p0_buffer[F1D2C(0 , 91809)] = p0_read_in;
                        read_pipe_block(p0_velnw_1_p0_velnw_2_smart_cache_u_i_j_k_pipe,&u_read_in);
                        u_buffer[F1D2C(0 , 91809)] = u_read_in;
                        read_pipe_block(p0_velnw_1_p0_velnw_2_smart_cache_v_i_j_k_pipe,&v_read_in);
                        v_buffer[F1D2C(0 , 91809)] = v_read_in;
        }
        if (compindex>=0) {
                        p0_i_j_k = p0_buffer[F1D2C(0 , 0)];
                        write_pipe_block(p0_velnw_2_smart_cache_p0_velnw_2_p0_i_j_k_pipe,&p0_i_j_k);
                        p0_i_j_kp1 = p0_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_velnw_2_smart_cache_p0_velnw_2_p0_i_j_kp1_pipe,&p0_i_j_kp1);
                        u_i_j_k = u_buffer[F1D2C(0 , 0)];
                        write_pipe_block(p0_velnw_2_smart_cache_p0_velnw_2_u_i_j_k_pipe,&u_i_j_k);
                        v_i_j_k = v_buffer[F1D2C(0 , 0)];
                        write_pipe_block(p0_velnw_2_smart_cache_p0_velnw_2_v_i_j_k_pipe,&v_i_j_k);
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_velnw_2(float dt,float ro) {

      const int nloop = 7645295;
      int idx;
      float dzs_k;
      float h_i_j_k;
      int i;
      int j;
      int k;
      float p0_i_j_kp1;
      float p0_i_j_k;
      float pz;
      int p0_velnw_2_smart_cache_p0_velnw_2_p0_i_j_kp1_pipe;
      int p0_velnw_2_w_i_j_k_reader_p0_velnw_2_w_i_j_k_pipe;
      float v_i_j_k;
      int p0_velnw_2_smart_cache_p0_velnw_2_p0_i_j_k_pipe;
      int p0_velnw_2_dzs_k_reader_p0_velnw_2_dzs_k_pipe;
      int p0_velnw_2_smart_cache_p0_velnw_2_u_i_j_k_pipe;
      int p0_velnw_2_h_i_j_k_reader_p0_velnw_2_h_i_j_k_pipe;
      int p0_velnw_2_p0_feedbf_w_i_j_k_pipe;
      int p0_velnw_2_p0_feedbf_u_i_j_k_pipe;
      int p0_velnw_2_p0_feedbf_v_i_j_k_pipe;
      int p0_velnw_2_smart_cache_p0_velnw_2_v_i_j_k_pipe;
      float u_i_j_k;
      float w_i_j_k;
    for (idx = 0;idx <= nloop;idx += 1) {
                read_pipe_block(p0_velnw_2_dzs_k_reader_p0_velnw_2_dzs_k_pipe,&dzs_k);
                read_pipe_block(p0_velnw_2_h_i_j_k_reader_p0_velnw_2_h_i_j_k_pipe,&h_i_j_k);
                read_pipe_block(p0_velnw_2_smart_cache_p0_velnw_2_p0_i_j_k_pipe,&p0_i_j_k);
                read_pipe_block(p0_velnw_2_smart_cache_p0_velnw_2_p0_i_j_kp1_pipe,&p0_i_j_kp1);
                read_pipe_block(p0_velnw_2_smart_cache_p0_velnw_2_u_i_j_k_pipe,&u_i_j_k);
                read_pipe_block(p0_velnw_2_smart_cache_p0_velnw_2_v_i_j_k_pipe,&v_i_j_k);
                read_pipe_block(p0_velnw_2_w_i_j_k_reader_p0_velnw_2_w_i_j_k_pipe,&w_i_j_k);
                i = idx%304;
                j = idx/304%303;
                k = idx/92112;
        if ((i>=1)&&(i<=300)&&(j>=1)&&(j<=300)&&(k>=1)&&(k<=79)) {
                        pz = (-p0_i_j_k+p0_i_j_kp1)/ro/dzs_k;
                        w_i_j_k = w_i_j_k+dt*(h_i_j_k-pz);
        }
                write_pipe_block(p0_velnw_2_p0_feedbf_u_i_j_k_pipe,&u_i_j_k);
                write_pipe_block(p0_velnw_2_p0_feedbf_v_i_j_k_pipe,&v_i_j_k);
                write_pipe_block(p0_velnw_2_p0_feedbf_w_i_j_k_pipe,&w_i_j_k);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_feedbf_bmask1_i_j_k_reader(__global float *bmask1) {

      float bmask1_i_j_k;
      int i;
      int j;
      int p0_feedbf_bmask1_i_j_k_reader_p0_feedbf_bmask1_i_j_k_pipe;
      int k;
    for (i = 0;i <= 81;i += 1) {
        for (j = 0;j <= 301;j += 1) {
            for (k = -1;k <= 301;k += 1) {
                                bmask1_i_j_k = bmask1[F3D2C(((301 - -1 )+1),((301 - 0 )+1) , -1,0,0 , i,j,k)];
                                write_pipe_block(p0_feedbf_bmask1_i_j_k_reader_p0_feedbf_bmask1_i_j_k_pipe,&bmask1_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_feedbf_cmask1_i_j_k_reader(__global float *cmask1) {

      float cmask1_i_j_k;
      int i;
      int j;
      int p0_feedbf_cmask1_i_j_k_reader_p0_feedbf_cmask1_i_j_k_pipe;
      int k;
    for (i = 0;i <= 81;i += 1) {
        for (j = -1;j <= 301;j += 1) {
            for (k = 0;k <= 301;k += 1) {
                                cmask1_i_j_k = cmask1[F3D2C(((301 - 0 )+1),((301 - -1 )+1) , 0,-1,0 , i,j,k)];
                                write_pipe_block(p0_feedbf_cmask1_i_j_k_reader_p0_feedbf_cmask1_i_j_k_pipe,&cmask1_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_feedbf_dmask1_i_j_k_reader(__global float *dmask1) {

      float dmask1_i_j_k;
      int i;
      int j;
      int p0_feedbf_dmask1_i_j_k_reader_p0_feedbf_dmask1_i_j_k_pipe;
      int k;
    for (i = 0;i <= 81;i += 1) {
        for (j = 0;j <= 301;j += 1) {
            for (k = 0;k <= 301;k += 1) {
                                dmask1_i_j_k = dmask1[F3D2C(((301 - 0 )+1),((301 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_feedbf_dmask1_i_j_k_reader_p0_feedbf_dmask1_i_j_k_pipe,&dmask1_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_feedbf_f_i_j_k_reader(__global float *f) {

      float f_i_j_k;
      int i;
      int j;
      int p0_feedbf_f_i_j_k_reader_p0_feedbf_f_i_j_k_pipe;
      int k;
    for (i = 0;i <= 80;i += 1) {
        for (j = 0;j <= 300;j += 1) {
            for (k = 0;k <= 300;k += 1) {
                                f_i_j_k = f[F3D2C(((300 - 0 )+1),((300 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_feedbf_f_i_j_k_reader_p0_feedbf_f_i_j_k_pipe,&f_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_feedbf_fx_i_j_k_reader(__global float *fx) {

      float fx_i_j_k;
      int i;
      int j;
      int p0_feedbf_fx_i_j_k_reader_p0_feedbf_fx_i_j_k_pipe;
      int k;
    for (i = 0;i <= 80;i += 1) {
        for (j = 0;j <= 300;j += 1) {
            for (k = 0;k <= 300;k += 1) {
                                fx_i_j_k = fx[F3D2C(((300 - 0 )+1),((300 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_feedbf_fx_i_j_k_reader_p0_feedbf_fx_i_j_k_pipe,&fx_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_feedbf_fy_i_j_k_reader(__global float *fy) {

      float fy_i_j_k;
      int i;
      int j;
      int p0_feedbf_fy_i_j_k_reader_p0_feedbf_fy_i_j_k_pipe;
      int k;
    for (i = 0;i <= 80;i += 1) {
        for (j = 0;j <= 300;j += 1) {
            for (k = 0;k <= 300;k += 1) {
                                fy_i_j_k = fy[F3D2C(((300 - 0 )+1),((300 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_feedbf_fy_i_j_k_reader_p0_feedbf_fy_i_j_k_pipe,&fy_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_feedbf_fz_i_j_k_reader(__global float *fz) {

      float fz_i_j_k;
      int i;
      int j;
      int p0_feedbf_fz_i_j_k_reader_p0_feedbf_fz_i_j_k_pipe;
      int k;
    for (i = 0;i <= 80;i += 1) {
        for (j = 0;j <= 300;j += 1) {
            for (k = 0;k <= 300;k += 1) {
                                fz_i_j_k = fz[F3D2C(((300 - 0 )+1),((300 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_feedbf_fz_i_j_k_reader_p0_feedbf_fz_i_j_k_pipe,&fz_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_feedbf_g_i_j_k_reader(__global float *g) {

      float g_i_j_k;
      int i;
      int j;
      int p0_feedbf_g_i_j_k_reader_p0_feedbf_g_i_j_k_pipe;
      int k;
    for (i = 0;i <= 80;i += 1) {
        for (j = 0;j <= 300;j += 1) {
            for (k = 0;k <= 300;k += 1) {
                                g_i_j_k = g[F3D2C(((300 - 0 )+1),((300 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_feedbf_g_i_j_k_reader_p0_feedbf_g_i_j_k_pipe,&g_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_feedbf_h_i_j_k_reader(__global float *h) {

      float h_i_j_k;
      int i;
      int j;
      int p0_feedbf_h_i_j_k_reader_p0_feedbf_h_i_j_k_pipe;
      int k;
    for (i = 0;i <= 80;i += 1) {
        for (j = 0;j <= 300;j += 1) {
            for (k = 0;k <= 300;k += 1) {
                                h_i_j_k = h[F3D2C(((300 - 0 )+1),((300 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_feedbf_h_i_j_k_reader_p0_feedbf_h_i_j_k_pipe,&h_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_feedbf_usum_i_j_k_reader(__global float *usum) {

      float usum_i_j_k;
      int i;
      int j;
      float p0_feedbf_usum_i_j_k_reader_p0_feedbf_usum_i_j_k_pipe;
      int k;
    for (i = 0;i <= 80;i += 1) {
        for (j = 0;j <= 300;j += 1) {
            for (k = 0;k <= 300;k += 1) {
                                usum_i_j_k = usum[F3D2C(((300 - 0 )+1),((300 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_feedbf_usum_i_j_k_reader_p0_feedbf_usum_i_j_k_pipe,&usum_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_feedbf_vsum_i_j_k_reader(__global float *vsum) {

      float vsum_i_j_k;
      int i;
      int j;
      float p0_feedbf_vsum_i_j_k_reader_p0_feedbf_vsum_i_j_k_pipe;
      int k;
    for (i = 0;i <= 80;i += 1) {
        for (j = 0;j <= 300;j += 1) {
            for (k = 0;k <= 300;k += 1) {
                                vsum_i_j_k = vsum[F3D2C(((300 - 0 )+1),((300 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_feedbf_vsum_i_j_k_reader_p0_feedbf_vsum_i_j_k_pipe,&vsum_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_feedbf_wsum_i_j_k_reader(__global float *wsum) {

      float wsum_i_j_k;
      int i;
      int j;
      float p0_feedbf_wsum_i_j_k_reader_p0_feedbf_wsum_i_j_k_pipe;
      int k;
    for (i = 0;i <= 80;i += 1) {
        for (j = 0;j <= 300;j += 1) {
            for (k = 0;k <= 300;k += 1) {
                                wsum_i_j_k = wsum[F3D2C(((300 - 0 )+1),((300 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_feedbf_wsum_i_j_k_reader_p0_feedbf_wsum_i_j_k_pipe,&wsum_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_feedbf(float alpha,float beta,float dt) {

      const int nloop = 7645295;
      int idx;
      float bmask1_i_j_k;
      float cmask1_i_j_k;
      float dmask1_i_j_k;
      float f_i_j_k;
      float f1x;
      float f1y;
      float f1z;
      float f2x;
      float f2y;
      float f2z;
      float fx_i_j_k;
      float fy_i_j_k;
      float fz_i_j_k;
      float g_i_j_k;
      float h_i_j_k;
      int i;
      int j;
      int k;
      float u_i_j_k;
      float usum_i_j_k;
      float v_i_j_k;
      float vsum_i_j_k;
      float w_i_j_k;
      float p0_feedbf_p0_les_0_smart_cache_h_i_j_k_pipe;
      float p0_feedbf_h_i_j_k_reader_p0_feedbf_h_i_j_k_pipe;
      float p0_feedbf_dmask1_i_j_k_reader_p0_feedbf_dmask1_i_j_k_pipe;
      float p0_feedbf_p0_les_0_smart_cache_g_i_j_k_pipe;
      float p0_feedbf_fz_i_j_k_reader_p0_feedbf_fz_i_j_k_pipe;
      float p0_feedbf_fy_i_j_k_reader_p0_feedbf_fy_i_j_k_pipe;
      float p0_feedbf_usum_i_j_k_reader_p0_feedbf_usum_i_j_k_pipe;
      float p0_velnw_2_p0_feedbf_v_i_j_k_pipe;
      float p0_feedbf_fx_i_j_k_reader_p0_feedbf_fx_i_j_k_pipe;
      float p0_feedbf_p0_les_0_smart_cache_fz_i_j_k_pipe;
      float p0_feedbf_p0_les_0_smart_cache_w_i_j_k_pipe;
      float p0_feedbf_p0_les_0_smart_cache_fx_i_j_k_pipe;
      float p0_feedbf_cmask1_i_j_k_reader_p0_feedbf_cmask1_i_j_k_pipe;
      float p0_feedbf_g_i_j_k_reader_p0_feedbf_g_i_j_k_pipe;
      float p0_feedbf_f_i_j_k_reader_p0_feedbf_f_i_j_k_pipe;
      float p0_feedbf_p0_les_0_smart_cache_vsum_i_j_k_pipe;
      float p0_feedbf_p0_les_0_smart_cache_wsum_i_j_k_pipe;
      float p0_feedbf_p0_les_0_smart_cache_u_i_j_k_pipe;
      float p0_feedbf_wsum_i_j_k_reader_p0_feedbf_wsum_i_j_k_pipe;
      float p0_velnw_2_p0_feedbf_w_i_j_k_pipe;
      float p0_velnw_2_p0_feedbf_u_i_j_k_pipe;
      float p0_feedbf_p0_les_0_smart_cache_usum_i_j_k_pipe;
      float p0_feedbf_p0_les_0_smart_cache_v_i_j_k_pipe;
      float p0_feedbf_p0_les_0_smart_cache_fy_i_j_k_pipe;
      float p0_feedbf_bmask1_i_j_k_reader_p0_feedbf_bmask1_i_j_k_pipe;
      float p0_feedbf_vsum_i_j_k_reader_p0_feedbf_vsum_i_j_k_pipe;
      float p0_feedbf_p0_les_0_smart_cache_f_i_j_k_pipe;
      float wsum_i_j_k;
    for (idx = 0;idx <= nloop;idx += 1) {
                read_pipe_block(p0_feedbf_bmask1_i_j_k_reader_p0_feedbf_bmask1_i_j_k_pipe,&bmask1_i_j_k);
                read_pipe_block(p0_feedbf_cmask1_i_j_k_reader_p0_feedbf_cmask1_i_j_k_pipe,&cmask1_i_j_k);
                read_pipe_block(p0_feedbf_dmask1_i_j_k_reader_p0_feedbf_dmask1_i_j_k_pipe,&dmask1_i_j_k);
                read_pipe_block(p0_feedbf_f_i_j_k_reader_p0_feedbf_f_i_j_k_pipe,&f_i_j_k);
                read_pipe_block(p0_feedbf_fx_i_j_k_reader_p0_feedbf_fx_i_j_k_pipe,&fx_i_j_k);
                read_pipe_block(p0_feedbf_fy_i_j_k_reader_p0_feedbf_fy_i_j_k_pipe,&fy_i_j_k);
                read_pipe_block(p0_feedbf_fz_i_j_k_reader_p0_feedbf_fz_i_j_k_pipe,&fz_i_j_k);
                read_pipe_block(p0_feedbf_g_i_j_k_reader_p0_feedbf_g_i_j_k_pipe,&g_i_j_k);
                read_pipe_block(p0_feedbf_h_i_j_k_reader_p0_feedbf_h_i_j_k_pipe,&h_i_j_k);
                read_pipe_block(p0_velnw_2_p0_feedbf_u_i_j_k_pipe,&u_i_j_k);
                read_pipe_block(p0_feedbf_usum_i_j_k_reader_p0_feedbf_usum_i_j_k_pipe,&usum_i_j_k);
                read_pipe_block(p0_velnw_2_p0_feedbf_v_i_j_k_pipe,&v_i_j_k);
                read_pipe_block(p0_feedbf_vsum_i_j_k_reader_p0_feedbf_vsum_i_j_k_pipe,&vsum_i_j_k);
                read_pipe_block(p0_velnw_2_p0_feedbf_w_i_j_k_pipe,&w_i_j_k);
                read_pipe_block(p0_feedbf_wsum_i_j_k_reader_p0_feedbf_wsum_i_j_k_pipe,&wsum_i_j_k);
                i = idx%304;
                j = idx/304%303;
                k = idx/92112;
        if ((i>=1)&&(i<=300)&&(j>=1)&&(j<=300)&&(k>=1)&&(k<=80)) {
                        usum_i_j_k = (usum_i_j_k+u_i_j_k)*bmask1_i_j_k;
                        vsum_i_j_k = (vsum_i_j_k+v_i_j_k)*cmask1_i_j_k;
                        wsum_i_j_k = (wsum_i_j_k+w_i_j_k)*dmask1_i_j_k;
                        f1x = alpha*usum_i_j_k*dt;
                        f1y = alpha*vsum_i_j_k*dt;
                        f1z = alpha*wsum_i_j_k*dt;
                        f2x = beta*u_i_j_k*bmask1_i_j_k;
                        f2y = beta*v_i_j_k*cmask1_i_j_k;
                        f2z = beta*w_i_j_k*dmask1_i_j_k;
                        fx_i_j_k = f1x+f2x;
                        fy_i_j_k = f1y+f2y;
                        fz_i_j_k = f1z+f2z;
                        f_i_j_k = f_i_j_k+fx_i_j_k;
                        g_i_j_k = g_i_j_k+fy_i_j_k;
                        h_i_j_k = h_i_j_k+fz_i_j_k;
        }
                write_pipe_block(p0_feedbf_p0_les_0_smart_cache_f_i_j_k_pipe,&f_i_j_k);
                write_pipe_block(p0_feedbf_p0_les_0_smart_cache_fx_i_j_k_pipe,&fx_i_j_k);
                write_pipe_block(p0_feedbf_p0_les_0_smart_cache_fy_i_j_k_pipe,&fy_i_j_k);
                write_pipe_block(p0_feedbf_p0_les_0_smart_cache_fz_i_j_k_pipe,&fz_i_j_k);
                write_pipe_block(p0_feedbf_p0_les_0_smart_cache_g_i_j_k_pipe,&g_i_j_k);
                write_pipe_block(p0_feedbf_p0_les_0_smart_cache_h_i_j_k_pipe,&h_i_j_k);
                write_pipe_block(p0_feedbf_p0_les_0_smart_cache_u_i_j_k_pipe,&u_i_j_k);
                write_pipe_block(p0_feedbf_p0_les_0_smart_cache_usum_i_j_k_pipe,&usum_i_j_k);
                write_pipe_block(p0_feedbf_p0_les_0_smart_cache_v_i_j_k_pipe,&v_i_j_k);
                write_pipe_block(p0_feedbf_p0_les_0_smart_cache_vsum_i_j_k_pipe,&vsum_i_j_k);
                write_pipe_block(p0_feedbf_p0_les_0_smart_cache_w_i_j_k_pipe,&w_i_j_k);
                write_pipe_block(p0_feedbf_p0_les_0_smart_cache_wsum_i_j_k_pipe,&wsum_i_j_k);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_0_diu2_i_j_k_reader(__global float *diu2) {

      float diu2_i_j_k;
      int i;
      int j;
      float p0_les_0_diu2_i_j_k_reader_p0_les_0_smart_cache_diu2_i_j_k_pipe;
      int k;
    for (i = 0;i <= 82;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                diu2_i_j_k = diu2[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_les_0_diu2_i_j_k_reader_p0_les_0_smart_cache_diu2_i_j_k_pipe,&diu2_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_0_diu3_i_j_k_reader(__global float *diu3) {

      float diu3_i_j_k;
      int i;
      int j;
      int p0_les_0_diu3_i_j_k_reader_p0_les_0_smart_cache_diu3_i_j_k_pipe;
      int k;
    for (i = 0;i <= 82;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                diu3_i_j_k = diu3[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_les_0_diu3_i_j_k_reader_p0_les_0_smart_cache_diu3_i_j_k_pipe,&diu3_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_0_diu4_i_j_k_reader(__global float *diu4) {

      float diu4_i_j_k;
      int i;
      int j;
      int p0_les_0_diu4_i_j_k_reader_p0_les_0_smart_cache_diu4_i_j_k_pipe;
      int k;
    for (i = 0;i <= 82;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                diu4_i_j_k = diu4[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_les_0_diu4_i_j_k_reader_p0_les_0_smart_cache_diu4_i_j_k_pipe,&diu4_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_0_diu6_i_j_k_reader(__global float *diu6) {

      float diu6_i_j_k;
      int i;
      int j;
      int p0_les_0_diu6_i_j_k_reader_p0_les_0_smart_cache_diu6_i_j_k_pipe;
      int k;
    for (i = 0;i <= 82;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                diu6_i_j_k = diu6[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_les_0_diu6_i_j_k_reader_p0_les_0_smart_cache_diu6_i_j_k_pipe,&diu6_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_0_diu7_i_j_k_reader(__global float *diu7) {

      float diu7_i_j_k;
      int i;
      int j;
      float p0_les_0_diu7_i_j_k_reader_p0_les_0_smart_cache_diu7_i_j_k_pipe;
      int k;
    for (i = 0;i <= 82;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                diu7_i_j_k = diu7[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_les_0_diu7_i_j_k_reader_p0_les_0_smart_cache_diu7_i_j_k_pipe,&diu7_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_0_diu8_i_j_k_reader(__global float *diu8) {

      float diu8_i_j_k;
      int i;
      int j;
      int p0_les_0_diu8_i_j_k_reader_p0_les_0_smart_cache_diu8_i_j_k_pipe;
      int k;
    for (i = 0;i <= 82;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                diu8_i_j_k = diu8[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_les_0_diu8_i_j_k_reader_p0_les_0_smart_cache_diu8_i_j_k_pipe,&diu8_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_0_delx1_k_reader(__global float *delx1) {

      float delx1_k;
      float p0_les_0_delx1_k_reader_p0_les_0_delx1_k_pipe;
      int i;
    for (i = 1;i <= 80;i += 1) {
                delx1_k = delx1[F1D2C(1 , i)];
                write_pipe_block(p0_les_0_delx1_k_reader_p0_les_0_delx1_k_pipe,&delx1_k);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_0_diu1_i_j_k_reader(__global float *diu1) {

      float diu1_i_j_k;
      int i;
      int j;
      float p0_les_0_diu1_i_j_k_reader_p0_les_0_diu1_i_j_k_pipe;
      int k;
    for (i = 0;i <= 82;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = -1;k <= 302;k += 1) {
                                diu1_i_j_k = diu1[F3D2C(((302 - -1 )+1),((302 - 0 )+1) , -1,0,0 , i,j,k)];
                                write_pipe_block(p0_les_0_diu1_i_j_k_reader_p0_les_0_diu1_i_j_k_pipe,&diu1_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_0_diu5_i_j_k_reader(__global float *diu5) {

      float diu5_i_j_k;
      int i;
      int j;
      int p0_les_0_diu5_i_j_k_reader_p0_les_0_diu5_i_j_k_pipe;
      int k;
    for (i = 0;i <= 82;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = -1;k <= 302;k += 1) {
                                diu5_i_j_k = diu5[F3D2C(((302 - -1 )+1),((302 - 0 )+1) , -1,0,0 , i,j,k)];
                                write_pipe_block(p0_les_0_diu5_i_j_k_reader_p0_les_0_diu5_i_j_k_pipe,&diu5_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_0_diu9_i_j_k_reader(__global float *diu9) {

      float diu9_i_j_k;
      int i;
      int j;
      int p0_les_0_diu9_i_j_k_reader_p0_les_0_diu9_i_j_k_pipe;
      int k;
    for (i = 0;i <= 82;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                diu9_i_j_k = diu9[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_les_0_diu9_i_j_k_reader_p0_les_0_diu9_i_j_k_pipe,&diu9_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_0_sm_i_j_k_reader(__global float *sm) {

      float sm_i_j_k;
      int i;
      int j;
      float p0_les_0_sm_i_j_k_reader_p0_les_0_sm_i_j_k_pipe;
      int k;
    for (i = 0;i <= 81;i += 1) {
        for (j = -1;j <= 301;j += 1) {
            for (k = -1;k <= 301;k += 1) {
                                sm_i_j_k = sm[F3D2C(((301 - -1 )+1),((301 - -1 )+1) , -1,-1,0 , i,j,k)];
                                write_pipe_block(p0_les_0_sm_i_j_k_reader_p0_les_0_sm_i_j_k_pipe,&sm_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_0_smart_cache() {

      float fx_read_in;
      float fy_read_in;
      float fz_read_in;
      float usum_read_in;
      float vsum_read_in;
      float wsum_read_in;
      float w_read_in;
      float v_read_in;
      float u_read_in;
      float h_read_in;
      float g_read_in;
      float f_read_in;
      float diu2_read_in;
      float diu3_read_in;
      float diu4_read_in;
      float diu6_read_in;
      float diu7_read_in;
      float diu8_read_in;
      float fx_buffer[92113];
      float fy_buffer[92113];
      float fz_buffer[92113];
      float usum_buffer[92113];
      float vsum_buffer[92113];
      float wsum_buffer[92113];
      float w_buffer[92113];
      float v_buffer[92113];
      float u_buffer[92113];
      float h_buffer[92113];
      float g_buffer[92113];
      float f_buffer[92113];
      float diu2_buffer[92113];
      float diu3_buffer[92113];
      float diu4_buffer[92113];
      float diu6_buffer[92113];
      float diu7_buffer[92113];
      float diu8_buffer[92113];
      float fx_i_j_k;
      float fy_i_j_k;
      float fz_i_j_k;
      float usum_i_j_k;
      float vsum_i_j_k;
      float wsum_i_j_k;
      float w_i_j_k;
      float v_i_j_k;
      float u_i_j_k;
      float h_i_j_k;
      float g_i_j_k;
      float f_i_j_k;
      float diu2_im1_jp1_k;
      float diu2_i_j_k;
      float diu2_i_jp1_k;
      float diu2_im1_j_k;
      float diu3_im1_j_kp1;
      float diu3_i_j_kp1;
      float diu3_i_j_k;
      float diu3_im1_j_k;
      float diu4_i_j_k;
      float diu4_ip1_jm1_k;
      float diu4_ip1_j_k;
      float diu4_i_jm1_k;
      float diu6_i_jm1_kp1;
      float diu6_i_j_kp1;
      float diu6_i_j_k;
      float diu6_i_jm1_k;
      float diu7_i_j_k;
      float diu7_ip1_j_km1;
      float diu7_ip1_j_k;
      float diu7_i_j_km1;
      float diu8_i_j_k;
      float diu8_i_jp1_km1;
      float diu8_i_jp1_k;
      float diu8_i_j_km1;
      int i;
      int count;
      int compindex;
      const int nloop = 7737104;
      const int smartcachesize = 92113;
      const int maxpositiveoffset = 91809;
      const int maxnegativeoffset = 91809;
      float p0_les_0_smart_cache_p0_les_0_fz_i_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_diu7_ip1_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_diu3_im1_j_kp1_pipe;
      float p0_feedbf_p0_les_0_smart_cache_u_i_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_diu4_i_jm1_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_diu7_i_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_diu4_ip1_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_diu2_im1_jp1_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_diu6_i_jm1_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_u_i_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_diu3_i_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_h_i_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_diu4_i_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_wsum_i_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_vsum_i_j_k_pipe;
      float p0_les_0_diu3_i_j_k_reader_p0_les_0_smart_cache_diu3_i_j_k_pipe;
      float p0_feedbf_p0_les_0_smart_cache_v_i_j_k_pipe;
      float p0_feedbf_p0_les_0_smart_cache_usum_i_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_diu2_i_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_diu6_i_j_kp1_pipe;
      float p0_les_0_smart_cache_p0_les_0_diu6_i_j_k_pipe;
      float p0_les_0_diu2_i_j_k_reader_p0_les_0_smart_cache_diu2_i_j_k_pipe;
      float p0_feedbf_p0_les_0_smart_cache_fy_i_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_f_i_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_diu3_i_j_kp1_pipe;
      float p0_les_0_diu7_i_j_k_reader_p0_les_0_smart_cache_diu7_i_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_diu7_i_j_km1_pipe;
      float p0_les_0_smart_cache_p0_les_0_diu7_ip1_j_km1_pipe;
      float p0_feedbf_p0_les_0_smart_cache_f_i_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_diu2_i_jp1_k_pipe;
      float p0_feedbf_p0_les_0_smart_cache_h_i_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_diu8_i_jp1_km1_pipe;
      float p0_les_0_smart_cache_p0_les_0_diu4_ip1_jm1_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_diu8_i_j_k_pipe;
      float p0_feedbf_p0_les_0_smart_cache_g_i_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_g_i_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_fy_i_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_diu8_i_j_km1_pipe;
      float p0_les_0_smart_cache_p0_les_0_fx_i_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_w_i_j_k_pipe;
      float p0_les_0_diu6_i_j_k_reader_p0_les_0_smart_cache_diu6_i_j_k_pipe;
      float p0_les_0_diu8_i_j_k_reader_p0_les_0_smart_cache_diu8_i_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_diu3_im1_j_k_pipe;
      float p0_feedbf_p0_les_0_smart_cache_fz_i_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_usum_i_j_k_pipe;
      float p0_feedbf_p0_les_0_smart_cache_fx_i_j_k_pipe;
      float p0_feedbf_p0_les_0_smart_cache_w_i_j_k_pipe;
      float p0_les_0_diu4_i_j_k_reader_p0_les_0_smart_cache_diu4_i_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_diu8_i_jp1_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_diu6_i_jm1_kp1_pipe;
      float p0_les_0_smart_cache_p0_les_0_diu2_im1_j_k_pipe;
      float p0_feedbf_p0_les_0_smart_cache_wsum_i_j_k_pipe;
      float p0_les_0_smart_cache_p0_les_0_v_i_j_k_pipe;
      float p0_feedbf_p0_les_0_smart_cache_vsum_i_j_k_pipe;
      const int driverloopsize = 7645296;
    for (count = 0;count <= nloop;count += 1) {
                compindex = count-maxpositiveoffset;
                
#pragma unroll
        for (i = 0;i <= smartcachesize-2;i += 1) {
                        fx_buffer[F1D2C(0 , i)] = fx_buffer[F1D2C(0 , i+1)];
                        fy_buffer[F1D2C(0 , i)] = fy_buffer[F1D2C(0 , i+1)];
                        fz_buffer[F1D2C(0 , i)] = fz_buffer[F1D2C(0 , i+1)];
                        usum_buffer[F1D2C(0 , i)] = usum_buffer[F1D2C(0 , i+1)];
                        vsum_buffer[F1D2C(0 , i)] = vsum_buffer[F1D2C(0 , i+1)];
                        wsum_buffer[F1D2C(0 , i)] = wsum_buffer[F1D2C(0 , i+1)];
                        w_buffer[F1D2C(0 , i)] = w_buffer[F1D2C(0 , i+1)];
                        v_buffer[F1D2C(0 , i)] = v_buffer[F1D2C(0 , i+1)];
                        u_buffer[F1D2C(0 , i)] = u_buffer[F1D2C(0 , i+1)];
                        h_buffer[F1D2C(0 , i)] = h_buffer[F1D2C(0 , i+1)];
                        g_buffer[F1D2C(0 , i)] = g_buffer[F1D2C(0 , i+1)];
                        f_buffer[F1D2C(0 , i)] = f_buffer[F1D2C(0 , i+1)];
                        diu2_buffer[F1D2C(0 , i)] = diu2_buffer[F1D2C(0 , i+1)];
                        diu3_buffer[F1D2C(0 , i)] = diu3_buffer[F1D2C(0 , i+1)];
                        diu4_buffer[F1D2C(0 , i)] = diu4_buffer[F1D2C(0 , i+1)];
                        diu6_buffer[F1D2C(0 , i)] = diu6_buffer[F1D2C(0 , i+1)];
                        diu7_buffer[F1D2C(0 , i)] = diu7_buffer[F1D2C(0 , i+1)];
                        diu8_buffer[F1D2C(0 , i)] = diu8_buffer[F1D2C(0 , i+1)];
        }
        if (count<=driverloopsize) {
                        read_pipe_block(p0_les_0_diu2_i_j_k_reader_p0_les_0_smart_cache_diu2_i_j_k_pipe,&diu2_read_in);
                        diu2_buffer[F1D2C(0 , 92112)] = diu2_read_in;
                        read_pipe_block(p0_les_0_diu3_i_j_k_reader_p0_les_0_smart_cache_diu3_i_j_k_pipe,&diu3_read_in);
                        diu3_buffer[F1D2C(0 , 92112)] = diu3_read_in;
                        read_pipe_block(p0_les_0_diu4_i_j_k_reader_p0_les_0_smart_cache_diu4_i_j_k_pipe,&diu4_read_in);
                        diu4_buffer[F1D2C(0 , 92112)] = diu4_read_in;
                        read_pipe_block(p0_les_0_diu6_i_j_k_reader_p0_les_0_smart_cache_diu6_i_j_k_pipe,&diu6_read_in);
                        diu6_buffer[F1D2C(0 , 92112)] = diu6_read_in;
                        read_pipe_block(p0_les_0_diu7_i_j_k_reader_p0_les_0_smart_cache_diu7_i_j_k_pipe,&diu7_read_in);
                        diu7_buffer[F1D2C(0 , 92112)] = diu7_read_in;
                        read_pipe_block(p0_les_0_diu8_i_j_k_reader_p0_les_0_smart_cache_diu8_i_j_k_pipe,&diu8_read_in);
                        diu8_buffer[F1D2C(0 , 92112)] = diu8_read_in;
                        read_pipe_block(p0_feedbf_p0_les_0_smart_cache_f_i_j_k_pipe,&f_read_in);
                        f_buffer[F1D2C(0 , 92112)] = f_read_in;
                        read_pipe_block(p0_feedbf_p0_les_0_smart_cache_fx_i_j_k_pipe,&fx_read_in);
                        fx_buffer[F1D2C(0 , 92112)] = fx_read_in;
                        read_pipe_block(p0_feedbf_p0_les_0_smart_cache_fy_i_j_k_pipe,&fy_read_in);
                        fy_buffer[F1D2C(0 , 92112)] = fy_read_in;
                        read_pipe_block(p0_feedbf_p0_les_0_smart_cache_fz_i_j_k_pipe,&fz_read_in);
                        fz_buffer[F1D2C(0 , 92112)] = fz_read_in;
                        read_pipe_block(p0_feedbf_p0_les_0_smart_cache_g_i_j_k_pipe,&g_read_in);
                        g_buffer[F1D2C(0 , 92112)] = g_read_in;
                        read_pipe_block(p0_feedbf_p0_les_0_smart_cache_h_i_j_k_pipe,&h_read_in);
                        h_buffer[F1D2C(0 , 92112)] = h_read_in;
                        read_pipe_block(p0_feedbf_p0_les_0_smart_cache_u_i_j_k_pipe,&u_read_in);
                        u_buffer[F1D2C(0 , 92112)] = u_read_in;
                        read_pipe_block(p0_feedbf_p0_les_0_smart_cache_usum_i_j_k_pipe,&usum_read_in);
                        usum_buffer[F1D2C(0 , 92112)] = usum_read_in;
                        read_pipe_block(p0_feedbf_p0_les_0_smart_cache_v_i_j_k_pipe,&v_read_in);
                        v_buffer[F1D2C(0 , 92112)] = v_read_in;
                        read_pipe_block(p0_feedbf_p0_les_0_smart_cache_vsum_i_j_k_pipe,&vsum_read_in);
                        vsum_buffer[F1D2C(0 , 92112)] = vsum_read_in;
                        read_pipe_block(p0_feedbf_p0_les_0_smart_cache_w_i_j_k_pipe,&w_read_in);
                        w_buffer[F1D2C(0 , 92112)] = w_read_in;
                        read_pipe_block(p0_feedbf_p0_les_0_smart_cache_wsum_i_j_k_pipe,&wsum_read_in);
                        wsum_buffer[F1D2C(0 , 92112)] = wsum_read_in;
        }
        if (compindex>=0) {
                        diu2_i_j_k = diu2_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_diu2_i_j_k_pipe,&diu2_i_j_k);
                        diu2_i_jp1_k = diu2_buffer[F1D2C(0 , 92112)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_diu2_i_jp1_k_pipe,&diu2_i_jp1_k);
                        diu2_im1_j_k = diu2_buffer[F1D2C(0 , 91808)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_diu2_im1_j_k_pipe,&diu2_im1_j_k);
                        diu2_im1_jp1_k = diu2_buffer[F1D2C(0 , 92111)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_diu2_im1_jp1_k_pipe,&diu2_im1_jp1_k);
                        diu3_i_j_k = diu3_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_diu3_i_j_k_pipe,&diu3_i_j_k);
                        diu3_i_j_kp1 = diu3_buffer[F1D2C(0 , 183618)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_diu3_i_j_kp1_pipe,&diu3_i_j_kp1);
                        diu3_im1_j_k = diu3_buffer[F1D2C(0 , 91808)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_diu3_im1_j_k_pipe,&diu3_im1_j_k);
                        diu3_im1_j_kp1 = diu3_buffer[F1D2C(0 , 183617)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_diu3_im1_j_kp1_pipe,&diu3_im1_j_kp1);
                        diu4_i_j_k = diu4_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_diu4_i_j_k_pipe,&diu4_i_j_k);
                        diu4_i_jm1_k = diu4_buffer[F1D2C(0 , 91506)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_diu4_i_jm1_k_pipe,&diu4_i_jm1_k);
                        diu4_ip1_j_k = diu4_buffer[F1D2C(0 , 91810)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_diu4_ip1_j_k_pipe,&diu4_ip1_j_k);
                        diu4_ip1_jm1_k = diu4_buffer[F1D2C(0 , 91507)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_diu4_ip1_jm1_k_pipe,&diu4_ip1_jm1_k);
                        diu6_i_j_k = diu6_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_diu6_i_j_k_pipe,&diu6_i_j_k);
                        diu6_i_j_kp1 = diu6_buffer[F1D2C(0 , 183618)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_diu6_i_j_kp1_pipe,&diu6_i_j_kp1);
                        diu6_i_jm1_k = diu6_buffer[F1D2C(0 , 91506)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_diu6_i_jm1_k_pipe,&diu6_i_jm1_k);
                        diu6_i_jm1_kp1 = diu6_buffer[F1D2C(0 , 183315)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_diu6_i_jm1_kp1_pipe,&diu6_i_jm1_kp1);
                        diu7_i_j_k = diu7_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_diu7_i_j_k_pipe,&diu7_i_j_k);
                        diu7_i_j_km1 = diu7_buffer[F1D2C(0 , 0)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_diu7_i_j_km1_pipe,&diu7_i_j_km1);
                        diu7_ip1_j_k = diu7_buffer[F1D2C(0 , 91810)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_diu7_ip1_j_k_pipe,&diu7_ip1_j_k);
                        diu7_ip1_j_km1 = *diu7_buffer;
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_diu7_ip1_j_km1_pipe,&diu7_ip1_j_km1);
                        diu8_i_j_k = diu8_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_diu8_i_j_k_pipe,&diu8_i_j_k);
                        diu8_i_j_km1 = diu8_buffer[F1D2C(0 , 0)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_diu8_i_j_km1_pipe,&diu8_i_j_km1);
                        diu8_i_jp1_k = diu8_buffer[F1D2C(0 , 92112)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_diu8_i_jp1_k_pipe,&diu8_i_jp1_k);
                        diu8_i_jp1_km1 = diu8_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_diu8_i_jp1_km1_pipe,&diu8_i_jp1_km1);
                        f_i_j_k = f_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_f_i_j_k_pipe,&f_i_j_k);
                        fx_i_j_k = fx_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_fx_i_j_k_pipe,&fx_i_j_k);
                        fy_i_j_k = fy_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_fy_i_j_k_pipe,&fy_i_j_k);
                        fz_i_j_k = fz_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_fz_i_j_k_pipe,&fz_i_j_k);
                        g_i_j_k = g_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_g_i_j_k_pipe,&g_i_j_k);
                        h_i_j_k = h_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_h_i_j_k_pipe,&h_i_j_k);
                        u_i_j_k = u_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_u_i_j_k_pipe,&u_i_j_k);
                        usum_i_j_k = usum_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_usum_i_j_k_pipe,&usum_i_j_k);
                        v_i_j_k = v_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_v_i_j_k_pipe,&v_i_j_k);
                        vsum_i_j_k = vsum_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_vsum_i_j_k_pipe,&vsum_i_j_k);
                        w_i_j_k = w_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_w_i_j_k_pipe,&w_i_j_k);
                        wsum_i_j_k = wsum_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_0_smart_cache_p0_les_0_wsum_i_j_k_pipe,&wsum_i_j_k);
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_0() {

      const int nloop = 7645295;
      int idx;
      float csx1;
      float delx1_k;
      float diu1_i_j_k;
      float diu2_im1_jp1_k;
      float diu2_i_j_k;
      float diu2_i_jp1_k;
      float diu2_im1_j_k;
      float diu3_im1_j_kp1;
      float diu3_i_j_kp1;
      float diu3_i_j_k;
      float diu3_im1_j_k;
      float diu4_i_j_k;
      float diu4_ip1_jm1_k;
      float diu4_ip1_j_k;
      float diu4_i_jm1_k;
      float diu5_i_j_k;
      float diu6_i_jm1_kp1;
      float diu6_i_j_kp1;
      float diu6_i_j_k;
      float diu6_i_jm1_k;
      float diu7_i_j_k;
      float diu7_ip1_j_km1;
      float diu7_ip1_j_k;
      float diu7_i_j_km1;
      float diu8_i_j_k;
      float diu8_i_jp1_km1;
      float diu8_i_jp1_k;
      float diu8_i_j_km1;
      float diu9_i_j_k;
      float dudxx1;
      float dudyx1;
      float dudzx1;
      float dvdxx1;
      float dvdyx1;
      float dvdzx1;
      float dwdxx1;
      float dwdyx1;
      float dwdzx1;
      int i;
      int j;
      int k;
      int p0_les_0_p0_les_1_smart_cache_fx_i_j_k_pipe;
      int p0_les_0_smart_cache_p0_les_0_usum_i_j_k_pipe;
      float usum_i_j_k;
      int p0_les_0_smart_cache_p0_les_0_v_i_j_k_pipe;
      int p0_les_0_p0_les_1_smart_cache_sm_i_j_k_pipe;
      int p0_les_0_smart_cache_p0_les_0_diu2_im1_j_k_pipe;
      int p0_les_0_smart_cache_p0_les_0_diu8_i_jp1_k_pipe;
      int p0_les_0_smart_cache_p0_les_0_g_i_j_k_pipe;
      int p0_les_0_smart_cache_p0_les_0_diu8_i_j_k_pipe;
      int p0_les_0_diu5_i_j_k_reader_p0_les_0_diu5_i_j_k_pipe;
      int p0_les_0_smart_cache_p0_les_0_diu6_i_j_k_pipe;
      int p0_les_0_smart_cache_p0_les_0_diu2_i_j_k_pipe;
      float fx_i_j_k;
      float fy_i_j_k;
      int p0_les_0_smart_cache_p0_les_0_diu7_ip1_j_km1_pipe;
      int p0_les_0_p0_les_1_smart_cache_f_i_j_k_pipe;
      int p0_les_0_smart_cache_p0_les_0_f_i_j_k_pipe;
      int p0_les_0_smart_cache_p0_les_0_diu7_i_j_km1_pipe;
      int p0_les_0_smart_cache_p0_les_0_diu3_i_j_kp1_pipe;
      int p0_les_0_smart_cache_p0_les_0_diu7_i_j_k_pipe;
      int p0_les_0_smart_cache_p0_les_0_diu2_im1_jp1_k_pipe;
      int p0_les_0_smart_cache_p0_les_0_diu4_ip1_j_k_pipe;
      int p0_les_0_smart_cache_p0_les_0_diu6_i_jm1_k_pipe;
      int p0_les_0_p0_les_1_smart_cache_vsum_i_j_k_pipe;
      int p0_les_0_p0_les_1_smart_cache_v_i_j_k_pipe;
      int p0_les_0_p0_les_1_smart_cache_g_i_j_k_pipe;
      int p0_les_0_smart_cache_p0_les_0_fz_i_j_k_pipe;
      int p0_les_0_p0_les_1_smart_cache_h_i_j_k_pipe;
      int p0_les_0_smart_cache_p0_les_0_diu4_i_j_k_pipe;
      float u_i_j_k;
      float fz_i_j_k;
      int p0_les_0_smart_cache_p0_les_0_h_i_j_k_pipe;
      int p0_les_0_diu1_i_j_k_reader_p0_les_0_diu1_i_j_k_pipe;
      int p0_les_0_diu9_i_j_k_reader_p0_les_0_diu9_i_j_k_pipe;
      int p0_les_0_smart_cache_p0_les_0_diu3_im1_j_k_pipe;
      float g_i_j_k;
      float v_i_j_k;
      int p0_les_0_smart_cache_p0_les_0_diu6_i_jm1_kp1_pipe;
      int p0_les_0_smart_cache_p0_les_0_diu4_ip1_jm1_k_pipe;
      int p0_les_0_p0_les_1_smart_cache_fy_i_j_k_pipe;
      int p0_les_0_smart_cache_p0_les_0_diu8_i_jp1_km1_pipe;
      int p0_les_0_p0_les_1_smart_cache_u_i_j_k_pipe;
      int p0_les_0_p0_les_1_smart_cache_usum_i_j_k_pipe;
      int p0_les_0_p0_les_1_smart_cache_w_i_j_k_pipe;
      int p0_les_0_smart_cache_p0_les_0_diu2_i_jp1_k_pipe;
      int p0_les_0_smart_cache_p0_les_0_w_i_j_k_pipe;
      int p0_les_0_smart_cache_p0_les_0_fx_i_j_k_pipe;
      float wsum_i_j_k;
      int p0_les_0_smart_cache_p0_les_0_fy_i_j_k_pipe;
      float h_i_j_k;
      int p0_les_0_smart_cache_p0_les_0_diu8_i_j_km1_pipe;
      int p0_les_0_sm_i_j_k_reader_p0_les_0_sm_i_j_k_pipe;
      int p0_les_0_smart_cache_p0_les_0_diu6_i_j_kp1_pipe;
      int p0_les_0_p0_les_1_smart_cache_wsum_i_j_k_pipe;
      int p0_les_0_delx1_k_reader_p0_les_0_delx1_k_pipe;
      float w_i_j_k;
      int p0_les_0_smart_cache_p0_les_0_diu4_i_jm1_k_pipe;
      int p0_les_0_p0_les_1_smart_cache_fz_i_j_k_pipe;
      int p0_les_0_smart_cache_p0_les_0_diu7_ip1_j_k_pipe;
      int p0_les_0_smart_cache_p0_les_0_diu3_im1_j_kp1_pipe;
      int p0_les_0_smart_cache_p0_les_0_vsum_i_j_k_pipe;
      int p0_les_0_smart_cache_p0_les_0_wsum_i_j_k_pipe;
      int p0_les_0_smart_cache_p0_les_0_diu3_i_j_k_pipe;
      float f_i_j_k;
      float vsum_i_j_k;
      int p0_les_0_smart_cache_p0_les_0_u_i_j_k_pipe;
      float sm_i_j_k;
    for (idx = 0;idx <= nloop;idx += 1) {
                read_pipe_block(p0_les_0_delx1_k_reader_p0_les_0_delx1_k_pipe,&delx1_k);
                read_pipe_block(p0_les_0_diu1_i_j_k_reader_p0_les_0_diu1_i_j_k_pipe,&diu1_i_j_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_diu2_i_j_k_pipe,&diu2_i_j_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_diu2_i_jp1_k_pipe,&diu2_i_jp1_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_diu2_im1_j_k_pipe,&diu2_im1_j_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_diu2_im1_jp1_k_pipe,&diu2_im1_jp1_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_diu3_i_j_k_pipe,&diu3_i_j_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_diu3_i_j_kp1_pipe,&diu3_i_j_kp1);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_diu3_im1_j_k_pipe,&diu3_im1_j_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_diu3_im1_j_kp1_pipe,&diu3_im1_j_kp1);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_diu4_i_j_k_pipe,&diu4_i_j_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_diu4_i_jm1_k_pipe,&diu4_i_jm1_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_diu4_ip1_j_k_pipe,&diu4_ip1_j_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_diu4_ip1_jm1_k_pipe,&diu4_ip1_jm1_k);
                read_pipe_block(p0_les_0_diu5_i_j_k_reader_p0_les_0_diu5_i_j_k_pipe,&diu5_i_j_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_diu6_i_j_k_pipe,&diu6_i_j_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_diu6_i_j_kp1_pipe,&diu6_i_j_kp1);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_diu6_i_jm1_k_pipe,&diu6_i_jm1_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_diu6_i_jm1_kp1_pipe,&diu6_i_jm1_kp1);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_diu7_i_j_k_pipe,&diu7_i_j_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_diu7_i_j_km1_pipe,&diu7_i_j_km1);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_diu7_ip1_j_k_pipe,&diu7_ip1_j_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_diu7_ip1_j_km1_pipe,&diu7_ip1_j_km1);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_diu8_i_j_k_pipe,&diu8_i_j_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_diu8_i_j_km1_pipe,&diu8_i_j_km1);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_diu8_i_jp1_k_pipe,&diu8_i_jp1_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_diu8_i_jp1_km1_pipe,&diu8_i_jp1_km1);
                read_pipe_block(p0_les_0_diu9_i_j_k_reader_p0_les_0_diu9_i_j_k_pipe,&diu9_i_j_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_f_i_j_k_pipe,&f_i_j_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_fx_i_j_k_pipe,&fx_i_j_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_fy_i_j_k_pipe,&fy_i_j_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_fz_i_j_k_pipe,&fz_i_j_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_g_i_j_k_pipe,&g_i_j_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_h_i_j_k_pipe,&h_i_j_k);
                read_pipe_block(p0_les_0_sm_i_j_k_reader_p0_les_0_sm_i_j_k_pipe,&sm_i_j_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_u_i_j_k_pipe,&u_i_j_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_usum_i_j_k_pipe,&usum_i_j_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_v_i_j_k_pipe,&v_i_j_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_vsum_i_j_k_pipe,&vsum_i_j_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_w_i_j_k_pipe,&w_i_j_k);
                read_pipe_block(p0_les_0_smart_cache_p0_les_0_wsum_i_j_k_pipe,&wsum_i_j_k);
                i = idx%304;
                j = idx/304%303;
                k = idx/92112;
        if ((i>=1)&&(i<=300)&&(j>=1)&&(j<=300)&&(k>=1)&&(k<=80)) {
                        dudxx1 = diu1_i_j_k;
                        dudyx1 = (diu2_im1_j_k+diu2_im1_jp1_k+diu2_i_j_k+diu2_i_jp1_k)*.25;
                        dudzx1 = (diu3_im1_j_k+diu3_im1_j_kp1+diu3_i_j_k+diu3_i_j_kp1)*.25;
                        dvdxx1 = (diu4_i_j_k+diu4_i_jm1_k+diu4_ip1_j_k+diu4_ip1_jm1_k)*.25;
                        dvdyx1 = diu5_i_j_k;
                        dvdzx1 = (diu6_i_jm1_k+diu6_i_jm1_kp1+diu6_i_j_k+diu6_i_j_kp1)*.25;
                        dwdxx1 = (diu7_i_j_k+diu7_i_j_km1+diu7_ip1_j_k+diu7_ip1_j_km1)*.25;
                        dwdyx1 = (diu8_i_j_k+diu8_i_j_km1+diu8_i_jp1_k+diu8_i_jp1_km1)*.25;
                        dwdzx1 = diu9_i_j_k;
                        csx1 = 0.14;
                        sm_i_j_k = pow((csx1*delx1_k))*sqrt(2.*(pow(dudxx1)+pow(dvdyx1)+pow(dwdzx1))+pow((dudyx1+dvdxx1))+pow((dwdyx1+dvdzx1))+pow((dudzx1+dwdxx1)));
        }
                write_pipe_block(p0_les_0_p0_les_1_smart_cache_f_i_j_k_pipe,&f_i_j_k);
                write_pipe_block(p0_les_0_p0_les_1_smart_cache_fx_i_j_k_pipe,&fx_i_j_k);
                write_pipe_block(p0_les_0_p0_les_1_smart_cache_fy_i_j_k_pipe,&fy_i_j_k);
                write_pipe_block(p0_les_0_p0_les_1_smart_cache_fz_i_j_k_pipe,&fz_i_j_k);
                write_pipe_block(p0_les_0_p0_les_1_smart_cache_g_i_j_k_pipe,&g_i_j_k);
                write_pipe_block(p0_les_0_p0_les_1_smart_cache_h_i_j_k_pipe,&h_i_j_k);
                write_pipe_block(p0_les_0_p0_les_1_smart_cache_sm_i_j_k_pipe,&sm_i_j_k);
                write_pipe_block(p0_les_0_p0_les_1_smart_cache_u_i_j_k_pipe,&u_i_j_k);
                write_pipe_block(p0_les_0_p0_les_1_smart_cache_usum_i_j_k_pipe,&usum_i_j_k);
                write_pipe_block(p0_les_0_p0_les_1_smart_cache_v_i_j_k_pipe,&v_i_j_k);
                write_pipe_block(p0_les_0_p0_les_1_smart_cache_vsum_i_j_k_pipe,&vsum_i_j_k);
                write_pipe_block(p0_les_0_p0_les_1_smart_cache_w_i_j_k_pipe,&w_i_j_k);
                write_pipe_block(p0_les_0_p0_les_1_smart_cache_wsum_i_j_k_pipe,&wsum_i_j_k);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_1_diu1_i_j_k_reader(__global float *diu1) {

      float diu1_i_j_k;
      int i;
      int j;
      int p0_les_1_diu1_i_j_k_reader_p0_les_1_smart_cache_diu1_i_j_k_pipe;
      int k;
    for (i = 0;i <= 82;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = -1;k <= 302;k += 1) {
                                diu1_i_j_k = diu1[F3D2C(((302 - -1 )+1),((302 - 0 )+1) , -1,0,0 , i,j,k)];
                                write_pipe_block(p0_les_1_diu1_i_j_k_reader_p0_les_1_smart_cache_diu1_i_j_k_pipe,&diu1_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_1_diu2_i_j_k_reader(__global float *diu2) {

      float diu2_i_j_k;
      int i;
      int j;
      int p0_les_1_diu2_i_j_k_reader_p0_les_1_smart_cache_diu2_i_j_k_pipe;
      int k;
    for (i = 0;i <= 82;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                diu2_i_j_k = diu2[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_les_1_diu2_i_j_k_reader_p0_les_1_smart_cache_diu2_i_j_k_pipe,&diu2_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_1_diu3_i_j_k_reader(__global float *diu3) {

      float diu3_i_j_k;
      int i;
      int j;
      int p0_les_1_diu3_i_j_k_reader_p0_les_1_smart_cache_diu3_i_j_k_pipe;
      int k;
    for (i = 0;i <= 82;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                diu3_i_j_k = diu3[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_les_1_diu3_i_j_k_reader_p0_les_1_smart_cache_diu3_i_j_k_pipe,&diu3_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_1_diu4_i_j_k_reader(__global float *diu4) {

      float diu4_i_j_k;
      int i;
      int j;
      float p0_les_1_diu4_i_j_k_reader_p0_les_1_smart_cache_diu4_i_j_k_pipe;
      int k;
    for (i = 0;i <= 82;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                diu4_i_j_k = diu4[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_les_1_diu4_i_j_k_reader_p0_les_1_smart_cache_diu4_i_j_k_pipe,&diu4_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_1_diu7_i_j_k_reader(__global float *diu7) {

      float diu7_i_j_k;
      int i;
      int j;
      float p0_les_1_diu7_i_j_k_reader_p0_les_1_smart_cache_diu7_i_j_k_pipe;
      int k;
    for (i = 0;i <= 82;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                diu7_i_j_k = diu7[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_les_1_diu7_i_j_k_reader_p0_les_1_smart_cache_diu7_i_j_k_pipe,&diu7_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_1_dx1_i_reader(__global float *dx1) {

      float dx1_i;
      int p0_les_1_dx1_i_reader_p0_les_1_smart_cache_dx1_i_pipe;
      int i;
    for (i = -1;i <= 301;i += 1) {
                dx1_i = dx1[F1D2C(-1 , i)];
                write_pipe_block(p0_les_1_dx1_i_reader_p0_les_1_smart_cache_dx1_i_pipe,&dx1_i);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_1_dy1_j_reader(__global float *dy1) {

      float dy1_j;
      int p0_les_1_dy1_j_reader_p0_les_1_smart_cache_dy1_j_pipe;
      int i;
    for (i = 0;i <= 301;i += 1) {
                dy1_j = dy1[F1D2C(0 , i)];
                write_pipe_block(p0_les_1_dy1_j_reader_p0_les_1_smart_cache_dy1_j_pipe,&dy1_j);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_1_dzn_k_reader(__global float *dzn) {

      float dzn_k;
      float p0_les_1_dzn_k_reader_p0_les_1_smart_cache_dzn_k_pipe;
      int i;
    for (i = -1;i <= 82;i += 1) {
                dzn_k = dzn[F1D2C(-1 , i)];
                write_pipe_block(p0_les_1_dzn_k_reader_p0_les_1_smart_cache_dzn_k_pipe,&dzn_k);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_1_dxs_i_reader(__global float *dxs) {

      float dxs_i;
      float p0_les_1_dxs_i_reader_p0_les_1_dxs_i_pipe;
      int i;
    for (i = 0;i <= 300;i += 1) {
                dxs_i = dxs[F1D2C(0 , i)];
                write_pipe_block(p0_les_1_dxs_i_reader_p0_les_1_dxs_i_pipe,&dxs_i);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_1_smart_cache() {

      float fx_read_in;
      float fy_read_in;
      float fz_read_in;
      float usum_read_in;
      float vsum_read_in;
      float wsum_read_in;
      float w_read_in;
      float v_read_in;
      float u_read_in;
      float h_read_in;
      float g_read_in;
      float diu1_read_in;
      float diu2_read_in;
      float diu3_read_in;
      float diu4_read_in;
      float diu7_read_in;
      float dx1_read_in;
      float dy1_read_in;
      float dzn_read_in;
      float sm_read_in;
      float f_read_in;
      float fx_buffer[183620];
      float fy_buffer[183620];
      float fz_buffer[183620];
      float usum_buffer[183620];
      float vsum_buffer[183620];
      float wsum_buffer[183620];
      float w_buffer[183620];
      float v_buffer[183620];
      float u_buffer[183620];
      float h_buffer[183620];
      float g_buffer[183620];
      float diu1_buffer[183620];
      float diu2_buffer[183620];
      float diu3_buffer[183620];
      float diu4_buffer[183620];
      float diu7_buffer[183620];
      float dx1_buffer[183620];
      float dy1_buffer[183620];
      float dzn_buffer[183620];
      float sm_buffer[183620];
      float f_buffer[183620];
      float fx_i_j_k;
      float fy_i_j_k;
      float fz_i_j_k;
      float usum_i_j_k;
      float vsum_i_j_k;
      float wsum_i_j_k;
      float w_i_j_k;
      float v_i_j_k;
      float u_i_j_k;
      float h_i_j_k;
      float g_i_j_k;
      float diu1_ip1_j_k;
      float diu1_i_j_k;
      float diu2_i_jp1_k;
      float diu2_i_j_k;
      float diu3_i_j_kp1;
      float diu3_i_j_k;
      float diu4_ip1_j_k;
      float diu4_ip1_jm1_k;
      float diu7_ip1_j_k;
      float diu7_ip1_j_km1;
      float dx1_ip1;
      float dx1_i;
      float dy1_jp1;
      float dy1_j;
      float dzn_kp1;
      float dzn_k;
      float dzn_km1;
      float sm_i_jm1_k;
      float sm_i_j_kp1;
      float sm_i_j_k;
      float sm_i_jp1_k;
      float sm_ip1_jm1_k;
      float sm_ip1_j_km1;
      float sm_ip1_j_kp1;
      float sm_ip1_j_k;
      float sm_ip1_jp1_k;
      float sm_i_j_km1;
      float f_i_j_k;
      int i;
      int count;
      int compindex;
      const int nloop = 7737105;
      const int smartcachesize = 183620;
      const int maxpositiveoffset = 91810;
      const int maxnegativeoffset = 91809;
      int p0_les_1_smart_cache_p0_les_1_diu7_ip1_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_sm_ip1_j_km1_pipe;
      int p0_les_1_smart_cache_p0_les_1_diu1_ip1_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_sm_i_j_km1_pipe;
      int p0_les_1_smart_cache_p0_les_1_fz_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_diu4_ip1_jm1_k_pipe;
      int p0_les_0_p0_les_1_smart_cache_wsum_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_dx1_ip1_pipe;
      int p0_les_1_smart_cache_p0_les_1_sm_ip1_j_k_pipe;
      int p0_les_1_diu1_i_j_k_reader_p0_les_1_smart_cache_diu1_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_dzn_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_h_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_sm_i_jm1_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_diu3_i_j_k_pipe;
      int p0_les_0_p0_les_1_smart_cache_fz_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_w_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_g_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_sm_ip1_jm1_k_pipe;
      int p0_les_1_diu4_i_j_k_reader_p0_les_1_smart_cache_diu4_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_usum_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_sm_ip1_jp1_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_sm_i_jp1_k_pipe;
      int p0_les_1_dzn_k_reader_p0_les_1_smart_cache_dzn_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_v_i_j_k_pipe;
      int p0_les_1_dx1_i_reader_p0_les_1_smart_cache_dx1_i_pipe;
      int p0_les_1_smart_cache_p0_les_1_f_i_j_k_pipe;
      int p0_les_0_p0_les_1_smart_cache_w_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_diu4_ip1_j_k_pipe;
      int p0_les_0_p0_les_1_smart_cache_fy_i_j_k_pipe;
      int p0_les_0_p0_les_1_smart_cache_u_i_j_k_pipe;
      int p0_les_0_p0_les_1_smart_cache_usum_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_sm_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_dzn_kp1_pipe;
      int p0_les_1_diu7_i_j_k_reader_p0_les_1_smart_cache_diu7_i_j_k_pipe;
      int p0_les_1_diu3_i_j_k_reader_p0_les_1_smart_cache_diu3_i_j_k_pipe;
      int p0_les_0_p0_les_1_smart_cache_f_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_fy_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_dy1_j_pipe;
      int p0_les_1_smart_cache_p0_les_1_diu2_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_diu3_i_j_kp1_pipe;
      int p0_les_0_p0_les_1_smart_cache_h_i_j_k_pipe;
      int p0_les_1_dy1_j_reader_p0_les_1_smart_cache_dy1_j_pipe;
      int p0_les_1_smart_cache_p0_les_1_dzn_km1_pipe;
      int p0_les_0_p0_les_1_smart_cache_v_i_j_k_pipe;
      int p0_les_0_p0_les_1_smart_cache_g_i_j_k_pipe;
      int p0_les_0_p0_les_1_smart_cache_vsum_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_u_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_dx1_i_pipe;
      int p0_les_0_p0_les_1_smart_cache_sm_i_j_k_pipe;
      int p0_les_1_diu2_i_j_k_reader_p0_les_1_smart_cache_diu2_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_diu2_i_jp1_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_vsum_i_j_k_pipe;
      int p0_les_0_p0_les_1_smart_cache_fx_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_sm_i_j_kp1_pipe;
      int p0_les_1_smart_cache_p0_les_1_fx_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_diu7_ip1_j_km1_pipe;
      int p0_les_1_smart_cache_p0_les_1_wsum_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_diu1_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_dy1_jp1_pipe;
      int p0_les_1_smart_cache_p0_les_1_sm_ip1_j_kp1_pipe;
      const int driverloopsize = 7645296;
    for (count = 0;count <= nloop;count += 1) {
                compindex = count-maxpositiveoffset;
                
#pragma unroll
        for (i = 0;i <= smartcachesize-2;i += 1) {
                        fx_buffer[F1D2C(0 , i)] = fx_buffer[F1D2C(0 , i+1)];
                        fy_buffer[F1D2C(0 , i)] = fy_buffer[F1D2C(0 , i+1)];
                        fz_buffer[F1D2C(0 , i)] = fz_buffer[F1D2C(0 , i+1)];
                        usum_buffer[F1D2C(0 , i)] = usum_buffer[F1D2C(0 , i+1)];
                        vsum_buffer[F1D2C(0 , i)] = vsum_buffer[F1D2C(0 , i+1)];
                        wsum_buffer[F1D2C(0 , i)] = wsum_buffer[F1D2C(0 , i+1)];
                        w_buffer[F1D2C(0 , i)] = w_buffer[F1D2C(0 , i+1)];
                        v_buffer[F1D2C(0 , i)] = v_buffer[F1D2C(0 , i+1)];
                        u_buffer[F1D2C(0 , i)] = u_buffer[F1D2C(0 , i+1)];
                        h_buffer[F1D2C(0 , i)] = h_buffer[F1D2C(0 , i+1)];
                        g_buffer[F1D2C(0 , i)] = g_buffer[F1D2C(0 , i+1)];
                        diu1_buffer[F1D2C(0 , i)] = diu1_buffer[F1D2C(0 , i+1)];
                        diu2_buffer[F1D2C(0 , i)] = diu2_buffer[F1D2C(0 , i+1)];
                        diu3_buffer[F1D2C(0 , i)] = diu3_buffer[F1D2C(0 , i+1)];
                        diu4_buffer[F1D2C(0 , i)] = diu4_buffer[F1D2C(0 , i+1)];
                        diu7_buffer[F1D2C(0 , i)] = diu7_buffer[F1D2C(0 , i+1)];
                        dx1_buffer[F1D2C(0 , i)] = dx1_buffer[F1D2C(0 , i+1)];
                        dy1_buffer[F1D2C(0 , i)] = dy1_buffer[F1D2C(0 , i+1)];
                        dzn_buffer[F1D2C(0 , i)] = dzn_buffer[F1D2C(0 , i+1)];
                        sm_buffer[F1D2C(0 , i)] = sm_buffer[F1D2C(0 , i+1)];
                        f_buffer[F1D2C(0 , i)] = f_buffer[F1D2C(0 , i+1)];
        }
        if (count<=driverloopsize) {
                        read_pipe_block(p0_les_1_diu1_i_j_k_reader_p0_les_1_smart_cache_diu1_i_j_k_pipe,&diu1_read_in);
                        diu1_buffer[F1D2C(0 , 183619)] = diu1_read_in;
                        read_pipe_block(p0_les_1_diu2_i_j_k_reader_p0_les_1_smart_cache_diu2_i_j_k_pipe,&diu2_read_in);
                        diu2_buffer[F1D2C(0 , 183619)] = diu2_read_in;
                        read_pipe_block(p0_les_1_diu3_i_j_k_reader_p0_les_1_smart_cache_diu3_i_j_k_pipe,&diu3_read_in);
                        diu3_buffer[F1D2C(0 , 183619)] = diu3_read_in;
                        read_pipe_block(p0_les_1_diu4_i_j_k_reader_p0_les_1_smart_cache_diu4_i_j_k_pipe,&diu4_read_in);
                        diu4_buffer[F1D2C(0 , 183619)] = diu4_read_in;
                        read_pipe_block(p0_les_1_diu7_i_j_k_reader_p0_les_1_smart_cache_diu7_i_j_k_pipe,&diu7_read_in);
                        diu7_buffer[F1D2C(0 , 183619)] = diu7_read_in;
                        read_pipe_block(p0_les_1_dx1_i_reader_p0_les_1_smart_cache_dx1_i_pipe,&dx1_read_in);
                        dx1_buffer[F1D2C(0 , 183619)] = dx1_read_in;
                        read_pipe_block(p0_les_1_dy1_j_reader_p0_les_1_smart_cache_dy1_j_pipe,&dy1_read_in);
                        dy1_buffer[F1D2C(0 , 183619)] = dy1_read_in;
                        read_pipe_block(p0_les_1_dzn_k_reader_p0_les_1_smart_cache_dzn_k_pipe,&dzn_read_in);
                        dzn_buffer[F1D2C(0 , 183619)] = dzn_read_in;
                        read_pipe_block(p0_les_0_p0_les_1_smart_cache_f_i_j_k_pipe,&f_read_in);
                        f_buffer[F1D2C(0 , 183619)] = f_read_in;
                        read_pipe_block(p0_les_0_p0_les_1_smart_cache_fx_i_j_k_pipe,&fx_read_in);
                        fx_buffer[F1D2C(0 , 183619)] = fx_read_in;
                        read_pipe_block(p0_les_0_p0_les_1_smart_cache_fy_i_j_k_pipe,&fy_read_in);
                        fy_buffer[F1D2C(0 , 183619)] = fy_read_in;
                        read_pipe_block(p0_les_0_p0_les_1_smart_cache_fz_i_j_k_pipe,&fz_read_in);
                        fz_buffer[F1D2C(0 , 183619)] = fz_read_in;
                        read_pipe_block(p0_les_0_p0_les_1_smart_cache_g_i_j_k_pipe,&g_read_in);
                        g_buffer[F1D2C(0 , 183619)] = g_read_in;
                        read_pipe_block(p0_les_0_p0_les_1_smart_cache_h_i_j_k_pipe,&h_read_in);
                        h_buffer[F1D2C(0 , 183619)] = h_read_in;
                        read_pipe_block(p0_les_0_p0_les_1_smart_cache_sm_i_j_k_pipe,&sm_read_in);
                        sm_buffer[F1D2C(0 , 183619)] = sm_read_in;
                        read_pipe_block(p0_les_0_p0_les_1_smart_cache_u_i_j_k_pipe,&u_read_in);
                        u_buffer[F1D2C(0 , 183619)] = u_read_in;
                        read_pipe_block(p0_les_0_p0_les_1_smart_cache_usum_i_j_k_pipe,&usum_read_in);
                        usum_buffer[F1D2C(0 , 183619)] = usum_read_in;
                        read_pipe_block(p0_les_0_p0_les_1_smart_cache_v_i_j_k_pipe,&v_read_in);
                        v_buffer[F1D2C(0 , 183619)] = v_read_in;
                        read_pipe_block(p0_les_0_p0_les_1_smart_cache_vsum_i_j_k_pipe,&vsum_read_in);
                        vsum_buffer[F1D2C(0 , 183619)] = vsum_read_in;
                        read_pipe_block(p0_les_0_p0_les_1_smart_cache_w_i_j_k_pipe,&w_read_in);
                        w_buffer[F1D2C(0 , 183619)] = w_read_in;
                        read_pipe_block(p0_les_0_p0_les_1_smart_cache_wsum_i_j_k_pipe,&wsum_read_in);
                        wsum_buffer[F1D2C(0 , 183619)] = wsum_read_in;
        }
        if (compindex>=0) {
                        diu1_i_j_k = diu1_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_diu1_i_j_k_pipe,&diu1_i_j_k);
                        diu1_ip1_j_k = diu1_buffer[F1D2C(0 , 91810)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_diu1_ip1_j_k_pipe,&diu1_ip1_j_k);
                        diu2_i_j_k = diu2_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_diu2_i_j_k_pipe,&diu2_i_j_k);
                        diu2_i_jp1_k = diu2_buffer[F1D2C(0 , 92112)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_diu2_i_jp1_k_pipe,&diu2_i_jp1_k);
                        diu3_i_j_k = diu3_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_diu3_i_j_k_pipe,&diu3_i_j_k);
                        diu3_i_j_kp1 = diu3_buffer[F1D2C(0 , 183618)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_diu3_i_j_kp1_pipe,&diu3_i_j_kp1);
                        diu4_ip1_j_k = diu4_buffer[F1D2C(0 , 91810)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_diu4_ip1_j_k_pipe,&diu4_ip1_j_k);
                        diu4_ip1_jm1_k = diu4_buffer[F1D2C(0 , 91507)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_diu4_ip1_jm1_k_pipe,&diu4_ip1_jm1_k);
                        diu7_ip1_j_k = diu7_buffer[F1D2C(0 , 91810)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_diu7_ip1_j_k_pipe,&diu7_ip1_j_k);
                        diu7_ip1_j_km1 = *diu7_buffer;
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_diu7_ip1_j_km1_pipe,&diu7_ip1_j_km1);
                        dx1_i = dx1_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_dx1_i_pipe,&dx1_i);
                        dx1_ip1 = dx1_buffer[F1D2C(0 , 91810)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_dx1_ip1_pipe,&dx1_ip1);
                        dy1_j = dy1_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_dy1_j_pipe,&dy1_j);
                        dy1_jp1 = dy1_buffer[F1D2C(0 , 91810)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_dy1_jp1_pipe,&dy1_jp1);
                        dzn_k = dzn_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_dzn_k_pipe,&dzn_k);
                        dzn_km1 = dzn_buffer[F1D2C(0 , 91808)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_dzn_km1_pipe,&dzn_km1);
                        dzn_kp1 = dzn_buffer[F1D2C(0 , 91810)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_dzn_kp1_pipe,&dzn_kp1);
                        f_i_j_k = f_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_f_i_j_k_pipe,&f_i_j_k);
                        fx_i_j_k = fx_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_fx_i_j_k_pipe,&fx_i_j_k);
                        fy_i_j_k = fy_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_fy_i_j_k_pipe,&fy_i_j_k);
                        fz_i_j_k = fz_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_fz_i_j_k_pipe,&fz_i_j_k);
                        g_i_j_k = g_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_g_i_j_k_pipe,&g_i_j_k);
                        h_i_j_k = h_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_h_i_j_k_pipe,&h_i_j_k);
                        sm_i_j_k = sm_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_sm_i_j_k_pipe,&sm_i_j_k);
                        sm_i_j_km1 = sm_buffer[F1D2C(0 , 0)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_sm_i_j_km1_pipe,&sm_i_j_km1);
                        sm_i_j_kp1 = sm_buffer[F1D2C(0 , 183618)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_sm_i_j_kp1_pipe,&sm_i_j_kp1);
                        sm_i_jm1_k = sm_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_sm_i_jm1_k_pipe,&sm_i_jm1_k);
                        sm_i_jp1_k = sm_buffer[F1D2C(0 , 92112)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_sm_i_jp1_k_pipe,&sm_i_jp1_k);
                        sm_ip1_j_k = sm_buffer[F1D2C(0 , 91810)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_sm_ip1_j_k_pipe,&sm_ip1_j_k);
                        sm_ip1_j_km1 = *sm_buffer;
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_sm_ip1_j_km1_pipe,&sm_ip1_j_km1);
                        sm_ip1_j_kp1 = sm_buffer[F1D2C(0 , 183619)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_sm_ip1_j_kp1_pipe,&sm_ip1_j_kp1);
                        sm_ip1_jm1_k = sm_buffer[F1D2C(0 , 91810)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_sm_ip1_jm1_k_pipe,&sm_ip1_jm1_k);
                        sm_ip1_jp1_k = sm_buffer[F1D2C(0 , 92113)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_sm_ip1_jp1_k_pipe,&sm_ip1_jp1_k);
                        u_i_j_k = u_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_u_i_j_k_pipe,&u_i_j_k);
                        usum_i_j_k = usum_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_usum_i_j_k_pipe,&usum_i_j_k);
                        v_i_j_k = v_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_v_i_j_k_pipe,&v_i_j_k);
                        vsum_i_j_k = vsum_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_vsum_i_j_k_pipe,&vsum_i_j_k);
                        w_i_j_k = w_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_w_i_j_k_pipe,&w_i_j_k);
                        wsum_i_j_k = wsum_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_1_smart_cache_p0_les_1_wsum_i_j_k_pipe,&wsum_i_j_k);
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_1() {

      const int nloop = 7645295;
      int idx;
      float diu1_ip1_j_k;
      float diu1_i_j_k;
      float diu2_i_jp1_k;
      float diu2_i_j_k;
      float diu3_i_j_kp1;
      float diu3_i_j_k;
      float diu4_ip1_j_k;
      float diu4_ip1_jm1_k;
      float diu7_ip1_j_k;
      float diu7_ip1_j_km1;
      float dx1_ip1;
      float dx1_i;
      float dxs_i;
      float dy1_jp1;
      float dy1_j;
      float dzn_kp1;
      float dzn_k;
      float dzn_km1;
      float evsx2;
      float evsx1;
      float evsy2;
      float evsy1;
      float evsz2;
      float evsz1;
      float f_i_j_k;
      int i;
      int j;
      int k;
      float sm_i_jm1_k;
      float sm_i_j_kp1;
      float sm_i_j_k;
      float sm_i_jp1_k;
      float sm_ip1_jm1_k;
      float sm_ip1_j_km1;
      float sm_ip1_j_kp1;
      float sm_ip1_j_k;
      float sm_ip1_jp1_k;
      float sm_i_j_km1;
      float vfu;
      float visux2;
      float visux1;
      float visuy2;
      float visuy1;
      float visuz2;
      float v_i_j_k;
      float g_i_j_k;
      int p0_les_1_p0_les_2_smart_cache_vsum_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_sm_ip1_jp1_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_usum_i_j_k_pipe;
      int p0_les_1_p0_les_2_smart_cache_v_i_j_k_pipe;
      int p0_les_1_dxs_i_reader_p0_les_1_dxs_i_pipe;
      int p0_les_1_p0_les_2_smart_cache_sm_i_j_k_pipe;
      float wsum_i_j_k;
      int p0_les_1_smart_cache_p0_les_1_sm_i_jp1_k_pipe;
      float h_i_j_k;
      int p0_les_1_p0_les_2_smart_cache_fx_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_v_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_sm_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_dzn_kp1_pipe;
      int p0_les_1_smart_cache_p0_les_1_f_i_j_k_pipe;
      int p0_les_1_p0_les_2_smart_cache_h_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_diu4_ip1_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_sm_i_j_km1_pipe;
      int p0_les_1_smart_cache_p0_les_1_fz_i_j_k_pipe;
      float w_i_j_k;
      int p0_les_1_smart_cache_p0_les_1_diu4_ip1_jm1_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_diu7_ip1_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_sm_ip1_j_km1_pipe;
      int p0_les_1_smart_cache_p0_les_1_diu1_ip1_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_sm_ip1_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_dx1_ip1_pipe;
      int p0_les_1_smart_cache_p0_les_1_sm_i_jm1_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_diu3_i_j_k_pipe;
      float vsum_i_j_k;
      int p0_les_1_smart_cache_p0_les_1_dzn_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_h_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_g_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_sm_ip1_jm1_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_w_i_j_k_pipe;
      float usum_i_j_k;
      int p0_les_1_smart_cache_p0_les_1_u_i_j_k_pipe;
      int p0_les_1_p0_les_2_smart_cache_fy_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_dx1_i_pipe;
      int p0_les_1_smart_cache_p0_les_1_vsum_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_sm_i_j_kp1_pipe;
      int p0_les_1_smart_cache_p0_les_1_diu2_i_jp1_k_pipe;
      int p0_les_1_p0_les_2_smart_cache_u_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_wsum_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_fx_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_diu7_ip1_j_km1_pipe;
      int p0_les_1_p0_les_2_smart_cache_wsum_i_j_k_pipe;
      int p0_les_1_p0_les_2_smart_cache_fz_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_diu1_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_sm_ip1_j_kp1_pipe;
      int p0_les_1_smart_cache_p0_les_1_dy1_jp1_pipe;
      int p0_les_1_p0_les_2_smart_cache_w_i_j_k_pipe;
      float fy_i_j_k;
      int p0_les_1_smart_cache_p0_les_1_fy_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_dy1_j_pipe;
      int p0_les_1_p0_les_2_smart_cache_f_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_diu2_i_j_k_pipe;
      int p0_les_1_smart_cache_p0_les_1_diu3_i_j_kp1_pipe;
      float fx_i_j_k;
      int p0_les_1_p0_les_2_smart_cache_g_i_j_k_pipe;
      float u_i_j_k;
      float fz_i_j_k;
      int p0_les_1_smart_cache_p0_les_1_dzn_km1_pipe;
      int p0_les_1_p0_les_2_smart_cache_usum_i_j_k_pipe;
      float visuz1;
    for (idx = 0;idx <= nloop;idx += 1) {
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_diu1_i_j_k_pipe,&diu1_i_j_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_diu1_ip1_j_k_pipe,&diu1_ip1_j_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_diu2_i_j_k_pipe,&diu2_i_j_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_diu2_i_jp1_k_pipe,&diu2_i_jp1_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_diu3_i_j_k_pipe,&diu3_i_j_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_diu3_i_j_kp1_pipe,&diu3_i_j_kp1);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_diu4_ip1_j_k_pipe,&diu4_ip1_j_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_diu4_ip1_jm1_k_pipe,&diu4_ip1_jm1_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_diu7_ip1_j_k_pipe,&diu7_ip1_j_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_diu7_ip1_j_km1_pipe,&diu7_ip1_j_km1);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_dx1_i_pipe,&dx1_i);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_dx1_ip1_pipe,&dx1_ip1);
                read_pipe_block(p0_les_1_dxs_i_reader_p0_les_1_dxs_i_pipe,&dxs_i);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_dy1_j_pipe,&dy1_j);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_dy1_jp1_pipe,&dy1_jp1);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_dzn_k_pipe,&dzn_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_dzn_km1_pipe,&dzn_km1);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_dzn_kp1_pipe,&dzn_kp1);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_f_i_j_k_pipe,&f_i_j_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_fx_i_j_k_pipe,&fx_i_j_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_fy_i_j_k_pipe,&fy_i_j_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_fz_i_j_k_pipe,&fz_i_j_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_g_i_j_k_pipe,&g_i_j_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_h_i_j_k_pipe,&h_i_j_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_sm_i_j_k_pipe,&sm_i_j_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_sm_i_j_km1_pipe,&sm_i_j_km1);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_sm_i_j_kp1_pipe,&sm_i_j_kp1);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_sm_i_jm1_k_pipe,&sm_i_jm1_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_sm_i_jp1_k_pipe,&sm_i_jp1_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_sm_ip1_j_k_pipe,&sm_ip1_j_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_sm_ip1_j_km1_pipe,&sm_ip1_j_km1);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_sm_ip1_j_kp1_pipe,&sm_ip1_j_kp1);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_sm_ip1_jm1_k_pipe,&sm_ip1_jm1_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_sm_ip1_jp1_k_pipe,&sm_ip1_jp1_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_u_i_j_k_pipe,&u_i_j_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_usum_i_j_k_pipe,&usum_i_j_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_v_i_j_k_pipe,&v_i_j_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_vsum_i_j_k_pipe,&vsum_i_j_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_w_i_j_k_pipe,&w_i_j_k);
                read_pipe_block(p0_les_1_smart_cache_p0_les_1_wsum_i_j_k_pipe,&wsum_i_j_k);
                i = idx%304;
                j = idx/304%303;
                k = idx/92112;
        if ((i>=1)&&(i<=300)&&(j>=1)&&(j<=300)&&(k>=2)&&(k<=80)) {
                        evsx2 = sm_ip1_j_k;
                        evsx1 = sm_i_j_k;
                        evsy2 = (dy1_jp1*((dx1_ip1*sm_i_j_k+dx1_i*sm_ip1_j_k)/(dx1_i+dx1_ip1))+dy1_j*((dx1_ip1*sm_i_jp1_k+dx1_i*sm_ip1_jp1_k)/(dx1_i+dx1_ip1)))/(dy1_j+dy1_jp1);
                        evsy1 = (dy1_jp1*((dx1_ip1*sm_i_jm1_k+dx1_i*sm_ip1_jm1_k)/(dx1_i+dx1_ip1))+dy1_j*((dx1_ip1*sm_i_j_k+dx1_i*sm_ip1_j_k)/(dx1_i+dx1_ip1)))/(dy1_j+dy1_jp1);
                        evsz2 = (dzn_kp1*((dx1_ip1*sm_i_j_k+dx1_i*sm_ip1_j_k)/(dx1_i+dx1_ip1))+dzn_k*((dx1_ip1*sm_i_j_kp1+dx1_i*sm_ip1_j_kp1)/(dx1_i+dx1_ip1)))/(dzn_k+dzn_kp1);
                        evsz1 = (dzn_k*((dx1_ip1*sm_i_j_km1+dx1_i*sm_ip1_j_km1)/(dx1_i+dx1_ip1))+dzn_km1*((dx1_ip1*sm_i_j_k+dx1_i*sm_ip1_j_k)/(dx1_i+dx1_ip1)))/(dzn_km1+dzn_k);
                        visux2 = (evsx2)*2.*diu1_ip1_j_k;
                        visux1 = (evsx1)*2.*diu1_i_j_k;
                        visuy2 = (evsy2)*(diu2_i_jp1_k+diu4_ip1_j_k);
                        visuy1 = (evsy1)*(diu2_i_j_k+diu4_ip1_jm1_k);
                        visuz2 = (evsz2)*(diu3_i_j_kp1+diu7_ip1_j_k);
                        visuz1 = (evsz1)*(diu3_i_j_k+diu7_ip1_j_km1);
                        vfu = (visux2-visux1)/dxs_i+(visuy2-visuy1)/dy1_j+(visuz2-visuz1)/dzn_k;
                        f_i_j_k = f_i_j_k+vfu;
        }
                write_pipe_block(p0_les_1_p0_les_2_smart_cache_f_i_j_k_pipe,&f_i_j_k);
                write_pipe_block(p0_les_1_p0_les_2_smart_cache_fx_i_j_k_pipe,&fx_i_j_k);
                write_pipe_block(p0_les_1_p0_les_2_smart_cache_fy_i_j_k_pipe,&fy_i_j_k);
                write_pipe_block(p0_les_1_p0_les_2_smart_cache_fz_i_j_k_pipe,&fz_i_j_k);
                write_pipe_block(p0_les_1_p0_les_2_smart_cache_g_i_j_k_pipe,&g_i_j_k);
                write_pipe_block(p0_les_1_p0_les_2_smart_cache_h_i_j_k_pipe,&h_i_j_k);
                write_pipe_block(p0_les_1_p0_les_2_smart_cache_sm_i_j_k_pipe,&sm_i_j_k);
                write_pipe_block(p0_les_1_p0_les_2_smart_cache_u_i_j_k_pipe,&u_i_j_k);
                write_pipe_block(p0_les_1_p0_les_2_smart_cache_usum_i_j_k_pipe,&usum_i_j_k);
                write_pipe_block(p0_les_1_p0_les_2_smart_cache_v_i_j_k_pipe,&v_i_j_k);
                write_pipe_block(p0_les_1_p0_les_2_smart_cache_vsum_i_j_k_pipe,&vsum_i_j_k);
                write_pipe_block(p0_les_1_p0_les_2_smart_cache_w_i_j_k_pipe,&w_i_j_k);
                write_pipe_block(p0_les_1_p0_les_2_smart_cache_wsum_i_j_k_pipe,&wsum_i_j_k);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_2_diu2_i_j_k_reader(__global float *diu2) {

      float diu2_i_j_k;
      int i;
      int j;
      int p0_les_2_diu2_i_j_k_reader_p0_les_2_smart_cache_diu2_i_j_k_pipe;
      int k;
    for (i = 0;i <= 82;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                diu2_i_j_k = diu2[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_les_2_diu2_i_j_k_reader_p0_les_2_smart_cache_diu2_i_j_k_pipe,&diu2_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_2_diu4_i_j_k_reader(__global float *diu4) {

      float diu4_i_j_k;
      int i;
      int j;
      float p0_les_2_diu4_i_j_k_reader_p0_les_2_smart_cache_diu4_i_j_k_pipe;
      int k;
    for (i = 0;i <= 82;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                diu4_i_j_k = diu4[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_les_2_diu4_i_j_k_reader_p0_les_2_smart_cache_diu4_i_j_k_pipe,&diu4_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_2_diu5_i_j_k_reader(__global float *diu5) {

      float diu5_i_j_k;
      int i;
      int j;
      float p0_les_2_diu5_i_j_k_reader_p0_les_2_smart_cache_diu5_i_j_k_pipe;
      int k;
    for (i = 0;i <= 82;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = -1;k <= 302;k += 1) {
                                diu5_i_j_k = diu5[F3D2C(((302 - -1 )+1),((302 - 0 )+1) , -1,0,0 , i,j,k)];
                                write_pipe_block(p0_les_2_diu5_i_j_k_reader_p0_les_2_smart_cache_diu5_i_j_k_pipe,&diu5_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_2_diu6_i_j_k_reader(__global float *diu6) {

      float diu6_i_j_k;
      int i;
      int j;
      int p0_les_2_diu6_i_j_k_reader_p0_les_2_smart_cache_diu6_i_j_k_pipe;
      int k;
    for (i = 0;i <= 82;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                diu6_i_j_k = diu6[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_les_2_diu6_i_j_k_reader_p0_les_2_smart_cache_diu6_i_j_k_pipe,&diu6_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_2_diu8_i_j_k_reader(__global float *diu8) {

      float diu8_i_j_k;
      int i;
      int j;
      float p0_les_2_diu8_i_j_k_reader_p0_les_2_smart_cache_diu8_i_j_k_pipe;
      int k;
    for (i = 0;i <= 82;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                diu8_i_j_k = diu8[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_les_2_diu8_i_j_k_reader_p0_les_2_smart_cache_diu8_i_j_k_pipe,&diu8_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_2_dx1_i_reader(__global float *dx1) {

      float dx1_i;
      int p0_les_2_dx1_i_reader_p0_les_2_smart_cache_dx1_i_pipe;
      int i;
    for (i = -1;i <= 301;i += 1) {
                dx1_i = dx1[F1D2C(-1 , i)];
                write_pipe_block(p0_les_2_dx1_i_reader_p0_les_2_smart_cache_dx1_i_pipe,&dx1_i);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_2_dy1_j_reader(__global float *dy1) {

      float dy1_j;
      float p0_les_2_dy1_j_reader_p0_les_2_smart_cache_dy1_j_pipe;
      int i;
    for (i = 0;i <= 301;i += 1) {
                dy1_j = dy1[F1D2C(0 , i)];
                write_pipe_block(p0_les_2_dy1_j_reader_p0_les_2_smart_cache_dy1_j_pipe,&dy1_j);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_2_dzn_k_reader(__global float *dzn) {

      float dzn_k;
      float p0_les_2_dzn_k_reader_p0_les_2_smart_cache_dzn_k_pipe;
      int i;
    for (i = -1;i <= 82;i += 1) {
                dzn_k = dzn[F1D2C(-1 , i)];
                write_pipe_block(p0_les_2_dzn_k_reader_p0_les_2_smart_cache_dzn_k_pipe,&dzn_k);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_2_dys_j_reader(__global float *dys) {

      float dys_j;
      float p0_les_2_dys_j_reader_p0_les_2_dys_j_pipe;
      int i;
    for (i = 0;i <= 300;i += 1) {
                dys_j = dys[F1D2C(0 , i)];
                write_pipe_block(p0_les_2_dys_j_reader_p0_les_2_dys_j_pipe,&dys_j);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_2_smart_cache() {

      float fx_read_in;
      float fy_read_in;
      float fz_read_in;
      float usum_read_in;
      float vsum_read_in;
      float wsum_read_in;
      float w_read_in;
      float v_read_in;
      float u_read_in;
      float f_read_in;
      float h_read_in;
      float diu2_read_in;
      float diu4_read_in;
      float diu5_read_in;
      float diu6_read_in;
      float diu8_read_in;
      float dx1_read_in;
      float dy1_read_in;
      float dzn_read_in;
      float sm_read_in;
      float g_read_in;
      float fx_buffer[183620];
      float fy_buffer[183620];
      float fz_buffer[183620];
      float usum_buffer[183620];
      float vsum_buffer[183620];
      float wsum_buffer[183620];
      float w_buffer[183620];
      float v_buffer[183620];
      float u_buffer[183620];
      float f_buffer[183620];
      float h_buffer[183620];
      float diu2_buffer[183620];
      float diu4_buffer[183620];
      float diu5_buffer[183620];
      float diu6_buffer[183620];
      float diu8_buffer[183620];
      float dx1_buffer[183620];
      float dy1_buffer[183620];
      float dzn_buffer[183620];
      float sm_buffer[183620];
      float g_buffer[183620];
      float fx_i_j_k;
      float fy_i_j_k;
      float fz_i_j_k;
      float usum_i_j_k;
      float vsum_i_j_k;
      float wsum_i_j_k;
      float w_i_j_k;
      float v_i_j_k;
      float u_i_j_k;
      float f_i_j_k;
      float h_i_j_k;
      float diu2_im1_jp1_k;
      float diu2_i_jp1_k;
      float diu4_ip1_j_k;
      float diu4_i_j_k;
      float diu5_i_jp1_k;
      float diu5_i_j_k;
      float diu6_i_j_kp1;
      float diu6_i_j_k;
      float diu8_i_jp1_k;
      float diu8_i_jp1_km1;
      float dx1_ip1;
      float dx1_i;
      float dx1_im1;
      float dy1_jp1;
      float dy1_j;
      float dzn_kp1;
      float dzn_k;
      float dzn_km1;
      float sm_im1_j_k;
      float sm_im1_jp1_k;
      float sm_i_j_kp1;
      float sm_i_j_k;
      float sm_i_jp1_k;
      float sm_ip1_j_km1;
      float sm_ip1_j_kp1;
      float sm_ip1_j_k;
      float sm_ip1_jp1_k;
      float sm_i_j_km1;
      float g_i_j_k;
      int i;
      int count;
      int compindex;
      const int nloop = 7737105;
      const int smartcachesize = 183620;
      const int maxpositiveoffset = 91810;
      const int maxnegativeoffset = 91809;
      float p0_les_2_smart_cache_p0_les_2_u_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_fx_i_j_k_pipe;
      float p0_les_2_dx1_i_reader_p0_les_2_smart_cache_dx1_i_pipe;
      float p0_les_2_smart_cache_p0_les_2_sm_ip1_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_v_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_diu4_ip1_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_g_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_sm_i_j_kp1_pipe;
      float p0_les_2_diu8_i_j_k_reader_p0_les_2_smart_cache_diu8_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_dy1_jp1_pipe;
      float p0_les_2_smart_cache_p0_les_2_fz_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_diu8_i_jp1_km1_pipe;
      float p0_les_2_smart_cache_p0_les_2_usum_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_dzn_kp1_pipe;
      float p0_les_1_p0_les_2_smart_cache_fx_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_w_i_j_k_pipe;
      float p0_les_2_diu6_i_j_k_reader_p0_les_2_smart_cache_diu6_i_j_k_pipe;
      float p0_les_1_p0_les_2_smart_cache_sm_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_diu5_i_j_k_pipe;
      float p0_les_1_p0_les_2_smart_cache_h_i_j_k_pipe;
      float p0_les_2_diu4_i_j_k_reader_p0_les_2_smart_cache_diu4_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_wsum_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_dzn_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_diu2_im1_jp1_k_pipe;
      float p0_les_1_p0_les_2_smart_cache_vsum_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_diu5_i_jp1_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_vsum_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_sm_ip1_jp1_k_pipe;
      float p0_les_1_p0_les_2_smart_cache_v_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_fy_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_dx1_ip1_pipe;
      float p0_les_2_smart_cache_p0_les_2_dy1_j_pipe;
      float p0_les_2_smart_cache_p0_les_2_sm_i_j_km1_pipe;
      float p0_les_2_smart_cache_p0_les_2_sm_im1_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_diu6_i_j_kp1_pipe;
      float p0_les_1_p0_les_2_smart_cache_usum_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_h_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_diu4_i_j_k_pipe;
      float p0_les_1_p0_les_2_smart_cache_f_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_sm_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_dzn_km1_pipe;
      float p0_les_1_p0_les_2_smart_cache_w_i_j_k_pipe;
      float p0_les_1_p0_les_2_smart_cache_g_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_f_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_diu8_i_jp1_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_diu2_i_jp1_k_pipe;
      float p0_les_2_diu5_i_j_k_reader_p0_les_2_smart_cache_diu5_i_j_k_pipe;
      float p0_les_2_diu2_i_j_k_reader_p0_les_2_smart_cache_diu2_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_sm_ip1_j_km1_pipe;
      float p0_les_2_smart_cache_p0_les_2_diu6_i_j_k_pipe;
      float p0_les_1_p0_les_2_smart_cache_u_i_j_k_pipe;
      float p0_les_1_p0_les_2_smart_cache_fz_i_j_k_pipe;
      float p0_les_1_p0_les_2_smart_cache_wsum_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_sm_ip1_j_kp1_pipe;
      float p0_les_2_smart_cache_p0_les_2_sm_i_jp1_k_pipe;
      float p0_les_1_p0_les_2_smart_cache_fy_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_sm_im1_jp1_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_dx1_i_pipe;
      float p0_les_2_smart_cache_p0_les_2_dx1_im1_pipe;
      float p0_les_2_dzn_k_reader_p0_les_2_smart_cache_dzn_k_pipe;
      float p0_les_2_dy1_j_reader_p0_les_2_smart_cache_dy1_j_pipe;
      const int driverloopsize = 7645296;
    for (count = 0;count <= nloop;count += 1) {
                compindex = count-maxpositiveoffset;
                
#pragma unroll
        for (i = 0;i <= smartcachesize-2;i += 1) {
                        fx_buffer[F1D2C(0 , i)] = fx_buffer[F1D2C(0 , i+1)];
                        fy_buffer[F1D2C(0 , i)] = fy_buffer[F1D2C(0 , i+1)];
                        fz_buffer[F1D2C(0 , i)] = fz_buffer[F1D2C(0 , i+1)];
                        usum_buffer[F1D2C(0 , i)] = usum_buffer[F1D2C(0 , i+1)];
                        vsum_buffer[F1D2C(0 , i)] = vsum_buffer[F1D2C(0 , i+1)];
                        wsum_buffer[F1D2C(0 , i)] = wsum_buffer[F1D2C(0 , i+1)];
                        w_buffer[F1D2C(0 , i)] = w_buffer[F1D2C(0 , i+1)];
                        v_buffer[F1D2C(0 , i)] = v_buffer[F1D2C(0 , i+1)];
                        u_buffer[F1D2C(0 , i)] = u_buffer[F1D2C(0 , i+1)];
                        f_buffer[F1D2C(0 , i)] = f_buffer[F1D2C(0 , i+1)];
                        h_buffer[F1D2C(0 , i)] = h_buffer[F1D2C(0 , i+1)];
                        diu2_buffer[F1D2C(0 , i)] = diu2_buffer[F1D2C(0 , i+1)];
                        diu4_buffer[F1D2C(0 , i)] = diu4_buffer[F1D2C(0 , i+1)];
                        diu5_buffer[F1D2C(0 , i)] = diu5_buffer[F1D2C(0 , i+1)];
                        diu6_buffer[F1D2C(0 , i)] = diu6_buffer[F1D2C(0 , i+1)];
                        diu8_buffer[F1D2C(0 , i)] = diu8_buffer[F1D2C(0 , i+1)];
                        dx1_buffer[F1D2C(0 , i)] = dx1_buffer[F1D2C(0 , i+1)];
                        dy1_buffer[F1D2C(0 , i)] = dy1_buffer[F1D2C(0 , i+1)];
                        dzn_buffer[F1D2C(0 , i)] = dzn_buffer[F1D2C(0 , i+1)];
                        sm_buffer[F1D2C(0 , i)] = sm_buffer[F1D2C(0 , i+1)];
                        g_buffer[F1D2C(0 , i)] = g_buffer[F1D2C(0 , i+1)];
        }
        if (count<=driverloopsize) {
                        read_pipe_block(p0_les_2_diu2_i_j_k_reader_p0_les_2_smart_cache_diu2_i_j_k_pipe,&diu2_read_in);
                        diu2_buffer[F1D2C(0 , 183619)] = diu2_read_in;
                        read_pipe_block(p0_les_2_diu4_i_j_k_reader_p0_les_2_smart_cache_diu4_i_j_k_pipe,&diu4_read_in);
                        diu4_buffer[F1D2C(0 , 183619)] = diu4_read_in;
                        read_pipe_block(p0_les_2_diu5_i_j_k_reader_p0_les_2_smart_cache_diu5_i_j_k_pipe,&diu5_read_in);
                        diu5_buffer[F1D2C(0 , 183619)] = diu5_read_in;
                        read_pipe_block(p0_les_2_diu6_i_j_k_reader_p0_les_2_smart_cache_diu6_i_j_k_pipe,&diu6_read_in);
                        diu6_buffer[F1D2C(0 , 183619)] = diu6_read_in;
                        read_pipe_block(p0_les_2_diu8_i_j_k_reader_p0_les_2_smart_cache_diu8_i_j_k_pipe,&diu8_read_in);
                        diu8_buffer[F1D2C(0 , 183619)] = diu8_read_in;
                        read_pipe_block(p0_les_2_dx1_i_reader_p0_les_2_smart_cache_dx1_i_pipe,&dx1_read_in);
                        dx1_buffer[F1D2C(0 , 183619)] = dx1_read_in;
                        read_pipe_block(p0_les_2_dy1_j_reader_p0_les_2_smart_cache_dy1_j_pipe,&dy1_read_in);
                        dy1_buffer[F1D2C(0 , 183619)] = dy1_read_in;
                        read_pipe_block(p0_les_2_dzn_k_reader_p0_les_2_smart_cache_dzn_k_pipe,&dzn_read_in);
                        dzn_buffer[F1D2C(0 , 183619)] = dzn_read_in;
                        read_pipe_block(p0_les_1_p0_les_2_smart_cache_f_i_j_k_pipe,&f_read_in);
                        f_buffer[F1D2C(0 , 183619)] = f_read_in;
                        read_pipe_block(p0_les_1_p0_les_2_smart_cache_fx_i_j_k_pipe,&fx_read_in);
                        fx_buffer[F1D2C(0 , 183619)] = fx_read_in;
                        read_pipe_block(p0_les_1_p0_les_2_smart_cache_fy_i_j_k_pipe,&fy_read_in);
                        fy_buffer[F1D2C(0 , 183619)] = fy_read_in;
                        read_pipe_block(p0_les_1_p0_les_2_smart_cache_fz_i_j_k_pipe,&fz_read_in);
                        fz_buffer[F1D2C(0 , 183619)] = fz_read_in;
                        read_pipe_block(p0_les_1_p0_les_2_smart_cache_g_i_j_k_pipe,&g_read_in);
                        g_buffer[F1D2C(0 , 183619)] = g_read_in;
                        read_pipe_block(p0_les_1_p0_les_2_smart_cache_h_i_j_k_pipe,&h_read_in);
                        h_buffer[F1D2C(0 , 183619)] = h_read_in;
                        read_pipe_block(p0_les_1_p0_les_2_smart_cache_sm_i_j_k_pipe,&sm_read_in);
                        sm_buffer[F1D2C(0 , 183619)] = sm_read_in;
                        read_pipe_block(p0_les_1_p0_les_2_smart_cache_u_i_j_k_pipe,&u_read_in);
                        u_buffer[F1D2C(0 , 183619)] = u_read_in;
                        read_pipe_block(p0_les_1_p0_les_2_smart_cache_usum_i_j_k_pipe,&usum_read_in);
                        usum_buffer[F1D2C(0 , 183619)] = usum_read_in;
                        read_pipe_block(p0_les_1_p0_les_2_smart_cache_v_i_j_k_pipe,&v_read_in);
                        v_buffer[F1D2C(0 , 183619)] = v_read_in;
                        read_pipe_block(p0_les_1_p0_les_2_smart_cache_vsum_i_j_k_pipe,&vsum_read_in);
                        vsum_buffer[F1D2C(0 , 183619)] = vsum_read_in;
                        read_pipe_block(p0_les_1_p0_les_2_smart_cache_w_i_j_k_pipe,&w_read_in);
                        w_buffer[F1D2C(0 , 183619)] = w_read_in;
                        read_pipe_block(p0_les_1_p0_les_2_smart_cache_wsum_i_j_k_pipe,&wsum_read_in);
                        wsum_buffer[F1D2C(0 , 183619)] = wsum_read_in;
        }
        if (compindex>=0) {
                        diu2_i_jp1_k = diu2_buffer[F1D2C(0 , 92112)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_diu2_i_jp1_k_pipe,&diu2_i_jp1_k);
                        diu2_im1_jp1_k = diu2_buffer[F1D2C(0 , 92111)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_diu2_im1_jp1_k_pipe,&diu2_im1_jp1_k);
                        diu4_i_j_k = diu4_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_diu4_i_j_k_pipe,&diu4_i_j_k);
                        diu4_ip1_j_k = diu4_buffer[F1D2C(0 , 91810)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_diu4_ip1_j_k_pipe,&diu4_ip1_j_k);
                        diu5_i_j_k = diu5_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_diu5_i_j_k_pipe,&diu5_i_j_k);
                        diu5_i_jp1_k = diu5_buffer[F1D2C(0 , 92113)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_diu5_i_jp1_k_pipe,&diu5_i_jp1_k);
                        diu6_i_j_k = diu6_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_diu6_i_j_k_pipe,&diu6_i_j_k);
                        diu6_i_j_kp1 = diu6_buffer[F1D2C(0 , 183618)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_diu6_i_j_kp1_pipe,&diu6_i_j_kp1);
                        diu8_i_jp1_k = diu8_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_diu8_i_jp1_k_pipe,&diu8_i_jp1_k);
                        diu8_i_jp1_km1 = diu8_buffer[F1D2C(0 , 0)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_diu8_i_jp1_km1_pipe,&diu8_i_jp1_km1);
                        dx1_i = dx1_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_dx1_i_pipe,&dx1_i);
                        dx1_im1 = dx1_buffer[F1D2C(0 , 91808)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_dx1_im1_pipe,&dx1_im1);
                        dx1_ip1 = dx1_buffer[F1D2C(0 , 91810)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_dx1_ip1_pipe,&dx1_ip1);
                        dy1_j = dy1_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_dy1_j_pipe,&dy1_j);
                        dy1_jp1 = dy1_buffer[F1D2C(0 , 91810)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_dy1_jp1_pipe,&dy1_jp1);
                        dzn_k = dzn_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_dzn_k_pipe,&dzn_k);
                        dzn_km1 = dzn_buffer[F1D2C(0 , 91808)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_dzn_km1_pipe,&dzn_km1);
                        dzn_kp1 = dzn_buffer[F1D2C(0 , 91810)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_dzn_kp1_pipe,&dzn_kp1);
                        f_i_j_k = f_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_f_i_j_k_pipe,&f_i_j_k);
                        fx_i_j_k = fx_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_fx_i_j_k_pipe,&fx_i_j_k);
                        fy_i_j_k = fy_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_fy_i_j_k_pipe,&fy_i_j_k);
                        fz_i_j_k = fz_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_fz_i_j_k_pipe,&fz_i_j_k);
                        g_i_j_k = g_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_g_i_j_k_pipe,&g_i_j_k);
                        h_i_j_k = h_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_h_i_j_k_pipe,&h_i_j_k);
                        sm_i_j_k = sm_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_sm_i_j_k_pipe,&sm_i_j_k);
                        sm_i_j_km1 = sm_buffer[F1D2C(0 , 0)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_sm_i_j_km1_pipe,&sm_i_j_km1);
                        sm_i_j_kp1 = sm_buffer[F1D2C(0 , 183618)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_sm_i_j_kp1_pipe,&sm_i_j_kp1);
                        sm_i_jp1_k = sm_buffer[F1D2C(0 , 92112)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_sm_i_jp1_k_pipe,&sm_i_jp1_k);
                        sm_im1_j_k = sm_buffer[F1D2C(0 , 91808)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_sm_im1_j_k_pipe,&sm_im1_j_k);
                        sm_im1_jp1_k = sm_buffer[F1D2C(0 , 92111)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_sm_im1_jp1_k_pipe,&sm_im1_jp1_k);
                        sm_ip1_j_k = sm_buffer[F1D2C(0 , 91810)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_sm_ip1_j_k_pipe,&sm_ip1_j_k);
                        sm_ip1_j_km1 = *sm_buffer;
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_sm_ip1_j_km1_pipe,&sm_ip1_j_km1);
                        sm_ip1_j_kp1 = sm_buffer[F1D2C(0 , 183619)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_sm_ip1_j_kp1_pipe,&sm_ip1_j_kp1);
                        sm_ip1_jp1_k = sm_buffer[F1D2C(0 , 92113)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_sm_ip1_jp1_k_pipe,&sm_ip1_jp1_k);
                        u_i_j_k = u_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_u_i_j_k_pipe,&u_i_j_k);
                        usum_i_j_k = usum_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_usum_i_j_k_pipe,&usum_i_j_k);
                        v_i_j_k = v_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_v_i_j_k_pipe,&v_i_j_k);
                        vsum_i_j_k = vsum_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_vsum_i_j_k_pipe,&vsum_i_j_k);
                        w_i_j_k = w_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_w_i_j_k_pipe,&w_i_j_k);
                        wsum_i_j_k = wsum_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_2_smart_cache_p0_les_2_wsum_i_j_k_pipe,&wsum_i_j_k);
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_2() {

      const int nloop = 7645295;
      int idx;
      float diu2_im1_jp1_k;
      float diu2_i_jp1_k;
      float diu4_ip1_j_k;
      float diu4_i_j_k;
      float diu5_i_jp1_k;
      float diu5_i_j_k;
      float diu6_i_j_kp1;
      float diu6_i_j_k;
      float diu8_i_jp1_k;
      float diu8_i_jp1_km1;
      float dx1_ip1;
      float dx1_i;
      float dx1_im1;
      float dy1_jp1;
      float dy1_j;
      float dys_j;
      float dzn_kp1;
      float dzn_k;
      float dzn_km1;
      float evsx2;
      float evsx1;
      float evsy2;
      float evsy1;
      float evsz2;
      float evsz1;
      float g_i_j_k;
      int i;
      int j;
      int k;
      float sm_im1_j_k;
      float sm_im1_jp1_k;
      float sm_i_j_kp1;
      float sm_i_j_k;
      float sm_i_jp1_k;
      float sm_ip1_j_km1;
      float sm_ip1_j_kp1;
      float sm_ip1_j_k;
      float sm_ip1_jp1_k;
      float sm_i_j_km1;
      float vfv;
      float visvx2;
      float visvx1;
      float visvy2;
      float visvy1;
      float visvz2;
      float p0_les_2_smart_cache_p0_les_2_dzn_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_vsum_i_j_k_pipe;
      float v_i_j_k;
      float p0_les_2_smart_cache_p0_les_2_diu5_i_jp1_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_diu2_im1_jp1_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_sm_ip1_jp1_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_dy1_j_pipe;
      float p0_les_2_smart_cache_p0_les_2_dx1_ip1_pipe;
      float p0_les_2_smart_cache_p0_les_2_fy_i_j_k_pipe;
      float h_i_j_k;
      float wsum_i_j_k;
      float p0_les_2_dys_j_reader_p0_les_2_dys_j_pipe;
      float p0_les_2_p0_les_3_smart_cache_f_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_w_i_j_k_pipe;
      float p0_les_2_p0_les_3_smart_cache_w_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_diu5_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_wsum_i_j_k_pipe;
      float p0_les_2_p0_les_3_smart_cache_wsum_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_sm_i_j_kp1_pipe;
      float p0_les_2_smart_cache_p0_les_2_g_i_j_k_pipe;
      float w_i_j_k;
      float p0_les_2_p0_les_3_smart_cache_sm_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_diu8_i_jp1_km1_pipe;
      float p0_les_2_smart_cache_p0_les_2_dy1_jp1_pipe;
      float p0_les_2_smart_cache_p0_les_2_fz_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_usum_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_dzn_kp1_pipe;
      float vsum_i_j_k;
      float p0_les_2_smart_cache_p0_les_2_fx_i_j_k_pipe;
      float f_i_j_k;
      float p0_les_2_smart_cache_p0_les_2_u_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_sm_ip1_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_diu4_ip1_j_k_pipe;
      float p0_les_2_p0_les_3_smart_cache_v_i_j_k_pipe;
      float p0_les_2_p0_les_3_smart_cache_vsum_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_v_i_j_k_pipe;
      float p0_les_2_p0_les_3_smart_cache_fx_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_sm_i_jp1_k_pipe;
      float usum_i_j_k;
      float p0_les_2_smart_cache_p0_les_2_dx1_im1_pipe;
      float p0_les_2_smart_cache_p0_les_2_dx1_i_pipe;
      float p0_les_2_smart_cache_p0_les_2_sm_im1_jp1_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_diu2_i_jp1_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_sm_ip1_j_km1_pipe;
      float p0_les_2_smart_cache_p0_les_2_diu6_i_j_k_pipe;
      float p0_les_2_p0_les_3_smart_cache_h_i_j_k_pipe;
      float p0_les_2_p0_les_3_smart_cache_fy_i_j_k_pipe;
      float p0_les_2_p0_les_3_smart_cache_usum_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_sm_ip1_j_kp1_pipe;
      float p0_les_2_smart_cache_p0_les_2_sm_i_j_k_pipe;
      float fy_i_j_k;
      float p0_les_2_smart_cache_p0_les_2_dzn_km1_pipe;
      float fx_i_j_k;
      float p0_les_2_smart_cache_p0_les_2_diu8_i_jp1_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_f_i_j_k_pipe;
      float fz_i_j_k;
      float u_i_j_k;
      float p0_les_2_p0_les_3_smart_cache_u_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_sm_i_j_km1_pipe;
      float p0_les_2_smart_cache_p0_les_2_sm_im1_j_k_pipe;
      float p0_les_2_p0_les_3_smart_cache_fz_i_j_k_pipe;
      float p0_les_2_p0_les_3_smart_cache_g_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_diu6_i_j_kp1_pipe;
      float p0_les_2_smart_cache_p0_les_2_diu4_i_j_k_pipe;
      float p0_les_2_smart_cache_p0_les_2_h_i_j_k_pipe;
      float visvz1;
    for (idx = 0;idx <= nloop;idx += 1) {
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_diu2_i_jp1_k_pipe,&diu2_i_jp1_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_diu2_im1_jp1_k_pipe,&diu2_im1_jp1_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_diu4_i_j_k_pipe,&diu4_i_j_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_diu4_ip1_j_k_pipe,&diu4_ip1_j_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_diu5_i_j_k_pipe,&diu5_i_j_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_diu5_i_jp1_k_pipe,&diu5_i_jp1_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_diu6_i_j_k_pipe,&diu6_i_j_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_diu6_i_j_kp1_pipe,&diu6_i_j_kp1);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_diu8_i_jp1_k_pipe,&diu8_i_jp1_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_diu8_i_jp1_km1_pipe,&diu8_i_jp1_km1);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_dx1_i_pipe,&dx1_i);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_dx1_im1_pipe,&dx1_im1);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_dx1_ip1_pipe,&dx1_ip1);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_dy1_j_pipe,&dy1_j);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_dy1_jp1_pipe,&dy1_jp1);
                read_pipe_block(p0_les_2_dys_j_reader_p0_les_2_dys_j_pipe,&dys_j);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_dzn_k_pipe,&dzn_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_dzn_km1_pipe,&dzn_km1);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_dzn_kp1_pipe,&dzn_kp1);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_f_i_j_k_pipe,&f_i_j_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_fx_i_j_k_pipe,&fx_i_j_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_fy_i_j_k_pipe,&fy_i_j_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_fz_i_j_k_pipe,&fz_i_j_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_g_i_j_k_pipe,&g_i_j_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_h_i_j_k_pipe,&h_i_j_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_sm_i_j_k_pipe,&sm_i_j_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_sm_i_j_km1_pipe,&sm_i_j_km1);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_sm_i_j_kp1_pipe,&sm_i_j_kp1);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_sm_i_jp1_k_pipe,&sm_i_jp1_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_sm_im1_j_k_pipe,&sm_im1_j_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_sm_im1_jp1_k_pipe,&sm_im1_jp1_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_sm_ip1_j_k_pipe,&sm_ip1_j_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_sm_ip1_j_km1_pipe,&sm_ip1_j_km1);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_sm_ip1_j_kp1_pipe,&sm_ip1_j_kp1);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_sm_ip1_jp1_k_pipe,&sm_ip1_jp1_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_u_i_j_k_pipe,&u_i_j_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_usum_i_j_k_pipe,&usum_i_j_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_v_i_j_k_pipe,&v_i_j_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_vsum_i_j_k_pipe,&vsum_i_j_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_w_i_j_k_pipe,&w_i_j_k);
                read_pipe_block(p0_les_2_smart_cache_p0_les_2_wsum_i_j_k_pipe,&wsum_i_j_k);
                i = idx%304;
                j = idx/304%303;
                k = idx/92112;
        if ((i>=1)&&(i<=300)&&(j>=1)&&(j<=300)&&(k>=2)&&(k<=80)) {
                        evsy2 = sm_i_jp1_k;
                        evsy1 = sm_i_j_k;
                        evsx2 = (dy1_jp1*((dx1_ip1*sm_i_j_k+dx1_i*sm_ip1_j_k)/(dx1_i+dx1_ip1))+dy1_j*((dx1_ip1*sm_i_jp1_k+dx1_i*sm_ip1_jp1_k)/(dx1_i+dx1_ip1)))/(dy1_j+dy1_jp1);
                        evsx1 = (dy1_jp1*((dx1_i*sm_im1_j_k+dx1_im1*sm_i_j_k)/(dx1_im1+dx1_i))+dy1_j*((dx1_i*sm_im1_jp1_k+dx1_im1*sm_i_jp1_k)/(dx1_im1+dx1_i)))/(dy1_j+dy1_jp1);
                        evsz2 = (dzn_kp1*((dx1_ip1*sm_i_j_k+dx1_i*sm_ip1_j_k)/(dx1_i+dx1_ip1))+dzn_k*((dx1_ip1*sm_i_j_kp1+dx1_i*sm_ip1_j_kp1)/(dx1_i+dx1_ip1)))/(dzn_k+dzn_kp1);
                        evsz1 = (dzn_k*((dx1_ip1*sm_i_j_km1+dx1_i*sm_ip1_j_km1)/(dx1_i+dx1_ip1))+dzn_km1*((dx1_ip1*sm_i_j_k+dx1_i*sm_ip1_j_k)/(dx1_i+dx1_ip1)))/(dzn_km1+dzn_k);
                        visvx2 = (evsx2)*(diu2_i_jp1_k+diu4_ip1_j_k);
                        visvx1 = (evsx1)*(diu2_im1_jp1_k+diu4_i_j_k);
                        visvy2 = (evsy2)*2.*diu5_i_jp1_k;
                        visvy1 = (evsy1)*2.*diu5_i_j_k;
                        visvz2 = (evsz2)*(diu6_i_j_kp1+diu8_i_jp1_k);
                        visvz1 = (evsz1)*(diu6_i_j_k+diu8_i_jp1_km1);
                        vfv = (visvx2-visvx1)/dx1_i+(visvy2-visvy1)/dys_j+(visvz2-visvz1)/dzn_k;
                        g_i_j_k = g_i_j_k+vfv;
        }
                write_pipe_block(p0_les_2_p0_les_3_smart_cache_f_i_j_k_pipe,&f_i_j_k);
                write_pipe_block(p0_les_2_p0_les_3_smart_cache_fx_i_j_k_pipe,&fx_i_j_k);
                write_pipe_block(p0_les_2_p0_les_3_smart_cache_fy_i_j_k_pipe,&fy_i_j_k);
                write_pipe_block(p0_les_2_p0_les_3_smart_cache_fz_i_j_k_pipe,&fz_i_j_k);
                write_pipe_block(p0_les_2_p0_les_3_smart_cache_g_i_j_k_pipe,&g_i_j_k);
                write_pipe_block(p0_les_2_p0_les_3_smart_cache_h_i_j_k_pipe,&h_i_j_k);
                write_pipe_block(p0_les_2_p0_les_3_smart_cache_sm_i_j_k_pipe,&sm_i_j_k);
                write_pipe_block(p0_les_2_p0_les_3_smart_cache_u_i_j_k_pipe,&u_i_j_k);
                write_pipe_block(p0_les_2_p0_les_3_smart_cache_usum_i_j_k_pipe,&usum_i_j_k);
                write_pipe_block(p0_les_2_p0_les_3_smart_cache_v_i_j_k_pipe,&v_i_j_k);
                write_pipe_block(p0_les_2_p0_les_3_smart_cache_vsum_i_j_k_pipe,&vsum_i_j_k);
                write_pipe_block(p0_les_2_p0_les_3_smart_cache_w_i_j_k_pipe,&w_i_j_k);
                write_pipe_block(p0_les_2_p0_les_3_smart_cache_wsum_i_j_k_pipe,&wsum_i_j_k);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_3_diu3_i_j_k_reader(__global float *diu3) {

      float diu3_i_j_k;
      int i;
      int j;
      int p0_les_3_diu3_i_j_k_reader_p0_les_3_smart_cache_diu3_i_j_k_pipe;
      int k;
    for (i = 0;i <= 82;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                diu3_i_j_k = diu3[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_les_3_diu3_i_j_k_reader_p0_les_3_smart_cache_diu3_i_j_k_pipe,&diu3_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_3_diu6_i_j_k_reader(__global float *diu6) {

      float diu6_i_j_k;
      int i;
      int j;
      float p0_les_3_diu6_i_j_k_reader_p0_les_3_smart_cache_diu6_i_j_k_pipe;
      int k;
    for (i = 0;i <= 82;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                diu6_i_j_k = diu6[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_les_3_diu6_i_j_k_reader_p0_les_3_smart_cache_diu6_i_j_k_pipe,&diu6_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_3_diu7_i_j_k_reader(__global float *diu7) {

      float diu7_i_j_k;
      int i;
      int j;
      float p0_les_3_diu7_i_j_k_reader_p0_les_3_smart_cache_diu7_i_j_k_pipe;
      int k;
    for (i = 0;i <= 82;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                diu7_i_j_k = diu7[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_les_3_diu7_i_j_k_reader_p0_les_3_smart_cache_diu7_i_j_k_pipe,&diu7_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_3_diu8_i_j_k_reader(__global float *diu8) {

      float diu8_i_j_k;
      int i;
      int j;
      float p0_les_3_diu8_i_j_k_reader_p0_les_3_smart_cache_diu8_i_j_k_pipe;
      int k;
    for (i = 0;i <= 82;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                diu8_i_j_k = diu8[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_les_3_diu8_i_j_k_reader_p0_les_3_smart_cache_diu8_i_j_k_pipe,&diu8_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_3_diu9_i_j_k_reader(__global float *diu9) {

      float diu9_i_j_k;
      int i;
      int j;
      float p0_les_3_diu9_i_j_k_reader_p0_les_3_smart_cache_diu9_i_j_k_pipe;
      int k;
    for (i = 0;i <= 82;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                diu9_i_j_k = diu9[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_les_3_diu9_i_j_k_reader_p0_les_3_smart_cache_diu9_i_j_k_pipe,&diu9_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_3_dx1_i_reader(__global float *dx1) {

      float dx1_i;
      int p0_les_3_dx1_i_reader_p0_les_3_smart_cache_dx1_i_pipe;
      int i;
    for (i = -1;i <= 301;i += 1) {
                dx1_i = dx1[F1D2C(-1 , i)];
                write_pipe_block(p0_les_3_dx1_i_reader_p0_les_3_smart_cache_dx1_i_pipe,&dx1_i);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_3_dy1_j_reader(__global float *dy1) {

      float dy1_j;
      float p0_les_3_dy1_j_reader_p0_les_3_smart_cache_dy1_j_pipe;
      int i;
    for (i = 0;i <= 301;i += 1) {
                dy1_j = dy1[F1D2C(0 , i)];
                write_pipe_block(p0_les_3_dy1_j_reader_p0_les_3_smart_cache_dy1_j_pipe,&dy1_j);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_3_dzn_k_reader(__global float *dzn) {

      float dzn_k;
      float p0_les_3_dzn_k_reader_p0_les_3_smart_cache_dzn_k_pipe;
      int i;
    for (i = -1;i <= 82;i += 1) {
                dzn_k = dzn[F1D2C(-1 , i)];
                write_pipe_block(p0_les_3_dzn_k_reader_p0_les_3_smart_cache_dzn_k_pipe,&dzn_k);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_3_smart_cache() {

      float fx_read_in;
      float fy_read_in;
      float fz_read_in;
      float usum_read_in;
      float vsum_read_in;
      float wsum_read_in;
      float w_read_in;
      float v_read_in;
      float u_read_in;
      float g_read_in;
      float f_read_in;
      float diu3_read_in;
      float diu6_read_in;
      float diu7_read_in;
      float diu8_read_in;
      float diu9_read_in;
      float dx1_read_in;
      float dy1_read_in;
      float dzn_read_in;
      float sm_read_in;
      float h_read_in;
      float fx_buffer[92416];
      float fy_buffer[92416];
      float fz_buffer[92416];
      float usum_buffer[92416];
      float vsum_buffer[92416];
      float wsum_buffer[92416];
      float w_buffer[92416];
      float v_buffer[92416];
      float u_buffer[92416];
      float g_buffer[92416];
      float f_buffer[92416];
      float diu3_buffer[92416];
      float diu6_buffer[92416];
      float diu7_buffer[92416];
      float diu8_buffer[92416];
      float diu9_buffer[92416];
      float dx1_buffer[92416];
      float dy1_buffer[92416];
      float dzn_buffer[92416];
      float sm_buffer[92416];
      float h_buffer[92416];
      float fx_i_j_k;
      float fy_i_j_k;
      float fz_i_j_k;
      float usum_i_j_k;
      float vsum_i_j_k;
      float wsum_i_j_k;
      float w_i_j_k;
      float v_i_j_k;
      float u_i_j_k;
      float g_i_j_k;
      float f_i_j_k;
      float diu3_im1_j_kp1;
      float diu3_i_j_kp1;
      float diu6_i_jm1_kp1;
      float diu6_i_j_kp1;
      float diu7_ip1_j_k;
      float diu7_i_j_k;
      float diu8_i_jp1_k;
      float diu8_i_j_k;
      float diu9_i_j_kp1;
      float diu9_i_j_k;
      float dx1_ip1;
      float dx1_i;
      float dx1_im1;
      float dy1_jp1;
      float dy1_j;
      float dy1_jm1;
      float dzn_kp1;
      float dzn_k;
      float sm_im1_j_kp1;
      float sm_im1_j_k;
      float sm_i_jm1_kp1;
      float sm_i_j_kp1;
      float sm_i_j_k;
      float sm_i_jp1_kp1;
      float sm_i_jp1_k;
      float sm_ip1_j_kp1;
      float sm_ip1_j_k;
      float sm_i_jm1_k;
      float h_i_j_k;
      int i;
      int count;
      int compindex;
      const int nloop = 7737407;
      const int smartcachesize = 92416;
      const int maxpositiveoffset = 92112;
      const int maxnegativeoffset = 303;
      int p0_les_3_smart_cache_p0_les_3_g_i_j_k_pipe;
      int p0_les_3_diu8_i_j_k_reader_p0_les_3_smart_cache_diu8_i_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_w_i_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_dx1_im1_pipe;
      int p0_les_3_diu9_i_j_k_reader_p0_les_3_smart_cache_diu9_i_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_h_i_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_sm_i_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_dy1_jm1_pipe;
      int p0_les_3_smart_cache_p0_les_3_diu3_i_j_kp1_pipe;
      int p0_les_3_smart_cache_p0_les_3_dzn_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_dx1_i_pipe;
      int p0_les_2_p0_les_3_smart_cache_w_i_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_sm_im1_j_kp1_pipe;
      int p0_les_2_p0_les_3_smart_cache_f_i_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_diu7_ip1_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_sm_i_jp1_kp1_pipe;
      int p0_les_3_smart_cache_p0_les_3_sm_ip1_j_kp1_pipe;
      int p0_les_3_smart_cache_p0_les_3_fy_i_j_k_pipe;
      int p0_les_3_dzn_k_reader_p0_les_3_smart_cache_dzn_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_usum_i_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_u_i_j_k_pipe;
      int p0_les_3_dx1_i_reader_p0_les_3_smart_cache_dx1_i_pipe;
      int p0_les_3_smart_cache_p0_les_3_sm_i_jp1_k_pipe;
      int p0_les_3_diu3_i_j_k_reader_p0_les_3_smart_cache_diu3_i_j_k_pipe;
      int p0_les_2_p0_les_3_smart_cache_sm_i_j_k_pipe;
      int p0_les_3_diu6_i_j_k_reader_p0_les_3_smart_cache_diu6_i_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_diu8_i_jp1_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_fx_i_j_k_pipe;
      int p0_les_2_p0_les_3_smart_cache_wsum_i_j_k_pipe;
      int p0_les_2_p0_les_3_smart_cache_fx_i_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_diu6_i_jm1_kp1_pipe;
      int p0_les_2_p0_les_3_smart_cache_v_i_j_k_pipe;
      int p0_les_2_p0_les_3_smart_cache_vsum_i_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_sm_i_j_kp1_pipe;
      int p0_les_3_diu7_i_j_k_reader_p0_les_3_smart_cache_diu7_i_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_sm_i_jm1_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_diu7_i_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_diu9_i_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_wsum_i_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_diu9_i_j_kp1_pipe;
      int p0_les_3_smart_cache_p0_les_3_diu8_i_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_diu3_im1_j_kp1_pipe;
      int p0_les_2_p0_les_3_smart_cache_usum_i_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_fz_i_j_k_pipe;
      int p0_les_2_p0_les_3_smart_cache_fy_i_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_dzn_kp1_pipe;
      int p0_les_2_p0_les_3_smart_cache_h_i_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_sm_im1_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_sm_i_jm1_kp1_pipe;
      int p0_les_3_smart_cache_p0_les_3_dy1_jp1_pipe;
      int p0_les_3_smart_cache_p0_les_3_diu6_i_j_kp1_pipe;
      int p0_les_3_smart_cache_p0_les_3_sm_ip1_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_vsum_i_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_f_i_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_dy1_j_pipe;
      int p0_les_3_dy1_j_reader_p0_les_3_smart_cache_dy1_j_pipe;
      int p0_les_2_p0_les_3_smart_cache_fz_i_j_k_pipe;
      int p0_les_2_p0_les_3_smart_cache_g_i_j_k_pipe;
      int p0_les_2_p0_les_3_smart_cache_u_i_j_k_pipe;
      int p0_les_3_smart_cache_p0_les_3_dx1_ip1_pipe;
      int p0_les_3_smart_cache_p0_les_3_v_i_j_k_pipe;
      const int driverloopsize = 7645296;
    for (count = 0;count <= nloop;count += 1) {
                compindex = count-maxpositiveoffset;
                
#pragma unroll
        for (i = 0;i <= smartcachesize-2;i += 1) {
                        fx_buffer[F1D2C(0 , i)] = fx_buffer[F1D2C(0 , i+1)];
                        fy_buffer[F1D2C(0 , i)] = fy_buffer[F1D2C(0 , i+1)];
                        fz_buffer[F1D2C(0 , i)] = fz_buffer[F1D2C(0 , i+1)];
                        usum_buffer[F1D2C(0 , i)] = usum_buffer[F1D2C(0 , i+1)];
                        vsum_buffer[F1D2C(0 , i)] = vsum_buffer[F1D2C(0 , i+1)];
                        wsum_buffer[F1D2C(0 , i)] = wsum_buffer[F1D2C(0 , i+1)];
                        w_buffer[F1D2C(0 , i)] = w_buffer[F1D2C(0 , i+1)];
                        v_buffer[F1D2C(0 , i)] = v_buffer[F1D2C(0 , i+1)];
                        u_buffer[F1D2C(0 , i)] = u_buffer[F1D2C(0 , i+1)];
                        g_buffer[F1D2C(0 , i)] = g_buffer[F1D2C(0 , i+1)];
                        f_buffer[F1D2C(0 , i)] = f_buffer[F1D2C(0 , i+1)];
                        diu3_buffer[F1D2C(0 , i)] = diu3_buffer[F1D2C(0 , i+1)];
                        diu6_buffer[F1D2C(0 , i)] = diu6_buffer[F1D2C(0 , i+1)];
                        diu7_buffer[F1D2C(0 , i)] = diu7_buffer[F1D2C(0 , i+1)];
                        diu8_buffer[F1D2C(0 , i)] = diu8_buffer[F1D2C(0 , i+1)];
                        diu9_buffer[F1D2C(0 , i)] = diu9_buffer[F1D2C(0 , i+1)];
                        dx1_buffer[F1D2C(0 , i)] = dx1_buffer[F1D2C(0 , i+1)];
                        dy1_buffer[F1D2C(0 , i)] = dy1_buffer[F1D2C(0 , i+1)];
                        dzn_buffer[F1D2C(0 , i)] = dzn_buffer[F1D2C(0 , i+1)];
                        sm_buffer[F1D2C(0 , i)] = sm_buffer[F1D2C(0 , i+1)];
                        h_buffer[F1D2C(0 , i)] = h_buffer[F1D2C(0 , i+1)];
        }
        if (count<=driverloopsize) {
                        read_pipe_block(p0_les_3_diu3_i_j_k_reader_p0_les_3_smart_cache_diu3_i_j_k_pipe,&diu3_read_in);
                        diu3_buffer[F1D2C(0 , 92415)] = diu3_read_in;
                        read_pipe_block(p0_les_3_diu6_i_j_k_reader_p0_les_3_smart_cache_diu6_i_j_k_pipe,&diu6_read_in);
                        diu6_buffer[F1D2C(0 , 92415)] = diu6_read_in;
                        read_pipe_block(p0_les_3_diu7_i_j_k_reader_p0_les_3_smart_cache_diu7_i_j_k_pipe,&diu7_read_in);
                        diu7_buffer[F1D2C(0 , 92415)] = diu7_read_in;
                        read_pipe_block(p0_les_3_diu8_i_j_k_reader_p0_les_3_smart_cache_diu8_i_j_k_pipe,&diu8_read_in);
                        diu8_buffer[F1D2C(0 , 92415)] = diu8_read_in;
                        read_pipe_block(p0_les_3_diu9_i_j_k_reader_p0_les_3_smart_cache_diu9_i_j_k_pipe,&diu9_read_in);
                        diu9_buffer[F1D2C(0 , 92415)] = diu9_read_in;
                        read_pipe_block(p0_les_3_dx1_i_reader_p0_les_3_smart_cache_dx1_i_pipe,&dx1_read_in);
                        dx1_buffer[F1D2C(0 , 92415)] = dx1_read_in;
                        read_pipe_block(p0_les_3_dy1_j_reader_p0_les_3_smart_cache_dy1_j_pipe,&dy1_read_in);
                        dy1_buffer[F1D2C(0 , 92415)] = dy1_read_in;
                        read_pipe_block(p0_les_3_dzn_k_reader_p0_les_3_smart_cache_dzn_k_pipe,&dzn_read_in);
                        dzn_buffer[F1D2C(0 , 92415)] = dzn_read_in;
                        read_pipe_block(p0_les_2_p0_les_3_smart_cache_f_i_j_k_pipe,&f_read_in);
                        f_buffer[F1D2C(0 , 92415)] = f_read_in;
                        read_pipe_block(p0_les_2_p0_les_3_smart_cache_fx_i_j_k_pipe,&fx_read_in);
                        fx_buffer[F1D2C(0 , 92415)] = fx_read_in;
                        read_pipe_block(p0_les_2_p0_les_3_smart_cache_fy_i_j_k_pipe,&fy_read_in);
                        fy_buffer[F1D2C(0 , 92415)] = fy_read_in;
                        read_pipe_block(p0_les_2_p0_les_3_smart_cache_fz_i_j_k_pipe,&fz_read_in);
                        fz_buffer[F1D2C(0 , 92415)] = fz_read_in;
                        read_pipe_block(p0_les_2_p0_les_3_smart_cache_g_i_j_k_pipe,&g_read_in);
                        g_buffer[F1D2C(0 , 92415)] = g_read_in;
                        read_pipe_block(p0_les_2_p0_les_3_smart_cache_h_i_j_k_pipe,&h_read_in);
                        h_buffer[F1D2C(0 , 92415)] = h_read_in;
                        read_pipe_block(p0_les_2_p0_les_3_smart_cache_sm_i_j_k_pipe,&sm_read_in);
                        sm_buffer[F1D2C(0 , 92415)] = sm_read_in;
                        read_pipe_block(p0_les_2_p0_les_3_smart_cache_u_i_j_k_pipe,&u_read_in);
                        u_buffer[F1D2C(0 , 92415)] = u_read_in;
                        read_pipe_block(p0_les_2_p0_les_3_smart_cache_usum_i_j_k_pipe,&usum_read_in);
                        usum_buffer[F1D2C(0 , 92415)] = usum_read_in;
                        read_pipe_block(p0_les_2_p0_les_3_smart_cache_v_i_j_k_pipe,&v_read_in);
                        v_buffer[F1D2C(0 , 92415)] = v_read_in;
                        read_pipe_block(p0_les_2_p0_les_3_smart_cache_vsum_i_j_k_pipe,&vsum_read_in);
                        vsum_buffer[F1D2C(0 , 92415)] = vsum_read_in;
                        read_pipe_block(p0_les_2_p0_les_3_smart_cache_w_i_j_k_pipe,&w_read_in);
                        w_buffer[F1D2C(0 , 92415)] = w_read_in;
                        read_pipe_block(p0_les_2_p0_les_3_smart_cache_wsum_i_j_k_pipe,&wsum_read_in);
                        wsum_buffer[F1D2C(0 , 92415)] = wsum_read_in;
        }
        if (compindex>=0) {
                        diu3_i_j_kp1 = diu3_buffer[F1D2C(0 , 92112)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_diu3_i_j_kp1_pipe,&diu3_i_j_kp1);
                        diu3_im1_j_kp1 = diu3_buffer[F1D2C(0 , 92111)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_diu3_im1_j_kp1_pipe,&diu3_im1_j_kp1);
                        diu6_i_j_kp1 = diu6_buffer[F1D2C(0 , 92112)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_diu6_i_j_kp1_pipe,&diu6_i_j_kp1);
                        diu6_i_jm1_kp1 = diu6_buffer[F1D2C(0 , 92112)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_diu6_i_jm1_kp1_pipe,&diu6_i_jm1_kp1);
                        diu7_i_j_k = diu7_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_diu7_i_j_k_pipe,&diu7_i_j_k);
                        diu7_ip1_j_k = diu7_buffer[F1D2C(0 , 304)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_diu7_ip1_j_k_pipe,&diu7_ip1_j_k);
                        diu8_i_j_k = diu8_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_diu8_i_j_k_pipe,&diu8_i_j_k);
                        diu8_i_jp1_k = diu8_buffer[F1D2C(0 , 606)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_diu8_i_jp1_k_pipe,&diu8_i_jp1_k);
                        diu9_i_j_k = diu9_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_diu9_i_j_k_pipe,&diu9_i_j_k);
                        diu9_i_j_kp1 = diu9_buffer[F1D2C(0 , 92112)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_diu9_i_j_kp1_pipe,&diu9_i_j_kp1);
                        dx1_i = dx1_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_dx1_i_pipe,&dx1_i);
                        dx1_im1 = dx1_buffer[F1D2C(0 , 302)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_dx1_im1_pipe,&dx1_im1);
                        dx1_ip1 = dx1_buffer[F1D2C(0 , 304)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_dx1_ip1_pipe,&dx1_ip1);
                        dy1_j = dy1_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_dy1_j_pipe,&dy1_j);
                        dy1_jm1 = dy1_buffer[F1D2C(0 , 302)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_dy1_jm1_pipe,&dy1_jm1);
                        dy1_jp1 = dy1_buffer[F1D2C(0 , 304)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_dy1_jp1_pipe,&dy1_jp1);
                        dzn_k = dzn_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_dzn_k_pipe,&dzn_k);
                        dzn_kp1 = dzn_buffer[F1D2C(0 , 304)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_dzn_kp1_pipe,&dzn_kp1);
                        f_i_j_k = f_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_f_i_j_k_pipe,&f_i_j_k);
                        fx_i_j_k = fx_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_fx_i_j_k_pipe,&fx_i_j_k);
                        fy_i_j_k = fy_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_fy_i_j_k_pipe,&fy_i_j_k);
                        fz_i_j_k = fz_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_fz_i_j_k_pipe,&fz_i_j_k);
                        g_i_j_k = g_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_g_i_j_k_pipe,&g_i_j_k);
                        h_i_j_k = h_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_h_i_j_k_pipe,&h_i_j_k);
                        sm_i_j_k = sm_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_sm_i_j_k_pipe,&sm_i_j_k);
                        sm_i_j_kp1 = sm_buffer[F1D2C(0 , 92112)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_sm_i_j_kp1_pipe,&sm_i_j_kp1);
                        sm_i_jm1_k = sm_buffer[F1D2C(0 , 0)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_sm_i_jm1_k_pipe,&sm_i_jm1_k);
                        sm_i_jm1_kp1 = sm_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_sm_i_jm1_kp1_pipe,&sm_i_jm1_kp1);
                        sm_i_jp1_k = sm_buffer[F1D2C(0 , 606)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_sm_i_jp1_k_pipe,&sm_i_jp1_k);
                        sm_i_jp1_kp1 = sm_buffer[F1D2C(0 , 92415)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_sm_i_jp1_kp1_pipe,&sm_i_jp1_kp1);
                        sm_im1_j_k = sm_buffer[F1D2C(0 , 302)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_sm_im1_j_k_pipe,&sm_im1_j_k);
                        sm_im1_j_kp1 = sm_buffer[F1D2C(0 , 92111)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_sm_im1_j_kp1_pipe,&sm_im1_j_kp1);
                        sm_ip1_j_k = sm_buffer[F1D2C(0 , 304)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_sm_ip1_j_k_pipe,&sm_ip1_j_k);
                        sm_ip1_j_kp1 = sm_buffer[F1D2C(0 , 92113)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_sm_ip1_j_kp1_pipe,&sm_ip1_j_kp1);
                        u_i_j_k = u_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_u_i_j_k_pipe,&u_i_j_k);
                        usum_i_j_k = usum_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_usum_i_j_k_pipe,&usum_i_j_k);
                        v_i_j_k = v_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_v_i_j_k_pipe,&v_i_j_k);
                        vsum_i_j_k = vsum_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_vsum_i_j_k_pipe,&vsum_i_j_k);
                        w_i_j_k = w_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_w_i_j_k_pipe,&w_i_j_k);
                        wsum_i_j_k = wsum_buffer[F1D2C(0 , 303)];
                        write_pipe_block(p0_les_3_smart_cache_p0_les_3_wsum_i_j_k_pipe,&wsum_i_j_k);
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_les_3() {

      const int nloop = 7645295;
      int idx;
      float diu3_im1_j_kp1;
      float diu3_i_j_kp1;
      float diu6_i_jm1_kp1;
      float diu6_i_j_kp1;
      float diu7_ip1_j_k;
      float diu7_i_j_k;
      float diu8_i_jp1_k;
      float diu8_i_j_k;
      float diu9_i_j_kp1;
      float diu9_i_j_k;
      float dx1_ip1;
      float dx1_i;
      float dx1_im1;
      float dy1_jp1;
      float dy1_j;
      float dy1_jm1;
      float dzn_kp1;
      float dzn_k;
      float evsx2;
      float evsx1;
      float evsy2;
      float evsy1;
      float evsz2;
      float evsz1;
      float h_i_j_k;
      int i;
      int j;
      int k;
      float sm_im1_j_kp1;
      float sm_im1_j_k;
      float sm_i_jm1_kp1;
      float sm_i_j_kp1;
      float sm_i_j_k;
      float sm_i_jp1_kp1;
      float sm_i_jp1_k;
      float sm_ip1_j_kp1;
      float sm_ip1_j_k;
      float sm_i_jm1_k;
      float vfw;
      float viswx2;
      float viswx1;
      float viswy2;
      float viswy1;
      float viswz2;
      float p0_les_3_smart_cache_p0_les_3_h_i_j_k_pipe;
      float p0_les_3_smart_cache_p0_les_3_sm_i_j_k_pipe;
      float p0_les_3_smart_cache_p0_les_3_dy1_jm1_pipe;
      float p0_les_3_smart_cache_p0_les_3_dzn_k_pipe;
      float p0_les_3_smart_cache_p0_les_3_diu3_i_j_kp1_pipe;
      float p0_les_3_smart_cache_p0_les_3_dx1_i_pipe;
      float p0_les_3_smart_cache_p0_les_3_diu7_ip1_j_k_pipe;
      float p0_les_3_smart_cache_p0_les_3_sm_i_jp1_kp1_pipe;
      float wsum_i_j_k;
      float p0_les_3_smart_cache_p0_les_3_sm_im1_j_kp1_pipe;
      float p0_les_3_smart_cache_p0_les_3_g_i_j_k_pipe;
      float g_i_j_k;
      float p0_les_3_smart_cache_p0_les_3_w_i_j_k_pipe;
      float v_i_j_k;
      float p0_les_3_smart_cache_p0_les_3_dx1_im1_pipe;
      float p0_les_3_smart_cache_p0_les_3_diu6_i_jm1_kp1_pipe;
      float p0_les_3_smart_cache_p0_les_3_sm_i_j_kp1_pipe;
      float p0_les_3_p0_adam_h_i_j_k_pipe;
      float f_i_j_k;
      float vsum_i_j_k;
      float p0_les_3_smart_cache_p0_les_3_sm_ip1_j_kp1_pipe;
      float p0_les_3_smart_cache_p0_les_3_fy_i_j_k_pipe;
      float p0_les_3_smart_cache_p0_les_3_usum_i_j_k_pipe;
      float p0_les_3_smart_cache_p0_les_3_u_i_j_k_pipe;
      float p0_les_3_smart_cache_p0_les_3_diu8_i_jp1_k_pipe;
      float p0_les_3_p0_adam_g_i_j_k_pipe;
      float p0_les_3_smart_cache_p0_les_3_sm_i_jp1_k_pipe;
      float w_i_j_k;
      float p0_les_3_smart_cache_p0_les_3_fx_i_j_k_pipe;
      float p0_les_3_smart_cache_p0_les_3_fz_i_j_k_pipe;
      float p0_les_3_smart_cache_p0_les_3_diu3_im1_j_kp1_pipe;
      float p0_les_3_smart_cache_p0_les_3_dzn_kp1_pipe;
      float p0_les_3_p0_adam_f_i_j_k_pipe;
      float p0_les_3_smart_cache_p0_les_3_sm_i_jm1_kp1_pipe;
      float p0_les_3_smart_cache_p0_les_3_sm_im1_j_k_pipe;
      float p0_les_3_smart_cache_p0_les_3_sm_i_jm1_k_pipe;
      float p0_les_3_smart_cache_p0_les_3_diu9_i_j_k_pipe;
      float p0_les_3_smart_cache_p0_les_3_wsum_i_j_k_pipe;
      float p0_les_3_smart_cache_p0_les_3_diu7_i_j_k_pipe;
      float usum_i_j_k;
      float p0_les_3_smart_cache_p0_les_3_diu9_i_j_kp1_pipe;
      float p0_les_3_smart_cache_p0_les_3_diu8_i_j_k_pipe;
      float fz_i_j_k;
      float u_i_j_k;
      float p0_les_3_smart_cache_p0_les_3_dx1_ip1_pipe;
      float p0_les_3_smart_cache_p0_les_3_v_i_j_k_pipe;
      float p0_les_3_smart_cache_p0_les_3_dy1_jp1_pipe;
      float p0_les_3_smart_cache_p0_les_3_diu6_i_j_kp1_pipe;
      float p0_les_3_smart_cache_p0_les_3_sm_ip1_j_k_pipe;
      float fx_i_j_k;
      float p0_les_3_smart_cache_p0_les_3_f_i_j_k_pipe;
      float p0_les_3_smart_cache_p0_les_3_vsum_i_j_k_pipe;
      float fy_i_j_k;
      float p0_les_3_smart_cache_p0_les_3_dy1_j_pipe;
      float viswz1;
    for (idx = 0;idx <= nloop;idx += 1) {
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_diu3_i_j_kp1_pipe,&diu3_i_j_kp1);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_diu3_im1_j_kp1_pipe,&diu3_im1_j_kp1);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_diu6_i_j_kp1_pipe,&diu6_i_j_kp1);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_diu6_i_jm1_kp1_pipe,&diu6_i_jm1_kp1);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_diu7_i_j_k_pipe,&diu7_i_j_k);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_diu7_ip1_j_k_pipe,&diu7_ip1_j_k);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_diu8_i_j_k_pipe,&diu8_i_j_k);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_diu8_i_jp1_k_pipe,&diu8_i_jp1_k);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_diu9_i_j_k_pipe,&diu9_i_j_k);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_diu9_i_j_kp1_pipe,&diu9_i_j_kp1);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_dx1_i_pipe,&dx1_i);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_dx1_im1_pipe,&dx1_im1);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_dx1_ip1_pipe,&dx1_ip1);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_dy1_j_pipe,&dy1_j);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_dy1_jm1_pipe,&dy1_jm1);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_dy1_jp1_pipe,&dy1_jp1);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_dzn_k_pipe,&dzn_k);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_dzn_kp1_pipe,&dzn_kp1);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_f_i_j_k_pipe,&f_i_j_k);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_fx_i_j_k_pipe,&fx_i_j_k);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_fy_i_j_k_pipe,&fy_i_j_k);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_fz_i_j_k_pipe,&fz_i_j_k);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_g_i_j_k_pipe,&g_i_j_k);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_h_i_j_k_pipe,&h_i_j_k);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_sm_i_j_k_pipe,&sm_i_j_k);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_sm_i_j_kp1_pipe,&sm_i_j_kp1);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_sm_i_jm1_k_pipe,&sm_i_jm1_k);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_sm_i_jm1_kp1_pipe,&sm_i_jm1_kp1);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_sm_i_jp1_k_pipe,&sm_i_jp1_k);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_sm_i_jp1_kp1_pipe,&sm_i_jp1_kp1);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_sm_im1_j_k_pipe,&sm_im1_j_k);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_sm_im1_j_kp1_pipe,&sm_im1_j_kp1);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_sm_ip1_j_k_pipe,&sm_ip1_j_k);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_sm_ip1_j_kp1_pipe,&sm_ip1_j_kp1);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_u_i_j_k_pipe,&u_i_j_k);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_usum_i_j_k_pipe,&usum_i_j_k);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_v_i_j_k_pipe,&v_i_j_k);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_vsum_i_j_k_pipe,&vsum_i_j_k);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_w_i_j_k_pipe,&w_i_j_k);
                read_pipe_block(p0_les_3_smart_cache_p0_les_3_wsum_i_j_k_pipe,&wsum_i_j_k);
                i = idx%304;
                j = idx/304%303;
                k = idx/92112;
        if ((i>=1)&&(i<=300)&&(j>=1)&&(j<=300)&&(k>=1)&&(k<=80)) {
                        evsz2 = sm_i_j_kp1;
                        evsz1 = sm_i_j_k;
                        evsx2 = (dzn_kp1*((dx1_ip1*sm_i_j_k+dx1_i*sm_ip1_j_k)/(dx1_i+dx1_ip1))+dzn_k*((dx1_ip1*sm_i_j_kp1+dx1_i*sm_ip1_j_kp1)/(dx1_i+dx1_ip1)))/(dzn_k+dzn_kp1);
                        evsx1 = (dzn_kp1*((dx1_i*sm_im1_j_k+dx1_im1*sm_i_j_k)/(dx1_im1+dx1_i))+dzn_k*((dx1_i*sm_im1_j_kp1+dx1_im1*sm_i_j_kp1)/(dx1_im1+dx1_i)))/(dzn_k+dzn_kp1);
                        evsy2 = (dzn_kp1*((dy1_jp1*sm_i_j_k+dy1_j*sm_i_jp1_k)/(dy1_j+dy1_jp1))+dzn_k*((dy1_jp1*sm_i_j_kp1+dy1_j*sm_i_jp1_kp1)/(dy1_j+dy1_jp1)))/(dzn_k+dzn_kp1);
                        evsy1 = (dzn_kp1*((dy1_j*sm_i_jm1_k+dy1_jm1*sm_i_j_k)/(dy1_jm1+dy1_j))+dzn_k*((dy1_j*sm_i_jm1_kp1+dy1_jm1*sm_i_j_kp1)/(dy1_jm1+dy1_j)))/(dzn_k+dzn_kp1);
                        viswx2 = (evsx2)*(diu3_i_j_kp1+diu7_ip1_j_k);
                        viswx1 = (evsx1)*(diu3_im1_j_kp1+diu7_i_j_k);
                        viswy2 = (evsy2)*(diu6_i_j_kp1+diu8_i_jp1_k);
                        viswy1 = (evsy1)*(diu6_i_jm1_kp1+diu8_i_j_k);
                        viswz2 = (evsz2)*2.*diu9_i_j_kp1;
                        viswz1 = (evsz1)*2.*diu9_i_j_k;
                        vfw = (viswx2-viswx1)/dx1_i+(viswy2-viswy1)/dy1_j+(viswz2-viswz1)/dzn_k;
                        h_i_j_k = h_i_j_k+vfw;
        }
                write_pipe_block(p0_les_3_p0_adam_f_i_j_k_pipe,&f_i_j_k);
                write_pipe_block(p0_les_3_p0_adam_g_i_j_k_pipe,&g_i_j_k);
                write_pipe_block(p0_les_3_p0_adam_h_i_j_k_pipe,&h_i_j_k);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_adam_fold_i_j_k_reader(__global float *fold) {

      float fold_i_j_k;
      int i;
      int j;
      int p0_adam_fold_i_j_k_reader_p0_adam_fold_i_j_k_pipe;
      int k;
    for (i = 1;i <= 80;i += 1) {
        for (j = 1;j <= 300;j += 1) {
            for (k = 1;k <= 300;k += 1) {
                                fold_i_j_k = fold[F3D2C(((300 - 1 )+1),((300 - 1 )+1) , 1,1,1 , i,j,k)];
                                write_pipe_block(p0_adam_fold_i_j_k_reader_p0_adam_fold_i_j_k_pipe,&fold_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_adam_gold_i_j_k_reader(__global float *gold) {

      float gold_i_j_k;
      int i;
      int j;
      float p0_adam_gold_i_j_k_reader_p0_adam_gold_i_j_k_pipe;
      int k;
    for (i = 1;i <= 80;i += 1) {
        for (j = 1;j <= 300;j += 1) {
            for (k = 1;k <= 300;k += 1) {
                                gold_i_j_k = gold[F3D2C(((300 - 1 )+1),((300 - 1 )+1) , 1,1,1 , i,j,k)];
                                write_pipe_block(p0_adam_gold_i_j_k_reader_p0_adam_gold_i_j_k_pipe,&gold_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_adam_hold_i_j_k_reader(__global float *hold) {

      float hold_i_j_k;
      int i;
      int j;
      float p0_adam_hold_i_j_k_reader_p0_adam_hold_i_j_k_pipe;
      int k;
    for (i = 1;i <= 80;i += 1) {
        for (j = 1;j <= 300;j += 1) {
            for (k = 1;k <= 300;k += 1) {
                                hold_i_j_k = hold[F3D2C(((300 - 1 )+1),((300 - 1 )+1) , 1,1,1 , i,j,k)];
                                write_pipe_block(p0_adam_hold_i_j_k_reader_p0_adam_hold_i_j_k_pipe,&hold_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_adam() {

      const int nloop = 7645295;
      int idx;
      float f_i_j_k;
      float fd;
      float gd;
      float hd;
      float fold_i_j_k;
      float g_i_j_k;
      float gold_i_j_k;
      float h_i_j_k;
      float hold_i_j_k;
      int i;
      int j;
      float usum_i_j_k;
      float p0_adam_p0_press_0_smart_cache_gold_i_j_k_pipe;
      float v_i_j_k;
      float p0_adam_p0_press_0_smart_cache_fold_i_j_k_pipe;
      float p0_adam_fold_i_j_k_reader_p0_adam_fold_i_j_k_pipe;
      float p0_adam_gold_i_j_k_reader_p0_adam_gold_i_j_k_pipe;
      float p0_adam_p0_press_0_smart_cache_usum_i_j_k_pipe;
      float p0_adam_p0_press_0_smart_cache_v_i_j_k_pipe;
      float p0_adam_p0_press_0_smart_cache_fx_i_j_k_pipe;
      float p0_les_3_p0_adam_f_i_j_k_pipe;
      float wsum_i_j_k;
      float p0_adam_p0_press_0_smart_cache_fy_i_j_k_pipe;
      float p0_adam_p0_press_0_smart_cache_hold_i_j_k_pipe;
      float fy_i_j_k;
      float w_i_j_k;
      float p0_les_3_p0_adam_g_i_j_k_pipe;
      float p0_adam_p0_press_0_smart_cache_h_i_j_k_pipe;
      float p0_adam_p0_press_0_smart_cache_fz_i_j_k_pipe;
      float p0_adam_hold_i_j_k_reader_p0_adam_hold_i_j_k_pipe;
      float fx_i_j_k;
      float p0_adam_p0_press_0_smart_cache_u_i_j_k_pipe;
      float p0_les_3_p0_adam_h_i_j_k_pipe;
      float p0_adam_p0_press_0_smart_cache_g_i_j_k_pipe;
      float u_i_j_k;
      float fz_i_j_k;
      float p0_adam_p0_press_0_smart_cache_vsum_i_j_k_pipe;
      float p0_adam_p0_press_0_smart_cache_wsum_i_j_k_pipe;
      float vsum_i_j_k;
      float p0_adam_p0_press_0_smart_cache_f_i_j_k_pipe;
      float p0_adam_p0_press_0_smart_cache_w_i_j_k_pipe;
      int k;
    for (idx = 0;idx <= nloop;idx += 1) {
                read_pipe_block(p0_les_3_p0_adam_f_i_j_k_pipe,&f_i_j_k);
                read_pipe_block(p0_adam_fold_i_j_k_reader_p0_adam_fold_i_j_k_pipe,&fold_i_j_k);
                read_pipe_block(p0_les_3_p0_adam_g_i_j_k_pipe,&g_i_j_k);
                read_pipe_block(p0_adam_gold_i_j_k_reader_p0_adam_gold_i_j_k_pipe,&gold_i_j_k);
                read_pipe_block(p0_les_3_p0_adam_h_i_j_k_pipe,&h_i_j_k);
                read_pipe_block(p0_adam_hold_i_j_k_reader_p0_adam_hold_i_j_k_pipe,&hold_i_j_k);
                i = idx%304;
                j = idx/304%303;
                k = idx/92112;
        if ((i>=1)&&(i<=300)&&(j>=1)&&(j<=300)&&(k>=1)&&(k<=80)) {
                        fd = f_i_j_k;
                        gd = g_i_j_k;
                        hd = h_i_j_k;
                        f_i_j_k = 1.5*f_i_j_k-0.5*fold_i_j_k;
                        g_i_j_k = 1.5*g_i_j_k-0.5*gold_i_j_k;
                        h_i_j_k = 1.5*h_i_j_k-0.5*hold_i_j_k;
                        fold_i_j_k = fd;
                        gold_i_j_k = gd;
                        hold_i_j_k = hd;
        }
                write_pipe_block(p0_adam_p0_press_0_smart_cache_f_i_j_k_pipe,&f_i_j_k);
                write_pipe_block(p0_adam_p0_press_0_smart_cache_fold_i_j_k_pipe,&fold_i_j_k);
                write_pipe_block(p0_adam_p0_press_0_smart_cache_fx_i_j_k_pipe,&fx_i_j_k);
                write_pipe_block(p0_adam_p0_press_0_smart_cache_fy_i_j_k_pipe,&fy_i_j_k);
                write_pipe_block(p0_adam_p0_press_0_smart_cache_fz_i_j_k_pipe,&fz_i_j_k);
                write_pipe_block(p0_adam_p0_press_0_smart_cache_g_i_j_k_pipe,&g_i_j_k);
                write_pipe_block(p0_adam_p0_press_0_smart_cache_gold_i_j_k_pipe,&gold_i_j_k);
                write_pipe_block(p0_adam_p0_press_0_smart_cache_h_i_j_k_pipe,&h_i_j_k);
                write_pipe_block(p0_adam_p0_press_0_smart_cache_hold_i_j_k_pipe,&hold_i_j_k);
                write_pipe_block(p0_adam_p0_press_0_smart_cache_u_i_j_k_pipe,&u_i_j_k);
                write_pipe_block(p0_adam_p0_press_0_smart_cache_usum_i_j_k_pipe,&usum_i_j_k);
                write_pipe_block(p0_adam_p0_press_0_smart_cache_v_i_j_k_pipe,&v_i_j_k);
                write_pipe_block(p0_adam_p0_press_0_smart_cache_vsum_i_j_k_pipe,&vsum_i_j_k);
                write_pipe_block(p0_adam_p0_press_0_smart_cache_w_i_j_k_pipe,&w_i_j_k);
                write_pipe_block(p0_adam_p0_press_0_smart_cache_wsum_i_j_k_pipe,&wsum_i_j_k);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_press_0_dx1_i_reader(__global float *dx1) {

      float dx1_i;
      int p0_press_0_dx1_i_reader_p0_press_0_dx1_i_pipe;
      int i;
    for (i = -1;i <= 301;i += 1) {
                dx1_i = dx1[F1D2C(-1 , i)];
                write_pipe_block(p0_press_0_dx1_i_reader_p0_press_0_dx1_i_pipe,&dx1_i);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_press_0_dy1_j_reader(__global float *dy1) {

      float dy1_j;
      float p0_press_0_dy1_j_reader_p0_press_0_dy1_j_pipe;
      int i;
    for (i = 0;i <= 301;i += 1) {
                dy1_j = dy1[F1D2C(0 , i)];
                write_pipe_block(p0_press_0_dy1_j_reader_p0_press_0_dy1_j_pipe,&dy1_j);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_press_0_dzn_k_reader(__global float *dzn) {

      float dzn_k;
      float p0_press_0_dzn_k_reader_p0_press_0_dzn_k_pipe;
      int i;
    for (i = -1;i <= 82;i += 1) {
                dzn_k = dzn[F1D2C(-1 , i)];
                write_pipe_block(p0_press_0_dzn_k_reader_p0_press_0_dzn_k_pipe,&dzn_k);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_press_0_rhs_i_j_k_reader(__global float *rhs) {

      float rhs_i_j_k;
      int i;
      int j;
      int p0_press_0_rhs_i_j_k_reader_p0_press_0_rhs_i_j_k_pipe;
      int k;
    for (i = 0;i <= 81;i += 1) {
        for (j = 0;j <= 301;j += 1) {
            for (k = 0;k <= 301;k += 1) {
                                rhs_i_j_k = rhs[F3D2C(((301 - 0 )+1),((301 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p0_press_0_rhs_i_j_k_reader_p0_press_0_rhs_i_j_k_pipe,&rhs_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_press_0_smart_cache() {

      float fx_read_in;
      float fy_read_in;
      float fz_read_in;
      float usum_read_in;
      float vsum_read_in;
      float wsum_read_in;
      float fold_read_in;
      float gold_read_in;
      float hold_read_in;
      float f_read_in;
      float g_read_in;
      float h_read_in;
      float u_read_in;
      float v_read_in;
      float w_read_in;
      float fx_buffer[91507];
      float fy_buffer[91507];
      float fz_buffer[91507];
      float usum_buffer[91507];
      float vsum_buffer[91507];
      float wsum_buffer[91507];
      float fold_buffer[91507];
      float gold_buffer[91507];
      float hold_buffer[91507];
      float f_buffer[91507];
      float g_buffer[91507];
      float h_buffer[91507];
      float u_buffer[91507];
      float v_buffer[91507];
      float w_buffer[91507];
      float fx_i_j_k;
      float fy_i_j_k;
      float fz_i_j_k;
      float usum_i_j_k;
      float vsum_i_j_k;
      float wsum_i_j_k;
      float fold_i_j_k;
      float gold_i_j_k;
      float hold_i_j_k;
      float f_i_j_k;
      float f_im1_j_k;
      float g_i_j_k;
      float g_i_jm1_k;
      float h_i_j_k;
      float h_i_j_km1;
      float u_i_j_k;
      float u_im1_j_k;
      float v_i_j_k;
      float v_i_jm1_k;
      float w_i_j_k;
      float w_i_j_km1;
      int i;
      int count;
      int compindex;
      const int nloop = 7645295;
      const int smartcachesize = 91507;
      const int maxpositiveoffset = 0;
      const int maxnegativeoffset = 91506;
      float p0_adam_p0_press_0_smart_cache_fx_i_j_k_pipe;
      float p0_press_0_smart_cache_p0_press_0_usum_i_j_k_pipe;
      float p0_press_0_smart_cache_p0_press_0_u_im1_j_k_pipe;
      float p0_press_0_smart_cache_p0_press_0_w_i_j_k_pipe;
      float p0_press_0_smart_cache_p0_press_0_fold_i_j_k_pipe;
      float p0_press_0_smart_cache_p0_press_0_v_i_j_k_pipe;
      float p0_press_0_smart_cache_p0_press_0_f_i_j_k_pipe;
      float p0_adam_p0_press_0_smart_cache_gold_i_j_k_pipe;
      float p0_press_0_smart_cache_p0_press_0_u_i_j_k_pipe;
      float p0_adam_p0_press_0_smart_cache_fold_i_j_k_pipe;
      float p0_press_0_smart_cache_p0_press_0_g_i_jm1_k_pipe;
      float p0_press_0_smart_cache_p0_press_0_fz_i_j_k_pipe;
      float p0_press_0_smart_cache_p0_press_0_h_i_j_km1_pipe;
      float p0_adam_p0_press_0_smart_cache_usum_i_j_k_pipe;
      float p0_adam_p0_press_0_smart_cache_v_i_j_k_pipe;
      float p0_press_0_smart_cache_p0_press_0_fy_i_j_k_pipe;
      float p0_press_0_smart_cache_p0_press_0_fx_i_j_k_pipe;
      float p0_adam_p0_press_0_smart_cache_g_i_j_k_pipe;
      float p0_adam_p0_press_0_smart_cache_vsum_i_j_k_pipe;
      float p0_adam_p0_press_0_smart_cache_wsum_i_j_k_pipe;
      float p0_adam_p0_press_0_smart_cache_f_i_j_k_pipe;
      float p0_press_0_smart_cache_p0_press_0_gold_i_j_k_pipe;
      float p0_press_0_smart_cache_p0_press_0_g_i_j_k_pipe;
      float p0_adam_p0_press_0_smart_cache_w_i_j_k_pipe;
      float p0_press_0_smart_cache_p0_press_0_w_i_j_km1_pipe;
      float p0_press_0_smart_cache_p0_press_0_wsum_i_j_k_pipe;
      float p0_press_0_smart_cache_p0_press_0_v_i_jm1_k_pipe;
      float p0_adam_p0_press_0_smart_cache_fy_i_j_k_pipe;
      float p0_adam_p0_press_0_smart_cache_hold_i_j_k_pipe;
      float p0_adam_p0_press_0_smart_cache_h_i_j_k_pipe;
      float p0_press_0_smart_cache_p0_press_0_f_im1_j_k_pipe;
      float p0_adam_p0_press_0_smart_cache_fz_i_j_k_pipe;
      float p0_press_0_smart_cache_p0_press_0_hold_i_j_k_pipe;
      float p0_press_0_smart_cache_p0_press_0_vsum_i_j_k_pipe;
      float p0_press_0_smart_cache_p0_press_0_h_i_j_k_pipe;
      float p0_adam_p0_press_0_smart_cache_u_i_j_k_pipe;
      const int driverloopsize = 7645296;
    for (count = 0;count <= nloop;count += 1) {
                compindex = count-maxpositiveoffset;
                
#pragma unroll
        for (i = 0;i <= smartcachesize-2;i += 1) {
                        fx_buffer[F1D2C(0 , i)] = fx_buffer[F1D2C(0 , i+1)];
                        fy_buffer[F1D2C(0 , i)] = fy_buffer[F1D2C(0 , i+1)];
                        fz_buffer[F1D2C(0 , i)] = fz_buffer[F1D2C(0 , i+1)];
                        usum_buffer[F1D2C(0 , i)] = usum_buffer[F1D2C(0 , i+1)];
                        vsum_buffer[F1D2C(0 , i)] = vsum_buffer[F1D2C(0 , i+1)];
                        wsum_buffer[F1D2C(0 , i)] = wsum_buffer[F1D2C(0 , i+1)];
                        fold_buffer[F1D2C(0 , i)] = fold_buffer[F1D2C(0 , i+1)];
                        gold_buffer[F1D2C(0 , i)] = gold_buffer[F1D2C(0 , i+1)];
                        hold_buffer[F1D2C(0 , i)] = hold_buffer[F1D2C(0 , i+1)];
                        f_buffer[F1D2C(0 , i)] = f_buffer[F1D2C(0 , i+1)];
                        g_buffer[F1D2C(0 , i)] = g_buffer[F1D2C(0 , i+1)];
                        h_buffer[F1D2C(0 , i)] = h_buffer[F1D2C(0 , i+1)];
                        u_buffer[F1D2C(0 , i)] = u_buffer[F1D2C(0 , i+1)];
                        v_buffer[F1D2C(0 , i)] = v_buffer[F1D2C(0 , i+1)];
                        w_buffer[F1D2C(0 , i)] = w_buffer[F1D2C(0 , i+1)];
        }
        if (count<=driverloopsize) {
                        read_pipe_block(p0_adam_p0_press_0_smart_cache_f_i_j_k_pipe,&f_read_in);
                        f_buffer[F1D2C(0 , 91506)] = f_read_in;
                        read_pipe_block(p0_adam_p0_press_0_smart_cache_fold_i_j_k_pipe,&fold_read_in);
                        fold_buffer[F1D2C(0 , 91506)] = fold_read_in;
                        read_pipe_block(p0_adam_p0_press_0_smart_cache_fx_i_j_k_pipe,&fx_read_in);
                        fx_buffer[F1D2C(0 , 91506)] = fx_read_in;
                        read_pipe_block(p0_adam_p0_press_0_smart_cache_fy_i_j_k_pipe,&fy_read_in);
                        fy_buffer[F1D2C(0 , 91506)] = fy_read_in;
                        read_pipe_block(p0_adam_p0_press_0_smart_cache_fz_i_j_k_pipe,&fz_read_in);
                        fz_buffer[F1D2C(0 , 91506)] = fz_read_in;
                        read_pipe_block(p0_adam_p0_press_0_smart_cache_g_i_j_k_pipe,&g_read_in);
                        g_buffer[F1D2C(0 , 91506)] = g_read_in;
                        read_pipe_block(p0_adam_p0_press_0_smart_cache_gold_i_j_k_pipe,&gold_read_in);
                        gold_buffer[F1D2C(0 , 91506)] = gold_read_in;
                        read_pipe_block(p0_adam_p0_press_0_smart_cache_h_i_j_k_pipe,&h_read_in);
                        h_buffer[F1D2C(0 , 91506)] = h_read_in;
                        read_pipe_block(p0_adam_p0_press_0_smart_cache_hold_i_j_k_pipe,&hold_read_in);
                        hold_buffer[F1D2C(0 , 91506)] = hold_read_in;
                        read_pipe_block(p0_adam_p0_press_0_smart_cache_u_i_j_k_pipe,&u_read_in);
                        u_buffer[F1D2C(0 , 91506)] = u_read_in;
                        read_pipe_block(p0_adam_p0_press_0_smart_cache_usum_i_j_k_pipe,&usum_read_in);
                        usum_buffer[F1D2C(0 , 91506)] = usum_read_in;
                        read_pipe_block(p0_adam_p0_press_0_smart_cache_v_i_j_k_pipe,&v_read_in);
                        v_buffer[F1D2C(0 , 91506)] = v_read_in;
                        read_pipe_block(p0_adam_p0_press_0_smart_cache_vsum_i_j_k_pipe,&vsum_read_in);
                        vsum_buffer[F1D2C(0 , 91506)] = vsum_read_in;
                        read_pipe_block(p0_adam_p0_press_0_smart_cache_w_i_j_k_pipe,&w_read_in);
                        w_buffer[F1D2C(0 , 91506)] = w_read_in;
                        read_pipe_block(p0_adam_p0_press_0_smart_cache_wsum_i_j_k_pipe,&wsum_read_in);
                        wsum_buffer[F1D2C(0 , 91506)] = wsum_read_in;
        }
        if (compindex>=0) {
                        f_i_j_k = f_buffer[F1D2C(0 , 91506)];
                        write_pipe_block(p0_press_0_smart_cache_p0_press_0_f_i_j_k_pipe,&f_i_j_k);
                        f_im1_j_k = f_buffer[F1D2C(0 , 91505)];
                        write_pipe_block(p0_press_0_smart_cache_p0_press_0_f_im1_j_k_pipe,&f_im1_j_k);
                        fold_i_j_k = fold_buffer[F1D2C(0 , 91506)];
                        write_pipe_block(p0_press_0_smart_cache_p0_press_0_fold_i_j_k_pipe,&fold_i_j_k);
                        fx_i_j_k = fx_buffer[F1D2C(0 , 91506)];
                        write_pipe_block(p0_press_0_smart_cache_p0_press_0_fx_i_j_k_pipe,&fx_i_j_k);
                        fy_i_j_k = fy_buffer[F1D2C(0 , 91506)];
                        write_pipe_block(p0_press_0_smart_cache_p0_press_0_fy_i_j_k_pipe,&fy_i_j_k);
                        fz_i_j_k = fz_buffer[F1D2C(0 , 91506)];
                        write_pipe_block(p0_press_0_smart_cache_p0_press_0_fz_i_j_k_pipe,&fz_i_j_k);
                        g_i_j_k = g_buffer[F1D2C(0 , 91506)];
                        write_pipe_block(p0_press_0_smart_cache_p0_press_0_g_i_j_k_pipe,&g_i_j_k);
                        g_i_jm1_k = g_buffer[F1D2C(0 , 91205)];
                        write_pipe_block(p0_press_0_smart_cache_p0_press_0_g_i_jm1_k_pipe,&g_i_jm1_k);
                        gold_i_j_k = gold_buffer[F1D2C(0 , 91506)];
                        write_pipe_block(p0_press_0_smart_cache_p0_press_0_gold_i_j_k_pipe,&gold_i_j_k);
                        h_i_j_k = h_buffer[F1D2C(0 , 91506)];
                        write_pipe_block(p0_press_0_smart_cache_p0_press_0_h_i_j_k_pipe,&h_i_j_k);
                        h_i_j_km1 = h_buffer[F1D2C(0 , 905)];
                        write_pipe_block(p0_press_0_smart_cache_p0_press_0_h_i_j_km1_pipe,&h_i_j_km1);
                        hold_i_j_k = hold_buffer[F1D2C(0 , 91506)];
                        write_pipe_block(p0_press_0_smart_cache_p0_press_0_hold_i_j_k_pipe,&hold_i_j_k);
                        u_i_j_k = u_buffer[F1D2C(0 , 91506)];
                        write_pipe_block(p0_press_0_smart_cache_p0_press_0_u_i_j_k_pipe,&u_i_j_k);
                        u_im1_j_k = u_buffer[F1D2C(0 , 91505)];
                        write_pipe_block(p0_press_0_smart_cache_p0_press_0_u_im1_j_k_pipe,&u_im1_j_k);
                        usum_i_j_k = usum_buffer[F1D2C(0 , 91506)];
                        write_pipe_block(p0_press_0_smart_cache_p0_press_0_usum_i_j_k_pipe,&usum_i_j_k);
                        v_i_j_k = v_buffer[F1D2C(0 , 91506)];
                        write_pipe_block(p0_press_0_smart_cache_p0_press_0_v_i_j_k_pipe,&v_i_j_k);
                        v_i_jm1_k = v_buffer[F1D2C(0 , 91204)];
                        write_pipe_block(p0_press_0_smart_cache_p0_press_0_v_i_jm1_k_pipe,&v_i_jm1_k);
                        vsum_i_j_k = vsum_buffer[F1D2C(0 , 91506)];
                        write_pipe_block(p0_press_0_smart_cache_p0_press_0_vsum_i_j_k_pipe,&vsum_i_j_k);
                        w_i_j_k = w_buffer[F1D2C(0 , 91506)];
                        write_pipe_block(p0_press_0_smart_cache_p0_press_0_w_i_j_k_pipe,&w_i_j_k);
                        w_i_j_km1 = w_buffer[F1D2C(0 , 0)];
                        write_pipe_block(p0_press_0_smart_cache_p0_press_0_w_i_j_km1_pipe,&w_i_j_km1);
                        wsum_i_j_k = wsum_buffer[F1D2C(0 , 91506)];
                        write_pipe_block(p0_press_0_smart_cache_p0_press_0_wsum_i_j_k_pipe,&wsum_i_j_k);
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_press_0(float dt) {

      const int nloop = 7645295;
      int idx;
      float dx1_i;
      float dy1_j;
      float dzn_k;
      float f_i_j_k;
      float f_im1_j_k;
      float g_i_j_k;
      float g_i_jm1_k;
      float h_i_j_k;
      float h_i_j_km1;
      int i;
      int j;
      int k;
      float rhs_i_j_k;
      float u_i_j_k;
      float u_im1_j_k;
      float v_i_j_k;
      float v_i_jm1_k;
      float w_i_j_k;
      float fy_i_j_k;
      float hold_i_j_k;
      int p0_press_0_smart_cache_p0_press_0_hold_i_j_k_pipe;
      int p0_press_0_smart_cache_p0_press_0_f_im1_j_k_pipe;
      int p0_press_0_dx1_i_reader_p0_press_0_dx1_i_pipe;
      float fx_i_j_k;
      int p0_press_0_smart_cache_p0_press_0_vsum_i_j_k_pipe;
      int p0_press_0_smart_cache_p0_press_0_h_i_j_k_pipe;
      int p0_press_0_dy1_j_reader_p0_press_0_dy1_j_pipe;
      int p0_press_0_smart_cache_p0_press_0_fy_i_j_k_pipe;
      int p0_press_0_rhs_i_j_k_reader_p0_press_0_rhs_i_j_k_pipe;
      float vsum_i_j_k;
      int p0_press_0_smart_cache_p0_press_0_fx_i_j_k_pipe;
      float gold_i_j_k;
      float fz_i_j_k;
      int p0_press_0_smart_cache_p0_press_0_g_i_j_k_pipe;
      int p0_press_0_p0_press_1_rhs_i_j_k_pipe;
      int p0_press_0_smart_cache_p0_press_0_gold_i_j_k_pipe;
      int p0_press_0_smart_cache_p0_press_0_v_i_jm1_k_pipe;
      int p0_press_0_smart_cache_p0_press_0_wsum_i_j_k_pipe;
      int p0_press_0_smart_cache_p0_press_0_w_i_j_km1_pipe;
      int p0_press_0_smart_cache_p0_press_0_f_i_j_k_pipe;
      float usum_i_j_k;
      int p0_press_0_smart_cache_p0_press_0_v_i_j_k_pipe;
      float fold_i_j_k;
      int p0_press_0_smart_cache_p0_press_0_g_i_jm1_k_pipe;
      int p0_press_0_smart_cache_p0_press_0_u_i_j_k_pipe;
      int p0_press_0_dzn_k_reader_p0_press_0_dzn_k_pipe;
      int p0_press_0_smart_cache_p0_press_0_fz_i_j_k_pipe;
      int p0_press_0_smart_cache_p0_press_0_h_i_j_km1_pipe;
      int p0_press_0_smart_cache_p0_press_0_usum_i_j_k_pipe;
      int p0_press_0_smart_cache_p0_press_0_u_im1_j_k_pipe;
      float wsum_i_j_k;
      int p0_press_0_smart_cache_p0_press_0_w_i_j_k_pipe;
      int p0_press_0_smart_cache_p0_press_0_fold_i_j_k_pipe;
      float w_i_j_km1;
    for (idx = 0;idx <= nloop;idx += 1) {
                read_pipe_block(p0_press_0_dx1_i_reader_p0_press_0_dx1_i_pipe,&dx1_i);
                read_pipe_block(p0_press_0_dy1_j_reader_p0_press_0_dy1_j_pipe,&dy1_j);
                read_pipe_block(p0_press_0_dzn_k_reader_p0_press_0_dzn_k_pipe,&dzn_k);
                read_pipe_block(p0_press_0_smart_cache_p0_press_0_f_i_j_k_pipe,&f_i_j_k);
                read_pipe_block(p0_press_0_smart_cache_p0_press_0_f_im1_j_k_pipe,&f_im1_j_k);
                read_pipe_block(p0_press_0_smart_cache_p0_press_0_fold_i_j_k_pipe,&fold_i_j_k);
                read_pipe_block(p0_press_0_smart_cache_p0_press_0_fx_i_j_k_pipe,&fx_i_j_k);
                read_pipe_block(p0_press_0_smart_cache_p0_press_0_fy_i_j_k_pipe,&fy_i_j_k);
                read_pipe_block(p0_press_0_smart_cache_p0_press_0_fz_i_j_k_pipe,&fz_i_j_k);
                read_pipe_block(p0_press_0_smart_cache_p0_press_0_g_i_j_k_pipe,&g_i_j_k);
                read_pipe_block(p0_press_0_smart_cache_p0_press_0_g_i_jm1_k_pipe,&g_i_jm1_k);
                read_pipe_block(p0_press_0_smart_cache_p0_press_0_gold_i_j_k_pipe,&gold_i_j_k);
                read_pipe_block(p0_press_0_smart_cache_p0_press_0_h_i_j_k_pipe,&h_i_j_k);
                read_pipe_block(p0_press_0_smart_cache_p0_press_0_h_i_j_km1_pipe,&h_i_j_km1);
                read_pipe_block(p0_press_0_smart_cache_p0_press_0_hold_i_j_k_pipe,&hold_i_j_k);
                read_pipe_block(p0_press_0_rhs_i_j_k_reader_p0_press_0_rhs_i_j_k_pipe,&rhs_i_j_k);
                read_pipe_block(p0_press_0_smart_cache_p0_press_0_u_i_j_k_pipe,&u_i_j_k);
                read_pipe_block(p0_press_0_smart_cache_p0_press_0_u_im1_j_k_pipe,&u_im1_j_k);
                read_pipe_block(p0_press_0_smart_cache_p0_press_0_usum_i_j_k_pipe,&usum_i_j_k);
                read_pipe_block(p0_press_0_smart_cache_p0_press_0_v_i_j_k_pipe,&v_i_j_k);
                read_pipe_block(p0_press_0_smart_cache_p0_press_0_v_i_jm1_k_pipe,&v_i_jm1_k);
                read_pipe_block(p0_press_0_smart_cache_p0_press_0_vsum_i_j_k_pipe,&vsum_i_j_k);
                read_pipe_block(p0_press_0_smart_cache_p0_press_0_w_i_j_k_pipe,&w_i_j_k);
                read_pipe_block(p0_press_0_smart_cache_p0_press_0_w_i_j_km1_pipe,&w_i_j_km1);
                read_pipe_block(p0_press_0_smart_cache_p0_press_0_wsum_i_j_k_pipe,&wsum_i_j_k);
                i = idx%304;
                j = idx/304%303;
                k = idx/92112;
        if ((i>=1)&&(i<=300)&&(j>=1)&&(j<=300)&&(k>=1)&&(k<=80)) {
                        rhs_i_j_k = (-u_im1_j_k+u_i_j_k)/dx1_i+(-v_i_jm1_k+v_i_j_k)/dy1_j+(-w_i_j_km1+w_i_j_k)/dzn_k;
                        rhs_i_j_k = (f_i_j_k-f_im1_j_k)/dx1_i+(g_i_j_k-g_i_jm1_k)/dy1_j+(h_i_j_k-h_i_j_km1)/dzn_k+rhs_i_j_k/dt;
        }
                write_pipe_block(p0_press_0_p0_press_1_rhs_i_j_k_pipe,&rhs_i_j_k);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_press_1_dx1_i_reader(__global float *dx1) {

      float dx1_i;
      int p0_press_1_dx1_i_reader_p0_press_1_dx1_i_pipe;
      int i;
    for (i = -1;i <= 301;i += 1) {
                dx1_i = dx1[F1D2C(-1 , i)];
                write_pipe_block(p0_press_1_dx1_i_reader_p0_press_1_dx1_i_pipe,&dx1_i);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_press_1_dy1_j_reader(__global float *dy1) {

      float dy1_j;
      int p0_press_1_dy1_j_reader_p0_press_1_dy1_j_pipe;
      int i;
    for (i = 0;i <= 301;i += 1) {
                dy1_j = dy1[F1D2C(0 , i)];
                write_pipe_block(p0_press_1_dy1_j_reader_p0_press_1_dy1_j_pipe,&dy1_j);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_press_1_dzn_k_reader(__global float *dzn) {

      float dzn_k;
      float p0_press_1_dzn_k_reader_p0_press_1_dzn_k_pipe;
      int i;
    for (i = -1;i <= 82;i += 1) {
                dzn_k = dzn[F1D2C(-1 , i)];
                write_pipe_block(p0_press_1_dzn_k_reader_p0_press_1_dzn_k_pipe,&dzn_k);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_press_1() {

      const int nloop = 7645295;
      int idx;
      float dx1_i;
      float dy1_j;
      float dzn_k;
      int i;
      int j;
      int k;
      float rhs_i_j_k;
      float rhsav;
      float hold_i_j_k;
      float fy_i_j_k;
      float w_i_j_k;
      int p0_press_1_p0_press_2_gold_i_j_k_pipe;
      int p0_press_1_p0_press_2_f_i_j_k_pipe;
      int p0_press_1_p0_press_2_wsum_i_j_k_pipe;
      int p0_press_1_dzn_k_reader_p0_press_1_dzn_k_pipe;
      int p0_press_1_p0_press_2_area_pipe;
      int p0_press_1_p0_press_2_vsum_i_j_k_pipe;
      float fx_i_j_k;
      int p0_press_1_p0_press_2_g_i_j_k_pipe;
      float fz_i_j_k;
      float u_i_j_k;
      float f_i_j_k;
      float gold_i_j_k;
      int p0_press_1_p0_press_2_fold_i_j_k_pipe;
      float vsum_i_j_k;
      int p0_press_0_p0_press_1_rhs_i_j_k_pipe;
      int p0_press_1_p0_press_2_fz_i_j_k_pipe;
      int p0_press_1_p0_press_2_fy_i_j_k_pipe;
      int p0_press_1_p0_press_2_v_i_j_k_pipe;
      float g_i_j_k;
      float fold_i_j_k;
      int p0_press_1_dy1_j_reader_p0_press_1_dy1_j_pipe;
      int p0_press_1_p0_press_2_h_i_j_k_pipe;
      float usum_i_j_k;
      float v_i_j_k;
      int p0_press_1_p0_press_2_w_i_j_k_pipe;
      int p0_press_1_dx1_i_reader_p0_press_1_dx1_i_pipe;
      int p0_press_1_p0_press_2_hold_i_j_k_pipe;
      float wsum_i_j_k;
      int p0_press_1_p0_press_2_rhs_i_j_k_pipe;
      float h_i_j_k;
      int p0_press_1_p0_press_2_fx_i_j_k_pipe;
      int p0_press_1_p0_press_2_usum_i_j_k_pipe;
      int p0_press_1_p0_press_2_u_i_j_k_pipe;
      int p0_press_1_p0_press_2_rhsav_pipe;
      float area;
    for (idx = 0;idx <= nloop;idx += 1) {
                read_pipe_block(p0_press_1_dx1_i_reader_p0_press_1_dx1_i_pipe,&dx1_i);
                read_pipe_block(p0_press_1_dy1_j_reader_p0_press_1_dy1_j_pipe,&dy1_j);
                read_pipe_block(p0_press_1_dzn_k_reader_p0_press_1_dzn_k_pipe,&dzn_k);
                read_pipe_block(p0_press_0_p0_press_1_rhs_i_j_k_pipe,&rhs_i_j_k);
                rhsav = 0.0;
                area = 0.0;
                i = idx%304;
                j = idx/304%303;
                k = idx/92112;
        if ((i>=1)&&(i<=300)&&(j>=1)&&(j<=300)&&(k>=1)&&(k<=80)) {
                        rhsav = rhsav+dx1_i*dy1_j*dzn_k*rhs_i_j_k;
                        area = area+dx1_i*dy1_j*dzn_k;
        }
    }
    for (idx = 0;idx <= nloop;idx += 1) {
                write_pipe_block(p0_press_1_p0_press_2_area_pipe,&area);
                write_pipe_block(p0_press_1_p0_press_2_f_i_j_k_pipe,&f_i_j_k);
                write_pipe_block(p0_press_1_p0_press_2_fold_i_j_k_pipe,&fold_i_j_k);
                write_pipe_block(p0_press_1_p0_press_2_fx_i_j_k_pipe,&fx_i_j_k);
                write_pipe_block(p0_press_1_p0_press_2_fy_i_j_k_pipe,&fy_i_j_k);
                write_pipe_block(p0_press_1_p0_press_2_fz_i_j_k_pipe,&fz_i_j_k);
                write_pipe_block(p0_press_1_p0_press_2_g_i_j_k_pipe,&g_i_j_k);
                write_pipe_block(p0_press_1_p0_press_2_gold_i_j_k_pipe,&gold_i_j_k);
                write_pipe_block(p0_press_1_p0_press_2_h_i_j_k_pipe,&h_i_j_k);
                write_pipe_block(p0_press_1_p0_press_2_hold_i_j_k_pipe,&hold_i_j_k);
                write_pipe_block(p0_press_1_p0_press_2_rhs_i_j_k_pipe,&rhs_i_j_k);
                write_pipe_block(p0_press_1_p0_press_2_rhsav_pipe,&rhsav);
                write_pipe_block(p0_press_1_p0_press_2_u_i_j_k_pipe,&u_i_j_k);
                write_pipe_block(p0_press_1_p0_press_2_usum_i_j_k_pipe,&usum_i_j_k);
                write_pipe_block(p0_press_1_p0_press_2_v_i_j_k_pipe,&v_i_j_k);
                write_pipe_block(p0_press_1_p0_press_2_vsum_i_j_k_pipe,&vsum_i_j_k);
                write_pipe_block(p0_press_1_p0_press_2_w_i_j_k_pipe,&w_i_j_k);
                write_pipe_block(p0_press_1_p0_press_2_wsum_i_j_k_pipe,&wsum_i_j_k);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_press_2() {

      const int nloop = 7645295;
      int idx;
      int i;
      int j;
      int k;
      float rhs_i_j_k;
      float rhsav;
      float f_i_j_k;
      int p0_press_2_p0_press_2_output_writer_fold_i_j_k_pipe;
      float vsum_i_j_k;
      int p0_press_1_p0_press_2_v_i_j_k_pipe;
      int p0_press_1_p0_press_2_fy_i_j_k_pipe;
      int p0_press_1_p0_press_2_gold_i_j_k_pipe;
      float w_i_j_k;
      int p0_press_2_p0_press_2_output_writer_fx_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_h_i_j_k_pipe;
      int p0_press_1_p0_press_2_area_pipe;
      int p0_press_2_p0_press_2_output_writer_hold_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_w_i_j_k_pipe;
      int p0_press_1_p0_press_2_hold_i_j_k_pipe;
      float h_i_j_k;
      float wsum_i_j_k;
      int p0_press_2_p0_press_2_output_writer_v_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_fz_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_wsum_i_j_k_pipe;
      float g_i_j_k;
      float v_i_j_k;
      int p0_press_2_p0_press_2_output_writer_fy_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_u_i_j_k_pipe;
      float gold_i_j_k;
      float u_i_j_k;
      float fz_i_j_k;
      int p0_press_2_p0_press_2_output_writer_vsum_i_j_k_pipe;
      int p0_press_1_p0_press_2_fold_i_j_k_pipe;
      int p0_press_1_p0_press_2_g_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_rhs_i_j_k_pipe;
      int p0_press_1_p0_press_2_fz_i_j_k_pipe;
      int p0_press_1_p0_press_2_f_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_gold_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_g_i_j_k_pipe;
      float fy_i_j_k;
      float hold_i_j_k;
      int p0_press_1_p0_press_2_vsum_i_j_k_pipe;
      float fx_i_j_k;
      int p0_press_1_p0_press_2_wsum_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_f_i_j_k_pipe;
      int p0_press_1_p0_press_2_rhs_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_usum_i_j_k_pipe;
      int p0_press_1_p0_press_2_rhsav_pipe;
      int p0_press_1_p0_press_2_u_i_j_k_pipe;
      int p0_press_1_p0_press_2_usum_i_j_k_pipe;
      int p0_press_1_p0_press_2_fx_i_j_k_pipe;
      int p0_press_1_p0_press_2_h_i_j_k_pipe;
      float usum_i_j_k;
      float fold_i_j_k;
      int p0_press_1_p0_press_2_w_i_j_k_pipe;
      float area;
    for (idx = 0;idx <= nloop;idx += 1) {
                read_pipe_block(p0_press_1_p0_press_2_area_pipe,&area);
                read_pipe_block(p0_press_1_p0_press_2_f_i_j_k_pipe,&f_i_j_k);
                read_pipe_block(p0_press_1_p0_press_2_fold_i_j_k_pipe,&fold_i_j_k);
                read_pipe_block(p0_press_1_p0_press_2_fx_i_j_k_pipe,&fx_i_j_k);
                read_pipe_block(p0_press_1_p0_press_2_fy_i_j_k_pipe,&fy_i_j_k);
                read_pipe_block(p0_press_1_p0_press_2_fz_i_j_k_pipe,&fz_i_j_k);
                read_pipe_block(p0_press_1_p0_press_2_g_i_j_k_pipe,&g_i_j_k);
                read_pipe_block(p0_press_1_p0_press_2_gold_i_j_k_pipe,&gold_i_j_k);
                read_pipe_block(p0_press_1_p0_press_2_h_i_j_k_pipe,&h_i_j_k);
                read_pipe_block(p0_press_1_p0_press_2_hold_i_j_k_pipe,&hold_i_j_k);
                read_pipe_block(p0_press_1_p0_press_2_rhs_i_j_k_pipe,&rhs_i_j_k);
                read_pipe_block(p0_press_1_p0_press_2_rhsav_pipe,&rhsav);
                read_pipe_block(p0_press_1_p0_press_2_u_i_j_k_pipe,&u_i_j_k);
                read_pipe_block(p0_press_1_p0_press_2_usum_i_j_k_pipe,&usum_i_j_k);
                read_pipe_block(p0_press_1_p0_press_2_v_i_j_k_pipe,&v_i_j_k);
                read_pipe_block(p0_press_1_p0_press_2_vsum_i_j_k_pipe,&vsum_i_j_k);
                read_pipe_block(p0_press_1_p0_press_2_w_i_j_k_pipe,&w_i_j_k);
                read_pipe_block(p0_press_1_p0_press_2_wsum_i_j_k_pipe,&wsum_i_j_k);
                rhsav = rhsav/area;
                i = idx%304;
                j = idx/304%303;
                k = idx/92112;
        if ((i>=1)&&(i<=300)&&(j>=1)&&(j<=300)&&(k>=1)&&(k<=80)) {
                        rhs_i_j_k = rhs_i_j_k-rhsav;
        }
                write_pipe_block(p0_press_2_p0_press_2_output_writer_f_i_j_k_pipe,&f_i_j_k);
                write_pipe_block(p0_press_2_p0_press_2_output_writer_fold_i_j_k_pipe,&fold_i_j_k);
                write_pipe_block(p0_press_2_p0_press_2_output_writer_fx_i_j_k_pipe,&fx_i_j_k);
                write_pipe_block(p0_press_2_p0_press_2_output_writer_fy_i_j_k_pipe,&fy_i_j_k);
                write_pipe_block(p0_press_2_p0_press_2_output_writer_fz_i_j_k_pipe,&fz_i_j_k);
                write_pipe_block(p0_press_2_p0_press_2_output_writer_g_i_j_k_pipe,&g_i_j_k);
                write_pipe_block(p0_press_2_p0_press_2_output_writer_gold_i_j_k_pipe,&gold_i_j_k);
                write_pipe_block(p0_press_2_p0_press_2_output_writer_h_i_j_k_pipe,&h_i_j_k);
                write_pipe_block(p0_press_2_p0_press_2_output_writer_hold_i_j_k_pipe,&hold_i_j_k);
                write_pipe_block(p0_press_2_p0_press_2_output_writer_rhs_i_j_k_pipe,&rhs_i_j_k);
                write_pipe_block(p0_press_2_p0_press_2_output_writer_u_i_j_k_pipe,&u_i_j_k);
                write_pipe_block(p0_press_2_p0_press_2_output_writer_usum_i_j_k_pipe,&usum_i_j_k);
                write_pipe_block(p0_press_2_p0_press_2_output_writer_v_i_j_k_pipe,&v_i_j_k);
                write_pipe_block(p0_press_2_p0_press_2_output_writer_vsum_i_j_k_pipe,&vsum_i_j_k);
                write_pipe_block(p0_press_2_p0_press_2_output_writer_w_i_j_k_pipe,&w_i_j_k);
                write_pipe_block(p0_press_2_p0_press_2_output_writer_wsum_i_j_k_pipe,&wsum_i_j_k);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p0_press_2_output_writer(__global float *f,__global float *fold,__global float *fx,__global float *fy,__global float *fz,__global float *g,__global float *gold,__global float *h,__global float *hold,__global float *rhs,__global float *u,__global float *usum,__global float *v,__global float *vsum,__global float *w,__global float *wsum) {

      float f_i_j_k_read_in;
      float fold_i_j_k_read_in;
      float fx_i_j_k_read_in;
      float fy_i_j_k_read_in;
      float fz_i_j_k_read_in;
      float g_i_j_k_read_in;
      float gold_i_j_k_read_in;
      float h_i_j_k_read_in;
      float hold_i_j_k_read_in;
      float rhs_i_j_k_read_in;
      float u_i_j_k_read_in;
      float usum_i_j_k_read_in;
      float v_i_j_k_read_in;
      float vsum_i_j_k_read_in;
      float w_i_j_k_read_in;
      float wsum_i_j_k_read_in;
      int a;
      int b;
      int p0_press_2_p0_press_2_output_writer_vsum_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_fold_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_v_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_f_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_rhs_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_usum_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_fz_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_wsum_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_g_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_gold_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_fx_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_hold_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_w_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_fy_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_u_i_j_k_pipe;
      int p0_press_2_p0_press_2_output_writer_h_i_j_k_pipe;
      int c;
    for (a = 0;a <= 81;a += 1) {
        for (b = 0;b <= 301;b += 1) {
            for (c = 0;c <= 301;c += 1) {
                                read_pipe_block(p0_press_2_p0_press_2_output_writer_f_i_j_k_pipe,&f_i_j_k_read_in);
                                f[F3D2C(((300 - 0 )+1),((300 - 0 )+1) , 0,0,0 , a,b,c)] = f_i_j_k_read_in;
                                read_pipe_block(p0_press_2_p0_press_2_output_writer_fold_i_j_k_pipe,&fold_i_j_k_read_in);
                                fold[F3D2C(((300 - 1 )+1),((300 - 1 )+1) , 1,1,1 , a,b,c)] = fold_i_j_k_read_in;
                                read_pipe_block(p0_press_2_p0_press_2_output_writer_fx_i_j_k_pipe,&fx_i_j_k_read_in);
                                fx[F3D2C(((300 - 0 )+1),((300 - 0 )+1) , 0,0,0 , a,b,c)] = fx_i_j_k_read_in;
                                read_pipe_block(p0_press_2_p0_press_2_output_writer_fy_i_j_k_pipe,&fy_i_j_k_read_in);
                                fy[F3D2C(((300 - 0 )+1),((300 - 0 )+1) , 0,0,0 , a,b,c)] = fy_i_j_k_read_in;
                                read_pipe_block(p0_press_2_p0_press_2_output_writer_fz_i_j_k_pipe,&fz_i_j_k_read_in);
                                fz[F3D2C(((300 - 0 )+1),((300 - 0 )+1) , 0,0,0 , a,b,c)] = fz_i_j_k_read_in;
                                read_pipe_block(p0_press_2_p0_press_2_output_writer_g_i_j_k_pipe,&g_i_j_k_read_in);
                                g[F3D2C(((300 - 0 )+1),((300 - 0 )+1) , 0,0,0 , a,b,c)] = g_i_j_k_read_in;
                                read_pipe_block(p0_press_2_p0_press_2_output_writer_gold_i_j_k_pipe,&gold_i_j_k_read_in);
                                gold[F3D2C(((300 - 1 )+1),((300 - 1 )+1) , 1,1,1 , a,b,c)] = gold_i_j_k_read_in;
                                read_pipe_block(p0_press_2_p0_press_2_output_writer_h_i_j_k_pipe,&h_i_j_k_read_in);
                                h[F3D2C(((300 - 0 )+1),((300 - 0 )+1) , 0,0,0 , a,b,c)] = h_i_j_k_read_in;
                                read_pipe_block(p0_press_2_p0_press_2_output_writer_hold_i_j_k_pipe,&hold_i_j_k_read_in);
                                hold[F3D2C(((300 - 1 )+1),((300 - 1 )+1) , 1,1,1 , a,b,c)] = hold_i_j_k_read_in;
                                read_pipe_block(p0_press_2_p0_press_2_output_writer_rhs_i_j_k_pipe,&rhs_i_j_k_read_in);
                                rhs[F3D2C(((301 - 0 )+1),((301 - 0 )+1) , 0,0,0 , a,b,c)] = rhs_i_j_k_read_in;
                                read_pipe_block(p0_press_2_p0_press_2_output_writer_u_i_j_k_pipe,&u_i_j_k_read_in);
                                u[F3D2C(((301 - 0 )+1),((301 - -1 )+1) , 0,-1,0 , a,b,c)] = u_i_j_k_read_in;
                                read_pipe_block(p0_press_2_p0_press_2_output_writer_usum_i_j_k_pipe,&usum_i_j_k_read_in);
                                usum[F3D2C(((300 - 0 )+1),((300 - 0 )+1) , 0,0,0 , a,b,c)] = usum_i_j_k_read_in;
                                read_pipe_block(p0_press_2_p0_press_2_output_writer_v_i_j_k_pipe,&v_i_j_k_read_in);
                                v[F3D2C(((301 - 0 )+1),((301 - -1 )+1) , 0,-1,0 , a,b,c)] = v_i_j_k_read_in;
                                read_pipe_block(p0_press_2_p0_press_2_output_writer_vsum_i_j_k_pipe,&vsum_i_j_k_read_in);
                                vsum[F3D2C(((300 - 0 )+1),((300 - 0 )+1) , 0,0,0 , a,b,c)] = vsum_i_j_k_read_in;
                                read_pipe_block(p0_press_2_p0_press_2_output_writer_w_i_j_k_pipe,&w_i_j_k_read_in);
                                w[F3D2C(((301 - 0 )+1),((301 - -1 )+1) , 0,-1,-1 , a,b,c)] = w_i_j_k_read_in;
                                read_pipe_block(p0_press_2_p0_press_2_output_writer_wsum_i_j_k_pipe,&wsum_i_j_k_read_in);
                                wsum[F3D2C(((300 - 0 )+1),((300 - 0 )+1) , 0,0,0 , a,b,c)] = wsum_i_j_k_read_in;
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p1_press_dxs_i_reader(__global float *dxs) {

      float dxs_i;
      float p1_press_dxs_i_reader_p1_press_smart_cache_dxs_i_pipe;
      int i;
    for (i = 0;i <= 300;i += 1) {
                dxs_i = dxs[F1D2C(0 , i)];
                write_pipe_block(p1_press_dxs_i_reader_p1_press_smart_cache_dxs_i_pipe,&dxs_i);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p1_press_dys_j_reader(__global float *dys) {

      float dys_j;
      float p1_press_dys_j_reader_p1_press_smart_cache_dys_j_pipe;
      int i;
    for (i = 0;i <= 300;i += 1) {
                dys_j = dys[F1D2C(0 , i)];
                write_pipe_block(p1_press_dys_j_reader_p1_press_smart_cache_dys_j_pipe,&dys_j);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p1_press_dzs_k_reader(__global float *dzs) {

      float dzs_k;
      float p1_press_dzs_k_reader_p1_press_smart_cache_dzs_k_pipe;
      int i;
    for (i = -1;i <= 82;i += 1) {
                dzs_k = dzs[F1D2C(-1 , i)];
                write_pipe_block(p1_press_dzs_k_reader_p1_press_smart_cache_dzs_k_pipe,&dzs_k);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p1_press_p0_i_j_k_reader(__global float *p0) {

      float p0_i_j_k;
      int i;
      int j;
      float p1_press_p0_i_j_k_reader_p1_press_smart_cache_p0_i_j_k_pipe;
      int k;
    for (i = 0;i <= 81;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                p0_i_j_k = p0[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p1_press_p0_i_j_k_reader_p1_press_smart_cache_p0_i_j_k_pipe,&p0_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p1_press_p1_i_j_k_reader(__global float *p1) {

      float p1_i_j_k;
      int i;
      int j;
      float p1_press_p1_i_j_k_reader_p1_press_smart_cache_p1_i_j_k_pipe;
      int k;
    for (i = 0;i <= 81;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                p1_i_j_k = p1[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p1_press_p1_i_j_k_reader_p1_press_smart_cache_p1_i_j_k_pipe,&p1_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p1_press_rhs_i_j_k_reader(__global float *rhs) {

      float rhs_i_j_k;
      int i;
      int j;
      float p1_press_rhs_i_j_k_reader_p1_press_rhs_i_j_k_pipe;
      int k;
    for (i = 0;i <= 81;i += 1) {
        for (j = 0;j <= 301;j += 1) {
            for (k = 0;k <= 301;k += 1) {
                                rhs_i_j_k = rhs[F3D2C(((301 - 0 )+1),((301 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p1_press_rhs_i_j_k_reader_p1_press_rhs_i_j_k_pipe,&rhs_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p1_press_smart_cache() {

      float dxs_read_in;
      float dys_read_in;
      float dzs_read_in;
      float p0_read_in;
      float p1_read_in;
      float dxs_buffer[183619];
      float dys_buffer[183619];
      float dzs_buffer[183619];
      float p0_buffer[183619];
      float p1_buffer[183619];
      float dxs_i;
      float dxs_im1;
      float dys_j;
      float dys_jm1;
      float dzs_k;
      float dzs_km1;
      float p0_im1_j_k;
      float p0_i_jm1_k;
      float p0_i_j_kp1;
      float p0_i_j_k;
      float p0_i_jp1_k;
      float p0_ip1_j_k;
      float p0_i_j_km1;
      float p1_im1_j_k;
      float p1_i_jm1_k;
      float p1_i_j_kp1;
      float p1_i_j_k;
      float p1_i_jp1_k;
      float p1_ip1_j_k;
      float p1_i_j_km1;
      int i;
      int count;
      int compindex;
      const int nloop = 7620146;
      const int smartcachesize = 183619;
      const int maxpositiveoffset = 91809;
      const int maxnegativeoffset = 91809;
      float p1_press_smart_cache_p1_press_p1_i_j_kp1_pipe;
      float p1_press_smart_cache_p1_press_p1_i_jp1_k_pipe;
      float p1_press_smart_cache_p1_press_dys_jm1_pipe;
      float p1_press_p0_i_j_k_reader_p1_press_smart_cache_p0_i_j_k_pipe;
      float p1_press_smart_cache_p1_press_p1_i_j_k_pipe;
      float p1_press_smart_cache_p1_press_dzs_km1_pipe;
      float p1_press_smart_cache_p1_press_p0_ip1_j_k_pipe;
      float p1_press_smart_cache_p1_press_dxs_i_pipe;
      float p1_press_smart_cache_p1_press_p0_i_j_km1_pipe;
      float p1_press_smart_cache_p1_press_dys_j_pipe;
      float p1_press_smart_cache_p1_press_p0_i_j_kp1_pipe;
      float p1_press_smart_cache_p1_press_p0_i_jp1_k_pipe;
      float p1_press_dxs_i_reader_p1_press_smart_cache_dxs_i_pipe;
      float p1_press_dys_j_reader_p1_press_smart_cache_dys_j_pipe;
      float p1_press_smart_cache_p1_press_p1_i_j_km1_pipe;
      float p1_press_smart_cache_p1_press_p1_ip1_j_k_pipe;
      float p1_press_smart_cache_p1_press_p1_im1_j_k_pipe;
      float p1_press_smart_cache_p1_press_p0_i_j_k_pipe;
      float p1_press_smart_cache_p1_press_p0_i_jm1_k_pipe;
      float p1_press_smart_cache_p1_press_dxs_im1_pipe;
      float p1_press_smart_cache_p1_press_dzs_k_pipe;
      float p1_press_smart_cache_p1_press_p0_im1_j_k_pipe;
      float p1_press_p1_i_j_k_reader_p1_press_smart_cache_p1_i_j_k_pipe;
      float p1_press_dzs_k_reader_p1_press_smart_cache_dzs_k_pipe;
      float p1_press_smart_cache_p1_press_p1_i_jm1_k_pipe;
      const int driverloopsize = 7528338;
    for (count = 0;count <= nloop;count += 1) {
                compindex = count-maxpositiveoffset;
                
#pragma unroll
        for (i = 0;i <= smartcachesize-2;i += 1) {
                        dxs_buffer[F1D2C(0 , i)] = dxs_buffer[F1D2C(0 , i+1)];
                        dys_buffer[F1D2C(0 , i)] = dys_buffer[F1D2C(0 , i+1)];
                        dzs_buffer[F1D2C(0 , i)] = dzs_buffer[F1D2C(0 , i+1)];
                        p0_buffer[F1D2C(0 , i)] = p0_buffer[F1D2C(0 , i+1)];
                        p1_buffer[F1D2C(0 , i)] = p1_buffer[F1D2C(0 , i+1)];
        }
        if (count<=driverloopsize) {
                        read_pipe_block(p1_press_dxs_i_reader_p1_press_smart_cache_dxs_i_pipe,&dxs_read_in);
                        dxs_buffer[F1D2C(0 , 183618)] = dxs_read_in;
                        read_pipe_block(p1_press_dys_j_reader_p1_press_smart_cache_dys_j_pipe,&dys_read_in);
                        dys_buffer[F1D2C(0 , 183618)] = dys_read_in;
                        read_pipe_block(p1_press_dzs_k_reader_p1_press_smart_cache_dzs_k_pipe,&dzs_read_in);
                        dzs_buffer[F1D2C(0 , 183618)] = dzs_read_in;
                        read_pipe_block(p1_press_p0_i_j_k_reader_p1_press_smart_cache_p0_i_j_k_pipe,&p0_read_in);
                        p0_buffer[F1D2C(0 , 183618)] = p0_read_in;
                        read_pipe_block(p1_press_p1_i_j_k_reader_p1_press_smart_cache_p1_i_j_k_pipe,&p1_read_in);
                        p1_buffer[F1D2C(0 , 183618)] = p1_read_in;
        }
        if (compindex>=0) {
                        dxs_i = dxs_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p1_press_smart_cache_p1_press_dxs_i_pipe,&dxs_i);
                        dxs_im1 = dxs_buffer[F1D2C(0 , 91808)];
                        write_pipe_block(p1_press_smart_cache_p1_press_dxs_im1_pipe,&dxs_im1);
                        dys_j = dys_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p1_press_smart_cache_p1_press_dys_j_pipe,&dys_j);
                        dys_jm1 = dys_buffer[F1D2C(0 , 91808)];
                        write_pipe_block(p1_press_smart_cache_p1_press_dys_jm1_pipe,&dys_jm1);
                        dzs_k = dzs_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p1_press_smart_cache_p1_press_dzs_k_pipe,&dzs_k);
                        dzs_km1 = dzs_buffer[F1D2C(0 , 91808)];
                        write_pipe_block(p1_press_smart_cache_p1_press_dzs_km1_pipe,&dzs_km1);
                        p0_i_j_k = p0_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p1_press_smart_cache_p1_press_p0_i_j_k_pipe,&p0_i_j_k);
                        p0_i_j_km1 = p0_buffer[F1D2C(0 , 0)];
                        write_pipe_block(p1_press_smart_cache_p1_press_p0_i_j_km1_pipe,&p0_i_j_km1);
                        p0_i_j_kp1 = p0_buffer[F1D2C(0 , 183618)];
                        write_pipe_block(p1_press_smart_cache_p1_press_p0_i_j_kp1_pipe,&p0_i_j_kp1);
                        p0_i_jm1_k = p0_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p1_press_smart_cache_p1_press_p0_i_jm1_k_pipe,&p0_i_jm1_k);
                        p0_i_jp1_k = p0_buffer[F1D2C(0 , 92112)];
                        write_pipe_block(p1_press_smart_cache_p1_press_p0_i_jp1_k_pipe,&p0_i_jp1_k);
                        p0_im1_j_k = p0_buffer[F1D2C(0 , 91808)];
                        write_pipe_block(p1_press_smart_cache_p1_press_p0_im1_j_k_pipe,&p0_im1_j_k);
                        p0_ip1_j_k = p0_buffer[F1D2C(0 , 91810)];
                        write_pipe_block(p1_press_smart_cache_p1_press_p0_ip1_j_k_pipe,&p0_ip1_j_k);
                        p1_i_j_k = p1_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p1_press_smart_cache_p1_press_p1_i_j_k_pipe,&p1_i_j_k);
                        p1_i_j_km1 = p1_buffer[F1D2C(0 , 0)];
                        write_pipe_block(p1_press_smart_cache_p1_press_p1_i_j_km1_pipe,&p1_i_j_km1);
                        p1_i_j_kp1 = p1_buffer[F1D2C(0 , 183618)];
                        write_pipe_block(p1_press_smart_cache_p1_press_p1_i_j_kp1_pipe,&p1_i_j_kp1);
                        p1_i_jm1_k = p1_buffer[F1D2C(0 , 91809)];
                        write_pipe_block(p1_press_smart_cache_p1_press_p1_i_jm1_k_pipe,&p1_i_jm1_k);
                        p1_i_jp1_k = p1_buffer[F1D2C(0 , 92112)];
                        write_pipe_block(p1_press_smart_cache_p1_press_p1_i_jp1_k_pipe,&p1_i_jp1_k);
                        p1_im1_j_k = p1_buffer[F1D2C(0 , 91808)];
                        write_pipe_block(p1_press_smart_cache_p1_press_p1_im1_j_k_pipe,&p1_im1_j_k);
                        p1_ip1_j_k = p1_buffer[F1D2C(0 , 91810)];
                        write_pipe_block(p1_press_smart_cache_p1_press_p1_ip1_j_k_pipe,&p1_ip1_j_k);
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p1_press() {

      const int nloop = 7528337;
      int idx;
      float cn1;
      float cn2l;
      float cn2s;
      float cn3l;
      float cn3s;
      float cn4l;
      float cn4s;
      float dz1;
      float dz2;
      float dxs_i;
      float dxs_im1;
      float dys_j;
      float dys_jm1;
      float dzs_k;
      float dzs_km1;
      int i;
      int j;
      int k;
      float p0_im1_j_k;
      float p0_i_jm1_k;
      float p0_i_j_kp1;
      float p0_i_j_k;
      float p0_i_jp1_k;
      float p0_ip1_j_k;
      float p0_i_j_km1;
      float p1_im1_j_k;
      float p1_i_jm1_k;
      float p1_i_j_kp1;
      float p1_i_j_k;
      float p1_i_jp1_k;
      float p1_ip1_j_k;
      float p1_i_j_km1;
      float rhs_i_j_k;
      float p1_press_smart_cache_p1_press_p1_i_jm1_k_pipe;
      float p1_press_smart_cache_p1_press_dzs_k_pipe;
      float p1_press_smart_cache_p1_press_p0_im1_j_k_pipe;
      float p1_press_p1_press_output_writer_p1_i_j_k_pipe;
      float p1_press_smart_cache_p1_press_p1_ip1_j_k_pipe;
      float p1_press_smart_cache_p1_press_p1_im1_j_k_pipe;
      float p1_press_smart_cache_p1_press_p0_i_j_k_pipe;
      float p1_press_smart_cache_p1_press_p0_i_jm1_k_pipe;
      float p1_press_smart_cache_p1_press_dxs_im1_pipe;
      float p1_press_smart_cache_p1_press_p0_i_j_kp1_pipe;
      float p1_press_smart_cache_p1_press_p0_i_jp1_k_pipe;
      int nrd;
      float p1_press_smart_cache_p1_press_p1_i_j_km1_pipe;
      float p1_press_smart_cache_p1_press_p0_i_j_km1_pipe;
      float p1_press_smart_cache_p1_press_dys_j_pipe;
      float p1_press_smart_cache_p1_press_dxs_i_pipe;
      float p1_press_p1_press_output_writer_p0_i_j_k_pipe;
      float p1_press_smart_cache_p1_press_p1_i_j_k_pipe;
      float p1_press_smart_cache_p1_press_dzs_km1_pipe;
      float p1_press_smart_cache_p1_press_p0_ip1_j_k_pipe;
      float p1_press_rhs_i_j_k_reader_p1_press_rhs_i_j_k_pipe;
      float p1_press_smart_cache_p1_press_p1_i_j_kp1_pipe;
      float p1_press_smart_cache_p1_press_dys_jm1_pipe;
      float p1_press_smart_cache_p1_press_p1_i_jp1_k_pipe;
      float reltmp;
    for (idx = 0;idx <= nloop;idx += 1) {
                read_pipe_block(p1_press_smart_cache_p1_press_dxs_i_pipe,&dxs_i);
                read_pipe_block(p1_press_smart_cache_p1_press_dxs_im1_pipe,&dxs_im1);
                read_pipe_block(p1_press_smart_cache_p1_press_dys_j_pipe,&dys_j);
                read_pipe_block(p1_press_smart_cache_p1_press_dys_jm1_pipe,&dys_jm1);
                read_pipe_block(p1_press_smart_cache_p1_press_dzs_k_pipe,&dzs_k);
                read_pipe_block(p1_press_smart_cache_p1_press_dzs_km1_pipe,&dzs_km1);
                read_pipe_block(p1_press_smart_cache_p1_press_p0_i_j_k_pipe,&p0_i_j_k);
                read_pipe_block(p1_press_smart_cache_p1_press_p0_i_j_km1_pipe,&p0_i_j_km1);
                read_pipe_block(p1_press_smart_cache_p1_press_p0_i_j_kp1_pipe,&p0_i_j_kp1);
                read_pipe_block(p1_press_smart_cache_p1_press_p0_i_jm1_k_pipe,&p0_i_jm1_k);
                read_pipe_block(p1_press_smart_cache_p1_press_p0_i_jp1_k_pipe,&p0_i_jp1_k);
                read_pipe_block(p1_press_smart_cache_p1_press_p0_im1_j_k_pipe,&p0_im1_j_k);
                read_pipe_block(p1_press_smart_cache_p1_press_p0_ip1_j_k_pipe,&p0_ip1_j_k);
                read_pipe_block(p1_press_smart_cache_p1_press_p1_i_j_k_pipe,&p1_i_j_k);
                read_pipe_block(p1_press_smart_cache_p1_press_p1_i_j_km1_pipe,&p1_i_j_km1);
                read_pipe_block(p1_press_smart_cache_p1_press_p1_i_j_kp1_pipe,&p1_i_j_kp1);
                read_pipe_block(p1_press_smart_cache_p1_press_p1_i_jm1_k_pipe,&p1_i_jm1_k);
                read_pipe_block(p1_press_smart_cache_p1_press_p1_i_jp1_k_pipe,&p1_i_jp1_k);
                read_pipe_block(p1_press_smart_cache_p1_press_p1_im1_j_k_pipe,&p1_im1_j_k);
                read_pipe_block(p1_press_smart_cache_p1_press_p1_ip1_j_k_pipe,&p1_ip1_j_k);
                read_pipe_block(p1_press_rhs_i_j_k_reader_p1_press_rhs_i_j_k_pipe,&rhs_i_j_k);
                i = idx%303;
                j = idx/303%303;
                k = idx/91809;
        if ((i>=1)&&(i<=300)&&(j>=1)&&(j<=300)&&(k>=1)&&(k<=80)) {
                        dz1 = dzs_km1;
                        dz2 = dzs_k;
                        cn4s = 2./(dz1*(dz1+dz2));
                        cn4l = 2./(dz2*(dz1+dz2));
                        cn3s = 2./(dys_jm1*(dys_jm1+dys_j));
                        cn3l = 2./(dys_j*(dys_jm1+dys_j));
                        cn2s = 2./(dxs_im1*(dxs_im1+dxs_i));
                        cn2l = 2./(dxs_i*(dxs_im1+dxs_i));
                        cn1 = 1./(2./(dxs_im1*dxs_i)+2./(dys_jm1*dys_j)+2./(dz1*dz2));
            if (nrd==0) {
                                reltmp = 1.0*(cn1*(cn2l*p0_ip1_j_k+cn2s*p0_im1_j_k+cn3l*p0_i_jp1_k+cn3s*p0_i_jm1_k+cn4l*p0_i_j_kp1+cn4s*p0_i_j_km1-rhs_i_j_k)-p0_i_j_k);
                                p1_i_j_k = p0_i_j_k+reltmp;
             } else {
                                reltmp = 1.0*(cn1*(cn2l*p1_ip1_j_k+cn2s*p1_im1_j_k+cn3l*p1_i_jp1_k+cn3s*p1_i_jm1_k+cn4l*p1_i_j_kp1+cn4s*p1_i_j_km1-rhs_i_j_k)-p1_i_j_k);
                                p0_i_j_k = p1_i_j_k+reltmp;
            }
        }
                write_pipe_block(p1_press_p1_press_output_writer_p0_i_j_k_pipe,&p0_i_j_k);
                write_pipe_block(p1_press_p1_press_output_writer_p1_i_j_k_pipe,&p1_i_j_k);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p1_press_output_writer(__global float *p0,__global float *p1) {

      float p0_i_j_k_read_in;
      float p1_i_j_k_read_in;
      int a;
      int b;
      float p1_press_p1_press_output_writer_p1_i_j_k_pipe;
      float p1_press_p1_press_output_writer_p0_i_j_k_pipe;
      int c;
    for (a = 0;a <= 81;a += 1) {
        for (b = 0;b <= 302;b += 1) {
            for (c = 0;c <= 302;c += 1) {
                                read_pipe_block(p1_press_p1_press_output_writer_p0_i_j_k_pipe,&p0_i_j_k_read_in);
                                p0[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , a,b,c)] = p0_i_j_k_read_in;
                                read_pipe_block(p1_press_p1_press_output_writer_p1_i_j_k_pipe,&p1_i_j_k_read_in);
                                p1[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , a,b,c)] = p1_i_j_k_read_in;
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p2_press_0_dx1_i_reader(__global float *dx1) {

      float dx1_i;
      int p2_press_0_dx1_i_reader_p2_press_0_dx1_i_pipe;
      int i;
    for (i = -1;i <= 301;i += 1) {
                dx1_i = dx1[F1D2C(-1 , i)];
                write_pipe_block(p2_press_0_dx1_i_reader_p2_press_0_dx1_i_pipe,&dx1_i);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p2_press_0_dy1_j_reader(__global float *dy1) {

      float dy1_j;
      int p2_press_0_dy1_j_reader_p2_press_0_dy1_j_pipe;
      int i;
    for (i = 0;i <= 301;i += 1) {
                dy1_j = dy1[F1D2C(0 , i)];
                write_pipe_block(p2_press_0_dy1_j_reader_p2_press_0_dy1_j_pipe,&dy1_j);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p2_press_0_dzn_k_reader(__global float *dzn) {

      float dzn_k;
      int p2_press_0_dzn_k_reader_p2_press_0_dzn_k_pipe;
      int i;
    for (i = -1;i <= 82;i += 1) {
                dzn_k = dzn[F1D2C(-1 , i)];
                write_pipe_block(p2_press_0_dzn_k_reader_p2_press_0_dzn_k_pipe,&dzn_k);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p2_press_0_p0_i_j_k_reader(__global float *p0) {

      float p0_i_j_k;
      int i;
      int j;
      float p2_press_0_p0_i_j_k_reader_p2_press_0_p0_i_j_k_pipe;
      int k;
    for (i = 0;i <= 81;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                p0_i_j_k = p0[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p2_press_0_p0_i_j_k_reader_p2_press_0_p0_i_j_k_pipe,&p0_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p2_press_0() {

      const int nloop = 7528337;
      int idx;
      float dx1_i;
      float dy1_j;
      float dzn_k;
      int i;
      int j;
      int k;
      float p0_i_j_k;
      float pav;
      float p2_press_0_dx1_i_reader_p2_press_0_dx1_i_pipe;
      float p2_press_0_dzn_k_reader_p2_press_0_dzn_k_pipe;
      float p2_press_0_p2_press_1_pav_pipe;
      float p2_press_0_p2_press_1_pco_pipe;
      float p2_press_0_dy1_j_reader_p2_press_0_dy1_j_pipe;
      float p2_press_0_p0_i_j_k_reader_p2_press_0_p0_i_j_k_pipe;
      float pco;
    for (idx = 0;idx <= nloop;idx += 1) {
                read_pipe_block(p2_press_0_dx1_i_reader_p2_press_0_dx1_i_pipe,&dx1_i);
                read_pipe_block(p2_press_0_dy1_j_reader_p2_press_0_dy1_j_pipe,&dy1_j);
                read_pipe_block(p2_press_0_dzn_k_reader_p2_press_0_dzn_k_pipe,&dzn_k);
                read_pipe_block(p2_press_0_p0_i_j_k_reader_p2_press_0_p0_i_j_k_pipe,&p0_i_j_k);
                pav = 0.0;
                pco = 0.0;
                i = idx%303;
                j = idx/303%303;
                k = idx/91809;
        if ((i>=1)&&(i<=300)&&(j>=1)&&(j<=300)&&(k>=1)&&(k<=80)) {
                        pav = pav+p0_i_j_k*dx1_i*dy1_j*dzn_k;
                        pco = pco+dx1_i*dy1_j*dzn_k;
        }
    }
    for (idx = 0;idx <= nloop;idx += 1) {
                write_pipe_block(p2_press_0_p2_press_1_pav_pipe,&pav);
                write_pipe_block(p2_press_0_p2_press_1_pco_pipe,&pco);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p2_press_1_p0_i_j_k_reader(__global float *p0) {

      float p0_i_j_k;
      int i;
      int j;
      float p2_press_1_p0_i_j_k_reader_p2_press_1_p0_i_j_k_pipe;
      int k;
    for (i = 0;i <= 81;i += 1) {
        for (j = 0;j <= 302;j += 1) {
            for (k = 0;k <= 302;k += 1) {
                                p0_i_j_k = p0[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , i,j,k)];
                                write_pipe_block(p2_press_1_p0_i_j_k_reader_p2_press_1_p0_i_j_k_pipe,&p0_i_j_k);
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p2_press_1() {

      const int nloop = 7528337;
      int idx;
      int i;
      int j;
      int k;
      float p0_i_j_k;
      float pav;
      int p2_press_0_p2_press_1_pco_pipe;
      int p2_press_1_p0_i_j_k_reader_p2_press_1_p0_i_j_k_pipe;
      int p2_press_0_p2_press_1_pav_pipe;
      float pco;
    for (idx = 0;idx <= nloop;idx += 1) {
                read_pipe_block(p2_press_1_p0_i_j_k_reader_p2_press_1_p0_i_j_k_pipe,&p0_i_j_k);
                read_pipe_block(p2_press_0_p2_press_1_pav_pipe,&pav);
                read_pipe_block(p2_press_0_p2_press_1_pco_pipe,&pco);
                pav = pav/pco;
                i = idx%303;
                j = idx/303%303;
                k = idx/91809;
        if ((i>=1)&&(i<=300)&&(j>=1)&&(j<=300)&&(k>=1)&&(k<=80)) {
                        p0_i_j_k = p0_i_j_k-pav;
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p2_press_2_smart_cache() {

      float p0_read_in;
      float p0_buffer[3];
      float p0_synthidx2p1_j_k;
      float p0_synthidx2m1_j_k;
      int i;
      int count;
      int compindex;
      const int nloop = 7528338;
      const int smartcachesize = 3;
      const int maxpositiveoffset = 1;
      const int maxnegativeoffset = 1;
      int p2_press_2_smart_cache_p2_press_2_p0_synthidx2p1_j_k_pipe;
      int p2_press_1_p2_press_2_smart_cache_p0_synthidx2_j_k_pipe;
      int p2_press_2_smart_cache_p2_press_2_p0_synthidx2m1_j_k_pipe;
      const int driverloopsize = 7528338;
    for (count = 0;count <= nloop;count += 1) {
                compindex = count-maxpositiveoffset;
                
#pragma unroll
        for (i = 0;i <= smartcachesize-2;i += 1) {
                        p0_buffer[F1D2C(0 , i)] = p0_buffer[F1D2C(0 , i+1)];
        }
        if (count<=driverloopsize) {
                        read_pipe_block(p2_press_1_p2_press_2_smart_cache_p0_synthidx2_j_k_pipe,&p0_read_in);
                        p0_buffer[F1D2C(0 , 2)] = p0_read_in;
        }
        if (compindex>=0) {
                        p0_synthidx2m1_j_k = p0_buffer[F1D2C(0 , 0)];
                        write_pipe_block(p2_press_2_smart_cache_p2_press_2_p0_synthidx2m1_j_k_pipe,&p0_synthidx2m1_j_k);
                        p0_synthidx2p1_j_k = p0_buffer[F1D2C(0 , 2)];
                        write_pipe_block(p2_press_2_smart_cache_p2_press_2_p0_synthidx2p1_j_k_pipe,&p0_synthidx2p1_j_k);
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p2_press_2() {

      const int nloop = 7528337;
      int idx;
      int j;
      int k;
      float p0_synthidx2p1_j_k;
      float p0_synthidx2m1_j_k;
      float p0_synthidx2_j_k;
      float p2_press_2_smart_cache_p2_press_2_p0_synthidx2m1_j_k_pipe;
      float p2_press_2_smart_cache_p2_press_2_p0_synthidx2p1_j_k_pipe;
      int synthidx2;
    for (idx = 0;idx <= nloop;idx += 1) {
                read_pipe_block(p2_press_2_smart_cache_p2_press_2_p0_synthidx2m1_j_k_pipe,&p0_synthidx2m1_j_k);
                read_pipe_block(p2_press_2_smart_cache_p2_press_2_p0_synthidx2p1_j_k_pipe,&p0_synthidx2p1_j_k);
                synthidx2 = idx%303;
                j = idx/303%303;
                k = idx/91809;
        if ((j>=0)&&(j<=301)&&(k>=0)&&(k<=81)&&(synthidx2>=0)&&(synthidx2<=302)) {
            if (synthidx2==0) {
                                p0_synthidx2_j_k = p0_synthidx2p1_j_k;
            }
            if (synthidx2==301) {
                                p0_synthidx2_j_k = p0_synthidx2m1_j_k;
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p2_press_3_smart_cache() {

      float p0_read_in;
      float p0_buffer[181801];
      float p0_i_synthidx1p300_k;
      float p0_i_synthidx1m300_k;
      int i;
      int count;
      int compindex;
      const int nloop = 7619237;
      const int smartcachesize = 181801;
      const int maxpositiveoffset = 90900;
      const int maxnegativeoffset = 90900;
      int p2_press_3_smart_cache_p2_press_3_p0_i_synthidx1p300_k_pipe;
      int p2_press_2_p2_press_3_smart_cache_p0_i_synthidx1_k_pipe;
      int p2_press_3_smart_cache_p2_press_3_p0_i_synthidx1m300_k_pipe;
      const int driverloopsize = 7528338;
    for (count = 0;count <= nloop;count += 1) {
                compindex = count-maxpositiveoffset;
                
#pragma unroll
        for (i = 0;i <= smartcachesize-2;i += 1) {
                        p0_buffer[F1D2C(0 , i)] = p0_buffer[F1D2C(0 , i+1)];
        }
        if (count<=driverloopsize) {
                        read_pipe_block(p2_press_2_p2_press_3_smart_cache_p0_i_synthidx1_k_pipe,&p0_read_in);
                        p0_buffer[F1D2C(0 , 181800)] = p0_read_in;
        }
        if (compindex>=0) {
                        p0_i_synthidx1m300_k = p0_buffer[F1D2C(0 , 0)];
                        write_pipe_block(p2_press_3_smart_cache_p2_press_3_p0_i_synthidx1m300_k_pipe,&p0_i_synthidx1m300_k);
                        p0_i_synthidx1p300_k = p0_buffer[F1D2C(0 , 181800)];
                        write_pipe_block(p2_press_3_smart_cache_p2_press_3_p0_i_synthidx1p300_k_pipe,&p0_i_synthidx1p300_k);
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p2_press_3() {

      const int nloop = 7528337;
      int idx;
      int i;
      int k;
      float p0_i_synthidx1p300_k;
      float p0_i_synthidx1m300_k;
      float p0_i_synthidx1_k;
      float p2_press_3_smart_cache_p2_press_3_p0_i_synthidx1p300_k_pipe;
      float p2_press_3_smart_cache_p2_press_3_p0_i_synthidx1m300_k_pipe;
      int synthidx1;
    for (idx = 0;idx <= nloop;idx += 1) {
                read_pipe_block(p2_press_3_smart_cache_p2_press_3_p0_i_synthidx1m300_k_pipe,&p0_i_synthidx1m300_k);
                read_pipe_block(p2_press_3_smart_cache_p2_press_3_p0_i_synthidx1p300_k_pipe,&p0_i_synthidx1p300_k);
                i = idx%303;
                synthidx1 = idx/303%303;
                k = idx/91809;
        if ((i>=0)&&(i<=301)&&(k>=0)&&(k<=81)&&(synthidx1>=0)&&(synthidx1<=302)) {
            if (synthidx1==0) {
                                p0_i_synthidx1_k = p0_i_synthidx1p300_k;
            }
            if (synthidx1==301) {
                                p0_i_synthidx1_k = p0_i_synthidx1m300_k;
            }
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p2_press_4_smart_cache() {

      float p0_read_in;
      float p0_buffer[183619];
      float p0_i_j_synthidx0p1;
      float p0_i_j_synthidx0m1;
      int i;
      int count;
      int compindex;
      const int nloop = 7620146;
      const int smartcachesize = 183619;
      const int maxpositiveoffset = 91809;
      const int maxnegativeoffset = 91809;
      int p2_press_3_p2_press_4_smart_cache_p0_i_j_synthidx0_pipe;
      int p2_press_4_smart_cache_p2_press_4_p0_i_j_synthidx0p1_pipe;
      int p2_press_4_smart_cache_p2_press_4_p0_i_j_synthidx0m1_pipe;
      const int driverloopsize = 7528338;
    for (count = 0;count <= nloop;count += 1) {
                compindex = count-maxpositiveoffset;
                
#pragma unroll
        for (i = 0;i <= smartcachesize-2;i += 1) {
                        p0_buffer[F1D2C(0 , i)] = p0_buffer[F1D2C(0 , i+1)];
        }
        if (count<=driverloopsize) {
                        read_pipe_block(p2_press_3_p2_press_4_smart_cache_p0_i_j_synthidx0_pipe,&p0_read_in);
                        p0_buffer[F1D2C(0 , 183618)] = p0_read_in;
        }
        if (compindex>=0) {
                        p0_i_j_synthidx0m1 = p0_buffer[F1D2C(0 , 0)];
                        write_pipe_block(p2_press_4_smart_cache_p2_press_4_p0_i_j_synthidx0m1_pipe,&p0_i_j_synthidx0m1);
                        p0_i_j_synthidx0p1 = p0_buffer[F1D2C(0 , 183618)];
                        write_pipe_block(p2_press_4_smart_cache_p2_press_4_p0_i_j_synthidx0p1_pipe,&p0_i_j_synthidx0p1);
        }
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p2_press_4() {

      const int nloop = 7528337;
      int idx;
      int i;
      int j;
      float p0_i_j_synthidx0p1;
      float p0_i_j_synthidx0m1;
      float p0_i_j_synthidx0;
      float p2_press_4_smart_cache_p2_press_4_p0_i_j_synthidx0m1_pipe;
      float p2_press_4_smart_cache_p2_press_4_p0_i_j_synthidx0p1_pipe;
      float p2_press_4_p2_press_4_output_writer_p0_i_j_synthidx0_pipe;
      int synthidx0;
    for (idx = 0;idx <= nloop;idx += 1) {
                read_pipe_block(p2_press_4_smart_cache_p2_press_4_p0_i_j_synthidx0m1_pipe,&p0_i_j_synthidx0m1);
                read_pipe_block(p2_press_4_smart_cache_p2_press_4_p0_i_j_synthidx0p1_pipe,&p0_i_j_synthidx0p1);
                i = idx%303;
                j = idx/303%303;
                synthidx0 = idx/91809;
        if ((i>=0)&&(i<=301)&&(j>=0)&&(j<=301)&&(synthidx0>=0)&&(synthidx0<=81)) {
            if (synthidx0==0) {
                                p0_i_j_synthidx0 = p0_i_j_synthidx0p1;
            }
            if (synthidx0==81) {
                                p0_i_j_synthidx0 = p0_i_j_synthidx0m1;
            }
        }
                write_pipe_block(p2_press_4_p2_press_4_output_writer_p0_i_j_synthidx0_pipe,&p0_i_j_synthidx0);
    }
    }
__kernel __attribute__((reqd_work_group_size(1,1,1))) void p2_press_4_output_writer(__global float *p0) {

      float p0_i_j_synthidx0_read_in;
      int a;
      int b;
      int p2_press_4_p2_press_4_output_writer_p0_i_j_synthidx0_pipe;
      int c;
    for (a = 0;a <= 81;a += 1) {
        for (b = 0;b <= 302;b += 1) {
            for (c = 0;c <= 302;c += 1) {
                                read_pipe_block(p2_press_4_p2_press_4_output_writer_p0_i_j_synthidx0_pipe,&p0_i_j_synthidx0_read_in);
                                p0[F3D2C(((302 - 0 )+1),((302 - 0 )+1) , 0,0,0 , a,b,c)] = p0_i_j_synthidx0_read_in;
            }
        }
    }
    }
    

