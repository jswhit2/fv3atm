
  module module_fv3_config
!------------------------------------------------------------------------
!
!*** fv3 configure variablse from model_configure
!
! revision history
! 01/2017   Jun Wang    Initial code
!
!------------------------------------------------------------------------
!
  use esmf

  implicit none
!
  integer                  :: nfhout, nfhout_hf, nsout, dt_atmos
  integer                  :: nfhmax, nfhmax_hf, first_kdt
  integer                  :: num_restart_interval
  integer                  :: frestart(1000)
  type(ESMF_Alarm)         :: alarm_output_hf, alarm_output
  type(ESMF_TimeInterval)  :: output_hfmax
  type(ESMF_TimeInterval)  :: output_interval,output_interval_hf
!
  logical                  :: cpl, cplprint_flag
  logical                  :: quilting, output_1st_tstep_rst
  logical                  :: force_date_from_configure
  logical                  :: restart_endfcst
!
  integer,dimension(:),allocatable                :: restart_interval
  character(esmf_maxstr),dimension(:),allocatable :: filename_base
  character(17)            :: calendar='                 '
  integer                  :: calendar_type = -99
!
  end module module_fv3_config
