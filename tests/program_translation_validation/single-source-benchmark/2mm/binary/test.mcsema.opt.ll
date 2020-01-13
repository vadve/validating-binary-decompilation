; ModuleID = 'binary/test.mcsema.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4015d0__rodata_type = type <{ [48 x i8], [7 x i8], [51 x i8], [76 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%seg_602080__bss_type = type <{ [8 x i8], [8 x i8] }>
%polybench_papi_counters_threadid_type = type <{ [8 x i8] }>
%polybench_program_total_flops_type = type <{ [8 x i8] }>
%polybench_c_end_type = type <{ [8 x i8] }>
%polybench_t_end_type = type <{ [8 x i8] }>
%polybench_t_start_type = type <{ [8 x i8] }>
%polybench_c_start_type = type <{ [8 x i8] }>
%struct.State = type { %struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, %union.anon, %struct.Segments, %struct.AddressSpace, %struct.GPR, %struct.X87Stack, %struct.MMX, %struct.FPUStatusFlags, %union.anon, %union.FPU, %struct.SegmentCaches }
%struct.ArchState = type { i32, i32, %union.anon }
%union.VectorReg = type { %union.vec512_t }
%union.vec512_t = type { %struct.uint64v8_t }
%struct.uint64v8_t = type { [8 x i64] }
%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Segments = type { i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector }
%union.SegmentSelector = type { i16 }
%struct.AddressSpace = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.Reg = type { %union.anon }
%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.X87Stack = type { [8 x %struct.anon.3] }
%struct.anon.3 = type { i64, double }
%struct.MMX = type { [8 x %struct.anon.4] }
%struct.anon.4 = type { i64, %union.vec64_t }
%union.vec64_t = type { %struct.uint64v1_t }
%struct.uint64v1_t = type { [1 x i64] }
%struct.FPUStatusFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8] }
%union.FPU = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.FpuFXSAVE, [96 x i8] }
%struct.FpuFXSAVE = type { %union.SegmentSelector, %union.SegmentSelector, %union.FPUAbridgedTagWord, i8, i16, i32, %union.SegmentSelector, i16, i32, %union.SegmentSelector, i16, %union.FPUControlStatus, %union.FPUControlStatus, [8 x %struct.FPUStackElem], [16 x %union.vec128_t] }
%union.FPUAbridgedTagWord = type { i8 }
%union.FPUControlStatus = type { i32 }
%struct.FPUStackElem = type { %union.anon.11, [6 x i8] }
%union.anon.11 = type { %struct.float80_t }
%struct.float80_t = type { [10 x i8] }
%union.vec128_t = type { %struct.uint128v1_t }
%struct.uint128v1_t = type { [1 x i128] }
%struct.SegmentCaches = type { %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow }
%struct.SegmentShadow = type { %union.anon, i32, i32 }
%struct.Memory = type opaque
%struct.anon.2 = type { i8, i8 }
%"class.std::bitset" = type { %struct.uint64v4_t }
%struct.uint64v4_t = type { [4 x i64] }

@DR0 = external global i64, align 8
@DR1 = external global i64, align 8
@DR2 = external global i64, align 8
@DR3 = external global i64, align 8
@DR4 = external global i64, align 8
@DR5 = external global i64, align 8
@DR6 = external global i64, align 8
@DR7 = external global i64, align 8
@gCR0 = external global %union.anon, align 1
@gCR1 = external global %union.anon, align 1
@gCR2 = external global %union.anon, align 1
@gCR3 = external global %union.anon, align 1
@gCR4 = external global %union.anon, align 1
@gCR8 = external global %union.anon, align 1
@stderr = external local_unnamed_addr global i64, align 128
@seg_4015d0__rodata = internal constant %seg_4015d0__rodata_type <{ [48 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\96\A0@\00\00\00\00\00\A7\DF@\F1h\E3\88\B5\F8\E4>\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\7F", [7 x i8] c"%0.6f\0A\00", [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", [76 x i8] c"A[%d][%d] = %lf and B[%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400720_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_4006f0___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602080__bss = internal global %seg_602080__bss_type zeroinitializer
@polybench_papi_counters_threadid = local_unnamed_addr global %polybench_papi_counters_threadid_type zeroinitializer
@polybench_program_total_flops = local_unnamed_addr global %polybench_program_total_flops_type zeroinitializer
@polybench_c_end = local_unnamed_addr global %polybench_c_end_type zeroinitializer
@polybench_t_end = local_unnamed_addr global %polybench_t_end_type zeroinitializer
@polybench_t_start = local_unnamed_addr global %polybench_t_start_type zeroinitializer
@polybench_c_start = local_unnamed_addr global %polybench_c_start_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400720_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4006f0___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4015c0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401550___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_flush_cache_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_alloc_data_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_print_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_start_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_stop_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_prepare_instruments_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

declare %struct.Memory* @sub_4007e0_rtclock_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400680_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400730_polybench_flush_cache_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4007b0_polybench_prepare_instruments_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400590__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400fa0_kernel_2mm_StrictFP_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4012d0_print_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4011a0_check_FP_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4013a0_print_element_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400da0_kernel_2mm_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400b20_init_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400890_xmalloc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @__remill_basic_block(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #2 !dbg !1261 {
  %state = alloca %struct.State*, align 8
  %curr_pc = alloca i64, align 8
  %memory = alloca %struct.Memory*, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  %SS_BASE = alloca i64, align 8
  %ES_BASE = alloca i64, align 8
  %DS_BASE = alloca i64, align 8
  %CS_BASE = alloca i64, align 8
  %STATE = alloca %struct.State*, align 8
  %MEMORY = alloca %struct.Memory*, align 8
  %_DR0 = alloca i64*, align 8
  %_DR1 = alloca i64*, align 8
  %_DR2 = alloca i64*, align 8
  %_DR3 = alloca i64*, align 8
  %_DR4 = alloca i64*, align 8
  %_DR5 = alloca i64*, align 8
  %_DR6 = alloca i64*, align 8
  %_DR7 = alloca i64*, align 8
  %CR0 = alloca i64*, align 8
  %CR1 = alloca i64*, align 8
  %CR2 = alloca i64*, align 8
  %CR3 = alloca i64*, align 8
  %CR4 = alloca i64*, align 8
  %CR8 = alloca i64*, align 8
  store %struct.State* %0, %struct.State** %state, align 8
  store i64 %1, i64* %curr_pc, align 8
  store %struct.Memory* %2, %struct.Memory** %memory, align 8
  store i8 0, i8* %BRANCH_TAKEN, align 1, !dbg !1952
  store i64 0, i64* %SS_BASE, align 8, !dbg !1953
  store i64 0, i64* %ES_BASE, align 8, !dbg !1954
  store i64 0, i64* %DS_BASE, align 8, !dbg !1955
  store i64 0, i64* %CS_BASE, align 8, !dbg !1956
  store %struct.State* %0, %struct.State** %STATE, align 8, !dbg !1957
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8, !dbg !1958
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1959
  %5 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 33, !dbg !1960
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %5, i32 0, i32 0, !dbg !1961
  %PC = bitcast %union.anon* %6 to i64*, !dbg !1961
  store i64 %1, i64* %PC, align 8, !dbg !1962
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1963
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %7, i32 0, i32 1, !dbg !1964
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0, !dbg !1965
  %10 = bitcast %union.anon* %9 to %struct.anon.2*, !dbg !1965
  %AH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %10, i32 0, i32 1, !dbg !1966
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1967
  %12 = getelementptr inbounds %struct.GPR, %struct.GPR* %11, i32 0, i32 3, !dbg !1968
  %13 = getelementptr inbounds %struct.Reg, %struct.Reg* %12, i32 0, i32 0, !dbg !1969
  %14 = bitcast %union.anon* %13 to %struct.anon.2*, !dbg !1969
  %BH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %14, i32 0, i32 1, !dbg !1970
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1971
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 5, !dbg !1972
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0, !dbg !1973
  %18 = bitcast %union.anon* %17 to %struct.anon.2*, !dbg !1973
  %CH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %18, i32 0, i32 1, !dbg !1974
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1975
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 7, !dbg !1976
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0, !dbg !1977
  %22 = bitcast %union.anon* %21 to %struct.anon.2*, !dbg !1977
  %DH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %22, i32 0, i32 1, !dbg !1978
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1979
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 1, !dbg !1980
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0, !dbg !1981
  %26 = bitcast %union.anon* %25 to %struct.anon.2*, !dbg !1981
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %26, i32 0, i32 0, !dbg !1982
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1983
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 3, !dbg !1984
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0, !dbg !1985
  %30 = bitcast %union.anon* %29 to %struct.anon.2*, !dbg !1985
  %BL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %30, i32 0, i32 0, !dbg !1986
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1987
  %32 = getelementptr inbounds %struct.GPR, %struct.GPR* %31, i32 0, i32 5, !dbg !1988
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %32, i32 0, i32 0, !dbg !1989
  %34 = bitcast %union.anon* %33 to %struct.anon.2*, !dbg !1989
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %34, i32 0, i32 0, !dbg !1990
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1991
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 7, !dbg !1992
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0, !dbg !1993
  %38 = bitcast %union.anon* %37 to %struct.anon.2*, !dbg !1993
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %38, i32 0, i32 0, !dbg !1994
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1995
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 9, !dbg !1996
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0, !dbg !1997
  %42 = bitcast %union.anon* %41 to %struct.anon.2*, !dbg !1997
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %42, i32 0, i32 0, !dbg !1998
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1999
  %44 = getelementptr inbounds %struct.GPR, %struct.GPR* %43, i32 0, i32 11, !dbg !2000
  %45 = getelementptr inbounds %struct.Reg, %struct.Reg* %44, i32 0, i32 0, !dbg !2001
  %46 = bitcast %union.anon* %45 to %struct.anon.2*, !dbg !2001
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %46, i32 0, i32 0, !dbg !2002
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2003
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 13, !dbg !2004
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0, !dbg !2005
  %50 = bitcast %union.anon* %49 to %struct.anon.2*, !dbg !2005
  %SPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %50, i32 0, i32 0, !dbg !2006
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2007
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 15, !dbg !2008
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0, !dbg !2009
  %54 = bitcast %union.anon* %53 to %struct.anon.2*, !dbg !2009
  %BPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %54, i32 0, i32 0, !dbg !2010
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2011
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 17, !dbg !2012
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0, !dbg !2013
  %58 = bitcast %union.anon* %57 to %struct.anon.2*, !dbg !2013
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %58, i32 0, i32 0, !dbg !2014
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2015
  %60 = getelementptr inbounds %struct.GPR, %struct.GPR* %59, i32 0, i32 19, !dbg !2016
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %60, i32 0, i32 0, !dbg !2017
  %62 = bitcast %union.anon* %61 to %struct.anon.2*, !dbg !2017
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %62, i32 0, i32 0, !dbg !2018
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2019
  %64 = getelementptr inbounds %struct.GPR, %struct.GPR* %63, i32 0, i32 21, !dbg !2020
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %64, i32 0, i32 0, !dbg !2021
  %66 = bitcast %union.anon* %65 to %struct.anon.2*, !dbg !2021
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %66, i32 0, i32 0, !dbg !2022
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2023
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 23, !dbg !2024
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0, !dbg !2025
  %70 = bitcast %union.anon* %69 to %struct.anon.2*, !dbg !2025
  %R11B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %70, i32 0, i32 0, !dbg !2026
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2027
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 25, !dbg !2028
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0, !dbg !2029
  %74 = bitcast %union.anon* %73 to %struct.anon.2*, !dbg !2029
  %R12B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %74, i32 0, i32 0, !dbg !2030
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2031
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 27, !dbg !2032
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0, !dbg !2033
  %78 = bitcast %union.anon* %77 to %struct.anon.2*, !dbg !2033
  %R13B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %78, i32 0, i32 0, !dbg !2034
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2035
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 29, !dbg !2036
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0, !dbg !2037
  %82 = bitcast %union.anon* %81 to %struct.anon.2*, !dbg !2037
  %R14B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %82, i32 0, i32 0, !dbg !2038
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2039
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 31, !dbg !2040
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0, !dbg !2041
  %86 = bitcast %union.anon* %85 to %struct.anon.2*, !dbg !2041
  %R15B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %86, i32 0, i32 0, !dbg !2042
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2043
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 1, !dbg !2044
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0, !dbg !2045
  %AX = bitcast %union.anon* %89 to i16*, !dbg !2045
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2046
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 3, !dbg !2047
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0, !dbg !2048
  %BX = bitcast %union.anon* %92 to i16*, !dbg !2048
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2049
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 5, !dbg !2050
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0, !dbg !2051
  %CX = bitcast %union.anon* %95 to i16*, !dbg !2051
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2052
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 7, !dbg !2053
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0, !dbg !2054
  %DX = bitcast %union.anon* %98 to i16*, !dbg !2054
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2055
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 9, !dbg !2056
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0, !dbg !2057
  %SI = bitcast %union.anon* %101 to i16*, !dbg !2057
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2058
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 11, !dbg !2059
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0, !dbg !2060
  %DI = bitcast %union.anon* %104 to i16*, !dbg !2060
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2061
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 13, !dbg !2062
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0, !dbg !2063
  %SP = bitcast %union.anon* %107 to i16*, !dbg !2063
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2064
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 15, !dbg !2065
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0, !dbg !2066
  %BP = bitcast %union.anon* %110 to i16*, !dbg !2066
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2067
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 17, !dbg !2068
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0, !dbg !2069
  %R8W = bitcast %union.anon* %113 to i16*, !dbg !2069
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2070
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 19, !dbg !2071
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0, !dbg !2072
  %R9W = bitcast %union.anon* %116 to i16*, !dbg !2072
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2073
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 21, !dbg !2074
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0, !dbg !2075
  %R10W = bitcast %union.anon* %119 to i16*, !dbg !2075
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2076
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 23, !dbg !2077
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0, !dbg !2078
  %R11W = bitcast %union.anon* %122 to i16*, !dbg !2078
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2079
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 25, !dbg !2080
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0, !dbg !2081
  %R12W = bitcast %union.anon* %125 to i16*, !dbg !2081
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2082
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 27, !dbg !2083
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0, !dbg !2084
  %R13W = bitcast %union.anon* %128 to i16*, !dbg !2084
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2085
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 29, !dbg !2086
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0, !dbg !2087
  %R14W = bitcast %union.anon* %131 to i16*, !dbg !2087
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2088
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 31, !dbg !2089
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0, !dbg !2090
  %R15W = bitcast %union.anon* %134 to i16*, !dbg !2090
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2091
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33, !dbg !2092
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0, !dbg !2093
  %IP = bitcast %union.anon* %137 to i16*, !dbg !2093
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2094
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 1, !dbg !2095
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0, !dbg !2096
  %EAX = bitcast %union.anon* %140 to i32*, !dbg !2096
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2097
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 3, !dbg !2098
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0, !dbg !2099
  %EBX = bitcast %union.anon* %143 to i32*, !dbg !2099
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2100
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 5, !dbg !2101
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0, !dbg !2102
  %ECX = bitcast %union.anon* %146 to i32*, !dbg !2102
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2103
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 7, !dbg !2104
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0, !dbg !2105
  %EDX = bitcast %union.anon* %149 to i32*, !dbg !2105
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2106
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 9, !dbg !2107
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0, !dbg !2108
  %ESI = bitcast %union.anon* %152 to i32*, !dbg !2108
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2109
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 11, !dbg !2110
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0, !dbg !2111
  %EDI = bitcast %union.anon* %155 to i32*, !dbg !2111
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2112
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 13, !dbg !2113
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0, !dbg !2114
  %ESP = bitcast %union.anon* %158 to i32*, !dbg !2114
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2115
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 15, !dbg !2116
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0, !dbg !2117
  %EBP = bitcast %union.anon* %161 to i32*, !dbg !2117
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2118
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 33, !dbg !2119
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0, !dbg !2120
  %EIP = bitcast %union.anon* %164 to i32*, !dbg !2120
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2121
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 17, !dbg !2122
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0, !dbg !2123
  %R8D = bitcast %union.anon* %167 to i32*, !dbg !2123
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2124
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 19, !dbg !2125
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0, !dbg !2126
  %R9D = bitcast %union.anon* %170 to i32*, !dbg !2126
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2127
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 21, !dbg !2128
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0, !dbg !2129
  %R10D = bitcast %union.anon* %173 to i32*, !dbg !2129
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2130
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 23, !dbg !2131
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0, !dbg !2132
  %R11D = bitcast %union.anon* %176 to i32*, !dbg !2132
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2133
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 25, !dbg !2134
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0, !dbg !2135
  %R12D = bitcast %union.anon* %179 to i32*, !dbg !2135
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2136
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 27, !dbg !2137
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0, !dbg !2138
  %R13D = bitcast %union.anon* %182 to i32*, !dbg !2138
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2139
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 29, !dbg !2140
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0, !dbg !2141
  %R14D = bitcast %union.anon* %185 to i32*, !dbg !2141
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2142
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 31, !dbg !2143
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0, !dbg !2144
  %R15D = bitcast %union.anon* %188 to i32*, !dbg !2144
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2145
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 1, !dbg !2146
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0, !dbg !2147
  %RAX = bitcast %union.anon* %191 to i64*, !dbg !2147
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2148
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 3, !dbg !2149
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0, !dbg !2150
  %RBX = bitcast %union.anon* %194 to i64*, !dbg !2150
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2151
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 5, !dbg !2152
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0, !dbg !2153
  %RCX = bitcast %union.anon* %197 to i64*, !dbg !2153
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2154
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 7, !dbg !2155
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0, !dbg !2156
  %RDX = bitcast %union.anon* %200 to i64*, !dbg !2156
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2157
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 9, !dbg !2158
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0, !dbg !2159
  %RSI = bitcast %union.anon* %203 to i64*, !dbg !2159
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2160
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 11, !dbg !2161
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0, !dbg !2162
  %RDI = bitcast %union.anon* %206 to i64*, !dbg !2162
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2163
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 13, !dbg !2164
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0, !dbg !2165
  %RSP = bitcast %union.anon* %209 to i64*, !dbg !2165
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2166
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 15, !dbg !2167
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0, !dbg !2168
  %RBP = bitcast %union.anon* %212 to i64*, !dbg !2168
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2169
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 17, !dbg !2170
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0, !dbg !2171
  %R8 = bitcast %union.anon* %215 to i64*, !dbg !2171
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2172
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 19, !dbg !2173
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0, !dbg !2174
  %R9 = bitcast %union.anon* %218 to i64*, !dbg !2174
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2175
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 21, !dbg !2176
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0, !dbg !2177
  %R10 = bitcast %union.anon* %221 to i64*, !dbg !2177
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2178
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 23, !dbg !2179
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0, !dbg !2180
  %R11 = bitcast %union.anon* %224 to i64*, !dbg !2180
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2181
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 25, !dbg !2182
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0, !dbg !2183
  %R12 = bitcast %union.anon* %227 to i64*, !dbg !2183
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2184
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 27, !dbg !2185
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0, !dbg !2186
  %R13 = bitcast %union.anon* %230 to i64*, !dbg !2186
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2187
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 29, !dbg !2188
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0, !dbg !2189
  %R14 = bitcast %union.anon* %233 to i64*, !dbg !2189
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2190
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 31, !dbg !2191
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0, !dbg !2192
  %R15 = bitcast %union.anon* %236 to i64*, !dbg !2192
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2193
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 33, !dbg !2194
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0, !dbg !2195
  %RIP = bitcast %union.anon* %239 to i64*, !dbg !2195
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2196
  %241 = getelementptr inbounds %struct.Segments, %struct.Segments* %240, i32 0, i32 1, !dbg !2197
  %SS = bitcast %union.SegmentSelector* %241 to i16*, !dbg !2198
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2199
  %243 = getelementptr inbounds %struct.Segments, %struct.Segments* %242, i32 0, i32 3, !dbg !2200
  %ES = bitcast %union.SegmentSelector* %243 to i16*, !dbg !2201
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2202
  %245 = getelementptr inbounds %struct.Segments, %struct.Segments* %244, i32 0, i32 5, !dbg !2203
  %GS = bitcast %union.SegmentSelector* %245 to i16*, !dbg !2204
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2205
  %247 = getelementptr inbounds %struct.Segments, %struct.Segments* %246, i32 0, i32 7, !dbg !2206
  %FS = bitcast %union.SegmentSelector* %247 to i16*, !dbg !2207
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2208
  %249 = getelementptr inbounds %struct.Segments, %struct.Segments* %248, i32 0, i32 9, !dbg !2209
  %DS = bitcast %union.SegmentSelector* %249 to i16*, !dbg !2210
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2211
  %251 = getelementptr inbounds %struct.Segments, %struct.Segments* %250, i32 0, i32 11, !dbg !2212
  %CS = bitcast %union.SegmentSelector* %251 to i16*, !dbg !2213
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5, !dbg !2214
  %253 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %252, i32 0, i32 5, !dbg !2215
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0, !dbg !2216
  %GS_BASE = bitcast %union.anon* %254 to i64*, !dbg !2216
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5, !dbg !2217
  %256 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %255, i32 0, i32 7, !dbg !2218
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0, !dbg !2219
  %FS_BASE = bitcast %union.anon* %257 to i64*, !dbg !2219
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2220
  %259 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %258, i64 0, i64 0, !dbg !2221
  %YMM0 = bitcast %union.VectorReg* %259 to %"class.std::bitset"*, !dbg !2222
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2223
  %261 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %260, i64 0, i64 1, !dbg !2224
  %YMM1 = bitcast %union.VectorReg* %261 to %"class.std::bitset"*, !dbg !2225
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2226
  %263 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %262, i64 0, i64 2, !dbg !2227
  %YMM2 = bitcast %union.VectorReg* %263 to %"class.std::bitset"*, !dbg !2228
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2229
  %265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %264, i64 0, i64 3, !dbg !2230
  %YMM3 = bitcast %union.VectorReg* %265 to %"class.std::bitset"*, !dbg !2231
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2232
  %267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %266, i64 0, i64 4, !dbg !2233
  %YMM4 = bitcast %union.VectorReg* %267 to %"class.std::bitset"*, !dbg !2234
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2235
  %269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %268, i64 0, i64 5, !dbg !2236
  %YMM5 = bitcast %union.VectorReg* %269 to %"class.std::bitset"*, !dbg !2237
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2238
  %271 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %270, i64 0, i64 6, !dbg !2239
  %YMM6 = bitcast %union.VectorReg* %271 to %"class.std::bitset"*, !dbg !2240
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2241
  %273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %272, i64 0, i64 7, !dbg !2242
  %YMM7 = bitcast %union.VectorReg* %273 to %"class.std::bitset"*, !dbg !2243
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2244
  %275 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %274, i64 0, i64 8, !dbg !2245
  %YMM8 = bitcast %union.VectorReg* %275 to %"class.std::bitset"*, !dbg !2246
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2247
  %277 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %276, i64 0, i64 9, !dbg !2248
  %YMM9 = bitcast %union.VectorReg* %277 to %"class.std::bitset"*, !dbg !2249
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2250
  %279 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %278, i64 0, i64 10, !dbg !2251
  %YMM10 = bitcast %union.VectorReg* %279 to %"class.std::bitset"*, !dbg !2252
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2253
  %281 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %280, i64 0, i64 11, !dbg !2254
  %YMM11 = bitcast %union.VectorReg* %281 to %"class.std::bitset"*, !dbg !2255
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2256
  %283 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %282, i64 0, i64 12, !dbg !2257
  %YMM12 = bitcast %union.VectorReg* %283 to %"class.std::bitset"*, !dbg !2258
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2259
  %285 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %284, i64 0, i64 13, !dbg !2260
  %YMM13 = bitcast %union.VectorReg* %285 to %"class.std::bitset"*, !dbg !2261
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2262
  %287 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %286, i64 0, i64 14, !dbg !2263
  %YMM14 = bitcast %union.VectorReg* %287 to %"class.std::bitset"*, !dbg !2264
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2265
  %289 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %288, i64 0, i64 15, !dbg !2266
  %YMM15 = bitcast %union.VectorReg* %289 to %"class.std::bitset"*, !dbg !2267
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2268
  %291 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %290, i64 0, i64 0, !dbg !2269
  %XMM0 = bitcast %union.VectorReg* %291 to %union.vec128_t*, !dbg !2270
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2271
  %293 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %292, i64 0, i64 1, !dbg !2272
  %XMM1 = bitcast %union.VectorReg* %293 to %union.vec128_t*, !dbg !2273
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2274
  %295 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %294, i64 0, i64 2, !dbg !2275
  %XMM2 = bitcast %union.VectorReg* %295 to %union.vec128_t*, !dbg !2276
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2277
  %297 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %296, i64 0, i64 3, !dbg !2278
  %XMM3 = bitcast %union.VectorReg* %297 to %union.vec128_t*, !dbg !2279
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2280
  %299 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %298, i64 0, i64 4, !dbg !2281
  %XMM4 = bitcast %union.VectorReg* %299 to %union.vec128_t*, !dbg !2282
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2283
  %301 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %300, i64 0, i64 5, !dbg !2284
  %XMM5 = bitcast %union.VectorReg* %301 to %union.vec128_t*, !dbg !2285
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2286
  %303 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 6, !dbg !2287
  %XMM6 = bitcast %union.VectorReg* %303 to %union.vec128_t*, !dbg !2288
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2289
  %305 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %304, i64 0, i64 7, !dbg !2290
  %XMM7 = bitcast %union.VectorReg* %305 to %union.vec128_t*, !dbg !2291
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2292
  %307 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %306, i64 0, i64 8, !dbg !2293
  %XMM8 = bitcast %union.VectorReg* %307 to %union.vec128_t*, !dbg !2294
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2295
  %309 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %308, i64 0, i64 9, !dbg !2296
  %XMM9 = bitcast %union.VectorReg* %309 to %union.vec128_t*, !dbg !2297
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2298
  %311 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %310, i64 0, i64 10, !dbg !2299
  %XMM10 = bitcast %union.VectorReg* %311 to %union.vec128_t*, !dbg !2300
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2301
  %313 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %312, i64 0, i64 11, !dbg !2302
  %XMM11 = bitcast %union.VectorReg* %313 to %union.vec128_t*, !dbg !2303
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2304
  %315 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %314, i64 0, i64 12, !dbg !2305
  %XMM12 = bitcast %union.VectorReg* %315 to %union.vec128_t*, !dbg !2306
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2307
  %317 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %316, i64 0, i64 13, !dbg !2308
  %XMM13 = bitcast %union.VectorReg* %317 to %union.vec128_t*, !dbg !2309
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2310
  %319 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %318, i64 0, i64 14, !dbg !2311
  %XMM14 = bitcast %union.VectorReg* %319 to %union.vec128_t*, !dbg !2312
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2313
  %321 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %320, i64 0, i64 15, !dbg !2314
  %XMM15 = bitcast %union.VectorReg* %321 to %union.vec128_t*, !dbg !2315
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2316
  %323 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %322, i32 0, i32 0, !dbg !2317
  %324 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %323, i64 0, i64 0, !dbg !2318
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %324, i32 0, i32 1, !dbg !2319
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2320
  %326 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %325, i32 0, i32 0, !dbg !2321
  %327 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %326, i64 0, i64 1, !dbg !2322
  %ST1 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %327, i32 0, i32 1, !dbg !2323
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2324
  %329 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %328, i32 0, i32 0, !dbg !2325
  %330 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %329, i64 0, i64 2, !dbg !2326
  %ST2 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %330, i32 0, i32 1, !dbg !2327
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2328
  %332 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %331, i32 0, i32 0, !dbg !2329
  %333 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %332, i64 0, i64 3, !dbg !2330
  %ST3 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %333, i32 0, i32 1, !dbg !2331
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2332
  %335 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %334, i32 0, i32 0, !dbg !2333
  %336 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %335, i64 0, i64 4, !dbg !2334
  %ST4 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %336, i32 0, i32 1, !dbg !2335
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2336
  %338 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %337, i32 0, i32 0, !dbg !2337
  %339 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %338, i64 0, i64 5, !dbg !2338
  %ST5 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %339, i32 0, i32 1, !dbg !2339
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2340
  %341 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %340, i32 0, i32 0, !dbg !2341
  %342 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %341, i64 0, i64 6, !dbg !2342
  %ST6 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %342, i32 0, i32 1, !dbg !2343
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2344
  %344 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %343, i32 0, i32 0, !dbg !2345
  %345 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %344, i64 0, i64 7, !dbg !2346
  %ST7 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %345, i32 0, i32 1, !dbg !2347
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2348
  %347 = getelementptr inbounds %struct.MMX, %struct.MMX* %346, i32 0, i32 0, !dbg !2349
  %348 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %347, i64 0, i64 0, !dbg !2350
  %349 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %348, i32 0, i32 1, !dbg !2351
  %350 = bitcast %union.vec64_t* %349 to %struct.uint64v1_t*, !dbg !2352
  %351 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %350, i32 0, i32 0, !dbg !2353
  %MM0 = getelementptr inbounds [1 x i64], [1 x i64]* %351, i64 0, i64 0, !dbg !2350
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2354
  %353 = getelementptr inbounds %struct.MMX, %struct.MMX* %352, i32 0, i32 0, !dbg !2355
  %354 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %353, i64 0, i64 1, !dbg !2356
  %355 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %354, i32 0, i32 1, !dbg !2357
  %356 = bitcast %union.vec64_t* %355 to %struct.uint64v1_t*, !dbg !2358
  %357 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %356, i32 0, i32 0, !dbg !2359
  %MM1 = getelementptr inbounds [1 x i64], [1 x i64]* %357, i64 0, i64 0, !dbg !2356
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2360
  %359 = getelementptr inbounds %struct.MMX, %struct.MMX* %358, i32 0, i32 0, !dbg !2361
  %360 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %359, i64 0, i64 2, !dbg !2362
  %361 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %360, i32 0, i32 1, !dbg !2363
  %362 = bitcast %union.vec64_t* %361 to %struct.uint64v1_t*, !dbg !2364
  %363 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %362, i32 0, i32 0, !dbg !2365
  %MM2 = getelementptr inbounds [1 x i64], [1 x i64]* %363, i64 0, i64 0, !dbg !2362
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2366
  %365 = getelementptr inbounds %struct.MMX, %struct.MMX* %364, i32 0, i32 0, !dbg !2367
  %366 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %365, i64 0, i64 3, !dbg !2368
  %367 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %366, i32 0, i32 1, !dbg !2369
  %368 = bitcast %union.vec64_t* %367 to %struct.uint64v1_t*, !dbg !2370
  %369 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %368, i32 0, i32 0, !dbg !2371
  %MM3 = getelementptr inbounds [1 x i64], [1 x i64]* %369, i64 0, i64 0, !dbg !2368
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2372
  %371 = getelementptr inbounds %struct.MMX, %struct.MMX* %370, i32 0, i32 0, !dbg !2373
  %372 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %371, i64 0, i64 4, !dbg !2374
  %373 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %372, i32 0, i32 1, !dbg !2375
  %374 = bitcast %union.vec64_t* %373 to %struct.uint64v1_t*, !dbg !2376
  %375 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %374, i32 0, i32 0, !dbg !2377
  %MM4 = getelementptr inbounds [1 x i64], [1 x i64]* %375, i64 0, i64 0, !dbg !2374
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2378
  %377 = getelementptr inbounds %struct.MMX, %struct.MMX* %376, i32 0, i32 0, !dbg !2379
  %378 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %377, i64 0, i64 5, !dbg !2380
  %379 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %378, i32 0, i32 1, !dbg !2381
  %380 = bitcast %union.vec64_t* %379 to %struct.uint64v1_t*, !dbg !2382
  %381 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %380, i32 0, i32 0, !dbg !2383
  %MM5 = getelementptr inbounds [1 x i64], [1 x i64]* %381, i64 0, i64 0, !dbg !2380
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2384
  %383 = getelementptr inbounds %struct.MMX, %struct.MMX* %382, i32 0, i32 0, !dbg !2385
  %384 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %383, i64 0, i64 6, !dbg !2386
  %385 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %384, i32 0, i32 1, !dbg !2387
  %386 = bitcast %union.vec64_t* %385 to %struct.uint64v1_t*, !dbg !2388
  %387 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %386, i32 0, i32 0, !dbg !2389
  %MM6 = getelementptr inbounds [1 x i64], [1 x i64]* %387, i64 0, i64 0, !dbg !2386
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2390
  %389 = getelementptr inbounds %struct.MMX, %struct.MMX* %388, i32 0, i32 0, !dbg !2391
  %390 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %389, i64 0, i64 7, !dbg !2392
  %391 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %390, i32 0, i32 1, !dbg !2393
  %392 = bitcast %union.vec64_t* %391 to %struct.uint64v1_t*, !dbg !2394
  %393 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %392, i32 0, i32 0, !dbg !2395
  %MM7 = getelementptr inbounds [1 x i64], [1 x i64]* %393, i64 0, i64 0, !dbg !2392
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2396
  %AF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %394, i32 0, i32 5, !dbg !2397
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2398
  %CF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %395, i32 0, i32 1, !dbg !2399
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2400
  %DF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %396, i32 0, i32 11, !dbg !2401
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2402
  %OF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %397, i32 0, i32 13, !dbg !2403
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2404
  %PF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %398, i32 0, i32 3, !dbg !2405
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2406
  %SF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %399, i32 0, i32 9, !dbg !2407
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2408
  %ZF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %400, i32 0, i32 7, !dbg !2409
  store i64* @DR0, i64** %_DR0, align 8, !dbg !2410
  store i64* @DR1, i64** %_DR1, align 8, !dbg !2411
  store i64* @DR2, i64** %_DR2, align 8, !dbg !2412
  store i64* @DR3, i64** %_DR3, align 8, !dbg !2413
  store i64* @DR4, i64** %_DR4, align 8, !dbg !2414
  store i64* @DR5, i64** %_DR5, align 8, !dbg !2415
  store i64* @DR6, i64** %_DR6, align 8, !dbg !2416
  store i64* @DR7, i64** %_DR7, align 8, !dbg !2417
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR0, i32 0, i32 0), i64** %CR0, align 8, !dbg !2418
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR1, i32 0, i32 0), i64** %CR1, align 8, !dbg !2419
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR2, i32 0, i32 0), i64** %CR2, align 8, !dbg !2420
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR3, i32 0, i32 0), i64** %CR3, align 8, !dbg !2421
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR4, i32 0, i32 0), i64** %CR4, align 8, !dbg !2422
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR8, i32 0, i32 0), i64** %CR8, align 8, !dbg !2423
  ret %struct.Memory* %2, !dbg !2424
}

; Function Attrs: noduplicate noinline nounwind optnone
define void @__remill_intrinsics() local_unnamed_addr #3 !dbg !2425 {
  ret void, !dbg !2427
}

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #4

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_jump(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #4

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @posix_memalign(i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fputs(i64, i64) #5

; Function Attrs: noinline
define %struct.Memory* @sub_400720_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400720:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %1, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !2428
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %3, i64* %8, align 8
  store i64 %7, i64* %5, align 8, !tbaa !2428
  %9 = load i64, i64* %PC, align 8
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = load i64, i64* %8, align 8
  store i64 %11, i64* %RBP, align 8, !tbaa !2428
  store i64 %6, i64* %5, align 8, !tbaa !2428
  %12 = add i64 %9, -113
  store i64 %12, i64* %PC, align 8, !tbaa !2428
  %13 = tail call %struct.Memory* @sub_4006b0_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007e0_rtclock(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4007e0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !2428
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  store i64 %8, i64* %6, align 8, !tbaa !2428
  %10 = load i64, i64* %PC, align 8
  store i64 %8, i64* %RBP, align 8, !tbaa !2428
  %11 = bitcast %union.VectorReg* %3 to i8*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 0, i32* %13, align 1, !tbaa !2432
  %14 = getelementptr inbounds i8, i8* %11, i64 4
  %15 = bitcast i8* %14 to i32*
  store i32 0, i32* %15, align 1, !tbaa !2432
  %16 = bitcast i64* %12 to i32*
  store i32 0, i32* %16, align 1, !tbaa !2432
  %17 = getelementptr inbounds i8, i8* %11, i64 12
  %18 = bitcast i8* %17 to i32*
  store i32 0, i32* %18, align 1, !tbaa !2432
  %19 = add i64 %10, 7
  store i64 %19, i64* %PC, align 8
  %20 = load i64, i64* %9, align 8
  store i64 %20, i64* %RBP, align 8, !tbaa !2428
  store i64 %7, i64* %6, align 8, !tbaa !2428
  %21 = add i64 %10, 8
  store i64 %21, i64* %PC, align 8
  %22 = inttoptr i64 %7 to i64*
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %PC, align 8, !tbaa !2428
  %24 = add i64 %7, 8
  store i64 %24, i64* %6, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400730_polybench_flush_cache(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400730:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC, align 8
  %6 = load i64, i64* %RSP, align 8, !tbaa !2428
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 8
  %9 = load i64, i64* %PC, align 8
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %10 = add i64 %6, -40
  store i64 %10, i64* %RSP, align 8, !tbaa !2428
  %11 = icmp ult i64 %7, 32
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1, !tbaa !2434
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #8
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1, !tbaa !2447
  %21 = xor i64 %7, %10
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1, !tbaa !2448
  %26 = icmp eq i64 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1, !tbaa !2449
  %29 = lshr i64 %10, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1, !tbaa !2450
  %32 = lshr i64 %7, 63
  %33 = xor i64 %29, %32
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1, !tbaa !2451
  store i64 8, i64* %RAX, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %38 = add i64 %6, -12
  %39 = add i64 %9, 21
  store i64 %39, i64* %PC, align 8
  %40 = inttoptr i64 %38 to i32*
  store i32 4194560, i32* %40, align 4
  %41 = load i64, i64* %RBP, align 8
  %42 = add i64 %41, -4
  %43 = load i64, i64* %PC, align 8
  %44 = add i64 %43, 4
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %42 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %RDI, align 8, !tbaa !2428
  %48 = add i64 %43, -342
  %49 = add i64 %43, 9
  %50 = load i64, i64* %RSP, align 8, !tbaa !2428
  %51 = add i64 %50, -8
  %52 = inttoptr i64 %51 to i64*
  store i64 %49, i64* %52, align 8
  store i64 %51, i64* %RSP, align 8, !tbaa !2428
  store i64 %48, i64* %PC, align 8, !tbaa !2428
  %53 = tail call fastcc %struct.Memory* @ext_6020e0_calloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %54 = bitcast %union.VectorReg* %3 to i8*
  %55 = load i64, i64* %PC, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %57 = bitcast %union.VectorReg* %3 to i32*
  store i32 0, i32* %57, align 1, !tbaa !2432
  %58 = getelementptr inbounds i8, i8* %54, i64 4
  %59 = bitcast i8* %58 to i32*
  store i32 0, i32* %59, align 1, !tbaa !2432
  %60 = bitcast i64* %56 to i32*
  store i32 0, i32* %60, align 1, !tbaa !2432
  %61 = getelementptr inbounds i8, i8* %54, i64 12
  %62 = bitcast i8* %61 to i32*
  store i32 0, i32* %62, align 1, !tbaa !2432
  %63 = load i64, i64* %RBP, align 8
  %64 = add i64 %63, -16
  %65 = load i64, i64* %RAX, align 8
  %66 = add i64 %55, 7
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %64 to i64*
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* %RBP, align 8
  %69 = add i64 %68, -32
  %70 = load i64, i64* %PC, align 8
  %71 = add i64 %70, 5
  store i64 %71, i64* %PC, align 8
  %72 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %3, i64 0, i32 0, i32 0, i32 0, i64 0
  %73 = load i64, i64* %72, align 1
  %74 = inttoptr i64 %69 to i64*
  store i64 %73, i64* %74, align 8
  %75 = load i64, i64* %RBP, align 8
  %76 = add i64 %75, -20
  %77 = load i64, i64* %PC, align 8
  %78 = add i64 %77, 7
  store i64 %78, i64* %PC, align 8
  %79 = inttoptr i64 %76 to i32*
  store i32 0, i32* %79, align 4
  %80 = bitcast %union.VectorReg* %3 to double*
  %81 = bitcast i64* %56 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400762

block_40076e:                                     ; preds = %block_400762
  %82 = add i64 %203, 8
  store i64 %82, i64* %PC, align 8
  %83 = load i32, i32* %170, align 4
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %RCX, align 8, !tbaa !2428
  %85 = shl nsw i64 %84, 3
  %86 = add i64 %85, %207
  %87 = add i64 %203, 13
  store i64 %87, i64* %PC, align 8
  %88 = inttoptr i64 %86 to double*
  %89 = load double, double* %88, align 8
  store double %89, double* %80, align 1, !tbaa !2452
  store double 0.000000e+00, double* %81, align 1, !tbaa !2452
  %90 = add i64 %167, -32
  %91 = add i64 %203, 18
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %90 to double*
  %93 = load double, double* %92, align 8
  %94 = fadd double %89, %93
  store double %94, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %56, align 1, !tbaa !2452
  %95 = add i64 %203, 23
  store i64 %95, i64* %PC, align 8
  store double %94, double* %92, align 8
  %96 = load i64, i64* %RBP, align 8
  %97 = add i64 %96, -20
  %98 = load i64, i64* %PC, align 8
  %99 = add i64 %98, 3
  store i64 %99, i64* %PC, align 8
  %100 = inttoptr i64 %97 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = add i32 %101, 1
  %103 = zext i32 %102 to i64
  store i64 %103, i64* %RAX, align 8, !tbaa !2428
  %104 = icmp eq i32 %101, -1
  %105 = icmp eq i32 %102, 0
  %106 = or i1 %104, %105
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %13, align 1, !tbaa !2434
  %108 = and i32 %102, 255
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108) #8
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %20, align 1, !tbaa !2447
  %113 = xor i32 %101, %102
  %114 = lshr i32 %113, 4
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  store i8 %116, i8* %25, align 1, !tbaa !2448
  %117 = zext i1 %105 to i8
  store i8 %117, i8* %28, align 1, !tbaa !2449
  %118 = lshr i32 %102, 31
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %31, align 1, !tbaa !2450
  %120 = lshr i32 %101, 31
  %121 = xor i32 %118, %120
  %122 = add nuw nsw i32 %121, %118
  %123 = icmp eq i32 %122, 2
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %37, align 1, !tbaa !2451
  %125 = add i64 %98, 9
  store i64 %125, i64* %PC, align 8
  store i32 %102, i32* %100, align 4
  %126 = load i64, i64* %PC, align 8
  %127 = add i64 %126, -44
  store i64 %127, i64* %PC, align 8, !tbaa !2428
  br label %block_400762

block_400793:                                     ; preds = %block_400762
  store i64 %207, i64* %RDI, align 8, !tbaa !2428
  %128 = add i64 %203, -467
  %129 = add i64 %203, 12
  %130 = load i64, i64* %RSP, align 8, !tbaa !2428
  %131 = add i64 %130, -8
  %132 = inttoptr i64 %131 to i64*
  store i64 %129, i64* %132, align 8
  store i64 %131, i64* %RSP, align 8, !tbaa !2428
  store i64 %128, i64* %PC, align 8, !tbaa !2428
  %133 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %53)
  %134 = load i64, i64* %RSP, align 8
  %135 = load i64, i64* %PC, align 8
  %136 = add i64 %134, 32
  store i64 %136, i64* %RSP, align 8, !tbaa !2428
  %137 = icmp ugt i64 %134, -33
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %13, align 1, !tbaa !2434
  %139 = trunc i64 %136 to i32
  %140 = and i32 %139, 255
  %141 = tail call i32 @llvm.ctpop.i32(i32 %140) #8
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  %144 = xor i8 %143, 1
  store i8 %144, i8* %20, align 1, !tbaa !2447
  %145 = xor i64 %134, %136
  %146 = lshr i64 %145, 4
  %147 = trunc i64 %146 to i8
  %148 = and i8 %147, 1
  store i8 %148, i8* %25, align 1, !tbaa !2448
  %149 = icmp eq i64 %136, 0
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %28, align 1, !tbaa !2449
  %151 = lshr i64 %136, 63
  %152 = trunc i64 %151 to i8
  store i8 %152, i8* %31, align 1, !tbaa !2450
  %153 = lshr i64 %134, 63
  %154 = xor i64 %151, %153
  %155 = add nuw nsw i64 %154, %151
  %156 = icmp eq i64 %155, 2
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %37, align 1, !tbaa !2451
  %158 = add i64 %135, 5
  store i64 %158, i64* %PC, align 8
  %159 = add i64 %134, 40
  %160 = inttoptr i64 %136 to i64*
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %RBP, align 8, !tbaa !2428
  store i64 %159, i64* %RSP, align 8, !tbaa !2428
  %162 = add i64 %135, 6
  store i64 %162, i64* %PC, align 8
  %163 = inttoptr i64 %159 to i64*
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %PC, align 8, !tbaa !2428
  %165 = add i64 %134, 48
  store i64 %165, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %133

block_400762:                                     ; preds = %block_40076e, %block_400730
  %166 = phi i64 [ %127, %block_40076e ], [ %.pre, %block_400730 ]
  %167 = load i64, i64* %RBP, align 8
  %168 = add i64 %167, -20
  %169 = add i64 %166, 3
  store i64 %169, i64* %PC, align 8
  %170 = inttoptr i64 %168 to i32*
  %171 = load i32, i32* %170, align 4
  %172 = zext i32 %171 to i64
  store i64 %172, i64* %RAX, align 8, !tbaa !2428
  %173 = add i64 %167, -4
  %174 = add i64 %166, 6
  store i64 %174, i64* %PC, align 8
  %175 = inttoptr i64 %173 to i32*
  %176 = load i32, i32* %175, align 4
  %177 = sub i32 %171, %176
  %178 = icmp ult i32 %171, %176
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %13, align 1, !tbaa !2434
  %180 = and i32 %177, 255
  %181 = tail call i32 @llvm.ctpop.i32(i32 %180) #8
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  %184 = xor i8 %183, 1
  store i8 %184, i8* %20, align 1, !tbaa !2447
  %185 = xor i32 %176, %171
  %186 = xor i32 %185, %177
  %187 = lshr i32 %186, 4
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  store i8 %189, i8* %25, align 1, !tbaa !2448
  %190 = icmp eq i32 %177, 0
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %28, align 1, !tbaa !2449
  %192 = lshr i32 %177, 31
  %193 = trunc i32 %192 to i8
  store i8 %193, i8* %31, align 1, !tbaa !2450
  %194 = lshr i32 %171, 31
  %195 = lshr i32 %176, 31
  %196 = xor i32 %195, %194
  %197 = xor i32 %192, %194
  %198 = add nuw nsw i32 %197, %196
  %199 = icmp eq i32 %198, 2
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %37, align 1, !tbaa !2451
  %201 = icmp ne i8 %193, 0
  %202 = xor i1 %201, %199
  %.v = select i1 %202, i64 12, i64 49
  %203 = add i64 %166, %.v
  %204 = add i64 %167, -16
  %205 = add i64 %203, 4
  store i64 %205, i64* %PC, align 8
  %206 = inttoptr i64 %204 to i64*
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %RAX, align 8, !tbaa !2428
  br i1 %202, label %block_40076e, label %block_400793
}

; Function Attrs: noinline
define %struct.Memory* @sub_4013a0_print_element(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4013a0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %1, 1
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9 = load i64, i64* %8, align 8, !tbaa !2428
  %10 = add i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64 %6, i64* %11, align 8
  store i64 %10, i64* %8, align 8, !tbaa !2428
  %12 = load i64, i64* %PC, align 8
  store i64 %10, i64* %RBP, align 8, !tbaa !2428
  %13 = add i64 %9, -16
  %14 = add i64 %12, 8
  store i64 %14, i64* %PC, align 8
  %15 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %5, i64 0, i32 0, i32 0, i32 0, i64 0
  %16 = load i64, i64* %15, align 1
  %17 = inttoptr i64 %13 to i64*
  store i64 %16, i64* %17, align 8
  %18 = load i64, i64* %RBP, align 8
  %19 = add i64 %18, -12
  %20 = load i32, i32* %EDI, align 4
  %21 = load i64, i64* %PC, align 8
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC, align 8
  %23 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %23, align 4
  %24 = load i64, i64* %RBP, align 8
  %25 = add i64 %24, -24
  %26 = load i64, i64* %RSI, align 8
  %27 = load i64, i64* %PC, align 8
  %28 = add i64 %27, 4
  store i64 %28, i64* %PC, align 8
  %29 = inttoptr i64 %25 to i64*
  store i64 %26, i64* %29, align 8
  %30 = load i64, i64* %RBP, align 8
  %31 = add i64 %30, -8
  %32 = load i64, i64* %PC, align 8
  %33 = add i64 %32, 5
  store i64 %33, i64* %PC, align 8
  %34 = inttoptr i64 %31 to i64*
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %15, align 1, !tbaa !2452
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %37 = bitcast i64* %36 to double*
  store double 0.000000e+00, double* %37, align 1, !tbaa !2452
  %38 = add i64 %30, -32
  %39 = add i64 %32, 10
  store i64 %39, i64* %PC, align 8
  %40 = inttoptr i64 %38 to i64*
  store i64 %35, i64* %40, align 8
  %41 = load i64, i64* %RBP, align 8
  %42 = add i64 %41, -32
  %43 = load i64, i64* %PC, align 8
  %44 = add i64 %43, 4
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %42 to i8*
  %46 = load i8, i8* %45, align 1
  %47 = and i8 %46, 15
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %54 = or i8 %47, 48
  %55 = zext i8 %54 to i32
  %56 = zext i8 %54 to i64
  store i64 %56, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2434
  %57 = tail call i32 @llvm.ctpop.i32(i32 %55) #8
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  store i8 %60, i8* %49, align 1, !tbaa !2447
  store i8 0, i8* %53, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 0, i8* %52, align 1, !tbaa !2451
  store i8 %54, i8* %AL, align 1, !tbaa !2454
  %61 = add i64 %41, -24
  %62 = add i64 %43, 17
  store i64 %62, i64* %PC, align 8
  %63 = inttoptr i64 %61 to i64*
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %RSI, align 8, !tbaa !2428
  %65 = add i64 %41, -12
  %66 = add i64 %43, 21
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %65 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %RCX, align 8, !tbaa !2428
  %70 = add i64 %69, %64
  %71 = add i64 %43, 24
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %70 to i8*
  store i8 %54, i8* %72, align 1
  %73 = load i64, i64* %RBP, align 8
  %74 = add i64 %73, -32
  %75 = load i64, i64* %PC, align 8
  %76 = add i64 %75, 4
  store i64 %76, i64* %PC, align 8
  %77 = inttoptr i64 %74 to i8*
  %78 = load i8, i8* %77, align 1
  %79 = and i8 %78, 15
  %80 = or i8 %79, 48
  %81 = zext i8 %80 to i32
  %82 = zext i8 %80 to i64
  store i64 %82, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2434
  %83 = tail call i32 @llvm.ctpop.i32(i32 %81) #8
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %49, align 1, !tbaa !2447
  store i8 0, i8* %53, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 0, i8* %52, align 1, !tbaa !2451
  store i8 %80, i8* %AL, align 1, !tbaa !2454
  %87 = add i64 %73, -24
  %88 = add i64 %75, 17
  store i64 %88, i64* %PC, align 8
  %89 = inttoptr i64 %87 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %RCX, align 8, !tbaa !2428
  %91 = add i64 %73, -12
  %92 = add i64 %75, 21
  store i64 %92, i64* %PC, align 8
  %93 = inttoptr i64 %91 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %RSI, align 8, !tbaa !2428
  %96 = add i64 %90, 1
  %97 = add i64 %96, %95
  %98 = add i64 %75, 25
  store i64 %98, i64* %PC, align 8
  %99 = inttoptr i64 %97 to i8*
  store i8 %80, i8* %99, align 1
  %100 = load i64, i64* %RBP, align 8
  %101 = add i64 %100, -31
  %102 = load i64, i64* %PC, align 8
  %103 = add i64 %102, 4
  store i64 %103, i64* %PC, align 8
  %104 = inttoptr i64 %101 to i8*
  %105 = load i8, i8* %104, align 1
  %106 = and i8 %105, 15
  %107 = or i8 %106, 48
  %108 = zext i8 %107 to i32
  %109 = zext i8 %107 to i64
  store i64 %109, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2434
  %110 = tail call i32 @llvm.ctpop.i32(i32 %108) #8
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  %113 = xor i8 %112, 1
  store i8 %113, i8* %49, align 1, !tbaa !2447
  store i8 0, i8* %53, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 0, i8* %52, align 1, !tbaa !2451
  store i8 %107, i8* %AL, align 1, !tbaa !2454
  %114 = add i64 %100, -24
  %115 = add i64 %102, 17
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %114 to i64*
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %RCX, align 8, !tbaa !2428
  %118 = add i64 %100, -12
  %119 = add i64 %102, 21
  store i64 %119, i64* %PC, align 8
  %120 = inttoptr i64 %118 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %RSI, align 8, !tbaa !2428
  %123 = add i64 %117, 2
  %124 = add i64 %123, %122
  %125 = add i64 %102, 25
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %124 to i8*
  store i8 %107, i8* %126, align 1
  %127 = load i64, i64* %RBP, align 8
  %128 = add i64 %127, -31
  %129 = load i64, i64* %PC, align 8
  %130 = add i64 %129, 4
  store i64 %130, i64* %PC, align 8
  %131 = inttoptr i64 %128 to i8*
  %132 = load i8, i8* %131, align 1
  %133 = and i8 %132, 15
  %134 = or i8 %133, 48
  %135 = zext i8 %134 to i32
  %136 = zext i8 %134 to i64
  store i64 %136, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2434
  %137 = tail call i32 @llvm.ctpop.i32(i32 %135) #8
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, 1
  %140 = xor i8 %139, 1
  store i8 %140, i8* %49, align 1, !tbaa !2447
  store i8 0, i8* %53, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 0, i8* %52, align 1, !tbaa !2451
  store i8 %134, i8* %AL, align 1, !tbaa !2454
  %141 = add i64 %127, -24
  %142 = add i64 %129, 17
  store i64 %142, i64* %PC, align 8
  %143 = inttoptr i64 %141 to i64*
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %RCX, align 8, !tbaa !2428
  %145 = add i64 %127, -12
  %146 = add i64 %129, 21
  store i64 %146, i64* %PC, align 8
  %147 = inttoptr i64 %145 to i32*
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %RSI, align 8, !tbaa !2428
  %150 = add i64 %144, 3
  %151 = add i64 %150, %149
  %152 = add i64 %129, 25
  store i64 %152, i64* %PC, align 8
  %153 = inttoptr i64 %151 to i8*
  store i8 %134, i8* %153, align 1
  %154 = load i64, i64* %RBP, align 8
  %155 = add i64 %154, -30
  %156 = load i64, i64* %PC, align 8
  %157 = add i64 %156, 4
  store i64 %157, i64* %PC, align 8
  %158 = inttoptr i64 %155 to i8*
  %159 = load i8, i8* %158, align 1
  %160 = and i8 %159, 15
  %161 = or i8 %160, 48
  %162 = zext i8 %161 to i32
  %163 = zext i8 %161 to i64
  store i64 %163, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2434
  %164 = tail call i32 @llvm.ctpop.i32(i32 %162) #8
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  store i8 %167, i8* %49, align 1, !tbaa !2447
  store i8 0, i8* %53, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 0, i8* %52, align 1, !tbaa !2451
  store i8 %161, i8* %AL, align 1, !tbaa !2454
  %168 = add i64 %154, -24
  %169 = add i64 %156, 17
  store i64 %169, i64* %PC, align 8
  %170 = inttoptr i64 %168 to i64*
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %RCX, align 8, !tbaa !2428
  %172 = add i64 %154, -12
  %173 = add i64 %156, 21
  store i64 %173, i64* %PC, align 8
  %174 = inttoptr i64 %172 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %RSI, align 8, !tbaa !2428
  %177 = add i64 %171, 4
  %178 = add i64 %177, %176
  %179 = add i64 %156, 25
  store i64 %179, i64* %PC, align 8
  %180 = inttoptr i64 %178 to i8*
  store i8 %161, i8* %180, align 1
  %181 = load i64, i64* %RBP, align 8
  %182 = add i64 %181, -30
  %183 = load i64, i64* %PC, align 8
  %184 = add i64 %183, 4
  store i64 %184, i64* %PC, align 8
  %185 = inttoptr i64 %182 to i8*
  %186 = load i8, i8* %185, align 1
  %187 = and i8 %186, 15
  %188 = or i8 %187, 48
  %189 = zext i8 %188 to i32
  %190 = zext i8 %188 to i64
  store i64 %190, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2434
  %191 = tail call i32 @llvm.ctpop.i32(i32 %189) #8
  %192 = trunc i32 %191 to i8
  %193 = and i8 %192, 1
  %194 = xor i8 %193, 1
  store i8 %194, i8* %49, align 1, !tbaa !2447
  store i8 0, i8* %53, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 0, i8* %52, align 1, !tbaa !2451
  store i8 %188, i8* %AL, align 1, !tbaa !2454
  %195 = add i64 %181, -24
  %196 = add i64 %183, 17
  store i64 %196, i64* %PC, align 8
  %197 = inttoptr i64 %195 to i64*
  %198 = load i64, i64* %197, align 8
  store i64 %198, i64* %RCX, align 8, !tbaa !2428
  %199 = add i64 %181, -12
  %200 = add i64 %183, 21
  store i64 %200, i64* %PC, align 8
  %201 = inttoptr i64 %199 to i32*
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  store i64 %203, i64* %RSI, align 8, !tbaa !2428
  %204 = add i64 %198, 5
  %205 = add i64 %204, %203
  %206 = add i64 %183, 25
  store i64 %206, i64* %PC, align 8
  %207 = inttoptr i64 %205 to i8*
  store i8 %188, i8* %207, align 1
  %208 = load i64, i64* %RBP, align 8
  %209 = add i64 %208, -29
  %210 = load i64, i64* %PC, align 8
  %211 = add i64 %210, 4
  store i64 %211, i64* %PC, align 8
  %212 = inttoptr i64 %209 to i8*
  %213 = load i8, i8* %212, align 1
  %214 = and i8 %213, 15
  %215 = or i8 %214, 48
  %216 = zext i8 %215 to i32
  %217 = zext i8 %215 to i64
  store i64 %217, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2434
  %218 = tail call i32 @llvm.ctpop.i32(i32 %216) #8
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = xor i8 %220, 1
  store i8 %221, i8* %49, align 1, !tbaa !2447
  store i8 0, i8* %53, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 0, i8* %52, align 1, !tbaa !2451
  store i8 %215, i8* %AL, align 1, !tbaa !2454
  %222 = add i64 %208, -24
  %223 = add i64 %210, 17
  store i64 %223, i64* %PC, align 8
  %224 = inttoptr i64 %222 to i64*
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %RCX, align 8, !tbaa !2428
  %226 = add i64 %208, -12
  %227 = add i64 %210, 21
  store i64 %227, i64* %PC, align 8
  %228 = inttoptr i64 %226 to i32*
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  store i64 %230, i64* %RSI, align 8, !tbaa !2428
  %231 = add i64 %225, 6
  %232 = add i64 %231, %230
  %233 = add i64 %210, 25
  store i64 %233, i64* %PC, align 8
  %234 = inttoptr i64 %232 to i8*
  store i8 %215, i8* %234, align 1
  %235 = load i64, i64* %RBP, align 8
  %236 = add i64 %235, -29
  %237 = load i64, i64* %PC, align 8
  %238 = add i64 %237, 4
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %236 to i8*
  %240 = load i8, i8* %239, align 1
  %241 = and i8 %240, 15
  %242 = or i8 %241, 48
  %243 = zext i8 %242 to i32
  %244 = zext i8 %242 to i64
  store i64 %244, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2434
  %245 = tail call i32 @llvm.ctpop.i32(i32 %243) #8
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  %248 = xor i8 %247, 1
  store i8 %248, i8* %49, align 1, !tbaa !2447
  store i8 0, i8* %53, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 0, i8* %52, align 1, !tbaa !2451
  store i8 %242, i8* %AL, align 1, !tbaa !2454
  %249 = add i64 %235, -24
  %250 = add i64 %237, 17
  store i64 %250, i64* %PC, align 8
  %251 = inttoptr i64 %249 to i64*
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %RCX, align 8, !tbaa !2428
  %253 = add i64 %235, -12
  %254 = add i64 %237, 21
  store i64 %254, i64* %PC, align 8
  %255 = inttoptr i64 %253 to i32*
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  store i64 %257, i64* %RSI, align 8, !tbaa !2428
  %258 = add i64 %252, 7
  %259 = add i64 %258, %257
  %260 = add i64 %237, 25
  store i64 %260, i64* %PC, align 8
  %261 = inttoptr i64 %259 to i8*
  store i8 %242, i8* %261, align 1
  %262 = load i64, i64* %RBP, align 8
  %263 = add i64 %262, -28
  %264 = load i64, i64* %PC, align 8
  %265 = add i64 %264, 4
  store i64 %265, i64* %PC, align 8
  %266 = inttoptr i64 %263 to i8*
  %267 = load i8, i8* %266, align 1
  %268 = and i8 %267, 15
  %269 = or i8 %268, 48
  %270 = zext i8 %269 to i32
  %271 = zext i8 %269 to i64
  store i64 %271, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2434
  %272 = tail call i32 @llvm.ctpop.i32(i32 %270) #8
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  %275 = xor i8 %274, 1
  store i8 %275, i8* %49, align 1, !tbaa !2447
  store i8 0, i8* %53, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 0, i8* %52, align 1, !tbaa !2451
  store i8 %269, i8* %AL, align 1, !tbaa !2454
  %276 = add i64 %262, -24
  %277 = add i64 %264, 17
  store i64 %277, i64* %PC, align 8
  %278 = inttoptr i64 %276 to i64*
  %279 = load i64, i64* %278, align 8
  store i64 %279, i64* %RCX, align 8, !tbaa !2428
  %280 = add i64 %262, -12
  %281 = add i64 %264, 21
  store i64 %281, i64* %PC, align 8
  %282 = inttoptr i64 %280 to i32*
  %283 = load i32, i32* %282, align 4
  %284 = sext i32 %283 to i64
  store i64 %284, i64* %RSI, align 8, !tbaa !2428
  %285 = add i64 %279, 8
  %286 = add i64 %285, %284
  %287 = add i64 %264, 25
  store i64 %287, i64* %PC, align 8
  %288 = inttoptr i64 %286 to i8*
  store i8 %269, i8* %288, align 1
  %289 = load i64, i64* %RBP, align 8
  %290 = add i64 %289, -28
  %291 = load i64, i64* %PC, align 8
  %292 = add i64 %291, 4
  store i64 %292, i64* %PC, align 8
  %293 = inttoptr i64 %290 to i8*
  %294 = load i8, i8* %293, align 1
  %295 = and i8 %294, 15
  %296 = or i8 %295, 48
  %297 = zext i8 %296 to i32
  %298 = zext i8 %296 to i64
  store i64 %298, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2434
  %299 = tail call i32 @llvm.ctpop.i32(i32 %297) #8
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  %302 = xor i8 %301, 1
  store i8 %302, i8* %49, align 1, !tbaa !2447
  store i8 0, i8* %53, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 0, i8* %52, align 1, !tbaa !2451
  store i8 %296, i8* %AL, align 1, !tbaa !2454
  %303 = add i64 %289, -24
  %304 = add i64 %291, 17
  store i64 %304, i64* %PC, align 8
  %305 = inttoptr i64 %303 to i64*
  %306 = load i64, i64* %305, align 8
  store i64 %306, i64* %RCX, align 8, !tbaa !2428
  %307 = add i64 %289, -12
  %308 = add i64 %291, 21
  store i64 %308, i64* %PC, align 8
  %309 = inttoptr i64 %307 to i32*
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  store i64 %311, i64* %RSI, align 8, !tbaa !2428
  %312 = add i64 %306, 9
  %313 = add i64 %312, %311
  %314 = add i64 %291, 25
  store i64 %314, i64* %PC, align 8
  %315 = inttoptr i64 %313 to i8*
  store i8 %296, i8* %315, align 1
  %316 = load i64, i64* %RBP, align 8
  %317 = add i64 %316, -27
  %318 = load i64, i64* %PC, align 8
  %319 = add i64 %318, 4
  store i64 %319, i64* %PC, align 8
  %320 = inttoptr i64 %317 to i8*
  %321 = load i8, i8* %320, align 1
  %322 = and i8 %321, 15
  %323 = or i8 %322, 48
  %324 = zext i8 %323 to i32
  %325 = zext i8 %323 to i64
  store i64 %325, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2434
  %326 = tail call i32 @llvm.ctpop.i32(i32 %324) #8
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  %329 = xor i8 %328, 1
  store i8 %329, i8* %49, align 1, !tbaa !2447
  store i8 0, i8* %53, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 0, i8* %52, align 1, !tbaa !2451
  store i8 %323, i8* %AL, align 1, !tbaa !2454
  %330 = add i64 %316, -24
  %331 = add i64 %318, 17
  store i64 %331, i64* %PC, align 8
  %332 = inttoptr i64 %330 to i64*
  %333 = load i64, i64* %332, align 8
  store i64 %333, i64* %RCX, align 8, !tbaa !2428
  %334 = add i64 %316, -12
  %335 = add i64 %318, 21
  store i64 %335, i64* %PC, align 8
  %336 = inttoptr i64 %334 to i32*
  %337 = load i32, i32* %336, align 4
  %338 = sext i32 %337 to i64
  store i64 %338, i64* %RSI, align 8, !tbaa !2428
  %339 = add i64 %333, 10
  %340 = add i64 %339, %338
  %341 = add i64 %318, 25
  store i64 %341, i64* %PC, align 8
  %342 = inttoptr i64 %340 to i8*
  store i8 %323, i8* %342, align 1
  %343 = load i64, i64* %RBP, align 8
  %344 = add i64 %343, -27
  %345 = load i64, i64* %PC, align 8
  %346 = add i64 %345, 4
  store i64 %346, i64* %PC, align 8
  %347 = inttoptr i64 %344 to i8*
  %348 = load i8, i8* %347, align 1
  %349 = and i8 %348, 15
  %350 = or i8 %349, 48
  %351 = zext i8 %350 to i32
  %352 = zext i8 %350 to i64
  store i64 %352, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2434
  %353 = tail call i32 @llvm.ctpop.i32(i32 %351) #8
  %354 = trunc i32 %353 to i8
  %355 = and i8 %354, 1
  %356 = xor i8 %355, 1
  store i8 %356, i8* %49, align 1, !tbaa !2447
  store i8 0, i8* %53, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 0, i8* %52, align 1, !tbaa !2451
  store i8 %350, i8* %AL, align 1, !tbaa !2454
  %357 = add i64 %343, -24
  %358 = add i64 %345, 17
  store i64 %358, i64* %PC, align 8
  %359 = inttoptr i64 %357 to i64*
  %360 = load i64, i64* %359, align 8
  store i64 %360, i64* %RCX, align 8, !tbaa !2428
  %361 = add i64 %343, -12
  %362 = add i64 %345, 21
  store i64 %362, i64* %PC, align 8
  %363 = inttoptr i64 %361 to i32*
  %364 = load i32, i32* %363, align 4
  %365 = sext i32 %364 to i64
  store i64 %365, i64* %RSI, align 8, !tbaa !2428
  %366 = add i64 %360, 11
  %367 = add i64 %366, %365
  %368 = add i64 %345, 25
  store i64 %368, i64* %PC, align 8
  %369 = inttoptr i64 %367 to i8*
  store i8 %350, i8* %369, align 1
  %370 = load i64, i64* %RBP, align 8
  %371 = add i64 %370, -26
  %372 = load i64, i64* %PC, align 8
  %373 = add i64 %372, 4
  store i64 %373, i64* %PC, align 8
  %374 = inttoptr i64 %371 to i8*
  %375 = load i8, i8* %374, align 1
  %376 = and i8 %375, 15
  %377 = or i8 %376, 48
  %378 = zext i8 %377 to i32
  %379 = zext i8 %377 to i64
  store i64 %379, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2434
  %380 = tail call i32 @llvm.ctpop.i32(i32 %378) #8
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = xor i8 %382, 1
  store i8 %383, i8* %49, align 1, !tbaa !2447
  store i8 0, i8* %53, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 0, i8* %52, align 1, !tbaa !2451
  store i8 %377, i8* %AL, align 1, !tbaa !2454
  %384 = add i64 %370, -24
  %385 = add i64 %372, 17
  store i64 %385, i64* %PC, align 8
  %386 = inttoptr i64 %384 to i64*
  %387 = load i64, i64* %386, align 8
  store i64 %387, i64* %RCX, align 8, !tbaa !2428
  %388 = add i64 %370, -12
  %389 = add i64 %372, 21
  store i64 %389, i64* %PC, align 8
  %390 = inttoptr i64 %388 to i32*
  %391 = load i32, i32* %390, align 4
  %392 = sext i32 %391 to i64
  store i64 %392, i64* %RSI, align 8, !tbaa !2428
  %393 = add i64 %387, 12
  %394 = add i64 %393, %392
  %395 = add i64 %372, 25
  store i64 %395, i64* %PC, align 8
  %396 = inttoptr i64 %394 to i8*
  store i8 %377, i8* %396, align 1
  %397 = load i64, i64* %RBP, align 8
  %398 = add i64 %397, -26
  %399 = load i64, i64* %PC, align 8
  %400 = add i64 %399, 4
  store i64 %400, i64* %PC, align 8
  %401 = inttoptr i64 %398 to i8*
  %402 = load i8, i8* %401, align 1
  %403 = and i8 %402, 15
  %404 = or i8 %403, 48
  %405 = zext i8 %404 to i32
  %406 = zext i8 %404 to i64
  store i64 %406, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2434
  %407 = tail call i32 @llvm.ctpop.i32(i32 %405) #8
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = xor i8 %409, 1
  store i8 %410, i8* %49, align 1, !tbaa !2447
  store i8 0, i8* %53, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 0, i8* %52, align 1, !tbaa !2451
  store i8 %404, i8* %AL, align 1, !tbaa !2454
  %411 = add i64 %397, -24
  %412 = add i64 %399, 17
  store i64 %412, i64* %PC, align 8
  %413 = inttoptr i64 %411 to i64*
  %414 = load i64, i64* %413, align 8
  store i64 %414, i64* %RCX, align 8, !tbaa !2428
  %415 = add i64 %397, -12
  %416 = add i64 %399, 21
  store i64 %416, i64* %PC, align 8
  %417 = inttoptr i64 %415 to i32*
  %418 = load i32, i32* %417, align 4
  %419 = sext i32 %418 to i64
  store i64 %419, i64* %RSI, align 8, !tbaa !2428
  %420 = add i64 %414, 13
  %421 = add i64 %420, %419
  %422 = add i64 %399, 25
  store i64 %422, i64* %PC, align 8
  %423 = inttoptr i64 %421 to i8*
  store i8 %404, i8* %423, align 1
  %424 = load i64, i64* %RBP, align 8
  %425 = add i64 %424, -25
  %426 = load i64, i64* %PC, align 8
  %427 = add i64 %426, 4
  store i64 %427, i64* %PC, align 8
  %428 = inttoptr i64 %425 to i8*
  %429 = load i8, i8* %428, align 1
  %430 = and i8 %429, 15
  %431 = or i8 %430, 48
  %432 = zext i8 %431 to i32
  %433 = zext i8 %431 to i64
  store i64 %433, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2434
  %434 = tail call i32 @llvm.ctpop.i32(i32 %432) #8
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = xor i8 %436, 1
  store i8 %437, i8* %49, align 1, !tbaa !2447
  store i8 0, i8* %53, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 0, i8* %52, align 1, !tbaa !2451
  store i8 %431, i8* %AL, align 1, !tbaa !2454
  %438 = add i64 %424, -24
  %439 = add i64 %426, 17
  store i64 %439, i64* %PC, align 8
  %440 = inttoptr i64 %438 to i64*
  %441 = load i64, i64* %440, align 8
  store i64 %441, i64* %RCX, align 8, !tbaa !2428
  %442 = add i64 %424, -12
  %443 = add i64 %426, 21
  store i64 %443, i64* %PC, align 8
  %444 = inttoptr i64 %442 to i32*
  %445 = load i32, i32* %444, align 4
  %446 = sext i32 %445 to i64
  store i64 %446, i64* %RSI, align 8, !tbaa !2428
  %447 = add i64 %441, 14
  %448 = add i64 %447, %446
  %449 = add i64 %426, 25
  store i64 %449, i64* %PC, align 8
  %450 = inttoptr i64 %448 to i8*
  store i8 %431, i8* %450, align 1
  %451 = load i64, i64* %RBP, align 8
  %452 = add i64 %451, -25
  %453 = load i64, i64* %PC, align 8
  %454 = add i64 %453, 4
  store i64 %454, i64* %PC, align 8
  %455 = inttoptr i64 %452 to i8*
  %456 = load i8, i8* %455, align 1
  %457 = and i8 %456, 15
  %458 = or i8 %457, 48
  %459 = zext i8 %458 to i32
  %460 = zext i8 %458 to i64
  store i64 %460, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2434
  %461 = tail call i32 @llvm.ctpop.i32(i32 %459) #8
  %462 = trunc i32 %461 to i8
  %463 = and i8 %462, 1
  %464 = xor i8 %463, 1
  store i8 %464, i8* %49, align 1, !tbaa !2447
  store i8 0, i8* %53, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 0, i8* %52, align 1, !tbaa !2451
  store i8 %458, i8* %AL, align 1, !tbaa !2454
  %465 = add i64 %451, -24
  %466 = add i64 %453, 17
  store i64 %466, i64* %PC, align 8
  %467 = inttoptr i64 %465 to i64*
  %468 = load i64, i64* %467, align 8
  store i64 %468, i64* %RCX, align 8, !tbaa !2428
  %469 = add i64 %451, -12
  %470 = add i64 %453, 21
  store i64 %470, i64* %PC, align 8
  %471 = inttoptr i64 %469 to i32*
  %472 = load i32, i32* %471, align 4
  %473 = sext i32 %472 to i64
  store i64 %473, i64* %RSI, align 8, !tbaa !2428
  %474 = add i64 %468, 15
  %475 = add i64 %474, %473
  %476 = add i64 %453, 25
  store i64 %476, i64* %PC, align 8
  %477 = inttoptr i64 %475 to i8*
  store i8 %458, i8* %477, align 1
  %478 = load i64, i64* %PC, align 8
  %479 = add i64 %478, 1
  store i64 %479, i64* %PC, align 8
  %480 = load i64, i64* %8, align 8, !tbaa !2428
  %481 = add i64 %480, 8
  %482 = inttoptr i64 %480 to i64*
  %483 = load i64, i64* %482, align 8
  store i64 %483, i64* %RBP, align 8, !tbaa !2428
  store i64 %481, i64* %8, align 8, !tbaa !2428
  %484 = add i64 %478, 2
  store i64 %484, i64* %PC, align 8
  %485 = inttoptr i64 %481 to i64*
  %486 = load i64, i64* %485, align 8
  store i64 %486, i64* %PC, align 8, !tbaa !2428
  %487 = add i64 %480, 16
  store i64 %487, i64* %8, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006b0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4006b0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 6299752, i64* %RSI, align 8, !tbaa !2428
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %1, 6
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !2428
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %3, i64* %8, align 8
  store i64 %7, i64* %5, align 8, !tbaa !2428
  %9 = load i64, i64* %RSI, align 8
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %9, -6299752
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %18 = ashr i64 %11, 3
  %19 = lshr i64 %18, 63
  store i64 %19, i64* %RAX, align 8, !tbaa !2428
  %20 = add nsw i64 %19, %18
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = ashr i64 %20, 1
  store i64 %23, i64* %RSI, align 8, !tbaa !2428
  store i8 %22, i8* %12, align 1, !tbaa !2454
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 255
  %26 = tail call i32 @llvm.ctpop.i32(i32 %25) #8
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  store i8 %29, i8* %13, align 1, !tbaa !2454
  store i8 0, i8* %14, align 1, !tbaa !2454
  %30 = icmp eq i64 %23, 0
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %15, align 1, !tbaa !2454
  %32 = lshr i64 %23, 63
  %33 = trunc i64 %32 to i8
  store i8 %33, i8* %16, align 1, !tbaa !2454
  store i8 0, i8* %17, align 1, !tbaa !2454
  %.v = select i1 %30, i64 50, i64 29
  %34 = add i64 %10, %.v
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  br i1 %30, label %block_4006e8, label %block_4006d3

block_4006d3:                                     ; preds = %block_4006b0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2434
  store i8 1, i8* %13, align 1, !tbaa !2447
  store i8 1, i8* %15, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  store i8 0, i8* %17, align 1, !tbaa !2451
  store i8 0, i8* %14, align 1, !tbaa !2448
  %35 = add i64 %34, 21
  store i64 %35, i64* %PC, align 8, !tbaa !2428
  br label %block_4006e8

block_4006e8:                                     ; preds = %block_4006d3, %block_4006b0
  %36 = phi i64 [ %35, %block_4006d3 ], [ %34, %block_4006b0 ]
  %37 = add i64 %36, 1
  store i64 %37, i64* %PC, align 8
  %38 = load i64, i64* %5, align 8, !tbaa !2428
  %39 = add i64 %38, 8
  %40 = inttoptr i64 %38 to i64*
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %RBP, align 8, !tbaa !2428
  store i64 %39, i64* %5, align 8, !tbaa !2428
  %42 = add i64 %36, 2
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %39 to i64*
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %PC, align 8, !tbaa !2428
  %45 = add i64 %38, 16
  store i64 %45, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400670__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400670:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = add i64 %1, 2
  store i64 %3, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !2428
  %6 = inttoptr i64 %5 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %PC, align 8, !tbaa !2428
  %8 = add i64 %5, 8
  store i64 %8, i64* %4, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007f0_polybench_timer_stop(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4007f0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %1, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !2428
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %PC, align 8
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %10 = add i64 %9, -17
  %11 = add i64 %9, 8
  %12 = add i64 %6, -16
  %13 = inttoptr i64 %12 to i64*
  store i64 %11, i64* %13, align 8
  store i64 %12, i64* %5, align 8, !tbaa !2428
  store i64 %10, i64* %PC, align 8, !tbaa !2428
  %14 = tail call %struct.Memory* @sub_4007e0_rtclock_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
  %15 = load i64, i64* %PC, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %17 = load i64, i64* %16, align 1
  store i64 %17, i64* bitcast (%polybench_t_end_type* @polybench_t_end to i64*), align 8
  %18 = add i64 %15, 10
  store i64 %18, i64* %PC, align 8
  %19 = load i64, i64* %5, align 8, !tbaa !2428
  %20 = add i64 %19, 8
  %21 = inttoptr i64 %19 to i64*
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %RBP, align 8, !tbaa !2428
  store i64 %20, i64* %5, align 8, !tbaa !2428
  %23 = add i64 %15, 11
  store i64 %23, i64* %PC, align 8
  %24 = inttoptr i64 %20 to i64*
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %PC, align 8, !tbaa !2428
  %26 = add i64 %19, 16
  store i64 %26, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %14
}

; Function Attrs: noinline
define %struct.Memory* @sub_400fa0_kernel_2mm_StrictFP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400fa0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %5 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %6 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %8 = load i64, i64* %RBP, align 8
  %9 = add i64 %1, 1
  store i64 %9, i64* %PC, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !2428
  %12 = add i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64 %8, i64* %13, align 8
  store i64 %12, i64* %10, align 8, !tbaa !2428
  %14 = load i64, i64* %PC, align 8
  store i64 %12, i64* %RBP, align 8, !tbaa !2428
  %15 = add i64 %11, 24
  %16 = add i64 %14, 7
  store i64 %16, i64* %PC, align 8
  %17 = inttoptr i64 %15 to i64*
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %RAX, align 8, !tbaa !2428
  %19 = add i64 %11, 16
  %20 = add i64 %14, 11
  store i64 %20, i64* %PC, align 8
  %21 = inttoptr i64 %19 to i64*
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %R10, align 8, !tbaa !2428
  %23 = add i64 %11, 8
  %24 = add i64 %14, 15
  store i64 %24, i64* %PC, align 8
  %25 = inttoptr i64 %23 to i64*
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %R11, align 8, !tbaa !2428
  %27 = add i64 %11, -12
  %28 = load i32, i32* %EDI, align 4
  %29 = add i64 %14, 18
  store i64 %29, i64* %PC, align 8
  %30 = inttoptr i64 %27 to i32*
  store i32 %28, i32* %30, align 4
  %31 = load i64, i64* %RBP, align 8
  %32 = add i64 %31, -8
  %33 = load i32, i32* %ESI, align 4
  %34 = load i64, i64* %PC, align 8
  %35 = add i64 %34, 3
  store i64 %35, i64* %PC, align 8
  %36 = inttoptr i64 %32 to i32*
  store i32 %33, i32* %36, align 4
  %37 = load i64, i64* %RBP, align 8
  %38 = add i64 %37, -12
  %39 = load i32, i32* %EDX, align 4
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 3
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %38 to i32*
  store i32 %39, i32* %42, align 4
  %43 = load i64, i64* %RBP, align 8
  %44 = add i64 %43, -16
  %45 = load i32, i32* %ECX, align 4
  %46 = load i64, i64* %PC, align 8
  %47 = add i64 %46, 3
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %44 to i32*
  store i32 %45, i32* %48, align 4
  %49 = load i64, i64* %RBP, align 8
  %50 = add i64 %49, -24
  %51 = load i64, i64* %PC, align 8
  %52 = add i64 %51, 5
  store i64 %52, i64* %PC, align 8
  %53 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %54 = load i64, i64* %53, align 1
  %55 = inttoptr i64 %50 to i64*
  store i64 %54, i64* %55, align 8
  %56 = load i64, i64* %RBP, align 8
  %57 = add i64 %56, -32
  %58 = load i64, i64* %PC, align 8
  %59 = add i64 %58, 5
  store i64 %59, i64* %PC, align 8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %61 = load i64, i64* %60, align 1
  %62 = inttoptr i64 %57 to i64*
  store i64 %61, i64* %62, align 8
  %63 = load i64, i64* %RBP, align 8
  %64 = add i64 %63, -40
  %65 = load i64, i64* %R8, align 8
  %66 = load i64, i64* %PC, align 8
  %67 = add i64 %66, 4
  store i64 %67, i64* %PC, align 8
  %68 = inttoptr i64 %64 to i64*
  store i64 %65, i64* %68, align 8
  %69 = load i64, i64* %RBP, align 8
  %70 = add i64 %69, -48
  %71 = load i64, i64* %R9, align 8
  %72 = load i64, i64* %PC, align 8
  %73 = add i64 %72, 4
  store i64 %73, i64* %PC, align 8
  %74 = inttoptr i64 %70 to i64*
  store i64 %71, i64* %74, align 8
  %75 = load i64, i64* %RBP, align 8
  %76 = add i64 %75, -52
  %77 = load i64, i64* %PC, align 8
  %78 = add i64 %77, 7
  store i64 %78, i64* %PC, align 8
  %79 = inttoptr i64 %76 to i32*
  store i32 0, i32* %79, align 4
  %80 = load i64, i64* %RBP, align 8
  %81 = add i64 %80, -72
  %82 = load i64, i64* %R11, align 8
  %83 = load i64, i64* %PC, align 8
  %84 = add i64 %83, 4
  store i64 %84, i64* %PC, align 8
  %85 = inttoptr i64 %81 to i64*
  store i64 %82, i64* %85, align 8
  %86 = load i64, i64* %RBP, align 8
  %87 = add i64 %86, -80
  %88 = load i64, i64* %R10, align 8
  %89 = load i64, i64* %PC, align 8
  %90 = add i64 %89, 4
  store i64 %90, i64* %PC, align 8
  %91 = inttoptr i64 %87 to i64*
  store i64 %88, i64* %91, align 8
  %92 = load i64, i64* %RBP, align 8
  %93 = add i64 %92, -88
  %94 = load i64, i64* %RAX, align 8
  %95 = load i64, i64* %PC, align 8
  %96 = add i64 %95, 4
  store i64 %96, i64* %PC, align 8
  %97 = inttoptr i64 %93 to i64*
  store i64 %94, i64* %97, align 8
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %104 = bitcast [32 x %union.VectorReg]* %7 to i8*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %106 = bitcast [32 x %union.VectorReg]* %7 to i32*
  %107 = getelementptr inbounds i8, i8* %104, i64 4
  %108 = bitcast i8* %107 to i32*
  %109 = bitcast i64* %105 to i32*
  %110 = getelementptr inbounds i8, i8* %104, i64 12
  %111 = bitcast i8* %110 to i32*
  %112 = bitcast [32 x %union.VectorReg]* %7 to double*
  %113 = bitcast i64* %105 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400fe1

block_40117d:                                     ; preds = %block_4010ce
  %114 = add i64 %231, -52
  %115 = add i64 %267, 8
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %114 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = add i32 %117, 1
  %119 = zext i32 %118 to i64
  store i64 %119, i64* %RAX, align 8, !tbaa !2428
  %120 = icmp eq i32 %117, -1
  %121 = icmp eq i32 %118, 0
  %122 = or i1 %120, %121
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %98, align 1, !tbaa !2434
  %124 = and i32 %118, 255
  %125 = tail call i32 @llvm.ctpop.i32(i32 %124) #8
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = xor i8 %127, 1
  store i8 %128, i8* %99, align 1, !tbaa !2447
  %129 = xor i32 %117, %118
  %130 = lshr i32 %129, 4
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  store i8 %132, i8* %100, align 1, !tbaa !2448
  %133 = zext i1 %121 to i8
  store i8 %133, i8* %101, align 1, !tbaa !2449
  %134 = lshr i32 %118, 31
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %102, align 1, !tbaa !2450
  %136 = lshr i32 %117, 31
  %137 = xor i32 %134, %136
  %138 = add nuw nsw i32 %137, %134
  %139 = icmp eq i32 %138, 2
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %103, align 1, !tbaa !2451
  %141 = add i64 %267, 14
  store i64 %141, i64* %PC, align 8
  store i32 %118, i32* %116, align 4
  %142 = load i64, i64* %PC, align 8
  %143 = add i64 %142, -208
  store i64 %143, i64* %PC, align 8, !tbaa !2428
  br label %block_4010bb

block_40116a:                                     ; preds = %block_401103
  %144 = add i64 %844, -56
  %145 = add i64 %880, 8
  store i64 %145, i64* %PC, align 8
  %146 = inttoptr i64 %144 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = add i32 %147, 1
  %149 = zext i32 %148 to i64
  store i64 %149, i64* %RAX, align 8, !tbaa !2428
  %150 = icmp eq i32 %147, -1
  %151 = icmp eq i32 %148, 0
  %152 = or i1 %150, %151
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %98, align 1, !tbaa !2434
  %154 = and i32 %148, 255
  %155 = tail call i32 @llvm.ctpop.i32(i32 %154) #8
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  %158 = xor i8 %157, 1
  store i8 %158, i8* %99, align 1, !tbaa !2447
  %159 = xor i32 %147, %148
  %160 = lshr i32 %159, 4
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  store i8 %162, i8* %100, align 1, !tbaa !2448
  %163 = zext i1 %151 to i8
  store i8 %163, i8* %101, align 1, !tbaa !2449
  %164 = lshr i32 %148, 31
  %165 = trunc i32 %164 to i8
  store i8 %165, i8* %102, align 1, !tbaa !2450
  %166 = lshr i32 %147, 31
  %167 = xor i32 %164, %166
  %168 = add nuw nsw i32 %167, %164
  %169 = icmp eq i32 %168, 2
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %103, align 1, !tbaa !2451
  %171 = add i64 %880, 14
  store i64 %171, i64* %PC, align 8
  store i32 %148, i32* %146, align 4
  %172 = load i64, i64* %PC, align 8
  %173 = add i64 %172, -170
  store i64 %173, i64* %PC, align 8, !tbaa !2428
  br label %block_4010ce

block_4010da:                                     ; preds = %block_4010ce
  %174 = add i64 %231, -32
  %175 = add i64 %267, 5
  store i64 %175, i64* %PC, align 8
  %176 = inttoptr i64 %174 to double*
  %177 = load double, double* %176, align 8
  store double %177, double* %112, align 1, !tbaa !2452
  store double 0.000000e+00, double* %113, align 1, !tbaa !2452
  %178 = add i64 %231, 32
  %179 = add i64 %267, 9
  store i64 %179, i64* %PC, align 8
  %180 = inttoptr i64 %178 to i64*
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %RAX, align 8, !tbaa !2428
  %182 = add i64 %231, -52
  %183 = add i64 %267, 13
  store i64 %183, i64* %PC, align 8
  %184 = inttoptr i64 %182 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = shl nsw i64 %186, 13
  store i64 %187, i64* %RCX, align 8, !tbaa !2428
  %188 = lshr i64 %186, 50
  %189 = and i64 %188, 1
  %190 = add i64 %187, %181
  store i64 %190, i64* %RAX, align 8, !tbaa !2428
  %191 = icmp ult i64 %190, %181
  %192 = icmp ult i64 %190, %187
  %193 = or i1 %191, %192
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %98, align 1, !tbaa !2434
  %195 = trunc i64 %190 to i32
  %196 = and i32 %195, 255
  %197 = tail call i32 @llvm.ctpop.i32(i32 %196) #8
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  store i8 %200, i8* %99, align 1, !tbaa !2447
  %201 = xor i64 %181, %190
  %202 = lshr i64 %201, 4
  %203 = trunc i64 %202 to i8
  %204 = and i8 %203, 1
  store i8 %204, i8* %100, align 1, !tbaa !2448
  %205 = icmp eq i64 %190, 0
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %101, align 1, !tbaa !2449
  %207 = lshr i64 %190, 63
  %208 = trunc i64 %207 to i8
  store i8 %208, i8* %102, align 1, !tbaa !2450
  %209 = lshr i64 %181, 63
  %210 = xor i64 %207, %209
  %211 = xor i64 %207, %189
  %212 = add nuw nsw i64 %210, %211
  %213 = icmp eq i64 %212, 2
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %103, align 1, !tbaa !2451
  %215 = add i64 %267, 24
  store i64 %215, i64* %PC, align 8
  %216 = load i32, i32* %234, align 4
  %217 = sext i32 %216 to i64
  store i64 %217, i64* %RCX, align 8, !tbaa !2428
  %218 = shl nsw i64 %217, 3
  %219 = add i64 %218, %190
  %220 = add i64 %267, 29
  store i64 %220, i64* %PC, align 8
  %221 = inttoptr i64 %219 to double*
  %222 = load double, double* %221, align 8
  %223 = fmul double %177, %222
  store double %223, double* %112, align 1, !tbaa !2452
  store i64 0, i64* %105, align 1, !tbaa !2452
  %224 = add i64 %267, 34
  store i64 %224, i64* %PC, align 8
  store double %223, double* %221, align 8
  %225 = load i64, i64* %RBP, align 8
  %226 = add i64 %225, -60
  %227 = load i64, i64* %PC, align 8
  %228 = add i64 %227, 7
  store i64 %228, i64* %PC, align 8
  %229 = inttoptr i64 %226 to i32*
  store i32 0, i32* %229, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_401103

block_4010ce:                                     ; preds = %block_4010c7, %block_40116a
  %230 = phi i64 [ %.pre4, %block_4010c7 ], [ %173, %block_40116a ]
  %231 = load i64, i64* %RBP, align 8
  %232 = add i64 %231, -56
  %233 = add i64 %230, 3
  store i64 %233, i64* %PC, align 8
  %234 = inttoptr i64 %232 to i32*
  %235 = load i32, i32* %234, align 4
  %236 = zext i32 %235 to i64
  store i64 %236, i64* %RAX, align 8, !tbaa !2428
  %237 = add i64 %231, -16
  %238 = add i64 %230, 6
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %237 to i32*
  %240 = load i32, i32* %239, align 4
  %241 = sub i32 %235, %240
  %242 = icmp ult i32 %235, %240
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %98, align 1, !tbaa !2434
  %244 = and i32 %241, 255
  %245 = tail call i32 @llvm.ctpop.i32(i32 %244) #8
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  %248 = xor i8 %247, 1
  store i8 %248, i8* %99, align 1, !tbaa !2447
  %249 = xor i32 %240, %235
  %250 = xor i32 %249, %241
  %251 = lshr i32 %250, 4
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  store i8 %253, i8* %100, align 1, !tbaa !2448
  %254 = icmp eq i32 %241, 0
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %101, align 1, !tbaa !2449
  %256 = lshr i32 %241, 31
  %257 = trunc i32 %256 to i8
  store i8 %257, i8* %102, align 1, !tbaa !2450
  %258 = lshr i32 %235, 31
  %259 = lshr i32 %240, 31
  %260 = xor i32 %259, %258
  %261 = xor i32 %256, %258
  %262 = add nuw nsw i32 %261, %260
  %263 = icmp eq i32 %262, 2
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %103, align 1, !tbaa !2451
  %265 = icmp ne i8 %257, 0
  %266 = xor i1 %265, %263
  %.v9 = select i1 %266, i64 12, i64 175
  %267 = add i64 %230, %.v9
  store i64 %267, i64* %PC, align 8, !tbaa !2428
  br i1 %266, label %block_4010da, label %block_40117d

block_4010bb:                                     ; preds = %block_4010b4, %block_40117d
  %268 = phi i64 [ %.pre3, %block_4010b4 ], [ %143, %block_40117d ]
  %269 = load i64, i64* %RBP, align 8
  %270 = add i64 %269, -52
  %271 = add i64 %268, 3
  store i64 %271, i64* %PC, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = zext i32 %273 to i64
  store i64 %274, i64* %RAX, align 8, !tbaa !2428
  %275 = add i64 %269, -4
  %276 = add i64 %268, 6
  store i64 %276, i64* %PC, align 8
  %277 = inttoptr i64 %275 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = sub i32 %273, %278
  %280 = icmp ult i32 %273, %278
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %98, align 1, !tbaa !2434
  %282 = and i32 %279, 255
  %283 = tail call i32 @llvm.ctpop.i32(i32 %282) #8
  %284 = trunc i32 %283 to i8
  %285 = and i8 %284, 1
  %286 = xor i8 %285, 1
  store i8 %286, i8* %99, align 1, !tbaa !2447
  %287 = xor i32 %278, %273
  %288 = xor i32 %287, %279
  %289 = lshr i32 %288, 4
  %290 = trunc i32 %289 to i8
  %291 = and i8 %290, 1
  store i8 %291, i8* %100, align 1, !tbaa !2448
  %292 = icmp eq i32 %279, 0
  %293 = zext i1 %292 to i8
  store i8 %293, i8* %101, align 1, !tbaa !2449
  %294 = lshr i32 %279, 31
  %295 = trunc i32 %294 to i8
  store i8 %295, i8* %102, align 1, !tbaa !2450
  %296 = lshr i32 %273, 31
  %297 = lshr i32 %278, 31
  %298 = xor i32 %297, %296
  %299 = xor i32 %294, %296
  %300 = add nuw nsw i32 %299, %298
  %301 = icmp eq i32 %300, 2
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %103, align 1, !tbaa !2451
  %303 = icmp ne i8 %295, 0
  %304 = xor i1 %303, %301
  %.v8 = select i1 %304, i64 12, i64 213
  %305 = add i64 %268, %.v8
  store i64 %305, i64* %PC, align 8, !tbaa !2428
  br i1 %304, label %block_4010c7, label %block_401190

block_4010b4:                                     ; preds = %block_400fe1
  %306 = add i64 %842, 7
  store i64 %306, i64* %PC, align 8
  store i32 0, i32* %809, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_4010bb

block_400ff4:                                     ; preds = %block_40108e, %block_400fed
  %307 = phi i64 [ %804, %block_40108e ], [ %.pre1, %block_400fed ]
  %308 = load i64, i64* %RBP, align 8
  %309 = add i64 %308, -56
  %310 = add i64 %307, 3
  store i64 %310, i64* %PC, align 8
  %311 = inttoptr i64 %309 to i32*
  %312 = load i32, i32* %311, align 4
  %313 = zext i32 %312 to i64
  store i64 %313, i64* %RAX, align 8, !tbaa !2428
  %314 = add i64 %308, -8
  %315 = add i64 %307, 6
  store i64 %315, i64* %PC, align 8
  %316 = inttoptr i64 %314 to i32*
  %317 = load i32, i32* %316, align 4
  %318 = sub i32 %312, %317
  %319 = icmp ult i32 %312, %317
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %98, align 1, !tbaa !2434
  %321 = and i32 %318, 255
  %322 = tail call i32 @llvm.ctpop.i32(i32 %321) #8
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  %325 = xor i8 %324, 1
  store i8 %325, i8* %99, align 1, !tbaa !2447
  %326 = xor i32 %317, %312
  %327 = xor i32 %326, %318
  %328 = lshr i32 %327, 4
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  store i8 %330, i8* %100, align 1, !tbaa !2448
  %331 = icmp eq i32 %318, 0
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %101, align 1, !tbaa !2449
  %333 = lshr i32 %318, 31
  %334 = trunc i32 %333 to i8
  store i8 %334, i8* %102, align 1, !tbaa !2450
  %335 = lshr i32 %312, 31
  %336 = lshr i32 %317, 31
  %337 = xor i32 %336, %335
  %338 = xor i32 %333, %335
  %339 = add nuw nsw i32 %338, %337
  %340 = icmp eq i32 %339, 2
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %103, align 1, !tbaa !2451
  %342 = icmp ne i8 %334, 0
  %343 = xor i1 %342, %340
  %.v6 = select i1 %343, i64 12, i64 173
  %344 = add i64 %307, %.v6
  store i64 %344, i64* %PC, align 8, !tbaa !2428
  br i1 %343, label %block_401000, label %block_4010a1

block_40102e:                                     ; preds = %block_401022
  %345 = add i64 %522, -24
  %346 = add i64 %558, 5
  store i64 %346, i64* %PC, align 8
  %347 = inttoptr i64 %345 to double*
  %348 = load double, double* %347, align 8
  store double %348, double* %112, align 1, !tbaa !2452
  store double 0.000000e+00, double* %113, align 1, !tbaa !2452
  %349 = add i64 %522, -48
  %350 = add i64 %558, 9
  store i64 %350, i64* %PC, align 8
  %351 = inttoptr i64 %349 to i64*
  %352 = load i64, i64* %351, align 8
  store i64 %352, i64* %RAX, align 8, !tbaa !2428
  %353 = add i64 %522, -52
  %354 = add i64 %558, 13
  store i64 %354, i64* %PC, align 8
  %355 = inttoptr i64 %353 to i32*
  %356 = load i32, i32* %355, align 4
  %357 = sext i32 %356 to i64
  %358 = shl nsw i64 %357, 13
  store i64 %358, i64* %RCX, align 8, !tbaa !2428
  %359 = lshr i64 %357, 50
  %360 = and i64 %359, 1
  %361 = add i64 %358, %352
  store i64 %361, i64* %RAX, align 8, !tbaa !2428
  %362 = icmp ult i64 %361, %352
  %363 = icmp ult i64 %361, %358
  %364 = or i1 %362, %363
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %98, align 1, !tbaa !2434
  %366 = trunc i64 %361 to i32
  %367 = and i32 %366, 255
  %368 = tail call i32 @llvm.ctpop.i32(i32 %367) #8
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  %371 = xor i8 %370, 1
  store i8 %371, i8* %99, align 1, !tbaa !2447
  %372 = xor i64 %352, %361
  %373 = lshr i64 %372, 4
  %374 = trunc i64 %373 to i8
  %375 = and i8 %374, 1
  store i8 %375, i8* %100, align 1, !tbaa !2448
  %376 = icmp eq i64 %361, 0
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %101, align 1, !tbaa !2449
  %378 = lshr i64 %361, 63
  %379 = trunc i64 %378 to i8
  store i8 %379, i8* %102, align 1, !tbaa !2450
  %380 = lshr i64 %352, 63
  %381 = xor i64 %378, %380
  %382 = xor i64 %378, %360
  %383 = add nuw nsw i64 %381, %382
  %384 = icmp eq i64 %383, 2
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %103, align 1, !tbaa !2451
  %386 = add i64 %558, 24
  store i64 %386, i64* %PC, align 8
  %387 = load i32, i32* %525, align 4
  %388 = sext i32 %387 to i64
  store i64 %388, i64* %RCX, align 8, !tbaa !2428
  %389 = shl nsw i64 %388, 3
  %390 = add i64 %389, %361
  %391 = add i64 %558, 29
  store i64 %391, i64* %PC, align 8
  %392 = inttoptr i64 %390 to double*
  %393 = load double, double* %392, align 8
  %394 = fmul double %348, %393
  store double %394, double* %112, align 1, !tbaa !2452
  store i64 0, i64* %105, align 1, !tbaa !2452
  %395 = add i64 %522, 16
  %396 = add i64 %558, 33
  store i64 %396, i64* %PC, align 8
  %397 = inttoptr i64 %395 to i64*
  %398 = load i64, i64* %397, align 8
  store i64 %398, i64* %RAX, align 8, !tbaa !2428
  %399 = add i64 %558, 37
  store i64 %399, i64* %PC, align 8
  %400 = load i32, i32* %525, align 4
  %401 = sext i32 %400 to i64
  %402 = shl nsw i64 %401, 13
  store i64 %402, i64* %RCX, align 8, !tbaa !2428
  %403 = lshr i64 %401, 50
  %404 = and i64 %403, 1
  %405 = add i64 %402, %398
  store i64 %405, i64* %RAX, align 8, !tbaa !2428
  %406 = icmp ult i64 %405, %398
  %407 = icmp ult i64 %405, %402
  %408 = or i1 %406, %407
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %98, align 1, !tbaa !2434
  %410 = trunc i64 %405 to i32
  %411 = and i32 %410, 255
  %412 = tail call i32 @llvm.ctpop.i32(i32 %411) #8
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  %415 = xor i8 %414, 1
  store i8 %415, i8* %99, align 1, !tbaa !2447
  %416 = xor i64 %398, %405
  %417 = lshr i64 %416, 4
  %418 = trunc i64 %417 to i8
  %419 = and i8 %418, 1
  store i8 %419, i8* %100, align 1, !tbaa !2448
  %420 = icmp eq i64 %405, 0
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %101, align 1, !tbaa !2449
  %422 = lshr i64 %405, 63
  %423 = trunc i64 %422 to i8
  store i8 %423, i8* %102, align 1, !tbaa !2450
  %424 = lshr i64 %398, 63
  %425 = xor i64 %422, %424
  %426 = xor i64 %422, %404
  %427 = add nuw nsw i64 %425, %426
  %428 = icmp eq i64 %427, 2
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %103, align 1, !tbaa !2451
  %430 = load i64, i64* %RBP, align 8
  %431 = add i64 %430, -56
  %432 = add i64 %558, 48
  store i64 %432, i64* %PC, align 8
  %433 = inttoptr i64 %431 to i32*
  %434 = load i32, i32* %433, align 4
  %435 = sext i32 %434 to i64
  store i64 %435, i64* %RCX, align 8, !tbaa !2428
  %436 = shl nsw i64 %435, 3
  %437 = add i64 %436, %405
  %438 = add i64 %558, 53
  store i64 %438, i64* %PC, align 8
  %439 = inttoptr i64 %437 to double*
  %440 = load double, double* %439, align 8
  %441 = fmul double %394, %440
  store double %441, double* %112, align 1, !tbaa !2452
  store i64 0, i64* %105, align 1, !tbaa !2452
  %442 = add i64 %430, -40
  %443 = add i64 %558, 57
  store i64 %443, i64* %PC, align 8
  %444 = inttoptr i64 %442 to i64*
  %445 = load i64, i64* %444, align 8
  store i64 %445, i64* %RAX, align 8, !tbaa !2428
  %446 = add i64 %430, -52
  %447 = add i64 %558, 61
  store i64 %447, i64* %PC, align 8
  %448 = inttoptr i64 %446 to i32*
  %449 = load i32, i32* %448, align 4
  %450 = sext i32 %449 to i64
  %451 = shl nsw i64 %450, 13
  store i64 %451, i64* %RCX, align 8, !tbaa !2428
  %452 = lshr i64 %450, 50
  %453 = and i64 %452, 1
  %454 = add i64 %451, %445
  store i64 %454, i64* %RAX, align 8, !tbaa !2428
  %455 = icmp ult i64 %454, %445
  %456 = icmp ult i64 %454, %451
  %457 = or i1 %455, %456
  %458 = zext i1 %457 to i8
  store i8 %458, i8* %98, align 1, !tbaa !2434
  %459 = trunc i64 %454 to i32
  %460 = and i32 %459, 255
  %461 = tail call i32 @llvm.ctpop.i32(i32 %460) #8
  %462 = trunc i32 %461 to i8
  %463 = and i8 %462, 1
  %464 = xor i8 %463, 1
  store i8 %464, i8* %99, align 1, !tbaa !2447
  %465 = xor i64 %445, %454
  %466 = lshr i64 %465, 4
  %467 = trunc i64 %466 to i8
  %468 = and i8 %467, 1
  store i8 %468, i8* %100, align 1, !tbaa !2448
  %469 = icmp eq i64 %454, 0
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %101, align 1, !tbaa !2449
  %471 = lshr i64 %454, 63
  %472 = trunc i64 %471 to i8
  store i8 %472, i8* %102, align 1, !tbaa !2450
  %473 = lshr i64 %445, 63
  %474 = xor i64 %471, %473
  %475 = xor i64 %471, %453
  %476 = add nuw nsw i64 %474, %475
  %477 = icmp eq i64 %476, 2
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %103, align 1, !tbaa !2451
  %479 = add i64 %558, 72
  store i64 %479, i64* %PC, align 8
  %480 = load i32, i32* %433, align 4
  %481 = sext i32 %480 to i64
  store i64 %481, i64* %RCX, align 8, !tbaa !2428
  %482 = shl nsw i64 %481, 3
  %483 = add i64 %482, %454
  %484 = add i64 %558, 77
  store i64 %484, i64* %PC, align 8
  %485 = inttoptr i64 %483 to double*
  %486 = load double, double* %485, align 8
  %487 = fadd double %441, %486
  store double %487, double* %112, align 1, !tbaa !2452
  store i64 0, i64* %105, align 1, !tbaa !2452
  %488 = add i64 %558, 82
  store i64 %488, i64* %PC, align 8
  store double %487, double* %485, align 8
  %489 = load i64, i64* %RBP, align 8
  %490 = add i64 %489, -60
  %491 = load i64, i64* %PC, align 8
  %492 = add i64 %491, 3
  store i64 %492, i64* %PC, align 8
  %493 = inttoptr i64 %490 to i32*
  %494 = load i32, i32* %493, align 4
  %495 = add i32 %494, 1
  %496 = zext i32 %495 to i64
  store i64 %496, i64* %RAX, align 8, !tbaa !2428
  %497 = icmp eq i32 %494, -1
  %498 = icmp eq i32 %495, 0
  %499 = or i1 %497, %498
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %98, align 1, !tbaa !2434
  %501 = and i32 %495, 255
  %502 = tail call i32 @llvm.ctpop.i32(i32 %501) #8
  %503 = trunc i32 %502 to i8
  %504 = and i8 %503, 1
  %505 = xor i8 %504, 1
  store i8 %505, i8* %99, align 1, !tbaa !2447
  %506 = xor i32 %494, %495
  %507 = lshr i32 %506, 4
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  store i8 %509, i8* %100, align 1, !tbaa !2448
  %510 = zext i1 %498 to i8
  store i8 %510, i8* %101, align 1, !tbaa !2449
  %511 = lshr i32 %495, 31
  %512 = trunc i32 %511 to i8
  store i8 %512, i8* %102, align 1, !tbaa !2450
  %513 = lshr i32 %494, 31
  %514 = xor i32 %511, %513
  %515 = add nuw nsw i32 %514, %511
  %516 = icmp eq i32 %515, 2
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %103, align 1, !tbaa !2451
  %518 = add i64 %491, 9
  store i64 %518, i64* %PC, align 8
  store i32 %495, i32* %493, align 4
  %519 = load i64, i64* %PC, align 8
  %520 = add i64 %519, -103
  store i64 %520, i64* %PC, align 8, !tbaa !2428
  br label %block_401022

block_401022:                                     ; preds = %block_401000, %block_40102e
  %521 = phi i64 [ %.pre2, %block_401000 ], [ %520, %block_40102e ]
  %522 = load i64, i64* %RBP, align 8
  %523 = add i64 %522, -60
  %524 = add i64 %521, 3
  store i64 %524, i64* %PC, align 8
  %525 = inttoptr i64 %523 to i32*
  %526 = load i32, i32* %525, align 4
  %527 = zext i32 %526 to i64
  store i64 %527, i64* %RAX, align 8, !tbaa !2428
  %528 = add i64 %522, -12
  %529 = add i64 %521, 6
  store i64 %529, i64* %PC, align 8
  %530 = inttoptr i64 %528 to i32*
  %531 = load i32, i32* %530, align 4
  %532 = sub i32 %526, %531
  %533 = icmp ult i32 %526, %531
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %98, align 1, !tbaa !2434
  %535 = and i32 %532, 255
  %536 = tail call i32 @llvm.ctpop.i32(i32 %535) #8
  %537 = trunc i32 %536 to i8
  %538 = and i8 %537, 1
  %539 = xor i8 %538, 1
  store i8 %539, i8* %99, align 1, !tbaa !2447
  %540 = xor i32 %531, %526
  %541 = xor i32 %540, %532
  %542 = lshr i32 %541, 4
  %543 = trunc i32 %542 to i8
  %544 = and i8 %543, 1
  store i8 %544, i8* %100, align 1, !tbaa !2448
  %545 = icmp eq i32 %532, 0
  %546 = zext i1 %545 to i8
  store i8 %546, i8* %101, align 1, !tbaa !2449
  %547 = lshr i32 %532, 31
  %548 = trunc i32 %547 to i8
  store i8 %548, i8* %102, align 1, !tbaa !2450
  %549 = lshr i32 %526, 31
  %550 = lshr i32 %531, 31
  %551 = xor i32 %550, %549
  %552 = xor i32 %547, %549
  %553 = add nuw nsw i32 %552, %551
  %554 = icmp eq i32 %553, 2
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %103, align 1, !tbaa !2451
  %556 = icmp ne i8 %548, 0
  %557 = xor i1 %556, %554
  %.v7 = select i1 %557, i64 12, i64 108
  %558 = add i64 %521, %.v7
  store i64 %558, i64* %PC, align 8, !tbaa !2428
  br i1 %557, label %block_40102e, label %block_40108e

block_4010a1:                                     ; preds = %block_400ff4
  %559 = add i64 %308, -52
  %560 = add i64 %344, 8
  store i64 %560, i64* %PC, align 8
  %561 = inttoptr i64 %559 to i32*
  %562 = load i32, i32* %561, align 4
  %563 = add i32 %562, 1
  %564 = zext i32 %563 to i64
  store i64 %564, i64* %RAX, align 8, !tbaa !2428
  %565 = icmp eq i32 %562, -1
  %566 = icmp eq i32 %563, 0
  %567 = or i1 %565, %566
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %98, align 1, !tbaa !2434
  %569 = and i32 %563, 255
  %570 = tail call i32 @llvm.ctpop.i32(i32 %569) #8
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  %573 = xor i8 %572, 1
  store i8 %573, i8* %99, align 1, !tbaa !2447
  %574 = xor i32 %562, %563
  %575 = lshr i32 %574, 4
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  store i8 %577, i8* %100, align 1, !tbaa !2448
  %578 = zext i1 %566 to i8
  store i8 %578, i8* %101, align 1, !tbaa !2449
  %579 = lshr i32 %563, 31
  %580 = trunc i32 %579 to i8
  store i8 %580, i8* %102, align 1, !tbaa !2450
  %581 = lshr i32 %562, 31
  %582 = xor i32 %579, %581
  %583 = add nuw nsw i32 %582, %579
  %584 = icmp eq i32 %583, 2
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %103, align 1, !tbaa !2451
  %586 = add i64 %344, 14
  store i64 %586, i64* %PC, align 8
  store i32 %563, i32* %561, align 4
  %587 = load i64, i64* %PC, align 8
  %588 = add i64 %587, -206
  store i64 %588, i64* %PC, align 8, !tbaa !2428
  br label %block_400fe1

block_4010c7:                                     ; preds = %block_4010bb
  %589 = add i64 %269, -56
  %590 = add i64 %305, 7
  store i64 %590, i64* %PC, align 8
  %591 = inttoptr i64 %589 to i32*
  store i32 0, i32* %591, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_4010ce

block_401190:                                     ; preds = %block_4010bb
  %592 = add i64 %305, 1
  store i64 %592, i64* %PC, align 8
  %593 = load i64, i64* %10, align 8, !tbaa !2428
  %594 = add i64 %593, 8
  %595 = inttoptr i64 %593 to i64*
  %596 = load i64, i64* %595, align 8
  store i64 %596, i64* %RBP, align 8, !tbaa !2428
  store i64 %594, i64* %10, align 8, !tbaa !2428
  %597 = add i64 %305, 2
  store i64 %597, i64* %PC, align 8
  %598 = inttoptr i64 %594 to i64*
  %599 = load i64, i64* %598, align 8
  store i64 %599, i64* %PC, align 8, !tbaa !2428
  %600 = add i64 %593, 16
  store i64 %600, i64* %10, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400fed:                                     ; preds = %block_400fe1
  %601 = add i64 %806, -56
  %602 = add i64 %842, 7
  store i64 %602, i64* %PC, align 8
  %603 = inttoptr i64 %601 to i32*
  store i32 0, i32* %603, align 4
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400ff4

block_40110f:                                     ; preds = %block_401103
  %604 = add i64 %844, -40
  %605 = add i64 %880, 4
  store i64 %605, i64* %PC, align 8
  %606 = inttoptr i64 %604 to i64*
  %607 = load i64, i64* %606, align 8
  store i64 %607, i64* %RAX, align 8, !tbaa !2428
  %608 = add i64 %844, -52
  %609 = add i64 %880, 8
  store i64 %609, i64* %PC, align 8
  %610 = inttoptr i64 %608 to i32*
  %611 = load i32, i32* %610, align 4
  %612 = sext i32 %611 to i64
  %613 = shl nsw i64 %612, 13
  store i64 %613, i64* %RCX, align 8, !tbaa !2428
  %614 = lshr i64 %612, 50
  %615 = and i64 %614, 1
  %616 = add i64 %613, %607
  store i64 %616, i64* %RAX, align 8, !tbaa !2428
  %617 = icmp ult i64 %616, %607
  %618 = icmp ult i64 %616, %613
  %619 = or i1 %617, %618
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %98, align 1, !tbaa !2434
  %621 = trunc i64 %616 to i32
  %622 = and i32 %621, 255
  %623 = tail call i32 @llvm.ctpop.i32(i32 %622) #8
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  %626 = xor i8 %625, 1
  store i8 %626, i8* %99, align 1, !tbaa !2447
  %627 = xor i64 %607, %616
  %628 = lshr i64 %627, 4
  %629 = trunc i64 %628 to i8
  %630 = and i8 %629, 1
  store i8 %630, i8* %100, align 1, !tbaa !2448
  %631 = icmp eq i64 %616, 0
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %101, align 1, !tbaa !2449
  %633 = lshr i64 %616, 63
  %634 = trunc i64 %633 to i8
  store i8 %634, i8* %102, align 1, !tbaa !2450
  %635 = lshr i64 %607, 63
  %636 = xor i64 %633, %635
  %637 = xor i64 %633, %615
  %638 = add nuw nsw i64 %636, %637
  %639 = icmp eq i64 %638, 2
  %640 = zext i1 %639 to i8
  store i8 %640, i8* %103, align 1, !tbaa !2451
  %641 = add i64 %880, 19
  store i64 %641, i64* %PC, align 8
  %642 = load i32, i32* %847, align 4
  %643 = sext i32 %642 to i64
  store i64 %643, i64* %RCX, align 8, !tbaa !2428
  %644 = shl nsw i64 %643, 3
  %645 = add i64 %644, %616
  %646 = add i64 %880, 24
  store i64 %646, i64* %PC, align 8
  %647 = inttoptr i64 %645 to double*
  %648 = load double, double* %647, align 8
  store double %648, double* %112, align 1, !tbaa !2452
  store double 0.000000e+00, double* %113, align 1, !tbaa !2452
  %649 = add i64 %844, 24
  %650 = add i64 %880, 28
  store i64 %650, i64* %PC, align 8
  %651 = inttoptr i64 %649 to i64*
  %652 = load i64, i64* %651, align 8
  store i64 %652, i64* %RAX, align 8, !tbaa !2428
  %653 = add i64 %880, 32
  store i64 %653, i64* %PC, align 8
  %654 = load i32, i32* %847, align 4
  %655 = sext i32 %654 to i64
  %656 = shl nsw i64 %655, 13
  store i64 %656, i64* %RCX, align 8, !tbaa !2428
  %657 = lshr i64 %655, 50
  %658 = and i64 %657, 1
  %659 = add i64 %656, %652
  store i64 %659, i64* %RAX, align 8, !tbaa !2428
  %660 = icmp ult i64 %659, %652
  %661 = icmp ult i64 %659, %656
  %662 = or i1 %660, %661
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %98, align 1, !tbaa !2434
  %664 = trunc i64 %659 to i32
  %665 = and i32 %664, 255
  %666 = tail call i32 @llvm.ctpop.i32(i32 %665) #8
  %667 = trunc i32 %666 to i8
  %668 = and i8 %667, 1
  %669 = xor i8 %668, 1
  store i8 %669, i8* %99, align 1, !tbaa !2447
  %670 = xor i64 %652, %659
  %671 = lshr i64 %670, 4
  %672 = trunc i64 %671 to i8
  %673 = and i8 %672, 1
  store i8 %673, i8* %100, align 1, !tbaa !2448
  %674 = icmp eq i64 %659, 0
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %101, align 1, !tbaa !2449
  %676 = lshr i64 %659, 63
  %677 = trunc i64 %676 to i8
  store i8 %677, i8* %102, align 1, !tbaa !2450
  %678 = lshr i64 %652, 63
  %679 = xor i64 %676, %678
  %680 = xor i64 %676, %658
  %681 = add nuw nsw i64 %679, %680
  %682 = icmp eq i64 %681, 2
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %103, align 1, !tbaa !2451
  %684 = load i64, i64* %RBP, align 8
  %685 = add i64 %684, -56
  %686 = add i64 %880, 43
  store i64 %686, i64* %PC, align 8
  %687 = inttoptr i64 %685 to i32*
  %688 = load i32, i32* %687, align 4
  %689 = sext i32 %688 to i64
  store i64 %689, i64* %RCX, align 8, !tbaa !2428
  %690 = shl nsw i64 %689, 3
  %691 = add i64 %690, %659
  %692 = add i64 %880, 48
  store i64 %692, i64* %PC, align 8
  %693 = inttoptr i64 %691 to double*
  %694 = load double, double* %693, align 8
  %695 = fmul double %648, %694
  store double %695, double* %112, align 1, !tbaa !2452
  store i64 0, i64* %105, align 1, !tbaa !2452
  %696 = add i64 %684, 32
  %697 = add i64 %880, 52
  store i64 %697, i64* %PC, align 8
  %698 = inttoptr i64 %696 to i64*
  %699 = load i64, i64* %698, align 8
  store i64 %699, i64* %RAX, align 8, !tbaa !2428
  %700 = add i64 %684, -52
  %701 = add i64 %880, 56
  store i64 %701, i64* %PC, align 8
  %702 = inttoptr i64 %700 to i32*
  %703 = load i32, i32* %702, align 4
  %704 = sext i32 %703 to i64
  %705 = shl nsw i64 %704, 13
  store i64 %705, i64* %RCX, align 8, !tbaa !2428
  %706 = lshr i64 %704, 50
  %707 = and i64 %706, 1
  %708 = add i64 %705, %699
  store i64 %708, i64* %RAX, align 8, !tbaa !2428
  %709 = icmp ult i64 %708, %699
  %710 = icmp ult i64 %708, %705
  %711 = or i1 %709, %710
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %98, align 1, !tbaa !2434
  %713 = trunc i64 %708 to i32
  %714 = and i32 %713, 255
  %715 = tail call i32 @llvm.ctpop.i32(i32 %714) #8
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  %718 = xor i8 %717, 1
  store i8 %718, i8* %99, align 1, !tbaa !2447
  %719 = xor i64 %699, %708
  %720 = lshr i64 %719, 4
  %721 = trunc i64 %720 to i8
  %722 = and i8 %721, 1
  store i8 %722, i8* %100, align 1, !tbaa !2448
  %723 = icmp eq i64 %708, 0
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %101, align 1, !tbaa !2449
  %725 = lshr i64 %708, 63
  %726 = trunc i64 %725 to i8
  store i8 %726, i8* %102, align 1, !tbaa !2450
  %727 = lshr i64 %699, 63
  %728 = xor i64 %725, %727
  %729 = xor i64 %725, %707
  %730 = add nuw nsw i64 %728, %729
  %731 = icmp eq i64 %730, 2
  %732 = zext i1 %731 to i8
  store i8 %732, i8* %103, align 1, !tbaa !2451
  %733 = add i64 %880, 67
  store i64 %733, i64* %PC, align 8
  %734 = load i32, i32* %687, align 4
  %735 = sext i32 %734 to i64
  store i64 %735, i64* %RCX, align 8, !tbaa !2428
  %736 = shl nsw i64 %735, 3
  %737 = add i64 %736, %708
  %738 = add i64 %880, 72
  store i64 %738, i64* %PC, align 8
  %739 = inttoptr i64 %737 to double*
  %740 = load double, double* %739, align 8
  %741 = fadd double %695, %740
  store double %741, double* %112, align 1, !tbaa !2452
  store i64 0, i64* %105, align 1, !tbaa !2452
  %742 = add i64 %880, 77
  store i64 %742, i64* %PC, align 8
  store double %741, double* %739, align 8
  %743 = load i64, i64* %RBP, align 8
  %744 = add i64 %743, -60
  %745 = load i64, i64* %PC, align 8
  %746 = add i64 %745, 3
  store i64 %746, i64* %PC, align 8
  %747 = inttoptr i64 %744 to i32*
  %748 = load i32, i32* %747, align 4
  %749 = add i32 %748, 1
  %750 = zext i32 %749 to i64
  store i64 %750, i64* %RAX, align 8, !tbaa !2428
  %751 = icmp eq i32 %748, -1
  %752 = icmp eq i32 %749, 0
  %753 = or i1 %751, %752
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %98, align 1, !tbaa !2434
  %755 = and i32 %749, 255
  %756 = tail call i32 @llvm.ctpop.i32(i32 %755) #8
  %757 = trunc i32 %756 to i8
  %758 = and i8 %757, 1
  %759 = xor i8 %758, 1
  store i8 %759, i8* %99, align 1, !tbaa !2447
  %760 = xor i32 %748, %749
  %761 = lshr i32 %760, 4
  %762 = trunc i32 %761 to i8
  %763 = and i8 %762, 1
  store i8 %763, i8* %100, align 1, !tbaa !2448
  %764 = zext i1 %752 to i8
  store i8 %764, i8* %101, align 1, !tbaa !2449
  %765 = lshr i32 %749, 31
  %766 = trunc i32 %765 to i8
  store i8 %766, i8* %102, align 1, !tbaa !2450
  %767 = lshr i32 %748, 31
  %768 = xor i32 %765, %767
  %769 = add nuw nsw i32 %768, %765
  %770 = icmp eq i32 %769, 2
  %771 = zext i1 %770 to i8
  store i8 %771, i8* %103, align 1, !tbaa !2451
  %772 = add i64 %745, 9
  store i64 %772, i64* %PC, align 8
  store i32 %749, i32* %747, align 4
  %773 = load i64, i64* %PC, align 8
  %774 = add i64 %773, -98
  store i64 %774, i64* %PC, align 8, !tbaa !2428
  br label %block_401103

block_40108e:                                     ; preds = %block_401022
  %775 = add i64 %522, -56
  %776 = add i64 %558, 8
  store i64 %776, i64* %PC, align 8
  %777 = inttoptr i64 %775 to i32*
  %778 = load i32, i32* %777, align 4
  %779 = add i32 %778, 1
  %780 = zext i32 %779 to i64
  store i64 %780, i64* %RAX, align 8, !tbaa !2428
  %781 = icmp eq i32 %778, -1
  %782 = icmp eq i32 %779, 0
  %783 = or i1 %781, %782
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %98, align 1, !tbaa !2434
  %785 = and i32 %779, 255
  %786 = tail call i32 @llvm.ctpop.i32(i32 %785) #8
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  %789 = xor i8 %788, 1
  store i8 %789, i8* %99, align 1, !tbaa !2447
  %790 = xor i32 %778, %779
  %791 = lshr i32 %790, 4
  %792 = trunc i32 %791 to i8
  %793 = and i8 %792, 1
  store i8 %793, i8* %100, align 1, !tbaa !2448
  %794 = zext i1 %782 to i8
  store i8 %794, i8* %101, align 1, !tbaa !2449
  %795 = lshr i32 %779, 31
  %796 = trunc i32 %795 to i8
  store i8 %796, i8* %102, align 1, !tbaa !2450
  %797 = lshr i32 %778, 31
  %798 = xor i32 %795, %797
  %799 = add nuw nsw i32 %798, %795
  %800 = icmp eq i32 %799, 2
  %801 = zext i1 %800 to i8
  store i8 %801, i8* %103, align 1, !tbaa !2451
  %802 = add i64 %558, 14
  store i64 %802, i64* %PC, align 8
  store i32 %779, i32* %777, align 4
  %803 = load i64, i64* %PC, align 8
  %804 = add i64 %803, -168
  store i64 %804, i64* %PC, align 8, !tbaa !2428
  br label %block_400ff4

block_400fe1:                                     ; preds = %block_4010a1, %block_400fa0
  %805 = phi i64 [ %588, %block_4010a1 ], [ %.pre, %block_400fa0 ]
  %806 = load i64, i64* %RBP, align 8
  %807 = add i64 %806, -52
  %808 = add i64 %805, 3
  store i64 %808, i64* %PC, align 8
  %809 = inttoptr i64 %807 to i32*
  %810 = load i32, i32* %809, align 4
  %811 = zext i32 %810 to i64
  store i64 %811, i64* %RAX, align 8, !tbaa !2428
  %812 = add i64 %806, -4
  %813 = add i64 %805, 6
  store i64 %813, i64* %PC, align 8
  %814 = inttoptr i64 %812 to i32*
  %815 = load i32, i32* %814, align 4
  %816 = sub i32 %810, %815
  %817 = icmp ult i32 %810, %815
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %98, align 1, !tbaa !2434
  %819 = and i32 %816, 255
  %820 = tail call i32 @llvm.ctpop.i32(i32 %819) #8
  %821 = trunc i32 %820 to i8
  %822 = and i8 %821, 1
  %823 = xor i8 %822, 1
  store i8 %823, i8* %99, align 1, !tbaa !2447
  %824 = xor i32 %815, %810
  %825 = xor i32 %824, %816
  %826 = lshr i32 %825, 4
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  store i8 %828, i8* %100, align 1, !tbaa !2448
  %829 = icmp eq i32 %816, 0
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %101, align 1, !tbaa !2449
  %831 = lshr i32 %816, 31
  %832 = trunc i32 %831 to i8
  store i8 %832, i8* %102, align 1, !tbaa !2450
  %833 = lshr i32 %810, 31
  %834 = lshr i32 %815, 31
  %835 = xor i32 %834, %833
  %836 = xor i32 %831, %833
  %837 = add nuw nsw i32 %836, %835
  %838 = icmp eq i32 %837, 2
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %103, align 1, !tbaa !2451
  %840 = icmp ne i8 %832, 0
  %841 = xor i1 %840, %838
  %.v = select i1 %841, i64 12, i64 211
  %842 = add i64 %805, %.v
  store i64 %842, i64* %PC, align 8, !tbaa !2428
  br i1 %841, label %block_400fed, label %block_4010b4

block_401103:                                     ; preds = %block_40110f, %block_4010da
  %843 = phi i64 [ %774, %block_40110f ], [ %.pre5, %block_4010da ]
  %844 = load i64, i64* %RBP, align 8
  %845 = add i64 %844, -60
  %846 = add i64 %843, 3
  store i64 %846, i64* %PC, align 8
  %847 = inttoptr i64 %845 to i32*
  %848 = load i32, i32* %847, align 4
  %849 = zext i32 %848 to i64
  store i64 %849, i64* %RAX, align 8, !tbaa !2428
  %850 = add i64 %844, -8
  %851 = add i64 %843, 6
  store i64 %851, i64* %PC, align 8
  %852 = inttoptr i64 %850 to i32*
  %853 = load i32, i32* %852, align 4
  %854 = sub i32 %848, %853
  %855 = icmp ult i32 %848, %853
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %98, align 1, !tbaa !2434
  %857 = and i32 %854, 255
  %858 = tail call i32 @llvm.ctpop.i32(i32 %857) #8
  %859 = trunc i32 %858 to i8
  %860 = and i8 %859, 1
  %861 = xor i8 %860, 1
  store i8 %861, i8* %99, align 1, !tbaa !2447
  %862 = xor i32 %853, %848
  %863 = xor i32 %862, %854
  %864 = lshr i32 %863, 4
  %865 = trunc i32 %864 to i8
  %866 = and i8 %865, 1
  store i8 %866, i8* %100, align 1, !tbaa !2448
  %867 = icmp eq i32 %854, 0
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %101, align 1, !tbaa !2449
  %869 = lshr i32 %854, 31
  %870 = trunc i32 %869 to i8
  store i8 %870, i8* %102, align 1, !tbaa !2450
  %871 = lshr i32 %848, 31
  %872 = lshr i32 %853, 31
  %873 = xor i32 %872, %871
  %874 = xor i32 %869, %871
  %875 = add nuw nsw i32 %874, %873
  %876 = icmp eq i32 %875, 2
  %877 = zext i1 %876 to i8
  store i8 %877, i8* %103, align 1, !tbaa !2451
  %878 = icmp ne i8 %870, 0
  %879 = xor i1 %878, %876
  %.v10 = select i1 %879, i64 12, i64 103
  %880 = add i64 %843, %.v10
  store i64 %880, i64* %PC, align 8, !tbaa !2428
  br i1 %879, label %block_40110f, label %block_40116a

block_401000:                                     ; preds = %block_400ff4
  store i32 0, i32* %106, align 1, !tbaa !2432
  store i32 0, i32* %108, align 1, !tbaa !2432
  store i32 0, i32* %109, align 1, !tbaa !2432
  store i32 0, i32* %111, align 1, !tbaa !2432
  %881 = add i64 %308, -40
  %882 = add i64 %344, 7
  store i64 %882, i64* %PC, align 8
  %883 = inttoptr i64 %881 to i64*
  %884 = load i64, i64* %883, align 8
  store i64 %884, i64* %RAX, align 8, !tbaa !2428
  %885 = add i64 %308, -52
  %886 = add i64 %344, 11
  store i64 %886, i64* %PC, align 8
  %887 = inttoptr i64 %885 to i32*
  %888 = load i32, i32* %887, align 4
  %889 = sext i32 %888 to i64
  %890 = shl nsw i64 %889, 13
  store i64 %890, i64* %RCX, align 8, !tbaa !2428
  %891 = lshr i64 %889, 50
  %892 = and i64 %891, 1
  %893 = add i64 %890, %884
  store i64 %893, i64* %RAX, align 8, !tbaa !2428
  %894 = icmp ult i64 %893, %884
  %895 = icmp ult i64 %893, %890
  %896 = or i1 %894, %895
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %98, align 1, !tbaa !2434
  %898 = trunc i64 %893 to i32
  %899 = and i32 %898, 255
  %900 = tail call i32 @llvm.ctpop.i32(i32 %899) #8
  %901 = trunc i32 %900 to i8
  %902 = and i8 %901, 1
  %903 = xor i8 %902, 1
  store i8 %903, i8* %99, align 1, !tbaa !2447
  %904 = xor i64 %884, %893
  %905 = lshr i64 %904, 4
  %906 = trunc i64 %905 to i8
  %907 = and i8 %906, 1
  store i8 %907, i8* %100, align 1, !tbaa !2448
  %908 = icmp eq i64 %893, 0
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %101, align 1, !tbaa !2449
  %910 = lshr i64 %893, 63
  %911 = trunc i64 %910 to i8
  store i8 %911, i8* %102, align 1, !tbaa !2450
  %912 = lshr i64 %884, 63
  %913 = xor i64 %910, %912
  %914 = xor i64 %910, %892
  %915 = add nuw nsw i64 %913, %914
  %916 = icmp eq i64 %915, 2
  %917 = zext i1 %916 to i8
  store i8 %917, i8* %103, align 1, !tbaa !2451
  %918 = add i64 %344, 22
  store i64 %918, i64* %PC, align 8
  %919 = load i32, i32* %311, align 4
  %920 = sext i32 %919 to i64
  store i64 %920, i64* %RCX, align 8, !tbaa !2428
  %921 = shl nsw i64 %920, 3
  %922 = add i64 %921, %893
  %923 = add i64 %344, 27
  store i64 %923, i64* %PC, align 8
  %924 = load i64, i64* %53, align 1
  %925 = inttoptr i64 %922 to i64*
  store i64 %924, i64* %925, align 8
  %926 = load i64, i64* %RBP, align 8
  %927 = add i64 %926, -60
  %928 = load i64, i64* %PC, align 8
  %929 = add i64 %928, 7
  store i64 %929, i64* %PC, align 8
  %930 = inttoptr i64 %927 to i32*
  store i32 0, i32* %930, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_401022
}

; Function Attrs: noinline
define %struct.Memory* @sub_400640__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400640:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  store i64 0, i64* %RBP, align 8, !tbaa !2428
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3, align 1, !tbaa !2434
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %4, align 1, !tbaa !2447
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %5, align 1, !tbaa !2449
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6, align 1, !tbaa !2450
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7, align 1, !tbaa !2451
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8, align 1, !tbaa !2448
  %9 = load i64, i64* %RDX, align 8
  store i64 %9, i64* %R9, align 8, !tbaa !2428
  %10 = add i64 %1, 6
  store i64 %10, i64* %PC, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !2428
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %RSI, align 8, !tbaa !2428
  store i64 %13, i64* %RDX, align 8, !tbaa !2428
  %16 = and i64 %13, -16
  store i8 0, i8* %3, align 1, !tbaa !2434
  %17 = trunc i64 %13 to i32
  %18 = and i32 %17, 240
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #8
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  store i8 %22, i8* %4, align 1, !tbaa !2447
  %23 = icmp eq i64 %16, 0
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %5, align 1, !tbaa !2449
  %25 = lshr i64 %13, 63
  %26 = trunc i64 %25 to i8
  store i8 %26, i8* %6, align 1, !tbaa !2450
  store i8 0, i8* %7, align 1, !tbaa !2451
  store i8 0, i8* %8, align 1, !tbaa !2448
  %27 = load i64, i64* %RAX, align 8
  %28 = add i64 %1, 14
  store i64 %28, i64* %PC, align 8
  %29 = add i64 %16, -8
  %30 = inttoptr i64 %29 to i64*
  store i64 %27, i64* %30, align 8
  %31 = load i64, i64* %PC, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %PC, align 8
  %33 = add i64 %16, -16
  %34 = inttoptr i64 %33 to i64*
  store i64 %29, i64* %34, align 16
  %35 = load i64, i64* %PC, align 8
  store i64 ptrtoint (void ()* @callback_sub_4015c0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_401550___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %36 = add i64 %35, 27
  %37 = add i64 %16, -24
  %38 = inttoptr i64 %37 to i64*
  store i64 %36, i64* %38, align 8
  store i64 %37, i64* %11, align 8, !tbaa !2428
  %39 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %39, i64* %PC, align 8, !tbaa !2428
  %40 = tail call fastcc %struct.Memory* @ext_6020d8___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %41 = load i64, i64* %PC, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %PC, align 8
  %43 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %42, %struct.Memory* %40)
  ret %struct.Memory* %43
}

; Function Attrs: noinline
define %struct.Memory* @sub_4011a0_check_FP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4011a0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %5 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %8 = load i64, i64* %RBP, align 8
  %9 = add i64 %1, 1
  store i64 %9, i64* %PC, align 8
  %10 = load i64, i64* %RSP, align 8, !tbaa !2428
  %11 = add i64 %10, -8
  %12 = inttoptr i64 %11 to i64*
  store i64 %8, i64* %12, align 8
  %13 = load i64, i64* %PC, align 8
  store i64 %11, i64* %RBP, align 8, !tbaa !2428
  %14 = add i64 %10, -88
  store i64 %14, i64* %RSP, align 8, !tbaa !2428
  %15 = icmp ult i64 %11, 80
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1, !tbaa !2434
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19) #8
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1, !tbaa !2447
  %25 = xor i64 %11, 16
  %26 = xor i64 %25, %14
  %27 = lshr i64 %26, 4
  %28 = trunc i64 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1, !tbaa !2448
  %31 = icmp eq i64 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1, !tbaa !2449
  %34 = lshr i64 %14, 63
  %35 = trunc i64 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1, !tbaa !2450
  %37 = lshr i64 %11, 63
  %38 = xor i64 %34, %37
  %39 = add nuw nsw i64 %38, %37
  %40 = icmp eq i64 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1, !tbaa !2451
  %43 = bitcast [32 x %union.VectorReg]* %6 to i8*
  %44 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015d0__rodata_type* @seg_4015d0__rodata to i64), i64 24) to i64*), align 8
  %45 = bitcast [32 x %union.VectorReg]* %6 to double*
  %46 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %44, i64* %46, align 1, !tbaa !2452
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %48 = bitcast i64* %47 to double*
  store double 0.000000e+00, double* %48, align 1, !tbaa !2452
  %49 = add i64 %10, -16
  %50 = load i32, i32* %EDI, align 4
  %51 = add i64 %13, 18
  store i64 %51, i64* %PC, align 8
  %52 = inttoptr i64 %49 to i32*
  store i32 %50, i32* %52, align 4
  %53 = load i64, i64* %RBP, align 8
  %54 = add i64 %53, -12
  %55 = load i32, i32* %ESI, align 4
  %56 = load i64, i64* %PC, align 8
  %57 = add i64 %56, 3
  store i64 %57, i64* %PC, align 8
  %58 = inttoptr i64 %54 to i32*
  store i32 %55, i32* %58, align 4
  %59 = load i64, i64* %RBP, align 8
  %60 = add i64 %59, -24
  %61 = load i64, i64* %RDX, align 8
  %62 = load i64, i64* %PC, align 8
  %63 = add i64 %62, 4
  store i64 %63, i64* %PC, align 8
  %64 = inttoptr i64 %60 to i64*
  store i64 %61, i64* %64, align 8
  %65 = load i64, i64* %RBP, align 8
  %66 = add i64 %65, -32
  %67 = load i64, i64* %RCX, align 8
  %68 = load i64, i64* %PC, align 8
  %69 = add i64 %68, 4
  store i64 %69, i64* %PC, align 8
  %70 = inttoptr i64 %66 to i64*
  store i64 %67, i64* %70, align 8
  %71 = load i64, i64* %RBP, align 8
  %72 = add i64 %71, -48
  %73 = load i64, i64* %PC, align 8
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC, align 8
  %75 = load i64, i64* %46, align 1
  %76 = inttoptr i64 %72 to i64*
  store i64 %75, i64* %76, align 8
  %77 = load i64, i64* %RBP, align 8
  %78 = add i64 %77, -36
  %79 = load i64, i64* %PC, align 8
  %80 = add i64 %79, 7
  store i64 %80, i64* %PC, align 8
  %81 = inttoptr i64 %78 to i32*
  store i32 0, i32* %81, align 4
  %82 = bitcast %union.VectorReg* %7 to i8*
  %83 = getelementptr inbounds i8, i8* %82, i64 4
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %85 = getelementptr inbounds i8, i8* %82, i64 12
  %86 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  %87 = bitcast [32 x %union.VectorReg]* %6 to i32*
  %88 = getelementptr inbounds i8, i8* %43, i64 4
  %89 = bitcast i8* %88 to i32*
  %90 = bitcast i64* %47 to i32*
  %91 = getelementptr inbounds i8, i8* %43, i64 12
  %92 = bitcast i8* %91 to i32*
  %.pre = load i64, i64* %PC, align 8
  br label %block_4011ca

block_4011ca:                                     ; preds = %block_4012a5, %block_4011a0
  %93 = phi i64 [ %.pre, %block_4011a0 ], [ %497, %block_4012a5 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4011a0 ], [ %MEMORY.1, %block_4012a5 ]
  %94 = load i64, i64* %RBP, align 8
  %95 = add i64 %94, -36
  %96 = add i64 %93, 3
  store i64 %96, i64* %PC, align 8
  %97 = inttoptr i64 %95 to i32*
  %98 = load i32, i32* %97, align 4
  %99 = zext i32 %98 to i64
  store i64 %99, i64* %RAX, align 8, !tbaa !2428
  %100 = add i64 %94, -8
  %101 = add i64 %93, 6
  store i64 %101, i64* %PC, align 8
  %102 = inttoptr i64 %100 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = sub i32 %98, %103
  %105 = icmp ult i32 %98, %103
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %17, align 1, !tbaa !2434
  %107 = and i32 %104, 255
  %108 = tail call i32 @llvm.ctpop.i32(i32 %107) #8
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = xor i8 %110, 1
  store i8 %111, i8* %24, align 1, !tbaa !2447
  %112 = xor i32 %103, %98
  %113 = xor i32 %112, %104
  %114 = lshr i32 %113, 4
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  store i8 %116, i8* %30, align 1, !tbaa !2448
  %117 = icmp eq i32 %104, 0
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %33, align 1, !tbaa !2449
  %119 = lshr i32 %104, 31
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %36, align 1, !tbaa !2450
  %121 = lshr i32 %98, 31
  %122 = lshr i32 %103, 31
  %123 = xor i32 %122, %121
  %124 = xor i32 %119, %121
  %125 = add nuw nsw i32 %124, %123
  %126 = icmp eq i32 %125, 2
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %42, align 1, !tbaa !2451
  %128 = icmp ne i8 %120, 0
  %129 = xor i1 %128, %126
  %.v = select i1 %129, i64 12, i64 238
  %130 = add i64 %93, %.v
  store i64 %130, i64* %PC, align 8, !tbaa !2428
  br i1 %129, label %block_4011d6, label %block_4012b8

block_4012b8:                                     ; preds = %block_4011ca
  %131 = add i64 %94, -4
  %132 = add i64 %130, 7
  store i64 %132, i64* %PC, align 8
  %133 = inttoptr i64 %131 to i32*
  store i32 1, i32* %133, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_4012bf

block_4011d6:                                     ; preds = %block_4011ca
  %134 = add i64 %94, -40
  %135 = add i64 %130, 7
  store i64 %135, i64* %PC, align 8
  %136 = inttoptr i64 %134 to i32*
  store i32 0, i32* %136, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_4011dd

block_4011dd:                                     ; preds = %block_401292, %block_4011d6
  %137 = phi i64 [ %.pre6, %block_4011d6 ], [ %260, %block_401292 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_4011d6 ], [ %423, %block_401292 ]
  %138 = load i64, i64* %RBP, align 8
  %139 = add i64 %138, -40
  %140 = add i64 %137, 3
  store i64 %140, i64* %PC, align 8
  %141 = inttoptr i64 %139 to i32*
  %142 = load i32, i32* %141, align 4
  %143 = zext i32 %142 to i64
  store i64 %143, i64* %RAX, align 8, !tbaa !2428
  %144 = add i64 %138, -12
  %145 = add i64 %137, 6
  store i64 %145, i64* %PC, align 8
  %146 = inttoptr i64 %144 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = sub i32 %142, %147
  %149 = icmp ult i32 %142, %147
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %17, align 1, !tbaa !2434
  %151 = and i32 %148, 255
  %152 = tail call i32 @llvm.ctpop.i32(i32 %151) #8
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  %155 = xor i8 %154, 1
  store i8 %155, i8* %24, align 1, !tbaa !2447
  %156 = xor i32 %147, %142
  %157 = xor i32 %156, %148
  %158 = lshr i32 %157, 4
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  store i8 %160, i8* %30, align 1, !tbaa !2448
  %161 = icmp eq i32 %148, 0
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %33, align 1, !tbaa !2449
  %163 = lshr i32 %148, 31
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %36, align 1, !tbaa !2450
  %165 = lshr i32 %142, 31
  %166 = lshr i32 %147, 31
  %167 = xor i32 %166, %165
  %168 = xor i32 %163, %165
  %169 = add nuw nsw i32 %168, %167
  %170 = icmp eq i32 %169, 2
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %42, align 1, !tbaa !2451
  %172 = icmp ne i8 %164, 0
  %173 = xor i1 %172, %170
  %.v9 = select i1 %173, i64 12, i64 200
  %174 = add i64 %137, %.v9
  store i64 %174, i64* %PC, align 8, !tbaa !2428
  br i1 %173, label %block_4011e9, label %block_4012a5

block_40124d:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  store i64 add (i64 ptrtoint (%seg_4015d0__rodata_type* @seg_4015d0__rodata to i64), i64 106), i64* %RSI, align 8, !tbaa !2428
  %175 = load i64, i64* @stderr, align 128
  store i64 %175, i64* %RDI, align 8, !tbaa !2428
  %176 = load i64, i64* %RBP, align 8
  %177 = add i64 %176, -36
  %178 = add i64 %428, 21
  store i64 %178, i64* %PC, align 8
  %179 = inttoptr i64 %177 to i32*
  %180 = load i32, i32* %179, align 4
  %181 = zext i32 %180 to i64
  store i64 %181, i64* %RDX, align 8, !tbaa !2428
  %182 = add i64 %176, -40
  %183 = add i64 %428, 24
  store i64 %183, i64* %PC, align 8
  %184 = inttoptr i64 %182 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = zext i32 %185 to i64
  store i64 %186, i64* %RCX, align 8, !tbaa !2428
  %187 = add i64 %176, -56
  %188 = add i64 %428, 29
  store i64 %188, i64* %PC, align 8
  %189 = inttoptr i64 %187 to i64*
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %46, align 1, !tbaa !2452
  store double 0.000000e+00, double* %48, align 1, !tbaa !2452
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %192 = add i64 %428, 33
  store i64 %192, i64* %PC, align 8
  %193 = load i32, i32* %179, align 4
  %194 = zext i32 %193 to i64
  store i64 %194, i64* %191, align 8, !tbaa !2428
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %196 = add i64 %428, 37
  store i64 %196, i64* %PC, align 8
  %197 = load i32, i32* %184, align 4
  %198 = zext i32 %197 to i64
  store i64 %198, i64* %195, align 8, !tbaa !2428
  %199 = add i64 %176, -64
  %200 = add i64 %428, 42
  store i64 %200, i64* %PC, align 8
  %201 = inttoptr i64 %199 to i64*
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %86, align 1, !tbaa !2452
  %203 = bitcast i64* %84 to double*
  store double 0.000000e+00, double* %203, align 1, !tbaa !2452
  %204 = add i64 %176, -48
  %205 = add i64 %428, 47
  store i64 %205, i64* %PC, align 8
  %206 = inttoptr i64 %204 to i64*
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %207, i64* %208, align 1, !tbaa !2452
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %210 = bitcast i64* %209 to double*
  store double 0.000000e+00, double* %210, align 1, !tbaa !2452
  store i8 3, i8* %AL, align 1, !tbaa !2454
  %211 = add i64 %428, -3149
  %212 = add i64 %428, 54
  %213 = load i64, i64* %RSP, align 8, !tbaa !2428
  %214 = add i64 %213, -8
  %215 = inttoptr i64 %214 to i64*
  store i64 %212, i64* %215, align 8
  store i64 %214, i64* %RSP, align 8, !tbaa !2428
  store i64 %211, i64* %PC, align 8, !tbaa !2428
  %216 = tail call fastcc %struct.Memory* @ext_6020e8_fprintf(%struct.State* nonnull %0, %struct.Memory* %423)
  %217 = load i64, i64* %RBP, align 8
  %218 = add i64 %217, -4
  %219 = load i64, i64* %PC, align 8
  %220 = add i64 %219, 7
  store i64 %220, i64* %PC, align 8
  %221 = inttoptr i64 %218 to i32*
  store i32 0, i32* %221, align 4
  %222 = load i64, i64* %RBP, align 8
  %223 = add i64 %222, -76
  %224 = load i32, i32* %EAX, align 4
  %225 = load i64, i64* %PC, align 8
  %226 = add i64 %225, 3
  store i64 %226, i64* %PC, align 8
  %227 = inttoptr i64 %223 to i32*
  store i32 %224, i32* %227, align 4
  %228 = load i64, i64* %PC, align 8
  %229 = add i64 %228, 50
  store i64 %229, i64* %PC, align 8, !tbaa !2428
  br label %block_4012bf

block_401292:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %230 = load i64, i64* %RBP, align 8
  %231 = add i64 %230, -40
  %232 = add i64 %428, 8
  store i64 %232, i64* %PC, align 8
  %233 = inttoptr i64 %231 to i32*
  %234 = load i32, i32* %233, align 4
  %235 = add i32 %234, 1
  %236 = zext i32 %235 to i64
  store i64 %236, i64* %RAX, align 8, !tbaa !2428
  %237 = icmp eq i32 %234, -1
  %238 = icmp eq i32 %235, 0
  %239 = or i1 %237, %238
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %17, align 1, !tbaa !2434
  %241 = and i32 %235, 255
  %242 = tail call i32 @llvm.ctpop.i32(i32 %241) #8
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  %245 = xor i8 %244, 1
  store i8 %245, i8* %24, align 1, !tbaa !2447
  %246 = xor i32 %234, %235
  %247 = lshr i32 %246, 4
  %248 = trunc i32 %247 to i8
  %249 = and i8 %248, 1
  store i8 %249, i8* %30, align 1, !tbaa !2448
  %250 = zext i1 %238 to i8
  store i8 %250, i8* %33, align 1, !tbaa !2449
  %251 = lshr i32 %235, 31
  %252 = trunc i32 %251 to i8
  store i8 %252, i8* %36, align 1, !tbaa !2450
  %253 = lshr i32 %234, 31
  %254 = xor i32 %251, %253
  %255 = add nuw nsw i32 %254, %251
  %256 = icmp eq i32 %255, 2
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %42, align 1, !tbaa !2451
  %258 = add i64 %428, 14
  store i64 %258, i64* %PC, align 8
  store i32 %235, i32* %233, align 4
  %259 = load i64, i64* %PC, align 8
  %260 = add i64 %259, -195
  store i64 %260, i64* %PC, align 8, !tbaa !2428
  br label %block_4011dd

block_4011e9:                                     ; preds = %block_4011dd
  %261 = add i64 %138, -24
  %262 = add i64 %174, 4
  store i64 %262, i64* %PC, align 8
  %263 = inttoptr i64 %261 to i64*
  %264 = load i64, i64* %263, align 8
  store i64 %264, i64* %RAX, align 8, !tbaa !2428
  %265 = add i64 %138, -36
  %266 = add i64 %174, 8
  store i64 %266, i64* %PC, align 8
  %267 = inttoptr i64 %265 to i32*
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  %270 = shl nsw i64 %269, 13
  store i64 %270, i64* %RCX, align 8, !tbaa !2428
  %271 = lshr i64 %269, 50
  %272 = and i64 %271, 1
  %273 = add i64 %270, %264
  store i64 %273, i64* %RAX, align 8, !tbaa !2428
  %274 = icmp ult i64 %273, %264
  %275 = icmp ult i64 %273, %270
  %276 = or i1 %274, %275
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %17, align 1, !tbaa !2434
  %278 = trunc i64 %273 to i32
  %279 = and i32 %278, 255
  %280 = tail call i32 @llvm.ctpop.i32(i32 %279) #8
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = xor i8 %282, 1
  store i8 %283, i8* %24, align 1, !tbaa !2447
  %284 = xor i64 %264, %273
  %285 = lshr i64 %284, 4
  %286 = trunc i64 %285 to i8
  %287 = and i8 %286, 1
  store i8 %287, i8* %30, align 1, !tbaa !2448
  %288 = icmp eq i64 %273, 0
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %33, align 1, !tbaa !2449
  %290 = lshr i64 %273, 63
  %291 = trunc i64 %290 to i8
  store i8 %291, i8* %36, align 1, !tbaa !2450
  %292 = lshr i64 %264, 63
  %293 = xor i64 %290, %292
  %294 = xor i64 %290, %272
  %295 = add nuw nsw i64 %293, %294
  %296 = icmp eq i64 %295, 2
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %42, align 1, !tbaa !2451
  %298 = add i64 %174, 19
  store i64 %298, i64* %PC, align 8
  %299 = load i32, i32* %141, align 4
  %300 = sext i32 %299 to i64
  store i64 %300, i64* %RCX, align 8, !tbaa !2428
  %301 = shl nsw i64 %300, 3
  %302 = add i64 %301, %273
  %303 = add i64 %174, 24
  store i64 %303, i64* %PC, align 8
  %304 = inttoptr i64 %302 to i64*
  %305 = load i64, i64* %304, align 8
  store i64 %305, i64* %46, align 1, !tbaa !2452
  store double 0.000000e+00, double* %48, align 1, !tbaa !2452
  %306 = add i64 %138, -56
  %307 = add i64 %174, 29
  store i64 %307, i64* %PC, align 8
  %308 = inttoptr i64 %306 to i64*
  store i64 %305, i64* %308, align 8
  %309 = load i64, i64* %RBP, align 8
  %310 = add i64 %309, -32
  %311 = load i64, i64* %PC, align 8
  %312 = add i64 %311, 4
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %310 to i64*
  %314 = load i64, i64* %313, align 8
  store i64 %314, i64* %RAX, align 8, !tbaa !2428
  %315 = add i64 %309, -36
  %316 = add i64 %311, 8
  store i64 %316, i64* %PC, align 8
  %317 = inttoptr i64 %315 to i32*
  %318 = load i32, i32* %317, align 4
  %319 = sext i32 %318 to i64
  %320 = shl nsw i64 %319, 13
  store i64 %320, i64* %RCX, align 8, !tbaa !2428
  %321 = lshr i64 %319, 50
  %322 = and i64 %321, 1
  %323 = add i64 %320, %314
  store i64 %323, i64* %RAX, align 8, !tbaa !2428
  %324 = icmp ult i64 %323, %314
  %325 = icmp ult i64 %323, %320
  %326 = or i1 %324, %325
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %17, align 1, !tbaa !2434
  %328 = trunc i64 %323 to i32
  %329 = and i32 %328, 255
  %330 = tail call i32 @llvm.ctpop.i32(i32 %329) #8
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  %333 = xor i8 %332, 1
  store i8 %333, i8* %24, align 1, !tbaa !2447
  %334 = xor i64 %314, %323
  %335 = lshr i64 %334, 4
  %336 = trunc i64 %335 to i8
  %337 = and i8 %336, 1
  store i8 %337, i8* %30, align 1, !tbaa !2448
  %338 = icmp eq i64 %323, 0
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %33, align 1, !tbaa !2449
  %340 = lshr i64 %323, 63
  %341 = trunc i64 %340 to i8
  store i8 %341, i8* %36, align 1, !tbaa !2450
  %342 = lshr i64 %314, 63
  %343 = xor i64 %340, %342
  %344 = xor i64 %340, %322
  %345 = add nuw nsw i64 %343, %344
  %346 = icmp eq i64 %345, 2
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %42, align 1, !tbaa !2451
  %348 = add i64 %309, -40
  %349 = add i64 %311, 19
  store i64 %349, i64* %PC, align 8
  %350 = inttoptr i64 %348 to i32*
  %351 = load i32, i32* %350, align 4
  %352 = sext i32 %351 to i64
  store i64 %352, i64* %RCX, align 8, !tbaa !2428
  %353 = shl nsw i64 %352, 3
  %354 = add i64 %353, %323
  %355 = add i64 %311, 24
  store i64 %355, i64* %PC, align 8
  %356 = inttoptr i64 %354 to i64*
  %357 = load i64, i64* %356, align 8
  store i64 %357, i64* %46, align 1, !tbaa !2452
  store double 0.000000e+00, double* %48, align 1, !tbaa !2452
  %358 = add i64 %309, -64
  %359 = add i64 %311, 29
  store i64 %359, i64* %PC, align 8
  %360 = inttoptr i64 %358 to i64*
  store i64 %357, i64* %360, align 8
  %361 = load i64, i64* %RBP, align 8
  %362 = add i64 %361, -56
  %363 = load i64, i64* %PC, align 8
  %364 = add i64 %363, 5
  store i64 %364, i64* %PC, align 8
  %365 = inttoptr i64 %362 to double*
  %366 = load double, double* %365, align 8
  store double %366, double* %45, align 1, !tbaa !2452
  store double 0.000000e+00, double* %48, align 1, !tbaa !2452
  %367 = add i64 %361, -64
  %368 = add i64 %363, 10
  store i64 %368, i64* %PC, align 8
  %369 = inttoptr i64 %367 to double*
  %370 = load double, double* %369, align 8
  %371 = fsub double %366, %370
  %372 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_4015d0__rodata_type* @seg_4015d0__rodata to i64), i64 32) to i32*), align 16
  %373 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_4015d0__rodata_type* @seg_4015d0__rodata to i64), i64 36) to i32*), align 4
  %374 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_4015d0__rodata_type* @seg_4015d0__rodata to i64), i64 40) to i32*), align 8
  %375 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_4015d0__rodata_type* @seg_4015d0__rodata to i64), i64 44) to i32*), align 4
  %376 = bitcast %union.VectorReg* %7 to i32*
  store i32 %372, i32* %376, align 1, !tbaa !2455
  %377 = bitcast i8* %83 to i32*
  store i32 %373, i32* %377, align 1, !tbaa !2455
  %378 = bitcast i64* %84 to i32*
  store i32 %374, i32* %378, align 1, !tbaa !2455
  %379 = bitcast i8* %85 to i32*
  store i32 %375, i32* %379, align 1, !tbaa !2455
  %380 = bitcast double %371 to i64
  %381 = load i64, i64* %86, align 1
  %382 = and i64 %381, %380
  %383 = trunc i64 %382 to i32
  %384 = lshr i64 %382, 32
  %385 = trunc i64 %384 to i32
  store i32 %383, i32* %87, align 1, !tbaa !2432
  store i32 %385, i32* %89, align 1, !tbaa !2432
  store i32 0, i32* %90, align 1, !tbaa !2432
  store i32 0, i32* %92, align 1, !tbaa !2432
  %386 = add i64 %361, -72
  %387 = add i64 %363, 26
  store i64 %387, i64* %PC, align 8
  %388 = load i64, i64* %46, align 1
  %389 = inttoptr i64 %386 to i64*
  store i64 %388, i64* %389, align 8
  %390 = load i64, i64* %RBP, align 8
  %391 = add i64 %390, -72
  %392 = load i64, i64* %PC, align 8
  %393 = add i64 %392, 5
  store i64 %393, i64* %PC, align 8
  %394 = inttoptr i64 %391 to double*
  %395 = load double, double* %394, align 8
  store double %395, double* %45, align 1, !tbaa !2452
  store double 0.000000e+00, double* %48, align 1, !tbaa !2452
  %396 = add i64 %390, -48
  %397 = add i64 %392, 10
  store i64 %397, i64* %PC, align 8
  %398 = inttoptr i64 %396 to double*
  %399 = load double, double* %398, align 8
  %400 = fcmp uno double %395, %399
  br i1 %400, label %401, label %411

; <label>:401:                                    ; preds = %block_4011e9
  %402 = fadd double %395, %399
  %403 = bitcast double %402 to i64
  %404 = and i64 %403, 9221120237041090560
  %405 = icmp eq i64 %404, 9218868437227405312
  %406 = and i64 %403, 2251799813685247
  %407 = icmp ne i64 %406, 0
  %408 = and i1 %405, %407
  br i1 %408, label %409, label %417

; <label>:409:                                    ; preds = %401
  %410 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %397, %struct.Memory* %MEMORY.1) #9
  %.pre7 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:411:                                    ; preds = %block_4011e9
  %412 = fcmp ogt double %395, %399
  br i1 %412, label %417, label %413

; <label>:413:                                    ; preds = %411
  %414 = fcmp olt double %395, %399
  br i1 %414, label %417, label %415

; <label>:415:                                    ; preds = %413
  %416 = fcmp oeq double %395, %399
  br i1 %416, label %417, label %421

; <label>:417:                                    ; preds = %415, %413, %411, %401
  %418 = phi i8 [ 0, %411 ], [ 0, %413 ], [ 1, %415 ], [ 1, %401 ]
  %419 = phi i8 [ 0, %411 ], [ 0, %413 ], [ 0, %415 ], [ 1, %401 ]
  %420 = phi i8 [ 0, %411 ], [ 1, %413 ], [ 0, %415 ], [ 1, %401 ]
  store i8 %418, i8* %33, align 1, !tbaa !2454
  store i8 %419, i8* %24, align 1, !tbaa !2454
  store i8 %420, i8* %17, align 1, !tbaa !2454
  br label %421

; <label>:421:                                    ; preds = %417, %415
  store i8 0, i8* %42, align 1, !tbaa !2454
  store i8 0, i8* %36, align 1, !tbaa !2454
  store i8 0, i8* %30, align 1, !tbaa !2454
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %421, %409
  %422 = phi i64 [ %.pre7, %409 ], [ %397, %421 ]
  %423 = phi %struct.Memory* [ %410, %409 ], [ %MEMORY.1, %421 ]
  %424 = load i8, i8* %17, align 1, !tbaa !2434
  %425 = load i8, i8* %33, align 1, !tbaa !2449
  %426 = or i8 %425, %424
  %427 = icmp ne i8 %426, 0
  %.v10 = select i1 %427, i64 75, i64 6
  %428 = add i64 %422, %.v10
  store i64 %428, i64* %PC, align 8, !tbaa !2428
  br i1 %427, label %block_401292, label %block_40124d

block_4012bf:                                     ; preds = %block_40124d, %block_4012b8
  %429 = phi i64 [ %.pre8, %block_4012b8 ], [ %229, %block_40124d ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_4012b8 ], [ %216, %block_40124d ]
  %430 = load i64, i64* %RBP, align 8
  %431 = add i64 %430, -4
  %432 = add i64 %429, 3
  store i64 %432, i64* %PC, align 8
  %433 = inttoptr i64 %431 to i32*
  %434 = load i32, i32* %433, align 4
  %435 = zext i32 %434 to i64
  store i64 %435, i64* %RAX, align 8, !tbaa !2428
  %436 = load i64, i64* %RSP, align 8
  %437 = add i64 %436, 80
  store i64 %437, i64* %RSP, align 8, !tbaa !2428
  %438 = icmp ugt i64 %436, -81
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %17, align 1, !tbaa !2434
  %440 = trunc i64 %437 to i32
  %441 = and i32 %440, 255
  %442 = tail call i32 @llvm.ctpop.i32(i32 %441) #8
  %443 = trunc i32 %442 to i8
  %444 = and i8 %443, 1
  %445 = xor i8 %444, 1
  store i8 %445, i8* %24, align 1, !tbaa !2447
  %446 = xor i64 %436, 16
  %447 = xor i64 %446, %437
  %448 = lshr i64 %447, 4
  %449 = trunc i64 %448 to i8
  %450 = and i8 %449, 1
  store i8 %450, i8* %30, align 1, !tbaa !2448
  %451 = icmp eq i64 %437, 0
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %33, align 1, !tbaa !2449
  %453 = lshr i64 %437, 63
  %454 = trunc i64 %453 to i8
  store i8 %454, i8* %36, align 1, !tbaa !2450
  %455 = lshr i64 %436, 63
  %456 = xor i64 %453, %455
  %457 = add nuw nsw i64 %456, %453
  %458 = icmp eq i64 %457, 2
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %42, align 1, !tbaa !2451
  %460 = add i64 %429, 8
  store i64 %460, i64* %PC, align 8
  %461 = add i64 %436, 88
  %462 = inttoptr i64 %437 to i64*
  %463 = load i64, i64* %462, align 8
  store i64 %463, i64* %RBP, align 8, !tbaa !2428
  store i64 %461, i64* %RSP, align 8, !tbaa !2428
  %464 = add i64 %429, 9
  store i64 %464, i64* %PC, align 8
  %465 = inttoptr i64 %461 to i64*
  %466 = load i64, i64* %465, align 8
  store i64 %466, i64* %PC, align 8, !tbaa !2428
  %467 = add i64 %436, 96
  store i64 %467, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.2

block_4012a5:                                     ; preds = %block_4011dd
  %468 = add i64 %138, -36
  %469 = add i64 %174, 8
  store i64 %469, i64* %PC, align 8
  %470 = inttoptr i64 %468 to i32*
  %471 = load i32, i32* %470, align 4
  %472 = add i32 %471, 1
  %473 = zext i32 %472 to i64
  store i64 %473, i64* %RAX, align 8, !tbaa !2428
  %474 = icmp eq i32 %471, -1
  %475 = icmp eq i32 %472, 0
  %476 = or i1 %474, %475
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %17, align 1, !tbaa !2434
  %478 = and i32 %472, 255
  %479 = tail call i32 @llvm.ctpop.i32(i32 %478) #8
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  %482 = xor i8 %481, 1
  store i8 %482, i8* %24, align 1, !tbaa !2447
  %483 = xor i32 %471, %472
  %484 = lshr i32 %483, 4
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  store i8 %486, i8* %30, align 1, !tbaa !2448
  %487 = zext i1 %475 to i8
  store i8 %487, i8* %33, align 1, !tbaa !2449
  %488 = lshr i32 %472, 31
  %489 = trunc i32 %488 to i8
  store i8 %489, i8* %36, align 1, !tbaa !2450
  %490 = lshr i32 %471, 31
  %491 = xor i32 %488, %490
  %492 = add nuw nsw i32 %491, %488
  %493 = icmp eq i32 %492, 2
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %42, align 1, !tbaa !2451
  %495 = add i64 %174, 14
  store i64 %495, i64* %PC, align 8
  store i32 %472, i32* %470, align 4
  %496 = load i64, i64* %PC, align 8
  %497 = add i64 %496, -233
  store i64 %497, i64* %PC, align 8, !tbaa !2428
  br label %block_4011ca
}

; Function Attrs: noinline
define %struct.Memory* @sub_4015c4__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4015c4:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, -8
  %5 = icmp ult i64 %3, 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %10 = lshr i64 %4, 63
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %12 = lshr i64 %3, 63
  %13 = xor i64 %10, %12
  %14 = add nuw nsw i64 %13, %12
  %15 = icmp eq i64 %14, 2
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = zext i1 %5 to i8
  store i8 %18, i8* %6, align 1, !tbaa !2434
  %19 = trunc i64 %3 to i32
  %20 = and i32 %19, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20) #8
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  store i8 %24, i8* %7, align 1, !tbaa !2447
  %25 = xor i64 %4, %3
  %26 = lshr i64 %25, 4
  %27 = trunc i64 %26 to i8
  %28 = and i8 %27, 1
  store i8 %28, i8* %8, align 1, !tbaa !2448
  %29 = icmp eq i64 %3, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %9, align 1, !tbaa !2449
  %31 = trunc i64 %12 to i8
  store i8 %31, i8* %11, align 1, !tbaa !2450
  store i8 %16, i8* %17, align 1, !tbaa !2451
  %32 = add i64 %1, 9
  store i64 %32, i64* %PC, align 8
  %33 = inttoptr i64 %3 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  %35 = add i64 %3, 8
  store i64 %35, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007b0_polybench_prepare_instruments(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4007b0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %1, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !2428
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %PC, align 8
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %10 = add i64 %9, -129
  %11 = add i64 %9, 8
  %12 = add i64 %6, -16
  %13 = inttoptr i64 %12 to i64*
  store i64 %11, i64* %13, align 8
  store i64 %12, i64* %5, align 8, !tbaa !2428
  store i64 %10, i64* %PC, align 8, !tbaa !2428
  %14 = tail call %struct.Memory* @sub_400730_polybench_flush_cache_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
  %15 = load i64, i64* %PC, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %PC, align 8
  %17 = load i64, i64* %5, align 8, !tbaa !2428
  %18 = add i64 %17, 8
  %19 = inttoptr i64 %17 to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %RBP, align 8, !tbaa !2428
  store i64 %18, i64* %5, align 8, !tbaa !2428
  %21 = add i64 %15, 2
  store i64 %21, i64* %PC, align 8
  %22 = inttoptr i64 %18 to i64*
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %PC, align 8, !tbaa !2428
  %24 = add i64 %17, 16
  store i64 %24, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %14
}

; Function Attrs: noinline
define %struct.Memory* @sub_400680_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400680:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %1, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !2428
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %3, i64* %8, align 8
  store i64 %7, i64* %5, align 8, !tbaa !2428
  %9 = load i64, i64* %PC, align 8
  store i64 6299752, i64* %RAX, align 8, !tbaa !2428
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1, !tbaa !2434
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %11, align 1, !tbaa !2447
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %12, align 1, !tbaa !2448
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %13, align 1, !tbaa !2449
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %14, align 1, !tbaa !2450
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %15, align 1, !tbaa !2451
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %16 = add i64 %9, 40
  store i64 %16, i64* %PC, align 8
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %RBP, align 8, !tbaa !2428
  store i64 %6, i64* %5, align 8, !tbaa !2428
  %18 = add i64 %9, 41
  store i64 %18, i64* %PC, align 8
  %19 = inttoptr i64 %6 to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %PC, align 8, !tbaa !2428
  %21 = add i64 %6, 8
  store i64 %21, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400590__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400590:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, -8
  store i64 %4, i64* %RSP, align 8, !tbaa !2428
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_601ff0__got_type* @seg_601ff0__got to i64), i64 8) to i64*), align 8
  store i64 %11, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %5, align 1, !tbaa !2434
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #8
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %6, align 1, !tbaa !2447
  %18 = icmp eq i64 %11, 0
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %8, align 1, !tbaa !2449
  %20 = lshr i64 %11, 63
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %9, align 1, !tbaa !2450
  store i8 0, i8* %10, align 1, !tbaa !2451
  store i8 0, i8* %7, align 1, !tbaa !2448
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %1
  store i64 %22, i64* %PC, align 8, !tbaa !2428
  br i1 %18, label %block_400590.block_4005a2_crit_edge, label %block_4005a0

block_400590.block_4005a2_crit_edge:              ; preds = %block_400590
  br label %block_4005a2

block_4005a0:                                     ; preds = %block_400590
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_4005a2

block_4005a2:                                     ; preds = %block_400590.block_4005a2_crit_edge, %block_4005a0
  %.pre-phi = phi i64* [ %RSP, %block_400590.block_4005a2_crit_edge ], [ %RSP, %block_4005a0 ]
  %27 = phi i64 [ %22, %block_400590.block_4005a2_crit_edge ], [ %.pre1, %block_4005a0 ]
  %28 = phi i64 [ %4, %block_400590.block_4005a2_crit_edge ], [ %.pre, %block_4005a0 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400590.block_4005a2_crit_edge ], [ %26, %block_4005a0 ]
  %29 = add i64 %28, 8
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  %30 = icmp ugt i64 %28, -9
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %5, align 1, !tbaa !2434
  %32 = trunc i64 %29 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #8
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %6, align 1, !tbaa !2447
  %38 = xor i64 %28, %29
  %39 = lshr i64 %38, 4
  %40 = trunc i64 %39 to i8
  %41 = and i8 %40, 1
  store i8 %41, i8* %7, align 1, !tbaa !2448
  %42 = icmp eq i64 %29, 0
  %43 = zext i1 %42 to i8
  store i8 %43, i8* %8, align 1, !tbaa !2449
  %44 = lshr i64 %29, 63
  %45 = trunc i64 %44 to i8
  store i8 %45, i8* %9, align 1, !tbaa !2450
  %46 = lshr i64 %28, 63
  %47 = xor i64 %44, %46
  %48 = add nuw nsw i64 %47, %44
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  store i8 %50, i8* %10, align 1, !tbaa !2451
  %51 = add i64 %27, 5
  store i64 %51, i64* %PC, align 8
  %52 = inttoptr i64 %29 to i64*
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %PC, align 8, !tbaa !2428
  %54 = add i64 %28, 16
  store i64 %54, i64* %.pre-phi, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_4012d0_print_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4012d0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %5 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %1, 1
  store i64 %7, i64* %PC, align 8
  %8 = load i64, i64* %RSP, align 8, !tbaa !2428
  %9 = add i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64 %6, i64* %10, align 8
  %11 = load i64, i64* %PC, align 8
  store i64 %9, i64* %RBP, align 8, !tbaa !2428
  %12 = add i64 %8, -56
  store i64 %12, i64* %RSP, align 8, !tbaa !2428
  %13 = icmp ult i64 %9, 48
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1, !tbaa !2434
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #8
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1, !tbaa !2447
  %23 = xor i64 %9, 16
  %24 = xor i64 %23, %12
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1, !tbaa !2448
  %29 = icmp eq i64 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1, !tbaa !2449
  %32 = lshr i64 %12, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1, !tbaa !2450
  %35 = lshr i64 %9, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !2451
  %41 = add i64 %8, -12
  %42 = load i32, i32* %EDI, align 4
  %43 = add i64 %11, 10
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %45 = load i64, i64* %RBP, align 8
  %46 = add i64 %45, -8
  %47 = load i32, i32* %ESI, align 4
  %48 = load i64, i64* %PC, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %51 = load i64, i64* %RBP, align 8
  %52 = add i64 %51, -16
  %53 = load i64, i64* %RDX, align 8
  %54 = load i64, i64* %PC, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %RBP, align 8
  %58 = add i64 %57, -8
  %59 = load i64, i64* %PC, align 8
  %60 = add i64 %59, 3
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %58 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 4
  %64 = lshr i32 %62, 27
  %65 = and i32 %64, 1
  %66 = or i32 %63, 1
  %67 = zext i32 %66 to i64
  store i64 %67, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2434
  %68 = and i32 %66, 241
  %69 = tail call i32 @llvm.ctpop.i32(i32 %68) #8
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  %72 = xor i8 %71, 1
  store i8 %72, i8* %22, align 1, !tbaa !2447
  store i8 0, i8* %28, align 1, !tbaa !2448
  store i8 0, i8* %31, align 1, !tbaa !2449
  %73 = trunc i32 %65 to i8
  store i8 %73, i8* %34, align 1, !tbaa !2450
  store i8 0, i8* %40, align 1, !tbaa !2451
  %74 = sext i32 %66 to i64
  store i64 %74, i64* %RDI, align 8, !tbaa !2428
  %75 = add i64 %59, -3282
  %76 = add i64 %59, 17
  %77 = load i64, i64* %RSP, align 8, !tbaa !2428
  %78 = add i64 %77, -8
  %79 = inttoptr i64 %78 to i64*
  store i64 %76, i64* %79, align 8
  store i64 %78, i64* %RSP, align 8, !tbaa !2428
  store i64 %75, i64* %PC, align 8, !tbaa !2428
  %80 = tail call fastcc %struct.Memory* @ext_6020f0_malloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %81 = load i64, i64* %RBP, align 8
  %82 = add i64 %81, -32
  %83 = load i64, i64* %RAX, align 8
  %84 = load i64, i64* %PC, align 8
  %85 = add i64 %84, 4
  store i64 %85, i64* %PC, align 8
  %86 = inttoptr i64 %82 to i64*
  store i64 %83, i64* %86, align 8
  %87 = load i64, i64* %RBP, align 8
  %88 = add i64 %87, -32
  %89 = load i64, i64* %PC, align 8
  %90 = add i64 %89, 4
  store i64 %90, i64* %PC, align 8
  %91 = inttoptr i64 %88 to i64*
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %RAX, align 8, !tbaa !2428
  %93 = add i64 %87, -8
  %94 = add i64 %89, 7
  store i64 %94, i64* %PC, align 8
  %95 = inttoptr i64 %93 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 4
  %98 = zext i32 %97 to i64
  store i64 %98, i64* %RSI, align 8, !tbaa !2428
  %99 = lshr i32 %96, 28
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  store i8 %101, i8* %15, align 1, !tbaa !2454
  %102 = and i32 %97, 240
  %103 = tail call i32 @llvm.ctpop.i32(i32 %102) #8
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  %106 = xor i8 %105, 1
  store i8 %106, i8* %22, align 1, !tbaa !2454
  store i8 0, i8* %28, align 1, !tbaa !2454
  %107 = icmp eq i32 %97, 0
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %31, align 1, !tbaa !2454
  %109 = lshr i32 %96, 27
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  store i8 %111, i8* %34, align 1, !tbaa !2454
  store i8 0, i8* %40, align 1, !tbaa !2454
  %112 = sext i32 %97 to i64
  store i64 %112, i64* %RDX, align 8, !tbaa !2428
  %113 = add i64 %112, %92
  %114 = add i64 %89, 17
  store i64 %114, i64* %PC, align 8
  %115 = inttoptr i64 %113 to i8*
  store i8 0, i8* %115, align 1
  %116 = load i64, i64* %RBP, align 8
  %117 = add i64 %116, -20
  %118 = load i64, i64* %PC, align 8
  %119 = add i64 %118, 7
  store i64 %119, i64* %PC, align 8
  %120 = inttoptr i64 %117 to i32*
  store i32 0, i32* %120, align 4
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %122 = bitcast i64* %121 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_40130f

block_40131b:                                     ; preds = %block_40130f
  %123 = add i64 %127, -24
  %124 = add i64 %163, 7
  store i64 %124, i64* %PC, align 8
  %125 = inttoptr i64 %123 to i32*
  store i32 0, i32* %125, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_401322

block_40130f:                                     ; preds = %block_401365, %block_4012d0
  %126 = phi i64 [ %.pre, %block_4012d0 ], [ %361, %block_401365 ]
  %MEMORY.0 = phi %struct.Memory* [ %80, %block_4012d0 ], [ %323, %block_401365 ]
  %127 = load i64, i64* %RBP, align 8
  %128 = add i64 %127, -20
  %129 = add i64 %126, 3
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %128 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = zext i32 %131 to i64
  store i64 %132, i64* %RAX, align 8, !tbaa !2428
  %133 = add i64 %127, -4
  %134 = add i64 %126, 6
  store i64 %134, i64* %PC, align 8
  %135 = inttoptr i64 %133 to i32*
  %136 = load i32, i32* %135, align 4
  %137 = sub i32 %131, %136
  %138 = icmp ult i32 %131, %136
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %15, align 1, !tbaa !2434
  %140 = and i32 %137, 255
  %141 = tail call i32 @llvm.ctpop.i32(i32 %140) #8
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  %144 = xor i8 %143, 1
  store i8 %144, i8* %22, align 1, !tbaa !2447
  %145 = xor i32 %136, %131
  %146 = xor i32 %145, %137
  %147 = lshr i32 %146, 4
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  store i8 %149, i8* %28, align 1, !tbaa !2448
  %150 = icmp eq i32 %137, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %31, align 1, !tbaa !2449
  %152 = lshr i32 %137, 31
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %34, align 1, !tbaa !2450
  %154 = lshr i32 %131, 31
  %155 = lshr i32 %136, 31
  %156 = xor i32 %155, %154
  %157 = xor i32 %152, %154
  %158 = add nuw nsw i32 %157, %156
  %159 = icmp eq i32 %158, 2
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %40, align 1, !tbaa !2451
  %161 = icmp ne i8 %153, 0
  %162 = xor i1 %161, %159
  %.v = select i1 %162, i64 12, i64 120
  %163 = add i64 %126, %.v
  store i64 %163, i64* %PC, align 8, !tbaa !2428
  br i1 %162, label %block_40131b, label %block_401387

block_401387:                                     ; preds = %block_40130f
  %164 = add i64 %127, -32
  %165 = add i64 %163, 4
  store i64 %165, i64* %PC, align 8
  %166 = inttoptr i64 %164 to i64*
  %167 = load i64, i64* %166, align 8
  store i64 %167, i64* %RDI, align 8, !tbaa !2428
  %168 = add i64 %163, -3527
  %169 = add i64 %163, 9
  %170 = load i64, i64* %RSP, align 8, !tbaa !2428
  %171 = add i64 %170, -8
  %172 = inttoptr i64 %171 to i64*
  store i64 %169, i64* %172, align 8
  store i64 %171, i64* %RSP, align 8, !tbaa !2428
  store i64 %168, i64* %PC, align 8, !tbaa !2428
  %173 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %174 = load i64, i64* %RSP, align 8
  %175 = load i64, i64* %PC, align 8
  %176 = add i64 %174, 48
  store i64 %176, i64* %RSP, align 8, !tbaa !2428
  %177 = icmp ugt i64 %174, -49
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %15, align 1, !tbaa !2434
  %179 = trunc i64 %176 to i32
  %180 = and i32 %179, 255
  %181 = tail call i32 @llvm.ctpop.i32(i32 %180) #8
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  %184 = xor i8 %183, 1
  store i8 %184, i8* %22, align 1, !tbaa !2447
  %185 = xor i64 %174, 16
  %186 = xor i64 %185, %176
  %187 = lshr i64 %186, 4
  %188 = trunc i64 %187 to i8
  %189 = and i8 %188, 1
  store i8 %189, i8* %28, align 1, !tbaa !2448
  %190 = icmp eq i64 %176, 0
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %31, align 1, !tbaa !2449
  %192 = lshr i64 %176, 63
  %193 = trunc i64 %192 to i8
  store i8 %193, i8* %34, align 1, !tbaa !2450
  %194 = lshr i64 %174, 63
  %195 = xor i64 %192, %194
  %196 = add nuw nsw i64 %195, %192
  %197 = icmp eq i64 %196, 2
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %40, align 1, !tbaa !2451
  %199 = add i64 %175, 5
  store i64 %199, i64* %PC, align 8
  %200 = add i64 %174, 56
  %201 = inttoptr i64 %176 to i64*
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %RBP, align 8, !tbaa !2428
  store i64 %200, i64* %RSP, align 8, !tbaa !2428
  %203 = add i64 %175, 6
  store i64 %203, i64* %PC, align 8
  %204 = inttoptr i64 %200 to i64*
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %PC, align 8, !tbaa !2428
  %206 = add i64 %174, 64
  store i64 %206, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %173

block_40132e:                                     ; preds = %block_401322
  %207 = add i64 %363, -16
  %208 = add i64 %399, 4
  store i64 %208, i64* %PC, align 8
  %209 = inttoptr i64 %207 to i64*
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* %RAX, align 8, !tbaa !2428
  %211 = add i64 %363, -20
  %212 = add i64 %399, 8
  store i64 %212, i64* %PC, align 8
  %213 = inttoptr i64 %211 to i32*
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  %216 = shl nsw i64 %215, 13
  store i64 %216, i64* %RCX, align 8, !tbaa !2428
  %217 = lshr i64 %215, 50
  %218 = and i64 %217, 1
  %219 = add i64 %216, %210
  store i64 %219, i64* %RAX, align 8, !tbaa !2428
  %220 = icmp ult i64 %219, %210
  %221 = icmp ult i64 %219, %216
  %222 = or i1 %220, %221
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %15, align 1, !tbaa !2434
  %224 = trunc i64 %219 to i32
  %225 = and i32 %224, 255
  %226 = tail call i32 @llvm.ctpop.i32(i32 %225) #8
  %227 = trunc i32 %226 to i8
  %228 = and i8 %227, 1
  %229 = xor i8 %228, 1
  store i8 %229, i8* %22, align 1, !tbaa !2447
  %230 = xor i64 %210, %219
  %231 = lshr i64 %230, 4
  %232 = trunc i64 %231 to i8
  %233 = and i8 %232, 1
  store i8 %233, i8* %28, align 1, !tbaa !2448
  %234 = icmp eq i64 %219, 0
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %31, align 1, !tbaa !2449
  %236 = lshr i64 %219, 63
  %237 = trunc i64 %236 to i8
  store i8 %237, i8* %34, align 1, !tbaa !2450
  %238 = lshr i64 %210, 63
  %239 = xor i64 %236, %238
  %240 = xor i64 %236, %218
  %241 = add nuw nsw i64 %239, %240
  %242 = icmp eq i64 %241, 2
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %40, align 1, !tbaa !2451
  %244 = add i64 %399, 19
  store i64 %244, i64* %PC, align 8
  %245 = load i32, i32* %366, align 4
  %246 = sext i32 %245 to i64
  store i64 %246, i64* %RCX, align 8, !tbaa !2428
  %247 = shl nsw i64 %246, 3
  %248 = add i64 %247, %219
  %249 = add i64 %399, 24
  store i64 %249, i64* %PC, align 8
  %250 = inttoptr i64 %248 to i64*
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %251, i64* %252, align 1, !tbaa !2452
  store double 0.000000e+00, double* %122, align 1, !tbaa !2452
  %253 = add i64 %399, 27
  store i64 %253, i64* %PC, align 8
  %254 = load i32, i32* %366, align 4
  %255 = shl i32 %254, 4
  %256 = zext i32 %255 to i64
  store i64 %256, i64* %RDX, align 8, !tbaa !2428
  %257 = lshr i32 %254, 28
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  store i8 %259, i8* %15, align 1, !tbaa !2454
  %260 = and i32 %255, 240
  %261 = tail call i32 @llvm.ctpop.i32(i32 %260) #8
  %262 = trunc i32 %261 to i8
  %263 = and i8 %262, 1
  %264 = xor i8 %263, 1
  store i8 %264, i8* %22, align 1, !tbaa !2454
  store i8 0, i8* %28, align 1, !tbaa !2454
  %265 = icmp eq i32 %255, 0
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %31, align 1, !tbaa !2454
  %267 = lshr i32 %254, 27
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  store i8 %269, i8* %34, align 1, !tbaa !2454
  store i8 0, i8* %40, align 1, !tbaa !2454
  %270 = load i64, i64* %RBP, align 8
  %271 = add i64 %270, -32
  %272 = add i64 %399, 34
  store i64 %272, i64* %PC, align 8
  %273 = inttoptr i64 %271 to i64*
  %274 = load i64, i64* %273, align 8
  store i64 %274, i64* %RSI, align 8, !tbaa !2428
  store i64 %256, i64* %RDI, align 8, !tbaa !2428
  %275 = add i64 %399, 114
  %276 = add i64 %399, 41
  %277 = load i64, i64* %RSP, align 8, !tbaa !2428
  %278 = add i64 %277, -8
  %279 = inttoptr i64 %278 to i64*
  store i64 %276, i64* %279, align 8
  store i64 %278, i64* %RSP, align 8, !tbaa !2428
  store i64 %275, i64* %PC, align 8, !tbaa !2428
  %280 = tail call %struct.Memory* @sub_4013a0_print_element_renamed_(%struct.State* nonnull %0, i64 %275, %struct.Memory* %MEMORY.1)
  %281 = load i64, i64* %RBP, align 8
  %282 = add i64 %281, -24
  %283 = load i64, i64* %PC, align 8
  %284 = add i64 %283, 3
  store i64 %284, i64* %PC, align 8
  %285 = inttoptr i64 %282 to i32*
  %286 = load i32, i32* %285, align 4
  %287 = add i32 %286, 1
  %288 = zext i32 %287 to i64
  store i64 %288, i64* %RAX, align 8, !tbaa !2428
  %289 = icmp eq i32 %286, -1
  %290 = icmp eq i32 %287, 0
  %291 = or i1 %289, %290
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %15, align 1, !tbaa !2434
  %293 = and i32 %287, 255
  %294 = tail call i32 @llvm.ctpop.i32(i32 %293) #8
  %295 = trunc i32 %294 to i8
  %296 = and i8 %295, 1
  %297 = xor i8 %296, 1
  store i8 %297, i8* %22, align 1, !tbaa !2447
  %298 = xor i32 %286, %287
  %299 = lshr i32 %298, 4
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  store i8 %301, i8* %28, align 1, !tbaa !2448
  %302 = zext i1 %290 to i8
  store i8 %302, i8* %31, align 1, !tbaa !2449
  %303 = lshr i32 %287, 31
  %304 = trunc i32 %303 to i8
  store i8 %304, i8* %34, align 1, !tbaa !2450
  %305 = lshr i32 %286, 31
  %306 = xor i32 %303, %305
  %307 = add nuw nsw i32 %306, %303
  %308 = icmp eq i32 %307, 2
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %40, align 1, !tbaa !2451
  %310 = add i64 %283, 9
  store i64 %310, i64* %PC, align 8
  store i32 %287, i32* %285, align 4
  %311 = load i64, i64* %PC, align 8
  %312 = add i64 %311, -62
  store i64 %312, i64* %PC, align 8, !tbaa !2428
  br label %block_401322

block_401365:                                     ; preds = %block_401322
  %313 = add i64 %363, -32
  %314 = add i64 %399, 4
  store i64 %314, i64* %PC, align 8
  %315 = inttoptr i64 %313 to i64*
  %316 = load i64, i64* %315, align 8
  store i64 %316, i64* %RDI, align 8, !tbaa !2428
  %317 = load i64, i64* @stderr, align 128
  store i64 %317, i64* %RSI, align 8, !tbaa !2428
  %318 = add i64 %399, -3461
  %319 = add i64 %399, 17
  %320 = load i64, i64* %RSP, align 8, !tbaa !2428
  %321 = add i64 %320, -8
  %322 = inttoptr i64 %321 to i64*
  store i64 %319, i64* %322, align 8
  store i64 %321, i64* %RSP, align 8, !tbaa !2428
  store i64 %318, i64* %PC, align 8, !tbaa !2428
  %323 = tail call fastcc %struct.Memory* @ext_4005e0_fputs(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %324 = load i64, i64* %RBP, align 8
  %325 = add i64 %324, -36
  %326 = load i32, i32* %EAX, align 4
  %327 = load i64, i64* %PC, align 8
  %328 = add i64 %327, 3
  store i64 %328, i64* %PC, align 8
  %329 = inttoptr i64 %325 to i32*
  store i32 %326, i32* %329, align 4
  %330 = load i64, i64* %RBP, align 8
  %331 = add i64 %330, -20
  %332 = load i64, i64* %PC, align 8
  %333 = add i64 %332, 3
  store i64 %333, i64* %PC, align 8
  %334 = inttoptr i64 %331 to i32*
  %335 = load i32, i32* %334, align 4
  %336 = add i32 %335, 1
  %337 = zext i32 %336 to i64
  store i64 %337, i64* %RAX, align 8, !tbaa !2428
  %338 = icmp eq i32 %335, -1
  %339 = icmp eq i32 %336, 0
  %340 = or i1 %338, %339
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %15, align 1, !tbaa !2434
  %342 = and i32 %336, 255
  %343 = tail call i32 @llvm.ctpop.i32(i32 %342) #8
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  %346 = xor i8 %345, 1
  store i8 %346, i8* %22, align 1, !tbaa !2447
  %347 = xor i32 %335, %336
  %348 = lshr i32 %347, 4
  %349 = trunc i32 %348 to i8
  %350 = and i8 %349, 1
  store i8 %350, i8* %28, align 1, !tbaa !2448
  %351 = zext i1 %339 to i8
  store i8 %351, i8* %31, align 1, !tbaa !2449
  %352 = lshr i32 %336, 31
  %353 = trunc i32 %352 to i8
  store i8 %353, i8* %34, align 1, !tbaa !2450
  %354 = lshr i32 %335, 31
  %355 = xor i32 %352, %354
  %356 = add nuw nsw i32 %355, %352
  %357 = icmp eq i32 %356, 2
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %40, align 1, !tbaa !2451
  %359 = add i64 %332, 9
  store i64 %359, i64* %PC, align 8
  store i32 %336, i32* %334, align 4
  %360 = load i64, i64* %PC, align 8
  %361 = add i64 %360, -115
  store i64 %361, i64* %PC, align 8, !tbaa !2428
  br label %block_40130f

block_401322:                                     ; preds = %block_40132e, %block_40131b
  %362 = phi i64 [ %.pre2, %block_40131b ], [ %312, %block_40132e ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_40131b ], [ %280, %block_40132e ]
  %363 = load i64, i64* %RBP, align 8
  %364 = add i64 %363, -24
  %365 = add i64 %362, 3
  store i64 %365, i64* %PC, align 8
  %366 = inttoptr i64 %364 to i32*
  %367 = load i32, i32* %366, align 4
  %368 = zext i32 %367 to i64
  store i64 %368, i64* %RAX, align 8, !tbaa !2428
  %369 = add i64 %363, -8
  %370 = add i64 %362, 6
  store i64 %370, i64* %PC, align 8
  %371 = inttoptr i64 %369 to i32*
  %372 = load i32, i32* %371, align 4
  %373 = sub i32 %367, %372
  %374 = icmp ult i32 %367, %372
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %15, align 1, !tbaa !2434
  %376 = and i32 %373, 255
  %377 = tail call i32 @llvm.ctpop.i32(i32 %376) #8
  %378 = trunc i32 %377 to i8
  %379 = and i8 %378, 1
  %380 = xor i8 %379, 1
  store i8 %380, i8* %22, align 1, !tbaa !2447
  %381 = xor i32 %372, %367
  %382 = xor i32 %381, %373
  %383 = lshr i32 %382, 4
  %384 = trunc i32 %383 to i8
  %385 = and i8 %384, 1
  store i8 %385, i8* %28, align 1, !tbaa !2448
  %386 = icmp eq i32 %373, 0
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %31, align 1, !tbaa !2449
  %388 = lshr i32 %373, 31
  %389 = trunc i32 %388 to i8
  store i8 %389, i8* %34, align 1, !tbaa !2450
  %390 = lshr i32 %367, 31
  %391 = lshr i32 %372, 31
  %392 = xor i32 %391, %390
  %393 = xor i32 %388, %390
  %394 = add nuw nsw i32 %393, %392
  %395 = icmp eq i32 %394, 2
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %40, align 1, !tbaa !2451
  %397 = icmp ne i8 %389, 0
  %398 = xor i1 %397, %395
  %.v3 = select i1 %398, i64 12, i64 67
  %399 = add i64 %362, %.v3
  store i64 %399, i64* %PC, align 8, !tbaa !2428
  br i1 %398, label %block_40132e, label %block_401365
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007c0_polybench_timer_start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4007c0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %1, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !2428
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %PC, align 8
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %10 = add i64 %9, -17
  %11 = add i64 %9, 8
  %12 = add i64 %6, -16
  %13 = inttoptr i64 %12 to i64*
  store i64 %11, i64* %13, align 8
  store i64 %12, i64* %5, align 8, !tbaa !2428
  store i64 %10, i64* %PC, align 8, !tbaa !2428
  %14 = tail call %struct.Memory* @sub_4007b0_polybench_prepare_instruments_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
  %15 = load i64, i64* %PC, align 8
  %16 = add i64 %15, 23
  %17 = add i64 %15, 5
  %18 = load i64, i64* %5, align 8, !tbaa !2428
  %19 = add i64 %18, -8
  %20 = inttoptr i64 %19 to i64*
  store i64 %17, i64* %20, align 8
  store i64 %19, i64* %5, align 8, !tbaa !2428
  store i64 %16, i64* %PC, align 8, !tbaa !2428
  %21 = tail call %struct.Memory* @sub_4007e0_rtclock_renamed_(%struct.State* nonnull %0, i64 %16, %struct.Memory* %14)
  %22 = load i64, i64* %PC, align 8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %24 = load i64, i64* %23, align 1
  store i64 %24, i64* bitcast (%polybench_t_start_type* @polybench_t_start to i64*), align 8
  %25 = add i64 %22, 10
  store i64 %25, i64* %PC, align 8
  %26 = load i64, i64* %5, align 8, !tbaa !2428
  %27 = add i64 %26, 8
  %28 = inttoptr i64 %26 to i64*
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %RBP, align 8, !tbaa !2428
  store i64 %27, i64* %5, align 8, !tbaa !2428
  %30 = add i64 %22, 11
  store i64 %30, i64* %PC, align 8
  %31 = inttoptr i64 %27 to i64*
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %PC, align 8, !tbaa !2428
  %33 = add i64 %26, 16
  store i64 %33, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %21
}

; Function Attrs: noinline
define %struct.Memory* @sub_400b20_init_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400b20:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %5 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %6 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %9 = load i64, i64* %RBP, align 8
  %10 = add i64 %1, 1
  store i64 %10, i64* %PC, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !2428
  %13 = add i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64 %9, i64* %14, align 8
  %15 = load i64, i64* %PC, align 8
  store i64 %13, i64* %RBP, align 8, !tbaa !2428
  %16 = load i64, i64* %R14, align 8
  %17 = add i64 %15, 5
  store i64 %17, i64* %PC, align 8
  %18 = add i64 %12, -16
  %19 = inttoptr i64 %18 to i64*
  store i64 %16, i64* %19, align 8
  %20 = load i64, i64* %RBX, align 8
  %21 = load i64, i64* %PC, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %PC, align 8
  %23 = add i64 %12, -24
  %24 = inttoptr i64 %23 to i64*
  store i64 %20, i64* %24, align 8
  store i64 %23, i64* %11, align 8, !tbaa !2428
  %25 = load i64, i64* %RBP, align 8
  %26 = add i64 %25, 48
  %27 = load i64, i64* %PC, align 8
  %28 = add i64 %27, 4
  store i64 %28, i64* %PC, align 8
  %29 = inttoptr i64 %26 to i64*
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %RAX, align 8, !tbaa !2428
  %31 = add i64 %25, 40
  %32 = add i64 %27, 8
  store i64 %32, i64* %PC, align 8
  %33 = inttoptr i64 %31 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %R10, align 8, !tbaa !2428
  %35 = add i64 %25, 32
  %36 = add i64 %27, 12
  store i64 %36, i64* %PC, align 8
  %37 = inttoptr i64 %35 to i64*
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %R11, align 8, !tbaa !2428
  %39 = add i64 %25, 24
  %40 = add i64 %27, 16
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %39 to i64*
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %RBX, align 8, !tbaa !2428
  %43 = add i64 %25, 16
  %44 = add i64 %27, 20
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %43 to i64*
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %R14, align 8, !tbaa !2428
  %47 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015d0__rodata_type* @seg_4015d0__rodata to i64), i64 8) to i64*), align 8
  %48 = bitcast [32 x %union.VectorReg]* %7 to double*
  %49 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %47, i64* %49, align 1, !tbaa !2452
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %51 = bitcast i64* %50 to double*
  store double 0.000000e+00, double* %51, align 1, !tbaa !2452
  %52 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015d0__rodata_type* @seg_4015d0__rodata to i64), i64 16) to i64*), align 16
  %53 = bitcast %union.VectorReg* %8 to double*
  %54 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %52, i64* %54, align 1, !tbaa !2452
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %56 = bitcast i64* %55 to double*
  store double 0.000000e+00, double* %56, align 1, !tbaa !2452
  %57 = add i64 %25, -20
  %58 = load i32, i32* %EDI, align 4
  %59 = add i64 %27, 39
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %57 to i32*
  store i32 %58, i32* %60, align 4
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -24
  %63 = load i32, i32* %ESI, align 4
  %64 = load i64, i64* %PC, align 8
  %65 = add i64 %64, 3
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %62 to i32*
  store i32 %63, i32* %66, align 4
  %67 = load i64, i64* %RBP, align 8
  %68 = add i64 %67, -28
  %69 = load i32, i32* %EDX, align 4
  %70 = load i64, i64* %PC, align 8
  %71 = add i64 %70, 3
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %68 to i32*
  store i32 %69, i32* %72, align 4
  %73 = load i64, i64* %RBP, align 8
  %74 = add i64 %73, -32
  %75 = load i32, i32* %ECX, align 4
  %76 = load i64, i64* %PC, align 8
  %77 = add i64 %76, 3
  store i64 %77, i64* %PC, align 8
  %78 = inttoptr i64 %74 to i32*
  store i32 %75, i32* %78, align 4
  %79 = load i64, i64* %RBP, align 8
  %80 = add i64 %79, -40
  %81 = load i64, i64* %R8, align 8
  %82 = load i64, i64* %PC, align 8
  %83 = add i64 %82, 4
  store i64 %83, i64* %PC, align 8
  %84 = inttoptr i64 %80 to i64*
  store i64 %81, i64* %84, align 8
  %85 = load i64, i64* %RBP, align 8
  %86 = add i64 %85, -48
  %87 = load i64, i64* %R9, align 8
  %88 = load i64, i64* %PC, align 8
  %89 = add i64 %88, 4
  store i64 %89, i64* %PC, align 8
  %90 = inttoptr i64 %86 to i64*
  store i64 %87, i64* %90, align 8
  %91 = load i64, i64* %RBP, align 8
  %92 = add i64 %91, -40
  %93 = load i64, i64* %PC, align 8
  %94 = add i64 %93, 4
  store i64 %94, i64* %PC, align 8
  %95 = inttoptr i64 %92 to i64*
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %R8, align 8, !tbaa !2428
  %97 = add i64 %93, 9
  store i64 %97, i64* %PC, align 8
  %98 = load i64, i64* %54, align 1
  %99 = inttoptr i64 %96 to i64*
  store i64 %98, i64* %99, align 8
  %100 = load i64, i64* %RBP, align 8
  %101 = add i64 %100, -48
  %102 = load i64, i64* %PC, align 8
  %103 = add i64 %102, 4
  store i64 %103, i64* %PC, align 8
  %104 = inttoptr i64 %101 to i64*
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %R8, align 8, !tbaa !2428
  %106 = add i64 %102, 9
  store i64 %106, i64* %PC, align 8
  %107 = load i64, i64* %49, align 1
  %108 = inttoptr i64 %105 to i64*
  store i64 %107, i64* %108, align 8
  %109 = load i64, i64* %RBP, align 8
  %110 = add i64 %109, -52
  %111 = load i64, i64* %PC, align 8
  %112 = add i64 %111, 7
  store i64 %112, i64* %PC, align 8
  %113 = inttoptr i64 %110 to i32*
  store i32 0, i32* %113, align 4
  %114 = load i64, i64* %RBP, align 8
  %115 = add i64 %114, -64
  %116 = load i64, i64* %R14, align 8
  %117 = load i64, i64* %PC, align 8
  %118 = add i64 %117, 4
  store i64 %118, i64* %PC, align 8
  %119 = inttoptr i64 %115 to i64*
  store i64 %116, i64* %119, align 8
  %120 = load i64, i64* %RBP, align 8
  %121 = add i64 %120, -72
  %122 = load i64, i64* %R10, align 8
  %123 = load i64, i64* %PC, align 8
  %124 = add i64 %123, 4
  store i64 %124, i64* %PC, align 8
  %125 = inttoptr i64 %121 to i64*
  store i64 %122, i64* %125, align 8
  %126 = load i64, i64* %RBP, align 8
  %127 = add i64 %126, -80
  %128 = load i64, i64* %R11, align 8
  %129 = load i64, i64* %PC, align 8
  %130 = add i64 %129, 4
  store i64 %130, i64* %PC, align 8
  %131 = inttoptr i64 %127 to i64*
  store i64 %128, i64* %131, align 8
  %132 = load i64, i64* %RBP, align 8
  %133 = add i64 %132, -88
  %134 = load i64, i64* %RBX, align 8
  %135 = load i64, i64* %PC, align 8
  %136 = add i64 %135, 4
  store i64 %136, i64* %PC, align 8
  %137 = inttoptr i64 %133 to i64*
  store i64 %134, i64* %137, align 8
  %138 = load i64, i64* %RBP, align 8
  %139 = add i64 %138, -96
  %140 = load i64, i64* %RAX, align 8
  %141 = load i64, i64* %PC, align 8
  %142 = add i64 %141, 4
  store i64 %142, i64* %PC, align 8
  %143 = inttoptr i64 %139 to i64*
  store i64 %140, i64* %143, align 8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %PC, align 8
  br label %block_400b8c

block_400cff:                                     ; preds = %block_400c87
  %150 = add i64 %859, 7
  store i64 %150, i64* %PC, align 8
  store i32 0, i32* %826, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_400d06

block_400bee:                                     ; preds = %block_400b9f
  %151 = add i64 %275, 8
  store i64 %151, i64* %PC, align 8
  %152 = inttoptr i64 %276 to i32*
  %153 = load i32, i32* %152, align 4
  %154 = add i32 %153, 1
  %155 = zext i32 %154 to i64
  store i64 %155, i64* %RAX, align 8, !tbaa !2428
  %156 = icmp eq i32 %153, -1
  %157 = icmp eq i32 %154, 0
  %158 = or i1 %156, %157
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %144, align 1, !tbaa !2434
  %160 = and i32 %154, 255
  %161 = tail call i32 @llvm.ctpop.i32(i32 %160) #8
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  %164 = xor i8 %163, 1
  store i8 %164, i8* %145, align 1, !tbaa !2447
  %165 = xor i32 %153, %154
  %166 = lshr i32 %165, 4
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  store i8 %168, i8* %146, align 1, !tbaa !2448
  %169 = zext i1 %157 to i8
  store i8 %169, i8* %147, align 1, !tbaa !2449
  %170 = lshr i32 %154, 31
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %148, align 1, !tbaa !2450
  %172 = lshr i32 %153, 31
  %173 = xor i32 %170, %172
  %174 = add nuw nsw i32 %173, %170
  %175 = icmp eq i32 %174, 2
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %149, align 1, !tbaa !2451
  %177 = add i64 %275, 14
  store i64 %177, i64* %PC, align 8
  store i32 %154, i32* %152, align 4
  %178 = load i64, i64* %PC, align 8
  %179 = add i64 %178, -112
  store i64 %179, i64* %PC, align 8, !tbaa !2428
  br label %block_400b8c

block_400c6d:                                     ; preds = %block_400c1b
  %180 = add i64 %314, 8
  store i64 %180, i64* %PC, align 8
  %181 = inttoptr i64 %315 to i32*
  %182 = load i32, i32* %181, align 4
  %183 = add i32 %182, 1
  %184 = zext i32 %183 to i64
  store i64 %184, i64* %RAX, align 8, !tbaa !2428
  %185 = icmp eq i32 %182, -1
  %186 = icmp eq i32 %183, 0
  %187 = or i1 %185, %186
  %188 = zext i1 %187 to i8
  store i8 %188, i8* %144, align 1, !tbaa !2434
  %189 = and i32 %183, 255
  %190 = tail call i32 @llvm.ctpop.i32(i32 %189) #8
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, 1
  %193 = xor i8 %192, 1
  store i8 %193, i8* %145, align 1, !tbaa !2447
  %194 = xor i32 %182, %183
  %195 = lshr i32 %194, 4
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  store i8 %197, i8* %146, align 1, !tbaa !2448
  %198 = zext i1 %186 to i8
  store i8 %198, i8* %147, align 1, !tbaa !2449
  %199 = lshr i32 %183, 31
  %200 = trunc i32 %199 to i8
  store i8 %200, i8* %148, align 1, !tbaa !2450
  %201 = lshr i32 %182, 31
  %202 = xor i32 %199, %201
  %203 = add nuw nsw i32 %202, %199
  %204 = icmp eq i32 %203, 2
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %149, align 1, !tbaa !2451
  %206 = add i64 %314, 14
  store i64 %206, i64* %PC, align 8
  store i32 %183, i32* %181, align 4
  %207 = load i64, i64* %PC, align 8
  %208 = add i64 %207, -115
  store i64 %208, i64* %PC, align 8, !tbaa !2428
  br label %block_400c08

block_400cec:                                     ; preds = %block_400c9a
  %209 = add i64 %353, 8
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %354 to i32*
  %211 = load i32, i32* %210, align 4
  %212 = add i32 %211, 1
  %213 = zext i32 %212 to i64
  store i64 %213, i64* %RAX, align 8, !tbaa !2428
  %214 = icmp eq i32 %211, -1
  %215 = icmp eq i32 %212, 0
  %216 = or i1 %214, %215
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %144, align 1, !tbaa !2434
  %218 = and i32 %212, 255
  %219 = tail call i32 @llvm.ctpop.i32(i32 %218) #8
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  %222 = xor i8 %221, 1
  store i8 %222, i8* %145, align 1, !tbaa !2447
  %223 = xor i32 %211, %212
  %224 = lshr i32 %223, 4
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  store i8 %226, i8* %146, align 1, !tbaa !2448
  %227 = zext i1 %215 to i8
  store i8 %227, i8* %147, align 1, !tbaa !2449
  %228 = lshr i32 %212, 31
  %229 = trunc i32 %228 to i8
  store i8 %229, i8* %148, align 1, !tbaa !2450
  %230 = lshr i32 %211, 31
  %231 = xor i32 %228, %230
  %232 = add nuw nsw i32 %231, %228
  %233 = icmp eq i32 %232, 2
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %149, align 1, !tbaa !2451
  %235 = add i64 %353, 14
  store i64 %235, i64* %PC, align 8
  store i32 %212, i32* %210, align 4
  %236 = load i64, i64* %PC, align 8
  %237 = add i64 %236, -115
  store i64 %237, i64* %PC, align 8, !tbaa !2428
  br label %block_400c87

block_400b9f:                                     ; preds = %block_400bab, %block_400b98
  %238 = phi i64 [ %516, %block_400bab ], [ %.pre3, %block_400b98 ]
  %239 = load i64, i64* %RBP, align 8
  %240 = add i64 %239, -56
  %241 = add i64 %238, 3
  store i64 %241, i64* %PC, align 8
  %242 = inttoptr i64 %240 to i32*
  %243 = load i32, i32* %242, align 4
  %244 = zext i32 %243 to i64
  store i64 %244, i64* %RAX, align 8, !tbaa !2428
  %245 = add i64 %239, -28
  %246 = add i64 %238, 6
  store i64 %246, i64* %PC, align 8
  %247 = inttoptr i64 %245 to i32*
  %248 = load i32, i32* %247, align 4
  %249 = sub i32 %243, %248
  %250 = icmp ult i32 %243, %248
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %144, align 1, !tbaa !2434
  %252 = and i32 %249, 255
  %253 = tail call i32 @llvm.ctpop.i32(i32 %252) #8
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = xor i8 %255, 1
  store i8 %256, i8* %145, align 1, !tbaa !2447
  %257 = xor i32 %248, %243
  %258 = xor i32 %257, %249
  %259 = lshr i32 %258, 4
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  store i8 %261, i8* %146, align 1, !tbaa !2448
  %262 = icmp eq i32 %249, 0
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %147, align 1, !tbaa !2449
  %264 = lshr i32 %249, 31
  %265 = trunc i32 %264 to i8
  store i8 %265, i8* %148, align 1, !tbaa !2450
  %266 = lshr i32 %243, 31
  %267 = lshr i32 %248, 31
  %268 = xor i32 %267, %266
  %269 = xor i32 %264, %266
  %270 = add nuw nsw i32 %269, %268
  %271 = icmp eq i32 %270, 2
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %149, align 1, !tbaa !2451
  %273 = icmp ne i8 %265, 0
  %274 = xor i1 %273, %271
  %.v10 = select i1 %274, i64 12, i64 79
  %275 = add i64 %238, %.v10
  store i64 %275, i64* %PC, align 8, !tbaa !2428
  %276 = add i64 %239, -52
  br i1 %274, label %block_400bab, label %block_400bee

block_400c1b:                                     ; preds = %block_400c27, %block_400c14
  %277 = phi i64 [ %630, %block_400c27 ], [ %.pre5, %block_400c14 ]
  %278 = load i64, i64* %RBP, align 8
  %279 = add i64 %278, -56
  %280 = add i64 %277, 3
  store i64 %280, i64* %PC, align 8
  %281 = inttoptr i64 %279 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = zext i32 %282 to i64
  store i64 %283, i64* %RAX, align 8, !tbaa !2428
  %284 = add i64 %278, -24
  %285 = add i64 %277, 6
  store i64 %285, i64* %PC, align 8
  %286 = inttoptr i64 %284 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = sub i32 %282, %287
  %289 = icmp ult i32 %282, %287
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %144, align 1, !tbaa !2434
  %291 = and i32 %288, 255
  %292 = tail call i32 @llvm.ctpop.i32(i32 %291) #8
  %293 = trunc i32 %292 to i8
  %294 = and i8 %293, 1
  %295 = xor i8 %294, 1
  store i8 %295, i8* %145, align 1, !tbaa !2447
  %296 = xor i32 %287, %282
  %297 = xor i32 %296, %288
  %298 = lshr i32 %297, 4
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  store i8 %300, i8* %146, align 1, !tbaa !2448
  %301 = icmp eq i32 %288, 0
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %147, align 1, !tbaa !2449
  %303 = lshr i32 %288, 31
  %304 = trunc i32 %303 to i8
  store i8 %304, i8* %148, align 1, !tbaa !2450
  %305 = lshr i32 %282, 31
  %306 = lshr i32 %287, 31
  %307 = xor i32 %306, %305
  %308 = xor i32 %303, %305
  %309 = add nuw nsw i32 %308, %307
  %310 = icmp eq i32 %309, 2
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %149, align 1, !tbaa !2451
  %312 = icmp ne i8 %304, 0
  %313 = xor i1 %312, %310
  %.v12 = select i1 %313, i64 12, i64 82
  %314 = add i64 %277, %.v12
  store i64 %314, i64* %PC, align 8, !tbaa !2428
  %315 = add i64 %278, -52
  br i1 %313, label %block_400c27, label %block_400c6d

block_400c9a:                                     ; preds = %block_400ca6, %block_400c93
  %316 = phi i64 [ %821, %block_400ca6 ], [ %.pre7, %block_400c93 ]
  %317 = load i64, i64* %RBP, align 8
  %318 = add i64 %317, -56
  %319 = add i64 %316, 3
  store i64 %319, i64* %PC, align 8
  %320 = inttoptr i64 %318 to i32*
  %321 = load i32, i32* %320, align 4
  %322 = zext i32 %321 to i64
  store i64 %322, i64* %RAX, align 8, !tbaa !2428
  %323 = add i64 %317, -24
  %324 = add i64 %316, 6
  store i64 %324, i64* %PC, align 8
  %325 = inttoptr i64 %323 to i32*
  %326 = load i32, i32* %325, align 4
  %327 = sub i32 %321, %326
  %328 = icmp ult i32 %321, %326
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %144, align 1, !tbaa !2434
  %330 = and i32 %327, 255
  %331 = tail call i32 @llvm.ctpop.i32(i32 %330) #8
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  %334 = xor i8 %333, 1
  store i8 %334, i8* %145, align 1, !tbaa !2447
  %335 = xor i32 %326, %321
  %336 = xor i32 %335, %327
  %337 = lshr i32 %336, 4
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  store i8 %339, i8* %146, align 1, !tbaa !2448
  %340 = icmp eq i32 %327, 0
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %147, align 1, !tbaa !2449
  %342 = lshr i32 %327, 31
  %343 = trunc i32 %342 to i8
  store i8 %343, i8* %148, align 1, !tbaa !2450
  %344 = lshr i32 %321, 31
  %345 = lshr i32 %326, 31
  %346 = xor i32 %345, %344
  %347 = xor i32 %342, %344
  %348 = add nuw nsw i32 %347, %346
  %349 = icmp eq i32 %348, 2
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %149, align 1, !tbaa !2451
  %351 = icmp ne i8 %343, 0
  %352 = xor i1 %351, %349
  %.v14 = select i1 %352, i64 12, i64 82
  %353 = add i64 %316, %.v14
  store i64 %353, i64* %PC, align 8, !tbaa !2428
  %354 = add i64 %317, -52
  br i1 %352, label %block_400ca6, label %block_400cec

block_400d19:                                     ; preds = %block_400d25, %block_400d12
  %355 = phi i64 [ %1023, %block_400d25 ], [ %.pre9, %block_400d12 ]
  %356 = load i64, i64* %RBP, align 8
  %357 = add i64 %356, -56
  %358 = add i64 %355, 3
  store i64 %358, i64* %PC, align 8
  %359 = inttoptr i64 %357 to i32*
  %360 = load i32, i32* %359, align 4
  %361 = zext i32 %360 to i64
  store i64 %361, i64* %RAX, align 8, !tbaa !2428
  %362 = add i64 %356, -32
  %363 = add i64 %355, 6
  store i64 %363, i64* %PC, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = sub i32 %360, %365
  %367 = icmp ult i32 %360, %365
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %144, align 1, !tbaa !2434
  %369 = and i32 %366, 255
  %370 = tail call i32 @llvm.ctpop.i32(i32 %369) #8
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  %373 = xor i8 %372, 1
  store i8 %373, i8* %145, align 1, !tbaa !2447
  %374 = xor i32 %365, %360
  %375 = xor i32 %374, %366
  %376 = lshr i32 %375, 4
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  store i8 %378, i8* %146, align 1, !tbaa !2448
  %379 = icmp eq i32 %366, 0
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %147, align 1, !tbaa !2449
  %381 = lshr i32 %366, 31
  %382 = trunc i32 %381 to i8
  store i8 %382, i8* %148, align 1, !tbaa !2450
  %383 = lshr i32 %360, 31
  %384 = lshr i32 %365, 31
  %385 = xor i32 %384, %383
  %386 = xor i32 %381, %383
  %387 = add nuw nsw i32 %386, %385
  %388 = icmp eq i32 %387, 2
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %149, align 1, !tbaa !2451
  %390 = icmp ne i8 %382, 0
  %391 = xor i1 %390, %388
  %.v16 = select i1 %391, i64 12, i64 106
  %392 = add i64 %355, %.v16
  store i64 %392, i64* %PC, align 8, !tbaa !2428
  %393 = add i64 %356, -52
  br i1 %391, label %block_400d25, label %block_400d83

block_400d96:                                     ; preds = %block_400d06
  %394 = add i64 %1061, 1
  store i64 %394, i64* %PC, align 8
  %395 = load i64, i64* %11, align 8, !tbaa !2428
  %396 = add i64 %395, 8
  %397 = inttoptr i64 %395 to i64*
  %398 = load i64, i64* %397, align 8
  store i64 %398, i64* %RBX, align 8, !tbaa !2428
  store i64 %396, i64* %11, align 8, !tbaa !2428
  %399 = add i64 %1061, 3
  store i64 %399, i64* %PC, align 8
  %400 = add i64 %395, 16
  %401 = inttoptr i64 %396 to i64*
  %402 = load i64, i64* %401, align 8
  store i64 %402, i64* %R14, align 8, !tbaa !2428
  store i64 %400, i64* %11, align 8, !tbaa !2428
  %403 = add i64 %1061, 4
  store i64 %403, i64* %PC, align 8
  %404 = add i64 %395, 24
  %405 = inttoptr i64 %400 to i64*
  %406 = load i64, i64* %405, align 8
  store i64 %406, i64* %RBP, align 8, !tbaa !2428
  store i64 %404, i64* %11, align 8, !tbaa !2428
  %407 = add i64 %1061, 5
  store i64 %407, i64* %PC, align 8
  %408 = inttoptr i64 %404 to i64*
  %409 = load i64, i64* %408, align 8
  store i64 %409, i64* %PC, align 8, !tbaa !2428
  %410 = add i64 %395, 32
  store i64 %410, i64* %11, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400b98:                                     ; preds = %block_400b8c
  %411 = add i64 %632, -56
  %412 = add i64 %668, 7
  store i64 %412, i64* %PC, align 8
  %413 = inttoptr i64 %411 to i32*
  store i32 0, i32* %413, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_400b9f

block_400c14:                                     ; preds = %block_400c08
  %414 = add i64 %670, -56
  %415 = add i64 %706, 7
  store i64 %415, i64* %PC, align 8
  %416 = inttoptr i64 %414 to i32*
  store i32 0, i32* %416, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_400c1b

block_400c93:                                     ; preds = %block_400c87
  %417 = add i64 %823, -56
  %418 = add i64 %859, 7
  store i64 %418, i64* %PC, align 8
  %419 = inttoptr i64 %417 to i32*
  store i32 0, i32* %419, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_400c9a

block_400d12:                                     ; preds = %block_400d06
  %420 = add i64 %1025, -56
  %421 = add i64 %1061, 7
  store i64 %421, i64* %PC, align 8
  %422 = inttoptr i64 %420 to i32*
  store i32 0, i32* %422, align 4
  %.pre9 = load i64, i64* %PC, align 8
  br label %block_400d19

block_400bab:                                     ; preds = %block_400b9f
  %423 = add i64 %275, 3
  store i64 %423, i64* %PC, align 8
  %424 = inttoptr i64 %276 to i32*
  %425 = load i32, i32* %424, align 4
  %426 = zext i32 %425 to i64
  store i64 %426, i64* %RAX, align 8, !tbaa !2428
  %427 = sitofp i32 %425 to double
  store double %427, double* %48, align 1, !tbaa !2452
  %428 = add i64 %275, 10
  store i64 %428, i64* %PC, align 8
  %429 = load i32, i32* %242, align 4
  %430 = zext i32 %429 to i64
  store i64 %430, i64* %RAX, align 8, !tbaa !2428
  %431 = sitofp i32 %429 to double
  store double %431, double* %53, align 1, !tbaa !2452
  %432 = fmul double %427, %431
  store double %432, double* %48, align 1, !tbaa !2452
  %433 = add i64 %239, -20
  %434 = add i64 %275, 21
  store i64 %434, i64* %PC, align 8
  %435 = inttoptr i64 %433 to i32*
  %436 = load i32, i32* %435, align 4
  %437 = zext i32 %436 to i64
  store i64 %437, i64* %RAX, align 8, !tbaa !2428
  %438 = sitofp i32 %436 to double
  store double %438, double* %53, align 1, !tbaa !2452
  %439 = fdiv double %432, %438
  store double %439, double* %48, align 1, !tbaa !2452
  %440 = add i64 %239, 16
  %441 = add i64 %275, 33
  store i64 %441, i64* %PC, align 8
  %442 = inttoptr i64 %440 to i64*
  %443 = load i64, i64* %442, align 8
  store i64 %443, i64* %RCX, align 8, !tbaa !2428
  %444 = add i64 %275, 37
  store i64 %444, i64* %PC, align 8
  %445 = load i32, i32* %424, align 4
  %446 = sext i32 %445 to i64
  %447 = shl nsw i64 %446, 13
  store i64 %447, i64* %RDX, align 8, !tbaa !2428
  %448 = lshr i64 %446, 50
  %449 = and i64 %448, 1
  %450 = add i64 %447, %443
  store i64 %450, i64* %RCX, align 8, !tbaa !2428
  %451 = icmp ult i64 %450, %443
  %452 = icmp ult i64 %450, %447
  %453 = or i1 %451, %452
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %144, align 1, !tbaa !2434
  %455 = trunc i64 %450 to i32
  %456 = and i32 %455, 255
  %457 = tail call i32 @llvm.ctpop.i32(i32 %456) #8
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  %460 = xor i8 %459, 1
  store i8 %460, i8* %145, align 1, !tbaa !2447
  %461 = xor i64 %443, %450
  %462 = lshr i64 %461, 4
  %463 = trunc i64 %462 to i8
  %464 = and i8 %463, 1
  store i8 %464, i8* %146, align 1, !tbaa !2448
  %465 = icmp eq i64 %450, 0
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %147, align 1, !tbaa !2449
  %467 = lshr i64 %450, 63
  %468 = trunc i64 %467 to i8
  store i8 %468, i8* %148, align 1, !tbaa !2450
  %469 = lshr i64 %443, 63
  %470 = xor i64 %467, %469
  %471 = xor i64 %467, %449
  %472 = add nuw nsw i64 %470, %471
  %473 = icmp eq i64 %472, 2
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %149, align 1, !tbaa !2451
  %475 = load i64, i64* %RBP, align 8
  %476 = add i64 %475, -56
  %477 = add i64 %275, 48
  store i64 %477, i64* %PC, align 8
  %478 = inttoptr i64 %476 to i32*
  %479 = load i32, i32* %478, align 4
  %480 = sext i32 %479 to i64
  store i64 %480, i64* %RDX, align 8, !tbaa !2428
  %481 = shl nsw i64 %480, 3
  %482 = add i64 %481, %450
  %483 = add i64 %275, 53
  store i64 %483, i64* %PC, align 8
  %484 = inttoptr i64 %482 to double*
  store double %439, double* %484, align 8
  %485 = load i64, i64* %RBP, align 8
  %486 = add i64 %485, -56
  %487 = load i64, i64* %PC, align 8
  %488 = add i64 %487, 3
  store i64 %488, i64* %PC, align 8
  %489 = inttoptr i64 %486 to i32*
  %490 = load i32, i32* %489, align 4
  %491 = add i32 %490, 1
  %492 = zext i32 %491 to i64
  store i64 %492, i64* %RAX, align 8, !tbaa !2428
  %493 = icmp eq i32 %490, -1
  %494 = icmp eq i32 %491, 0
  %495 = or i1 %493, %494
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %144, align 1, !tbaa !2434
  %497 = and i32 %491, 255
  %498 = tail call i32 @llvm.ctpop.i32(i32 %497) #8
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  %501 = xor i8 %500, 1
  store i8 %501, i8* %145, align 1, !tbaa !2447
  %502 = xor i32 %490, %491
  %503 = lshr i32 %502, 4
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  store i8 %505, i8* %146, align 1, !tbaa !2448
  %506 = zext i1 %494 to i8
  store i8 %506, i8* %147, align 1, !tbaa !2449
  %507 = lshr i32 %491, 31
  %508 = trunc i32 %507 to i8
  store i8 %508, i8* %148, align 1, !tbaa !2450
  %509 = lshr i32 %490, 31
  %510 = xor i32 %507, %509
  %511 = add nuw nsw i32 %510, %507
  %512 = icmp eq i32 %511, 2
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %149, align 1, !tbaa !2451
  %514 = add i64 %487, 9
  store i64 %514, i64* %PC, align 8
  store i32 %491, i32* %489, align 4
  %515 = load i64, i64* %PC, align 8
  %516 = add i64 %515, -74
  store i64 %516, i64* %PC, align 8, !tbaa !2428
  br label %block_400b9f

block_400c27:                                     ; preds = %block_400c1b
  %517 = add i64 %314, 3
  store i64 %517, i64* %PC, align 8
  %518 = inttoptr i64 %315 to i32*
  %519 = load i32, i32* %518, align 4
  %520 = zext i32 %519 to i64
  store i64 %520, i64* %RAX, align 8, !tbaa !2428
  %521 = sitofp i32 %519 to double
  store double %521, double* %48, align 1, !tbaa !2452
  %522 = add i64 %314, 10
  store i64 %522, i64* %PC, align 8
  %523 = load i32, i32* %281, align 4
  %524 = add i32 %523, 1
  %525 = zext i32 %524 to i64
  store i64 %525, i64* %RAX, align 8, !tbaa !2428
  %526 = icmp eq i32 %523, -1
  %527 = icmp eq i32 %524, 0
  %528 = or i1 %526, %527
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %144, align 1, !tbaa !2434
  %530 = and i32 %524, 255
  %531 = tail call i32 @llvm.ctpop.i32(i32 %530) #8
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  %534 = xor i8 %533, 1
  store i8 %534, i8* %145, align 1, !tbaa !2447
  %535 = xor i32 %523, %524
  %536 = lshr i32 %535, 4
  %537 = trunc i32 %536 to i8
  %538 = and i8 %537, 1
  store i8 %538, i8* %146, align 1, !tbaa !2448
  %539 = zext i1 %527 to i8
  store i8 %539, i8* %147, align 1, !tbaa !2449
  %540 = lshr i32 %524, 31
  %541 = trunc i32 %540 to i8
  store i8 %541, i8* %148, align 1, !tbaa !2450
  %542 = lshr i32 %523, 31
  %543 = xor i32 %540, %542
  %544 = add nuw nsw i32 %543, %540
  %545 = icmp eq i32 %544, 2
  %546 = zext i1 %545 to i8
  store i8 %546, i8* %149, align 1, !tbaa !2451
  %547 = sitofp i32 %524 to double
  store double %547, double* %53, align 1, !tbaa !2452
  %548 = fmul double %521, %547
  store double %548, double* %48, align 1, !tbaa !2452
  %549 = add i64 %314, 24
  store i64 %549, i64* %PC, align 8
  %550 = load i32, i32* %286, align 4
  %551 = zext i32 %550 to i64
  store i64 %551, i64* %RAX, align 8, !tbaa !2428
  %552 = sitofp i32 %550 to double
  store double %552, double* %53, align 1, !tbaa !2452
  %553 = fdiv double %548, %552
  store double %553, double* %48, align 1, !tbaa !2452
  %554 = add i64 %278, 24
  %555 = add i64 %314, 36
  store i64 %555, i64* %PC, align 8
  %556 = inttoptr i64 %554 to i64*
  %557 = load i64, i64* %556, align 8
  store i64 %557, i64* %RCX, align 8, !tbaa !2428
  %558 = add i64 %314, 40
  store i64 %558, i64* %PC, align 8
  %559 = load i32, i32* %518, align 4
  %560 = sext i32 %559 to i64
  %561 = shl nsw i64 %560, 13
  store i64 %561, i64* %RDX, align 8, !tbaa !2428
  %562 = lshr i64 %560, 50
  %563 = and i64 %562, 1
  %564 = add i64 %561, %557
  store i64 %564, i64* %RCX, align 8, !tbaa !2428
  %565 = icmp ult i64 %564, %557
  %566 = icmp ult i64 %564, %561
  %567 = or i1 %565, %566
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %144, align 1, !tbaa !2434
  %569 = trunc i64 %564 to i32
  %570 = and i32 %569, 255
  %571 = tail call i32 @llvm.ctpop.i32(i32 %570) #8
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  %574 = xor i8 %573, 1
  store i8 %574, i8* %145, align 1, !tbaa !2447
  %575 = xor i64 %557, %564
  %576 = lshr i64 %575, 4
  %577 = trunc i64 %576 to i8
  %578 = and i8 %577, 1
  store i8 %578, i8* %146, align 1, !tbaa !2448
  %579 = icmp eq i64 %564, 0
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %147, align 1, !tbaa !2449
  %581 = lshr i64 %564, 63
  %582 = trunc i64 %581 to i8
  store i8 %582, i8* %148, align 1, !tbaa !2450
  %583 = lshr i64 %557, 63
  %584 = xor i64 %581, %583
  %585 = xor i64 %581, %563
  %586 = add nuw nsw i64 %584, %585
  %587 = icmp eq i64 %586, 2
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %149, align 1, !tbaa !2451
  %589 = load i64, i64* %RBP, align 8
  %590 = add i64 %589, -56
  %591 = add i64 %314, 51
  store i64 %591, i64* %PC, align 8
  %592 = inttoptr i64 %590 to i32*
  %593 = load i32, i32* %592, align 4
  %594 = sext i32 %593 to i64
  store i64 %594, i64* %RDX, align 8, !tbaa !2428
  %595 = shl nsw i64 %594, 3
  %596 = add i64 %595, %564
  %597 = add i64 %314, 56
  store i64 %597, i64* %PC, align 8
  %598 = inttoptr i64 %596 to double*
  store double %553, double* %598, align 8
  %599 = load i64, i64* %RBP, align 8
  %600 = add i64 %599, -56
  %601 = load i64, i64* %PC, align 8
  %602 = add i64 %601, 3
  store i64 %602, i64* %PC, align 8
  %603 = inttoptr i64 %600 to i32*
  %604 = load i32, i32* %603, align 4
  %605 = add i32 %604, 1
  %606 = zext i32 %605 to i64
  store i64 %606, i64* %RAX, align 8, !tbaa !2428
  %607 = icmp eq i32 %604, -1
  %608 = icmp eq i32 %605, 0
  %609 = or i1 %607, %608
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %144, align 1, !tbaa !2434
  %611 = and i32 %605, 255
  %612 = tail call i32 @llvm.ctpop.i32(i32 %611) #8
  %613 = trunc i32 %612 to i8
  %614 = and i8 %613, 1
  %615 = xor i8 %614, 1
  store i8 %615, i8* %145, align 1, !tbaa !2447
  %616 = xor i32 %604, %605
  %617 = lshr i32 %616, 4
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  store i8 %619, i8* %146, align 1, !tbaa !2448
  %620 = zext i1 %608 to i8
  store i8 %620, i8* %147, align 1, !tbaa !2449
  %621 = lshr i32 %605, 31
  %622 = trunc i32 %621 to i8
  store i8 %622, i8* %148, align 1, !tbaa !2450
  %623 = lshr i32 %604, 31
  %624 = xor i32 %621, %623
  %625 = add nuw nsw i32 %624, %621
  %626 = icmp eq i32 %625, 2
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %149, align 1, !tbaa !2451
  %628 = add i64 %601, 9
  store i64 %628, i64* %PC, align 8
  store i32 %605, i32* %603, align 4
  %629 = load i64, i64* %PC, align 8
  %630 = add i64 %629, -77
  store i64 %630, i64* %PC, align 8, !tbaa !2428
  br label %block_400c1b

block_400b8c:                                     ; preds = %block_400bee, %block_400b20
  %631 = phi i64 [ %179, %block_400bee ], [ %.pre, %block_400b20 ]
  %632 = load i64, i64* %RBP, align 8
  %633 = add i64 %632, -52
  %634 = add i64 %631, 3
  store i64 %634, i64* %PC, align 8
  %635 = inttoptr i64 %633 to i32*
  %636 = load i32, i32* %635, align 4
  %637 = zext i32 %636 to i64
  store i64 %637, i64* %RAX, align 8, !tbaa !2428
  %638 = add i64 %632, -20
  %639 = add i64 %631, 6
  store i64 %639, i64* %PC, align 8
  %640 = inttoptr i64 %638 to i32*
  %641 = load i32, i32* %640, align 4
  %642 = sub i32 %636, %641
  %643 = icmp ult i32 %636, %641
  %644 = zext i1 %643 to i8
  store i8 %644, i8* %144, align 1, !tbaa !2434
  %645 = and i32 %642, 255
  %646 = tail call i32 @llvm.ctpop.i32(i32 %645) #8
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  %649 = xor i8 %648, 1
  store i8 %649, i8* %145, align 1, !tbaa !2447
  %650 = xor i32 %641, %636
  %651 = xor i32 %650, %642
  %652 = lshr i32 %651, 4
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  store i8 %654, i8* %146, align 1, !tbaa !2448
  %655 = icmp eq i32 %642, 0
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %147, align 1, !tbaa !2449
  %657 = lshr i32 %642, 31
  %658 = trunc i32 %657 to i8
  store i8 %658, i8* %148, align 1, !tbaa !2450
  %659 = lshr i32 %636, 31
  %660 = lshr i32 %641, 31
  %661 = xor i32 %660, %659
  %662 = xor i32 %657, %659
  %663 = add nuw nsw i32 %662, %661
  %664 = icmp eq i32 %663, 2
  %665 = zext i1 %664 to i8
  store i8 %665, i8* %149, align 1, !tbaa !2451
  %666 = icmp ne i8 %658, 0
  %667 = xor i1 %666, %664
  %.v = select i1 %667, i64 12, i64 117
  %668 = add i64 %631, %.v
  store i64 %668, i64* %PC, align 8, !tbaa !2428
  br i1 %667, label %block_400b98, label %block_400c01

block_400c08:                                     ; preds = %block_400c01, %block_400c6d
  %669 = phi i64 [ %.pre4, %block_400c01 ], [ %208, %block_400c6d ]
  %670 = load i64, i64* %RBP, align 8
  %671 = add i64 %670, -52
  %672 = add i64 %669, 3
  store i64 %672, i64* %PC, align 8
  %673 = inttoptr i64 %671 to i32*
  %674 = load i32, i32* %673, align 4
  %675 = zext i32 %674 to i64
  store i64 %675, i64* %RAX, align 8, !tbaa !2428
  %676 = add i64 %670, -28
  %677 = add i64 %669, 6
  store i64 %677, i64* %PC, align 8
  %678 = inttoptr i64 %676 to i32*
  %679 = load i32, i32* %678, align 4
  %680 = sub i32 %674, %679
  %681 = icmp ult i32 %674, %679
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %144, align 1, !tbaa !2434
  %683 = and i32 %680, 255
  %684 = tail call i32 @llvm.ctpop.i32(i32 %683) #8
  %685 = trunc i32 %684 to i8
  %686 = and i8 %685, 1
  %687 = xor i8 %686, 1
  store i8 %687, i8* %145, align 1, !tbaa !2447
  %688 = xor i32 %679, %674
  %689 = xor i32 %688, %680
  %690 = lshr i32 %689, 4
  %691 = trunc i32 %690 to i8
  %692 = and i8 %691, 1
  store i8 %692, i8* %146, align 1, !tbaa !2448
  %693 = icmp eq i32 %680, 0
  %694 = zext i1 %693 to i8
  store i8 %694, i8* %147, align 1, !tbaa !2449
  %695 = lshr i32 %680, 31
  %696 = trunc i32 %695 to i8
  store i8 %696, i8* %148, align 1, !tbaa !2450
  %697 = lshr i32 %674, 31
  %698 = lshr i32 %679, 31
  %699 = xor i32 %698, %697
  %700 = xor i32 %695, %697
  %701 = add nuw nsw i32 %700, %699
  %702 = icmp eq i32 %701, 2
  %703 = zext i1 %702 to i8
  store i8 %703, i8* %149, align 1, !tbaa !2451
  %704 = icmp ne i8 %696, 0
  %705 = xor i1 %704, %702
  %.v11 = select i1 %705, i64 12, i64 120
  %706 = add i64 %669, %.v11
  store i64 %706, i64* %PC, align 8, !tbaa !2428
  br i1 %705, label %block_400c14, label %block_400c80

block_400ca6:                                     ; preds = %block_400c9a
  %707 = add i64 %353, 3
  store i64 %707, i64* %PC, align 8
  %708 = inttoptr i64 %354 to i32*
  %709 = load i32, i32* %708, align 4
  %710 = zext i32 %709 to i64
  store i64 %710, i64* %RAX, align 8, !tbaa !2428
  %711 = sitofp i32 %709 to double
  store double %711, double* %48, align 1, !tbaa !2452
  %712 = add i64 %353, 10
  store i64 %712, i64* %PC, align 8
  %713 = load i32, i32* %320, align 4
  %714 = add i32 %713, 3
  %715 = zext i32 %714 to i64
  store i64 %715, i64* %RAX, align 8, !tbaa !2428
  %716 = icmp ugt i32 %713, -4
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %144, align 1, !tbaa !2434
  %718 = and i32 %714, 255
  %719 = tail call i32 @llvm.ctpop.i32(i32 %718) #8
  %720 = trunc i32 %719 to i8
  %721 = and i8 %720, 1
  %722 = xor i8 %721, 1
  store i8 %722, i8* %145, align 1, !tbaa !2447
  %723 = xor i32 %713, %714
  %724 = lshr i32 %723, 4
  %725 = trunc i32 %724 to i8
  %726 = and i8 %725, 1
  store i8 %726, i8* %146, align 1, !tbaa !2448
  %727 = icmp eq i32 %714, 0
  %728 = zext i1 %727 to i8
  store i8 %728, i8* %147, align 1, !tbaa !2449
  %729 = lshr i32 %714, 31
  %730 = trunc i32 %729 to i8
  store i8 %730, i8* %148, align 1, !tbaa !2450
  %731 = lshr i32 %713, 31
  %732 = xor i32 %729, %731
  %733 = add nuw nsw i32 %732, %729
  %734 = icmp eq i32 %733, 2
  %735 = zext i1 %734 to i8
  store i8 %735, i8* %149, align 1, !tbaa !2451
  %736 = sitofp i32 %714 to double
  store double %736, double* %53, align 1, !tbaa !2452
  %737 = fmul double %711, %736
  store double %737, double* %48, align 1, !tbaa !2452
  %738 = add i64 %317, -32
  %739 = add i64 %353, 24
  store i64 %739, i64* %PC, align 8
  %740 = inttoptr i64 %738 to i32*
  %741 = load i32, i32* %740, align 4
  %742 = zext i32 %741 to i64
  store i64 %742, i64* %RAX, align 8, !tbaa !2428
  %743 = sitofp i32 %741 to double
  store double %743, double* %53, align 1, !tbaa !2452
  %744 = fdiv double %737, %743
  store double %744, double* %48, align 1, !tbaa !2452
  %745 = add i64 %317, 32
  %746 = add i64 %353, 36
  store i64 %746, i64* %PC, align 8
  %747 = inttoptr i64 %745 to i64*
  %748 = load i64, i64* %747, align 8
  store i64 %748, i64* %RCX, align 8, !tbaa !2428
  %749 = add i64 %353, 40
  store i64 %749, i64* %PC, align 8
  %750 = load i32, i32* %708, align 4
  %751 = sext i32 %750 to i64
  %752 = shl nsw i64 %751, 13
  store i64 %752, i64* %RDX, align 8, !tbaa !2428
  %753 = lshr i64 %751, 50
  %754 = and i64 %753, 1
  %755 = add i64 %752, %748
  store i64 %755, i64* %RCX, align 8, !tbaa !2428
  %756 = icmp ult i64 %755, %748
  %757 = icmp ult i64 %755, %752
  %758 = or i1 %756, %757
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %144, align 1, !tbaa !2434
  %760 = trunc i64 %755 to i32
  %761 = and i32 %760, 255
  %762 = tail call i32 @llvm.ctpop.i32(i32 %761) #8
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  %765 = xor i8 %764, 1
  store i8 %765, i8* %145, align 1, !tbaa !2447
  %766 = xor i64 %748, %755
  %767 = lshr i64 %766, 4
  %768 = trunc i64 %767 to i8
  %769 = and i8 %768, 1
  store i8 %769, i8* %146, align 1, !tbaa !2448
  %770 = icmp eq i64 %755, 0
  %771 = zext i1 %770 to i8
  store i8 %771, i8* %147, align 1, !tbaa !2449
  %772 = lshr i64 %755, 63
  %773 = trunc i64 %772 to i8
  store i8 %773, i8* %148, align 1, !tbaa !2450
  %774 = lshr i64 %748, 63
  %775 = xor i64 %772, %774
  %776 = xor i64 %772, %754
  %777 = add nuw nsw i64 %775, %776
  %778 = icmp eq i64 %777, 2
  %779 = zext i1 %778 to i8
  store i8 %779, i8* %149, align 1, !tbaa !2451
  %780 = load i64, i64* %RBP, align 8
  %781 = add i64 %780, -56
  %782 = add i64 %353, 51
  store i64 %782, i64* %PC, align 8
  %783 = inttoptr i64 %781 to i32*
  %784 = load i32, i32* %783, align 4
  %785 = sext i32 %784 to i64
  store i64 %785, i64* %RDX, align 8, !tbaa !2428
  %786 = shl nsw i64 %785, 3
  %787 = add i64 %786, %755
  %788 = add i64 %353, 56
  store i64 %788, i64* %PC, align 8
  %789 = inttoptr i64 %787 to double*
  store double %744, double* %789, align 8
  %790 = load i64, i64* %RBP, align 8
  %791 = add i64 %790, -56
  %792 = load i64, i64* %PC, align 8
  %793 = add i64 %792, 3
  store i64 %793, i64* %PC, align 8
  %794 = inttoptr i64 %791 to i32*
  %795 = load i32, i32* %794, align 4
  %796 = add i32 %795, 1
  %797 = zext i32 %796 to i64
  store i64 %797, i64* %RAX, align 8, !tbaa !2428
  %798 = icmp eq i32 %795, -1
  %799 = icmp eq i32 %796, 0
  %800 = or i1 %798, %799
  %801 = zext i1 %800 to i8
  store i8 %801, i8* %144, align 1, !tbaa !2434
  %802 = and i32 %796, 255
  %803 = tail call i32 @llvm.ctpop.i32(i32 %802) #8
  %804 = trunc i32 %803 to i8
  %805 = and i8 %804, 1
  %806 = xor i8 %805, 1
  store i8 %806, i8* %145, align 1, !tbaa !2447
  %807 = xor i32 %795, %796
  %808 = lshr i32 %807, 4
  %809 = trunc i32 %808 to i8
  %810 = and i8 %809, 1
  store i8 %810, i8* %146, align 1, !tbaa !2448
  %811 = zext i1 %799 to i8
  store i8 %811, i8* %147, align 1, !tbaa !2449
  %812 = lshr i32 %796, 31
  %813 = trunc i32 %812 to i8
  store i8 %813, i8* %148, align 1, !tbaa !2450
  %814 = lshr i32 %795, 31
  %815 = xor i32 %812, %814
  %816 = add nuw nsw i32 %815, %812
  %817 = icmp eq i32 %816, 2
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %149, align 1, !tbaa !2451
  %819 = add i64 %792, 9
  store i64 %819, i64* %PC, align 8
  store i32 %796, i32* %794, align 4
  %820 = load i64, i64* %PC, align 8
  %821 = add i64 %820, -77
  store i64 %821, i64* %PC, align 8, !tbaa !2428
  br label %block_400c9a

block_400c87:                                     ; preds = %block_400c80, %block_400cec
  %822 = phi i64 [ %.pre6, %block_400c80 ], [ %237, %block_400cec ]
  %823 = load i64, i64* %RBP, align 8
  %824 = add i64 %823, -52
  %825 = add i64 %822, 3
  store i64 %825, i64* %PC, align 8
  %826 = inttoptr i64 %824 to i32*
  %827 = load i32, i32* %826, align 4
  %828 = zext i32 %827 to i64
  store i64 %828, i64* %RAX, align 8, !tbaa !2428
  %829 = add i64 %823, -32
  %830 = add i64 %822, 6
  store i64 %830, i64* %PC, align 8
  %831 = inttoptr i64 %829 to i32*
  %832 = load i32, i32* %831, align 4
  %833 = sub i32 %827, %832
  %834 = icmp ult i32 %827, %832
  %835 = zext i1 %834 to i8
  store i8 %835, i8* %144, align 1, !tbaa !2434
  %836 = and i32 %833, 255
  %837 = tail call i32 @llvm.ctpop.i32(i32 %836) #8
  %838 = trunc i32 %837 to i8
  %839 = and i8 %838, 1
  %840 = xor i8 %839, 1
  store i8 %840, i8* %145, align 1, !tbaa !2447
  %841 = xor i32 %832, %827
  %842 = xor i32 %841, %833
  %843 = lshr i32 %842, 4
  %844 = trunc i32 %843 to i8
  %845 = and i8 %844, 1
  store i8 %845, i8* %146, align 1, !tbaa !2448
  %846 = icmp eq i32 %833, 0
  %847 = zext i1 %846 to i8
  store i8 %847, i8* %147, align 1, !tbaa !2449
  %848 = lshr i32 %833, 31
  %849 = trunc i32 %848 to i8
  store i8 %849, i8* %148, align 1, !tbaa !2450
  %850 = lshr i32 %827, 31
  %851 = lshr i32 %832, 31
  %852 = xor i32 %851, %850
  %853 = xor i32 %848, %850
  %854 = add nuw nsw i32 %853, %852
  %855 = icmp eq i32 %854, 2
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %149, align 1, !tbaa !2451
  %857 = icmp ne i8 %849, 0
  %858 = xor i1 %857, %855
  %.v13 = select i1 %858, i64 12, i64 120
  %859 = add i64 %822, %.v13
  store i64 %859, i64* %PC, align 8, !tbaa !2428
  br i1 %858, label %block_400c93, label %block_400cff

block_400d25:                                     ; preds = %block_400d19
  %860 = add i64 %392, 3
  store i64 %860, i64* %PC, align 8
  %861 = inttoptr i64 %393 to i32*
  %862 = load i32, i32* %861, align 4
  %863 = zext i32 %862 to i64
  store i64 %863, i64* %RAX, align 8, !tbaa !2428
  %864 = sitofp i32 %862 to double
  store double %864, double* %48, align 1, !tbaa !2452
  %865 = add i64 %392, 10
  store i64 %865, i64* %PC, align 8
  %866 = load i32, i32* %359, align 4
  %867 = add i32 %866, 2
  %868 = zext i32 %867 to i64
  store i64 %868, i64* %RAX, align 8, !tbaa !2428
  %869 = icmp ugt i32 %866, -3
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %144, align 1, !tbaa !2434
  %871 = and i32 %867, 255
  %872 = tail call i32 @llvm.ctpop.i32(i32 %871) #8
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  %875 = xor i8 %874, 1
  store i8 %875, i8* %145, align 1, !tbaa !2447
  %876 = xor i32 %866, %867
  %877 = lshr i32 %876, 4
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  store i8 %879, i8* %146, align 1, !tbaa !2448
  %880 = icmp eq i32 %867, 0
  %881 = zext i1 %880 to i8
  store i8 %881, i8* %147, align 1, !tbaa !2449
  %882 = lshr i32 %867, 31
  %883 = trunc i32 %882 to i8
  store i8 %883, i8* %148, align 1, !tbaa !2450
  %884 = lshr i32 %866, 31
  %885 = xor i32 %882, %884
  %886 = add nuw nsw i32 %885, %882
  %887 = icmp eq i32 %886, 2
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %149, align 1, !tbaa !2451
  %889 = sitofp i32 %867 to double
  store double %889, double* %53, align 1, !tbaa !2452
  %890 = fmul double %864, %889
  store double %890, double* %48, align 1, !tbaa !2452
  %891 = add i64 %356, -28
  %892 = add i64 %392, 24
  store i64 %892, i64* %PC, align 8
  %893 = inttoptr i64 %891 to i32*
  %894 = load i32, i32* %893, align 4
  %895 = zext i32 %894 to i64
  store i64 %895, i64* %RAX, align 8, !tbaa !2428
  %896 = sitofp i32 %894 to double
  store double %896, double* %53, align 1, !tbaa !2452
  %897 = fdiv double %890, %896
  store double %897, double* %48, align 1, !tbaa !2452
  %898 = add i64 %356, 40
  %899 = add i64 %392, 36
  store i64 %899, i64* %PC, align 8
  %900 = inttoptr i64 %898 to i64*
  %901 = load i64, i64* %900, align 8
  store i64 %901, i64* %RCX, align 8, !tbaa !2428
  %902 = add i64 %392, 40
  store i64 %902, i64* %PC, align 8
  %903 = load i32, i32* %861, align 4
  %904 = sext i32 %903 to i64
  %905 = shl nsw i64 %904, 13
  store i64 %905, i64* %RDX, align 8, !tbaa !2428
  %906 = lshr i64 %904, 50
  %907 = and i64 %906, 1
  %908 = add i64 %905, %901
  store i64 %908, i64* %RCX, align 8, !tbaa !2428
  %909 = icmp ult i64 %908, %901
  %910 = icmp ult i64 %908, %905
  %911 = or i1 %909, %910
  %912 = zext i1 %911 to i8
  store i8 %912, i8* %144, align 1, !tbaa !2434
  %913 = trunc i64 %908 to i32
  %914 = and i32 %913, 255
  %915 = tail call i32 @llvm.ctpop.i32(i32 %914) #8
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  %918 = xor i8 %917, 1
  store i8 %918, i8* %145, align 1, !tbaa !2447
  %919 = xor i64 %901, %908
  %920 = lshr i64 %919, 4
  %921 = trunc i64 %920 to i8
  %922 = and i8 %921, 1
  store i8 %922, i8* %146, align 1, !tbaa !2448
  %923 = icmp eq i64 %908, 0
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %147, align 1, !tbaa !2449
  %925 = lshr i64 %908, 63
  %926 = trunc i64 %925 to i8
  store i8 %926, i8* %148, align 1, !tbaa !2450
  %927 = lshr i64 %901, 63
  %928 = xor i64 %925, %927
  %929 = xor i64 %925, %907
  %930 = add nuw nsw i64 %928, %929
  %931 = icmp eq i64 %930, 2
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %149, align 1, !tbaa !2451
  %933 = load i64, i64* %RBP, align 8
  %934 = add i64 %933, -56
  %935 = add i64 %392, 51
  store i64 %935, i64* %PC, align 8
  %936 = inttoptr i64 %934 to i32*
  %937 = load i32, i32* %936, align 4
  %938 = sext i32 %937 to i64
  store i64 %938, i64* %RDX, align 8, !tbaa !2428
  %939 = shl nsw i64 %938, 3
  %940 = add i64 %939, %908
  %941 = add i64 %392, 56
  store i64 %941, i64* %PC, align 8
  %942 = inttoptr i64 %940 to double*
  store double %897, double* %942, align 8
  %943 = load i64, i64* %RBP, align 8
  %944 = add i64 %943, 48
  %945 = load i64, i64* %PC, align 8
  %946 = add i64 %945, 4
  store i64 %946, i64* %PC, align 8
  %947 = inttoptr i64 %944 to i64*
  %948 = load i64, i64* %947, align 8
  store i64 %948, i64* %RCX, align 8, !tbaa !2428
  %949 = add i64 %943, -52
  %950 = add i64 %945, 8
  store i64 %950, i64* %PC, align 8
  %951 = inttoptr i64 %949 to i32*
  %952 = load i32, i32* %951, align 4
  %953 = sext i32 %952 to i64
  %954 = shl nsw i64 %953, 13
  store i64 %954, i64* %RDX, align 8, !tbaa !2428
  %955 = lshr i64 %953, 50
  %956 = and i64 %955, 1
  %957 = add i64 %954, %948
  store i64 %957, i64* %RCX, align 8, !tbaa !2428
  %958 = icmp ult i64 %957, %948
  %959 = icmp ult i64 %957, %954
  %960 = or i1 %958, %959
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %144, align 1, !tbaa !2434
  %962 = trunc i64 %957 to i32
  %963 = and i32 %962, 255
  %964 = tail call i32 @llvm.ctpop.i32(i32 %963) #8
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  %967 = xor i8 %966, 1
  store i8 %967, i8* %145, align 1, !tbaa !2447
  %968 = xor i64 %948, %957
  %969 = lshr i64 %968, 4
  %970 = trunc i64 %969 to i8
  %971 = and i8 %970, 1
  store i8 %971, i8* %146, align 1, !tbaa !2448
  %972 = icmp eq i64 %957, 0
  %973 = zext i1 %972 to i8
  store i8 %973, i8* %147, align 1, !tbaa !2449
  %974 = lshr i64 %957, 63
  %975 = trunc i64 %974 to i8
  store i8 %975, i8* %148, align 1, !tbaa !2450
  %976 = lshr i64 %948, 63
  %977 = xor i64 %974, %976
  %978 = xor i64 %974, %956
  %979 = add nuw nsw i64 %977, %978
  %980 = icmp eq i64 %979, 2
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %149, align 1, !tbaa !2451
  %982 = add i64 %943, -56
  %983 = add i64 %945, 19
  store i64 %983, i64* %PC, align 8
  %984 = inttoptr i64 %982 to i32*
  %985 = load i32, i32* %984, align 4
  %986 = sext i32 %985 to i64
  store i64 %986, i64* %RDX, align 8, !tbaa !2428
  %987 = shl nsw i64 %986, 3
  %988 = add i64 %987, %957
  %989 = add i64 %945, 24
  store i64 %989, i64* %PC, align 8
  %990 = load i64, i64* %49, align 1
  %991 = inttoptr i64 %988 to i64*
  store i64 %990, i64* %991, align 8
  %992 = load i64, i64* %RBP, align 8
  %993 = add i64 %992, -56
  %994 = load i64, i64* %PC, align 8
  %995 = add i64 %994, 3
  store i64 %995, i64* %PC, align 8
  %996 = inttoptr i64 %993 to i32*
  %997 = load i32, i32* %996, align 4
  %998 = add i32 %997, 1
  %999 = zext i32 %998 to i64
  store i64 %999, i64* %RAX, align 8, !tbaa !2428
  %1000 = icmp eq i32 %997, -1
  %1001 = icmp eq i32 %998, 0
  %1002 = or i1 %1000, %1001
  %1003 = zext i1 %1002 to i8
  store i8 %1003, i8* %144, align 1, !tbaa !2434
  %1004 = and i32 %998, 255
  %1005 = tail call i32 @llvm.ctpop.i32(i32 %1004) #8
  %1006 = trunc i32 %1005 to i8
  %1007 = and i8 %1006, 1
  %1008 = xor i8 %1007, 1
  store i8 %1008, i8* %145, align 1, !tbaa !2447
  %1009 = xor i32 %997, %998
  %1010 = lshr i32 %1009, 4
  %1011 = trunc i32 %1010 to i8
  %1012 = and i8 %1011, 1
  store i8 %1012, i8* %146, align 1, !tbaa !2448
  %1013 = zext i1 %1001 to i8
  store i8 %1013, i8* %147, align 1, !tbaa !2449
  %1014 = lshr i32 %998, 31
  %1015 = trunc i32 %1014 to i8
  store i8 %1015, i8* %148, align 1, !tbaa !2450
  %1016 = lshr i32 %997, 31
  %1017 = xor i32 %1014, %1016
  %1018 = add nuw nsw i32 %1017, %1014
  %1019 = icmp eq i32 %1018, 2
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %149, align 1, !tbaa !2451
  %1021 = add i64 %994, 9
  store i64 %1021, i64* %PC, align 8
  store i32 %998, i32* %996, align 4
  %1022 = load i64, i64* %PC, align 8
  %1023 = add i64 %1022, -101
  store i64 %1023, i64* %PC, align 8, !tbaa !2428
  br label %block_400d19

block_400d06:                                     ; preds = %block_400d83, %block_400cff
  %1024 = phi i64 [ %1090, %block_400d83 ], [ %.pre8, %block_400cff ]
  %1025 = load i64, i64* %RBP, align 8
  %1026 = add i64 %1025, -52
  %1027 = add i64 %1024, 3
  store i64 %1027, i64* %PC, align 8
  %1028 = inttoptr i64 %1026 to i32*
  %1029 = load i32, i32* %1028, align 4
  %1030 = zext i32 %1029 to i64
  store i64 %1030, i64* %RAX, align 8, !tbaa !2428
  %1031 = add i64 %1025, -20
  %1032 = add i64 %1024, 6
  store i64 %1032, i64* %PC, align 8
  %1033 = inttoptr i64 %1031 to i32*
  %1034 = load i32, i32* %1033, align 4
  %1035 = sub i32 %1029, %1034
  %1036 = icmp ult i32 %1029, %1034
  %1037 = zext i1 %1036 to i8
  store i8 %1037, i8* %144, align 1, !tbaa !2434
  %1038 = and i32 %1035, 255
  %1039 = tail call i32 @llvm.ctpop.i32(i32 %1038) #8
  %1040 = trunc i32 %1039 to i8
  %1041 = and i8 %1040, 1
  %1042 = xor i8 %1041, 1
  store i8 %1042, i8* %145, align 1, !tbaa !2447
  %1043 = xor i32 %1034, %1029
  %1044 = xor i32 %1043, %1035
  %1045 = lshr i32 %1044, 4
  %1046 = trunc i32 %1045 to i8
  %1047 = and i8 %1046, 1
  store i8 %1047, i8* %146, align 1, !tbaa !2448
  %1048 = icmp eq i32 %1035, 0
  %1049 = zext i1 %1048 to i8
  store i8 %1049, i8* %147, align 1, !tbaa !2449
  %1050 = lshr i32 %1035, 31
  %1051 = trunc i32 %1050 to i8
  store i8 %1051, i8* %148, align 1, !tbaa !2450
  %1052 = lshr i32 %1029, 31
  %1053 = lshr i32 %1034, 31
  %1054 = xor i32 %1053, %1052
  %1055 = xor i32 %1050, %1052
  %1056 = add nuw nsw i32 %1055, %1054
  %1057 = icmp eq i32 %1056, 2
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %149, align 1, !tbaa !2451
  %1059 = icmp ne i8 %1051, 0
  %1060 = xor i1 %1059, %1057
  %.v15 = select i1 %1060, i64 12, i64 144
  %1061 = add i64 %1024, %.v15
  store i64 %1061, i64* %PC, align 8, !tbaa !2428
  br i1 %1060, label %block_400d12, label %block_400d96

block_400d83:                                     ; preds = %block_400d19
  %1062 = add i64 %392, 8
  store i64 %1062, i64* %PC, align 8
  %1063 = inttoptr i64 %393 to i32*
  %1064 = load i32, i32* %1063, align 4
  %1065 = add i32 %1064, 1
  %1066 = zext i32 %1065 to i64
  store i64 %1066, i64* %RAX, align 8, !tbaa !2428
  %1067 = icmp eq i32 %1064, -1
  %1068 = icmp eq i32 %1065, 0
  %1069 = or i1 %1067, %1068
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %144, align 1, !tbaa !2434
  %1071 = and i32 %1065, 255
  %1072 = tail call i32 @llvm.ctpop.i32(i32 %1071) #8
  %1073 = trunc i32 %1072 to i8
  %1074 = and i8 %1073, 1
  %1075 = xor i8 %1074, 1
  store i8 %1075, i8* %145, align 1, !tbaa !2447
  %1076 = xor i32 %1064, %1065
  %1077 = lshr i32 %1076, 4
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  store i8 %1079, i8* %146, align 1, !tbaa !2448
  %1080 = zext i1 %1068 to i8
  store i8 %1080, i8* %147, align 1, !tbaa !2449
  %1081 = lshr i32 %1065, 31
  %1082 = trunc i32 %1081 to i8
  store i8 %1082, i8* %148, align 1, !tbaa !2450
  %1083 = lshr i32 %1064, 31
  %1084 = xor i32 %1081, %1083
  %1085 = add nuw nsw i32 %1084, %1081
  %1086 = icmp eq i32 %1085, 2
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %149, align 1, !tbaa !2451
  %1088 = add i64 %392, 14
  store i64 %1088, i64* %PC, align 8
  store i32 %1065, i32* %1063, align 4
  %1089 = load i64, i64* %PC, align 8
  %1090 = add i64 %1089, -139
  store i64 %1090, i64* %PC, align 8, !tbaa !2428
  br label %block_400d06

block_400c01:                                     ; preds = %block_400b8c
  %1091 = add i64 %668, 7
  store i64 %1091, i64* %PC, align 8
  store i32 0, i32* %635, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_400c08

block_400c80:                                     ; preds = %block_400c08
  %1092 = add i64 %706, 7
  store i64 %1092, i64* %PC, align 8
  store i32 0, i32* %673, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_400c87
}

; Function Attrs: noinline
define %struct.Memory* @sub_401550___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401550:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0
  %R13D = bitcast %union.anon* %4 to i32*
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %R13 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %5 = load i64, i64* %R15, align 8
  %6 = add i64 %1, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %RSP, align 8, !tbaa !2428
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  %10 = load i64, i64* %R14, align 8
  %11 = load i64, i64* %PC, align 8
  %12 = add i64 %11, 2
  store i64 %12, i64* %PC, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %10, i64* %14, align 8
  %15 = load i64, i64* %RDX, align 8
  %16 = load i64, i64* %PC, align 8
  store i64 %15, i64* %R15, align 8, !tbaa !2428
  %17 = load i64, i64* %R13, align 8
  %18 = add i64 %16, 5
  store i64 %18, i64* %PC, align 8
  %19 = add i64 %7, -24
  %20 = inttoptr i64 %19 to i64*
  store i64 %17, i64* %20, align 8
  %21 = load i64, i64* %R12, align 8
  %22 = load i64, i64* %PC, align 8
  %23 = add i64 %22, 2
  store i64 %23, i64* %PC, align 8
  %24 = add i64 %7, -32
  %25 = inttoptr i64 %24 to i64*
  store i64 %21, i64* %25, align 8
  %26 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%seg_601df0__init_array_type* @seg_601df0__init_array to i64), i64* %R12, align 8, !tbaa !2428
  %27 = load i64, i64* %RBP, align 8
  %28 = add i64 %26, 8
  store i64 %28, i64* %PC, align 8
  %29 = add i64 %7, -40
  %30 = inttoptr i64 %29 to i64*
  store i64 %27, i64* %30, align 8
  %31 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_601df0__init_array_type* @seg_601df0__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2428
  %32 = load i64, i64* %RBX, align 8
  %33 = add i64 %31, 8
  store i64 %33, i64* %PC, align 8
  %34 = add i64 %7, -48
  %35 = inttoptr i64 %34 to i64*
  store i64 %32, i64* %35, align 8
  %36 = load i32, i32* %EDI, align 4
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* %PC, align 8
  store i64 %37, i64* %R13, align 8, !tbaa !2428
  %39 = load i64, i64* %RSI, align 8
  store i64 %39, i64* %R14, align 8, !tbaa !2428
  %40 = load i64, i64* %RBP, align 8
  %41 = load i64, i64* %R12, align 8
  %42 = sub i64 %40, %41
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %49 = lshr i64 %42, 2
  %50 = trunc i64 %49 to i8
  %51 = and i8 %50, 1
  %52 = ashr i64 %42, 3
  store i64 %52, i64* %RBP, align 8, !tbaa !2428
  store i8 %51, i8* %43, align 1, !tbaa !2454
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #8
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  store i8 %58, i8* %44, align 1, !tbaa !2454
  store i8 0, i8* %45, align 1, !tbaa !2454
  %59 = icmp eq i64 %52, 0
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %46, align 1, !tbaa !2454
  %61 = lshr i64 %52, 63
  %62 = trunc i64 %61 to i8
  store i8 %62, i8* %47, align 1, !tbaa !2454
  store i8 0, i8* %48, align 1, !tbaa !2454
  %63 = add i64 %38, -4059
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_400590__init_proc_renamed_(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
  %68 = load i64, i64* %RBP, align 8
  %69 = load i64, i64* %PC, align 8
  store i8 0, i8* %43, align 1, !tbaa !2434
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #8
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %44, align 1, !tbaa !2447
  %76 = icmp eq i64 %68, 0
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %46, align 1, !tbaa !2449
  %78 = lshr i64 %68, 63
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %47, align 1, !tbaa !2450
  store i8 0, i8* %48, align 1, !tbaa !2451
  store i8 0, i8* %45, align 1, !tbaa !2448
  %.v = select i1 %76, i64 37, i64 5
  %80 = add i64 %69, %.v
  store i64 %80, i64* %PC, align 8, !tbaa !2428
  br i1 %76, label %block_4015a6, label %block_401586

block_4015a6:                                     ; preds = %block_401590, %block_401550
  %81 = phi i64 [ %80, %block_401550 ], [ %179, %block_401590 ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_401550 ], [ %149, %block_401590 ]
  %82 = load i64, i64* %RSP, align 8
  %83 = add i64 %82, 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  %84 = icmp ugt i64 %82, -9
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %43, align 1, !tbaa !2434
  %86 = trunc i64 %83 to i32
  %87 = and i32 %86, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #8
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %44, align 1, !tbaa !2447
  %92 = xor i64 %82, %83
  %93 = lshr i64 %92, 4
  %94 = trunc i64 %93 to i8
  %95 = and i8 %94, 1
  store i8 %95, i8* %45, align 1, !tbaa !2448
  %96 = icmp eq i64 %83, 0
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %46, align 1, !tbaa !2449
  %98 = lshr i64 %83, 63
  %99 = trunc i64 %98 to i8
  store i8 %99, i8* %47, align 1, !tbaa !2450
  %100 = lshr i64 %82, 63
  %101 = xor i64 %98, %100
  %102 = add nuw nsw i64 %101, %98
  %103 = icmp eq i64 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %48, align 1, !tbaa !2451
  %105 = add i64 %81, 5
  store i64 %105, i64* %PC, align 8
  %106 = add i64 %82, 16
  %107 = inttoptr i64 %83 to i64*
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %RBX, align 8, !tbaa !2428
  store i64 %106, i64* %RSP, align 8, !tbaa !2428
  %109 = add i64 %81, 6
  store i64 %109, i64* %PC, align 8
  %110 = add i64 %82, 24
  %111 = inttoptr i64 %106 to i64*
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %RBP, align 8, !tbaa !2428
  store i64 %110, i64* %RSP, align 8, !tbaa !2428
  %113 = add i64 %81, 8
  store i64 %113, i64* %PC, align 8
  %114 = add i64 %82, 32
  %115 = inttoptr i64 %110 to i64*
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %R12, align 8, !tbaa !2428
  store i64 %114, i64* %RSP, align 8, !tbaa !2428
  %117 = add i64 %81, 10
  store i64 %117, i64* %PC, align 8
  %118 = add i64 %82, 40
  %119 = inttoptr i64 %114 to i64*
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %R13, align 8, !tbaa !2428
  store i64 %118, i64* %RSP, align 8, !tbaa !2428
  %121 = add i64 %81, 12
  store i64 %121, i64* %PC, align 8
  %122 = add i64 %82, 48
  %123 = inttoptr i64 %118 to i64*
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %R14, align 8, !tbaa !2428
  store i64 %122, i64* %RSP, align 8, !tbaa !2428
  %125 = add i64 %81, 14
  store i64 %125, i64* %PC, align 8
  %126 = add i64 %82, 56
  %127 = inttoptr i64 %122 to i64*
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %R15, align 8, !tbaa !2428
  store i64 %126, i64* %RSP, align 8, !tbaa !2428
  %129 = add i64 %81, 15
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %126 to i64*
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %PC, align 8, !tbaa !2428
  %132 = add i64 %82, 64
  store i64 %132, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_401586:                                     ; preds = %block_401550
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2434
  store i8 1, i8* %44, align 1, !tbaa !2447
  store i8 1, i8* %46, align 1, !tbaa !2449
  store i8 0, i8* %47, align 1, !tbaa !2450
  store i8 0, i8* %48, align 1, !tbaa !2451
  store i8 0, i8* %45, align 1, !tbaa !2448
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_401590

block_401590:                                     ; preds = %block_401590, %block_401586
  %134 = phi i64 [ 0, %block_401586 ], [ %152, %block_401590 ]
  %135 = phi i64 [ %133, %block_401586 ], [ %179, %block_401590 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_401586 ], [ %149, %block_401590 ]
  %136 = load i64, i64* %R15, align 8
  store i64 %136, i64* %RDX, align 8, !tbaa !2428
  %137 = load i64, i64* %R14, align 8
  store i64 %137, i64* %RSI, align 8, !tbaa !2428
  %138 = load i32, i32* %R13D, align 4
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %RDI, align 8, !tbaa !2428
  %140 = load i64, i64* %R12, align 8
  %141 = shl i64 %134, 3
  %142 = add i64 %141, %140
  %143 = add i64 %135, 13
  store i64 %143, i64* %PC, align 8
  %144 = load i64, i64* %RSP, align 8, !tbaa !2428
  %145 = add i64 %144, -8
  %146 = inttoptr i64 %145 to i64*
  store i64 %143, i64* %146, align 8
  store i64 %145, i64* %RSP, align 8, !tbaa !2428
  %147 = inttoptr i64 %142 to i64*
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %PC, align 8, !tbaa !2428
  %149 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %148, %struct.Memory* %MEMORY.1)
  %150 = load i64, i64* %RBX, align 8
  %151 = load i64, i64* %PC, align 8
  %152 = add i64 %150, 1
  store i64 %152, i64* %RBX, align 8, !tbaa !2428
  %153 = lshr i64 %152, 63
  %154 = load i64, i64* %RBP, align 8
  %155 = sub i64 %154, %152
  %156 = icmp ult i64 %154, %152
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %43, align 1, !tbaa !2434
  %158 = trunc i64 %155 to i32
  %159 = and i32 %158, 255
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #8
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %44, align 1, !tbaa !2447
  %164 = xor i64 %152, %154
  %165 = xor i64 %164, %155
  %166 = lshr i64 %165, 4
  %167 = trunc i64 %166 to i8
  %168 = and i8 %167, 1
  store i8 %168, i8* %45, align 1, !tbaa !2448
  %169 = icmp eq i64 %155, 0
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %46, align 1, !tbaa !2449
  %171 = lshr i64 %155, 63
  %172 = trunc i64 %171 to i8
  store i8 %172, i8* %47, align 1, !tbaa !2450
  %173 = lshr i64 %154, 63
  %174 = xor i64 %153, %173
  %175 = xor i64 %171, %173
  %176 = add nuw nsw i64 %175, %174
  %177 = icmp eq i64 %176, 2
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %48, align 1, !tbaa !2451
  %.v1 = select i1 %169, i64 9, i64 -13
  %179 = add i64 %151, %.v1
  store i64 %179, i64* %PC, align 8, !tbaa !2428
  br i1 %169, label %block_4015a6, label %block_401590
}

; Function Attrs: noinline
define %struct.Memory* @sub_400810_polybench_timer_print(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400810:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %1, 1
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %RSP, align 8, !tbaa !2428
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  %10 = load i64, i64* %PC, align 8
  store i64 %8, i64* %RBP, align 8, !tbaa !2428
  %11 = add i64 %7, -24
  %12 = icmp ult i64 %8, 16
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1, !tbaa !2434
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #8
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1, !tbaa !2447
  %22 = xor i64 %8, 16
  %23 = xor i64 %22, %11
  %24 = lshr i64 %23, 4
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1, !tbaa !2448
  %28 = icmp eq i64 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1, !tbaa !2449
  %31 = lshr i64 %11, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1, !tbaa !2450
  %34 = lshr i64 %8, 63
  %35 = xor i64 %31, %34
  %36 = add nuw nsw i64 %35, %34
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1, !tbaa !2451
  store i64 add (i64 ptrtoint (%seg_4015d0__rodata_type* @seg_4015d0__rodata to i64), i64 48), i64* %RDI, align 8, !tbaa !2428
  %40 = load double, double* bitcast (%polybench_t_end_type* @polybench_t_end to double*), align 8
  %41 = bitcast %union.VectorReg* %4 to double*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %43 = load double, double* bitcast (%polybench_t_start_type* @polybench_t_start to double*), align 8
  %44 = fsub double %40, %43
  store double %44, double* %41, align 1, !tbaa !2452
  store i64 0, i64* %42, align 1, !tbaa !2452
  store i8 1, i8* %AL, align 1, !tbaa !2454
  %45 = add i64 %10, -577
  %46 = add i64 %10, 42
  %47 = add i64 %7, -32
  %48 = inttoptr i64 %47 to i64*
  store i64 %46, i64* %48, align 8
  store i64 %47, i64* %RSP, align 8, !tbaa !2428
  store i64 %45, i64* %PC, align 8, !tbaa !2428
  %49 = tail call fastcc %struct.Memory* @ext_602110_printf(%struct.State* nonnull %0, %struct.Memory* %2)
  %50 = load i64, i64* %RBP, align 8
  %51 = add i64 %50, -4
  %52 = load i32, i32* %EAX, align 4
  %53 = load i64, i64* %PC, align 8
  %54 = add i64 %53, 3
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %51 to i32*
  store i32 %52, i32* %55, align 4
  %56 = load i64, i64* %RSP, align 8
  %57 = load i64, i64* %PC, align 8
  %58 = add i64 %56, 16
  store i64 %58, i64* %RSP, align 8, !tbaa !2428
  %59 = icmp ugt i64 %56, -17
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %14, align 1, !tbaa !2434
  %61 = trunc i64 %58 to i32
  %62 = and i32 %61, 255
  %63 = tail call i32 @llvm.ctpop.i32(i32 %62) #8
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  %66 = xor i8 %65, 1
  store i8 %66, i8* %21, align 1, !tbaa !2447
  %67 = xor i64 %56, 16
  %68 = xor i64 %67, %58
  %69 = lshr i64 %68, 4
  %70 = trunc i64 %69 to i8
  %71 = and i8 %70, 1
  store i8 %71, i8* %27, align 1, !tbaa !2448
  %72 = icmp eq i64 %58, 0
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %30, align 1, !tbaa !2449
  %74 = lshr i64 %58, 63
  %75 = trunc i64 %74 to i8
  store i8 %75, i8* %33, align 1, !tbaa !2450
  %76 = lshr i64 %56, 63
  %77 = xor i64 %74, %76
  %78 = add nuw nsw i64 %77, %74
  %79 = icmp eq i64 %78, 2
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %39, align 1, !tbaa !2451
  %81 = add i64 %57, 5
  store i64 %81, i64* %PC, align 8
  %82 = add i64 %56, 24
  %83 = inttoptr i64 %58 to i64*
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %RBP, align 8, !tbaa !2428
  store i64 %82, i64* %RSP, align 8, !tbaa !2428
  %85 = add i64 %57, 6
  store i64 %85, i64* %PC, align 8
  %86 = inttoptr i64 %82 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %PC, align 8, !tbaa !2428
  %88 = add i64 %56, 32
  store i64 %88, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %49
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006f0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4006f0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 8) to i8*), align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4, align 1, !tbaa !2434
  %5 = zext i8 %3 to i32
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #8
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  %9 = xor i8 %8, 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9, i8* %10, align 1, !tbaa !2447
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1, !tbaa !2448
  %12 = icmp eq i8 %3, 0
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %13, i8* %14, align 1, !tbaa !2449
  %15 = lshr i8 %3, 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %15, i8* %16, align 1, !tbaa !2450
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1, !tbaa !2451
  %.v = select i1 %12, i64 9, i64 32
  %18 = add i64 %.v, %1
  store i64 %18, i64* %PC, align 8, !tbaa !2428
  br i1 %12, label %block_4006f9, label %block_400710

block_400710:                                     ; preds = %block_4006f0
  %19 = add i64 %18, 2
  store i64 %19, i64* %PC, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %21 = load i64, i64* %20, align 8, !tbaa !2428
  %22 = inttoptr i64 %21 to i64*
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %PC, align 8, !tbaa !2428
  %24 = add i64 %21, 8
  store i64 %24, i64* %20, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4006f9:                                     ; preds = %block_4006f0
  %25 = load i64, i64* %RBP, align 8
  %26 = add i64 %18, 1
  store i64 %26, i64* %PC, align 8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %28 = load i64, i64* %27, align 8, !tbaa !2428
  %29 = add i64 %28, -8
  %30 = inttoptr i64 %29 to i64*
  store i64 %25, i64* %30, align 8
  %31 = load i64, i64* %PC, align 8
  store i64 %29, i64* %RBP, align 8, !tbaa !2428
  %32 = add i64 %31, -122
  %33 = add i64 %31, 8
  %34 = add i64 %28, -16
  %35 = inttoptr i64 %34 to i64*
  store i64 %33, i64* %35, align 8
  store i64 %34, i64* %27, align 8, !tbaa !2428
  store i64 %32, i64* %PC, align 8, !tbaa !2428
  %36 = tail call %struct.Memory* @sub_400680_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
  %37 = load i64, i64* %PC, align 8
  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 8) to i8*), align 8
  %38 = add i64 %37, 8
  store i64 %38, i64* %PC, align 8
  %39 = load i64, i64* %27, align 8, !tbaa !2428
  %40 = add i64 %39, 8
  %41 = inttoptr i64 %39 to i64*
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %RBP, align 8, !tbaa !2428
  store i64 %40, i64* %27, align 8, !tbaa !2428
  %43 = add i64 %37, 9
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %40 to i64*
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %PC, align 8, !tbaa !2428
  %46 = add i64 %39, 16
  store i64 %46, i64* %27, align 8, !tbaa !2428
  ret %struct.Memory* %36
}

; Function Attrs: noinline
define %struct.Memory* @sub_4015c0___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4015c0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = add i64 %1, 2
  store i64 %3, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !2428
  %6 = inttoptr i64 %5 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %PC, align 8, !tbaa !2428
  %8 = add i64 %5, 8
  store i64 %8, i64* %4, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400910_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400910:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %7 = load i64, i64* %RBP, align 8
  %8 = add i64 %1, 1
  store i64 %8, i64* %PC, align 8
  %9 = load i64, i64* %RSP, align 8, !tbaa !2428
  %10 = add i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64 %7, i64* %11, align 8
  %12 = load i64, i64* %PC, align 8
  store i64 %10, i64* %RBP, align 8, !tbaa !2428
  %13 = load i64, i64* %R14, align 8
  %14 = add i64 %12, 5
  store i64 %14, i64* %PC, align 8
  %15 = add i64 %9, -16
  %16 = inttoptr i64 %15 to i64*
  store i64 %13, i64* %16, align 8
  %17 = load i64, i64* %RBX, align 8
  %18 = load i64, i64* %PC, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %PC, align 8
  %20 = add i64 %9, -24
  %21 = inttoptr i64 %20 to i64*
  store i64 %17, i64* %21, align 8
  %22 = load i64, i64* %PC, align 8
  %23 = add i64 %9, -168
  store i64 %23, i64* %RSP, align 8, !tbaa !2428
  %24 = icmp ult i64 %20, 144
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %25, i8* %26, align 1, !tbaa !2434
  %27 = trunc i64 %23 to i32
  %28 = and i32 %27, 255
  %29 = tail call i32 @llvm.ctpop.i32(i32 %28) #8
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %33, align 1, !tbaa !2447
  %34 = xor i64 %20, 16
  %35 = xor i64 %34, %23
  %36 = lshr i64 %35, 4
  %37 = trunc i64 %36 to i8
  %38 = and i8 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %38, i8* %39, align 1, !tbaa !2448
  %40 = icmp eq i64 %23, 0
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %42, align 1, !tbaa !2449
  %43 = lshr i64 %23, 63
  %44 = trunc i64 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %44, i8* %45, align 1, !tbaa !2450
  %46 = lshr i64 %20, 63
  %47 = xor i64 %43, %46
  %48 = add nuw nsw i64 %47, %46
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1, !tbaa !2451
  store i64 1048576, i64* %RCX, align 8, !tbaa !2428
  store i64 8, i64* %RAX, align 8, !tbaa !2428
  %52 = load i64, i64* %RBP, align 8
  %53 = add i64 %52, -20
  %54 = add i64 %22, 26
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %53 to i32*
  store i32 0, i32* %55, align 4
  %56 = load i64, i64* %RBP, align 8
  %57 = add i64 %56, -24
  %58 = load i32, i32* %EDI, align 4
  %59 = load i64, i64* %PC, align 8
  %60 = add i64 %59, 3
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %57 to i32*
  store i32 %58, i32* %61, align 4
  %62 = load i64, i64* %RBP, align 8
  %63 = add i64 %62, -32
  %64 = load i64, i64* %RSI, align 8
  %65 = load i64, i64* %PC, align 8
  %66 = add i64 %65, 4
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %63 to i64*
  store i64 %64, i64* %67, align 8
  %68 = load i64, i64* %RBP, align 8
  %69 = add i64 %68, -36
  %70 = load i64, i64* %PC, align 8
  %71 = add i64 %70, 7
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %69 to i32*
  store i32 1024, i32* %72, align 4
  %73 = load i64, i64* %RBP, align 8
  %74 = add i64 %73, -40
  %75 = load i64, i64* %PC, align 8
  %76 = add i64 %75, 7
  store i64 %76, i64* %PC, align 8
  %77 = inttoptr i64 %74 to i32*
  store i32 1024, i32* %77, align 4
  %78 = load i64, i64* %RBP, align 8
  %79 = add i64 %78, -44
  %80 = load i64, i64* %PC, align 8
  %81 = add i64 %80, 7
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %79 to i32*
  store i32 1024, i32* %82, align 4
  %83 = load i64, i64* %RBP, align 8
  %84 = add i64 %83, -48
  %85 = load i64, i64* %PC, align 8
  %86 = add i64 %85, 7
  store i64 %86, i64* %PC, align 8
  %87 = inttoptr i64 %84 to i32*
  store i32 1024, i32* %87, align 4
  %88 = load i64, i64* %RCX, align 8
  %89 = load i64, i64* %PC, align 8
  store i64 %88, i64* %RDI, align 8, !tbaa !2428
  %90 = load i32, i32* %EAX, align 4
  %91 = zext i32 %90 to i64
  store i64 %91, i64* %RSI, align 8, !tbaa !2428
  %92 = add i64 %89, -260
  %93 = add i64 %89, 10
  %94 = load i64, i64* %RSP, align 8, !tbaa !2428
  %95 = add i64 %94, -8
  %96 = inttoptr i64 %95 to i64*
  store i64 %93, i64* %96, align 8
  store i64 %95, i64* %RSP, align 8, !tbaa !2428
  store i64 %92, i64* %PC, align 8, !tbaa !2428
  %97 = tail call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %92, %struct.Memory* %2)
  %98 = load i64, i64* %PC, align 8
  store i64 1048576, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %99 = load i64, i64* %RBP, align 8
  %100 = add i64 %99, -72
  %101 = load i64, i64* %RAX, align 8
  %102 = add i64 %98, 16
  store i64 %102, i64* %PC, align 8
  %103 = inttoptr i64 %100 to i64*
  store i64 %101, i64* %103, align 8
  %104 = load i64, i64* %PC, align 8
  %105 = add i64 %104, -286
  %106 = add i64 %104, 5
  %107 = load i64, i64* %RSP, align 8, !tbaa !2428
  %108 = add i64 %107, -8
  %109 = inttoptr i64 %108 to i64*
  store i64 %106, i64* %109, align 8
  store i64 %108, i64* %RSP, align 8, !tbaa !2428
  store i64 %105, i64* %PC, align 8, !tbaa !2428
  %110 = tail call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %105, %struct.Memory* %97)
  %111 = load i64, i64* %PC, align 8
  store i64 1048576, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %112 = load i64, i64* %RBP, align 8
  %113 = add i64 %112, -80
  %114 = load i64, i64* %RAX, align 8
  %115 = add i64 %111, 16
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %113 to i64*
  store i64 %114, i64* %116, align 8
  %117 = load i64, i64* %PC, align 8
  %118 = add i64 %117, -307
  %119 = add i64 %117, 5
  %120 = load i64, i64* %RSP, align 8, !tbaa !2428
  %121 = add i64 %120, -8
  %122 = inttoptr i64 %121 to i64*
  store i64 %119, i64* %122, align 8
  store i64 %121, i64* %RSP, align 8, !tbaa !2428
  store i64 %118, i64* %PC, align 8, !tbaa !2428
  %123 = tail call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %118, %struct.Memory* %110)
  %124 = load i64, i64* %PC, align 8
  store i64 1048576, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %125 = load i64, i64* %RBP, align 8
  %126 = add i64 %125, -88
  %127 = load i64, i64* %RAX, align 8
  %128 = add i64 %124, 16
  store i64 %128, i64* %PC, align 8
  %129 = inttoptr i64 %126 to i64*
  store i64 %127, i64* %129, align 8
  %130 = load i64, i64* %PC, align 8
  %131 = add i64 %130, -328
  %132 = add i64 %130, 5
  %133 = load i64, i64* %RSP, align 8, !tbaa !2428
  %134 = add i64 %133, -8
  %135 = inttoptr i64 %134 to i64*
  store i64 %132, i64* %135, align 8
  store i64 %134, i64* %RSP, align 8, !tbaa !2428
  store i64 %131, i64* %PC, align 8, !tbaa !2428
  %136 = tail call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %131, %struct.Memory* %123)
  %137 = load i64, i64* %PC, align 8
  store i64 1048576, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %138 = load i64, i64* %RBP, align 8
  %139 = add i64 %138, -96
  %140 = load i64, i64* %RAX, align 8
  %141 = add i64 %137, 16
  store i64 %141, i64* %PC, align 8
  %142 = inttoptr i64 %139 to i64*
  store i64 %140, i64* %142, align 8
  %143 = load i64, i64* %PC, align 8
  %144 = add i64 %143, -349
  %145 = add i64 %143, 5
  %146 = load i64, i64* %RSP, align 8, !tbaa !2428
  %147 = add i64 %146, -8
  %148 = inttoptr i64 %147 to i64*
  store i64 %145, i64* %148, align 8
  store i64 %147, i64* %RSP, align 8, !tbaa !2428
  store i64 %144, i64* %PC, align 8, !tbaa !2428
  %149 = tail call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %144, %struct.Memory* %136)
  %150 = load i64, i64* %PC, align 8
  store i64 1048576, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %151 = load i64, i64* %RBP, align 8
  %152 = add i64 %151, -104
  %153 = load i64, i64* %RAX, align 8
  %154 = add i64 %150, 16
  store i64 %154, i64* %PC, align 8
  %155 = inttoptr i64 %152 to i64*
  store i64 %153, i64* %155, align 8
  %156 = load i64, i64* %PC, align 8
  %157 = add i64 %156, -370
  %158 = add i64 %156, 5
  %159 = load i64, i64* %RSP, align 8, !tbaa !2428
  %160 = add i64 %159, -8
  %161 = inttoptr i64 %160 to i64*
  store i64 %158, i64* %161, align 8
  store i64 %160, i64* %RSP, align 8, !tbaa !2428
  store i64 %157, i64* %PC, align 8, !tbaa !2428
  %162 = tail call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %157, %struct.Memory* %149)
  %163 = load i64, i64* %RBP, align 8
  %164 = add i64 %163, -56
  %165 = load i64, i64* %PC, align 8
  store i64 %164, i64* %R8, align 8, !tbaa !2428
  %166 = add i64 %163, -64
  store i64 %166, i64* %R9, align 8, !tbaa !2428
  %167 = add i64 %163, -112
  %168 = load i64, i64* %RAX, align 8
  %169 = add i64 %165, 12
  store i64 %169, i64* %PC, align 8
  %170 = inttoptr i64 %167 to i64*
  store i64 %168, i64* %170, align 8
  %171 = load i64, i64* %RBP, align 8
  %172 = add i64 %171, -36
  %173 = load i64, i64* %PC, align 8
  %174 = add i64 %173, 3
  store i64 %174, i64* %PC, align 8
  %175 = inttoptr i64 %172 to i32*
  %176 = load i32, i32* %175, align 4
  %177 = zext i32 %176 to i64
  store i64 %177, i64* %RDI, align 8, !tbaa !2428
  %178 = add i64 %171, -40
  %179 = add i64 %173, 6
  store i64 %179, i64* %PC, align 8
  %180 = inttoptr i64 %178 to i32*
  %181 = load i32, i32* %180, align 4
  %182 = zext i32 %181 to i64
  store i64 %182, i64* %RSI, align 8, !tbaa !2428
  %183 = add i64 %171, -44
  %184 = add i64 %173, 9
  store i64 %184, i64* %PC, align 8
  %185 = inttoptr i64 %183 to i32*
  %186 = load i32, i32* %185, align 4
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %RDX, align 8, !tbaa !2428
  %188 = add i64 %171, -48
  %189 = add i64 %173, 12
  store i64 %189, i64* %PC, align 8
  %190 = inttoptr i64 %188 to i32*
  %191 = load i32, i32* %190, align 4
  %192 = zext i32 %191 to i64
  store i64 %192, i64* %RCX, align 8, !tbaa !2428
  %193 = add i64 %171, -80
  %194 = add i64 %173, 16
  store i64 %194, i64* %PC, align 8
  %195 = inttoptr i64 %193 to i64*
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %RAX, align 8, !tbaa !2428
  %197 = add i64 %171, -88
  %198 = add i64 %173, 20
  store i64 %198, i64* %PC, align 8
  %199 = inttoptr i64 %197 to i64*
  %200 = load i64, i64* %199, align 8
  store i64 %200, i64* %R10, align 8, !tbaa !2428
  %201 = add i64 %171, -96
  %202 = add i64 %173, 24
  store i64 %202, i64* %PC, align 8
  %203 = inttoptr i64 %201 to i64*
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %R11, align 8, !tbaa !2428
  %205 = add i64 %171, -104
  %206 = add i64 %173, 28
  store i64 %206, i64* %PC, align 8
  %207 = inttoptr i64 %205 to i64*
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %RBX, align 8, !tbaa !2428
  %209 = add i64 %171, -112
  %210 = add i64 %173, 32
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %209 to i64*
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %R14, align 8, !tbaa !2428
  %213 = bitcast i64* %RSP to i64**
  %214 = load i64*, i64** %213, align 8
  %215 = add i64 %173, 36
  store i64 %215, i64* %PC, align 8
  store i64 %196, i64* %214, align 8
  %216 = load i64, i64* %RSP, align 8
  %217 = add i64 %216, 8
  %218 = load i64, i64* %R10, align 8
  %219 = load i64, i64* %PC, align 8
  %220 = add i64 %219, 5
  store i64 %220, i64* %PC, align 8
  %221 = inttoptr i64 %217 to i64*
  store i64 %218, i64* %221, align 8
  %222 = load i64, i64* %RSP, align 8
  %223 = add i64 %222, 16
  %224 = load i64, i64* %R11, align 8
  %225 = load i64, i64* %PC, align 8
  %226 = add i64 %225, 5
  store i64 %226, i64* %PC, align 8
  %227 = inttoptr i64 %223 to i64*
  store i64 %224, i64* %227, align 8
  %228 = load i64, i64* %RSP, align 8
  %229 = add i64 %228, 24
  %230 = load i64, i64* %RBX, align 8
  %231 = load i64, i64* %PC, align 8
  %232 = add i64 %231, 5
  store i64 %232, i64* %PC, align 8
  %233 = inttoptr i64 %229 to i64*
  store i64 %230, i64* %233, align 8
  %234 = load i64, i64* %RSP, align 8
  %235 = add i64 %234, 32
  %236 = load i64, i64* %R14, align 8
  %237 = load i64, i64* %PC, align 8
  %238 = add i64 %237, 5
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %235 to i64*
  store i64 %236, i64* %239, align 8
  %240 = load i64, i64* %PC, align 8
  %241 = add i64 %240, 277
  %242 = add i64 %240, 5
  %243 = load i64, i64* %RSP, align 8, !tbaa !2428
  %244 = add i64 %243, -8
  %245 = inttoptr i64 %244 to i64*
  store i64 %242, i64* %245, align 8
  store i64 %244, i64* %RSP, align 8, !tbaa !2428
  store i64 %241, i64* %PC, align 8, !tbaa !2428
  %246 = tail call %struct.Memory* @sub_400b20_init_array_renamed_(%struct.State* nonnull %0, i64 %241, %struct.Memory* %162)
  %247 = load i64, i64* %RBP, align 8
  %248 = add i64 %247, -36
  %249 = load i64, i64* %PC, align 8
  %250 = add i64 %249, 3
  store i64 %250, i64* %PC, align 8
  %251 = inttoptr i64 %248 to i32*
  %252 = load i32, i32* %251, align 4
  %253 = zext i32 %252 to i64
  store i64 %253, i64* %RDI, align 8, !tbaa !2428
  %254 = add i64 %247, -40
  %255 = add i64 %249, 6
  store i64 %255, i64* %PC, align 8
  %256 = inttoptr i64 %254 to i32*
  %257 = load i32, i32* %256, align 4
  %258 = zext i32 %257 to i64
  store i64 %258, i64* %RSI, align 8, !tbaa !2428
  %259 = add i64 %247, -44
  %260 = add i64 %249, 9
  store i64 %260, i64* %PC, align 8
  %261 = inttoptr i64 %259 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = zext i32 %262 to i64
  store i64 %263, i64* %RDX, align 8, !tbaa !2428
  %264 = add i64 %247, -48
  %265 = add i64 %249, 12
  store i64 %265, i64* %PC, align 8
  %266 = inttoptr i64 %264 to i32*
  %267 = load i32, i32* %266, align 4
  %268 = zext i32 %267 to i64
  store i64 %268, i64* %RCX, align 8, !tbaa !2428
  %269 = add i64 %247, -56
  %270 = add i64 %249, 17
  store i64 %270, i64* %PC, align 8
  %271 = inttoptr i64 %269 to i64*
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %272, i64* %273, align 1, !tbaa !2452
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %275 = bitcast i64* %274 to double*
  store double 0.000000e+00, double* %275, align 1, !tbaa !2452
  %276 = add i64 %247, -64
  %277 = add i64 %249, 22
  store i64 %277, i64* %PC, align 8
  %278 = inttoptr i64 %276 to i64*
  %279 = load i64, i64* %278, align 8
  %280 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %279, i64* %280, align 1, !tbaa !2452
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %282 = bitcast i64* %281 to double*
  store double 0.000000e+00, double* %282, align 1, !tbaa !2452
  %283 = add i64 %247, -72
  %284 = add i64 %249, 26
  store i64 %284, i64* %PC, align 8
  %285 = inttoptr i64 %283 to i64*
  %286 = load i64, i64* %285, align 8
  store i64 %286, i64* %R8, align 8, !tbaa !2428
  %287 = add i64 %247, -80
  %288 = add i64 %249, 30
  store i64 %288, i64* %PC, align 8
  %289 = inttoptr i64 %287 to i64*
  %290 = load i64, i64* %289, align 8
  store i64 %290, i64* %R9, align 8, !tbaa !2428
  %291 = add i64 %247, -88
  %292 = add i64 %249, 34
  store i64 %292, i64* %PC, align 8
  %293 = inttoptr i64 %291 to i64*
  %294 = load i64, i64* %293, align 8
  store i64 %294, i64* %RAX, align 8, !tbaa !2428
  %295 = add i64 %247, -96
  %296 = add i64 %249, 38
  store i64 %296, i64* %PC, align 8
  %297 = inttoptr i64 %295 to i64*
  %298 = load i64, i64* %297, align 8
  store i64 %298, i64* %R10, align 8, !tbaa !2428
  %299 = add i64 %247, -104
  %300 = add i64 %249, 42
  store i64 %300, i64* %PC, align 8
  %301 = inttoptr i64 %299 to i64*
  %302 = load i64, i64* %301, align 8
  store i64 %302, i64* %R11, align 8, !tbaa !2428
  %303 = load i64*, i64** %213, align 8
  %304 = add i64 %249, 46
  store i64 %304, i64* %PC, align 8
  store i64 %294, i64* %303, align 8
  %305 = load i64, i64* %RSP, align 8
  %306 = add i64 %305, 8
  %307 = load i64, i64* %R10, align 8
  %308 = load i64, i64* %PC, align 8
  %309 = add i64 %308, 5
  store i64 %309, i64* %PC, align 8
  %310 = inttoptr i64 %306 to i64*
  store i64 %307, i64* %310, align 8
  %311 = load i64, i64* %RSP, align 8
  %312 = add i64 %311, 16
  %313 = load i64, i64* %R11, align 8
  %314 = load i64, i64* %PC, align 8
  %315 = add i64 %314, 5
  store i64 %315, i64* %PC, align 8
  %316 = inttoptr i64 %312 to i64*
  store i64 %313, i64* %316, align 8
  %317 = load i64, i64* %PC, align 8
  %318 = add i64 %317, 856
  %319 = add i64 %317, 5
  %320 = load i64, i64* %RSP, align 8, !tbaa !2428
  %321 = add i64 %320, -8
  %322 = inttoptr i64 %321 to i64*
  store i64 %319, i64* %322, align 8
  store i64 %321, i64* %RSP, align 8, !tbaa !2428
  store i64 %318, i64* %PC, align 8, !tbaa !2428
  %323 = tail call %struct.Memory* @sub_400da0_kernel_2mm_renamed_(%struct.State* nonnull %0, i64 %318, %struct.Memory* %246)
  %324 = load i64, i64* %RBP, align 8
  %325 = add i64 %324, -36
  %326 = load i64, i64* %PC, align 8
  %327 = add i64 %326, 3
  store i64 %327, i64* %PC, align 8
  %328 = inttoptr i64 %325 to i32*
  %329 = load i32, i32* %328, align 4
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RDI, align 8, !tbaa !2428
  %331 = add i64 %324, -40
  %332 = add i64 %326, 6
  store i64 %332, i64* %PC, align 8
  %333 = inttoptr i64 %331 to i32*
  %334 = load i32, i32* %333, align 4
  %335 = zext i32 %334 to i64
  store i64 %335, i64* %RSI, align 8, !tbaa !2428
  %336 = add i64 %324, -44
  %337 = add i64 %326, 9
  store i64 %337, i64* %PC, align 8
  %338 = inttoptr i64 %336 to i32*
  %339 = load i32, i32* %338, align 4
  %340 = zext i32 %339 to i64
  store i64 %340, i64* %RDX, align 8, !tbaa !2428
  %341 = add i64 %324, -48
  %342 = add i64 %326, 12
  store i64 %342, i64* %PC, align 8
  %343 = inttoptr i64 %341 to i32*
  %344 = load i32, i32* %343, align 4
  %345 = zext i32 %344 to i64
  store i64 %345, i64* %RCX, align 8, !tbaa !2428
  %346 = add i64 %324, -56
  %347 = add i64 %326, 17
  store i64 %347, i64* %PC, align 8
  %348 = inttoptr i64 %346 to i64*
  %349 = load i64, i64* %348, align 8
  store i64 %349, i64* %273, align 1, !tbaa !2452
  store double 0.000000e+00, double* %275, align 1, !tbaa !2452
  %350 = add i64 %324, -64
  %351 = add i64 %326, 22
  store i64 %351, i64* %PC, align 8
  %352 = inttoptr i64 %350 to i64*
  %353 = load i64, i64* %352, align 8
  store i64 %353, i64* %280, align 1, !tbaa !2452
  store double 0.000000e+00, double* %282, align 1, !tbaa !2452
  %354 = add i64 %324, -72
  %355 = add i64 %326, 26
  store i64 %355, i64* %PC, align 8
  %356 = inttoptr i64 %354 to i64*
  %357 = load i64, i64* %356, align 8
  store i64 %357, i64* %R8, align 8, !tbaa !2428
  %358 = add i64 %324, -80
  %359 = add i64 %326, 30
  store i64 %359, i64* %PC, align 8
  %360 = inttoptr i64 %358 to i64*
  %361 = load i64, i64* %360, align 8
  store i64 %361, i64* %R9, align 8, !tbaa !2428
  %362 = add i64 %324, -88
  %363 = add i64 %326, 34
  store i64 %363, i64* %PC, align 8
  %364 = inttoptr i64 %362 to i64*
  %365 = load i64, i64* %364, align 8
  store i64 %365, i64* %RAX, align 8, !tbaa !2428
  %366 = add i64 %324, -96
  %367 = add i64 %326, 38
  store i64 %367, i64* %PC, align 8
  %368 = inttoptr i64 %366 to i64*
  %369 = load i64, i64* %368, align 8
  store i64 %369, i64* %R10, align 8, !tbaa !2428
  %370 = add i64 %324, -112
  %371 = add i64 %326, 42
  store i64 %371, i64* %PC, align 8
  %372 = inttoptr i64 %370 to i64*
  %373 = load i64, i64* %372, align 8
  store i64 %373, i64* %R11, align 8, !tbaa !2428
  %374 = load i64*, i64** %213, align 8
  %375 = add i64 %326, 46
  store i64 %375, i64* %PC, align 8
  store i64 %365, i64* %374, align 8
  %376 = load i64, i64* %RSP, align 8
  %377 = add i64 %376, 8
  %378 = load i64, i64* %R10, align 8
  %379 = load i64, i64* %PC, align 8
  %380 = add i64 %379, 5
  store i64 %380, i64* %PC, align 8
  %381 = inttoptr i64 %377 to i64*
  store i64 %378, i64* %381, align 8
  %382 = load i64, i64* %RSP, align 8
  %383 = add i64 %382, 16
  %384 = load i64, i64* %R11, align 8
  %385 = load i64, i64* %PC, align 8
  %386 = add i64 %385, 5
  store i64 %386, i64* %PC, align 8
  %387 = inttoptr i64 %383 to i64*
  store i64 %384, i64* %387, align 8
  %388 = load i64, i64* %PC, align 8
  %389 = add i64 %388, 1307
  %390 = add i64 %388, 5
  %391 = load i64, i64* %RSP, align 8, !tbaa !2428
  %392 = add i64 %391, -8
  %393 = inttoptr i64 %392 to i64*
  store i64 %390, i64* %393, align 8
  store i64 %392, i64* %RSP, align 8, !tbaa !2428
  store i64 %389, i64* %PC, align 8, !tbaa !2428
  %394 = tail call %struct.Memory* @sub_400fa0_kernel_2mm_StrictFP_renamed_(%struct.State* nonnull %0, i64 %389, %struct.Memory* %323)
  %395 = load i64, i64* %RBP, align 8
  %396 = add i64 %395, -36
  %397 = load i64, i64* %PC, align 8
  %398 = add i64 %397, 3
  store i64 %398, i64* %PC, align 8
  %399 = inttoptr i64 %396 to i32*
  %400 = load i32, i32* %399, align 4
  %401 = zext i32 %400 to i64
  store i64 %401, i64* %RDI, align 8, !tbaa !2428
  %402 = add i64 %395, -48
  %403 = add i64 %397, 6
  store i64 %403, i64* %PC, align 8
  %404 = inttoptr i64 %402 to i32*
  %405 = load i32, i32* %404, align 4
  %406 = zext i32 %405 to i64
  store i64 %406, i64* %RSI, align 8, !tbaa !2428
  %407 = add i64 %395, -104
  %408 = add i64 %397, 10
  store i64 %408, i64* %PC, align 8
  %409 = inttoptr i64 %407 to i64*
  %410 = load i64, i64* %409, align 8
  store i64 %410, i64* %RDX, align 8, !tbaa !2428
  %411 = add i64 %395, -112
  %412 = add i64 %397, 14
  store i64 %412, i64* %PC, align 8
  %413 = inttoptr i64 %411 to i64*
  %414 = load i64, i64* %413, align 8
  store i64 %414, i64* %RCX, align 8, !tbaa !2428
  %415 = add i64 %397, 1814
  %416 = add i64 %397, 19
  %417 = load i64, i64* %RSP, align 8, !tbaa !2428
  %418 = add i64 %417, -8
  %419 = inttoptr i64 %418 to i64*
  store i64 %416, i64* %419, align 8
  store i64 %418, i64* %RSP, align 8, !tbaa !2428
  store i64 %415, i64* %PC, align 8, !tbaa !2428
  %420 = tail call %struct.Memory* @sub_4011a0_check_FP_renamed_(%struct.State* nonnull %0, i64 %415, %struct.Memory* %394)
  %421 = load i32, i32* %EAX, align 4
  %422 = load i64, i64* %PC, align 8
  store i8 0, i8* %26, align 1, !tbaa !2434
  %423 = and i32 %421, 255
  %424 = tail call i32 @llvm.ctpop.i32(i32 %423) #8
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  %427 = xor i8 %426, 1
  store i8 %427, i8* %33, align 1, !tbaa !2447
  store i8 0, i8* %39, align 1, !tbaa !2448
  %428 = icmp eq i32 %421, 0
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %42, align 1, !tbaa !2449
  %430 = lshr i32 %421, 31
  %431 = trunc i32 %430 to i8
  store i8 %431, i8* %45, align 1, !tbaa !2450
  store i8 0, i8* %51, align 1, !tbaa !2451
  %.v = select i1 %428, i64 9, i64 21
  %432 = add i64 %422, %.v
  store i64 %432, i64* %PC, align 8, !tbaa !2428
  %433 = load i64, i64* %RBP, align 8
  br i1 %428, label %block_400aa6, label %block_400ab2

block_400aa6:                                     ; preds = %block_400910
  %434 = add i64 %433, -20
  %435 = add i64 %432, 7
  store i64 %435, i64* %PC, align 8
  %436 = inttoptr i64 %434 to i32*
  store i32 1, i32* %436, align 4
  %437 = load i64, i64* %PC, align 8
  %438 = add i64 %437, 99
  store i64 %438, i64* %PC, align 8, !tbaa !2428
  br label %block_400b10

block_400ab2:                                     ; preds = %block_400910
  %439 = add i64 %433, -36
  %440 = add i64 %432, 3
  store i64 %440, i64* %PC, align 8
  %441 = inttoptr i64 %439 to i32*
  %442 = load i32, i32* %441, align 4
  %443 = zext i32 %442 to i64
  store i64 %443, i64* %RDI, align 8, !tbaa !2428
  %444 = add i64 %433, -48
  %445 = add i64 %432, 6
  store i64 %445, i64* %PC, align 8
  %446 = inttoptr i64 %444 to i32*
  %447 = load i32, i32* %446, align 4
  %448 = zext i32 %447 to i64
  store i64 %448, i64* %RSI, align 8, !tbaa !2428
  %449 = add i64 %433, -112
  %450 = add i64 %432, 10
  store i64 %450, i64* %PC, align 8
  %451 = inttoptr i64 %449 to i64*
  %452 = load i64, i64* %451, align 8
  store i64 %452, i64* %RDX, align 8, !tbaa !2428
  %453 = add i64 %432, 2078
  %454 = add i64 %432, 15
  %455 = load i64, i64* %RSP, align 8, !tbaa !2428
  %456 = add i64 %455, -8
  %457 = inttoptr i64 %456 to i64*
  store i64 %454, i64* %457, align 8
  store i64 %456, i64* %RSP, align 8, !tbaa !2428
  store i64 %453, i64* %PC, align 8, !tbaa !2428
  %458 = tail call %struct.Memory* @sub_4012d0_print_array_renamed_(%struct.State* nonnull %0, i64 %453, %struct.Memory* %420)
  %459 = load i64, i64* %RBP, align 8
  %460 = add i64 %459, -72
  %461 = load i64, i64* %PC, align 8
  %462 = add i64 %461, 4
  store i64 %462, i64* %PC, align 8
  %463 = inttoptr i64 %460 to i64*
  %464 = load i64, i64* %463, align 8
  store i64 %464, i64* %RDX, align 8, !tbaa !2428
  store i64 %464, i64* %RDI, align 8, !tbaa !2428
  %465 = add i64 %461, -1281
  %466 = add i64 %461, 12
  %467 = load i64, i64* %RSP, align 8, !tbaa !2428
  %468 = add i64 %467, -8
  %469 = inttoptr i64 %468 to i64*
  store i64 %466, i64* %469, align 8
  store i64 %468, i64* %RSP, align 8, !tbaa !2428
  store i64 %465, i64* %PC, align 8, !tbaa !2428
  %470 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %458)
  %471 = load i64, i64* %RBP, align 8
  %472 = add i64 %471, -80
  %473 = load i64, i64* %PC, align 8
  %474 = add i64 %473, 4
  store i64 %474, i64* %PC, align 8
  %475 = inttoptr i64 %472 to i64*
  %476 = load i64, i64* %475, align 8
  store i64 %476, i64* %RDX, align 8, !tbaa !2428
  store i64 %476, i64* %RDI, align 8, !tbaa !2428
  %477 = add i64 %473, -1293
  %478 = add i64 %473, 12
  %479 = load i64, i64* %RSP, align 8, !tbaa !2428
  %480 = add i64 %479, -8
  %481 = inttoptr i64 %480 to i64*
  store i64 %478, i64* %481, align 8
  store i64 %480, i64* %RSP, align 8, !tbaa !2428
  store i64 %477, i64* %PC, align 8, !tbaa !2428
  %482 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %470)
  %483 = load i64, i64* %RBP, align 8
  %484 = add i64 %483, -88
  %485 = load i64, i64* %PC, align 8
  %486 = add i64 %485, 4
  store i64 %486, i64* %PC, align 8
  %487 = inttoptr i64 %484 to i64*
  %488 = load i64, i64* %487, align 8
  store i64 %488, i64* %RDX, align 8, !tbaa !2428
  store i64 %488, i64* %RDI, align 8, !tbaa !2428
  %489 = add i64 %485, -1305
  %490 = add i64 %485, 12
  %491 = load i64, i64* %RSP, align 8, !tbaa !2428
  %492 = add i64 %491, -8
  %493 = inttoptr i64 %492 to i64*
  store i64 %490, i64* %493, align 8
  store i64 %492, i64* %RSP, align 8, !tbaa !2428
  store i64 %489, i64* %PC, align 8, !tbaa !2428
  %494 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %482)
  %495 = load i64, i64* %RBP, align 8
  %496 = add i64 %495, -96
  %497 = load i64, i64* %PC, align 8
  %498 = add i64 %497, 4
  store i64 %498, i64* %PC, align 8
  %499 = inttoptr i64 %496 to i64*
  %500 = load i64, i64* %499, align 8
  store i64 %500, i64* %RDX, align 8, !tbaa !2428
  store i64 %500, i64* %RDI, align 8, !tbaa !2428
  %501 = add i64 %497, -1317
  %502 = add i64 %497, 12
  %503 = load i64, i64* %RSP, align 8, !tbaa !2428
  %504 = add i64 %503, -8
  %505 = inttoptr i64 %504 to i64*
  store i64 %502, i64* %505, align 8
  store i64 %504, i64* %RSP, align 8, !tbaa !2428
  store i64 %501, i64* %PC, align 8, !tbaa !2428
  %506 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %494)
  %507 = load i64, i64* %RBP, align 8
  %508 = add i64 %507, -104
  %509 = load i64, i64* %PC, align 8
  %510 = add i64 %509, 4
  store i64 %510, i64* %PC, align 8
  %511 = inttoptr i64 %508 to i64*
  %512 = load i64, i64* %511, align 8
  store i64 %512, i64* %RDX, align 8, !tbaa !2428
  store i64 %512, i64* %RDI, align 8, !tbaa !2428
  %513 = add i64 %509, -1329
  %514 = add i64 %509, 12
  %515 = load i64, i64* %RSP, align 8, !tbaa !2428
  %516 = add i64 %515, -8
  %517 = inttoptr i64 %516 to i64*
  store i64 %514, i64* %517, align 8
  store i64 %516, i64* %RSP, align 8, !tbaa !2428
  store i64 %513, i64* %PC, align 8, !tbaa !2428
  %518 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %506)
  %519 = load i64, i64* %RBP, align 8
  %520 = add i64 %519, -112
  %521 = load i64, i64* %PC, align 8
  %522 = add i64 %521, 4
  store i64 %522, i64* %PC, align 8
  %523 = inttoptr i64 %520 to i64*
  %524 = load i64, i64* %523, align 8
  store i64 %524, i64* %RDX, align 8, !tbaa !2428
  store i64 %524, i64* %RDI, align 8, !tbaa !2428
  %525 = add i64 %521, -1341
  %526 = add i64 %521, 12
  %527 = load i64, i64* %RSP, align 8, !tbaa !2428
  %528 = add i64 %527, -8
  %529 = inttoptr i64 %528 to i64*
  store i64 %526, i64* %529, align 8
  store i64 %528, i64* %RSP, align 8, !tbaa !2428
  store i64 %525, i64* %PC, align 8, !tbaa !2428
  %530 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %518)
  %531 = load i64, i64* %RBP, align 8
  %532 = add i64 %531, -20
  %533 = load i64, i64* %PC, align 8
  %534 = add i64 %533, 7
  store i64 %534, i64* %PC, align 8
  %535 = inttoptr i64 %532 to i32*
  store i32 0, i32* %535, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400b10

block_400b10:                                     ; preds = %block_400ab2, %block_400aa6
  %536 = phi i64 [ %.pre, %block_400ab2 ], [ %438, %block_400aa6 ]
  %MEMORY.0 = phi %struct.Memory* [ %530, %block_400ab2 ], [ %420, %block_400aa6 ]
  %537 = load i64, i64* %RBP, align 8
  %538 = add i64 %537, -20
  %539 = add i64 %536, 3
  store i64 %539, i64* %PC, align 8
  %540 = inttoptr i64 %538 to i32*
  %541 = load i32, i32* %540, align 4
  %542 = zext i32 %541 to i64
  store i64 %542, i64* %RAX, align 8, !tbaa !2428
  %543 = load i64, i64* %RSP, align 8
  %544 = add i64 %543, 144
  store i64 %544, i64* %RSP, align 8, !tbaa !2428
  %545 = icmp ugt i64 %543, -145
  %546 = zext i1 %545 to i8
  store i8 %546, i8* %26, align 1, !tbaa !2434
  %547 = trunc i64 %544 to i32
  %548 = and i32 %547, 255
  %549 = tail call i32 @llvm.ctpop.i32(i32 %548) #8
  %550 = trunc i32 %549 to i8
  %551 = and i8 %550, 1
  %552 = xor i8 %551, 1
  store i8 %552, i8* %33, align 1, !tbaa !2447
  %553 = xor i64 %543, 16
  %554 = xor i64 %553, %544
  %555 = lshr i64 %554, 4
  %556 = trunc i64 %555 to i8
  %557 = and i8 %556, 1
  store i8 %557, i8* %39, align 1, !tbaa !2448
  %558 = icmp eq i64 %544, 0
  %559 = zext i1 %558 to i8
  store i8 %559, i8* %42, align 1, !tbaa !2449
  %560 = lshr i64 %544, 63
  %561 = trunc i64 %560 to i8
  store i8 %561, i8* %45, align 1, !tbaa !2450
  %562 = lshr i64 %543, 63
  %563 = xor i64 %560, %562
  %564 = add nuw nsw i64 %563, %560
  %565 = icmp eq i64 %564, 2
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %51, align 1, !tbaa !2451
  %567 = add i64 %536, 11
  store i64 %567, i64* %PC, align 8
  %568 = add i64 %543, 152
  %569 = inttoptr i64 %544 to i64*
  %570 = load i64, i64* %569, align 8
  store i64 %570, i64* %RBX, align 8, !tbaa !2428
  store i64 %568, i64* %RSP, align 8, !tbaa !2428
  %571 = add i64 %536, 13
  store i64 %571, i64* %PC, align 8
  %572 = add i64 %543, 160
  %573 = inttoptr i64 %568 to i64*
  %574 = load i64, i64* %573, align 8
  store i64 %574, i64* %R14, align 8, !tbaa !2428
  store i64 %572, i64* %RSP, align 8, !tbaa !2428
  %575 = add i64 %536, 14
  store i64 %575, i64* %PC, align 8
  %576 = add i64 %543, 168
  %577 = inttoptr i64 %572 to i64*
  %578 = load i64, i64* %577, align 8
  store i64 %578, i64* %RBP, align 8, !tbaa !2428
  store i64 %576, i64* %RSP, align 8, !tbaa !2428
  %579 = add i64 %536, 15
  store i64 %579, i64* %PC, align 8
  %580 = inttoptr i64 %576 to i64*
  %581 = load i64, i64* %580, align 8
  store i64 %581, i64* %PC, align 8, !tbaa !2428
  %582 = add i64 %543, 176
  store i64 %582, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_400890_xmalloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400890:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC, align 8
  %6 = load i64, i64* %RSP, align 8, !tbaa !2428
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 8
  %9 = load i64, i64* %PC, align 8
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %10 = add i64 %6, -40
  store i64 %10, i64* %RSP, align 8, !tbaa !2428
  %11 = icmp ult i64 %7, 32
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1, !tbaa !2434
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #8
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1, !tbaa !2447
  %21 = xor i64 %7, %10
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1, !tbaa !2448
  %26 = icmp eq i64 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1, !tbaa !2449
  %29 = lshr i64 %10, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1, !tbaa !2450
  %32 = lshr i64 %7, 63
  %33 = xor i64 %29, %32
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1, !tbaa !2451
  %38 = add i64 %6, -24
  store i64 %38, i64* %RAX, align 8, !tbaa !2428
  store i64 32, i64* %RCX, align 8, !tbaa !2428
  store i64 32, i64* %RSI, align 8, !tbaa !2428
  %39 = add i64 %6, -16
  %40 = load i64, i64* %RDI, align 8
  %41 = add i64 %9, 22
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %RBP, align 8
  %44 = add i64 %43, -16
  %45 = load i64, i64* %PC, align 8
  %46 = add i64 %45, 8
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %44 to i64*
  store i64 0, i64* %47, align 8
  %48 = load i64, i64* %RBP, align 8
  %49 = add i64 %48, -8
  %50 = load i64, i64* %PC, align 8
  %51 = add i64 %50, 4
  store i64 %51, i64* %PC, align 8
  %52 = inttoptr i64 %49 to i64*
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %RDX, align 8, !tbaa !2428
  %54 = load i64, i64* %RAX, align 8
  store i64 %54, i64* %RDI, align 8, !tbaa !2428
  %55 = add i64 %50, -639
  %56 = add i64 %50, 12
  %57 = load i64, i64* %RSP, align 8, !tbaa !2428
  %58 = add i64 %57, -8
  %59 = inttoptr i64 %58 to i64*
  store i64 %56, i64* %59, align 8
  store i64 %58, i64* %RSP, align 8, !tbaa !2428
  store i64 %55, i64* %PC, align 8, !tbaa !2428
  %60 = tail call fastcc %struct.Memory* @ext_602148_posix_memalign(%struct.State* nonnull %0, %struct.Memory* %2)
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -20
  %63 = load i32, i32* %EAX, align 4
  %64 = load i64, i64* %PC, align 8
  %65 = add i64 %64, 3
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %62 to i32*
  store i32 %63, i32* %66, align 4
  %67 = load i64, i64* %RBP, align 8
  %68 = add i64 %67, -16
  %69 = load i64, i64* %PC, align 8
  %70 = add i64 %69, 5
  store i64 %70, i64* %PC, align 8
  %71 = inttoptr i64 %68 to i64*
  %72 = load i64, i64* %71, align 8
  store i8 0, i8* %13, align 1, !tbaa !2434
  %73 = trunc i64 %72 to i32
  %74 = and i32 %73, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74) #8
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %20, align 1, !tbaa !2447
  store i8 0, i8* %25, align 1, !tbaa !2448
  %79 = icmp eq i64 %72, 0
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %28, align 1, !tbaa !2449
  %81 = lshr i64 %72, 63
  %82 = trunc i64 %81 to i8
  store i8 %82, i8* %31, align 1, !tbaa !2450
  store i8 0, i8* %37, align 1, !tbaa !2451
  %.v = select i1 %79, i64 21, i64 11
  %83 = add i64 %69, %.v
  store i64 %83, i64* %PC, align 8, !tbaa !2428
  br i1 %79, label %block_4008d3, label %block_4008c9

block_4008d3:                                     ; preds = %block_4008c9, %block_400890
  %84 = phi i64 [ %120, %block_4008c9 ], [ %83, %block_400890 ]
  store i64 add (i64 ptrtoint (%seg_4015d0__rodata_type* @seg_4015d0__rodata to i64), i64 55), i64* %RSI, align 8, !tbaa !2428
  %85 = load i64, i64* @stderr, align 128
  store i64 %85, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %86 = add i64 %84, -723
  %87 = add i64 %84, 25
  %88 = load i64, i64* %RSP, align 8, !tbaa !2428
  %89 = add i64 %88, -8
  %90 = inttoptr i64 %89 to i64*
  store i64 %87, i64* %90, align 8
  store i64 %89, i64* %RSP, align 8, !tbaa !2428
  store i64 %86, i64* %PC, align 8, !tbaa !2428
  %91 = tail call fastcc %struct.Memory* @ext_6020e8_fprintf(%struct.State* nonnull %0, %struct.Memory* %60)
  %92 = load i64, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %93 = load i64, i64* %RBP, align 8
  %94 = add i64 %93, -24
  %95 = load i32, i32* %EAX, align 4
  %96 = add i64 %92, 8
  store i64 %96, i64* %PC, align 8
  %97 = inttoptr i64 %94 to i32*
  store i32 %95, i32* %97, align 4
  %98 = load i64, i64* %PC, align 8
  %99 = add i64 %98, -724
  %100 = add i64 %98, 5
  %101 = load i64, i64* %RSP, align 8, !tbaa !2428
  %102 = add i64 %101, -8
  %103 = inttoptr i64 %102 to i64*
  store i64 %100, i64* %103, align 8
  store i64 %102, i64* %RSP, align 8, !tbaa !2428
  store i64 %99, i64* %PC, align 8, !tbaa !2428
  %104 = tail call fastcc %struct.Memory* @ext_6020f8_exit(%struct.State* nonnull %0, %struct.Memory* %91)
  %105 = load i64, i64* %PC, align 8
  %106 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %105, %struct.Memory* %104)
  ret %struct.Memory* %106

block_4008c9:                                     ; preds = %block_400890
  %107 = add i64 %67, -20
  %108 = add i64 %83, 4
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %107 to i32*
  %110 = load i32, i32* %109, align 4
  store i8 0, i8* %13, align 1, !tbaa !2434
  %111 = and i32 %110, 255
  %112 = tail call i32 @llvm.ctpop.i32(i32 %111) #8
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = xor i8 %114, 1
  store i8 %115, i8* %20, align 1, !tbaa !2447
  store i8 0, i8* %25, align 1, !tbaa !2448
  %116 = icmp eq i32 %110, 0
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %28, align 1, !tbaa !2449
  %118 = lshr i32 %110, 31
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %31, align 1, !tbaa !2450
  store i8 0, i8* %37, align 1, !tbaa !2451
  %.v1 = select i1 %116, i64 48, i64 10
  %120 = add i64 %83, %.v1
  store i64 %120, i64* %PC, align 8, !tbaa !2428
  br i1 %116, label %block_4008f9, label %block_4008d3

block_4008f9:                                     ; preds = %block_4008c9
  %121 = add i64 %120, 4
  store i64 %121, i64* %PC, align 8
  %122 = load i64, i64* %71, align 8
  store i64 %122, i64* %RAX, align 8, !tbaa !2428
  %123 = load i64, i64* %RSP, align 8
  %124 = add i64 %123, 32
  store i64 %124, i64* %RSP, align 8, !tbaa !2428
  %125 = icmp ugt i64 %123, -33
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %13, align 1, !tbaa !2434
  %127 = trunc i64 %124 to i32
  %128 = and i32 %127, 255
  %129 = tail call i32 @llvm.ctpop.i32(i32 %128) #8
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  store i8 %132, i8* %20, align 1, !tbaa !2447
  %133 = xor i64 %123, %124
  %134 = lshr i64 %133, 4
  %135 = trunc i64 %134 to i8
  %136 = and i8 %135, 1
  store i8 %136, i8* %25, align 1, !tbaa !2448
  %137 = icmp eq i64 %124, 0
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %28, align 1, !tbaa !2449
  %139 = lshr i64 %124, 63
  %140 = trunc i64 %139 to i8
  store i8 %140, i8* %31, align 1, !tbaa !2450
  %141 = lshr i64 %123, 63
  %142 = xor i64 %139, %141
  %143 = add nuw nsw i64 %142, %139
  %144 = icmp eq i64 %143, 2
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %37, align 1, !tbaa !2451
  %146 = add i64 %120, 9
  store i64 %146, i64* %PC, align 8
  %147 = add i64 %123, 40
  %148 = inttoptr i64 %124 to i64*
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %RBP, align 8, !tbaa !2428
  store i64 %147, i64* %RSP, align 8, !tbaa !2428
  %150 = add i64 %120, 10
  store i64 %150, i64* %PC, align 8
  %151 = inttoptr i64 %147 to i64*
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %PC, align 8, !tbaa !2428
  %153 = add i64 %123, 48
  store i64 %153, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %60
}

; Function Attrs: noinline
define %struct.Memory* @sub_400da0_kernel_2mm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400da0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %5 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %6 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %8 = load i64, i64* %RBP, align 8
  %9 = add i64 %1, 1
  store i64 %9, i64* %PC, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !2428
  %12 = add i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64 %8, i64* %13, align 8
  store i64 %12, i64* %10, align 8, !tbaa !2428
  %14 = load i64, i64* %PC, align 8
  store i64 %12, i64* %RBP, align 8, !tbaa !2428
  %15 = add i64 %11, 24
  %16 = add i64 %14, 7
  store i64 %16, i64* %PC, align 8
  %17 = inttoptr i64 %15 to i64*
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %RAX, align 8, !tbaa !2428
  %19 = add i64 %11, 16
  %20 = add i64 %14, 11
  store i64 %20, i64* %PC, align 8
  %21 = inttoptr i64 %19 to i64*
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %R10, align 8, !tbaa !2428
  %23 = add i64 %11, 8
  %24 = add i64 %14, 15
  store i64 %24, i64* %PC, align 8
  %25 = inttoptr i64 %23 to i64*
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %R11, align 8, !tbaa !2428
  %27 = add i64 %11, -12
  %28 = load i32, i32* %EDI, align 4
  %29 = add i64 %14, 18
  store i64 %29, i64* %PC, align 8
  %30 = inttoptr i64 %27 to i32*
  store i32 %28, i32* %30, align 4
  %31 = load i64, i64* %RBP, align 8
  %32 = add i64 %31, -8
  %33 = load i32, i32* %ESI, align 4
  %34 = load i64, i64* %PC, align 8
  %35 = add i64 %34, 3
  store i64 %35, i64* %PC, align 8
  %36 = inttoptr i64 %32 to i32*
  store i32 %33, i32* %36, align 4
  %37 = load i64, i64* %RBP, align 8
  %38 = add i64 %37, -12
  %39 = load i32, i32* %EDX, align 4
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 3
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %38 to i32*
  store i32 %39, i32* %42, align 4
  %43 = load i64, i64* %RBP, align 8
  %44 = add i64 %43, -16
  %45 = load i32, i32* %ECX, align 4
  %46 = load i64, i64* %PC, align 8
  %47 = add i64 %46, 3
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %44 to i32*
  store i32 %45, i32* %48, align 4
  %49 = load i64, i64* %RBP, align 8
  %50 = add i64 %49, -24
  %51 = load i64, i64* %PC, align 8
  %52 = add i64 %51, 5
  store i64 %52, i64* %PC, align 8
  %53 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %54 = load i64, i64* %53, align 1
  %55 = inttoptr i64 %50 to i64*
  store i64 %54, i64* %55, align 8
  %56 = load i64, i64* %RBP, align 8
  %57 = add i64 %56, -32
  %58 = load i64, i64* %PC, align 8
  %59 = add i64 %58, 5
  store i64 %59, i64* %PC, align 8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %61 = load i64, i64* %60, align 1
  %62 = inttoptr i64 %57 to i64*
  store i64 %61, i64* %62, align 8
  %63 = load i64, i64* %RBP, align 8
  %64 = add i64 %63, -40
  %65 = load i64, i64* %R8, align 8
  %66 = load i64, i64* %PC, align 8
  %67 = add i64 %66, 4
  store i64 %67, i64* %PC, align 8
  %68 = inttoptr i64 %64 to i64*
  store i64 %65, i64* %68, align 8
  %69 = load i64, i64* %RBP, align 8
  %70 = add i64 %69, -48
  %71 = load i64, i64* %R9, align 8
  %72 = load i64, i64* %PC, align 8
  %73 = add i64 %72, 4
  store i64 %73, i64* %PC, align 8
  %74 = inttoptr i64 %70 to i64*
  store i64 %71, i64* %74, align 8
  %75 = load i64, i64* %RBP, align 8
  %76 = add i64 %75, -52
  %77 = load i64, i64* %PC, align 8
  %78 = add i64 %77, 7
  store i64 %78, i64* %PC, align 8
  %79 = inttoptr i64 %76 to i32*
  store i32 0, i32* %79, align 4
  %80 = load i64, i64* %RBP, align 8
  %81 = add i64 %80, -72
  %82 = load i64, i64* %R11, align 8
  %83 = load i64, i64* %PC, align 8
  %84 = add i64 %83, 4
  store i64 %84, i64* %PC, align 8
  %85 = inttoptr i64 %81 to i64*
  store i64 %82, i64* %85, align 8
  %86 = load i64, i64* %RBP, align 8
  %87 = add i64 %86, -80
  %88 = load i64, i64* %R10, align 8
  %89 = load i64, i64* %PC, align 8
  %90 = add i64 %89, 4
  store i64 %90, i64* %PC, align 8
  %91 = inttoptr i64 %87 to i64*
  store i64 %88, i64* %91, align 8
  %92 = load i64, i64* %RBP, align 8
  %93 = add i64 %92, -88
  %94 = load i64, i64* %RAX, align 8
  %95 = load i64, i64* %PC, align 8
  %96 = add i64 %95, 4
  store i64 %96, i64* %PC, align 8
  %97 = inttoptr i64 %93 to i64*
  store i64 %94, i64* %97, align 8
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %104 = bitcast [32 x %union.VectorReg]* %7 to i8*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %106 = bitcast [32 x %union.VectorReg]* %7 to i32*
  %107 = getelementptr inbounds i8, i8* %104, i64 4
  %108 = bitcast i8* %107 to i32*
  %109 = bitcast i64* %105 to i32*
  %110 = getelementptr inbounds i8, i8* %104, i64 12
  %111 = bitcast i8* %110 to i32*
  %112 = bitcast [32 x %union.VectorReg]* %7 to double*
  %113 = bitcast i64* %105 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400de1

block_400f7d:                                     ; preds = %block_400ece
  %114 = add i64 %231, -52
  %115 = add i64 %267, 8
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %114 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = add i32 %117, 1
  %119 = zext i32 %118 to i64
  store i64 %119, i64* %RAX, align 8, !tbaa !2428
  %120 = icmp eq i32 %117, -1
  %121 = icmp eq i32 %118, 0
  %122 = or i1 %120, %121
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %98, align 1, !tbaa !2434
  %124 = and i32 %118, 255
  %125 = tail call i32 @llvm.ctpop.i32(i32 %124) #8
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = xor i8 %127, 1
  store i8 %128, i8* %99, align 1, !tbaa !2447
  %129 = xor i32 %117, %118
  %130 = lshr i32 %129, 4
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  store i8 %132, i8* %100, align 1, !tbaa !2448
  %133 = zext i1 %121 to i8
  store i8 %133, i8* %101, align 1, !tbaa !2449
  %134 = lshr i32 %118, 31
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %102, align 1, !tbaa !2450
  %136 = lshr i32 %117, 31
  %137 = xor i32 %134, %136
  %138 = add nuw nsw i32 %137, %134
  %139 = icmp eq i32 %138, 2
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %103, align 1, !tbaa !2451
  %141 = add i64 %267, 14
  store i64 %141, i64* %PC, align 8
  store i32 %118, i32* %116, align 4
  %142 = load i64, i64* %PC, align 8
  %143 = add i64 %142, -208
  store i64 %143, i64* %PC, align 8, !tbaa !2428
  br label %block_400ebb

block_400f6a:                                     ; preds = %block_400f03
  %144 = add i64 %844, -56
  %145 = add i64 %880, 8
  store i64 %145, i64* %PC, align 8
  %146 = inttoptr i64 %144 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = add i32 %147, 1
  %149 = zext i32 %148 to i64
  store i64 %149, i64* %RAX, align 8, !tbaa !2428
  %150 = icmp eq i32 %147, -1
  %151 = icmp eq i32 %148, 0
  %152 = or i1 %150, %151
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %98, align 1, !tbaa !2434
  %154 = and i32 %148, 255
  %155 = tail call i32 @llvm.ctpop.i32(i32 %154) #8
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  %158 = xor i8 %157, 1
  store i8 %158, i8* %99, align 1, !tbaa !2447
  %159 = xor i32 %147, %148
  %160 = lshr i32 %159, 4
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  store i8 %162, i8* %100, align 1, !tbaa !2448
  %163 = zext i1 %151 to i8
  store i8 %163, i8* %101, align 1, !tbaa !2449
  %164 = lshr i32 %148, 31
  %165 = trunc i32 %164 to i8
  store i8 %165, i8* %102, align 1, !tbaa !2450
  %166 = lshr i32 %147, 31
  %167 = xor i32 %164, %166
  %168 = add nuw nsw i32 %167, %164
  %169 = icmp eq i32 %168, 2
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %103, align 1, !tbaa !2451
  %171 = add i64 %880, 14
  store i64 %171, i64* %PC, align 8
  store i32 %148, i32* %146, align 4
  %172 = load i64, i64* %PC, align 8
  %173 = add i64 %172, -170
  store i64 %173, i64* %PC, align 8, !tbaa !2428
  br label %block_400ece

block_400eda:                                     ; preds = %block_400ece
  %174 = add i64 %231, -32
  %175 = add i64 %267, 5
  store i64 %175, i64* %PC, align 8
  %176 = inttoptr i64 %174 to double*
  %177 = load double, double* %176, align 8
  store double %177, double* %112, align 1, !tbaa !2452
  store double 0.000000e+00, double* %113, align 1, !tbaa !2452
  %178 = add i64 %231, 32
  %179 = add i64 %267, 9
  store i64 %179, i64* %PC, align 8
  %180 = inttoptr i64 %178 to i64*
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %RAX, align 8, !tbaa !2428
  %182 = add i64 %231, -52
  %183 = add i64 %267, 13
  store i64 %183, i64* %PC, align 8
  %184 = inttoptr i64 %182 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = shl nsw i64 %186, 13
  store i64 %187, i64* %RCX, align 8, !tbaa !2428
  %188 = lshr i64 %186, 50
  %189 = and i64 %188, 1
  %190 = add i64 %187, %181
  store i64 %190, i64* %RAX, align 8, !tbaa !2428
  %191 = icmp ult i64 %190, %181
  %192 = icmp ult i64 %190, %187
  %193 = or i1 %191, %192
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %98, align 1, !tbaa !2434
  %195 = trunc i64 %190 to i32
  %196 = and i32 %195, 255
  %197 = tail call i32 @llvm.ctpop.i32(i32 %196) #8
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  store i8 %200, i8* %99, align 1, !tbaa !2447
  %201 = xor i64 %181, %190
  %202 = lshr i64 %201, 4
  %203 = trunc i64 %202 to i8
  %204 = and i8 %203, 1
  store i8 %204, i8* %100, align 1, !tbaa !2448
  %205 = icmp eq i64 %190, 0
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %101, align 1, !tbaa !2449
  %207 = lshr i64 %190, 63
  %208 = trunc i64 %207 to i8
  store i8 %208, i8* %102, align 1, !tbaa !2450
  %209 = lshr i64 %181, 63
  %210 = xor i64 %207, %209
  %211 = xor i64 %207, %189
  %212 = add nuw nsw i64 %210, %211
  %213 = icmp eq i64 %212, 2
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %103, align 1, !tbaa !2451
  %215 = add i64 %267, 24
  store i64 %215, i64* %PC, align 8
  %216 = load i32, i32* %234, align 4
  %217 = sext i32 %216 to i64
  store i64 %217, i64* %RCX, align 8, !tbaa !2428
  %218 = shl nsw i64 %217, 3
  %219 = add i64 %218, %190
  %220 = add i64 %267, 29
  store i64 %220, i64* %PC, align 8
  %221 = inttoptr i64 %219 to double*
  %222 = load double, double* %221, align 8
  %223 = fmul double %177, %222
  store double %223, double* %112, align 1, !tbaa !2452
  store i64 0, i64* %105, align 1, !tbaa !2452
  %224 = add i64 %267, 34
  store i64 %224, i64* %PC, align 8
  store double %223, double* %221, align 8
  %225 = load i64, i64* %RBP, align 8
  %226 = add i64 %225, -60
  %227 = load i64, i64* %PC, align 8
  %228 = add i64 %227, 7
  store i64 %228, i64* %PC, align 8
  %229 = inttoptr i64 %226 to i32*
  store i32 0, i32* %229, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_400f03

block_400ece:                                     ; preds = %block_400ec7, %block_400f6a
  %230 = phi i64 [ %.pre4, %block_400ec7 ], [ %173, %block_400f6a ]
  %231 = load i64, i64* %RBP, align 8
  %232 = add i64 %231, -56
  %233 = add i64 %230, 3
  store i64 %233, i64* %PC, align 8
  %234 = inttoptr i64 %232 to i32*
  %235 = load i32, i32* %234, align 4
  %236 = zext i32 %235 to i64
  store i64 %236, i64* %RAX, align 8, !tbaa !2428
  %237 = add i64 %231, -16
  %238 = add i64 %230, 6
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %237 to i32*
  %240 = load i32, i32* %239, align 4
  %241 = sub i32 %235, %240
  %242 = icmp ult i32 %235, %240
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %98, align 1, !tbaa !2434
  %244 = and i32 %241, 255
  %245 = tail call i32 @llvm.ctpop.i32(i32 %244) #8
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  %248 = xor i8 %247, 1
  store i8 %248, i8* %99, align 1, !tbaa !2447
  %249 = xor i32 %240, %235
  %250 = xor i32 %249, %241
  %251 = lshr i32 %250, 4
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  store i8 %253, i8* %100, align 1, !tbaa !2448
  %254 = icmp eq i32 %241, 0
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %101, align 1, !tbaa !2449
  %256 = lshr i32 %241, 31
  %257 = trunc i32 %256 to i8
  store i8 %257, i8* %102, align 1, !tbaa !2450
  %258 = lshr i32 %235, 31
  %259 = lshr i32 %240, 31
  %260 = xor i32 %259, %258
  %261 = xor i32 %256, %258
  %262 = add nuw nsw i32 %261, %260
  %263 = icmp eq i32 %262, 2
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %103, align 1, !tbaa !2451
  %265 = icmp ne i8 %257, 0
  %266 = xor i1 %265, %263
  %.v9 = select i1 %266, i64 12, i64 175
  %267 = add i64 %230, %.v9
  store i64 %267, i64* %PC, align 8, !tbaa !2428
  br i1 %266, label %block_400eda, label %block_400f7d

block_400ebb:                                     ; preds = %block_400eb4, %block_400f7d
  %268 = phi i64 [ %.pre3, %block_400eb4 ], [ %143, %block_400f7d ]
  %269 = load i64, i64* %RBP, align 8
  %270 = add i64 %269, -52
  %271 = add i64 %268, 3
  store i64 %271, i64* %PC, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = zext i32 %273 to i64
  store i64 %274, i64* %RAX, align 8, !tbaa !2428
  %275 = add i64 %269, -4
  %276 = add i64 %268, 6
  store i64 %276, i64* %PC, align 8
  %277 = inttoptr i64 %275 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = sub i32 %273, %278
  %280 = icmp ult i32 %273, %278
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %98, align 1, !tbaa !2434
  %282 = and i32 %279, 255
  %283 = tail call i32 @llvm.ctpop.i32(i32 %282) #8
  %284 = trunc i32 %283 to i8
  %285 = and i8 %284, 1
  %286 = xor i8 %285, 1
  store i8 %286, i8* %99, align 1, !tbaa !2447
  %287 = xor i32 %278, %273
  %288 = xor i32 %287, %279
  %289 = lshr i32 %288, 4
  %290 = trunc i32 %289 to i8
  %291 = and i8 %290, 1
  store i8 %291, i8* %100, align 1, !tbaa !2448
  %292 = icmp eq i32 %279, 0
  %293 = zext i1 %292 to i8
  store i8 %293, i8* %101, align 1, !tbaa !2449
  %294 = lshr i32 %279, 31
  %295 = trunc i32 %294 to i8
  store i8 %295, i8* %102, align 1, !tbaa !2450
  %296 = lshr i32 %273, 31
  %297 = lshr i32 %278, 31
  %298 = xor i32 %297, %296
  %299 = xor i32 %294, %296
  %300 = add nuw nsw i32 %299, %298
  %301 = icmp eq i32 %300, 2
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %103, align 1, !tbaa !2451
  %303 = icmp ne i8 %295, 0
  %304 = xor i1 %303, %301
  %.v8 = select i1 %304, i64 12, i64 213
  %305 = add i64 %268, %.v8
  store i64 %305, i64* %PC, align 8, !tbaa !2428
  br i1 %304, label %block_400ec7, label %block_400f90

block_400eb4:                                     ; preds = %block_400de1
  %306 = add i64 %842, 7
  store i64 %306, i64* %PC, align 8
  store i32 0, i32* %809, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_400ebb

block_400df4:                                     ; preds = %block_400e8e, %block_400ded
  %307 = phi i64 [ %804, %block_400e8e ], [ %.pre1, %block_400ded ]
  %308 = load i64, i64* %RBP, align 8
  %309 = add i64 %308, -56
  %310 = add i64 %307, 3
  store i64 %310, i64* %PC, align 8
  %311 = inttoptr i64 %309 to i32*
  %312 = load i32, i32* %311, align 4
  %313 = zext i32 %312 to i64
  store i64 %313, i64* %RAX, align 8, !tbaa !2428
  %314 = add i64 %308, -8
  %315 = add i64 %307, 6
  store i64 %315, i64* %PC, align 8
  %316 = inttoptr i64 %314 to i32*
  %317 = load i32, i32* %316, align 4
  %318 = sub i32 %312, %317
  %319 = icmp ult i32 %312, %317
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %98, align 1, !tbaa !2434
  %321 = and i32 %318, 255
  %322 = tail call i32 @llvm.ctpop.i32(i32 %321) #8
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  %325 = xor i8 %324, 1
  store i8 %325, i8* %99, align 1, !tbaa !2447
  %326 = xor i32 %317, %312
  %327 = xor i32 %326, %318
  %328 = lshr i32 %327, 4
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  store i8 %330, i8* %100, align 1, !tbaa !2448
  %331 = icmp eq i32 %318, 0
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %101, align 1, !tbaa !2449
  %333 = lshr i32 %318, 31
  %334 = trunc i32 %333 to i8
  store i8 %334, i8* %102, align 1, !tbaa !2450
  %335 = lshr i32 %312, 31
  %336 = lshr i32 %317, 31
  %337 = xor i32 %336, %335
  %338 = xor i32 %333, %335
  %339 = add nuw nsw i32 %338, %337
  %340 = icmp eq i32 %339, 2
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %103, align 1, !tbaa !2451
  %342 = icmp ne i8 %334, 0
  %343 = xor i1 %342, %340
  %.v6 = select i1 %343, i64 12, i64 173
  %344 = add i64 %307, %.v6
  store i64 %344, i64* %PC, align 8, !tbaa !2428
  br i1 %343, label %block_400e00, label %block_400ea1

block_400e2e:                                     ; preds = %block_400e22
  %345 = add i64 %522, -24
  %346 = add i64 %558, 5
  store i64 %346, i64* %PC, align 8
  %347 = inttoptr i64 %345 to double*
  %348 = load double, double* %347, align 8
  store double %348, double* %112, align 1, !tbaa !2452
  store double 0.000000e+00, double* %113, align 1, !tbaa !2452
  %349 = add i64 %522, -48
  %350 = add i64 %558, 9
  store i64 %350, i64* %PC, align 8
  %351 = inttoptr i64 %349 to i64*
  %352 = load i64, i64* %351, align 8
  store i64 %352, i64* %RAX, align 8, !tbaa !2428
  %353 = add i64 %522, -52
  %354 = add i64 %558, 13
  store i64 %354, i64* %PC, align 8
  %355 = inttoptr i64 %353 to i32*
  %356 = load i32, i32* %355, align 4
  %357 = sext i32 %356 to i64
  %358 = shl nsw i64 %357, 13
  store i64 %358, i64* %RCX, align 8, !tbaa !2428
  %359 = lshr i64 %357, 50
  %360 = and i64 %359, 1
  %361 = add i64 %358, %352
  store i64 %361, i64* %RAX, align 8, !tbaa !2428
  %362 = icmp ult i64 %361, %352
  %363 = icmp ult i64 %361, %358
  %364 = or i1 %362, %363
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %98, align 1, !tbaa !2434
  %366 = trunc i64 %361 to i32
  %367 = and i32 %366, 255
  %368 = tail call i32 @llvm.ctpop.i32(i32 %367) #8
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  %371 = xor i8 %370, 1
  store i8 %371, i8* %99, align 1, !tbaa !2447
  %372 = xor i64 %352, %361
  %373 = lshr i64 %372, 4
  %374 = trunc i64 %373 to i8
  %375 = and i8 %374, 1
  store i8 %375, i8* %100, align 1, !tbaa !2448
  %376 = icmp eq i64 %361, 0
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %101, align 1, !tbaa !2449
  %378 = lshr i64 %361, 63
  %379 = trunc i64 %378 to i8
  store i8 %379, i8* %102, align 1, !tbaa !2450
  %380 = lshr i64 %352, 63
  %381 = xor i64 %378, %380
  %382 = xor i64 %378, %360
  %383 = add nuw nsw i64 %381, %382
  %384 = icmp eq i64 %383, 2
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %103, align 1, !tbaa !2451
  %386 = add i64 %558, 24
  store i64 %386, i64* %PC, align 8
  %387 = load i32, i32* %525, align 4
  %388 = sext i32 %387 to i64
  store i64 %388, i64* %RCX, align 8, !tbaa !2428
  %389 = shl nsw i64 %388, 3
  %390 = add i64 %389, %361
  %391 = add i64 %558, 29
  store i64 %391, i64* %PC, align 8
  %392 = inttoptr i64 %390 to double*
  %393 = load double, double* %392, align 8
  %394 = fmul double %348, %393
  store double %394, double* %112, align 1, !tbaa !2452
  store i64 0, i64* %105, align 1, !tbaa !2452
  %395 = add i64 %522, 16
  %396 = add i64 %558, 33
  store i64 %396, i64* %PC, align 8
  %397 = inttoptr i64 %395 to i64*
  %398 = load i64, i64* %397, align 8
  store i64 %398, i64* %RAX, align 8, !tbaa !2428
  %399 = add i64 %558, 37
  store i64 %399, i64* %PC, align 8
  %400 = load i32, i32* %525, align 4
  %401 = sext i32 %400 to i64
  %402 = shl nsw i64 %401, 13
  store i64 %402, i64* %RCX, align 8, !tbaa !2428
  %403 = lshr i64 %401, 50
  %404 = and i64 %403, 1
  %405 = add i64 %402, %398
  store i64 %405, i64* %RAX, align 8, !tbaa !2428
  %406 = icmp ult i64 %405, %398
  %407 = icmp ult i64 %405, %402
  %408 = or i1 %406, %407
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %98, align 1, !tbaa !2434
  %410 = trunc i64 %405 to i32
  %411 = and i32 %410, 255
  %412 = tail call i32 @llvm.ctpop.i32(i32 %411) #8
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  %415 = xor i8 %414, 1
  store i8 %415, i8* %99, align 1, !tbaa !2447
  %416 = xor i64 %398, %405
  %417 = lshr i64 %416, 4
  %418 = trunc i64 %417 to i8
  %419 = and i8 %418, 1
  store i8 %419, i8* %100, align 1, !tbaa !2448
  %420 = icmp eq i64 %405, 0
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %101, align 1, !tbaa !2449
  %422 = lshr i64 %405, 63
  %423 = trunc i64 %422 to i8
  store i8 %423, i8* %102, align 1, !tbaa !2450
  %424 = lshr i64 %398, 63
  %425 = xor i64 %422, %424
  %426 = xor i64 %422, %404
  %427 = add nuw nsw i64 %425, %426
  %428 = icmp eq i64 %427, 2
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %103, align 1, !tbaa !2451
  %430 = load i64, i64* %RBP, align 8
  %431 = add i64 %430, -56
  %432 = add i64 %558, 48
  store i64 %432, i64* %PC, align 8
  %433 = inttoptr i64 %431 to i32*
  %434 = load i32, i32* %433, align 4
  %435 = sext i32 %434 to i64
  store i64 %435, i64* %RCX, align 8, !tbaa !2428
  %436 = shl nsw i64 %435, 3
  %437 = add i64 %436, %405
  %438 = add i64 %558, 53
  store i64 %438, i64* %PC, align 8
  %439 = inttoptr i64 %437 to double*
  %440 = load double, double* %439, align 8
  %441 = fmul double %394, %440
  store double %441, double* %112, align 1, !tbaa !2452
  store i64 0, i64* %105, align 1, !tbaa !2452
  %442 = add i64 %430, -40
  %443 = add i64 %558, 57
  store i64 %443, i64* %PC, align 8
  %444 = inttoptr i64 %442 to i64*
  %445 = load i64, i64* %444, align 8
  store i64 %445, i64* %RAX, align 8, !tbaa !2428
  %446 = add i64 %430, -52
  %447 = add i64 %558, 61
  store i64 %447, i64* %PC, align 8
  %448 = inttoptr i64 %446 to i32*
  %449 = load i32, i32* %448, align 4
  %450 = sext i32 %449 to i64
  %451 = shl nsw i64 %450, 13
  store i64 %451, i64* %RCX, align 8, !tbaa !2428
  %452 = lshr i64 %450, 50
  %453 = and i64 %452, 1
  %454 = add i64 %451, %445
  store i64 %454, i64* %RAX, align 8, !tbaa !2428
  %455 = icmp ult i64 %454, %445
  %456 = icmp ult i64 %454, %451
  %457 = or i1 %455, %456
  %458 = zext i1 %457 to i8
  store i8 %458, i8* %98, align 1, !tbaa !2434
  %459 = trunc i64 %454 to i32
  %460 = and i32 %459, 255
  %461 = tail call i32 @llvm.ctpop.i32(i32 %460) #8
  %462 = trunc i32 %461 to i8
  %463 = and i8 %462, 1
  %464 = xor i8 %463, 1
  store i8 %464, i8* %99, align 1, !tbaa !2447
  %465 = xor i64 %445, %454
  %466 = lshr i64 %465, 4
  %467 = trunc i64 %466 to i8
  %468 = and i8 %467, 1
  store i8 %468, i8* %100, align 1, !tbaa !2448
  %469 = icmp eq i64 %454, 0
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %101, align 1, !tbaa !2449
  %471 = lshr i64 %454, 63
  %472 = trunc i64 %471 to i8
  store i8 %472, i8* %102, align 1, !tbaa !2450
  %473 = lshr i64 %445, 63
  %474 = xor i64 %471, %473
  %475 = xor i64 %471, %453
  %476 = add nuw nsw i64 %474, %475
  %477 = icmp eq i64 %476, 2
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %103, align 1, !tbaa !2451
  %479 = add i64 %558, 72
  store i64 %479, i64* %PC, align 8
  %480 = load i32, i32* %433, align 4
  %481 = sext i32 %480 to i64
  store i64 %481, i64* %RCX, align 8, !tbaa !2428
  %482 = shl nsw i64 %481, 3
  %483 = add i64 %482, %454
  %484 = add i64 %558, 77
  store i64 %484, i64* %PC, align 8
  %485 = inttoptr i64 %483 to double*
  %486 = load double, double* %485, align 8
  %487 = fadd double %441, %486
  store double %487, double* %112, align 1, !tbaa !2452
  store i64 0, i64* %105, align 1, !tbaa !2452
  %488 = add i64 %558, 82
  store i64 %488, i64* %PC, align 8
  store double %487, double* %485, align 8
  %489 = load i64, i64* %RBP, align 8
  %490 = add i64 %489, -60
  %491 = load i64, i64* %PC, align 8
  %492 = add i64 %491, 3
  store i64 %492, i64* %PC, align 8
  %493 = inttoptr i64 %490 to i32*
  %494 = load i32, i32* %493, align 4
  %495 = add i32 %494, 1
  %496 = zext i32 %495 to i64
  store i64 %496, i64* %RAX, align 8, !tbaa !2428
  %497 = icmp eq i32 %494, -1
  %498 = icmp eq i32 %495, 0
  %499 = or i1 %497, %498
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %98, align 1, !tbaa !2434
  %501 = and i32 %495, 255
  %502 = tail call i32 @llvm.ctpop.i32(i32 %501) #8
  %503 = trunc i32 %502 to i8
  %504 = and i8 %503, 1
  %505 = xor i8 %504, 1
  store i8 %505, i8* %99, align 1, !tbaa !2447
  %506 = xor i32 %494, %495
  %507 = lshr i32 %506, 4
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  store i8 %509, i8* %100, align 1, !tbaa !2448
  %510 = zext i1 %498 to i8
  store i8 %510, i8* %101, align 1, !tbaa !2449
  %511 = lshr i32 %495, 31
  %512 = trunc i32 %511 to i8
  store i8 %512, i8* %102, align 1, !tbaa !2450
  %513 = lshr i32 %494, 31
  %514 = xor i32 %511, %513
  %515 = add nuw nsw i32 %514, %511
  %516 = icmp eq i32 %515, 2
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %103, align 1, !tbaa !2451
  %518 = add i64 %491, 9
  store i64 %518, i64* %PC, align 8
  store i32 %495, i32* %493, align 4
  %519 = load i64, i64* %PC, align 8
  %520 = add i64 %519, -103
  store i64 %520, i64* %PC, align 8, !tbaa !2428
  br label %block_400e22

block_400e22:                                     ; preds = %block_400e00, %block_400e2e
  %521 = phi i64 [ %.pre2, %block_400e00 ], [ %520, %block_400e2e ]
  %522 = load i64, i64* %RBP, align 8
  %523 = add i64 %522, -60
  %524 = add i64 %521, 3
  store i64 %524, i64* %PC, align 8
  %525 = inttoptr i64 %523 to i32*
  %526 = load i32, i32* %525, align 4
  %527 = zext i32 %526 to i64
  store i64 %527, i64* %RAX, align 8, !tbaa !2428
  %528 = add i64 %522, -12
  %529 = add i64 %521, 6
  store i64 %529, i64* %PC, align 8
  %530 = inttoptr i64 %528 to i32*
  %531 = load i32, i32* %530, align 4
  %532 = sub i32 %526, %531
  %533 = icmp ult i32 %526, %531
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %98, align 1, !tbaa !2434
  %535 = and i32 %532, 255
  %536 = tail call i32 @llvm.ctpop.i32(i32 %535) #8
  %537 = trunc i32 %536 to i8
  %538 = and i8 %537, 1
  %539 = xor i8 %538, 1
  store i8 %539, i8* %99, align 1, !tbaa !2447
  %540 = xor i32 %531, %526
  %541 = xor i32 %540, %532
  %542 = lshr i32 %541, 4
  %543 = trunc i32 %542 to i8
  %544 = and i8 %543, 1
  store i8 %544, i8* %100, align 1, !tbaa !2448
  %545 = icmp eq i32 %532, 0
  %546 = zext i1 %545 to i8
  store i8 %546, i8* %101, align 1, !tbaa !2449
  %547 = lshr i32 %532, 31
  %548 = trunc i32 %547 to i8
  store i8 %548, i8* %102, align 1, !tbaa !2450
  %549 = lshr i32 %526, 31
  %550 = lshr i32 %531, 31
  %551 = xor i32 %550, %549
  %552 = xor i32 %547, %549
  %553 = add nuw nsw i32 %552, %551
  %554 = icmp eq i32 %553, 2
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %103, align 1, !tbaa !2451
  %556 = icmp ne i8 %548, 0
  %557 = xor i1 %556, %554
  %.v7 = select i1 %557, i64 12, i64 108
  %558 = add i64 %521, %.v7
  store i64 %558, i64* %PC, align 8, !tbaa !2428
  br i1 %557, label %block_400e2e, label %block_400e8e

block_400ea1:                                     ; preds = %block_400df4
  %559 = add i64 %308, -52
  %560 = add i64 %344, 8
  store i64 %560, i64* %PC, align 8
  %561 = inttoptr i64 %559 to i32*
  %562 = load i32, i32* %561, align 4
  %563 = add i32 %562, 1
  %564 = zext i32 %563 to i64
  store i64 %564, i64* %RAX, align 8, !tbaa !2428
  %565 = icmp eq i32 %562, -1
  %566 = icmp eq i32 %563, 0
  %567 = or i1 %565, %566
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %98, align 1, !tbaa !2434
  %569 = and i32 %563, 255
  %570 = tail call i32 @llvm.ctpop.i32(i32 %569) #8
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  %573 = xor i8 %572, 1
  store i8 %573, i8* %99, align 1, !tbaa !2447
  %574 = xor i32 %562, %563
  %575 = lshr i32 %574, 4
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  store i8 %577, i8* %100, align 1, !tbaa !2448
  %578 = zext i1 %566 to i8
  store i8 %578, i8* %101, align 1, !tbaa !2449
  %579 = lshr i32 %563, 31
  %580 = trunc i32 %579 to i8
  store i8 %580, i8* %102, align 1, !tbaa !2450
  %581 = lshr i32 %562, 31
  %582 = xor i32 %579, %581
  %583 = add nuw nsw i32 %582, %579
  %584 = icmp eq i32 %583, 2
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %103, align 1, !tbaa !2451
  %586 = add i64 %344, 14
  store i64 %586, i64* %PC, align 8
  store i32 %563, i32* %561, align 4
  %587 = load i64, i64* %PC, align 8
  %588 = add i64 %587, -206
  store i64 %588, i64* %PC, align 8, !tbaa !2428
  br label %block_400de1

block_400ec7:                                     ; preds = %block_400ebb
  %589 = add i64 %269, -56
  %590 = add i64 %305, 7
  store i64 %590, i64* %PC, align 8
  %591 = inttoptr i64 %589 to i32*
  store i32 0, i32* %591, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_400ece

block_400f90:                                     ; preds = %block_400ebb
  %592 = add i64 %305, 1
  store i64 %592, i64* %PC, align 8
  %593 = load i64, i64* %10, align 8, !tbaa !2428
  %594 = add i64 %593, 8
  %595 = inttoptr i64 %593 to i64*
  %596 = load i64, i64* %595, align 8
  store i64 %596, i64* %RBP, align 8, !tbaa !2428
  store i64 %594, i64* %10, align 8, !tbaa !2428
  %597 = add i64 %305, 2
  store i64 %597, i64* %PC, align 8
  %598 = inttoptr i64 %594 to i64*
  %599 = load i64, i64* %598, align 8
  store i64 %599, i64* %PC, align 8, !tbaa !2428
  %600 = add i64 %593, 16
  store i64 %600, i64* %10, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400ded:                                     ; preds = %block_400de1
  %601 = add i64 %806, -56
  %602 = add i64 %842, 7
  store i64 %602, i64* %PC, align 8
  %603 = inttoptr i64 %601 to i32*
  store i32 0, i32* %603, align 4
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400df4

block_400f0f:                                     ; preds = %block_400f03
  %604 = add i64 %844, -40
  %605 = add i64 %880, 4
  store i64 %605, i64* %PC, align 8
  %606 = inttoptr i64 %604 to i64*
  %607 = load i64, i64* %606, align 8
  store i64 %607, i64* %RAX, align 8, !tbaa !2428
  %608 = add i64 %844, -52
  %609 = add i64 %880, 8
  store i64 %609, i64* %PC, align 8
  %610 = inttoptr i64 %608 to i32*
  %611 = load i32, i32* %610, align 4
  %612 = sext i32 %611 to i64
  %613 = shl nsw i64 %612, 13
  store i64 %613, i64* %RCX, align 8, !tbaa !2428
  %614 = lshr i64 %612, 50
  %615 = and i64 %614, 1
  %616 = add i64 %613, %607
  store i64 %616, i64* %RAX, align 8, !tbaa !2428
  %617 = icmp ult i64 %616, %607
  %618 = icmp ult i64 %616, %613
  %619 = or i1 %617, %618
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %98, align 1, !tbaa !2434
  %621 = trunc i64 %616 to i32
  %622 = and i32 %621, 255
  %623 = tail call i32 @llvm.ctpop.i32(i32 %622) #8
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  %626 = xor i8 %625, 1
  store i8 %626, i8* %99, align 1, !tbaa !2447
  %627 = xor i64 %607, %616
  %628 = lshr i64 %627, 4
  %629 = trunc i64 %628 to i8
  %630 = and i8 %629, 1
  store i8 %630, i8* %100, align 1, !tbaa !2448
  %631 = icmp eq i64 %616, 0
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %101, align 1, !tbaa !2449
  %633 = lshr i64 %616, 63
  %634 = trunc i64 %633 to i8
  store i8 %634, i8* %102, align 1, !tbaa !2450
  %635 = lshr i64 %607, 63
  %636 = xor i64 %633, %635
  %637 = xor i64 %633, %615
  %638 = add nuw nsw i64 %636, %637
  %639 = icmp eq i64 %638, 2
  %640 = zext i1 %639 to i8
  store i8 %640, i8* %103, align 1, !tbaa !2451
  %641 = add i64 %880, 19
  store i64 %641, i64* %PC, align 8
  %642 = load i32, i32* %847, align 4
  %643 = sext i32 %642 to i64
  store i64 %643, i64* %RCX, align 8, !tbaa !2428
  %644 = shl nsw i64 %643, 3
  %645 = add i64 %644, %616
  %646 = add i64 %880, 24
  store i64 %646, i64* %PC, align 8
  %647 = inttoptr i64 %645 to double*
  %648 = load double, double* %647, align 8
  store double %648, double* %112, align 1, !tbaa !2452
  store double 0.000000e+00, double* %113, align 1, !tbaa !2452
  %649 = add i64 %844, 24
  %650 = add i64 %880, 28
  store i64 %650, i64* %PC, align 8
  %651 = inttoptr i64 %649 to i64*
  %652 = load i64, i64* %651, align 8
  store i64 %652, i64* %RAX, align 8, !tbaa !2428
  %653 = add i64 %880, 32
  store i64 %653, i64* %PC, align 8
  %654 = load i32, i32* %847, align 4
  %655 = sext i32 %654 to i64
  %656 = shl nsw i64 %655, 13
  store i64 %656, i64* %RCX, align 8, !tbaa !2428
  %657 = lshr i64 %655, 50
  %658 = and i64 %657, 1
  %659 = add i64 %656, %652
  store i64 %659, i64* %RAX, align 8, !tbaa !2428
  %660 = icmp ult i64 %659, %652
  %661 = icmp ult i64 %659, %656
  %662 = or i1 %660, %661
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %98, align 1, !tbaa !2434
  %664 = trunc i64 %659 to i32
  %665 = and i32 %664, 255
  %666 = tail call i32 @llvm.ctpop.i32(i32 %665) #8
  %667 = trunc i32 %666 to i8
  %668 = and i8 %667, 1
  %669 = xor i8 %668, 1
  store i8 %669, i8* %99, align 1, !tbaa !2447
  %670 = xor i64 %652, %659
  %671 = lshr i64 %670, 4
  %672 = trunc i64 %671 to i8
  %673 = and i8 %672, 1
  store i8 %673, i8* %100, align 1, !tbaa !2448
  %674 = icmp eq i64 %659, 0
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %101, align 1, !tbaa !2449
  %676 = lshr i64 %659, 63
  %677 = trunc i64 %676 to i8
  store i8 %677, i8* %102, align 1, !tbaa !2450
  %678 = lshr i64 %652, 63
  %679 = xor i64 %676, %678
  %680 = xor i64 %676, %658
  %681 = add nuw nsw i64 %679, %680
  %682 = icmp eq i64 %681, 2
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %103, align 1, !tbaa !2451
  %684 = load i64, i64* %RBP, align 8
  %685 = add i64 %684, -56
  %686 = add i64 %880, 43
  store i64 %686, i64* %PC, align 8
  %687 = inttoptr i64 %685 to i32*
  %688 = load i32, i32* %687, align 4
  %689 = sext i32 %688 to i64
  store i64 %689, i64* %RCX, align 8, !tbaa !2428
  %690 = shl nsw i64 %689, 3
  %691 = add i64 %690, %659
  %692 = add i64 %880, 48
  store i64 %692, i64* %PC, align 8
  %693 = inttoptr i64 %691 to double*
  %694 = load double, double* %693, align 8
  %695 = fmul double %648, %694
  store double %695, double* %112, align 1, !tbaa !2452
  store i64 0, i64* %105, align 1, !tbaa !2452
  %696 = add i64 %684, 32
  %697 = add i64 %880, 52
  store i64 %697, i64* %PC, align 8
  %698 = inttoptr i64 %696 to i64*
  %699 = load i64, i64* %698, align 8
  store i64 %699, i64* %RAX, align 8, !tbaa !2428
  %700 = add i64 %684, -52
  %701 = add i64 %880, 56
  store i64 %701, i64* %PC, align 8
  %702 = inttoptr i64 %700 to i32*
  %703 = load i32, i32* %702, align 4
  %704 = sext i32 %703 to i64
  %705 = shl nsw i64 %704, 13
  store i64 %705, i64* %RCX, align 8, !tbaa !2428
  %706 = lshr i64 %704, 50
  %707 = and i64 %706, 1
  %708 = add i64 %705, %699
  store i64 %708, i64* %RAX, align 8, !tbaa !2428
  %709 = icmp ult i64 %708, %699
  %710 = icmp ult i64 %708, %705
  %711 = or i1 %709, %710
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %98, align 1, !tbaa !2434
  %713 = trunc i64 %708 to i32
  %714 = and i32 %713, 255
  %715 = tail call i32 @llvm.ctpop.i32(i32 %714) #8
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  %718 = xor i8 %717, 1
  store i8 %718, i8* %99, align 1, !tbaa !2447
  %719 = xor i64 %699, %708
  %720 = lshr i64 %719, 4
  %721 = trunc i64 %720 to i8
  %722 = and i8 %721, 1
  store i8 %722, i8* %100, align 1, !tbaa !2448
  %723 = icmp eq i64 %708, 0
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %101, align 1, !tbaa !2449
  %725 = lshr i64 %708, 63
  %726 = trunc i64 %725 to i8
  store i8 %726, i8* %102, align 1, !tbaa !2450
  %727 = lshr i64 %699, 63
  %728 = xor i64 %725, %727
  %729 = xor i64 %725, %707
  %730 = add nuw nsw i64 %728, %729
  %731 = icmp eq i64 %730, 2
  %732 = zext i1 %731 to i8
  store i8 %732, i8* %103, align 1, !tbaa !2451
  %733 = add i64 %880, 67
  store i64 %733, i64* %PC, align 8
  %734 = load i32, i32* %687, align 4
  %735 = sext i32 %734 to i64
  store i64 %735, i64* %RCX, align 8, !tbaa !2428
  %736 = shl nsw i64 %735, 3
  %737 = add i64 %736, %708
  %738 = add i64 %880, 72
  store i64 %738, i64* %PC, align 8
  %739 = inttoptr i64 %737 to double*
  %740 = load double, double* %739, align 8
  %741 = fadd double %695, %740
  store double %741, double* %112, align 1, !tbaa !2452
  store i64 0, i64* %105, align 1, !tbaa !2452
  %742 = add i64 %880, 77
  store i64 %742, i64* %PC, align 8
  store double %741, double* %739, align 8
  %743 = load i64, i64* %RBP, align 8
  %744 = add i64 %743, -60
  %745 = load i64, i64* %PC, align 8
  %746 = add i64 %745, 3
  store i64 %746, i64* %PC, align 8
  %747 = inttoptr i64 %744 to i32*
  %748 = load i32, i32* %747, align 4
  %749 = add i32 %748, 1
  %750 = zext i32 %749 to i64
  store i64 %750, i64* %RAX, align 8, !tbaa !2428
  %751 = icmp eq i32 %748, -1
  %752 = icmp eq i32 %749, 0
  %753 = or i1 %751, %752
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %98, align 1, !tbaa !2434
  %755 = and i32 %749, 255
  %756 = tail call i32 @llvm.ctpop.i32(i32 %755) #8
  %757 = trunc i32 %756 to i8
  %758 = and i8 %757, 1
  %759 = xor i8 %758, 1
  store i8 %759, i8* %99, align 1, !tbaa !2447
  %760 = xor i32 %748, %749
  %761 = lshr i32 %760, 4
  %762 = trunc i32 %761 to i8
  %763 = and i8 %762, 1
  store i8 %763, i8* %100, align 1, !tbaa !2448
  %764 = zext i1 %752 to i8
  store i8 %764, i8* %101, align 1, !tbaa !2449
  %765 = lshr i32 %749, 31
  %766 = trunc i32 %765 to i8
  store i8 %766, i8* %102, align 1, !tbaa !2450
  %767 = lshr i32 %748, 31
  %768 = xor i32 %765, %767
  %769 = add nuw nsw i32 %768, %765
  %770 = icmp eq i32 %769, 2
  %771 = zext i1 %770 to i8
  store i8 %771, i8* %103, align 1, !tbaa !2451
  %772 = add i64 %745, 9
  store i64 %772, i64* %PC, align 8
  store i32 %749, i32* %747, align 4
  %773 = load i64, i64* %PC, align 8
  %774 = add i64 %773, -98
  store i64 %774, i64* %PC, align 8, !tbaa !2428
  br label %block_400f03

block_400e8e:                                     ; preds = %block_400e22
  %775 = add i64 %522, -56
  %776 = add i64 %558, 8
  store i64 %776, i64* %PC, align 8
  %777 = inttoptr i64 %775 to i32*
  %778 = load i32, i32* %777, align 4
  %779 = add i32 %778, 1
  %780 = zext i32 %779 to i64
  store i64 %780, i64* %RAX, align 8, !tbaa !2428
  %781 = icmp eq i32 %778, -1
  %782 = icmp eq i32 %779, 0
  %783 = or i1 %781, %782
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %98, align 1, !tbaa !2434
  %785 = and i32 %779, 255
  %786 = tail call i32 @llvm.ctpop.i32(i32 %785) #8
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  %789 = xor i8 %788, 1
  store i8 %789, i8* %99, align 1, !tbaa !2447
  %790 = xor i32 %778, %779
  %791 = lshr i32 %790, 4
  %792 = trunc i32 %791 to i8
  %793 = and i8 %792, 1
  store i8 %793, i8* %100, align 1, !tbaa !2448
  %794 = zext i1 %782 to i8
  store i8 %794, i8* %101, align 1, !tbaa !2449
  %795 = lshr i32 %779, 31
  %796 = trunc i32 %795 to i8
  store i8 %796, i8* %102, align 1, !tbaa !2450
  %797 = lshr i32 %778, 31
  %798 = xor i32 %795, %797
  %799 = add nuw nsw i32 %798, %795
  %800 = icmp eq i32 %799, 2
  %801 = zext i1 %800 to i8
  store i8 %801, i8* %103, align 1, !tbaa !2451
  %802 = add i64 %558, 14
  store i64 %802, i64* %PC, align 8
  store i32 %779, i32* %777, align 4
  %803 = load i64, i64* %PC, align 8
  %804 = add i64 %803, -168
  store i64 %804, i64* %PC, align 8, !tbaa !2428
  br label %block_400df4

block_400de1:                                     ; preds = %block_400ea1, %block_400da0
  %805 = phi i64 [ %588, %block_400ea1 ], [ %.pre, %block_400da0 ]
  %806 = load i64, i64* %RBP, align 8
  %807 = add i64 %806, -52
  %808 = add i64 %805, 3
  store i64 %808, i64* %PC, align 8
  %809 = inttoptr i64 %807 to i32*
  %810 = load i32, i32* %809, align 4
  %811 = zext i32 %810 to i64
  store i64 %811, i64* %RAX, align 8, !tbaa !2428
  %812 = add i64 %806, -4
  %813 = add i64 %805, 6
  store i64 %813, i64* %PC, align 8
  %814 = inttoptr i64 %812 to i32*
  %815 = load i32, i32* %814, align 4
  %816 = sub i32 %810, %815
  %817 = icmp ult i32 %810, %815
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %98, align 1, !tbaa !2434
  %819 = and i32 %816, 255
  %820 = tail call i32 @llvm.ctpop.i32(i32 %819) #8
  %821 = trunc i32 %820 to i8
  %822 = and i8 %821, 1
  %823 = xor i8 %822, 1
  store i8 %823, i8* %99, align 1, !tbaa !2447
  %824 = xor i32 %815, %810
  %825 = xor i32 %824, %816
  %826 = lshr i32 %825, 4
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  store i8 %828, i8* %100, align 1, !tbaa !2448
  %829 = icmp eq i32 %816, 0
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %101, align 1, !tbaa !2449
  %831 = lshr i32 %816, 31
  %832 = trunc i32 %831 to i8
  store i8 %832, i8* %102, align 1, !tbaa !2450
  %833 = lshr i32 %810, 31
  %834 = lshr i32 %815, 31
  %835 = xor i32 %834, %833
  %836 = xor i32 %831, %833
  %837 = add nuw nsw i32 %836, %835
  %838 = icmp eq i32 %837, 2
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %103, align 1, !tbaa !2451
  %840 = icmp ne i8 %832, 0
  %841 = xor i1 %840, %838
  %.v = select i1 %841, i64 12, i64 211
  %842 = add i64 %805, %.v
  store i64 %842, i64* %PC, align 8, !tbaa !2428
  br i1 %841, label %block_400ded, label %block_400eb4

block_400f03:                                     ; preds = %block_400f0f, %block_400eda
  %843 = phi i64 [ %774, %block_400f0f ], [ %.pre5, %block_400eda ]
  %844 = load i64, i64* %RBP, align 8
  %845 = add i64 %844, -60
  %846 = add i64 %843, 3
  store i64 %846, i64* %PC, align 8
  %847 = inttoptr i64 %845 to i32*
  %848 = load i32, i32* %847, align 4
  %849 = zext i32 %848 to i64
  store i64 %849, i64* %RAX, align 8, !tbaa !2428
  %850 = add i64 %844, -8
  %851 = add i64 %843, 6
  store i64 %851, i64* %PC, align 8
  %852 = inttoptr i64 %850 to i32*
  %853 = load i32, i32* %852, align 4
  %854 = sub i32 %848, %853
  %855 = icmp ult i32 %848, %853
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %98, align 1, !tbaa !2434
  %857 = and i32 %854, 255
  %858 = tail call i32 @llvm.ctpop.i32(i32 %857) #8
  %859 = trunc i32 %858 to i8
  %860 = and i8 %859, 1
  %861 = xor i8 %860, 1
  store i8 %861, i8* %99, align 1, !tbaa !2447
  %862 = xor i32 %853, %848
  %863 = xor i32 %862, %854
  %864 = lshr i32 %863, 4
  %865 = trunc i32 %864 to i8
  %866 = and i8 %865, 1
  store i8 %866, i8* %100, align 1, !tbaa !2448
  %867 = icmp eq i32 %854, 0
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %101, align 1, !tbaa !2449
  %869 = lshr i32 %854, 31
  %870 = trunc i32 %869 to i8
  store i8 %870, i8* %102, align 1, !tbaa !2450
  %871 = lshr i32 %848, 31
  %872 = lshr i32 %853, 31
  %873 = xor i32 %872, %871
  %874 = xor i32 %869, %871
  %875 = add nuw nsw i32 %874, %873
  %876 = icmp eq i32 %875, 2
  %877 = zext i1 %876 to i8
  store i8 %877, i8* %103, align 1, !tbaa !2451
  %878 = icmp ne i8 %870, 0
  %879 = xor i1 %878, %876
  %.v10 = select i1 %879, i64 12, i64 103
  %880 = add i64 %843, %.v10
  store i64 %880, i64* %PC, align 8, !tbaa !2428
  br i1 %879, label %block_400f0f, label %block_400f6a

block_400e00:                                     ; preds = %block_400df4
  store i32 0, i32* %106, align 1, !tbaa !2432
  store i32 0, i32* %108, align 1, !tbaa !2432
  store i32 0, i32* %109, align 1, !tbaa !2432
  store i32 0, i32* %111, align 1, !tbaa !2432
  %881 = add i64 %308, -40
  %882 = add i64 %344, 7
  store i64 %882, i64* %PC, align 8
  %883 = inttoptr i64 %881 to i64*
  %884 = load i64, i64* %883, align 8
  store i64 %884, i64* %RAX, align 8, !tbaa !2428
  %885 = add i64 %308, -52
  %886 = add i64 %344, 11
  store i64 %886, i64* %PC, align 8
  %887 = inttoptr i64 %885 to i32*
  %888 = load i32, i32* %887, align 4
  %889 = sext i32 %888 to i64
  %890 = shl nsw i64 %889, 13
  store i64 %890, i64* %RCX, align 8, !tbaa !2428
  %891 = lshr i64 %889, 50
  %892 = and i64 %891, 1
  %893 = add i64 %890, %884
  store i64 %893, i64* %RAX, align 8, !tbaa !2428
  %894 = icmp ult i64 %893, %884
  %895 = icmp ult i64 %893, %890
  %896 = or i1 %894, %895
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %98, align 1, !tbaa !2434
  %898 = trunc i64 %893 to i32
  %899 = and i32 %898, 255
  %900 = tail call i32 @llvm.ctpop.i32(i32 %899) #8
  %901 = trunc i32 %900 to i8
  %902 = and i8 %901, 1
  %903 = xor i8 %902, 1
  store i8 %903, i8* %99, align 1, !tbaa !2447
  %904 = xor i64 %884, %893
  %905 = lshr i64 %904, 4
  %906 = trunc i64 %905 to i8
  %907 = and i8 %906, 1
  store i8 %907, i8* %100, align 1, !tbaa !2448
  %908 = icmp eq i64 %893, 0
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %101, align 1, !tbaa !2449
  %910 = lshr i64 %893, 63
  %911 = trunc i64 %910 to i8
  store i8 %911, i8* %102, align 1, !tbaa !2450
  %912 = lshr i64 %884, 63
  %913 = xor i64 %910, %912
  %914 = xor i64 %910, %892
  %915 = add nuw nsw i64 %913, %914
  %916 = icmp eq i64 %915, 2
  %917 = zext i1 %916 to i8
  store i8 %917, i8* %103, align 1, !tbaa !2451
  %918 = add i64 %344, 22
  store i64 %918, i64* %PC, align 8
  %919 = load i32, i32* %311, align 4
  %920 = sext i32 %919 to i64
  store i64 %920, i64* %RCX, align 8, !tbaa !2428
  %921 = shl nsw i64 %920, 3
  %922 = add i64 %921, %893
  %923 = add i64 %344, 27
  store i64 %923, i64* %PC, align 8
  %924 = load i64, i64* %53, align 1
  %925 = inttoptr i64 %922 to i64*
  store i64 %924, i64* %925, align 8
  %926 = load i64, i64* %RBP, align 8
  %927 = add i64 %926, -60
  %928 = load i64, i64* %PC, align 8
  %929 = add i64 %928, 7
  store i64 %929, i64* %PC, align 8
  %930 = inttoptr i64 %927 to i32*
  store i32 0, i32* %930, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_400e22
}

; Function Attrs: noinline
define %struct.Memory* @sub_400850_polybench_alloc_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400850:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC, align 8
  %6 = load i64, i64* %RSP, align 8, !tbaa !2428
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 8
  %9 = load i64, i64* %PC, align 8
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %10 = add i64 %6, -40
  store i64 %10, i64* %RSP, align 8, !tbaa !2428
  %11 = icmp ult i64 %7, 32
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1, !tbaa !2434
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #8
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1, !tbaa !2447
  %21 = xor i64 %7, %10
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1, !tbaa !2448
  %26 = icmp eq i64 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1, !tbaa !2449
  %29 = lshr i64 %10, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1, !tbaa !2450
  %32 = lshr i64 %7, 63
  %33 = xor i64 %29, %32
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1, !tbaa !2451
  %38 = add i64 %6, -16
  %39 = load i64, i64* %RDI, align 8
  %40 = add i64 %9, 11
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %38 to i64*
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %RBP, align 8
  %43 = add i64 %42, -12
  %44 = load i32, i32* %ESI, align 4
  %45 = load i64, i64* %PC, align 8
  %46 = add i64 %45, 3
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %43 to i32*
  store i32 %44, i32* %47, align 4
  %48 = load i64, i64* %RBP, align 8
  %49 = add i64 %48, -8
  %50 = load i64, i64* %PC, align 8
  %51 = add i64 %50, 4
  store i64 %51, i64* %PC, align 8
  %52 = inttoptr i64 %49 to i64*
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %RDI, align 8, !tbaa !2428
  %54 = add i64 %48, -24
  %55 = add i64 %50, 8
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %54 to i64*
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %RBP, align 8
  %58 = add i64 %57, -12
  %59 = load i64, i64* %PC, align 8
  %60 = add i64 %59, 4
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %58 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %RDI, align 8, !tbaa !2428
  %64 = add i64 %57, -24
  %65 = add i64 %59, 9
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %64 to i64*
  %67 = load i64, i64* %66, align 8
  %68 = sext i32 %62 to i128
  %69 = and i128 %68, -18446744073709551616
  %70 = sext i64 %67 to i128
  %71 = and i128 %70, -18446744073709551616
  %72 = zext i64 %63 to i128
  %73 = or i128 %69, %72
  %74 = zext i64 %67 to i128
  %75 = or i128 %71, %74
  %76 = mul nsw i128 %75, %73
  %77 = trunc i128 %76 to i64
  store i64 %77, i64* %RDI, align 8, !tbaa !2428
  %78 = sext i64 %77 to i128
  %79 = icmp ne i128 %78, %76
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %13, align 1, !tbaa !2434
  %81 = trunc i128 %76 to i32
  %82 = and i32 %81, 255
  %83 = tail call i32 @llvm.ctpop.i32(i32 %82) #8
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %20, align 1, !tbaa !2447
  store i8 0, i8* %25, align 1, !tbaa !2448
  store i8 0, i8* %28, align 1, !tbaa !2449
  %87 = lshr i64 %77, 63
  %88 = trunc i64 %87 to i8
  store i8 %88, i8* %31, align 1, !tbaa !2450
  store i8 %80, i8* %37, align 1, !tbaa !2451
  %89 = add i64 %59, 13
  store i64 %89, i64* %PC, align 8
  store i64 %77, i64* %66, align 8
  %90 = load i64, i64* %RBP, align 8
  %91 = add i64 %90, -24
  %92 = load i64, i64* %PC, align 8
  %93 = add i64 %92, 4
  store i64 %93, i64* %PC, align 8
  %94 = inttoptr i64 %91 to i64*
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %RDI, align 8, !tbaa !2428
  %96 = add i64 %92, 28
  %97 = add i64 %92, 9
  %98 = load i64, i64* %RSP, align 8, !tbaa !2428
  %99 = add i64 %98, -8
  %100 = inttoptr i64 %99 to i64*
  store i64 %97, i64* %100, align 8
  store i64 %99, i64* %RSP, align 8, !tbaa !2428
  store i64 %96, i64* %PC, align 8, !tbaa !2428
  %101 = tail call %struct.Memory* @sub_400890_xmalloc_renamed_(%struct.State* nonnull %0, i64 %96, %struct.Memory* %2)
  %102 = load i64, i64* %RBP, align 8
  %103 = add i64 %102, -32
  %104 = load i64, i64* %RAX, align 8
  %105 = load i64, i64* %PC, align 8
  %106 = add i64 %105, 4
  store i64 %106, i64* %PC, align 8
  %107 = inttoptr i64 %103 to i64*
  store i64 %104, i64* %107, align 8
  %108 = load i64, i64* %RBP, align 8
  %109 = add i64 %108, -32
  %110 = load i64, i64* %PC, align 8
  %111 = add i64 %110, 4
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %109 to i64*
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %RAX, align 8, !tbaa !2428
  %114 = load i64, i64* %RSP, align 8
  %115 = add i64 %114, 32
  store i64 %115, i64* %RSP, align 8, !tbaa !2428
  %116 = icmp ugt i64 %114, -33
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %13, align 1, !tbaa !2434
  %118 = trunc i64 %115 to i32
  %119 = and i32 %118, 255
  %120 = tail call i32 @llvm.ctpop.i32(i32 %119) #8
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = xor i8 %122, 1
  store i8 %123, i8* %20, align 1, !tbaa !2447
  %124 = xor i64 %114, %115
  %125 = lshr i64 %124, 4
  %126 = trunc i64 %125 to i8
  %127 = and i8 %126, 1
  store i8 %127, i8* %25, align 1, !tbaa !2448
  %128 = icmp eq i64 %115, 0
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %28, align 1, !tbaa !2449
  %130 = lshr i64 %115, 63
  %131 = trunc i64 %130 to i8
  store i8 %131, i8* %31, align 1, !tbaa !2450
  %132 = lshr i64 %114, 63
  %133 = xor i64 %130, %132
  %134 = add nuw nsw i64 %133, %130
  %135 = icmp eq i64 %134, 2
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %37, align 1, !tbaa !2451
  %137 = add i64 %110, 9
  store i64 %137, i64* %PC, align 8
  %138 = add i64 %114, 40
  %139 = inttoptr i64 %115 to i64*
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %RBP, align 8, !tbaa !2428
  store i64 %138, i64* %RSP, align 8, !tbaa !2428
  %141 = add i64 %110, 10
  store i64 %141, i64* %PC, align 8
  %142 = inttoptr i64 %138 to i64*
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %PC, align 8, !tbaa !2428
  %144 = add i64 %114, 48
  store i64 %144, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %101
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400720_frame_dummy() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400720;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_400720_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400720_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4006f0___do_global_dtors_aux() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4006f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_4006f0___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4006f0___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_4005c0_free(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020e0_calloc(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4015c0___libc_csu_fini() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4015c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_4015c0___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4015c0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401550___libc_csu_init() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401550;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_401550___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401550___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400910;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400910_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020d8___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020e8_fprintf(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020f0_malloc(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_4005e0_fputs(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_602110_printf(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020f8_exit(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_602148_posix_memalign(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @posix_memalign to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_flush_cache() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400730;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @polybench_flush_cache_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400730_polybench_flush_cache(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400590;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400590__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_alloc_data() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400850;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @polybench_alloc_data_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400850_polybench_alloc_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4015c4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @.term_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4015c4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_print() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400810;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @polybench_timer_print_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400810_polybench_timer_print(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_start() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @polybench_timer_start_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4007c0_polybench_timer_start(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_stop() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @13, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @polybench_timer_stop_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4007f0_polybench_timer_stop(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_prepare_instruments() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @14, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @polybench_prepare_instruments_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4007b0_polybench_prepare_instruments(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

define internal void @__mcsema_constructor() {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_401550___libc_csu_init()
  ret void
}

define internal void @__mcsema_destructor() {
  tail call void @callback_sub_4015c0___libc_csu_fini()
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline }
attributes #6 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { naked nobuiltin noinline }
attributes #8 = { nounwind }
attributes #9 = { alwaysinline nobuiltin nounwind }

!llvm.ident = !{!0, !0}
!llvm.dbg.cu = !{!1}
!llvm.module.flags = !{!1259, !1260}

!0 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!1 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !2, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !3, retainedTypes: !67, imports: !70)
!2 = !DIFile(filename: "/home/ubuntu/Github/remill/remill/Arch/X86/Runtime/BasicBlock.cpp", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!3 = !{!4, !26, !35, !39, !45, !51, !55, !61}
!4 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "Name", scope: !6, file: !5, line: 70, baseType: !8, size: 32, elements: !11, identifier: "_ZTSN14AsyncHyperCall4NameE")
!5 = !DIFile(filename: "/home/ubuntu/Github/remill/remill/Arch/Runtime/HyperCall.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AsyncHyperCall", file: !5, line: 68, size: 8, elements: !7, identifier: "_ZTS14AsyncHyperCall")
!7 = !{}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 183, baseType: !10)
!9 = !DIFile(filename: "/home/ubuntu/Github/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stdint.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!12 = !DIEnumerator(name: "kInvalid", value: 0)
!13 = !DIEnumerator(name: "kX86Int1", value: 1)
!14 = !DIEnumerator(name: "kX86Int3", value: 2)
!15 = !DIEnumerator(name: "kX86IntO", value: 3)
!16 = !DIEnumerator(name: "kX86IntN", value: 4)
!17 = !DIEnumerator(name: "kX86Bound", value: 5)
!18 = !DIEnumerator(name: "kX86IRet", value: 6)
!19 = !DIEnumerator(name: "kX86SysCall", value: 7)
!20 = !DIEnumerator(name: "kX86SysRet", value: 8)
!21 = !DIEnumerator(name: "kX86SysEnter", value: 9)
!22 = !DIEnumerator(name: "kX86SysExit", value: 10)
!23 = !DIEnumerator(name: "kX86JmpFar", value: 11)
!24 = !DIEnumerator(name: "kAArch64SupervisorCall", value: 12)
!25 = !DIEnumerator(name: "kInvalidInstruction", value: 13)
!26 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "RequestPrivilegeLevel", file: !27, line: 64, baseType: !28, size: 16, elements: !30, identifier: "_ZTS21RequestPrivilegeLevel")
!27 = !DIFile(filename: "/home/ubuntu/Github/remill/remill/Arch/X86/Runtime/State.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !9, line: 218, baseType: !29)
!29 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "kRPLRingZero", value: 0)
!32 = !DIEnumerator(name: "kRPLRingOne", value: 1)
!33 = !DIEnumerator(name: "kRPLRingTwo", value: 2)
!34 = !DIEnumerator(name: "kRPLRingThree", value: 3)
!35 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "TableIndicator", file: !27, line: 71, baseType: !28, size: 16, elements: !36, identifier: "_ZTS14TableIndicator")
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "kGlobalDescriptorTable", value: 0)
!38 = !DIEnumerator(name: "kLocalDescriptorTable", value: 1)
!39 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUPrecisionControl", file: !27, line: 123, baseType: !28, size: 16, elements: !40, identifier: "_ZTS19FPUPrecisionControl")
!40 = !{!41, !42, !43, !44}
!41 = !DIEnumerator(name: "kPrecisionSingle", value: 0)
!42 = !DIEnumerator(name: "kPrecisionReserved", value: 1)
!43 = !DIEnumerator(name: "kPrecisionDouble", value: 2)
!44 = !DIEnumerator(name: "kPrecisionExtended", value: 3)
!45 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPURoundingControl", file: !27, line: 130, baseType: !28, size: 16, elements: !46, identifier: "_ZTS18FPURoundingControl")
!46 = !{!47, !48, !49, !50}
!47 = !DIEnumerator(name: "kFPURoundToNearestEven", value: 0)
!48 = !DIEnumerator(name: "kFPURoundDownNegInf", value: 1)
!49 = !DIEnumerator(name: "kFPURoundUpInf", value: 2)
!50 = !DIEnumerator(name: "kFPURoundToZero", value: 3)
!51 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUInfinityControl", file: !27, line: 137, baseType: !28, size: 16, elements: !52, identifier: "_ZTS18FPUInfinityControl")
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "kInfinityProjective", value: 0)
!54 = !DIEnumerator(name: "kInfinityAffine", value: 1)
!55 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUTag", file: !27, line: 214, baseType: !28, size: 16, elements: !56, identifier: "_ZTS6FPUTag")
!56 = !{!57, !58, !59, !60}
!57 = !DIEnumerator(name: "kFPUTagNonZero", value: 0)
!58 = !DIEnumerator(name: "kFPUTagZero", value: 1)
!59 = !DIEnumerator(name: "kFPUTagSpecial", value: 2)
!60 = !DIEnumerator(name: "kFPUTagEmpty", value: 3)
!61 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUAbridgedTag", file: !27, line: 221, baseType: !62, size: 8, elements: !64, identifier: "_ZTS14FPUAbridgedTag")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !9, line: 237, baseType: !63)
!63 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!64 = !{!65, !66}
!65 = !DIEnumerator(name: "kFPUAbridgedTagEmpty", value: 0)
!66 = !DIEnumerator(name: "kFPUAbridgedTagValid", value: 1)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!70 = !{!71, !77, !83, !86, !93, !97, !102, !104, !112, !116, !120, !132, !136, !140, !144, !148, !153, !157, !161, !165, !169, !177, !181, !185, !187, !191, !195, !199, !205, !209, !213, !215, !223, !227, !235, !237, !241, !245, !249, !253, !258, !263, !268, !269, !270, !271, !274, !275, !276, !277, !278, !279, !280, !335, !339, !355, !358, !363, !371, !376, !380, !384, !388, !392, !394, !396, !400, !406, !410, !416, !422, !424, !428, !432, !436, !440, !451, !453, !457, !461, !465, !467, !471, !475, !479, !481, !483, !487, !495, !499, !503, !507, !509, !515, !517, !523, !527, !531, !535, !539, !543, !547, !549, !551, !555, !559, !563, !565, !569, !573, !575, !577, !581, !585, !589, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !606, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !634, !635, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !665, !669, !674, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !697, !699, !701, !703, !706, !712, !717, !721, !723, !725, !727, !729, !736, !740, !744, !748, !752, !756, !761, !765, !767, !771, !777, !781, !786, !788, !790, !794, !798, !802, !804, !806, !808, !810, !814, !816, !818, !822, !826, !830, !834, !838, !840, !842, !846, !850, !854, !858, !860, !862, !866, !870, !871, !872, !873, !874, !875, !880, !882, !884, !888, !890, !892, !894, !896, !898, !900, !902, !907, !911, !913, !915, !920, !922, !924, !926, !928, !930, !932, !935, !937, !939, !943, !947, !949, !951, !953, !955, !957, !959, !961, !963, !965, !967, !971, !975, !977, !979, !981, !983, !985, !987, !989, !991, !993, !995, !997, !999, !1001, !1003, !1005, !1009, !1013, !1017, !1019, !1021, !1023, !1025, !1027, !1029, !1031, !1033, !1035, !1039, !1043, !1047, !1049, !1051, !1053, !1057, !1061, !1065, !1067, !1069, !1071, !1073, !1075, !1077, !1079, !1081, !1083, !1085, !1087, !1089, !1093, !1097, !1101, !1103, !1105, !1107, !1109, !1113, !1117, !1119, !1121, !1123, !1125, !1127, !1129, !1133, !1137, !1139, !1141, !1143, !1145, !1149, !1153, !1157, !1159, !1161, !1163, !1165, !1167, !1169, !1173, !1177, !1181, !1183, !1187, !1191, !1193, !1195, !1197, !1199, !1201, !1203, !1207, !1209, !1212, !1217, !1219, !1225, !1227, !1229, !1231, !1236, !1238, !1244, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258}
!71 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !72, entity: !74, line: 58)
!72 = !DINamespace(name: "__gnu_debug", scope: null, file: !73, line: 56)
!73 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/debug/debug.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!74 = !DINamespace(name: "__debug", scope: !75, file: !73, line: 50)
!75 = !DINamespace(name: "std", scope: null, file: !76, line: 229)
!76 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/x86_64-linux-gnu/c++/7.4.0/bits/c++config.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !78, line: 52)
!78 = !DISubprogram(name: "abs", scope: !79, file: !79, line: 837, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!79 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!80 = !DISubroutineType(types: !81)
!81 = !{!82, !82}
!82 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!83 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !84, line: 127)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !79, line: 62, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !87, line: 128)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !79, line: 70, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 66, size: 128, elements: !89, identifier: "_ZTS6ldiv_t")
!89 = !{!90, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !88, file: !79, line: 68, baseType: !91, size: 64)
!91 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !88, file: !79, line: 69, baseType: !91, size: 64, offset: 64)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !94, line: 130)
!94 = !DISubprogram(name: "abort", scope: !79, file: !79, line: 588, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!95 = !DISubroutineType(types: !96)
!96 = !{null}
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !98, line: 134)
!98 = !DISubprogram(name: "atexit", scope: !79, file: !79, line: 592, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!99 = !DISubroutineType(types: !100)
!100 = !{!82, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !103, line: 137)
!103 = !DISubprogram(name: "at_quick_exit", scope: !79, file: !79, line: 597, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !105, line: 140)
!105 = !DISubprogram(name: "atof", scope: !79, file: !79, line: 101, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !109}
!108 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !113, line: 141)
!113 = !DISubprogram(name: "atoi", scope: !79, file: !79, line: 104, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!114 = !DISubroutineType(types: !115)
!115 = !{!82, !109}
!116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !117, line: 142)
!117 = !DISubprogram(name: "atol", scope: !79, file: !79, line: 107, type: !118, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!118 = !DISubroutineType(types: !119)
!119 = !{!91, !109}
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !121, line: 143)
!121 = !DISubprogram(name: "bsearch", scope: !79, file: !79, line: 817, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!122 = !DISubroutineType(types: !123)
!123 = !{!124, !68, !68, !125, !125, !128}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !126, line: 62, baseType: !127)
!126 = !DIFile(filename: "/home/ubuntu/Github/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!127 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !79, line: 805, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!82, !68, !68}
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !133, line: 144)
!133 = !DISubprogram(name: "calloc", scope: !79, file: !79, line: 541, type: !134, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!134 = !DISubroutineType(types: !135)
!135 = !{!124, !125, !125}
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !137, line: 145)
!137 = !DISubprogram(name: "div", scope: !79, file: !79, line: 849, type: !138, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!138 = !DISubroutineType(types: !139)
!139 = !{!84, !82, !82}
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !141, line: 146)
!141 = !DISubprogram(name: "exit", scope: !79, file: !79, line: 614, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !82}
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !145, line: 147)
!145 = !DISubprogram(name: "free", scope: !79, file: !79, line: 563, type: !146, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !124}
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !149, line: 148)
!149 = !DISubprogram(name: "getenv", scope: !79, file: !79, line: 631, type: !150, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!150 = !DISubroutineType(types: !151)
!151 = !{!152, !109}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !154, line: 149)
!154 = !DISubprogram(name: "labs", scope: !79, file: !79, line: 838, type: !155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DISubroutineType(types: !156)
!156 = !{!91, !91}
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !158, line: 150)
!158 = !DISubprogram(name: "ldiv", scope: !79, file: !79, line: 851, type: !159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DISubroutineType(types: !160)
!160 = !{!87, !91, !91}
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !162, line: 151)
!162 = !DISubprogram(name: "malloc", scope: !79, file: !79, line: 539, type: !163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!163 = !DISubroutineType(types: !164)
!164 = !{!124, !125}
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !166, line: 153)
!166 = !DISubprogram(name: "mblen", scope: !79, file: !79, line: 919, type: !167, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DISubroutineType(types: !168)
!168 = !{!82, !109, !125}
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !170, line: 154)
!170 = !DISubprogram(name: "mbstowcs", scope: !79, file: !79, line: 930, type: !171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DISubroutineType(types: !172)
!172 = !{!125, !173, !176, !125}
!173 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!176 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !109)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !178, line: 155)
!178 = !DISubprogram(name: "mbtowc", scope: !79, file: !79, line: 922, type: !179, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!179 = !DISubroutineType(types: !180)
!180 = !{!82, !173, !176, !125}
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !182, line: 157)
!182 = !DISubprogram(name: "qsort", scope: !79, file: !79, line: 827, type: !183, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !124, !125, !125, !128}
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !186, line: 160)
!186 = !DISubprogram(name: "quick_exit", scope: !79, file: !79, line: 620, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !188, line: 163)
!188 = !DISubprogram(name: "rand", scope: !79, file: !79, line: 453, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!189 = !DISubroutineType(types: !190)
!190 = !{!82}
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !192, line: 164)
!192 = !DISubprogram(name: "realloc", scope: !79, file: !79, line: 549, type: !193, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DISubroutineType(types: !194)
!194 = !{!124, !124, !125}
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !196, line: 165)
!196 = !DISubprogram(name: "srand", scope: !79, file: !79, line: 455, type: !197, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !10}
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !200, line: 166)
!200 = !DISubprogram(name: "strtod", scope: !79, file: !79, line: 117, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DISubroutineType(types: !202)
!202 = !{!108, !176, !203}
!203 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !206, line: 167)
!206 = !DISubprogram(name: "strtol", scope: !79, file: !79, line: 176, type: !207, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!207 = !DISubroutineType(types: !208)
!208 = !{!91, !176, !203, !82}
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !210, line: 168)
!210 = !DISubprogram(name: "strtoul", scope: !79, file: !79, line: 180, type: !211, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!211 = !DISubroutineType(types: !212)
!212 = !{!127, !176, !203, !82}
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !214, line: 169)
!214 = !DISubprogram(name: "system", scope: !79, file: !79, line: 781, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !216, line: 171)
!216 = !DISubprogram(name: "wcstombs", scope: !79, file: !79, line: 933, type: !217, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!217 = !DISubroutineType(types: !218)
!218 = !{!125, !219, !220, !125}
!219 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !152)
!220 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !224, line: 172)
!224 = !DISubprogram(name: "wctomb", scope: !79, file: !79, line: 926, type: !225, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!225 = !DISubroutineType(types: !226)
!226 = !{!82, !152, !175}
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !229, line: 200)
!228 = !DINamespace(name: "__gnu_cxx", scope: null, file: !76, line: 255)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !79, line: 80, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 76, size: 128, elements: !231, identifier: "_ZTS7lldiv_t")
!231 = !{!232, !234}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !230, file: !79, line: 78, baseType: !233, size: 64)
!233 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !230, file: !79, line: 79, baseType: !233, size: 64, offset: 64)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !236, line: 206)
!236 = !DISubprogram(name: "_Exit", scope: !79, file: !79, line: 626, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !238, line: 210)
!238 = !DISubprogram(name: "llabs", scope: !79, file: !79, line: 841, type: !239, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!239 = !DISubroutineType(types: !240)
!240 = !{!233, !233}
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !242, line: 216)
!242 = !DISubprogram(name: "lldiv", scope: !79, file: !79, line: 855, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!243 = !DISubroutineType(types: !244)
!244 = !{!229, !233, !233}
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !246, line: 227)
!246 = !DISubprogram(name: "atoll", scope: !79, file: !79, line: 112, type: !247, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!247 = !DISubroutineType(types: !248)
!248 = !{!233, !109}
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !250, line: 228)
!250 = !DISubprogram(name: "strtoll", scope: !79, file: !79, line: 200, type: !251, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!251 = !DISubroutineType(types: !252)
!252 = !{!233, !176, !203, !82}
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !254, line: 229)
!254 = !DISubprogram(name: "strtoull", scope: !79, file: !79, line: 205, type: !255, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!255 = !DISubroutineType(types: !256)
!256 = !{!257, !176, !203, !82}
!257 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !259, line: 231)
!259 = !DISubprogram(name: "strtof", scope: !79, file: !79, line: 123, type: !260, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !176, !203}
!262 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !264, line: 232)
!264 = !DISubprogram(name: "strtold", scope: !79, file: !79, line: 126, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!265 = !DISubroutineType(types: !266)
!266 = !{!267, !176, !203}
!267 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !229, line: 240)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !236, line: 242)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !238, line: 244)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !272, line: 245)
!272 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !228, file: !273, line: 213, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!273 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/cstdlib", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !242, line: 246)
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !246, line: 248)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !259, line: 249)
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !250, line: 250)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !254, line: 251)
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !264, line: 252)
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !281, line: 57)
!281 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !283, file: !282, line: 79, size: 64, elements: !284, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!282 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/bits/exception_ptr.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!283 = !DINamespace(name: "__exception_ptr", scope: !75, file: !282, line: 52)
!284 = !{!285, !286, !290, !293, !294, !299, !300, !304, !309, !313, !317, !320, !321, !324, !328}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !281, file: !282, line: 81, baseType: !124, size: 64)
!286 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 83, type: !287, isLocal: false, isDefinition: false, scopeLine: 83, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !289, !124}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!290 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !281, file: !282, line: 85, type: !291, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !289}
!293 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !281, file: !282, line: 86, type: !291, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false)
!294 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !281, file: !282, line: 88, type: !295, isLocal: false, isDefinition: false, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false)
!295 = !DISubroutineType(types: !296)
!296 = !{!124, !297}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!299 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 96, type: !291, isLocal: false, isDefinition: false, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!300 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 98, type: !301, isLocal: false, isDefinition: false, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !289, !303}
!303 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !298, size: 64)
!304 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 101, type: !305, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !289, !307}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !75, file: !76, line: 235, baseType: !308)
!308 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!309 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 105, type: !310, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !289, !312}
!312 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !281, size: 64)
!313 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !281, file: !282, line: 118, type: !314, isLocal: false, isDefinition: false, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!314 = !DISubroutineType(types: !315)
!315 = !{!316, !289, !303}
!316 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !281, size: 64)
!317 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !281, file: !282, line: 122, type: !318, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!318 = !DISubroutineType(types: !319)
!319 = !{!316, !289, !312}
!320 = !DISubprogram(name: "~exception_ptr", scope: !281, file: !282, line: 129, type: !291, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!321 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !281, file: !282, line: 132, type: !322, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !289, !316}
!324 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !281, file: !282, line: 144, type: !325, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!325 = !DISubroutineType(types: !326)
!326 = !{!327, !297}
!327 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!328 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !281, file: !282, line: 153, type: !329, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!329 = !DISubroutineType(types: !330)
!330 = !{!331, !297}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !75, file: !334, line: 88, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!334 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/typeinfo", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !283, entity: !336, line: 73)
!336 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !75, file: !282, line: 69, type: !337, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !281}
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !340, line: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !341, line: 6, baseType: !342)
!341 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !343, line: 21, baseType: !344)
!343 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !343, line: 13, size: 64, elements: !345, identifier: "_ZTS11__mbstate_t")
!345 = !{!346, !347}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !344, file: !343, line: 15, baseType: !82, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !344, file: !343, line: 20, baseType: !348, size: 32, offset: 32)
!348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !343, line: 16, size: 32, elements: !349, identifier: "_ZTSN11__mbstate_tUt_E")
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !348, file: !343, line: 18, baseType: !10, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !348, file: !343, line: 19, baseType: !352, size: 32)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 32, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 4)
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !356, line: 139)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !357, line: 20, baseType: !10)
!357 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !359, line: 141)
!359 = !DISubprogram(name: "btowc", scope: !360, file: !360, line: 284, type: !361, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!360 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!361 = !DISubroutineType(types: !362)
!362 = !{!356, !82}
!363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !364, line: 142)
!364 = !DISubprogram(name: "fgetwc", scope: !360, file: !360, line: 727, type: !365, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!365 = !DISubroutineType(types: !366)
!366 = !{!356, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !369, line: 5, baseType: !370)
!369 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !369, line: 4, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !372, line: 143)
!372 = !DISubprogram(name: "fgetws", scope: !360, file: !360, line: 756, type: !373, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!373 = !DISubroutineType(types: !374)
!374 = !{!174, !173, !82, !375}
!375 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !367)
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !377, line: 144)
!377 = !DISubprogram(name: "fputwc", scope: !360, file: !360, line: 741, type: !378, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!378 = !DISubroutineType(types: !379)
!379 = !{!356, !175, !367}
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !381, line: 145)
!381 = !DISubprogram(name: "fputws", scope: !360, file: !360, line: 763, type: !382, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!382 = !DISubroutineType(types: !383)
!383 = !{!82, !220, !375}
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !385, line: 146)
!385 = !DISubprogram(name: "fwide", scope: !360, file: !360, line: 573, type: !386, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!386 = !DISubroutineType(types: !387)
!387 = !{!82, !367, !82}
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !389, line: 147)
!389 = !DISubprogram(name: "fwprintf", scope: !360, file: !360, line: 580, type: !390, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!390 = !DISubroutineType(types: !391)
!391 = !{!82, !375, !220, null}
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !393, line: 148)
!393 = !DISubprogram(name: "fwscanf", scope: !360, file: !360, line: 621, type: !390, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !395, line: 149)
!395 = !DISubprogram(name: "getwc", scope: !360, file: !360, line: 728, type: !365, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !397, line: 150)
!397 = !DISubprogram(name: "getwchar", scope: !360, file: !360, line: 734, type: !398, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!398 = !DISubroutineType(types: !399)
!399 = !{!356}
!400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !401, line: 151)
!401 = !DISubprogram(name: "mbrlen", scope: !360, file: !360, line: 307, type: !402, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!402 = !DISubroutineType(types: !403)
!403 = !{!125, !176, !125, !404}
!404 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !407, line: 152)
!407 = !DISubprogram(name: "mbrtowc", scope: !360, file: !360, line: 296, type: !408, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!408 = !DISubroutineType(types: !409)
!409 = !{!125, !173, !176, !125, !404}
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !411, line: 153)
!411 = !DISubprogram(name: "mbsinit", scope: !360, file: !360, line: 292, type: !412, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!412 = !DISubroutineType(types: !413)
!413 = !{!82, !414}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !417, line: 154)
!417 = !DISubprogram(name: "mbsrtowcs", scope: !360, file: !360, line: 337, type: !418, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!418 = !DISubroutineType(types: !419)
!419 = !{!125, !173, !420, !125, !404}
!420 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !423, line: 155)
!423 = !DISubprogram(name: "putwc", scope: !360, file: !360, line: 742, type: !378, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !425, line: 156)
!425 = !DISubprogram(name: "putwchar", scope: !360, file: !360, line: 748, type: !426, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!426 = !DISubroutineType(types: !427)
!427 = !{!356, !175}
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !429, line: 158)
!429 = !DISubprogram(name: "swprintf", scope: !360, file: !360, line: 590, type: !430, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!430 = !DISubroutineType(types: !431)
!431 = !{!82, !173, !125, !220, null}
!432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !433, line: 160)
!433 = !DISubprogram(name: "swscanf", scope: !360, file: !360, line: 631, type: !434, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!434 = !DISubroutineType(types: !435)
!435 = !{!82, !220, !220, null}
!436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !437, line: 161)
!437 = !DISubprogram(name: "ungetwc", scope: !360, file: !360, line: 771, type: !438, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!438 = !DISubroutineType(types: !439)
!439 = !{!356, !356, !367}
!440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !441, line: 162)
!441 = !DISubprogram(name: "vfwprintf", scope: !360, file: !360, line: 598, type: !442, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!442 = !DISubroutineType(types: !443)
!443 = !{!82, !375, !220, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !2, size: 192, elements: !446, identifier: "_ZTS13__va_list_tag")
!446 = !{!447, !448, !449, !450}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !445, file: !2, baseType: !10, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !445, file: !2, baseType: !10, size: 32, offset: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !445, file: !2, baseType: !124, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !445, file: !2, baseType: !124, size: 64, offset: 128)
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !452, line: 164)
!452 = !DISubprogram(name: "vfwscanf", scope: !360, file: !360, line: 673, type: !442, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !454, line: 167)
!454 = !DISubprogram(name: "vswprintf", scope: !360, file: !360, line: 611, type: !455, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!455 = !DISubroutineType(types: !456)
!456 = !{!82, !173, !125, !220, !444}
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !458, line: 170)
!458 = !DISubprogram(name: "vswscanf", scope: !360, file: !360, line: 685, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!459 = !DISubroutineType(types: !460)
!460 = !{!82, !220, !220, !444}
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !462, line: 172)
!462 = !DISubprogram(name: "vwprintf", scope: !360, file: !360, line: 606, type: !463, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!463 = !DISubroutineType(types: !464)
!464 = !{!82, !220, !444}
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !466, line: 174)
!466 = !DISubprogram(name: "vwscanf", scope: !360, file: !360, line: 681, type: !463, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !468, line: 176)
!468 = !DISubprogram(name: "wcrtomb", scope: !360, file: !360, line: 301, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!469 = !DISubroutineType(types: !470)
!470 = !{!125, !219, !175, !404}
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !472, line: 177)
!472 = !DISubprogram(name: "wcscat", scope: !360, file: !360, line: 97, type: !473, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!473 = !DISubroutineType(types: !474)
!474 = !{!174, !173, !220}
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !476, line: 178)
!476 = !DISubprogram(name: "wcscmp", scope: !360, file: !360, line: 106, type: !477, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!477 = !DISubroutineType(types: !478)
!478 = !{!82, !221, !221}
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !480, line: 179)
!480 = !DISubprogram(name: "wcscoll", scope: !360, file: !360, line: 131, type: !477, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !482, line: 180)
!482 = !DISubprogram(name: "wcscpy", scope: !360, file: !360, line: 87, type: !473, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !484, line: 181)
!484 = !DISubprogram(name: "wcscspn", scope: !360, file: !360, line: 187, type: !485, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!485 = !DISubroutineType(types: !486)
!486 = !{!125, !221, !221}
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !488, line: 182)
!488 = !DISubprogram(name: "wcsftime", scope: !360, file: !360, line: 835, type: !489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!489 = !DISubroutineType(types: !490)
!490 = !{!125, !173, !125, !220, !491}
!491 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !360, line: 83, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !496, line: 183)
!496 = !DISubprogram(name: "wcslen", scope: !360, file: !360, line: 222, type: !497, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!497 = !DISubroutineType(types: !498)
!498 = !{!125, !221}
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !500, line: 184)
!500 = !DISubprogram(name: "wcsncat", scope: !360, file: !360, line: 101, type: !501, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!501 = !DISubroutineType(types: !502)
!502 = !{!174, !173, !220, !125}
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !504, line: 185)
!504 = !DISubprogram(name: "wcsncmp", scope: !360, file: !360, line: 109, type: !505, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!505 = !DISubroutineType(types: !506)
!506 = !{!82, !221, !221, !125}
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !508, line: 186)
!508 = !DISubprogram(name: "wcsncpy", scope: !360, file: !360, line: 92, type: !501, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !510, line: 187)
!510 = !DISubprogram(name: "wcsrtombs", scope: !360, file: !360, line: 343, type: !511, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!511 = !DISubroutineType(types: !512)
!512 = !{!125, !219, !513, !125, !404}
!513 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !516, line: 188)
!516 = !DISubprogram(name: "wcsspn", scope: !360, file: !360, line: 191, type: !485, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !518, line: 189)
!518 = !DISubprogram(name: "wcstod", scope: !360, file: !360, line: 377, type: !519, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!519 = !DISubroutineType(types: !520)
!520 = !{!108, !220, !521}
!521 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !524, line: 191)
!524 = !DISubprogram(name: "wcstof", scope: !360, file: !360, line: 382, type: !525, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!525 = !DISubroutineType(types: !526)
!526 = !{!262, !220, !521}
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !528, line: 193)
!528 = !DISubprogram(name: "wcstok", scope: !360, file: !360, line: 217, type: !529, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!529 = !DISubroutineType(types: !530)
!530 = !{!174, !173, !220, !521}
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !532, line: 194)
!532 = !DISubprogram(name: "wcstol", scope: !360, file: !360, line: 428, type: !533, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!533 = !DISubroutineType(types: !534)
!534 = !{!91, !220, !521, !82}
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !536, line: 195)
!536 = !DISubprogram(name: "wcstoul", scope: !360, file: !360, line: 433, type: !537, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!537 = !DISubroutineType(types: !538)
!538 = !{!127, !220, !521, !82}
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !540, line: 196)
!540 = !DISubprogram(name: "wcsxfrm", scope: !360, file: !360, line: 135, type: !541, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!541 = !DISubroutineType(types: !542)
!542 = !{!125, !173, !220, !125}
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !544, line: 197)
!544 = !DISubprogram(name: "wctob", scope: !360, file: !360, line: 288, type: !545, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!545 = !DISubroutineType(types: !546)
!546 = !{!82, !356}
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !548, line: 198)
!548 = !DISubprogram(name: "wmemcmp", scope: !360, file: !360, line: 258, type: !505, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !550, line: 199)
!550 = !DISubprogram(name: "wmemcpy", scope: !360, file: !360, line: 262, type: !501, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !552, line: 200)
!552 = !DISubprogram(name: "wmemmove", scope: !360, file: !360, line: 267, type: !553, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!553 = !DISubroutineType(types: !554)
!554 = !{!174, !174, !221, !125}
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !556, line: 201)
!556 = !DISubprogram(name: "wmemset", scope: !360, file: !360, line: 271, type: !557, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!557 = !DISubroutineType(types: !558)
!558 = !{!174, !174, !175, !125}
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !560, line: 202)
!560 = !DISubprogram(name: "wprintf", scope: !360, file: !360, line: 587, type: !561, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!561 = !DISubroutineType(types: !562)
!562 = !{!82, !220, null}
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !564, line: 203)
!564 = !DISubprogram(name: "wscanf", scope: !360, file: !360, line: 628, type: !561, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !566, line: 204)
!566 = !DISubprogram(name: "wcschr", scope: !360, file: !360, line: 164, type: !567, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!567 = !DISubroutineType(types: !568)
!568 = !{!174, !221, !175}
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !570, line: 205)
!570 = !DISubprogram(name: "wcspbrk", scope: !360, file: !360, line: 201, type: !571, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!571 = !DISubroutineType(types: !572)
!572 = !{!174, !221, !221}
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !574, line: 206)
!574 = !DISubprogram(name: "wcsrchr", scope: !360, file: !360, line: 174, type: !567, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !576, line: 207)
!576 = !DISubprogram(name: "wcsstr", scope: !360, file: !360, line: 212, type: !571, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !578, line: 208)
!578 = !DISubprogram(name: "wmemchr", scope: !360, file: !360, line: 253, type: !579, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!579 = !DISubroutineType(types: !580)
!580 = !{!174, !221, !175, !125}
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !582, line: 248)
!582 = !DISubprogram(name: "wcstold", scope: !360, file: !360, line: 384, type: !583, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!583 = !DISubroutineType(types: !584)
!584 = !{!267, !220, !521}
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !586, line: 257)
!586 = !DISubprogram(name: "wcstoll", scope: !360, file: !360, line: 441, type: !587, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!587 = !DISubroutineType(types: !588)
!588 = !{!233, !220, !521, !82}
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !590, line: 258)
!590 = !DISubprogram(name: "wcstoull", scope: !360, file: !360, line: 448, type: !591, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!591 = !DISubroutineType(types: !592)
!592 = !{!257, !220, !521, !82}
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !582, line: 264)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !586, line: 265)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !590, line: 266)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !524, line: 280)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !452, line: 283)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !458, line: 286)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !466, line: 289)
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !582, line: 293)
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !586, line: 294)
!602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !590, line: 295)
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !604, line: 48)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !9, line: 235, baseType: !605)
!605 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !607, line: 49)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !9, line: 216, baseType: !608)
!608 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !610, line: 50)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !9, line: 178, baseType: !82)
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !612, line: 51)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !9, line: 107, baseType: !91)
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !614, line: 53)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !9, line: 245, baseType: !604)
!615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !616, line: 54)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !9, line: 228, baseType: !607)
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !618, line: 55)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !9, line: 197, baseType: !610)
!619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !620, line: 56)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !9, line: 123, baseType: !612)
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !622, line: 58)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !9, line: 243, baseType: !604)
!623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !624, line: 59)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !9, line: 226, baseType: !607)
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !626, line: 60)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !9, line: 195, baseType: !610)
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !628, line: 61)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !9, line: 121, baseType: !612)
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !630, line: 63)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !9, line: 276, baseType: !91)
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !632, line: 64)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !9, line: 263, baseType: !612)
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !62, line: 66)
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !28, line: 67)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !8, line: 68)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !637, line: 69)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !9, line: 109, baseType: !127)
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !639, line: 71)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !9, line: 246, baseType: !62)
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !641, line: 72)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !9, line: 229, baseType: !28)
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !643, line: 73)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !9, line: 198, baseType: !8)
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !645, line: 74)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !9, line: 124, baseType: !637)
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !647, line: 76)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !9, line: 244, baseType: !62)
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !649, line: 77)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !9, line: 227, baseType: !28)
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !651, line: 78)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !9, line: 196, baseType: !8)
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !653, line: 79)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !9, line: 122, baseType: !637)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !655, line: 81)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !9, line: 277, baseType: !127)
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !657, line: 82)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !9, line: 270, baseType: !637)
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !659, line: 44)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !75, file: !76, line: 231, baseType: !127)
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !661, line: 45)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !75, file: !76, line: 232, baseType: !91)
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !663, line: 53)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !664, line: 51, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!664 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !666, line: 54)
!666 = !DISubprogram(name: "setlocale", scope: !664, file: !664, line: 122, type: !667, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!667 = !DISubroutineType(types: !668)
!668 = !{!152, !82, !109}
!669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !670, line: 55)
!670 = !DISubprogram(name: "localeconv", scope: !664, file: !664, line: 125, type: !671, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!671 = !DISubroutineType(types: !672)
!672 = !{!673}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !675, line: 64)
!675 = !DISubprogram(name: "isalnum", scope: !676, file: !676, line: 108, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!676 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !678, line: 65)
!678 = !DISubprogram(name: "isalpha", scope: !676, file: !676, line: 109, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !680, line: 66)
!680 = !DISubprogram(name: "iscntrl", scope: !676, file: !676, line: 110, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !682, line: 67)
!682 = !DISubprogram(name: "isdigit", scope: !676, file: !676, line: 111, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !684, line: 68)
!684 = !DISubprogram(name: "isgraph", scope: !676, file: !676, line: 113, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !686, line: 69)
!686 = !DISubprogram(name: "islower", scope: !676, file: !676, line: 112, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !688, line: 70)
!688 = !DISubprogram(name: "isprint", scope: !676, file: !676, line: 114, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !690, line: 71)
!690 = !DISubprogram(name: "ispunct", scope: !676, file: !676, line: 115, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !692, line: 72)
!692 = !DISubprogram(name: "isspace", scope: !676, file: !676, line: 116, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !694, line: 73)
!694 = !DISubprogram(name: "isupper", scope: !676, file: !676, line: 117, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !696, line: 74)
!696 = !DISubprogram(name: "isxdigit", scope: !676, file: !676, line: 118, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !698, line: 75)
!698 = !DISubprogram(name: "tolower", scope: !676, file: !676, line: 122, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !700, line: 76)
!700 = !DISubprogram(name: "toupper", scope: !676, file: !676, line: 125, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !702, line: 87)
!702 = !DISubprogram(name: "isblank", scope: !676, file: !676, line: 130, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !704, line: 98)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !705, line: 7, baseType: !370)
!705 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !707, line: 99)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !708, line: 78, baseType: !709)
!708 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "_G_fpos_t", file: !710, line: 30, baseType: !711)
!710 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/_G_config.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !710, line: 26, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !713, line: 101)
!713 = !DISubprogram(name: "clearerr", scope: !708, file: !708, line: 757, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !716}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !718, line: 102)
!718 = !DISubprogram(name: "fclose", scope: !708, file: !708, line: 199, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!719 = !DISubroutineType(types: !720)
!720 = !{!82, !716}
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !722, line: 103)
!722 = !DISubprogram(name: "feof", scope: !708, file: !708, line: 759, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !724, line: 104)
!724 = !DISubprogram(name: "ferror", scope: !708, file: !708, line: 761, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !726, line: 105)
!726 = !DISubprogram(name: "fflush", scope: !708, file: !708, line: 204, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !728, line: 106)
!728 = !DISubprogram(name: "fgetc", scope: !708, file: !708, line: 477, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !730, line: 107)
!730 = !DISubprogram(name: "fgetpos", scope: !708, file: !708, line: 731, type: !731, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!731 = !DISubroutineType(types: !732)
!732 = !{!82, !733, !734}
!733 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !716)
!734 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !737, line: 108)
!737 = !DISubprogram(name: "fgets", scope: !708, file: !708, line: 564, type: !738, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!738 = !DISubroutineType(types: !739)
!739 = !{!152, !219, !82, !733}
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !741, line: 109)
!741 = !DISubprogram(name: "fopen", scope: !708, file: !708, line: 232, type: !742, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!742 = !DISubroutineType(types: !743)
!743 = !{!716, !176, !176}
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !745, line: 110)
!745 = !DISubprogram(name: "fprintf", scope: !708, file: !708, line: 312, type: !746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!746 = !DISubroutineType(types: !747)
!747 = !{!82, !733, !176, null}
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !749, line: 111)
!749 = !DISubprogram(name: "fputc", scope: !708, file: !708, line: 517, type: !750, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!750 = !DISubroutineType(types: !751)
!751 = !{!82, !82, !716}
!752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !753, line: 112)
!753 = !DISubprogram(name: "fputs", scope: !708, file: !708, line: 626, type: !754, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!754 = !DISubroutineType(types: !755)
!755 = !{!82, !176, !733}
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !757, line: 113)
!757 = !DISubprogram(name: "fread", scope: !708, file: !708, line: 646, type: !758, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!758 = !DISubroutineType(types: !759)
!759 = !{!125, !760, !125, !125, !733}
!760 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !124)
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !762, line: 114)
!762 = !DISubprogram(name: "freopen", scope: !708, file: !708, line: 238, type: !763, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!763 = !DISubroutineType(types: !764)
!764 = !{!716, !176, !176, !733}
!765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !766, line: 115)
!766 = !DISubprogram(name: "fscanf", scope: !708, file: !708, line: 377, type: !746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !768, line: 116)
!768 = !DISubprogram(name: "fseek", scope: !708, file: !708, line: 684, type: !769, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!769 = !DISubroutineType(types: !770)
!770 = !{!82, !716, !91, !82}
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !772, line: 117)
!772 = !DISubprogram(name: "fsetpos", scope: !708, file: !708, line: 736, type: !773, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!773 = !DISubroutineType(types: !774)
!774 = !{!82, !716, !775}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !707)
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !778, line: 118)
!778 = !DISubprogram(name: "ftell", scope: !708, file: !708, line: 689, type: !779, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!779 = !DISubroutineType(types: !780)
!780 = !{!91, !716}
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !782, line: 119)
!782 = !DISubprogram(name: "fwrite", scope: !708, file: !708, line: 652, type: !783, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!783 = !DISubroutineType(types: !784)
!784 = !{!125, !785, !125, !125, !733}
!785 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !787, line: 120)
!787 = !DISubprogram(name: "getc", scope: !708, file: !708, line: 478, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !789, line: 121)
!789 = !DISubprogram(name: "getchar", scope: !708, file: !708, line: 484, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !791, line: 124)
!791 = !DISubprogram(name: "gets", scope: !708, file: !708, line: 577, type: !792, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!792 = !DISubroutineType(types: !793)
!793 = !{!152, !152}
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !795, line: 126)
!795 = !DISubprogram(name: "perror", scope: !708, file: !708, line: 775, type: !796, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !109}
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !799, line: 127)
!799 = !DISubprogram(name: "printf", scope: !708, file: !708, line: 318, type: !800, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!800 = !DISubroutineType(types: !801)
!801 = !{!82, !176, null}
!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !803, line: 128)
!803 = !DISubprogram(name: "putc", scope: !708, file: !708, line: 518, type: !750, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !805, line: 129)
!805 = !DISubprogram(name: "putchar", scope: !708, file: !708, line: 524, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !807, line: 130)
!807 = !DISubprogram(name: "puts", scope: !708, file: !708, line: 632, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !809, line: 131)
!809 = !DISubprogram(name: "remove", scope: !708, file: !708, line: 144, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !811, line: 132)
!811 = !DISubprogram(name: "rename", scope: !708, file: !708, line: 146, type: !812, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!812 = !DISubroutineType(types: !813)
!813 = !{!82, !109, !109}
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !815, line: 133)
!815 = !DISubprogram(name: "rewind", scope: !708, file: !708, line: 694, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !817, line: 134)
!817 = !DISubprogram(name: "scanf", scope: !708, file: !708, line: 383, type: !800, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !819, line: 135)
!819 = !DISubprogram(name: "setbuf", scope: !708, file: !708, line: 290, type: !820, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!820 = !DISubroutineType(types: !821)
!821 = !{null, !733, !219}
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !823, line: 136)
!823 = !DISubprogram(name: "setvbuf", scope: !708, file: !708, line: 294, type: !824, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!824 = !DISubroutineType(types: !825)
!825 = !{!82, !733, !219, !82, !125}
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !827, line: 137)
!827 = !DISubprogram(name: "sprintf", scope: !708, file: !708, line: 320, type: !828, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!828 = !DISubroutineType(types: !829)
!829 = !{!82, !219, !176, null}
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !831, line: 138)
!831 = !DISubprogram(name: "sscanf", scope: !708, file: !708, line: 385, type: !832, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!832 = !DISubroutineType(types: !833)
!833 = !{!82, !176, !176, null}
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !835, line: 139)
!835 = !DISubprogram(name: "tmpfile", scope: !708, file: !708, line: 159, type: !836, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!836 = !DISubroutineType(types: !837)
!837 = !{!716}
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !839, line: 141)
!839 = !DISubprogram(name: "tmpnam", scope: !708, file: !708, line: 173, type: !792, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !841, line: 143)
!841 = !DISubprogram(name: "ungetc", scope: !708, file: !708, line: 639, type: !750, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !843, line: 144)
!843 = !DISubprogram(name: "vfprintf", scope: !708, file: !708, line: 327, type: !844, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!844 = !DISubroutineType(types: !845)
!845 = !{!82, !733, !176, !444}
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !847, line: 145)
!847 = !DISubprogram(name: "vprintf", scope: !708, file: !708, line: 333, type: !848, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!848 = !DISubroutineType(types: !849)
!849 = !{!82, !176, !444}
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !851, line: 146)
!851 = !DISubprogram(name: "vsprintf", scope: !708, file: !708, line: 335, type: !852, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!852 = !DISubroutineType(types: !853)
!853 = !{!82, !219, !176, !444}
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !855, line: 175)
!855 = !DISubprogram(name: "snprintf", scope: !708, file: !708, line: 340, type: !856, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!856 = !DISubroutineType(types: !857)
!857 = !{!82, !219, !125, !176, null}
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !859, line: 176)
!859 = !DISubprogram(name: "vfscanf", scope: !708, file: !708, line: 420, type: !844, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!860 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !861, line: 177)
!861 = !DISubprogram(name: "vscanf", scope: !708, file: !708, line: 428, type: !848, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !863, line: 178)
!863 = !DISubprogram(name: "vsnprintf", scope: !708, file: !708, line: 344, type: !864, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!864 = !DISubroutineType(types: !865)
!865 = !{!82, !219, !125, !176, !444}
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !867, line: 179)
!867 = !DISubprogram(name: "vsscanf", scope: !708, file: !708, line: 432, type: !868, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!868 = !DISubroutineType(types: !869)
!869 = !{!82, !176, !176, !444}
!870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !855, line: 185)
!871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !859, line: 186)
!872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !861, line: 187)
!873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !863, line: 188)
!874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !867, line: 189)
!875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !876, line: 83)
!876 = !DISubprogram(name: "acos", scope: !877, file: !877, line: 53, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!877 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!878 = !DISubroutineType(types: !879)
!879 = !{!108, !108}
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !881, line: 102)
!881 = !DISubprogram(name: "asin", scope: !877, file: !877, line: 55, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !883, line: 121)
!883 = !DISubprogram(name: "atan", scope: !877, file: !877, line: 57, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !885, line: 140)
!885 = !DISubprogram(name: "atan2", scope: !877, file: !877, line: 59, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!886 = !DISubroutineType(types: !887)
!887 = !{!108, !108, !108}
!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !889, line: 161)
!889 = !DISubprogram(name: "ceil", scope: !877, file: !877, line: 159, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !891, line: 180)
!891 = !DISubprogram(name: "cos", scope: !877, file: !877, line: 62, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !893, line: 199)
!893 = !DISubprogram(name: "cosh", scope: !877, file: !877, line: 71, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !895, line: 218)
!895 = !DISubprogram(name: "exp", scope: !877, file: !877, line: 95, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !897, line: 237)
!897 = !DISubprogram(name: "fabs", scope: !877, file: !877, line: 162, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !899, line: 256)
!899 = !DISubprogram(name: "floor", scope: !877, file: !877, line: 165, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!900 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !901, line: 275)
!901 = !DISubprogram(name: "fmod", scope: !877, file: !877, line: 168, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !903, line: 296)
!903 = !DISubprogram(name: "frexp", scope: !877, file: !877, line: 98, type: !904, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!904 = !DISubroutineType(types: !905)
!905 = !{!108, !108, !906}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !908, line: 315)
!908 = !DISubprogram(name: "ldexp", scope: !877, file: !877, line: 101, type: !909, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!909 = !DISubroutineType(types: !910)
!910 = !{!108, !108, !82}
!911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !912, line: 334)
!912 = !DISubprogram(name: "log", scope: !877, file: !877, line: 104, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !914, line: 353)
!914 = !DISubprogram(name: "log10", scope: !877, file: !877, line: 107, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !916, line: 372)
!916 = !DISubprogram(name: "modf", scope: !877, file: !877, line: 110, type: !917, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!917 = !DISubroutineType(types: !918)
!918 = !{!108, !108, !919}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !921, line: 384)
!921 = !DISubprogram(name: "pow", scope: !877, file: !877, line: 140, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !923, line: 421)
!923 = !DISubprogram(name: "sin", scope: !877, file: !877, line: 64, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !925, line: 440)
!925 = !DISubprogram(name: "sinh", scope: !877, file: !877, line: 73, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !927, line: 459)
!927 = !DISubprogram(name: "sqrt", scope: !877, file: !877, line: 143, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !929, line: 478)
!929 = !DISubprogram(name: "tan", scope: !877, file: !877, line: 66, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !931, line: 497)
!931 = !DISubprogram(name: "tanh", scope: !877, file: !877, line: 75, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!932 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !933, line: 1080)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !934, line: 150, baseType: !108)
!934 = !DIFile(filename: "/usr/include/math.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !936, line: 1081)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !934, line: 149, baseType: !262)
!937 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !938, line: 1084)
!938 = !DISubprogram(name: "acosh", scope: !877, file: !877, line: 85, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !940, line: 1085)
!940 = !DISubprogram(name: "acoshf", scope: !877, file: !877, line: 85, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!941 = !DISubroutineType(types: !942)
!942 = !{!262, !262}
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !944, line: 1086)
!944 = !DISubprogram(name: "acoshl", scope: !877, file: !877, line: 85, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!945 = !DISubroutineType(types: !946)
!946 = !{!267, !267}
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !948, line: 1088)
!948 = !DISubprogram(name: "asinh", scope: !877, file: !877, line: 87, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !950, line: 1089)
!950 = !DISubprogram(name: "asinhf", scope: !877, file: !877, line: 87, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !952, line: 1090)
!952 = !DISubprogram(name: "asinhl", scope: !877, file: !877, line: 87, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !954, line: 1092)
!954 = !DISubprogram(name: "atanh", scope: !877, file: !877, line: 89, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !956, line: 1093)
!956 = !DISubprogram(name: "atanhf", scope: !877, file: !877, line: 89, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !958, line: 1094)
!958 = !DISubprogram(name: "atanhl", scope: !877, file: !877, line: 89, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !960, line: 1096)
!960 = !DISubprogram(name: "cbrt", scope: !877, file: !877, line: 152, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !962, line: 1097)
!962 = !DISubprogram(name: "cbrtf", scope: !877, file: !877, line: 152, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !964, line: 1098)
!964 = !DISubprogram(name: "cbrtl", scope: !877, file: !877, line: 152, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!965 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !966, line: 1100)
!966 = !DISubprogram(name: "copysign", scope: !877, file: !877, line: 196, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !968, line: 1101)
!968 = !DISubprogram(name: "copysignf", scope: !877, file: !877, line: 196, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!969 = !DISubroutineType(types: !970)
!970 = !{!262, !262, !262}
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !972, line: 1102)
!972 = !DISubprogram(name: "copysignl", scope: !877, file: !877, line: 196, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!973 = !DISubroutineType(types: !974)
!974 = !{!267, !267, !267}
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !976, line: 1104)
!976 = !DISubprogram(name: "erf", scope: !877, file: !877, line: 228, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !978, line: 1105)
!978 = !DISubprogram(name: "erff", scope: !877, file: !877, line: 228, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !980, line: 1106)
!980 = !DISubprogram(name: "erfl", scope: !877, file: !877, line: 228, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !982, line: 1108)
!982 = !DISubprogram(name: "erfc", scope: !877, file: !877, line: 229, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !984, line: 1109)
!984 = !DISubprogram(name: "erfcf", scope: !877, file: !877, line: 229, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !986, line: 1110)
!986 = !DISubprogram(name: "erfcl", scope: !877, file: !877, line: 229, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !988, line: 1112)
!988 = !DISubprogram(name: "exp2", scope: !877, file: !877, line: 130, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !990, line: 1113)
!990 = !DISubprogram(name: "exp2f", scope: !877, file: !877, line: 130, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !992, line: 1114)
!992 = !DISubprogram(name: "exp2l", scope: !877, file: !877, line: 130, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !994, line: 1116)
!994 = !DISubprogram(name: "expm1", scope: !877, file: !877, line: 119, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !996, line: 1117)
!996 = !DISubprogram(name: "expm1f", scope: !877, file: !877, line: 119, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !998, line: 1118)
!998 = !DISubprogram(name: "expm1l", scope: !877, file: !877, line: 119, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1000, line: 1120)
!1000 = !DISubprogram(name: "fdim", scope: !877, file: !877, line: 326, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1002, line: 1121)
!1002 = !DISubprogram(name: "fdimf", scope: !877, file: !877, line: 326, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1004, line: 1122)
!1004 = !DISubprogram(name: "fdiml", scope: !877, file: !877, line: 326, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1005 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1006, line: 1124)
!1006 = !DISubprogram(name: "fma", scope: !877, file: !877, line: 335, type: !1007, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!108, !108, !108, !108}
!1009 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1010, line: 1125)
!1010 = !DISubprogram(name: "fmaf", scope: !877, file: !877, line: 335, type: !1011, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!262, !262, !262, !262}
!1013 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1014, line: 1126)
!1014 = !DISubprogram(name: "fmal", scope: !877, file: !877, line: 335, type: !1015, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!267, !267, !267, !267}
!1017 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1018, line: 1128)
!1018 = !DISubprogram(name: "fmax", scope: !877, file: !877, line: 329, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1019 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1020, line: 1129)
!1020 = !DISubprogram(name: "fmaxf", scope: !877, file: !877, line: 329, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1021 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1022, line: 1130)
!1022 = !DISubprogram(name: "fmaxl", scope: !877, file: !877, line: 329, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1024, line: 1132)
!1024 = !DISubprogram(name: "fmin", scope: !877, file: !877, line: 332, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1025 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1026, line: 1133)
!1026 = !DISubprogram(name: "fminf", scope: !877, file: !877, line: 332, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1027 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1028, line: 1134)
!1028 = !DISubprogram(name: "fminl", scope: !877, file: !877, line: 332, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1029 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1030, line: 1136)
!1030 = !DISubprogram(name: "hypot", scope: !877, file: !877, line: 147, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1032, line: 1137)
!1032 = !DISubprogram(name: "hypotf", scope: !877, file: !877, line: 147, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1033 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1034, line: 1138)
!1034 = !DISubprogram(name: "hypotl", scope: !877, file: !877, line: 147, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1036, line: 1140)
!1036 = !DISubprogram(name: "ilogb", scope: !877, file: !877, line: 280, type: !1037, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!82, !108}
!1039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1040, line: 1141)
!1040 = !DISubprogram(name: "ilogbf", scope: !877, file: !877, line: 280, type: !1041, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!82, !262}
!1043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1044, line: 1142)
!1044 = !DISubprogram(name: "ilogbl", scope: !877, file: !877, line: 280, type: !1045, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!82, !267}
!1047 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1048, line: 1144)
!1048 = !DISubprogram(name: "lgamma", scope: !877, file: !877, line: 230, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1049 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1050, line: 1145)
!1050 = !DISubprogram(name: "lgammaf", scope: !877, file: !877, line: 230, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1051 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1052, line: 1146)
!1052 = !DISubprogram(name: "lgammal", scope: !877, file: !877, line: 230, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1053 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1054, line: 1149)
!1054 = !DISubprogram(name: "llrint", scope: !877, file: !877, line: 316, type: !1055, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!233, !108}
!1057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1058, line: 1150)
!1058 = !DISubprogram(name: "llrintf", scope: !877, file: !877, line: 316, type: !1059, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!233, !262}
!1061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1062, line: 1151)
!1062 = !DISubprogram(name: "llrintl", scope: !877, file: !877, line: 316, type: !1063, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!233, !267}
!1065 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1066, line: 1153)
!1066 = !DISubprogram(name: "llround", scope: !877, file: !877, line: 322, type: !1055, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1068, line: 1154)
!1068 = !DISubprogram(name: "llroundf", scope: !877, file: !877, line: 322, type: !1059, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1070, line: 1155)
!1070 = !DISubprogram(name: "llroundl", scope: !877, file: !877, line: 322, type: !1063, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1071 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1072, line: 1158)
!1072 = !DISubprogram(name: "log1p", scope: !877, file: !877, line: 122, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1074, line: 1159)
!1074 = !DISubprogram(name: "log1pf", scope: !877, file: !877, line: 122, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1075 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1076, line: 1160)
!1076 = !DISubprogram(name: "log1pl", scope: !877, file: !877, line: 122, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1078, line: 1162)
!1078 = !DISubprogram(name: "log2", scope: !877, file: !877, line: 133, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1080, line: 1163)
!1080 = !DISubprogram(name: "log2f", scope: !877, file: !877, line: 133, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1082, line: 1164)
!1082 = !DISubprogram(name: "log2l", scope: !877, file: !877, line: 133, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1084, line: 1166)
!1084 = !DISubprogram(name: "logb", scope: !877, file: !877, line: 125, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1085 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1086, line: 1167)
!1086 = !DISubprogram(name: "logbf", scope: !877, file: !877, line: 125, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1087 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1088, line: 1168)
!1088 = !DISubprogram(name: "logbl", scope: !877, file: !877, line: 125, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1089 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1090, line: 1170)
!1090 = !DISubprogram(name: "lrint", scope: !877, file: !877, line: 314, type: !1091, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!91, !108}
!1093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1094, line: 1171)
!1094 = !DISubprogram(name: "lrintf", scope: !877, file: !877, line: 314, type: !1095, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!91, !262}
!1097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1098, line: 1172)
!1098 = !DISubprogram(name: "lrintl", scope: !877, file: !877, line: 314, type: !1099, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!91, !267}
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1102, line: 1174)
!1102 = !DISubprogram(name: "lround", scope: !877, file: !877, line: 320, type: !1091, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1104, line: 1175)
!1104 = !DISubprogram(name: "lroundf", scope: !877, file: !877, line: 320, type: !1095, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1106, line: 1176)
!1106 = !DISubprogram(name: "lroundl", scope: !877, file: !877, line: 320, type: !1099, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1108, line: 1178)
!1108 = !DISubprogram(name: "nan", scope: !877, file: !877, line: 201, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1110, line: 1179)
!1110 = !DISubprogram(name: "nanf", scope: !877, file: !877, line: 201, type: !1111, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!262, !109}
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1114, line: 1180)
!1114 = !DISubprogram(name: "nanl", scope: !877, file: !877, line: 201, type: !1115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!267, !109}
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1118, line: 1182)
!1118 = !DISubprogram(name: "nearbyint", scope: !877, file: !877, line: 294, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1120, line: 1183)
!1120 = !DISubprogram(name: "nearbyintf", scope: !877, file: !877, line: 294, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1122, line: 1184)
!1122 = !DISubprogram(name: "nearbyintl", scope: !877, file: !877, line: 294, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1124, line: 1186)
!1124 = !DISubprogram(name: "nextafter", scope: !877, file: !877, line: 259, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1126, line: 1187)
!1126 = !DISubprogram(name: "nextafterf", scope: !877, file: !877, line: 259, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1128, line: 1188)
!1128 = !DISubprogram(name: "nextafterl", scope: !877, file: !877, line: 259, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1130, line: 1190)
!1130 = !DISubprogram(name: "nexttoward", scope: !877, file: !877, line: 261, type: !1131, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!108, !108, !267}
!1133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1134, line: 1191)
!1134 = !DISubprogram(name: "nexttowardf", scope: !877, file: !877, line: 261, type: !1135, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!262, !262, !267}
!1137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1138, line: 1192)
!1138 = !DISubprogram(name: "nexttowardl", scope: !877, file: !877, line: 261, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1140, line: 1194)
!1140 = !DISubprogram(name: "remainder", scope: !877, file: !877, line: 272, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1142, line: 1195)
!1142 = !DISubprogram(name: "remainderf", scope: !877, file: !877, line: 272, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1144, line: 1196)
!1144 = !DISubprogram(name: "remainderl", scope: !877, file: !877, line: 272, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1146, line: 1198)
!1146 = !DISubprogram(name: "remquo", scope: !877, file: !877, line: 307, type: !1147, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!108, !108, !108, !906}
!1149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1150, line: 1199)
!1150 = !DISubprogram(name: "remquof", scope: !877, file: !877, line: 307, type: !1151, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!262, !262, !262, !906}
!1153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1154, line: 1200)
!1154 = !DISubprogram(name: "remquol", scope: !877, file: !877, line: 307, type: !1155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!267, !267, !267, !906}
!1157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1158, line: 1202)
!1158 = !DISubprogram(name: "rint", scope: !877, file: !877, line: 256, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1160, line: 1203)
!1160 = !DISubprogram(name: "rintf", scope: !877, file: !877, line: 256, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1162, line: 1204)
!1162 = !DISubprogram(name: "rintl", scope: !877, file: !877, line: 256, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1164, line: 1206)
!1164 = !DISubprogram(name: "round", scope: !877, file: !877, line: 298, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1166, line: 1207)
!1166 = !DISubprogram(name: "roundf", scope: !877, file: !877, line: 298, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1168, line: 1208)
!1168 = !DISubprogram(name: "roundl", scope: !877, file: !877, line: 298, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1170, line: 1210)
!1170 = !DISubprogram(name: "scalbln", scope: !877, file: !877, line: 290, type: !1171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!108, !108, !91}
!1173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1174, line: 1211)
!1174 = !DISubprogram(name: "scalblnf", scope: !877, file: !877, line: 290, type: !1175, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!262, !262, !91}
!1177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1178, line: 1212)
!1178 = !DISubprogram(name: "scalblnl", scope: !877, file: !877, line: 290, type: !1179, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!267, !267, !91}
!1181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1182, line: 1214)
!1182 = !DISubprogram(name: "scalbn", scope: !877, file: !877, line: 276, type: !909, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1184, line: 1215)
!1184 = !DISubprogram(name: "scalbnf", scope: !877, file: !877, line: 276, type: !1185, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!262, !262, !82}
!1187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1188, line: 1216)
!1188 = !DISubprogram(name: "scalbnl", scope: !877, file: !877, line: 276, type: !1189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!267, !267, !82}
!1191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1192, line: 1218)
!1192 = !DISubprogram(name: "tgamma", scope: !877, file: !877, line: 235, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1194, line: 1219)
!1194 = !DISubprogram(name: "tgammaf", scope: !877, file: !877, line: 235, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1196, line: 1220)
!1196 = !DISubprogram(name: "tgammal", scope: !877, file: !877, line: 235, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1198, line: 1222)
!1198 = !DISubprogram(name: "trunc", scope: !877, file: !877, line: 302, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1200, line: 1223)
!1200 = !DISubprogram(name: "truncf", scope: !877, file: !877, line: 302, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1202, line: 1224)
!1202 = !DISubprogram(name: "truncl", scope: !877, file: !877, line: 302, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1204, line: 58)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "fenv_t", file: !1205, line: 94, baseType: !1206)
!1205 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fenv.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1205, line: 75, flags: DIFlagFwdDecl, identifier: "_ZTS6fenv_t")
!1207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1208, line: 59)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "fexcept_t", file: !1205, line: 68, baseType: !29)
!1209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1210, line: 62)
!1210 = !DISubprogram(name: "feclearexcept", scope: !1211, file: !1211, line: 71, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1211 = !DIFile(filename: "/usr/include/fenv.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1213, line: 63)
!1213 = !DISubprogram(name: "fegetexceptflag", scope: !1211, file: !1211, line: 75, type: !1214, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!82, !1216, !82}
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1218, line: 64)
!1218 = !DISubprogram(name: "feraiseexcept", scope: !1211, file: !1211, line: 78, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1220, line: 65)
!1220 = !DISubprogram(name: "fesetexceptflag", scope: !1211, file: !1211, line: 88, type: !1221, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!82, !1223, !82}
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1208)
!1225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1226, line: 66)
!1226 = !DISubprogram(name: "fetestexcept", scope: !1211, file: !1211, line: 92, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1228, line: 68)
!1228 = !DISubprogram(name: "fegetround", scope: !1211, file: !1211, line: 104, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1230, line: 69)
!1230 = !DISubprogram(name: "fesetround", scope: !1211, file: !1211, line: 107, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1232, line: 71)
!1232 = !DISubprogram(name: "fegetenv", scope: !1211, file: !1211, line: 114, type: !1233, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!82, !1235}
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1237, line: 72)
!1237 = !DISubprogram(name: "feholdexcept", scope: !1211, file: !1211, line: 119, type: !1233, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1239, line: 73)
!1239 = !DISubprogram(name: "fesetenv", scope: !1211, file: !1211, line: 123, type: !1240, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!82, !1242}
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1204)
!1244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1245, line: 74)
!1245 = !DISubprogram(name: "feupdateenv", scope: !1211, file: !1211, line: 128, type: !1240, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1204, line: 61)
!1247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1208, line: 62)
!1248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1210, line: 65)
!1249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1213, line: 66)
!1250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1218, line: 67)
!1251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1220, line: 68)
!1252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1226, line: 69)
!1253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1228, line: 71)
!1254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1230, line: 72)
!1255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1232, line: 74)
!1256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1237, line: 75)
!1257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1239, line: 76)
!1258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1245, line: 77)
!1259 = !{i32 2, !"Dwarf Version", i32 4}
!1260 = !{i32 2, !"Debug Info Version", i32 3}
!1261 = distinct !DISubprogram(name: "__remill_basic_block", scope: !2, file: !2, line: 52, type: !1262, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !1, variables: !7)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!1264, !1267, !1950, !1264}
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Memory", file: !1266, line: 36, flags: DIFlagFwdDecl, identifier: "_ZTS6Memory")
!1266 = !DIFile(filename: "/home/ubuntu/Github/remill/remill/Arch/Runtime/Types.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1267 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1268, size: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "State", file: !27, line: 742, size: 27008, align: 128, elements: !1269, identifier: "_ZTS5State")
!1269 = !{!1270, !1282, !1491, !1511, !1541, !1566, !1595, !1632, !1642, !1703, !1728, !1752, !1932}
!1270 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1268, baseType: !1271)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArchState", file: !1272, line: 21, size: 128, elements: !1273, identifier: "_ZTS9ArchState")
!1272 = !DIFile(filename: "/home/ubuntu/Github/remill/remill/Arch/Runtime/State.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1273 = !{!1274, !1275, !1276}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_call", scope: !1271, file: !1272, line: 23, baseType: !4, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1271, file: !1272, line: 25, baseType: !8, size: 32, offset: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, scope: !1271, file: !1272, line: 31, baseType: !1277, size: 64, offset: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1271, file: !1272, line: 31, size: 64, elements: !1278, identifier: "_ZTSN9ArchStateUt_E")
!1278 = !{!1279, !1280, !1281}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "addr_to_load", scope: !1277, file: !1272, line: 32, baseType: !637, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "addr_to_store", scope: !1277, file: !1272, line: 33, baseType: !637, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_call_vector", scope: !1277, file: !1272, line: 34, baseType: !8, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1268, file: !27, line: 747, baseType: !1283, size: 16384, offset: 128)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1284, size: 16384, elements: !1369)
!1284 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "VectorReg", file: !27, line: 636, size: 512, align: 128, elements: !1285, identifier: "_ZTS9VectorReg")
!1285 = !{!1286, !1361, !1426}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1284, file: !27, line: 637, baseType: !1287, size: 128, align: 128)
!1287 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec128_t", file: !1266, line: 317, size: 128, elements: !1288, identifier: "_ZTS8vec128_t")
!1288 = !{!1289, !1298, !1305, !1312, !1317, !1324, !1329, !1334, !1339, !1344, !1349, !1354}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dqwords", scope: !1287, file: !1266, line: 321, baseType: !1290, size: 128)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint128v1_t", file: !1266, line: 205, size: 128, elements: !1291, identifier: "_ZTS11uint128v1_t")
!1291 = !{!1292}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1290, file: !1266, line: 205, baseType: !1293, size: 128)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 128, elements: !1296)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint128_t", file: !1266, line: 46, baseType: !1295)
!1295 = !DIBasicType(name: "unsigned __int128", size: 128, encoding: DW_ATE_unsigned)
!1296 = !{!1297}
!1297 = !DISubrange(count: 1)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1287, file: !1266, line: 323, baseType: !1299, size: 128)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v16_t", file: !1266, line: 182, size: 128, elements: !1300, identifier: "_ZTS10uint8v16_t")
!1300 = !{!1301}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1299, file: !1266, line: 182, baseType: !1302, size: 128)
!1302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 128, elements: !1303)
!1303 = !{!1304}
!1304 = !DISubrange(count: 16)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1287, file: !1266, line: 324, baseType: !1306, size: 128)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v8_t", file: !1266, line: 189, size: 128, elements: !1307, identifier: "_ZTS10uint16v8_t")
!1307 = !{!1308}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1306, file: !1266, line: 189, baseType: !1309, size: 128)
!1309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 128, elements: !1310)
!1310 = !{!1311}
!1311 = !DISubrange(count: 8)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1287, file: !1266, line: 325, baseType: !1313, size: 128)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v4_t", file: !1266, line: 195, size: 128, elements: !1314, identifier: "_ZTS10uint32v4_t")
!1314 = !{!1315}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1313, file: !1266, line: 195, baseType: !1316, size: 128)
!1316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 128, elements: !353)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1287, file: !1266, line: 326, baseType: !1318, size: 128)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v2_t", file: !1266, line: 200, size: 128, elements: !1319, identifier: "_ZTS10uint64v2_t")
!1319 = !{!1320}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1318, file: !1266, line: 200, baseType: !1321, size: 128)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 128, elements: !1322)
!1322 = !{!1323}
!1323 = !DISubrange(count: 2)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1287, file: !1266, line: 327, baseType: !1325, size: 128)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v4_t", file: !1266, line: 242, size: 128, elements: !1326, identifier: "_ZTS11float32v4_t")
!1326 = !{!1327}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1325, file: !1266, line: 242, baseType: !1328, size: 128)
!1328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 128, elements: !353)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1287, file: !1266, line: 328, baseType: !1330, size: 128)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v2_t", file: !1266, line: 247, size: 128, elements: !1331, identifier: "_ZTS11float64v2_t")
!1331 = !{!1332}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1330, file: !1266, line: 247, baseType: !1333, size: 128)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, elements: !1322)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1287, file: !1266, line: 330, baseType: !1335, size: 128)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v16_t", file: !1266, line: 213, size: 128, elements: !1336, identifier: "_ZTS9int8v16_t")
!1336 = !{!1337}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1335, file: !1266, line: 213, baseType: !1338, size: 128)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 128, elements: !1303)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1287, file: !1266, line: 331, baseType: !1340, size: 128)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v8_t", file: !1266, line: 220, size: 128, elements: !1341, identifier: "_ZTS9int16v8_t")
!1341 = !{!1342}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1340, file: !1266, line: 220, baseType: !1343, size: 128)
!1343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 128, elements: !1310)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1287, file: !1266, line: 332, baseType: !1345, size: 128)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v4_t", file: !1266, line: 226, size: 128, elements: !1346, identifier: "_ZTS9int32v4_t")
!1346 = !{!1347}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1345, file: !1266, line: 226, baseType: !1348, size: 128)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 128, elements: !353)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1287, file: !1266, line: 333, baseType: !1350, size: 128)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v2_t", file: !1266, line: 231, size: 128, elements: !1351, identifier: "_ZTS9int64v2_t")
!1351 = !{!1352}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1350, file: !1266, line: 231, baseType: !1353, size: 128)
!1353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 128, elements: !1322)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sdqwords", scope: !1287, file: !1266, line: 334, baseType: !1355, size: 128)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int128v1_t", file: !1266, line: 236, size: 128, elements: !1356, identifier: "_ZTS10int128v1_t")
!1356 = !{!1357}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1355, file: !1266, line: 236, baseType: !1358, size: 128)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1359, size: 128, elements: !1296)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "int128_t", file: !1266, line: 47, baseType: !1360)
!1360 = !DIBasicType(name: "__int128", size: 128, encoding: DW_ATE_signed)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ymm", scope: !1284, file: !27, line: 638, baseType: !1362, size: 256, align: 128)
!1362 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec256_t", file: !1266, line: 340, size: 256, elements: !1363, identifier: "_ZTS8vec256_t")
!1363 = !{!1364, !1371, !1376, !1381, !1386, !1391, !1396, !1401, !1406, !1411, !1416, !1421}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1362, file: !1266, line: 341, baseType: !1365, size: 256)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v32_t", file: !1266, line: 183, size: 256, elements: !1366, identifier: "_ZTS10uint8v32_t")
!1366 = !{!1367}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1365, file: !1266, line: 183, baseType: !1368, size: 256)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 256, elements: !1369)
!1369 = !{!1370}
!1370 = !DISubrange(count: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1362, file: !1266, line: 342, baseType: !1372, size: 256)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v16_t", file: !1266, line: 190, size: 256, elements: !1373, identifier: "_ZTS11uint16v16_t")
!1373 = !{!1374}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1372, file: !1266, line: 190, baseType: !1375, size: 256)
!1375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !1303)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1362, file: !1266, line: 343, baseType: !1377, size: 256)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v8_t", file: !1266, line: 196, size: 256, elements: !1378, identifier: "_ZTS10uint32v8_t")
!1378 = !{!1379}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1377, file: !1266, line: 196, baseType: !1380, size: 256)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !1310)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1362, file: !1266, line: 344, baseType: !1382, size: 256)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v4_t", file: !1266, line: 201, size: 256, elements: !1383, identifier: "_ZTS10uint64v4_t")
!1383 = !{!1384}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1382, file: !1266, line: 201, baseType: !1385, size: 256)
!1385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 256, elements: !353)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "dqwords", scope: !1362, file: !1266, line: 345, baseType: !1387, size: 256)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint128v2_t", file: !1266, line: 206, size: 256, elements: !1388, identifier: "_ZTS11uint128v2_t")
!1388 = !{!1389}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1387, file: !1266, line: 206, baseType: !1390, size: 256)
!1390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 256, elements: !1322)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1362, file: !1266, line: 346, baseType: !1392, size: 256)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v8_t", file: !1266, line: 243, size: 256, elements: !1393, identifier: "_ZTS11float32v8_t")
!1393 = !{!1394}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1392, file: !1266, line: 243, baseType: !1395, size: 256)
!1395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 256, elements: !1310)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1362, file: !1266, line: 347, baseType: !1397, size: 256)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v4_t", file: !1266, line: 248, size: 256, elements: !1398, identifier: "_ZTS11float64v4_t")
!1398 = !{!1399}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1397, file: !1266, line: 248, baseType: !1400, size: 256)
!1400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !353)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1362, file: !1266, line: 349, baseType: !1402, size: 256)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v32_t", file: !1266, line: 214, size: 256, elements: !1403, identifier: "_ZTS9int8v32_t")
!1403 = !{!1404}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1402, file: !1266, line: 214, baseType: !1405, size: 256)
!1405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 256, elements: !1369)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1362, file: !1266, line: 350, baseType: !1407, size: 256)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v16_t", file: !1266, line: 221, size: 256, elements: !1408, identifier: "_ZTS10int16v16_t")
!1408 = !{!1409}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1407, file: !1266, line: 221, baseType: !1410, size: 256)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 256, elements: !1303)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1362, file: !1266, line: 351, baseType: !1412, size: 256)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v8_t", file: !1266, line: 227, size: 256, elements: !1413, identifier: "_ZTS9int32v8_t")
!1413 = !{!1414}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1412, file: !1266, line: 227, baseType: !1415, size: 256)
!1415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 256, elements: !1310)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1362, file: !1266, line: 352, baseType: !1417, size: 256)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v4_t", file: !1266, line: 232, size: 256, elements: !1418, identifier: "_ZTS9int64v4_t")
!1418 = !{!1419}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1417, file: !1266, line: 232, baseType: !1420, size: 256)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 256, elements: !353)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "sdqwords", scope: !1362, file: !1266, line: 353, baseType: !1422, size: 256)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int128v2_t", file: !1266, line: 237, size: 256, elements: !1423, identifier: "_ZTS10int128v2_t")
!1423 = !{!1424}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1422, file: !1266, line: 237, baseType: !1425, size: 256)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1359, size: 256, elements: !1322)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "zmm", scope: !1284, file: !27, line: 639, baseType: !1427, size: 512, align: 128)
!1427 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec512_t", file: !1266, line: 359, size: 512, elements: !1428, identifier: "_ZTS8vec512_t")
!1428 = !{!1429, !1436, !1441, !1446, !1451, !1456, !1461, !1466, !1471, !1476, !1481, !1486}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1427, file: !1266, line: 360, baseType: !1430, size: 512)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v64_t", file: !1266, line: 184, size: 512, elements: !1431, identifier: "_ZTS10uint8v64_t")
!1431 = !{!1432}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1430, file: !1266, line: 184, baseType: !1433, size: 512)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 512, elements: !1434)
!1434 = !{!1435}
!1435 = !DISubrange(count: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1427, file: !1266, line: 361, baseType: !1437, size: 512)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v32_t", file: !1266, line: 191, size: 512, elements: !1438, identifier: "_ZTS11uint16v32_t")
!1438 = !{!1439}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1437, file: !1266, line: 191, baseType: !1440, size: 512)
!1440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 512, elements: !1369)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1427, file: !1266, line: 362, baseType: !1442, size: 512)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v16_t", file: !1266, line: 197, size: 512, elements: !1443, identifier: "_ZTS11uint32v16_t")
!1443 = !{!1444}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1442, file: !1266, line: 197, baseType: !1445, size: 512)
!1445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 512, elements: !1303)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1427, file: !1266, line: 363, baseType: !1447, size: 512)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v8_t", file: !1266, line: 202, size: 512, elements: !1448, identifier: "_ZTS10uint64v8_t")
!1448 = !{!1449}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1447, file: !1266, line: 202, baseType: !1450, size: 512)
!1450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 512, elements: !1310)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "dqwords", scope: !1427, file: !1266, line: 364, baseType: !1452, size: 512)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint128v4_t", file: !1266, line: 207, size: 512, elements: !1453, identifier: "_ZTS11uint128v4_t")
!1453 = !{!1454}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1452, file: !1266, line: 207, baseType: !1455, size: 512)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 512, elements: !353)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1427, file: !1266, line: 365, baseType: !1457, size: 512)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v16_t", file: !1266, line: 244, size: 512, elements: !1458, identifier: "_ZTS12float32v16_t")
!1458 = !{!1459}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1457, file: !1266, line: 244, baseType: !1460, size: 512)
!1460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 512, elements: !1303)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1427, file: !1266, line: 366, baseType: !1462, size: 512)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v8_t", file: !1266, line: 249, size: 512, elements: !1463, identifier: "_ZTS11float64v8_t")
!1463 = !{!1464}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1462, file: !1266, line: 249, baseType: !1465, size: 512)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 512, elements: !1310)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1427, file: !1266, line: 368, baseType: !1467, size: 512)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v64_t", file: !1266, line: 215, size: 512, elements: !1468, identifier: "_ZTS9int8v64_t")
!1468 = !{!1469}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1467, file: !1266, line: 215, baseType: !1470, size: 512)
!1470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 512, elements: !1434)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1427, file: !1266, line: 369, baseType: !1472, size: 512)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v32_t", file: !1266, line: 222, size: 512, elements: !1473, identifier: "_ZTS10int16v32_t")
!1473 = !{!1474}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1472, file: !1266, line: 222, baseType: !1475, size: 512)
!1475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 512, elements: !1369)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1427, file: !1266, line: 370, baseType: !1477, size: 512)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v16_t", file: !1266, line: 228, size: 512, elements: !1478, identifier: "_ZTS10int32v16_t")
!1478 = !{!1479}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1477, file: !1266, line: 228, baseType: !1480, size: 512)
!1480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 512, elements: !1303)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1427, file: !1266, line: 371, baseType: !1482, size: 512)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v8_t", file: !1266, line: 233, size: 512, elements: !1483, identifier: "_ZTS9int64v8_t")
!1483 = !{!1484}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1482, file: !1266, line: 233, baseType: !1485, size: 512)
!1485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 512, elements: !1310)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "sdqwords", scope: !1427, file: !1266, line: 372, baseType: !1487, size: 512)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int128v4_t", file: !1266, line: 238, size: 512, elements: !1488, identifier: "_ZTS10int128v4_t")
!1488 = !{!1489}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1487, file: !1266, line: 238, baseType: !1490, size: 512)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1359, size: 512, elements: !353)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "aflag", scope: !1268, file: !27, line: 751, baseType: !1492, size: 128, align: 64, offset: 16512)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArithFlags", file: !27, line: 402, size: 128, align: 64, elements: !1493, identifier: "_ZTS10ArithFlags")
!1493 = !{!1494, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1492, file: !27, line: 404, baseType: !1495, size: 8)
!1495 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !62)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "cf", scope: !1492, file: !27, line: 405, baseType: !62, size: 8, offset: 8)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1492, file: !27, line: 406, baseType: !1495, size: 8, offset: 16)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "pf", scope: !1492, file: !27, line: 407, baseType: !62, size: 8, offset: 24)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1492, file: !27, line: 408, baseType: !1495, size: 8, offset: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !1492, file: !27, line: 409, baseType: !62, size: 8, offset: 40)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1492, file: !27, line: 410, baseType: !1495, size: 8, offset: 48)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "zf", scope: !1492, file: !27, line: 411, baseType: !62, size: 8, offset: 56)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1492, file: !27, line: 412, baseType: !1495, size: 8, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "sf", scope: !1492, file: !27, line: 413, baseType: !62, size: 8, offset: 72)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1492, file: !27, line: 414, baseType: !1495, size: 8, offset: 80)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "df", scope: !1492, file: !27, line: 415, baseType: !62, size: 8, offset: 88)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "_6", scope: !1492, file: !27, line: 416, baseType: !1495, size: 8, offset: 96)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "of", scope: !1492, file: !27, line: 417, baseType: !62, size: 8, offset: 104)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "_7", scope: !1492, file: !27, line: 418, baseType: !1495, size: 8, offset: 112)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "_8", scope: !1492, file: !27, line: 419, baseType: !1495, size: 8, offset: 120)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "rflag", scope: !1268, file: !27, line: 752, baseType: !1512, size: 64, align: 64, offset: 16640)
!1512 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Flags", file: !27, line: 366, size: 64, align: 64, elements: !1513, identifier: "_ZTS5Flags")
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1512, file: !27, line: 367, baseType: !637, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1512, file: !27, line: 368, baseType: !1516, size: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1512, file: !27, line: 368, size: 64, elements: !1517, identifier: "_ZTSN5FlagsUt_E")
!1517 = !{!1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "cf", scope: !1516, file: !27, line: 369, baseType: !8, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_1", scope: !1516, file: !27, line: 370, baseType: !8, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "pf", scope: !1516, file: !27, line: 371, baseType: !8, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_0a", scope: !1516, file: !27, line: 372, baseType: !8, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !1516, file: !27, line: 374, baseType: !8, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_0b", scope: !1516, file: !27, line: 375, baseType: !8, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "zf", scope: !1516, file: !27, line: 376, baseType: !8, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "sf", scope: !1516, file: !27, line: 377, baseType: !8, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "tf", scope: !1516, file: !27, line: 379, baseType: !8, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_if", scope: !1516, file: !27, line: 380, baseType: !8, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "df", scope: !1516, file: !27, line: 381, baseType: !8, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "of", scope: !1516, file: !27, line: 382, baseType: !8, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "iopl", scope: !1516, file: !27, line: 384, baseType: !8, size: 2, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "nt", scope: !1516, file: !27, line: 385, baseType: !8, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_0c", scope: !1516, file: !27, line: 386, baseType: !8, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !1516, file: !27, line: 388, baseType: !8, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "vm", scope: !1516, file: !27, line: 389, baseType: !8, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ac", scope: !1516, file: !27, line: 390, baseType: !8, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "vif", scope: !1516, file: !27, line: 391, baseType: !8, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !1516, file: !27, line: 393, baseType: !8, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1516, file: !27, line: 394, baseType: !8, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_eflags", scope: !1516, file: !27, line: 395, baseType: !8, size: 10, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_rflags", scope: !1516, file: !27, line: 396, baseType: !8, size: 32, offset: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "seg", scope: !1268, file: !27, line: 753, baseType: !1542, size: 192, align: 64, offset: 16704)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Segments", file: !27, line: 451, size: 192, align: 64, elements: !1543, identifier: "_ZTS8Segments")
!1543 = !{!1544, !1546, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1542, file: !27, line: 452, baseType: !1545, size: 16)
!1545 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !28)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1542, file: !27, line: 453, baseType: !1547, size: 16, offset: 16)
!1547 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "SegmentSelector", file: !27, line: 76, size: 16, elements: !1548, identifier: "_ZTS15SegmentSelector")
!1548 = !{!1549, !1550}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1547, file: !27, line: 77, baseType: !28, size: 16)
!1550 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !27, line: 78, baseType: !1551, size: 16)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1547, file: !27, line: 78, size: 16, elements: !1552, identifier: "_ZTSN15SegmentSelectorUt_E")
!1552 = !{!1553, !1554, !1555}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "rpi", scope: !1551, file: !27, line: 79, baseType: !26, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "ti", scope: !1551, file: !27, line: 80, baseType: !35, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1551, file: !27, line: 81, baseType: !28, size: 13, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1542, file: !27, line: 454, baseType: !1545, size: 16, offset: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1542, file: !27, line: 455, baseType: !1547, size: 16, offset: 48)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1542, file: !27, line: 456, baseType: !1545, size: 16, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !1542, file: !27, line: 457, baseType: !1547, size: 16, offset: 80)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1542, file: !27, line: 458, baseType: !1545, size: 16, offset: 96)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1542, file: !27, line: 459, baseType: !1547, size: 16, offset: 112)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1542, file: !27, line: 460, baseType: !1545, size: 16, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1542, file: !27, line: 461, baseType: !1547, size: 16, offset: 144)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1542, file: !27, line: 462, baseType: !1545, size: 16, offset: 160)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1542, file: !27, line: 463, baseType: !1547, size: 16, offset: 176)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1268, file: !27, line: 754, baseType: !1567, size: 768, align: 64, offset: 16896)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AddressSpace", file: !27, line: 654, size: 768, align: 64, elements: !1568, identifier: "_ZTS12AddressSpace")
!1568 = !{!1569, !1571, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1567, file: !27, line: 655, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !637)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "ss_base", scope: !1567, file: !27, line: 656, baseType: !1572, size: 64, offset: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Reg", file: !27, line: 610, size: 64, elements: !1573, identifier: "_ZTS3Reg")
!1573 = !{!1574}
!1574 = !DIDerivedType(tag: DW_TAG_member, scope: !1572, file: !27, line: 611, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1572, file: !27, line: 611, size: 64, elements: !1576, identifier: "_ZTSN3RegUt_E")
!1576 = !{!1577, !1582, !1583, !1584}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !1575, file: !27, line: 615, baseType: !1578, size: 16, align: 8)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1575, file: !27, line: 612, size: 16, elements: !1579, identifier: "_ZTSN3RegUt_Ut_E")
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !1578, file: !27, line: 613, baseType: !62, size: 8)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !1578, file: !27, line: 614, baseType: !62, size: 8, offset: 8)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !1575, file: !27, line: 616, baseType: !28, size: 16, align: 16)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "dword", scope: !1575, file: !27, line: 617, baseType: !8, size: 32, align: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "qword", scope: !1575, file: !27, line: 618, baseType: !637, size: 64, align: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1567, file: !27, line: 657, baseType: !1570, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "es_base", scope: !1567, file: !27, line: 658, baseType: !1572, size: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1567, file: !27, line: 659, baseType: !1570, size: 64, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "gs_base", scope: !1567, file: !27, line: 660, baseType: !1572, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1567, file: !27, line: 661, baseType: !1570, size: 64, offset: 384)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "fs_base", scope: !1567, file: !27, line: 662, baseType: !1572, size: 64, offset: 448)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1567, file: !27, line: 663, baseType: !1570, size: 64, offset: 512)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ds_base", scope: !1567, file: !27, line: 664, baseType: !1572, size: 64, offset: 576)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1567, file: !27, line: 665, baseType: !1570, size: 64, offset: 640)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "cs_base", scope: !1567, file: !27, line: 666, baseType: !1572, size: 64, offset: 704)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "gpr", scope: !1268, file: !27, line: 755, baseType: !1596, size: 2176, align: 64, offset: 17664)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GPR", file: !27, line: 677, size: 2176, align: 64, elements: !1597, identifier: "_ZTS3GPR")
!1597 = !{!1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1596, file: !27, line: 679, baseType: !1570, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rax", scope: !1596, file: !27, line: 680, baseType: !1572, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1596, file: !27, line: 681, baseType: !1570, size: 64, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "rbx", scope: !1596, file: !27, line: 682, baseType: !1572, size: 64, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1596, file: !27, line: 683, baseType: !1570, size: 64, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rcx", scope: !1596, file: !27, line: 684, baseType: !1572, size: 64, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1596, file: !27, line: 685, baseType: !1570, size: 64, offset: 384)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rdx", scope: !1596, file: !27, line: 686, baseType: !1572, size: 64, offset: 448)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1596, file: !27, line: 687, baseType: !1570, size: 64, offset: 512)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "rsi", scope: !1596, file: !27, line: 688, baseType: !1572, size: 64, offset: 576)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1596, file: !27, line: 689, baseType: !1570, size: 64, offset: 640)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "rdi", scope: !1596, file: !27, line: 690, baseType: !1572, size: 64, offset: 704)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_6", scope: !1596, file: !27, line: 691, baseType: !1570, size: 64, offset: 768)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "rsp", scope: !1596, file: !27, line: 692, baseType: !1572, size: 64, offset: 832)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_7", scope: !1596, file: !27, line: 693, baseType: !1570, size: 64, offset: 896)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "rbp", scope: !1596, file: !27, line: 694, baseType: !1572, size: 64, offset: 960)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_8", scope: !1596, file: !27, line: 695, baseType: !1570, size: 64, offset: 1024)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1596, file: !27, line: 696, baseType: !1572, size: 64, offset: 1088)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_9", scope: !1596, file: !27, line: 697, baseType: !1570, size: 64, offset: 1152)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1596, file: !27, line: 698, baseType: !1572, size: 64, offset: 1216)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "_10", scope: !1596, file: !27, line: 699, baseType: !1570, size: 64, offset: 1280)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1596, file: !27, line: 700, baseType: !1572, size: 64, offset: 1344)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_11", scope: !1596, file: !27, line: 701, baseType: !1570, size: 64, offset: 1408)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1596, file: !27, line: 702, baseType: !1572, size: 64, offset: 1472)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_12", scope: !1596, file: !27, line: 703, baseType: !1570, size: 64, offset: 1536)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1596, file: !27, line: 704, baseType: !1572, size: 64, offset: 1600)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_13", scope: !1596, file: !27, line: 705, baseType: !1570, size: 64, offset: 1664)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1596, file: !27, line: 706, baseType: !1572, size: 64, offset: 1728)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_14", scope: !1596, file: !27, line: 707, baseType: !1570, size: 64, offset: 1792)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1596, file: !27, line: 708, baseType: !1572, size: 64, offset: 1856)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "_15", scope: !1596, file: !27, line: 709, baseType: !1570, size: 64, offset: 1920)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1596, file: !27, line: 710, baseType: !1572, size: 64, offset: 1984)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "_16", scope: !1596, file: !27, line: 711, baseType: !1570, size: 64, offset: 2048)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1596, file: !27, line: 714, baseType: !1572, size: 64, offset: 2112)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1268, file: !27, line: 756, baseType: !1633, size: 1024, align: 64, offset: 19840)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X87Stack", file: !27, line: 719, size: 1024, align: 64, elements: !1634, identifier: "_ZTS8X87Stack")
!1634 = !{!1635}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1633, file: !27, line: 723, baseType: !1636, size: 1024)
!1636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1637, size: 1024, elements: !1310)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1633, file: !27, line: 720, size: 128, align: 64, elements: !1638, identifier: "_ZTSN8X87StackUt_E")
!1638 = !{!1639, !1640}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1637, file: !27, line: 721, baseType: !637, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1637, file: !27, line: 722, baseType: !1641, size: 64, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "float64_t", file: !1266, line: 61, baseType: !108)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "mmx", scope: !1268, file: !27, line: 757, baseType: !1643, size: 1024, align: 64, offset: 20864)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MMX", file: !27, line: 729, size: 1024, align: 64, elements: !1644, identifier: "_ZTS3MMX")
!1644 = !{!1645}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1643, file: !27, line: 733, baseType: !1646, size: 1024)
!1646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1647, size: 1024, elements: !1310)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1643, file: !27, line: 730, size: 128, align: 64, elements: !1648, identifier: "_ZTSN3MMXUt_E")
!1648 = !{!1649, !1650}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1647, file: !27, line: 731, baseType: !637, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1647, file: !27, line: 732, baseType: !1651, size: 64, offset: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec64_t", file: !1266, line: 294, size: 64, elements: !1652, identifier: "_ZTS7vec64_t")
!1652 = !{!1653, !1658, !1663, !1668, !1673, !1678, !1683, !1688, !1693, !1698}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1651, file: !1266, line: 298, baseType: !1654, size: 64)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v1_t", file: !1266, line: 199, size: 64, elements: !1655, identifier: "_ZTS10uint64v1_t")
!1655 = !{!1656}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1654, file: !1266, line: 199, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 64, elements: !1296)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1651, file: !1266, line: 300, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v8_t", file: !1266, line: 181, size: 64, elements: !1660, identifier: "_ZTS9uint8v8_t")
!1660 = !{!1661}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1659, file: !1266, line: 181, baseType: !1662, size: 64)
!1662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 64, elements: !1310)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1651, file: !1266, line: 301, baseType: !1664, size: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v4_t", file: !1266, line: 188, size: 64, elements: !1665, identifier: "_ZTS10uint16v4_t")
!1665 = !{!1666}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1664, file: !1266, line: 188, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 64, elements: !353)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1651, file: !1266, line: 302, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v2_t", file: !1266, line: 194, size: 64, elements: !1670, identifier: "_ZTS10uint32v2_t")
!1670 = !{!1671}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1669, file: !1266, line: 194, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !1322)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1651, file: !1266, line: 303, baseType: !1674, size: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v2_t", file: !1266, line: 241, size: 64, elements: !1675, identifier: "_ZTS11float32v2_t")
!1675 = !{!1676}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1674, file: !1266, line: 241, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 64, elements: !1322)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1651, file: !1266, line: 304, baseType: !1679, size: 64)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v1_t", file: !1266, line: 246, size: 64, elements: !1680, identifier: "_ZTS11float64v1_t")
!1680 = !{!1681}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1679, file: !1266, line: 246, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !1296)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1651, file: !1266, line: 306, baseType: !1684, size: 64)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v8_t", file: !1266, line: 212, size: 64, elements: !1685, identifier: "_ZTS8int8v8_t")
!1685 = !{!1686}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1684, file: !1266, line: 212, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 64, elements: !1310)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1651, file: !1266, line: 307, baseType: !1689, size: 64)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v4_t", file: !1266, line: 219, size: 64, elements: !1690, identifier: "_ZTS9int16v4_t")
!1690 = !{!1691}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1689, file: !1266, line: 219, baseType: !1692, size: 64)
!1692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 64, elements: !353)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1651, file: !1266, line: 308, baseType: !1694, size: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v2_t", file: !1266, line: 225, size: 64, elements: !1695, identifier: "_ZTS9int32v2_t")
!1695 = !{!1696}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1694, file: !1266, line: 225, baseType: !1697, size: 64)
!1697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 64, elements: !1322)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1651, file: !1266, line: 309, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v1_t", file: !1266, line: 230, size: 64, elements: !1700, identifier: "_ZTS9int64v1_t")
!1700 = !{!1701}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1699, file: !1266, line: 230, baseType: !1702, size: 64)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 64, elements: !1296)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !1268, file: !27, line: 758, baseType: !1704, size: 192, offset: 21888)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FPUStatusFlags", file: !27, line: 332, size: 192, elements: !1705, identifier: "_ZTS14FPUStatusFlags")
!1705 = !{!1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1704, file: !27, line: 333, baseType: !62, size: 8)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "c0", scope: !1704, file: !27, line: 334, baseType: !62, size: 8, offset: 8)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1704, file: !27, line: 335, baseType: !62, size: 8, offset: 16)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !1704, file: !27, line: 336, baseType: !62, size: 8, offset: 24)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1704, file: !27, line: 337, baseType: !62, size: 8, offset: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !1704, file: !27, line: 338, baseType: !62, size: 8, offset: 40)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1704, file: !27, line: 339, baseType: !62, size: 8, offset: 48)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "c3", scope: !1704, file: !27, line: 340, baseType: !62, size: 8, offset: 56)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1704, file: !27, line: 342, baseType: !62, size: 8, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !1704, file: !27, line: 343, baseType: !62, size: 8, offset: 72)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1704, file: !27, line: 345, baseType: !62, size: 8, offset: 80)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "ue", scope: !1704, file: !27, line: 346, baseType: !62, size: 8, offset: 88)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "_6", scope: !1704, file: !27, line: 348, baseType: !62, size: 8, offset: 96)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "oe", scope: !1704, file: !27, line: 349, baseType: !62, size: 8, offset: 104)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "_7", scope: !1704, file: !27, line: 351, baseType: !62, size: 8, offset: 112)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "ze", scope: !1704, file: !27, line: 352, baseType: !62, size: 8, offset: 120)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_8", scope: !1704, file: !27, line: 354, baseType: !62, size: 8, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !1704, file: !27, line: 355, baseType: !62, size: 8, offset: 136)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_9", scope: !1704, file: !27, line: 357, baseType: !62, size: 8, offset: 144)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "ie", scope: !1704, file: !27, line: 358, baseType: !62, size: 8, offset: 152)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "_padding", scope: !1704, file: !27, line: 360, baseType: !1727, size: 32, offset: 160)
!1727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 32, elements: !353)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "xcr0", scope: !1268, file: !27, line: 759, baseType: !1729, size: 64, offset: 22080)
!1729 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "XCR0", file: !27, line: 424, size: 64, elements: !1730, identifier: "_ZTS4XCR0")
!1730 = !{!1731, !1732, !1737}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1729, file: !27, line: 425, baseType: !637, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, scope: !1729, file: !27, line: 427, baseType: !1733, size: 64)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1729, file: !27, line: 427, size: 64, elements: !1734, identifier: "_ZTSN4XCR0Ut_E")
!1734 = !{!1735, !1736}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "eax", scope: !1733, file: !27, line: 428, baseType: !8, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "edx", scope: !1733, file: !27, line: 429, baseType: !8, size: 32, offset: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, scope: !1729, file: !27, line: 433, baseType: !1738, size: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1729, file: !27, line: 433, size: 64, elements: !1739, identifier: "_ZTSN4XCR0Ut0_E")
!1739 = !{!1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "x87_fpu_mmx", scope: !1738, file: !27, line: 434, baseType: !637, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1738, file: !27, line: 435, baseType: !637, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "ymm", scope: !1738, file: !27, line: 436, baseType: !637, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "bndreg", scope: !1738, file: !27, line: 437, baseType: !637, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "bndcsr", scope: !1738, file: !27, line: 438, baseType: !637, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "opmask", scope: !1738, file: !27, line: 439, baseType: !637, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "zmm_hi256", scope: !1738, file: !27, line: 440, baseType: !637, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "hi16_zmm", scope: !1738, file: !27, line: 441, baseType: !637, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1738, file: !27, line: 442, baseType: !637, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved0", scope: !1738, file: !27, line: 443, baseType: !637, size: 53, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "lwp", scope: !1738, file: !27, line: 444, baseType: !637, size: 1, offset: 62, flags: DIFlagBitField, extraData: i64 0)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved1", scope: !1738, file: !27, line: 445, baseType: !637, size: 1, offset: 63, flags: DIFlagBitField, extraData: i64 0)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "x87", scope: !1268, file: !27, line: 760, baseType: !1753, size: 4096, align: 128, offset: 22144)
!1753 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPU", file: !27, line: 314, size: 4096, align: 128, elements: !1754, identifier: "_ZTS3FPU")
!1754 = !{!1755, !1851, !1914}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1753, file: !27, line: 317, baseType: !1756, size: 4096)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1753, file: !27, line: 315, size: 4096, elements: !1757, identifier: "_ZTSN3FPUUt_E")
!1757 = !{!1758, !1847}
!1758 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1756, baseType: !1759)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FpuFSAVE", file: !27, line: 263, size: 1248, elements: !1760, identifier: "_ZTS8FpuFSAVE")
!1760 = !{!1761, !1779, !1780, !1801, !1802, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1759, file: !27, line: 264, baseType: !1762, size: 16)
!1762 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUControlWord", file: !27, line: 142, size: 16, elements: !1763, identifier: "_ZTS14FPUControlWord")
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1762, file: !27, line: 143, baseType: !28, size: 16)
!1765 = !DIDerivedType(tag: DW_TAG_member, scope: !1762, file: !27, line: 144, baseType: !1766, size: 16)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1762, file: !27, line: 144, size: 16, elements: !1767, identifier: "_ZTSN14FPUControlWordUt_E")
!1767 = !{!1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "im", scope: !1766, file: !27, line: 145, baseType: !28, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "dm", scope: !1766, file: !27, line: 146, baseType: !28, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "zm", scope: !1766, file: !27, line: 147, baseType: !28, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "om", scope: !1766, file: !27, line: 148, baseType: !28, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "um", scope: !1766, file: !27, line: 149, baseType: !28, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1766, file: !27, line: 150, baseType: !28, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1766, file: !27, line: 151, baseType: !28, size: 2, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !1766, file: !27, line: 152, baseType: !39, size: 2, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !1766, file: !27, line: 153, baseType: !45, size: 2, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1766, file: !27, line: 154, baseType: !51, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd1", scope: !1766, file: !27, line: 155, baseType: !28, size: 3, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1759, file: !27, line: 265, baseType: !28, size: 16, offset: 16)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1759, file: !27, line: 266, baseType: !1781, size: 16, offset: 32)
!1781 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUStatusWord", file: !27, line: 100, size: 16, elements: !1782, identifier: "_ZTS13FPUStatusWord")
!1782 = !{!1783, !1784}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1781, file: !27, line: 101, baseType: !28, size: 16)
!1784 = !DIDerivedType(tag: DW_TAG_member, scope: !1781, file: !27, line: 102, baseType: !1785, size: 16)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1781, file: !27, line: 102, size: 16, elements: !1786, identifier: "_ZTSN13FPUStatusWordUt_E")
!1786 = !{!1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "ie", scope: !1785, file: !27, line: 103, baseType: !28, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !1785, file: !27, line: 104, baseType: !28, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "ze", scope: !1785, file: !27, line: 105, baseType: !28, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "oe", scope: !1785, file: !27, line: 106, baseType: !28, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "ue", scope: !1785, file: !27, line: 107, baseType: !28, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !1785, file: !27, line: 108, baseType: !28, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "sf", scope: !1785, file: !27, line: 109, baseType: !28, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1785, file: !27, line: 110, baseType: !28, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "c0", scope: !1785, file: !27, line: 111, baseType: !28, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !1785, file: !27, line: 112, baseType: !28, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !1785, file: !27, line: 113, baseType: !28, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !1785, file: !27, line: 114, baseType: !28, size: 3, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "c3", scope: !1785, file: !27, line: 115, baseType: !28, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1785, file: !27, line: 116, baseType: !28, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd1", scope: !1759, file: !27, line: 267, baseType: !28, size: 16, offset: 48)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !1759, file: !27, line: 268, baseType: !1803, size: 16, offset: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUTagWord", file: !27, line: 227, size: 16, elements: !1804, identifier: "_ZTS10FPUTagWord")
!1804 = !{!1805, !1806}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1803, file: !27, line: 228, baseType: !28, size: 16)
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !1803, file: !27, line: 229, baseType: !1807, size: 16)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1803, file: !27, line: 229, size: 16, elements: !1808, identifier: "_ZTSN10FPUTagWordUt_E")
!1808 = !{!1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "tag0", scope: !1807, file: !27, line: 230, baseType: !55, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "tag1", scope: !1807, file: !27, line: 231, baseType: !55, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "tag2", scope: !1807, file: !27, line: 232, baseType: !55, size: 2, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "tag3", scope: !1807, file: !27, line: 233, baseType: !55, size: 2, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "tag4", scope: !1807, file: !27, line: 234, baseType: !55, size: 2, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "tag5", scope: !1807, file: !27, line: 235, baseType: !55, size: 2, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "tag6", scope: !1807, file: !27, line: 236, baseType: !55, size: 2, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "tag7", scope: !1807, file: !27, line: 237, baseType: !55, size: 2, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1759, file: !27, line: 269, baseType: !28, size: 16, offset: 80)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1759, file: !27, line: 270, baseType: !8, size: 32, offset: 96)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1759, file: !27, line: 271, baseType: !1547, size: 16, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd2", scope: !1759, file: !27, line: 272, baseType: !28, size: 16, offset: 144)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1759, file: !27, line: 273, baseType: !8, size: 32, offset: 160)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1759, file: !27, line: 274, baseType: !1547, size: 16, offset: 192)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd3", scope: !1759, file: !27, line: 275, baseType: !28, size: 16, offset: 208)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1759, file: !27, line: 276, baseType: !1825, size: 1024, offset: 224)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1826, size: 1024, elements: !1310)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FPUStackElem", file: !27, line: 162, size: 128, elements: !1827, identifier: "_ZTS12FPUStackElem")
!1827 = !{!1828, !1843}
!1828 = !DIDerivedType(tag: DW_TAG_member, scope: !1826, file: !27, line: 163, baseType: !1829, size: 80)
!1829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1826, file: !27, line: 163, size: 80, elements: !1830, identifier: "_ZTSN12FPUStackElemUt_E")
!1830 = !{!1831, !1838}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1829, file: !27, line: 164, baseType: !1832, size: 80)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float80_t", file: !1266, line: 65, size: 80, elements: !1833, identifier: "_ZTS9float80_t")
!1833 = !{!1834}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1832, file: !1266, line: 66, baseType: !1835, size: 80)
!1835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 80, elements: !1836)
!1836 = !{!1837}
!1837 = !DISubrange(count: 10)
!1838 = !DIDerivedType(tag: DW_TAG_member, scope: !1829, file: !27, line: 165, baseType: !1839, size: 80)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1829, file: !27, line: 165, size: 80, elements: !1840, identifier: "_ZTSN12FPUStackElemUt_Ut_E")
!1840 = !{!1841, !1842}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "mmx", scope: !1839, file: !27, line: 166, baseType: !637, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "infinity", scope: !1839, file: !27, line: 167, baseType: !28, size: 16, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd", scope: !1826, file: !27, line: 170, baseType: !1844, size: 48, offset: 80)
!1844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 48, elements: !1845)
!1845 = !{!1846}
!1846 = !DISubrange(count: 6)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_padding0", scope: !1756, file: !27, line: 316, baseType: !1848, size: 2848, offset: 1248)
!1848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 2848, elements: !1849)
!1849 = !{!1850}
!1850 = !DISubrange(count: 356)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave32", scope: !1753, file: !27, line: 321, baseType: !1852, size: 4096)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1753, file: !27, line: 319, size: 4096, elements: !1853, identifier: "_ZTSN3FPUUt0_E")
!1853 = !{!1854, !1910}
!1854 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1852, baseType: !1855)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FpuFXSAVE", file: !27, line: 280, size: 3328, elements: !1856, identifier: "_ZTS9FpuFXSAVE")
!1856 = !{!1857, !1858, !1859, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1906, !1907, !1908}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1855, file: !27, line: 281, baseType: !1762, size: 16)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1855, file: !27, line: 282, baseType: !1781, size: 16, offset: 16)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !1855, file: !27, line: 283, baseType: !1860, size: 8, offset: 32)
!1860 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUAbridgedTagWord", file: !27, line: 245, size: 8, elements: !1861, identifier: "_ZTS18FPUAbridgedTagWord")
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1860, file: !27, line: 246, baseType: !62, size: 8)
!1863 = !DIDerivedType(tag: DW_TAG_member, scope: !1860, file: !27, line: 247, baseType: !1864, size: 8)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1860, file: !27, line: 247, size: 8, elements: !1865, identifier: "_ZTSN18FPUAbridgedTagWordUt_E")
!1865 = !{!1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "r0", scope: !1864, file: !27, line: 248, baseType: !61, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "r1", scope: !1864, file: !27, line: 249, baseType: !61, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "r2", scope: !1864, file: !27, line: 250, baseType: !61, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "r3", scope: !1864, file: !27, line: 251, baseType: !61, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "r4", scope: !1864, file: !27, line: 252, baseType: !61, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "r5", scope: !1864, file: !27, line: 253, baseType: !61, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "r6", scope: !1864, file: !27, line: 254, baseType: !61, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "r7", scope: !1864, file: !27, line: 255, baseType: !61, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1855, file: !27, line: 284, baseType: !62, size: 8, offset: 40)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1855, file: !27, line: 285, baseType: !28, size: 16, offset: 48)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1855, file: !27, line: 286, baseType: !8, size: 32, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1855, file: !27, line: 287, baseType: !1547, size: 16, offset: 96)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd1", scope: !1855, file: !27, line: 288, baseType: !28, size: 16, offset: 112)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1855, file: !27, line: 289, baseType: !8, size: 32, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1855, file: !27, line: 290, baseType: !1547, size: 16, offset: 160)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd2", scope: !1855, file: !27, line: 291, baseType: !28, size: 16, offset: 176)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1855, file: !27, line: 292, baseType: !1883, size: 32, offset: 192)
!1883 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUControlStatus", file: !27, line: 188, size: 32, elements: !1884, identifier: "_ZTS16FPUControlStatus")
!1884 = !{!1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1883, file: !27, line: 189, baseType: !8, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, scope: !1883, file: !27, line: 190, baseType: !1887, size: 32)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1883, file: !27, line: 190, size: 32, elements: !1888, identifier: "_ZTSN16FPUControlStatusUt_E")
!1888 = !{!1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "ie", scope: !1887, file: !27, line: 191, baseType: !8, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !1887, file: !27, line: 192, baseType: !8, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "ze", scope: !1887, file: !27, line: 193, baseType: !8, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "oe", scope: !1887, file: !27, line: 194, baseType: !8, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "ue", scope: !1887, file: !27, line: 195, baseType: !8, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !1887, file: !27, line: 196, baseType: !8, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "daz", scope: !1887, file: !27, line: 197, baseType: !8, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "im", scope: !1887, file: !27, line: 198, baseType: !8, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "dm", scope: !1887, file: !27, line: 199, baseType: !8, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "zm", scope: !1887, file: !27, line: 200, baseType: !8, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "om", scope: !1887, file: !27, line: 201, baseType: !8, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "um", scope: !1887, file: !27, line: 202, baseType: !8, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1887, file: !27, line: 203, baseType: !8, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "rn", scope: !1887, file: !27, line: 204, baseType: !8, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "rp", scope: !1887, file: !27, line: 205, baseType: !8, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "fz", scope: !1887, file: !27, line: 206, baseType: !8, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd", scope: !1887, file: !27, line: 207, baseType: !8, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1855, file: !27, line: 293, baseType: !1883, size: 32, offset: 224)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1855, file: !27, line: 294, baseType: !1825, size: 1024, offset: 256)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1855, file: !27, line: 295, baseType: !1909, size: 2048, offset: 1280)
!1909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1287, size: 2048, elements: !1303)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_padding0", scope: !1852, file: !27, line: 320, baseType: !1911, size: 768, offset: 3328)
!1911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 768, elements: !1912)
!1912 = !{!1913}
!1913 = !DISubrange(count: 96)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave64", scope: !1753, file: !27, line: 325, baseType: !1915, size: 4096)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1753, file: !27, line: 323, size: 4096, elements: !1916, identifier: "_ZTSN3FPUUt1_E")
!1916 = !{!1917, !1931}
!1917 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1915, baseType: !1918)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FpuFXSAVE64", file: !27, line: 299, size: 3328, elements: !1919, identifier: "_ZTS11FpuFXSAVE64")
!1919 = !{!1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1918, file: !27, line: 300, baseType: !1762, size: 16)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1918, file: !27, line: 301, baseType: !1781, size: 16, offset: 16)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !1918, file: !27, line: 302, baseType: !1860, size: 8, offset: 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1918, file: !27, line: 303, baseType: !62, size: 8, offset: 40)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1918, file: !27, line: 304, baseType: !28, size: 16, offset: 48)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1918, file: !27, line: 305, baseType: !637, size: 64, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1918, file: !27, line: 306, baseType: !637, size: 64, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1918, file: !27, line: 307, baseType: !1883, size: 32, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1918, file: !27, line: 308, baseType: !1883, size: 32, offset: 224)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1918, file: !27, line: 309, baseType: !1825, size: 1024, offset: 256)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1918, file: !27, line: 310, baseType: !1909, size: 2048, offset: 1280)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_padding0", scope: !1915, file: !27, line: 324, baseType: !1911, size: 768, offset: 3328)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "seg_caches", scope: !1268, file: !27, line: 761, baseType: !1933, size: 768, align: 64, offset: 26240)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SegmentCaches", file: !27, line: 468, size: 768, align: 64, elements: !1934, identifier: "_ZTS13SegmentCaches")
!1934 = !{!1935, !1945, !1946, !1947, !1948, !1949}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1933, file: !27, line: 469, baseType: !1936, size: 128)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SegmentShadow", file: !27, line: 88, size: 128, elements: !1937, identifier: "_ZTS13SegmentShadow")
!1937 = !{!1938, !1943, !1944}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1936, file: !27, line: 92, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1936, file: !27, line: 89, size: 64, elements: !1940, identifier: "_ZTSN13SegmentShadowUt_E")
!1940 = !{!1941, !1942}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "dword", scope: !1939, file: !27, line: 90, baseType: !8, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "qword", scope: !1939, file: !27, line: 91, baseType: !637, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1936, file: !27, line: 93, baseType: !8, size: 32, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1936, file: !27, line: 94, baseType: !8, size: 32, offset: 96)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1933, file: !27, line: 470, baseType: !1936, size: 128, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1933, file: !27, line: 471, baseType: !1936, size: 128, offset: 256)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1933, file: !27, line: 472, baseType: !1936, size: 128, offset: 384)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1933, file: !27, line: 473, baseType: !1936, size: 128, offset: 512)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !1933, file: !27, line: 474, baseType: !1936, size: 128, offset: 640)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_t", file: !1266, line: 42, baseType: !1951)
!1951 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr64_t", file: !1266, line: 41, baseType: !637)
!1952 = !DILocation(line: 54, column: 8, scope: !1261)
!1953 = !DILocation(line: 55, column: 10, scope: !1261)
!1954 = !DILocation(line: 56, column: 10, scope: !1261)
!1955 = !DILocation(line: 57, column: 10, scope: !1261)
!1956 = !DILocation(line: 58, column: 10, scope: !1261)
!1957 = !DILocation(line: 61, column: 9, scope: !1261)
!1958 = !DILocation(line: 62, column: 9, scope: !1261)
!1959 = !DILocation(line: 63, column: 20, scope: !1261)
!1960 = !DILocation(line: 63, column: 24, scope: !1261)
!1961 = !DILocation(line: 63, column: 28, scope: !1261)
!1962 = !DILocation(line: 69, column: 6, scope: !1261)
!1963 = !DILocation(line: 74, column: 20, scope: !1261)
!1964 = !DILocation(line: 74, column: 24, scope: !1261)
!1965 = !DILocation(line: 74, column: 28, scope: !1261)
!1966 = !DILocation(line: 74, column: 33, scope: !1261)
!1967 = !DILocation(line: 75, column: 20, scope: !1261)
!1968 = !DILocation(line: 75, column: 24, scope: !1261)
!1969 = !DILocation(line: 75, column: 28, scope: !1261)
!1970 = !DILocation(line: 75, column: 33, scope: !1261)
!1971 = !DILocation(line: 76, column: 20, scope: !1261)
!1972 = !DILocation(line: 76, column: 24, scope: !1261)
!1973 = !DILocation(line: 76, column: 28, scope: !1261)
!1974 = !DILocation(line: 76, column: 33, scope: !1261)
!1975 = !DILocation(line: 77, column: 20, scope: !1261)
!1976 = !DILocation(line: 77, column: 24, scope: !1261)
!1977 = !DILocation(line: 77, column: 28, scope: !1261)
!1978 = !DILocation(line: 77, column: 33, scope: !1261)
!1979 = !DILocation(line: 78, column: 20, scope: !1261)
!1980 = !DILocation(line: 78, column: 24, scope: !1261)
!1981 = !DILocation(line: 78, column: 28, scope: !1261)
!1982 = !DILocation(line: 78, column: 33, scope: !1261)
!1983 = !DILocation(line: 79, column: 20, scope: !1261)
!1984 = !DILocation(line: 79, column: 24, scope: !1261)
!1985 = !DILocation(line: 79, column: 28, scope: !1261)
!1986 = !DILocation(line: 79, column: 33, scope: !1261)
!1987 = !DILocation(line: 80, column: 20, scope: !1261)
!1988 = !DILocation(line: 80, column: 24, scope: !1261)
!1989 = !DILocation(line: 80, column: 28, scope: !1261)
!1990 = !DILocation(line: 80, column: 33, scope: !1261)
!1991 = !DILocation(line: 81, column: 20, scope: !1261)
!1992 = !DILocation(line: 81, column: 24, scope: !1261)
!1993 = !DILocation(line: 81, column: 28, scope: !1261)
!1994 = !DILocation(line: 81, column: 33, scope: !1261)
!1995 = !DILocation(line: 83, column: 21, scope: !1261)
!1996 = !DILocation(line: 83, column: 25, scope: !1261)
!1997 = !DILocation(line: 83, column: 29, scope: !1261)
!1998 = !DILocation(line: 83, column: 34, scope: !1261)
!1999 = !DILocation(line: 84, column: 21, scope: !1261)
!2000 = !DILocation(line: 84, column: 25, scope: !1261)
!2001 = !DILocation(line: 84, column: 29, scope: !1261)
!2002 = !DILocation(line: 84, column: 34, scope: !1261)
!2003 = !DILocation(line: 85, column: 21, scope: !1261)
!2004 = !DILocation(line: 85, column: 25, scope: !1261)
!2005 = !DILocation(line: 85, column: 29, scope: !1261)
!2006 = !DILocation(line: 85, column: 34, scope: !1261)
!2007 = !DILocation(line: 86, column: 21, scope: !1261)
!2008 = !DILocation(line: 86, column: 25, scope: !1261)
!2009 = !DILocation(line: 86, column: 29, scope: !1261)
!2010 = !DILocation(line: 86, column: 34, scope: !1261)
!2011 = !DILocation(line: 87, column: 21, scope: !1261)
!2012 = !DILocation(line: 87, column: 25, scope: !1261)
!2013 = !DILocation(line: 87, column: 28, scope: !1261)
!2014 = !DILocation(line: 87, column: 33, scope: !1261)
!2015 = !DILocation(line: 88, column: 21, scope: !1261)
!2016 = !DILocation(line: 88, column: 25, scope: !1261)
!2017 = !DILocation(line: 88, column: 28, scope: !1261)
!2018 = !DILocation(line: 88, column: 33, scope: !1261)
!2019 = !DILocation(line: 89, column: 22, scope: !1261)
!2020 = !DILocation(line: 89, column: 26, scope: !1261)
!2021 = !DILocation(line: 89, column: 30, scope: !1261)
!2022 = !DILocation(line: 89, column: 35, scope: !1261)
!2023 = !DILocation(line: 90, column: 22, scope: !1261)
!2024 = !DILocation(line: 90, column: 26, scope: !1261)
!2025 = !DILocation(line: 90, column: 30, scope: !1261)
!2026 = !DILocation(line: 90, column: 35, scope: !1261)
!2027 = !DILocation(line: 91, column: 22, scope: !1261)
!2028 = !DILocation(line: 91, column: 26, scope: !1261)
!2029 = !DILocation(line: 91, column: 30, scope: !1261)
!2030 = !DILocation(line: 91, column: 35, scope: !1261)
!2031 = !DILocation(line: 92, column: 22, scope: !1261)
!2032 = !DILocation(line: 92, column: 26, scope: !1261)
!2033 = !DILocation(line: 92, column: 30, scope: !1261)
!2034 = !DILocation(line: 92, column: 35, scope: !1261)
!2035 = !DILocation(line: 93, column: 22, scope: !1261)
!2036 = !DILocation(line: 93, column: 26, scope: !1261)
!2037 = !DILocation(line: 93, column: 30, scope: !1261)
!2038 = !DILocation(line: 93, column: 35, scope: !1261)
!2039 = !DILocation(line: 94, column: 22, scope: !1261)
!2040 = !DILocation(line: 94, column: 26, scope: !1261)
!2041 = !DILocation(line: 94, column: 30, scope: !1261)
!2042 = !DILocation(line: 94, column: 35, scope: !1261)
!2043 = !DILocation(line: 96, column: 20, scope: !1261)
!2044 = !DILocation(line: 96, column: 24, scope: !1261)
!2045 = !DILocation(line: 96, column: 28, scope: !1261)
!2046 = !DILocation(line: 97, column: 20, scope: !1261)
!2047 = !DILocation(line: 97, column: 24, scope: !1261)
!2048 = !DILocation(line: 97, column: 28, scope: !1261)
!2049 = !DILocation(line: 98, column: 20, scope: !1261)
!2050 = !DILocation(line: 98, column: 24, scope: !1261)
!2051 = !DILocation(line: 98, column: 28, scope: !1261)
!2052 = !DILocation(line: 99, column: 20, scope: !1261)
!2053 = !DILocation(line: 99, column: 24, scope: !1261)
!2054 = !DILocation(line: 99, column: 28, scope: !1261)
!2055 = !DILocation(line: 100, column: 20, scope: !1261)
!2056 = !DILocation(line: 100, column: 24, scope: !1261)
!2057 = !DILocation(line: 100, column: 28, scope: !1261)
!2058 = !DILocation(line: 101, column: 20, scope: !1261)
!2059 = !DILocation(line: 101, column: 24, scope: !1261)
!2060 = !DILocation(line: 101, column: 28, scope: !1261)
!2061 = !DILocation(line: 102, column: 20, scope: !1261)
!2062 = !DILocation(line: 102, column: 24, scope: !1261)
!2063 = !DILocation(line: 102, column: 28, scope: !1261)
!2064 = !DILocation(line: 103, column: 20, scope: !1261)
!2065 = !DILocation(line: 103, column: 24, scope: !1261)
!2066 = !DILocation(line: 103, column: 28, scope: !1261)
!2067 = !DILocation(line: 105, column: 21, scope: !1261)
!2068 = !DILocation(line: 105, column: 25, scope: !1261)
!2069 = !DILocation(line: 105, column: 28, scope: !1261)
!2070 = !DILocation(line: 106, column: 21, scope: !1261)
!2071 = !DILocation(line: 106, column: 25, scope: !1261)
!2072 = !DILocation(line: 106, column: 28, scope: !1261)
!2073 = !DILocation(line: 107, column: 22, scope: !1261)
!2074 = !DILocation(line: 107, column: 26, scope: !1261)
!2075 = !DILocation(line: 107, column: 30, scope: !1261)
!2076 = !DILocation(line: 108, column: 22, scope: !1261)
!2077 = !DILocation(line: 108, column: 26, scope: !1261)
!2078 = !DILocation(line: 108, column: 30, scope: !1261)
!2079 = !DILocation(line: 109, column: 22, scope: !1261)
!2080 = !DILocation(line: 109, column: 26, scope: !1261)
!2081 = !DILocation(line: 109, column: 30, scope: !1261)
!2082 = !DILocation(line: 110, column: 22, scope: !1261)
!2083 = !DILocation(line: 110, column: 26, scope: !1261)
!2084 = !DILocation(line: 110, column: 30, scope: !1261)
!2085 = !DILocation(line: 111, column: 22, scope: !1261)
!2086 = !DILocation(line: 111, column: 26, scope: !1261)
!2087 = !DILocation(line: 111, column: 30, scope: !1261)
!2088 = !DILocation(line: 112, column: 22, scope: !1261)
!2089 = !DILocation(line: 112, column: 26, scope: !1261)
!2090 = !DILocation(line: 112, column: 30, scope: !1261)
!2091 = !DILocation(line: 114, column: 20, scope: !1261)
!2092 = !DILocation(line: 114, column: 24, scope: !1261)
!2093 = !DILocation(line: 114, column: 28, scope: !1261)
!2094 = !DILocation(line: 116, column: 21, scope: !1261)
!2095 = !DILocation(line: 116, column: 25, scope: !1261)
!2096 = !DILocation(line: 116, column: 29, scope: !1261)
!2097 = !DILocation(line: 117, column: 21, scope: !1261)
!2098 = !DILocation(line: 117, column: 25, scope: !1261)
!2099 = !DILocation(line: 117, column: 29, scope: !1261)
!2100 = !DILocation(line: 118, column: 21, scope: !1261)
!2101 = !DILocation(line: 118, column: 25, scope: !1261)
!2102 = !DILocation(line: 118, column: 29, scope: !1261)
!2103 = !DILocation(line: 119, column: 21, scope: !1261)
!2104 = !DILocation(line: 119, column: 25, scope: !1261)
!2105 = !DILocation(line: 119, column: 29, scope: !1261)
!2106 = !DILocation(line: 120, column: 21, scope: !1261)
!2107 = !DILocation(line: 120, column: 25, scope: !1261)
!2108 = !DILocation(line: 120, column: 29, scope: !1261)
!2109 = !DILocation(line: 121, column: 21, scope: !1261)
!2110 = !DILocation(line: 121, column: 25, scope: !1261)
!2111 = !DILocation(line: 121, column: 29, scope: !1261)
!2112 = !DILocation(line: 122, column: 21, scope: !1261)
!2113 = !DILocation(line: 122, column: 25, scope: !1261)
!2114 = !DILocation(line: 122, column: 29, scope: !1261)
!2115 = !DILocation(line: 123, column: 21, scope: !1261)
!2116 = !DILocation(line: 123, column: 25, scope: !1261)
!2117 = !DILocation(line: 123, column: 29, scope: !1261)
!2118 = !DILocation(line: 124, column: 21, scope: !1261)
!2119 = !DILocation(line: 124, column: 25, scope: !1261)
!2120 = !DILocation(line: 124, column: 29, scope: !1261)
!2121 = !DILocation(line: 127, column: 21, scope: !1261)
!2122 = !DILocation(line: 127, column: 25, scope: !1261)
!2123 = !DILocation(line: 127, column: 28, scope: !1261)
!2124 = !DILocation(line: 128, column: 21, scope: !1261)
!2125 = !DILocation(line: 128, column: 25, scope: !1261)
!2126 = !DILocation(line: 128, column: 28, scope: !1261)
!2127 = !DILocation(line: 129, column: 22, scope: !1261)
!2128 = !DILocation(line: 129, column: 26, scope: !1261)
!2129 = !DILocation(line: 129, column: 30, scope: !1261)
!2130 = !DILocation(line: 130, column: 22, scope: !1261)
!2131 = !DILocation(line: 130, column: 26, scope: !1261)
!2132 = !DILocation(line: 130, column: 30, scope: !1261)
!2133 = !DILocation(line: 131, column: 22, scope: !1261)
!2134 = !DILocation(line: 131, column: 26, scope: !1261)
!2135 = !DILocation(line: 131, column: 30, scope: !1261)
!2136 = !DILocation(line: 132, column: 22, scope: !1261)
!2137 = !DILocation(line: 132, column: 26, scope: !1261)
!2138 = !DILocation(line: 132, column: 30, scope: !1261)
!2139 = !DILocation(line: 133, column: 22, scope: !1261)
!2140 = !DILocation(line: 133, column: 26, scope: !1261)
!2141 = !DILocation(line: 133, column: 30, scope: !1261)
!2142 = !DILocation(line: 134, column: 22, scope: !1261)
!2143 = !DILocation(line: 134, column: 26, scope: !1261)
!2144 = !DILocation(line: 134, column: 30, scope: !1261)
!2145 = !DILocation(line: 136, column: 21, scope: !1261)
!2146 = !DILocation(line: 136, column: 25, scope: !1261)
!2147 = !DILocation(line: 136, column: 29, scope: !1261)
!2148 = !DILocation(line: 137, column: 21, scope: !1261)
!2149 = !DILocation(line: 137, column: 25, scope: !1261)
!2150 = !DILocation(line: 137, column: 29, scope: !1261)
!2151 = !DILocation(line: 138, column: 21, scope: !1261)
!2152 = !DILocation(line: 138, column: 25, scope: !1261)
!2153 = !DILocation(line: 138, column: 29, scope: !1261)
!2154 = !DILocation(line: 139, column: 21, scope: !1261)
!2155 = !DILocation(line: 139, column: 25, scope: !1261)
!2156 = !DILocation(line: 139, column: 29, scope: !1261)
!2157 = !DILocation(line: 140, column: 21, scope: !1261)
!2158 = !DILocation(line: 140, column: 25, scope: !1261)
!2159 = !DILocation(line: 140, column: 29, scope: !1261)
!2160 = !DILocation(line: 141, column: 21, scope: !1261)
!2161 = !DILocation(line: 141, column: 25, scope: !1261)
!2162 = !DILocation(line: 141, column: 29, scope: !1261)
!2163 = !DILocation(line: 142, column: 21, scope: !1261)
!2164 = !DILocation(line: 142, column: 25, scope: !1261)
!2165 = !DILocation(line: 142, column: 29, scope: !1261)
!2166 = !DILocation(line: 143, column: 21, scope: !1261)
!2167 = !DILocation(line: 143, column: 25, scope: !1261)
!2168 = !DILocation(line: 143, column: 29, scope: !1261)
!2169 = !DILocation(line: 144, column: 20, scope: !1261)
!2170 = !DILocation(line: 144, column: 24, scope: !1261)
!2171 = !DILocation(line: 144, column: 27, scope: !1261)
!2172 = !DILocation(line: 145, column: 20, scope: !1261)
!2173 = !DILocation(line: 145, column: 24, scope: !1261)
!2174 = !DILocation(line: 145, column: 27, scope: !1261)
!2175 = !DILocation(line: 146, column: 21, scope: !1261)
!2176 = !DILocation(line: 146, column: 25, scope: !1261)
!2177 = !DILocation(line: 146, column: 29, scope: !1261)
!2178 = !DILocation(line: 147, column: 21, scope: !1261)
!2179 = !DILocation(line: 147, column: 25, scope: !1261)
!2180 = !DILocation(line: 147, column: 29, scope: !1261)
!2181 = !DILocation(line: 148, column: 21, scope: !1261)
!2182 = !DILocation(line: 148, column: 25, scope: !1261)
!2183 = !DILocation(line: 148, column: 29, scope: !1261)
!2184 = !DILocation(line: 149, column: 21, scope: !1261)
!2185 = !DILocation(line: 149, column: 25, scope: !1261)
!2186 = !DILocation(line: 149, column: 29, scope: !1261)
!2187 = !DILocation(line: 150, column: 21, scope: !1261)
!2188 = !DILocation(line: 150, column: 25, scope: !1261)
!2189 = !DILocation(line: 150, column: 29, scope: !1261)
!2190 = !DILocation(line: 151, column: 21, scope: !1261)
!2191 = !DILocation(line: 151, column: 25, scope: !1261)
!2192 = !DILocation(line: 151, column: 29, scope: !1261)
!2193 = !DILocation(line: 152, column: 21, scope: !1261)
!2194 = !DILocation(line: 152, column: 25, scope: !1261)
!2195 = !DILocation(line: 152, column: 29, scope: !1261)
!2196 = !DILocation(line: 155, column: 20, scope: !1261)
!2197 = !DILocation(line: 155, column: 24, scope: !1261)
!2198 = !DILocation(line: 155, column: 27, scope: !1261)
!2199 = !DILocation(line: 156, column: 20, scope: !1261)
!2200 = !DILocation(line: 156, column: 24, scope: !1261)
!2201 = !DILocation(line: 156, column: 27, scope: !1261)
!2202 = !DILocation(line: 157, column: 20, scope: !1261)
!2203 = !DILocation(line: 157, column: 24, scope: !1261)
!2204 = !DILocation(line: 157, column: 27, scope: !1261)
!2205 = !DILocation(line: 158, column: 20, scope: !1261)
!2206 = !DILocation(line: 158, column: 24, scope: !1261)
!2207 = !DILocation(line: 158, column: 27, scope: !1261)
!2208 = !DILocation(line: 159, column: 20, scope: !1261)
!2209 = !DILocation(line: 159, column: 24, scope: !1261)
!2210 = !DILocation(line: 159, column: 27, scope: !1261)
!2211 = !DILocation(line: 160, column: 20, scope: !1261)
!2212 = !DILocation(line: 160, column: 24, scope: !1261)
!2213 = !DILocation(line: 160, column: 27, scope: !1261)
!2214 = !DILocation(line: 164, column: 25, scope: !1261)
!2215 = !DILocation(line: 164, column: 30, scope: !1261)
!2216 = !DILocation(line: 164, column: 38, scope: !1261)
!2217 = !DILocation(line: 165, column: 25, scope: !1261)
!2218 = !DILocation(line: 165, column: 30, scope: !1261)
!2219 = !DILocation(line: 165, column: 38, scope: !1261)
!2220 = !DILocation(line: 205, column: 22, scope: !1261)
!2221 = !DILocation(line: 205, column: 16, scope: !1261)
!2222 = !DILocation(line: 205, column: 29, scope: !1261)
!2223 = !DILocation(line: 206, column: 22, scope: !1261)
!2224 = !DILocation(line: 206, column: 16, scope: !1261)
!2225 = !DILocation(line: 206, column: 29, scope: !1261)
!2226 = !DILocation(line: 207, column: 22, scope: !1261)
!2227 = !DILocation(line: 207, column: 16, scope: !1261)
!2228 = !DILocation(line: 207, column: 29, scope: !1261)
!2229 = !DILocation(line: 208, column: 22, scope: !1261)
!2230 = !DILocation(line: 208, column: 16, scope: !1261)
!2231 = !DILocation(line: 208, column: 29, scope: !1261)
!2232 = !DILocation(line: 209, column: 22, scope: !1261)
!2233 = !DILocation(line: 209, column: 16, scope: !1261)
!2234 = !DILocation(line: 209, column: 29, scope: !1261)
!2235 = !DILocation(line: 210, column: 22, scope: !1261)
!2236 = !DILocation(line: 210, column: 16, scope: !1261)
!2237 = !DILocation(line: 210, column: 29, scope: !1261)
!2238 = !DILocation(line: 211, column: 22, scope: !1261)
!2239 = !DILocation(line: 211, column: 16, scope: !1261)
!2240 = !DILocation(line: 211, column: 29, scope: !1261)
!2241 = !DILocation(line: 212, column: 22, scope: !1261)
!2242 = !DILocation(line: 212, column: 16, scope: !1261)
!2243 = !DILocation(line: 212, column: 29, scope: !1261)
!2244 = !DILocation(line: 214, column: 22, scope: !1261)
!2245 = !DILocation(line: 214, column: 16, scope: !1261)
!2246 = !DILocation(line: 214, column: 29, scope: !1261)
!2247 = !DILocation(line: 215, column: 22, scope: !1261)
!2248 = !DILocation(line: 215, column: 16, scope: !1261)
!2249 = !DILocation(line: 215, column: 29, scope: !1261)
!2250 = !DILocation(line: 216, column: 23, scope: !1261)
!2251 = !DILocation(line: 216, column: 17, scope: !1261)
!2252 = !DILocation(line: 216, column: 31, scope: !1261)
!2253 = !DILocation(line: 217, column: 23, scope: !1261)
!2254 = !DILocation(line: 217, column: 17, scope: !1261)
!2255 = !DILocation(line: 217, column: 31, scope: !1261)
!2256 = !DILocation(line: 218, column: 23, scope: !1261)
!2257 = !DILocation(line: 218, column: 17, scope: !1261)
!2258 = !DILocation(line: 218, column: 31, scope: !1261)
!2259 = !DILocation(line: 219, column: 23, scope: !1261)
!2260 = !DILocation(line: 219, column: 17, scope: !1261)
!2261 = !DILocation(line: 219, column: 31, scope: !1261)
!2262 = !DILocation(line: 220, column: 23, scope: !1261)
!2263 = !DILocation(line: 220, column: 17, scope: !1261)
!2264 = !DILocation(line: 220, column: 31, scope: !1261)
!2265 = !DILocation(line: 221, column: 23, scope: !1261)
!2266 = !DILocation(line: 221, column: 17, scope: !1261)
!2267 = !DILocation(line: 221, column: 31, scope: !1261)
!2268 = !DILocation(line: 245, column: 22, scope: !1261)
!2269 = !DILocation(line: 245, column: 16, scope: !1261)
!2270 = !DILocation(line: 245, column: 29, scope: !1261)
!2271 = !DILocation(line: 246, column: 22, scope: !1261)
!2272 = !DILocation(line: 246, column: 16, scope: !1261)
!2273 = !DILocation(line: 246, column: 29, scope: !1261)
!2274 = !DILocation(line: 247, column: 22, scope: !1261)
!2275 = !DILocation(line: 247, column: 16, scope: !1261)
!2276 = !DILocation(line: 247, column: 29, scope: !1261)
!2277 = !DILocation(line: 248, column: 22, scope: !1261)
!2278 = !DILocation(line: 248, column: 16, scope: !1261)
!2279 = !DILocation(line: 248, column: 29, scope: !1261)
!2280 = !DILocation(line: 249, column: 22, scope: !1261)
!2281 = !DILocation(line: 249, column: 16, scope: !1261)
!2282 = !DILocation(line: 249, column: 29, scope: !1261)
!2283 = !DILocation(line: 250, column: 22, scope: !1261)
!2284 = !DILocation(line: 250, column: 16, scope: !1261)
!2285 = !DILocation(line: 250, column: 29, scope: !1261)
!2286 = !DILocation(line: 251, column: 22, scope: !1261)
!2287 = !DILocation(line: 251, column: 16, scope: !1261)
!2288 = !DILocation(line: 251, column: 29, scope: !1261)
!2289 = !DILocation(line: 252, column: 22, scope: !1261)
!2290 = !DILocation(line: 252, column: 16, scope: !1261)
!2291 = !DILocation(line: 252, column: 29, scope: !1261)
!2292 = !DILocation(line: 255, column: 22, scope: !1261)
!2293 = !DILocation(line: 255, column: 16, scope: !1261)
!2294 = !DILocation(line: 255, column: 29, scope: !1261)
!2295 = !DILocation(line: 256, column: 22, scope: !1261)
!2296 = !DILocation(line: 256, column: 16, scope: !1261)
!2297 = !DILocation(line: 256, column: 29, scope: !1261)
!2298 = !DILocation(line: 257, column: 23, scope: !1261)
!2299 = !DILocation(line: 257, column: 17, scope: !1261)
!2300 = !DILocation(line: 257, column: 31, scope: !1261)
!2301 = !DILocation(line: 258, column: 23, scope: !1261)
!2302 = !DILocation(line: 258, column: 17, scope: !1261)
!2303 = !DILocation(line: 258, column: 31, scope: !1261)
!2304 = !DILocation(line: 259, column: 23, scope: !1261)
!2305 = !DILocation(line: 259, column: 17, scope: !1261)
!2306 = !DILocation(line: 259, column: 31, scope: !1261)
!2307 = !DILocation(line: 260, column: 23, scope: !1261)
!2308 = !DILocation(line: 260, column: 17, scope: !1261)
!2309 = !DILocation(line: 260, column: 31, scope: !1261)
!2310 = !DILocation(line: 261, column: 23, scope: !1261)
!2311 = !DILocation(line: 261, column: 17, scope: !1261)
!2312 = !DILocation(line: 261, column: 31, scope: !1261)
!2313 = !DILocation(line: 262, column: 23, scope: !1261)
!2314 = !DILocation(line: 262, column: 17, scope: !1261)
!2315 = !DILocation(line: 262, column: 31, scope: !1261)
!2316 = !DILocation(line: 285, column: 21, scope: !1261)
!2317 = !DILocation(line: 285, column: 24, scope: !1261)
!2318 = !DILocation(line: 285, column: 15, scope: !1261)
!2319 = !DILocation(line: 285, column: 33, scope: !1261)
!2320 = !DILocation(line: 286, column: 21, scope: !1261)
!2321 = !DILocation(line: 286, column: 24, scope: !1261)
!2322 = !DILocation(line: 286, column: 15, scope: !1261)
!2323 = !DILocation(line: 286, column: 33, scope: !1261)
!2324 = !DILocation(line: 287, column: 21, scope: !1261)
!2325 = !DILocation(line: 287, column: 24, scope: !1261)
!2326 = !DILocation(line: 287, column: 15, scope: !1261)
!2327 = !DILocation(line: 287, column: 33, scope: !1261)
!2328 = !DILocation(line: 288, column: 21, scope: !1261)
!2329 = !DILocation(line: 288, column: 24, scope: !1261)
!2330 = !DILocation(line: 288, column: 15, scope: !1261)
!2331 = !DILocation(line: 288, column: 33, scope: !1261)
!2332 = !DILocation(line: 289, column: 21, scope: !1261)
!2333 = !DILocation(line: 289, column: 24, scope: !1261)
!2334 = !DILocation(line: 289, column: 15, scope: !1261)
!2335 = !DILocation(line: 289, column: 33, scope: !1261)
!2336 = !DILocation(line: 290, column: 21, scope: !1261)
!2337 = !DILocation(line: 290, column: 24, scope: !1261)
!2338 = !DILocation(line: 290, column: 15, scope: !1261)
!2339 = !DILocation(line: 290, column: 33, scope: !1261)
!2340 = !DILocation(line: 291, column: 21, scope: !1261)
!2341 = !DILocation(line: 291, column: 24, scope: !1261)
!2342 = !DILocation(line: 291, column: 15, scope: !1261)
!2343 = !DILocation(line: 291, column: 33, scope: !1261)
!2344 = !DILocation(line: 292, column: 21, scope: !1261)
!2345 = !DILocation(line: 292, column: 24, scope: !1261)
!2346 = !DILocation(line: 292, column: 15, scope: !1261)
!2347 = !DILocation(line: 292, column: 33, scope: !1261)
!2348 = !DILocation(line: 318, column: 21, scope: !1261)
!2349 = !DILocation(line: 318, column: 25, scope: !1261)
!2350 = !DILocation(line: 318, column: 15, scope: !1261)
!2351 = !DILocation(line: 318, column: 34, scope: !1261)
!2352 = !DILocation(line: 318, column: 38, scope: !1261)
!2353 = !DILocation(line: 318, column: 45, scope: !1261)
!2354 = !DILocation(line: 319, column: 21, scope: !1261)
!2355 = !DILocation(line: 319, column: 25, scope: !1261)
!2356 = !DILocation(line: 319, column: 15, scope: !1261)
!2357 = !DILocation(line: 319, column: 34, scope: !1261)
!2358 = !DILocation(line: 319, column: 38, scope: !1261)
!2359 = !DILocation(line: 319, column: 45, scope: !1261)
!2360 = !DILocation(line: 320, column: 21, scope: !1261)
!2361 = !DILocation(line: 320, column: 25, scope: !1261)
!2362 = !DILocation(line: 320, column: 15, scope: !1261)
!2363 = !DILocation(line: 320, column: 34, scope: !1261)
!2364 = !DILocation(line: 320, column: 38, scope: !1261)
!2365 = !DILocation(line: 320, column: 45, scope: !1261)
!2366 = !DILocation(line: 321, column: 21, scope: !1261)
!2367 = !DILocation(line: 321, column: 25, scope: !1261)
!2368 = !DILocation(line: 321, column: 15, scope: !1261)
!2369 = !DILocation(line: 321, column: 34, scope: !1261)
!2370 = !DILocation(line: 321, column: 38, scope: !1261)
!2371 = !DILocation(line: 321, column: 45, scope: !1261)
!2372 = !DILocation(line: 322, column: 21, scope: !1261)
!2373 = !DILocation(line: 322, column: 25, scope: !1261)
!2374 = !DILocation(line: 322, column: 15, scope: !1261)
!2375 = !DILocation(line: 322, column: 34, scope: !1261)
!2376 = !DILocation(line: 322, column: 38, scope: !1261)
!2377 = !DILocation(line: 322, column: 45, scope: !1261)
!2378 = !DILocation(line: 323, column: 21, scope: !1261)
!2379 = !DILocation(line: 323, column: 25, scope: !1261)
!2380 = !DILocation(line: 323, column: 15, scope: !1261)
!2381 = !DILocation(line: 323, column: 34, scope: !1261)
!2382 = !DILocation(line: 323, column: 38, scope: !1261)
!2383 = !DILocation(line: 323, column: 45, scope: !1261)
!2384 = !DILocation(line: 324, column: 21, scope: !1261)
!2385 = !DILocation(line: 324, column: 25, scope: !1261)
!2386 = !DILocation(line: 324, column: 15, scope: !1261)
!2387 = !DILocation(line: 324, column: 34, scope: !1261)
!2388 = !DILocation(line: 324, column: 38, scope: !1261)
!2389 = !DILocation(line: 324, column: 45, scope: !1261)
!2390 = !DILocation(line: 325, column: 21, scope: !1261)
!2391 = !DILocation(line: 325, column: 25, scope: !1261)
!2392 = !DILocation(line: 325, column: 15, scope: !1261)
!2393 = !DILocation(line: 325, column: 34, scope: !1261)
!2394 = !DILocation(line: 325, column: 38, scope: !1261)
!2395 = !DILocation(line: 325, column: 45, scope: !1261)
!2396 = !DILocation(line: 328, column: 20, scope: !1261)
!2397 = !DILocation(line: 328, column: 26, scope: !1261)
!2398 = !DILocation(line: 329, column: 20, scope: !1261)
!2399 = !DILocation(line: 329, column: 26, scope: !1261)
!2400 = !DILocation(line: 330, column: 20, scope: !1261)
!2401 = !DILocation(line: 330, column: 26, scope: !1261)
!2402 = !DILocation(line: 331, column: 20, scope: !1261)
!2403 = !DILocation(line: 331, column: 26, scope: !1261)
!2404 = !DILocation(line: 332, column: 20, scope: !1261)
!2405 = !DILocation(line: 332, column: 26, scope: !1261)
!2406 = !DILocation(line: 333, column: 20, scope: !1261)
!2407 = !DILocation(line: 333, column: 26, scope: !1261)
!2408 = !DILocation(line: 334, column: 20, scope: !1261)
!2409 = !DILocation(line: 334, column: 26, scope: !1261)
!2410 = !DILocation(line: 337, column: 9, scope: !1261)
!2411 = !DILocation(line: 338, column: 9, scope: !1261)
!2412 = !DILocation(line: 339, column: 9, scope: !1261)
!2413 = !DILocation(line: 340, column: 9, scope: !1261)
!2414 = !DILocation(line: 341, column: 9, scope: !1261)
!2415 = !DILocation(line: 342, column: 9, scope: !1261)
!2416 = !DILocation(line: 343, column: 9, scope: !1261)
!2417 = !DILocation(line: 344, column: 9, scope: !1261)
!2418 = !DILocation(line: 347, column: 9, scope: !1261)
!2419 = !DILocation(line: 348, column: 9, scope: !1261)
!2420 = !DILocation(line: 349, column: 9, scope: !1261)
!2421 = !DILocation(line: 350, column: 9, scope: !1261)
!2422 = !DILocation(line: 351, column: 9, scope: !1261)
!2423 = !DILocation(line: 353, column: 9, scope: !1261)
!2424 = !DILocation(line: 357, column: 3, scope: !1261)
!2425 = distinct !DISubprogram(name: "__remill_intrinsics", scope: !2426, file: !2426, line: 35, type: !95, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: false, unit: !1, variables: !7)
!2426 = !DIFile(filename: "/home/ubuntu/Github/remill/remill/Arch/Runtime/Intrinsics.cpp", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!2427 = !DILocation(line: 116, column: 1, scope: !2425)
!2428 = !{!2429, !2429, i64 0}
!2429 = !{!"long", !2430, i64 0}
!2430 = !{!"omnipotent char", !2431, i64 0}
!2431 = !{!"Simple C++ TBAA"}
!2432 = !{!2433, !2433, i64 0}
!2433 = !{!"int", !2430, i64 0}
!2434 = !{!2435, !2430, i64 2065}
!2435 = !{!"_ZTS5State", !2430, i64 16, !2436, i64 2064, !2430, i64 2080, !2437, i64 2088, !2439, i64 2112, !2441, i64 2208, !2442, i64 2480, !2443, i64 2608, !2444, i64 2736, !2430, i64 2760, !2430, i64 2768, !2445, i64 3280}
!2436 = !{!"_ZTS10ArithFlags", !2430, i64 0, !2430, i64 1, !2430, i64 2, !2430, i64 3, !2430, i64 4, !2430, i64 5, !2430, i64 6, !2430, i64 7, !2430, i64 8, !2430, i64 9, !2430, i64 10, !2430, i64 11, !2430, i64 12, !2430, i64 13, !2430, i64 14, !2430, i64 15}
!2437 = !{!"_ZTS8Segments", !2438, i64 0, !2430, i64 2, !2438, i64 4, !2430, i64 6, !2438, i64 8, !2430, i64 10, !2438, i64 12, !2430, i64 14, !2438, i64 16, !2430, i64 18, !2438, i64 20, !2430, i64 22}
!2438 = !{!"short", !2430, i64 0}
!2439 = !{!"_ZTS12AddressSpace", !2429, i64 0, !2440, i64 8, !2429, i64 16, !2440, i64 24, !2429, i64 32, !2440, i64 40, !2429, i64 48, !2440, i64 56, !2429, i64 64, !2440, i64 72, !2429, i64 80, !2440, i64 88}
!2440 = !{!"_ZTS3Reg", !2430, i64 0}
!2441 = !{!"_ZTS3GPR", !2429, i64 0, !2440, i64 8, !2429, i64 16, !2440, i64 24, !2429, i64 32, !2440, i64 40, !2429, i64 48, !2440, i64 56, !2429, i64 64, !2440, i64 72, !2429, i64 80, !2440, i64 88, !2429, i64 96, !2440, i64 104, !2429, i64 112, !2440, i64 120, !2429, i64 128, !2440, i64 136, !2429, i64 144, !2440, i64 152, !2429, i64 160, !2440, i64 168, !2429, i64 176, !2440, i64 184, !2429, i64 192, !2440, i64 200, !2429, i64 208, !2440, i64 216, !2429, i64 224, !2440, i64 232, !2429, i64 240, !2440, i64 248, !2429, i64 256, !2440, i64 264}
!2442 = !{!"_ZTS8X87Stack", !2430, i64 0}
!2443 = !{!"_ZTS3MMX", !2430, i64 0}
!2444 = !{!"_ZTS14FPUStatusFlags", !2430, i64 0, !2430, i64 1, !2430, i64 2, !2430, i64 3, !2430, i64 4, !2430, i64 5, !2430, i64 6, !2430, i64 7, !2430, i64 8, !2430, i64 9, !2430, i64 10, !2430, i64 11, !2430, i64 12, !2430, i64 13, !2430, i64 14, !2430, i64 15, !2430, i64 16, !2430, i64 17, !2430, i64 18, !2430, i64 19, !2430, i64 20}
!2445 = !{!"_ZTS13SegmentCaches", !2446, i64 0, !2446, i64 16, !2446, i64 32, !2446, i64 48, !2446, i64 64, !2446, i64 80}
!2446 = !{!"_ZTS13SegmentShadow", !2430, i64 0, !2433, i64 8, !2433, i64 12}
!2447 = !{!2435, !2430, i64 2067}
!2448 = !{!2435, !2430, i64 2069}
!2449 = !{!2435, !2430, i64 2071}
!2450 = !{!2435, !2430, i64 2073}
!2451 = !{!2435, !2430, i64 2077}
!2452 = !{!2453, !2453, i64 0}
!2453 = !{!"double", !2430, i64 0}
!2454 = !{!2430, !2430, i64 0}
!2455 = !{!2456, !2456, i64 0}
!2456 = !{!"float", !2430, i64 0}
