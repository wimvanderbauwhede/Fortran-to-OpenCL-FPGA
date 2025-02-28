module dyn_shapiro_vernieuw_device_code
      integer :: dyn_0_dyn_1_du_j_k_pipe
      integer :: dyn_0_dyn_1_dv_j_k_pipe
      integer :: dyn_0_smart_cache_dyn_0_eta_j_kp1_pipe
      integer :: dyn_0_smart_cache_dyn_0_eta_jp1_k_pipe
      integer :: dyn_0_smart_cache_dyn_0_eta_j_k_pipe
      integer :: dyn_0_eta_j_k_reader_dyn_0_smart_cache_eta_j_k_pipe
      integer :: dyn_1_dyn_2_smart_cache_un_j_k_pipe
      integer :: dyn_1_dyn_2_smart_cache_vn_j_k_pipe
      integer :: dyn_1_smart_cache_dyn_1_wet_j_kp1_pipe
      integer :: dyn_1_smart_cache_dyn_1_wet_jp1_k_pipe
      integer :: dyn_1_smart_cache_dyn_1_wet_j_k_pipe
      integer :: dyn_1_wet_j_k_reader_dyn_1_smart_cache_wet_j_k_pipe
      integer :: dyn_1_u_j_k_reader_dyn_1_u_j_k_pipe
      integer :: dyn_1_un_j_k_reader_dyn_1_un_j_k_pipe
      integer :: dyn_1_v_j_k_reader_dyn_1_v_j_k_pipe
      integer :: dyn_1_vn_j_k_reader_dyn_1_vn_j_k_pipe
      integer :: dyn_2_shapiro_smart_cache_vn_j_k_pipe
      integer :: dyn_2_shapiro_smart_cache_un_j_k_pipe
      integer :: dyn_2_shapiro_smart_cache_etan_j_k_pipe
      integer :: dyn_2_smart_cache_dyn_2_h_jm1_k_pipe
      integer :: dyn_2_smart_cache_dyn_2_h_j_kp1_pipe
      integer :: dyn_2_smart_cache_dyn_2_h_j_k_pipe
      integer :: dyn_2_smart_cache_dyn_2_h_jp1_k_pipe
      integer :: dyn_2_smart_cache_dyn_2_h_j_km1_pipe
      integer :: dyn_2_smart_cache_dyn_2_un_j_k_pipe
      integer :: dyn_2_smart_cache_dyn_2_un_j_km1_pipe
      integer :: dyn_2_smart_cache_dyn_2_vn_j_k_pipe
      integer :: dyn_2_smart_cache_dyn_2_vn_jm1_k_pipe
      integer :: dyn_2_h_j_k_reader_dyn_2_smart_cache_h_j_k_pipe
      integer :: dyn_2_eta_j_k_reader_dyn_2_eta_j_k_pipe
      integer :: dyn_2_etan_j_k_reader_dyn_2_etan_j_k_pipe
      integer :: shapiro_vernieuw_eta_j_k_pipe
      integer :: shapiro_vernieuw_un_j_k_pipe
      integer :: shapiro_vernieuw_vn_j_k_pipe
      integer :: shapiro_smart_cache_shapiro_vn_j_k_pipe
      integer :: shapiro_smart_cache_shapiro_un_j_k_pipe
      integer :: shapiro_smart_cache_shapiro_etan_jm1_k_pipe
      integer :: shapiro_smart_cache_shapiro_etan_j_kp1_pipe
      integer :: shapiro_smart_cache_shapiro_etan_j_k_pipe
      integer :: shapiro_smart_cache_shapiro_etan_jp1_k_pipe
      integer :: shapiro_smart_cache_shapiro_etan_j_km1_pipe
      integer :: shapiro_smart_cache_shapiro_wet_jm1_k_pipe
      integer :: shapiro_smart_cache_shapiro_wet_j_kp1_pipe
      integer :: shapiro_smart_cache_shapiro_wet_j_k_pipe
      integer :: shapiro_smart_cache_shapiro_wet_jp1_k_pipe
      integer :: shapiro_smart_cache_shapiro_wet_j_km1_pipe
      integer :: shapiro_wet_j_k_reader_shapiro_smart_cache_wet_j_k_pipe
      integer :: shapiro_eta_j_k_reader_shapiro_eta_j_k_pipe
      integer :: vernieuw_vernieuw_output_writer_h_j_k_pipe
      integer :: vernieuw_vernieuw_output_writer_u_j_k_pipe
      integer :: vernieuw_vernieuw_output_writer_v_j_k_pipe
      integer :: vernieuw_vernieuw_output_writer_wet_j_k_pipe
      integer :: vernieuw_vernieuw_output_writer_eta_j_k_pipe
      integer :: vernieuw_h_j_k_reader_vernieuw_h_j_k_pipe
      integer :: vernieuw_hzero_j_k_reader_vernieuw_hzero_j_k_pipe
      integer :: vernieuw_u_j_k_reader_vernieuw_u_j_k_pipe
      integer :: vernieuw_v_j_k_reader_vernieuw_v_j_k_pipe
      integer :: vernieuw_wet_j_k_reader_vernieuw_wet_j_k_pipe
contains

subroutine pipe_initialisation

    call ocl_pipe_real(dyn_0_dyn_1_du_j_k_pipe)
    call ocl_pipe_real(dyn_0_dyn_1_dv_j_k_pipe)
    call ocl_pipe_real(dyn_0_smart_cache_dyn_0_eta_j_kp1_pipe)
    call ocl_pipe_real(dyn_0_smart_cache_dyn_0_eta_jp1_k_pipe)
    call ocl_pipe_real(dyn_0_smart_cache_dyn_0_eta_j_k_pipe)
    call ocl_pipe_real(dyn_0_eta_j_k_reader_dyn_0_smart_cache_eta_j_k_pipe)
    call ocl_pipe_real(dyn_1_dyn_2_smart_cache_un_j_k_pipe)
    call ocl_pipe_real(dyn_1_dyn_2_smart_cache_vn_j_k_pipe)
    call ocl_pipe_int(dyn_1_smart_cache_dyn_1_wet_j_kp1_pipe)
    call ocl_pipe_int(dyn_1_smart_cache_dyn_1_wet_jp1_k_pipe)
    call ocl_pipe_int(dyn_1_smart_cache_dyn_1_wet_j_k_pipe)
    call ocl_pipe_int(dyn_1_wet_j_k_reader_dyn_1_smart_cache_wet_j_k_pipe)
    call ocl_pipe_real(dyn_1_u_j_k_reader_dyn_1_u_j_k_pipe)
    call ocl_pipe_real(dyn_1_un_j_k_reader_dyn_1_un_j_k_pipe)
    call ocl_pipe_real(dyn_1_v_j_k_reader_dyn_1_v_j_k_pipe)
    call ocl_pipe_real(dyn_1_vn_j_k_reader_dyn_1_vn_j_k_pipe)
    call ocl_pipe_real(dyn_2_shapiro_smart_cache_vn_j_k_pipe)
    call ocl_pipe_real(dyn_2_shapiro_smart_cache_un_j_k_pipe)
    call ocl_pipe_real(dyn_2_shapiro_smart_cache_etan_j_k_pipe)
    call ocl_pipe_real(dyn_2_smart_cache_dyn_2_h_jm1_k_pipe)
    call ocl_pipe_real(dyn_2_smart_cache_dyn_2_h_j_kp1_pipe)
    call ocl_pipe_real(dyn_2_smart_cache_dyn_2_h_j_k_pipe)
    call ocl_pipe_real(dyn_2_smart_cache_dyn_2_h_jp1_k_pipe)
    call ocl_pipe_real(dyn_2_smart_cache_dyn_2_h_j_km1_pipe)
    call ocl_pipe_real(dyn_2_smart_cache_dyn_2_un_j_k_pipe)
    call ocl_pipe_real(dyn_2_smart_cache_dyn_2_un_j_km1_pipe)
    call ocl_pipe_real(dyn_2_smart_cache_dyn_2_vn_j_k_pipe)
    call ocl_pipe_real(dyn_2_smart_cache_dyn_2_vn_jm1_k_pipe)
    call ocl_pipe_real(dyn_2_h_j_k_reader_dyn_2_smart_cache_h_j_k_pipe)
    call ocl_pipe_real(dyn_2_eta_j_k_reader_dyn_2_eta_j_k_pipe)
    call ocl_pipe_real(dyn_2_etan_j_k_reader_dyn_2_etan_j_k_pipe)
    call ocl_pipe_real(shapiro_vernieuw_eta_j_k_pipe)
    call ocl_pipe_real(shapiro_vernieuw_un_j_k_pipe)
    call ocl_pipe_real(shapiro_vernieuw_vn_j_k_pipe)
    call ocl_pipe_real(shapiro_smart_cache_shapiro_vn_j_k_pipe)
    call ocl_pipe_real(shapiro_smart_cache_shapiro_un_j_k_pipe)
    call ocl_pipe_real(shapiro_smart_cache_shapiro_etan_jm1_k_pipe)
    call ocl_pipe_real(shapiro_smart_cache_shapiro_etan_j_kp1_pipe)
    call ocl_pipe_real(shapiro_smart_cache_shapiro_etan_j_k_pipe)
    call ocl_pipe_real(shapiro_smart_cache_shapiro_etan_jp1_k_pipe)
    call ocl_pipe_real(shapiro_smart_cache_shapiro_etan_j_km1_pipe)
    call ocl_pipe_int(shapiro_smart_cache_shapiro_wet_jm1_k_pipe)
    call ocl_pipe_int(shapiro_smart_cache_shapiro_wet_j_kp1_pipe)
    call ocl_pipe_int(shapiro_smart_cache_shapiro_wet_j_k_pipe)
    call ocl_pipe_int(shapiro_smart_cache_shapiro_wet_jp1_k_pipe)
    call ocl_pipe_int(shapiro_smart_cache_shapiro_wet_j_km1_pipe)
    call ocl_pipe_int(shapiro_wet_j_k_reader_shapiro_smart_cache_wet_j_k_pipe)
    call ocl_pipe_real(shapiro_eta_j_k_reader_shapiro_eta_j_k_pipe)
    call ocl_pipe_real(vernieuw_vernieuw_output_writer_h_j_k_pipe)
    call ocl_pipe_real(vernieuw_vernieuw_output_writer_u_j_k_pipe)
    call ocl_pipe_real(vernieuw_vernieuw_output_writer_v_j_k_pipe)
    call ocl_pipe_int(vernieuw_vernieuw_output_writer_wet_j_k_pipe)
    call ocl_pipe_real(vernieuw_vernieuw_output_writer_eta_j_k_pipe)
    call ocl_pipe_real(vernieuw_h_j_k_reader_vernieuw_h_j_k_pipe)
    call ocl_pipe_real(vernieuw_hzero_j_k_reader_vernieuw_hzero_j_k_pipe)
    call ocl_pipe_real(vernieuw_u_j_k_reader_vernieuw_u_j_k_pipe)
    call ocl_pipe_real(vernieuw_v_j_k_reader_vernieuw_v_j_k_pipe)
    call ocl_pipe_int(vernieuw_wet_j_k_reader_vernieuw_wet_j_k_pipe)
end subroutine pipe_initialisation

subroutine dyn_0_eta_j_k_reader(eta)
      real, dimension(0:501,0:501) :: eta
      real :: eta_j_k
      integer :: a
      integer :: b
    do a = 0, 501, 1
        do b = 0, 501, 1
            eta_j_k = eta(a,b)
            call write_pipe(dyn_0_eta_j_k_reader_dyn_0_smart_cache_eta_j_k_pipe, eta_j_k)
        end do
    end do
end subroutine dyn_0_eta_j_k_reader

subroutine dyn_0_smart_cache
      real :: eta_read_in
      real, dimension(0:502) :: eta_buffer
      real :: eta_j_kp1
      real :: eta_jp1_k
      real :: eta_j_k
      integer :: i
      integer :: count
      integer :: compIndex
      integer, parameter :: nloop = 252505 
      integer, parameter :: smartCacheSize = 503 
      integer, parameter :: maxPositiveOffset = 502 
      integer, parameter :: maxNegativeOffset = 0 
      integer, parameter :: driverLoopSize = 252004 
    do count = 0, nloop, 1
        compIndex = count-maxPositiveOffset
        !$PRAGMA unroll
        do i = 0, smartCacheSize-2, 1
            eta_buffer(i) = eta_buffer(i+1)
        end do
        if (count<=driverLoopSize) then
            call read_pipe(dyn_0_eta_j_k_reader_dyn_0_smart_cache_eta_j_k_pipe, eta_read_in)
            eta_buffer(502) = eta_read_in
        end if
        if (compIndex>=0) then
            eta_j_k = eta_buffer(0)
            call write_pipe(dyn_0_smart_cache_dyn_0_eta_j_k_pipe, eta_j_k)
            eta_j_kp1 = eta_buffer(502)
            call write_pipe(dyn_0_smart_cache_dyn_0_eta_j_kp1_pipe, eta_j_kp1)
            eta_jp1_k = eta_buffer(1)
            call write_pipe(dyn_0_smart_cache_dyn_0_eta_jp1_k_pipe, eta_jp1_k)
        end if
    end do
end subroutine dyn_0_smart_cache

subroutine dyn_0(dt,dx,dy,g)
      integer, parameter :: nloop = 252003 
      integer :: count
      real :: dt
      real :: du_j_k
      real :: dv_j_k
      real :: dx
      real :: dy
      real :: eta_j_kp1
      real :: eta_jp1_k
      real :: eta_j_k
      real :: g
      integer :: j
      integer :: k
    do count = 0, nloop, 1
        call read_pipe(dyn_0_smart_cache_dyn_0_eta_j_k_pipe, eta_j_k)
        call read_pipe(dyn_0_smart_cache_dyn_0_eta_j_kp1_pipe, eta_j_kp1)
        call read_pipe(dyn_0_smart_cache_dyn_0_eta_jp1_k_pipe, eta_jp1_k)
        j = count/502
        k = mod(count, 502)
        if ((j>=1) .and. (j<=500) .and. (k>=1) .and. (k<=500)) then
            du_j_k = -dt*g*(eta_j_kp1-eta_j_k)/dx
            dv_j_k = -dt*g*(eta_jp1_k-eta_j_k)/dy
        end if
        call write_pipe(dyn_0_dyn_1_du_j_k_pipe, du_j_k)
        call write_pipe(dyn_0_dyn_1_dv_j_k_pipe, dv_j_k)
    end do
end subroutine dyn_0

subroutine dyn_1_wet_j_k_reader(wet)
      integer, dimension(0:501,0:501) :: wet
      integer :: wet_j_k
      integer :: a
      integer :: b
    do a = 0, 501, 1
        do b = 0, 501, 1
            wet_j_k = wet(a,b)
            call write_pipe(dyn_1_wet_j_k_reader_dyn_1_smart_cache_wet_j_k_pipe, wet_j_k)
        end do
    end do
end subroutine dyn_1_wet_j_k_reader

subroutine dyn_1_u_j_k_reader(u)
      real, dimension(0:501,0:501) :: u
      real :: u_j_k
      integer :: a
      integer :: b
    do a = 0, 501, 1
        do b = 0, 501, 1
            u_j_k = u(a,b)
            call write_pipe(dyn_1_u_j_k_reader_dyn_1_u_j_k_pipe, u_j_k)
        end do
    end do
end subroutine dyn_1_u_j_k_reader

subroutine dyn_1_un_j_k_reader(un)
      real, dimension(0:501,0:501) :: un
      real :: un_j_k
      integer :: a
      integer :: b
    do a = 0, 501, 1
        do b = 0, 501, 1
            un_j_k = un(a,b)
            call write_pipe(dyn_1_un_j_k_reader_dyn_1_un_j_k_pipe, un_j_k)
        end do
    end do
end subroutine dyn_1_un_j_k_reader

subroutine dyn_1_v_j_k_reader(v)
      real, dimension(0:501,0:501) :: v
      real :: v_j_k
      integer :: a
      integer :: b
    do a = 0, 501, 1
        do b = 0, 501, 1
            v_j_k = v(a,b)
            call write_pipe(dyn_1_v_j_k_reader_dyn_1_v_j_k_pipe, v_j_k)
        end do
    end do
end subroutine dyn_1_v_j_k_reader

subroutine dyn_1_vn_j_k_reader(vn)
      real, dimension(0:501,0:501) :: vn
      real :: vn_j_k
      integer :: a
      integer :: b
    do a = 0, 501, 1
        do b = 0, 501, 1
            vn_j_k = vn(a,b)
            call write_pipe(dyn_1_vn_j_k_reader_dyn_1_vn_j_k_pipe, vn_j_k)
        end do
    end do
end subroutine dyn_1_vn_j_k_reader

subroutine dyn_1_smart_cache
      integer :: wet_read_in
      integer, dimension(0:502) :: wet_buffer
      integer :: wet_j_kp1
      integer :: wet_jp1_k
      integer :: wet_j_k
      integer :: i
      integer :: count
      integer :: compIndex
      integer, parameter :: nloop = 252505 
      integer, parameter :: smartCacheSize = 503 
      integer, parameter :: maxPositiveOffset = 502 
      integer, parameter :: maxNegativeOffset = 0 
      integer, parameter :: driverLoopSize = 252004 
    do count = 0, nloop, 1
        compIndex = count-maxPositiveOffset
        !$PRAGMA unroll
        do i = 0, smartCacheSize-2, 1
            wet_buffer(i) = wet_buffer(i+1)
        end do
        if (count<=driverLoopSize) then
            call read_pipe(dyn_1_wet_j_k_reader_dyn_1_smart_cache_wet_j_k_pipe, wet_read_in)
            wet_buffer(502) = wet_read_in
        end if
        if (compIndex>=0) then
            wet_j_k = wet_buffer(0)
            call write_pipe(dyn_1_smart_cache_dyn_1_wet_j_k_pipe, wet_j_k)
            wet_j_kp1 = wet_buffer(502)
            call write_pipe(dyn_1_smart_cache_dyn_1_wet_j_kp1_pipe, wet_j_kp1)
            wet_jp1_k = wet_buffer(1)
            call write_pipe(dyn_1_smart_cache_dyn_1_wet_jp1_k_pipe, wet_jp1_k)
        end if
    end do
end subroutine dyn_1_smart_cache

subroutine dyn_1
      integer, parameter :: nloop = 252003 
      integer :: count
      real :: du_j_k
      real :: duu
      real :: dv_j_k
      real :: dvv
      integer :: j
      integer :: k
      real :: u_j_k
      real :: un_j_k
      real :: uu
      real :: v_j_k
      real :: vn_j_k
      real :: vv
      integer :: wet_j_kp1
      integer :: wet_jp1_k
      integer :: wet_j_k
    do count = 0, nloop, 1
        call read_pipe(dyn_0_dyn_1_du_j_k_pipe, du_j_k)
        call read_pipe(dyn_0_dyn_1_dv_j_k_pipe, dv_j_k)
        call read_pipe(dyn_1_u_j_k_reader_dyn_1_u_j_k_pipe, u_j_k)
        call read_pipe(dyn_1_un_j_k_reader_dyn_1_un_j_k_pipe, un_j_k)
        call read_pipe(dyn_1_v_j_k_reader_dyn_1_v_j_k_pipe, v_j_k)
        call read_pipe(dyn_1_vn_j_k_reader_dyn_1_vn_j_k_pipe, vn_j_k)
        call read_pipe(dyn_1_smart_cache_dyn_1_wet_j_k_pipe, wet_j_k)
        call read_pipe(dyn_1_smart_cache_dyn_1_wet_j_kp1_pipe, wet_j_kp1)
        call read_pipe(dyn_1_smart_cache_dyn_1_wet_jp1_k_pipe, wet_jp1_k)
        j = count/502
        k = mod(count, 502)
        if ((j>=1) .and. (j<=500) .and. (k>=1) .and. (k<=500)) then
            un_j_k = 0.0
            uu = u_j_k
            duu = du_j_k
            if (wet_j_k==1) then
                if ((wet_j_kp1==1) .or. (duu>0.0)) then
                    un_j_k = uu+duu
                end if
            else
                if ((wet_j_kp1==1) .and. (duu<0.0)) then
                    un_j_k = uu+duu
                end if
            end if
            vv = v_j_k
            dvv = dv_j_k
            vn_j_k = 0.0
            if (wet_j_k==1) then
                if ((wet_jp1_k==1) .or. (dvv>0.0)) then
                    vn_j_k = vv+dvv
                end if
            else
                if ((wet_jp1_k==1) .and. (dvv<0.0)) then
                    vn_j_k = vv+dvv
                end if
            end if
        end if
        call write_pipe(dyn_1_dyn_2_smart_cache_un_j_k_pipe, un_j_k)
        call write_pipe(dyn_1_dyn_2_smart_cache_vn_j_k_pipe, vn_j_k)
    end do
end subroutine dyn_1

subroutine dyn_2_h_j_k_reader(h)
      real, dimension(0:501,0:501) :: h
      real :: h_j_k
      integer :: a
      integer :: b
    do a = 0, 501, 1
        do b = 0, 501, 1
            h_j_k = h(a,b)
            call write_pipe(dyn_2_h_j_k_reader_dyn_2_smart_cache_h_j_k_pipe, h_j_k)
        end do
    end do
end subroutine dyn_2_h_j_k_reader

subroutine dyn_2_eta_j_k_reader(eta)
      real, dimension(0:501,0:501) :: eta
      real :: eta_j_k
      integer :: a
      integer :: b
    do a = 0, 501, 1
        do b = 0, 501, 1
            eta_j_k = eta(a,b)
            call write_pipe(dyn_2_eta_j_k_reader_dyn_2_eta_j_k_pipe, eta_j_k)
        end do
    end do
end subroutine dyn_2_eta_j_k_reader

subroutine dyn_2_etan_j_k_reader(etan)
      real, dimension(0:501,0:501) :: etan
      real :: etan_j_k
      integer :: a
      integer :: b
    do a = 0, 501, 1
        do b = 0, 501, 1
            etan_j_k = etan(a,b)
            call write_pipe(dyn_2_etan_j_k_reader_dyn_2_etan_j_k_pipe, etan_j_k)
        end do
    end do
end subroutine dyn_2_etan_j_k_reader

subroutine dyn_2_smart_cache
      real :: h_read_in
      real :: un_read_in
      real :: vn_read_in
      real, dimension(0:1004) :: h_buffer
      real, dimension(0:1004) :: un_buffer
      real, dimension(0:1004) :: vn_buffer
      real :: h_jm1_k
      real :: h_j_kp1
      real :: h_j_k
      real :: h_jp1_k
      real :: h_j_km1
      real :: un_j_k
      real :: un_j_km1
      real :: vn_j_k
      real :: vn_jm1_k
      integer :: i
      integer :: count
      integer :: compIndex
      integer, parameter :: nloop = 252505 
      integer, parameter :: smartCacheSize = 1005 
      integer, parameter :: maxPositiveOffset = 502 
      integer, parameter :: maxNegativeOffset = 502 
      integer, parameter :: driverLoopSize = 252004 
    do count = 0, nloop, 1
        compIndex = count-maxPositiveOffset
        !$PRAGMA unroll
        do i = 0, smartCacheSize-2, 1
            h_buffer(i) = h_buffer(i+1)
            un_buffer(i) = un_buffer(i+1)
            vn_buffer(i) = vn_buffer(i+1)
        end do
        if (count<=driverLoopSize) then
            call read_pipe(dyn_2_h_j_k_reader_dyn_2_smart_cache_h_j_k_pipe, h_read_in)
            h_buffer(1004) = h_read_in
            call read_pipe(dyn_1_dyn_2_smart_cache_un_j_k_pipe, un_read_in)
            un_buffer(1004) = un_read_in
            call read_pipe(dyn_1_dyn_2_smart_cache_vn_j_k_pipe, vn_read_in)
            vn_buffer(1004) = vn_read_in
        end if
        if (compIndex>=0) then
            h_j_k = h_buffer(502)
            call write_pipe(dyn_2_smart_cache_dyn_2_h_j_k_pipe, h_j_k)
            h_j_km1 = h_buffer(0)
            call write_pipe(dyn_2_smart_cache_dyn_2_h_j_km1_pipe, h_j_km1)
            h_j_kp1 = h_buffer(1004)
            call write_pipe(dyn_2_smart_cache_dyn_2_h_j_kp1_pipe, h_j_kp1)
            h_jm1_k = h_buffer(501)
            call write_pipe(dyn_2_smart_cache_dyn_2_h_jm1_k_pipe, h_jm1_k)
            h_jp1_k = h_buffer(503)
            call write_pipe(dyn_2_smart_cache_dyn_2_h_jp1_k_pipe, h_jp1_k)
            un_j_k = un_buffer(502)
            call write_pipe(dyn_2_smart_cache_dyn_2_un_j_k_pipe, un_j_k)
            un_j_km1 = un_buffer(0)
            call write_pipe(dyn_2_smart_cache_dyn_2_un_j_km1_pipe, un_j_km1)
            vn_j_k = vn_buffer(502)
            call write_pipe(dyn_2_smart_cache_dyn_2_vn_j_k_pipe, vn_j_k)
            vn_jm1_k = vn_buffer(501)
            call write_pipe(dyn_2_smart_cache_dyn_2_vn_jm1_k_pipe, vn_jm1_k)
        end if
    end do
end subroutine dyn_2_smart_cache

subroutine dyn_2(dt,dx,dy)
      integer, parameter :: nloop = 252003 
      integer :: count
      real :: dt
      real :: dx
      real :: dy
      real :: eta_j_k
      real :: etan_j_k
      real :: h_jm1_k
      real :: h_j_kp1
      real :: h_j_k
      real :: h_jp1_k
      real :: h_j_km1
      real :: hen
      real :: hep
      real :: hnn
      real :: hnp
      real :: hsn
      real :: hsp
      real :: hue
      real :: huw
      real :: hvn
      real :: hvs
      real :: hwn
      real :: hwp
      integer :: j
      integer :: k
      real :: un_j_k
      real :: un_j_km1
      real :: vn_j_k
      real :: vn_jm1_k
    do count = 0, nloop, 1
        call read_pipe(dyn_2_eta_j_k_reader_dyn_2_eta_j_k_pipe, eta_j_k)
        call read_pipe(dyn_2_etan_j_k_reader_dyn_2_etan_j_k_pipe, etan_j_k)
        call read_pipe(dyn_2_smart_cache_dyn_2_h_j_k_pipe, h_j_k)
        call read_pipe(dyn_2_smart_cache_dyn_2_h_j_km1_pipe, h_j_km1)
        call read_pipe(dyn_2_smart_cache_dyn_2_h_j_kp1_pipe, h_j_kp1)
        call read_pipe(dyn_2_smart_cache_dyn_2_h_jm1_k_pipe, h_jm1_k)
        call read_pipe(dyn_2_smart_cache_dyn_2_h_jp1_k_pipe, h_jp1_k)
        call read_pipe(dyn_2_smart_cache_dyn_2_un_j_k_pipe, un_j_k)
        call read_pipe(dyn_2_smart_cache_dyn_2_un_j_km1_pipe, un_j_km1)
        call read_pipe(dyn_2_smart_cache_dyn_2_vn_j_k_pipe, vn_j_k)
        call read_pipe(dyn_2_smart_cache_dyn_2_vn_jm1_k_pipe, vn_jm1_k)
        j = count/502
        k = mod(count, 502)
        if ((j>=1) .and. (j<=500) .and. (k>=1) .and. (k<=500)) then
            hep = 0.5*(un_j_k+abs(un_j_k))*h_j_k
            hen = 0.5*(un_j_k-abs(un_j_k))*h_j_kp1
            hue = hep+hen
            hwp = 0.5*(un_j_km1+abs(un_j_km1))*h_j_km1
            hwn = 0.5*(un_j_km1-abs(un_j_km1))*h_j_k
            huw = hwp+hwn
            hnp = 0.5*(vn_j_k+abs(vn_j_k))*h_j_k
            hnn = 0.5*(vn_j_k-abs(vn_j_k))*h_jp1_k
            hvn = hnp+hnn
            hsp = 0.5*(vn_jm1_k+abs(vn_jm1_k))*h_jm1_k
            hsn = 0.5*(vn_jm1_k-abs(vn_jm1_k))*h_j_k
            hvs = hsp+hsn
            etan_j_k = eta_j_k-dt*(hue-huw)/dx-dt*(hvn-hvs)/dy
        end if
        call write_pipe(dyn_2_shapiro_smart_cache_etan_j_k_pipe, etan_j_k)
        call write_pipe(dyn_2_shapiro_smart_cache_un_j_k_pipe, un_j_k)
        call write_pipe(dyn_2_shapiro_smart_cache_vn_j_k_pipe, vn_j_k)
    end do
end subroutine dyn_2

subroutine shapiro_wet_j_k_reader(wet)
      integer, dimension(0:501,0:501) :: wet
      integer :: wet_j_k
      integer :: a
      integer :: b
    do a = 0, 501, 1
        do b = 0, 501, 1
            wet_j_k = wet(a,b)
            call write_pipe(shapiro_wet_j_k_reader_shapiro_smart_cache_wet_j_k_pipe, wet_j_k)
        end do
    end do
end subroutine shapiro_wet_j_k_reader

subroutine shapiro_eta_j_k_reader(eta)
      real, dimension(0:501,0:501) :: eta
      real :: eta_j_k
      integer :: a
      integer :: b
    do a = 0, 501, 1
        do b = 0, 501, 1
            eta_j_k = eta(a,b)
            call write_pipe(shapiro_eta_j_k_reader_shapiro_eta_j_k_pipe, eta_j_k)
        end do
    end do
end subroutine shapiro_eta_j_k_reader

subroutine shapiro_smart_cache
      real :: vn_read_in
      real :: un_read_in
      real :: etan_read_in
      integer :: wet_read_in
      real, dimension(0:1004) :: vn_buffer
      real, dimension(0:1004) :: un_buffer
      real, dimension(0:1004) :: etan_buffer
      integer, dimension(0:1004) :: wet_buffer
      real :: vn_j_k
      real :: un_j_k
      real :: etan_jm1_k
      real :: etan_j_kp1
      real :: etan_j_k
      real :: etan_jp1_k
      real :: etan_j_km1
      integer :: wet_jm1_k
      integer :: wet_j_kp1
      integer :: wet_j_k
      integer :: wet_jp1_k
      integer :: wet_j_km1
      integer :: i
      integer :: count
      integer :: compIndex
      integer, parameter :: nloop = 252505 
      integer, parameter :: smartCacheSize = 1005 
      integer, parameter :: maxPositiveOffset = 502 
      integer, parameter :: maxNegativeOffset = 502 
      integer, parameter :: driverLoopSize = 252004 
    do count = 0, nloop, 1
        compIndex = count-maxPositiveOffset
        !$PRAGMA unroll
        do i = 0, smartCacheSize-2, 1
            vn_buffer(i) = vn_buffer(i+1)
            un_buffer(i) = un_buffer(i+1)
            etan_buffer(i) = etan_buffer(i+1)
            wet_buffer(i) = wet_buffer(i+1)
        end do
        if (count<=driverLoopSize) then
            call read_pipe(dyn_2_shapiro_smart_cache_etan_j_k_pipe, etan_read_in)
            etan_buffer(1004) = etan_read_in
            call read_pipe(dyn_2_shapiro_smart_cache_un_j_k_pipe, un_read_in)
            un_buffer(1004) = un_read_in
            call read_pipe(dyn_2_shapiro_smart_cache_vn_j_k_pipe, vn_read_in)
            vn_buffer(1004) = vn_read_in
            call read_pipe(shapiro_wet_j_k_reader_shapiro_smart_cache_wet_j_k_pipe, wet_read_in)
            wet_buffer(1004) = wet_read_in
        end if
        if (compIndex>=0) then
            etan_j_k = etan_buffer(502)
            call write_pipe(shapiro_smart_cache_shapiro_etan_j_k_pipe, etan_j_k)
            etan_j_km1 = etan_buffer(0)
            call write_pipe(shapiro_smart_cache_shapiro_etan_j_km1_pipe, etan_j_km1)
            etan_j_kp1 = etan_buffer(1004)
            call write_pipe(shapiro_smart_cache_shapiro_etan_j_kp1_pipe, etan_j_kp1)
            etan_jm1_k = etan_buffer(501)
            call write_pipe(shapiro_smart_cache_shapiro_etan_jm1_k_pipe, etan_jm1_k)
            etan_jp1_k = etan_buffer(503)
            call write_pipe(shapiro_smart_cache_shapiro_etan_jp1_k_pipe, etan_jp1_k)
            un_j_k = un_buffer(502)
            call write_pipe(shapiro_smart_cache_shapiro_un_j_k_pipe, un_j_k)
            vn_j_k = vn_buffer(502)
            call write_pipe(shapiro_smart_cache_shapiro_vn_j_k_pipe, vn_j_k)
            wet_j_k = wet_buffer(502)
            call write_pipe(shapiro_smart_cache_shapiro_wet_j_k_pipe, wet_j_k)
            wet_j_km1 = wet_buffer(0)
            call write_pipe(shapiro_smart_cache_shapiro_wet_j_km1_pipe, wet_j_km1)
            wet_j_kp1 = wet_buffer(1004)
            call write_pipe(shapiro_smart_cache_shapiro_wet_j_kp1_pipe, wet_j_kp1)
            wet_jm1_k = wet_buffer(501)
            call write_pipe(shapiro_smart_cache_shapiro_wet_jm1_k_pipe, wet_jm1_k)
            wet_jp1_k = wet_buffer(503)
            call write_pipe(shapiro_smart_cache_shapiro_wet_jp1_k_pipe, wet_jp1_k)
        end if
    end do
end subroutine shapiro_smart_cache

subroutine shapiro(eps)
      integer, parameter :: nloop = 252003 
      integer :: count
      real :: eps
      real :: eta_j_k
      real :: etan_jm1_k
      real :: etan_j_kp1
      real :: etan_j_k
      real :: etan_jp1_k
      real :: etan_j_km1
      integer :: j
      integer :: k
      real :: term1
      real :: term2
      real :: term3
      integer :: wet_jm1_k
      integer :: wet_j_kp1
      integer :: wet_j_k
      integer :: wet_jp1_k
      integer :: wet_j_km1
    do count = 0, nloop, 1
        call read_pipe(shapiro_eta_j_k_reader_shapiro_eta_j_k_pipe, eta_j_k)
        call read_pipe(shapiro_smart_cache_shapiro_etan_j_k_pipe, etan_j_k)
        call read_pipe(shapiro_smart_cache_shapiro_etan_j_km1_pipe, etan_j_km1)
        call read_pipe(shapiro_smart_cache_shapiro_etan_j_kp1_pipe, etan_j_kp1)
        call read_pipe(shapiro_smart_cache_shapiro_etan_jm1_k_pipe, etan_jm1_k)
        call read_pipe(shapiro_smart_cache_shapiro_etan_jp1_k_pipe, etan_jp1_k)
        call read_pipe(shapiro_smart_cache_shapiro_un_j_k_pipe, un_j_k)
        call read_pipe(shapiro_smart_cache_shapiro_vn_j_k_pipe, vn_j_k)
        call read_pipe(shapiro_smart_cache_shapiro_wet_j_k_pipe, wet_j_k)
        call read_pipe(shapiro_smart_cache_shapiro_wet_j_km1_pipe, wet_j_km1)
        call read_pipe(shapiro_smart_cache_shapiro_wet_j_kp1_pipe, wet_j_kp1)
        call read_pipe(shapiro_smart_cache_shapiro_wet_jm1_k_pipe, wet_jm1_k)
        call read_pipe(shapiro_smart_cache_shapiro_wet_jp1_k_pipe, wet_jp1_k)
        j = count/502
        k = mod(count, 502)
        if ((j>=1) .and. (j<=500) .and. (k>=1) .and. (k<=500)) then
            if (wet_j_k==1) then
                term1 = (1.0-0.25*eps*(wet_j_kp1+wet_j_km1+wet_jp1_k+wet_jm1_k))*etan_j_k
                term2 = 0.25*eps*(wet_j_kp1*etan_j_kp1+wet_j_km1*etan_j_km1)
                term3 = 0.25*eps*(wet_jp1_k*etan_jp1_k+wet_jm1_k*etan_jm1_k)
                eta_j_k = term1+term2+term3
            else
                eta_j_k = etan_j_k
            end if
        end if
        call write_pipe(shapiro_vernieuw_eta_j_k_pipe, eta_j_k)
        call write_pipe(shapiro_vernieuw_un_j_k_pipe, un_j_k)
        call write_pipe(shapiro_vernieuw_vn_j_k_pipe, vn_j_k)
    end do
end subroutine shapiro

subroutine vernieuw_h_j_k_reader(h)
      real, dimension(0:501,0:501) :: h
      real :: h_j_k
      integer :: a
      integer :: b
    do a = 0, 501, 1
        do b = 0, 501, 1
            h_j_k = h(a,b)
            call write_pipe(vernieuw_h_j_k_reader_vernieuw_h_j_k_pipe, h_j_k)
        end do
    end do
end subroutine vernieuw_h_j_k_reader

subroutine vernieuw_hzero_j_k_reader(hzero)
      real, dimension(0:501,0:501) :: hzero
      real :: hzero_j_k
      integer :: a
      integer :: b
    do a = 0, 501, 1
        do b = 0, 501, 1
            hzero_j_k = hzero(a,b)
            call write_pipe(vernieuw_hzero_j_k_reader_vernieuw_hzero_j_k_pipe, hzero_j_k)
        end do
    end do
end subroutine vernieuw_hzero_j_k_reader

subroutine vernieuw_u_j_k_reader(u)
      real, dimension(0:501,0:501) :: u
      real :: u_j_k
      integer :: a
      integer :: b
    do a = 0, 501, 1
        do b = 0, 501, 1
            u_j_k = u(a,b)
            call write_pipe(vernieuw_u_j_k_reader_vernieuw_u_j_k_pipe, u_j_k)
        end do
    end do
end subroutine vernieuw_u_j_k_reader

subroutine vernieuw_v_j_k_reader(v)
      real, dimension(0:501,0:501) :: v
      real :: v_j_k
      integer :: a
      integer :: b
    do a = 0, 501, 1
        do b = 0, 501, 1
            v_j_k = v(a,b)
            call write_pipe(vernieuw_v_j_k_reader_vernieuw_v_j_k_pipe, v_j_k)
        end do
    end do
end subroutine vernieuw_v_j_k_reader

subroutine vernieuw_wet_j_k_reader(wet)
      integer, dimension(0:501,0:501) :: wet
      integer :: wet_j_k
      integer :: a
      integer :: b
    do a = 0, 501, 1
        do b = 0, 501, 1
            wet_j_k = wet(a,b)
            call write_pipe(vernieuw_wet_j_k_reader_vernieuw_wet_j_k_pipe, wet_j_k)
        end do
    end do
end subroutine vernieuw_wet_j_k_reader

subroutine vernieuw(hmin)
      integer, parameter :: nloop = 252003 
      integer :: count
      real :: eta_j_k
      real :: h_j_k
      real, intent(In) :: hmin
      real :: hzero_j_k
      integer :: j
      integer :: k
      real :: u_j_k
      real :: un_j_k
      real :: v_j_k
      real :: vn_j_k
      integer :: wet_j_k
    do count = 0, nloop, 1
        call read_pipe(shapiro_vernieuw_eta_j_k_pipe, eta_j_k)
        call read_pipe(vernieuw_h_j_k_reader_vernieuw_h_j_k_pipe, h_j_k)
        call read_pipe(vernieuw_hzero_j_k_reader_vernieuw_hzero_j_k_pipe, hzero_j_k)
        call read_pipe(vernieuw_u_j_k_reader_vernieuw_u_j_k_pipe, u_j_k)
        call read_pipe(shapiro_vernieuw_un_j_k_pipe, un_j_k)
        call read_pipe(vernieuw_v_j_k_reader_vernieuw_v_j_k_pipe, v_j_k)
        call read_pipe(shapiro_vernieuw_vn_j_k_pipe, vn_j_k)
        call read_pipe(vernieuw_wet_j_k_reader_vernieuw_wet_j_k_pipe, wet_j_k)
        j = count/502
        k = mod(count, 502)
        if ((j>=0) .and. (j<=501) .and. (k>=0) .and. (k<=501)) then
            h_j_k = hzero_j_k+eta_j_k
            wet_j_k = 1
            if (h_j_k<hmin) then
                wet_j_k = 0
            end if
            u_j_k = un_j_k
            v_j_k = vn_j_k
        end if
        call write_pipe(vernieuw_vernieuw_output_writer_eta_j_k_pipe, eta_j_k)
        call write_pipe(vernieuw_vernieuw_output_writer_h_j_k_pipe, h_j_k)
        call write_pipe(vernieuw_vernieuw_output_writer_u_j_k_pipe, u_j_k)
        call write_pipe(vernieuw_vernieuw_output_writer_v_j_k_pipe, v_j_k)
        call write_pipe(vernieuw_vernieuw_output_writer_wet_j_k_pipe, wet_j_k)
    end do
end subroutine vernieuw

subroutine vernieuw_output_writer(eta,h,u,v,wet)
      real :: eta_j_k_read_in
      real, dimension(0:501,0:501) :: eta
      real :: h_j_k_read_in
      real, dimension(0:501,0:501) :: h
      real :: u_j_k_read_in
      real, dimension(0:501,0:501) :: u
      real :: v_j_k_read_in
      real, dimension(0:501,0:501) :: v
      integer :: wet_j_k_read_in
      integer, dimension(0:501,0:501) :: wet
      integer :: a
      integer :: b
    do a = 0, 501, 1
        do b = 0, 501, 1
            call read_pipe(vernieuw_vernieuw_output_writer_eta_j_k_pipe, eta_j_k_read_in)
            eta(a,b) = eta_j_k_read_in
            call read_pipe(vernieuw_vernieuw_output_writer_h_j_k_pipe, h_j_k_read_in)
            h(a,b) = h_j_k_read_in
            call read_pipe(vernieuw_vernieuw_output_writer_u_j_k_pipe, u_j_k_read_in)
            u(a,b) = u_j_k_read_in
            call read_pipe(vernieuw_vernieuw_output_writer_v_j_k_pipe, v_j_k_read_in)
            v(a,b) = v_j_k_read_in
            call read_pipe(vernieuw_vernieuw_output_writer_wet_j_k_pipe, wet_j_k_read_in)
            wet(a,b) = wet_j_k_read_in
        end do
    end do
end subroutine vernieuw_output_writer

end module dyn_shapiro_vernieuw_device_code
