
# -------------------------------------------------------------------------------
# --                                                                           --
# --                                                                           --
# --                                                                           --
# -------------------------------------------------------------------------------
# --! @file    modelsim_do_vortex.tcl
# --! @brief   modelsim tcl script for vortex library
# --! @author  Hossam Hassan  
# --! @company SiliconArts
# --! @created 2021-08-26
# -------------------------------------------------------------------------------
# -------------------------------------------------------------------------------
# ------------------------------------------------------------------------------
#OPT=-sv -sv12compat -incr -sv -sv12compat -incr12compat
# compile
# ------------------------------------------------------------------------------
puts ">>> Script for Vortex Simulation using Modelsim ..."
#vcom -version >tempVersion.txt
# default simulator is Questa/Modelsim
set ::DEFAULT_SIMULATOR vsim
#============== Library Mapping ==============
#global SIM_LIBRARY_DIRNAME
#set SIM_LIBRARY_DIRNAME vortex_lib
#set LIB vortex_lib
vlib vortex_lib
vmap work vortex_lib 

# create empty list
#set designLibrary {$files}

# vlib designLibrary
# vmap work designLibrary

#*****************************************************************************************
#SRC
puts ">>> Adding File List ..."
#*****************************************************************************************
# ----------------------------------------
# Compile the design files in correct order
set CurrDir [pwd]
puts $CurrDir
#../../../hw/syn/modelsim
vlog  -sv -work vortex_lib "../../../hw/rtl/VX_platform.vh" \
"+incdir+../../../hw/rtl" \
"+incdir+../../../hw/dpi" \
"+incdir+../../../hw/rtl/cache" \
"../../../hw/dpi/util_dpi.vh" \
"../../../hw/rtl/fp_cores/fpnew/src/common_cells/include/common_cells/registers.svh" \
"../../../hw/dpi/float_dpi.vh" \
"../../../hw/rtl/VX_define.vh" \
"../../../hw/rtl/VX_config.vh" \
"../../../hw/rtl/VX_scope.vh" \
"../../../hw/rtl/VX_types.vh" \
"../../../hw/rtl/VX_print_instr.vh" \
"../../../hw/rtl/cache/VX_cache_define.vh" \
"../../../hw/rtl/interfaces/VX_alu_req_if.v" \
"../../../hw/rtl/VX_alu_unit.v" \
"../../../hw/rtl/cache/VX_bank.v" \
"../../../hw/rtl/interfaces/VX_branch_ctl_if.v" \
"../../../hw/rtl/cache/VX_cache.v" \
"../../../hw/rtl/cache/VX_cache_core_req_bank_sel.v" \
"../../../hw/rtl/cache/VX_cache_core_rsp_merge.v" \
"../../../hw/rtl/interfaces/VX_cache_mem_req_if.v" \
"../../../hw/rtl/interfaces/VX_cache_mem_rsp_if.v" \
"../../../hw/rtl/VX_cluster.v" \
"../../../hw/rtl/interfaces/VX_cmt_to_csr_if.v" \
"../../../hw/rtl/VX_commit.v" \
"../../../hw/rtl/interfaces/VX_commit_if.v" \
"../../../hw/rtl/VX_core.v" \
"../../../hw/rtl/VX_csr_data.v" \
"../../../hw/rtl/interfaces/VX_csr_req_if.v" \
"../../../hw/rtl/VX_csr_unit.v" \
"../../../hw/rtl/cache/VX_data_access.v" \
"../../../hw/rtl/interfaces/VX_dcache_core_req_if.v" \
"../../../hw/rtl/interfaces/VX_dcache_core_rsp_if.v" \
"../../../hw/rtl/VX_decode.v" \
"../../../hw/rtl/interfaces/VX_decode_if.v" \
"../../../hw/rtl/libs/VX_dp_ram.v" \
"../../../hw/rtl/VX_execute.v" \
"../../../hw/rtl/libs/VX_fair_arbiter.v" \
"../../../hw/rtl/VX_fetch.v" \
"../../../hw/rtl/libs/VX_fifo_queue.v" \
"../../../hw/rtl/libs/VX_fixed_arbiter.v" \
"../../../hw/rtl/cache/VX_flush_ctrl.v" \
"../../../hw/rtl/fp_cores/VX_fp_cvt.v" \
"../../../hw/rtl/fp_cores/VX_fp_div.v" \
"../../../hw/rtl/fp_cores/VX_fp_fma.v" \
"../../../hw/rtl/fp_cores/VX_fp_ncomp.v" \
"../../../hw/rtl/fp_cores/VX_fp_rounding.v" \
"../../../hw/rtl/fp_cores/VX_fp_sqrt.v" \
"../../../hw/rtl/fp_cores/VX_fp_type.v" \
"../../../hw/rtl/fp_cores/VX_fpu_fpga.v" \
"../../../hw/rtl/interfaces/VX_fpu_req_if.v" \
"../../../hw/rtl/interfaces/VX_fpu_to_csr_if.v" \
"../../../hw/rtl/VX_fpu_unit.v" \
"../../../hw/rtl/VX_gpr_ram_f.v" \
"../../../hw/rtl/interfaces/VX_gpr_req_if.v" \
"../../../hw/rtl/interfaces/VX_gpr_rsp_if.v" \
"../../../hw/rtl/VX_gpr_stage.v" \
"../../../hw/rtl/interfaces/VX_gpu_req_if.v" \
"../../../hw/rtl/VX_gpu_unit.v" \
"../../../hw/rtl/VX_ibuffer.v" \
"../../../hw/rtl/interfaces/VX_icache_core_req_if.v" \
"../../../hw/rtl/interfaces/VX_icache_core_rsp_if.v" \
"../../../hw/rtl/VX_icache_stage.v" \
"../../../hw/rtl/interfaces/VX_ifetch_req_if.v" \
"../../../hw/rtl/interfaces/VX_ifetch_rsp_if.v" \
"../../../hw/rtl/libs/VX_index_buffer.v" \
"../../../hw/rtl/VX_instr_demux.v" \
"../../../hw/rtl/VX_ipdom_stack.v" \
"../../../hw/rtl/VX_issue.v" \
"../../../hw/rtl/interfaces/VX_join_if.v" \
"../../../hw/rtl/interfaces/VX_lsu_req_if.v" \
"../../../hw/rtl/VX_lsu_unit.v" \
"../../../hw/rtl/libs/VX_lzc.v" \
"../../../hw/rtl/libs/VX_matrix_arbiter.v" \
"../../../hw/rtl/VX_mem_arb.v" \
"../../../hw/rtl/VX_mem_unit.v" \
"../../../hw/rtl/cache/VX_miss_resrv.v" \
"../../../hw/rtl/VX_muldiv.v" \
"../../../hw/rtl/libs/VX_multiplier.v" \
"../../../hw/rtl/cache/VX_nc_bypass.v" \
"../../../hw/rtl/libs/VX_onehot_encoder.v" \
"../../../hw/rtl/libs/VX_pending_size.v" \
"../../../hw/rtl/libs/VX_pipe_register.v" \
"../../../hw/rtl/VX_pipeline.v" \
"../../../hw/rtl/libs/VX_priority_encoder.v" \
"../../../hw/rtl/libs/VX_reset_relay.v" \
"../../../hw/rtl/libs/VX_rr_arbiter.v" \
"../../../hw/rtl/libs/VX_scan.v" \
"../../../hw/rtl/VX_scoreboard.v" \
"../../../hw/rtl/libs/VX_serial_div.v" \
"../../../hw/rtl/cache/VX_shared_mem.v" \
"../../../hw/rtl/libs/VX_shift_register.v" \
"../../../hw/rtl/libs/VX_skid_buffer.v" \
"../../../hw/rtl/VX_smem_arb.v" \
"../../../hw/rtl/libs/VX_sp_ram.v" \
"../../../hw/rtl/libs/VX_stream_arbiter.v" \
"../../../hw/rtl/libs/VX_stream_demux.v" \
"../../../hw/rtl/cache/VX_tag_access.v" \
"../../../hw/rtl/interfaces/VX_warp_ctl_if.v" \
"../../../hw/rtl/VX_warp_sched.v" \
"../../../hw/rtl/VX_writeback.v" \
"../../../hw/rtl/interfaces/VX_writeback_if.v" \
"../../../hw/rtl/interfaces/VX_wstall_if.v" \
"../../../hw/rtl/Vortex.v" \
"../../../hw/rtl/VortexTB.v" \

puts ">>> Successfully Added File List ..."
#*****************************************************************************************



