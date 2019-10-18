; ModuleID = 'binary/test.mcsema.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_602df0__init_array_type = type <{ i64, i64 }>
%seg_602ff0__got_type = type <{ i64, i64 }>
%seg_603020__data_type = type <{ [16 x i8], [36 x i8] }>
%seg_603060__bss_type = type <{ [16 x i8], [16 x i8], [1024 x i8], [1024 x i8], [1024 x i8], [80 x i8], [960 x i8], [64 x i8] }>
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
@seg_602df0__init_array = internal global %seg_602df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400500_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_4004d0___do_global_dtors_aux to i64) }>
@seg_602ff0__got = internal global %seg_602ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_603020__data = internal global %seg_603020__data_type <{ [16 x i8] zeroinitializer, [36 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00" }>
@seg_603060__bss = internal global %seg_603060__bss_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400500_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4004d0___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401cd0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401c60___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @rsenc_204_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @rsdec_204_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

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

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @random() #5

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400500_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400500:
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
  %13 = tail call %struct.Memory* @sub_400490_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400930_decode_rs(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400930:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %ECX = bitcast %union.anon* %4 to i32*
  %EDX = bitcast %union.anon* %5 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %6 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RSI = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %7 = load i64, i64* %RBP, align 8
  %8 = add i64 %1, 1
  store i64 %8, i64* %PC, align 8
  %9 = load i64, i64* %RSP, align 8, !tbaa !2428
  %10 = add i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64 %7, i64* %11, align 8
  %12 = load i64, i64* %PC, align 8
  store i64 %10, i64* %RBP, align 8, !tbaa !2428
  %13 = add i64 %9, -2616
  store i64 %13, i64* %RSP, align 8, !tbaa !2428
  %14 = icmp ult i64 %10, 2608
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1, !tbaa !2432
  %17 = trunc i64 %13 to i32
  %18 = and i32 %17, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #9
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1, !tbaa !2446
  %24 = xor i64 %10, 16
  %25 = xor i64 %24, %13
  %26 = lshr i64 %25, 4
  %27 = trunc i64 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1, !tbaa !2447
  %30 = icmp eq i64 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1, !tbaa !2448
  %33 = lshr i64 %13, 63
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1, !tbaa !2449
  %36 = lshr i64 %10, 63
  %37 = xor i64 %33, %36
  %38 = add nuw nsw i64 %37, %36
  %39 = icmp eq i64 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1, !tbaa !2450
  %42 = add i64 %9, -1500
  %43 = add i64 %12, 20
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %42 to i32*
  store i32 0, i32* %44, align 4
  %45 = load i64, i64* %RBP, align 8
  %46 = add i64 %45, -1496
  %47 = load i64, i64* %PC, align 8
  %48 = add i64 %47, 10
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %46 to i32*
  store i32 0, i32* %49, align 4
  %50 = load i64, i64* %RBP, align 8
  %51 = add i64 %50, -4
  %52 = load i64, i64* %PC, align 8
  %53 = add i64 %52, 7
  store i64 %53, i64* %PC, align 8
  %54 = inttoptr i64 %51 to i32*
  store i32 1, i32* %54, align 4
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_400956

block_4015fc:                                     ; preds = %block_4015e8
  %56 = add i64 %1154, 3
  store i64 %56, i64* %PC, align 8
  %57 = load i32, i32* %1114, align 4
  %58 = zext i32 %57 to i64
  store i64 %58, i64* %RAX, align 8, !tbaa !2428
  %59 = add i64 %1111, -4
  %60 = add i64 %1154, 6
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %59 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = sub i32 %57, %62
  %64 = icmp ult i32 %57, %62
  %65 = zext i1 %64 to i8
  store i8 %65, i8* %16, align 1, !tbaa !2432
  %66 = and i32 %63, 255
  %67 = tail call i32 @llvm.ctpop.i32(i32 %66) #9
  %68 = trunc i32 %67 to i8
  %69 = and i8 %68, 1
  %70 = xor i8 %69, 1
  store i8 %70, i8* %23, align 1, !tbaa !2446
  %71 = xor i32 %62, %57
  %72 = xor i32 %71, %63
  %73 = lshr i32 %72, 4
  %74 = trunc i32 %73 to i8
  %75 = and i8 %74, 1
  store i8 %75, i8* %29, align 1, !tbaa !2447
  %76 = icmp eq i32 %63, 0
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %32, align 1, !tbaa !2448
  %78 = lshr i32 %63, 31
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %35, align 1, !tbaa !2449
  %80 = lshr i32 %57, 31
  %81 = lshr i32 %62, 31
  %82 = xor i32 %81, %80
  %83 = xor i32 %78, %80
  %84 = add nuw nsw i32 %83, %82
  %85 = icmp eq i32 %84, 2
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %41, align 1, !tbaa !2450
  %.v301 = select i1 %76, i64 85, i64 12
  %87 = add i64 %1154, %.v301
  store i64 %87, i64* %PC, align 8, !tbaa !2428
  br i1 %76, label %block_401651, label %block_401608

block_4017f4:                                     ; preds = %block_401845, %block_4017ed
  %88 = phi i64 [ %5047, %block_401845 ], [ %.pre255, %block_4017ed ]
  %89 = load i64, i64* %RBP, align 8
  %90 = add i64 %89, -4
  %91 = add i64 %88, 7
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %90 to i32*
  %93 = load i32, i32* %92, align 4
  %94 = add i32 %93, -255
  %95 = icmp ult i32 %93, 255
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %16, align 1, !tbaa !2432
  %97 = and i32 %94, 255
  %98 = tail call i32 @llvm.ctpop.i32(i32 %97) #9
  %99 = trunc i32 %98 to i8
  %100 = and i8 %99, 1
  %101 = xor i8 %100, 1
  store i8 %101, i8* %23, align 1, !tbaa !2446
  %102 = xor i32 %93, 16
  %103 = xor i32 %102, %94
  %104 = lshr i32 %103, 4
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  store i8 %106, i8* %29, align 1, !tbaa !2447
  %107 = icmp eq i32 %94, 0
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %32, align 1, !tbaa !2448
  %109 = lshr i32 %94, 31
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %35, align 1, !tbaa !2449
  %111 = lshr i32 %93, 31
  %112 = xor i32 %109, %111
  %113 = add nuw nsw i32 %112, %111
  %114 = icmp eq i32 %113, 2
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %41, align 1, !tbaa !2450
  %116 = icmp ne i8 %110, 0
  %117 = xor i1 %116, %114
  %.v279 = select i1 %117, i64 13, i64 100
  %118 = add i64 %88, %.v279
  store i64 %118, i64* %PC, align 8, !tbaa !2428
  br i1 %117, label %block_401801, label %block_40185d.loopexit

block_4017e8.loopexit:                            ; preds = %block_40177f
  br label %block_4017e8

block_4017e8:                                     ; preds = %block_4017e8.loopexit, %block_401773
  %119 = phi i64 [ %2412, %block_401773 ], [ %794, %block_4017e8.loopexit ]
  %.sink30 = phi i64 [ 117, %block_401773 ], [ 5, %block_4017e8.loopexit ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.20, %block_401773 ], [ %MEMORY.31, %block_4017e8.loopexit ]
  %120 = add i64 %119, %.sink30
  store i64 %120, i64* %PC, align 8, !tbaa !2428
  br label %block_40185d

block_400c51:                                     ; preds = %block_400c42
  %121 = add i64 %5455, 5
  store i64 %121, i64* %PC, align 8, !tbaa !2428
  br label %block_400c56

block_400ddf:                                     ; preds = %block_400dcb
  %122 = add i64 %1646, -1168
  store i64 %122, i64* %RAX, align 8, !tbaa !2428
  %123 = add i64 %1689, 11
  store i64 %123, i64* %PC, align 8
  %124 = load i32, i32* %1654, align 4
  %125 = sext i32 %124 to i64
  %126 = shl nsw i64 %125, 6
  store i64 %126, i64* %RCX, align 8, !tbaa !2428
  %127 = add i64 %126, %122
  store i64 %127, i64* %RDX, align 8, !tbaa !2428
  %128 = icmp ult i64 %127, %122
  %129 = icmp ult i64 %127, %126
  %130 = or i1 %128, %129
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %16, align 1, !tbaa !2432
  %132 = trunc i64 %127 to i32
  %133 = and i32 %132, 255
  %134 = tail call i32 @llvm.ctpop.i32(i32 %133) #9
  %135 = trunc i32 %134 to i8
  %136 = and i8 %135, 1
  %137 = xor i8 %136, 1
  store i8 %137, i8* %23, align 1, !tbaa !2446
  %138 = xor i64 %122, %127
  %139 = lshr i64 %138, 4
  %140 = trunc i64 %139 to i8
  %141 = and i8 %140, 1
  store i8 %141, i8* %29, align 1, !tbaa !2447
  %142 = icmp eq i64 %127, 0
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %32, align 1, !tbaa !2448
  %144 = lshr i64 %127, 63
  %145 = trunc i64 %144 to i8
  store i8 %145, i8* %35, align 1, !tbaa !2449
  %146 = lshr i64 %122, 63
  %147 = lshr i64 %125, 57
  %148 = and i64 %147, 1
  %149 = xor i64 %144, %146
  %150 = xor i64 %144, %148
  %151 = add nuw nsw i64 %149, %150
  %152 = icmp eq i64 %151, 2
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %41, align 1, !tbaa !2450
  %154 = add i64 %1689, 25
  store i64 %154, i64* %PC, align 8
  %155 = load i32, i32* %1649, align 4
  %156 = sext i32 %155 to i64
  store i64 %156, i64* %RCX, align 8, !tbaa !2428
  %157 = shl nsw i64 %156, 2
  %158 = add i64 %157, %127
  %159 = add i64 %1689, 28
  store i64 %159, i64* %PC, align 8
  %160 = inttoptr i64 %158 to i32*
  %161 = load i32, i32* %160, align 4
  %162 = zext i32 %161 to i64
  store i64 %162, i64* %RSI, align 8, !tbaa !2428
  %163 = add i64 %1689, 31
  store i64 %163, i64* %PC, align 8
  %164 = load i32, i32* %1654, align 4
  %165 = add i32 %164, 1
  %166 = zext i32 %165 to i64
  store i64 %166, i64* %RDI, align 8, !tbaa !2428
  %167 = sext i32 %165 to i64
  %168 = shl nsw i64 %167, 6
  store i64 %168, i64* %RCX, align 8, !tbaa !2428
  %169 = load i64, i64* %RAX, align 8
  %170 = add i64 %168, %169
  store i64 %170, i64* %RDX, align 8, !tbaa !2428
  %171 = icmp ult i64 %170, %169
  %172 = icmp ult i64 %170, %168
  %173 = or i1 %171, %172
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %16, align 1, !tbaa !2432
  %175 = trunc i64 %170 to i32
  %176 = and i32 %175, 255
  %177 = tail call i32 @llvm.ctpop.i32(i32 %176) #9
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  %180 = xor i8 %179, 1
  store i8 %180, i8* %23, align 1, !tbaa !2446
  %181 = xor i64 %169, %170
  %182 = lshr i64 %181, 4
  %183 = trunc i64 %182 to i8
  %184 = and i8 %183, 1
  store i8 %184, i8* %29, align 1, !tbaa !2447
  %185 = icmp eq i64 %170, 0
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %32, align 1, !tbaa !2448
  %187 = lshr i64 %170, 63
  %188 = trunc i64 %187 to i8
  store i8 %188, i8* %35, align 1, !tbaa !2449
  %189 = lshr i64 %169, 63
  %190 = lshr i64 %167, 57
  %191 = and i64 %190, 1
  %192 = xor i64 %187, %189
  %193 = xor i64 %187, %191
  %194 = add nuw nsw i64 %192, %193
  %195 = icmp eq i64 %194, 2
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %41, align 1, !tbaa !2450
  %197 = load i64, i64* %RBP, align 8
  %198 = add i64 %197, -4
  %199 = add i64 %1689, 51
  store i64 %199, i64* %PC, align 8
  %200 = inttoptr i64 %198 to i32*
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  store i64 %202, i64* %RCX, align 8, !tbaa !2428
  %203 = load i64, i64* %RSI, align 8
  %204 = shl nsw i64 %202, 2
  %205 = add i64 %170, %204
  %206 = add i64 %1689, 54
  store i64 %206, i64* %PC, align 8
  %207 = trunc i64 %203 to i32
  %208 = inttoptr i64 %205 to i32*
  %209 = load i32, i32* %208, align 4
  %210 = xor i32 %209, %207
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %212 = and i32 %210, 255
  %213 = tail call i32 @llvm.ctpop.i32(i32 %212) #9
  %214 = trunc i32 %213 to i8
  %215 = and i8 %214, 1
  %216 = xor i8 %215, 1
  store i8 %216, i8* %23, align 1, !tbaa !2446
  %217 = icmp eq i32 %210, 0
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %32, align 1, !tbaa !2448
  %219 = lshr i32 %210, 31
  %220 = trunc i32 %219 to i8
  store i8 %220, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %221 = add i64 %1689, 57
  store i64 %221, i64* %PC, align 8
  store i32 %210, i32* %208, align 4
  %222 = load i64, i64* %RBP, align 8
  %223 = add i64 %222, -12
  %224 = load i64, i64* %PC, align 8
  %225 = add i64 %224, 4
  store i64 %225, i64* %PC, align 8
  %226 = inttoptr i64 %223 to i32*
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = shl nsw i64 %228, 6
  store i64 %229, i64* %RCX, align 8, !tbaa !2428
  %230 = load i64, i64* %RAX, align 8
  %231 = add i64 %229, %230
  store i64 %231, i64* %RDX, align 8, !tbaa !2428
  %232 = icmp ult i64 %231, %230
  %233 = icmp ult i64 %231, %229
  %234 = or i1 %232, %233
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %16, align 1, !tbaa !2432
  %236 = trunc i64 %231 to i32
  %237 = and i32 %236, 255
  %238 = tail call i32 @llvm.ctpop.i32(i32 %237) #9
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  %241 = xor i8 %240, 1
  store i8 %241, i8* %23, align 1, !tbaa !2446
  %242 = xor i64 %230, %231
  %243 = lshr i64 %242, 4
  %244 = trunc i64 %243 to i8
  %245 = and i8 %244, 1
  store i8 %245, i8* %29, align 1, !tbaa !2447
  %246 = icmp eq i64 %231, 0
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %32, align 1, !tbaa !2448
  %248 = lshr i64 %231, 63
  %249 = trunc i64 %248 to i8
  store i8 %249, i8* %35, align 1, !tbaa !2449
  %250 = lshr i64 %230, 63
  %251 = lshr i64 %228, 57
  %252 = and i64 %251, 1
  %253 = xor i64 %248, %250
  %254 = xor i64 %248, %252
  %255 = add nuw nsw i64 %253, %254
  %256 = icmp eq i64 %255, 2
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %41, align 1, !tbaa !2450
  %258 = add i64 %222, -4
  %259 = add i64 %224, 18
  store i64 %259, i64* %PC, align 8
  %260 = inttoptr i64 %258 to i32*
  %261 = load i32, i32* %260, align 4
  %262 = sext i32 %261 to i64
  store i64 %262, i64* %RCX, align 8, !tbaa !2428
  %263 = shl nsw i64 %262, 2
  %264 = add i64 %263, %231
  %265 = add i64 %224, 22
  store i64 %265, i64* %PC, align 8
  %266 = inttoptr i64 %264 to i32*
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  store i64 %268, i64* %RCX, align 8, !tbaa !2428
  %269 = shl nsw i64 %268, 2
  %270 = add i64 %269, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %271 = add i64 %224, 29
  store i64 %271, i64* %PC, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = zext i32 %273 to i64
  store i64 %274, i64* %RSI, align 8, !tbaa !2428
  %275 = add i64 %224, 33
  store i64 %275, i64* %PC, align 8
  %276 = load i32, i32* %226, align 4
  %277 = sext i32 %276 to i64
  %278 = shl nsw i64 %277, 6
  store i64 %278, i64* %RCX, align 8, !tbaa !2428
  %279 = add i64 %278, %230
  store i64 %279, i64* %RAX, align 8, !tbaa !2428
  %280 = icmp ult i64 %279, %230
  %281 = icmp ult i64 %279, %278
  %282 = or i1 %280, %281
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %16, align 1, !tbaa !2432
  %284 = trunc i64 %279 to i32
  %285 = and i32 %284, 255
  %286 = tail call i32 @llvm.ctpop.i32(i32 %285) #9
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  %289 = xor i8 %288, 1
  store i8 %289, i8* %23, align 1, !tbaa !2446
  %290 = xor i64 %230, %279
  %291 = lshr i64 %290, 4
  %292 = trunc i64 %291 to i8
  %293 = and i8 %292, 1
  store i8 %293, i8* %29, align 1, !tbaa !2447
  %294 = icmp eq i64 %279, 0
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %32, align 1, !tbaa !2448
  %296 = lshr i64 %279, 63
  %297 = trunc i64 %296 to i8
  store i8 %297, i8* %35, align 1, !tbaa !2449
  %298 = lshr i64 %277, 57
  %299 = and i64 %298, 1
  %300 = xor i64 %296, %250
  %301 = xor i64 %296, %299
  %302 = add nuw nsw i64 %300, %301
  %303 = icmp eq i64 %302, 2
  %304 = zext i1 %303 to i8
  store i8 %304, i8* %41, align 1, !tbaa !2450
  %305 = load i64, i64* %RBP, align 8
  %306 = add i64 %305, -4
  %307 = add i64 %224, 44
  store i64 %307, i64* %PC, align 8
  %308 = inttoptr i64 %306 to i32*
  %309 = load i32, i32* %308, align 4
  %310 = sext i32 %309 to i64
  store i64 %310, i64* %RCX, align 8, !tbaa !2428
  %311 = shl nsw i64 %310, 2
  %312 = add i64 %311, %279
  %313 = add i64 %224, 47
  store i64 %313, i64* %PC, align 8
  %314 = inttoptr i64 %312 to i32*
  store i32 %273, i32* %314, align 4
  %315 = load i64, i64* %RBP, align 8
  %316 = add i64 %315, -4
  %317 = load i64, i64* %PC, align 8
  %318 = add i64 %317, 3
  store i64 %318, i64* %PC, align 8
  %319 = inttoptr i64 %316 to i32*
  %320 = load i32, i32* %319, align 4
  %321 = add i32 %320, 1
  %322 = zext i32 %321 to i64
  store i64 %322, i64* %RAX, align 8, !tbaa !2428
  %323 = icmp eq i32 %320, -1
  %324 = icmp eq i32 %321, 0
  %325 = or i1 %323, %324
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %16, align 1, !tbaa !2432
  %327 = and i32 %321, 255
  %328 = tail call i32 @llvm.ctpop.i32(i32 %327) #9
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  %331 = xor i8 %330, 1
  store i8 %331, i8* %23, align 1, !tbaa !2446
  %332 = xor i32 %321, %320
  %333 = lshr i32 %332, 4
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  store i8 %335, i8* %29, align 1, !tbaa !2447
  %336 = zext i1 %324 to i8
  store i8 %336, i8* %32, align 1, !tbaa !2448
  %337 = lshr i32 %321, 31
  %338 = trunc i32 %337 to i8
  store i8 %338, i8* %35, align 1, !tbaa !2449
  %339 = lshr i32 %320, 31
  %340 = xor i32 %337, %339
  %341 = add nuw nsw i32 %340, %337
  %342 = icmp eq i32 %341, 2
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %41, align 1, !tbaa !2450
  %344 = add i64 %317, 9
  store i64 %344, i64* %PC, align 8
  store i32 %321, i32* %319, align 4
  %345 = load i64, i64* %PC, align 8
  %346 = add i64 %345, -133
  store i64 %346, i64* %PC, align 8, !tbaa !2428
  br label %block_400dcb

block_4009db:                                     ; preds = %block_400983, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6
  %347 = phi i64 [ %1596, %block_400983 ], [ %.pre180, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6 ]
  %348 = phi i64 [ %1109, %block_400983 ], [ %.pre179, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.12, %block_400983 ], [ %1007, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6 ]
  %349 = add i64 %347, -8
  %350 = add i64 %348, 8
  store i64 %350, i64* %PC, align 8
  %351 = inttoptr i64 %349 to i32*
  %352 = load i32, i32* %351, align 4
  %353 = add i32 %352, 1
  %354 = zext i32 %353 to i64
  store i64 %354, i64* %RAX, align 8, !tbaa !2428
  %355 = icmp eq i32 %352, -1
  %356 = icmp eq i32 %353, 0
  %357 = or i1 %355, %356
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %16, align 1, !tbaa !2432
  %359 = and i32 %353, 255
  %360 = tail call i32 @llvm.ctpop.i32(i32 %359) #9
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  %363 = xor i8 %362, 1
  store i8 %363, i8* %23, align 1, !tbaa !2446
  %364 = xor i32 %353, %352
  %365 = lshr i32 %364, 4
  %366 = trunc i32 %365 to i8
  %367 = and i8 %366, 1
  store i8 %367, i8* %29, align 1, !tbaa !2447
  %368 = zext i1 %356 to i8
  store i8 %368, i8* %32, align 1, !tbaa !2448
  %369 = lshr i32 %353, 31
  %370 = trunc i32 %369 to i8
  store i8 %370, i8* %35, align 1, !tbaa !2449
  %371 = lshr i32 %352, 31
  %372 = xor i32 %369, %371
  %373 = add nuw nsw i32 %372, %369
  %374 = icmp eq i32 %373, 2
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %41, align 1, !tbaa !2450
  %376 = add i64 %348, 14
  store i64 %376, i64* %PC, align 8
  store i32 %353, i32* %351, align 4
  %377 = load i64, i64* %PC, align 8
  %378 = add i64 %377, -115
  store i64 %378, i64* %PC, align 8, !tbaa !2428
  br label %block_400976

block_400dc4:                                     ; preds = %block_400d03
  %379 = add i64 %2457, 7
  store i64 %379, i64* %PC, align 8
  store i32 0, i32* %2417, align 4
  %.pre197 = load i64, i64* %PC, align 8
  br label %block_400dcb

block_4017c1:                                     ; preds = %block_40178c
  %380 = add i64 %1072, 15
  store i64 %380, i64* %PC, align 8
  %381 = inttoptr i64 %1077 to i32*
  store i32 0, i32* %381, align 4
  %.pre254 = load i64, i64* %PC, align 8
  br label %block_4017d0

block_400be2:                                     ; preds = %block_400bd4
  %382 = add i64 %2114, 23
  store i64 %382, i64* %PC, align 8
  %383 = inttoptr i64 %2115 to i32*
  %384 = load i32, i32* %383, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %385 = and i32 %384, 255
  %386 = tail call i32 @llvm.ctpop.i32(i32 %385) #9
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  %389 = xor i8 %388, 1
  store i8 %389, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %390 = icmp eq i32 %384, 0
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %32, align 1, !tbaa !2448
  %392 = lshr i32 %384, 31
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %394 = icmp ne i8 %393, 0
  %395 = or i1 %390, %394
  %.v284 = select i1 %395, i64 116, i64 29
  %396 = add i64 %2114, %.v284
  store i64 %396, i64* %PC, align 8, !tbaa !2428
  br i1 %395, label %block_400c56, label %block_400bff

block_4013b6:                                     ; preds = %block_401391
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %397 = load i64, i64* %RBP, align 8
  %398 = add i64 %397, -1168
  store i64 %398, i64* %RCX, align 8, !tbaa !2428
  %399 = add i64 %397, -12
  %400 = add i64 %4874, 16
  store i64 %400, i64* %PC, align 8
  %401 = inttoptr i64 %399 to i32*
  %402 = load i32, i32* %401, align 4
  %403 = sext i32 %402 to i64
  %404 = shl nsw i64 %403, 6
  store i64 %404, i64* %RDX, align 8, !tbaa !2428
  %405 = add i64 %404, %398
  store i64 %405, i64* %RCX, align 8, !tbaa !2428
  %406 = icmp ult i64 %405, %398
  %407 = icmp ult i64 %405, %404
  %408 = or i1 %406, %407
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %16, align 1, !tbaa !2432
  %410 = trunc i64 %405 to i32
  %411 = and i32 %410, 255
  %412 = tail call i32 @llvm.ctpop.i32(i32 %411) #9
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  %415 = xor i8 %414, 1
  store i8 %415, i8* %23, align 1, !tbaa !2446
  %416 = xor i64 %398, %405
  %417 = lshr i64 %416, 4
  %418 = trunc i64 %417 to i8
  %419 = and i8 %418, 1
  store i8 %419, i8* %29, align 1, !tbaa !2447
  %420 = icmp eq i64 %405, 0
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %32, align 1, !tbaa !2448
  %422 = lshr i64 %405, 63
  %423 = trunc i64 %422 to i8
  store i8 %423, i8* %35, align 1, !tbaa !2449
  %424 = lshr i64 %398, 63
  %425 = lshr i64 %403, 57
  %426 = and i64 %425, 1
  %427 = xor i64 %422, %424
  %428 = xor i64 %422, %426
  %429 = add nuw nsw i64 %427, %428
  %430 = icmp eq i64 %429, 2
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %41, align 1, !tbaa !2450
  %432 = add i64 %397, -4
  %433 = add i64 %4874, 26
  store i64 %433, i64* %PC, align 8
  %434 = inttoptr i64 %432 to i32*
  %435 = load i32, i32* %434, align 4
  %436 = zext i32 %435 to i64
  store i64 %436, i64* %RSI, align 8, !tbaa !2428
  %437 = add i64 %397, -8
  %438 = add i64 %4874, 29
  store i64 %438, i64* %PC, align 8
  %439 = inttoptr i64 %437 to i32*
  %440 = load i32, i32* %439, align 4
  %441 = sub i32 %435, %440
  %442 = zext i32 %441 to i64
  store i64 %442, i64* %RSI, align 8, !tbaa !2428
  %443 = icmp ult i32 %435, %440
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %16, align 1, !tbaa !2432
  %445 = and i32 %441, 255
  %446 = tail call i32 @llvm.ctpop.i32(i32 %445) #9
  %447 = trunc i32 %446 to i8
  %448 = and i8 %447, 1
  %449 = xor i8 %448, 1
  store i8 %449, i8* %23, align 1, !tbaa !2446
  %450 = xor i32 %440, %435
  %451 = xor i32 %450, %441
  %452 = lshr i32 %451, 4
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, 1
  store i8 %454, i8* %29, align 1, !tbaa !2447
  %455 = icmp eq i32 %441, 0
  %456 = zext i1 %455 to i8
  store i8 %456, i8* %32, align 1, !tbaa !2448
  %457 = lshr i32 %441, 31
  %458 = trunc i32 %457 to i8
  store i8 %458, i8* %35, align 1, !tbaa !2449
  %459 = lshr i32 %435, 31
  %460 = lshr i32 %440, 31
  %461 = xor i32 %460, %459
  %462 = xor i32 %457, %459
  %463 = add nuw nsw i32 %462, %461
  %464 = icmp eq i32 %463, 2
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %41, align 1, !tbaa !2450
  %466 = sext i32 %441 to i64
  store i64 %466, i64* %RDX, align 8, !tbaa !2428
  %467 = shl nsw i64 %466, 2
  %468 = add i64 %405, %467
  %469 = add i64 %4874, 35
  store i64 %469, i64* %PC, align 8
  %470 = inttoptr i64 %468 to i32*
  %471 = load i32, i32* %470, align 4
  %472 = zext i32 %471 to i64
  store i64 %472, i64* %RSI, align 8, !tbaa !2428
  %473 = load i64, i64* %RBP, align 8
  %474 = add i64 %473, -8
  %475 = add i64 %4874, 39
  store i64 %475, i64* %PC, align 8
  %476 = inttoptr i64 %474 to i32*
  %477 = load i32, i32* %476, align 4
  %478 = sext i32 %477 to i64
  store i64 %478, i64* %RCX, align 8, !tbaa !2428
  %479 = shl nsw i64 %478, 2
  %480 = add nsw i64 %479, -1488
  %481 = add i64 %480, %473
  %482 = add i64 %4874, 46
  store i64 %482, i64* %PC, align 8
  %483 = inttoptr i64 %481 to i32*
  %484 = load i32, i32* %483, align 4
  %485 = add i32 %484, %471
  %486 = zext i32 %485 to i64
  store i64 %486, i64* %RSI, align 8, !tbaa !2428
  %487 = icmp ult i32 %485, %471
  %488 = icmp ult i32 %485, %484
  %489 = or i1 %487, %488
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %16, align 1, !tbaa !2432
  %491 = and i32 %485, 255
  %492 = tail call i32 @llvm.ctpop.i32(i32 %491) #9
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  %495 = xor i8 %494, 1
  store i8 %495, i8* %23, align 1, !tbaa !2446
  %496 = xor i32 %484, %471
  %497 = xor i32 %496, %485
  %498 = lshr i32 %497, 4
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  store i8 %500, i8* %29, align 1, !tbaa !2447
  %501 = icmp eq i32 %485, 0
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %32, align 1, !tbaa !2448
  %503 = lshr i32 %485, 31
  %504 = trunc i32 %503 to i8
  store i8 %504, i8* %35, align 1, !tbaa !2449
  %505 = lshr i32 %471, 31
  %506 = lshr i32 %484, 31
  %507 = xor i32 %503, %505
  %508 = xor i32 %503, %506
  %509 = add nuw nsw i32 %507, %508
  %510 = icmp eq i32 %509, 2
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %41, align 1, !tbaa !2450
  %512 = add i64 %473, -2720
  %513 = load i32, i32* %EAX, align 4
  %514 = add i64 %4874, 52
  store i64 %514, i64* %PC, align 8
  %515 = inttoptr i64 %512 to i32*
  store i32 %513, i32* %515, align 4
  %516 = load i32, i32* %ESI, align 4
  %517 = zext i32 %516 to i64
  %518 = load i64, i64* %PC, align 8
  store i64 %517, i64* %RAX, align 8, !tbaa !2428
  %519 = sext i32 %516 to i64
  %520 = lshr i64 %519, 32
  store i64 %520, i64* %55, align 8, !tbaa !2428
  %521 = load i64, i64* %RBP, align 8
  %522 = add i64 %521, -2720
  %523 = add i64 %518, 9
  store i64 %523, i64* %PC, align 8
  %524 = inttoptr i64 %522 to i32*
  %525 = load i32, i32* %524, align 4
  %526 = zext i32 %525 to i64
  store i64 %526, i64* %RSI, align 8, !tbaa !2428
  %527 = add i64 %518, 11
  store i64 %527, i64* %PC, align 8
  %528 = sext i32 %525 to i64
  %529 = shl nuw i64 %520, 32
  %530 = or i64 %529, %517
  %531 = sdiv i64 %530, %528
  %532 = shl i64 %531, 32
  %533 = ashr exact i64 %532, 32
  %534 = icmp eq i64 %531, %533
  br i1 %534, label %537, label %535

; <label>:535:                                    ; preds = %block_4013b6
  %536 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %527, %struct.Memory* %MEMORY.43) #12
  %.pre225 = load i32, i32* %EDX, align 4
  %.pre226 = load i64, i64* %PC, align 8
  %.pre227 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit8

; <label>:537:                                    ; preds = %block_4013b6
  %538 = srem i64 %530, %528
  %539 = and i64 %531, 4294967295
  store i64 %539, i64* %RAX, align 8, !tbaa !2428
  %540 = and i64 %538, 4294967295
  store i64 %540, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %541 = trunc i64 %538 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit8

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit8: ; preds = %537, %535
  %542 = phi i64 [ %.pre227, %535 ], [ %521, %537 ]
  %543 = phi i64 [ %.pre226, %535 ], [ %527, %537 ]
  %544 = phi i32 [ %.pre225, %535 ], [ %541, %537 ]
  %545 = phi %struct.Memory* [ %536, %535 ], [ %MEMORY.43, %537 ]
  %546 = sext i32 %544 to i64
  store i64 %546, i64* %RCX, align 8, !tbaa !2428
  %547 = shl nsw i64 %546, 2
  %548 = add i64 %547, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %549 = add i64 %543, 10
  store i64 %549, i64* %PC, align 8
  %550 = inttoptr i64 %548 to i32*
  %551 = load i32, i32* %550, align 4
  %552 = zext i32 %551 to i64
  store i64 %552, i64* %RDX, align 8, !tbaa !2428
  %553 = add i64 %542, -4
  %554 = add i64 %543, 14
  store i64 %554, i64* %PC, align 8
  %555 = inttoptr i64 %553 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = sext i32 %556 to i64
  store i64 %557, i64* %RCX, align 8, !tbaa !2428
  %558 = shl nsw i64 %557, 2
  %559 = add nsw i64 %558, -1616
  %560 = add i64 %559, %542
  %561 = add i64 %543, 21
  store i64 %561, i64* %PC, align 8
  %562 = inttoptr i64 %560 to i32*
  %563 = load i32, i32* %562, align 4
  %564 = xor i32 %563, %551
  %565 = zext i32 %564 to i64
  store i64 %565, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %566 = and i32 %564, 255
  %567 = tail call i32 @llvm.ctpop.i32(i32 %566) #9
  %568 = trunc i32 %567 to i8
  %569 = and i8 %568, 1
  %570 = xor i8 %569, 1
  store i8 %570, i8* %23, align 1, !tbaa !2446
  %571 = icmp eq i32 %564, 0
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %32, align 1, !tbaa !2448
  %573 = lshr i32 %564, 31
  %574 = trunc i32 %573 to i8
  store i8 %574, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %575 = add i64 %542, -1616
  %576 = add i64 %575, %558
  %577 = add i64 %543, 28
  store i64 %577, i64* %PC, align 8
  %578 = inttoptr i64 %576 to i32*
  store i32 %564, i32* %578, align 4
  %.pre228 = load i64, i64* %PC, align 8
  br label %block_401411

block_400fb0:                                     ; preds = %block_400eff, %block_400f19, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5
  %579 = phi i64 [ %2216, %block_400eff ], [ %1724, %block_400f19 ], [ %.pre204, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5 ]
  %580 = phi i64 [ %1888, %block_400eff ], [ %1744, %block_400f19 ], [ %.pre203, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.18, %block_400eff ], [ %MEMORY.18, %block_400f19 ], [ %1473, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5 ]
  %581 = add i64 %579, -4
  %582 = add i64 %580, 8
  store i64 %582, i64* %PC, align 8
  %583 = inttoptr i64 %581 to i32*
  %584 = load i32, i32* %583, align 4
  %585 = add i32 %584, 1
  %586 = zext i32 %585 to i64
  store i64 %586, i64* %RAX, align 8, !tbaa !2428
  %587 = icmp eq i32 %584, -1
  %588 = icmp eq i32 %585, 0
  %589 = or i1 %587, %588
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %16, align 1, !tbaa !2432
  %591 = and i32 %585, 255
  %592 = tail call i32 @llvm.ctpop.i32(i32 %591) #9
  %593 = trunc i32 %592 to i8
  %594 = and i8 %593, 1
  %595 = xor i8 %594, 1
  store i8 %595, i8* %23, align 1, !tbaa !2446
  %596 = xor i32 %585, %584
  %597 = lshr i32 %596, 4
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  store i8 %599, i8* %29, align 1, !tbaa !2447
  %600 = zext i1 %588 to i8
  store i8 %600, i8* %32, align 1, !tbaa !2448
  %601 = lshr i32 %585, 31
  %602 = trunc i32 %601 to i8
  store i8 %602, i8* %35, align 1, !tbaa !2449
  %603 = lshr i32 %584, 31
  %604 = xor i32 %601, %603
  %605 = add nuw nsw i32 %604, %601
  %606 = icmp eq i32 %605, 2
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %41, align 1, !tbaa !2450
  %608 = add i64 %580, 14
  store i64 %608, i64* %PC, align 8
  store i32 %585, i32* %583, align 4
  %609 = load i64, i64* %PC, align 8
  %610 = add i64 %609, -216
  store i64 %610, i64* %PC, align 8, !tbaa !2428
  br label %block_400ee6

block_4009ee:                                     ; preds = %block_400976
  %611 = add i64 %1596, -4
  %612 = add i64 %1625, 4
  store i64 %612, i64* %PC, align 8
  %613 = inttoptr i64 %611 to i32*
  %614 = load i32, i32* %613, align 4
  %615 = sext i32 %614 to i64
  store i64 %615, i64* %RAX, align 8, !tbaa !2428
  %616 = shl nsw i64 %615, 2
  %617 = add i64 %1596, -1488
  %618 = add i64 %617, %616
  %619 = add i64 %1625, 12
  store i64 %619, i64* %PC, align 8
  %620 = inttoptr i64 %618 to i32*
  %621 = load i32, i32* %620, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %622 = and i32 %621, 255
  %623 = tail call i32 @llvm.ctpop.i32(i32 %622) #9
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  %626 = xor i8 %625, 1
  store i8 %626, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %627 = icmp eq i32 %621, 0
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %32, align 1, !tbaa !2448
  %629 = lshr i32 %621, 31
  %630 = trunc i32 %629 to i8
  store i8 %630, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %.v321 = select i1 %627, i64 28, i64 18
  %631 = add i64 %1625, %.v321
  store i64 %631, i64* %PC, align 8, !tbaa !2428
  br i1 %627, label %block_400a0a, label %block_400a00

block_4015ac:                                     ; preds = %block_401592
  %632 = add i64 %2796, 4
  store i64 %632, i64* %PC, align 8
  %633 = load i32, i32* %2771, align 4
  %634 = sext i32 %633 to i64
  store i64 %634, i64* %RAX, align 8, !tbaa !2428
  %635 = shl nsw i64 %634, 2
  %636 = add i64 %2775, %635
  %637 = add i64 %2796, 12
  store i64 %637, i64* %PC, align 8
  %638 = inttoptr i64 %636 to i32*
  %639 = load i32, i32* %638, align 4
  %640 = sext i32 %639 to i64
  store i64 %640, i64* %RAX, align 8, !tbaa !2428
  %641 = shl nsw i64 %640, 2
  %642 = add i64 %2782, %641
  %643 = add i64 %2796, 20
  store i64 %643, i64* %PC, align 8
  %644 = inttoptr i64 %642 to i32*
  %645 = load i32, i32* %644, align 4
  %646 = sext i32 %645 to i64
  store i64 %646, i64* %RAX, align 8, !tbaa !2428
  %647 = shl nsw i64 %646, 2
  %648 = add i64 %647, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %649 = add i64 %2796, 27
  store i64 %649, i64* %PC, align 8
  %650 = inttoptr i64 %648 to i32*
  %651 = load i32, i32* %650, align 4
  %652 = zext i32 %651 to i64
  store i64 %652, i64* %RCX, align 8, !tbaa !2428
  %653 = add i64 %2796, 31
  store i64 %653, i64* %PC, align 8
  %654 = load i32, i32* %2771, align 4
  %655 = sext i32 %654 to i64
  store i64 %655, i64* %RAX, align 8, !tbaa !2428
  %656 = shl nsw i64 %655, 2
  %657 = add i64 %2775, %656
  %658 = add i64 %2796, 39
  store i64 %658, i64* %PC, align 8
  %659 = inttoptr i64 %657 to i32*
  %660 = load i32, i32* %659, align 4
  %661 = sext i32 %660 to i64
  store i64 %661, i64* %RAX, align 8, !tbaa !2428
  %662 = shl nsw i64 %661, 2
  %663 = add i64 %2782, %662
  %664 = add i64 %2796, 46
  store i64 %664, i64* %PC, align 8
  %665 = inttoptr i64 %663 to i32*
  store i32 %651, i32* %665, align 4
  %666 = load i64, i64* %RBP, align 8
  %667 = add i64 %666, -16
  %668 = load i64, i64* %PC, align 8
  %669 = add i64 %668, 7
  store i64 %669, i64* %PC, align 8
  %670 = inttoptr i64 %667 to i32*
  store i32 0, i32* %670, align 4
  %671 = load i64, i64* %RBP, align 8
  %672 = add i64 %671, -8
  %673 = load i64, i64* %PC, align 8
  %674 = add i64 %673, 7
  store i64 %674, i64* %PC, align 8
  %675 = inttoptr i64 %672 to i32*
  store i32 0, i32* %675, align 4
  %.pre237 = load i64, i64* %PC, align 8
  br label %block_4015e8

block_4011aa:                                     ; preds = %block_4011a0
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %676 = add i64 %1920, -4
  %677 = add i64 %808, 8
  store i64 %677, i64* %PC, align 8
  %678 = inttoptr i64 %676 to i32*
  %679 = load i32, i32* %678, align 4
  %680 = zext i32 %679 to i64
  store i64 %680, i64* %RCX, align 8, !tbaa !2428
  %681 = add i64 %1920, -1492
  %682 = add i64 %808, 15
  store i64 %682, i64* %PC, align 8
  %683 = inttoptr i64 %681 to i32*
  %684 = load i32, i32* %683, align 4
  %685 = sext i32 %684 to i64
  store i64 %685, i64* %RDX, align 8, !tbaa !2428
  %686 = shl nsw i64 %685, 2
  %687 = add i64 %1920, -1536
  %688 = add i64 %687, %686
  %689 = add i64 %808, 22
  store i64 %689, i64* %PC, align 8
  %690 = inttoptr i64 %688 to i32*
  store i32 %679, i32* %690, align 4
  %691 = load i64, i64* %RAX, align 8
  %692 = load i64, i64* %RBP, align 8
  %693 = add i64 %692, -4
  %694 = load i64, i64* %PC, align 8
  %695 = add i64 %694, 3
  store i64 %695, i64* %PC, align 8
  %696 = trunc i64 %691 to i32
  %697 = inttoptr i64 %693 to i32*
  %698 = load i32, i32* %697, align 4
  %699 = sub i32 %696, %698
  %700 = zext i32 %699 to i64
  store i64 %700, i64* %RAX, align 8, !tbaa !2428
  %701 = icmp ult i32 %696, %698
  %702 = zext i1 %701 to i8
  store i8 %702, i8* %16, align 1, !tbaa !2432
  %703 = and i32 %699, 255
  %704 = tail call i32 @llvm.ctpop.i32(i32 %703) #9
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  %707 = xor i8 %706, 1
  store i8 %707, i8* %23, align 1, !tbaa !2446
  %708 = xor i32 %698, %696
  %709 = xor i32 %708, %699
  %710 = lshr i32 %709, 4
  %711 = trunc i32 %710 to i8
  %712 = and i8 %711, 1
  store i8 %712, i8* %29, align 1, !tbaa !2447
  %713 = icmp eq i32 %699, 0
  %714 = zext i1 %713 to i8
  store i8 %714, i8* %32, align 1, !tbaa !2448
  %715 = lshr i32 %699, 31
  %716 = trunc i32 %715 to i8
  store i8 %716, i8* %35, align 1, !tbaa !2449
  %717 = lshr i32 %696, 31
  %718 = lshr i32 %698, 31
  %719 = xor i32 %718, %717
  %720 = xor i32 %715, %717
  %721 = add nuw nsw i32 %720, %719
  %722 = icmp eq i32 %721, 2
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %41, align 1, !tbaa !2450
  %724 = add i64 %692, -1492
  %725 = add i64 %694, 10
  store i64 %725, i64* %PC, align 8
  %726 = inttoptr i64 %724 to i32*
  %727 = load i32, i32* %726, align 4
  %728 = sext i32 %727 to i64
  store i64 %728, i64* %RDX, align 8, !tbaa !2428
  %729 = shl nsw i64 %728, 2
  %730 = add i64 %692, -1568
  %731 = add i64 %730, %729
  %732 = add i64 %694, 17
  store i64 %732, i64* %PC, align 8
  %733 = inttoptr i64 %731 to i32*
  store i32 %699, i32* %733, align 4
  %734 = load i64, i64* %RBP, align 8
  %735 = add i64 %734, -1492
  %736 = load i64, i64* %PC, align 8
  %737 = add i64 %736, 6
  store i64 %737, i64* %PC, align 8
  %738 = inttoptr i64 %735 to i32*
  %739 = load i32, i32* %738, align 4
  %740 = add i32 %739, 1
  %741 = zext i32 %740 to i64
  store i64 %741, i64* %RAX, align 8, !tbaa !2428
  %742 = icmp eq i32 %739, -1
  %743 = icmp eq i32 %740, 0
  %744 = or i1 %742, %743
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %16, align 1, !tbaa !2432
  %746 = and i32 %740, 255
  %747 = tail call i32 @llvm.ctpop.i32(i32 %746) #9
  %748 = trunc i32 %747 to i8
  %749 = and i8 %748, 1
  %750 = xor i8 %749, 1
  store i8 %750, i8* %23, align 1, !tbaa !2446
  %751 = xor i32 %740, %739
  %752 = lshr i32 %751, 4
  %753 = trunc i32 %752 to i8
  %754 = and i8 %753, 1
  store i8 %754, i8* %29, align 1, !tbaa !2447
  %755 = zext i1 %743 to i8
  store i8 %755, i8* %32, align 1, !tbaa !2448
  %756 = lshr i32 %740, 31
  %757 = trunc i32 %756 to i8
  store i8 %757, i8* %35, align 1, !tbaa !2449
  %758 = lshr i32 %739, 31
  %759 = xor i32 %756, %758
  %760 = add nuw nsw i32 %759, %756
  %761 = icmp eq i32 %760, 2
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %41, align 1, !tbaa !2450
  %763 = add i64 %736, 15
  store i64 %763, i64* %PC, align 8
  store i32 %740, i32* %738, align 4
  %.pre217 = load i64, i64* %PC, align 8
  %.pre218 = load i64, i64* %RBP, align 8
  br label %block_4011e0

block_40177f:                                     ; preds = %block_40177f.preheader, %block_4017d0
  %764 = phi i64 [ %1594, %block_4017d0 ], [ %.pre208, %block_40177f.preheader ]
  %765 = load i64, i64* %RBP, align 8
  %766 = add i64 %765, -4
  %767 = add i64 %764, 7
  store i64 %767, i64* %PC, align 8
  %768 = inttoptr i64 %766 to i32*
  %769 = load i32, i32* %768, align 4
  %770 = add i32 %769, -255
  %771 = icmp ult i32 %769, 255
  %772 = zext i1 %771 to i8
  store i8 %772, i8* %16, align 1, !tbaa !2432
  %773 = and i32 %770, 255
  %774 = tail call i32 @llvm.ctpop.i32(i32 %773) #9
  %775 = trunc i32 %774 to i8
  %776 = and i8 %775, 1
  %777 = xor i8 %776, 1
  store i8 %777, i8* %23, align 1, !tbaa !2446
  %778 = xor i32 %769, 16
  %779 = xor i32 %778, %770
  %780 = lshr i32 %779, 4
  %781 = trunc i32 %780 to i8
  %782 = and i8 %781, 1
  store i8 %782, i8* %29, align 1, !tbaa !2447
  %783 = icmp eq i32 %770, 0
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %32, align 1, !tbaa !2448
  %785 = lshr i32 %770, 31
  %786 = trunc i32 %785 to i8
  store i8 %786, i8* %35, align 1, !tbaa !2449
  %787 = lshr i32 %769, 31
  %788 = xor i32 %785, %787
  %789 = add nuw nsw i32 %788, %787
  %790 = icmp eq i32 %789, 2
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %41, align 1, !tbaa !2450
  %792 = icmp ne i8 %786, 0
  %793 = xor i1 %792, %790
  %.v271 = select i1 %793, i64 13, i64 100
  %794 = add i64 %764, %.v271
  store i64 %794, i64* %PC, align 8, !tbaa !2428
  br i1 %793, label %block_40178c, label %block_4017e8.loopexit

block_4011a0:                                     ; preds = %block_40111f
  %795 = add i64 %1920, -16
  %796 = add i64 %1963, 4
  store i64 %796, i64* %PC, align 8
  %797 = inttoptr i64 %795 to i32*
  %798 = load i32, i32* %797, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %799 = and i32 %798, 255
  %800 = tail call i32 @llvm.ctpop.i32(i32 %799) #9
  %801 = trunc i32 %800 to i8
  %802 = and i8 %801, 1
  %803 = xor i8 %802, 1
  store i8 %803, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %804 = icmp eq i32 %798, 0
  %805 = zext i1 %804 to i8
  store i8 %805, i8* %32, align 1, !tbaa !2448
  %806 = lshr i32 %798, 31
  %807 = trunc i32 %806 to i8
  store i8 %807, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %.v313 = select i1 %804, i64 10, i64 64
  %808 = add i64 %1963, %.v313
  store i64 %808, i64* %PC, align 8, !tbaa !2428
  br i1 %804, label %block_4011aa, label %block_4011e0

block_401145:                                     ; preds = %block_401133
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %809 = add i64 %1562, 9
  store i64 %809, i64* %PC, align 8
  %810 = load i32, i32* %1923, align 4
  %811 = sext i32 %810 to i64
  store i64 %811, i64* %RCX, align 8, !tbaa !2428
  %812 = shl nsw i64 %811, 2
  %813 = add i64 %1534, %812
  %814 = add i64 %1562, 16
  store i64 %814, i64* %PC, align 8
  %815 = inttoptr i64 %813 to i32*
  %816 = load i32, i32* %815, align 4
  %817 = zext i32 %816 to i64
  store i64 %817, i64* %RDX, align 8, !tbaa !2428
  %818 = add i64 %1562, 19
  store i64 %818, i64* %PC, align 8
  %819 = load i32, i32* %1923, align 4
  %820 = add i32 %819, %816
  %821 = zext i32 %820 to i64
  store i64 %821, i64* %RDX, align 8, !tbaa !2428
  %822 = icmp ult i32 %820, %816
  %823 = icmp ult i32 %820, %819
  %824 = or i1 %822, %823
  %825 = zext i1 %824 to i8
  store i8 %825, i8* %16, align 1, !tbaa !2432
  %826 = and i32 %820, 255
  %827 = tail call i32 @llvm.ctpop.i32(i32 %826) #9
  %828 = trunc i32 %827 to i8
  %829 = and i8 %828, 1
  %830 = xor i8 %829, 1
  store i8 %830, i8* %23, align 1, !tbaa !2446
  %831 = xor i32 %819, %816
  %832 = xor i32 %831, %820
  %833 = lshr i32 %832, 4
  %834 = trunc i32 %833 to i8
  %835 = and i8 %834, 1
  store i8 %835, i8* %29, align 1, !tbaa !2447
  %836 = icmp eq i32 %820, 0
  %837 = zext i1 %836 to i8
  store i8 %837, i8* %32, align 1, !tbaa !2448
  %838 = lshr i32 %820, 31
  %839 = trunc i32 %838 to i8
  store i8 %839, i8* %35, align 1, !tbaa !2449
  %840 = lshr i32 %816, 31
  %841 = lshr i32 %819, 31
  %842 = xor i32 %838, %840
  %843 = xor i32 %838, %841
  %844 = add nuw nsw i32 %842, %843
  %845 = icmp eq i32 %844, 2
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %41, align 1, !tbaa !2450
  %847 = add i64 %1920, -2716
  %848 = add i64 %1562, 25
  store i64 %848, i64* %PC, align 8
  %849 = inttoptr i64 %847 to i32*
  store i32 255, i32* %849, align 4
  %850 = load i32, i32* %EDX, align 4
  %851 = zext i32 %850 to i64
  %852 = load i64, i64* %PC, align 8
  store i64 %851, i64* %RAX, align 8, !tbaa !2428
  %853 = sext i32 %850 to i64
  %854 = lshr i64 %853, 32
  store i64 %854, i64* %55, align 8, !tbaa !2428
  %855 = load i64, i64* %RBP, align 8
  %856 = add i64 %855, -2716
  %857 = add i64 %852, 9
  store i64 %857, i64* %PC, align 8
  %858 = inttoptr i64 %856 to i32*
  %859 = load i32, i32* %858, align 4
  %860 = zext i32 %859 to i64
  store i64 %860, i64* %RSI, align 8, !tbaa !2428
  %861 = add i64 %852, 11
  store i64 %861, i64* %PC, align 8
  %862 = sext i32 %859 to i64
  %863 = shl nuw i64 %854, 32
  %864 = or i64 %863, %851
  %865 = sdiv i64 %864, %862
  %866 = shl i64 %865, 32
  %867 = ashr exact i64 %866, 32
  %868 = icmp eq i64 %865, %867
  br i1 %868, label %871, label %869

; <label>:869:                                    ; preds = %block_401145
  %870 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %861, %struct.Memory* %MEMORY.15) #12
  %.pre212 = load i64, i64* %RBP, align 8
  %.pre213 = load i64, i64* %PC, align 8
  %.pre214 = load i32, i32* %EDX, align 4
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7

; <label>:871:                                    ; preds = %block_401145
  %872 = srem i64 %864, %862
  %873 = and i64 %865, 4294967295
  store i64 %873, i64* %RAX, align 8, !tbaa !2428
  %874 = and i64 %872, 4294967295
  store i64 %874, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %875 = trunc i64 %872 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7: ; preds = %871, %869
  %876 = phi i32 [ %.pre214, %869 ], [ %875, %871 ]
  %877 = phi i64 [ %.pre213, %869 ], [ %861, %871 ]
  %878 = phi i64 [ %.pre212, %869 ], [ %855, %871 ]
  %879 = phi %struct.Memory* [ %870, %869 ], [ %MEMORY.15, %871 ]
  %880 = add i64 %878, -8
  %881 = add i64 %877, 4
  store i64 %881, i64* %PC, align 8
  %882 = inttoptr i64 %880 to i32*
  %883 = load i32, i32* %882, align 4
  %884 = sext i32 %883 to i64
  store i64 %884, i64* %RCX, align 8, !tbaa !2428
  %885 = shl nsw i64 %884, 2
  %886 = add i64 %878, -2688
  %887 = add i64 %886, %885
  %888 = add i64 %877, 11
  store i64 %888, i64* %PC, align 8
  %889 = inttoptr i64 %887 to i32*
  store i32 %876, i32* %889, align 4
  %890 = load i64, i64* %RBP, align 8
  %891 = add i64 %890, -8
  %892 = load i64, i64* %PC, align 8
  %893 = add i64 %892, 4
  store i64 %893, i64* %PC, align 8
  %894 = inttoptr i64 %891 to i32*
  %895 = load i32, i32* %894, align 4
  %896 = sext i32 %895 to i64
  store i64 %896, i64* %RCX, align 8, !tbaa !2428
  %897 = shl nsw i64 %896, 2
  %898 = add i64 %890, -2688
  %899 = add i64 %898, %897
  %900 = add i64 %892, 12
  store i64 %900, i64* %PC, align 8
  %901 = inttoptr i64 %899 to i32*
  %902 = load i32, i32* %901, align 4
  %903 = sext i32 %902 to i64
  store i64 %903, i64* %RCX, align 8, !tbaa !2428
  %904 = shl nsw i64 %903, 2
  %905 = add i64 %904, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %906 = add i64 %892, 19
  store i64 %906, i64* %PC, align 8
  %907 = inttoptr i64 %905 to i32*
  %908 = load i32, i32* %907, align 4
  %909 = zext i32 %908 to i64
  store i64 %909, i64* %RDX, align 8, !tbaa !2428
  %910 = add i64 %890, -16
  %911 = add i64 %892, 22
  store i64 %911, i64* %PC, align 8
  %912 = inttoptr i64 %910 to i32*
  %913 = load i32, i32* %912, align 4
  %914 = xor i32 %913, %908
  %915 = zext i32 %914 to i64
  store i64 %915, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %916 = and i32 %914, 255
  %917 = tail call i32 @llvm.ctpop.i32(i32 %916) #9
  %918 = trunc i32 %917 to i8
  %919 = and i8 %918, 1
  %920 = xor i8 %919, 1
  store i8 %920, i8* %23, align 1, !tbaa !2446
  %921 = icmp eq i32 %914, 0
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %32, align 1, !tbaa !2448
  %923 = lshr i32 %914, 31
  %924 = trunc i32 %923 to i8
  store i8 %924, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %925 = add i64 %892, 25
  store i64 %925, i64* %PC, align 8
  store i32 %914, i32* %912, align 4
  %.pre215 = load i64, i64* %PC, align 8
  %.pre216 = load i64, i64* %RBP, align 8
  br label %block_40118d

block_400995:                                     ; preds = %block_400983
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %926 = add i64 %1109, 9
  store i64 %926, i64* %PC, align 8
  %927 = load i32, i32* %1599, align 4
  %928 = sext i32 %927 to i64
  store i64 %928, i64* %RCX, align 8, !tbaa !2428
  %929 = shl nsw i64 %928, 2
  %930 = add i64 %929, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %931 = add i64 %1109, 16
  store i64 %931, i64* %PC, align 8
  %932 = inttoptr i64 %930 to i32*
  %933 = load i32, i32* %932, align 4
  %934 = zext i32 %933 to i64
  store i64 %934, i64* %RDX, align 8, !tbaa !2428
  %935 = add i64 %1596, -4
  %936 = add i64 %1109, 19
  store i64 %936, i64* %PC, align 8
  %937 = inttoptr i64 %935 to i32*
  %938 = load i32, i32* %937, align 4
  %939 = zext i32 %938 to i64
  store i64 %939, i64* %RSI, align 8, !tbaa !2428
  %940 = add i64 %1109, 23
  store i64 %940, i64* %PC, align 8
  %941 = load i32, i32* %1599, align 4
  %942 = sext i32 %938 to i64
  %943 = sext i32 %941 to i64
  %944 = mul nsw i64 %943, %942
  %945 = and i64 %944, 4294967295
  store i64 %945, i64* %RSI, align 8, !tbaa !2428
  %946 = trunc i64 %944 to i32
  %947 = add i32 %946, %933
  %948 = zext i32 %947 to i64
  store i64 %948, i64* %RDX, align 8, !tbaa !2428
  %949 = icmp ult i32 %947, %933
  %950 = icmp ult i32 %947, %946
  %951 = or i1 %949, %950
  %952 = zext i1 %951 to i8
  store i8 %952, i8* %16, align 1, !tbaa !2432
  %953 = and i32 %947, 255
  %954 = tail call i32 @llvm.ctpop.i32(i32 %953) #9
  %955 = trunc i32 %954 to i8
  %956 = and i8 %955, 1
  %957 = xor i8 %956, 1
  store i8 %957, i8* %23, align 1, !tbaa !2446
  %958 = xor i64 %944, %934
  %959 = trunc i64 %958 to i32
  %960 = xor i32 %959, %947
  %961 = lshr i32 %960, 4
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  store i8 %963, i8* %29, align 1, !tbaa !2447
  %964 = icmp eq i32 %947, 0
  %965 = zext i1 %964 to i8
  store i8 %965, i8* %32, align 1, !tbaa !2448
  %966 = lshr i32 %947, 31
  %967 = trunc i32 %966 to i8
  store i8 %967, i8* %35, align 1, !tbaa !2449
  %968 = lshr i32 %933, 31
  %969 = lshr i32 %946, 31
  %970 = xor i32 %966, %968
  %971 = xor i32 %966, %969
  %972 = add nuw nsw i32 %970, %971
  %973 = icmp eq i32 %972, 2
  %974 = zext i1 %973 to i8
  store i8 %974, i8* %41, align 1, !tbaa !2450
  %975 = add i64 %1596, -2692
  %976 = add i64 %1109, 31
  store i64 %976, i64* %PC, align 8
  %977 = inttoptr i64 %975 to i32*
  store i32 255, i32* %977, align 4
  %978 = load i32, i32* %EDX, align 4
  %979 = zext i32 %978 to i64
  %980 = load i64, i64* %PC, align 8
  store i64 %979, i64* %RAX, align 8, !tbaa !2428
  %981 = sext i32 %978 to i64
  %982 = lshr i64 %981, 32
  store i64 %982, i64* %55, align 8, !tbaa !2428
  %983 = load i64, i64* %RBP, align 8
  %984 = add i64 %983, -2692
  %985 = add i64 %980, 9
  store i64 %985, i64* %PC, align 8
  %986 = inttoptr i64 %984 to i32*
  %987 = load i32, i32* %986, align 4
  %988 = zext i32 %987 to i64
  store i64 %988, i64* %RSI, align 8, !tbaa !2428
  %989 = add i64 %980, 11
  store i64 %989, i64* %PC, align 8
  %990 = sext i32 %987 to i64
  %991 = shl nuw i64 %982, 32
  %992 = or i64 %991, %979
  %993 = sdiv i64 %992, %990
  %994 = shl i64 %993, 32
  %995 = ashr exact i64 %994, 32
  %996 = icmp eq i64 %993, %995
  br i1 %996, label %999, label %997

; <label>:997:                                    ; preds = %block_400995
  %998 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %989, %struct.Memory* %MEMORY.12) #12
  %.pre176 = load i32, i32* %EDX, align 4
  %.pre177 = load i64, i64* %PC, align 8
  %.pre178 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6

; <label>:999:                                    ; preds = %block_400995
  %1000 = srem i64 %992, %990
  %1001 = and i64 %993, 4294967295
  store i64 %1001, i64* %RAX, align 8, !tbaa !2428
  %1002 = and i64 %1000, 4294967295
  store i64 %1002, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %1003 = trunc i64 %1000 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6: ; preds = %999, %997
  %1004 = phi i64 [ %.pre178, %997 ], [ %983, %999 ]
  %1005 = phi i64 [ %.pre177, %997 ], [ %989, %999 ]
  %1006 = phi i32 [ %.pre176, %997 ], [ %1003, %999 ]
  %1007 = phi %struct.Memory* [ %998, %997 ], [ %MEMORY.12, %999 ]
  %1008 = sext i32 %1006 to i64
  store i64 %1008, i64* %RCX, align 8, !tbaa !2428
  %1009 = shl nsw i64 %1008, 2
  %1010 = add i64 %1009, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %1011 = add i64 %1005, 10
  store i64 %1011, i64* %PC, align 8
  %1012 = inttoptr i64 %1010 to i32*
  %1013 = load i32, i32* %1012, align 4
  %1014 = zext i32 %1013 to i64
  store i64 %1014, i64* %RDX, align 8, !tbaa !2428
  %1015 = add i64 %1004, -4
  %1016 = add i64 %1005, 14
  store i64 %1016, i64* %PC, align 8
  %1017 = inttoptr i64 %1015 to i32*
  %1018 = load i32, i32* %1017, align 4
  %1019 = sext i32 %1018 to i64
  store i64 %1019, i64* %RCX, align 8, !tbaa !2428
  %1020 = shl nsw i64 %1019, 2
  %1021 = add nsw i64 %1020, -1488
  %1022 = add i64 %1021, %1004
  %1023 = add i64 %1005, 21
  store i64 %1023, i64* %PC, align 8
  %1024 = inttoptr i64 %1022 to i32*
  %1025 = load i32, i32* %1024, align 4
  %1026 = xor i32 %1025, %1013
  %1027 = zext i32 %1026 to i64
  store i64 %1027, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %1028 = and i32 %1026, 255
  %1029 = tail call i32 @llvm.ctpop.i32(i32 %1028) #9
  %1030 = trunc i32 %1029 to i8
  %1031 = and i8 %1030, 1
  %1032 = xor i8 %1031, 1
  store i8 %1032, i8* %23, align 1, !tbaa !2446
  %1033 = icmp eq i32 %1026, 0
  %1034 = zext i1 %1033 to i8
  store i8 %1034, i8* %32, align 1, !tbaa !2448
  %1035 = lshr i32 %1026, 31
  %1036 = trunc i32 %1035 to i8
  store i8 %1036, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %1037 = add i64 %1004, -1488
  %1038 = add i64 %1037, %1020
  %1039 = add i64 %1005, 28
  store i64 %1039, i64* %PC, align 8
  %1040 = inttoptr i64 %1038 to i32*
  store i32 %1026, i32* %1040, align 4
  %.pre179 = load i64, i64* %PC, align 8
  %.pre180 = load i64, i64* %RBP, align 8
  br label %block_4009db

block_40178c:                                     ; preds = %block_40177f
  %1041 = add i64 %794, 4
  store i64 %1041, i64* %PC, align 8
  %1042 = load i32, i32* %768, align 4
  %1043 = sext i32 %1042 to i64
  store i64 %1043, i64* %RAX, align 8, !tbaa !2428
  %1044 = shl nsw i64 %1043, 2
  %1045 = add i64 %1044, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %1046 = add i64 %794, 12
  store i64 %1046, i64* %PC, align 8
  %1047 = inttoptr i64 %1045 to i32*
  %1048 = load i32, i32* %1047, align 4
  %1049 = add i32 %1048, 1
  %1050 = icmp ne i32 %1048, -1
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %16, align 1, !tbaa !2432
  %1052 = and i32 %1049, 255
  %1053 = tail call i32 @llvm.ctpop.i32(i32 %1052) #9
  %1054 = trunc i32 %1053 to i8
  %1055 = and i8 %1054, 1
  %1056 = xor i8 %1055, 1
  store i8 %1056, i8* %23, align 1, !tbaa !2446
  %1057 = xor i32 %1048, 16
  %1058 = xor i32 %1057, %1049
  %1059 = lshr i32 %1058, 4
  %1060 = trunc i32 %1059 to i8
  %1061 = and i8 %1060, 1
  store i8 %1061, i8* %29, align 1, !tbaa !2447
  %1062 = icmp eq i32 %1049, 0
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %32, align 1, !tbaa !2448
  %1064 = lshr i32 %1049, 31
  %1065 = trunc i32 %1064 to i8
  store i8 %1065, i8* %35, align 1, !tbaa !2449
  %1066 = lshr i32 %1048, 31
  %1067 = xor i32 %1066, 1
  %1068 = xor i32 %1064, %1066
  %1069 = add nuw nsw i32 %1068, %1067
  %1070 = icmp eq i32 %1069, 2
  %1071 = zext i1 %1070 to i8
  store i8 %1071, i8* %41, align 1, !tbaa !2450
  %.v270 = select i1 %1062, i64 53, i64 18
  %1072 = add i64 %794, %.v270
  %1073 = add i64 %1072, 4
  store i64 %1073, i64* %PC, align 8
  %1074 = load i32, i32* %768, align 4
  %1075 = sext i32 %1074 to i64
  store i64 %1075, i64* %RAX, align 8, !tbaa !2428
  %1076 = shl nsw i64 %1075, 2
  %1077 = add i64 %1076, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  br i1 %1062, label %block_4017c1, label %block_40179e

block_400983:                                     ; preds = %block_400976
  %1078 = add i64 %1625, 4
  store i64 %1078, i64* %PC, align 8
  %1079 = load i32, i32* %1599, align 4
  %1080 = sext i32 %1079 to i64
  store i64 %1080, i64* %RAX, align 8, !tbaa !2428
  %1081 = shl nsw i64 %1080, 2
  %1082 = add i64 %1081, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %1083 = add i64 %1625, 12
  store i64 %1083, i64* %PC, align 8
  %1084 = inttoptr i64 %1082 to i32*
  %1085 = load i32, i32* %1084, align 4
  %1086 = add i32 %1085, 1
  %1087 = icmp ne i32 %1085, -1
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %16, align 1, !tbaa !2432
  %1089 = and i32 %1086, 255
  %1090 = tail call i32 @llvm.ctpop.i32(i32 %1089) #9
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  %1093 = xor i8 %1092, 1
  store i8 %1093, i8* %23, align 1, !tbaa !2446
  %1094 = xor i32 %1085, 16
  %1095 = xor i32 %1094, %1086
  %1096 = lshr i32 %1095, 4
  %1097 = trunc i32 %1096 to i8
  %1098 = and i8 %1097, 1
  store i8 %1098, i8* %29, align 1, !tbaa !2447
  %1099 = icmp eq i32 %1086, 0
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %32, align 1, !tbaa !2448
  %1101 = lshr i32 %1086, 31
  %1102 = trunc i32 %1101 to i8
  store i8 %1102, i8* %35, align 1, !tbaa !2449
  %1103 = lshr i32 %1085, 31
  %1104 = xor i32 %1103, 1
  %1105 = xor i32 %1101, %1103
  %1106 = add nuw nsw i32 %1105, %1104
  %1107 = icmp eq i32 %1106, 2
  %1108 = zext i1 %1107 to i8
  store i8 %1108, i8* %41, align 1, !tbaa !2450
  %.v322 = select i1 %1099, i64 88, i64 18
  %1109 = add i64 %1625, %.v322
  store i64 %1109, i64* %PC, align 8, !tbaa !2428
  br i1 %1099, label %block_4009db, label %block_400995

block_4015e8:                                     ; preds = %block_401651, %block_4015ac
  %1110 = phi i64 [ %.pre237, %block_4015ac ], [ %4713, %block_401651 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.36, %block_4015ac ], [ %MEMORY.37, %block_401651 ]
  %1111 = load i64, i64* %RBP, align 8
  %1112 = add i64 %1111, -8
  %1113 = add i64 %1110, 3
  store i64 %1113, i64* %PC, align 8
  %1114 = inttoptr i64 %1112 to i32*
  %1115 = load i32, i32* %1114, align 4
  %1116 = zext i32 %1115 to i64
  store i64 %1116, i64* %RAX, align 8, !tbaa !2428
  %1117 = add i64 %1111, -12
  %1118 = add i64 %1110, 7
  store i64 %1118, i64* %PC, align 8
  %1119 = inttoptr i64 %1117 to i32*
  %1120 = load i32, i32* %1119, align 4
  %1121 = sext i32 %1120 to i64
  store i64 %1121, i64* %RCX, align 8, !tbaa !2428
  %1122 = shl nsw i64 %1121, 2
  %1123 = add nsw i64 %1122, -1328
  %1124 = add i64 %1123, %1111
  %1125 = add i64 %1110, 14
  store i64 %1125, i64* %PC, align 8
  %1126 = inttoptr i64 %1124 to i32*
  %1127 = load i32, i32* %1126, align 4
  %1128 = sub i32 %1115, %1127
  %1129 = icmp ult i32 %1115, %1127
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %16, align 1, !tbaa !2432
  %1131 = and i32 %1128, 255
  %1132 = tail call i32 @llvm.ctpop.i32(i32 %1131) #9
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  %1135 = xor i8 %1134, 1
  store i8 %1135, i8* %23, align 1, !tbaa !2446
  %1136 = xor i32 %1127, %1115
  %1137 = xor i32 %1136, %1128
  %1138 = lshr i32 %1137, 4
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  store i8 %1140, i8* %29, align 1, !tbaa !2447
  %1141 = icmp eq i32 %1128, 0
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %32, align 1, !tbaa !2448
  %1143 = lshr i32 %1128, 31
  %1144 = trunc i32 %1143 to i8
  store i8 %1144, i8* %35, align 1, !tbaa !2449
  %1145 = lshr i32 %1115, 31
  %1146 = lshr i32 %1127, 31
  %1147 = xor i32 %1146, %1145
  %1148 = xor i32 %1143, %1145
  %1149 = add nuw nsw i32 %1148, %1147
  %1150 = icmp eq i32 %1149, 2
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %41, align 1, !tbaa !2450
  %1152 = icmp ne i8 %1144, 0
  %1153 = xor i1 %1152, %1150
  %.v300 = select i1 %1153, i64 20, i64 124
  %1154 = add i64 %1110, %.v300
  store i64 %1154, i64* %PC, align 8, !tbaa !2428
  br i1 %1153, label %block_4015fc, label %block_401664

block_401717:                                     ; preds = %block_40170a
  %1155 = add i64 %4113, 4
  store i64 %1155, i64* %PC, align 8
  %1156 = load i32, i32* %4087, align 4
  %1157 = sext i32 %1156 to i64
  store i64 %1157, i64* %RAX, align 8, !tbaa !2428
  %1158 = shl nsw i64 %1157, 2
  %1159 = add i64 %1158, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %1160 = add i64 %4113, 12
  store i64 %1160, i64* %PC, align 8
  %1161 = inttoptr i64 %1159 to i32*
  %1162 = load i32, i32* %1161, align 4
  %1163 = add i32 %1162, 1
  %1164 = icmp ne i32 %1162, -1
  %1165 = zext i1 %1164 to i8
  store i8 %1165, i8* %16, align 1, !tbaa !2432
  %1166 = and i32 %1163, 255
  %1167 = tail call i32 @llvm.ctpop.i32(i32 %1166) #9
  %1168 = trunc i32 %1167 to i8
  %1169 = and i8 %1168, 1
  %1170 = xor i8 %1169, 1
  store i8 %1170, i8* %23, align 1, !tbaa !2446
  %1171 = xor i32 %1162, 16
  %1172 = xor i32 %1171, %1163
  %1173 = lshr i32 %1172, 4
  %1174 = trunc i32 %1173 to i8
  %1175 = and i8 %1174, 1
  store i8 %1175, i8* %29, align 1, !tbaa !2447
  %1176 = icmp eq i32 %1163, 0
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %32, align 1, !tbaa !2448
  %1178 = lshr i32 %1163, 31
  %1179 = trunc i32 %1178 to i8
  store i8 %1179, i8* %35, align 1, !tbaa !2449
  %1180 = lshr i32 %1162, 31
  %1181 = xor i32 %1180, 1
  %1182 = xor i32 %1178, %1180
  %1183 = add nuw nsw i32 %1182, %1181
  %1184 = icmp eq i32 %1183, 2
  %1185 = zext i1 %1184 to i8
  store i8 %1185, i8* %41, align 1, !tbaa !2450
  %.v268 = select i1 %1176, i64 53, i64 18
  %1186 = add i64 %4113, %.v268
  %1187 = add i64 %1186, 4
  store i64 %1187, i64* %PC, align 8
  %1188 = load i32, i32* %4087, align 4
  %1189 = sext i32 %1188 to i64
  store i64 %1189, i64* %RAX, align 8, !tbaa !2428
  %1190 = shl nsw i64 %1189, 2
  %1191 = add i64 %1190, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  br i1 %1176, label %block_40174c, label %block_401729

block_401367:                                     ; preds = %block_401353, %block_401322, %block_4012cd
  %.sink25 = phi i64 [ 124, %block_4012cd ], [ 5, %block_401322 ], [ 5, %block_401353 ]
  %1192 = load i64, i64* %PC, align 8
  %1193 = add i64 %1192, %.sink25
  store i64 %1193, i64* %PC, align 8, !tbaa !2428
  br label %block_40136c

block_400ba2:                                     ; preds = %block_400ad9
  %1194 = add i64 %5687, 3
  store i64 %1194, i64* %PC, align 8
  %1195 = load i32, i32* %5655, align 4
  %1196 = add i32 %1195, -1
  %1197 = zext i32 %1196 to i64
  store i64 %1197, i64* %RAX, align 8, !tbaa !2428
  %1198 = icmp eq i32 %1195, 0
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %16, align 1, !tbaa !2432
  %1200 = and i32 %1196, 255
  %1201 = tail call i32 @llvm.ctpop.i32(i32 %1200) #9
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  %1204 = xor i8 %1203, 1
  store i8 %1204, i8* %23, align 1, !tbaa !2446
  %1205 = xor i32 %1196, %1195
  %1206 = lshr i32 %1205, 4
  %1207 = trunc i32 %1206 to i8
  %1208 = and i8 %1207, 1
  store i8 %1208, i8* %29, align 1, !tbaa !2447
  %1209 = icmp eq i32 %1196, 0
  %1210 = zext i1 %1209 to i8
  store i8 %1210, i8* %32, align 1, !tbaa !2448
  %1211 = lshr i32 %1196, 31
  %1212 = trunc i32 %1211 to i8
  store i8 %1212, i8* %35, align 1, !tbaa !2449
  %1213 = lshr i32 %1195, 31
  %1214 = xor i32 %1211, %1213
  %1215 = add nuw nsw i32 %1214, %1213
  %1216 = icmp eq i32 %1215, 2
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %41, align 1, !tbaa !2450
  %1218 = add i64 %5651, -16
  %1219 = add i64 %5687, 9
  store i64 %1219, i64* %PC, align 8
  %1220 = inttoptr i64 %1218 to i32*
  store i32 %1196, i32* %1220, align 4
  %.pre185 = load i64, i64* %PC, align 8
  br label %block_400bab

block_40175b:                                     ; preds = %block_401729, %block_40174c
  %1221 = phi i64 [ %1644, %block_401729 ], [ %.pre252, %block_40174c ]
  %1222 = load i64, i64* %RBP, align 8
  %1223 = add i64 %1222, -4
  %1224 = add i64 %1221, 8
  store i64 %1224, i64* %PC, align 8
  %1225 = inttoptr i64 %1223 to i32*
  %1226 = load i32, i32* %1225, align 4
  %1227 = add i32 %1226, 1
  %1228 = zext i32 %1227 to i64
  store i64 %1228, i64* %RAX, align 8, !tbaa !2428
  %1229 = icmp eq i32 %1226, -1
  %1230 = icmp eq i32 %1227, 0
  %1231 = or i1 %1229, %1230
  %1232 = zext i1 %1231 to i8
  store i8 %1232, i8* %16, align 1, !tbaa !2432
  %1233 = and i32 %1227, 255
  %1234 = tail call i32 @llvm.ctpop.i32(i32 %1233) #9
  %1235 = trunc i32 %1234 to i8
  %1236 = and i8 %1235, 1
  %1237 = xor i8 %1236, 1
  store i8 %1237, i8* %23, align 1, !tbaa !2446
  %1238 = xor i32 %1227, %1226
  %1239 = lshr i32 %1238, 4
  %1240 = trunc i32 %1239 to i8
  %1241 = and i8 %1240, 1
  store i8 %1241, i8* %29, align 1, !tbaa !2447
  %1242 = zext i1 %1230 to i8
  store i8 %1242, i8* %32, align 1, !tbaa !2448
  %1243 = lshr i32 %1227, 31
  %1244 = trunc i32 %1243 to i8
  store i8 %1244, i8* %35, align 1, !tbaa !2449
  %1245 = lshr i32 %1226, 31
  %1246 = xor i32 %1243, %1245
  %1247 = add nuw nsw i32 %1246, %1243
  %1248 = icmp eq i32 %1247, 2
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %41, align 1, !tbaa !2450
  %1250 = add i64 %1221, 14
  store i64 %1250, i64* %PC, align 8
  store i32 %1227, i32* %1225, align 4
  %1251 = load i64, i64* %PC, align 8
  %1252 = add i64 %1251, -95
  store i64 %1252, i64* %PC, align 8, !tbaa !2428
  br label %block_40170a

block_400956:                                     ; preds = %block_400a0a, %block_400930
  %1253 = phi i64 [ %.pre, %block_400930 ], [ %5850, %block_400a0a ]
  %MEMORY.8 = phi %struct.Memory* [ %2, %block_400930 ], [ %MEMORY.12, %block_400a0a ]
  %1254 = load i64, i64* %RBP, align 8
  %1255 = add i64 %1254, -4
  %1256 = add i64 %1253, 4
  store i64 %1256, i64* %PC, align 8
  %1257 = inttoptr i64 %1255 to i32*
  %1258 = load i32, i32* %1257, align 4
  %1259 = add i32 %1258, -16
  %1260 = icmp ult i32 %1258, 16
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %16, align 1, !tbaa !2432
  %1262 = and i32 %1259, 255
  %1263 = tail call i32 @llvm.ctpop.i32(i32 %1262) #9
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  %1266 = xor i8 %1265, 1
  store i8 %1266, i8* %23, align 1, !tbaa !2446
  %1267 = xor i32 %1258, 16
  %1268 = xor i32 %1267, %1259
  %1269 = lshr i32 %1268, 4
  %1270 = trunc i32 %1269 to i8
  %1271 = and i8 %1270, 1
  store i8 %1271, i8* %29, align 1, !tbaa !2447
  %1272 = icmp eq i32 %1259, 0
  %1273 = zext i1 %1272 to i8
  store i8 %1273, i8* %32, align 1, !tbaa !2448
  %1274 = lshr i32 %1259, 31
  %1275 = trunc i32 %1274 to i8
  store i8 %1275, i8* %35, align 1, !tbaa !2449
  %1276 = lshr i32 %1258, 31
  %1277 = xor i32 %1274, %1276
  %1278 = add nuw nsw i32 %1277, %1276
  %1279 = icmp eq i32 %1278, 2
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %41, align 1, !tbaa !2450
  %1281 = icmp ne i8 %1275, 0
  %1282 = xor i1 %1281, %1279
  %.demorgan = or i1 %1272, %1282
  %.v280 = select i1 %.demorgan, i64 10, i64 224
  %1283 = add i64 %1253, %.v280
  store i64 %1283, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400960, label %block_400a36

block_401353:                                     ; preds = %block_401302, %block_4012f0
  %1284 = phi i64 [ %2281, %block_4012f0 ], [ %4779, %block_401302 ]
  %1285 = phi i64 [ %2246, %block_4012f0 ], [ %.pre222, %block_401302 ]
  %1286 = add i64 %1285, -4
  %1287 = add i64 %1284, 4
  store i64 %1287, i64* %PC, align 8
  %1288 = inttoptr i64 %1286 to i32*
  %1289 = load i32, i32* %1288, align 4
  %1290 = sext i32 %1289 to i64
  store i64 %1290, i64* %RAX, align 8, !tbaa !2428
  %1291 = shl nsw i64 %1290, 2
  %1292 = add i64 %1285, -1616
  %1293 = add i64 %1292, %1291
  %1294 = add i64 %1284, 15
  store i64 %1294, i64* %PC, align 8
  %1295 = inttoptr i64 %1293 to i32*
  store i32 0, i32* %1295, align 4
  br label %block_401367

block_40174c:                                     ; preds = %block_401717
  %1296 = add i64 %1186, 15
  store i64 %1296, i64* %PC, align 8
  %1297 = inttoptr i64 %1191 to i32*
  store i32 0, i32* %1297, align 4
  %.pre252 = load i64, i64* %PC, align 8
  br label %block_40175b

block_400f3e:                                     ; preds = %block_400f19
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %1298 = add i64 %1724, -1168
  store i64 %1298, i64* %RCX, align 8, !tbaa !2428
  %1299 = add i64 %1724, -12
  %1300 = add i64 %1744, 15
  store i64 %1300, i64* %PC, align 8
  %1301 = inttoptr i64 %1299 to i32*
  %1302 = load i32, i32* %1301, align 4
  %1303 = add i32 %1302, 1
  %1304 = zext i32 %1303 to i64
  store i64 %1304, i64* %RDX, align 8, !tbaa !2428
  %1305 = icmp eq i32 %1302, -1
  %1306 = icmp eq i32 %1303, 0
  %1307 = or i1 %1305, %1306
  %1308 = zext i1 %1307 to i8
  store i8 %1308, i8* %16, align 1, !tbaa !2432
  %1309 = and i32 %1303, 255
  %1310 = tail call i32 @llvm.ctpop.i32(i32 %1309) #9
  %1311 = trunc i32 %1310 to i8
  %1312 = and i8 %1311, 1
  %1313 = xor i8 %1312, 1
  store i8 %1313, i8* %23, align 1, !tbaa !2446
  %1314 = xor i32 %1303, %1302
  %1315 = lshr i32 %1314, 4
  %1316 = trunc i32 %1315 to i8
  %1317 = and i8 %1316, 1
  store i8 %1317, i8* %29, align 1, !tbaa !2447
  %1318 = zext i1 %1306 to i8
  store i8 %1318, i8* %32, align 1, !tbaa !2448
  %1319 = lshr i32 %1303, 31
  %1320 = trunc i32 %1319 to i8
  store i8 %1320, i8* %35, align 1, !tbaa !2449
  %1321 = lshr i32 %1302, 31
  %1322 = xor i32 %1319, %1321
  %1323 = add nuw nsw i32 %1322, %1319
  %1324 = icmp eq i32 %1323, 2
  %1325 = zext i1 %1324 to i8
  store i8 %1325, i8* %41, align 1, !tbaa !2450
  %1326 = add i64 %1744, 21
  store i64 %1326, i64* %PC, align 8
  %1327 = load i32, i32* %1727, align 4
  %1328 = sub i32 %1303, %1327
  %1329 = zext i32 %1328 to i64
  store i64 %1329, i64* %RDX, align 8, !tbaa !2428
  %1330 = icmp ult i32 %1303, %1327
  %1331 = zext i1 %1330 to i8
  store i8 %1331, i8* %16, align 1, !tbaa !2432
  %1332 = and i32 %1328, 255
  %1333 = tail call i32 @llvm.ctpop.i32(i32 %1332) #9
  %1334 = trunc i32 %1333 to i8
  %1335 = and i8 %1334, 1
  %1336 = xor i8 %1335, 1
  store i8 %1336, i8* %23, align 1, !tbaa !2446
  %1337 = xor i32 %1327, %1303
  %1338 = xor i32 %1337, %1328
  %1339 = lshr i32 %1338, 4
  %1340 = trunc i32 %1339 to i8
  %1341 = and i8 %1340, 1
  store i8 %1341, i8* %29, align 1, !tbaa !2447
  %1342 = icmp eq i32 %1328, 0
  %1343 = zext i1 %1342 to i8
  store i8 %1343, i8* %32, align 1, !tbaa !2448
  %1344 = lshr i32 %1328, 31
  %1345 = trunc i32 %1344 to i8
  store i8 %1345, i8* %35, align 1, !tbaa !2449
  %1346 = lshr i32 %1327, 31
  %1347 = xor i32 %1346, %1319
  %1348 = xor i32 %1344, %1319
  %1349 = add nuw nsw i32 %1348, %1347
  %1350 = icmp eq i32 %1349, 2
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %41, align 1, !tbaa !2450
  %1352 = sext i32 %1328 to i64
  store i64 %1352, i64* %RSI, align 8, !tbaa !2428
  %1353 = shl nsw i64 %1352, 2
  %1354 = add nsw i64 %1353, -1488
  %1355 = add i64 %1354, %1724
  %1356 = add i64 %1744, 31
  store i64 %1356, i64* %PC, align 8
  %1357 = inttoptr i64 %1355 to i32*
  %1358 = load i32, i32* %1357, align 4
  %1359 = zext i32 %1358 to i64
  store i64 %1359, i64* %RDX, align 8, !tbaa !2428
  %1360 = add i64 %1744, 34
  store i64 %1360, i64* %PC, align 8
  %1361 = load i32, i32* %1301, align 4
  %1362 = add i32 %1361, 1
  %1363 = zext i32 %1362 to i64
  store i64 %1363, i64* %RDI, align 8, !tbaa !2428
  %1364 = sext i32 %1362 to i64
  %1365 = shl nsw i64 %1364, 6
  store i64 %1365, i64* %RSI, align 8, !tbaa !2428
  %1366 = load i64, i64* %RCX, align 8
  %1367 = add i64 %1365, %1366
  store i64 %1367, i64* %RCX, align 8, !tbaa !2428
  %1368 = icmp ult i64 %1367, %1366
  %1369 = icmp ult i64 %1367, %1365
  %1370 = or i1 %1368, %1369
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %16, align 1, !tbaa !2432
  %1372 = trunc i64 %1367 to i32
  %1373 = and i32 %1372, 255
  %1374 = tail call i32 @llvm.ctpop.i32(i32 %1373) #9
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  %1377 = xor i8 %1376, 1
  store i8 %1377, i8* %23, align 1, !tbaa !2446
  %1378 = xor i64 %1366, %1367
  %1379 = lshr i64 %1378, 4
  %1380 = trunc i64 %1379 to i8
  %1381 = and i8 %1380, 1
  store i8 %1381, i8* %29, align 1, !tbaa !2447
  %1382 = icmp eq i64 %1367, 0
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %32, align 1, !tbaa !2448
  %1384 = lshr i64 %1367, 63
  %1385 = trunc i64 %1384 to i8
  store i8 %1385, i8* %35, align 1, !tbaa !2449
  %1386 = lshr i64 %1366, 63
  %1387 = lshr i64 %1364, 57
  %1388 = and i64 %1387, 1
  %1389 = xor i64 %1384, %1386
  %1390 = xor i64 %1384, %1388
  %1391 = add nuw nsw i64 %1389, %1390
  %1392 = icmp eq i64 %1391, 2
  %1393 = zext i1 %1392 to i8
  store i8 %1393, i8* %41, align 1, !tbaa !2450
  %1394 = load i64, i64* %RBP, align 8
  %1395 = add i64 %1394, -4
  %1396 = add i64 %1744, 51
  store i64 %1396, i64* %PC, align 8
  %1397 = inttoptr i64 %1395 to i32*
  %1398 = load i32, i32* %1397, align 4
  %1399 = sext i32 %1398 to i64
  store i64 %1399, i64* %RSI, align 8, !tbaa !2428
  %1400 = shl nsw i64 %1399, 2
  %1401 = add i64 %1400, %1367
  %1402 = add i64 %1744, 55
  store i64 %1402, i64* %PC, align 8
  %1403 = inttoptr i64 %1401 to i32*
  %1404 = load i32, i32* %1403, align 4
  %1405 = sext i32 %1404 to i64
  store i64 %1405, i64* %RCX, align 8, !tbaa !2428
  %1406 = load i64, i64* %RDX, align 8
  %1407 = shl nsw i64 %1405, 2
  %1408 = add i64 %1407, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %1409 = add i64 %1744, 62
  store i64 %1409, i64* %PC, align 8
  %1410 = trunc i64 %1406 to i32
  %1411 = inttoptr i64 %1408 to i32*
  %1412 = load i32, i32* %1411, align 4
  %1413 = add i32 %1412, %1410
  %1414 = zext i32 %1413 to i64
  store i64 %1414, i64* %RDX, align 8, !tbaa !2428
  %1415 = icmp ult i32 %1413, %1410
  %1416 = icmp ult i32 %1413, %1412
  %1417 = or i1 %1415, %1416
  %1418 = zext i1 %1417 to i8
  store i8 %1418, i8* %16, align 1, !tbaa !2432
  %1419 = and i32 %1413, 255
  %1420 = tail call i32 @llvm.ctpop.i32(i32 %1419) #9
  %1421 = trunc i32 %1420 to i8
  %1422 = and i8 %1421, 1
  %1423 = xor i8 %1422, 1
  store i8 %1423, i8* %23, align 1, !tbaa !2446
  %1424 = xor i32 %1412, %1410
  %1425 = xor i32 %1424, %1413
  %1426 = lshr i32 %1425, 4
  %1427 = trunc i32 %1426 to i8
  %1428 = and i8 %1427, 1
  store i8 %1428, i8* %29, align 1, !tbaa !2447
  %1429 = icmp eq i32 %1413, 0
  %1430 = zext i1 %1429 to i8
  store i8 %1430, i8* %32, align 1, !tbaa !2448
  %1431 = lshr i32 %1413, 31
  %1432 = trunc i32 %1431 to i8
  store i8 %1432, i8* %35, align 1, !tbaa !2449
  %1433 = lshr i32 %1410, 31
  %1434 = lshr i32 %1412, 31
  %1435 = xor i32 %1431, %1433
  %1436 = xor i32 %1431, %1434
  %1437 = add nuw nsw i32 %1435, %1436
  %1438 = icmp eq i32 %1437, 2
  %1439 = zext i1 %1438 to i8
  store i8 %1439, i8* %41, align 1, !tbaa !2450
  %1440 = add i64 %1394, -2708
  %1441 = load i32, i32* %EAX, align 4
  %1442 = add i64 %1744, 68
  store i64 %1442, i64* %PC, align 8
  %1443 = inttoptr i64 %1440 to i32*
  store i32 %1441, i32* %1443, align 4
  %1444 = load i32, i32* %EDX, align 4
  %1445 = zext i32 %1444 to i64
  %1446 = load i64, i64* %PC, align 8
  store i64 %1445, i64* %RAX, align 8, !tbaa !2428
  %1447 = sext i32 %1444 to i64
  %1448 = lshr i64 %1447, 32
  store i64 %1448, i64* %55, align 8, !tbaa !2428
  %1449 = load i64, i64* %RBP, align 8
  %1450 = add i64 %1449, -2708
  %1451 = add i64 %1446, 9
  store i64 %1451, i64* %PC, align 8
  %1452 = inttoptr i64 %1450 to i32*
  %1453 = load i32, i32* %1452, align 4
  %1454 = zext i32 %1453 to i64
  store i64 %1454, i64* %RDI, align 8, !tbaa !2428
  %1455 = add i64 %1446, 11
  store i64 %1455, i64* %PC, align 8
  %1456 = sext i32 %1453 to i64
  %1457 = shl nuw i64 %1448, 32
  %1458 = or i64 %1457, %1445
  %1459 = sdiv i64 %1458, %1456
  %1460 = shl i64 %1459, 32
  %1461 = ashr exact i64 %1460, 32
  %1462 = icmp eq i64 %1459, %1461
  br i1 %1462, label %1465, label %1463

; <label>:1463:                                   ; preds = %block_400f3e
  %1464 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1455, %struct.Memory* %MEMORY.18) #12
  %.pre200 = load i32, i32* %EDX, align 4
  %.pre201 = load i64, i64* %PC, align 8
  %.pre202 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5

; <label>:1465:                                   ; preds = %block_400f3e
  %1466 = srem i64 %1458, %1456
  %1467 = and i64 %1459, 4294967295
  store i64 %1467, i64* %RAX, align 8, !tbaa !2428
  %1468 = and i64 %1466, 4294967295
  store i64 %1468, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %1469 = trunc i64 %1466 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5: ; preds = %1465, %1463
  %1470 = phi i64 [ %.pre202, %1463 ], [ %1449, %1465 ]
  %1471 = phi i64 [ %.pre201, %1463 ], [ %1455, %1465 ]
  %1472 = phi i32 [ %.pre200, %1463 ], [ %1469, %1465 ]
  %1473 = phi %struct.Memory* [ %1464, %1463 ], [ %MEMORY.18, %1465 ]
  %1474 = sext i32 %1472 to i64
  store i64 %1474, i64* %RCX, align 8, !tbaa !2428
  %1475 = shl nsw i64 %1474, 2
  %1476 = add i64 %1475, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %1477 = add i64 %1471, 10
  store i64 %1477, i64* %PC, align 8
  %1478 = inttoptr i64 %1476 to i32*
  %1479 = load i32, i32* %1478, align 4
  %1480 = zext i32 %1479 to i64
  store i64 %1480, i64* %RDX, align 8, !tbaa !2428
  %1481 = add i64 %1470, -12
  %1482 = add i64 %1471, 14
  store i64 %1482, i64* %PC, align 8
  %1483 = inttoptr i64 %1481 to i32*
  %1484 = load i32, i32* %1483, align 4
  %1485 = add i32 %1484, 1
  %1486 = zext i32 %1485 to i64
  store i64 %1486, i64* %R8, align 8, !tbaa !2428
  %1487 = icmp eq i32 %1484, -1
  %1488 = icmp eq i32 %1485, 0
  %1489 = or i1 %1487, %1488
  %1490 = zext i1 %1489 to i8
  store i8 %1490, i8* %16, align 1, !tbaa !2432
  %1491 = and i32 %1485, 255
  %1492 = tail call i32 @llvm.ctpop.i32(i32 %1491) #9
  %1493 = trunc i32 %1492 to i8
  %1494 = and i8 %1493, 1
  %1495 = xor i8 %1494, 1
  store i8 %1495, i8* %23, align 1, !tbaa !2446
  %1496 = xor i32 %1485, %1484
  %1497 = lshr i32 %1496, 4
  %1498 = trunc i32 %1497 to i8
  %1499 = and i8 %1498, 1
  store i8 %1499, i8* %29, align 1, !tbaa !2447
  %1500 = zext i1 %1488 to i8
  store i8 %1500, i8* %32, align 1, !tbaa !2448
  %1501 = lshr i32 %1485, 31
  %1502 = trunc i32 %1501 to i8
  store i8 %1502, i8* %35, align 1, !tbaa !2449
  %1503 = lshr i32 %1484, 31
  %1504 = xor i32 %1501, %1503
  %1505 = add nuw nsw i32 %1504, %1501
  %1506 = icmp eq i32 %1505, 2
  %1507 = zext i1 %1506 to i8
  store i8 %1507, i8* %41, align 1, !tbaa !2450
  %1508 = sext i32 %1485 to i64
  store i64 %1508, i64* %RCX, align 8, !tbaa !2428
  %1509 = shl nsw i64 %1508, 2
  %1510 = add nsw i64 %1509, -1248
  %1511 = add i64 %1510, %1470
  %1512 = add i64 %1471, 28
  store i64 %1512, i64* %PC, align 8
  %1513 = inttoptr i64 %1511 to i32*
  %1514 = load i32, i32* %1513, align 4
  %1515 = xor i32 %1514, %1479
  %1516 = zext i32 %1515 to i64
  store i64 %1516, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %1517 = and i32 %1515, 255
  %1518 = tail call i32 @llvm.ctpop.i32(i32 %1517) #9
  %1519 = trunc i32 %1518 to i8
  %1520 = and i8 %1519, 1
  %1521 = xor i8 %1520, 1
  store i8 %1521, i8* %23, align 1, !tbaa !2446
  %1522 = icmp eq i32 %1515, 0
  %1523 = zext i1 %1522 to i8
  store i8 %1523, i8* %32, align 1, !tbaa !2448
  %1524 = lshr i32 %1515, 31
  %1525 = trunc i32 %1524 to i8
  store i8 %1525, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %1526 = add i64 %1470, -1248
  %1527 = add i64 %1526, %1509
  %1528 = add i64 %1471, 35
  store i64 %1528, i64* %PC, align 8
  %1529 = inttoptr i64 %1527 to i32*
  store i32 %1515, i32* %1529, align 4
  %.pre203 = load i64, i64* %PC, align 8
  %.pre204 = load i64, i64* %RBP, align 8
  br label %block_400fb0

block_401133:                                     ; preds = %block_40111f
  %1530 = add i64 %1963, 4
  store i64 %1530, i64* %PC, align 8
  %1531 = load i32, i32* %1923, align 4
  %1532 = sext i32 %1531 to i64
  store i64 %1532, i64* %RAX, align 8, !tbaa !2428
  %1533 = shl nsw i64 %1532, 2
  %1534 = add i64 %1920, -2688
  %1535 = add i64 %1534, %1533
  %1536 = add i64 %1963, 12
  store i64 %1536, i64* %PC, align 8
  %1537 = inttoptr i64 %1535 to i32*
  %1538 = load i32, i32* %1537, align 4
  %1539 = add i32 %1538, 1
  %1540 = icmp ne i32 %1538, -1
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %16, align 1, !tbaa !2432
  %1542 = and i32 %1539, 255
  %1543 = tail call i32 @llvm.ctpop.i32(i32 %1542) #9
  %1544 = trunc i32 %1543 to i8
  %1545 = and i8 %1544, 1
  %1546 = xor i8 %1545, 1
  store i8 %1546, i8* %23, align 1, !tbaa !2446
  %1547 = xor i32 %1538, 16
  %1548 = xor i32 %1547, %1539
  %1549 = lshr i32 %1548, 4
  %1550 = trunc i32 %1549 to i8
  %1551 = and i8 %1550, 1
  store i8 %1551, i8* %29, align 1, !tbaa !2447
  %1552 = icmp eq i32 %1539, 0
  %1553 = zext i1 %1552 to i8
  store i8 %1553, i8* %32, align 1, !tbaa !2448
  %1554 = lshr i32 %1539, 31
  %1555 = trunc i32 %1554 to i8
  store i8 %1555, i8* %35, align 1, !tbaa !2449
  %1556 = lshr i32 %1538, 31
  %1557 = xor i32 %1556, 1
  %1558 = xor i32 %1554, %1556
  %1559 = add nuw nsw i32 %1558, %1557
  %1560 = icmp eq i32 %1559, 2
  %1561 = zext i1 %1560 to i8
  store i8 %1561, i8* %41, align 1, !tbaa !2450
  %.v314 = select i1 %1552, i64 90, i64 18
  %1562 = add i64 %1963, %.v314
  store i64 %1562, i64* %PC, align 8, !tbaa !2428
  br i1 %1552, label %block_40118d, label %block_401145

block_4017d0:                                     ; preds = %block_40179e, %block_4017c1
  %1563 = phi i64 [ %5015, %block_40179e ], [ %.pre254, %block_4017c1 ]
  %1564 = load i64, i64* %RBP, align 8
  %1565 = add i64 %1564, -4
  %1566 = add i64 %1563, 8
  store i64 %1566, i64* %PC, align 8
  %1567 = inttoptr i64 %1565 to i32*
  %1568 = load i32, i32* %1567, align 4
  %1569 = add i32 %1568, 1
  %1570 = zext i32 %1569 to i64
  store i64 %1570, i64* %RAX, align 8, !tbaa !2428
  %1571 = icmp eq i32 %1568, -1
  %1572 = icmp eq i32 %1569, 0
  %1573 = or i1 %1571, %1572
  %1574 = zext i1 %1573 to i8
  store i8 %1574, i8* %16, align 1, !tbaa !2432
  %1575 = and i32 %1569, 255
  %1576 = tail call i32 @llvm.ctpop.i32(i32 %1575) #9
  %1577 = trunc i32 %1576 to i8
  %1578 = and i8 %1577, 1
  %1579 = xor i8 %1578, 1
  store i8 %1579, i8* %23, align 1, !tbaa !2446
  %1580 = xor i32 %1569, %1568
  %1581 = lshr i32 %1580, 4
  %1582 = trunc i32 %1581 to i8
  %1583 = and i8 %1582, 1
  store i8 %1583, i8* %29, align 1, !tbaa !2447
  %1584 = zext i1 %1572 to i8
  store i8 %1584, i8* %32, align 1, !tbaa !2448
  %1585 = lshr i32 %1569, 31
  %1586 = trunc i32 %1585 to i8
  store i8 %1586, i8* %35, align 1, !tbaa !2449
  %1587 = lshr i32 %1568, 31
  %1588 = xor i32 %1585, %1587
  %1589 = add nuw nsw i32 %1588, %1585
  %1590 = icmp eq i32 %1589, 2
  %1591 = zext i1 %1590 to i8
  store i8 %1591, i8* %41, align 1, !tbaa !2450
  %1592 = add i64 %1563, 14
  store i64 %1592, i64* %PC, align 8
  store i32 %1569, i32* %1567, align 4
  %1593 = load i64, i64* %PC, align 8
  %1594 = add i64 %1593, -95
  store i64 %1594, i64* %PC, align 8, !tbaa !2428
  br label %block_40177f

block_400976:                                     ; preds = %block_400960, %block_4009db
  %1595 = phi i64 [ %.pre173, %block_400960 ], [ %378, %block_4009db ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.8, %block_400960 ], [ %MEMORY.2, %block_4009db ]
  %1596 = load i64, i64* %RBP, align 8
  %1597 = add i64 %1596, -8
  %1598 = add i64 %1595, 7
  store i64 %1598, i64* %PC, align 8
  %1599 = inttoptr i64 %1597 to i32*
  %1600 = load i32, i32* %1599, align 4
  %1601 = add i32 %1600, -255
  %1602 = icmp ult i32 %1600, 255
  %1603 = zext i1 %1602 to i8
  store i8 %1603, i8* %16, align 1, !tbaa !2432
  %1604 = and i32 %1601, 255
  %1605 = tail call i32 @llvm.ctpop.i32(i32 %1604) #9
  %1606 = trunc i32 %1605 to i8
  %1607 = and i8 %1606, 1
  %1608 = xor i8 %1607, 1
  store i8 %1608, i8* %23, align 1, !tbaa !2446
  %1609 = xor i32 %1600, 16
  %1610 = xor i32 %1609, %1601
  %1611 = lshr i32 %1610, 4
  %1612 = trunc i32 %1611 to i8
  %1613 = and i8 %1612, 1
  store i8 %1613, i8* %29, align 1, !tbaa !2447
  %1614 = icmp eq i32 %1601, 0
  %1615 = zext i1 %1614 to i8
  store i8 %1615, i8* %32, align 1, !tbaa !2448
  %1616 = lshr i32 %1601, 31
  %1617 = trunc i32 %1616 to i8
  store i8 %1617, i8* %35, align 1, !tbaa !2449
  %1618 = lshr i32 %1600, 31
  %1619 = xor i32 %1616, %1618
  %1620 = add nuw nsw i32 %1619, %1618
  %1621 = icmp eq i32 %1620, 2
  %1622 = zext i1 %1621 to i8
  store i8 %1622, i8* %41, align 1, !tbaa !2450
  %1623 = icmp ne i8 %1617, 0
  %1624 = xor i1 %1623, %1621
  %.v320 = select i1 %1624, i64 13, i64 120
  %1625 = add i64 %1595, %.v320
  store i64 %1625, i64* %PC, align 8, !tbaa !2428
  br i1 %1624, label %block_400983, label %block_4009ee

block_401729:                                     ; preds = %block_401717
  %1626 = add i64 %1186, 12
  store i64 %1626, i64* %PC, align 8
  %1627 = inttoptr i64 %1191 to i32*
  %1628 = load i32, i32* %1627, align 4
  %1629 = sext i32 %1628 to i64
  store i64 %1629, i64* %RAX, align 8, !tbaa !2428
  %1630 = shl nsw i64 %1629, 2
  %1631 = add i64 %1630, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %1632 = add i64 %1186, 19
  store i64 %1632, i64* %PC, align 8
  %1633 = inttoptr i64 %1631 to i32*
  %1634 = load i32, i32* %1633, align 4
  %1635 = zext i32 %1634 to i64
  store i64 %1635, i64* %RCX, align 8, !tbaa !2428
  %1636 = add i64 %1186, 23
  store i64 %1636, i64* %PC, align 8
  %1637 = load i32, i32* %4087, align 4
  %1638 = sext i32 %1637 to i64
  store i64 %1638, i64* %RAX, align 8, !tbaa !2428
  %1639 = shl nsw i64 %1638, 2
  %1640 = add i64 %1639, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %1641 = add i64 %1186, 30
  store i64 %1641, i64* %PC, align 8
  %1642 = inttoptr i64 %1640 to i32*
  store i32 %1634, i32* %1642, align 4
  %1643 = load i64, i64* %PC, align 8
  %1644 = add i64 %1643, 20
  store i64 %1644, i64* %PC, align 8, !tbaa !2428
  br label %block_40175b

block_400dcb:                                     ; preds = %block_400dc4, %block_400ddf
  %1645 = phi i64 [ %.pre197, %block_400dc4 ], [ %346, %block_400ddf ]
  %1646 = load i64, i64* %RBP, align 8
  %1647 = add i64 %1646, -4
  %1648 = add i64 %1645, 3
  store i64 %1648, i64* %PC, align 8
  %1649 = inttoptr i64 %1647 to i32*
  %1650 = load i32, i32* %1649, align 4
  %1651 = zext i32 %1650 to i64
  store i64 %1651, i64* %RAX, align 8, !tbaa !2428
  %1652 = add i64 %1646, -12
  %1653 = add i64 %1645, 7
  store i64 %1653, i64* %PC, align 8
  %1654 = inttoptr i64 %1652 to i32*
  %1655 = load i32, i32* %1654, align 4
  %1656 = sext i32 %1655 to i64
  store i64 %1656, i64* %RCX, align 8, !tbaa !2428
  %1657 = shl nsw i64 %1656, 2
  %1658 = add nsw i64 %1657, -1328
  %1659 = add i64 %1658, %1646
  %1660 = add i64 %1645, 14
  store i64 %1660, i64* %PC, align 8
  %1661 = inttoptr i64 %1659 to i32*
  %1662 = load i32, i32* %1661, align 4
  %1663 = sub i32 %1650, %1662
  %1664 = icmp ult i32 %1650, %1662
  %1665 = zext i1 %1664 to i8
  store i8 %1665, i8* %16, align 1, !tbaa !2432
  %1666 = and i32 %1663, 255
  %1667 = tail call i32 @llvm.ctpop.i32(i32 %1666) #9
  %1668 = trunc i32 %1667 to i8
  %1669 = and i8 %1668, 1
  %1670 = xor i8 %1669, 1
  store i8 %1670, i8* %23, align 1, !tbaa !2446
  %1671 = xor i32 %1662, %1650
  %1672 = xor i32 %1671, %1663
  %1673 = lshr i32 %1672, 4
  %1674 = trunc i32 %1673 to i8
  %1675 = and i8 %1674, 1
  store i8 %1675, i8* %29, align 1, !tbaa !2447
  %1676 = icmp eq i32 %1663, 0
  %1677 = zext i1 %1676 to i8
  store i8 %1677, i8* %32, align 1, !tbaa !2448
  %1678 = lshr i32 %1663, 31
  %1679 = trunc i32 %1678 to i8
  store i8 %1679, i8* %35, align 1, !tbaa !2449
  %1680 = lshr i32 %1650, 31
  %1681 = lshr i32 %1662, 31
  %1682 = xor i32 %1681, %1680
  %1683 = xor i32 %1678, %1680
  %1684 = add nuw nsw i32 %1683, %1682
  %1685 = icmp eq i32 %1684, 2
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %41, align 1, !tbaa !2450
  %1687 = icmp ne i8 %1679, 0
  %1688 = xor i1 %1687, %1685
  %.demorgan277 = or i1 %1676, %1688
  %.v291 = select i1 %.demorgan277, i64 20, i64 138
  %1689 = add i64 %1645, %.v291
  store i64 %1689, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan277, label %block_400ddf, label %block_400e5a.loopexit424

block_400f19:                                     ; preds = %block_400eff
  %1690 = add i64 %2216, -1168
  store i64 %1690, i64* %RAX, align 8, !tbaa !2428
  %1691 = add i64 %1888, 10
  store i64 %1691, i64* %PC, align 8
  %1692 = load i32, i32* %2219, align 4
  %1693 = add i32 %1692, 1
  %1694 = zext i32 %1693 to i64
  store i64 %1694, i64* %RCX, align 8, !tbaa !2428
  %1695 = sext i32 %1693 to i64
  %1696 = shl nsw i64 %1695, 6
  store i64 %1696, i64* %RDX, align 8, !tbaa !2428
  %1697 = add i64 %1696, %1690
  store i64 %1697, i64* %RAX, align 8, !tbaa !2428
  %1698 = icmp ult i64 %1697, %1690
  %1699 = icmp ult i64 %1697, %1696
  %1700 = or i1 %1698, %1699
  %1701 = zext i1 %1700 to i8
  store i8 %1701, i8* %16, align 1, !tbaa !2432
  %1702 = trunc i64 %1697 to i32
  %1703 = and i32 %1702, 255
  %1704 = tail call i32 @llvm.ctpop.i32(i32 %1703) #9
  %1705 = trunc i32 %1704 to i8
  %1706 = and i8 %1705, 1
  %1707 = xor i8 %1706, 1
  store i8 %1707, i8* %23, align 1, !tbaa !2446
  %1708 = xor i64 %1690, %1697
  %1709 = lshr i64 %1708, 4
  %1710 = trunc i64 %1709 to i8
  %1711 = and i8 %1710, 1
  store i8 %1711, i8* %29, align 1, !tbaa !2447
  %1712 = icmp eq i64 %1697, 0
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %32, align 1, !tbaa !2448
  %1714 = lshr i64 %1697, 63
  %1715 = trunc i64 %1714 to i8
  store i8 %1715, i8* %35, align 1, !tbaa !2449
  %1716 = lshr i64 %1690, 63
  %1717 = lshr i64 %1695, 57
  %1718 = and i64 %1717, 1
  %1719 = xor i64 %1714, %1716
  %1720 = xor i64 %1714, %1718
  %1721 = add nuw nsw i64 %1719, %1720
  %1722 = icmp eq i64 %1721, 2
  %1723 = zext i1 %1722 to i8
  store i8 %1723, i8* %41, align 1, !tbaa !2450
  %1724 = load i64, i64* %RBP, align 8
  %1725 = add i64 %1724, -4
  %1726 = add i64 %1888, 27
  store i64 %1726, i64* %PC, align 8
  %1727 = inttoptr i64 %1725 to i32*
  %1728 = load i32, i32* %1727, align 4
  %1729 = sext i32 %1728 to i64
  store i64 %1729, i64* %RDX, align 8, !tbaa !2428
  %1730 = shl nsw i64 %1729, 2
  %1731 = add i64 %1730, %1697
  %1732 = add i64 %1888, 31
  store i64 %1732, i64* %PC, align 8
  %1733 = inttoptr i64 %1731 to i32*
  %1734 = load i32, i32* %1733, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %1735 = and i32 %1734, 255
  %1736 = tail call i32 @llvm.ctpop.i32(i32 %1735) #9
  %1737 = trunc i32 %1736 to i8
  %1738 = and i8 %1737, 1
  %1739 = xor i8 %1738, 1
  store i8 %1739, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %1740 = icmp eq i32 %1734, 0
  %1741 = zext i1 %1740 to i8
  store i8 %1741, i8* %32, align 1, !tbaa !2448
  %1742 = lshr i32 %1734, 31
  %1743 = trunc i32 %1742 to i8
  store i8 %1743, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %.v317 = select i1 %1740, i64 151, i64 37
  %1744 = add i64 %1888, %.v317
  store i64 %1744, i64* %PC, align 8, !tbaa !2428
  br i1 %1740, label %block_400fb0, label %block_400f3e

block_401703:                                     ; preds = %block_4011f3
  store i32 0, i32* %2970, align 4
  %.pre251 = load i64, i64* %PC, align 8
  br label %block_40170a

block_400fc3:                                     ; preds = %block_400ee6
  %1745 = sext i32 %2222 to i64
  store i64 %1745, i64* %RCX, align 8, !tbaa !2428
  %1746 = shl nsw i64 %1745, 2
  %1747 = add nsw i64 %1746, -1248
  %1748 = add i64 %1747, %2216
  %1749 = add i64 %2215, 17
  store i64 %1749, i64* %PC, align 8
  %1750 = inttoptr i64 %1748 to i32*
  %1751 = load i32, i32* %1750, align 4
  %1752 = sext i32 %1751 to i64
  store i64 %1752, i64* %RCX, align 8, !tbaa !2428
  %1753 = shl nsw i64 %1752, 2
  %1754 = add i64 %1753, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %1755 = add i64 %2215, 24
  store i64 %1755, i64* %PC, align 8
  %1756 = inttoptr i64 %1754 to i32*
  %1757 = load i32, i32* %1756, align 4
  %1758 = zext i32 %1757 to i64
  store i64 %1758, i64* %RAX, align 8, !tbaa !2428
  %1759 = add i64 %2215, 27
  store i64 %1759, i64* %PC, align 8
  %1760 = load i32, i32* %2219, align 4
  %1761 = add i32 %1760, 1
  %1762 = zext i32 %1761 to i64
  store i64 %1762, i64* %RDX, align 8, !tbaa !2428
  %1763 = icmp eq i32 %1760, -1
  %1764 = icmp eq i32 %1761, 0
  %1765 = or i1 %1763, %1764
  %1766 = zext i1 %1765 to i8
  store i8 %1766, i8* %16, align 1, !tbaa !2432
  %1767 = and i32 %1761, 255
  %1768 = tail call i32 @llvm.ctpop.i32(i32 %1767) #9
  %1769 = trunc i32 %1768 to i8
  %1770 = and i8 %1769, 1
  %1771 = xor i8 %1770, 1
  store i8 %1771, i8* %23, align 1, !tbaa !2446
  %1772 = xor i32 %1761, %1760
  %1773 = lshr i32 %1772, 4
  %1774 = trunc i32 %1773 to i8
  %1775 = and i8 %1774, 1
  store i8 %1775, i8* %29, align 1, !tbaa !2447
  %1776 = zext i1 %1764 to i8
  store i8 %1776, i8* %32, align 1, !tbaa !2448
  %1777 = lshr i32 %1761, 31
  %1778 = trunc i32 %1777 to i8
  store i8 %1778, i8* %35, align 1, !tbaa !2449
  %1779 = lshr i32 %1760, 31
  %1780 = xor i32 %1777, %1779
  %1781 = add nuw nsw i32 %1780, %1777
  %1782 = icmp eq i32 %1781, 2
  %1783 = zext i1 %1782 to i8
  store i8 %1783, i8* %41, align 1, !tbaa !2450
  %1784 = sext i32 %1761 to i64
  store i64 %1784, i64* %RCX, align 8, !tbaa !2428
  %1785 = shl nsw i64 %1784, 2
  %1786 = add nsw i64 %1785, -1248
  %1787 = add i64 %1786, %2216
  %1788 = add i64 %2215, 40
  store i64 %1788, i64* %PC, align 8
  %1789 = inttoptr i64 %1787 to i32*
  store i32 %1757, i32* %1789, align 4
  %.pre205 = load i64, i64* %PC, align 8
  %.pre206 = load i64, i64* %RBP, align 8
  br label %block_400feb

block_401111:                                     ; preds = %block_401104
  %1790 = add i64 %2967, -16
  %1791 = add i64 %2996, 7
  store i64 %1791, i64* %PC, align 8
  %1792 = inttoptr i64 %1790 to i32*
  store i32 1, i32* %1792, align 4
  %1793 = load i64, i64* %RBP, align 8
  %1794 = add i64 %1793, -8
  %1795 = load i64, i64* %PC, align 8
  %1796 = add i64 %1795, 7
  store i64 %1796, i64* %PC, align 8
  %1797 = inttoptr i64 %1794 to i32*
  store i32 1, i32* %1797, align 4
  %.pre211 = load i64, i64* %PC, align 8
  br label %block_40111f

block_400db1:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3, %block_400d17
  %1798 = phi i64 [ %2860, %block_400d17 ], [ %.pre196, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3 ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.21, %block_400d17 ], [ %3533, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3 ]
  %1799 = load i64, i64* %RBP, align 8
  %1800 = add i64 %1799, -4
  %1801 = add i64 %1798, 8
  store i64 %1801, i64* %PC, align 8
  %1802 = inttoptr i64 %1800 to i32*
  %1803 = load i32, i32* %1802, align 4
  %1804 = add i32 %1803, 1
  %1805 = zext i32 %1804 to i64
  store i64 %1805, i64* %RAX, align 8, !tbaa !2428
  %1806 = icmp eq i32 %1803, -1
  %1807 = icmp eq i32 %1804, 0
  %1808 = or i1 %1806, %1807
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %16, align 1, !tbaa !2432
  %1810 = and i32 %1804, 255
  %1811 = tail call i32 @llvm.ctpop.i32(i32 %1810) #9
  %1812 = trunc i32 %1811 to i8
  %1813 = and i8 %1812, 1
  %1814 = xor i8 %1813, 1
  store i8 %1814, i8* %23, align 1, !tbaa !2446
  %1815 = xor i32 %1804, %1803
  %1816 = lshr i32 %1815, 4
  %1817 = trunc i32 %1816 to i8
  %1818 = and i8 %1817, 1
  store i8 %1818, i8* %29, align 1, !tbaa !2447
  %1819 = zext i1 %1807 to i8
  store i8 %1819, i8* %32, align 1, !tbaa !2448
  %1820 = lshr i32 %1804, 31
  %1821 = trunc i32 %1820 to i8
  store i8 %1821, i8* %35, align 1, !tbaa !2449
  %1822 = lshr i32 %1803, 31
  %1823 = xor i32 %1820, %1822
  %1824 = add nuw nsw i32 %1823, %1820
  %1825 = icmp eq i32 %1824, 2
  %1826 = zext i1 %1825 to i8
  store i8 %1826, i8* %41, align 1, !tbaa !2450
  %1827 = add i64 %1798, 14
  store i64 %1827, i64* %PC, align 8
  store i32 %1804, i32* %1802, align 4
  %1828 = load i64, i64* %PC, align 8
  %1829 = add i64 %1828, -188
  store i64 %1829, i64* %PC, align 8, !tbaa !2428
  br label %block_400d03

block_400eff:                                     ; preds = %block_400ee6
  %1830 = add i64 %2216, -4
  %1831 = add i64 %2215, 9
  store i64 %1831, i64* %PC, align 8
  %1832 = inttoptr i64 %1830 to i32*
  %1833 = load i32, i32* %1832, align 4
  %1834 = sub i32 %2222, %1833
  %1835 = zext i32 %1834 to i64
  store i64 %1835, i64* %RAX, align 8, !tbaa !2428
  %1836 = icmp ult i32 %2222, %1833
  %1837 = zext i1 %1836 to i8
  store i8 %1837, i8* %16, align 1, !tbaa !2432
  %1838 = and i32 %1834, 255
  %1839 = tail call i32 @llvm.ctpop.i32(i32 %1838) #9
  %1840 = trunc i32 %1839 to i8
  %1841 = and i8 %1840, 1
  %1842 = xor i8 %1841, 1
  store i8 %1842, i8* %23, align 1, !tbaa !2446
  %1843 = xor i32 %1833, %2222
  %1844 = xor i32 %1843, %1834
  %1845 = lshr i32 %1844, 4
  %1846 = trunc i32 %1845 to i8
  %1847 = and i8 %1846, 1
  store i8 %1847, i8* %29, align 1, !tbaa !2447
  %1848 = icmp eq i32 %1834, 0
  %1849 = zext i1 %1848 to i8
  store i8 %1849, i8* %32, align 1, !tbaa !2448
  %1850 = lshr i32 %1834, 31
  %1851 = trunc i32 %1850 to i8
  store i8 %1851, i8* %35, align 1, !tbaa !2449
  %1852 = lshr i32 %1833, 31
  %1853 = xor i32 %1852, %2238
  %1854 = xor i32 %1850, %2238
  %1855 = add nuw nsw i32 %1854, %1853
  %1856 = icmp eq i32 %1855, 2
  %1857 = zext i1 %1856 to i8
  store i8 %1857, i8* %41, align 1, !tbaa !2450
  %1858 = sext i32 %1834 to i64
  store i64 %1858, i64* %RCX, align 8, !tbaa !2428
  %1859 = shl nsw i64 %1858, 2
  %1860 = add nsw i64 %1859, -1488
  %1861 = add i64 %1860, %2216
  %1862 = add i64 %2215, 20
  store i64 %1862, i64* %PC, align 8
  %1863 = inttoptr i64 %1861 to i32*
  %1864 = load i32, i32* %1863, align 4
  %1865 = add i32 %1864, 1
  %1866 = icmp ne i32 %1864, -1
  %1867 = zext i1 %1866 to i8
  store i8 %1867, i8* %16, align 1, !tbaa !2432
  %1868 = and i32 %1865, 255
  %1869 = tail call i32 @llvm.ctpop.i32(i32 %1868) #9
  %1870 = trunc i32 %1869 to i8
  %1871 = and i8 %1870, 1
  %1872 = xor i8 %1871, 1
  store i8 %1872, i8* %23, align 1, !tbaa !2446
  %1873 = xor i32 %1864, 16
  %1874 = xor i32 %1873, %1865
  %1875 = lshr i32 %1874, 4
  %1876 = trunc i32 %1875 to i8
  %1877 = and i8 %1876, 1
  store i8 %1877, i8* %29, align 1, !tbaa !2447
  %1878 = icmp eq i32 %1865, 0
  %1879 = zext i1 %1878 to i8
  store i8 %1879, i8* %32, align 1, !tbaa !2448
  %1880 = lshr i32 %1865, 31
  %1881 = trunc i32 %1880 to i8
  store i8 %1881, i8* %35, align 1, !tbaa !2449
  %1882 = lshr i32 %1864, 31
  %1883 = xor i32 %1882, 1
  %1884 = xor i32 %1880, %1882
  %1885 = add nuw nsw i32 %1884, %1883
  %1886 = icmp eq i32 %1885, 2
  %1887 = zext i1 %1886 to i8
  store i8 %1887, i8* %41, align 1, !tbaa !2450
  %.v316 = select i1 %1878, i64 177, i64 26
  %1888 = add i64 %2215, %.v316
  store i64 %1888, i64* %PC, align 8, !tbaa !2428
  br i1 %1878, label %block_400fb0, label %block_400f19

block_400be7:                                     ; preds = %block_400bd4
  %1889 = add i64 %2114, 3
  store i64 %1889, i64* %PC, align 8
  %1890 = inttoptr i64 %2115 to i32*
  %1891 = load i32, i32* %1890, align 4
  %1892 = add i32 %1891, -1
  %1893 = zext i32 %1892 to i64
  store i64 %1893, i64* %RAX, align 8, !tbaa !2428
  %1894 = icmp ne i32 %1891, 0
  %1895 = zext i1 %1894 to i8
  store i8 %1895, i8* %16, align 1, !tbaa !2432
  %1896 = and i32 %1892, 255
  %1897 = tail call i32 @llvm.ctpop.i32(i32 %1896) #9
  %1898 = trunc i32 %1897 to i8
  %1899 = and i8 %1898, 1
  %1900 = xor i8 %1899, 1
  store i8 %1900, i8* %23, align 1, !tbaa !2446
  %1901 = xor i32 %1891, 16
  %1902 = xor i32 %1901, %1892
  %1903 = lshr i32 %1902, 4
  %1904 = trunc i32 %1903 to i8
  %1905 = and i8 %1904, 1
  store i8 %1905, i8* %29, align 1, !tbaa !2447
  %1906 = icmp eq i32 %1892, 0
  %1907 = zext i1 %1906 to i8
  store i8 %1907, i8* %32, align 1, !tbaa !2448
  %1908 = lshr i32 %1892, 31
  %1909 = trunc i32 %1908 to i8
  store i8 %1909, i8* %35, align 1, !tbaa !2449
  %1910 = lshr i32 %1891, 31
  %1911 = xor i32 %1908, %1910
  %1912 = xor i32 %1908, 1
  %1913 = add nuw nsw i32 %1911, %1912
  %1914 = icmp eq i32 %1913, 2
  %1915 = zext i1 %1914 to i8
  store i8 %1915, i8* %41, align 1, !tbaa !2450
  %1916 = add i64 %2114, 9
  store i64 %1916, i64* %PC, align 8
  store i32 %1892, i32* %1890, align 4
  %1917 = load i64, i64* %PC, align 8
  %1918 = add i64 %1917, -69
  store i64 %1918, i64* %PC, align 8, !tbaa !2428
  br label %block_400bab

block_40111f:                                     ; preds = %block_40118d, %block_401111
  %1919 = phi i64 [ %.pre211, %block_401111 ], [ %5555, %block_40118d ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.26, %block_401111 ], [ %MEMORY.46, %block_40118d ]
  %1920 = load i64, i64* %RBP, align 8
  %1921 = add i64 %1920, -8
  %1922 = add i64 %1919, 3
  store i64 %1922, i64* %PC, align 8
  %1923 = inttoptr i64 %1921 to i32*
  %1924 = load i32, i32* %1923, align 4
  %1925 = zext i32 %1924 to i64
  store i64 %1925, i64* %RAX, align 8, !tbaa !2428
  %1926 = add i64 %1920, -12
  %1927 = add i64 %1919, 7
  store i64 %1927, i64* %PC, align 8
  %1928 = inttoptr i64 %1926 to i32*
  %1929 = load i32, i32* %1928, align 4
  %1930 = sext i32 %1929 to i64
  store i64 %1930, i64* %RCX, align 8, !tbaa !2428
  %1931 = shl nsw i64 %1930, 2
  %1932 = add nsw i64 %1931, -1328
  %1933 = add i64 %1932, %1920
  %1934 = add i64 %1919, 14
  store i64 %1934, i64* %PC, align 8
  %1935 = inttoptr i64 %1933 to i32*
  %1936 = load i32, i32* %1935, align 4
  %1937 = sub i32 %1924, %1936
  %1938 = icmp ult i32 %1924, %1936
  %1939 = zext i1 %1938 to i8
  store i8 %1939, i8* %16, align 1, !tbaa !2432
  %1940 = and i32 %1937, 255
  %1941 = tail call i32 @llvm.ctpop.i32(i32 %1940) #9
  %1942 = trunc i32 %1941 to i8
  %1943 = and i8 %1942, 1
  %1944 = xor i8 %1943, 1
  store i8 %1944, i8* %23, align 1, !tbaa !2446
  %1945 = xor i32 %1936, %1924
  %1946 = xor i32 %1945, %1937
  %1947 = lshr i32 %1946, 4
  %1948 = trunc i32 %1947 to i8
  %1949 = and i8 %1948, 1
  store i8 %1949, i8* %29, align 1, !tbaa !2447
  %1950 = icmp eq i32 %1937, 0
  %1951 = zext i1 %1950 to i8
  store i8 %1951, i8* %32, align 1, !tbaa !2448
  %1952 = lshr i32 %1937, 31
  %1953 = trunc i32 %1952 to i8
  store i8 %1953, i8* %35, align 1, !tbaa !2449
  %1954 = lshr i32 %1924, 31
  %1955 = lshr i32 %1936, 31
  %1956 = xor i32 %1955, %1954
  %1957 = xor i32 %1952, %1954
  %1958 = add nuw nsw i32 %1957, %1956
  %1959 = icmp eq i32 %1958, 2
  %1960 = zext i1 %1959 to i8
  store i8 %1960, i8* %41, align 1, !tbaa !2450
  %1961 = icmp ne i8 %1953, 0
  %1962 = xor i1 %1961, %1959
  %.demorgan262 = or i1 %1950, %1962
  %.v312 = select i1 %.demorgan262, i64 20, i64 129
  %1963 = add i64 %1919, %.v312
  store i64 %1963, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan262, label %block_401133, label %block_4011a0

block_401529:                                     ; preds = %block_401517
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %1964 = add i64 %6335, 9
  store i64 %1964, i64* %PC, align 8
  %1965 = load i32, i32* %4641, align 4
  %1966 = sext i32 %1965 to i64
  store i64 %1966, i64* %RCX, align 8, !tbaa !2428
  %1967 = shl nsw i64 %1966, 2
  %1968 = add i64 %6307, %1967
  %1969 = add i64 %6335, 16
  store i64 %1969, i64* %PC, align 8
  %1970 = inttoptr i64 %1968 to i32*
  %1971 = load i32, i32* %1970, align 4
  %1972 = zext i32 %1971 to i64
  store i64 %1972, i64* %RDX, align 8, !tbaa !2428
  %1973 = add i64 %6335, 19
  store i64 %1973, i64* %PC, align 8
  %1974 = load i32, i32* %4641, align 4
  %1975 = zext i32 %1974 to i64
  store i64 %1975, i64* %RSI, align 8, !tbaa !2428
  %1976 = add i64 %4638, -4
  %1977 = add i64 %6335, 23
  store i64 %1977, i64* %PC, align 8
  %1978 = inttoptr i64 %1976 to i32*
  %1979 = load i32, i32* %1978, align 4
  %1980 = sext i32 %1979 to i64
  store i64 %1980, i64* %RCX, align 8, !tbaa !2428
  %1981 = shl nsw i64 %1980, 2
  %1982 = add nsw i64 %1981, -1536
  %1983 = add i64 %1982, %4638
  %1984 = add i64 %6335, 31
  store i64 %1984, i64* %PC, align 8
  %1985 = inttoptr i64 %1983 to i32*
  %1986 = load i32, i32* %1985, align 4
  %1987 = sext i32 %1974 to i64
  %1988 = sext i32 %1986 to i64
  %1989 = mul nsw i64 %1988, %1987
  %1990 = and i64 %1989, 4294967295
  store i64 %1990, i64* %RSI, align 8, !tbaa !2428
  %1991 = trunc i64 %1989 to i32
  %1992 = add i32 %1991, %1971
  %1993 = zext i32 %1992 to i64
  store i64 %1993, i64* %RDX, align 8, !tbaa !2428
  %1994 = icmp ult i32 %1992, %1971
  %1995 = icmp ult i32 %1992, %1991
  %1996 = or i1 %1994, %1995
  %1997 = zext i1 %1996 to i8
  store i8 %1997, i8* %16, align 1, !tbaa !2432
  %1998 = and i32 %1992, 255
  %1999 = tail call i32 @llvm.ctpop.i32(i32 %1998) #9
  %2000 = trunc i32 %1999 to i8
  %2001 = and i8 %2000, 1
  %2002 = xor i8 %2001, 1
  store i8 %2002, i8* %23, align 1, !tbaa !2446
  %2003 = xor i64 %1989, %1972
  %2004 = trunc i64 %2003 to i32
  %2005 = xor i32 %2004, %1992
  %2006 = lshr i32 %2005, 4
  %2007 = trunc i32 %2006 to i8
  %2008 = and i8 %2007, 1
  store i8 %2008, i8* %29, align 1, !tbaa !2447
  %2009 = icmp eq i32 %1992, 0
  %2010 = zext i1 %2009 to i8
  store i8 %2010, i8* %32, align 1, !tbaa !2448
  %2011 = lshr i32 %1992, 31
  %2012 = trunc i32 %2011 to i8
  store i8 %2012, i8* %35, align 1, !tbaa !2449
  %2013 = lshr i32 %1971, 31
  %2014 = lshr i32 %1991, 31
  %2015 = xor i32 %2011, %2013
  %2016 = xor i32 %2011, %2014
  %2017 = add nuw nsw i32 %2015, %2016
  %2018 = icmp eq i32 %2017, 2
  %2019 = zext i1 %2018 to i8
  store i8 %2019, i8* %41, align 1, !tbaa !2450
  %2020 = add i64 %4638, -2724
  %2021 = add i64 %6335, 39
  store i64 %2021, i64* %PC, align 8
  %2022 = inttoptr i64 %2020 to i32*
  store i32 255, i32* %2022, align 4
  %2023 = load i32, i32* %EDX, align 4
  %2024 = zext i32 %2023 to i64
  %2025 = load i64, i64* %PC, align 8
  store i64 %2024, i64* %RAX, align 8, !tbaa !2428
  %2026 = sext i32 %2023 to i64
  %2027 = lshr i64 %2026, 32
  store i64 %2027, i64* %55, align 8, !tbaa !2428
  %2028 = load i64, i64* %RBP, align 8
  %2029 = add i64 %2028, -2724
  %2030 = add i64 %2025, 9
  store i64 %2030, i64* %PC, align 8
  %2031 = inttoptr i64 %2029 to i32*
  %2032 = load i32, i32* %2031, align 4
  %2033 = zext i32 %2032 to i64
  store i64 %2033, i64* %RSI, align 8, !tbaa !2428
  %2034 = add i64 %2025, 11
  store i64 %2034, i64* %PC, align 8
  %2035 = sext i32 %2032 to i64
  %2036 = shl nuw i64 %2027, 32
  %2037 = or i64 %2036, %2024
  %2038 = sdiv i64 %2037, %2035
  %2039 = shl i64 %2038, 32
  %2040 = ashr exact i64 %2039, 32
  %2041 = icmp eq i64 %2038, %2040
  br i1 %2041, label %2044, label %2042

; <label>:2042:                                   ; preds = %block_401529
  %2043 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2034, %struct.Memory* %MEMORY.36) #12
  %.pre232 = load i32, i32* %EDX, align 4
  %.pre233 = load i64, i64* %PC, align 8
  %.pre234 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4

; <label>:2044:                                   ; preds = %block_401529
  %2045 = srem i64 %2037, %2035
  %2046 = and i64 %2038, 4294967295
  store i64 %2046, i64* %RAX, align 8, !tbaa !2428
  %2047 = and i64 %2045, 4294967295
  store i64 %2047, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %2048 = trunc i64 %2045 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4: ; preds = %2044, %2042
  %2049 = phi i64 [ %.pre234, %2042 ], [ %2028, %2044 ]
  %2050 = phi i64 [ %.pre233, %2042 ], [ %2034, %2044 ]
  %2051 = phi i32 [ %.pre232, %2042 ], [ %2048, %2044 ]
  %2052 = phi %struct.Memory* [ %2043, %2042 ], [ %MEMORY.36, %2044 ]
  %2053 = sext i32 %2051 to i64
  store i64 %2053, i64* %RCX, align 8, !tbaa !2428
  %2054 = shl nsw i64 %2053, 2
  %2055 = add i64 %2054, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %2056 = add i64 %2050, 10
  store i64 %2056, i64* %PC, align 8
  %2057 = inttoptr i64 %2055 to i32*
  %2058 = load i32, i32* %2057, align 4
  %2059 = zext i32 %2058 to i64
  store i64 %2059, i64* %RDX, align 8, !tbaa !2428
  %2060 = add i64 %2049, -4
  %2061 = add i64 %2050, 14
  store i64 %2061, i64* %PC, align 8
  %2062 = inttoptr i64 %2060 to i32*
  %2063 = load i32, i32* %2062, align 4
  %2064 = sext i32 %2063 to i64
  store i64 %2064, i64* %RCX, align 8, !tbaa !2428
  %2065 = shl nsw i64 %2064, 2
  %2066 = add i64 %2049, -1568
  %2067 = add i64 %2066, %2065
  %2068 = add i64 %2050, 22
  store i64 %2068, i64* %PC, align 8
  %2069 = inttoptr i64 %2067 to i32*
  %2070 = load i32, i32* %2069, align 4
  %2071 = sext i32 %2070 to i64
  store i64 %2071, i64* %RCX, align 8, !tbaa !2428
  %2072 = shl nsw i64 %2071, 2
  %2073 = add nsw i64 %2072, -2640
  %2074 = add i64 %2073, %2049
  %2075 = add i64 %2050, 29
  store i64 %2075, i64* %PC, align 8
  %2076 = inttoptr i64 %2074 to i32*
  %2077 = load i32, i32* %2076, align 4
  %2078 = xor i32 %2077, %2058
  %2079 = zext i32 %2078 to i64
  store i64 %2079, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %2080 = and i32 %2078, 255
  %2081 = tail call i32 @llvm.ctpop.i32(i32 %2080) #9
  %2082 = trunc i32 %2081 to i8
  %2083 = and i8 %2082, 1
  %2084 = xor i8 %2083, 1
  store i8 %2084, i8* %23, align 1, !tbaa !2446
  %2085 = icmp eq i32 %2078, 0
  %2086 = zext i1 %2085 to i8
  store i8 %2086, i8* %32, align 1, !tbaa !2448
  %2087 = lshr i32 %2078, 31
  %2088 = trunc i32 %2087 to i8
  store i8 %2088, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %2089 = add i64 %2049, -2640
  %2090 = add i64 %2089, %2072
  %2091 = add i64 %2050, 36
  store i64 %2091, i64* %PC, align 8
  %2092 = inttoptr i64 %2090 to i32*
  store i32 %2078, i32* %2092, align 4
  %.pre235 = load i64, i64* %PC, align 8
  %.pre236 = load i64, i64* %RBP, align 8
  br label %block_40157f

block_4010f3:                                     ; preds = %block_4010ad
  %2093 = add i64 %2618, -1492
  %2094 = add i64 %2661, 10
  store i64 %2094, i64* %PC, align 8
  %2095 = inttoptr i64 %2093 to i32*
  store i32 0, i32* %2095, align 4
  %2096 = load i64, i64* %RBP, align 8
  %2097 = add i64 %2096, -4
  %2098 = load i64, i64* %PC, align 8
  %2099 = add i64 %2098, 7
  store i64 %2099, i64* %PC, align 8
  %2100 = inttoptr i64 %2097 to i32*
  store i32 1, i32* %2100, align 4
  %.pre210 = load i64, i64* %PC, align 8
  br label %block_401104

block_400bd4:                                     ; preds = %block_400bab, %block_400bc7
  %2101 = phi i64 [ %6195, %block_400bab ], [ %.pre186, %block_400bc7 ]
  %2102 = load i64, i64* %RBP, align 8
  %2103 = add i64 %2102, -2693
  %2104 = add i64 %2101, 6
  store i64 %2104, i64* %PC, align 8
  %2105 = inttoptr i64 %2103 to i8*
  %2106 = load i8, i8* %2105, align 1
  store i8 %2106, i8* %AL, align 1, !tbaa !2451
  %2107 = and i8 %2106, 1
  store i8 0, i8* %16, align 1, !tbaa !2432
  %2108 = zext i8 %2107 to i32
  %2109 = tail call i32 @llvm.ctpop.i32(i32 %2108) #9
  %2110 = trunc i32 %2109 to i8
  %2111 = xor i8 %2110, 1
  store i8 %2111, i8* %23, align 1, !tbaa !2446
  %2112 = xor i8 %2107, 1
  store i8 %2112, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %2113 = icmp eq i8 %2112, 0
  %.v275 = select i1 %2113, i64 19, i64 14
  %2114 = add i64 %2101, %.v275
  store i64 %2114, i64* %PC, align 8, !tbaa !2428
  %2115 = add i64 %2102, -16
  br i1 %2113, label %block_400be7, label %block_400be2

block_4016eb:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1, %block_401592
  %2116 = phi i64 [ %4638, %block_401592 ], [ %.pre249, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %2117 = phi i64 [ %2796, %block_401592 ], [ %.pre248, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.36, %block_401592 ], [ %4010, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %2118 = add i64 %2116, -4
  %2119 = add i64 %2117, 8
  store i64 %2119, i64* %PC, align 8
  %2120 = inttoptr i64 %2118 to i32*
  %2121 = load i32, i32* %2120, align 4
  %2122 = add i32 %2121, 1
  %2123 = zext i32 %2122 to i64
  store i64 %2123, i64* %RAX, align 8, !tbaa !2428
  %2124 = icmp eq i32 %2121, -1
  %2125 = icmp eq i32 %2122, 0
  %2126 = or i1 %2124, %2125
  %2127 = zext i1 %2126 to i8
  store i8 %2127, i8* %16, align 1, !tbaa !2432
  %2128 = and i32 %2122, 255
  %2129 = tail call i32 @llvm.ctpop.i32(i32 %2128) #9
  %2130 = trunc i32 %2129 to i8
  %2131 = and i8 %2130, 1
  %2132 = xor i8 %2131, 1
  store i8 %2132, i8* %23, align 1, !tbaa !2446
  %2133 = xor i32 %2122, %2121
  %2134 = lshr i32 %2133, 4
  %2135 = trunc i32 %2134 to i8
  %2136 = and i8 %2135, 1
  store i8 %2136, i8* %29, align 1, !tbaa !2447
  %2137 = zext i1 %2125 to i8
  store i8 %2137, i8* %32, align 1, !tbaa !2448
  %2138 = lshr i32 %2122, 31
  %2139 = trunc i32 %2138 to i8
  store i8 %2139, i8* %35, align 1, !tbaa !2449
  %2140 = lshr i32 %2121, 31
  %2141 = xor i32 %2138, %2140
  %2142 = add nuw nsw i32 %2141, %2138
  %2143 = icmp eq i32 %2142, 2
  %2144 = zext i1 %2143 to i8
  store i8 %2144, i8* %41, align 1, !tbaa !2450
  %2145 = add i64 %2117, 14
  store i64 %2145, i64* %PC, align 8
  store i32 %2122, i32* %2120, align 4
  %2146 = load i64, i64* %PC, align 8
  %2147 = add i64 %2146, -552
  store i64 %2147, i64* %PC, align 8, !tbaa !2428
  br label %block_4014d1

block_400ee6:                                     ; preds = %block_400edf, %block_400fb0
  %2148 = phi i64 [ %.pre199, %block_400edf ], [ %610, %block_400fb0 ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.34, %block_400edf ], [ %MEMORY.3, %block_400fb0 ]
  %2149 = load i64, i64* %RBP, align 8
  %2150 = add i64 %2149, -4
  %2151 = add i64 %2148, 3
  store i64 %2151, i64* %PC, align 8
  %2152 = inttoptr i64 %2150 to i32*
  %2153 = load i32, i32* %2152, align 4
  %2154 = zext i32 %2153 to i64
  store i64 %2154, i64* %RAX, align 8, !tbaa !2428
  %2155 = add i64 %2149, -12
  %2156 = add i64 %2148, 6
  store i64 %2156, i64* %PC, align 8
  %2157 = inttoptr i64 %2155 to i32*
  %2158 = load i32, i32* %2157, align 4
  %2159 = add i32 %2158, 1
  %2160 = zext i32 %2159 to i64
  store i64 %2160, i64* %RCX, align 8, !tbaa !2428
  %2161 = icmp eq i32 %2158, -1
  %2162 = icmp eq i32 %2159, 0
  %2163 = or i1 %2161, %2162
  %2164 = zext i1 %2163 to i8
  store i8 %2164, i8* %16, align 1, !tbaa !2432
  %2165 = and i32 %2159, 255
  %2166 = tail call i32 @llvm.ctpop.i32(i32 %2165) #9
  %2167 = trunc i32 %2166 to i8
  %2168 = and i8 %2167, 1
  %2169 = xor i8 %2168, 1
  store i8 %2169, i8* %23, align 1, !tbaa !2446
  %2170 = xor i32 %2159, %2158
  %2171 = lshr i32 %2170, 4
  %2172 = trunc i32 %2171 to i8
  %2173 = and i8 %2172, 1
  store i8 %2173, i8* %29, align 1, !tbaa !2447
  %2174 = zext i1 %2162 to i8
  store i8 %2174, i8* %32, align 1, !tbaa !2448
  %2175 = lshr i32 %2159, 31
  %2176 = trunc i32 %2175 to i8
  store i8 %2176, i8* %35, align 1, !tbaa !2449
  %2177 = lshr i32 %2158, 31
  %2178 = xor i32 %2175, %2177
  %2179 = add nuw nsw i32 %2178, %2175
  %2180 = icmp eq i32 %2179, 2
  %2181 = zext i1 %2180 to i8
  store i8 %2181, i8* %41, align 1, !tbaa !2450
  %2182 = sext i32 %2159 to i64
  store i64 %2182, i64* %RDX, align 8, !tbaa !2428
  %2183 = shl nsw i64 %2182, 2
  %2184 = add nsw i64 %2183, -1328
  %2185 = add i64 %2184, %2149
  %2186 = add i64 %2148, 19
  store i64 %2186, i64* %PC, align 8
  %2187 = inttoptr i64 %2185 to i32*
  %2188 = load i32, i32* %2187, align 4
  %2189 = sub i32 %2153, %2188
  %2190 = icmp ult i32 %2153, %2188
  %2191 = zext i1 %2190 to i8
  store i8 %2191, i8* %16, align 1, !tbaa !2432
  %2192 = and i32 %2189, 255
  %2193 = tail call i32 @llvm.ctpop.i32(i32 %2192) #9
  %2194 = trunc i32 %2193 to i8
  %2195 = and i8 %2194, 1
  %2196 = xor i8 %2195, 1
  store i8 %2196, i8* %23, align 1, !tbaa !2446
  %2197 = xor i32 %2188, %2153
  %2198 = xor i32 %2197, %2189
  %2199 = lshr i32 %2198, 4
  %2200 = trunc i32 %2199 to i8
  %2201 = and i8 %2200, 1
  store i8 %2201, i8* %29, align 1, !tbaa !2447
  %2202 = icmp eq i32 %2189, 0
  %2203 = zext i1 %2202 to i8
  store i8 %2203, i8* %32, align 1, !tbaa !2448
  %2204 = lshr i32 %2189, 31
  %2205 = trunc i32 %2204 to i8
  store i8 %2205, i8* %35, align 1, !tbaa !2449
  %2206 = lshr i32 %2153, 31
  %2207 = lshr i32 %2188, 31
  %2208 = xor i32 %2207, %2206
  %2209 = xor i32 %2204, %2206
  %2210 = add nuw nsw i32 %2209, %2208
  %2211 = icmp eq i32 %2210, 2
  %2212 = zext i1 %2211 to i8
  store i8 %2212, i8* %41, align 1, !tbaa !2450
  %2213 = icmp ne i8 %2205, 0
  %2214 = xor i1 %2213, %2211
  %.demorgan274 = or i1 %2202, %2214
  %.v315 = select i1 %.demorgan274, i64 25, i64 221
  %2215 = add i64 %2148, %.v315
  %2216 = load i64, i64* %RBP, align 8
  %2217 = add i64 %2216, -12
  %2218 = add i64 %2215, 3
  store i64 %2218, i64* %PC, align 8
  %2219 = inttoptr i64 %2217 to i32*
  %2220 = load i32, i32* %2219, align 4
  %2221 = add i64 %2215, 6
  store i64 %2221, i64* %PC, align 8
  %2222 = add i32 %2220, 1
  %2223 = zext i32 %2222 to i64
  store i64 %2223, i64* %RAX, align 8, !tbaa !2428
  %2224 = icmp eq i32 %2220, -1
  %2225 = icmp eq i32 %2222, 0
  %2226 = or i1 %2224, %2225
  %2227 = zext i1 %2226 to i8
  store i8 %2227, i8* %16, align 1, !tbaa !2432
  %2228 = and i32 %2222, 255
  %2229 = tail call i32 @llvm.ctpop.i32(i32 %2228) #9
  %2230 = trunc i32 %2229 to i8
  %2231 = and i8 %2230, 1
  %2232 = xor i8 %2231, 1
  store i8 %2232, i8* %23, align 1, !tbaa !2446
  %2233 = xor i32 %2222, %2220
  %2234 = lshr i32 %2233, 4
  %2235 = trunc i32 %2234 to i8
  %2236 = and i8 %2235, 1
  store i8 %2236, i8* %29, align 1, !tbaa !2447
  %2237 = zext i1 %2225 to i8
  store i8 %2237, i8* %32, align 1, !tbaa !2448
  %2238 = lshr i32 %2222, 31
  %2239 = trunc i32 %2238 to i8
  store i8 %2239, i8* %35, align 1, !tbaa !2449
  %2240 = lshr i32 %2220, 31
  %2241 = xor i32 %2238, %2240
  %2242 = add nuw nsw i32 %2241, %2238
  %2243 = icmp eq i32 %2242, 2
  %2244 = zext i1 %2243 to i8
  store i8 %2244, i8* %41, align 1, !tbaa !2450
  br i1 %.demorgan274, label %block_400eff, label %block_400fc3

block_4012f0:                                     ; preds = %block_4012ad, %block_40129b
  %2245 = phi i64 [ %2768, %block_40129b ], [ %5753, %block_4012ad ]
  %2246 = phi i64 [ %2733, %block_40129b ], [ %5754, %block_4012ad ]
  %2247 = add i64 %2246, -4
  %2248 = add i64 %2245, 4
  store i64 %2248, i64* %PC, align 8
  %2249 = inttoptr i64 %2247 to i32*
  %2250 = load i32, i32* %2249, align 4
  %2251 = sext i32 %2250 to i64
  store i64 %2251, i64* %RAX, align 8, !tbaa !2428
  %2252 = shl nsw i64 %2251, 2
  %2253 = add i64 %2246, -1488
  %2254 = add i64 %2253, %2252
  %2255 = add i64 %2245, 12
  store i64 %2255, i64* %PC, align 8
  %2256 = inttoptr i64 %2254 to i32*
  %2257 = load i32, i32* %2256, align 4
  %2258 = add i32 %2257, 1
  %2259 = icmp ne i32 %2257, -1
  %2260 = zext i1 %2259 to i8
  store i8 %2260, i8* %16, align 1, !tbaa !2432
  %2261 = and i32 %2258, 255
  %2262 = tail call i32 @llvm.ctpop.i32(i32 %2261) #9
  %2263 = trunc i32 %2262 to i8
  %2264 = and i8 %2263, 1
  %2265 = xor i8 %2264, 1
  store i8 %2265, i8* %23, align 1, !tbaa !2446
  %2266 = xor i32 %2257, 16
  %2267 = xor i32 %2266, %2258
  %2268 = lshr i32 %2267, 4
  %2269 = trunc i32 %2268 to i8
  %2270 = and i8 %2269, 1
  store i8 %2270, i8* %29, align 1, !tbaa !2447
  %2271 = icmp eq i32 %2258, 0
  %2272 = zext i1 %2271 to i8
  store i8 %2272, i8* %32, align 1, !tbaa !2448
  %2273 = lshr i32 %2258, 31
  %2274 = trunc i32 %2273 to i8
  store i8 %2274, i8* %35, align 1, !tbaa !2449
  %2275 = lshr i32 %2257, 31
  %2276 = xor i32 %2275, 1
  %2277 = xor i32 %2273, %2275
  %2278 = add nuw nsw i32 %2277, %2276
  %2279 = icmp eq i32 %2278, 2
  %2280 = zext i1 %2279 to i8
  store i8 %2280, i8* %41, align 1, !tbaa !2450
  %.v310 = select i1 %2271, i64 18, i64 99
  %2281 = add i64 %2245, %.v310
  store i64 %2281, i64* %PC, align 8, !tbaa !2428
  br i1 %2271, label %block_401302, label %block_401353

block_4014e5:                                     ; preds = %block_4014d1
  %2282 = add i64 %3093, 4
  store i64 %2282, i64* %PC, align 8
  %2283 = load i32, i32* %3053, align 4
  %2284 = sext i32 %2283 to i64
  store i64 %2284, i64* %RAX, align 8, !tbaa !2428
  %2285 = shl nsw i64 %2284, 2
  %2286 = add i64 %3050, -1568
  %2287 = add i64 %2286, %2285
  %2288 = add i64 %3093, 12
  store i64 %2288, i64* %PC, align 8
  %2289 = inttoptr i64 %2287 to i32*
  %2290 = load i32, i32* %2289, align 4
  %2291 = sext i32 %2290 to i64
  store i64 %2291, i64* %RAX, align 8, !tbaa !2428
  %2292 = shl nsw i64 %2291, 2
  %2293 = add i64 %3050, -2640
  %2294 = add i64 %2293, %2292
  %2295 = add i64 %3093, 23
  store i64 %2295, i64* %PC, align 8
  %2296 = inttoptr i64 %2294 to i32*
  store i32 1, i32* %2296, align 4
  %2297 = load i64, i64* %RBP, align 8
  %2298 = add i64 %2297, -8
  %2299 = load i64, i64* %PC, align 8
  %2300 = add i64 %2299, 7
  store i64 %2300, i64* %PC, align 8
  %2301 = inttoptr i64 %2298 to i32*
  store i32 1, i32* %2301, align 4
  %.pre231 = load i64, i64* %PC, align 8
  br label %block_401503

block_4012cd:                                     ; preds = %block_4012ad
  %2302 = add i64 %5754, -4
  %2303 = add i64 %5753, 4
  store i64 %2303, i64* %PC, align 8
  %2304 = inttoptr i64 %2302 to i32*
  %2305 = load i32, i32* %2304, align 4
  %2306 = sext i32 %2305 to i64
  store i64 %2306, i64* %RAX, align 8, !tbaa !2428
  %2307 = shl nsw i64 %2306, 2
  %2308 = add i64 %5754, -1488
  %2309 = add i64 %2308, %2307
  %2310 = add i64 %5753, 12
  store i64 %2310, i64* %PC, align 8
  %2311 = inttoptr i64 %2309 to i32*
  %2312 = load i32, i32* %2311, align 4
  %2313 = sext i32 %2312 to i64
  store i64 %2313, i64* %RAX, align 8, !tbaa !2428
  %2314 = shl nsw i64 %2313, 2
  %2315 = add i64 %2314, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %2316 = add i64 %5753, 19
  store i64 %2316, i64* %PC, align 8
  %2317 = inttoptr i64 %2315 to i32*
  %2318 = load i32, i32* %2317, align 4
  %2319 = zext i32 %2318 to i64
  store i64 %2319, i64* %RCX, align 8, !tbaa !2428
  %2320 = add i64 %5753, 23
  store i64 %2320, i64* %PC, align 8
  %2321 = load i32, i32* %2304, align 4
  %2322 = sext i32 %2321 to i64
  store i64 %2322, i64* %RAX, align 8, !tbaa !2428
  %2323 = shl nsw i64 %2322, 2
  %2324 = add i64 %5754, -1616
  %2325 = add i64 %2324, %2323
  %2326 = add i64 %5753, 30
  store i64 %2326, i64* %PC, align 8
  %2327 = inttoptr i64 %2325 to i32*
  store i32 %2318, i32* %2327, align 4
  br label %block_401367

block_400ccc:                                     ; preds = %block_400cc2
  %2328 = add i64 %2459, -1168
  store i64 %2328, i64* %RAX, align 8, !tbaa !2428
  %2329 = add i64 %2459, -12
  %2330 = add i64 %2488, 10
  store i64 %2330, i64* %PC, align 8
  %2331 = inttoptr i64 %2329 to i32*
  %2332 = load i32, i32* %2331, align 4
  %2333 = add i32 %2332, 1
  %2334 = zext i32 %2333 to i64
  store i64 %2334, i64* %RCX, align 8, !tbaa !2428
  %2335 = sext i32 %2333 to i64
  %2336 = shl nsw i64 %2335, 6
  store i64 %2336, i64* %RDX, align 8, !tbaa !2428
  %2337 = add i64 %2336, %2328
  store i64 %2337, i64* %RAX, align 8, !tbaa !2428
  %2338 = icmp ult i64 %2337, %2328
  %2339 = icmp ult i64 %2337, %2336
  %2340 = or i1 %2338, %2339
  %2341 = zext i1 %2340 to i8
  store i8 %2341, i8* %16, align 1, !tbaa !2432
  %2342 = trunc i64 %2337 to i32
  %2343 = and i32 %2342, 255
  %2344 = tail call i32 @llvm.ctpop.i32(i32 %2343) #9
  %2345 = trunc i32 %2344 to i8
  %2346 = and i8 %2345, 1
  %2347 = xor i8 %2346, 1
  store i8 %2347, i8* %23, align 1, !tbaa !2446
  %2348 = xor i64 %2328, %2337
  %2349 = lshr i64 %2348, 4
  %2350 = trunc i64 %2349 to i8
  %2351 = and i8 %2350, 1
  store i8 %2351, i8* %29, align 1, !tbaa !2447
  %2352 = icmp eq i64 %2337, 0
  %2353 = zext i1 %2352 to i8
  store i8 %2353, i8* %32, align 1, !tbaa !2448
  %2354 = lshr i64 %2337, 63
  %2355 = trunc i64 %2354 to i8
  store i8 %2355, i8* %35, align 1, !tbaa !2449
  %2356 = lshr i64 %2328, 63
  %2357 = lshr i64 %2335, 57
  %2358 = and i64 %2357, 1
  %2359 = xor i64 %2354, %2356
  %2360 = xor i64 %2354, %2358
  %2361 = add nuw nsw i64 %2359, %2360
  %2362 = icmp eq i64 %2361, 2
  %2363 = zext i1 %2362 to i8
  store i8 %2363, i8* %41, align 1, !tbaa !2450
  %2364 = load i64, i64* %RBP, align 8
  %2365 = add i64 %2364, -4
  %2366 = add i64 %2488, 27
  store i64 %2366, i64* %PC, align 8
  %2367 = inttoptr i64 %2365 to i32*
  %2368 = load i32, i32* %2367, align 4
  %2369 = sext i32 %2368 to i64
  store i64 %2369, i64* %RDX, align 8, !tbaa !2428
  %2370 = shl nsw i64 %2369, 2
  %2371 = add i64 %2370, %2337
  %2372 = add i64 %2488, 34
  store i64 %2372, i64* %PC, align 8
  %2373 = inttoptr i64 %2371 to i32*
  store i32 0, i32* %2373, align 4
  %2374 = load i64, i64* %RBP, align 8
  %2375 = add i64 %2374, -4
  %2376 = load i64, i64* %PC, align 8
  %2377 = add i64 %2376, 3
  store i64 %2377, i64* %PC, align 8
  %2378 = inttoptr i64 %2375 to i32*
  %2379 = load i32, i32* %2378, align 4
  %2380 = add i32 %2379, 1
  %2381 = zext i32 %2380 to i64
  store i64 %2381, i64* %RAX, align 8, !tbaa !2428
  %2382 = icmp eq i32 %2379, -1
  %2383 = icmp eq i32 %2380, 0
  %2384 = or i1 %2382, %2383
  %2385 = zext i1 %2384 to i8
  store i8 %2385, i8* %16, align 1, !tbaa !2432
  %2386 = and i32 %2380, 255
  %2387 = tail call i32 @llvm.ctpop.i32(i32 %2386) #9
  %2388 = trunc i32 %2387 to i8
  %2389 = and i8 %2388, 1
  %2390 = xor i8 %2389, 1
  store i8 %2390, i8* %23, align 1, !tbaa !2446
  %2391 = xor i32 %2380, %2379
  %2392 = lshr i32 %2391, 4
  %2393 = trunc i32 %2392 to i8
  %2394 = and i8 %2393, 1
  store i8 %2394, i8* %29, align 1, !tbaa !2447
  %2395 = zext i1 %2383 to i8
  store i8 %2395, i8* %32, align 1, !tbaa !2448
  %2396 = lshr i32 %2380, 31
  %2397 = trunc i32 %2396 to i8
  store i8 %2397, i8* %35, align 1, !tbaa !2449
  %2398 = lshr i32 %2379, 31
  %2399 = xor i32 %2396, %2398
  %2400 = add nuw nsw i32 %2399, %2396
  %2401 = icmp eq i32 %2400, 2
  %2402 = zext i1 %2401 to i8
  store i8 %2402, i8* %41, align 1, !tbaa !2450
  %2403 = add i64 %2376, 9
  store i64 %2403, i64* %PC, align 8
  store i32 %2380, i32* %2378, align 4
  %2404 = load i64, i64* %PC, align 8
  %2405 = add i64 %2404, -53
  store i64 %2405, i64* %PC, align 8, !tbaa !2428
  br label %block_400cc2

block_4017ed:                                     ; preds = %block_400a36
  %2406 = add i64 %5202, 7
  store i64 %2406, i64* %PC, align 8
  store i32 0, i32* %1257, align 4
  %.pre255 = load i64, i64* %PC, align 8
  br label %block_4017f4

block_400ecb:                                     ; preds = %block_400e87
  %2407 = add i64 %2946, -1248
  %2408 = add i64 %2916, 20
  store i64 %2408, i64* %PC, align 8
  %2409 = inttoptr i64 %2407 to i32*
  store i32 0, i32* %2409, align 4
  %.pre198 = load i64, i64* %PC, align 8
  br label %block_400edf

block_4014ca:                                     ; preds = %block_401457
  %2410 = add i64 %5785, 7
  store i64 %2410, i64* %PC, align 8
  store i32 0, i32* %5759, align 4
  %.pre230 = load i64, i64* %PC, align 8
  br label %block_4014d1

block_401773.loopexit:                            ; preds = %block_4014d1
  br label %block_401773

block_401773.loopexit423:                         ; preds = %block_40170a
  br label %block_401773

block_401773:                                     ; preds = %block_401773.loopexit423, %block_401773.loopexit
  %2411 = phi i64 [ %3093, %block_401773.loopexit ], [ %4113, %block_401773.loopexit423 ]
  %.sink10 = phi i64 [ 117, %block_401773.loopexit ], [ 5, %block_401773.loopexit423 ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.27, %block_401773.loopexit ], [ %MEMORY.26, %block_401773.loopexit423 ]
  %2412 = add i64 %2411, %.sink10
  store i64 %2412, i64* %PC, align 8, !tbaa !2428
  br label %block_4017e8

block_400d03:                                     ; preds = %block_400cfc, %block_400db1
  %2413 = phi i64 [ %.pre193, %block_400cfc ], [ %1829, %block_400db1 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.48, %block_400cfc ], [ %MEMORY.14, %block_400db1 ]
  %2414 = load i64, i64* %RBP, align 8
  %2415 = add i64 %2414, -4
  %2416 = add i64 %2413, 3
  store i64 %2416, i64* %PC, align 8
  %2417 = inttoptr i64 %2415 to i32*
  %2418 = load i32, i32* %2417, align 4
  %2419 = zext i32 %2418 to i64
  store i64 %2419, i64* %RAX, align 8, !tbaa !2428
  %2420 = add i64 %2414, -16
  %2421 = add i64 %2413, 7
  store i64 %2421, i64* %PC, align 8
  %2422 = inttoptr i64 %2420 to i32*
  %2423 = load i32, i32* %2422, align 4
  %2424 = sext i32 %2423 to i64
  store i64 %2424, i64* %RCX, align 8, !tbaa !2428
  %2425 = shl nsw i64 %2424, 2
  %2426 = add nsw i64 %2425, -1328
  %2427 = add i64 %2426, %2414
  %2428 = add i64 %2413, 14
  store i64 %2428, i64* %PC, align 8
  %2429 = inttoptr i64 %2427 to i32*
  %2430 = load i32, i32* %2429, align 4
  %2431 = sub i32 %2418, %2430
  %2432 = icmp ult i32 %2418, %2430
  %2433 = zext i1 %2432 to i8
  store i8 %2433, i8* %16, align 1, !tbaa !2432
  %2434 = and i32 %2431, 255
  %2435 = tail call i32 @llvm.ctpop.i32(i32 %2434) #9
  %2436 = trunc i32 %2435 to i8
  %2437 = and i8 %2436, 1
  %2438 = xor i8 %2437, 1
  store i8 %2438, i8* %23, align 1, !tbaa !2446
  %2439 = xor i32 %2430, %2418
  %2440 = xor i32 %2439, %2431
  %2441 = lshr i32 %2440, 4
  %2442 = trunc i32 %2441 to i8
  %2443 = and i8 %2442, 1
  store i8 %2443, i8* %29, align 1, !tbaa !2447
  %2444 = icmp eq i32 %2431, 0
  %2445 = zext i1 %2444 to i8
  store i8 %2445, i8* %32, align 1, !tbaa !2448
  %2446 = lshr i32 %2431, 31
  %2447 = trunc i32 %2446 to i8
  store i8 %2447, i8* %35, align 1, !tbaa !2449
  %2448 = lshr i32 %2418, 31
  %2449 = lshr i32 %2430, 31
  %2450 = xor i32 %2449, %2448
  %2451 = xor i32 %2446, %2448
  %2452 = add nuw nsw i32 %2451, %2450
  %2453 = icmp eq i32 %2452, 2
  %2454 = zext i1 %2453 to i8
  store i8 %2454, i8* %41, align 1, !tbaa !2450
  %2455 = icmp ne i8 %2447, 0
  %2456 = xor i1 %2455, %2453
  %.demorgan276 = or i1 %2444, %2456
  %.v290 = select i1 %.demorgan276, i64 20, i64 193
  %2457 = add i64 %2413, %.v290
  store i64 %2457, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan276, label %block_400d17, label %block_400dc4

block_400cc2:                                     ; preds = %block_400cbb, %block_400ccc
  %2458 = phi i64 [ %.pre192, %block_400cbb ], [ %2405, %block_400ccc ]
  %2459 = load i64, i64* %RBP, align 8
  %2460 = add i64 %2459, -4
  %2461 = add i64 %2458, 4
  store i64 %2461, i64* %PC, align 8
  %2462 = inttoptr i64 %2460 to i32*
  %2463 = load i32, i32* %2462, align 4
  %2464 = add i32 %2463, -16
  %2465 = icmp ult i32 %2463, 16
  %2466 = zext i1 %2465 to i8
  store i8 %2466, i8* %16, align 1, !tbaa !2432
  %2467 = and i32 %2464, 255
  %2468 = tail call i32 @llvm.ctpop.i32(i32 %2467) #9
  %2469 = trunc i32 %2468 to i8
  %2470 = and i8 %2469, 1
  %2471 = xor i8 %2470, 1
  store i8 %2471, i8* %23, align 1, !tbaa !2446
  %2472 = xor i32 %2463, 16
  %2473 = xor i32 %2472, %2464
  %2474 = lshr i32 %2473, 4
  %2475 = trunc i32 %2474 to i8
  %2476 = and i8 %2475, 1
  store i8 %2476, i8* %29, align 1, !tbaa !2447
  %2477 = icmp eq i32 %2464, 0
  %2478 = zext i1 %2477 to i8
  store i8 %2478, i8* %32, align 1, !tbaa !2448
  %2479 = lshr i32 %2464, 31
  %2480 = trunc i32 %2479 to i8
  store i8 %2480, i8* %35, align 1, !tbaa !2449
  %2481 = lshr i32 %2463, 31
  %2482 = xor i32 %2479, %2481
  %2483 = add nuw nsw i32 %2482, %2481
  %2484 = icmp eq i32 %2483, 2
  %2485 = zext i1 %2484 to i8
  store i8 %2485, i8* %41, align 1, !tbaa !2450
  %2486 = icmp ne i8 %2480, 0
  %2487 = xor i1 %2486, %2484
  %.v289 = select i1 %2487, i64 10, i64 58
  %2488 = add i64 %2458, %.v289
  store i64 %2488, i64* %PC, align 8, !tbaa !2428
  br i1 %2487, label %block_400ccc, label %block_400cfc

block_4010c1:                                     ; preds = %block_4010ad
  %2489 = add i64 %2618, -1168
  store i64 %2489, i64* %RAX, align 8, !tbaa !2428
  %2490 = add i64 %2661, 11
  store i64 %2490, i64* %PC, align 8
  %2491 = load i32, i32* %2626, align 4
  %2492 = sext i32 %2491 to i64
  %2493 = shl nsw i64 %2492, 6
  store i64 %2493, i64* %RCX, align 8, !tbaa !2428
  %2494 = add i64 %2493, %2489
  store i64 %2494, i64* %RAX, align 8, !tbaa !2428
  %2495 = icmp ult i64 %2494, %2489
  %2496 = icmp ult i64 %2494, %2493
  %2497 = or i1 %2495, %2496
  %2498 = zext i1 %2497 to i8
  store i8 %2498, i8* %16, align 1, !tbaa !2432
  %2499 = trunc i64 %2494 to i32
  %2500 = and i32 %2499, 255
  %2501 = tail call i32 @llvm.ctpop.i32(i32 %2500) #9
  %2502 = trunc i32 %2501 to i8
  %2503 = and i8 %2502, 1
  %2504 = xor i8 %2503, 1
  store i8 %2504, i8* %23, align 1, !tbaa !2446
  %2505 = xor i64 %2489, %2494
  %2506 = lshr i64 %2505, 4
  %2507 = trunc i64 %2506 to i8
  %2508 = and i8 %2507, 1
  store i8 %2508, i8* %29, align 1, !tbaa !2447
  %2509 = icmp eq i64 %2494, 0
  %2510 = zext i1 %2509 to i8
  store i8 %2510, i8* %32, align 1, !tbaa !2448
  %2511 = lshr i64 %2494, 63
  %2512 = trunc i64 %2511 to i8
  store i8 %2512, i8* %35, align 1, !tbaa !2449
  %2513 = lshr i64 %2489, 63
  %2514 = lshr i64 %2492, 57
  %2515 = and i64 %2514, 1
  %2516 = xor i64 %2511, %2513
  %2517 = xor i64 %2511, %2515
  %2518 = add nuw nsw i64 %2516, %2517
  %2519 = icmp eq i64 %2518, 2
  %2520 = zext i1 %2519 to i8
  store i8 %2520, i8* %41, align 1, !tbaa !2450
  %2521 = add i64 %2661, 22
  store i64 %2521, i64* %PC, align 8
  %2522 = load i32, i32* %2621, align 4
  %2523 = sext i32 %2522 to i64
  store i64 %2523, i64* %RCX, align 8, !tbaa !2428
  %2524 = shl nsw i64 %2523, 2
  %2525 = add i64 %2524, %2494
  %2526 = add i64 %2661, 25
  store i64 %2526, i64* %PC, align 8
  %2527 = inttoptr i64 %2525 to i32*
  %2528 = load i32, i32* %2527, align 4
  %2529 = zext i32 %2528 to i64
  store i64 %2529, i64* %RDX, align 8, !tbaa !2428
  %2530 = add i64 %2661, 29
  store i64 %2530, i64* %PC, align 8
  %2531 = load i32, i32* %2621, align 4
  %2532 = sext i32 %2531 to i64
  store i64 %2532, i64* %RAX, align 8, !tbaa !2428
  %2533 = shl nsw i64 %2532, 2
  %2534 = add i64 %2618, -2688
  %2535 = add i64 %2534, %2533
  %2536 = add i64 %2661, 36
  store i64 %2536, i64* %PC, align 8
  %2537 = inttoptr i64 %2535 to i32*
  store i32 %2528, i32* %2537, align 4
  %2538 = load i64, i64* %RBP, align 8
  %2539 = add i64 %2538, -4
  %2540 = load i64, i64* %PC, align 8
  %2541 = add i64 %2540, 3
  store i64 %2541, i64* %PC, align 8
  %2542 = inttoptr i64 %2539 to i32*
  %2543 = load i32, i32* %2542, align 4
  %2544 = add i32 %2543, 1
  %2545 = zext i32 %2544 to i64
  store i64 %2545, i64* %RAX, align 8, !tbaa !2428
  %2546 = icmp eq i32 %2543, -1
  %2547 = icmp eq i32 %2544, 0
  %2548 = or i1 %2546, %2547
  %2549 = zext i1 %2548 to i8
  store i8 %2549, i8* %16, align 1, !tbaa !2432
  %2550 = and i32 %2544, 255
  %2551 = tail call i32 @llvm.ctpop.i32(i32 %2550) #9
  %2552 = trunc i32 %2551 to i8
  %2553 = and i8 %2552, 1
  %2554 = xor i8 %2553, 1
  store i8 %2554, i8* %23, align 1, !tbaa !2446
  %2555 = xor i32 %2544, %2543
  %2556 = lshr i32 %2555, 4
  %2557 = trunc i32 %2556 to i8
  %2558 = and i8 %2557, 1
  store i8 %2558, i8* %29, align 1, !tbaa !2447
  %2559 = zext i1 %2547 to i8
  store i8 %2559, i8* %32, align 1, !tbaa !2448
  %2560 = lshr i32 %2544, 31
  %2561 = trunc i32 %2560 to i8
  store i8 %2561, i8* %35, align 1, !tbaa !2449
  %2562 = lshr i32 %2543, 31
  %2563 = xor i32 %2560, %2562
  %2564 = add nuw nsw i32 %2563, %2560
  %2565 = icmp eq i32 %2564, 2
  %2566 = zext i1 %2565 to i8
  store i8 %2566, i8* %41, align 1, !tbaa !2450
  %2567 = add i64 %2540, 9
  store i64 %2567, i64* %PC, align 8
  store i32 %2544, i32* %2542, align 4
  %2568 = load i64, i64* %PC, align 8
  %2569 = add i64 %2568, -65
  store i64 %2569, i64* %PC, align 8, !tbaa !2428
  br label %block_4010ad

block_4011f3:                                     ; preds = %block_401104
  %2570 = add i64 %2967, -1492
  %2571 = add i64 %2996, 6
  store i64 %2571, i64* %PC, align 8
  %2572 = inttoptr i64 %2570 to i32*
  %2573 = load i32, i32* %2572, align 4
  %2574 = zext i32 %2573 to i64
  store i64 %2574, i64* %RAX, align 8, !tbaa !2428
  %2575 = add i64 %2967, -12
  %2576 = add i64 %2996, 10
  store i64 %2576, i64* %PC, align 8
  %2577 = inttoptr i64 %2575 to i32*
  %2578 = load i32, i32* %2577, align 4
  %2579 = sext i32 %2578 to i64
  store i64 %2579, i64* %RCX, align 8, !tbaa !2428
  %2580 = shl nsw i64 %2579, 2
  %2581 = add nsw i64 %2580, -1328
  %2582 = add i64 %2581, %2967
  %2583 = add i64 %2996, 17
  store i64 %2583, i64* %PC, align 8
  %2584 = inttoptr i64 %2582 to i32*
  %2585 = load i32, i32* %2584, align 4
  %2586 = sub i32 %2573, %2585
  %2587 = icmp ult i32 %2573, %2585
  %2588 = zext i1 %2587 to i8
  store i8 %2588, i8* %16, align 1, !tbaa !2432
  %2589 = and i32 %2586, 255
  %2590 = tail call i32 @llvm.ctpop.i32(i32 %2589) #9
  %2591 = trunc i32 %2590 to i8
  %2592 = and i8 %2591, 1
  %2593 = xor i8 %2592, 1
  store i8 %2593, i8* %23, align 1, !tbaa !2446
  %2594 = xor i32 %2585, %2573
  %2595 = xor i32 %2594, %2586
  %2596 = lshr i32 %2595, 4
  %2597 = trunc i32 %2596 to i8
  %2598 = and i8 %2597, 1
  store i8 %2598, i8* %29, align 1, !tbaa !2447
  %2599 = icmp eq i32 %2586, 0
  %2600 = zext i1 %2599 to i8
  store i8 %2600, i8* %32, align 1, !tbaa !2448
  %2601 = lshr i32 %2586, 31
  %2602 = trunc i32 %2601 to i8
  store i8 %2602, i8* %35, align 1, !tbaa !2449
  %2603 = lshr i32 %2573, 31
  %2604 = lshr i32 %2585, 31
  %2605 = xor i32 %2604, %2603
  %2606 = xor i32 %2601, %2603
  %2607 = add nuw nsw i32 %2606, %2605
  %2608 = icmp eq i32 %2607, 2
  %2609 = zext i1 %2608 to i8
  store i8 %2609, i8* %41, align 1, !tbaa !2450
  %.v263 = select i1 %2599, i64 23, i64 1296
  %2610 = add i64 %2996, %.v263
  %2611 = add i64 %2610, 7
  store i64 %2611, i64* %PC, align 8
  br i1 %2599, label %block_40120a, label %block_401703

block_400cbb:                                     ; preds = %block_400c9a, %block_400c7a
  %2612 = phi i64 [ %.pre191, %block_400c9a ], [ %3225, %block_400c7a ]
  %2613 = load i64, i64* %RBP, align 8
  %2614 = add i64 %2613, -4
  %2615 = add i64 %2612, 7
  store i64 %2615, i64* %PC, align 8
  %2616 = inttoptr i64 %2614 to i32*
  store i32 0, i32* %2616, align 4
  %.pre192 = load i64, i64* %PC, align 8
  br label %block_400cc2

block_4010ad:                                     ; preds = %block_4010a6, %block_4010c1
  %2617 = phi i64 [ %.pre209, %block_4010a6 ], [ %2569, %block_4010c1 ]
  %2618 = load i64, i64* %RBP, align 8
  %2619 = add i64 %2618, -4
  %2620 = add i64 %2617, 3
  store i64 %2620, i64* %PC, align 8
  %2621 = inttoptr i64 %2619 to i32*
  %2622 = load i32, i32* %2621, align 4
  %2623 = zext i32 %2622 to i64
  store i64 %2623, i64* %RAX, align 8, !tbaa !2428
  %2624 = add i64 %2618, -12
  %2625 = add i64 %2617, 7
  store i64 %2625, i64* %PC, align 8
  %2626 = inttoptr i64 %2624 to i32*
  %2627 = load i32, i32* %2626, align 4
  %2628 = sext i32 %2627 to i64
  store i64 %2628, i64* %RCX, align 8, !tbaa !2428
  %2629 = shl nsw i64 %2628, 2
  %2630 = add nsw i64 %2629, -1328
  %2631 = add i64 %2630, %2618
  %2632 = add i64 %2617, 14
  store i64 %2632, i64* %PC, align 8
  %2633 = inttoptr i64 %2631 to i32*
  %2634 = load i32, i32* %2633, align 4
  %2635 = sub i32 %2622, %2634
  %2636 = icmp ult i32 %2622, %2634
  %2637 = zext i1 %2636 to i8
  store i8 %2637, i8* %16, align 1, !tbaa !2432
  %2638 = and i32 %2635, 255
  %2639 = tail call i32 @llvm.ctpop.i32(i32 %2638) #9
  %2640 = trunc i32 %2639 to i8
  %2641 = and i8 %2640, 1
  %2642 = xor i8 %2641, 1
  store i8 %2642, i8* %23, align 1, !tbaa !2446
  %2643 = xor i32 %2634, %2622
  %2644 = xor i32 %2643, %2635
  %2645 = lshr i32 %2644, 4
  %2646 = trunc i32 %2645 to i8
  %2647 = and i8 %2646, 1
  store i8 %2647, i8* %29, align 1, !tbaa !2447
  %2648 = icmp eq i32 %2635, 0
  %2649 = zext i1 %2648 to i8
  store i8 %2649, i8* %32, align 1, !tbaa !2448
  %2650 = lshr i32 %2635, 31
  %2651 = trunc i32 %2650 to i8
  store i8 %2651, i8* %35, align 1, !tbaa !2449
  %2652 = lshr i32 %2622, 31
  %2653 = lshr i32 %2634, 31
  %2654 = xor i32 %2653, %2652
  %2655 = xor i32 %2650, %2652
  %2656 = add nuw nsw i32 %2655, %2654
  %2657 = icmp eq i32 %2656, 2
  %2658 = zext i1 %2657 to i8
  store i8 %2658, i8* %41, align 1, !tbaa !2450
  %2659 = icmp ne i8 %2651, 0
  %2660 = xor i1 %2659, %2657
  %.demorgan260 = or i1 %2648, %2660
  %.v294 = select i1 %.demorgan260, i64 20, i64 70
  %2661 = add i64 %2617, %.v294
  store i64 %2661, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan260, label %block_4010c1, label %block_4010f3

block_400bc7:                                     ; preds = %block_400bab
  %2662 = load i64, i64* %RBP, align 8
  %2663 = add i64 %2662, -16
  %2664 = add i64 %6199, 4
  store i64 %2664, i64* %PC, align 8
  %2665 = inttoptr i64 %2663 to i32*
  %2666 = load i32, i32* %2665, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %2667 = and i32 %2666, 255
  %2668 = tail call i32 @llvm.ctpop.i32(i32 %2667) #9
  %2669 = trunc i32 %2668 to i8
  %2670 = and i8 %2669, 1
  %2671 = xor i8 %2670, 1
  store i8 %2671, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %2672 = icmp eq i32 %2666, 0
  %2673 = zext i1 %2672 to i8
  store i8 %2673, i8* %32, align 1, !tbaa !2448
  %2674 = lshr i32 %2666, 31
  %2675 = trunc i32 %2674 to i8
  store i8 %2675, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %2676 = xor i1 %2672, true
  %2677 = icmp eq i8 %2675, 0
  %2678 = and i1 %2677, %2676
  %2679 = zext i1 %2678 to i8
  store i8 %2679, i8* %AL, align 1, !tbaa !2451
  %2680 = add i64 %2662, -2693
  %2681 = add i64 %6199, 13
  store i64 %2681, i64* %PC, align 8
  %2682 = inttoptr i64 %2680 to i8*
  store i8 %2679, i8* %2682, align 1
  %.pre186 = load i64, i64* %PC, align 8
  br label %block_400bd4

block_4014a8:                                     ; preds = %block_401464
  %2683 = add i64 %3709, 15
  store i64 %2683, i64* %PC, align 8
  %2684 = inttoptr i64 %3714 to i32*
  store i32 0, i32* %2684, align 4
  %.pre250 = load i64, i64* %PC, align 8
  br label %block_4014b7

block_400e9e:                                     ; preds = %block_400e87
  %2685 = add i64 %2946, -1488
  %2686 = add i64 %2916, 17
  store i64 %2686, i64* %PC, align 8
  %2687 = inttoptr i64 %2685 to i32*
  %2688 = load i32, i32* %2687, align 4
  %2689 = sext i32 %2688 to i64
  store i64 %2689, i64* %RCX, align 8, !tbaa !2428
  %2690 = shl nsw i64 %2689, 2
  %2691 = add i64 %2690, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %2692 = add i64 %2916, 24
  store i64 %2692, i64* %PC, align 8
  %2693 = inttoptr i64 %2691 to i32*
  %2694 = load i32, i32* %2693, align 4
  %2695 = zext i32 %2694 to i64
  store i64 %2695, i64* %RAX, align 8, !tbaa !2428
  %2696 = add i64 %2944, -12
  %2697 = add i64 %2916, 27
  store i64 %2697, i64* %PC, align 8
  %2698 = inttoptr i64 %2696 to i32*
  %2699 = load i32, i32* %2698, align 4
  %2700 = add i32 %2699, 1
  %2701 = zext i32 %2700 to i64
  store i64 %2701, i64* %RDX, align 8, !tbaa !2428
  %2702 = icmp eq i32 %2699, -1
  %2703 = icmp eq i32 %2700, 0
  %2704 = or i1 %2702, %2703
  %2705 = zext i1 %2704 to i8
  store i8 %2705, i8* %16, align 1, !tbaa !2432
  %2706 = and i32 %2700, 255
  %2707 = tail call i32 @llvm.ctpop.i32(i32 %2706) #9
  %2708 = trunc i32 %2707 to i8
  %2709 = and i8 %2708, 1
  %2710 = xor i8 %2709, 1
  store i8 %2710, i8* %23, align 1, !tbaa !2446
  %2711 = xor i32 %2700, %2699
  %2712 = lshr i32 %2711, 4
  %2713 = trunc i32 %2712 to i8
  %2714 = and i8 %2713, 1
  store i8 %2714, i8* %29, align 1, !tbaa !2447
  %2715 = zext i1 %2703 to i8
  store i8 %2715, i8* %32, align 1, !tbaa !2448
  %2716 = lshr i32 %2700, 31
  %2717 = trunc i32 %2716 to i8
  store i8 %2717, i8* %35, align 1, !tbaa !2449
  %2718 = lshr i32 %2699, 31
  %2719 = xor i32 %2716, %2718
  %2720 = add nuw nsw i32 %2719, %2716
  %2721 = icmp eq i32 %2720, 2
  %2722 = zext i1 %2721 to i8
  store i8 %2722, i8* %41, align 1, !tbaa !2450
  %2723 = sext i32 %2700 to i64
  store i64 %2723, i64* %RCX, align 8, !tbaa !2428
  %2724 = shl nsw i64 %2723, 2
  %2725 = add nsw i64 %2724, -1248
  %2726 = add i64 %2725, %2944
  %2727 = add i64 %2916, 40
  store i64 %2727, i64* %PC, align 8
  %2728 = inttoptr i64 %2726 to i32*
  store i32 %2694, i32* %2728, align 4
  %2729 = load i64, i64* %PC, align 8
  %2730 = add i64 %2729, 25
  store i64 %2730, i64* %PC, align 8, !tbaa !2428
  br label %block_400edf

block_4010a6:                                     ; preds = %block_40104e
  %2731 = add i64 %4964, 7
  store i64 %2731, i64* %PC, align 8
  store i32 1, i32* %4924, align 4
  %.pre209 = load i64, i64* %PC, align 8
  br label %block_4010ad

block_40129b:                                     ; preds = %block_401237, %block_401225
  %2732 = phi i64 [ %5274, %block_401225 ], [ %5188, %block_401237 ]
  %2733 = phi i64 [ %5577, %block_401225 ], [ %.pre220, %block_401237 ]
  %2734 = add i64 %2733, -4
  %2735 = add i64 %2732, 4
  store i64 %2735, i64* %PC, align 8
  %2736 = inttoptr i64 %2734 to i32*
  %2737 = load i32, i32* %2736, align 4
  %2738 = sext i32 %2737 to i64
  store i64 %2738, i64* %RAX, align 8, !tbaa !2428
  %2739 = shl nsw i64 %2738, 2
  %2740 = add i64 %2733, -1488
  %2741 = add i64 %2740, %2739
  %2742 = add i64 %2732, 12
  store i64 %2742, i64* %PC, align 8
  %2743 = inttoptr i64 %2741 to i32*
  %2744 = load i32, i32* %2743, align 4
  %2745 = add i32 %2744, 1
  %2746 = icmp ne i32 %2744, -1
  %2747 = zext i1 %2746 to i8
  store i8 %2747, i8* %16, align 1, !tbaa !2432
  %2748 = and i32 %2745, 255
  %2749 = tail call i32 @llvm.ctpop.i32(i32 %2748) #9
  %2750 = trunc i32 %2749 to i8
  %2751 = and i8 %2750, 1
  %2752 = xor i8 %2751, 1
  store i8 %2752, i8* %23, align 1, !tbaa !2446
  %2753 = xor i32 %2744, 16
  %2754 = xor i32 %2753, %2745
  %2755 = lshr i32 %2754, 4
  %2756 = trunc i32 %2755 to i8
  %2757 = and i8 %2756, 1
  store i8 %2757, i8* %29, align 1, !tbaa !2447
  %2758 = icmp eq i32 %2745, 0
  %2759 = zext i1 %2758 to i8
  store i8 %2759, i8* %32, align 1, !tbaa !2448
  %2760 = lshr i32 %2745, 31
  %2761 = trunc i32 %2760 to i8
  store i8 %2761, i8* %35, align 1, !tbaa !2449
  %2762 = lshr i32 %2744, 31
  %2763 = xor i32 %2762, 1
  %2764 = xor i32 %2760, %2762
  %2765 = add nuw nsw i32 %2764, %2763
  %2766 = icmp eq i32 %2765, 2
  %2767 = zext i1 %2766 to i8
  store i8 %2767, i8* %41, align 1, !tbaa !2450
  %.v308 = select i1 %2758, i64 85, i64 18
  %2768 = add i64 %2732, %.v308
  store i64 %2768, i64* %PC, align 8, !tbaa !2428
  br i1 %2758, label %block_4012f0, label %block_4012ad

block_401592:                                     ; preds = %block_401503
  %2769 = add i64 %4638, -4
  %2770 = add i64 %4681, 4
  store i64 %2770, i64* %PC, align 8
  %2771 = inttoptr i64 %2769 to i32*
  %2772 = load i32, i32* %2771, align 4
  %2773 = sext i32 %2772 to i64
  store i64 %2773, i64* %RAX, align 8, !tbaa !2428
  %2774 = shl nsw i64 %2773, 2
  %2775 = add i64 %4638, -1568
  %2776 = add i64 %2775, %2774
  %2777 = add i64 %4681, 12
  store i64 %2777, i64* %PC, align 8
  %2778 = inttoptr i64 %2776 to i32*
  %2779 = load i32, i32* %2778, align 4
  %2780 = sext i32 %2779 to i64
  store i64 %2780, i64* %RAX, align 8, !tbaa !2428
  %2781 = shl nsw i64 %2780, 2
  %2782 = add i64 %4638, -2640
  %2783 = add i64 %2782, %2781
  %2784 = add i64 %4681, 20
  store i64 %2784, i64* %PC, align 8
  %2785 = inttoptr i64 %2783 to i32*
  %2786 = load i32, i32* %2785, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %2787 = and i32 %2786, 255
  %2788 = tail call i32 @llvm.ctpop.i32(i32 %2787) #9
  %2789 = trunc i32 %2788 to i8
  %2790 = and i8 %2789, 1
  %2791 = xor i8 %2790, 1
  store i8 %2791, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %2792 = icmp eq i32 %2786, 0
  %2793 = zext i1 %2792 to i8
  store i8 %2793, i8* %32, align 1, !tbaa !2448
  %2794 = lshr i32 %2786, 31
  %2795 = trunc i32 %2794 to i8
  store i8 %2795, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %.v299 = select i1 %2792, i64 345, i64 26
  %2796 = add i64 %4681, %.v299
  store i64 %2796, i64* %PC, align 8, !tbaa !2428
  br i1 %2792, label %block_4016eb, label %block_4015ac

block_400d17:                                     ; preds = %block_400d03
  %2797 = add i64 %2414, -1168
  store i64 %2797, i64* %RAX, align 8, !tbaa !2428
  %2798 = add i64 %2457, 11
  store i64 %2798, i64* %PC, align 8
  %2799 = load i32, i32* %2422, align 4
  %2800 = sext i32 %2799 to i64
  %2801 = shl nsw i64 %2800, 6
  store i64 %2801, i64* %RCX, align 8, !tbaa !2428
  %2802 = add i64 %2801, %2797
  store i64 %2802, i64* %RAX, align 8, !tbaa !2428
  %2803 = icmp ult i64 %2802, %2797
  %2804 = icmp ult i64 %2802, %2801
  %2805 = or i1 %2803, %2804
  %2806 = zext i1 %2805 to i8
  store i8 %2806, i8* %16, align 1, !tbaa !2432
  %2807 = trunc i64 %2802 to i32
  %2808 = and i32 %2807, 255
  %2809 = tail call i32 @llvm.ctpop.i32(i32 %2808) #9
  %2810 = trunc i32 %2809 to i8
  %2811 = and i8 %2810, 1
  %2812 = xor i8 %2811, 1
  store i8 %2812, i8* %23, align 1, !tbaa !2446
  %2813 = xor i64 %2797, %2802
  %2814 = lshr i64 %2813, 4
  %2815 = trunc i64 %2814 to i8
  %2816 = and i8 %2815, 1
  store i8 %2816, i8* %29, align 1, !tbaa !2447
  %2817 = icmp eq i64 %2802, 0
  %2818 = zext i1 %2817 to i8
  store i8 %2818, i8* %32, align 1, !tbaa !2448
  %2819 = lshr i64 %2802, 63
  %2820 = trunc i64 %2819 to i8
  store i8 %2820, i8* %35, align 1, !tbaa !2449
  %2821 = lshr i64 %2797, 63
  %2822 = lshr i64 %2800, 57
  %2823 = and i64 %2822, 1
  %2824 = xor i64 %2819, %2821
  %2825 = xor i64 %2819, %2823
  %2826 = add nuw nsw i64 %2824, %2825
  %2827 = icmp eq i64 %2826, 2
  %2828 = zext i1 %2827 to i8
  store i8 %2828, i8* %41, align 1, !tbaa !2450
  %2829 = add i64 %2457, 22
  store i64 %2829, i64* %PC, align 8
  %2830 = load i32, i32* %2417, align 4
  %2831 = sext i32 %2830 to i64
  store i64 %2831, i64* %RCX, align 8, !tbaa !2428
  %2832 = shl nsw i64 %2831, 2
  %2833 = add i64 %2832, %2802
  %2834 = add i64 %2457, 26
  store i64 %2834, i64* %PC, align 8
  %2835 = inttoptr i64 %2833 to i32*
  %2836 = load i32, i32* %2835, align 4
  %2837 = add i32 %2836, 1
  %2838 = icmp ne i32 %2836, -1
  %2839 = zext i1 %2838 to i8
  store i8 %2839, i8* %16, align 1, !tbaa !2432
  %2840 = and i32 %2837, 255
  %2841 = tail call i32 @llvm.ctpop.i32(i32 %2840) #9
  %2842 = trunc i32 %2841 to i8
  %2843 = and i8 %2842, 1
  %2844 = xor i8 %2843, 1
  store i8 %2844, i8* %23, align 1, !tbaa !2446
  %2845 = xor i32 %2836, 16
  %2846 = xor i32 %2845, %2837
  %2847 = lshr i32 %2846, 4
  %2848 = trunc i32 %2847 to i8
  %2849 = and i8 %2848, 1
  store i8 %2849, i8* %29, align 1, !tbaa !2447
  %2850 = icmp eq i32 %2837, 0
  %2851 = zext i1 %2850 to i8
  store i8 %2851, i8* %32, align 1, !tbaa !2448
  %2852 = lshr i32 %2837, 31
  %2853 = trunc i32 %2852 to i8
  store i8 %2853, i8* %35, align 1, !tbaa !2449
  %2854 = lshr i32 %2836, 31
  %2855 = xor i32 %2854, 1
  %2856 = xor i32 %2852, %2854
  %2857 = add nuw nsw i32 %2856, %2855
  %2858 = icmp eq i32 %2857, 2
  %2859 = zext i1 %2858 to i8
  store i8 %2859, i8* %41, align 1, !tbaa !2450
  %.v318 = select i1 %2850, i64 154, i64 32
  %2860 = add i64 %2457, %.v318
  store i64 %2860, i64* %PC, align 8, !tbaa !2428
  br i1 %2850, label %block_400db1, label %block_400d37

block_400e87:                                     ; preds = %block_400e5a
  %2861 = add i64 %3899, 3
  store i64 %2861, i64* %PC, align 8
  %2862 = load i32, i32* %3873, align 4
  %2863 = add i32 %2862, 1
  %2864 = zext i32 %2863 to i64
  store i64 %2864, i64* %RAX, align 8, !tbaa !2428
  %2865 = icmp eq i32 %2862, -1
  %2866 = icmp eq i32 %2863, 0
  %2867 = or i1 %2865, %2866
  %2868 = zext i1 %2867 to i8
  store i8 %2868, i8* %16, align 1, !tbaa !2432
  %2869 = and i32 %2863, 255
  %2870 = tail call i32 @llvm.ctpop.i32(i32 %2869) #9
  %2871 = trunc i32 %2870 to i8
  %2872 = and i8 %2871, 1
  %2873 = xor i8 %2872, 1
  store i8 %2873, i8* %23, align 1, !tbaa !2446
  %2874 = xor i32 %2863, %2862
  %2875 = lshr i32 %2874, 4
  %2876 = trunc i32 %2875 to i8
  %2877 = and i8 %2876, 1
  store i8 %2877, i8* %29, align 1, !tbaa !2447
  %2878 = zext i1 %2866 to i8
  store i8 %2878, i8* %32, align 1, !tbaa !2448
  %2879 = lshr i32 %2863, 31
  %2880 = trunc i32 %2879 to i8
  store i8 %2880, i8* %35, align 1, !tbaa !2449
  %2881 = lshr i32 %2862, 31
  %2882 = xor i32 %2879, %2881
  %2883 = add nuw nsw i32 %2882, %2879
  %2884 = icmp eq i32 %2883, 2
  %2885 = zext i1 %2884 to i8
  store i8 %2885, i8* %41, align 1, !tbaa !2450
  %2886 = sext i32 %2863 to i64
  store i64 %2886, i64* %RCX, align 8, !tbaa !2428
  %2887 = shl nsw i64 %2886, 2
  %2888 = add nsw i64 %2887, -1488
  %2889 = add i64 %2888, %3869
  %2890 = add i64 %3899, 17
  store i64 %2890, i64* %PC, align 8
  %2891 = inttoptr i64 %2889 to i32*
  %2892 = load i32, i32* %2891, align 4
  %2893 = add i32 %2892, 1
  %2894 = icmp ne i32 %2892, -1
  %2895 = zext i1 %2894 to i8
  store i8 %2895, i8* %16, align 1, !tbaa !2432
  %2896 = and i32 %2893, 255
  %2897 = tail call i32 @llvm.ctpop.i32(i32 %2896) #9
  %2898 = trunc i32 %2897 to i8
  %2899 = and i8 %2898, 1
  %2900 = xor i8 %2899, 1
  store i8 %2900, i8* %23, align 1, !tbaa !2446
  %2901 = xor i32 %2892, 16
  %2902 = xor i32 %2901, %2893
  %2903 = lshr i32 %2902, 4
  %2904 = trunc i32 %2903 to i8
  %2905 = and i8 %2904, 1
  store i8 %2905, i8* %29, align 1, !tbaa !2447
  %2906 = icmp eq i32 %2893, 0
  %2907 = zext i1 %2906 to i8
  store i8 %2907, i8* %32, align 1, !tbaa !2448
  %2908 = lshr i32 %2893, 31
  %2909 = trunc i32 %2908 to i8
  store i8 %2909, i8* %35, align 1, !tbaa !2449
  %2910 = lshr i32 %2892, 31
  %2911 = xor i32 %2910, 1
  %2912 = xor i32 %2908, %2910
  %2913 = add nuw nsw i32 %2912, %2911
  %2914 = icmp eq i32 %2913, 2
  %2915 = zext i1 %2914 to i8
  store i8 %2915, i8* %41, align 1, !tbaa !2450
  %.v272 = select i1 %2906, i64 68, i64 23
  %2916 = add i64 %3899, %.v272
  %2917 = add i64 %2916, 3
  store i64 %2917, i64* %PC, align 8
  %2918 = load i32, i32* %3873, align 4
  %2919 = add i32 %2918, 1
  %2920 = zext i32 %2919 to i64
  store i64 %2920, i64* %RAX, align 8, !tbaa !2428
  %2921 = icmp eq i32 %2918, -1
  %2922 = icmp eq i32 %2919, 0
  %2923 = or i1 %2921, %2922
  %2924 = zext i1 %2923 to i8
  store i8 %2924, i8* %16, align 1, !tbaa !2432
  %2925 = and i32 %2919, 255
  %2926 = tail call i32 @llvm.ctpop.i32(i32 %2925) #9
  %2927 = trunc i32 %2926 to i8
  %2928 = and i8 %2927, 1
  %2929 = xor i8 %2928, 1
  store i8 %2929, i8* %23, align 1, !tbaa !2446
  %2930 = xor i32 %2919, %2918
  %2931 = lshr i32 %2930, 4
  %2932 = trunc i32 %2931 to i8
  %2933 = and i8 %2932, 1
  store i8 %2933, i8* %29, align 1, !tbaa !2447
  %2934 = zext i1 %2922 to i8
  store i8 %2934, i8* %32, align 1, !tbaa !2448
  %2935 = lshr i32 %2919, 31
  %2936 = trunc i32 %2935 to i8
  store i8 %2936, i8* %35, align 1, !tbaa !2449
  %2937 = lshr i32 %2918, 31
  %2938 = xor i32 %2935, %2937
  %2939 = add nuw nsw i32 %2938, %2935
  %2940 = icmp eq i32 %2939, 2
  %2941 = zext i1 %2940 to i8
  store i8 %2941, i8* %41, align 1, !tbaa !2450
  %2942 = add i64 %2916, 9
  store i64 %2942, i64* %PC, align 8
  %2943 = sext i32 %2919 to i64
  store i64 %2943, i64* %RCX, align 8, !tbaa !2428
  %2944 = load i64, i64* %RBP, align 8
  %2945 = shl nsw i64 %2943, 2
  %2946 = add i64 %2944, %2945
  br i1 %2906, label %block_400ecb, label %block_400e9e

block_401485:                                     ; preds = %block_401464
  %2947 = add i64 %3709, 12
  store i64 %2947, i64* %PC, align 8
  %2948 = inttoptr i64 %3714 to i32*
  %2949 = load i32, i32* %2948, align 4
  %2950 = sext i32 %2949 to i64
  store i64 %2950, i64* %RAX, align 8, !tbaa !2428
  %2951 = shl nsw i64 %2950, 2
  %2952 = add i64 %2951, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %2953 = add i64 %3709, 19
  store i64 %2953, i64* %PC, align 8
  %2954 = inttoptr i64 %2952 to i32*
  %2955 = load i32, i32* %2954, align 4
  %2956 = zext i32 %2955 to i64
  store i64 %2956, i64* %RCX, align 8, !tbaa !2428
  %2957 = add i64 %3709, 23
  store i64 %2957, i64* %PC, align 8
  %2958 = load i32, i32* %3678, align 4
  %2959 = sext i32 %2958 to i64
  store i64 %2959, i64* %RAX, align 8, !tbaa !2428
  %2960 = shl nsw i64 %2959, 2
  %2961 = add i64 %2960, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %2962 = add i64 %3709, 30
  store i64 %2962, i64* %PC, align 8
  %2963 = inttoptr i64 %2961 to i32*
  store i32 %2955, i32* %2963, align 4
  %2964 = load i64, i64* %PC, align 8
  %2965 = add i64 %2964, 20
  store i64 %2965, i64* %PC, align 8, !tbaa !2428
  br label %block_4014b7

block_401104:                                     ; preds = %block_4011e0, %block_4010f3
  %2966 = phi i64 [ %.pre210, %block_4010f3 ], [ %3360, %block_4011e0 ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.31, %block_4010f3 ], [ %MEMORY.15, %block_4011e0 ]
  %2967 = load i64, i64* %RBP, align 8
  %2968 = add i64 %2967, -4
  %2969 = add i64 %2966, 7
  store i64 %2969, i64* %PC, align 8
  %2970 = inttoptr i64 %2968 to i32*
  %2971 = load i32, i32* %2970, align 4
  %2972 = add i32 %2971, -255
  %2973 = icmp ult i32 %2971, 255
  %2974 = zext i1 %2973 to i8
  store i8 %2974, i8* %16, align 1, !tbaa !2432
  %2975 = and i32 %2972, 255
  %2976 = tail call i32 @llvm.ctpop.i32(i32 %2975) #9
  %2977 = trunc i32 %2976 to i8
  %2978 = and i8 %2977, 1
  %2979 = xor i8 %2978, 1
  store i8 %2979, i8* %23, align 1, !tbaa !2446
  %2980 = xor i32 %2971, 16
  %2981 = xor i32 %2980, %2972
  %2982 = lshr i32 %2981, 4
  %2983 = trunc i32 %2982 to i8
  %2984 = and i8 %2983, 1
  store i8 %2984, i8* %29, align 1, !tbaa !2447
  %2985 = icmp eq i32 %2972, 0
  %2986 = zext i1 %2985 to i8
  store i8 %2986, i8* %32, align 1, !tbaa !2448
  %2987 = lshr i32 %2972, 31
  %2988 = trunc i32 %2987 to i8
  store i8 %2988, i8* %35, align 1, !tbaa !2449
  %2989 = lshr i32 %2971, 31
  %2990 = xor i32 %2987, %2989
  %2991 = add nuw nsw i32 %2990, %2989
  %2992 = icmp eq i32 %2991, 2
  %2993 = zext i1 %2992 to i8
  store i8 %2993, i8* %41, align 1, !tbaa !2450
  %2994 = icmp ne i8 %2988, 0
  %2995 = xor i1 %2994, %2992
  %.demorgan261 = or i1 %2985, %2995
  %.v264 = select i1 %.demorgan261, i64 13, i64 239
  %2996 = add i64 %2966, %.v264
  store i64 %2996, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan261, label %block_401111, label %block_4011f3

block_400a7e:                                     ; preds = %block_400a74
  %2997 = add i64 %3256, 4
  store i64 %2997, i64* %PC, align 8
  %2998 = load i32, i32* %3230, align 4
  %2999 = sext i32 %2998 to i64
  store i64 %2999, i64* %RAX, align 8, !tbaa !2428
  %3000 = shl nsw i64 %2999, 2
  %3001 = add i64 %3227, -1168
  %3002 = add i64 %3001, %3000
  %3003 = add i64 %3256, 15
  store i64 %3003, i64* %PC, align 8
  %3004 = inttoptr i64 %3002 to i32*
  store i32 -1, i32* %3004, align 4
  %3005 = load i64, i64* %RBP, align 8
  %3006 = add i64 %3005, -4
  %3007 = load i64, i64* %PC, align 8
  %3008 = add i64 %3007, 4
  store i64 %3008, i64* %PC, align 8
  %3009 = inttoptr i64 %3006 to i32*
  %3010 = load i32, i32* %3009, align 4
  %3011 = sext i32 %3010 to i64
  store i64 %3011, i64* %RAX, align 8, !tbaa !2428
  %3012 = shl nsw i64 %3011, 2
  %3013 = add i64 %3005, -1104
  %3014 = add i64 %3013, %3012
  %3015 = add i64 %3007, 15
  store i64 %3015, i64* %PC, align 8
  %3016 = inttoptr i64 %3014 to i32*
  store i32 0, i32* %3016, align 4
  %3017 = load i64, i64* %RBP, align 8
  %3018 = add i64 %3017, -4
  %3019 = load i64, i64* %PC, align 8
  %3020 = add i64 %3019, 3
  store i64 %3020, i64* %PC, align 8
  %3021 = inttoptr i64 %3018 to i32*
  %3022 = load i32, i32* %3021, align 4
  %3023 = add i32 %3022, 1
  %3024 = zext i32 %3023 to i64
  store i64 %3024, i64* %RAX, align 8, !tbaa !2428
  %3025 = icmp eq i32 %3022, -1
  %3026 = icmp eq i32 %3023, 0
  %3027 = or i1 %3025, %3026
  %3028 = zext i1 %3027 to i8
  store i8 %3028, i8* %16, align 1, !tbaa !2432
  %3029 = and i32 %3023, 255
  %3030 = tail call i32 @llvm.ctpop.i32(i32 %3029) #9
  %3031 = trunc i32 %3030 to i8
  %3032 = and i8 %3031, 1
  %3033 = xor i8 %3032, 1
  store i8 %3033, i8* %23, align 1, !tbaa !2446
  %3034 = xor i32 %3023, %3022
  %3035 = lshr i32 %3034, 4
  %3036 = trunc i32 %3035 to i8
  %3037 = and i8 %3036, 1
  store i8 %3037, i8* %29, align 1, !tbaa !2447
  %3038 = zext i1 %3026 to i8
  store i8 %3038, i8* %32, align 1, !tbaa !2448
  %3039 = lshr i32 %3023, 31
  %3040 = trunc i32 %3039 to i8
  store i8 %3040, i8* %35, align 1, !tbaa !2449
  %3041 = lshr i32 %3022, 31
  %3042 = xor i32 %3039, %3041
  %3043 = add nuw nsw i32 %3042, %3039
  %3044 = icmp eq i32 %3043, 2
  %3045 = zext i1 %3044 to i8
  store i8 %3045, i8* %41, align 1, !tbaa !2450
  %3046 = add i64 %3019, 9
  store i64 %3046, i64* %PC, align 8
  store i32 %3023, i32* %3021, align 4
  %3047 = load i64, i64* %PC, align 8
  %3048 = add i64 %3047, -49
  store i64 %3048, i64* %PC, align 8, !tbaa !2428
  br label %block_400a74

block_4014d1:                                     ; preds = %block_4014ca, %block_4016eb
  %3049 = phi i64 [ %.pre230, %block_4014ca ], [ %2147, %block_4016eb ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.47, %block_4014ca ], [ %MEMORY.17, %block_4016eb ]
  %3050 = load i64, i64* %RBP, align 8
  %3051 = add i64 %3050, -4
  %3052 = add i64 %3049, 3
  store i64 %3052, i64* %PC, align 8
  %3053 = inttoptr i64 %3051 to i32*
  %3054 = load i32, i32* %3053, align 4
  %3055 = zext i32 %3054 to i64
  store i64 %3055, i64* %RAX, align 8, !tbaa !2428
  %3056 = add i64 %3050, -12
  %3057 = add i64 %3049, 7
  store i64 %3057, i64* %PC, align 8
  %3058 = inttoptr i64 %3056 to i32*
  %3059 = load i32, i32* %3058, align 4
  %3060 = sext i32 %3059 to i64
  store i64 %3060, i64* %RCX, align 8, !tbaa !2428
  %3061 = shl nsw i64 %3060, 2
  %3062 = add nsw i64 %3061, -1328
  %3063 = add i64 %3062, %3050
  %3064 = add i64 %3049, 14
  store i64 %3064, i64* %PC, align 8
  %3065 = inttoptr i64 %3063 to i32*
  %3066 = load i32, i32* %3065, align 4
  %3067 = sub i32 %3054, %3066
  %3068 = icmp ult i32 %3054, %3066
  %3069 = zext i1 %3068 to i8
  store i8 %3069, i8* %16, align 1, !tbaa !2432
  %3070 = and i32 %3067, 255
  %3071 = tail call i32 @llvm.ctpop.i32(i32 %3070) #9
  %3072 = trunc i32 %3071 to i8
  %3073 = and i8 %3072, 1
  %3074 = xor i8 %3073, 1
  store i8 %3074, i8* %23, align 1, !tbaa !2446
  %3075 = xor i32 %3066, %3054
  %3076 = xor i32 %3075, %3067
  %3077 = lshr i32 %3076, 4
  %3078 = trunc i32 %3077 to i8
  %3079 = and i8 %3078, 1
  store i8 %3079, i8* %29, align 1, !tbaa !2447
  %3080 = icmp eq i32 %3067, 0
  %3081 = zext i1 %3080 to i8
  store i8 %3081, i8* %32, align 1, !tbaa !2448
  %3082 = lshr i32 %3067, 31
  %3083 = trunc i32 %3082 to i8
  store i8 %3083, i8* %35, align 1, !tbaa !2449
  %3084 = lshr i32 %3054, 31
  %3085 = lshr i32 %3066, 31
  %3086 = xor i32 %3085, %3084
  %3087 = xor i32 %3082, %3084
  %3088 = add nuw nsw i32 %3087, %3086
  %3089 = icmp eq i32 %3088, 2
  %3090 = zext i1 %3089 to i8
  store i8 %3090, i8* %41, align 1, !tbaa !2450
  %3091 = icmp ne i8 %3083, 0
  %3092 = xor i1 %3091, %3089
  %.v297 = select i1 %3092, i64 20, i64 557
  %3093 = add i64 %3049, %.v297
  store i64 %3093, i64* %PC, align 8, !tbaa !2428
  br i1 %3092, label %block_4014e5, label %block_401773.loopexit

block_400c56:                                     ; preds = %block_400be2, %block_400c51
  %3094 = phi i64 [ %396, %block_400be2 ], [ %121, %block_400c51 ]
  %3095 = phi i64 [ %2102, %block_400be2 ], [ %5437, %block_400c51 ]
  %3096 = add i64 %3095, -12
  %3097 = add i64 %3094, 4
  store i64 %3097, i64* %PC, align 8
  %3098 = inttoptr i64 %3096 to i32*
  %3099 = load i32, i32* %3098, align 4
  %3100 = sext i32 %3099 to i64
  store i64 %3100, i64* %RAX, align 8, !tbaa !2428
  %3101 = shl nsw i64 %3100, 2
  %3102 = add i64 %3095, -1328
  %3103 = add i64 %3102, %3101
  %3104 = add i64 %3094, 11
  store i64 %3104, i64* %PC, align 8
  %3105 = inttoptr i64 %3103 to i32*
  %3106 = load i32, i32* %3105, align 4
  %3107 = zext i32 %3106 to i64
  store i64 %3107, i64* %RCX, align 8, !tbaa !2428
  %3108 = add i64 %3095, -16
  %3109 = add i64 %3094, 15
  store i64 %3109, i64* %PC, align 8
  %3110 = inttoptr i64 %3108 to i32*
  %3111 = load i32, i32* %3110, align 4
  %3112 = sext i32 %3111 to i64
  store i64 %3112, i64* %RAX, align 8, !tbaa !2428
  %3113 = shl nsw i64 %3112, 2
  %3114 = add i64 %3102, %3113
  %3115 = add i64 %3094, 22
  store i64 %3115, i64* %PC, align 8
  %3116 = inttoptr i64 %3114 to i32*
  %3117 = load i32, i32* %3116, align 4
  %3118 = zext i32 %3117 to i64
  store i64 %3118, i64* %RDX, align 8, !tbaa !2428
  %3119 = add i64 %3094, 25
  store i64 %3119, i64* %PC, align 8
  %3120 = load i32, i32* %3098, align 4
  %3121 = add i32 %3120, %3117
  %3122 = zext i32 %3121 to i64
  store i64 %3122, i64* %RDX, align 8, !tbaa !2428
  %3123 = icmp ult i32 %3121, %3117
  %3124 = icmp ult i32 %3121, %3120
  %3125 = or i1 %3123, %3124
  %3126 = zext i1 %3125 to i8
  store i8 %3126, i8* %16, align 1, !tbaa !2432
  %3127 = and i32 %3121, 255
  %3128 = tail call i32 @llvm.ctpop.i32(i32 %3127) #9
  %3129 = trunc i32 %3128 to i8
  %3130 = and i8 %3129, 1
  %3131 = xor i8 %3130, 1
  store i8 %3131, i8* %23, align 1, !tbaa !2446
  %3132 = xor i32 %3120, %3117
  %3133 = xor i32 %3132, %3121
  %3134 = lshr i32 %3133, 4
  %3135 = trunc i32 %3134 to i8
  %3136 = and i8 %3135, 1
  store i8 %3136, i8* %29, align 1, !tbaa !2447
  %3137 = icmp eq i32 %3121, 0
  %3138 = zext i1 %3137 to i8
  store i8 %3138, i8* %32, align 1, !tbaa !2448
  %3139 = lshr i32 %3121, 31
  %3140 = trunc i32 %3139 to i8
  store i8 %3140, i8* %35, align 1, !tbaa !2449
  %3141 = lshr i32 %3117, 31
  %3142 = lshr i32 %3120, 31
  %3143 = xor i32 %3139, %3141
  %3144 = xor i32 %3139, %3142
  %3145 = add nuw nsw i32 %3143, %3144
  %3146 = icmp eq i32 %3145, 2
  %3147 = zext i1 %3146 to i8
  store i8 %3147, i8* %41, align 1, !tbaa !2450
  %3148 = add i64 %3094, 28
  store i64 %3148, i64* %PC, align 8
  %3149 = load i32, i32* %3110, align 4
  %3150 = sub i32 %3121, %3149
  %3151 = zext i32 %3150 to i64
  store i64 %3151, i64* %RDX, align 8, !tbaa !2428
  %3152 = lshr i32 %3150, 31
  %3153 = sub i32 %3106, %3150
  %3154 = icmp ult i32 %3106, %3150
  %3155 = zext i1 %3154 to i8
  store i8 %3155, i8* %16, align 1, !tbaa !2432
  %3156 = and i32 %3153, 255
  %3157 = tail call i32 @llvm.ctpop.i32(i32 %3156) #9
  %3158 = trunc i32 %3157 to i8
  %3159 = and i8 %3158, 1
  %3160 = xor i8 %3159, 1
  store i8 %3160, i8* %23, align 1, !tbaa !2446
  %3161 = xor i32 %3150, %3106
  %3162 = xor i32 %3161, %3153
  %3163 = lshr i32 %3162, 4
  %3164 = trunc i32 %3163 to i8
  %3165 = and i8 %3164, 1
  store i8 %3165, i8* %29, align 1, !tbaa !2447
  %3166 = icmp eq i32 %3153, 0
  %3167 = zext i1 %3166 to i8
  store i8 %3167, i8* %32, align 1, !tbaa !2448
  %3168 = lshr i32 %3153, 31
  %3169 = trunc i32 %3168 to i8
  store i8 %3169, i8* %35, align 1, !tbaa !2449
  %3170 = lshr i32 %3106, 31
  %3171 = xor i32 %3152, %3170
  %3172 = xor i32 %3168, %3170
  %3173 = add nuw nsw i32 %3172, %3171
  %3174 = icmp eq i32 %3173, 2
  %3175 = zext i1 %3174 to i8
  store i8 %3175, i8* %41, align 1, !tbaa !2450
  %3176 = icmp ne i8 %3169, 0
  %3177 = xor i1 %3176, %3174
  %3178 = or i1 %3166, %3177
  %.v288 = select i1 %3178, i64 68, i64 36
  %3179 = add i64 %3094, %.v288
  store i64 %3179, i64* %PC, align 8, !tbaa !2428
  %3180 = load i64, i64* %RBP, align 8
  br i1 %3178, label %block_400c9a, label %block_400c7a

block_400c7a:                                     ; preds = %block_400c56
  %3181 = add i64 %3180, -12
  %3182 = add i64 %3179, 4
  store i64 %3182, i64* %PC, align 8
  %3183 = inttoptr i64 %3181 to i32*
  %3184 = load i32, i32* %3183, align 4
  %3185 = sext i32 %3184 to i64
  store i64 %3185, i64* %RAX, align 8, !tbaa !2428
  %3186 = shl nsw i64 %3185, 2
  %3187 = add i64 %3180, -1328
  %3188 = add i64 %3187, %3186
  %3189 = add i64 %3179, 11
  store i64 %3189, i64* %PC, align 8
  %3190 = inttoptr i64 %3188 to i32*
  %3191 = load i32, i32* %3190, align 4
  %3192 = zext i32 %3191 to i64
  store i64 %3192, i64* %RCX, align 8, !tbaa !2428
  %3193 = add i64 %3179, 14
  store i64 %3193, i64* %PC, align 8
  %3194 = load i32, i32* %3183, align 4
  %3195 = add i32 %3194, 1
  %3196 = zext i32 %3195 to i64
  store i64 %3196, i64* %RDX, align 8, !tbaa !2428
  %3197 = icmp eq i32 %3194, -1
  %3198 = icmp eq i32 %3195, 0
  %3199 = or i1 %3197, %3198
  %3200 = zext i1 %3199 to i8
  store i8 %3200, i8* %16, align 1, !tbaa !2432
  %3201 = and i32 %3195, 255
  %3202 = tail call i32 @llvm.ctpop.i32(i32 %3201) #9
  %3203 = trunc i32 %3202 to i8
  %3204 = and i8 %3203, 1
  %3205 = xor i8 %3204, 1
  store i8 %3205, i8* %23, align 1, !tbaa !2446
  %3206 = xor i32 %3195, %3194
  %3207 = lshr i32 %3206, 4
  %3208 = trunc i32 %3207 to i8
  %3209 = and i8 %3208, 1
  store i8 %3209, i8* %29, align 1, !tbaa !2447
  %3210 = zext i1 %3198 to i8
  store i8 %3210, i8* %32, align 1, !tbaa !2448
  %3211 = lshr i32 %3195, 31
  %3212 = trunc i32 %3211 to i8
  store i8 %3212, i8* %35, align 1, !tbaa !2449
  %3213 = lshr i32 %3194, 31
  %3214 = xor i32 %3211, %3213
  %3215 = add nuw nsw i32 %3214, %3211
  %3216 = icmp eq i32 %3215, 2
  %3217 = zext i1 %3216 to i8
  store i8 %3217, i8* %41, align 1, !tbaa !2450
  %3218 = sext i32 %3195 to i64
  store i64 %3218, i64* %RAX, align 8, !tbaa !2428
  %3219 = shl nsw i64 %3218, 2
  %3220 = add nsw i64 %3219, -1328
  %3221 = add i64 %3220, %3180
  %3222 = add i64 %3179, 27
  store i64 %3222, i64* %PC, align 8
  %3223 = inttoptr i64 %3221 to i32*
  store i32 %3191, i32* %3223, align 4
  %3224 = load i64, i64* %PC, align 8
  %3225 = add i64 %3224, 38
  store i64 %3225, i64* %PC, align 8, !tbaa !2428
  br label %block_400cbb

block_400a74:                                     ; preds = %block_400a43, %block_400a7e
  %3226 = phi i64 [ %.pre181, %block_400a43 ], [ %3048, %block_400a7e ]
  %3227 = load i64, i64* %RBP, align 8
  %3228 = add i64 %3227, -4
  %3229 = add i64 %3226, 4
  store i64 %3229, i64* %PC, align 8
  %3230 = inttoptr i64 %3228 to i32*
  %3231 = load i32, i32* %3230, align 4
  %3232 = add i32 %3231, -16
  %3233 = icmp ult i32 %3231, 16
  %3234 = zext i1 %3233 to i8
  store i8 %3234, i8* %16, align 1, !tbaa !2432
  %3235 = and i32 %3232, 255
  %3236 = tail call i32 @llvm.ctpop.i32(i32 %3235) #9
  %3237 = trunc i32 %3236 to i8
  %3238 = and i8 %3237, 1
  %3239 = xor i8 %3238, 1
  store i8 %3239, i8* %23, align 1, !tbaa !2446
  %3240 = xor i32 %3231, 16
  %3241 = xor i32 %3240, %3232
  %3242 = lshr i32 %3241, 4
  %3243 = trunc i32 %3242 to i8
  %3244 = and i8 %3243, 1
  store i8 %3244, i8* %29, align 1, !tbaa !2447
  %3245 = icmp eq i32 %3232, 0
  %3246 = zext i1 %3245 to i8
  store i8 %3246, i8* %32, align 1, !tbaa !2448
  %3247 = lshr i32 %3232, 31
  %3248 = trunc i32 %3247 to i8
  store i8 %3248, i8* %35, align 1, !tbaa !2449
  %3249 = lshr i32 %3231, 31
  %3250 = xor i32 %3247, %3249
  %3251 = add nuw nsw i32 %3250, %3249
  %3252 = icmp eq i32 %3251, 2
  %3253 = zext i1 %3252 to i8
  store i8 %3253, i8* %41, align 1, !tbaa !2450
  %3254 = icmp ne i8 %3248, 0
  %3255 = xor i1 %3254, %3252
  %.v282 = select i1 %3255, i64 10, i64 54
  %3256 = add i64 %3226, %.v282
  store i64 %3256, i64* %PC, align 8, !tbaa !2428
  br i1 %3255, label %block_400a7e, label %block_400aaa

block_401411:                                     ; preds = %block_40137f, %block_401391, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit8
  %3257 = phi i64 [ %6154, %block_40137f ], [ %4874, %block_401391 ], [ %.pre228, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit8 ]
  %MEMORY.30 = phi %struct.Memory* [ %MEMORY.43, %block_40137f ], [ %MEMORY.43, %block_401391 ], [ %545, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit8 ]
  %3258 = load i64, i64* %RBP, align 8
  %3259 = add i64 %3258, -8
  %3260 = add i64 %3257, 8
  store i64 %3260, i64* %PC, align 8
  %3261 = inttoptr i64 %3259 to i32*
  %3262 = load i32, i32* %3261, align 4
  %3263 = add i32 %3262, 1
  %3264 = zext i32 %3263 to i64
  store i64 %3264, i64* %RAX, align 8, !tbaa !2428
  %3265 = icmp eq i32 %3262, -1
  %3266 = icmp eq i32 %3263, 0
  %3267 = or i1 %3265, %3266
  %3268 = zext i1 %3267 to i8
  store i8 %3268, i8* %16, align 1, !tbaa !2432
  %3269 = and i32 %3263, 255
  %3270 = tail call i32 @llvm.ctpop.i32(i32 %3269) #9
  %3271 = trunc i32 %3270 to i8
  %3272 = and i8 %3271, 1
  %3273 = xor i8 %3272, 1
  store i8 %3273, i8* %23, align 1, !tbaa !2446
  %3274 = xor i32 %3263, %3262
  %3275 = lshr i32 %3274, 4
  %3276 = trunc i32 %3275 to i8
  %3277 = and i8 %3276, 1
  store i8 %3277, i8* %29, align 1, !tbaa !2447
  %3278 = zext i1 %3266 to i8
  store i8 %3278, i8* %32, align 1, !tbaa !2448
  %3279 = lshr i32 %3263, 31
  %3280 = trunc i32 %3279 to i8
  store i8 %3280, i8* %35, align 1, !tbaa !2449
  %3281 = lshr i32 %3262, 31
  %3282 = xor i32 %3279, %3281
  %3283 = add nuw nsw i32 %3282, %3279
  %3284 = icmp eq i32 %3283, 2
  %3285 = zext i1 %3284 to i8
  store i8 %3285, i8* %41, align 1, !tbaa !2450
  %3286 = add i64 %3257, 14
  store i64 %3286, i64* %PC, align 8
  store i32 %3263, i32* %3261, align 4
  %3287 = load i64, i64* %PC, align 8
  %3288 = add i64 %3287, -172
  store i64 %3288, i64* %PC, align 8, !tbaa !2428
  br label %block_401373

block_400feb:                                     ; preds = %block_400e5a, %block_400fc3
  %3289 = phi i64 [ %3869, %block_400e5a ], [ %.pre206, %block_400fc3 ]
  %3290 = phi i64 [ %3899, %block_400e5a ], [ %.pre205, %block_400fc3 ]
  %MEMORY.31 = phi %struct.Memory* [ %MEMORY.34, %block_400e5a ], [ %MEMORY.18, %block_400fc3 ]
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 1, i8* %23, align 1, !tbaa !2446
  store i8 1, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %CL, align 1, !tbaa !2451
  %3291 = add i64 %3289, -12
  %3292 = add i64 %3290, 13
  store i64 %3292, i64* %PC, align 8
  %3293 = inttoptr i64 %3291 to i32*
  %3294 = load i32, i32* %3293, align 4
  %3295 = add i32 %3294, -16
  %3296 = icmp ult i32 %3294, 16
  %3297 = zext i1 %3296 to i8
  store i8 %3297, i8* %16, align 1, !tbaa !2432
  %3298 = and i32 %3295, 255
  %3299 = tail call i32 @llvm.ctpop.i32(i32 %3298) #9
  %3300 = trunc i32 %3299 to i8
  %3301 = and i8 %3300, 1
  %3302 = xor i8 %3301, 1
  store i8 %3302, i8* %23, align 1, !tbaa !2446
  %3303 = xor i32 %3294, 16
  %3304 = xor i32 %3303, %3295
  %3305 = lshr i32 %3304, 4
  %3306 = trunc i32 %3305 to i8
  %3307 = and i8 %3306, 1
  store i8 %3307, i8* %29, align 1, !tbaa !2447
  %3308 = icmp eq i32 %3295, 0
  %3309 = zext i1 %3308 to i8
  store i8 %3309, i8* %32, align 1, !tbaa !2448
  %3310 = lshr i32 %3295, 31
  %3311 = trunc i32 %3310 to i8
  store i8 %3311, i8* %35, align 1, !tbaa !2449
  %3312 = lshr i32 %3294, 31
  %3313 = xor i32 %3310, %3312
  %3314 = add nuw nsw i32 %3313, %3312
  %3315 = icmp eq i32 %3314, 2
  %3316 = zext i1 %3315 to i8
  store i8 %3316, i8* %41, align 1, !tbaa !2450
  %3317 = add i64 %3289, -2709
  %3318 = add i64 %3290, 19
  store i64 %3318, i64* %PC, align 8
  %3319 = inttoptr i64 %3317 to i8*
  store i8 0, i8* %3319, align 1
  %3320 = load i64, i64* %PC, align 8
  %3321 = add i64 %3320, 32
  %3322 = add i64 %3320, 6
  %3323 = load i8, i8* %35, align 1, !tbaa !2449
  %3324 = icmp ne i8 %3323, 0
  %3325 = load i8, i8* %41, align 1, !tbaa !2450
  %3326 = icmp ne i8 %3325, 0
  %3327 = xor i1 %3324, %3326
  %3328 = select i1 %3327, i64 %3322, i64 %3321
  store i64 %3328, i64* %PC, align 8, !tbaa !2428
  br i1 %3327, label %block_401004, label %block_40101e

block_4011e0:                                     ; preds = %block_4011a0, %block_4011aa
  %3329 = phi i64 [ %1920, %block_4011a0 ], [ %.pre218, %block_4011aa ]
  %3330 = phi i64 [ %808, %block_4011a0 ], [ %.pre217, %block_4011aa ]
  %3331 = add i64 %3329, -4
  %3332 = add i64 %3330, 8
  store i64 %3332, i64* %PC, align 8
  %3333 = inttoptr i64 %3331 to i32*
  %3334 = load i32, i32* %3333, align 4
  %3335 = add i32 %3334, 1
  %3336 = zext i32 %3335 to i64
  store i64 %3336, i64* %RAX, align 8, !tbaa !2428
  %3337 = icmp eq i32 %3334, -1
  %3338 = icmp eq i32 %3335, 0
  %3339 = or i1 %3337, %3338
  %3340 = zext i1 %3339 to i8
  store i8 %3340, i8* %16, align 1, !tbaa !2432
  %3341 = and i32 %3335, 255
  %3342 = tail call i32 @llvm.ctpop.i32(i32 %3341) #9
  %3343 = trunc i32 %3342 to i8
  %3344 = and i8 %3343, 1
  %3345 = xor i8 %3344, 1
  store i8 %3345, i8* %23, align 1, !tbaa !2446
  %3346 = xor i32 %3335, %3334
  %3347 = lshr i32 %3346, 4
  %3348 = trunc i32 %3347 to i8
  %3349 = and i8 %3348, 1
  store i8 %3349, i8* %29, align 1, !tbaa !2447
  %3350 = zext i1 %3338 to i8
  store i8 %3350, i8* %32, align 1, !tbaa !2448
  %3351 = lshr i32 %3335, 31
  %3352 = trunc i32 %3351 to i8
  store i8 %3352, i8* %35, align 1, !tbaa !2449
  %3353 = lshr i32 %3334, 31
  %3354 = xor i32 %3351, %3353
  %3355 = add nuw nsw i32 %3354, %3351
  %3356 = icmp eq i32 %3355, 2
  %3357 = zext i1 %3356 to i8
  store i8 %3357, i8* %41, align 1, !tbaa !2450
  %3358 = add i64 %3330, 14
  store i64 %3358, i64* %PC, align 8
  store i32 %3335, i32* %3333, align 4
  %3359 = load i64, i64* %PC, align 8
  %3360 = add i64 %3359, -234
  store i64 %3360, i64* %PC, align 8, !tbaa !2428
  br label %block_401104

block_400d37:                                     ; preds = %block_400d17
  %3361 = load i64, i64* %RBP, align 8
  %3362 = add i64 %3361, -1168
  store i64 %3362, i64* %RAX, align 8, !tbaa !2428
  store i64 255, i64* %RCX, align 8, !tbaa !2428
  %3363 = add i64 %3361, -12
  %3364 = add i64 %2860, 16
  store i64 %3364, i64* %PC, align 8
  %3365 = inttoptr i64 %3363 to i32*
  %3366 = load i32, i32* %3365, align 4
  %3367 = sext i32 %3366 to i64
  store i64 %3367, i64* %RDX, align 8, !tbaa !2428
  %3368 = shl nsw i64 %3367, 2
  %3369 = add i64 %3361, -1248
  %3370 = add i64 %3369, %3368
  %3371 = add i64 %2860, 23
  store i64 %3371, i64* %PC, align 8
  %3372 = inttoptr i64 %3370 to i32*
  %3373 = load i32, i32* %3372, align 4
  %3374 = add i32 %3373, 255
  %3375 = zext i32 %3374 to i64
  store i64 %3375, i64* %RSI, align 8, !tbaa !2428
  %3376 = icmp ugt i32 %3373, -256
  %3377 = zext i1 %3376 to i8
  store i8 %3377, i8* %16, align 1, !tbaa !2432
  %3378 = and i32 %3374, 255
  %3379 = tail call i32 @llvm.ctpop.i32(i32 %3378) #9
  %3380 = trunc i32 %3379 to i8
  %3381 = and i8 %3380, 1
  %3382 = xor i8 %3381, 1
  store i8 %3382, i8* %23, align 1, !tbaa !2446
  %3383 = xor i32 %3373, 16
  %3384 = xor i32 %3383, %3374
  %3385 = lshr i32 %3384, 4
  %3386 = trunc i32 %3385 to i8
  %3387 = and i8 %3386, 1
  store i8 %3387, i8* %29, align 1, !tbaa !2447
  %3388 = icmp eq i32 %3374, 0
  %3389 = zext i1 %3388 to i8
  store i8 %3389, i8* %32, align 1, !tbaa !2448
  %3390 = lshr i32 %3374, 31
  %3391 = trunc i32 %3390 to i8
  store i8 %3391, i8* %35, align 1, !tbaa !2449
  %3392 = lshr i32 %3373, 31
  %3393 = xor i32 %3390, %3392
  %3394 = add nuw nsw i32 %3393, %3390
  %3395 = icmp eq i32 %3394, 2
  %3396 = zext i1 %3395 to i8
  store i8 %3396, i8* %41, align 1, !tbaa !2450
  %3397 = add i64 %3361, -16
  %3398 = add i64 %2860, 33
  store i64 %3398, i64* %PC, align 8
  %3399 = inttoptr i64 %3397 to i32*
  %3400 = load i32, i32* %3399, align 4
  %3401 = sext i32 %3400 to i64
  store i64 %3401, i64* %RDX, align 8, !tbaa !2428
  %3402 = shl nsw i64 %3401, 2
  %3403 = add nsw i64 %3402, -1248
  %3404 = add i64 %3403, %3361
  %3405 = add i64 %2860, 40
  store i64 %3405, i64* %PC, align 8
  %3406 = inttoptr i64 %3404 to i32*
  %3407 = load i32, i32* %3406, align 4
  %3408 = sub i32 %3374, %3407
  %3409 = zext i32 %3408 to i64
  store i64 %3409, i64* %RSI, align 8, !tbaa !2428
  %3410 = icmp ult i32 %3374, %3407
  %3411 = zext i1 %3410 to i8
  store i8 %3411, i8* %16, align 1, !tbaa !2432
  %3412 = and i32 %3408, 255
  %3413 = tail call i32 @llvm.ctpop.i32(i32 %3412) #9
  %3414 = trunc i32 %3413 to i8
  %3415 = and i8 %3414, 1
  %3416 = xor i8 %3415, 1
  store i8 %3416, i8* %23, align 1, !tbaa !2446
  %3417 = xor i32 %3407, %3374
  %3418 = xor i32 %3417, %3408
  %3419 = lshr i32 %3418, 4
  %3420 = trunc i32 %3419 to i8
  %3421 = and i8 %3420, 1
  store i8 %3421, i8* %29, align 1, !tbaa !2447
  %3422 = icmp eq i32 %3408, 0
  %3423 = zext i1 %3422 to i8
  store i8 %3423, i8* %32, align 1, !tbaa !2448
  %3424 = lshr i32 %3408, 31
  %3425 = trunc i32 %3424 to i8
  store i8 %3425, i8* %35, align 1, !tbaa !2449
  %3426 = lshr i32 %3407, 31
  %3427 = xor i32 %3426, %3390
  %3428 = xor i32 %3424, %3390
  %3429 = add nuw nsw i32 %3428, %3427
  %3430 = icmp eq i32 %3429, 2
  %3431 = zext i1 %3430 to i8
  store i8 %3431, i8* %41, align 1, !tbaa !2450
  %3432 = load i64, i64* %RBP, align 8
  %3433 = add i64 %3432, -16
  %3434 = add i64 %2860, 44
  store i64 %3434, i64* %PC, align 8
  %3435 = inttoptr i64 %3433 to i32*
  %3436 = load i32, i32* %3435, align 4
  %3437 = sext i32 %3436 to i64
  %3438 = shl nsw i64 %3437, 6
  store i64 %3438, i64* %RDX, align 8, !tbaa !2428
  %3439 = load i64, i64* %RAX, align 8
  %3440 = add i64 %3438, %3439
  store i64 %3440, i64* %RDI, align 8, !tbaa !2428
  %3441 = icmp ult i64 %3440, %3439
  %3442 = icmp ult i64 %3440, %3438
  %3443 = or i1 %3441, %3442
  %3444 = zext i1 %3443 to i8
  store i8 %3444, i8* %16, align 1, !tbaa !2432
  %3445 = trunc i64 %3440 to i32
  %3446 = and i32 %3445, 255
  %3447 = tail call i32 @llvm.ctpop.i32(i32 %3446) #9
  %3448 = trunc i32 %3447 to i8
  %3449 = and i8 %3448, 1
  %3450 = xor i8 %3449, 1
  store i8 %3450, i8* %23, align 1, !tbaa !2446
  %3451 = xor i64 %3439, %3440
  %3452 = lshr i64 %3451, 4
  %3453 = trunc i64 %3452 to i8
  %3454 = and i8 %3453, 1
  store i8 %3454, i8* %29, align 1, !tbaa !2447
  %3455 = icmp eq i64 %3440, 0
  %3456 = zext i1 %3455 to i8
  store i8 %3456, i8* %32, align 1, !tbaa !2448
  %3457 = lshr i64 %3440, 63
  %3458 = trunc i64 %3457 to i8
  store i8 %3458, i8* %35, align 1, !tbaa !2449
  %3459 = lshr i64 %3439, 63
  %3460 = lshr i64 %3437, 57
  %3461 = and i64 %3460, 1
  %3462 = xor i64 %3457, %3459
  %3463 = xor i64 %3457, %3461
  %3464 = add nuw nsw i64 %3462, %3463
  %3465 = icmp eq i64 %3464, 2
  %3466 = zext i1 %3465 to i8
  store i8 %3466, i8* %41, align 1, !tbaa !2450
  %3467 = add i64 %3432, -4
  %3468 = add i64 %2860, 58
  store i64 %3468, i64* %PC, align 8
  %3469 = inttoptr i64 %3467 to i32*
  %3470 = load i32, i32* %3469, align 4
  %3471 = sext i32 %3470 to i64
  store i64 %3471, i64* %RDX, align 8, !tbaa !2428
  %3472 = load i64, i64* %RSI, align 8
  %3473 = shl nsw i64 %3471, 2
  %3474 = add i64 %3440, %3473
  %3475 = add i64 %2860, 61
  store i64 %3475, i64* %PC, align 8
  %3476 = trunc i64 %3472 to i32
  %3477 = inttoptr i64 %3474 to i32*
  %3478 = load i32, i32* %3477, align 4
  %3479 = add i32 %3478, %3476
  %3480 = zext i32 %3479 to i64
  store i64 %3480, i64* %RSI, align 8, !tbaa !2428
  %3481 = icmp ult i32 %3479, %3476
  %3482 = icmp ult i32 %3479, %3478
  %3483 = or i1 %3481, %3482
  %3484 = zext i1 %3483 to i8
  store i8 %3484, i8* %16, align 1, !tbaa !2432
  %3485 = and i32 %3479, 255
  %3486 = tail call i32 @llvm.ctpop.i32(i32 %3485) #9
  %3487 = trunc i32 %3486 to i8
  %3488 = and i8 %3487, 1
  %3489 = xor i8 %3488, 1
  store i8 %3489, i8* %23, align 1, !tbaa !2446
  %3490 = xor i32 %3478, %3476
  %3491 = xor i32 %3490, %3479
  %3492 = lshr i32 %3491, 4
  %3493 = trunc i32 %3492 to i8
  %3494 = and i8 %3493, 1
  store i8 %3494, i8* %29, align 1, !tbaa !2447
  %3495 = icmp eq i32 %3479, 0
  %3496 = zext i1 %3495 to i8
  store i8 %3496, i8* %32, align 1, !tbaa !2448
  %3497 = lshr i32 %3479, 31
  %3498 = trunc i32 %3497 to i8
  store i8 %3498, i8* %35, align 1, !tbaa !2449
  %3499 = lshr i32 %3476, 31
  %3500 = lshr i32 %3478, 31
  %3501 = xor i32 %3497, %3499
  %3502 = xor i32 %3497, %3500
  %3503 = add nuw nsw i32 %3501, %3502
  %3504 = icmp eq i32 %3503, 2
  %3505 = zext i1 %3504 to i8
  store i8 %3505, i8* %41, align 1, !tbaa !2450
  %3506 = load i64, i64* %RBP, align 8
  %3507 = add i64 %3506, -2704
  %3508 = add i64 %2860, 68
  store i64 %3508, i64* %PC, align 8
  %3509 = inttoptr i64 %3507 to i64*
  store i64 %3439, i64* %3509, align 8
  %3510 = load i32, i32* %ESI, align 4
  %3511 = zext i32 %3510 to i64
  %3512 = load i64, i64* %PC, align 8
  store i64 %3511, i64* %RAX, align 8, !tbaa !2428
  %3513 = sext i32 %3510 to i64
  %3514 = lshr i64 %3513, 32
  store i64 %3514, i64* %55, align 8, !tbaa !2428
  %3515 = load i32, i32* %ECX, align 4
  %3516 = add i64 %3512, 5
  store i64 %3516, i64* %PC, align 8
  %3517 = sext i32 %3515 to i64
  %3518 = shl nuw i64 %3514, 32
  %3519 = or i64 %3518, %3511
  %3520 = sdiv i64 %3519, %3517
  %3521 = shl i64 %3520, 32
  %3522 = ashr exact i64 %3521, 32
  %3523 = icmp eq i64 %3520, %3522
  br i1 %3523, label %3526, label %3524

; <label>:3524:                                   ; preds = %block_400d37
  %3525 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3516, %struct.Memory* %MEMORY.21) #12
  %.pre194 = load i32, i32* %EDX, align 4
  %.pre195 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3

; <label>:3526:                                   ; preds = %block_400d37
  %3527 = srem i64 %3519, %3517
  %3528 = and i64 %3520, 4294967295
  store i64 %3528, i64* %RAX, align 8, !tbaa !2428
  %3529 = and i64 %3527, 4294967295
  store i64 %3529, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %3530 = trunc i64 %3527 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3: ; preds = %3526, %3524
  %3531 = phi i64 [ %.pre195, %3524 ], [ %3516, %3526 ]
  %3532 = phi i32 [ %.pre194, %3524 ], [ %3530, %3526 ]
  %3533 = phi %struct.Memory* [ %3525, %3524 ], [ %MEMORY.21, %3526 ]
  %3534 = sext i32 %3532 to i64
  store i64 %3534, i64* %RDI, align 8, !tbaa !2428
  %3535 = shl nsw i64 %3534, 2
  %3536 = add i64 %3535, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %3537 = add i64 %3531, 10
  store i64 %3537, i64* %PC, align 8
  %3538 = inttoptr i64 %3536 to i32*
  %3539 = load i32, i32* %3538, align 4
  %3540 = zext i32 %3539 to i64
  store i64 %3540, i64* %RCX, align 8, !tbaa !2428
  %3541 = load i64, i64* %RBP, align 8
  %3542 = add i64 %3541, -12
  %3543 = add i64 %3531, 13
  store i64 %3543, i64* %PC, align 8
  %3544 = inttoptr i64 %3542 to i32*
  %3545 = load i32, i32* %3544, align 4
  %3546 = add i32 %3545, 1
  %3547 = zext i32 %3546 to i64
  store i64 %3547, i64* %RDX, align 8, !tbaa !2428
  %3548 = icmp eq i32 %3546, 0
  %3549 = zext i1 %3548 to i8
  %3550 = lshr i32 %3546, 31
  %3551 = trunc i32 %3550 to i8
  %3552 = sext i32 %3546 to i64
  %3553 = shl nsw i64 %3552, 6
  store i64 %3553, i64* %RDI, align 8, !tbaa !2428
  store i8 %3551, i8* %16, align 1, !tbaa !2451
  %3554 = trunc i64 %3553 to i32
  %3555 = and i32 %3554, 192
  %3556 = tail call i32 @llvm.ctpop.i32(i32 %3555) #9
  %3557 = trunc i32 %3556 to i8
  %3558 = and i8 %3557, 1
  %3559 = xor i8 %3558, 1
  store i8 %3559, i8* %23, align 1, !tbaa !2451
  store i8 0, i8* %29, align 1, !tbaa !2451
  store i8 %3549, i8* %32, align 1, !tbaa !2451
  %3560 = lshr i64 %3552, 57
  %3561 = trunc i64 %3560 to i8
  %3562 = and i8 %3561, 1
  store i8 %3562, i8* %35, align 1, !tbaa !2451
  store i8 0, i8* %41, align 1, !tbaa !2451
  %3563 = add i64 %3541, -2704
  %3564 = add i64 %3531, 30
  store i64 %3564, i64* %PC, align 8
  %3565 = inttoptr i64 %3563 to i64*
  %3566 = load i64, i64* %3565, align 8
  %3567 = add i64 %3553, %3566
  store i64 %3567, i64* %R8, align 8, !tbaa !2428
  %3568 = icmp ult i64 %3567, %3566
  %3569 = icmp ult i64 %3567, %3553
  %3570 = or i1 %3568, %3569
  %3571 = zext i1 %3570 to i8
  store i8 %3571, i8* %16, align 1, !tbaa !2432
  %3572 = trunc i64 %3567 to i32
  %3573 = and i32 %3572, 255
  %3574 = tail call i32 @llvm.ctpop.i32(i32 %3573) #9
  %3575 = trunc i32 %3574 to i8
  %3576 = and i8 %3575, 1
  %3577 = xor i8 %3576, 1
  store i8 %3577, i8* %23, align 1, !tbaa !2446
  %3578 = xor i64 %3566, %3567
  %3579 = lshr i64 %3578, 4
  %3580 = trunc i64 %3579 to i8
  %3581 = and i8 %3580, 1
  store i8 %3581, i8* %29, align 1, !tbaa !2447
  %3582 = icmp eq i64 %3567, 0
  %3583 = zext i1 %3582 to i8
  store i8 %3583, i8* %32, align 1, !tbaa !2448
  %3584 = lshr i64 %3567, 63
  %3585 = trunc i64 %3584 to i8
  store i8 %3585, i8* %35, align 1, !tbaa !2449
  %3586 = lshr i64 %3566, 63
  %3587 = lshr i64 %3552, 57
  %3588 = and i64 %3587, 1
  %3589 = xor i64 %3584, %3586
  %3590 = xor i64 %3584, %3588
  %3591 = add nuw nsw i64 %3589, %3590
  %3592 = icmp eq i64 %3591, 2
  %3593 = zext i1 %3592 to i8
  store i8 %3593, i8* %41, align 1, !tbaa !2450
  %3594 = load i64, i64* %RBP, align 8
  %3595 = add i64 %3594, -4
  %3596 = add i64 %3531, 36
  store i64 %3596, i64* %PC, align 8
  %3597 = inttoptr i64 %3595 to i32*
  %3598 = load i32, i32* %3597, align 4
  %3599 = zext i32 %3598 to i64
  store i64 %3599, i64* %RDX, align 8, !tbaa !2428
  %3600 = add i64 %3594, -12
  %3601 = add i64 %3531, 39
  store i64 %3601, i64* %PC, align 8
  %3602 = inttoptr i64 %3600 to i32*
  %3603 = load i32, i32* %3602, align 4
  %3604 = add i32 %3603, %3598
  %3605 = zext i32 %3604 to i64
  store i64 %3605, i64* %RDX, align 8, !tbaa !2428
  %3606 = icmp ult i32 %3604, %3598
  %3607 = icmp ult i32 %3604, %3603
  %3608 = or i1 %3606, %3607
  %3609 = zext i1 %3608 to i8
  store i8 %3609, i8* %16, align 1, !tbaa !2432
  %3610 = and i32 %3604, 255
  %3611 = tail call i32 @llvm.ctpop.i32(i32 %3610) #9
  %3612 = trunc i32 %3611 to i8
  %3613 = and i8 %3612, 1
  %3614 = xor i8 %3613, 1
  store i8 %3614, i8* %23, align 1, !tbaa !2446
  %3615 = xor i32 %3603, %3598
  %3616 = xor i32 %3615, %3604
  %3617 = lshr i32 %3616, 4
  %3618 = trunc i32 %3617 to i8
  %3619 = and i8 %3618, 1
  store i8 %3619, i8* %29, align 1, !tbaa !2447
  %3620 = icmp eq i32 %3604, 0
  %3621 = zext i1 %3620 to i8
  store i8 %3621, i8* %32, align 1, !tbaa !2448
  %3622 = lshr i32 %3604, 31
  %3623 = trunc i32 %3622 to i8
  store i8 %3623, i8* %35, align 1, !tbaa !2449
  %3624 = lshr i32 %3598, 31
  %3625 = lshr i32 %3603, 31
  %3626 = xor i32 %3622, %3624
  %3627 = xor i32 %3622, %3625
  %3628 = add nuw nsw i32 %3626, %3627
  %3629 = icmp eq i32 %3628, 2
  %3630 = zext i1 %3629 to i8
  store i8 %3630, i8* %41, align 1, !tbaa !2450
  %3631 = add i64 %3594, -16
  %3632 = add i64 %3531, 42
  store i64 %3632, i64* %PC, align 8
  %3633 = inttoptr i64 %3631 to i32*
  %3634 = load i32, i32* %3633, align 4
  %3635 = sub i32 %3604, %3634
  %3636 = zext i32 %3635 to i64
  store i64 %3636, i64* %RDX, align 8, !tbaa !2428
  %3637 = icmp ult i32 %3604, %3634
  %3638 = zext i1 %3637 to i8
  store i8 %3638, i8* %16, align 1, !tbaa !2432
  %3639 = and i32 %3635, 255
  %3640 = tail call i32 @llvm.ctpop.i32(i32 %3639) #9
  %3641 = trunc i32 %3640 to i8
  %3642 = and i8 %3641, 1
  %3643 = xor i8 %3642, 1
  store i8 %3643, i8* %23, align 1, !tbaa !2446
  %3644 = xor i32 %3634, %3604
  %3645 = xor i32 %3644, %3635
  %3646 = lshr i32 %3645, 4
  %3647 = trunc i32 %3646 to i8
  %3648 = and i8 %3647, 1
  store i8 %3648, i8* %29, align 1, !tbaa !2447
  %3649 = icmp eq i32 %3635, 0
  %3650 = zext i1 %3649 to i8
  store i8 %3650, i8* %32, align 1, !tbaa !2448
  %3651 = lshr i32 %3635, 31
  %3652 = trunc i32 %3651 to i8
  store i8 %3652, i8* %35, align 1, !tbaa !2449
  %3653 = lshr i32 %3634, 31
  %3654 = xor i32 %3653, %3622
  %3655 = xor i32 %3651, %3622
  %3656 = add nuw nsw i32 %3655, %3654
  %3657 = icmp eq i32 %3656, 2
  %3658 = zext i1 %3657 to i8
  store i8 %3658, i8* %41, align 1, !tbaa !2450
  %3659 = sext i32 %3635 to i64
  store i64 %3659, i64* %RDI, align 8, !tbaa !2428
  %3660 = load i64, i64* %R8, align 8
  %3661 = shl nsw i64 %3659, 2
  %3662 = add i64 %3660, %3661
  %3663 = load i32, i32* %ECX, align 4
  %3664 = add i64 %3531, 49
  store i64 %3664, i64* %PC, align 8
  %3665 = inttoptr i64 %3662 to i32*
  store i32 %3663, i32* %3665, align 4
  %.pre196 = load i64, i64* %PC, align 8
  br label %block_400db1

block_401464:                                     ; preds = %block_401457
  %3666 = add i64 %5785, 4
  store i64 %3666, i64* %PC, align 8
  %3667 = load i32, i32* %5759, align 4
  %3668 = sext i32 %3667 to i64
  store i64 %3668, i64* %RAX, align 8, !tbaa !2428
  %3669 = shl nsw i64 %3668, 2
  %3670 = add i64 %5756, -2640
  %3671 = add i64 %3670, %3669
  %3672 = add i64 %5785, 15
  store i64 %3672, i64* %PC, align 8
  %3673 = inttoptr i64 %3671 to i32*
  store i32 0, i32* %3673, align 4
  %3674 = load i64, i64* %RBP, align 8
  %3675 = add i64 %3674, -4
  %3676 = load i64, i64* %PC, align 8
  %3677 = add i64 %3676, 4
  store i64 %3677, i64* %PC, align 8
  %3678 = inttoptr i64 %3675 to i32*
  %3679 = load i32, i32* %3678, align 4
  %3680 = sext i32 %3679 to i64
  store i64 %3680, i64* %RAX, align 8, !tbaa !2428
  %3681 = shl nsw i64 %3680, 2
  %3682 = add i64 %3681, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %3683 = add i64 %3676, 12
  store i64 %3683, i64* %PC, align 8
  %3684 = inttoptr i64 %3682 to i32*
  %3685 = load i32, i32* %3684, align 4
  %3686 = add i32 %3685, 1
  %3687 = icmp ne i32 %3685, -1
  %3688 = zext i1 %3687 to i8
  store i8 %3688, i8* %16, align 1, !tbaa !2432
  %3689 = and i32 %3686, 255
  %3690 = tail call i32 @llvm.ctpop.i32(i32 %3689) #9
  %3691 = trunc i32 %3690 to i8
  %3692 = and i8 %3691, 1
  %3693 = xor i8 %3692, 1
  store i8 %3693, i8* %23, align 1, !tbaa !2446
  %3694 = xor i32 %3685, 16
  %3695 = xor i32 %3694, %3686
  %3696 = lshr i32 %3695, 4
  %3697 = trunc i32 %3696 to i8
  %3698 = and i8 %3697, 1
  store i8 %3698, i8* %29, align 1, !tbaa !2447
  %3699 = icmp eq i32 %3686, 0
  %3700 = zext i1 %3699 to i8
  store i8 %3700, i8* %32, align 1, !tbaa !2448
  %3701 = lshr i32 %3686, 31
  %3702 = trunc i32 %3701 to i8
  store i8 %3702, i8* %35, align 1, !tbaa !2449
  %3703 = lshr i32 %3685, 31
  %3704 = xor i32 %3703, 1
  %3705 = xor i32 %3701, %3703
  %3706 = add nuw nsw i32 %3705, %3704
  %3707 = icmp eq i32 %3706, 2
  %3708 = zext i1 %3707 to i8
  store i8 %3708, i8* %41, align 1, !tbaa !2450
  %.v267 = select i1 %3699, i64 53, i64 18
  %3709 = add i64 %3676, %.v267
  %3710 = add i64 %3709, 4
  store i64 %3710, i64* %PC, align 8
  %3711 = load i32, i32* %3678, align 4
  %3712 = sext i32 %3711 to i64
  store i64 %3712, i64* %RAX, align 8, !tbaa !2428
  %3713 = shl nsw i64 %3712, 2
  %3714 = add i64 %3713, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  br i1 %3699, label %block_4014a8, label %block_401485

block_400aaa:                                     ; preds = %block_400a74
  %3715 = add i64 %3227, -1328
  %3716 = add i64 %3256, 10
  store i64 %3716, i64* %PC, align 8
  %3717 = inttoptr i64 %3715 to i32*
  store i32 0, i32* %3717, align 4
  %3718 = load i64, i64* %RBP, align 8
  %3719 = add i64 %3718, -1324
  %3720 = load i64, i64* %PC, align 8
  %3721 = add i64 %3720, 10
  store i64 %3721, i64* %PC, align 8
  %3722 = inttoptr i64 %3719 to i32*
  store i32 0, i32* %3722, align 4
  %3723 = load i64, i64* %RBP, align 8
  %3724 = add i64 %3723, -1408
  %3725 = load i64, i64* %PC, align 8
  %3726 = add i64 %3725, 10
  store i64 %3726, i64* %PC, align 8
  %3727 = inttoptr i64 %3724 to i32*
  store i32 -1, i32* %3727, align 4
  %3728 = load i64, i64* %RBP, align 8
  %3729 = add i64 %3728, -1404
  %3730 = load i64, i64* %PC, align 8
  %3731 = add i64 %3730, 10
  store i64 %3731, i64* %PC, align 8
  %3732 = inttoptr i64 %3729 to i32*
  store i32 0, i32* %3732, align 4
  %3733 = load i64, i64* %RBP, align 8
  %3734 = add i64 %3733, -12
  %3735 = load i64, i64* %PC, align 8
  %3736 = add i64 %3735, 7
  store i64 %3736, i64* %PC, align 8
  %3737 = inttoptr i64 %3734 to i32*
  store i32 0, i32* %3737, align 4
  %.pre182 = load i64, i64* %RBP, align 8
  %.pre183 = load i64, i64* %PC, align 8
  br label %block_400ad9

block_40185d.loopexit:                            ; preds = %block_4017f4
  br label %block_40185d

block_40185d:                                     ; preds = %block_40185d.loopexit, %block_4017e8
  %3738 = phi i64 [ %120, %block_4017e8 ], [ %118, %block_40185d.loopexit ]
  %.sink5 = phi i64 [ 117, %block_4017e8 ], [ 5, %block_40185d.loopexit ]
  %MEMORY.33 = phi %struct.Memory* [ %MEMORY.1, %block_4017e8 ], [ %MEMORY.8, %block_40185d.loopexit ]
  %3739 = add i64 %3738, %.sink5
  %3740 = load i64, i64* %RSP, align 8
  %3741 = add i64 %3740, 2608
  store i64 %3741, i64* %RSP, align 8, !tbaa !2428
  %3742 = icmp ugt i64 %3740, -2609
  %3743 = zext i1 %3742 to i8
  store i8 %3743, i8* %16, align 1, !tbaa !2432
  %3744 = trunc i64 %3741 to i32
  %3745 = and i32 %3744, 255
  %3746 = tail call i32 @llvm.ctpop.i32(i32 %3745) #9
  %3747 = trunc i32 %3746 to i8
  %3748 = and i8 %3747, 1
  %3749 = xor i8 %3748, 1
  store i8 %3749, i8* %23, align 1, !tbaa !2446
  %3750 = xor i64 %3740, 16
  %3751 = xor i64 %3750, %3741
  %3752 = lshr i64 %3751, 4
  %3753 = trunc i64 %3752 to i8
  %3754 = and i8 %3753, 1
  store i8 %3754, i8* %29, align 1, !tbaa !2447
  %3755 = icmp eq i64 %3741, 0
  %3756 = zext i1 %3755 to i8
  store i8 %3756, i8* %32, align 1, !tbaa !2448
  %3757 = lshr i64 %3741, 63
  %3758 = trunc i64 %3757 to i8
  store i8 %3758, i8* %35, align 1, !tbaa !2449
  %3759 = lshr i64 %3740, 63
  %3760 = xor i64 %3757, %3759
  %3761 = add nuw nsw i64 %3760, %3757
  %3762 = icmp eq i64 %3761, 2
  %3763 = zext i1 %3762 to i8
  store i8 %3763, i8* %41, align 1, !tbaa !2450
  %3764 = add i64 %3739, 8
  store i64 %3764, i64* %PC, align 8
  %3765 = add i64 %3740, 2616
  %3766 = inttoptr i64 %3741 to i64*
  %3767 = load i64, i64* %3766, align 8
  store i64 %3767, i64* %RBP, align 8, !tbaa !2428
  store i64 %3765, i64* %RSP, align 8, !tbaa !2428
  %3768 = add i64 %3739, 9
  store i64 %3768, i64* %PC, align 8
  %3769 = inttoptr i64 %3765 to i64*
  %3770 = load i64, i64* %3769, align 8
  store i64 %3770, i64* %PC, align 8, !tbaa !2428
  %3771 = add i64 %3740, 2624
  store i64 %3771, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.33

block_400e5a.loopexit:                            ; preds = %block_400b16
  br label %block_400e5a

block_400e5a.loopexit424:                         ; preds = %block_400dcb
  br label %block_400e5a

block_400e5a:                                     ; preds = %block_400e5a.loopexit424, %block_400e5a.loopexit
  %3772 = phi i64 [ %4876, %block_400e5a.loopexit ], [ %1646, %block_400e5a.loopexit424 ]
  %3773 = phi i64 [ %4919, %block_400e5a.loopexit ], [ %1689, %block_400e5a.loopexit424 ]
  %.sink20 = phi i64 [ 701, %block_400e5a.loopexit ], [ 5, %block_400e5a.loopexit424 ]
  %MEMORY.34 = phi %struct.Memory* [ %MEMORY.48, %block_400e5a.loopexit ], [ %MEMORY.21, %block_400e5a.loopexit424 ]
  %3774 = add i64 %3773, %.sink20
  %3775 = add i64 %3772, -12
  %3776 = add i64 %3774, 3
  store i64 %3776, i64* %PC, align 8
  %3777 = inttoptr i64 %3775 to i32*
  %3778 = load i32, i32* %3777, align 4
  %3779 = zext i32 %3778 to i64
  store i64 %3779, i64* %RAX, align 8, !tbaa !2428
  %3780 = add i64 %3774, 6
  store i64 %3780, i64* %PC, align 8
  %3781 = load i32, i32* %3777, align 4
  %3782 = add i32 %3781, 1
  %3783 = zext i32 %3782 to i64
  store i64 %3783, i64* %RCX, align 8, !tbaa !2428
  %3784 = icmp eq i32 %3781, -1
  %3785 = icmp eq i32 %3782, 0
  %3786 = or i1 %3784, %3785
  %3787 = zext i1 %3786 to i8
  store i8 %3787, i8* %16, align 1, !tbaa !2432
  %3788 = and i32 %3782, 255
  %3789 = tail call i32 @llvm.ctpop.i32(i32 %3788) #9
  %3790 = trunc i32 %3789 to i8
  %3791 = and i8 %3790, 1
  %3792 = xor i8 %3791, 1
  store i8 %3792, i8* %23, align 1, !tbaa !2446
  %3793 = xor i32 %3782, %3781
  %3794 = lshr i32 %3793, 4
  %3795 = trunc i32 %3794 to i8
  %3796 = and i8 %3795, 1
  store i8 %3796, i8* %29, align 1, !tbaa !2447
  %3797 = zext i1 %3785 to i8
  store i8 %3797, i8* %32, align 1, !tbaa !2448
  %3798 = lshr i32 %3782, 31
  %3799 = trunc i32 %3798 to i8
  store i8 %3799, i8* %35, align 1, !tbaa !2449
  %3800 = lshr i32 %3781, 31
  %3801 = xor i32 %3798, %3800
  %3802 = add nuw nsw i32 %3801, %3798
  %3803 = icmp eq i32 %3802, 2
  %3804 = zext i1 %3803 to i8
  store i8 %3804, i8* %41, align 1, !tbaa !2450
  %3805 = sext i32 %3782 to i64
  store i64 %3805, i64* %RDX, align 8, !tbaa !2428
  %3806 = shl nsw i64 %3805, 2
  %3807 = add nsw i64 %3806, -1328
  %3808 = add i64 %3807, %3772
  %3809 = add i64 %3774, 19
  store i64 %3809, i64* %PC, align 8
  %3810 = inttoptr i64 %3808 to i32*
  %3811 = load i32, i32* %3810, align 4
  %3812 = sub i32 %3778, %3811
  %3813 = zext i32 %3812 to i64
  store i64 %3813, i64* %RAX, align 8, !tbaa !2428
  %3814 = icmp ult i32 %3778, %3811
  %3815 = zext i1 %3814 to i8
  store i8 %3815, i8* %16, align 1, !tbaa !2432
  %3816 = and i32 %3812, 255
  %3817 = tail call i32 @llvm.ctpop.i32(i32 %3816) #9
  %3818 = trunc i32 %3817 to i8
  %3819 = and i8 %3818, 1
  %3820 = xor i8 %3819, 1
  store i8 %3820, i8* %23, align 1, !tbaa !2446
  %3821 = xor i32 %3811, %3778
  %3822 = xor i32 %3821, %3812
  %3823 = lshr i32 %3822, 4
  %3824 = trunc i32 %3823 to i8
  %3825 = and i8 %3824, 1
  store i8 %3825, i8* %29, align 1, !tbaa !2447
  %3826 = icmp eq i32 %3812, 0
  %3827 = zext i1 %3826 to i8
  store i8 %3827, i8* %32, align 1, !tbaa !2448
  %3828 = lshr i32 %3812, 31
  %3829 = trunc i32 %3828 to i8
  store i8 %3829, i8* %35, align 1, !tbaa !2449
  %3830 = lshr i32 %3778, 31
  %3831 = lshr i32 %3811, 31
  %3832 = xor i32 %3831, %3830
  %3833 = xor i32 %3828, %3830
  %3834 = add nuw nsw i32 %3833, %3832
  %3835 = icmp eq i32 %3834, 2
  %3836 = zext i1 %3835 to i8
  store i8 %3836, i8* %41, align 1, !tbaa !2450
  %3837 = add i64 %3774, 22
  store i64 %3837, i64* %PC, align 8
  %3838 = load i32, i32* %3777, align 4
  %3839 = add i32 %3838, 1
  %3840 = zext i32 %3839 to i64
  store i64 %3840, i64* %RCX, align 8, !tbaa !2428
  %3841 = icmp eq i32 %3838, -1
  %3842 = icmp eq i32 %3839, 0
  %3843 = or i1 %3841, %3842
  %3844 = zext i1 %3843 to i8
  store i8 %3844, i8* %16, align 1, !tbaa !2432
  %3845 = and i32 %3839, 255
  %3846 = tail call i32 @llvm.ctpop.i32(i32 %3845) #9
  %3847 = trunc i32 %3846 to i8
  %3848 = and i8 %3847, 1
  %3849 = xor i8 %3848, 1
  store i8 %3849, i8* %23, align 1, !tbaa !2446
  %3850 = xor i32 %3839, %3838
  %3851 = lshr i32 %3850, 4
  %3852 = trunc i32 %3851 to i8
  %3853 = and i8 %3852, 1
  store i8 %3853, i8* %29, align 1, !tbaa !2447
  %3854 = zext i1 %3842 to i8
  store i8 %3854, i8* %32, align 1, !tbaa !2448
  %3855 = lshr i32 %3839, 31
  %3856 = trunc i32 %3855 to i8
  store i8 %3856, i8* %35, align 1, !tbaa !2449
  %3857 = lshr i32 %3838, 31
  %3858 = xor i32 %3855, %3857
  %3859 = add nuw nsw i32 %3858, %3855
  %3860 = icmp eq i32 %3859, 2
  %3861 = zext i1 %3860 to i8
  store i8 %3861, i8* %41, align 1, !tbaa !2450
  %3862 = sext i32 %3839 to i64
  store i64 %3862, i64* %RDX, align 8, !tbaa !2428
  %3863 = load i64, i64* %RBP, align 8
  %3864 = shl nsw i64 %3862, 2
  %3865 = add nsw i64 %3864, -1408
  %3866 = add i64 %3865, %3863
  %3867 = add i64 %3774, 35
  store i64 %3867, i64* %PC, align 8
  %3868 = inttoptr i64 %3866 to i32*
  store i32 %3812, i32* %3868, align 4
  %3869 = load i64, i64* %RBP, align 8
  %3870 = add i64 %3869, -12
  %3871 = load i64, i64* %PC, align 8
  %3872 = add i64 %3871, 4
  store i64 %3872, i64* %PC, align 8
  %3873 = inttoptr i64 %3870 to i32*
  %3874 = load i32, i32* %3873, align 4
  %3875 = add i32 %3874, -16
  %3876 = icmp ult i32 %3874, 16
  %3877 = zext i1 %3876 to i8
  store i8 %3877, i8* %16, align 1, !tbaa !2432
  %3878 = and i32 %3875, 255
  %3879 = tail call i32 @llvm.ctpop.i32(i32 %3878) #9
  %3880 = trunc i32 %3879 to i8
  %3881 = and i8 %3880, 1
  %3882 = xor i8 %3881, 1
  store i8 %3882, i8* %23, align 1, !tbaa !2446
  %3883 = xor i32 %3874, 16
  %3884 = xor i32 %3883, %3875
  %3885 = lshr i32 %3884, 4
  %3886 = trunc i32 %3885 to i8
  %3887 = and i8 %3886, 1
  store i8 %3887, i8* %29, align 1, !tbaa !2447
  %3888 = icmp eq i32 %3875, 0
  %3889 = zext i1 %3888 to i8
  store i8 %3889, i8* %32, align 1, !tbaa !2448
  %3890 = lshr i32 %3875, 31
  %3891 = trunc i32 %3890 to i8
  store i8 %3891, i8* %35, align 1, !tbaa !2449
  %3892 = lshr i32 %3874, 31
  %3893 = xor i32 %3890, %3892
  %3894 = add nuw nsw i32 %3893, %3892
  %3895 = icmp eq i32 %3894, 2
  %3896 = zext i1 %3895 to i8
  store i8 %3896, i8* %41, align 1, !tbaa !2450
  %3897 = icmp ne i8 %3891, 0
  %3898 = xor i1 %3897, %3895
  %.v273 = select i1 %3898, i64 10, i64 366
  %3899 = add i64 %3871, %.v273
  store i64 %3899, i64* %PC, align 8, !tbaa !2428
  br i1 %3898, label %block_400e87, label %block_400feb

block_401664:                                     ; preds = %block_4015e8
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %3900 = add i64 %1111, -16
  %3901 = add i64 %1154, 8
  store i64 %3901, i64* %PC, align 8
  %3902 = inttoptr i64 %3900 to i32*
  %3903 = load i32, i32* %3902, align 4
  %3904 = zext i32 %3903 to i64
  store i64 %3904, i64* %RCX, align 8, !tbaa !2428
  %3905 = add i64 %1111, -2732
  %3906 = add i64 %1154, 14
  store i64 %3906, i64* %PC, align 8
  %3907 = inttoptr i64 %3905 to i32*
  store i32 255, i32* %3907, align 4
  %3908 = load i32, i32* %ECX, align 4
  %3909 = zext i32 %3908 to i64
  %3910 = load i64, i64* %PC, align 8
  store i64 %3909, i64* %RAX, align 8, !tbaa !2428
  %3911 = sext i32 %3908 to i64
  %3912 = lshr i64 %3911, 32
  store i64 %3912, i64* %55, align 8, !tbaa !2428
  %3913 = load i64, i64* %RBP, align 8
  %3914 = add i64 %3913, -2732
  %3915 = add i64 %3910, 9
  store i64 %3915, i64* %PC, align 8
  %3916 = inttoptr i64 %3914 to i32*
  %3917 = load i32, i32* %3916, align 4
  %3918 = zext i32 %3917 to i64
  store i64 %3918, i64* %RCX, align 8, !tbaa !2428
  %3919 = add i64 %3910, 11
  store i64 %3919, i64* %PC, align 8
  %3920 = sext i32 %3917 to i64
  %3921 = shl nuw i64 %3912, 32
  %3922 = or i64 %3921, %3909
  %3923 = sdiv i64 %3922, %3920
  %3924 = shl i64 %3923, 32
  %3925 = ashr exact i64 %3924, 32
  %3926 = icmp eq i64 %3923, %3925
  br i1 %3926, label %3929, label %3927

; <label>:3927:                                   ; preds = %block_401664
  %3928 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3919, %struct.Memory* %MEMORY.5) #12
  %.pre238 = load i64, i64* %RBP, align 8
  %.pre239 = load i32, i32* %EDX, align 4
  %.pre240 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2

; <label>:3929:                                   ; preds = %block_401664
  %3930 = srem i64 %3922, %3920
  %3931 = and i64 %3923, 4294967295
  store i64 %3931, i64* %RAX, align 8, !tbaa !2428
  %3932 = and i64 %3930, 4294967295
  store i64 %3932, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %3933 = trunc i64 %3930 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2: ; preds = %3929, %3927
  %3934 = phi i64 [ %.pre240, %3927 ], [ %3919, %3929 ]
  %3935 = phi i32 [ %.pre239, %3927 ], [ %3933, %3929 ]
  %3936 = phi i64 [ %.pre238, %3927 ], [ %3913, %3929 ]
  %3937 = phi %struct.Memory* [ %3928, %3927 ], [ %MEMORY.5, %3929 ]
  %3938 = add i64 %3936, -16
  %3939 = add i64 %3934, 3
  store i64 %3939, i64* %PC, align 8
  %3940 = inttoptr i64 %3938 to i32*
  store i32 %3935, i32* %3940, align 4
  %3941 = load i64, i64* %RBP, align 8
  %3942 = add i64 %3941, -4
  %3943 = load i64, i64* %PC, align 8
  %3944 = add i64 %3943, 4
  store i64 %3944, i64* %PC, align 8
  %3945 = inttoptr i64 %3942 to i32*
  %3946 = load i32, i32* %3945, align 4
  %3947 = sext i32 %3946 to i64
  store i64 %3947, i64* %RSI, align 8, !tbaa !2428
  %3948 = shl nsw i64 %3947, 2
  %3949 = add i64 %3941, -1568
  %3950 = add i64 %3949, %3948
  %3951 = add i64 %3943, 12
  store i64 %3951, i64* %PC, align 8
  %3952 = inttoptr i64 %3950 to i32*
  %3953 = load i32, i32* %3952, align 4
  %3954 = sext i32 %3953 to i64
  store i64 %3954, i64* %RSI, align 8, !tbaa !2428
  %3955 = shl nsw i64 %3954, 2
  %3956 = add i64 %3941, -2640
  %3957 = add i64 %3956, %3955
  %3958 = add i64 %3943, 19
  store i64 %3958, i64* %PC, align 8
  %3959 = inttoptr i64 %3957 to i32*
  %3960 = load i32, i32* %3959, align 4
  %3961 = zext i32 %3960 to i64
  store i64 %3961, i64* %RDX, align 8, !tbaa !2428
  %3962 = add i64 %3941, -16
  %3963 = add i64 %3943, 22
  store i64 %3963, i64* %PC, align 8
  %3964 = inttoptr i64 %3962 to i32*
  %3965 = load i32, i32* %3964, align 4
  %3966 = sub i32 %3960, %3965
  %3967 = lshr i32 %3966, 31
  %3968 = add i32 %3966, 255
  %3969 = zext i32 %3968 to i64
  %3970 = icmp ugt i32 %3966, -256
  %3971 = zext i1 %3970 to i8
  store i8 %3971, i8* %16, align 1, !tbaa !2432
  %3972 = and i32 %3968, 255
  %3973 = tail call i32 @llvm.ctpop.i32(i32 %3972) #9
  %3974 = trunc i32 %3973 to i8
  %3975 = and i8 %3974, 1
  %3976 = xor i8 %3975, 1
  store i8 %3976, i8* %23, align 1, !tbaa !2446
  %3977 = xor i32 %3966, 16
  %3978 = xor i32 %3977, %3968
  %3979 = lshr i32 %3978, 4
  %3980 = trunc i32 %3979 to i8
  %3981 = and i8 %3980, 1
  store i8 %3981, i8* %29, align 1, !tbaa !2447
  %3982 = icmp eq i32 %3968, 0
  %3983 = zext i1 %3982 to i8
  store i8 %3983, i8* %32, align 1, !tbaa !2448
  %3984 = lshr i32 %3968, 31
  %3985 = trunc i32 %3984 to i8
  store i8 %3985, i8* %35, align 1, !tbaa !2449
  %3986 = xor i32 %3984, %3967
  %3987 = add nuw nsw i32 %3986, %3984
  %3988 = icmp eq i32 %3987, 2
  %3989 = zext i1 %3988 to i8
  store i8 %3989, i8* %41, align 1, !tbaa !2450
  store i64 %3969, i64* %RAX, align 8, !tbaa !2428
  %3990 = sext i32 %3968 to i64
  %3991 = lshr i64 %3990, 32
  store i64 %3991, i64* %55, align 8, !tbaa !2428
  %3992 = load i32, i32* %ECX, align 4
  %3993 = add i64 %3943, 33
  store i64 %3993, i64* %PC, align 8
  %3994 = sext i32 %3992 to i64
  %3995 = shl nuw i64 %3991, 32
  %3996 = or i64 %3995, %3969
  %3997 = sdiv i64 %3996, %3994
  %3998 = shl i64 %3997, 32
  %3999 = ashr exact i64 %3998, 32
  %4000 = icmp eq i64 %3997, %3999
  br i1 %4000, label %4003, label %4001

; <label>:4001:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2
  %4002 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3993, %struct.Memory* %3937) #12
  %.pre241 = load i32, i32* %EDX, align 4
  %.pre242 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:4003:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2
  %4004 = srem i64 %3996, %3994
  %4005 = and i64 %3997, 4294967295
  store i64 %4005, i64* %RAX, align 8, !tbaa !2428
  %4006 = and i64 %4004, 4294967295
  store i64 %4006, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %4007 = trunc i64 %4004 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %4003, %4001
  %4008 = phi i64 [ %.pre242, %4001 ], [ %3993, %4003 ]
  %4009 = phi i32 [ %.pre241, %4001 ], [ %4007, %4003 ]
  %4010 = phi %struct.Memory* [ %4002, %4001 ], [ %3937, %4003 ]
  %4011 = sext i32 %4009 to i64
  store i64 %4011, i64* %RSI, align 8, !tbaa !2428
  %4012 = shl nsw i64 %4011, 2
  %4013 = add i64 %4012, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %4014 = add i64 %4008, 10
  store i64 %4014, i64* %PC, align 8
  %4015 = inttoptr i64 %4013 to i32*
  %4016 = load i32, i32* %4015, align 4
  %4017 = zext i32 %4016 to i64
  store i64 %4017, i64* %RDX, align 8, !tbaa !2428
  %4018 = load i64, i64* %RBP, align 8
  %4019 = add i64 %4018, -4
  %4020 = add i64 %4008, 14
  store i64 %4020, i64* %PC, align 8
  %4021 = inttoptr i64 %4019 to i32*
  %4022 = load i32, i32* %4021, align 4
  %4023 = sext i32 %4022 to i64
  store i64 %4023, i64* %RSI, align 8, !tbaa !2428
  %4024 = shl nsw i64 %4023, 2
  %4025 = add i64 %4018, -1568
  %4026 = add i64 %4025, %4024
  %4027 = add i64 %4008, 22
  store i64 %4027, i64* %PC, align 8
  %4028 = inttoptr i64 %4026 to i32*
  %4029 = load i32, i32* %4028, align 4
  %4030 = sext i32 %4029 to i64
  store i64 %4030, i64* %RSI, align 8, !tbaa !2428
  %4031 = shl nsw i64 %4030, 2
  %4032 = add i64 %4018, -2640
  %4033 = add i64 %4032, %4031
  %4034 = add i64 %4008, 29
  store i64 %4034, i64* %PC, align 8
  %4035 = inttoptr i64 %4033 to i32*
  store i32 %4016, i32* %4035, align 4
  %4036 = load i64, i64* %RBP, align 8
  %4037 = add i64 %4036, -4
  %4038 = load i64, i64* %PC, align 8
  %4039 = add i64 %4038, 4
  store i64 %4039, i64* %PC, align 8
  %4040 = inttoptr i64 %4037 to i32*
  %4041 = load i32, i32* %4040, align 4
  %4042 = sext i32 %4041 to i64
  store i64 %4042, i64* %RSI, align 8, !tbaa !2428
  %4043 = shl nsw i64 %4042, 2
  %4044 = add i64 %4036, -1568
  %4045 = add i64 %4044, %4043
  %4046 = add i64 %4038, 12
  store i64 %4046, i64* %PC, align 8
  %4047 = inttoptr i64 %4045 to i32*
  %4048 = load i32, i32* %4047, align 4
  %4049 = sext i32 %4048 to i64
  store i64 %4049, i64* %RSI, align 8, !tbaa !2428
  %4050 = shl nsw i64 %4049, 2
  %4051 = add i64 %4036, -2640
  %4052 = add i64 %4051, %4050
  %4053 = add i64 %4038, 19
  store i64 %4053, i64* %PC, align 8
  %4054 = inttoptr i64 %4052 to i32*
  %4055 = load i32, i32* %4054, align 4
  %4056 = zext i32 %4055 to i64
  store i64 %4056, i64* %RDX, align 8, !tbaa !2428
  %4057 = add i64 %4038, 23
  store i64 %4057, i64* %PC, align 8
  %4058 = load i32, i32* %4040, align 4
  %4059 = sext i32 %4058 to i64
  store i64 %4059, i64* %RSI, align 8, !tbaa !2428
  %4060 = shl nsw i64 %4059, 2
  %4061 = add i64 %4044, %4060
  %4062 = add i64 %4038, 31
  store i64 %4062, i64* %PC, align 8
  %4063 = inttoptr i64 %4061 to i32*
  %4064 = load i32, i32* %4063, align 4
  %4065 = sext i32 %4064 to i64
  store i64 %4065, i64* %RSI, align 8, !tbaa !2428
  %4066 = shl nsw i64 %4065, 2
  %4067 = add i64 %4066, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %4068 = add i64 %4038, 38
  store i64 %4068, i64* %PC, align 8
  %4069 = inttoptr i64 %4067 to i32*
  %4070 = load i32, i32* %4069, align 4
  %4071 = xor i32 %4070, %4055
  %4072 = zext i32 %4071 to i64
  store i64 %4072, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %4073 = and i32 %4071, 255
  %4074 = tail call i32 @llvm.ctpop.i32(i32 %4073) #9
  %4075 = trunc i32 %4074 to i8
  %4076 = and i8 %4075, 1
  %4077 = xor i8 %4076, 1
  store i8 %4077, i8* %23, align 1, !tbaa !2446
  %4078 = icmp eq i32 %4071, 0
  %4079 = zext i1 %4078 to i8
  store i8 %4079, i8* %32, align 1, !tbaa !2448
  %4080 = lshr i32 %4071, 31
  %4081 = trunc i32 %4080 to i8
  store i8 %4081, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %4082 = add i64 %4038, 45
  store i64 %4082, i64* %PC, align 8
  store i32 %4071, i32* %4069, align 4
  %.pre248 = load i64, i64* %PC, align 8
  %.pre249 = load i64, i64* %RBP, align 8
  br label %block_4016eb

block_40170a:                                     ; preds = %block_401703, %block_40175b
  %4083 = phi i64 [ %.pre251, %block_401703 ], [ %1252, %block_40175b ]
  %4084 = load i64, i64* %RBP, align 8
  %4085 = add i64 %4084, -4
  %4086 = add i64 %4083, 7
  store i64 %4086, i64* %PC, align 8
  %4087 = inttoptr i64 %4085 to i32*
  %4088 = load i32, i32* %4087, align 4
  %4089 = add i32 %4088, -255
  %4090 = icmp ult i32 %4088, 255
  %4091 = zext i1 %4090 to i8
  store i8 %4091, i8* %16, align 1, !tbaa !2432
  %4092 = and i32 %4089, 255
  %4093 = tail call i32 @llvm.ctpop.i32(i32 %4092) #9
  %4094 = trunc i32 %4093 to i8
  %4095 = and i8 %4094, 1
  %4096 = xor i8 %4095, 1
  store i8 %4096, i8* %23, align 1, !tbaa !2446
  %4097 = xor i32 %4088, 16
  %4098 = xor i32 %4097, %4089
  %4099 = lshr i32 %4098, 4
  %4100 = trunc i32 %4099 to i8
  %4101 = and i8 %4100, 1
  store i8 %4101, i8* %29, align 1, !tbaa !2447
  %4102 = icmp eq i32 %4089, 0
  %4103 = zext i1 %4102 to i8
  store i8 %4103, i8* %32, align 1, !tbaa !2448
  %4104 = lshr i32 %4089, 31
  %4105 = trunc i32 %4104 to i8
  store i8 %4105, i8* %35, align 1, !tbaa !2449
  %4106 = lshr i32 %4088, 31
  %4107 = xor i32 %4104, %4106
  %4108 = add nuw nsw i32 %4107, %4106
  %4109 = icmp eq i32 %4108, 2
  %4110 = zext i1 %4109 to i8
  store i8 %4110, i8* %41, align 1, !tbaa !2450
  %4111 = icmp ne i8 %4105, 0
  %4112 = xor i1 %4111, %4109
  %.v269 = select i1 %4112, i64 13, i64 100
  %4113 = add i64 %4083, %.v269
  store i64 %4113, i64* %PC, align 8, !tbaa !2428
  br i1 %4112, label %block_401717, label %block_401773.loopexit423

block_400c9a:                                     ; preds = %block_400c56
  %4114 = add i64 %3180, -16
  %4115 = add i64 %3179, 4
  store i64 %4115, i64* %PC, align 8
  %4116 = inttoptr i64 %4114 to i32*
  %4117 = load i32, i32* %4116, align 4
  %4118 = sext i32 %4117 to i64
  store i64 %4118, i64* %RAX, align 8, !tbaa !2428
  %4119 = shl nsw i64 %4118, 2
  %4120 = add i64 %3180, -1328
  %4121 = add i64 %4120, %4119
  %4122 = add i64 %3179, 11
  store i64 %4122, i64* %PC, align 8
  %4123 = inttoptr i64 %4121 to i32*
  %4124 = load i32, i32* %4123, align 4
  %4125 = zext i32 %4124 to i64
  store i64 %4125, i64* %RCX, align 8, !tbaa !2428
  %4126 = add i64 %3180, -12
  %4127 = add i64 %3179, 14
  store i64 %4127, i64* %PC, align 8
  %4128 = inttoptr i64 %4126 to i32*
  %4129 = load i32, i32* %4128, align 4
  %4130 = add i32 %4129, %4124
  %4131 = zext i32 %4130 to i64
  store i64 %4131, i64* %RCX, align 8, !tbaa !2428
  %4132 = icmp ult i32 %4130, %4124
  %4133 = icmp ult i32 %4130, %4129
  %4134 = or i1 %4132, %4133
  %4135 = zext i1 %4134 to i8
  store i8 %4135, i8* %16, align 1, !tbaa !2432
  %4136 = and i32 %4130, 255
  %4137 = tail call i32 @llvm.ctpop.i32(i32 %4136) #9
  %4138 = trunc i32 %4137 to i8
  %4139 = and i8 %4138, 1
  %4140 = xor i8 %4139, 1
  store i8 %4140, i8* %23, align 1, !tbaa !2446
  %4141 = xor i32 %4129, %4124
  %4142 = xor i32 %4141, %4130
  %4143 = lshr i32 %4142, 4
  %4144 = trunc i32 %4143 to i8
  %4145 = and i8 %4144, 1
  store i8 %4145, i8* %29, align 1, !tbaa !2447
  %4146 = icmp eq i32 %4130, 0
  %4147 = zext i1 %4146 to i8
  store i8 %4147, i8* %32, align 1, !tbaa !2448
  %4148 = lshr i32 %4130, 31
  %4149 = trunc i32 %4148 to i8
  store i8 %4149, i8* %35, align 1, !tbaa !2449
  %4150 = lshr i32 %4124, 31
  %4151 = lshr i32 %4129, 31
  %4152 = xor i32 %4148, %4150
  %4153 = xor i32 %4148, %4151
  %4154 = add nuw nsw i32 %4152, %4153
  %4155 = icmp eq i32 %4154, 2
  %4156 = zext i1 %4155 to i8
  store i8 %4156, i8* %41, align 1, !tbaa !2450
  %4157 = add i64 %3179, 17
  store i64 %4157, i64* %PC, align 8
  %4158 = load i32, i32* %4116, align 4
  %4159 = sub i32 %4130, %4158
  %4160 = zext i32 %4159 to i64
  store i64 %4160, i64* %RCX, align 8, !tbaa !2428
  %4161 = icmp ult i32 %4130, %4158
  %4162 = zext i1 %4161 to i8
  store i8 %4162, i8* %16, align 1, !tbaa !2432
  %4163 = and i32 %4159, 255
  %4164 = tail call i32 @llvm.ctpop.i32(i32 %4163) #9
  %4165 = trunc i32 %4164 to i8
  %4166 = and i8 %4165, 1
  %4167 = xor i8 %4166, 1
  store i8 %4167, i8* %23, align 1, !tbaa !2446
  %4168 = xor i32 %4158, %4130
  %4169 = xor i32 %4168, %4159
  %4170 = lshr i32 %4169, 4
  %4171 = trunc i32 %4170 to i8
  %4172 = and i8 %4171, 1
  store i8 %4172, i8* %29, align 1, !tbaa !2447
  %4173 = icmp eq i32 %4159, 0
  %4174 = zext i1 %4173 to i8
  store i8 %4174, i8* %32, align 1, !tbaa !2448
  %4175 = lshr i32 %4159, 31
  %4176 = trunc i32 %4175 to i8
  store i8 %4176, i8* %35, align 1, !tbaa !2449
  %4177 = lshr i32 %4158, 31
  %4178 = xor i32 %4177, %4148
  %4179 = xor i32 %4175, %4148
  %4180 = add nuw nsw i32 %4179, %4178
  %4181 = icmp eq i32 %4180, 2
  %4182 = zext i1 %4181 to i8
  store i8 %4182, i8* %41, align 1, !tbaa !2450
  %4183 = add i64 %3179, 20
  store i64 %4183, i64* %PC, align 8
  %4184 = load i32, i32* %4128, align 4
  %4185 = add i32 %4184, 1
  %4186 = zext i32 %4185 to i64
  store i64 %4186, i64* %RDX, align 8, !tbaa !2428
  %4187 = icmp eq i32 %4184, -1
  %4188 = icmp eq i32 %4185, 0
  %4189 = or i1 %4187, %4188
  %4190 = zext i1 %4189 to i8
  store i8 %4190, i8* %16, align 1, !tbaa !2432
  %4191 = and i32 %4185, 255
  %4192 = tail call i32 @llvm.ctpop.i32(i32 %4191) #9
  %4193 = trunc i32 %4192 to i8
  %4194 = and i8 %4193, 1
  %4195 = xor i8 %4194, 1
  store i8 %4195, i8* %23, align 1, !tbaa !2446
  %4196 = xor i32 %4185, %4184
  %4197 = lshr i32 %4196, 4
  %4198 = trunc i32 %4197 to i8
  %4199 = and i8 %4198, 1
  store i8 %4199, i8* %29, align 1, !tbaa !2447
  %4200 = zext i1 %4188 to i8
  store i8 %4200, i8* %32, align 1, !tbaa !2448
  %4201 = lshr i32 %4185, 31
  %4202 = trunc i32 %4201 to i8
  store i8 %4202, i8* %35, align 1, !tbaa !2449
  %4203 = lshr i32 %4184, 31
  %4204 = xor i32 %4201, %4203
  %4205 = add nuw nsw i32 %4204, %4201
  %4206 = icmp eq i32 %4205, 2
  %4207 = zext i1 %4206 to i8
  store i8 %4207, i8* %41, align 1, !tbaa !2450
  %4208 = sext i32 %4185 to i64
  store i64 %4208, i64* %RAX, align 8, !tbaa !2428
  %4209 = load i64, i64* %RBP, align 8
  %4210 = shl nsw i64 %4208, 2
  %4211 = add nsw i64 %4210, -1328
  %4212 = add i64 %4211, %4209
  %4213 = add i64 %3179, 33
  store i64 %4213, i64* %PC, align 8
  %4214 = inttoptr i64 %4212 to i32*
  store i32 %4159, i32* %4214, align 4
  %.pre191 = load i64, i64* %PC, align 8
  br label %block_400cbb

block_401836:                                     ; preds = %block_401801
  %4215 = add i64 %6236, 15
  store i64 %4215, i64* %PC, align 8
  %4216 = inttoptr i64 %6241 to i32*
  store i32 0, i32* %4216, align 4
  %.pre256 = load i64, i64* %PC, align 8
  br label %block_401845

block_400b2a:                                     ; preds = %block_400b16
  %4217 = add i64 %4876, -1168
  store i64 %4217, i64* %RAX, align 8, !tbaa !2428
  %4218 = add i64 %4919, 11
  store i64 %4218, i64* %PC, align 8
  %4219 = load i32, i32* %4884, align 4
  %4220 = sext i32 %4219 to i64
  %4221 = shl nsw i64 %4220, 6
  store i64 %4221, i64* %RCX, align 8, !tbaa !2428
  %4222 = add i64 %4221, %4217
  store i64 %4222, i64* %RDX, align 8, !tbaa !2428
  %4223 = icmp ult i64 %4222, %4217
  %4224 = icmp ult i64 %4222, %4221
  %4225 = or i1 %4223, %4224
  %4226 = zext i1 %4225 to i8
  store i8 %4226, i8* %16, align 1, !tbaa !2432
  %4227 = trunc i64 %4222 to i32
  %4228 = and i32 %4227, 255
  %4229 = tail call i32 @llvm.ctpop.i32(i32 %4228) #9
  %4230 = trunc i32 %4229 to i8
  %4231 = and i8 %4230, 1
  %4232 = xor i8 %4231, 1
  store i8 %4232, i8* %23, align 1, !tbaa !2446
  %4233 = xor i64 %4217, %4222
  %4234 = lshr i64 %4233, 4
  %4235 = trunc i64 %4234 to i8
  %4236 = and i8 %4235, 1
  store i8 %4236, i8* %29, align 1, !tbaa !2447
  %4237 = icmp eq i64 %4222, 0
  %4238 = zext i1 %4237 to i8
  store i8 %4238, i8* %32, align 1, !tbaa !2448
  %4239 = lshr i64 %4222, 63
  %4240 = trunc i64 %4239 to i8
  store i8 %4240, i8* %35, align 1, !tbaa !2449
  %4241 = lshr i64 %4217, 63
  %4242 = lshr i64 %4220, 57
  %4243 = and i64 %4242, 1
  %4244 = xor i64 %4239, %4241
  %4245 = xor i64 %4239, %4243
  %4246 = add nuw nsw i64 %4244, %4245
  %4247 = icmp eq i64 %4246, 2
  %4248 = zext i1 %4247 to i8
  store i8 %4248, i8* %41, align 1, !tbaa !2450
  %4249 = add i64 %4919, 25
  store i64 %4249, i64* %PC, align 8
  %4250 = load i32, i32* %4879, align 4
  %4251 = sext i32 %4250 to i64
  store i64 %4251, i64* %RCX, align 8, !tbaa !2428
  %4252 = shl nsw i64 %4251, 2
  %4253 = add i64 %4252, %4222
  %4254 = add i64 %4919, 28
  store i64 %4254, i64* %PC, align 8
  %4255 = inttoptr i64 %4253 to i32*
  %4256 = load i32, i32* %4255, align 4
  %4257 = zext i32 %4256 to i64
  store i64 %4257, i64* %RSI, align 8, !tbaa !2428
  %4258 = add i64 %4919, 31
  store i64 %4258, i64* %PC, align 8
  %4259 = load i32, i32* %4884, align 4
  %4260 = add i32 %4259, 1
  %4261 = zext i32 %4260 to i64
  store i64 %4261, i64* %RDI, align 8, !tbaa !2428
  %4262 = sext i32 %4260 to i64
  %4263 = shl nsw i64 %4262, 6
  store i64 %4263, i64* %RCX, align 8, !tbaa !2428
  %4264 = load i64, i64* %RAX, align 8
  %4265 = add i64 %4263, %4264
  store i64 %4265, i64* %RDX, align 8, !tbaa !2428
  %4266 = icmp ult i64 %4265, %4264
  %4267 = icmp ult i64 %4265, %4263
  %4268 = or i1 %4266, %4267
  %4269 = zext i1 %4268 to i8
  store i8 %4269, i8* %16, align 1, !tbaa !2432
  %4270 = trunc i64 %4265 to i32
  %4271 = and i32 %4270, 255
  %4272 = tail call i32 @llvm.ctpop.i32(i32 %4271) #9
  %4273 = trunc i32 %4272 to i8
  %4274 = and i8 %4273, 1
  %4275 = xor i8 %4274, 1
  store i8 %4275, i8* %23, align 1, !tbaa !2446
  %4276 = xor i64 %4264, %4265
  %4277 = lshr i64 %4276, 4
  %4278 = trunc i64 %4277 to i8
  %4279 = and i8 %4278, 1
  store i8 %4279, i8* %29, align 1, !tbaa !2447
  %4280 = icmp eq i64 %4265, 0
  %4281 = zext i1 %4280 to i8
  store i8 %4281, i8* %32, align 1, !tbaa !2448
  %4282 = lshr i64 %4265, 63
  %4283 = trunc i64 %4282 to i8
  store i8 %4283, i8* %35, align 1, !tbaa !2449
  %4284 = lshr i64 %4264, 63
  %4285 = lshr i64 %4262, 57
  %4286 = and i64 %4285, 1
  %4287 = xor i64 %4282, %4284
  %4288 = xor i64 %4282, %4286
  %4289 = add nuw nsw i64 %4287, %4288
  %4290 = icmp eq i64 %4289, 2
  %4291 = zext i1 %4290 to i8
  store i8 %4291, i8* %41, align 1, !tbaa !2450
  %4292 = load i64, i64* %RBP, align 8
  %4293 = add i64 %4292, -4
  %4294 = add i64 %4919, 51
  store i64 %4294, i64* %PC, align 8
  %4295 = inttoptr i64 %4293 to i32*
  %4296 = load i32, i32* %4295, align 4
  %4297 = sext i32 %4296 to i64
  store i64 %4297, i64* %RCX, align 8, !tbaa !2428
  %4298 = shl nsw i64 %4297, 2
  %4299 = add i64 %4298, %4265
  %4300 = load i32, i32* %ESI, align 4
  %4301 = add i64 %4919, 54
  store i64 %4301, i64* %PC, align 8
  %4302 = inttoptr i64 %4299 to i32*
  store i32 %4300, i32* %4302, align 4
  %4303 = load i64, i64* %RBP, align 8
  %4304 = add i64 %4303, -12
  %4305 = load i64, i64* %PC, align 8
  %4306 = add i64 %4305, 4
  store i64 %4306, i64* %PC, align 8
  %4307 = inttoptr i64 %4304 to i32*
  %4308 = load i32, i32* %4307, align 4
  %4309 = sext i32 %4308 to i64
  %4310 = shl nsw i64 %4309, 6
  store i64 %4310, i64* %RCX, align 8, !tbaa !2428
  %4311 = load i64, i64* %RAX, align 8
  %4312 = add i64 %4310, %4311
  store i64 %4312, i64* %RDX, align 8, !tbaa !2428
  %4313 = icmp ult i64 %4312, %4311
  %4314 = icmp ult i64 %4312, %4310
  %4315 = or i1 %4313, %4314
  %4316 = zext i1 %4315 to i8
  store i8 %4316, i8* %16, align 1, !tbaa !2432
  %4317 = trunc i64 %4312 to i32
  %4318 = and i32 %4317, 255
  %4319 = tail call i32 @llvm.ctpop.i32(i32 %4318) #9
  %4320 = trunc i32 %4319 to i8
  %4321 = and i8 %4320, 1
  %4322 = xor i8 %4321, 1
  store i8 %4322, i8* %23, align 1, !tbaa !2446
  %4323 = xor i64 %4311, %4312
  %4324 = lshr i64 %4323, 4
  %4325 = trunc i64 %4324 to i8
  %4326 = and i8 %4325, 1
  store i8 %4326, i8* %29, align 1, !tbaa !2447
  %4327 = icmp eq i64 %4312, 0
  %4328 = zext i1 %4327 to i8
  store i8 %4328, i8* %32, align 1, !tbaa !2448
  %4329 = lshr i64 %4312, 63
  %4330 = trunc i64 %4329 to i8
  store i8 %4330, i8* %35, align 1, !tbaa !2449
  %4331 = lshr i64 %4311, 63
  %4332 = lshr i64 %4309, 57
  %4333 = and i64 %4332, 1
  %4334 = xor i64 %4329, %4331
  %4335 = xor i64 %4329, %4333
  %4336 = add nuw nsw i64 %4334, %4335
  %4337 = icmp eq i64 %4336, 2
  %4338 = zext i1 %4337 to i8
  store i8 %4338, i8* %41, align 1, !tbaa !2450
  %4339 = add i64 %4303, -4
  %4340 = add i64 %4305, 18
  store i64 %4340, i64* %PC, align 8
  %4341 = inttoptr i64 %4339 to i32*
  %4342 = load i32, i32* %4341, align 4
  %4343 = sext i32 %4342 to i64
  store i64 %4343, i64* %RCX, align 8, !tbaa !2428
  %4344 = shl nsw i64 %4343, 2
  %4345 = add i64 %4344, %4312
  %4346 = add i64 %4305, 22
  store i64 %4346, i64* %PC, align 8
  %4347 = inttoptr i64 %4345 to i32*
  %4348 = load i32, i32* %4347, align 4
  %4349 = sext i32 %4348 to i64
  store i64 %4349, i64* %RCX, align 8, !tbaa !2428
  %4350 = shl nsw i64 %4349, 2
  %4351 = add i64 %4350, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %4352 = add i64 %4305, 29
  store i64 %4352, i64* %PC, align 8
  %4353 = inttoptr i64 %4351 to i32*
  %4354 = load i32, i32* %4353, align 4
  %4355 = zext i32 %4354 to i64
  store i64 %4355, i64* %RSI, align 8, !tbaa !2428
  %4356 = add i64 %4305, 33
  store i64 %4356, i64* %PC, align 8
  %4357 = load i32, i32* %4307, align 4
  %4358 = sext i32 %4357 to i64
  %4359 = shl nsw i64 %4358, 6
  store i64 %4359, i64* %RCX, align 8, !tbaa !2428
  %4360 = add i64 %4359, %4311
  store i64 %4360, i64* %RAX, align 8, !tbaa !2428
  %4361 = icmp ult i64 %4360, %4311
  %4362 = icmp ult i64 %4360, %4359
  %4363 = or i1 %4361, %4362
  %4364 = zext i1 %4363 to i8
  store i8 %4364, i8* %16, align 1, !tbaa !2432
  %4365 = trunc i64 %4360 to i32
  %4366 = and i32 %4365, 255
  %4367 = tail call i32 @llvm.ctpop.i32(i32 %4366) #9
  %4368 = trunc i32 %4367 to i8
  %4369 = and i8 %4368, 1
  %4370 = xor i8 %4369, 1
  store i8 %4370, i8* %23, align 1, !tbaa !2446
  %4371 = xor i64 %4311, %4360
  %4372 = lshr i64 %4371, 4
  %4373 = trunc i64 %4372 to i8
  %4374 = and i8 %4373, 1
  store i8 %4374, i8* %29, align 1, !tbaa !2447
  %4375 = icmp eq i64 %4360, 0
  %4376 = zext i1 %4375 to i8
  store i8 %4376, i8* %32, align 1, !tbaa !2448
  %4377 = lshr i64 %4360, 63
  %4378 = trunc i64 %4377 to i8
  store i8 %4378, i8* %35, align 1, !tbaa !2449
  %4379 = lshr i64 %4358, 57
  %4380 = and i64 %4379, 1
  %4381 = xor i64 %4377, %4331
  %4382 = xor i64 %4377, %4380
  %4383 = add nuw nsw i64 %4381, %4382
  %4384 = icmp eq i64 %4383, 2
  %4385 = zext i1 %4384 to i8
  store i8 %4385, i8* %41, align 1, !tbaa !2450
  %4386 = load i64, i64* %RBP, align 8
  %4387 = add i64 %4386, -4
  %4388 = add i64 %4305, 44
  store i64 %4388, i64* %PC, align 8
  %4389 = inttoptr i64 %4387 to i32*
  %4390 = load i32, i32* %4389, align 4
  %4391 = sext i32 %4390 to i64
  store i64 %4391, i64* %RCX, align 8, !tbaa !2428
  %4392 = shl nsw i64 %4391, 2
  %4393 = add i64 %4392, %4360
  %4394 = add i64 %4305, 47
  store i64 %4394, i64* %PC, align 8
  %4395 = inttoptr i64 %4393 to i32*
  store i32 %4354, i32* %4395, align 4
  %4396 = load i64, i64* %RBP, align 8
  %4397 = add i64 %4396, -4
  %4398 = load i64, i64* %PC, align 8
  %4399 = add i64 %4398, 3
  store i64 %4399, i64* %PC, align 8
  %4400 = inttoptr i64 %4397 to i32*
  %4401 = load i32, i32* %4400, align 4
  %4402 = add i32 %4401, 1
  %4403 = zext i32 %4402 to i64
  store i64 %4403, i64* %RAX, align 8, !tbaa !2428
  %4404 = icmp eq i32 %4401, -1
  %4405 = icmp eq i32 %4402, 0
  %4406 = or i1 %4404, %4405
  %4407 = zext i1 %4406 to i8
  store i8 %4407, i8* %16, align 1, !tbaa !2432
  %4408 = and i32 %4402, 255
  %4409 = tail call i32 @llvm.ctpop.i32(i32 %4408) #9
  %4410 = trunc i32 %4409 to i8
  %4411 = and i8 %4410, 1
  %4412 = xor i8 %4411, 1
  store i8 %4412, i8* %23, align 1, !tbaa !2446
  %4413 = xor i32 %4402, %4401
  %4414 = lshr i32 %4413, 4
  %4415 = trunc i32 %4414 to i8
  %4416 = and i8 %4415, 1
  store i8 %4416, i8* %29, align 1, !tbaa !2447
  %4417 = zext i1 %4405 to i8
  store i8 %4417, i8* %32, align 1, !tbaa !2448
  %4418 = lshr i32 %4402, 31
  %4419 = trunc i32 %4418 to i8
  store i8 %4419, i8* %35, align 1, !tbaa !2449
  %4420 = lshr i32 %4401, 31
  %4421 = xor i32 %4418, %4420
  %4422 = add nuw nsw i32 %4421, %4418
  %4423 = icmp eq i32 %4422, 2
  %4424 = zext i1 %4423 to i8
  store i8 %4424, i8* %41, align 1, !tbaa !2450
  %4425 = add i64 %4398, 9
  store i64 %4425, i64* %PC, align 8
  store i32 %4402, i32* %4400, align 4
  %4426 = load i64, i64* %PC, align 8
  %4427 = add i64 %4426, -130
  store i64 %4427, i64* %PC, align 8, !tbaa !2428
  br label %block_400b16

block_401062:                                     ; preds = %block_40104e
  %4428 = add i64 %4921, -1168
  store i64 %4428, i64* %RAX, align 8, !tbaa !2428
  %4429 = add i64 %4964, 11
  store i64 %4429, i64* %PC, align 8
  %4430 = load i32, i32* %4929, align 4
  %4431 = sext i32 %4430 to i64
  %4432 = shl nsw i64 %4431, 6
  store i64 %4432, i64* %RCX, align 8, !tbaa !2428
  %4433 = add i64 %4432, %4428
  store i64 %4433, i64* %RDX, align 8, !tbaa !2428
  %4434 = icmp ult i64 %4433, %4428
  %4435 = icmp ult i64 %4433, %4432
  %4436 = or i1 %4434, %4435
  %4437 = zext i1 %4436 to i8
  store i8 %4437, i8* %16, align 1, !tbaa !2432
  %4438 = trunc i64 %4433 to i32
  %4439 = and i32 %4438, 255
  %4440 = tail call i32 @llvm.ctpop.i32(i32 %4439) #9
  %4441 = trunc i32 %4440 to i8
  %4442 = and i8 %4441, 1
  %4443 = xor i8 %4442, 1
  store i8 %4443, i8* %23, align 1, !tbaa !2446
  %4444 = xor i64 %4428, %4433
  %4445 = lshr i64 %4444, 4
  %4446 = trunc i64 %4445 to i8
  %4447 = and i8 %4446, 1
  store i8 %4447, i8* %29, align 1, !tbaa !2447
  %4448 = icmp eq i64 %4433, 0
  %4449 = zext i1 %4448 to i8
  store i8 %4449, i8* %32, align 1, !tbaa !2448
  %4450 = lshr i64 %4433, 63
  %4451 = trunc i64 %4450 to i8
  store i8 %4451, i8* %35, align 1, !tbaa !2449
  %4452 = lshr i64 %4428, 63
  %4453 = lshr i64 %4431, 57
  %4454 = and i64 %4453, 1
  %4455 = xor i64 %4450, %4452
  %4456 = xor i64 %4450, %4454
  %4457 = add nuw nsw i64 %4455, %4456
  %4458 = icmp eq i64 %4457, 2
  %4459 = zext i1 %4458 to i8
  store i8 %4459, i8* %41, align 1, !tbaa !2450
  %4460 = add i64 %4964, 25
  store i64 %4460, i64* %PC, align 8
  %4461 = load i32, i32* %4924, align 4
  %4462 = sext i32 %4461 to i64
  store i64 %4462, i64* %RCX, align 8, !tbaa !2428
  %4463 = shl nsw i64 %4462, 2
  %4464 = add i64 %4463, %4433
  %4465 = add i64 %4964, 29
  store i64 %4465, i64* %PC, align 8
  %4466 = inttoptr i64 %4464 to i32*
  %4467 = load i32, i32* %4466, align 4
  %4468 = sext i32 %4467 to i64
  store i64 %4468, i64* %RCX, align 8, !tbaa !2428
  %4469 = shl nsw i64 %4468, 2
  %4470 = add i64 %4469, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %4471 = add i64 %4964, 36
  store i64 %4471, i64* %PC, align 8
  %4472 = inttoptr i64 %4470 to i32*
  %4473 = load i32, i32* %4472, align 4
  %4474 = zext i32 %4473 to i64
  store i64 %4474, i64* %RSI, align 8, !tbaa !2428
  %4475 = add i64 %4964, 40
  store i64 %4475, i64* %PC, align 8
  %4476 = load i32, i32* %4929, align 4
  %4477 = sext i32 %4476 to i64
  %4478 = shl nsw i64 %4477, 6
  store i64 %4478, i64* %RCX, align 8, !tbaa !2428
  %4479 = load i64, i64* %RAX, align 8
  %4480 = add i64 %4478, %4479
  store i64 %4480, i64* %RAX, align 8, !tbaa !2428
  %4481 = icmp ult i64 %4480, %4479
  %4482 = icmp ult i64 %4480, %4478
  %4483 = or i1 %4481, %4482
  %4484 = zext i1 %4483 to i8
  store i8 %4484, i8* %16, align 1, !tbaa !2432
  %4485 = trunc i64 %4480 to i32
  %4486 = and i32 %4485, 255
  %4487 = tail call i32 @llvm.ctpop.i32(i32 %4486) #9
  %4488 = trunc i32 %4487 to i8
  %4489 = and i8 %4488, 1
  %4490 = xor i8 %4489, 1
  store i8 %4490, i8* %23, align 1, !tbaa !2446
  %4491 = xor i64 %4479, %4480
  %4492 = lshr i64 %4491, 4
  %4493 = trunc i64 %4492 to i8
  %4494 = and i8 %4493, 1
  store i8 %4494, i8* %29, align 1, !tbaa !2447
  %4495 = icmp eq i64 %4480, 0
  %4496 = zext i1 %4495 to i8
  store i8 %4496, i8* %32, align 1, !tbaa !2448
  %4497 = lshr i64 %4480, 63
  %4498 = trunc i64 %4497 to i8
  store i8 %4498, i8* %35, align 1, !tbaa !2449
  %4499 = lshr i64 %4479, 63
  %4500 = lshr i64 %4477, 57
  %4501 = and i64 %4500, 1
  %4502 = xor i64 %4497, %4499
  %4503 = xor i64 %4497, %4501
  %4504 = add nuw nsw i64 %4502, %4503
  %4505 = icmp eq i64 %4504, 2
  %4506 = zext i1 %4505 to i8
  store i8 %4506, i8* %41, align 1, !tbaa !2450
  %4507 = load i64, i64* %RBP, align 8
  %4508 = add i64 %4507, -4
  %4509 = add i64 %4964, 51
  store i64 %4509, i64* %PC, align 8
  %4510 = inttoptr i64 %4508 to i32*
  %4511 = load i32, i32* %4510, align 4
  %4512 = sext i32 %4511 to i64
  store i64 %4512, i64* %RCX, align 8, !tbaa !2428
  %4513 = shl nsw i64 %4512, 2
  %4514 = add i64 %4513, %4480
  %4515 = add i64 %4964, 54
  store i64 %4515, i64* %PC, align 8
  %4516 = inttoptr i64 %4514 to i32*
  store i32 %4473, i32* %4516, align 4
  %4517 = load i64, i64* %RBP, align 8
  %4518 = add i64 %4517, -4
  %4519 = load i64, i64* %PC, align 8
  %4520 = add i64 %4519, 3
  store i64 %4520, i64* %PC, align 8
  %4521 = inttoptr i64 %4518 to i32*
  %4522 = load i32, i32* %4521, align 4
  %4523 = add i32 %4522, 1
  %4524 = zext i32 %4523 to i64
  store i64 %4524, i64* %RAX, align 8, !tbaa !2428
  %4525 = icmp eq i32 %4522, -1
  %4526 = icmp eq i32 %4523, 0
  %4527 = or i1 %4525, %4526
  %4528 = zext i1 %4527 to i8
  store i8 %4528, i8* %16, align 1, !tbaa !2432
  %4529 = and i32 %4523, 255
  %4530 = tail call i32 @llvm.ctpop.i32(i32 %4529) #9
  %4531 = trunc i32 %4530 to i8
  %4532 = and i8 %4531, 1
  %4533 = xor i8 %4532, 1
  store i8 %4533, i8* %23, align 1, !tbaa !2446
  %4534 = xor i32 %4523, %4522
  %4535 = lshr i32 %4534, 4
  %4536 = trunc i32 %4535 to i8
  %4537 = and i8 %4536, 1
  store i8 %4537, i8* %29, align 1, !tbaa !2447
  %4538 = zext i1 %4526 to i8
  store i8 %4538, i8* %32, align 1, !tbaa !2448
  %4539 = lshr i32 %4523, 31
  %4540 = trunc i32 %4539 to i8
  store i8 %4540, i8* %35, align 1, !tbaa !2449
  %4541 = lshr i32 %4522, 31
  %4542 = xor i32 %4539, %4541
  %4543 = add nuw nsw i32 %4542, %4539
  %4544 = icmp eq i32 %4543, 2
  %4545 = zext i1 %4544 to i8
  store i8 %4545, i8* %41, align 1, !tbaa !2450
  %4546 = add i64 %4519, 9
  store i64 %4546, i64* %PC, align 8
  store i32 %4523, i32* %4521, align 4
  %4547 = load i64, i64* %PC, align 8
  %4548 = add i64 %4547, -83
  store i64 %4548, i64* %PC, align 8, !tbaa !2428
  br label %block_40104e

block_401257:                                     ; preds = %block_401237
  %4549 = add i64 %.pre220, -1168
  store i64 %4549, i64* %RAX, align 8, !tbaa !2428
  %4550 = add i64 %.pre220, -4
  %4551 = add i64 %5188, 11
  store i64 %4551, i64* %PC, align 8
  %4552 = inttoptr i64 %4550 to i32*
  %4553 = load i32, i32* %4552, align 4
  %4554 = sext i32 %4553 to i64
  store i64 %4554, i64* %RCX, align 8, !tbaa !2428
  %4555 = shl nsw i64 %4554, 2
  %4556 = add i64 %.pre220, -1488
  %4557 = add i64 %4556, %4555
  %4558 = add i64 %5188, 19
  store i64 %4558, i64* %PC, align 8
  %4559 = inttoptr i64 %4557 to i32*
  %4560 = load i32, i32* %4559, align 4
  %4561 = sext i32 %4560 to i64
  store i64 %4561, i64* %RCX, align 8, !tbaa !2428
  %4562 = shl nsw i64 %4561, 2
  %4563 = add i64 %4562, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %4564 = add i64 %5188, 26
  store i64 %4564, i64* %PC, align 8
  %4565 = inttoptr i64 %4563 to i32*
  %4566 = load i32, i32* %4565, align 4
  %4567 = zext i32 %4566 to i64
  store i64 %4567, i64* %RDX, align 8, !tbaa !2428
  %4568 = add i64 %.pre220, -12
  %4569 = add i64 %5188, 30
  store i64 %4569, i64* %PC, align 8
  %4570 = inttoptr i64 %4568 to i32*
  %4571 = load i32, i32* %4570, align 4
  %4572 = sext i32 %4571 to i64
  %4573 = shl nsw i64 %4572, 6
  store i64 %4573, i64* %RCX, align 8, !tbaa !2428
  %4574 = add i64 %4573, %4549
  store i64 %4574, i64* %RAX, align 8, !tbaa !2428
  %4575 = icmp ult i64 %4574, %4549
  %4576 = icmp ult i64 %4574, %4573
  %4577 = or i1 %4575, %4576
  %4578 = zext i1 %4577 to i8
  store i8 %4578, i8* %16, align 1, !tbaa !2432
  %4579 = trunc i64 %4574 to i32
  %4580 = and i32 %4579, 255
  %4581 = tail call i32 @llvm.ctpop.i32(i32 %4580) #9
  %4582 = trunc i32 %4581 to i8
  %4583 = and i8 %4582, 1
  %4584 = xor i8 %4583, 1
  store i8 %4584, i8* %23, align 1, !tbaa !2446
  %4585 = xor i64 %4549, %4574
  %4586 = lshr i64 %4585, 4
  %4587 = trunc i64 %4586 to i8
  %4588 = and i8 %4587, 1
  store i8 %4588, i8* %29, align 1, !tbaa !2447
  %4589 = icmp eq i64 %4574, 0
  %4590 = zext i1 %4589 to i8
  store i8 %4590, i8* %32, align 1, !tbaa !2448
  %4591 = lshr i64 %4574, 63
  %4592 = trunc i64 %4591 to i8
  store i8 %4592, i8* %35, align 1, !tbaa !2449
  %4593 = lshr i64 %4549, 63
  %4594 = lshr i64 %4572, 57
  %4595 = and i64 %4594, 1
  %4596 = xor i64 %4591, %4593
  %4597 = xor i64 %4591, %4595
  %4598 = add nuw nsw i64 %4596, %4597
  %4599 = icmp eq i64 %4598, 2
  %4600 = zext i1 %4599 to i8
  store i8 %4600, i8* %41, align 1, !tbaa !2450
  %4601 = add i64 %5188, 41
  store i64 %4601, i64* %PC, align 8
  %4602 = load i32, i32* %4552, align 4
  %4603 = sext i32 %4602 to i64
  store i64 %4603, i64* %RCX, align 8, !tbaa !2428
  %4604 = shl nsw i64 %4603, 2
  %4605 = add i64 %4604, %4574
  %4606 = add i64 %5188, 45
  store i64 %4606, i64* %PC, align 8
  %4607 = inttoptr i64 %4605 to i32*
  %4608 = load i32, i32* %4607, align 4
  %4609 = sext i32 %4608 to i64
  store i64 %4609, i64* %RAX, align 8, !tbaa !2428
  %4610 = shl nsw i64 %4609, 2
  %4611 = add i64 %4610, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %4612 = add i64 %5188, 52
  store i64 %4612, i64* %PC, align 8
  %4613 = inttoptr i64 %4611 to i32*
  %4614 = load i32, i32* %4613, align 4
  %4615 = xor i32 %4614, %4566
  %4616 = zext i32 %4615 to i64
  store i64 %4616, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %4617 = and i32 %4615, 255
  %4618 = tail call i32 @llvm.ctpop.i32(i32 %4617) #9
  %4619 = trunc i32 %4618 to i8
  %4620 = and i8 %4619, 1
  %4621 = xor i8 %4620, 1
  store i8 %4621, i8* %23, align 1, !tbaa !2446
  %4622 = icmp eq i32 %4615, 0
  %4623 = zext i1 %4622 to i8
  store i8 %4623, i8* %32, align 1, !tbaa !2448
  %4624 = lshr i32 %4615, 31
  %4625 = trunc i32 %4624 to i8
  store i8 %4625, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %4626 = load i64, i64* %RBP, align 8
  %4627 = add i64 %4626, -4
  %4628 = add i64 %5188, 56
  store i64 %4628, i64* %PC, align 8
  %4629 = inttoptr i64 %4627 to i32*
  %4630 = load i32, i32* %4629, align 4
  %4631 = sext i32 %4630 to i64
  store i64 %4631, i64* %RAX, align 8, !tbaa !2428
  %4632 = shl nsw i64 %4631, 2
  %4633 = add i64 %4626, -1616
  %4634 = add i64 %4633, %4632
  %4635 = add i64 %5188, 63
  store i64 %4635, i64* %PC, align 8
  %4636 = inttoptr i64 %4634 to i32*
  store i32 %4615, i32* %4636, align 4
  %.pre223 = load i64, i64* %PC, align 8
  br label %block_40136c

block_401503:                                     ; preds = %block_40157f, %block_4014e5
  %4637 = phi i64 [ %.pre231, %block_4014e5 ], [ %4996, %block_40157f ]
  %MEMORY.36 = phi %struct.Memory* [ %MEMORY.27, %block_4014e5 ], [ %MEMORY.40, %block_40157f ]
  %4638 = load i64, i64* %RBP, align 8
  %4639 = add i64 %4638, -8
  %4640 = add i64 %4637, 3
  store i64 %4640, i64* %PC, align 8
  %4641 = inttoptr i64 %4639 to i32*
  %4642 = load i32, i32* %4641, align 4
  %4643 = zext i32 %4642 to i64
  store i64 %4643, i64* %RAX, align 8, !tbaa !2428
  %4644 = add i64 %4638, -12
  %4645 = add i64 %4637, 7
  store i64 %4645, i64* %PC, align 8
  %4646 = inttoptr i64 %4644 to i32*
  %4647 = load i32, i32* %4646, align 4
  %4648 = sext i32 %4647 to i64
  store i64 %4648, i64* %RCX, align 8, !tbaa !2428
  %4649 = shl nsw i64 %4648, 2
  %4650 = add nsw i64 %4649, -1328
  %4651 = add i64 %4650, %4638
  %4652 = add i64 %4637, 14
  store i64 %4652, i64* %PC, align 8
  %4653 = inttoptr i64 %4651 to i32*
  %4654 = load i32, i32* %4653, align 4
  %4655 = sub i32 %4642, %4654
  %4656 = icmp ult i32 %4642, %4654
  %4657 = zext i1 %4656 to i8
  store i8 %4657, i8* %16, align 1, !tbaa !2432
  %4658 = and i32 %4655, 255
  %4659 = tail call i32 @llvm.ctpop.i32(i32 %4658) #9
  %4660 = trunc i32 %4659 to i8
  %4661 = and i8 %4660, 1
  %4662 = xor i8 %4661, 1
  store i8 %4662, i8* %23, align 1, !tbaa !2446
  %4663 = xor i32 %4654, %4642
  %4664 = xor i32 %4663, %4655
  %4665 = lshr i32 %4664, 4
  %4666 = trunc i32 %4665 to i8
  %4667 = and i8 %4666, 1
  store i8 %4667, i8* %29, align 1, !tbaa !2447
  %4668 = icmp eq i32 %4655, 0
  %4669 = zext i1 %4668 to i8
  store i8 %4669, i8* %32, align 1, !tbaa !2448
  %4670 = lshr i32 %4655, 31
  %4671 = trunc i32 %4670 to i8
  store i8 %4671, i8* %35, align 1, !tbaa !2449
  %4672 = lshr i32 %4642, 31
  %4673 = lshr i32 %4654, 31
  %4674 = xor i32 %4673, %4672
  %4675 = xor i32 %4670, %4672
  %4676 = add nuw nsw i32 %4675, %4674
  %4677 = icmp eq i32 %4676, 2
  %4678 = zext i1 %4677 to i8
  store i8 %4678, i8* %41, align 1, !tbaa !2450
  %4679 = icmp ne i8 %4671, 0
  %4680 = xor i1 %4679, %4677
  %.demorgan266 = or i1 %4668, %4680
  %.v298 = select i1 %.demorgan266, i64 20, i64 143
  %4681 = add i64 %4637, %.v298
  store i64 %4681, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan266, label %block_401517, label %block_401592

block_401651:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_4015fc
  %4682 = phi i64 [ %1111, %block_4015fc ], [ %.pre247, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %4683 = phi i64 [ %87, %block_4015fc ], [ %.pre246, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %MEMORY.37 = phi %struct.Memory* [ %MEMORY.5, %block_4015fc ], [ %5935, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %4684 = add i64 %4682, -8
  %4685 = add i64 %4683, 8
  store i64 %4685, i64* %PC, align 8
  %4686 = inttoptr i64 %4684 to i32*
  %4687 = load i32, i32* %4686, align 4
  %4688 = add i32 %4687, 1
  %4689 = zext i32 %4688 to i64
  store i64 %4689, i64* %RAX, align 8, !tbaa !2428
  %4690 = icmp eq i32 %4687, -1
  %4691 = icmp eq i32 %4688, 0
  %4692 = or i1 %4690, %4691
  %4693 = zext i1 %4692 to i8
  store i8 %4693, i8* %16, align 1, !tbaa !2432
  %4694 = and i32 %4688, 255
  %4695 = tail call i32 @llvm.ctpop.i32(i32 %4694) #9
  %4696 = trunc i32 %4695 to i8
  %4697 = and i8 %4696, 1
  %4698 = xor i8 %4697, 1
  store i8 %4698, i8* %23, align 1, !tbaa !2446
  %4699 = xor i32 %4688, %4687
  %4700 = lshr i32 %4699, 4
  %4701 = trunc i32 %4700 to i8
  %4702 = and i8 %4701, 1
  store i8 %4702, i8* %29, align 1, !tbaa !2447
  %4703 = zext i1 %4691 to i8
  store i8 %4703, i8* %32, align 1, !tbaa !2448
  %4704 = lshr i32 %4688, 31
  %4705 = trunc i32 %4704 to i8
  store i8 %4705, i8* %35, align 1, !tbaa !2449
  %4706 = lshr i32 %4687, 31
  %4707 = xor i32 %4704, %4706
  %4708 = add nuw nsw i32 %4707, %4704
  %4709 = icmp eq i32 %4708, 2
  %4710 = zext i1 %4709 to i8
  store i8 %4710, i8* %41, align 1, !tbaa !2450
  %4711 = add i64 %4683, 14
  store i64 %4711, i64* %PC, align 8
  store i32 %4688, i32* %4686, align 4
  %4712 = load i64, i64* %PC, align 8
  %4713 = add i64 %4712, -119
  store i64 %4713, i64* %PC, align 8, !tbaa !2428
  br label %block_4015e8

block_401302:                                     ; preds = %block_4012f0
  %4714 = add i64 %2246, -1168
  store i64 %4714, i64* %RAX, align 8, !tbaa !2428
  %4715 = add i64 %2246, -12
  %4716 = add i64 %2281, 11
  store i64 %4716, i64* %PC, align 8
  %4717 = inttoptr i64 %4715 to i32*
  %4718 = load i32, i32* %4717, align 4
  %4719 = sext i32 %4718 to i64
  %4720 = shl nsw i64 %4719, 6
  store i64 %4720, i64* %RCX, align 8, !tbaa !2428
  %4721 = add i64 %4720, %4714
  store i64 %4721, i64* %RAX, align 8, !tbaa !2428
  %4722 = icmp ult i64 %4721, %4714
  %4723 = icmp ult i64 %4721, %4720
  %4724 = or i1 %4722, %4723
  %4725 = zext i1 %4724 to i8
  store i8 %4725, i8* %16, align 1, !tbaa !2432
  %4726 = trunc i64 %4721 to i32
  %4727 = and i32 %4726, 255
  %4728 = tail call i32 @llvm.ctpop.i32(i32 %4727) #9
  %4729 = trunc i32 %4728 to i8
  %4730 = and i8 %4729, 1
  %4731 = xor i8 %4730, 1
  store i8 %4731, i8* %23, align 1, !tbaa !2446
  %4732 = xor i64 %4714, %4721
  %4733 = lshr i64 %4732, 4
  %4734 = trunc i64 %4733 to i8
  %4735 = and i8 %4734, 1
  store i8 %4735, i8* %29, align 1, !tbaa !2447
  %4736 = icmp eq i64 %4721, 0
  %4737 = zext i1 %4736 to i8
  store i8 %4737, i8* %32, align 1, !tbaa !2448
  %4738 = lshr i64 %4721, 63
  %4739 = trunc i64 %4738 to i8
  store i8 %4739, i8* %35, align 1, !tbaa !2449
  %4740 = lshr i64 %4714, 63
  %4741 = lshr i64 %4719, 57
  %4742 = and i64 %4741, 1
  %4743 = xor i64 %4738, %4740
  %4744 = xor i64 %4738, %4742
  %4745 = add nuw nsw i64 %4743, %4744
  %4746 = icmp eq i64 %4745, 2
  %4747 = zext i1 %4746 to i8
  store i8 %4747, i8* %41, align 1, !tbaa !2450
  %4748 = add i64 %2281, 22
  store i64 %4748, i64* %PC, align 8
  %4749 = load i32, i32* %2249, align 4
  %4750 = sext i32 %4749 to i64
  store i64 %4750, i64* %RCX, align 8, !tbaa !2428
  %4751 = shl nsw i64 %4750, 2
  %4752 = add i64 %4751, %4721
  %4753 = add i64 %2281, 26
  store i64 %4753, i64* %PC, align 8
  %4754 = inttoptr i64 %4752 to i32*
  %4755 = load i32, i32* %4754, align 4
  %4756 = add i32 %4755, 1
  %4757 = icmp ne i32 %4755, -1
  %4758 = zext i1 %4757 to i8
  store i8 %4758, i8* %16, align 1, !tbaa !2432
  %4759 = and i32 %4756, 255
  %4760 = tail call i32 @llvm.ctpop.i32(i32 %4759) #9
  %4761 = trunc i32 %4760 to i8
  %4762 = and i8 %4761, 1
  %4763 = xor i8 %4762, 1
  store i8 %4763, i8* %23, align 1, !tbaa !2446
  %4764 = xor i32 %4755, 16
  %4765 = xor i32 %4764, %4756
  %4766 = lshr i32 %4765, 4
  %4767 = trunc i32 %4766 to i8
  %4768 = and i8 %4767, 1
  store i8 %4768, i8* %29, align 1, !tbaa !2447
  %4769 = icmp eq i32 %4756, 0
  %4770 = zext i1 %4769 to i8
  store i8 %4770, i8* %32, align 1, !tbaa !2448
  %4771 = lshr i32 %4756, 31
  %4772 = trunc i32 %4771 to i8
  store i8 %4772, i8* %35, align 1, !tbaa !2449
  %4773 = lshr i32 %4755, 31
  %4774 = xor i32 %4773, 1
  %4775 = xor i32 %4771, %4773
  %4776 = add nuw nsw i32 %4775, %4774
  %4777 = icmp eq i32 %4776, 2
  %4778 = zext i1 %4777 to i8
  store i8 %4778, i8* %41, align 1, !tbaa !2450
  %.v311 = select i1 %4769, i64 81, i64 32
  %4779 = add i64 %2281, %.v311
  store i64 %4779, i64* %PC, align 8, !tbaa !2428
  %.pre222 = load i64, i64* %RBP, align 8
  br i1 %4769, label %block_401353, label %block_401322

block_401450:                                     ; preds = %block_401211
  %4780 = add i64 %5620, 7
  store i64 %4780, i64* %PC, align 8
  store i32 0, i32* %5580, align 4
  %.pre229 = load i64, i64* %PC, align 8
  br label %block_401457

block_401391:                                     ; preds = %block_40137f
  %4781 = add i64 %5204, -1168
  store i64 %4781, i64* %RAX, align 8, !tbaa !2428
  %4782 = add i64 %5204, -12
  %4783 = add i64 %6154, 11
  store i64 %4783, i64* %PC, align 8
  %4784 = inttoptr i64 %4782 to i32*
  %4785 = load i32, i32* %4784, align 4
  %4786 = sext i32 %4785 to i64
  %4787 = shl nsw i64 %4786, 6
  store i64 %4787, i64* %RCX, align 8, !tbaa !2428
  %4788 = add i64 %4787, %4781
  store i64 %4788, i64* %RAX, align 8, !tbaa !2428
  %4789 = icmp ult i64 %4788, %4781
  %4790 = icmp ult i64 %4788, %4787
  %4791 = or i1 %4789, %4790
  %4792 = zext i1 %4791 to i8
  store i8 %4792, i8* %16, align 1, !tbaa !2432
  %4793 = trunc i64 %4788 to i32
  %4794 = and i32 %4793, 255
  %4795 = tail call i32 @llvm.ctpop.i32(i32 %4794) #9
  %4796 = trunc i32 %4795 to i8
  %4797 = and i8 %4796, 1
  %4798 = xor i8 %4797, 1
  store i8 %4798, i8* %23, align 1, !tbaa !2446
  %4799 = xor i64 %4781, %4788
  %4800 = lshr i64 %4799, 4
  %4801 = trunc i64 %4800 to i8
  %4802 = and i8 %4801, 1
  store i8 %4802, i8* %29, align 1, !tbaa !2447
  %4803 = icmp eq i64 %4788, 0
  %4804 = zext i1 %4803 to i8
  store i8 %4804, i8* %32, align 1, !tbaa !2448
  %4805 = lshr i64 %4788, 63
  %4806 = trunc i64 %4805 to i8
  store i8 %4806, i8* %35, align 1, !tbaa !2449
  %4807 = lshr i64 %4781, 63
  %4808 = lshr i64 %4786, 57
  %4809 = and i64 %4808, 1
  %4810 = xor i64 %4805, %4807
  %4811 = xor i64 %4805, %4809
  %4812 = add nuw nsw i64 %4810, %4811
  %4813 = icmp eq i64 %4812, 2
  %4814 = zext i1 %4813 to i8
  store i8 %4814, i8* %41, align 1, !tbaa !2450
  %4815 = add i64 %6154, 21
  store i64 %4815, i64* %PC, align 8
  %4816 = load i32, i32* %5212, align 4
  %4817 = zext i32 %4816 to i64
  store i64 %4817, i64* %RDX, align 8, !tbaa !2428
  %4818 = add i64 %6154, 24
  store i64 %4818, i64* %PC, align 8
  %4819 = load i32, i32* %5207, align 4
  %4820 = sub i32 %4816, %4819
  %4821 = zext i32 %4820 to i64
  store i64 %4821, i64* %RDX, align 8, !tbaa !2428
  %4822 = icmp ult i32 %4816, %4819
  %4823 = zext i1 %4822 to i8
  store i8 %4823, i8* %16, align 1, !tbaa !2432
  %4824 = and i32 %4820, 255
  %4825 = tail call i32 @llvm.ctpop.i32(i32 %4824) #9
  %4826 = trunc i32 %4825 to i8
  %4827 = and i8 %4826, 1
  %4828 = xor i8 %4827, 1
  store i8 %4828, i8* %23, align 1, !tbaa !2446
  %4829 = xor i32 %4819, %4816
  %4830 = xor i32 %4829, %4820
  %4831 = lshr i32 %4830, 4
  %4832 = trunc i32 %4831 to i8
  %4833 = and i8 %4832, 1
  store i8 %4833, i8* %29, align 1, !tbaa !2447
  %4834 = icmp eq i32 %4820, 0
  %4835 = zext i1 %4834 to i8
  store i8 %4835, i8* %32, align 1, !tbaa !2448
  %4836 = lshr i32 %4820, 31
  %4837 = trunc i32 %4836 to i8
  store i8 %4837, i8* %35, align 1, !tbaa !2449
  %4838 = lshr i32 %4816, 31
  %4839 = lshr i32 %4819, 31
  %4840 = xor i32 %4839, %4838
  %4841 = xor i32 %4836, %4838
  %4842 = add nuw nsw i32 %4841, %4840
  %4843 = icmp eq i32 %4842, 2
  %4844 = zext i1 %4843 to i8
  store i8 %4844, i8* %41, align 1, !tbaa !2450
  %4845 = sext i32 %4820 to i64
  store i64 %4845, i64* %RCX, align 8, !tbaa !2428
  %4846 = shl nsw i64 %4845, 2
  %4847 = add i64 %4788, %4846
  %4848 = add i64 %6154, 31
  store i64 %4848, i64* %PC, align 8
  %4849 = inttoptr i64 %4847 to i32*
  %4850 = load i32, i32* %4849, align 4
  %4851 = add i32 %4850, 1
  %4852 = icmp ne i32 %4850, -1
  %4853 = zext i1 %4852 to i8
  store i8 %4853, i8* %16, align 1, !tbaa !2432
  %4854 = and i32 %4851, 255
  %4855 = tail call i32 @llvm.ctpop.i32(i32 %4854) #9
  %4856 = trunc i32 %4855 to i8
  %4857 = and i8 %4856, 1
  %4858 = xor i8 %4857, 1
  store i8 %4858, i8* %23, align 1, !tbaa !2446
  %4859 = xor i32 %4850, 16
  %4860 = xor i32 %4859, %4851
  %4861 = lshr i32 %4860, 4
  %4862 = trunc i32 %4861 to i8
  %4863 = and i8 %4862, 1
  store i8 %4863, i8* %29, align 1, !tbaa !2447
  %4864 = icmp eq i32 %4851, 0
  %4865 = zext i1 %4864 to i8
  store i8 %4865, i8* %32, align 1, !tbaa !2448
  %4866 = lshr i32 %4851, 31
  %4867 = trunc i32 %4866 to i8
  store i8 %4867, i8* %35, align 1, !tbaa !2449
  %4868 = lshr i32 %4850, 31
  %4869 = xor i32 %4868, 1
  %4870 = xor i32 %4866, %4868
  %4871 = add nuw nsw i32 %4870, %4869
  %4872 = icmp eq i32 %4871, 2
  %4873 = zext i1 %4872 to i8
  store i8 %4873, i8* %41, align 1, !tbaa !2450
  %.v307 = select i1 %4864, i64 128, i64 37
  %4874 = add i64 %6154, %.v307
  store i64 %4874, i64* %PC, align 8, !tbaa !2428
  br i1 %4864, label %block_401411, label %block_4013b6

block_400b16:                                     ; preds = %block_400af4, %block_400b2a
  %4875 = phi i64 [ %.pre184, %block_400af4 ], [ %4427, %block_400b2a ]
  %4876 = load i64, i64* %RBP, align 8
  %4877 = add i64 %4876, -4
  %4878 = add i64 %4875, 3
  store i64 %4878, i64* %PC, align 8
  %4879 = inttoptr i64 %4877 to i32*
  %4880 = load i32, i32* %4879, align 4
  %4881 = zext i32 %4880 to i64
  store i64 %4881, i64* %RAX, align 8, !tbaa !2428
  %4882 = add i64 %4876, -12
  %4883 = add i64 %4875, 7
  store i64 %4883, i64* %PC, align 8
  %4884 = inttoptr i64 %4882 to i32*
  %4885 = load i32, i32* %4884, align 4
  %4886 = sext i32 %4885 to i64
  store i64 %4886, i64* %RCX, align 8, !tbaa !2428
  %4887 = shl nsw i64 %4886, 2
  %4888 = add nsw i64 %4887, -1328
  %4889 = add i64 %4888, %4876
  %4890 = add i64 %4875, 14
  store i64 %4890, i64* %PC, align 8
  %4891 = inttoptr i64 %4889 to i32*
  %4892 = load i32, i32* %4891, align 4
  %4893 = sub i32 %4880, %4892
  %4894 = icmp ult i32 %4880, %4892
  %4895 = zext i1 %4894 to i8
  store i8 %4895, i8* %16, align 1, !tbaa !2432
  %4896 = and i32 %4893, 255
  %4897 = tail call i32 @llvm.ctpop.i32(i32 %4896) #9
  %4898 = trunc i32 %4897 to i8
  %4899 = and i8 %4898, 1
  %4900 = xor i8 %4899, 1
  store i8 %4900, i8* %23, align 1, !tbaa !2446
  %4901 = xor i32 %4892, %4880
  %4902 = xor i32 %4901, %4893
  %4903 = lshr i32 %4902, 4
  %4904 = trunc i32 %4903 to i8
  %4905 = and i8 %4904, 1
  store i8 %4905, i8* %29, align 1, !tbaa !2447
  %4906 = icmp eq i32 %4893, 0
  %4907 = zext i1 %4906 to i8
  store i8 %4907, i8* %32, align 1, !tbaa !2448
  %4908 = lshr i32 %4893, 31
  %4909 = trunc i32 %4908 to i8
  store i8 %4909, i8* %35, align 1, !tbaa !2449
  %4910 = lshr i32 %4880, 31
  %4911 = lshr i32 %4892, 31
  %4912 = xor i32 %4911, %4910
  %4913 = xor i32 %4908, %4910
  %4914 = add nuw nsw i32 %4913, %4912
  %4915 = icmp eq i32 %4914, 2
  %4916 = zext i1 %4915 to i8
  store i8 %4916, i8* %41, align 1, !tbaa !2450
  %4917 = icmp ne i8 %4909, 0
  %4918 = xor i1 %4917, %4915
  %.demorgan257 = or i1 %4906, %4918
  %.v319 = select i1 %.demorgan257, i64 20, i64 135
  %4919 = add i64 %4875, %.v319
  store i64 %4919, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan257, label %block_400b2a, label %block_400e5a.loopexit

block_40104e:                                     ; preds = %block_40104e.preheader, %block_401062
  %4920 = phi i64 [ %4548, %block_401062 ], [ %.pre208, %block_40104e.preheader ]
  %4921 = load i64, i64* %RBP, align 8
  %4922 = add i64 %4921, -4
  %4923 = add i64 %4920, 3
  store i64 %4923, i64* %PC, align 8
  %4924 = inttoptr i64 %4922 to i32*
  %4925 = load i32, i32* %4924, align 4
  %4926 = zext i32 %4925 to i64
  store i64 %4926, i64* %RAX, align 8, !tbaa !2428
  %4927 = add i64 %4921, -12
  %4928 = add i64 %4920, 7
  store i64 %4928, i64* %PC, align 8
  %4929 = inttoptr i64 %4927 to i32*
  %4930 = load i32, i32* %4929, align 4
  %4931 = sext i32 %4930 to i64
  store i64 %4931, i64* %RCX, align 8, !tbaa !2428
  %4932 = shl nsw i64 %4931, 2
  %4933 = add nsw i64 %4932, -1328
  %4934 = add i64 %4933, %4921
  %4935 = add i64 %4920, 14
  store i64 %4935, i64* %PC, align 8
  %4936 = inttoptr i64 %4934 to i32*
  %4937 = load i32, i32* %4936, align 4
  %4938 = sub i32 %4925, %4937
  %4939 = icmp ult i32 %4925, %4937
  %4940 = zext i1 %4939 to i8
  store i8 %4940, i8* %16, align 1, !tbaa !2432
  %4941 = and i32 %4938, 255
  %4942 = tail call i32 @llvm.ctpop.i32(i32 %4941) #9
  %4943 = trunc i32 %4942 to i8
  %4944 = and i8 %4943, 1
  %4945 = xor i8 %4944, 1
  store i8 %4945, i8* %23, align 1, !tbaa !2446
  %4946 = xor i32 %4937, %4925
  %4947 = xor i32 %4946, %4938
  %4948 = lshr i32 %4947, 4
  %4949 = trunc i32 %4948 to i8
  %4950 = and i8 %4949, 1
  store i8 %4950, i8* %29, align 1, !tbaa !2447
  %4951 = icmp eq i32 %4938, 0
  %4952 = zext i1 %4951 to i8
  store i8 %4952, i8* %32, align 1, !tbaa !2448
  %4953 = lshr i32 %4938, 31
  %4954 = trunc i32 %4953 to i8
  store i8 %4954, i8* %35, align 1, !tbaa !2449
  %4955 = lshr i32 %4925, 31
  %4956 = lshr i32 %4937, 31
  %4957 = xor i32 %4956, %4955
  %4958 = xor i32 %4953, %4955
  %4959 = add nuw nsw i32 %4958, %4957
  %4960 = icmp eq i32 %4959, 2
  %4961 = zext i1 %4960 to i8
  store i8 %4961, i8* %41, align 1, !tbaa !2450
  %4962 = icmp ne i8 %4954, 0
  %4963 = xor i1 %4962, %4960
  %.demorgan259 = or i1 %4951, %4963
  %.v293 = select i1 %.demorgan259, i64 20, i64 88
  %4964 = add i64 %4920, %.v293
  store i64 %4964, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan259, label %block_401062, label %block_4010a6

block_40157f:                                     ; preds = %block_401517, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4
  %4965 = phi i64 [ %4638, %block_401517 ], [ %.pre236, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4 ]
  %4966 = phi i64 [ %6335, %block_401517 ], [ %.pre235, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4 ]
  %MEMORY.40 = phi %struct.Memory* [ %MEMORY.36, %block_401517 ], [ %2052, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4 ]
  %4967 = add i64 %4965, -8
  %4968 = add i64 %4966, 8
  store i64 %4968, i64* %PC, align 8
  %4969 = inttoptr i64 %4967 to i32*
  %4970 = load i32, i32* %4969, align 4
  %4971 = add i32 %4970, 1
  %4972 = zext i32 %4971 to i64
  store i64 %4972, i64* %RAX, align 8, !tbaa !2428
  %4973 = icmp eq i32 %4970, -1
  %4974 = icmp eq i32 %4971, 0
  %4975 = or i1 %4973, %4974
  %4976 = zext i1 %4975 to i8
  store i8 %4976, i8* %16, align 1, !tbaa !2432
  %4977 = and i32 %4971, 255
  %4978 = tail call i32 @llvm.ctpop.i32(i32 %4977) #9
  %4979 = trunc i32 %4978 to i8
  %4980 = and i8 %4979, 1
  %4981 = xor i8 %4980, 1
  store i8 %4981, i8* %23, align 1, !tbaa !2446
  %4982 = xor i32 %4971, %4970
  %4983 = lshr i32 %4982, 4
  %4984 = trunc i32 %4983 to i8
  %4985 = and i8 %4984, 1
  store i8 %4985, i8* %29, align 1, !tbaa !2447
  %4986 = zext i1 %4974 to i8
  store i8 %4986, i8* %32, align 1, !tbaa !2448
  %4987 = lshr i32 %4971, 31
  %4988 = trunc i32 %4987 to i8
  store i8 %4988, i8* %35, align 1, !tbaa !2449
  %4989 = lshr i32 %4970, 31
  %4990 = xor i32 %4987, %4989
  %4991 = add nuw nsw i32 %4990, %4987
  %4992 = icmp eq i32 %4991, 2
  %4993 = zext i1 %4992 to i8
  store i8 %4993, i8* %41, align 1, !tbaa !2450
  %4994 = add i64 %4966, 14
  store i64 %4994, i64* %PC, align 8
  store i32 %4971, i32* %4969, align 4
  %4995 = load i64, i64* %PC, align 8
  %4996 = add i64 %4995, -138
  store i64 %4996, i64* %PC, align 8, !tbaa !2428
  br label %block_401503

block_40179e:                                     ; preds = %block_40178c
  %4997 = add i64 %1072, 12
  store i64 %4997, i64* %PC, align 8
  %4998 = inttoptr i64 %1077 to i32*
  %4999 = load i32, i32* %4998, align 4
  %5000 = sext i32 %4999 to i64
  store i64 %5000, i64* %RAX, align 8, !tbaa !2428
  %5001 = shl nsw i64 %5000, 2
  %5002 = add i64 %5001, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %5003 = add i64 %1072, 19
  store i64 %5003, i64* %PC, align 8
  %5004 = inttoptr i64 %5002 to i32*
  %5005 = load i32, i32* %5004, align 4
  %5006 = zext i32 %5005 to i64
  store i64 %5006, i64* %RCX, align 8, !tbaa !2428
  %5007 = add i64 %1072, 23
  store i64 %5007, i64* %PC, align 8
  %5008 = load i32, i32* %768, align 4
  %5009 = sext i32 %5008 to i64
  store i64 %5009, i64* %RAX, align 8, !tbaa !2428
  %5010 = shl nsw i64 %5009, 2
  %5011 = add i64 %5010, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %5012 = add i64 %1072, 30
  store i64 %5012, i64* %PC, align 8
  %5013 = inttoptr i64 %5011 to i32*
  store i32 %5005, i32* %5013, align 4
  %5014 = load i64, i64* %PC, align 8
  %5015 = add i64 %5014, 20
  store i64 %5015, i64* %PC, align 8, !tbaa !2428
  br label %block_4017d0

block_401845:                                     ; preds = %block_401813, %block_401836
  %5016 = phi i64 [ %5575, %block_401813 ], [ %.pre256, %block_401836 ]
  %5017 = load i64, i64* %RBP, align 8
  %5018 = add i64 %5017, -4
  %5019 = add i64 %5016, 8
  store i64 %5019, i64* %PC, align 8
  %5020 = inttoptr i64 %5018 to i32*
  %5021 = load i32, i32* %5020, align 4
  %5022 = add i32 %5021, 1
  %5023 = zext i32 %5022 to i64
  store i64 %5023, i64* %RAX, align 8, !tbaa !2428
  %5024 = icmp eq i32 %5021, -1
  %5025 = icmp eq i32 %5022, 0
  %5026 = or i1 %5024, %5025
  %5027 = zext i1 %5026 to i8
  store i8 %5027, i8* %16, align 1, !tbaa !2432
  %5028 = and i32 %5022, 255
  %5029 = tail call i32 @llvm.ctpop.i32(i32 %5028) #9
  %5030 = trunc i32 %5029 to i8
  %5031 = and i8 %5030, 1
  %5032 = xor i8 %5031, 1
  store i8 %5032, i8* %23, align 1, !tbaa !2446
  %5033 = xor i32 %5022, %5021
  %5034 = lshr i32 %5033, 4
  %5035 = trunc i32 %5034 to i8
  %5036 = and i8 %5035, 1
  store i8 %5036, i8* %29, align 1, !tbaa !2447
  %5037 = zext i1 %5025 to i8
  store i8 %5037, i8* %32, align 1, !tbaa !2448
  %5038 = lshr i32 %5022, 31
  %5039 = trunc i32 %5038 to i8
  store i8 %5039, i8* %35, align 1, !tbaa !2449
  %5040 = lshr i32 %5021, 31
  %5041 = xor i32 %5038, %5040
  %5042 = add nuw nsw i32 %5041, %5038
  %5043 = icmp eq i32 %5042, 2
  %5044 = zext i1 %5043 to i8
  store i8 %5044, i8* %41, align 1, !tbaa !2450
  %5045 = add i64 %5016, 14
  store i64 %5045, i64* %PC, align 8
  store i32 %5022, i32* %5020, align 4
  %5046 = load i64, i64* %PC, align 8
  %5047 = add i64 %5046, -95
  store i64 %5047, i64* %PC, align 8, !tbaa !2428
  br label %block_4017f4

block_400a43:                                     ; preds = %block_400a36
  %5048 = add i64 %1254, -1248
  %5049 = add i64 %5202, 10
  store i64 %5049, i64* %PC, align 8
  %5050 = inttoptr i64 %5048 to i32*
  store i32 0, i32* %5050, align 4
  %5051 = load i64, i64* %RBP, align 8
  %5052 = add i64 %5051, -1484
  %5053 = load i64, i64* %PC, align 8
  %5054 = add i64 %5053, 6
  store i64 %5054, i64* %PC, align 8
  %5055 = inttoptr i64 %5052 to i32*
  %5056 = load i32, i32* %5055, align 4
  %5057 = zext i32 %5056 to i64
  store i64 %5057, i64* %RAX, align 8, !tbaa !2428
  %5058 = add i64 %5051, -1244
  %5059 = add i64 %5053, 12
  store i64 %5059, i64* %PC, align 8
  %5060 = inttoptr i64 %5058 to i32*
  store i32 %5056, i32* %5060, align 4
  %5061 = load i64, i64* %RBP, align 8
  %5062 = add i64 %5061, -1168
  %5063 = load i64, i64* %PC, align 8
  %5064 = add i64 %5063, 10
  store i64 %5064, i64* %PC, align 8
  %5065 = inttoptr i64 %5062 to i32*
  store i32 0, i32* %5065, align 4
  %5066 = load i64, i64* %RBP, align 8
  %5067 = add i64 %5066, -1104
  %5068 = load i64, i64* %PC, align 8
  %5069 = add i64 %5068, 10
  store i64 %5069, i64* %PC, align 8
  %5070 = inttoptr i64 %5067 to i32*
  store i32 1, i32* %5070, align 4
  %5071 = load i64, i64* %RBP, align 8
  %5072 = add i64 %5071, -4
  %5073 = load i64, i64* %PC, align 8
  %5074 = add i64 %5073, 7
  store i64 %5074, i64* %PC, align 8
  %5075 = inttoptr i64 %5072 to i32*
  store i32 1, i32* %5075, align 4
  %.pre181 = load i64, i64* %PC, align 8
  br label %block_400a74

block_400960:                                     ; preds = %block_400956
  %5076 = add i64 %1283, 4
  store i64 %5076, i64* %PC, align 8
  %5077 = load i32, i32* %1257, align 4
  %5078 = sext i32 %5077 to i64
  store i64 %5078, i64* %RAX, align 8, !tbaa !2428
  %5079 = shl nsw i64 %5078, 2
  %5080 = add i64 %1254, -1488
  %5081 = add i64 %5080, %5079
  %5082 = add i64 %1283, 15
  store i64 %5082, i64* %PC, align 8
  %5083 = inttoptr i64 %5081 to i32*
  store i32 0, i32* %5083, align 4
  %5084 = load i64, i64* %RBP, align 8
  %5085 = add i64 %5084, -8
  %5086 = load i64, i64* %PC, align 8
  %5087 = add i64 %5086, 7
  store i64 %5087, i64* %PC, align 8
  %5088 = inttoptr i64 %5085 to i32*
  store i32 0, i32* %5088, align 4
  %.pre173 = load i64, i64* %PC, align 8
  br label %block_400976

block_4014b7:                                     ; preds = %block_401485, %block_4014a8
  %5089 = phi i64 [ %2965, %block_401485 ], [ %.pre250, %block_4014a8 ]
  %5090 = load i64, i64* %RBP, align 8
  %5091 = add i64 %5090, -4
  %5092 = add i64 %5089, 8
  store i64 %5092, i64* %PC, align 8
  %5093 = inttoptr i64 %5091 to i32*
  %5094 = load i32, i32* %5093, align 4
  %5095 = add i32 %5094, 1
  %5096 = zext i32 %5095 to i64
  store i64 %5096, i64* %RAX, align 8, !tbaa !2428
  %5097 = icmp eq i32 %5094, -1
  %5098 = icmp eq i32 %5095, 0
  %5099 = or i1 %5097, %5098
  %5100 = zext i1 %5099 to i8
  store i8 %5100, i8* %16, align 1, !tbaa !2432
  %5101 = and i32 %5095, 255
  %5102 = tail call i32 @llvm.ctpop.i32(i32 %5101) #9
  %5103 = trunc i32 %5102 to i8
  %5104 = and i8 %5103, 1
  %5105 = xor i8 %5104, 1
  store i8 %5105, i8* %23, align 1, !tbaa !2446
  %5106 = xor i32 %5095, %5094
  %5107 = lshr i32 %5106, 4
  %5108 = trunc i32 %5107 to i8
  %5109 = and i8 %5108, 1
  store i8 %5109, i8* %29, align 1, !tbaa !2447
  %5110 = zext i1 %5098 to i8
  store i8 %5110, i8* %32, align 1, !tbaa !2448
  %5111 = lshr i32 %5095, 31
  %5112 = trunc i32 %5111 to i8
  store i8 %5112, i8* %35, align 1, !tbaa !2449
  %5113 = lshr i32 %5094, 31
  %5114 = xor i32 %5111, %5113
  %5115 = add nuw nsw i32 %5114, %5111
  %5116 = icmp eq i32 %5115, 2
  %5117 = zext i1 %5116 to i8
  store i8 %5117, i8* %41, align 1, !tbaa !2450
  %5118 = add i64 %5089, 14
  store i64 %5118, i64* %PC, align 8
  store i32 %5095, i32* %5093, align 4
  %5119 = load i64, i64* %PC, align 8
  %5120 = add i64 %5119, -110
  store i64 %5120, i64* %PC, align 8, !tbaa !2428
  br label %block_401457

block_400c3c:                                     ; preds = %block_400c20
  %5121 = add i64 %5376, 3
  store i64 %5121, i64* %PC, align 8
  %5122 = load i32, i32* %6027, align 4
  %5123 = zext i32 %5122 to i64
  store i64 %5123, i64* %RAX, align 8, !tbaa !2428
  %5124 = add i64 %5376, 6
  store i64 %5124, i64* %PC, align 8
  store i32 %5122, i32* %5331, align 4
  %.pre189 = load i64, i64* %PC, align 8
  %.pre190 = load i64, i64* %RBP, align 8
  br label %block_400c42

block_401237:                                     ; preds = %block_401225
  %5125 = add i64 %5577, -1168
  store i64 %5125, i64* %RAX, align 8, !tbaa !2428
  %5126 = add i64 %5274, 11
  store i64 %5126, i64* %PC, align 8
  %5127 = load i32, i32* %5585, align 4
  %5128 = sext i32 %5127 to i64
  %5129 = shl nsw i64 %5128, 6
  store i64 %5129, i64* %RCX, align 8, !tbaa !2428
  %5130 = add i64 %5129, %5125
  store i64 %5130, i64* %RAX, align 8, !tbaa !2428
  %5131 = icmp ult i64 %5130, %5125
  %5132 = icmp ult i64 %5130, %5129
  %5133 = or i1 %5131, %5132
  %5134 = zext i1 %5133 to i8
  store i8 %5134, i8* %16, align 1, !tbaa !2432
  %5135 = trunc i64 %5130 to i32
  %5136 = and i32 %5135, 255
  %5137 = tail call i32 @llvm.ctpop.i32(i32 %5136) #9
  %5138 = trunc i32 %5137 to i8
  %5139 = and i8 %5138, 1
  %5140 = xor i8 %5139, 1
  store i8 %5140, i8* %23, align 1, !tbaa !2446
  %5141 = xor i64 %5125, %5130
  %5142 = lshr i64 %5141, 4
  %5143 = trunc i64 %5142 to i8
  %5144 = and i8 %5143, 1
  store i8 %5144, i8* %29, align 1, !tbaa !2447
  %5145 = icmp eq i64 %5130, 0
  %5146 = zext i1 %5145 to i8
  store i8 %5146, i8* %32, align 1, !tbaa !2448
  %5147 = lshr i64 %5130, 63
  %5148 = trunc i64 %5147 to i8
  store i8 %5148, i8* %35, align 1, !tbaa !2449
  %5149 = lshr i64 %5125, 63
  %5150 = lshr i64 %5128, 57
  %5151 = and i64 %5150, 1
  %5152 = xor i64 %5147, %5149
  %5153 = xor i64 %5147, %5151
  %5154 = add nuw nsw i64 %5152, %5153
  %5155 = icmp eq i64 %5154, 2
  %5156 = zext i1 %5155 to i8
  store i8 %5156, i8* %41, align 1, !tbaa !2450
  %5157 = add i64 %5274, 22
  store i64 %5157, i64* %PC, align 8
  %5158 = load i32, i32* %5580, align 4
  %5159 = sext i32 %5158 to i64
  store i64 %5159, i64* %RCX, align 8, !tbaa !2428
  %5160 = shl nsw i64 %5159, 2
  %5161 = add i64 %5160, %5130
  %5162 = add i64 %5274, 26
  store i64 %5162, i64* %PC, align 8
  %5163 = inttoptr i64 %5161 to i32*
  %5164 = load i32, i32* %5163, align 4
  %5165 = add i32 %5164, 1
  %5166 = icmp ne i32 %5164, -1
  %5167 = zext i1 %5166 to i8
  store i8 %5167, i8* %16, align 1, !tbaa !2432
  %5168 = and i32 %5165, 255
  %5169 = tail call i32 @llvm.ctpop.i32(i32 %5168) #9
  %5170 = trunc i32 %5169 to i8
  %5171 = and i8 %5170, 1
  %5172 = xor i8 %5171, 1
  store i8 %5172, i8* %23, align 1, !tbaa !2446
  %5173 = xor i32 %5164, 16
  %5174 = xor i32 %5173, %5165
  %5175 = lshr i32 %5174, 4
  %5176 = trunc i32 %5175 to i8
  %5177 = and i8 %5176, 1
  store i8 %5177, i8* %29, align 1, !tbaa !2447
  %5178 = icmp eq i32 %5165, 0
  %5179 = zext i1 %5178 to i8
  store i8 %5179, i8* %32, align 1, !tbaa !2448
  %5180 = lshr i32 %5165, 31
  %5181 = trunc i32 %5180 to i8
  store i8 %5181, i8* %35, align 1, !tbaa !2449
  %5182 = lshr i32 %5164, 31
  %5183 = xor i32 %5182, 1
  %5184 = xor i32 %5180, %5182
  %5185 = add nuw nsw i32 %5184, %5183
  %5186 = icmp eq i32 %5185, 2
  %5187 = zext i1 %5186 to i8
  store i8 %5187, i8* %41, align 1, !tbaa !2450
  %.v304 = select i1 %5178, i64 100, i64 32
  %5188 = add i64 %5274, %.v304
  store i64 %5188, i64* %PC, align 8, !tbaa !2428
  %.pre220 = load i64, i64* %RBP, align 8
  br i1 %5178, label %block_40129b, label %block_401257

block_40120a:                                     ; preds = %block_4011f3
  store i32 1, i32* %2970, align 4
  %.pre219 = load i64, i64* %PC, align 8
  br label %block_401211

block_400a36:                                     ; preds = %block_400956
  %AL = bitcast %union.anon* %3 to i8*
  %CL = bitcast %union.anon* %4 to i8*
  %DL = bitcast %union.anon* %5 to i8*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5189 = add i64 %1254, -1496
  %5190 = add i64 %1283, 7
  store i64 %5190, i64* %PC, align 8
  %5191 = inttoptr i64 %5189 to i32*
  %5192 = load i32, i32* %5191, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %5193 = and i32 %5192, 255
  %5194 = tail call i32 @llvm.ctpop.i32(i32 %5193) #9
  %5195 = trunc i32 %5194 to i8
  %5196 = and i8 %5195, 1
  %5197 = xor i8 %5196, 1
  store i8 %5197, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %5198 = icmp eq i32 %5192, 0
  %5199 = zext i1 %5198 to i8
  store i8 %5199, i8* %32, align 1, !tbaa !2448
  %5200 = lshr i32 %5192, 31
  %5201 = trunc i32 %5200 to i8
  store i8 %5201, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %.v281 = select i1 %5198, i64 3511, i64 13
  %5202 = add i64 %1283, %.v281
  store i64 %5202, i64* %PC, align 8, !tbaa !2428
  br i1 %5198, label %block_4017ed, label %block_400a43

block_401373:                                     ; preds = %block_40136c, %block_401411
  %5203 = phi i64 [ %.pre224, %block_40136c ], [ %3288, %block_401411 ]
  %MEMORY.43 = phi %struct.Memory* [ %MEMORY.47, %block_40136c ], [ %MEMORY.30, %block_401411 ]
  %5204 = load i64, i64* %RBP, align 8
  %5205 = add i64 %5204, -8
  %5206 = add i64 %5203, 3
  store i64 %5206, i64* %PC, align 8
  %5207 = inttoptr i64 %5205 to i32*
  %5208 = load i32, i32* %5207, align 4
  %5209 = zext i32 %5208 to i64
  store i64 %5209, i64* %RAX, align 8, !tbaa !2428
  %5210 = add i64 %5204, -4
  %5211 = add i64 %5203, 6
  store i64 %5211, i64* %PC, align 8
  %5212 = inttoptr i64 %5210 to i32*
  %5213 = load i32, i32* %5212, align 4
  %5214 = sub i32 %5208, %5213
  %5215 = icmp ult i32 %5208, %5213
  %5216 = zext i1 %5215 to i8
  store i8 %5216, i8* %16, align 1, !tbaa !2432
  %5217 = and i32 %5214, 255
  %5218 = tail call i32 @llvm.ctpop.i32(i32 %5217) #9
  %5219 = trunc i32 %5218 to i8
  %5220 = and i8 %5219, 1
  %5221 = xor i8 %5220, 1
  store i8 %5221, i8* %23, align 1, !tbaa !2446
  %5222 = xor i32 %5213, %5208
  %5223 = xor i32 %5222, %5214
  %5224 = lshr i32 %5223, 4
  %5225 = trunc i32 %5224 to i8
  %5226 = and i8 %5225, 1
  store i8 %5226, i8* %29, align 1, !tbaa !2447
  %5227 = icmp eq i32 %5214, 0
  %5228 = zext i1 %5227 to i8
  store i8 %5228, i8* %32, align 1, !tbaa !2448
  %5229 = lshr i32 %5214, 31
  %5230 = trunc i32 %5229 to i8
  store i8 %5230, i8* %35, align 1, !tbaa !2449
  %5231 = lshr i32 %5208, 31
  %5232 = lshr i32 %5213, 31
  %5233 = xor i32 %5232, %5231
  %5234 = xor i32 %5229, %5231
  %5235 = add nuw nsw i32 %5234, %5233
  %5236 = icmp eq i32 %5235, 2
  %5237 = zext i1 %5236 to i8
  store i8 %5237, i8* %41, align 1, !tbaa !2450
  %5238 = icmp ne i8 %5230, 0
  %5239 = xor i1 %5238, %5236
  %.v305 = select i1 %5239, i64 12, i64 177
  %5240 = add i64 %5203, %.v305
  %5241 = add i64 %5240, 4
  store i64 %5241, i64* %PC, align 8
  br i1 %5239, label %block_40137f, label %block_401424

block_401225:                                     ; preds = %block_401211
  %5242 = add i64 %5620, 4
  store i64 %5242, i64* %PC, align 8
  %5243 = load i32, i32* %5580, align 4
  %5244 = sext i32 %5243 to i64
  store i64 %5244, i64* %RAX, align 8, !tbaa !2428
  %5245 = shl nsw i64 %5244, 2
  %5246 = add i64 %5577, -1488
  %5247 = add i64 %5246, %5245
  %5248 = add i64 %5620, 12
  store i64 %5248, i64* %PC, align 8
  %5249 = inttoptr i64 %5247 to i32*
  %5250 = load i32, i32* %5249, align 4
  %5251 = add i32 %5250, 1
  %5252 = icmp ne i32 %5250, -1
  %5253 = zext i1 %5252 to i8
  store i8 %5253, i8* %16, align 1, !tbaa !2432
  %5254 = and i32 %5251, 255
  %5255 = tail call i32 @llvm.ctpop.i32(i32 %5254) #9
  %5256 = trunc i32 %5255 to i8
  %5257 = and i8 %5256, 1
  %5258 = xor i8 %5257, 1
  store i8 %5258, i8* %23, align 1, !tbaa !2446
  %5259 = xor i32 %5250, 16
  %5260 = xor i32 %5259, %5251
  %5261 = lshr i32 %5260, 4
  %5262 = trunc i32 %5261 to i8
  %5263 = and i8 %5262, 1
  store i8 %5263, i8* %29, align 1, !tbaa !2447
  %5264 = icmp eq i32 %5251, 0
  %5265 = zext i1 %5264 to i8
  store i8 %5265, i8* %32, align 1, !tbaa !2448
  %5266 = lshr i32 %5251, 31
  %5267 = trunc i32 %5266 to i8
  store i8 %5267, i8* %35, align 1, !tbaa !2449
  %5268 = lshr i32 %5250, 31
  %5269 = xor i32 %5268, 1
  %5270 = xor i32 %5266, %5268
  %5271 = add nuw nsw i32 %5270, %5269
  %5272 = icmp eq i32 %5271, 2
  %5273 = zext i1 %5272 to i8
  store i8 %5273, i8* %41, align 1, !tbaa !2450
  %.v303 = select i1 %5264, i64 118, i64 18
  %5274 = add i64 %5620, %.v303
  store i64 %5274, i64* %PC, align 8, !tbaa !2428
  br i1 %5264, label %block_40129b, label %block_401237

block_401424:                                     ; preds = %block_401373
  %5275 = load i32, i32* %5212, align 4
  %5276 = sext i32 %5275 to i64
  store i64 %5276, i64* %RAX, align 8, !tbaa !2428
  %5277 = shl nsw i64 %5276, 2
  %5278 = add i64 %5204, -1616
  %5279 = add i64 %5278, %5277
  %5280 = add i64 %5240, 12
  store i64 %5280, i64* %PC, align 8
  %5281 = inttoptr i64 %5279 to i32*
  %5282 = load i32, i32* %5281, align 4
  %5283 = sext i32 %5282 to i64
  store i64 %5283, i64* %RAX, align 8, !tbaa !2428
  %5284 = shl nsw i64 %5283, 2
  %5285 = add i64 %5284, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %5286 = add i64 %5240, 19
  store i64 %5286, i64* %PC, align 8
  %5287 = inttoptr i64 %5285 to i32*
  %5288 = load i32, i32* %5287, align 4
  %5289 = zext i32 %5288 to i64
  store i64 %5289, i64* %RCX, align 8, !tbaa !2428
  %5290 = add i64 %5240, 23
  store i64 %5290, i64* %PC, align 8
  %5291 = load i32, i32* %5212, align 4
  %5292 = sext i32 %5291 to i64
  store i64 %5292, i64* %RAX, align 8, !tbaa !2428
  %5293 = shl nsw i64 %5292, 2
  %5294 = add i64 %5278, %5293
  %5295 = add i64 %5240, 30
  store i64 %5295, i64* %PC, align 8
  %5296 = inttoptr i64 %5294 to i32*
  store i32 %5288, i32* %5296, align 4
  %5297 = load i64, i64* %RBP, align 8
  %5298 = add i64 %5297, -4
  %5299 = load i64, i64* %PC, align 8
  %5300 = add i64 %5299, 3
  store i64 %5300, i64* %PC, align 8
  %5301 = inttoptr i64 %5298 to i32*
  %5302 = load i32, i32* %5301, align 4
  %5303 = add i32 %5302, 1
  %5304 = zext i32 %5303 to i64
  store i64 %5304, i64* %RAX, align 8, !tbaa !2428
  %5305 = icmp eq i32 %5302, -1
  %5306 = icmp eq i32 %5303, 0
  %5307 = or i1 %5305, %5306
  %5308 = zext i1 %5307 to i8
  store i8 %5308, i8* %16, align 1, !tbaa !2432
  %5309 = and i32 %5303, 255
  %5310 = tail call i32 @llvm.ctpop.i32(i32 %5309) #9
  %5311 = trunc i32 %5310 to i8
  %5312 = and i8 %5311, 1
  %5313 = xor i8 %5312, 1
  store i8 %5313, i8* %23, align 1, !tbaa !2446
  %5314 = xor i32 %5303, %5302
  %5315 = lshr i32 %5314, 4
  %5316 = trunc i32 %5315 to i8
  %5317 = and i8 %5316, 1
  store i8 %5317, i8* %29, align 1, !tbaa !2447
  %5318 = zext i1 %5306 to i8
  store i8 %5318, i8* %32, align 1, !tbaa !2448
  %5319 = lshr i32 %5303, 31
  %5320 = trunc i32 %5319 to i8
  store i8 %5320, i8* %35, align 1, !tbaa !2449
  %5321 = lshr i32 %5302, 31
  %5322 = xor i32 %5319, %5321
  %5323 = add nuw nsw i32 %5322, %5319
  %5324 = icmp eq i32 %5323, 2
  %5325 = zext i1 %5324 to i8
  store i8 %5325, i8* %41, align 1, !tbaa !2450
  %5326 = add i64 %5299, 9
  store i64 %5326, i64* %PC, align 8
  store i32 %5303, i32* %5301, align 4
  %5327 = load i64, i64* %PC, align 8
  %5328 = add i64 %5327, -570
  store i64 %5328, i64* %PC, align 8, !tbaa !2428
  br label %block_401211

block_400c20:                                     ; preds = %block_400c05
  %5329 = add i64 %6023, -16
  %5330 = add i64 %6059, 4
  store i64 %5330, i64* %PC, align 8
  %5331 = inttoptr i64 %5329 to i32*
  %5332 = load i32, i32* %5331, align 4
  %5333 = sext i32 %5332 to i64
  store i64 %5333, i64* %RAX, align 8, !tbaa !2428
  %5334 = shl nsw i64 %5333, 2
  %5335 = add i64 %6023, -1408
  %5336 = add i64 %5335, %5334
  %5337 = add i64 %6059, 11
  store i64 %5337, i64* %PC, align 8
  %5338 = inttoptr i64 %5336 to i32*
  %5339 = load i32, i32* %5338, align 4
  %5340 = zext i32 %5339 to i64
  store i64 %5340, i64* %RCX, align 8, !tbaa !2428
  %5341 = add i64 %6059, 15
  store i64 %5341, i64* %PC, align 8
  %5342 = load i32, i32* %6027, align 4
  %5343 = sext i32 %5342 to i64
  store i64 %5343, i64* %RAX, align 8, !tbaa !2428
  %5344 = shl nsw i64 %5343, 2
  %5345 = add nsw i64 %5344, -1408
  %5346 = add i64 %5345, %6023
  %5347 = add i64 %6059, 22
  store i64 %5347, i64* %PC, align 8
  %5348 = inttoptr i64 %5346 to i32*
  %5349 = load i32, i32* %5348, align 4
  %5350 = sub i32 %5339, %5349
  %5351 = icmp ult i32 %5339, %5349
  %5352 = zext i1 %5351 to i8
  store i8 %5352, i8* %16, align 1, !tbaa !2432
  %5353 = and i32 %5350, 255
  %5354 = tail call i32 @llvm.ctpop.i32(i32 %5353) #9
  %5355 = trunc i32 %5354 to i8
  %5356 = and i8 %5355, 1
  %5357 = xor i8 %5356, 1
  store i8 %5357, i8* %23, align 1, !tbaa !2446
  %5358 = xor i32 %5349, %5339
  %5359 = xor i32 %5358, %5350
  %5360 = lshr i32 %5359, 4
  %5361 = trunc i32 %5360 to i8
  %5362 = and i8 %5361, 1
  store i8 %5362, i8* %29, align 1, !tbaa !2447
  %5363 = icmp eq i32 %5350, 0
  %5364 = zext i1 %5363 to i8
  store i8 %5364, i8* %32, align 1, !tbaa !2448
  %5365 = lshr i32 %5350, 31
  %5366 = trunc i32 %5365 to i8
  store i8 %5366, i8* %35, align 1, !tbaa !2449
  %5367 = lshr i32 %5339, 31
  %5368 = lshr i32 %5349, 31
  %5369 = xor i32 %5368, %5367
  %5370 = xor i32 %5365, %5367
  %5371 = add nuw nsw i32 %5370, %5369
  %5372 = icmp eq i32 %5371, 2
  %5373 = zext i1 %5372 to i8
  store i8 %5373, i8* %41, align 1, !tbaa !2450
  %5374 = icmp ne i8 %5366, 0
  %5375 = xor i1 %5374, %5372
  %.v286 = select i1 %5375, i64 28, i64 34
  %5376 = add i64 %6059, %.v286
  store i64 %5376, i64* %PC, align 8, !tbaa !2428
  br i1 %5375, label %block_400c3c, label %block_400c42

block_40101e:                                     ; preds = %block_400feb, %block_401004
  %5377 = phi i64 [ %3321, %block_400feb ], [ %.pre207, %block_401004 ]
  %5378 = load i64, i64* %RBP, align 8
  %5379 = add i64 %5378, -2709
  %5380 = add i64 %5377, 6
  store i64 %5380, i64* %PC, align 8
  %5381 = inttoptr i64 %5379 to i8*
  %5382 = load i8, i8* %5381, align 1
  store i8 %5382, i8* %AL, align 1, !tbaa !2451
  %5383 = and i8 %5382, 1
  store i8 0, i8* %16, align 1, !tbaa !2432
  %5384 = zext i8 %5383 to i32
  %5385 = tail call i32 @llvm.ctpop.i32(i32 %5384) #9
  %5386 = trunc i32 %5385 to i8
  %5387 = xor i8 %5386, 1
  store i8 %5387, i8* %23, align 1, !tbaa !2446
  %5388 = xor i8 %5383, 1
  store i8 %5388, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %5389 = icmp eq i8 %5388, 0
  %.v292 = select i1 %5389, i64 -1349, i64 14
  %5390 = add i64 %5377, %.v292
  store i64 %5390, i64* %PC, align 8, !tbaa !2428
  br i1 %5389, label %block_400ad9, label %block_40102c

block_400af4:                                     ; preds = %block_400ad9
  %5391 = add i64 %5687, 4
  store i64 %5391, i64* %PC, align 8
  %5392 = load i32, i32* %5655, align 4
  %5393 = sext i32 %5392 to i64
  store i64 %5393, i64* %RAX, align 8, !tbaa !2428
  %5394 = shl nsw i64 %5393, 2
  %5395 = add i64 %5651, -1328
  %5396 = add i64 %5395, %5394
  %5397 = add i64 %5687, 11
  store i64 %5397, i64* %PC, align 8
  %5398 = inttoptr i64 %5396 to i32*
  %5399 = load i32, i32* %5398, align 4
  %5400 = zext i32 %5399 to i64
  store i64 %5400, i64* %RCX, align 8, !tbaa !2428
  %5401 = add i64 %5687, 14
  store i64 %5401, i64* %PC, align 8
  %5402 = load i32, i32* %5655, align 4
  %5403 = add i32 %5402, 1
  %5404 = zext i32 %5403 to i64
  store i64 %5404, i64* %RDX, align 8, !tbaa !2428
  %5405 = icmp eq i32 %5402, -1
  %5406 = icmp eq i32 %5403, 0
  %5407 = or i1 %5405, %5406
  %5408 = zext i1 %5407 to i8
  store i8 %5408, i8* %16, align 1, !tbaa !2432
  %5409 = and i32 %5403, 255
  %5410 = tail call i32 @llvm.ctpop.i32(i32 %5409) #9
  %5411 = trunc i32 %5410 to i8
  %5412 = and i8 %5411, 1
  %5413 = xor i8 %5412, 1
  store i8 %5413, i8* %23, align 1, !tbaa !2446
  %5414 = xor i32 %5403, %5402
  %5415 = lshr i32 %5414, 4
  %5416 = trunc i32 %5415 to i8
  %5417 = and i8 %5416, 1
  store i8 %5417, i8* %29, align 1, !tbaa !2447
  %5418 = zext i1 %5406 to i8
  store i8 %5418, i8* %32, align 1, !tbaa !2448
  %5419 = lshr i32 %5403, 31
  %5420 = trunc i32 %5419 to i8
  store i8 %5420, i8* %35, align 1, !tbaa !2449
  %5421 = lshr i32 %5402, 31
  %5422 = xor i32 %5419, %5421
  %5423 = add nuw nsw i32 %5422, %5419
  %5424 = icmp eq i32 %5423, 2
  %5425 = zext i1 %5424 to i8
  store i8 %5425, i8* %41, align 1, !tbaa !2450
  %5426 = sext i32 %5403 to i64
  store i64 %5426, i64* %RAX, align 8, !tbaa !2428
  %5427 = shl nsw i64 %5426, 2
  %5428 = add nsw i64 %5427, -1328
  %5429 = add i64 %5428, %5651
  %5430 = add i64 %5687, 27
  store i64 %5430, i64* %PC, align 8
  %5431 = inttoptr i64 %5429 to i32*
  store i32 %5399, i32* %5431, align 4
  %5432 = load i64, i64* %RBP, align 8
  %5433 = add i64 %5432, -4
  %5434 = load i64, i64* %PC, align 8
  %5435 = add i64 %5434, 7
  store i64 %5435, i64* %PC, align 8
  %5436 = inttoptr i64 %5433 to i32*
  store i32 0, i32* %5436, align 4
  %.pre184 = load i64, i64* %PC, align 8
  br label %block_400b16

block_400c42:                                     ; preds = %block_400c20, %block_400c05, %block_400c3c
  %5437 = phi i64 [ %6023, %block_400c20 ], [ %6023, %block_400c05 ], [ %.pre190, %block_400c3c ]
  %5438 = phi i64 [ %5376, %block_400c20 ], [ %6059, %block_400c05 ], [ %.pre189, %block_400c3c ]
  %5439 = add i64 %5437, -8
  %5440 = add i64 %5438, 9
  store i64 %5440, i64* %PC, align 8
  %5441 = inttoptr i64 %5439 to i32*
  %5442 = load i32, i32* %5441, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %5443 = and i32 %5442, 255
  %5444 = tail call i32 @llvm.ctpop.i32(i32 %5443) #9
  %5445 = trunc i32 %5444 to i8
  %5446 = and i8 %5445, 1
  %5447 = xor i8 %5446, 1
  store i8 %5447, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %5448 = icmp eq i32 %5442, 0
  %5449 = zext i1 %5448 to i8
  store i8 %5449, i8* %32, align 1, !tbaa !2448
  %5450 = lshr i32 %5442, 31
  %5451 = trunc i32 %5450 to i8
  store i8 %5451, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %5452 = xor i1 %5448, true
  %5453 = icmp eq i8 %5451, 0
  %5454 = and i1 %5453, %5452
  %.v287 = select i1 %5454, i64 -61, i64 15
  %5455 = add i64 %5438, %.v287
  store i64 %5455, i64* %PC, align 8, !tbaa !2428
  br i1 %5454, label %block_400c05, label %block_400c51

block_40102c:                                     ; preds = %block_40101e
  %5456 = add i64 %5378, -12
  %5457 = add i64 %5390, 3
  store i64 %5457, i64* %PC, align 8
  %5458 = inttoptr i64 %5456 to i32*
  %5459 = load i32, i32* %5458, align 4
  %5460 = add i32 %5459, 1
  %5461 = zext i32 %5460 to i64
  store i64 %5461, i64* %RAX, align 8, !tbaa !2428
  %5462 = icmp eq i32 %5459, -1
  %5463 = icmp eq i32 %5460, 0
  %5464 = or i1 %5462, %5463
  %5465 = zext i1 %5464 to i8
  store i8 %5465, i8* %16, align 1, !tbaa !2432
  %5466 = and i32 %5460, 255
  %5467 = tail call i32 @llvm.ctpop.i32(i32 %5466) #9
  %5468 = trunc i32 %5467 to i8
  %5469 = and i8 %5468, 1
  %5470 = xor i8 %5469, 1
  store i8 %5470, i8* %23, align 1, !tbaa !2446
  %5471 = xor i32 %5460, %5459
  %5472 = lshr i32 %5471, 4
  %5473 = trunc i32 %5472 to i8
  %5474 = and i8 %5473, 1
  store i8 %5474, i8* %29, align 1, !tbaa !2447
  %5475 = zext i1 %5463 to i8
  store i8 %5475, i8* %32, align 1, !tbaa !2448
  %5476 = lshr i32 %5460, 31
  %5477 = trunc i32 %5476 to i8
  store i8 %5477, i8* %35, align 1, !tbaa !2449
  %5478 = lshr i32 %5459, 31
  %5479 = xor i32 %5476, %5478
  %5480 = add nuw nsw i32 %5479, %5476
  %5481 = icmp eq i32 %5480, 2
  %5482 = zext i1 %5481 to i8
  store i8 %5482, i8* %41, align 1, !tbaa !2450
  %5483 = add i64 %5390, 9
  store i64 %5483, i64* %PC, align 8
  store i32 %5460, i32* %5458, align 4
  %5484 = load i64, i64* %RBP, align 8
  %5485 = add i64 %5484, -12
  %5486 = load i64, i64* %PC, align 8
  %5487 = add i64 %5486, 4
  store i64 %5487, i64* %PC, align 8
  %5488 = inttoptr i64 %5485 to i32*
  %5489 = load i32, i32* %5488, align 4
  %5490 = sext i32 %5489 to i64
  store i64 %5490, i64* %RCX, align 8, !tbaa !2428
  %5491 = shl nsw i64 %5490, 2
  %5492 = add i64 %5484, -1328
  %5493 = add i64 %5492, %5491
  %5494 = add i64 %5486, 12
  store i64 %5494, i64* %PC, align 8
  %5495 = inttoptr i64 %5493 to i32*
  %5496 = load i32, i32* %5495, align 4
  %5497 = add i32 %5496, -8
  %5498 = icmp ult i32 %5496, 8
  %5499 = zext i1 %5498 to i8
  store i8 %5499, i8* %16, align 1, !tbaa !2432
  %5500 = and i32 %5497, 255
  %5501 = tail call i32 @llvm.ctpop.i32(i32 %5500) #9
  %5502 = trunc i32 %5501 to i8
  %5503 = and i8 %5502, 1
  %5504 = xor i8 %5503, 1
  store i8 %5504, i8* %23, align 1, !tbaa !2446
  %5505 = xor i32 %5497, %5496
  %5506 = lshr i32 %5505, 4
  %5507 = trunc i32 %5506 to i8
  %5508 = and i8 %5507, 1
  store i8 %5508, i8* %29, align 1, !tbaa !2447
  %5509 = icmp eq i32 %5497, 0
  %5510 = zext i1 %5509 to i8
  store i8 %5510, i8* %32, align 1, !tbaa !2448
  %5511 = lshr i32 %5497, 31
  %5512 = trunc i32 %5511 to i8
  store i8 %5512, i8* %35, align 1, !tbaa !2449
  %5513 = lshr i32 %5496, 31
  %5514 = xor i32 %5511, %5513
  %5515 = add nuw nsw i32 %5514, %5513
  %5516 = icmp eq i32 %5515, 2
  %5517 = zext i1 %5516 to i8
  store i8 %5517, i8* %41, align 1, !tbaa !2450
  %5518 = icmp ne i8 %5512, 0
  %5519 = xor i1 %5518, %5516
  %.demorgan258 = or i1 %5509, %5519
  %.v = select i1 %.demorgan258, i64 18, i64 1859
  %5520 = add i64 %5486, %.v
  %5521 = add i64 %5484, -4
  %5522 = add i64 %5520, 7
  store i64 %5522, i64* %PC, align 8
  %5523 = inttoptr i64 %5521 to i32*
  store i32 0, i32* %5523, align 4
  %.pre208 = load i64, i64* %PC, align 8
  br i1 %.demorgan258, label %block_40104e.preheader, label %block_40177f.preheader

block_40177f.preheader:                           ; preds = %block_40102c
  br label %block_40177f

block_40104e.preheader:                           ; preds = %block_40102c
  br label %block_40104e

block_40118d:                                     ; preds = %block_401133, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7
  %5524 = phi i64 [ %1920, %block_401133 ], [ %.pre216, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7 ]
  %5525 = phi i64 [ %1562, %block_401133 ], [ %.pre215, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7 ]
  %MEMORY.46 = phi %struct.Memory* [ %MEMORY.15, %block_401133 ], [ %879, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7 ]
  %5526 = add i64 %5524, -8
  %5527 = add i64 %5525, 8
  store i64 %5527, i64* %PC, align 8
  %5528 = inttoptr i64 %5526 to i32*
  %5529 = load i32, i32* %5528, align 4
  %5530 = add i32 %5529, 1
  %5531 = zext i32 %5530 to i64
  store i64 %5531, i64* %RAX, align 8, !tbaa !2428
  %5532 = icmp eq i32 %5529, -1
  %5533 = icmp eq i32 %5530, 0
  %5534 = or i1 %5532, %5533
  %5535 = zext i1 %5534 to i8
  store i8 %5535, i8* %16, align 1, !tbaa !2432
  %5536 = and i32 %5530, 255
  %5537 = tail call i32 @llvm.ctpop.i32(i32 %5536) #9
  %5538 = trunc i32 %5537 to i8
  %5539 = and i8 %5538, 1
  %5540 = xor i8 %5539, 1
  store i8 %5540, i8* %23, align 1, !tbaa !2446
  %5541 = xor i32 %5530, %5529
  %5542 = lshr i32 %5541, 4
  %5543 = trunc i32 %5542 to i8
  %5544 = and i8 %5543, 1
  store i8 %5544, i8* %29, align 1, !tbaa !2447
  %5545 = zext i1 %5533 to i8
  store i8 %5545, i8* %32, align 1, !tbaa !2448
  %5546 = lshr i32 %5530, 31
  %5547 = trunc i32 %5546 to i8
  store i8 %5547, i8* %35, align 1, !tbaa !2449
  %5548 = lshr i32 %5529, 31
  %5549 = xor i32 %5546, %5548
  %5550 = add nuw nsw i32 %5549, %5546
  %5551 = icmp eq i32 %5550, 2
  %5552 = zext i1 %5551 to i8
  store i8 %5552, i8* %41, align 1, !tbaa !2450
  %5553 = add i64 %5525, 14
  store i64 %5553, i64* %PC, align 8
  store i32 %5530, i32* %5528, align 4
  %5554 = load i64, i64* %PC, align 8
  %5555 = add i64 %5554, -124
  store i64 %5555, i64* %PC, align 8, !tbaa !2428
  br label %block_40111f

block_400cfc:                                     ; preds = %block_400cc2
  %5556 = add i64 %2488, 7
  store i64 %5556, i64* %PC, align 8
  store i32 0, i32* %2462, align 4
  %.pre193 = load i64, i64* %PC, align 8
  br label %block_400d03

block_401813:                                     ; preds = %block_401801
  %5557 = add i64 %6236, 12
  store i64 %5557, i64* %PC, align 8
  %5558 = inttoptr i64 %6241 to i32*
  %5559 = load i32, i32* %5558, align 4
  %5560 = sext i32 %5559 to i64
  store i64 %5560, i64* %RAX, align 8, !tbaa !2428
  %5561 = shl nsw i64 %5560, 2
  %5562 = add i64 %5561, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %5563 = add i64 %6236, 19
  store i64 %5563, i64* %PC, align 8
  %5564 = inttoptr i64 %5562 to i32*
  %5565 = load i32, i32* %5564, align 4
  %5566 = zext i32 %5565 to i64
  store i64 %5566, i64* %RCX, align 8, !tbaa !2428
  %5567 = add i64 %6236, 23
  store i64 %5567, i64* %PC, align 8
  %5568 = load i32, i32* %92, align 4
  %5569 = sext i32 %5568 to i64
  store i64 %5569, i64* %RAX, align 8, !tbaa !2428
  %5570 = shl nsw i64 %5569, 2
  %5571 = add i64 %5570, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %5572 = add i64 %6236, 30
  store i64 %5572, i64* %PC, align 8
  %5573 = inttoptr i64 %5571 to i32*
  store i32 %5565, i32* %5573, align 4
  %5574 = load i64, i64* %PC, align 8
  %5575 = add i64 %5574, 20
  store i64 %5575, i64* %PC, align 8, !tbaa !2428
  br label %block_401845

block_401211:                                     ; preds = %block_401424, %block_40120a
  %5576 = phi i64 [ %.pre219, %block_40120a ], [ %5328, %block_401424 ]
  %MEMORY.47 = phi %struct.Memory* [ %MEMORY.26, %block_40120a ], [ %MEMORY.43, %block_401424 ]
  %5577 = load i64, i64* %RBP, align 8
  %5578 = add i64 %5577, -4
  %5579 = add i64 %5576, 3
  store i64 %5579, i64* %PC, align 8
  %5580 = inttoptr i64 %5578 to i32*
  %5581 = load i32, i32* %5580, align 4
  %5582 = zext i32 %5581 to i64
  store i64 %5582, i64* %RAX, align 8, !tbaa !2428
  %5583 = add i64 %5577, -12
  %5584 = add i64 %5576, 7
  store i64 %5584, i64* %PC, align 8
  %5585 = inttoptr i64 %5583 to i32*
  %5586 = load i32, i32* %5585, align 4
  %5587 = sext i32 %5586 to i64
  store i64 %5587, i64* %RCX, align 8, !tbaa !2428
  %5588 = shl nsw i64 %5587, 2
  %5589 = add nsw i64 %5588, -1328
  %5590 = add i64 %5589, %5577
  %5591 = add i64 %5576, 14
  store i64 %5591, i64* %PC, align 8
  %5592 = inttoptr i64 %5590 to i32*
  %5593 = load i32, i32* %5592, align 4
  %5594 = sub i32 %5581, %5593
  %5595 = icmp ult i32 %5581, %5593
  %5596 = zext i1 %5595 to i8
  store i8 %5596, i8* %16, align 1, !tbaa !2432
  %5597 = and i32 %5594, 255
  %5598 = tail call i32 @llvm.ctpop.i32(i32 %5597) #9
  %5599 = trunc i32 %5598 to i8
  %5600 = and i8 %5599, 1
  %5601 = xor i8 %5600, 1
  store i8 %5601, i8* %23, align 1, !tbaa !2446
  %5602 = xor i32 %5593, %5581
  %5603 = xor i32 %5602, %5594
  %5604 = lshr i32 %5603, 4
  %5605 = trunc i32 %5604 to i8
  %5606 = and i8 %5605, 1
  store i8 %5606, i8* %29, align 1, !tbaa !2447
  %5607 = icmp eq i32 %5594, 0
  %5608 = zext i1 %5607 to i8
  store i8 %5608, i8* %32, align 1, !tbaa !2448
  %5609 = lshr i32 %5594, 31
  %5610 = trunc i32 %5609 to i8
  store i8 %5610, i8* %35, align 1, !tbaa !2449
  %5611 = lshr i32 %5581, 31
  %5612 = lshr i32 %5593, 31
  %5613 = xor i32 %5612, %5611
  %5614 = xor i32 %5609, %5611
  %5615 = add nuw nsw i32 %5614, %5613
  %5616 = icmp eq i32 %5615, 2
  %5617 = zext i1 %5616 to i8
  store i8 %5617, i8* %41, align 1, !tbaa !2450
  %5618 = icmp ne i8 %5610, 0
  %5619 = xor i1 %5618, %5616
  %.demorgan265 = or i1 %5607, %5619
  %.v295 = select i1 %.demorgan265, i64 20, i64 575
  %5620 = add i64 %5576, %.v295
  store i64 %5620, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan265, label %block_401225, label %block_401450

block_400ad9:                                     ; preds = %block_40101e, %block_400aaa
  %5621 = phi i64 [ %.pre183, %block_400aaa ], [ %5390, %block_40101e ]
  %5622 = phi i64 [ %.pre182, %block_400aaa ], [ %5378, %block_40101e ]
  %MEMORY.48 = phi %struct.Memory* [ %MEMORY.8, %block_400aaa ], [ %MEMORY.31, %block_40101e ]
  %5623 = add i64 %5622, -12
  %5624 = add i64 %5621, 3
  store i64 %5624, i64* %PC, align 8
  %5625 = inttoptr i64 %5623 to i32*
  %5626 = load i32, i32* %5625, align 4
  %5627 = add i32 %5626, 1
  %5628 = zext i32 %5627 to i64
  store i64 %5628, i64* %RAX, align 8, !tbaa !2428
  %5629 = icmp eq i32 %5626, -1
  %5630 = icmp eq i32 %5627, 0
  %5631 = or i1 %5629, %5630
  %5632 = zext i1 %5631 to i8
  store i8 %5632, i8* %16, align 1, !tbaa !2432
  %5633 = and i32 %5627, 255
  %5634 = tail call i32 @llvm.ctpop.i32(i32 %5633) #9
  %5635 = trunc i32 %5634 to i8
  %5636 = and i8 %5635, 1
  %5637 = xor i8 %5636, 1
  store i8 %5637, i8* %23, align 1, !tbaa !2446
  %5638 = xor i32 %5627, %5626
  %5639 = lshr i32 %5638, 4
  %5640 = trunc i32 %5639 to i8
  %5641 = and i8 %5640, 1
  store i8 %5641, i8* %29, align 1, !tbaa !2447
  %5642 = zext i1 %5630 to i8
  store i8 %5642, i8* %32, align 1, !tbaa !2448
  %5643 = lshr i32 %5627, 31
  %5644 = trunc i32 %5643 to i8
  store i8 %5644, i8* %35, align 1, !tbaa !2449
  %5645 = lshr i32 %5626, 31
  %5646 = xor i32 %5643, %5645
  %5647 = add nuw nsw i32 %5646, %5643
  %5648 = icmp eq i32 %5647, 2
  %5649 = zext i1 %5648 to i8
  store i8 %5649, i8* %41, align 1, !tbaa !2450
  %5650 = add i64 %5621, 9
  store i64 %5650, i64* %PC, align 8
  store i32 %5627, i32* %5625, align 4
  %5651 = load i64, i64* %RBP, align 8
  %5652 = add i64 %5651, -12
  %5653 = load i64, i64* %PC, align 8
  %5654 = add i64 %5653, 4
  store i64 %5654, i64* %PC, align 8
  %5655 = inttoptr i64 %5652 to i32*
  %5656 = load i32, i32* %5655, align 4
  %5657 = sext i32 %5656 to i64
  store i64 %5657, i64* %RCX, align 8, !tbaa !2428
  %5658 = shl nsw i64 %5657, 2
  %5659 = add i64 %5651, -1248
  %5660 = add i64 %5659, %5658
  %5661 = add i64 %5653, 12
  store i64 %5661, i64* %PC, align 8
  %5662 = inttoptr i64 %5660 to i32*
  %5663 = load i32, i32* %5662, align 4
  %5664 = add i32 %5663, 1
  %5665 = icmp ne i32 %5663, -1
  %5666 = zext i1 %5665 to i8
  store i8 %5666, i8* %16, align 1, !tbaa !2432
  %5667 = and i32 %5664, 255
  %5668 = tail call i32 @llvm.ctpop.i32(i32 %5667) #9
  %5669 = trunc i32 %5668 to i8
  %5670 = and i8 %5669, 1
  %5671 = xor i8 %5670, 1
  store i8 %5671, i8* %23, align 1, !tbaa !2446
  %5672 = xor i32 %5663, 16
  %5673 = xor i32 %5672, %5664
  %5674 = lshr i32 %5673, 4
  %5675 = trunc i32 %5674 to i8
  %5676 = and i8 %5675, 1
  store i8 %5676, i8* %29, align 1, !tbaa !2447
  %5677 = icmp eq i32 %5664, 0
  %5678 = zext i1 %5677 to i8
  store i8 %5678, i8* %32, align 1, !tbaa !2448
  %5679 = lshr i32 %5664, 31
  %5680 = trunc i32 %5679 to i8
  store i8 %5680, i8* %35, align 1, !tbaa !2449
  %5681 = lshr i32 %5663, 31
  %5682 = xor i32 %5681, 1
  %5683 = xor i32 %5679, %5681
  %5684 = add nuw nsw i32 %5683, %5682
  %5685 = icmp eq i32 %5684, 2
  %5686 = zext i1 %5685 to i8
  store i8 %5686, i8* %41, align 1, !tbaa !2450
  %.v283 = select i1 %5677, i64 18, i64 192
  %5687 = add i64 %5653, %.v283
  store i64 %5687, i64* %PC, align 8, !tbaa !2428
  br i1 %5677, label %block_400af4, label %block_400ba2

block_4012ad:                                     ; preds = %block_40129b
  %5688 = add i64 %2733, -1168
  store i64 %5688, i64* %RAX, align 8, !tbaa !2428
  %5689 = add i64 %2733, -12
  %5690 = add i64 %2768, 11
  store i64 %5690, i64* %PC, align 8
  %5691 = inttoptr i64 %5689 to i32*
  %5692 = load i32, i32* %5691, align 4
  %5693 = sext i32 %5692 to i64
  %5694 = shl nsw i64 %5693, 6
  store i64 %5694, i64* %RCX, align 8, !tbaa !2428
  %5695 = add i64 %5694, %5688
  store i64 %5695, i64* %RAX, align 8, !tbaa !2428
  %5696 = icmp ult i64 %5695, %5688
  %5697 = icmp ult i64 %5695, %5694
  %5698 = or i1 %5696, %5697
  %5699 = zext i1 %5698 to i8
  store i8 %5699, i8* %16, align 1, !tbaa !2432
  %5700 = trunc i64 %5695 to i32
  %5701 = and i32 %5700, 255
  %5702 = tail call i32 @llvm.ctpop.i32(i32 %5701) #9
  %5703 = trunc i32 %5702 to i8
  %5704 = and i8 %5703, 1
  %5705 = xor i8 %5704, 1
  store i8 %5705, i8* %23, align 1, !tbaa !2446
  %5706 = xor i64 %5688, %5695
  %5707 = lshr i64 %5706, 4
  %5708 = trunc i64 %5707 to i8
  %5709 = and i8 %5708, 1
  store i8 %5709, i8* %29, align 1, !tbaa !2447
  %5710 = icmp eq i64 %5695, 0
  %5711 = zext i1 %5710 to i8
  store i8 %5711, i8* %32, align 1, !tbaa !2448
  %5712 = lshr i64 %5695, 63
  %5713 = trunc i64 %5712 to i8
  store i8 %5713, i8* %35, align 1, !tbaa !2449
  %5714 = lshr i64 %5688, 63
  %5715 = lshr i64 %5693, 57
  %5716 = and i64 %5715, 1
  %5717 = xor i64 %5712, %5714
  %5718 = xor i64 %5712, %5716
  %5719 = add nuw nsw i64 %5717, %5718
  %5720 = icmp eq i64 %5719, 2
  %5721 = zext i1 %5720 to i8
  store i8 %5721, i8* %41, align 1, !tbaa !2450
  %5722 = add i64 %2768, 22
  store i64 %5722, i64* %PC, align 8
  %5723 = load i32, i32* %2736, align 4
  %5724 = sext i32 %5723 to i64
  store i64 %5724, i64* %RCX, align 8, !tbaa !2428
  %5725 = shl nsw i64 %5724, 2
  %5726 = add i64 %5725, %5695
  %5727 = add i64 %2768, 26
  store i64 %5727, i64* %PC, align 8
  %5728 = inttoptr i64 %5726 to i32*
  %5729 = load i32, i32* %5728, align 4
  %5730 = add i32 %5729, 1
  %5731 = icmp ne i32 %5729, -1
  %5732 = zext i1 %5731 to i8
  store i8 %5732, i8* %16, align 1, !tbaa !2432
  %5733 = and i32 %5730, 255
  %5734 = tail call i32 @llvm.ctpop.i32(i32 %5733) #9
  %5735 = trunc i32 %5734 to i8
  %5736 = and i8 %5735, 1
  %5737 = xor i8 %5736, 1
  store i8 %5737, i8* %23, align 1, !tbaa !2446
  %5738 = xor i32 %5729, 16
  %5739 = xor i32 %5738, %5730
  %5740 = lshr i32 %5739, 4
  %5741 = trunc i32 %5740 to i8
  %5742 = and i8 %5741, 1
  store i8 %5742, i8* %29, align 1, !tbaa !2447
  %5743 = icmp eq i32 %5730, 0
  %5744 = zext i1 %5743 to i8
  store i8 %5744, i8* %32, align 1, !tbaa !2448
  %5745 = lshr i32 %5730, 31
  %5746 = trunc i32 %5745 to i8
  store i8 %5746, i8* %35, align 1, !tbaa !2449
  %5747 = lshr i32 %5729, 31
  %5748 = xor i32 %5747, 1
  %5749 = xor i32 %5745, %5747
  %5750 = add nuw nsw i32 %5749, %5748
  %5751 = icmp eq i32 %5750, 2
  %5752 = zext i1 %5751 to i8
  store i8 %5752, i8* %41, align 1, !tbaa !2450
  %.v309 = select i1 %5743, i64 32, i64 67
  %5753 = add i64 %2768, %.v309
  store i64 %5753, i64* %PC, align 8, !tbaa !2428
  %5754 = load i64, i64* %RBP, align 8
  br i1 %5743, label %block_4012cd, label %block_4012f0

block_401457:                                     ; preds = %block_4014b7, %block_401450
  %5755 = phi i64 [ %5120, %block_4014b7 ], [ %.pre229, %block_401450 ]
  %5756 = load i64, i64* %RBP, align 8
  %5757 = add i64 %5756, -4
  %5758 = add i64 %5755, 7
  store i64 %5758, i64* %PC, align 8
  %5759 = inttoptr i64 %5757 to i32*
  %5760 = load i32, i32* %5759, align 4
  %5761 = add i32 %5760, -255
  %5762 = icmp ult i32 %5760, 255
  %5763 = zext i1 %5762 to i8
  store i8 %5763, i8* %16, align 1, !tbaa !2432
  %5764 = and i32 %5761, 255
  %5765 = tail call i32 @llvm.ctpop.i32(i32 %5764) #9
  %5766 = trunc i32 %5765 to i8
  %5767 = and i8 %5766, 1
  %5768 = xor i8 %5767, 1
  store i8 %5768, i8* %23, align 1, !tbaa !2446
  %5769 = xor i32 %5760, 16
  %5770 = xor i32 %5769, %5761
  %5771 = lshr i32 %5770, 4
  %5772 = trunc i32 %5771 to i8
  %5773 = and i8 %5772, 1
  store i8 %5773, i8* %29, align 1, !tbaa !2447
  %5774 = icmp eq i32 %5761, 0
  %5775 = zext i1 %5774 to i8
  store i8 %5775, i8* %32, align 1, !tbaa !2448
  %5776 = lshr i32 %5761, 31
  %5777 = trunc i32 %5776 to i8
  store i8 %5777, i8* %35, align 1, !tbaa !2449
  %5778 = lshr i32 %5760, 31
  %5779 = xor i32 %5776, %5778
  %5780 = add nuw nsw i32 %5779, %5778
  %5781 = icmp eq i32 %5780, 2
  %5782 = zext i1 %5781 to i8
  store i8 %5782, i8* %41, align 1, !tbaa !2450
  %5783 = icmp ne i8 %5777, 0
  %5784 = xor i1 %5783, %5781
  %.v296 = select i1 %5784, i64 13, i64 115
  %5785 = add i64 %5755, %.v296
  store i64 %5785, i64* %PC, align 8, !tbaa !2428
  br i1 %5784, label %block_401464, label %block_4014ca

block_400bff:                                     ; preds = %block_400be2
  %5786 = add i64 %396, 3
  store i64 %5786, i64* %PC, align 8
  %5787 = load i32, i32* %383, align 4
  %5788 = zext i32 %5787 to i64
  store i64 %5788, i64* %RAX, align 8, !tbaa !2428
  %5789 = add i64 %2102, -8
  %5790 = add i64 %396, 6
  store i64 %5790, i64* %PC, align 8
  %5791 = inttoptr i64 %5789 to i32*
  store i32 %5787, i32* %5791, align 4
  %.pre187 = load i64, i64* %RBP, align 8
  %.pre188 = load i64, i64* %PC, align 8
  br label %block_400c05

block_400a0a:                                     ; preds = %block_400a00, %block_4009ee
  %5792 = phi i64 [ %.pre175, %block_400a00 ], [ %631, %block_4009ee ]
  %5793 = phi i64 [ %.pre174, %block_400a00 ], [ %1596, %block_4009ee ]
  %5794 = add i64 %5793, -4
  %5795 = add i64 %5792, 4
  store i64 %5795, i64* %PC, align 8
  %5796 = inttoptr i64 %5794 to i32*
  %5797 = load i32, i32* %5796, align 4
  %5798 = sext i32 %5797 to i64
  store i64 %5798, i64* %RAX, align 8, !tbaa !2428
  %5799 = shl nsw i64 %5798, 2
  %5800 = add i64 %5793, -1488
  %5801 = add i64 %5800, %5799
  %5802 = add i64 %5792, 12
  store i64 %5802, i64* %PC, align 8
  %5803 = inttoptr i64 %5801 to i32*
  %5804 = load i32, i32* %5803, align 4
  %5805 = sext i32 %5804 to i64
  store i64 %5805, i64* %RAX, align 8, !tbaa !2428
  %5806 = shl nsw i64 %5805, 2
  %5807 = add i64 %5806, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %5808 = add i64 %5792, 19
  store i64 %5808, i64* %PC, align 8
  %5809 = inttoptr i64 %5807 to i32*
  %5810 = load i32, i32* %5809, align 4
  %5811 = zext i32 %5810 to i64
  store i64 %5811, i64* %RCX, align 8, !tbaa !2428
  %5812 = add i64 %5792, 23
  store i64 %5812, i64* %PC, align 8
  %5813 = load i32, i32* %5796, align 4
  %5814 = sext i32 %5813 to i64
  store i64 %5814, i64* %RAX, align 8, !tbaa !2428
  %5815 = shl nsw i64 %5814, 2
  %5816 = add i64 %5800, %5815
  %5817 = add i64 %5792, 30
  store i64 %5817, i64* %PC, align 8
  %5818 = inttoptr i64 %5816 to i32*
  store i32 %5810, i32* %5818, align 4
  %5819 = load i64, i64* %RBP, align 8
  %5820 = add i64 %5819, -4
  %5821 = load i64, i64* %PC, align 8
  %5822 = add i64 %5821, 3
  store i64 %5822, i64* %PC, align 8
  %5823 = inttoptr i64 %5820 to i32*
  %5824 = load i32, i32* %5823, align 4
  %5825 = add i32 %5824, 1
  %5826 = zext i32 %5825 to i64
  store i64 %5826, i64* %RAX, align 8, !tbaa !2428
  %5827 = icmp eq i32 %5824, -1
  %5828 = icmp eq i32 %5825, 0
  %5829 = or i1 %5827, %5828
  %5830 = zext i1 %5829 to i8
  store i8 %5830, i8* %16, align 1, !tbaa !2432
  %5831 = and i32 %5825, 255
  %5832 = tail call i32 @llvm.ctpop.i32(i32 %5831) #9
  %5833 = trunc i32 %5832 to i8
  %5834 = and i8 %5833, 1
  %5835 = xor i8 %5834, 1
  store i8 %5835, i8* %23, align 1, !tbaa !2446
  %5836 = xor i32 %5825, %5824
  %5837 = lshr i32 %5836, 4
  %5838 = trunc i32 %5837 to i8
  %5839 = and i8 %5838, 1
  store i8 %5839, i8* %29, align 1, !tbaa !2447
  %5840 = zext i1 %5828 to i8
  store i8 %5840, i8* %32, align 1, !tbaa !2448
  %5841 = lshr i32 %5825, 31
  %5842 = trunc i32 %5841 to i8
  store i8 %5842, i8* %35, align 1, !tbaa !2449
  %5843 = lshr i32 %5824, 31
  %5844 = xor i32 %5841, %5843
  %5845 = add nuw nsw i32 %5844, %5841
  %5846 = icmp eq i32 %5845, 2
  %5847 = zext i1 %5846 to i8
  store i8 %5847, i8* %41, align 1, !tbaa !2450
  %5848 = add i64 %5821, 9
  store i64 %5848, i64* %PC, align 8
  store i32 %5825, i32* %5823, align 4
  %5849 = load i64, i64* %PC, align 8
  %5850 = add i64 %5849, -219
  store i64 %5850, i64* %PC, align 8, !tbaa !2428
  br label %block_400956

block_40136c:                                     ; preds = %block_401257, %block_401367
  %5851 = phi i64 [ %.pre223, %block_401257 ], [ %1193, %block_401367 ]
  %.sink15 = phi i64 [ 214, %block_401257 ], [ 5, %block_401367 ]
  %5852 = add i64 %5851, %.sink15
  %5853 = load i64, i64* %RBP, align 8
  %5854 = add i64 %5853, -8
  %5855 = add i64 %5852, 7
  store i64 %5855, i64* %PC, align 8
  %5856 = inttoptr i64 %5854 to i32*
  store i32 1, i32* %5856, align 4
  %.pre224 = load i64, i64* %PC, align 8
  br label %block_401373

block_401608:                                     ; preds = %block_4015fc
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %5857 = add i64 %87, 9
  store i64 %5857, i64* %PC, align 8
  %5858 = load i32, i32* %1114, align 4
  %5859 = sext i32 %5858 to i64
  store i64 %5859, i64* %RCX, align 8, !tbaa !2428
  %5860 = shl nsw i64 %5859, 2
  %5861 = add i64 %1111, -1568
  %5862 = add i64 %5861, %5860
  %5863 = add i64 %87, 16
  store i64 %5863, i64* %PC, align 8
  %5864 = inttoptr i64 %5862 to i32*
  %5865 = load i32, i32* %5864, align 4
  %5866 = zext i32 %5865 to i64
  store i64 %5866, i64* %RDX, align 8, !tbaa !2428
  %5867 = add i64 %87, 20
  store i64 %5867, i64* %PC, align 8
  %5868 = load i32, i32* %61, align 4
  %5869 = sext i32 %5868 to i64
  store i64 %5869, i64* %RCX, align 8, !tbaa !2428
  %5870 = shl nsw i64 %5869, 2
  %5871 = add nsw i64 %5870, -1536
  %5872 = add i64 %5871, %1111
  %5873 = add i64 %87, 27
  store i64 %5873, i64* %PC, align 8
  %5874 = inttoptr i64 %5872 to i32*
  %5875 = load i32, i32* %5874, align 4
  %5876 = add i32 %5875, %5865
  %5877 = zext i32 %5876 to i64
  store i64 %5877, i64* %RDX, align 8, !tbaa !2428
  %5878 = icmp ult i32 %5876, %5865
  %5879 = icmp ult i32 %5876, %5875
  %5880 = or i1 %5878, %5879
  %5881 = zext i1 %5880 to i8
  store i8 %5881, i8* %16, align 1, !tbaa !2432
  %5882 = and i32 %5876, 255
  %5883 = tail call i32 @llvm.ctpop.i32(i32 %5882) #9
  %5884 = trunc i32 %5883 to i8
  %5885 = and i8 %5884, 1
  %5886 = xor i8 %5885, 1
  store i8 %5886, i8* %23, align 1, !tbaa !2446
  %5887 = xor i32 %5875, %5865
  %5888 = xor i32 %5887, %5876
  %5889 = lshr i32 %5888, 4
  %5890 = trunc i32 %5889 to i8
  %5891 = and i8 %5890, 1
  store i8 %5891, i8* %29, align 1, !tbaa !2447
  %5892 = icmp eq i32 %5876, 0
  %5893 = zext i1 %5892 to i8
  store i8 %5893, i8* %32, align 1, !tbaa !2448
  %5894 = lshr i32 %5876, 31
  %5895 = trunc i32 %5894 to i8
  store i8 %5895, i8* %35, align 1, !tbaa !2449
  %5896 = lshr i32 %5865, 31
  %5897 = lshr i32 %5875, 31
  %5898 = xor i32 %5894, %5896
  %5899 = xor i32 %5894, %5897
  %5900 = add nuw nsw i32 %5898, %5899
  %5901 = icmp eq i32 %5900, 2
  %5902 = zext i1 %5901 to i8
  store i8 %5902, i8* %41, align 1, !tbaa !2450
  %5903 = add i64 %1111, -2728
  %5904 = add i64 %87, 33
  store i64 %5904, i64* %PC, align 8
  %5905 = inttoptr i64 %5903 to i32*
  store i32 255, i32* %5905, align 4
  %5906 = load i32, i32* %EDX, align 4
  %5907 = zext i32 %5906 to i64
  %5908 = load i64, i64* %PC, align 8
  store i64 %5907, i64* %RAX, align 8, !tbaa !2428
  %5909 = sext i32 %5906 to i64
  %5910 = lshr i64 %5909, 32
  store i64 %5910, i64* %55, align 8, !tbaa !2428
  %5911 = load i64, i64* %RBP, align 8
  %5912 = add i64 %5911, -2728
  %5913 = add i64 %5908, 9
  store i64 %5913, i64* %PC, align 8
  %5914 = inttoptr i64 %5912 to i32*
  %5915 = load i32, i32* %5914, align 4
  %5916 = zext i32 %5915 to i64
  store i64 %5916, i64* %RSI, align 8, !tbaa !2428
  %5917 = add i64 %5908, 11
  store i64 %5917, i64* %PC, align 8
  %5918 = sext i32 %5915 to i64
  %5919 = shl nuw i64 %5910, 32
  %5920 = or i64 %5919, %5907
  %5921 = sdiv i64 %5920, %5918
  %5922 = shl i64 %5921, 32
  %5923 = ashr exact i64 %5922, 32
  %5924 = icmp eq i64 %5921, %5923
  br i1 %5924, label %5927, label %5925

; <label>:5925:                                   ; preds = %block_401608
  %5926 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5917, %struct.Memory* %MEMORY.5) #12
  %.pre243 = load i32, i32* %EDX, align 4
  %.pre244 = load i64, i64* %PC, align 8
  %.pre245 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:5927:                                   ; preds = %block_401608
  %5928 = srem i64 %5920, %5918
  %5929 = and i64 %5921, 4294967295
  store i64 %5929, i64* %RAX, align 8, !tbaa !2428
  %5930 = and i64 %5928, 4294967295
  store i64 %5930, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %5931 = trunc i64 %5928 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %5927, %5925
  %5932 = phi i64 [ %.pre245, %5925 ], [ %5911, %5927 ]
  %5933 = phi i64 [ %.pre244, %5925 ], [ %5917, %5927 ]
  %5934 = phi i32 [ %.pre243, %5925 ], [ %5931, %5927 ]
  %5935 = phi %struct.Memory* [ %5926, %5925 ], [ %MEMORY.5, %5927 ]
  %5936 = sext i32 %5934 to i64
  store i64 %5936, i64* %RCX, align 8, !tbaa !2428
  %5937 = shl nsw i64 %5936, 2
  %5938 = add i64 %5937, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %5939 = add i64 %5933, 10
  store i64 %5939, i64* %PC, align 8
  %5940 = inttoptr i64 %5938 to i32*
  %5941 = load i32, i32* %5940, align 4
  %5942 = xor i32 %5941, 1
  %5943 = zext i32 %5942 to i64
  store i64 %5943, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %5944 = and i32 %5942, 255
  %5945 = tail call i32 @llvm.ctpop.i32(i32 %5944) #9
  %5946 = trunc i32 %5945 to i8
  %5947 = and i8 %5946, 1
  %5948 = xor i8 %5947, 1
  store i8 %5948, i8* %23, align 1, !tbaa !2446
  %5949 = icmp eq i32 %5942, 0
  %5950 = zext i1 %5949 to i8
  store i8 %5950, i8* %32, align 1, !tbaa !2448
  %5951 = lshr i32 %5941, 31
  %5952 = trunc i32 %5951 to i8
  store i8 %5952, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %sext = shl nuw i64 %5943, 32
  %5953 = sext i32 %5942 to i64
  store i64 %5953, i64* %RCX, align 8, !tbaa !2428
  %5954 = ashr exact i64 %sext, 30
  %5955 = add i64 %5954, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %5956 = add i64 %5933, 23
  store i64 %5956, i64* %PC, align 8
  %5957 = inttoptr i64 %5955 to i32*
  %5958 = load i32, i32* %5957, align 4
  %5959 = zext i32 %5958 to i64
  store i64 %5959, i64* %RDX, align 8, !tbaa !2428
  %5960 = add i64 %5932, -16
  %5961 = add i64 %5933, 26
  store i64 %5961, i64* %PC, align 8
  %5962 = inttoptr i64 %5960 to i32*
  %5963 = load i32, i32* %5962, align 4
  %5964 = add i32 %5963, %5958
  %5965 = zext i32 %5964 to i64
  store i64 %5965, i64* %RDX, align 8, !tbaa !2428
  %5966 = icmp ult i32 %5964, %5958
  %5967 = icmp ult i32 %5964, %5963
  %5968 = or i1 %5966, %5967
  %5969 = zext i1 %5968 to i8
  store i8 %5969, i8* %16, align 1, !tbaa !2432
  %5970 = and i32 %5964, 255
  %5971 = tail call i32 @llvm.ctpop.i32(i32 %5970) #9
  %5972 = trunc i32 %5971 to i8
  %5973 = and i8 %5972, 1
  %5974 = xor i8 %5973, 1
  store i8 %5974, i8* %23, align 1, !tbaa !2446
  %5975 = xor i32 %5963, %5958
  %5976 = xor i32 %5975, %5964
  %5977 = lshr i32 %5976, 4
  %5978 = trunc i32 %5977 to i8
  %5979 = and i8 %5978, 1
  store i8 %5979, i8* %29, align 1, !tbaa !2447
  %5980 = icmp eq i32 %5964, 0
  %5981 = zext i1 %5980 to i8
  store i8 %5981, i8* %32, align 1, !tbaa !2448
  %5982 = lshr i32 %5964, 31
  %5983 = trunc i32 %5982 to i8
  store i8 %5983, i8* %35, align 1, !tbaa !2449
  %5984 = lshr i32 %5958, 31
  %5985 = lshr i32 %5963, 31
  %5986 = xor i32 %5982, %5984
  %5987 = xor i32 %5982, %5985
  %5988 = add nuw nsw i32 %5986, %5987
  %5989 = icmp eq i32 %5988, 2
  %5990 = zext i1 %5989 to i8
  store i8 %5990, i8* %41, align 1, !tbaa !2450
  %5991 = add i64 %5933, 29
  store i64 %5991, i64* %PC, align 8
  store i32 %5964, i32* %5962, align 4
  %.pre246 = load i64, i64* %PC, align 8
  %.pre247 = load i64, i64* %RBP, align 8
  br label %block_401651

block_400c05:                                     ; preds = %block_400bff, %block_400c42
  %5992 = phi i64 [ %.pre188, %block_400bff ], [ %5455, %block_400c42 ]
  %5993 = phi i64 [ %.pre187, %block_400bff ], [ %5437, %block_400c42 ]
  %5994 = add i64 %5993, -8
  %5995 = add i64 %5992, 3
  store i64 %5995, i64* %PC, align 8
  %5996 = inttoptr i64 %5994 to i32*
  %5997 = load i32, i32* %5996, align 4
  %5998 = add i32 %5997, -1
  %5999 = zext i32 %5998 to i64
  store i64 %5999, i64* %RAX, align 8, !tbaa !2428
  %6000 = icmp ne i32 %5997, 0
  %6001 = zext i1 %6000 to i8
  store i8 %6001, i8* %16, align 1, !tbaa !2432
  %6002 = and i32 %5998, 255
  %6003 = tail call i32 @llvm.ctpop.i32(i32 %6002) #9
  %6004 = trunc i32 %6003 to i8
  %6005 = and i8 %6004, 1
  %6006 = xor i8 %6005, 1
  store i8 %6006, i8* %23, align 1, !tbaa !2446
  %6007 = xor i32 %5997, 16
  %6008 = xor i32 %6007, %5998
  %6009 = lshr i32 %6008, 4
  %6010 = trunc i32 %6009 to i8
  %6011 = and i8 %6010, 1
  store i8 %6011, i8* %29, align 1, !tbaa !2447
  %6012 = icmp eq i32 %5998, 0
  %6013 = zext i1 %6012 to i8
  store i8 %6013, i8* %32, align 1, !tbaa !2448
  %6014 = lshr i32 %5998, 31
  %6015 = trunc i32 %6014 to i8
  store i8 %6015, i8* %35, align 1, !tbaa !2449
  %6016 = lshr i32 %5997, 31
  %6017 = xor i32 %6014, %6016
  %6018 = xor i32 %6014, 1
  %6019 = add nuw nsw i32 %6017, %6018
  %6020 = icmp eq i32 %6019, 2
  %6021 = zext i1 %6020 to i8
  store i8 %6021, i8* %41, align 1, !tbaa !2450
  %6022 = add i64 %5992, 9
  store i64 %6022, i64* %PC, align 8
  store i32 %5998, i32* %5996, align 4
  %6023 = load i64, i64* %RBP, align 8
  %6024 = add i64 %6023, -8
  %6025 = load i64, i64* %PC, align 8
  %6026 = add i64 %6025, 4
  store i64 %6026, i64* %PC, align 8
  %6027 = inttoptr i64 %6024 to i32*
  %6028 = load i32, i32* %6027, align 4
  %6029 = sext i32 %6028 to i64
  store i64 %6029, i64* %RCX, align 8, !tbaa !2428
  %6030 = shl nsw i64 %6029, 2
  %6031 = add i64 %6023, -1248
  %6032 = add i64 %6031, %6030
  %6033 = add i64 %6025, 12
  store i64 %6033, i64* %PC, align 8
  %6034 = inttoptr i64 %6032 to i32*
  %6035 = load i32, i32* %6034, align 4
  %6036 = add i32 %6035, 1
  %6037 = icmp ne i32 %6035, -1
  %6038 = zext i1 %6037 to i8
  store i8 %6038, i8* %16, align 1, !tbaa !2432
  %6039 = and i32 %6036, 255
  %6040 = tail call i32 @llvm.ctpop.i32(i32 %6039) #9
  %6041 = trunc i32 %6040 to i8
  %6042 = and i8 %6041, 1
  %6043 = xor i8 %6042, 1
  store i8 %6043, i8* %23, align 1, !tbaa !2446
  %6044 = xor i32 %6035, 16
  %6045 = xor i32 %6044, %6036
  %6046 = lshr i32 %6045, 4
  %6047 = trunc i32 %6046 to i8
  %6048 = and i8 %6047, 1
  store i8 %6048, i8* %29, align 1, !tbaa !2447
  %6049 = icmp eq i32 %6036, 0
  %6050 = zext i1 %6049 to i8
  store i8 %6050, i8* %32, align 1, !tbaa !2448
  %6051 = lshr i32 %6036, 31
  %6052 = trunc i32 %6051 to i8
  store i8 %6052, i8* %35, align 1, !tbaa !2449
  %6053 = lshr i32 %6035, 31
  %6054 = xor i32 %6053, 1
  %6055 = xor i32 %6051, %6053
  %6056 = add nuw nsw i32 %6055, %6054
  %6057 = icmp eq i32 %6056, 2
  %6058 = zext i1 %6057 to i8
  store i8 %6058, i8* %41, align 1, !tbaa !2450
  %.v285 = select i1 %6049, i64 52, i64 18
  %6059 = add i64 %6025, %.v285
  store i64 %6059, i64* %PC, align 8, !tbaa !2428
  br i1 %6049, label %block_400c42, label %block_400c20

block_401004:                                     ; preds = %block_400feb
  %6060 = load i64, i64* %RBP, align 8
  %6061 = add i64 %6060, -12
  %6062 = add i64 %3328, 3
  store i64 %6062, i64* %PC, align 8
  %6063 = inttoptr i64 %6061 to i32*
  %6064 = load i32, i32* %6063, align 4
  %6065 = add i32 %6064, 1
  %6066 = zext i32 %6065 to i64
  store i64 %6066, i64* %RAX, align 8, !tbaa !2428
  %6067 = icmp eq i32 %6064, -1
  %6068 = icmp eq i32 %6065, 0
  %6069 = or i1 %6067, %6068
  %6070 = zext i1 %6069 to i8
  store i8 %6070, i8* %16, align 1, !tbaa !2432
  %6071 = and i32 %6065, 255
  %6072 = tail call i32 @llvm.ctpop.i32(i32 %6071) #9
  %6073 = trunc i32 %6072 to i8
  %6074 = and i8 %6073, 1
  %6075 = xor i8 %6074, 1
  store i8 %6075, i8* %23, align 1, !tbaa !2446
  %6076 = xor i32 %6065, %6064
  %6077 = lshr i32 %6076, 4
  %6078 = trunc i32 %6077 to i8
  %6079 = and i8 %6078, 1
  store i8 %6079, i8* %29, align 1, !tbaa !2447
  %6080 = zext i1 %6068 to i8
  store i8 %6080, i8* %32, align 1, !tbaa !2448
  %6081 = lshr i32 %6065, 31
  %6082 = trunc i32 %6081 to i8
  store i8 %6082, i8* %35, align 1, !tbaa !2449
  %6083 = lshr i32 %6064, 31
  %6084 = xor i32 %6081, %6083
  %6085 = add nuw nsw i32 %6084, %6081
  %6086 = icmp eq i32 %6085, 2
  %6087 = zext i1 %6086 to i8
  store i8 %6087, i8* %41, align 1, !tbaa !2450
  %6088 = sext i32 %6065 to i64
  store i64 %6088, i64* %RCX, align 8, !tbaa !2428
  %6089 = shl nsw i64 %6088, 2
  %6090 = add nsw i64 %6089, -1328
  %6091 = add i64 %6090, %6060
  %6092 = add i64 %3328, 17
  store i64 %6092, i64* %PC, align 8
  %6093 = inttoptr i64 %6091 to i32*
  %6094 = load i32, i32* %6093, align 4
  %6095 = add i32 %6094, -8
  %6096 = icmp ult i32 %6094, 8
  %6097 = zext i1 %6096 to i8
  store i8 %6097, i8* %16, align 1, !tbaa !2432
  %6098 = and i32 %6095, 255
  %6099 = tail call i32 @llvm.ctpop.i32(i32 %6098) #9
  %6100 = trunc i32 %6099 to i8
  %6101 = and i8 %6100, 1
  %6102 = xor i8 %6101, 1
  store i8 %6102, i8* %23, align 1, !tbaa !2446
  %6103 = xor i32 %6095, %6094
  %6104 = lshr i32 %6103, 4
  %6105 = trunc i32 %6104 to i8
  %6106 = and i8 %6105, 1
  store i8 %6106, i8* %29, align 1, !tbaa !2447
  %6107 = icmp eq i32 %6095, 0
  %6108 = zext i1 %6107 to i8
  store i8 %6108, i8* %32, align 1, !tbaa !2448
  %6109 = lshr i32 %6095, 31
  %6110 = trunc i32 %6109 to i8
  store i8 %6110, i8* %35, align 1, !tbaa !2449
  %6111 = lshr i32 %6094, 31
  %6112 = xor i32 %6109, %6111
  %6113 = add nuw nsw i32 %6112, %6111
  %6114 = icmp eq i32 %6113, 2
  %6115 = zext i1 %6114 to i8
  store i8 %6115, i8* %41, align 1, !tbaa !2450
  %6116 = icmp ne i8 %6110, 0
  %6117 = xor i1 %6116, %6114
  %6118 = or i1 %6107, %6117
  %6119 = zext i1 %6118 to i8
  store i8 %6119, i8* %DL, align 1, !tbaa !2451
  %6120 = add i64 %6060, -2709
  %6121 = add i64 %3328, 26
  store i64 %6121, i64* %PC, align 8
  %6122 = inttoptr i64 %6120 to i8*
  store i8 %6119, i8* %6122, align 1
  %.pre207 = load i64, i64* %PC, align 8
  br label %block_40101e

block_40137f:                                     ; preds = %block_401373
  %6123 = load i32, i32* %5207, align 4
  %6124 = sext i32 %6123 to i64
  store i64 %6124, i64* %RAX, align 8, !tbaa !2428
  %6125 = shl nsw i64 %6124, 2
  %6126 = add i64 %5204, -1488
  %6127 = add i64 %6126, %6125
  %6128 = add i64 %5240, 12
  store i64 %6128, i64* %PC, align 8
  %6129 = inttoptr i64 %6127 to i32*
  %6130 = load i32, i32* %6129, align 4
  %6131 = add i32 %6130, 1
  %6132 = icmp ne i32 %6130, -1
  %6133 = zext i1 %6132 to i8
  store i8 %6133, i8* %16, align 1, !tbaa !2432
  %6134 = and i32 %6131, 255
  %6135 = tail call i32 @llvm.ctpop.i32(i32 %6134) #9
  %6136 = trunc i32 %6135 to i8
  %6137 = and i8 %6136, 1
  %6138 = xor i8 %6137, 1
  store i8 %6138, i8* %23, align 1, !tbaa !2446
  %6139 = xor i32 %6130, 16
  %6140 = xor i32 %6139, %6131
  %6141 = lshr i32 %6140, 4
  %6142 = trunc i32 %6141 to i8
  %6143 = and i8 %6142, 1
  store i8 %6143, i8* %29, align 1, !tbaa !2447
  %6144 = icmp eq i32 %6131, 0
  %6145 = zext i1 %6144 to i8
  store i8 %6145, i8* %32, align 1, !tbaa !2448
  %6146 = lshr i32 %6131, 31
  %6147 = trunc i32 %6146 to i8
  store i8 %6147, i8* %35, align 1, !tbaa !2449
  %6148 = lshr i32 %6130, 31
  %6149 = xor i32 %6148, 1
  %6150 = xor i32 %6146, %6148
  %6151 = add nuw nsw i32 %6150, %6149
  %6152 = icmp eq i32 %6151, 2
  %6153 = zext i1 %6152 to i8
  store i8 %6153, i8* %41, align 1, !tbaa !2450
  %.v306 = select i1 %6144, i64 146, i64 18
  %6154 = add i64 %5240, %.v306
  store i64 %6154, i64* %PC, align 8, !tbaa !2428
  br i1 %6144, label %block_401411, label %block_401391

block_400bab:                                     ; preds = %block_400be7, %block_400ba2
  %6155 = phi i64 [ %1918, %block_400be7 ], [ %.pre185, %block_400ba2 ]
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 1, i8* %23, align 1, !tbaa !2446
  store i8 1, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %CL, align 1, !tbaa !2451
  %6156 = load i64, i64* %RBP, align 8
  %6157 = add i64 %6156, -16
  %6158 = add i64 %6155, 8
  store i64 %6158, i64* %PC, align 8
  %6159 = inttoptr i64 %6157 to i32*
  %6160 = load i32, i32* %6159, align 4
  %6161 = sext i32 %6160 to i64
  store i64 %6161, i64* %RDX, align 8, !tbaa !2428
  %6162 = shl nsw i64 %6161, 2
  %6163 = add i64 %6156, -1248
  %6164 = add i64 %6163, %6162
  %6165 = add i64 %6155, 16
  store i64 %6165, i64* %PC, align 8
  %6166 = inttoptr i64 %6164 to i32*
  %6167 = load i32, i32* %6166, align 4
  %6168 = add i32 %6167, 1
  %6169 = icmp ne i32 %6167, -1
  %6170 = zext i1 %6169 to i8
  store i8 %6170, i8* %16, align 1, !tbaa !2432
  %6171 = and i32 %6168, 255
  %6172 = tail call i32 @llvm.ctpop.i32(i32 %6171) #9
  %6173 = trunc i32 %6172 to i8
  %6174 = and i8 %6173, 1
  %6175 = xor i8 %6174, 1
  store i8 %6175, i8* %23, align 1, !tbaa !2446
  %6176 = xor i32 %6167, 16
  %6177 = xor i32 %6176, %6168
  %6178 = lshr i32 %6177, 4
  %6179 = trunc i32 %6178 to i8
  %6180 = and i8 %6179, 1
  store i8 %6180, i8* %29, align 1, !tbaa !2447
  %6181 = icmp eq i32 %6168, 0
  %6182 = zext i1 %6181 to i8
  store i8 %6182, i8* %32, align 1, !tbaa !2448
  %6183 = lshr i32 %6168, 31
  %6184 = trunc i32 %6183 to i8
  store i8 %6184, i8* %35, align 1, !tbaa !2449
  %6185 = lshr i32 %6167, 31
  %6186 = xor i32 %6185, 1
  %6187 = xor i32 %6183, %6185
  %6188 = add nuw nsw i32 %6187, %6186
  %6189 = icmp eq i32 %6188, 2
  %6190 = zext i1 %6189 to i8
  store i8 %6190, i8* %41, align 1, !tbaa !2450
  %6191 = add i64 %6156, -2693
  %6192 = add i64 %6155, 22
  store i64 %6192, i64* %PC, align 8
  %6193 = inttoptr i64 %6191 to i8*
  store i8 0, i8* %6193, align 1
  %6194 = load i64, i64* %PC, align 8
  %6195 = add i64 %6194, 19
  %6196 = add i64 %6194, 6
  %6197 = load i8, i8* %32, align 1, !tbaa !2448
  %6198 = icmp eq i8 %6197, 0
  %6199 = select i1 %6198, i64 %6195, i64 %6196
  store i64 %6199, i64* %PC, align 8, !tbaa !2428
  br i1 %6198, label %block_400bd4, label %block_400bc7

block_400edf:                                     ; preds = %block_400e9e, %block_400ecb
  %6200 = phi i64 [ %2730, %block_400e9e ], [ %.pre198, %block_400ecb ]
  %6201 = load i64, i64* %RBP, align 8
  %6202 = add i64 %6201, -4
  %6203 = add i64 %6200, 7
  store i64 %6203, i64* %PC, align 8
  %6204 = inttoptr i64 %6202 to i32*
  store i32 1, i32* %6204, align 4
  %.pre199 = load i64, i64* %PC, align 8
  br label %block_400ee6

block_401801:                                     ; preds = %block_4017f4
  %6205 = add i64 %118, 4
  store i64 %6205, i64* %PC, align 8
  %6206 = load i32, i32* %92, align 4
  %6207 = sext i32 %6206 to i64
  store i64 %6207, i64* %RAX, align 8, !tbaa !2428
  %6208 = shl nsw i64 %6207, 2
  %6209 = add i64 %6208, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %6210 = add i64 %118, 12
  store i64 %6210, i64* %PC, align 8
  %6211 = inttoptr i64 %6209 to i32*
  %6212 = load i32, i32* %6211, align 4
  %6213 = add i32 %6212, 1
  %6214 = icmp ne i32 %6212, -1
  %6215 = zext i1 %6214 to i8
  store i8 %6215, i8* %16, align 1, !tbaa !2432
  %6216 = and i32 %6213, 255
  %6217 = tail call i32 @llvm.ctpop.i32(i32 %6216) #9
  %6218 = trunc i32 %6217 to i8
  %6219 = and i8 %6218, 1
  %6220 = xor i8 %6219, 1
  store i8 %6220, i8* %23, align 1, !tbaa !2446
  %6221 = xor i32 %6212, 16
  %6222 = xor i32 %6221, %6213
  %6223 = lshr i32 %6222, 4
  %6224 = trunc i32 %6223 to i8
  %6225 = and i8 %6224, 1
  store i8 %6225, i8* %29, align 1, !tbaa !2447
  %6226 = icmp eq i32 %6213, 0
  %6227 = zext i1 %6226 to i8
  store i8 %6227, i8* %32, align 1, !tbaa !2448
  %6228 = lshr i32 %6213, 31
  %6229 = trunc i32 %6228 to i8
  store i8 %6229, i8* %35, align 1, !tbaa !2449
  %6230 = lshr i32 %6212, 31
  %6231 = xor i32 %6230, 1
  %6232 = xor i32 %6228, %6230
  %6233 = add nuw nsw i32 %6232, %6231
  %6234 = icmp eq i32 %6233, 2
  %6235 = zext i1 %6234 to i8
  store i8 %6235, i8* %41, align 1, !tbaa !2450
  %.v278 = select i1 %6226, i64 53, i64 18
  %6236 = add i64 %118, %.v278
  %6237 = add i64 %6236, 4
  store i64 %6237, i64* %PC, align 8
  %6238 = load i32, i32* %92, align 4
  %6239 = sext i32 %6238 to i64
  store i64 %6239, i64* %RAX, align 8, !tbaa !2428
  %6240 = shl nsw i64 %6239, 2
  %6241 = add i64 %6240, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  br i1 %6226, label %block_401836, label %block_401813

block_401322:                                     ; preds = %block_401302
  %6242 = add i64 %.pre222, -1168
  store i64 %6242, i64* %RAX, align 8, !tbaa !2428
  %6243 = add i64 %.pre222, -12
  %6244 = add i64 %4779, 11
  store i64 %6244, i64* %PC, align 8
  %6245 = inttoptr i64 %6243 to i32*
  %6246 = load i32, i32* %6245, align 4
  %6247 = sext i32 %6246 to i64
  %6248 = shl nsw i64 %6247, 6
  store i64 %6248, i64* %RCX, align 8, !tbaa !2428
  %6249 = add i64 %6248, %6242
  store i64 %6249, i64* %RAX, align 8, !tbaa !2428
  %6250 = icmp ult i64 %6249, %6242
  %6251 = icmp ult i64 %6249, %6248
  %6252 = or i1 %6250, %6251
  %6253 = zext i1 %6252 to i8
  store i8 %6253, i8* %16, align 1, !tbaa !2432
  %6254 = trunc i64 %6249 to i32
  %6255 = and i32 %6254, 255
  %6256 = tail call i32 @llvm.ctpop.i32(i32 %6255) #9
  %6257 = trunc i32 %6256 to i8
  %6258 = and i8 %6257, 1
  %6259 = xor i8 %6258, 1
  store i8 %6259, i8* %23, align 1, !tbaa !2446
  %6260 = xor i64 %6242, %6249
  %6261 = lshr i64 %6260, 4
  %6262 = trunc i64 %6261 to i8
  %6263 = and i8 %6262, 1
  store i8 %6263, i8* %29, align 1, !tbaa !2447
  %6264 = icmp eq i64 %6249, 0
  %6265 = zext i1 %6264 to i8
  store i8 %6265, i8* %32, align 1, !tbaa !2448
  %6266 = lshr i64 %6249, 63
  %6267 = trunc i64 %6266 to i8
  store i8 %6267, i8* %35, align 1, !tbaa !2449
  %6268 = lshr i64 %6242, 63
  %6269 = lshr i64 %6247, 57
  %6270 = and i64 %6269, 1
  %6271 = xor i64 %6266, %6268
  %6272 = xor i64 %6266, %6270
  %6273 = add nuw nsw i64 %6271, %6272
  %6274 = icmp eq i64 %6273, 2
  %6275 = zext i1 %6274 to i8
  store i8 %6275, i8* %41, align 1, !tbaa !2450
  %6276 = add i64 %.pre222, -4
  %6277 = add i64 %4779, 22
  store i64 %6277, i64* %PC, align 8
  %6278 = inttoptr i64 %6276 to i32*
  %6279 = load i32, i32* %6278, align 4
  %6280 = sext i32 %6279 to i64
  store i64 %6280, i64* %RCX, align 8, !tbaa !2428
  %6281 = shl nsw i64 %6280, 2
  %6282 = add i64 %6281, %6249
  %6283 = add i64 %4779, 26
  store i64 %6283, i64* %PC, align 8
  %6284 = inttoptr i64 %6282 to i32*
  %6285 = load i32, i32* %6284, align 4
  %6286 = sext i32 %6285 to i64
  store i64 %6286, i64* %RAX, align 8, !tbaa !2428
  %6287 = shl nsw i64 %6286, 2
  %6288 = add i64 %6287, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %6289 = add i64 %4779, 33
  store i64 %6289, i64* %PC, align 8
  %6290 = inttoptr i64 %6288 to i32*
  %6291 = load i32, i32* %6290, align 4
  %6292 = zext i32 %6291 to i64
  store i64 %6292, i64* %RDX, align 8, !tbaa !2428
  %6293 = add i64 %4779, 37
  store i64 %6293, i64* %PC, align 8
  %6294 = load i32, i32* %6278, align 4
  %6295 = sext i32 %6294 to i64
  store i64 %6295, i64* %RAX, align 8, !tbaa !2428
  %6296 = shl nsw i64 %6295, 2
  %6297 = add i64 %.pre222, -1616
  %6298 = add i64 %6297, %6296
  %6299 = add i64 %4779, 44
  store i64 %6299, i64* %PC, align 8
  %6300 = inttoptr i64 %6298 to i32*
  store i32 %6291, i32* %6300, align 4
  %6301 = load i64, i64* %PC, align 8
  %6302 = add i64 %6301, 20
  store i64 %6302, i64* %PC, align 8, !tbaa !2428
  br label %block_401367

block_401517:                                     ; preds = %block_401503
  %6303 = add i64 %4681, 4
  store i64 %6303, i64* %PC, align 8
  %6304 = load i32, i32* %4641, align 4
  %6305 = sext i32 %6304 to i64
  store i64 %6305, i64* %RAX, align 8, !tbaa !2428
  %6306 = shl nsw i64 %6305, 2
  %6307 = add i64 %4638, -1616
  %6308 = add i64 %6307, %6306
  %6309 = add i64 %4681, 12
  store i64 %6309, i64* %PC, align 8
  %6310 = inttoptr i64 %6308 to i32*
  %6311 = load i32, i32* %6310, align 4
  %6312 = add i32 %6311, 1
  %6313 = icmp ne i32 %6311, -1
  %6314 = zext i1 %6313 to i8
  store i8 %6314, i8* %16, align 1, !tbaa !2432
  %6315 = and i32 %6312, 255
  %6316 = tail call i32 @llvm.ctpop.i32(i32 %6315) #9
  %6317 = trunc i32 %6316 to i8
  %6318 = and i8 %6317, 1
  %6319 = xor i8 %6318, 1
  store i8 %6319, i8* %23, align 1, !tbaa !2446
  %6320 = xor i32 %6311, 16
  %6321 = xor i32 %6320, %6312
  %6322 = lshr i32 %6321, 4
  %6323 = trunc i32 %6322 to i8
  %6324 = and i8 %6323, 1
  store i8 %6324, i8* %29, align 1, !tbaa !2447
  %6325 = icmp eq i32 %6312, 0
  %6326 = zext i1 %6325 to i8
  store i8 %6326, i8* %32, align 1, !tbaa !2448
  %6327 = lshr i32 %6312, 31
  %6328 = trunc i32 %6327 to i8
  store i8 %6328, i8* %35, align 1, !tbaa !2449
  %6329 = lshr i32 %6311, 31
  %6330 = xor i32 %6329, 1
  %6331 = xor i32 %6327, %6329
  %6332 = add nuw nsw i32 %6331, %6330
  %6333 = icmp eq i32 %6332, 2
  %6334 = zext i1 %6333 to i8
  store i8 %6334, i8* %41, align 1, !tbaa !2450
  %.v302 = select i1 %6325, i64 104, i64 18
  %6335 = add i64 %4681, %.v302
  store i64 %6335, i64* %PC, align 8, !tbaa !2428
  br i1 %6325, label %block_40157f, label %block_401529

block_400a00:                                     ; preds = %block_4009ee
  %6336 = add i64 %1596, -1496
  %6337 = add i64 %631, 10
  store i64 %6337, i64* %PC, align 8
  %6338 = inttoptr i64 %6336 to i32*
  store i32 1, i32* %6338, align 4
  %.pre174 = load i64, i64* %RBP, align 8
  %.pre175 = load i64, i64* %PC, align 8
  br label %block_400a0a
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400510_rsdec_204(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400510:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %17 = add i64 %6, -16
  %18 = load i64, i64* %RDI, align 8
  %19 = add i64 %9, 11
  store i64 %19, i64* %PC, align 8
  %20 = inttoptr i64 %17 to i64*
  store i64 %18, i64* %20, align 8
  %21 = load i64, i64* %RBP, align 8
  %22 = add i64 %21, -16
  %23 = load i64, i64* %RSI, align 8
  %24 = load i64, i64* %PC, align 8
  %25 = add i64 %24, 4
  store i64 %25, i64* %PC, align 8
  %26 = inttoptr i64 %22 to i64*
  store i64 %23, i64* %26, align 8
  %27 = load i64, i64* %PC, align 8
  %28 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 16) to i32*), align 16
  store i8 0, i8* %11, align 1, !tbaa !2432
  %29 = and i32 %28, 255
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29) #9
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  store i8 %33, i8* %12, align 1, !tbaa !2446
  store i8 0, i8* %13, align 1, !tbaa !2447
  %34 = icmp eq i32 %28, 0
  %35 = zext i1 %34 to i8
  store i8 %35, i8* %14, align 1, !tbaa !2448
  %36 = lshr i32 %28, 31
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %15, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  %.v = select i1 %34, i64 14, i64 35
  %38 = add i64 %27, %.v
  store i64 %38, i64* %PC, align 8, !tbaa !2428
  br i1 %34, label %block_40052e, label %block_400543

block_4005b4:                                     ; preds = %block_400588
  %39 = add i64 %463, 7
  store i64 %39, i64* %PC, align 8
  store i32 0, i32* %437, align 4
  %.pre21 = load i64, i64* %PC, align 8
  br label %block_4005bb

block_4005f9:                                     ; preds = %block_400606, %block_4005f2
  %40 = phi i64 [ %596, %block_400606 ], [ %.pre22, %block_4005f2 ]
  %41 = load i64, i64* %RBP, align 8
  %42 = add i64 %41, -20
  %43 = add i64 %40, 7
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %42 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = add i32 %45, -255
  %47 = icmp ult i32 %45, 255
  %48 = zext i1 %47 to i8
  store i8 %48, i8* %11, align 1, !tbaa !2432
  %49 = and i32 %46, 255
  %50 = tail call i32 @llvm.ctpop.i32(i32 %49) #9
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 1
  %53 = xor i8 %52, 1
  store i8 %53, i8* %12, align 1, !tbaa !2446
  %54 = xor i32 %45, 16
  %55 = xor i32 %54, %46
  %56 = lshr i32 %55, 4
  %57 = trunc i32 %56 to i8
  %58 = and i8 %57, 1
  store i8 %58, i8* %13, align 1, !tbaa !2447
  %59 = icmp eq i32 %46, 0
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %14, align 1, !tbaa !2448
  %61 = lshr i32 %46, 31
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %15, align 1, !tbaa !2449
  %63 = lshr i32 %45, 31
  %64 = xor i32 %61, %63
  %65 = add nuw nsw i32 %64, %63
  %66 = icmp eq i32 %65, 2
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %16, align 1, !tbaa !2450
  %68 = icmp ne i8 %62, 0
  %69 = xor i1 %68, %66
  %.v27 = select i1 %69, i64 13, i64 57
  %70 = add i64 %40, %.v27
  store i64 %70, i64* %PC, align 8, !tbaa !2428
  br i1 %69, label %block_400606, label %block_400632

block_400632:                                     ; preds = %block_4005f9
  %71 = add i64 %70, 766
  %72 = add i64 %70, 5
  %73 = load i64, i64* %RSP, align 8, !tbaa !2428
  %74 = add i64 %73, -8
  %75 = inttoptr i64 %74 to i64*
  store i64 %72, i64* %75, align 8
  store i64 %74, i64* %RSP, align 8, !tbaa !2428
  store i64 %71, i64* %PC, align 8, !tbaa !2428
  %76 = tail call %struct.Memory* @sub_400930_decode_rs(%struct.State* nonnull %0, i64 %71, %struct.Memory* %MEMORY.5)
  %77 = load i64, i64* %RBP, align 8
  %78 = add i64 %77, -20
  %79 = load i64, i64* %PC, align 8
  %80 = add i64 %79, 7
  store i64 %80, i64* %PC, align 8
  %81 = inttoptr i64 %78 to i32*
  store i32 0, i32* %81, align 4
  %.pre23 = load i64, i64* %PC, align 8
  br label %block_40063e

block_40063e:                                     ; preds = %block_40064b, %block_400632
  %82 = phi i64 [ %401, %block_40064b ], [ %.pre23, %block_400632 ]
  %83 = load i64, i64* %RBP, align 8
  %84 = add i64 %83, -20
  %85 = add i64 %82, 7
  store i64 %85, i64* %PC, align 8
  %86 = inttoptr i64 %84 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = add i32 %87, -188
  %89 = icmp ult i32 %87, 188
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %11, align 1, !tbaa !2432
  %91 = and i32 %88, 255
  %92 = tail call i32 @llvm.ctpop.i32(i32 %91) #9
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  %95 = xor i8 %94, 1
  store i8 %95, i8* %12, align 1, !tbaa !2446
  %96 = xor i32 %87, 16
  %97 = xor i32 %96, %88
  %98 = lshr i32 %97, 4
  %99 = trunc i32 %98 to i8
  %100 = and i8 %99, 1
  store i8 %100, i8* %13, align 1, !tbaa !2447
  %101 = icmp eq i32 %88, 0
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %14, align 1, !tbaa !2448
  %103 = lshr i32 %88, 31
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %15, align 1, !tbaa !2449
  %105 = lshr i32 %87, 31
  %106 = xor i32 %103, %105
  %107 = add nuw nsw i32 %106, %105
  %108 = icmp eq i32 %107, 2
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %16, align 1, !tbaa !2450
  %110 = icmp ne i8 %104, 0
  %111 = xor i1 %110, %108
  %.v28 = select i1 %111, i64 13, i64 56
  %112 = add i64 %82, %.v28
  store i64 %112, i64* %PC, align 8, !tbaa !2428
  br i1 %111, label %block_40064b, label %block_400676

block_4005f2:                                     ; preds = %block_4005bb
  %113 = add i64 %144, 7
  store i64 %113, i64* %PC, align 8
  store i32 0, i32* %118, align 4
  %.pre22 = load i64, i64* %PC, align 8
  br label %block_4005f9

block_4005bb:                                     ; preds = %block_4005c8, %block_4005b4
  %114 = phi i64 [ %537, %block_4005c8 ], [ %.pre21, %block_4005b4 ]
  %115 = load i64, i64* %RBP, align 8
  %116 = add i64 %115, -20
  %117 = add i64 %114, 7
  store i64 %117, i64* %PC, align 8
  %118 = inttoptr i64 %116 to i32*
  %119 = load i32, i32* %118, align 4
  %120 = add i32 %119, -188
  %121 = icmp ult i32 %119, 188
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %11, align 1, !tbaa !2432
  %123 = and i32 %120, 255
  %124 = tail call i32 @llvm.ctpop.i32(i32 %123) #9
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  %127 = xor i8 %126, 1
  store i8 %127, i8* %12, align 1, !tbaa !2446
  %128 = xor i32 %119, 16
  %129 = xor i32 %128, %120
  %130 = lshr i32 %129, 4
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  store i8 %132, i8* %13, align 1, !tbaa !2447
  %133 = icmp eq i32 %120, 0
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %14, align 1, !tbaa !2448
  %135 = lshr i32 %120, 31
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %15, align 1, !tbaa !2449
  %137 = lshr i32 %119, 31
  %138 = xor i32 %135, %137
  %139 = add nuw nsw i32 %138, %137
  %140 = icmp eq i32 %139, 2
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %16, align 1, !tbaa !2450
  %142 = icmp ne i8 %136, 0
  %143 = xor i1 %142, %140
  %.v26 = select i1 %143, i64 13, i64 55
  %144 = add i64 %114, %.v26
  store i64 %144, i64* %PC, align 8, !tbaa !2428
  br i1 %143, label %block_4005c8, label %block_4005f2

block_400676:                                     ; preds = %block_40063e
  %145 = load i64, i64* %RSP, align 8
  %146 = add i64 %145, 32
  store i64 %146, i64* %RSP, align 8, !tbaa !2428
  %147 = icmp ugt i64 %145, -33
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %11, align 1, !tbaa !2432
  %149 = trunc i64 %146 to i32
  %150 = and i32 %149, 255
  %151 = tail call i32 @llvm.ctpop.i32(i32 %150) #9
  %152 = trunc i32 %151 to i8
  %153 = and i8 %152, 1
  %154 = xor i8 %153, 1
  store i8 %154, i8* %12, align 1, !tbaa !2446
  %155 = xor i64 %146, %145
  %156 = lshr i64 %155, 4
  %157 = trunc i64 %156 to i8
  %158 = and i8 %157, 1
  store i8 %158, i8* %13, align 1, !tbaa !2447
  %159 = icmp eq i64 %146, 0
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %14, align 1, !tbaa !2448
  %161 = lshr i64 %146, 63
  %162 = trunc i64 %161 to i8
  store i8 %162, i8* %15, align 1, !tbaa !2449
  %163 = lshr i64 %145, 63
  %164 = xor i64 %161, %163
  %165 = add nuw nsw i64 %164, %161
  %166 = icmp eq i64 %165, 2
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %16, align 1, !tbaa !2450
  %168 = add i64 %112, 5
  store i64 %168, i64* %PC, align 8
  %169 = add i64 %145, 40
  %170 = inttoptr i64 %146 to i64*
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %RBP, align 8, !tbaa !2428
  store i64 %169, i64* %RSP, align 8, !tbaa !2428
  %172 = add i64 %112, 6
  store i64 %172, i64* %PC, align 8
  %173 = inttoptr i64 %169 to i64*
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %PC, align 8, !tbaa !2428
  %175 = add i64 %145, 48
  store i64 %175, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %76

block_400592:                                     ; preds = %block_400588
  %176 = add i64 %463, 3
  store i64 %176, i64* %PC, align 8
  %177 = load i32, i32* %437, align 4
  %178 = add i32 %177, 16
  %179 = zext i32 %178 to i64
  store i64 %179, i64* %RAX, align 8, !tbaa !2428
  %180 = icmp ugt i32 %177, -17
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %11, align 1, !tbaa !2432
  %182 = and i32 %178, 255
  %183 = tail call i32 @llvm.ctpop.i32(i32 %182) #9
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  %186 = xor i8 %185, 1
  store i8 %186, i8* %12, align 1, !tbaa !2446
  %187 = xor i32 %177, 16
  %188 = xor i32 %187, %178
  %189 = lshr i32 %188, 4
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  store i8 %191, i8* %13, align 1, !tbaa !2447
  %192 = icmp eq i32 %178, 0
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %14, align 1, !tbaa !2448
  %194 = lshr i32 %178, 31
  %195 = trunc i32 %194 to i8
  store i8 %195, i8* %15, align 1, !tbaa !2449
  %196 = lshr i32 %177, 31
  %197 = xor i32 %194, %196
  %198 = add nuw nsw i32 %197, %194
  %199 = icmp eq i32 %198, 2
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %16, align 1, !tbaa !2450
  %201 = sext i32 %178 to i64
  store i64 %201, i64* %RCX, align 8, !tbaa !2428
  %202 = shl nsw i64 %201, 2
  %203 = add i64 %202, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %204 = add i64 %463, 20
  store i64 %204, i64* %PC, align 8
  %205 = inttoptr i64 %203 to i32*
  store i32 0, i32* %205, align 4
  %206 = load i64, i64* %RBP, align 8
  %207 = add i64 %206, -20
  %208 = load i64, i64* %PC, align 8
  %209 = add i64 %208, 3
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %207 to i32*
  %211 = load i32, i32* %210, align 4
  %212 = add i32 %211, 1
  %213 = zext i32 %212 to i64
  store i64 %213, i64* %RAX, align 8, !tbaa !2428
  %214 = icmp eq i32 %211, -1
  %215 = icmp eq i32 %212, 0
  %216 = or i1 %214, %215
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %11, align 1, !tbaa !2432
  %218 = and i32 %212, 255
  %219 = tail call i32 @llvm.ctpop.i32(i32 %218) #9
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  %222 = xor i8 %221, 1
  store i8 %222, i8* %12, align 1, !tbaa !2446
  %223 = xor i32 %212, %211
  %224 = lshr i32 %223, 4
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  store i8 %226, i8* %13, align 1, !tbaa !2447
  %227 = zext i1 %215 to i8
  store i8 %227, i8* %14, align 1, !tbaa !2448
  %228 = lshr i32 %212, 31
  %229 = trunc i32 %228 to i8
  store i8 %229, i8* %15, align 1, !tbaa !2449
  %230 = lshr i32 %211, 31
  %231 = xor i32 %228, %230
  %232 = add nuw nsw i32 %231, %228
  %233 = icmp eq i32 %232, 2
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %16, align 1, !tbaa !2450
  %235 = add i64 %208, 9
  store i64 %235, i64* %PC, align 8
  store i32 %212, i32* %210, align 4
  %236 = load i64, i64* %PC, align 8
  %237 = add i64 %236, -39
  store i64 %237, i64* %PC, align 8, !tbaa !2428
  br label %block_400588

block_400554:                                     ; preds = %block_40054a
  %238 = add i64 %403, -16
  %239 = add i64 %432, 4
  store i64 %239, i64* %PC, align 8
  %240 = inttoptr i64 %238 to i64*
  %241 = load i64, i64* %240, align 8
  store i64 %241, i64* %RAX, align 8, !tbaa !2428
  %242 = add i64 %432, 7
  store i64 %242, i64* %PC, align 8
  %243 = load i32, i32* %406, align 4
  %244 = add i32 %243, 188
  %245 = zext i32 %244 to i64
  store i64 %245, i64* %RCX, align 8, !tbaa !2428
  %246 = icmp ugt i32 %243, -189
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %11, align 1, !tbaa !2432
  %248 = and i32 %244, 255
  %249 = tail call i32 @llvm.ctpop.i32(i32 %248) #9
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  %252 = xor i8 %251, 1
  store i8 %252, i8* %12, align 1, !tbaa !2446
  %253 = xor i32 %243, 16
  %254 = xor i32 %253, %244
  %255 = lshr i32 %254, 4
  %256 = trunc i32 %255 to i8
  %257 = and i8 %256, 1
  store i8 %257, i8* %13, align 1, !tbaa !2447
  %258 = icmp eq i32 %244, 0
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %14, align 1, !tbaa !2448
  %260 = lshr i32 %244, 31
  %261 = trunc i32 %260 to i8
  store i8 %261, i8* %15, align 1, !tbaa !2449
  %262 = lshr i32 %243, 31
  %263 = xor i32 %260, %262
  %264 = add nuw nsw i32 %263, %260
  %265 = icmp eq i32 %264, 2
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %16, align 1, !tbaa !2450
  %267 = sext i32 %244 to i64
  store i64 %267, i64* %RDX, align 8, !tbaa !2428
  %268 = add i64 %241, %267
  %269 = add i64 %432, 20
  store i64 %269, i64* %PC, align 8
  %270 = inttoptr i64 %268 to i8*
  %271 = load i8, i8* %270, align 1
  %272 = zext i8 %271 to i64
  store i64 %272, i64* %RCX, align 8, !tbaa !2428
  %273 = add i64 %432, 24
  store i64 %273, i64* %PC, align 8
  %274 = load i32, i32* %406, align 4
  %275 = sext i32 %274 to i64
  store i64 %275, i64* %RAX, align 8, !tbaa !2428
  %276 = shl nsw i64 %275, 2
  %277 = add i64 %276, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %278 = zext i8 %271 to i32
  %279 = add i64 %432, 31
  store i64 %279, i64* %PC, align 8
  %280 = inttoptr i64 %277 to i32*
  store i32 %278, i32* %280, align 4
  %281 = load i64, i64* %RBP, align 8
  %282 = add i64 %281, -20
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
  store i8 %292, i8* %11, align 1, !tbaa !2432
  %293 = and i32 %287, 255
  %294 = tail call i32 @llvm.ctpop.i32(i32 %293) #9
  %295 = trunc i32 %294 to i8
  %296 = and i8 %295, 1
  %297 = xor i8 %296, 1
  store i8 %297, i8* %12, align 1, !tbaa !2446
  %298 = xor i32 %287, %286
  %299 = lshr i32 %298, 4
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  store i8 %301, i8* %13, align 1, !tbaa !2447
  %302 = zext i1 %290 to i8
  store i8 %302, i8* %14, align 1, !tbaa !2448
  %303 = lshr i32 %287, 31
  %304 = trunc i32 %303 to i8
  store i8 %304, i8* %15, align 1, !tbaa !2449
  %305 = lshr i32 %286, 31
  %306 = xor i32 %303, %305
  %307 = add nuw nsw i32 %306, %303
  %308 = icmp eq i32 %307, 2
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %16, align 1, !tbaa !2450
  %310 = add i64 %283, 9
  store i64 %310, i64* %PC, align 8
  store i32 %287, i32* %285, align 4
  %311 = load i64, i64* %PC, align 8
  %312 = add i64 %311, -50
  store i64 %312, i64* %PC, align 8, !tbaa !2428
  br label %block_40054a

block_40052e:                                     ; preds = %block_400510
  %313 = add i64 %38, 338
  %314 = add i64 %38, 5
  %315 = load i64, i64* %RSP, align 8, !tbaa !2428
  %316 = add i64 %315, -8
  %317 = inttoptr i64 %316 to i64*
  store i64 %314, i64* %317, align 8
  store i64 %316, i64* %RSP, align 8, !tbaa !2428
  store i64 %313, i64* %PC, align 8, !tbaa !2428
  %318 = tail call %struct.Memory* @sub_400680_generate_gf(%struct.State* nonnull %0, i64 %313, %struct.Memory* %2)
  %319 = load i64, i64* %PC, align 8
  %320 = add i64 %319, 669
  %321 = add i64 %319, 5
  %322 = load i64, i64* %RSP, align 8, !tbaa !2428
  %323 = add i64 %322, -8
  %324 = inttoptr i64 %323 to i64*
  store i64 %321, i64* %324, align 8
  store i64 %323, i64* %RSP, align 8, !tbaa !2428
  store i64 %320, i64* %PC, align 8, !tbaa !2428
  %325 = tail call %struct.Memory* @sub_4007d0_gen_poly(%struct.State* nonnull %0, i64 %320, %struct.Memory* %318)
  %326 = load i64, i64* %PC, align 8
  %327 = add i64 %326, 11
  store i64 %327, i64* %PC, align 8
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 16) to i32*), align 16
  br label %block_400543

block_40064b:                                     ; preds = %block_40063e
  %328 = add i64 %112, 3
  store i64 %328, i64* %PC, align 8
  %329 = load i32, i32* %86, align 4
  %330 = add i32 %329, 67
  %331 = zext i32 %330 to i64
  store i64 %331, i64* %RAX, align 8, !tbaa !2428
  %332 = icmp ugt i32 %329, -68
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %11, align 1, !tbaa !2432
  %334 = and i32 %330, 255
  %335 = tail call i32 @llvm.ctpop.i32(i32 %334) #9
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  %338 = xor i8 %337, 1
  store i8 %338, i8* %12, align 1, !tbaa !2446
  %339 = xor i32 %330, %329
  %340 = lshr i32 %339, 4
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  store i8 %342, i8* %13, align 1, !tbaa !2447
  %343 = icmp eq i32 %330, 0
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %14, align 1, !tbaa !2448
  %345 = lshr i32 %330, 31
  %346 = trunc i32 %345 to i8
  store i8 %346, i8* %15, align 1, !tbaa !2449
  %347 = lshr i32 %329, 31
  %348 = xor i32 %345, %347
  %349 = add nuw nsw i32 %348, %345
  %350 = icmp eq i32 %349, 2
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %16, align 1, !tbaa !2450
  %352 = sext i32 %330 to i64
  store i64 %352, i64* %RCX, align 8, !tbaa !2428
  %353 = shl nsw i64 %352, 2
  %354 = add i64 %353, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %355 = add i64 %112, 16
  store i64 %355, i64* %PC, align 8
  %356 = inttoptr i64 %354 to i32*
  %357 = load i32, i32* %356, align 4
  %358 = zext i32 %357 to i64
  store i64 %358, i64* %RAX, align 8, !tbaa !2428
  %359 = trunc i32 %357 to i8
  store i8 %359, i8* %DL, align 1, !tbaa !2451
  %360 = add i64 %83, -8
  %361 = add i64 %112, 22
  store i64 %361, i64* %PC, align 8
  %362 = inttoptr i64 %360 to i64*
  %363 = load i64, i64* %362, align 8
  store i64 %363, i64* %RCX, align 8, !tbaa !2428
  %364 = add i64 %112, 26
  store i64 %364, i64* %PC, align 8
  %365 = load i32, i32* %86, align 4
  %366 = sext i32 %365 to i64
  store i64 %366, i64* %RSI, align 8, !tbaa !2428
  %367 = add i64 %363, %366
  %368 = add i64 %112, 29
  store i64 %368, i64* %PC, align 8
  %369 = inttoptr i64 %367 to i8*
  store i8 %359, i8* %369, align 1
  %370 = load i64, i64* %RBP, align 8
  %371 = add i64 %370, -20
  %372 = load i64, i64* %PC, align 8
  %373 = add i64 %372, 3
  store i64 %373, i64* %PC, align 8
  %374 = inttoptr i64 %371 to i32*
  %375 = load i32, i32* %374, align 4
  %376 = add i32 %375, 1
  %377 = zext i32 %376 to i64
  store i64 %377, i64* %RAX, align 8, !tbaa !2428
  %378 = icmp eq i32 %375, -1
  %379 = icmp eq i32 %376, 0
  %380 = or i1 %378, %379
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %11, align 1, !tbaa !2432
  %382 = and i32 %376, 255
  %383 = tail call i32 @llvm.ctpop.i32(i32 %382) #9
  %384 = trunc i32 %383 to i8
  %385 = and i8 %384, 1
  %386 = xor i8 %385, 1
  store i8 %386, i8* %12, align 1, !tbaa !2446
  %387 = xor i32 %376, %375
  %388 = lshr i32 %387, 4
  %389 = trunc i32 %388 to i8
  %390 = and i8 %389, 1
  store i8 %390, i8* %13, align 1, !tbaa !2447
  %391 = zext i1 %379 to i8
  store i8 %391, i8* %14, align 1, !tbaa !2448
  %392 = lshr i32 %376, 31
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %15, align 1, !tbaa !2449
  %394 = lshr i32 %375, 31
  %395 = xor i32 %392, %394
  %396 = add nuw nsw i32 %395, %392
  %397 = icmp eq i32 %396, 2
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %16, align 1, !tbaa !2450
  %399 = add i64 %372, 9
  store i64 %399, i64* %PC, align 8
  store i32 %376, i32* %374, align 4
  %400 = load i64, i64* %PC, align 8
  %401 = add i64 %400, -51
  store i64 %401, i64* %PC, align 8, !tbaa !2428
  br label %block_40063e

block_40054a:                                     ; preds = %block_400543, %block_400554
  %402 = phi i64 [ %.pre, %block_400543 ], [ %312, %block_400554 ]
  %403 = load i64, i64* %RBP, align 8
  %404 = add i64 %403, -20
  %405 = add i64 %402, 4
  store i64 %405, i64* %PC, align 8
  %406 = inttoptr i64 %404 to i32*
  %407 = load i32, i32* %406, align 4
  %408 = add i32 %407, -16
  %409 = icmp ult i32 %407, 16
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %11, align 1, !tbaa !2432
  %411 = and i32 %408, 255
  %412 = tail call i32 @llvm.ctpop.i32(i32 %411) #9
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  %415 = xor i8 %414, 1
  store i8 %415, i8* %12, align 1, !tbaa !2446
  %416 = xor i32 %407, 16
  %417 = xor i32 %416, %408
  %418 = lshr i32 %417, 4
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  store i8 %420, i8* %13, align 1, !tbaa !2447
  %421 = icmp eq i32 %408, 0
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %14, align 1, !tbaa !2448
  %423 = lshr i32 %408, 31
  %424 = trunc i32 %423 to i8
  store i8 %424, i8* %15, align 1, !tbaa !2449
  %425 = lshr i32 %407, 31
  %426 = xor i32 %423, %425
  %427 = add nuw nsw i32 %426, %425
  %428 = icmp eq i32 %427, 2
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %16, align 1, !tbaa !2450
  %430 = icmp ne i8 %424, 0
  %431 = xor i1 %430, %428
  %.v24 = select i1 %431, i64 10, i64 55
  %432 = add i64 %402, %.v24
  store i64 %432, i64* %PC, align 8, !tbaa !2428
  br i1 %431, label %block_400554, label %block_400581

block_400588:                                     ; preds = %block_400581, %block_400592
  %433 = phi i64 [ %.pre20, %block_400581 ], [ %237, %block_400592 ]
  %434 = load i64, i64* %RBP, align 8
  %435 = add i64 %434, -20
  %436 = add i64 %433, 4
  store i64 %436, i64* %PC, align 8
  %437 = inttoptr i64 %435 to i32*
  %438 = load i32, i32* %437, align 4
  %439 = add i32 %438, -51
  %440 = icmp ult i32 %438, 51
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %11, align 1, !tbaa !2432
  %442 = and i32 %439, 255
  %443 = tail call i32 @llvm.ctpop.i32(i32 %442) #9
  %444 = trunc i32 %443 to i8
  %445 = and i8 %444, 1
  %446 = xor i8 %445, 1
  store i8 %446, i8* %12, align 1, !tbaa !2446
  %447 = xor i32 %438, 16
  %448 = xor i32 %447, %439
  %449 = lshr i32 %448, 4
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  store i8 %451, i8* %13, align 1, !tbaa !2447
  %452 = icmp eq i32 %439, 0
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %14, align 1, !tbaa !2448
  %454 = lshr i32 %439, 31
  %455 = trunc i32 %454 to i8
  store i8 %455, i8* %15, align 1, !tbaa !2449
  %456 = lshr i32 %438, 31
  %457 = xor i32 %454, %456
  %458 = add nuw nsw i32 %457, %456
  %459 = icmp eq i32 %458, 2
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %16, align 1, !tbaa !2450
  %461 = icmp ne i8 %455, 0
  %462 = xor i1 %461, %459
  %.v25 = select i1 %462, i64 10, i64 44
  %463 = add i64 %433, %.v25
  store i64 %463, i64* %PC, align 8, !tbaa !2428
  br i1 %462, label %block_400592, label %block_4005b4

block_4005c8:                                     ; preds = %block_4005bb
  %464 = add i64 %115, -16
  %465 = add i64 %144, 4
  store i64 %465, i64* %PC, align 8
  %466 = inttoptr i64 %464 to i64*
  %467 = load i64, i64* %466, align 8
  store i64 %467, i64* %RAX, align 8, !tbaa !2428
  %468 = add i64 %144, 8
  store i64 %468, i64* %PC, align 8
  %469 = load i32, i32* %118, align 4
  %470 = sext i32 %469 to i64
  store i64 %470, i64* %RCX, align 8, !tbaa !2428
  %471 = add i64 %467, %470
  %472 = add i64 %144, 12
  store i64 %472, i64* %PC, align 8
  %473 = inttoptr i64 %471 to i8*
  %474 = load i8, i8* %473, align 1
  %475 = zext i8 %474 to i64
  store i64 %475, i64* %RDX, align 8, !tbaa !2428
  %476 = add i64 %144, 15
  store i64 %476, i64* %PC, align 8
  %477 = load i32, i32* %118, align 4
  %478 = add i32 %477, 67
  %479 = zext i32 %478 to i64
  store i64 %479, i64* %RSI, align 8, !tbaa !2428
  %480 = icmp ugt i32 %477, -68
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %11, align 1, !tbaa !2432
  %482 = and i32 %478, 255
  %483 = tail call i32 @llvm.ctpop.i32(i32 %482) #9
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  store i8 %486, i8* %12, align 1, !tbaa !2446
  %487 = xor i32 %478, %477
  %488 = lshr i32 %487, 4
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  store i8 %490, i8* %13, align 1, !tbaa !2447
  %491 = icmp eq i32 %478, 0
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %14, align 1, !tbaa !2448
  %493 = lshr i32 %478, 31
  %494 = trunc i32 %493 to i8
  store i8 %494, i8* %15, align 1, !tbaa !2449
  %495 = lshr i32 %477, 31
  %496 = xor i32 %493, %495
  %497 = add nuw nsw i32 %496, %493
  %498 = icmp eq i32 %497, 2
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %16, align 1, !tbaa !2450
  %500 = sext i32 %478 to i64
  store i64 %500, i64* %RAX, align 8, !tbaa !2428
  %501 = shl nsw i64 %500, 2
  %502 = add i64 %501, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %503 = zext i8 %474 to i32
  %504 = add i64 %144, 28
  store i64 %504, i64* %PC, align 8
  %505 = inttoptr i64 %502 to i32*
  store i32 %503, i32* %505, align 4
  %506 = load i64, i64* %RBP, align 8
  %507 = add i64 %506, -20
  %508 = load i64, i64* %PC, align 8
  %509 = add i64 %508, 3
  store i64 %509, i64* %PC, align 8
  %510 = inttoptr i64 %507 to i32*
  %511 = load i32, i32* %510, align 4
  %512 = add i32 %511, 1
  %513 = zext i32 %512 to i64
  store i64 %513, i64* %RAX, align 8, !tbaa !2428
  %514 = icmp eq i32 %511, -1
  %515 = icmp eq i32 %512, 0
  %516 = or i1 %514, %515
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %11, align 1, !tbaa !2432
  %518 = and i32 %512, 255
  %519 = tail call i32 @llvm.ctpop.i32(i32 %518) #9
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  %522 = xor i8 %521, 1
  store i8 %522, i8* %12, align 1, !tbaa !2446
  %523 = xor i32 %512, %511
  %524 = lshr i32 %523, 4
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  store i8 %526, i8* %13, align 1, !tbaa !2447
  %527 = zext i1 %515 to i8
  store i8 %527, i8* %14, align 1, !tbaa !2448
  %528 = lshr i32 %512, 31
  %529 = trunc i32 %528 to i8
  store i8 %529, i8* %15, align 1, !tbaa !2449
  %530 = lshr i32 %511, 31
  %531 = xor i32 %528, %530
  %532 = add nuw nsw i32 %531, %528
  %533 = icmp eq i32 %532, 2
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %16, align 1, !tbaa !2450
  %535 = add i64 %508, 9
  store i64 %535, i64* %PC, align 8
  store i32 %512, i32* %510, align 4
  %536 = load i64, i64* %PC, align 8
  %537 = add i64 %536, -50
  store i64 %537, i64* %PC, align 8, !tbaa !2428
  br label %block_4005bb

block_400543:                                     ; preds = %block_400510, %block_40052e
  %538 = phi i64 [ %38, %block_400510 ], [ %327, %block_40052e ]
  %MEMORY.5 = phi %struct.Memory* [ %2, %block_400510 ], [ %325, %block_40052e ]
  %539 = load i64, i64* %RBP, align 8
  %540 = add i64 %539, -20
  %541 = add i64 %538, 7
  store i64 %541, i64* %PC, align 8
  %542 = inttoptr i64 %540 to i32*
  store i32 0, i32* %542, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_40054a

block_400606:                                     ; preds = %block_4005f9
  %543 = add i64 %70, 4
  store i64 %543, i64* %PC, align 8
  %544 = load i32, i32* %44, align 4
  %545 = sext i32 %544 to i64
  store i64 %545, i64* %RAX, align 8, !tbaa !2428
  %546 = shl nsw i64 %545, 2
  %547 = add i64 %546, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %548 = add i64 %70, 12
  store i64 %548, i64* %PC, align 8
  %549 = inttoptr i64 %547 to i32*
  %550 = load i32, i32* %549, align 4
  %551 = sext i32 %550 to i64
  store i64 %551, i64* %RAX, align 8, !tbaa !2428
  %552 = shl nsw i64 %551, 2
  %553 = add i64 %552, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %554 = add i64 %70, 19
  store i64 %554, i64* %PC, align 8
  %555 = inttoptr i64 %553 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = zext i32 %556 to i64
  store i64 %557, i64* %RCX, align 8, !tbaa !2428
  %558 = add i64 %70, 23
  store i64 %558, i64* %PC, align 8
  %559 = load i32, i32* %44, align 4
  %560 = sext i32 %559 to i64
  store i64 %560, i64* %RAX, align 8, !tbaa !2428
  %561 = shl nsw i64 %560, 2
  %562 = add i64 %561, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %563 = add i64 %70, 30
  store i64 %563, i64* %PC, align 8
  %564 = inttoptr i64 %562 to i32*
  store i32 %556, i32* %564, align 4
  %565 = load i64, i64* %RBP, align 8
  %566 = add i64 %565, -20
  %567 = load i64, i64* %PC, align 8
  %568 = add i64 %567, 3
  store i64 %568, i64* %PC, align 8
  %569 = inttoptr i64 %566 to i32*
  %570 = load i32, i32* %569, align 4
  %571 = add i32 %570, 1
  %572 = zext i32 %571 to i64
  store i64 %572, i64* %RAX, align 8, !tbaa !2428
  %573 = icmp eq i32 %570, -1
  %574 = icmp eq i32 %571, 0
  %575 = or i1 %573, %574
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %11, align 1, !tbaa !2432
  %577 = and i32 %571, 255
  %578 = tail call i32 @llvm.ctpop.i32(i32 %577) #9
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  %581 = xor i8 %580, 1
  store i8 %581, i8* %12, align 1, !tbaa !2446
  %582 = xor i32 %571, %570
  %583 = lshr i32 %582, 4
  %584 = trunc i32 %583 to i8
  %585 = and i8 %584, 1
  store i8 %585, i8* %13, align 1, !tbaa !2447
  %586 = zext i1 %574 to i8
  store i8 %586, i8* %14, align 1, !tbaa !2448
  %587 = lshr i32 %571, 31
  %588 = trunc i32 %587 to i8
  store i8 %588, i8* %15, align 1, !tbaa !2449
  %589 = lshr i32 %570, 31
  %590 = xor i32 %587, %589
  %591 = add nuw nsw i32 %590, %587
  %592 = icmp eq i32 %591, 2
  %593 = zext i1 %592 to i8
  store i8 %593, i8* %16, align 1, !tbaa !2450
  %594 = add i64 %567, 9
  store i64 %594, i64* %PC, align 8
  store i32 %571, i32* %569, align 4
  %595 = load i64, i64* %PC, align 8
  %596 = add i64 %595, -52
  store i64 %596, i64* %PC, align 8, !tbaa !2428
  br label %block_4005f9

block_400581:                                     ; preds = %block_40054a
  %597 = add i64 %432, 7
  store i64 %597, i64* %PC, align 8
  store i32 0, i32* %406, align 4
  %.pre20 = load i64, i64* %PC, align 8
  br label %block_400588
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401c60___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401c60:
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
  store i64 ptrtoint (%seg_602df0__init_array_type* @seg_602df0__init_array to i64), i64* %R12, align 8, !tbaa !2428
  %27 = load i64, i64* %RBP, align 8
  %28 = add i64 %26, 8
  store i64 %28, i64* %PC, align 8
  %29 = add i64 %7, -40
  %30 = inttoptr i64 %29 to i64*
  store i64 %27, i64* %30, align 8
  %31 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_602df0__init_array_type* @seg_602df0__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2428
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
  store i8 %51, i8* %43, align 1, !tbaa !2451
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #9
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  store i8 %58, i8* %44, align 1, !tbaa !2451
  store i8 0, i8* %45, align 1, !tbaa !2451
  %59 = icmp eq i64 %52, 0
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %46, align 1, !tbaa !2451
  %61 = lshr i64 %52, 63
  %62 = trunc i64 %61 to i8
  store i8 %62, i8* %47, align 1, !tbaa !2451
  store i8 0, i8* %48, align 1, !tbaa !2451
  %63 = add i64 %38, -6299
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_4003e0__init_proc(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
  %68 = load i64, i64* %RBP, align 8
  %69 = load i64, i64* %PC, align 8
  store i8 0, i8* %43, align 1, !tbaa !2432
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #9
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %44, align 1, !tbaa !2446
  %76 = icmp eq i64 %68, 0
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %46, align 1, !tbaa !2448
  %78 = lshr i64 %68, 63
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %.v = select i1 %76, i64 37, i64 5
  %80 = add i64 %69, %.v
  store i64 %80, i64* %PC, align 8, !tbaa !2428
  br i1 %76, label %block_401cb6, label %block_401c96

block_401cb6.loopexit:                            ; preds = %block_401ca0
  br label %block_401cb6

block_401cb6:                                     ; preds = %block_401cb6.loopexit, %block_401c60
  %81 = phi i64 [ %80, %block_401c60 ], [ %179, %block_401cb6.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_401c60 ], [ %149, %block_401cb6.loopexit ]
  %82 = load i64, i64* %RSP, align 8
  %83 = add i64 %82, 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  %84 = icmp ugt i64 %82, -9
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %43, align 1, !tbaa !2432
  %86 = trunc i64 %83 to i32
  %87 = and i32 %86, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #9
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %44, align 1, !tbaa !2446
  %92 = xor i64 %83, %82
  %93 = lshr i64 %92, 4
  %94 = trunc i64 %93 to i8
  %95 = and i8 %94, 1
  store i8 %95, i8* %45, align 1, !tbaa !2447
  %96 = icmp eq i64 %83, 0
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %46, align 1, !tbaa !2448
  %98 = lshr i64 %83, 63
  %99 = trunc i64 %98 to i8
  store i8 %99, i8* %47, align 1, !tbaa !2449
  %100 = lshr i64 %82, 63
  %101 = xor i64 %98, %100
  %102 = add nuw nsw i64 %101, %98
  %103 = icmp eq i64 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %48, align 1, !tbaa !2450
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

block_401c96:                                     ; preds = %block_401c60
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_401ca0

block_401ca0:                                     ; preds = %block_401ca0, %block_401c96
  %134 = phi i64 [ 0, %block_401c96 ], [ %152, %block_401ca0 ]
  %135 = phi i64 [ %133, %block_401c96 ], [ %179, %block_401ca0 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_401c96 ], [ %149, %block_401ca0 ]
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
  store i8 %157, i8* %43, align 1, !tbaa !2432
  %158 = trunc i64 %155 to i32
  %159 = and i32 %158, 255
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #9
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %44, align 1, !tbaa !2446
  %164 = xor i64 %152, %154
  %165 = xor i64 %164, %155
  %166 = lshr i64 %165, 4
  %167 = trunc i64 %166 to i8
  %168 = and i8 %167, 1
  store i8 %168, i8* %45, align 1, !tbaa !2447
  %169 = icmp eq i64 %155, 0
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %46, align 1, !tbaa !2448
  %171 = lshr i64 %155, 63
  %172 = trunc i64 %171 to i8
  store i8 %172, i8* %47, align 1, !tbaa !2449
  %173 = lshr i64 %154, 63
  %174 = xor i64 %153, %173
  %175 = xor i64 %171, %173
  %176 = add nuw nsw i64 %175, %174
  %177 = icmp eq i64 %176, 2
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %48, align 1, !tbaa !2450
  %.v2 = select i1 %169, i64 9, i64 -13
  %179 = add i64 %151, %.v2
  store i64 %179, i64* %PC, align 8, !tbaa !2428
  br i1 %169, label %block_401cb6.loopexit, label %block_401ca0
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4004d0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4004d0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* getelementptr inbounds (%seg_603060__bss_type, %seg_603060__bss_type* @seg_603060__bss, i64 0, i32 0, i64 0), align 16
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4, align 1, !tbaa !2432
  %5 = zext i8 %3 to i32
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #9
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  %9 = xor i8 %8, 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9, i8* %10, align 1, !tbaa !2446
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1, !tbaa !2447
  %12 = icmp eq i8 %3, 0
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %13, i8* %14, align 1, !tbaa !2448
  %15 = lshr i8 %3, 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %15, i8* %16, align 1, !tbaa !2449
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1, !tbaa !2450
  %.v = select i1 %12, i64 9, i64 32
  %18 = add i64 %.v, %1
  store i64 %18, i64* %PC, align 8, !tbaa !2428
  br i1 %12, label %block_4004d9, label %block_4004f0

block_4004f0:                                     ; preds = %block_4004d0
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

block_4004d9:                                     ; preds = %block_4004d0
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
  %36 = tail call %struct.Memory* @sub_400460_deregister_tm_clones(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
  %37 = load i64, i64* %PC, align 8
  store i8 1, i8* getelementptr inbounds (%seg_603060__bss_type, %seg_603060__bss_type* @seg_603060__bss, i64 0, i32 0, i64 0), align 16
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401cd4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_401cd4:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, -8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7 = xor i64 %4, %3
  %8 = lshr i64 %7, 4
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = lshr i64 %4, 63
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %15 = lshr i64 %3, 63
  %16 = xor i64 %13, %15
  %17 = add nuw nsw i64 %16, %15
  %18 = icmp eq i64 %17, 2
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i64 %3, i64* %RSP, align 8, !tbaa !2428
  %21 = icmp ult i64 %3, 8
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %5, align 1, !tbaa !2432
  %23 = trunc i64 %3 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #9
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %6, align 1, !tbaa !2446
  store i8 %10, i8* %11, align 1, !tbaa !2447
  %29 = icmp eq i64 %3, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %12, align 1, !tbaa !2448
  %31 = trunc i64 %15 to i8
  store i8 %31, i8* %14, align 1, !tbaa !2449
  store i8 %19, i8* %20, align 1, !tbaa !2450
  %32 = add i64 %1, 9
  store i64 %32, i64* %PC, align 8
  %33 = inttoptr i64 %3 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  %35 = add i64 %3, 8
  store i64 %35, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400420__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400420:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  store i64 0, i64* %RBP, align 8, !tbaa !2428
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3, align 1, !tbaa !2432
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %4, align 1, !tbaa !2446
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %5, align 1, !tbaa !2448
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6, align 1, !tbaa !2449
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7, align 1, !tbaa !2450
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8, align 1, !tbaa !2447
  %9 = load i64, i64* %RDX, align 8
  store i64 %9, i64* %R9, align 8, !tbaa !2428
  %10 = add i64 %1, 6
  store i64 %10, i64* %PC, align 8
  %11 = load i64, i64* %RSP, align 8, !tbaa !2428
  %12 = add i64 %11, 8
  %13 = inttoptr i64 %11 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %RSI, align 8, !tbaa !2428
  store i64 %12, i64* %RDX, align 8, !tbaa !2428
  %15 = and i64 %12, -16
  store i8 0, i8* %3, align 1, !tbaa !2432
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 240
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #9
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  store i8 %21, i8* %4, align 1, !tbaa !2446
  %22 = icmp eq i64 %15, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %5, align 1, !tbaa !2448
  %24 = lshr i64 %12, 63
  %25 = trunc i64 %24 to i8
  store i8 %25, i8* %6, align 1, !tbaa !2449
  store i8 0, i8* %7, align 1, !tbaa !2450
  store i8 0, i8* %8, align 1, !tbaa !2447
  %26 = load i64, i64* %RAX, align 8
  %27 = add i64 %1, 14
  store i64 %27, i64* %PC, align 8
  %28 = add i64 %15, -8
  %29 = inttoptr i64 %28 to i64*
  store i64 %26, i64* %29, align 8
  %30 = load i64, i64* %PC, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %PC, align 8
  %32 = add i64 %15, -16
  %33 = inttoptr i64 %32 to i64*
  store i64 %28, i64* %33, align 16
  %34 = load i64, i64* %PC, align 8
  store i64 ptrtoint (void ()* @callback_sub_401cd0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_401c60___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %35 = add i64 %34, 27
  %36 = add i64 %15, -24
  %37 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %37, align 8
  store i64 %36, i64* %RSP, align 8, !tbaa !2428
  %38 = load i64, i64* getelementptr inbounds (%seg_602ff0__got_type, %seg_602ff0__got_type* @seg_602ff0__got, i64 0, i32 0), align 8
  store i64 %38, i64* %PC, align 8, !tbaa !2428
  %39 = tail call fastcc %struct.Memory* @ext_6040d0___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %PC, align 8
  %42 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %41, %struct.Memory* %39)
  ret %struct.Memory* %42
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400680_generate_gf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400680:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
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
  %10 = add i64 %6, -16
  %11 = add i64 %9, 10
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %10 to i32*
  store i32 1, i32* %12, align 4
  %13 = load i64, i64* %PC, align 8
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2112) to i32*), align 16
  %14 = load i64, i64* %RBP, align 8
  %15 = add i64 %14, -4
  %16 = add i64 %13, 18
  store i64 %16, i64* %PC, align 8
  %17 = inttoptr i64 %15 to i32*
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %PC, align 8
  br label %block_40069d

block_40079b:                                     ; preds = %block_40077d, %block_40074e
  %24 = phi i64 [ %.pre15, %block_40077d ], [ %136, %block_40074e ]
  %25 = load i64, i64* %RBP, align 8
  %26 = add i64 %25, -4
  %27 = add i64 %24, 3
  store i64 %27, i64* %PC, align 8
  %28 = inttoptr i64 %26 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = zext i32 %29 to i64
  store i64 %30, i64* %RAX, align 8, !tbaa !2428
  %31 = add i64 %24, 7
  store i64 %31, i64* %PC, align 8
  %32 = load i32, i32* %28, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %RCX, align 8, !tbaa !2428
  %34 = shl nsw i64 %33, 2
  %35 = add i64 %34, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %36 = add i64 %24, 15
  store i64 %36, i64* %PC, align 8
  %37 = inttoptr i64 %35 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %RCX, align 8, !tbaa !2428
  %40 = shl nsw i64 %39, 2
  %41 = add i64 %40, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %42 = add i64 %24, 22
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %41 to i32*
  store i32 %29, i32* %43, align 4
  %44 = load i64, i64* %RBP, align 8
  %45 = add i64 %44, -4
  %46 = load i64, i64* %PC, align 8
  %47 = add i64 %46, 3
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %45 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = add i32 %49, 1
  %51 = zext i32 %50 to i64
  store i64 %51, i64* %RAX, align 8, !tbaa !2428
  %52 = icmp eq i32 %49, -1
  %53 = icmp eq i32 %50, 0
  %54 = or i1 %52, %53
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %18, align 1, !tbaa !2432
  %56 = and i32 %50, 255
  %57 = tail call i32 @llvm.ctpop.i32(i32 %56) #9
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  store i8 %60, i8* %19, align 1, !tbaa !2446
  %61 = xor i32 %50, %49
  %62 = lshr i32 %61, 4
  %63 = trunc i32 %62 to i8
  %64 = and i8 %63, 1
  store i8 %64, i8* %20, align 1, !tbaa !2447
  %65 = zext i1 %53 to i8
  store i8 %65, i8* %21, align 1, !tbaa !2448
  %66 = lshr i32 %50, 31
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %22, align 1, !tbaa !2449
  %68 = lshr i32 %49, 31
  %69 = xor i32 %66, %68
  %70 = add nuw nsw i32 %69, %66
  %71 = icmp eq i32 %70, 2
  %72 = zext i1 %71 to i8
  store i8 %72, i8* %23, align 1, !tbaa !2450
  %73 = add i64 %46, 9
  store i64 %73, i64* %PC, align 8
  store i32 %50, i32* %48, align 4
  %74 = load i64, i64* %PC, align 8
  %75 = add i64 %74, -146
  store i64 %75, i64* %PC, align 8, !tbaa !2428
  br label %block_400728

block_40074e:                                     ; preds = %block_400735
  %76 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2112) to i32*), align 16
  %77 = zext i32 %76 to i64
  store i64 %77, i64* %RAX, align 8, !tbaa !2428
  %78 = add i64 %314, 10
  store i64 %78, i64* %PC, align 8
  %79 = load i32, i32* %319, align 4
  %80 = add i32 %79, -1
  %81 = zext i32 %80 to i64
  store i64 %81, i64* %RCX, align 8, !tbaa !2428
  %82 = icmp eq i32 %79, 0
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %18, align 1, !tbaa !2432
  %84 = and i32 %80, 255
  %85 = tail call i32 @llvm.ctpop.i32(i32 %84) #9
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  %88 = xor i8 %87, 1
  store i8 %88, i8* %19, align 1, !tbaa !2446
  %89 = xor i32 %80, %79
  %90 = lshr i32 %89, 4
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  store i8 %92, i8* %20, align 1, !tbaa !2447
  %93 = icmp eq i32 %80, 0
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %21, align 1, !tbaa !2448
  %95 = lshr i32 %80, 31
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %22, align 1, !tbaa !2449
  %97 = lshr i32 %79, 31
  %98 = xor i32 %95, %97
  %99 = add nuw nsw i32 %98, %97
  %100 = icmp eq i32 %99, 2
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %23, align 1, !tbaa !2450
  %102 = sext i32 %80 to i64
  store i64 %102, i64* %RDX, align 8, !tbaa !2428
  %103 = shl nsw i64 %102, 2
  %104 = add i64 %103, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %105 = add i64 %314, 23
  store i64 %105, i64* %PC, align 8
  %106 = inttoptr i64 %104 to i32*
  %107 = load i32, i32* %106, align 4
  %108 = zext i32 %107 to i64
  store i64 %108, i64* %RCX, align 8, !tbaa !2428
  %109 = add i64 %314, 26
  store i64 %109, i64* %PC, align 8
  %110 = load i32, i32* %286, align 4
  %111 = xor i32 %110, %107
  %112 = shl i32 %111, 1
  %113 = zext i32 %112 to i64
  store i64 %113, i64* %RCX, align 8, !tbaa !2428
  %114 = xor i32 %112, %76
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  %116 = and i32 %114, 255
  %117 = tail call i32 @llvm.ctpop.i32(i32 %116) #9
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  %120 = xor i8 %119, 1
  store i8 %120, i8* %19, align 1, !tbaa !2446
  %121 = icmp eq i32 %114, 0
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %21, align 1, !tbaa !2448
  %123 = lshr i32 %114, 31
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %22, align 1, !tbaa !2449
  store i8 0, i8* %23, align 1, !tbaa !2450
  store i8 0, i8* %20, align 1, !tbaa !2447
  %125 = load i64, i64* %RBP, align 8
  %126 = add i64 %125, -4
  %127 = add i64 %314, 35
  store i64 %127, i64* %PC, align 8
  %128 = inttoptr i64 %126 to i32*
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  store i64 %130, i64* %RDX, align 8, !tbaa !2428
  %131 = shl nsw i64 %130, 2
  %132 = add i64 %131, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %133 = add i64 %314, 42
  store i64 %133, i64* %PC, align 8
  %134 = inttoptr i64 %132 to i32*
  store i32 %114, i32* %134, align 4
  %135 = load i64, i64* %PC, align 8
  %136 = add i64 %135, 35
  store i64 %136, i64* %PC, align 8, !tbaa !2428
  br label %block_40079b

block_40077d:                                     ; preds = %block_400735
  %137 = add i64 %314, 3
  store i64 %137, i64* %PC, align 8
  %138 = load i32, i32* %319, align 4
  %139 = add i32 %138, -1
  %140 = zext i32 %139 to i64
  store i64 %140, i64* %RAX, align 8, !tbaa !2428
  %141 = icmp eq i32 %138, 0
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %18, align 1, !tbaa !2432
  %143 = and i32 %139, 255
  %144 = tail call i32 @llvm.ctpop.i32(i32 %143) #9
  %145 = trunc i32 %144 to i8
  %146 = and i8 %145, 1
  %147 = xor i8 %146, 1
  store i8 %147, i8* %19, align 1, !tbaa !2446
  %148 = xor i32 %139, %138
  %149 = lshr i32 %148, 4
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  store i8 %151, i8* %20, align 1, !tbaa !2447
  %152 = icmp eq i32 %139, 0
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %21, align 1, !tbaa !2448
  %154 = lshr i32 %139, 31
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %22, align 1, !tbaa !2449
  %156 = lshr i32 %138, 31
  %157 = xor i32 %154, %156
  %158 = add nuw nsw i32 %157, %156
  %159 = icmp eq i32 %158, 2
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %23, align 1, !tbaa !2450
  %161 = sext i32 %139 to i64
  store i64 %161, i64* %RCX, align 8, !tbaa !2428
  %162 = shl nsw i64 %161, 2
  %163 = add i64 %162, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %164 = add i64 %314, 16
  store i64 %164, i64* %PC, align 8
  %165 = inttoptr i64 %163 to i32*
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 1
  %168 = icmp slt i32 %166, 0
  %169 = icmp slt i32 %167, 0
  %170 = xor i1 %168, %169
  %171 = zext i32 %167 to i64
  store i64 %171, i64* %RAX, align 8, !tbaa !2428
  %.lobit5 = lshr i32 %166, 31
  %172 = trunc i32 %.lobit5 to i8
  store i8 %172, i8* %18, align 1, !tbaa !2451
  %173 = and i32 %167, 254
  %174 = tail call i32 @llvm.ctpop.i32(i32 %173) #9
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  store i8 %177, i8* %19, align 1, !tbaa !2451
  store i8 0, i8* %20, align 1, !tbaa !2451
  %178 = icmp eq i32 %167, 0
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %21, align 1, !tbaa !2451
  %180 = lshr i32 %166, 30
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  store i8 %182, i8* %22, align 1, !tbaa !2451
  %183 = zext i1 %170 to i8
  store i8 %183, i8* %23, align 1, !tbaa !2451
  %184 = add i64 %314, 23
  store i64 %184, i64* %PC, align 8
  %185 = load i32, i32* %319, align 4
  %186 = sext i32 %185 to i64
  store i64 %186, i64* %RCX, align 8, !tbaa !2428
  %187 = shl nsw i64 %186, 2
  %188 = add i64 %187, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %189 = add i64 %314, 30
  store i64 %189, i64* %PC, align 8
  %190 = inttoptr i64 %188 to i32*
  store i32 %167, i32* %190, align 4
  %.pre15 = load i64, i64* %PC, align 8
  br label %block_40079b

block_4006ee:                                     ; preds = %block_4006a7.block_4006ee_crit_edge, %block_4006dd
  %.pre-phi18 = phi i32* [ %.pre17, %block_4006a7.block_4006ee_crit_edge ], [ %413, %block_4006dd ]
  %191 = phi i64 [ %481, %block_4006a7.block_4006ee_crit_edge ], [ %427, %block_4006dd ]
  %192 = add i64 %191, 3
  store i64 %192, i64* %PC, align 8
  %193 = load i32, i32* %.pre-phi18, align 4
  %194 = shl i32 %193, 1
  %195 = icmp slt i32 %193, 0
  %196 = icmp slt i32 %194, 0
  %197 = xor i1 %195, %196
  %198 = zext i32 %194 to i64
  store i64 %198, i64* %RAX, align 8, !tbaa !2428
  %.lobit = lshr i32 %193, 31
  %199 = trunc i32 %.lobit to i8
  store i8 %199, i8* %18, align 1, !tbaa !2451
  %200 = and i32 %194, 254
  %201 = tail call i32 @llvm.ctpop.i32(i32 %200) #9
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  %204 = xor i8 %203, 1
  store i8 %204, i8* %19, align 1, !tbaa !2451
  store i8 0, i8* %20, align 1, !tbaa !2451
  %205 = icmp eq i32 %194, 0
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %21, align 1, !tbaa !2451
  %207 = lshr i32 %193, 30
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  store i8 %209, i8* %22, align 1, !tbaa !2451
  %210 = zext i1 %197 to i8
  store i8 %210, i8* %23, align 1, !tbaa !2451
  %211 = add i64 %191, 9
  store i64 %211, i64* %PC, align 8
  store i32 %194, i32* %.pre-phi18, align 4
  %212 = load i64, i64* %RBP, align 8
  %213 = add i64 %212, -4
  %214 = load i64, i64* %PC, align 8
  %215 = add i64 %214, 3
  store i64 %215, i64* %PC, align 8
  %216 = inttoptr i64 %213 to i32*
  %217 = load i32, i32* %216, align 4
  %218 = add i32 %217, 1
  %219 = zext i32 %218 to i64
  store i64 %219, i64* %RAX, align 8, !tbaa !2428
  %220 = icmp eq i32 %217, -1
  %221 = icmp eq i32 %218, 0
  %222 = or i1 %220, %221
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %18, align 1, !tbaa !2432
  %224 = and i32 %218, 255
  %225 = tail call i32 @llvm.ctpop.i32(i32 %224) #9
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = xor i8 %227, 1
  store i8 %228, i8* %19, align 1, !tbaa !2446
  %229 = xor i32 %218, %217
  %230 = lshr i32 %229, 4
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  store i8 %232, i8* %20, align 1, !tbaa !2447
  %233 = zext i1 %221 to i8
  store i8 %233, i8* %21, align 1, !tbaa !2448
  %234 = lshr i32 %218, 31
  %235 = trunc i32 %234 to i8
  store i8 %235, i8* %22, align 1, !tbaa !2449
  %236 = lshr i32 %217, 31
  %237 = xor i32 %234, %236
  %238 = add nuw nsw i32 %237, %234
  %239 = icmp eq i32 %238, 2
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %23, align 1, !tbaa !2450
  %241 = add i64 %214, 9
  store i64 %241, i64* %PC, align 8
  store i32 %218, i32* %216, align 4
  %242 = load i64, i64* %PC, align 8
  %243 = add i64 %242, -99
  store i64 %243, i64* %PC, align 8, !tbaa !2428
  br label %block_40069d

block_4007bf:                                     ; preds = %block_400728
  store i32 -1, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056) to i32*), align 16
  %244 = add i64 %345, 12
  store i64 %244, i64* %PC, align 8
  %245 = load i64, i64* %5, align 8, !tbaa !2428
  %246 = add i64 %245, 8
  %247 = inttoptr i64 %245 to i64*
  %248 = load i64, i64* %247, align 8
  store i64 %248, i64* %RBP, align 8, !tbaa !2428
  store i64 %246, i64* %5, align 8, !tbaa !2428
  %249 = add i64 %345, 13
  store i64 %249, i64* %PC, align 8
  %250 = inttoptr i64 %246 to i64*
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %PC, align 8, !tbaa !2428
  %252 = add i64 %245, 16
  store i64 %252, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400735:                                     ; preds = %block_400728
  %253 = add i64 %345, 3
  store i64 %253, i64* %PC, align 8
  %254 = load i32, i32* %319, align 4
  %255 = add i32 %254, -1
  %256 = zext i32 %255 to i64
  store i64 %256, i64* %RAX, align 8, !tbaa !2428
  %257 = icmp eq i32 %254, 0
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %18, align 1, !tbaa !2432
  %259 = and i32 %255, 255
  %260 = tail call i32 @llvm.ctpop.i32(i32 %259) #9
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  %263 = xor i8 %262, 1
  store i8 %263, i8* %19, align 1, !tbaa !2446
  %264 = xor i32 %255, %254
  %265 = lshr i32 %264, 4
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  store i8 %267, i8* %20, align 1, !tbaa !2447
  %268 = icmp eq i32 %255, 0
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %21, align 1, !tbaa !2448
  %270 = lshr i32 %255, 31
  %271 = trunc i32 %270 to i8
  store i8 %271, i8* %22, align 1, !tbaa !2449
  %272 = lshr i32 %254, 31
  %273 = xor i32 %270, %272
  %274 = add nuw nsw i32 %273, %272
  %275 = icmp eq i32 %274, 2
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %23, align 1, !tbaa !2450
  %277 = sext i32 %255 to i64
  store i64 %277, i64* %RCX, align 8, !tbaa !2428
  %278 = shl nsw i64 %277, 2
  %279 = add i64 %278, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %280 = add i64 %345, 16
  store i64 %280, i64* %PC, align 8
  %281 = inttoptr i64 %279 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = zext i32 %282 to i64
  store i64 %283, i64* %RAX, align 8, !tbaa !2428
  %284 = add i64 %316, -8
  %285 = add i64 %345, 19
  store i64 %285, i64* %PC, align 8
  %286 = inttoptr i64 %284 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = sub i32 %282, %287
  %289 = icmp ult i32 %282, %287
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %18, align 1, !tbaa !2432
  %291 = and i32 %288, 255
  %292 = tail call i32 @llvm.ctpop.i32(i32 %291) #9
  %293 = trunc i32 %292 to i8
  %294 = and i8 %293, 1
  %295 = xor i8 %294, 1
  store i8 %295, i8* %19, align 1, !tbaa !2446
  %296 = xor i32 %287, %282
  %297 = xor i32 %296, %288
  %298 = lshr i32 %297, 4
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  store i8 %300, i8* %20, align 1, !tbaa !2447
  %301 = icmp eq i32 %288, 0
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %21, align 1, !tbaa !2448
  %303 = lshr i32 %288, 31
  %304 = trunc i32 %303 to i8
  store i8 %304, i8* %22, align 1, !tbaa !2449
  %305 = lshr i32 %282, 31
  %306 = lshr i32 %287, 31
  %307 = xor i32 %306, %305
  %308 = xor i32 %303, %305
  %309 = add nuw nsw i32 %308, %307
  %310 = icmp eq i32 %309, 2
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %23, align 1, !tbaa !2450
  %312 = icmp ne i8 %304, 0
  %313 = xor i1 %312, %310
  %.v20 = select i1 %313, i64 72, i64 25
  %314 = add i64 %345, %.v20
  store i64 %314, i64* %PC, align 8, !tbaa !2428
  br i1 %313, label %block_40077d, label %block_40074e

block_400728:                                     ; preds = %block_400705, %block_40079b
  %315 = phi i64 [ %.pre14, %block_400705 ], [ %75, %block_40079b ]
  %316 = load i64, i64* %RBP, align 8
  %317 = add i64 %316, -4
  %318 = add i64 %315, 7
  store i64 %318, i64* %PC, align 8
  %319 = inttoptr i64 %317 to i32*
  %320 = load i32, i32* %319, align 4
  %321 = add i32 %320, -255
  %322 = icmp ult i32 %320, 255
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %18, align 1, !tbaa !2432
  %324 = and i32 %321, 255
  %325 = tail call i32 @llvm.ctpop.i32(i32 %324) #9
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  %328 = xor i8 %327, 1
  store i8 %328, i8* %19, align 1, !tbaa !2446
  %329 = xor i32 %320, 16
  %330 = xor i32 %329, %321
  %331 = lshr i32 %330, 4
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  store i8 %333, i8* %20, align 1, !tbaa !2447
  %334 = icmp eq i32 %321, 0
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %21, align 1, !tbaa !2448
  %336 = lshr i32 %321, 31
  %337 = trunc i32 %336 to i8
  store i8 %337, i8* %22, align 1, !tbaa !2449
  %338 = lshr i32 %320, 31
  %339 = xor i32 %336, %338
  %340 = add nuw nsw i32 %339, %338
  %341 = icmp eq i32 %340, 2
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %23, align 1, !tbaa !2450
  %343 = icmp ne i8 %337, 0
  %344 = xor i1 %343, %341
  %.v19 = select i1 %344, i64 13, i64 151
  %345 = add i64 %315, %.v19
  store i64 %345, i64* %PC, align 8, !tbaa !2428
  br i1 %344, label %block_400735, label %block_4007bf

block_40069d:                                     ; preds = %block_4006ee, %block_400680
  %346 = phi i64 [ %243, %block_4006ee ], [ %.pre, %block_400680 ]
  %347 = load i64, i64* %RBP, align 8
  %348 = add i64 %347, -4
  %349 = add i64 %346, 4
  store i64 %349, i64* %PC, align 8
  %350 = inttoptr i64 %348 to i32*
  %351 = load i32, i32* %350, align 4
  %352 = add i32 %351, -8
  %353 = icmp ult i32 %351, 8
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %18, align 1, !tbaa !2432
  %355 = and i32 %352, 255
  %356 = tail call i32 @llvm.ctpop.i32(i32 %355) #9
  %357 = trunc i32 %356 to i8
  %358 = and i8 %357, 1
  %359 = xor i8 %358, 1
  store i8 %359, i8* %19, align 1, !tbaa !2446
  %360 = xor i32 %352, %351
  %361 = lshr i32 %360, 4
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  store i8 %363, i8* %20, align 1, !tbaa !2447
  %364 = icmp eq i32 %352, 0
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %21, align 1, !tbaa !2448
  %366 = lshr i32 %352, 31
  %367 = trunc i32 %366 to i8
  store i8 %367, i8* %22, align 1, !tbaa !2449
  %368 = lshr i32 %351, 31
  %369 = xor i32 %366, %368
  %370 = add nuw nsw i32 %369, %368
  %371 = icmp eq i32 %370, 2
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %23, align 1, !tbaa !2450
  %373 = icmp ne i8 %367, 0
  %374 = xor i1 %373, %371
  %.v = select i1 %374, i64 10, i64 104
  %375 = add i64 %346, %.v
  store i64 %375, i64* %PC, align 8, !tbaa !2428
  br i1 %374, label %block_4006a7, label %block_400705

block_400705:                                     ; preds = %block_40069d
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %376 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2112) to i32*), align 16
  %377 = sext i32 %376 to i64
  store i64 %377, i64* %RAX, align 8, !tbaa !2428
  %378 = shl nsw i64 %377, 2
  %379 = add i64 %378, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %380 = add i64 %375, 19
  store i64 %380, i64* %PC, align 8
  %381 = inttoptr i64 %379 to i32*
  store i32 8, i32* %381, align 4
  %382 = load i64, i64* %RBP, align 8
  %383 = add i64 %382, -8
  %384 = load i64, i64* %PC, align 8
  %385 = add i64 %384, 3
  store i64 %385, i64* %PC, align 8
  %386 = inttoptr i64 %383 to i32*
  %387 = load i32, i32* %386, align 4
  %388 = zext i32 %387 to i64
  %389 = shl nuw i64 %388, 32
  %390 = ashr i64 %389, 33
  %391 = trunc i32 %387 to i8
  %392 = and i8 %391, 1
  %393 = trunc i64 %390 to i32
  %394 = and i64 %390, 4294967295
  store i64 %394, i64* %RCX, align 8, !tbaa !2428
  store i8 %392, i8* %18, align 1, !tbaa !2451
  %395 = and i32 %393, 255
  %396 = tail call i32 @llvm.ctpop.i32(i32 %395) #9
  %397 = trunc i32 %396 to i8
  %398 = and i8 %397, 1
  %399 = xor i8 %398, 1
  store i8 %399, i8* %19, align 1, !tbaa !2451
  store i8 0, i8* %20, align 1, !tbaa !2451
  %400 = icmp eq i32 %393, 0
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %21, align 1, !tbaa !2451
  %402 = lshr i64 %390, 31
  %403 = trunc i64 %402 to i8
  %404 = and i8 %403, 1
  store i8 %404, i8* %22, align 1, !tbaa !2451
  store i8 0, i8* %23, align 1, !tbaa !2451
  %405 = trunc i64 %390 to i32
  %406 = add i64 %384, 9
  store i64 %406, i64* %PC, align 8
  store i32 %405, i32* %386, align 4
  %407 = load i64, i64* %RBP, align 8
  %408 = add i64 %407, -4
  %409 = load i64, i64* %PC, align 8
  %410 = add i64 %409, 7
  store i64 %410, i64* %PC, align 8
  %411 = inttoptr i64 %408 to i32*
  store i32 9, i32* %411, align 4
  %.pre14 = load i64, i64* %PC, align 8
  br label %block_400728

block_4006dd:                                     ; preds = %block_4006a7
  %412 = add i64 %481, 3
  store i64 %412, i64* %PC, align 8
  %413 = inttoptr i64 %.pre16 to i32*
  %414 = load i32, i32* %413, align 4
  %415 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2112) to i32*), align 16
  %416 = xor i32 %415, %414
  %417 = zext i32 %416 to i64
  store i64 %417, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  %418 = and i32 %416, 255
  %419 = tail call i32 @llvm.ctpop.i32(i32 %418) #9
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  %422 = xor i8 %421, 1
  store i8 %422, i8* %19, align 1, !tbaa !2446
  %423 = icmp eq i32 %416, 0
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %21, align 1, !tbaa !2448
  %425 = lshr i32 %416, 31
  %426 = trunc i32 %425 to i8
  store i8 %426, i8* %22, align 1, !tbaa !2449
  store i8 0, i8* %23, align 1, !tbaa !2450
  store i8 0, i8* %20, align 1, !tbaa !2447
  %427 = add i64 %481, 17
  store i64 %427, i64* %PC, align 8
  store i32 %416, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2112) to i32*), align 16
  br label %block_4006ee

block_4006a7:                                     ; preds = %block_40069d
  %428 = add i64 %347, -8
  %429 = add i64 %375, 3
  store i64 %429, i64* %PC, align 8
  %430 = inttoptr i64 %428 to i32*
  %431 = load i32, i32* %430, align 4
  %432 = zext i32 %431 to i64
  store i64 %432, i64* %RAX, align 8, !tbaa !2428
  %433 = add i64 %375, 7
  store i64 %433, i64* %PC, align 8
  %434 = load i32, i32* %350, align 4
  %435 = sext i32 %434 to i64
  store i64 %435, i64* %RCX, align 8, !tbaa !2428
  %436 = shl nsw i64 %435, 2
  %437 = add i64 %436, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %438 = add i64 %375, 14
  store i64 %438, i64* %PC, align 8
  %439 = inttoptr i64 %437 to i32*
  store i32 %431, i32* %439, align 4
  %440 = load i64, i64* %RBP, align 8
  %441 = add i64 %440, -4
  %442 = load i64, i64* %PC, align 8
  %443 = add i64 %442, 3
  store i64 %443, i64* %PC, align 8
  %444 = inttoptr i64 %441 to i32*
  %445 = load i32, i32* %444, align 4
  %446 = zext i32 %445 to i64
  store i64 %446, i64* %RAX, align 8, !tbaa !2428
  %447 = add i64 %442, 7
  store i64 %447, i64* %PC, align 8
  %448 = load i32, i32* %444, align 4
  %449 = sext i32 %448 to i64
  store i64 %449, i64* %RCX, align 8, !tbaa !2428
  %450 = shl nsw i64 %449, 2
  %451 = add i64 %450, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %452 = add i64 %442, 15
  store i64 %452, i64* %PC, align 8
  %453 = inttoptr i64 %451 to i32*
  %454 = load i32, i32* %453, align 4
  %455 = sext i32 %454 to i64
  store i64 %455, i64* %RCX, align 8, !tbaa !2428
  %456 = shl nsw i64 %455, 2
  %457 = add i64 %456, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %458 = add i64 %442, 22
  store i64 %458, i64* %PC, align 8
  %459 = inttoptr i64 %457 to i32*
  store i32 %445, i32* %459, align 4
  %460 = load i64, i64* %RBP, align 8
  %461 = add i64 %460, -4
  %462 = load i64, i64* %PC, align 8
  %463 = add i64 %462, 4
  store i64 %463, i64* %PC, align 8
  %464 = inttoptr i64 %461 to i32*
  %465 = load i32, i32* %464, align 4
  %466 = sext i32 %465 to i64
  store i64 %466, i64* %RCX, align 8, !tbaa !2428
  %467 = shl nsw i64 %466, 2
  %468 = add i64 %467, add (i64 ptrtoint (%seg_603020__data_type* @seg_603020__data to i64), i64 16)
  %469 = add i64 %462, 12
  store i64 %469, i64* %PC, align 8
  %470 = inttoptr i64 %468 to i32*
  %471 = load i32, i32* %470, align 4
  store i8 0, i8* %18, align 1, !tbaa !2432
  %472 = and i32 %471, 255
  %473 = tail call i32 @llvm.ctpop.i32(i32 %472) #9
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  %476 = xor i8 %475, 1
  store i8 %476, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %20, align 1, !tbaa !2447
  %477 = icmp eq i32 %471, 0
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %21, align 1, !tbaa !2448
  %479 = lshr i32 %471, 31
  %480 = trunc i32 %479 to i8
  store i8 %480, i8* %22, align 1, !tbaa !2449
  store i8 0, i8* %23, align 1, !tbaa !2450
  %.v21 = select i1 %477, i64 35, i64 18
  %481 = add i64 %462, %.v21
  store i64 %481, i64* %PC, align 8, !tbaa !2428
  %.pre16 = add i64 %460, -8
  br i1 %477, label %block_4006a7.block_4006ee_crit_edge, label %block_4006dd

block_4006a7.block_4006ee_crit_edge:              ; preds = %block_4006a7
  %.pre17 = inttoptr i64 %.pre16 to i32*
  br label %block_4006ee
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400460_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %1, 1
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* %RSP, align 8, !tbaa !2428
  %6 = add i64 %5, -8
  %7 = inttoptr i64 %6 to i64*
  store i64 %3, i64* %7, align 8
  store i64 %6, i64* %RSP, align 8, !tbaa !2428
  %8 = load i64, i64* %PC, align 8
  store i64 6303832, i64* %RAX, align 8, !tbaa !2428
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1, !tbaa !2432
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %10, align 1, !tbaa !2446
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1, !tbaa !2447
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %12, align 1, !tbaa !2448
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %13, align 1, !tbaa !2449
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %14, align 1, !tbaa !2450
  store i64 %6, i64* %RBP, align 8, !tbaa !2428
  %15 = add i64 %8, 40
  store i64 %15, i64* %PC, align 8
  %16 = load i64, i64* %7, align 8
  store i64 %16, i64* %RBP, align 8, !tbaa !2428
  store i64 %5, i64* %RSP, align 8, !tbaa !2428
  %17 = add i64 %8, 41
  store i64 %17, i64* %PC, align 8
  %18 = inttoptr i64 %5 to i64*
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %PC, align 8, !tbaa !2428
  %20 = add i64 %5, 8
  store i64 %20, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_401cd0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_401cd0:
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4007d0_gen_poly(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4007d0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %5 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSI = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
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
  store i32 2, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104) to i32*), align 16
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3108) to i32*), align 4
  %13 = add i64 %9, -12
  %14 = add i64 %12, 32
  store i64 %14, i64* %PC, align 8
  %15 = inttoptr i64 %13 to i32*
  store i32 2, i32* %15, align 4
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_4007f1

block_40089a:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1, %block_40087f
  %23 = phi i64 [ %.pre20, %block_40087f ], [ %315, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.2, %block_40087f ], [ %285, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %24 = load i64, i64* %RBP, align 8
  %25 = add i64 %24, -8
  %26 = add i64 %23, 8
  store i64 %26, i64* %PC, align 8
  %27 = inttoptr i64 %25 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = add i32 %28, -1
  %30 = zext i32 %29 to i64
  store i64 %30, i64* %RAX, align 8, !tbaa !2428
  %31 = icmp ne i32 %28, 0
  %32 = zext i1 %31 to i8
  store i8 %32, i8* %16, align 1, !tbaa !2432
  %33 = and i32 %29, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #9
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %17, align 1, !tbaa !2446
  %38 = xor i32 %28, 16
  %39 = xor i32 %38, %29
  %40 = lshr i32 %39, 4
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  store i8 %42, i8* %18, align 1, !tbaa !2447
  %43 = icmp eq i32 %29, 0
  %44 = zext i1 %43 to i8
  store i8 %44, i8* %19, align 1, !tbaa !2448
  %45 = lshr i32 %29, 31
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %20, align 1, !tbaa !2449
  %47 = lshr i32 %28, 31
  %48 = xor i32 %45, %47
  %49 = xor i32 %45, 1
  %50 = add nuw nsw i32 %48, %49
  %51 = icmp eq i32 %50, 2
  %52 = zext i1 %51 to i8
  store i8 %52, i8* %21, align 1, !tbaa !2450
  %53 = add i64 %23, 14
  store i64 %53, i64* %PC, align 8
  store i32 %29, i32* %27, align 4
  %54 = load i64, i64* %PC, align 8
  %55 = add i64 %54, -149
  store i64 %55, i64* %PC, align 8, !tbaa !2428
  br label %block_400813

block_4008f5:                                     ; preds = %block_4008ee, %block_4008ff
  %56 = phi i64 [ %.pre24, %block_4008ee ], [ %369, %block_4008ff ]
  %57 = load i64, i64* %RBP, align 8
  %58 = add i64 %57, -4
  %59 = add i64 %56, 4
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %58 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = add i32 %61, -16
  %63 = icmp ult i32 %61, 16
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %16, align 1, !tbaa !2432
  %65 = and i32 %62, 255
  %66 = tail call i32 @llvm.ctpop.i32(i32 %65) #9
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  store i8 %69, i8* %17, align 1, !tbaa !2446
  %70 = xor i32 %61, 16
  %71 = xor i32 %70, %62
  %72 = lshr i32 %71, 4
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  store i8 %74, i8* %18, align 1, !tbaa !2447
  %75 = icmp eq i32 %62, 0
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %19, align 1, !tbaa !2448
  %77 = lshr i32 %62, 31
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %20, align 1, !tbaa !2449
  %79 = lshr i32 %61, 31
  %80 = xor i32 %77, %79
  %81 = add nuw nsw i32 %80, %79
  %82 = icmp eq i32 %81, 2
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %21, align 1, !tbaa !2450
  %84 = icmp ne i8 %78, 0
  %85 = xor i1 %84, %82
  %.demorgan25 = or i1 %75, %85
  %.v26 = select i1 %.demorgan25, i64 10, i64 54
  %86 = add i64 %56, %.v26
  store i64 %86, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan25, label %block_4008ff, label %block_40092b

block_40087f:                                     ; preds = %block_40081d
  %87 = add i64 %506, 3
  store i64 %87, i64* %PC, align 8
  %88 = load i32, i32* %129, align 4
  %89 = add i32 %88, -1
  %90 = zext i32 %89 to i64
  store i64 %90, i64* %RAX, align 8, !tbaa !2428
  %91 = icmp eq i32 %88, 0
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %16, align 1, !tbaa !2432
  %93 = and i32 %89, 255
  %94 = tail call i32 @llvm.ctpop.i32(i32 %93) #9
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  %97 = xor i8 %96, 1
  store i8 %97, i8* %17, align 1, !tbaa !2446
  %98 = xor i32 %89, %88
  %99 = lshr i32 %98, 4
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  store i8 %101, i8* %18, align 1, !tbaa !2447
  %102 = icmp eq i32 %89, 0
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %19, align 1, !tbaa !2448
  %104 = lshr i32 %89, 31
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %20, align 1, !tbaa !2449
  %106 = lshr i32 %88, 31
  %107 = xor i32 %104, %106
  %108 = add nuw nsw i32 %107, %106
  %109 = icmp eq i32 %108, 2
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %21, align 1, !tbaa !2450
  %111 = sext i32 %89 to i64
  store i64 %111, i64* %RCX, align 8, !tbaa !2428
  %112 = shl nsw i64 %111, 2
  %113 = add i64 %112, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %114 = add i64 %506, 16
  store i64 %114, i64* %PC, align 8
  %115 = inttoptr i64 %113 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %RAX, align 8, !tbaa !2428
  %118 = add i64 %506, 20
  store i64 %118, i64* %PC, align 8
  %119 = load i32, i32* %129, align 4
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %RCX, align 8, !tbaa !2428
  %121 = shl nsw i64 %120, 2
  %122 = add i64 %121, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %123 = add i64 %506, 27
  store i64 %123, i64* %PC, align 8
  %124 = inttoptr i64 %122 to i32*
  store i32 %116, i32* %124, align 4
  %.pre20 = load i64, i64* %PC, align 8
  br label %block_40089a

block_400813:                                     ; preds = %block_4007fb, %block_40089a
  %125 = phi i64 [ %.pre16, %block_4007fb ], [ %55, %block_40089a ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.3, %block_4007fb ], [ %MEMORY.0, %block_40089a ]
  %126 = load i64, i64* %RBP, align 8
  %127 = add i64 %126, -8
  %128 = add i64 %125, 4
  store i64 %128, i64* %PC, align 8
  %129 = inttoptr i64 %127 to i32*
  %130 = load i32, i32* %129, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %131 = and i32 %130, 255
  %132 = tail call i32 @llvm.ctpop.i32(i32 %131) #9
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  store i8 %135, i8* %17, align 1, !tbaa !2446
  store i8 0, i8* %18, align 1, !tbaa !2447
  %136 = icmp eq i32 %130, 0
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %19, align 1, !tbaa !2448
  %138 = lshr i32 %130, 31
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %21, align 1, !tbaa !2450
  %140 = icmp ne i8 %139, 0
  %141 = or i1 %136, %140
  %.v27 = select i1 %141, i64 154, i64 10
  %142 = add i64 %125, %.v27
  store i64 %142, i64* %PC, align 8, !tbaa !2428
  br i1 %141, label %block_4008ad, label %block_40081d

block_4007f1:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_4007d0
  %143 = phi i64 [ %.pre, %block_4007d0 ], [ %479, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %MEMORY.3 = phi %struct.Memory* [ %2, %block_4007d0 ], [ %442, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %144 = load i64, i64* %RBP, align 8
  %145 = add i64 %144, -4
  %146 = add i64 %143, 4
  store i64 %146, i64* %PC, align 8
  %147 = inttoptr i64 %145 to i32*
  %148 = load i32, i32* %147, align 4
  %149 = add i32 %148, -16
  %150 = icmp ult i32 %148, 16
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %16, align 1, !tbaa !2432
  %152 = and i32 %149, 255
  %153 = tail call i32 @llvm.ctpop.i32(i32 %152) #9
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  store i8 %156, i8* %17, align 1, !tbaa !2446
  %157 = xor i32 %148, 16
  %158 = xor i32 %157, %149
  %159 = lshr i32 %158, 4
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  store i8 %161, i8* %18, align 1, !tbaa !2447
  %162 = icmp eq i32 %149, 0
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %19, align 1, !tbaa !2448
  %164 = lshr i32 %149, 31
  %165 = trunc i32 %164 to i8
  store i8 %165, i8* %20, align 1, !tbaa !2449
  %166 = lshr i32 %148, 31
  %167 = xor i32 %164, %166
  %168 = add nuw nsw i32 %167, %166
  %169 = icmp eq i32 %168, 2
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %21, align 1, !tbaa !2450
  %171 = icmp ne i8 %165, 0
  %172 = xor i1 %171, %169
  %.demorgan = or i1 %162, %172
  %.v = select i1 %.demorgan, i64 10, i64 253
  %173 = add i64 %143, %.v
  store i64 %173, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_4007fb, label %block_4008ee

block_40082f:                                     ; preds = %block_40081d
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %174 = add i64 %506, 8
  store i64 %174, i64* %PC, align 8
  %175 = load i32, i32* %129, align 4
  %176 = add i32 %175, -1
  %177 = zext i32 %176 to i64
  store i64 %177, i64* %RCX, align 8, !tbaa !2428
  %178 = icmp eq i32 %175, 0
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %16, align 1, !tbaa !2432
  %180 = and i32 %176, 255
  %181 = tail call i32 @llvm.ctpop.i32(i32 %180) #9
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  %184 = xor i8 %183, 1
  store i8 %184, i8* %17, align 1, !tbaa !2446
  %185 = xor i32 %176, %175
  %186 = lshr i32 %185, 4
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  store i8 %188, i8* %18, align 1, !tbaa !2447
  %189 = icmp eq i32 %176, 0
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %19, align 1, !tbaa !2448
  %191 = lshr i32 %176, 31
  %192 = trunc i32 %191 to i8
  store i8 %192, i8* %20, align 1, !tbaa !2449
  %193 = lshr i32 %175, 31
  %194 = xor i32 %191, %193
  %195 = add nuw nsw i32 %194, %193
  %196 = icmp eq i32 %195, 2
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %21, align 1, !tbaa !2450
  %198 = sext i32 %176 to i64
  store i64 %198, i64* %RDX, align 8, !tbaa !2428
  %199 = shl nsw i64 %198, 2
  %200 = add i64 %199, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %201 = add i64 %506, 21
  store i64 %201, i64* %PC, align 8
  %202 = inttoptr i64 %200 to i32*
  %203 = load i32, i32* %202, align 4
  %204 = zext i32 %203 to i64
  store i64 %204, i64* %RCX, align 8, !tbaa !2428
  %205 = add i64 %506, 25
  store i64 %205, i64* %PC, align 8
  %206 = load i32, i32* %129, align 4
  %207 = sext i32 %206 to i64
  store i64 %207, i64* %RDX, align 8, !tbaa !2428
  %208 = shl nsw i64 %207, 2
  %209 = add i64 %208, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %210 = add i64 %506, 33
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %209 to i32*
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  store i64 %213, i64* %RDX, align 8, !tbaa !2428
  %214 = shl nsw i64 %213, 2
  %215 = add i64 %214, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %216 = add i64 %506, 40
  store i64 %216, i64* %PC, align 8
  %217 = inttoptr i64 %215 to i32*
  %218 = load i32, i32* %217, align 4
  %219 = zext i32 %218 to i64
  store i64 %219, i64* %RSI, align 8, !tbaa !2428
  %220 = add i64 %126, -4
  %221 = add i64 %506, 43
  store i64 %221, i64* %PC, align 8
  %222 = inttoptr i64 %220 to i32*
  %223 = load i32, i32* %222, align 4
  %224 = add i32 %223, %218
  %225 = zext i32 %224 to i64
  store i64 %225, i64* %RSI, align 8, !tbaa !2428
  %226 = icmp ult i32 %224, %218
  %227 = icmp ult i32 %224, %223
  %228 = or i1 %226, %227
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %16, align 1, !tbaa !2432
  %230 = and i32 %224, 255
  %231 = tail call i32 @llvm.ctpop.i32(i32 %230) #9
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  %234 = xor i8 %233, 1
  store i8 %234, i8* %17, align 1, !tbaa !2446
  %235 = xor i32 %223, %218
  %236 = xor i32 %235, %224
  %237 = lshr i32 %236, 4
  %238 = trunc i32 %237 to i8
  %239 = and i8 %238, 1
  store i8 %239, i8* %18, align 1, !tbaa !2447
  %240 = icmp eq i32 %224, 0
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %19, align 1, !tbaa !2448
  %242 = lshr i32 %224, 31
  %243 = trunc i32 %242 to i8
  store i8 %243, i8* %20, align 1, !tbaa !2449
  %244 = lshr i32 %218, 31
  %245 = lshr i32 %223, 31
  %246 = xor i32 %242, %244
  %247 = xor i32 %242, %245
  %248 = add nuw nsw i32 %246, %247
  %249 = icmp eq i32 %248, 2
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %21, align 1, !tbaa !2450
  %251 = load i64, i64* %RBP, align 8
  %252 = add i64 %251, -12
  %253 = load i32, i32* %EAX, align 4
  %254 = add i64 %506, 46
  store i64 %254, i64* %PC, align 8
  %255 = inttoptr i64 %252 to i32*
  store i32 %253, i32* %255, align 4
  %256 = load i32, i32* %ESI, align 4
  %257 = zext i32 %256 to i64
  %258 = load i64, i64* %PC, align 8
  store i64 %257, i64* %RAX, align 8, !tbaa !2428
  %259 = sext i32 %256 to i64
  %260 = lshr i64 %259, 32
  store i64 %260, i64* %22, align 8, !tbaa !2428
  %261 = load i64, i64* %RBP, align 8
  %262 = add i64 %261, -12
  %263 = add i64 %258, 6
  store i64 %263, i64* %PC, align 8
  %264 = inttoptr i64 %262 to i32*
  %265 = load i32, i32* %264, align 4
  %266 = zext i32 %265 to i64
  store i64 %266, i64* %RSI, align 8, !tbaa !2428
  %267 = add i64 %258, 8
  store i64 %267, i64* %PC, align 8
  %268 = sext i32 %265 to i64
  %269 = shl nuw i64 %260, 32
  %270 = or i64 %269, %257
  %271 = sdiv i64 %270, %268
  %272 = shl i64 %271, 32
  %273 = ashr exact i64 %272, 32
  %274 = icmp eq i64 %271, %273
  br i1 %274, label %277, label %275

; <label>:275:                                    ; preds = %block_40082f
  %276 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %267, %struct.Memory* %MEMORY.2) #12
  %.pre17 = load i32, i32* %EDX, align 4
  %.pre18 = load i64, i64* %PC, align 8
  %.pre19 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:277:                                    ; preds = %block_40082f
  %278 = srem i64 %270, %268
  %279 = and i64 %271, 4294967295
  store i64 %279, i64* %RAX, align 8, !tbaa !2428
  %280 = and i64 %278, 4294967295
  store i64 %280, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %17, align 1, !tbaa !2446
  store i8 0, i8* %18, align 1, !tbaa !2447
  store i8 0, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %21, align 1, !tbaa !2450
  %281 = trunc i64 %278 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %277, %275
  %282 = phi i64 [ %.pre19, %275 ], [ %261, %277 ]
  %283 = phi i64 [ %.pre18, %275 ], [ %267, %277 ]
  %284 = phi i32 [ %.pre17, %275 ], [ %281, %277 ]
  %285 = phi %struct.Memory* [ %276, %275 ], [ %MEMORY.2, %277 ]
  %286 = sext i32 %284 to i64
  store i64 %286, i64* %RDI, align 8, !tbaa !2428
  %287 = load i64, i64* %RCX, align 8
  %288 = shl nsw i64 %286, 2
  %289 = add i64 %288, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %290 = add i64 %283, 10
  store i64 %290, i64* %PC, align 8
  %291 = trunc i64 %287 to i32
  %292 = inttoptr i64 %289 to i32*
  %293 = load i32, i32* %292, align 4
  %294 = xor i32 %293, %291
  %295 = zext i32 %294 to i64
  store i64 %295, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %296 = and i32 %294, 255
  %297 = tail call i32 @llvm.ctpop.i32(i32 %296) #9
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = xor i8 %299, 1
  store i8 %300, i8* %17, align 1, !tbaa !2446
  %301 = icmp eq i32 %294, 0
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %19, align 1, !tbaa !2448
  %303 = lshr i32 %294, 31
  %304 = trunc i32 %303 to i8
  store i8 %304, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %21, align 1, !tbaa !2450
  store i8 0, i8* %18, align 1, !tbaa !2447
  %305 = add i64 %282, -8
  %306 = add i64 %283, 14
  store i64 %306, i64* %PC, align 8
  %307 = inttoptr i64 %305 to i32*
  %308 = load i32, i32* %307, align 4
  %309 = sext i32 %308 to i64
  store i64 %309, i64* %RDI, align 8, !tbaa !2428
  %310 = shl nsw i64 %309, 2
  %311 = add i64 %310, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %312 = add i64 %283, 21
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %311 to i32*
  store i32 %294, i32* %313, align 4
  %314 = load i64, i64* %PC, align 8
  %315 = add i64 %314, 32
  store i64 %315, i64* %PC, align 8, !tbaa !2428
  br label %block_40089a

block_4008ff:                                     ; preds = %block_4008f5
  %316 = add i64 %86, 4
  store i64 %316, i64* %PC, align 8
  %317 = load i32, i32* %60, align 4
  %318 = sext i32 %317 to i64
  store i64 %318, i64* %RAX, align 8, !tbaa !2428
  %319 = shl nsw i64 %318, 2
  %320 = add i64 %319, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %321 = add i64 %86, 12
  store i64 %321, i64* %PC, align 8
  %322 = inttoptr i64 %320 to i32*
  %323 = load i32, i32* %322, align 4
  %324 = sext i32 %323 to i64
  store i64 %324, i64* %RAX, align 8, !tbaa !2428
  %325 = shl nsw i64 %324, 2
  %326 = add i64 %325, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %327 = add i64 %86, 19
  store i64 %327, i64* %PC, align 8
  %328 = inttoptr i64 %326 to i32*
  %329 = load i32, i32* %328, align 4
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RCX, align 8, !tbaa !2428
  %331 = add i64 %86, 23
  store i64 %331, i64* %PC, align 8
  %332 = load i32, i32* %60, align 4
  %333 = sext i32 %332 to i64
  store i64 %333, i64* %RAX, align 8, !tbaa !2428
  %334 = shl nsw i64 %333, 2
  %335 = add i64 %334, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %336 = add i64 %86, 30
  store i64 %336, i64* %PC, align 8
  %337 = inttoptr i64 %335 to i32*
  store i32 %329, i32* %337, align 4
  %338 = load i64, i64* %RBP, align 8
  %339 = add i64 %338, -4
  %340 = load i64, i64* %PC, align 8
  %341 = add i64 %340, 3
  store i64 %341, i64* %PC, align 8
  %342 = inttoptr i64 %339 to i32*
  %343 = load i32, i32* %342, align 4
  %344 = add i32 %343, 1
  %345 = zext i32 %344 to i64
  store i64 %345, i64* %RAX, align 8, !tbaa !2428
  %346 = icmp eq i32 %343, -1
  %347 = icmp eq i32 %344, 0
  %348 = or i1 %346, %347
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %16, align 1, !tbaa !2432
  %350 = and i32 %344, 255
  %351 = tail call i32 @llvm.ctpop.i32(i32 %350) #9
  %352 = trunc i32 %351 to i8
  %353 = and i8 %352, 1
  %354 = xor i8 %353, 1
  store i8 %354, i8* %17, align 1, !tbaa !2446
  %355 = xor i32 %344, %343
  %356 = lshr i32 %355, 4
  %357 = trunc i32 %356 to i8
  %358 = and i8 %357, 1
  store i8 %358, i8* %18, align 1, !tbaa !2447
  %359 = zext i1 %347 to i8
  store i8 %359, i8* %19, align 1, !tbaa !2448
  %360 = lshr i32 %344, 31
  %361 = trunc i32 %360 to i8
  store i8 %361, i8* %20, align 1, !tbaa !2449
  %362 = lshr i32 %343, 31
  %363 = xor i32 %360, %362
  %364 = add nuw nsw i32 %363, %360
  %365 = icmp eq i32 %364, 2
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %21, align 1, !tbaa !2450
  %367 = add i64 %340, 9
  store i64 %367, i64* %PC, align 8
  store i32 %344, i32* %342, align 4
  %368 = load i64, i64* %PC, align 8
  %369 = add i64 %368, -49
  store i64 %369, i64* %PC, align 8, !tbaa !2428
  br label %block_4008f5

block_4008ee:                                     ; preds = %block_4007f1
  %370 = add i64 %173, 7
  store i64 %370, i64* %PC, align 8
  store i32 0, i32* %147, align 4
  %.pre24 = load i64, i64* %PC, align 8
  br label %block_4008f5

block_4008ad:                                     ; preds = %block_400813
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %371 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104) to i32*), align 16
  %372 = sext i32 %371 to i64
  store i64 %372, i64* %RCX, align 8, !tbaa !2428
  %373 = shl nsw i64 %372, 2
  %374 = add i64 %373, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %375 = add i64 %142, 20
  store i64 %375, i64* %PC, align 8
  %376 = inttoptr i64 %374 to i32*
  %377 = load i32, i32* %376, align 4
  %378 = zext i32 %377 to i64
  store i64 %378, i64* %RDX, align 8, !tbaa !2428
  %379 = add i64 %126, -4
  %380 = add i64 %142, 23
  store i64 %380, i64* %PC, align 8
  %381 = inttoptr i64 %379 to i32*
  %382 = load i32, i32* %381, align 4
  %383 = add i32 %382, %377
  %384 = zext i32 %383 to i64
  store i64 %384, i64* %RDX, align 8, !tbaa !2428
  %385 = icmp ult i32 %383, %377
  %386 = icmp ult i32 %383, %382
  %387 = or i1 %385, %386
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %16, align 1, !tbaa !2432
  %389 = and i32 %383, 255
  %390 = tail call i32 @llvm.ctpop.i32(i32 %389) #9
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  %393 = xor i8 %392, 1
  store i8 %393, i8* %17, align 1, !tbaa !2446
  %394 = xor i32 %382, %377
  %395 = xor i32 %394, %383
  %396 = lshr i32 %395, 4
  %397 = trunc i32 %396 to i8
  %398 = and i8 %397, 1
  store i8 %398, i8* %18, align 1, !tbaa !2447
  %399 = icmp eq i32 %383, 0
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %19, align 1, !tbaa !2448
  %401 = lshr i32 %383, 31
  %402 = trunc i32 %401 to i8
  store i8 %402, i8* %20, align 1, !tbaa !2449
  %403 = lshr i32 %377, 31
  %404 = lshr i32 %382, 31
  %405 = xor i32 %401, %403
  %406 = xor i32 %401, %404
  %407 = add nuw nsw i32 %405, %406
  %408 = icmp eq i32 %407, 2
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %21, align 1, !tbaa !2450
  %410 = add i64 %126, -16
  %411 = add i64 %142, 26
  store i64 %411, i64* %PC, align 8
  %412 = inttoptr i64 %410 to i32*
  store i32 255, i32* %412, align 4
  %413 = load i32, i32* %EDX, align 4
  %414 = zext i32 %413 to i64
  %415 = load i64, i64* %PC, align 8
  store i64 %414, i64* %RAX, align 8, !tbaa !2428
  %416 = sext i32 %413 to i64
  %417 = lshr i64 %416, 32
  store i64 %417, i64* %22, align 8, !tbaa !2428
  %418 = load i64, i64* %RBP, align 8
  %419 = add i64 %418, -16
  %420 = add i64 %415, 6
  store i64 %420, i64* %PC, align 8
  %421 = inttoptr i64 %419 to i32*
  %422 = load i32, i32* %421, align 4
  %423 = zext i32 %422 to i64
  store i64 %423, i64* %RSI, align 8, !tbaa !2428
  %424 = add i64 %415, 8
  store i64 %424, i64* %PC, align 8
  %425 = sext i32 %422 to i64
  %426 = shl nuw i64 %417, 32
  %427 = or i64 %426, %414
  %428 = sdiv i64 %427, %425
  %429 = shl i64 %428, 32
  %430 = ashr exact i64 %429, 32
  %431 = icmp eq i64 %428, %430
  br i1 %431, label %434, label %432

; <label>:432:                                    ; preds = %block_4008ad
  %433 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %424, %struct.Memory* %MEMORY.2) #12
  %.pre21 = load i32, i32* %EDX, align 4
  %.pre22 = load i64, i64* %PC, align 8
  %.pre23 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:434:                                    ; preds = %block_4008ad
  %435 = srem i64 %427, %425
  %436 = and i64 %428, 4294967295
  store i64 %436, i64* %RAX, align 8, !tbaa !2428
  %437 = and i64 %435, 4294967295
  store i64 %437, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %17, align 1, !tbaa !2446
  store i8 0, i8* %18, align 1, !tbaa !2447
  store i8 0, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %21, align 1, !tbaa !2450
  %438 = trunc i64 %435 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %434, %432
  %439 = phi i64 [ %.pre23, %432 ], [ %418, %434 ]
  %440 = phi i64 [ %.pre22, %432 ], [ %424, %434 ]
  %441 = phi i32 [ %.pre21, %432 ], [ %438, %434 ]
  %442 = phi %struct.Memory* [ %433, %432 ], [ %MEMORY.2, %434 ]
  %443 = sext i32 %441 to i64
  store i64 %443, i64* %RCX, align 8, !tbaa !2428
  %444 = shl nsw i64 %443, 2
  %445 = add i64 %444, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %446 = add i64 %440, 10
  store i64 %446, i64* %PC, align 8
  %447 = inttoptr i64 %445 to i32*
  %448 = load i32, i32* %447, align 4
  %449 = zext i32 %448 to i64
  store i64 %449, i64* %RDX, align 8, !tbaa !2428
  store i32 %448, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104) to i32*), align 16
  %450 = add i64 %439, -4
  %451 = add i64 %440, 20
  store i64 %451, i64* %PC, align 8
  %452 = inttoptr i64 %450 to i32*
  %453 = load i32, i32* %452, align 4
  %454 = add i32 %453, 1
  %455 = zext i32 %454 to i64
  store i64 %455, i64* %RAX, align 8, !tbaa !2428
  %456 = icmp eq i32 %453, -1
  %457 = icmp eq i32 %454, 0
  %458 = or i1 %456, %457
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %16, align 1, !tbaa !2432
  %460 = and i32 %454, 255
  %461 = tail call i32 @llvm.ctpop.i32(i32 %460) #9
  %462 = trunc i32 %461 to i8
  %463 = and i8 %462, 1
  %464 = xor i8 %463, 1
  store i8 %464, i8* %17, align 1, !tbaa !2446
  %465 = xor i32 %454, %453
  %466 = lshr i32 %465, 4
  %467 = trunc i32 %466 to i8
  %468 = and i8 %467, 1
  store i8 %468, i8* %18, align 1, !tbaa !2447
  %469 = zext i1 %457 to i8
  store i8 %469, i8* %19, align 1, !tbaa !2448
  %470 = lshr i32 %454, 31
  %471 = trunc i32 %470 to i8
  store i8 %471, i8* %20, align 1, !tbaa !2449
  %472 = lshr i32 %453, 31
  %473 = xor i32 %470, %472
  %474 = add nuw nsw i32 %473, %470
  %475 = icmp eq i32 %474, 2
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %21, align 1, !tbaa !2450
  %477 = add i64 %440, 26
  store i64 %477, i64* %PC, align 8
  store i32 %454, i32* %452, align 4
  %478 = load i64, i64* %PC, align 8
  %479 = add i64 %478, -248
  store i64 %479, i64* %PC, align 8, !tbaa !2428
  br label %block_4007f1

block_40092b:                                     ; preds = %block_4008f5
  %480 = add i64 %86, 1
  store i64 %480, i64* %PC, align 8
  %481 = load i64, i64* %8, align 8, !tbaa !2428
  %482 = add i64 %481, 8
  %483 = inttoptr i64 %481 to i64*
  %484 = load i64, i64* %483, align 8
  store i64 %484, i64* %RBP, align 8, !tbaa !2428
  store i64 %482, i64* %8, align 8, !tbaa !2428
  %485 = add i64 %86, 2
  store i64 %485, i64* %PC, align 8
  %486 = inttoptr i64 %482 to i64*
  %487 = load i64, i64* %486, align 8
  store i64 %487, i64* %PC, align 8, !tbaa !2428
  %488 = add i64 %481, 16
  store i64 %488, i64* %8, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.3

block_40081d:                                     ; preds = %block_400813
  %489 = add i64 %142, 4
  store i64 %489, i64* %PC, align 8
  %490 = load i32, i32* %129, align 4
  %491 = sext i32 %490 to i64
  store i64 %491, i64* %RAX, align 8, !tbaa !2428
  %492 = shl nsw i64 %491, 2
  %493 = add i64 %492, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %494 = add i64 %142, 12
  store i64 %494, i64* %PC, align 8
  %495 = inttoptr i64 %493 to i32*
  %496 = load i32, i32* %495, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %497 = and i32 %496, 255
  %498 = tail call i32 @llvm.ctpop.i32(i32 %497) #9
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  %501 = xor i8 %500, 1
  store i8 %501, i8* %17, align 1, !tbaa !2446
  store i8 0, i8* %18, align 1, !tbaa !2447
  %502 = icmp eq i32 %496, 0
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %19, align 1, !tbaa !2448
  %504 = lshr i32 %496, 31
  %505 = trunc i32 %504 to i8
  store i8 %505, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %21, align 1, !tbaa !2450
  %.v28 = select i1 %502, i64 98, i64 18
  %506 = add i64 %142, %.v28
  store i64 %506, i64* %PC, align 8, !tbaa !2428
  br i1 %502, label %block_40087f, label %block_40082f

block_4007fb:                                     ; preds = %block_4007f1
  %507 = add i64 %173, 4
  store i64 %507, i64* %PC, align 8
  %508 = load i32, i32* %147, align 4
  %509 = sext i32 %508 to i64
  store i64 %509, i64* %RAX, align 8, !tbaa !2428
  %510 = shl nsw i64 %509, 2
  %511 = add i64 %510, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %512 = add i64 %173, 15
  store i64 %512, i64* %PC, align 8
  %513 = inttoptr i64 %511 to i32*
  store i32 1, i32* %513, align 4
  %514 = load i64, i64* %RBP, align 8
  %515 = add i64 %514, -4
  %516 = load i64, i64* %PC, align 8
  %517 = add i64 %516, 3
  store i64 %517, i64* %PC, align 8
  %518 = inttoptr i64 %515 to i32*
  %519 = load i32, i32* %518, align 4
  %520 = add i32 %519, -1
  %521 = zext i32 %520 to i64
  store i64 %521, i64* %RCX, align 8, !tbaa !2428
  %522 = icmp eq i32 %519, 0
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %16, align 1, !tbaa !2432
  %524 = and i32 %520, 255
  %525 = tail call i32 @llvm.ctpop.i32(i32 %524) #9
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  %528 = xor i8 %527, 1
  store i8 %528, i8* %17, align 1, !tbaa !2446
  %529 = xor i32 %520, %519
  %530 = lshr i32 %529, 4
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  store i8 %532, i8* %18, align 1, !tbaa !2447
  %533 = icmp eq i32 %520, 0
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %19, align 1, !tbaa !2448
  %535 = lshr i32 %520, 31
  %536 = trunc i32 %535 to i8
  store i8 %536, i8* %20, align 1, !tbaa !2449
  %537 = lshr i32 %519, 31
  %538 = xor i32 %535, %537
  %539 = add nuw nsw i32 %538, %537
  %540 = icmp eq i32 %539, 2
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %21, align 1, !tbaa !2450
  %542 = add i64 %514, -8
  %543 = add i64 %516, 9
  store i64 %543, i64* %PC, align 8
  %544 = inttoptr i64 %542 to i32*
  store i32 %520, i32* %544, align 4
  %.pre16 = load i64, i64* %PC, align 8
  br label %block_400813
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_400450__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400450:
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4019a0_encode_rs(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4019a0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSI = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %7 = load i64, i64* %RBP, align 8
  %8 = add i64 %1, 1
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %9, align 8, !tbaa !2428
  %11 = add i64 %10, -8
  %12 = inttoptr i64 %11 to i64*
  store i64 %7, i64* %12, align 8
  store i64 %11, i64* %9, align 8, !tbaa !2428
  %13 = load i64, i64* %PC, align 8
  store i64 %11, i64* %RBP, align 8, !tbaa !2428
  %14 = add i64 %10, -12
  %15 = add i64 %13, 10
  store i64 %15, i64* %PC, align 8
  %16 = inttoptr i64 %14 to i32*
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %PC, align 8
  br label %block_4019ab

block_401ae6:                                     ; preds = %block_401adc
  %23 = add i64 %584, 3
  store i64 %23, i64* %PC, align 8
  %24 = load i32, i32* %571, align 4
  %25 = add i32 %24, -1
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RAX, align 8, !tbaa !2428
  %27 = icmp eq i32 %24, 0
  %28 = zext i1 %27 to i8
  store i8 %28, i8* %17, align 1, !tbaa !2432
  %29 = and i32 %25, 255
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29) #9
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  store i8 %33, i8* %18, align 1, !tbaa !2446
  %34 = xor i32 %25, %24
  %35 = lshr i32 %34, 4
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  store i8 %37, i8* %19, align 1, !tbaa !2447
  %38 = icmp eq i32 %25, 0
  %39 = zext i1 %38 to i8
  store i8 %39, i8* %20, align 1, !tbaa !2448
  %40 = lshr i32 %25, 31
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %21, align 1, !tbaa !2449
  %42 = lshr i32 %24, 31
  %43 = xor i32 %40, %42
  %44 = add nuw nsw i32 %43, %42
  %45 = icmp eq i32 %44, 2
  %46 = zext i1 %45 to i8
  store i8 %46, i8* %22, align 1, !tbaa !2450
  %47 = sext i32 %25 to i64
  store i64 %47, i64* %RCX, align 8, !tbaa !2428
  %48 = shl nsw i64 %47, 2
  %49 = add i64 %48, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %50 = add i64 %584, 16
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %49 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = zext i32 %52 to i64
  store i64 %53, i64* %RAX, align 8, !tbaa !2428
  %54 = add i64 %584, 20
  store i64 %54, i64* %PC, align 8
  %55 = load i32, i32* %571, align 4
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %RCX, align 8, !tbaa !2428
  %57 = shl nsw i64 %56, 2
  %58 = add i64 %57, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %59 = add i64 %584, 27
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %58 to i32*
  store i32 %52, i32* %60, align 4
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -8
  %63 = load i64, i64* %PC, align 8
  %64 = add i64 %63, 3
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %62 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = add i32 %66, -1
  %68 = zext i32 %67 to i64
  store i64 %68, i64* %RAX, align 8, !tbaa !2428
  %69 = icmp ne i32 %66, 0
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %17, align 1, !tbaa !2432
  %71 = and i32 %67, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #9
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %18, align 1, !tbaa !2446
  %76 = xor i32 %66, 16
  %77 = xor i32 %76, %67
  %78 = lshr i32 %77, 4
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  store i8 %80, i8* %19, align 1, !tbaa !2447
  %81 = icmp eq i32 %67, 0
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %20, align 1, !tbaa !2448
  %83 = lshr i32 %67, 31
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %21, align 1, !tbaa !2449
  %85 = lshr i32 %66, 31
  %86 = xor i32 %83, %85
  %87 = xor i32 %83, 1
  %88 = add nuw nsw i32 %86, %87
  %89 = icmp eq i32 %88, 2
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %22, align 1, !tbaa !2450
  %91 = add i64 %63, 9
  store i64 %91, i64* %PC, align 8
  store i32 %67, i32* %65, align 4
  %92 = load i64, i64* %PC, align 8
  %93 = add i64 %92, -46
  store i64 %93, i64* %PC, align 8, !tbaa !2428
  br label %block_401adc

block_4019d2:                                     ; preds = %block_4019ab
  %ECX = bitcast %union.anon* %4 to i32*
  %EDX = bitcast %union.anon* %5 to i32*
  %ESI = bitcast %union.anon* %6 to i32*
  %RDX = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %94 = add i64 %390, 7
  store i64 %94, i64* %PC, align 8
  store i32 238, i32* %364, align 4
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre20 = load i64, i64* %PC, align 8
  br label %block_4019d9

block_4019e3:                                     ; preds = %block_4019d9
  %96 = add i64 %359, 4
  store i64 %96, i64* %PC, align 8
  %97 = load i32, i32* %347, align 4
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %RAX, align 8, !tbaa !2428
  %99 = shl nsw i64 %98, 2
  %100 = add i64 %99, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3184)
  %101 = add i64 %359, 11
  store i64 %101, i64* %PC, align 8
  %102 = inttoptr i64 %100 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4204) to i32*), align 4
  %105 = xor i32 %104, %103
  %106 = zext i32 %105 to i64
  store i64 %106, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  %107 = and i32 %105, 255
  %108 = tail call i32 @llvm.ctpop.i32(i32 %107) #9
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = xor i8 %110, 1
  store i8 %111, i8* %18, align 1, !tbaa !2446
  %112 = icmp eq i32 %105, 0
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %20, align 1, !tbaa !2448
  %114 = lshr i32 %105, 31
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  store i8 0, i8* %19, align 1, !tbaa !2447
  %116 = sext i32 %105 to i64
  store i64 %116, i64* %RAX, align 8, !tbaa !2428
  %117 = shl nsw i64 %116, 2
  %118 = add i64 %117, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %119 = add i64 %359, 28
  store i64 %119, i64* %PC, align 8
  %120 = inttoptr i64 %118 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = zext i32 %121 to i64
  store i64 %122, i64* %RCX, align 8, !tbaa !2428
  %123 = add i64 %344, -12
  %124 = add i64 %359, 31
  store i64 %124, i64* %PC, align 8
  %125 = inttoptr i64 %123 to i32*
  store i32 %121, i32* %125, align 4
  %126 = load i64, i64* %RBP, align 8
  %127 = add i64 %126, -12
  %128 = load i64, i64* %PC, align 8
  %129 = add i64 %128, 4
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %127 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = add i32 %131, 1
  %133 = icmp ne i32 %131, -1
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %17, align 1, !tbaa !2432
  %135 = and i32 %132, 255
  %136 = tail call i32 @llvm.ctpop.i32(i32 %135) #9
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  %139 = xor i8 %138, 1
  store i8 %139, i8* %18, align 1, !tbaa !2446
  %140 = xor i32 %131, 16
  %141 = xor i32 %140, %132
  %142 = lshr i32 %141, 4
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  store i8 %144, i8* %19, align 1, !tbaa !2447
  %145 = icmp eq i32 %132, 0
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %20, align 1, !tbaa !2448
  %147 = lshr i32 %132, 31
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %21, align 1, !tbaa !2449
  %149 = lshr i32 %131, 31
  %150 = xor i32 %149, 1
  %151 = xor i32 %147, %149
  %152 = add nuw nsw i32 %151, %150
  %153 = icmp eq i32 %152, 2
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %22, align 1, !tbaa !2450
  %.v31 = select i1 %145, i64 211, i64 10
  %155 = add i64 %128, %.v31
  %156 = add i64 %126, -8
  %157 = add i64 %155, 7
  store i64 %157, i64* %PC, align 8
  %158 = inttoptr i64 %156 to i32*
  store i32 15, i32* %158, align 4
  %.pre28 = load i64, i64* %PC, align 8
  br i1 %145, label %block_401adc.preheader, label %block_401a13.preheader

block_401a13.preheader:                           ; preds = %block_4019e3
  br label %block_401a13

block_401adc.preheader:                           ; preds = %block_4019e3
  br label %block_401adc

block_4019b5:                                     ; preds = %block_4019ab
  %159 = add i64 %390, 4
  store i64 %159, i64* %PC, align 8
  %160 = load i32, i32* %364, align 4
  %161 = sext i32 %160 to i64
  store i64 %161, i64* %RAX, align 8, !tbaa !2428
  %162 = shl nsw i64 %161, 2
  %163 = add i64 %162, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %164 = add i64 %390, 15
  store i64 %164, i64* %PC, align 8
  %165 = inttoptr i64 %163 to i32*
  store i32 0, i32* %165, align 4
  %166 = load i64, i64* %RBP, align 8
  %167 = add i64 %166, -4
  %168 = load i64, i64* %PC, align 8
  %169 = add i64 %168, 3
  store i64 %169, i64* %PC, align 8
  %170 = inttoptr i64 %167 to i32*
  %171 = load i32, i32* %170, align 4
  %172 = add i32 %171, 1
  %173 = zext i32 %172 to i64
  store i64 %173, i64* %RAX, align 8, !tbaa !2428
  %174 = icmp eq i32 %171, -1
  %175 = icmp eq i32 %172, 0
  %176 = or i1 %174, %175
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %17, align 1, !tbaa !2432
  %178 = and i32 %172, 255
  %179 = tail call i32 @llvm.ctpop.i32(i32 %178) #9
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  %182 = xor i8 %181, 1
  store i8 %182, i8* %18, align 1, !tbaa !2446
  %183 = xor i32 %172, %171
  %184 = lshr i32 %183, 4
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  store i8 %186, i8* %19, align 1, !tbaa !2447
  %187 = zext i1 %175 to i8
  store i8 %187, i8* %20, align 1, !tbaa !2448
  %188 = lshr i32 %172, 31
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %21, align 1, !tbaa !2449
  %190 = lshr i32 %171, 31
  %191 = xor i32 %188, %190
  %192 = add nuw nsw i32 %191, %188
  %193 = icmp eq i32 %192, 2
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %22, align 1, !tbaa !2450
  %195 = add i64 %168, 9
  store i64 %195, i64* %PC, align 8
  store i32 %172, i32* %170, align 4
  %196 = load i64, i64* %PC, align 8
  %197 = add i64 %196, -34
  store i64 %197, i64* %PC, align 8, !tbaa !2428
  br label %block_4019ab

block_401a2f:                                     ; preds = %block_401a1d
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %198 = add i64 %533, 8
  store i64 %198, i64* %PC, align 8
  %199 = load i32, i32* %589, align 4
  %200 = add i32 %199, -1
  %201 = zext i32 %200 to i64
  store i64 %201, i64* %RCX, align 8, !tbaa !2428
  %202 = icmp eq i32 %199, 0
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %17, align 1, !tbaa !2432
  %204 = and i32 %200, 255
  %205 = tail call i32 @llvm.ctpop.i32(i32 %204) #9
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  %208 = xor i8 %207, 1
  store i8 %208, i8* %18, align 1, !tbaa !2446
  %209 = xor i32 %200, %199
  %210 = lshr i32 %209, 4
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  store i8 %212, i8* %19, align 1, !tbaa !2447
  %213 = icmp eq i32 %200, 0
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %20, align 1, !tbaa !2448
  %215 = lshr i32 %200, 31
  %216 = trunc i32 %215 to i8
  store i8 %216, i8* %21, align 1, !tbaa !2449
  %217 = lshr i32 %199, 31
  %218 = xor i32 %215, %217
  %219 = add nuw nsw i32 %218, %217
  %220 = icmp eq i32 %219, 2
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %22, align 1, !tbaa !2450
  %222 = sext i32 %200 to i64
  store i64 %222, i64* %RDX, align 8, !tbaa !2428
  %223 = shl nsw i64 %222, 2
  %224 = add i64 %223, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %225 = add i64 %533, 21
  store i64 %225, i64* %PC, align 8
  %226 = inttoptr i64 %224 to i32*
  %227 = load i32, i32* %226, align 4
  %228 = zext i32 %227 to i64
  store i64 %228, i64* %RCX, align 8, !tbaa !2428
  %229 = add i64 %533, 25
  store i64 %229, i64* %PC, align 8
  %230 = load i32, i32* %589, align 4
  %231 = sext i32 %230 to i64
  store i64 %231, i64* %RDX, align 8, !tbaa !2428
  %232 = shl nsw i64 %231, 2
  %233 = add i64 %232, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %234 = add i64 %533, 32
  store i64 %234, i64* %PC, align 8
  %235 = inttoptr i64 %233 to i32*
  %236 = load i32, i32* %235, align 4
  %237 = zext i32 %236 to i64
  store i64 %237, i64* %RSI, align 8, !tbaa !2428
  %238 = add i64 %586, -12
  %239 = add i64 %533, 35
  store i64 %239, i64* %PC, align 8
  %240 = inttoptr i64 %238 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = add i32 %241, %236
  %243 = zext i32 %242 to i64
  store i64 %243, i64* %RSI, align 8, !tbaa !2428
  %244 = icmp ult i32 %242, %236
  %245 = icmp ult i32 %242, %241
  %246 = or i1 %244, %245
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %17, align 1, !tbaa !2432
  %248 = and i32 %242, 255
  %249 = tail call i32 @llvm.ctpop.i32(i32 %248) #9
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  %252 = xor i8 %251, 1
  store i8 %252, i8* %18, align 1, !tbaa !2446
  %253 = xor i32 %241, %236
  %254 = xor i32 %253, %242
  %255 = lshr i32 %254, 4
  %256 = trunc i32 %255 to i8
  %257 = and i8 %256, 1
  store i8 %257, i8* %19, align 1, !tbaa !2447
  %258 = icmp eq i32 %242, 0
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %20, align 1, !tbaa !2448
  %260 = lshr i32 %242, 31
  %261 = trunc i32 %260 to i8
  store i8 %261, i8* %21, align 1, !tbaa !2449
  %262 = lshr i32 %236, 31
  %263 = lshr i32 %241, 31
  %264 = xor i32 %260, %262
  %265 = xor i32 %260, %263
  %266 = add nuw nsw i32 %264, %265
  %267 = icmp eq i32 %266, 2
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %22, align 1, !tbaa !2450
  %269 = load i64, i64* %RBP, align 8
  %270 = add i64 %269, -16
  %271 = load i32, i32* %EAX, align 4
  %272 = add i64 %533, 38
  store i64 %272, i64* %PC, align 8
  %273 = inttoptr i64 %270 to i32*
  store i32 %271, i32* %273, align 4
  %274 = load i32, i32* %ESI, align 4
  %275 = zext i32 %274 to i64
  %276 = load i64, i64* %PC, align 8
  store i64 %275, i64* %RAX, align 8, !tbaa !2428
  %277 = sext i32 %274 to i64
  %278 = lshr i64 %277, 32
  store i64 %278, i64* %95, align 8, !tbaa !2428
  %279 = load i64, i64* %RBP, align 8
  %280 = add i64 %279, -16
  %281 = add i64 %276, 6
  store i64 %281, i64* %PC, align 8
  %282 = inttoptr i64 %280 to i32*
  %283 = load i32, i32* %282, align 4
  %284 = zext i32 %283 to i64
  store i64 %284, i64* %RSI, align 8, !tbaa !2428
  %285 = add i64 %276, 8
  store i64 %285, i64* %PC, align 8
  %286 = sext i32 %283 to i64
  %287 = shl nuw i64 %278, 32
  %288 = or i64 %287, %275
  %289 = sdiv i64 %288, %286
  %290 = shl i64 %289, 32
  %291 = ashr exact i64 %290, 32
  %292 = icmp eq i64 %289, %291
  br i1 %292, label %295, label %293

; <label>:293:                                    ; preds = %block_401a2f
  %294 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %285, %struct.Memory* %MEMORY.4) #12
  %.pre22 = load i32, i32* %EDX, align 4
  %.pre23 = load i64, i64* %PC, align 8
  %.pre24 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:295:                                    ; preds = %block_401a2f
  %296 = srem i64 %288, %286
  %297 = and i64 %289, 4294967295
  store i64 %297, i64* %RAX, align 8, !tbaa !2428
  %298 = and i64 %296, 4294967295
  store i64 %298, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 0, i8* %18, align 1, !tbaa !2446
  store i8 0, i8* %19, align 1, !tbaa !2447
  store i8 0, i8* %20, align 1, !tbaa !2448
  store i8 0, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  %299 = trunc i64 %296 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %295, %293
  %300 = phi i64 [ %.pre24, %293 ], [ %279, %295 ]
  %301 = phi i64 [ %.pre23, %293 ], [ %285, %295 ]
  %302 = phi i32 [ %.pre22, %293 ], [ %299, %295 ]
  %303 = phi %struct.Memory* [ %294, %293 ], [ %MEMORY.4, %295 ]
  %304 = sext i32 %302 to i64
  store i64 %304, i64* %RDI, align 8, !tbaa !2428
  %305 = load i64, i64* %RCX, align 8
  %306 = shl nsw i64 %304, 2
  %307 = add i64 %306, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %308 = add i64 %301, 10
  store i64 %308, i64* %PC, align 8
  %309 = trunc i64 %305 to i32
  %310 = inttoptr i64 %307 to i32*
  %311 = load i32, i32* %310, align 4
  %312 = xor i32 %311, %309
  %313 = zext i32 %312 to i64
  store i64 %313, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  %314 = and i32 %312, 255
  %315 = tail call i32 @llvm.ctpop.i32(i32 %314) #9
  %316 = trunc i32 %315 to i8
  %317 = and i8 %316, 1
  %318 = xor i8 %317, 1
  store i8 %318, i8* %18, align 1, !tbaa !2446
  %319 = icmp eq i32 %312, 0
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %20, align 1, !tbaa !2448
  %321 = lshr i32 %312, 31
  %322 = trunc i32 %321 to i8
  store i8 %322, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  store i8 0, i8* %19, align 1, !tbaa !2447
  %323 = add i64 %300, -8
  %324 = add i64 %301, 14
  store i64 %324, i64* %PC, align 8
  %325 = inttoptr i64 %323 to i32*
  %326 = load i32, i32* %325, align 4
  %327 = sext i32 %326 to i64
  store i64 %327, i64* %RDI, align 8, !tbaa !2428
  %328 = shl nsw i64 %327, 2
  %329 = add i64 %328, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %330 = add i64 %301, 21
  store i64 %330, i64* %PC, align 8
  %331 = inttoptr i64 %329 to i32*
  store i32 %312, i32* %331, align 4
  %332 = load i64, i64* %PC, align 8
  %333 = add i64 %332, 32
  store i64 %333, i64* %PC, align 8, !tbaa !2428
  br label %block_401a92

block_401b2d:                                     ; preds = %block_4019d9
  %334 = add i64 %359, 1
  store i64 %334, i64* %PC, align 8
  %335 = load i64, i64* %9, align 8, !tbaa !2428
  %336 = add i64 %335, 8
  %337 = inttoptr i64 %335 to i64*
  %338 = load i64, i64* %337, align 8
  store i64 %338, i64* %RBP, align 8, !tbaa !2428
  store i64 %336, i64* %9, align 8, !tbaa !2428
  %339 = add i64 %359, 2
  store i64 %339, i64* %PC, align 8
  %340 = inttoptr i64 %336 to i64*
  %341 = load i64, i64* %340, align 8
  store i64 %341, i64* %PC, align 8, !tbaa !2428
  %342 = add i64 %335, 16
  store i64 %342, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_4019d9:                                     ; preds = %block_401b1a, %block_4019d2
  %343 = phi i64 [ %.pre20, %block_4019d2 ], [ %566, %block_401b1a ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4019d2 ], [ %MEMORY.2, %block_401b1a ]
  %344 = load i64, i64* %RBP, align 8
  %345 = add i64 %344, -4
  %346 = add i64 %343, 4
  store i64 %346, i64* %PC, align 8
  %347 = inttoptr i64 %345 to i32*
  %348 = load i32, i32* %347, align 4
  store i8 0, i8* %17, align 1, !tbaa !2432
  %349 = and i32 %348, 255
  %350 = tail call i32 @llvm.ctpop.i32(i32 %349) #9
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  %353 = xor i8 %352, 1
  store i8 %353, i8* %18, align 1, !tbaa !2446
  store i8 0, i8* %19, align 1, !tbaa !2447
  %354 = icmp eq i32 %348, 0
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %20, align 1, !tbaa !2448
  %356 = lshr i32 %348, 31
  %357 = trunc i32 %356 to i8
  store i8 %357, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  %358 = icmp ne i8 %357, 0
  %.v = select i1 %358, i64 336, i64 6
  %359 = add i64 %346, %.v
  store i64 %359, i64* %PC, align 8, !tbaa !2428
  br i1 %358, label %block_401b2d, label %block_4019e3

block_4019ab:                                     ; preds = %block_4019b5, %block_4019a0
  %360 = phi i64 [ %197, %block_4019b5 ], [ %.pre, %block_4019a0 ]
  %361 = load i64, i64* %RBP, align 8
  %362 = add i64 %361, -4
  %363 = add i64 %360, 4
  store i64 %363, i64* %PC, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = add i32 %365, -16
  %367 = icmp ult i32 %365, 16
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %17, align 1, !tbaa !2432
  %369 = and i32 %366, 255
  %370 = tail call i32 @llvm.ctpop.i32(i32 %369) #9
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  %373 = xor i8 %372, 1
  store i8 %373, i8* %18, align 1, !tbaa !2446
  %374 = xor i32 %365, 16
  %375 = xor i32 %374, %366
  %376 = lshr i32 %375, 4
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  store i8 %378, i8* %19, align 1, !tbaa !2447
  %379 = icmp eq i32 %366, 0
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %20, align 1, !tbaa !2448
  %381 = lshr i32 %366, 31
  %382 = trunc i32 %381 to i8
  store i8 %382, i8* %21, align 1, !tbaa !2449
  %383 = lshr i32 %365, 31
  %384 = xor i32 %381, %383
  %385 = add nuw nsw i32 %384, %383
  %386 = icmp eq i32 %385, 2
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %22, align 1, !tbaa !2450
  %388 = icmp ne i8 %382, 0
  %389 = xor i1 %388, %386
  %.v32 = select i1 %389, i64 10, i64 39
  %390 = add i64 %360, %.v32
  store i64 %390, i64* %PC, align 8, !tbaa !2428
  br i1 %389, label %block_4019b5, label %block_4019d2

block_401a77:                                     ; preds = %block_401a1d
  %391 = add i64 %533, 3
  store i64 %391, i64* %PC, align 8
  %392 = load i32, i32* %589, align 4
  %393 = add i32 %392, -1
  %394 = zext i32 %393 to i64
  store i64 %394, i64* %RAX, align 8, !tbaa !2428
  %395 = icmp eq i32 %392, 0
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %17, align 1, !tbaa !2432
  %397 = and i32 %393, 255
  %398 = tail call i32 @llvm.ctpop.i32(i32 %397) #9
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  %401 = xor i8 %400, 1
  store i8 %401, i8* %18, align 1, !tbaa !2446
  %402 = xor i32 %393, %392
  %403 = lshr i32 %402, 4
  %404 = trunc i32 %403 to i8
  %405 = and i8 %404, 1
  store i8 %405, i8* %19, align 1, !tbaa !2447
  %406 = icmp eq i32 %393, 0
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %20, align 1, !tbaa !2448
  %408 = lshr i32 %393, 31
  %409 = trunc i32 %408 to i8
  store i8 %409, i8* %21, align 1, !tbaa !2449
  %410 = lshr i32 %392, 31
  %411 = xor i32 %408, %410
  %412 = add nuw nsw i32 %411, %410
  %413 = icmp eq i32 %412, 2
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %22, align 1, !tbaa !2450
  %415 = sext i32 %393 to i64
  store i64 %415, i64* %RCX, align 8, !tbaa !2428
  %416 = shl nsw i64 %415, 2
  %417 = add i64 %416, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %418 = add i64 %533, 16
  store i64 %418, i64* %PC, align 8
  %419 = inttoptr i64 %417 to i32*
  %420 = load i32, i32* %419, align 4
  %421 = zext i32 %420 to i64
  store i64 %421, i64* %RAX, align 8, !tbaa !2428
  %422 = add i64 %533, 20
  store i64 %422, i64* %PC, align 8
  %423 = load i32, i32* %589, align 4
  %424 = sext i32 %423 to i64
  store i64 %424, i64* %RCX, align 8, !tbaa !2428
  %425 = shl nsw i64 %424, 2
  %426 = add i64 %425, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %427 = add i64 %533, 27
  store i64 %427, i64* %PC, align 8
  %428 = inttoptr i64 %426 to i32*
  store i32 %420, i32* %428, align 4
  %.pre25 = load i64, i64* %PC, align 8
  br label %block_401a92

block_401aa5:                                     ; preds = %block_401a13
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %429 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104) to i32*), align 16
  %430 = zext i32 %429 to i64
  store i64 %430, i64* %RCX, align 8, !tbaa !2428
  %431 = add i64 %586, -12
  %432 = add i64 %602, 15
  store i64 %432, i64* %PC, align 8
  %433 = inttoptr i64 %431 to i32*
  %434 = load i32, i32* %433, align 4
  %435 = add i32 %434, %429
  %436 = zext i32 %435 to i64
  store i64 %436, i64* %RCX, align 8, !tbaa !2428
  %437 = icmp ult i32 %435, %429
  %438 = icmp ult i32 %435, %434
  %439 = or i1 %437, %438
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %17, align 1, !tbaa !2432
  %441 = and i32 %435, 255
  %442 = tail call i32 @llvm.ctpop.i32(i32 %441) #9
  %443 = trunc i32 %442 to i8
  %444 = and i8 %443, 1
  %445 = xor i8 %444, 1
  store i8 %445, i8* %18, align 1, !tbaa !2446
  %446 = xor i32 %434, %429
  %447 = xor i32 %446, %435
  %448 = lshr i32 %447, 4
  %449 = trunc i32 %448 to i8
  %450 = and i8 %449, 1
  store i8 %450, i8* %19, align 1, !tbaa !2447
  %451 = icmp eq i32 %435, 0
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %20, align 1, !tbaa !2448
  %453 = lshr i32 %435, 31
  %454 = trunc i32 %453 to i8
  store i8 %454, i8* %21, align 1, !tbaa !2449
  %455 = lshr i32 %429, 31
  %456 = lshr i32 %434, 31
  %457 = xor i32 %453, %455
  %458 = xor i32 %453, %456
  %459 = add nuw nsw i32 %457, %458
  %460 = icmp eq i32 %459, 2
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %22, align 1, !tbaa !2450
  %462 = add i64 %586, -20
  %463 = add i64 %602, 18
  store i64 %463, i64* %PC, align 8
  %464 = inttoptr i64 %462 to i32*
  store i32 255, i32* %464, align 4
  %465 = load i32, i32* %ECX, align 4
  %466 = zext i32 %465 to i64
  %467 = load i64, i64* %PC, align 8
  store i64 %466, i64* %RAX, align 8, !tbaa !2428
  %468 = sext i32 %465 to i64
  %469 = lshr i64 %468, 32
  store i64 %469, i64* %95, align 8, !tbaa !2428
  %470 = load i64, i64* %RBP, align 8
  %471 = add i64 %470, -20
  %472 = add i64 %467, 6
  store i64 %472, i64* %PC, align 8
  %473 = inttoptr i64 %471 to i32*
  %474 = load i32, i32* %473, align 4
  %475 = zext i32 %474 to i64
  store i64 %475, i64* %RCX, align 8, !tbaa !2428
  %476 = add i64 %467, 8
  store i64 %476, i64* %PC, align 8
  %477 = sext i32 %474 to i64
  %478 = shl nuw i64 %469, 32
  %479 = or i64 %478, %466
  %480 = sdiv i64 %479, %477
  %481 = shl i64 %480, 32
  %482 = ashr exact i64 %481, 32
  %483 = icmp eq i64 %480, %482
  br i1 %483, label %486, label %484

; <label>:484:                                    ; preds = %block_401aa5
  %485 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %476, %struct.Memory* %MEMORY.4) #12
  %.pre26 = load i32, i32* %EDX, align 4
  %.pre27 = load i64, i64* %PC, align 8
  %.pre29.pre = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:486:                                    ; preds = %block_401aa5
  %487 = srem i64 %479, %477
  %488 = and i64 %480, 4294967295
  store i64 %488, i64* %RAX, align 8, !tbaa !2428
  %489 = and i64 %487, 4294967295
  store i64 %489, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 0, i8* %18, align 1, !tbaa !2446
  store i8 0, i8* %19, align 1, !tbaa !2447
  store i8 0, i8* %20, align 1, !tbaa !2448
  store i8 0, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  %490 = trunc i64 %487 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %486, %484
  %.pre29 = phi i64 [ %.pre29.pre, %484 ], [ %470, %486 ]
  %491 = phi i64 [ %.pre27, %484 ], [ %476, %486 ]
  %492 = phi i32 [ %.pre26, %484 ], [ %490, %486 ]
  %493 = phi %struct.Memory* [ %485, %484 ], [ %MEMORY.4, %486 ]
  %494 = sext i32 %492 to i64
  store i64 %494, i64* %RSI, align 8, !tbaa !2428
  %495 = shl nsw i64 %494, 2
  %496 = add i64 %495, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %497 = add i64 %491, 10
  store i64 %497, i64* %PC, align 8
  %498 = inttoptr i64 %496 to i32*
  %499 = load i32, i32* %498, align 4
  %500 = zext i32 %499 to i64
  store i64 %500, i64* %RDX, align 8, !tbaa !2428
  store i32 %499, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144) to i32*), align 16
  %501 = add i64 %491, 91
  store i64 %501, i64* %PC, align 8, !tbaa !2428
  br label %block_401b1a

block_401a1d:                                     ; preds = %block_401a13
  %502 = add i64 %602, 4
  store i64 %502, i64* %PC, align 8
  %503 = load i32, i32* %589, align 4
  %504 = sext i32 %503 to i64
  store i64 %504, i64* %RAX, align 8, !tbaa !2428
  %505 = shl nsw i64 %504, 2
  %506 = add i64 %505, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %507 = add i64 %602, 12
  store i64 %507, i64* %PC, align 8
  %508 = inttoptr i64 %506 to i32*
  %509 = load i32, i32* %508, align 4
  %510 = add i32 %509, 1
  %511 = icmp ne i32 %509, -1
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %17, align 1, !tbaa !2432
  %513 = and i32 %510, 255
  %514 = tail call i32 @llvm.ctpop.i32(i32 %513) #9
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  %517 = xor i8 %516, 1
  store i8 %517, i8* %18, align 1, !tbaa !2446
  %518 = xor i32 %509, 16
  %519 = xor i32 %518, %510
  %520 = lshr i32 %519, 4
  %521 = trunc i32 %520 to i8
  %522 = and i8 %521, 1
  store i8 %522, i8* %19, align 1, !tbaa !2447
  %523 = icmp eq i32 %510, 0
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %20, align 1, !tbaa !2448
  %525 = lshr i32 %510, 31
  %526 = trunc i32 %525 to i8
  store i8 %526, i8* %21, align 1, !tbaa !2449
  %527 = lshr i32 %509, 31
  %528 = xor i32 %527, 1
  %529 = xor i32 %525, %527
  %530 = add nuw nsw i32 %529, %528
  %531 = icmp eq i32 %530, 2
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %22, align 1, !tbaa !2450
  %.v34 = select i1 %523, i64 90, i64 18
  %533 = add i64 %602, %.v34
  store i64 %533, i64* %PC, align 8, !tbaa !2428
  br i1 %523, label %block_401a77, label %block_401a2f

block_401b1a:                                     ; preds = %block_401b0f, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %534 = phi i64 [ %568, %block_401b0f ], [ %.pre29, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %535 = phi i64 [ %636, %block_401b0f ], [ %501, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_401b0f ], [ %493, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %536 = add i64 %534, -4
  %537 = add i64 %535, 8
  store i64 %537, i64* %PC, align 8
  %538 = inttoptr i64 %536 to i32*
  %539 = load i32, i32* %538, align 4
  %540 = add i32 %539, -1
  %541 = zext i32 %540 to i64
  store i64 %541, i64* %RAX, align 8, !tbaa !2428
  %542 = icmp ne i32 %539, 0
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %17, align 1, !tbaa !2432
  %544 = and i32 %540, 255
  %545 = tail call i32 @llvm.ctpop.i32(i32 %544) #9
  %546 = trunc i32 %545 to i8
  %547 = and i8 %546, 1
  %548 = xor i8 %547, 1
  store i8 %548, i8* %18, align 1, !tbaa !2446
  %549 = xor i32 %539, 16
  %550 = xor i32 %549, %540
  %551 = lshr i32 %550, 4
  %552 = trunc i32 %551 to i8
  %553 = and i8 %552, 1
  store i8 %553, i8* %19, align 1, !tbaa !2447
  %554 = icmp eq i32 %540, 0
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %20, align 1, !tbaa !2448
  %556 = lshr i32 %540, 31
  %557 = trunc i32 %556 to i8
  store i8 %557, i8* %21, align 1, !tbaa !2449
  %558 = lshr i32 %539, 31
  %559 = xor i32 %556, %558
  %560 = xor i32 %556, 1
  %561 = add nuw nsw i32 %559, %560
  %562 = icmp eq i32 %561, 2
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %22, align 1, !tbaa !2450
  %564 = add i64 %535, 14
  store i64 %564, i64* %PC, align 8
  store i32 %540, i32* %538, align 4
  %565 = load i64, i64* %PC, align 8
  %566 = add i64 %565, -335
  store i64 %566, i64* %PC, align 8, !tbaa !2428
  br label %block_4019d9

block_401adc:                                     ; preds = %block_401adc.preheader, %block_401ae6
  %567 = phi i64 [ %93, %block_401ae6 ], [ %.pre28, %block_401adc.preheader ]
  %568 = load i64, i64* %RBP, align 8
  %569 = add i64 %568, -8
  %570 = add i64 %567, 4
  store i64 %570, i64* %PC, align 8
  %571 = inttoptr i64 %569 to i32*
  %572 = load i32, i32* %571, align 4
  store i8 0, i8* %17, align 1, !tbaa !2432
  %573 = and i32 %572, 255
  %574 = tail call i32 @llvm.ctpop.i32(i32 %573) #9
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  %577 = xor i8 %576, 1
  store i8 %577, i8* %18, align 1, !tbaa !2446
  store i8 0, i8* %19, align 1, !tbaa !2447
  %578 = icmp eq i32 %572, 0
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %20, align 1, !tbaa !2448
  %580 = lshr i32 %572, 31
  %581 = trunc i32 %580 to i8
  store i8 %581, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  %582 = icmp ne i8 %581, 0
  %583 = or i1 %578, %582
  %.v35 = select i1 %583, i64 51, i64 10
  %584 = add i64 %567, %.v35
  store i64 %584, i64* %PC, align 8, !tbaa !2428
  br i1 %583, label %block_401b0f, label %block_401ae6

block_401a13:                                     ; preds = %block_401a13.preheader, %block_401a92
  %585 = phi i64 [ %635, %block_401a92 ], [ %.pre28, %block_401a13.preheader ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.5, %block_401a92 ], [ %MEMORY.0, %block_401a13.preheader ]
  %586 = load i64, i64* %RBP, align 8
  %587 = add i64 %586, -8
  %588 = add i64 %585, 4
  store i64 %588, i64* %PC, align 8
  %589 = inttoptr i64 %587 to i32*
  %590 = load i32, i32* %589, align 4
  store i8 0, i8* %17, align 1, !tbaa !2432
  %591 = and i32 %590, 255
  %592 = tail call i32 @llvm.ctpop.i32(i32 %591) #9
  %593 = trunc i32 %592 to i8
  %594 = and i8 %593, 1
  %595 = xor i8 %594, 1
  store i8 %595, i8* %18, align 1, !tbaa !2446
  store i8 0, i8* %19, align 1, !tbaa !2447
  %596 = icmp eq i32 %590, 0
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %20, align 1, !tbaa !2448
  %598 = lshr i32 %590, 31
  %599 = trunc i32 %598 to i8
  store i8 %599, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  %600 = icmp ne i8 %599, 0
  %601 = or i1 %596, %600
  %.v33 = select i1 %601, i64 146, i64 10
  %602 = add i64 %585, %.v33
  store i64 %602, i64* %PC, align 8, !tbaa !2428
  br i1 %601, label %block_401aa5, label %block_401a1d

block_401a92:                                     ; preds = %block_401a77, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1
  %603 = phi i64 [ %.pre25, %block_401a77 ], [ %333, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.4, %block_401a77 ], [ %303, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %604 = load i64, i64* %RBP, align 8
  %605 = add i64 %604, -8
  %606 = add i64 %603, 8
  store i64 %606, i64* %PC, align 8
  %607 = inttoptr i64 %605 to i32*
  %608 = load i32, i32* %607, align 4
  %609 = add i32 %608, -1
  %610 = zext i32 %609 to i64
  store i64 %610, i64* %RAX, align 8, !tbaa !2428
  %611 = icmp ne i32 %608, 0
  %612 = zext i1 %611 to i8
  store i8 %612, i8* %17, align 1, !tbaa !2432
  %613 = and i32 %609, 255
  %614 = tail call i32 @llvm.ctpop.i32(i32 %613) #9
  %615 = trunc i32 %614 to i8
  %616 = and i8 %615, 1
  %617 = xor i8 %616, 1
  store i8 %617, i8* %18, align 1, !tbaa !2446
  %618 = xor i32 %608, 16
  %619 = xor i32 %618, %609
  %620 = lshr i32 %619, 4
  %621 = trunc i32 %620 to i8
  %622 = and i8 %621, 1
  store i8 %622, i8* %19, align 1, !tbaa !2447
  %623 = icmp eq i32 %609, 0
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %20, align 1, !tbaa !2448
  %625 = lshr i32 %609, 31
  %626 = trunc i32 %625 to i8
  store i8 %626, i8* %21, align 1, !tbaa !2449
  %627 = lshr i32 %608, 31
  %628 = xor i32 %625, %627
  %629 = xor i32 %625, 1
  %630 = add nuw nsw i32 %628, %629
  %631 = icmp eq i32 %630, 2
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %22, align 1, !tbaa !2450
  %633 = add i64 %603, 14
  store i64 %633, i64* %PC, align 8
  store i32 %609, i32* %607, align 4
  %634 = load i64, i64* %PC, align 8
  %635 = add i64 %634, -141
  store i64 %635, i64* %PC, align 8, !tbaa !2428
  br label %block_401a13

block_401b0f:                                     ; preds = %block_401adc
  %636 = add i64 %584, 11
  store i64 %636, i64* %PC, align 8
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144) to i32*), align 16
  br label %block_401b1a
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4003e0__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4003e0:
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
  %11 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602ff0__got_type* @seg_602ff0__got to i64), i64 8) to i64*), align 8
  store i64 %11, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %5, align 1, !tbaa !2432
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #9
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %6, align 1, !tbaa !2446
  %18 = icmp eq i64 %11, 0
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %8, align 1, !tbaa !2448
  %20 = lshr i64 %11, 63
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %9, align 1, !tbaa !2449
  store i8 0, i8* %10, align 1, !tbaa !2450
  store i8 0, i8* %7, align 1, !tbaa !2447
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %1
  store i64 %22, i64* %PC, align 8, !tbaa !2428
  br i1 %18, label %block_4003f2, label %block_4003f0

block_4003f0:                                     ; preds = %block_4003e0
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_4003f2

block_4003f2:                                     ; preds = %block_4003f0, %block_4003e0
  %27 = phi i64 [ %22, %block_4003e0 ], [ %.pre1, %block_4003f0 ]
  %28 = phi i64 [ %4, %block_4003e0 ], [ %.pre, %block_4003f0 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4003e0 ], [ %26, %block_4003f0 ]
  %29 = add i64 %28, 8
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  %30 = icmp ugt i64 %28, -9
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %5, align 1, !tbaa !2432
  %32 = trunc i64 %29 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #9
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %6, align 1, !tbaa !2446
  %38 = xor i64 %29, %28
  %39 = lshr i64 %38, 4
  %40 = trunc i64 %39 to i8
  %41 = and i8 %40, 1
  store i8 %41, i8* %7, align 1, !tbaa !2447
  %42 = icmp eq i64 %29, 0
  %43 = zext i1 %42 to i8
  store i8 %43, i8* %8, align 1, !tbaa !2448
  %44 = lshr i64 %29, 63
  %45 = trunc i64 %44 to i8
  store i8 %45, i8* %9, align 1, !tbaa !2449
  %46 = lshr i64 %28, 63
  %47 = xor i64 %44, %46
  %48 = add nuw nsw i64 %47, %44
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  store i8 %50, i8* %10, align 1, !tbaa !2450
  %51 = add i64 %27, 5
  store i64 %51, i64* %PC, align 8
  %52 = inttoptr i64 %29 to i64*
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %PC, align 8, !tbaa !2428
  %54 = add i64 %28, 16
  store i64 %54, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400490_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400490:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 6303832, i64* %RSI, align 8, !tbaa !2428
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %1, 6
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* %RSP, align 8, !tbaa !2428
  %6 = add i64 %5, -8
  %7 = inttoptr i64 %6 to i64*
  store i64 %3, i64* %7, align 8
  store i64 %6, i64* %RSP, align 8, !tbaa !2428
  %8 = load i64, i64* %RSI, align 8
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %8, -6303832
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i64 %6, i64* %RBP, align 8, !tbaa !2428
  %17 = ashr i64 %10, 3
  %18 = lshr i64 %17, 63
  store i64 %18, i64* %RAX, align 8, !tbaa !2428
  %19 = add nsw i64 %18, %17
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = ashr i64 %19, 1
  store i64 %22, i64* %RSI, align 8, !tbaa !2428
  store i8 %21, i8* %11, align 1, !tbaa !2451
  %23 = trunc i64 %22 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #9
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %12, align 1, !tbaa !2451
  store i8 0, i8* %13, align 1, !tbaa !2451
  %29 = icmp eq i64 %22, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %14, align 1, !tbaa !2451
  %31 = lshr i64 %22, 63
  %32 = trunc i64 %31 to i8
  store i8 %32, i8* %15, align 1, !tbaa !2451
  store i8 0, i8* %16, align 1, !tbaa !2451
  %.v = select i1 %29, i64 50, i64 29
  %33 = add i64 %9, %.v
  store i64 %33, i64* %PC, align 8, !tbaa !2428
  br i1 %29, label %block_4004c8, label %block_4004b3

block_4004b3:                                     ; preds = %block_400490
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2432
  store i8 1, i8* %12, align 1, !tbaa !2446
  store i8 1, i8* %14, align 1, !tbaa !2448
  store i8 0, i8* %15, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  store i8 0, i8* %13, align 1, !tbaa !2447
  %34 = add i64 %33, 21
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  br label %block_4004c8

block_4004c8:                                     ; preds = %block_4004b3, %block_400490
  %35 = phi i64 [ %34, %block_4004b3 ], [ %33, %block_400490 ]
  %36 = add i64 %35, 1
  store i64 %36, i64* %PC, align 8
  %37 = load i64, i64* %RSP, align 8, !tbaa !2428
  %38 = add i64 %37, 8
  %39 = inttoptr i64 %37 to i64*
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %RBP, align 8, !tbaa !2428
  store i64 %38, i64* %RSP, align 8, !tbaa !2428
  %41 = add i64 %35, 2
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %38 to i64*
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %PC, align 8, !tbaa !2428
  %44 = add i64 %37, 16
  store i64 %44, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401870_rsenc_204(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401870:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %17 = add i64 %6, -16
  %18 = load i64, i64* %RDI, align 8
  %19 = add i64 %9, 11
  store i64 %19, i64* %PC, align 8
  %20 = inttoptr i64 %17 to i64*
  store i64 %18, i64* %20, align 8
  %21 = load i64, i64* %RBP, align 8
  %22 = add i64 %21, -16
  %23 = load i64, i64* %RSI, align 8
  %24 = load i64, i64* %PC, align 8
  %25 = add i64 %24, 4
  store i64 %25, i64* %PC, align 8
  %26 = inttoptr i64 %22 to i64*
  store i64 %23, i64* %26, align 8
  %27 = load i64, i64* %PC, align 8
  %28 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 16) to i32*), align 16
  store i8 0, i8* %11, align 1, !tbaa !2432
  %29 = and i32 %28, 255
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29) #9
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  store i8 %33, i8* %12, align 1, !tbaa !2446
  store i8 0, i8* %13, align 1, !tbaa !2447
  %34 = icmp eq i32 %28, 0
  %35 = zext i1 %34 to i8
  store i8 %35, i8* %14, align 1, !tbaa !2448
  %36 = lshr i32 %28, 31
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %15, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  %.v = select i1 %34, i64 14, i64 35
  %38 = add i64 %27, %.v
  store i64 %38, i64* %PC, align 8, !tbaa !2428
  br i1 %34, label %block_40188e, label %block_4018a3

block_40191b:                                     ; preds = %block_401928, %block_40190f
  %39 = phi i64 [ %349, %block_401928 ], [ %.pre16, %block_40190f ]
  %40 = load i64, i64* %RBP, align 8
  %41 = add i64 %40, -20
  %42 = add i64 %39, 7
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %41 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = add i32 %44, -188
  %46 = icmp ult i32 %44, 188
  %47 = zext i1 %46 to i8
  store i8 %47, i8* %11, align 1, !tbaa !2432
  %48 = and i32 %45, 255
  %49 = tail call i32 @llvm.ctpop.i32(i32 %48) #9
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 1
  %52 = xor i8 %51, 1
  store i8 %52, i8* %12, align 1, !tbaa !2446
  %53 = xor i32 %44, 16
  %54 = xor i32 %53, %45
  %55 = lshr i32 %54, 4
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  store i8 %57, i8* %13, align 1, !tbaa !2447
  %58 = icmp eq i32 %45, 0
  %59 = zext i1 %58 to i8
  store i8 %59, i8* %14, align 1, !tbaa !2448
  %60 = lshr i32 %45, 31
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %15, align 1, !tbaa !2449
  %62 = lshr i32 %44, 31
  %63 = xor i32 %60, %62
  %64 = add nuw nsw i32 %63, %62
  %65 = icmp eq i32 %64, 2
  %66 = zext i1 %65 to i8
  store i8 %66, i8* %16, align 1, !tbaa !2450
  %67 = icmp ne i8 %61, 0
  %68 = xor i1 %67, %65
  %.v20 = select i1 %68, i64 13, i64 49
  %69 = add i64 %39, %.v20
  store i64 %69, i64* %PC, align 8, !tbaa !2428
  br i1 %68, label %block_401928, label %block_40194c

block_4018d8:                                     ; preds = %block_4018e5, %block_4018d1
  %70 = phi i64 [ %424, %block_4018e5 ], [ %.pre15, %block_4018d1 ]
  %71 = load i64, i64* %RBP, align 8
  %72 = add i64 %71, -20
  %73 = add i64 %70, 7
  store i64 %73, i64* %PC, align 8
  %74 = inttoptr i64 %72 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = add i32 %75, -188
  %77 = icmp ult i32 %75, 188
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %11, align 1, !tbaa !2432
  %79 = and i32 %76, 255
  %80 = tail call i32 @llvm.ctpop.i32(i32 %79) #9
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  %83 = xor i8 %82, 1
  store i8 %83, i8* %12, align 1, !tbaa !2446
  %84 = xor i32 %75, 16
  %85 = xor i32 %84, %76
  %86 = lshr i32 %85, 4
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  store i8 %88, i8* %13, align 1, !tbaa !2447
  %89 = icmp eq i32 %76, 0
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %14, align 1, !tbaa !2448
  %91 = lshr i32 %76, 31
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %15, align 1, !tbaa !2449
  %93 = lshr i32 %75, 31
  %94 = xor i32 %91, %93
  %95 = add nuw nsw i32 %94, %93
  %96 = icmp eq i32 %95, 2
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %16, align 1, !tbaa !2450
  %98 = icmp ne i8 %92, 0
  %99 = xor i1 %98, %96
  %.v19 = select i1 %99, i64 13, i64 55
  %100 = add i64 %70, %.v19
  store i64 %100, i64* %PC, align 8, !tbaa !2428
  br i1 %99, label %block_4018e5, label %block_40190f

block_4018d1:                                     ; preds = %block_4018aa
  %101 = add i64 %296, 7
  store i64 %101, i64* %PC, align 8
  store i32 0, i32* %270, align 4
  %.pre15 = load i64, i64* %PC, align 8
  br label %block_4018d8

block_401953:                                     ; preds = %block_40194c, %block_40195d
  %102 = phi i64 [ %.pre17, %block_40194c ], [ %233, %block_40195d ]
  %103 = load i64, i64* %RBP, align 8
  %104 = add i64 %103, -20
  %105 = add i64 %102, 4
  store i64 %105, i64* %PC, align 8
  %106 = inttoptr i64 %104 to i32*
  %107 = load i32, i32* %106, align 4
  %108 = add i32 %107, -16
  %109 = icmp ult i32 %107, 16
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %11, align 1, !tbaa !2432
  %111 = and i32 %108, 255
  %112 = tail call i32 @llvm.ctpop.i32(i32 %111) #9
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = xor i8 %114, 1
  store i8 %115, i8* %12, align 1, !tbaa !2446
  %116 = xor i32 %107, 16
  %117 = xor i32 %116, %108
  %118 = lshr i32 %117, 4
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  store i8 %120, i8* %13, align 1, !tbaa !2447
  %121 = icmp eq i32 %108, 0
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %14, align 1, !tbaa !2448
  %123 = lshr i32 %108, 31
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %15, align 1, !tbaa !2449
  %125 = lshr i32 %107, 31
  %126 = xor i32 %123, %125
  %127 = add nuw nsw i32 %126, %125
  %128 = icmp eq i32 %127, 2
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %16, align 1, !tbaa !2450
  %130 = icmp ne i8 %124, 0
  %131 = xor i1 %130, %128
  %.v21 = select i1 %131, i64 10, i64 56
  %132 = add i64 %102, %.v21
  store i64 %132, i64* %PC, align 8, !tbaa !2428
  br i1 %131, label %block_40195d, label %block_40198b

block_40190f:                                     ; preds = %block_4018d8
  %133 = add i64 %100, 145
  %134 = add i64 %100, 5
  %135 = load i64, i64* %RSP, align 8, !tbaa !2428
  %136 = add i64 %135, -8
  %137 = inttoptr i64 %136 to i64*
  store i64 %134, i64* %137, align 8
  store i64 %136, i64* %RSP, align 8, !tbaa !2428
  store i64 %133, i64* %PC, align 8, !tbaa !2428
  %138 = tail call %struct.Memory* @sub_4019a0_encode_rs(%struct.State* nonnull %0, i64 %133, %struct.Memory* %MEMORY.4)
  %139 = load i64, i64* %RBP, align 8
  %140 = add i64 %139, -20
  %141 = load i64, i64* %PC, align 8
  %142 = add i64 %141, 7
  store i64 %142, i64* %PC, align 8
  %143 = inttoptr i64 %140 to i32*
  store i32 0, i32* %143, align 4
  %.pre16 = load i64, i64* %PC, align 8
  br label %block_40191b

block_40188e:                                     ; preds = %block_401870
  %144 = add i64 %38, -4622
  %145 = add i64 %38, 5
  %146 = load i64, i64* %RSP, align 8, !tbaa !2428
  %147 = add i64 %146, -8
  %148 = inttoptr i64 %147 to i64*
  store i64 %145, i64* %148, align 8
  store i64 %147, i64* %RSP, align 8, !tbaa !2428
  store i64 %144, i64* %PC, align 8, !tbaa !2428
  %149 = tail call %struct.Memory* @sub_400680_generate_gf(%struct.State* nonnull %0, i64 %144, %struct.Memory* %2)
  %150 = load i64, i64* %PC, align 8
  %151 = add i64 %150, -4291
  %152 = add i64 %150, 5
  %153 = load i64, i64* %RSP, align 8, !tbaa !2428
  %154 = add i64 %153, -8
  %155 = inttoptr i64 %154 to i64*
  store i64 %152, i64* %155, align 8
  store i64 %154, i64* %RSP, align 8, !tbaa !2428
  store i64 %151, i64* %PC, align 8, !tbaa !2428
  %156 = tail call %struct.Memory* @sub_4007d0_gen_poly(%struct.State* nonnull %0, i64 %151, %struct.Memory* %149)
  %157 = load i64, i64* %PC, align 8
  %158 = add i64 %157, 11
  store i64 %158, i64* %PC, align 8
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 16) to i32*), align 16
  br label %block_4018a3

block_40195d:                                     ; preds = %block_401953
  %159 = add i64 %132, 4
  store i64 %159, i64* %PC, align 8
  %160 = load i32, i32* %106, align 4
  %161 = sext i32 %160 to i64
  store i64 %161, i64* %RAX, align 8, !tbaa !2428
  %162 = shl nsw i64 %161, 2
  %163 = add i64 %162, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %164 = add i64 %132, 11
  store i64 %164, i64* %PC, align 8
  %165 = inttoptr i64 %163 to i32*
  %166 = load i32, i32* %165, align 4
  %167 = zext i32 %166 to i64
  store i64 %167, i64* %RCX, align 8, !tbaa !2428
  %168 = trunc i32 %166 to i8
  store i8 %168, i8* %DL, align 1, !tbaa !2451
  %169 = add i64 %103, -8
  %170 = add i64 %132, 17
  store i64 %170, i64* %PC, align 8
  %171 = inttoptr i64 %169 to i64*
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %RAX, align 8, !tbaa !2428
  %173 = add i64 %132, 20
  store i64 %173, i64* %PC, align 8
  %174 = load i32, i32* %106, align 4
  %175 = add i32 %174, 188
  %176 = zext i32 %175 to i64
  store i64 %176, i64* %RCX, align 8, !tbaa !2428
  %177 = icmp ugt i32 %174, -189
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %11, align 1, !tbaa !2432
  %179 = and i32 %175, 255
  %180 = tail call i32 @llvm.ctpop.i32(i32 %179) #9
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  %183 = xor i8 %182, 1
  store i8 %183, i8* %12, align 1, !tbaa !2446
  %184 = xor i32 %174, 16
  %185 = xor i32 %184, %175
  %186 = lshr i32 %185, 4
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  store i8 %188, i8* %13, align 1, !tbaa !2447
  %189 = icmp eq i32 %175, 0
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %14, align 1, !tbaa !2448
  %191 = lshr i32 %175, 31
  %192 = trunc i32 %191 to i8
  store i8 %192, i8* %15, align 1, !tbaa !2449
  %193 = lshr i32 %174, 31
  %194 = xor i32 %191, %193
  %195 = add nuw nsw i32 %194, %191
  %196 = icmp eq i32 %195, 2
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %16, align 1, !tbaa !2450
  %198 = sext i32 %175 to i64
  store i64 %198, i64* %RSI, align 8, !tbaa !2428
  %199 = add i64 %172, %198
  %200 = add i64 %132, 32
  store i64 %200, i64* %PC, align 8
  %201 = inttoptr i64 %199 to i8*
  store i8 %168, i8* %201, align 1
  %202 = load i64, i64* %RBP, align 8
  %203 = add i64 %202, -20
  %204 = load i64, i64* %PC, align 8
  %205 = add i64 %204, 3
  store i64 %205, i64* %PC, align 8
  %206 = inttoptr i64 %203 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = add i32 %207, 1
  %209 = zext i32 %208 to i64
  store i64 %209, i64* %RAX, align 8, !tbaa !2428
  %210 = icmp eq i32 %207, -1
  %211 = icmp eq i32 %208, 0
  %212 = or i1 %210, %211
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %11, align 1, !tbaa !2432
  %214 = and i32 %208, 255
  %215 = tail call i32 @llvm.ctpop.i32(i32 %214) #9
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  %218 = xor i8 %217, 1
  store i8 %218, i8* %12, align 1, !tbaa !2446
  %219 = xor i32 %208, %207
  %220 = lshr i32 %219, 4
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  store i8 %222, i8* %13, align 1, !tbaa !2447
  %223 = zext i1 %211 to i8
  store i8 %223, i8* %14, align 1, !tbaa !2448
  %224 = lshr i32 %208, 31
  %225 = trunc i32 %224 to i8
  store i8 %225, i8* %15, align 1, !tbaa !2449
  %226 = lshr i32 %207, 31
  %227 = xor i32 %224, %226
  %228 = add nuw nsw i32 %227, %224
  %229 = icmp eq i32 %228, 2
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %16, align 1, !tbaa !2450
  %231 = add i64 %204, 9
  store i64 %231, i64* %PC, align 8
  store i32 %208, i32* %206, align 4
  %232 = load i64, i64* %PC, align 8
  %233 = add i64 %232, -51
  store i64 %233, i64* %PC, align 8, !tbaa !2428
  br label %block_401953

block_40194c:                                     ; preds = %block_40191b
  %234 = add i64 %69, 7
  store i64 %234, i64* %PC, align 8
  store i32 0, i32* %43, align 4
  %.pre17 = load i64, i64* %PC, align 8
  br label %block_401953

block_40198b:                                     ; preds = %block_401953
  %235 = load i64, i64* %RSP, align 8
  %236 = add i64 %235, 32
  store i64 %236, i64* %RSP, align 8, !tbaa !2428
  %237 = icmp ugt i64 %235, -33
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %11, align 1, !tbaa !2432
  %239 = trunc i64 %236 to i32
  %240 = and i32 %239, 255
  %241 = tail call i32 @llvm.ctpop.i32(i32 %240) #9
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  %244 = xor i8 %243, 1
  store i8 %244, i8* %12, align 1, !tbaa !2446
  %245 = xor i64 %236, %235
  %246 = lshr i64 %245, 4
  %247 = trunc i64 %246 to i8
  %248 = and i8 %247, 1
  store i8 %248, i8* %13, align 1, !tbaa !2447
  %249 = icmp eq i64 %236, 0
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %14, align 1, !tbaa !2448
  %251 = lshr i64 %236, 63
  %252 = trunc i64 %251 to i8
  store i8 %252, i8* %15, align 1, !tbaa !2449
  %253 = lshr i64 %235, 63
  %254 = xor i64 %251, %253
  %255 = add nuw nsw i64 %254, %251
  %256 = icmp eq i64 %255, 2
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %16, align 1, !tbaa !2450
  %258 = add i64 %132, 5
  store i64 %258, i64* %PC, align 8
  %259 = add i64 %235, 40
  %260 = inttoptr i64 %236 to i64*
  %261 = load i64, i64* %260, align 8
  store i64 %261, i64* %RBP, align 8, !tbaa !2428
  store i64 %259, i64* %RSP, align 8, !tbaa !2428
  %262 = add i64 %132, 6
  store i64 %262, i64* %PC, align 8
  %263 = inttoptr i64 %259 to i64*
  %264 = load i64, i64* %263, align 8
  store i64 %264, i64* %PC, align 8, !tbaa !2428
  %265 = add i64 %235, 48
  store i64 %265, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %138

block_4018aa:                                     ; preds = %block_4018a3, %block_4018b4
  %266 = phi i64 [ %.pre, %block_4018a3 ], [ %463, %block_4018b4 ]
  %267 = load i64, i64* %RBP, align 8
  %268 = add i64 %267, -20
  %269 = add i64 %266, 4
  store i64 %269, i64* %PC, align 8
  %270 = inttoptr i64 %268 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = add i32 %271, -51
  %273 = icmp ult i32 %271, 51
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %11, align 1, !tbaa !2432
  %275 = and i32 %272, 255
  %276 = tail call i32 @llvm.ctpop.i32(i32 %275) #9
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  %279 = xor i8 %278, 1
  store i8 %279, i8* %12, align 1, !tbaa !2446
  %280 = xor i32 %271, 16
  %281 = xor i32 %280, %272
  %282 = lshr i32 %281, 4
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  store i8 %284, i8* %13, align 1, !tbaa !2447
  %285 = icmp eq i32 %272, 0
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %14, align 1, !tbaa !2448
  %287 = lshr i32 %272, 31
  %288 = trunc i32 %287 to i8
  store i8 %288, i8* %15, align 1, !tbaa !2449
  %289 = lshr i32 %271, 31
  %290 = xor i32 %287, %289
  %291 = add nuw nsw i32 %290, %289
  %292 = icmp eq i32 %291, 2
  %293 = zext i1 %292 to i8
  store i8 %293, i8* %16, align 1, !tbaa !2450
  %294 = icmp ne i8 %288, 0
  %295 = xor i1 %294, %292
  %.v18 = select i1 %295, i64 10, i64 39
  %296 = add i64 %266, %.v18
  store i64 %296, i64* %PC, align 8, !tbaa !2428
  br i1 %295, label %block_4018b4, label %block_4018d1

block_401928:                                     ; preds = %block_40191b
  %297 = add i64 %40, -16
  %298 = add i64 %69, 4
  store i64 %298, i64* %PC, align 8
  %299 = inttoptr i64 %297 to i64*
  %300 = load i64, i64* %299, align 8
  store i64 %300, i64* %RAX, align 8, !tbaa !2428
  %301 = add i64 %69, 8
  store i64 %301, i64* %PC, align 8
  %302 = load i32, i32* %43, align 4
  %303 = sext i32 %302 to i64
  store i64 %303, i64* %RCX, align 8, !tbaa !2428
  %304 = add i64 %300, %303
  %305 = add i64 %69, 11
  store i64 %305, i64* %PC, align 8
  %306 = inttoptr i64 %304 to i8*
  %307 = load i8, i8* %306, align 1
  store i8 %307, i8* %DL, align 1, !tbaa !2451
  %308 = add i64 %40, -8
  %309 = add i64 %69, 15
  store i64 %309, i64* %PC, align 8
  %310 = inttoptr i64 %308 to i64*
  %311 = load i64, i64* %310, align 8
  store i64 %311, i64* %RAX, align 8, !tbaa !2428
  %312 = add i64 %69, 19
  store i64 %312, i64* %PC, align 8
  %313 = load i32, i32* %43, align 4
  %314 = sext i32 %313 to i64
  store i64 %314, i64* %RCX, align 8, !tbaa !2428
  %315 = add i64 %311, %314
  %316 = add i64 %69, 22
  store i64 %316, i64* %PC, align 8
  %317 = inttoptr i64 %315 to i8*
  store i8 %307, i8* %317, align 1
  %318 = load i64, i64* %RBP, align 8
  %319 = add i64 %318, -20
  %320 = load i64, i64* %PC, align 8
  %321 = add i64 %320, 3
  store i64 %321, i64* %PC, align 8
  %322 = inttoptr i64 %319 to i32*
  %323 = load i32, i32* %322, align 4
  %324 = add i32 %323, 1
  %325 = zext i32 %324 to i64
  store i64 %325, i64* %RAX, align 8, !tbaa !2428
  %326 = icmp eq i32 %323, -1
  %327 = icmp eq i32 %324, 0
  %328 = or i1 %326, %327
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %11, align 1, !tbaa !2432
  %330 = and i32 %324, 255
  %331 = tail call i32 @llvm.ctpop.i32(i32 %330) #9
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  %334 = xor i8 %333, 1
  store i8 %334, i8* %12, align 1, !tbaa !2446
  %335 = xor i32 %324, %323
  %336 = lshr i32 %335, 4
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  store i8 %338, i8* %13, align 1, !tbaa !2447
  %339 = zext i1 %327 to i8
  store i8 %339, i8* %14, align 1, !tbaa !2448
  %340 = lshr i32 %324, 31
  %341 = trunc i32 %340 to i8
  store i8 %341, i8* %15, align 1, !tbaa !2449
  %342 = lshr i32 %323, 31
  %343 = xor i32 %340, %342
  %344 = add nuw nsw i32 %343, %340
  %345 = icmp eq i32 %344, 2
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %16, align 1, !tbaa !2450
  %347 = add i64 %320, 9
  store i64 %347, i64* %PC, align 8
  store i32 %324, i32* %322, align 4
  %348 = load i64, i64* %PC, align 8
  %349 = add i64 %348, -44
  store i64 %349, i64* %PC, align 8, !tbaa !2428
  br label %block_40191b

block_4018e5:                                     ; preds = %block_4018d8
  %350 = add i64 %71, -16
  %351 = add i64 %100, 4
  store i64 %351, i64* %PC, align 8
  %352 = inttoptr i64 %350 to i64*
  %353 = load i64, i64* %352, align 8
  store i64 %353, i64* %RAX, align 8, !tbaa !2428
  %354 = add i64 %100, 8
  store i64 %354, i64* %PC, align 8
  %355 = load i32, i32* %74, align 4
  %356 = sext i32 %355 to i64
  store i64 %356, i64* %RCX, align 8, !tbaa !2428
  %357 = add i64 %353, %356
  %358 = add i64 %100, 12
  store i64 %358, i64* %PC, align 8
  %359 = inttoptr i64 %357 to i8*
  %360 = load i8, i8* %359, align 1
  %361 = zext i8 %360 to i64
  store i64 %361, i64* %RDX, align 8, !tbaa !2428
  %362 = add i64 %100, 15
  store i64 %362, i64* %PC, align 8
  %363 = load i32, i32* %74, align 4
  %364 = add i32 %363, 51
  %365 = zext i32 %364 to i64
  store i64 %365, i64* %RSI, align 8, !tbaa !2428
  %366 = icmp ugt i32 %363, -52
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %11, align 1, !tbaa !2432
  %368 = and i32 %364, 255
  %369 = tail call i32 @llvm.ctpop.i32(i32 %368) #9
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  %372 = xor i8 %371, 1
  store i8 %372, i8* %12, align 1, !tbaa !2446
  %373 = xor i32 %363, 16
  %374 = xor i32 %373, %364
  %375 = lshr i32 %374, 4
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  store i8 %377, i8* %13, align 1, !tbaa !2447
  %378 = icmp eq i32 %364, 0
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %14, align 1, !tbaa !2448
  %380 = lshr i32 %364, 31
  %381 = trunc i32 %380 to i8
  store i8 %381, i8* %15, align 1, !tbaa !2449
  %382 = lshr i32 %363, 31
  %383 = xor i32 %380, %382
  %384 = add nuw nsw i32 %383, %380
  %385 = icmp eq i32 %384, 2
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %16, align 1, !tbaa !2450
  %387 = sext i32 %364 to i64
  store i64 %387, i64* %RAX, align 8, !tbaa !2428
  %388 = shl nsw i64 %387, 2
  %389 = add i64 %388, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3184)
  %390 = zext i8 %360 to i32
  %391 = add i64 %100, 28
  store i64 %391, i64* %PC, align 8
  %392 = inttoptr i64 %389 to i32*
  store i32 %390, i32* %392, align 4
  %393 = load i64, i64* %RBP, align 8
  %394 = add i64 %393, -20
  %395 = load i64, i64* %PC, align 8
  %396 = add i64 %395, 3
  store i64 %396, i64* %PC, align 8
  %397 = inttoptr i64 %394 to i32*
  %398 = load i32, i32* %397, align 4
  %399 = add i32 %398, 1
  %400 = zext i32 %399 to i64
  store i64 %400, i64* %RAX, align 8, !tbaa !2428
  %401 = icmp eq i32 %398, -1
  %402 = icmp eq i32 %399, 0
  %403 = or i1 %401, %402
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %11, align 1, !tbaa !2432
  %405 = and i32 %399, 255
  %406 = tail call i32 @llvm.ctpop.i32(i32 %405) #9
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  %409 = xor i8 %408, 1
  store i8 %409, i8* %12, align 1, !tbaa !2446
  %410 = xor i32 %399, %398
  %411 = lshr i32 %410, 4
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  store i8 %413, i8* %13, align 1, !tbaa !2447
  %414 = zext i1 %402 to i8
  store i8 %414, i8* %14, align 1, !tbaa !2448
  %415 = lshr i32 %399, 31
  %416 = trunc i32 %415 to i8
  store i8 %416, i8* %15, align 1, !tbaa !2449
  %417 = lshr i32 %398, 31
  %418 = xor i32 %415, %417
  %419 = add nuw nsw i32 %418, %415
  %420 = icmp eq i32 %419, 2
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %16, align 1, !tbaa !2450
  %422 = add i64 %395, 9
  store i64 %422, i64* %PC, align 8
  store i32 %399, i32* %397, align 4
  %423 = load i64, i64* %PC, align 8
  %424 = add i64 %423, -50
  store i64 %424, i64* %PC, align 8, !tbaa !2428
  br label %block_4018d8

block_4018b4:                                     ; preds = %block_4018aa
  %425 = add i64 %296, 4
  store i64 %425, i64* %PC, align 8
  %426 = load i32, i32* %270, align 4
  %427 = sext i32 %426 to i64
  store i64 %427, i64* %RAX, align 8, !tbaa !2428
  %428 = shl nsw i64 %427, 2
  %429 = add i64 %428, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3184)
  %430 = add i64 %296, 15
  store i64 %430, i64* %PC, align 8
  %431 = inttoptr i64 %429 to i32*
  store i32 0, i32* %431, align 4
  %432 = load i64, i64* %RBP, align 8
  %433 = add i64 %432, -20
  %434 = load i64, i64* %PC, align 8
  %435 = add i64 %434, 3
  store i64 %435, i64* %PC, align 8
  %436 = inttoptr i64 %433 to i32*
  %437 = load i32, i32* %436, align 4
  %438 = add i32 %437, 1
  %439 = zext i32 %438 to i64
  store i64 %439, i64* %RAX, align 8, !tbaa !2428
  %440 = icmp eq i32 %437, -1
  %441 = icmp eq i32 %438, 0
  %442 = or i1 %440, %441
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %11, align 1, !tbaa !2432
  %444 = and i32 %438, 255
  %445 = tail call i32 @llvm.ctpop.i32(i32 %444) #9
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  %448 = xor i8 %447, 1
  store i8 %448, i8* %12, align 1, !tbaa !2446
  %449 = xor i32 %438, %437
  %450 = lshr i32 %449, 4
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  store i8 %452, i8* %13, align 1, !tbaa !2447
  %453 = zext i1 %441 to i8
  store i8 %453, i8* %14, align 1, !tbaa !2448
  %454 = lshr i32 %438, 31
  %455 = trunc i32 %454 to i8
  store i8 %455, i8* %15, align 1, !tbaa !2449
  %456 = lshr i32 %437, 31
  %457 = xor i32 %454, %456
  %458 = add nuw nsw i32 %457, %454
  %459 = icmp eq i32 %458, 2
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %16, align 1, !tbaa !2450
  %461 = add i64 %434, 9
  store i64 %461, i64* %PC, align 8
  store i32 %438, i32* %436, align 4
  %462 = load i64, i64* %PC, align 8
  %463 = add i64 %462, -34
  store i64 %463, i64* %PC, align 8, !tbaa !2428
  br label %block_4018aa

block_4018a3:                                     ; preds = %block_401870, %block_40188e
  %464 = phi i64 [ %38, %block_401870 ], [ %158, %block_40188e ]
  %MEMORY.4 = phi %struct.Memory* [ %2, %block_401870 ], [ %156, %block_40188e ]
  %465 = load i64, i64* %RBP, align 8
  %466 = add i64 %465, -20
  %467 = add i64 %464, 7
  store i64 %467, i64* %PC, align 8
  %468 = inttoptr i64 %466 to i32*
  store i32 0, i32* %468, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_4018aa
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401b30_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401b30:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
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
  %10 = add i64 %6, -440
  store i64 %10, i64* %RSP, align 8, !tbaa !2428
  %11 = icmp ult i64 %7, 432
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1, !tbaa !2432
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #9
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1, !tbaa !2446
  %21 = xor i64 %7, 16
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1, !tbaa !2447
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1, !tbaa !2448
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1, !tbaa !2449
  %33 = lshr i64 %7, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1, !tbaa !2450
  %39 = add i64 %6, -12
  %40 = add i64 %9, 17
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 0, i32* %41, align 4
  %42 = load i64, i64* %RBP, align 8
  %43 = add i64 %42, -420
  %44 = load i64, i64* %PC, align 8
  %45 = add i64 %44, 10
  store i64 %45, i64* %PC, align 8
  %46 = inttoptr i64 %43 to i32*
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_401b4c

block_401be5:                                     ; preds = %block_401bd3
  %49 = add i64 %239, -6101
  %50 = add i64 %239, 5
  %51 = load i64, i64* %RSP, align 8, !tbaa !2428
  %52 = add i64 %51, -8
  %53 = inttoptr i64 %52 to i64*
  store i64 %50, i64* %53, align 8
  store i64 %52, i64* %RSP, align 8, !tbaa !2428
  store i64 %49, i64* %PC, align 8, !tbaa !2428
  %54 = tail call fastcc %struct.Memory* @ext_6040d8_random(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %55 = load i64, i64* %RAX, align 8
  %56 = load i64, i64* %PC, align 8
  %57 = and i64 %55, 255
  store i64 %57, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  %58 = trunc i64 %55 to i32
  %59 = and i32 %58, 255
  %60 = tail call i32 @llvm.ctpop.i32(i32 %59) #9
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  %63 = xor i8 %62, 1
  store i8 %63, i8* %20, align 1, !tbaa !2446
  %64 = icmp eq i64 %57, 0
  %65 = zext i1 %64 to i8
  store i8 %65, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  store i8 0, i8* %26, align 1, !tbaa !2447
  %66 = trunc i64 %55 to i8
  store i8 %66, i8* %CL, align 1, !tbaa !2451
  %67 = load i64, i64* %RBP, align 8
  %68 = add i64 %67, -429
  %69 = add i64 %56, 14
  store i64 %69, i64* %PC, align 8
  %70 = inttoptr i64 %68 to i8*
  store i8 %66, i8* %70, align 1
  %71 = load i64, i64* %PC, align 8
  %72 = add i64 %71, -6120
  %73 = add i64 %71, 5
  %74 = load i64, i64* %RSP, align 8, !tbaa !2428
  %75 = add i64 %74, -8
  %76 = inttoptr i64 %75 to i64*
  store i64 %73, i64* %76, align 8
  store i64 %75, i64* %RSP, align 8, !tbaa !2428
  store i64 %72, i64* %PC, align 8, !tbaa !2428
  %77 = tail call fastcc %struct.Memory* @ext_6040d8_random(%struct.State* nonnull %0, %struct.Memory* %54)
  %78 = load i64, i64* %PC, align 8
  store i64 204, i64* %RSI, align 8, !tbaa !2428
  %79 = load i64, i64* %48, align 8, !tbaa !2428
  %80 = ashr i64 %79, 63
  store i64 %80, i64* %47, align 8, !tbaa !2428
  %81 = add i64 %78, 12
  store i64 %81, i64* %PC, align 8
  %82 = zext i64 %80 to i128
  %83 = shl nuw i128 %82, 64
  %84 = zext i64 %79 to i128
  %85 = or i128 %84, %83
  %86 = sdiv i128 %85, 204
  %87 = trunc i128 %86 to i64
  %88 = and i128 %86, 18446744073709551615
  %89 = sext i64 %87 to i128
  %90 = and i128 %89, -18446744073709551616
  %91 = or i128 %90, %88
  %92 = icmp eq i128 %86, %91
  br i1 %92, label %95, label %93

; <label>:93:                                     ; preds = %block_401be5
  %94 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %81, %struct.Memory* %77) #12
  %.pre9 = load i64, i64* %PC, align 8
  %.pre10 = load i64, i64* %RDX, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:95:                                     ; preds = %block_401be5
  %96 = srem i128 %85, 204
  %97 = trunc i128 %96 to i64
  store i64 %87, i64* %48, align 8, !tbaa !2428
  store i64 %97, i64* %47, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  store i8 0, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  store i8 0, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %95, %93
  %98 = phi i64 [ %.pre10, %93 ], [ %97, %95 ]
  %99 = phi i64 [ %.pre9, %93 ], [ %81, %95 ]
  %100 = phi %struct.Memory* [ %94, %93 ], [ %77, %95 ]
  %101 = load i64, i64* %RBP, align 8
  %102 = add i64 %101, -429
  %103 = add i64 %99, 6
  store i64 %103, i64* %PC, align 8
  %104 = inttoptr i64 %102 to i8*
  %105 = load i8, i8* %104, align 1
  store i8 %105, i8* %CL, align 1, !tbaa !2451
  %106 = add i64 %101, -416
  %107 = add i64 %106, %98
  %108 = add i64 %99, 13
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %107 to i8*
  store i8 %105, i8* %109, align 1
  %110 = load i64, i64* %RBP, align 8
  %111 = add i64 %110, -424
  %112 = load i64, i64* %PC, align 8
  %113 = add i64 %112, 6
  store i64 %113, i64* %PC, align 8
  %114 = inttoptr i64 %111 to i32*
  %115 = load i32, i32* %114, align 4
  %116 = add i32 %115, 1
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %RAX, align 8, !tbaa !2428
  %118 = icmp eq i32 %115, -1
  %119 = icmp eq i32 %116, 0
  %120 = or i1 %118, %119
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %13, align 1, !tbaa !2432
  %122 = and i32 %116, 255
  %123 = tail call i32 @llvm.ctpop.i32(i32 %122) #9
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  store i8 %126, i8* %20, align 1, !tbaa !2446
  %127 = xor i32 %116, %115
  %128 = lshr i32 %127, 4
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  store i8 %130, i8* %26, align 1, !tbaa !2447
  %131 = zext i1 %119 to i8
  store i8 %131, i8* %29, align 1, !tbaa !2448
  %132 = lshr i32 %116, 31
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %32, align 1, !tbaa !2449
  %134 = lshr i32 %115, 31
  %135 = xor i32 %132, %134
  %136 = add nuw nsw i32 %135, %132
  %137 = icmp eq i32 %136, 2
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %38, align 1, !tbaa !2450
  %139 = add i64 %112, 15
  store i64 %139, i64* %PC, align 8
  store i32 %116, i32* %114, align 4
  %140 = load i64, i64* %PC, align 8
  %141 = add i64 %140, -82
  store i64 %141, i64* %PC, align 8, !tbaa !2428
  br label %block_401bd3

block_401b76:                                     ; preds = %block_401b66
  %142 = add i64 %376, -5990
  %143 = add i64 %376, 5
  %144 = load i64, i64* %RSP, align 8, !tbaa !2428
  %145 = add i64 %144, -8
  %146 = inttoptr i64 %145 to i64*
  store i64 %143, i64* %146, align 8
  store i64 %145, i64* %RSP, align 8, !tbaa !2428
  store i64 %142, i64* %PC, align 8, !tbaa !2428
  %147 = tail call fastcc %struct.Memory* @ext_6040d8_random(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %148 = load i64, i64* %RAX, align 8
  %149 = load i64, i64* %PC, align 8
  %150 = and i64 %148, 255
  store i64 %150, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  %151 = trunc i64 %148 to i32
  %152 = and i32 %151, 255
  %153 = tail call i32 @llvm.ctpop.i32(i32 %152) #9
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  store i8 %156, i8* %20, align 1, !tbaa !2446
  %157 = icmp eq i64 %150, 0
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  store i8 0, i8* %26, align 1, !tbaa !2447
  %159 = trunc i64 %148 to i8
  store i8 %159, i8* %CL, align 1, !tbaa !2451
  %160 = load i64, i64* %RBP, align 8
  %161 = add i64 %160, -424
  %162 = add i64 %149, 15
  store i64 %162, i64* %PC, align 8
  %163 = inttoptr i64 %161 to i32*
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %RAX, align 8, !tbaa !2428
  %166 = add nsw i64 %165, -208
  %167 = add i64 %166, %160
  %168 = add i64 %149, 22
  store i64 %168, i64* %PC, align 8
  %169 = inttoptr i64 %167 to i8*
  store i8 %159, i8* %169, align 1
  %170 = load i64, i64* %RBP, align 8
  %171 = add i64 %170, -424
  %172 = load i64, i64* %PC, align 8
  %173 = add i64 %172, 6
  store i64 %173, i64* %PC, align 8
  %174 = inttoptr i64 %171 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = add i32 %175, 1
  %177 = zext i32 %176 to i64
  store i64 %177, i64* %RAX, align 8, !tbaa !2428
  %178 = icmp eq i32 %175, -1
  %179 = icmp eq i32 %176, 0
  %180 = or i1 %178, %179
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %13, align 1, !tbaa !2432
  %182 = and i32 %176, 255
  %183 = tail call i32 @llvm.ctpop.i32(i32 %182) #9
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  %186 = xor i8 %185, 1
  store i8 %186, i8* %20, align 1, !tbaa !2446
  %187 = xor i32 %176, %175
  %188 = lshr i32 %187, 4
  %189 = trunc i32 %188 to i8
  %190 = and i8 %189, 1
  store i8 %190, i8* %26, align 1, !tbaa !2447
  %191 = zext i1 %179 to i8
  store i8 %191, i8* %29, align 1, !tbaa !2448
  %192 = lshr i32 %176, 31
  %193 = trunc i32 %192 to i8
  store i8 %193, i8* %32, align 1, !tbaa !2449
  %194 = lshr i32 %175, 31
  %195 = xor i32 %192, %194
  %196 = add nuw nsw i32 %195, %192
  %197 = icmp eq i32 %196, 2
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %38, align 1, !tbaa !2450
  %199 = add i64 %172, 15
  store i64 %199, i64* %PC, align 8
  store i32 %176, i32* %174, align 4
  %200 = load i64, i64* %PC, align 8
  %201 = add i64 %200, -58
  store i64 %201, i64* %PC, align 8, !tbaa !2428
  br label %block_401b66

block_401bd3:                                     ; preds = %block_401ba5, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit
  %202 = phi i64 [ %.pre8, %block_401ba5 ], [ %141, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit ]
  %MEMORY.0 = phi %struct.Memory* [ %391, %block_401ba5 ], [ %100, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit ]
  %203 = load i64, i64* %RBP, align 8
  %204 = add i64 %203, -424
  %205 = add i64 %202, 6
  store i64 %205, i64* %PC, align 8
  %206 = inttoptr i64 %204 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = zext i32 %207 to i64
  store i64 %208, i64* %RAX, align 8, !tbaa !2428
  %209 = add i64 %203, -428
  %210 = add i64 %202, 12
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %209 to i32*
  %212 = load i32, i32* %211, align 4
  %213 = sub i32 %207, %212
  %214 = icmp ult i32 %207, %212
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %13, align 1, !tbaa !2432
  %216 = and i32 %213, 255
  %217 = tail call i32 @llvm.ctpop.i32(i32 %216) #9
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  %220 = xor i8 %219, 1
  store i8 %220, i8* %20, align 1, !tbaa !2446
  %221 = xor i32 %212, %207
  %222 = xor i32 %221, %213
  %223 = lshr i32 %222, 4
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  store i8 %225, i8* %26, align 1, !tbaa !2447
  %226 = icmp eq i32 %213, 0
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %29, align 1, !tbaa !2448
  %228 = lshr i32 %213, 31
  %229 = trunc i32 %228 to i8
  store i8 %229, i8* %32, align 1, !tbaa !2449
  %230 = lshr i32 %207, 31
  %231 = lshr i32 %212, 31
  %232 = xor i32 %231, %230
  %233 = xor i32 %228, %230
  %234 = add nuw nsw i32 %233, %232
  %235 = icmp eq i32 %234, 2
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %38, align 1, !tbaa !2450
  %237 = icmp ne i8 %229, 0
  %238 = xor i1 %237, %235
  %.v12 = select i1 %238, i64 18, i64 87
  %239 = add i64 %202, %.v12
  store i64 %239, i64* %PC, align 8, !tbaa !2428
  br i1 %238, label %block_401be5, label %block_401c2a

block_401b5c:                                     ; preds = %block_401b4c
  %240 = add i64 %244, -424
  %241 = add i64 %273, 10
  store i64 %241, i64* %PC, align 8
  %242 = inttoptr i64 %240 to i32*
  store i32 0, i32* %242, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_401b66

block_401b4c:                                     ; preds = %block_401c2a, %block_401b30
  %243 = phi i64 [ %.pre, %block_401b30 ], [ %313, %block_401c2a ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_401b30 ], [ %281, %block_401c2a ]
  %244 = load i64, i64* %RBP, align 8
  %245 = add i64 %244, -420
  %246 = add i64 %243, 10
  store i64 %246, i64* %PC, align 8
  %247 = inttoptr i64 %245 to i32*
  %248 = load i32, i32* %247, align 4
  %249 = add i32 %248, -150000
  %250 = icmp ult i32 %248, 150000
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %13, align 1, !tbaa !2432
  %252 = and i32 %249, 255
  %253 = tail call i32 @llvm.ctpop.i32(i32 %252) #9
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = xor i8 %255, 1
  store i8 %256, i8* %20, align 1, !tbaa !2446
  %257 = xor i32 %248, 16
  %258 = xor i32 %257, %249
  %259 = lshr i32 %258, 4
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  store i8 %261, i8* %26, align 1, !tbaa !2447
  %262 = icmp eq i32 %249, 0
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %29, align 1, !tbaa !2448
  %264 = lshr i32 %249, 31
  %265 = trunc i32 %264 to i8
  store i8 %265, i8* %32, align 1, !tbaa !2449
  %266 = lshr i32 %248, 31
  %267 = xor i32 %264, %266
  %268 = add nuw nsw i32 %267, %266
  %269 = icmp eq i32 %268, 2
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %38, align 1, !tbaa !2450
  %271 = icmp ne i8 %265, 0
  %272 = xor i1 %271, %269
  %.v = select i1 %272, i64 16, i64 261
  %273 = add i64 %243, %.v
  store i64 %273, i64* %PC, align 8, !tbaa !2428
  br i1 %272, label %block_401b5c, label %block_401c51

block_401c2a:                                     ; preds = %block_401bd3
  %274 = add i64 %203, -416
  store i64 %274, i64* %RSI, align 8, !tbaa !2428
  %275 = add i64 %203, -208
  store i64 %275, i64* %RDI, align 8, !tbaa !2428
  %276 = add i64 %239, -5914
  %277 = add i64 %239, 19
  %278 = load i64, i64* %RSP, align 8, !tbaa !2428
  %279 = add i64 %278, -8
  %280 = inttoptr i64 %279 to i64*
  store i64 %277, i64* %280, align 8
  store i64 %279, i64* %RSP, align 8, !tbaa !2428
  store i64 %276, i64* %PC, align 8, !tbaa !2428
  %281 = tail call %struct.Memory* @sub_400510_rsdec_204(%struct.State* nonnull %0, i64 %276, %struct.Memory* %MEMORY.0)
  %282 = load i64, i64* %RBP, align 8
  %283 = add i64 %282, -420
  %284 = load i64, i64* %PC, align 8
  %285 = add i64 %284, 6
  store i64 %285, i64* %PC, align 8
  %286 = inttoptr i64 %283 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = add i32 %287, 1
  %289 = zext i32 %288 to i64
  store i64 %289, i64* %RAX, align 8, !tbaa !2428
  %290 = icmp eq i32 %287, -1
  %291 = icmp eq i32 %288, 0
  %292 = or i1 %290, %291
  %293 = zext i1 %292 to i8
  store i8 %293, i8* %13, align 1, !tbaa !2432
  %294 = and i32 %288, 255
  %295 = tail call i32 @llvm.ctpop.i32(i32 %294) #9
  %296 = trunc i32 %295 to i8
  %297 = and i8 %296, 1
  %298 = xor i8 %297, 1
  store i8 %298, i8* %20, align 1, !tbaa !2446
  %299 = xor i32 %288, %287
  %300 = lshr i32 %299, 4
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  store i8 %302, i8* %26, align 1, !tbaa !2447
  %303 = zext i1 %291 to i8
  store i8 %303, i8* %29, align 1, !tbaa !2448
  %304 = lshr i32 %288, 31
  %305 = trunc i32 %304 to i8
  store i8 %305, i8* %32, align 1, !tbaa !2449
  %306 = lshr i32 %287, 31
  %307 = xor i32 %304, %306
  %308 = add nuw nsw i32 %307, %304
  %309 = icmp eq i32 %308, 2
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %38, align 1, !tbaa !2450
  %311 = add i64 %284, 15
  store i64 %311, i64* %PC, align 8
  store i32 %288, i32* %286, align 4
  %312 = load i64, i64* %PC, align 8
  %313 = add i64 %312, -256
  store i64 %313, i64* %PC, align 8, !tbaa !2428
  br label %block_401b4c

block_401c51:                                     ; preds = %block_401b4c
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %314 = load i64, i64* %RSP, align 8
  %315 = add i64 %314, 432
  store i64 %315, i64* %RSP, align 8, !tbaa !2428
  %316 = icmp ugt i64 %314, -433
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %13, align 1, !tbaa !2432
  %318 = trunc i64 %315 to i32
  %319 = and i32 %318, 255
  %320 = tail call i32 @llvm.ctpop.i32(i32 %319) #9
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  %323 = xor i8 %322, 1
  store i8 %323, i8* %20, align 1, !tbaa !2446
  %324 = xor i64 %314, 16
  %325 = xor i64 %324, %315
  %326 = lshr i64 %325, 4
  %327 = trunc i64 %326 to i8
  %328 = and i8 %327, 1
  store i8 %328, i8* %26, align 1, !tbaa !2447
  %329 = icmp eq i64 %315, 0
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %29, align 1, !tbaa !2448
  %331 = lshr i64 %315, 63
  %332 = trunc i64 %331 to i8
  store i8 %332, i8* %32, align 1, !tbaa !2449
  %333 = lshr i64 %314, 63
  %334 = xor i64 %331, %333
  %335 = add nuw nsw i64 %334, %331
  %336 = icmp eq i64 %335, 2
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %38, align 1, !tbaa !2450
  %338 = add i64 %273, 10
  store i64 %338, i64* %PC, align 8
  %339 = add i64 %314, 440
  %340 = inttoptr i64 %315 to i64*
  %341 = load i64, i64* %340, align 8
  store i64 %341, i64* %RBP, align 8, !tbaa !2428
  store i64 %339, i64* %RSP, align 8, !tbaa !2428
  %342 = add i64 %273, 11
  store i64 %342, i64* %PC, align 8
  %343 = inttoptr i64 %339 to i64*
  %344 = load i64, i64* %343, align 8
  store i64 %344, i64* %PC, align 8, !tbaa !2428
  %345 = add i64 %314, 448
  store i64 %345, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_401b66:                                     ; preds = %block_401b5c, %block_401b76
  %346 = phi i64 [ %.pre7, %block_401b5c ], [ %201, %block_401b76 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_401b5c ], [ %147, %block_401b76 ]
  %347 = load i64, i64* %RBP, align 8
  %348 = add i64 %347, -424
  %349 = add i64 %346, 10
  store i64 %349, i64* %PC, align 8
  %350 = inttoptr i64 %348 to i32*
  %351 = load i32, i32* %350, align 4
  %352 = add i32 %351, -188
  %353 = icmp ult i32 %351, 188
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %13, align 1, !tbaa !2432
  %355 = and i32 %352, 255
  %356 = tail call i32 @llvm.ctpop.i32(i32 %355) #9
  %357 = trunc i32 %356 to i8
  %358 = and i8 %357, 1
  %359 = xor i8 %358, 1
  store i8 %359, i8* %20, align 1, !tbaa !2446
  %360 = xor i32 %351, 16
  %361 = xor i32 %360, %352
  %362 = lshr i32 %361, 4
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  store i8 %364, i8* %26, align 1, !tbaa !2447
  %365 = icmp eq i32 %352, 0
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %29, align 1, !tbaa !2448
  %367 = lshr i32 %352, 31
  %368 = trunc i32 %367 to i8
  store i8 %368, i8* %32, align 1, !tbaa !2449
  %369 = lshr i32 %351, 31
  %370 = xor i32 %367, %369
  %371 = add nuw nsw i32 %370, %369
  %372 = icmp eq i32 %371, 2
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %38, align 1, !tbaa !2450
  %374 = icmp ne i8 %368, 0
  %375 = xor i1 %374, %372
  %.v11 = select i1 %375, i64 16, i64 63
  %376 = add i64 %346, %.v11
  store i64 %376, i64* %PC, align 8, !tbaa !2428
  br i1 %375, label %block_401b76, label %block_401ba5

block_401ba5:                                     ; preds = %block_401b66
  %377 = add i64 %347, -208
  store i64 %377, i64* %RSI, align 8, !tbaa !2428
  %378 = add i64 %347, -416
  store i64 %378, i64* %RDI, align 8, !tbaa !2428
  %379 = add i64 %376, -821
  %380 = add i64 %376, 19
  %381 = load i64, i64* %RSP, align 8, !tbaa !2428
  %382 = add i64 %381, -8
  %383 = inttoptr i64 %382 to i64*
  store i64 %380, i64* %383, align 8
  store i64 %382, i64* %RSP, align 8, !tbaa !2428
  store i64 %379, i64* %PC, align 8, !tbaa !2428
  %384 = tail call %struct.Memory* @sub_401870_rsenc_204(%struct.State* nonnull %0, i64 %379, %struct.Memory* %MEMORY.2)
  %385 = load i64, i64* %PC, align 8
  %386 = add i64 %385, -6056
  %387 = add i64 %385, 5
  %388 = load i64, i64* %RSP, align 8, !tbaa !2428
  %389 = add i64 %388, -8
  %390 = inttoptr i64 %389 to i64*
  store i64 %387, i64* %390, align 8
  store i64 %389, i64* %RSP, align 8, !tbaa !2428
  store i64 %386, i64* %PC, align 8, !tbaa !2428
  %391 = tail call fastcc %struct.Memory* @ext_6040d8_random(%struct.State* nonnull %0, %struct.Memory* %384)
  %392 = load i64, i64* %RAX, align 8
  %393 = load i64, i64* %PC, align 8
  %394 = and i64 %392, 127
  store i64 %394, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  %395 = trunc i64 %394 to i32
  %396 = tail call i32 @llvm.ctpop.i32(i32 %395) #9
  %397 = trunc i32 %396 to i8
  %398 = and i8 %397, 1
  %399 = xor i8 %398, 1
  store i8 %399, i8* %20, align 1, !tbaa !2446
  %400 = icmp eq i64 %394, 0
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  store i8 0, i8* %26, align 1, !tbaa !2447
  store i64 %394, i64* %RCX, align 8, !tbaa !2428
  %402 = load i64, i64* %RBP, align 8
  %403 = add i64 %402, -428
  %404 = add i64 %393, 12
  store i64 %404, i64* %PC, align 8
  %405 = inttoptr i64 %403 to i32*
  store i32 %395, i32* %405, align 4
  %406 = load i64, i64* %RBP, align 8
  %407 = add i64 %406, -424
  %408 = load i64, i64* %PC, align 8
  %409 = add i64 %408, 10
  store i64 %409, i64* %PC, align 8
  %410 = inttoptr i64 %407 to i32*
  store i32 0, i32* %410, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_401bd3
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400500_frame_dummy() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400500;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400500_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400500_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4004d0___do_global_dtors_aux() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4004d0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_4004d0___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4004d0___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401cd0___libc_csu_fini() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401cd0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_401cd0___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401cd0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401c60___libc_csu_init() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401c60;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_401c60___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401c60___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401b30;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401b30_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6040d0___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6040d8_random(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @random to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401cd4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.term_proc_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401cd4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4003e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4003e0__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @rsenc_204() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401870;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @rsenc_204_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401870_rsenc_204(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @rsdec_204() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400510;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @rsdec_204_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400510_rsdec_204(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_constructor() #9 {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_401c60___libc_csu_init()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #9 {
  tail call void @callback_sub_401cd0___libc_csu_fini()
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline }
attributes #6 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { naked nobuiltin noinline nounwind }
attributes #9 = { nounwind }
attributes #10 = { norecurse nounwind }
attributes #11 = { noinline nounwind }
attributes #12 = { alwaysinline nobuiltin nounwind }

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
!2432 = !{!2433, !2430, i64 2065}
!2433 = !{!"_ZTS5State", !2430, i64 16, !2434, i64 2064, !2430, i64 2080, !2435, i64 2088, !2437, i64 2112, !2439, i64 2208, !2440, i64 2480, !2441, i64 2608, !2442, i64 2736, !2430, i64 2760, !2430, i64 2768, !2443, i64 3280}
!2434 = !{!"_ZTS10ArithFlags", !2430, i64 0, !2430, i64 1, !2430, i64 2, !2430, i64 3, !2430, i64 4, !2430, i64 5, !2430, i64 6, !2430, i64 7, !2430, i64 8, !2430, i64 9, !2430, i64 10, !2430, i64 11, !2430, i64 12, !2430, i64 13, !2430, i64 14, !2430, i64 15}
!2435 = !{!"_ZTS8Segments", !2436, i64 0, !2430, i64 2, !2436, i64 4, !2430, i64 6, !2436, i64 8, !2430, i64 10, !2436, i64 12, !2430, i64 14, !2436, i64 16, !2430, i64 18, !2436, i64 20, !2430, i64 22}
!2436 = !{!"short", !2430, i64 0}
!2437 = !{!"_ZTS12AddressSpace", !2429, i64 0, !2438, i64 8, !2429, i64 16, !2438, i64 24, !2429, i64 32, !2438, i64 40, !2429, i64 48, !2438, i64 56, !2429, i64 64, !2438, i64 72, !2429, i64 80, !2438, i64 88}
!2438 = !{!"_ZTS3Reg", !2430, i64 0}
!2439 = !{!"_ZTS3GPR", !2429, i64 0, !2438, i64 8, !2429, i64 16, !2438, i64 24, !2429, i64 32, !2438, i64 40, !2429, i64 48, !2438, i64 56, !2429, i64 64, !2438, i64 72, !2429, i64 80, !2438, i64 88, !2429, i64 96, !2438, i64 104, !2429, i64 112, !2438, i64 120, !2429, i64 128, !2438, i64 136, !2429, i64 144, !2438, i64 152, !2429, i64 160, !2438, i64 168, !2429, i64 176, !2438, i64 184, !2429, i64 192, !2438, i64 200, !2429, i64 208, !2438, i64 216, !2429, i64 224, !2438, i64 232, !2429, i64 240, !2438, i64 248, !2429, i64 256, !2438, i64 264}
!2440 = !{!"_ZTS8X87Stack", !2430, i64 0}
!2441 = !{!"_ZTS3MMX", !2430, i64 0}
!2442 = !{!"_ZTS14FPUStatusFlags", !2430, i64 0, !2430, i64 1, !2430, i64 2, !2430, i64 3, !2430, i64 4, !2430, i64 5, !2430, i64 6, !2430, i64 7, !2430, i64 8, !2430, i64 9, !2430, i64 10, !2430, i64 11, !2430, i64 12, !2430, i64 13, !2430, i64 14, !2430, i64 15, !2430, i64 16, !2430, i64 17, !2430, i64 18, !2430, i64 19, !2430, i64 20}
!2443 = !{!"_ZTS13SegmentCaches", !2444, i64 0, !2444, i64 16, !2444, i64 32, !2444, i64 48, !2444, i64 64, !2444, i64 80}
!2444 = !{!"_ZTS13SegmentShadow", !2430, i64 0, !2445, i64 8, !2445, i64 12}
!2445 = !{!"int", !2430, i64 0}
!2446 = !{!2433, !2430, i64 2067}
!2447 = !{!2433, !2430, i64 2069}
!2448 = !{!2433, !2430, i64 2071}
!2449 = !{!2433, !2430, i64 2073}
!2450 = !{!2433, !2430, i64 2077}
!2451 = !{!2430, !2430, i64 0}