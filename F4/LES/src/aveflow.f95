module module_aveflow
#ifdef WV_NEW
    implicit none
#endif
contains
#ifdef WV_NEW
subroutine aveflow(n,n1,aveu,avev,avew,avep,&
!avel,&
aveuu,avevv,aveww,avesm,avesmsm, &
      uwfx,u,v,w,p,sm,nmax)
#else
subroutine aveflow(n,n1,aveu,avev,avew,avep,avel,aveuu,avevv,aveww,avesm,avesmsm, &
      uwfx,avesu,avesv,avesw,avesuu,avesvv,avesww,u,v,w,p,sm,nmax,uwfxs,data10,time,data11,data13,data14) !,amask1)
#endif
#ifdef WV_NEW
    use params_common_sn ! create_new_include_statements() line 102
#else
    use common_sn ! create_new_include_statements() line 102
#endif
#ifdef MPI
    use communication_helper_real
#endif
!    real(kind=4), dimension(ip,jp,kp) , intent(Out) :: avel
    real(kind=4), dimension(ip,jp,kp) , intent(Out) :: avep
    real(kind=4), dimension(ip,jp,kp) , intent(Out) :: avesm
    real(kind=4), dimension(ip,jp,kp) , intent(Out) :: avesmsm
#ifndef WV_NEW
    real(kind=4), dimension(ip,kp) , intent(Out) :: avesu
    real(kind=4), dimension(ip,kp) , intent(Out) :: avesuu
    real(kind=4), dimension(ip,kp) , intent(Out) :: avesv
    real(kind=4), dimension(ip,kp) , intent(Out) :: avesvv
    real(kind=4), dimension(ip,kp) , intent(Out) :: avesw
    real(kind=4), dimension(ip,kp) , intent(Out) :: avesww
#endif
    real(kind=4), dimension(ip,jp,0:kp) , intent(Out) :: aveu
    real(kind=4), dimension(ip,jp,kp) , intent(Out) :: aveuu
    real(kind=4), dimension(ip,jp,0:kp) , intent(Out) :: avev
    real(kind=4), dimension(ip,jp,kp) , intent(Out) :: avevv
    real(kind=4), dimension(ip+1,jp,0:kp+2) , intent(Out) :: avew
    real(kind=4), dimension(ip,jp,kp) , intent(Out) :: aveww

    real(kind=4), dimension(0:ip+1,-1:jp+1,0:kp+1) , intent(In) :: u
    real(kind=4), dimension(0:ip+1,-1:jp+1,0:kp+1) , intent(In) :: v
    real(kind=4), dimension(0:ip+1,-1:jp+1,-1:kp+1) , intent(In) :: w
    real(kind=4), dimension(0:ip+2,0:jp+2,0:kp+1) , intent(In) :: p
    real(kind=4), dimension(-1:ip+1,-1:jp+1,0:kp+1) , intent(In) :: sm
    real(kind=4), dimension(ip,jp,kp) , intent(Out) :: uwfx
#ifndef WV_NEW
    real(kind=4), dimension(ip,kp) , intent(InOut) :: uwfxs
#endif
#if defined(MPI_NEW_WV) || defined(WV_NEW)
    integer :: irec
    character(len=70) :: filename
#endif
      integer :: k
      integer :: j
      integer :: i
#ifndef WV_NEW
    real(kind=4), intent(In) :: time
    character(len=70), intent(In) :: data10
    character(len=70), intent(In) :: data11
    ! extra
    character(len=70), intent(In) :: data13
    character(len=70), intent(In) :: data14
#endif
    !
    integer, intent(In) :: n
    integer, intent(In) :: n1
    integer, intent(In) :: nmax

!    real(kind=4), dimension(0:ip+1,0:jp+1,0:kp+1)  , intent(In)  :: amask1
    real(kind=4), dimension(0:ipmax+1,0:jpmax+1,0:kp+1)   :: amask1a

!output
!    real(kind=4), dimension(0:ipmax,0:jpmax,0:kp)  :: aveua
 !   real(kind=4), dimension(0:ipmax,0:jpmax,0:kp)  :: aveva
 !   real(kind=4), dimension(ipmax+1,jpmax,0:kp+2)  :: avewa
 !   real(kind=4), dimension(0:ipmax,0:jpmax,0:kp)  :: aveuua
 !   real(kind=4), dimension(0:ipmax,0:jpmax,0:kp)  :: avevva
 !   real(kind=4), dimension(0:ipmax,0:jpmax,0:kp)  :: avewwa
 !   real(kind=4), dimension(0:ipmax,0:jpmax,0:kp)  :: uwfxa
 !   integer, dimension(ip,kp) :: js
 !   integer, dimension(kp) :: ijs
 !   real(kind=4), dimension(ip,kp) :: avesssu
 !   real(kind=4), dimension(ip,kp) :: avesssv
 !   real(kind=4), dimension(ip,kp) :: avesssw
 !   real(kind=4), dimension(ip,kp) :: avesssuu
 !   real(kind=4), dimension(ip,kp) :: avesssvv
 !   real(kind=4), dimension(ip,kp) :: avesssww
 !   real(kind=4), dimension(ip,kp) :: uwfxsss
 !   real(kind=4), dimension(kp) :: avessu
 !   real(kind=4), dimension(kp) :: avessv
 !   real(kind=4), dimension(kp) :: avessw
 !   real(kind=4), dimension(kp) :: avessuu
 !   real(kind=4), dimension(kp) :: avessvv
 !   real(kind=4), dimension(kp) :: avessww
 !   real(kind=4), dimension(kp) :: uwfxss

    integer :: ibuffer, jbuffer ! WV: note that these are only declared, not assigned!

    real(kind=4),allocatable :: aveua(:,:,:)
    real(kind=4),allocatable :: aveva(:,:,:)
    real(kind=4),allocatable :: avewa(:,:,:)
    real(kind=4),allocatable :: aveuua(:,:,:)
    real(kind=4),allocatable :: avevva(:,:,:)
    real(kind=4),allocatable :: avewwa(:,:,:)
    real(kind=4),allocatable :: uwfxa(:,:,:)
    real(kind=4),allocatable :: avepa(:,:,:)

! WV: This is the first timestep. As there is no MPI comms, this is OK
    if(n == n1) then
        do k = 1,kp
            do j = 1,jp
                do i = 1,ip
                    avev(i,j,k) = 0.0
                    avep(i,j,k) = 0.0
!                    avel(i,j,k) = 0.0
                    aveuu(i,j,k) = 0.0
                    avevv(i,j,k) = 0.0
                    aveww(i,j,k) = 0.0
                    avesm(i,j,k) = 0.0
                    avesmsm(i,j,k) = 0.0
                    uwfx(i,j,k) = 0.0
                end do
            end do
        end do

        do k = 0,kp
            do j = 1,jp
                do i = 1,ip
                    aveu(i,j,k) = 0.0
                end do
            end do
        end do
        do k = 0,kp
            do j = 1,jp
                do i = 1,ip+1
                    avew(i,j,k) = 0.0
                end do
            end do
        end do
    end if
! WV: Ditto
    if(n >= n1) then
        do k = 1,kp
            do j = 1,jp
                do i = 1,ip
                    avev(i,j,k) = avev(i,j,k)+v(i,j,k)
                    avep(i,j,k) = avep(i,j,k)+p(i,j,k)
                    aveuu(i,j,k) = aveuu(i,j,k)+u(i,j,k)**2
                    avevv(i,j,k) = avevv(i,j,k)+v(i,j,k)**2
                    aveww(i,j,k) = aveww(i,j,k)+w(i,j,k)**2
                    avesm(i,j,k) = avesm(i,j,k)+sm(i,j,k)
                    avesmsm(i,j,k) = avesmsm(i,j,k)+sm(i,j,k)**2
                    uwfx(i,j,k) = uwfx(i,j,k)+0.5*(u(i,j,k-1)+u(i,j,k)) * &
                                  0.5*(w(i,j,k-1)+w(i+1,j,k-1))
                end do
            end do
        end do

        do k = 0,kp
            do j = 1,jp
                do i = 1,ip
                    aveu(i,j,k) = aveu(i,j,k)+u(i,j,k)
                end do
            end do
        end do
        do k = 0,kp
            do j = 1,jp
                do i = 1,ip+1
                    avew(i,j,k) = avew(i,j,k)+w(i,j,k)
                end do
            end do
        end do
  endif

  if(n == nmax) then
  !WV: I reason that for this n, syncTicks should always be 0
!  print *, rank,syncTicks
      do k = 1,kp
          do j = 1,jp
              do i = 1,ip
!                  aveu(i,j,k) = aveu(i,j,k)/real(nmax-n1+1)
                  avev(i,j,k) = avev(i,j,k)/real(nmax-n1+1)
!                  avew(i,j,k) = avew(i,j,k)/real(nmax-n1+1)
                  avep(i,j,k) = avep(i,j,k)/real(nmax-n1+1)
!                  avel(i,j,k) = avel(i,j,k)/real(nmax-n1+1)
                  aveuu(i,j,k) = aveuu(i,j,k)/real(nmax-n1+1)
                  avevv(i,j,k) = avevv(i,j,k)/real(nmax-n1+1)
                  aveww(i,j,k) = aveww(i,j,k)/real(nmax-n1+1)
                  avesm(i,j,k) = avesm(i,j,k)/real(nmax-n1+1)
                  avesmsm(i,j,k) = avesmsm(i,j,k)/real(nmax-n1+1)
              end do
            end do
        end do

        do k = 0,kp
            do j = 1,jp
                do i = 1,ip
                    aveu(i,j,k) = aveu(i,j,k)/real(nmax-n1+1)
                end do
            end do
        end do
        do k = 0,kp
            do j = 1,jp
                do i = 1,ip+1
                    avew(i,j,k) = avew(i,j,k)/real(nmax-n1+1)
                end do
            end do
        end do

        do k = 1,kp
            do j = 1,jp
                do i = 1,ip
                    uwfx(i,j,k) = uwfx(i,j,k)/real(nmax-n1+1) - &
                                  0.5*(aveu(i,j,k-1)+aveu(i,j,k)) * &
                                  0.5*(avew(i,j, k-1)+avew(i+1,j,k-1))
                end do
            end do
        end do

        do k = 1,kp
            do j = 1,jp
                do i = 1,ip
                    aveuu(i,j,k) = sqrt(abs(aveuu(i,j,k)-aveu(i,j,k)**2))
                    avevv(i,j,k) = sqrt(abs(avevv(i,j,k)-avev(i,j,k)**2))
                    aveww(i,j,k) = sqrt(abs(aveww(i,j,k)-avew(i,j,k)**2))
                end do
            end do
        end do


#ifdef MPI
        if (isMaster()) then
           write(filename, '("../ave_data/data10",i6.6, ".dat")') n
           open(unit=10,file=filename,form='unformatted',status='unknown')
        end if
        allocate(aveua(0:ipmax,0:jpmax,0:kp))
        call distributeaveu(aveua, aveu, ip, jp, kp, ipmax, jpmax, procPerRow)
        if (isMaster()) then
               do k = 1,kp
                  do j = 1,jp
                     do i = 1,ip
                         aveua(i,j,k) = aveu(i,j,k)
                     end do
                  end do
               end do
               write(10) (((aveua(i,j,k),i=ibuffer+1,ipmax-ibuffer),j=jbuffer+1,jpmax-jbuffer),k=1,kp)
         end if
         deallocate(aveua)
   
         allocate(avewa(ipmax+1,jpmax,0:kp+2))
         call distributeavew(avewa, avew, ip, jp, kp, ipmax, jpmax, procPerRow)
            if (isMaster()) then
               do k = 1,kp
                  do j = 1,jp
                     do i = 1,ip
                         avewa(i,j,k) = avew(i,j,k)
                     end do
                  end do
               end do
               write(10) (((avewa(i,j,k),i=ibuffer+1,ipmax-ibuffer),j=jbuffer+1,jpmax-jbuffer),k=1,kp)
            end if
         deallocate(avewa)
   
         allocate(aveva(0:ipmax,0:jpmax,0:kp))
         call distributeaveu(aveva, avev, ip, jp, kp, ipmax, jpmax, procPerRow)
            if (isMaster()) then
               do k = 1,kp
                  do j = 1,jp
                     do i = 1,ip
                         aveva(i,j,k) = avev(i,j,k)
                     end do
                  end do
               end do
               write(10) (((aveva(i,j,k),i=ibuffer+1,ipmax-ibuffer),j=jbuffer+1,jpmax-jbuffer),k=1,kp)
            end if
         deallocate(aveva)
   
         allocate(avepa(0:ipmax,0:jpmax,0:kp))
         call distributeaveuu(avepa, avep, ip, jp, kp, ipmax, jpmax, procPerRow)
            if (isMaster()) then
               do k = 1,kp
                  do j = 1,jp
                     do i = 1,ip
                         avepa(i,j,k) = avep(i,j,k)
                     end do
                  end do
               end do
               write(10) (((avepa(i,j,k),i=ibuffer+1,ipmax-ibuffer),j=jbuffer+1,jpmax-jbuffer),k=1,kp)
               close(10)
            end if
         deallocate(avepa)


        if (isMaster()) then
           write(filename, '("../ave_data/data11",i6.6, ".dat")') n
           open(unit=11,file=filename,form='unformatted',status='unknown')
        end if
         allocate(aveuua(0:ipmax,0:jpmax,0:kp))
         call distributeaveuu(aveuua, aveuu, ip, jp, kp, ipmax, jpmax, procPerRow)
         if (isMaster()) then
            do k = 1,kp
               do j = 1,jp
                  do i = 1,ip
                      aveuua(i,j,k) = aveuu(i,j,k)
                  end do
               end do
            end do
            write(11) (((aveuua(i,j,k),i=ibuffer+1,ipmax-ibuffer),j=jbuffer+1,jpmax-jbuffer),k=1,kp)
         end if
         deallocate(aveuua)
       
       
         allocate(avewwa(0:ipmax,0:jpmax,0:kp))
         call distributeaveuu(avewwa, aveww, ip, jp, kp, ipmax, jpmax, procPerRow)
         if (isMaster()) then
            do k = 1,kp
               do j = 1,jp
                  do i = 1,ip
                      avewwa(i,j,k) = aveww(i,j,k)
                  end do
               end do
            end do
            write(11) (((avewwa(i,j,k),i=ibuffer+1,ipmax-ibuffer),j=jbuffer+1,jpmax-jbuffer),k=1,kp)
         end if
         deallocate(avewwa)
       
         allocate(avevva(0:ipmax,0:jpmax,0:kp))
         call distributeaveuu(avevva, avevv, ip, jp, kp, ipmax, jpmax, procPerRow)
         if (isMaster()) then
            do k = 1,kp
               do j = 1,jp
                  do i = 1,ip
                      avevva(i,j,k) = avevv(i,j,k)
                  end do
               end do
            end do
            write(11) (((avevva(i,j,k),i=ibuffer+1,ipmax-ibuffer),j=jbuffer+1,jpmax-jbuffer),k=1,kp)
         end if
         deallocate(avevva)
       
        allocate(uwfxa(0:ipmax,0:jpmax,0:kp))
        call distributeaveuu(uwfxa, uwfx, ip, jp, kp, ipmax, jpmax, procPerRow)
        if (isMaster()) then
            do k = 1,kp
               do j = 1,jp
                  do i = 1,ip
                      uwfxa(i,j,k) = uwfx(i,j,k)
                  end do
               end do
            end do
            write(11) (((uwfxa(i,j,k),i=ibuffer+1,ipmax-ibuffer),j=jbuffer+1,jpmax-jbuffer),k=1,kp)
            close(11)
 
        end if
        deallocate(uwfxa)

        do k = 1,kp
            do j = 1,jp
                do i = 1,ip
                    aveu(i,j,k) = 0.0
                    avev(i,j,k) = 0.0
                    avew(i,j,k) = 0.0
                    avep(i,j,k) = 0.0
!                    avel(i,j,k) = 0.0
                    aveuu(i,j,k) = 0.0
                    avevv(i,j,k) = 0.0
                    aveww(i,j,k) = 0.0
                    avesm(i,j,k) = 0.0
                    avesmsm(i,j,k) = 0.0
                    uwfx(i,j,k) = 0.0
                end do
            end do
        end do
#else
#endif

    endif ! n==nmax
end subroutine aveflow

end module module_aveflow

