; ModuleID = 'binary/test.mcsema.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400940__rodata_type = type <{ [192 x i8], [3 x i8], [40 x i8], [11 x i8], [10 x i8], [19 x i8], [10 x i8] }>
%seg_600df0__init_array_type = type <{ i64, i64 }>
%seg_600ff0__got_type = type <{ i64, i64 }>
%maze_type = type <{ [77 x i8] }>
%__bss_start_type = type <{ [3 x i8] }>
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
@seg_400940__rodata = internal constant %seg_400940__rodata_type <{ [192 x i8] c"\01\00\02\00\00\00\00\00\12\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00 \07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00\04\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00.\07@\00\00\00\00\00\F6\06@\00\00\00\00\00", [3 x i8] c"%c\00", [40 x i8] c"Wrong command!(only w,s,a,d accepted!)\0A\00", [11 x i8] c"You lose!\0A\00", [10 x i8] c"You win!\0A\00", [19 x i8] c"Your solution:%s \0A\00", [10 x i8] c"You lose\0A\00" }>
@seg_600df0__init_array = internal global %seg_600df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400590_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400560___do_global_dtors_aux to i64) }>
@seg_600ff0__got = internal global %seg_600ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@maze = global %maze_type <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>
@__bss_start = local_unnamed_addr global %__bss_start_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400590_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400560___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400930___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4008c0___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @draw_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

declare %struct.Memory* @sub_400450__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4005a0_draw_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4004f0_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_missing_block(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #4

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @read(i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline
define %struct.Memory* @sub_4006f6(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %4 to i8*
  %EAX = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %RBP, align 8
  %phitmp = add i64 %1, 3
  br label %block_4006f6

block_4006be:                                     ; preds = %block_400867
  %11 = add i64 %407, -20
  %12 = add i64 %436, 3
  store i64 %12, i64* %PC, align 8
  %13 = inttoptr i64 %11 to i32*
  %14 = load i32, i32* %13, align 4
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8, !tbaa !2428
  %16 = add i64 %407, -28
  %17 = add i64 %436, 6
  store i64 %17, i64* %PC, align 8
  %18 = inttoptr i64 %16 to i32*
  store i32 %14, i32* %18, align 4
  %19 = load i64, i64* %RBP, align 8
  %20 = add i64 %19, -24
  %21 = load i64, i64* %PC, align 8
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC, align 8
  %23 = inttoptr i64 %20 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = zext i32 %24 to i64
  store i64 %25, i64* %RAX, align 8, !tbaa !2428
  %26 = add i64 %19, -32
  %27 = add i64 %21, 6
  store i64 %27, i64* %PC, align 8
  %28 = inttoptr i64 %26 to i32*
  store i32 %24, i32* %28, align 4
  %29 = load i64, i64* %RBP, align 8
  %30 = add i64 %29, -36
  %31 = load i64, i64* %PC, align 8
  %32 = add i64 %31, 4
  store i64 %32, i64* %PC, align 8
  %33 = inttoptr i64 %30 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %RCX, align 8, !tbaa !2428
  %36 = add i64 %29, -64
  %37 = add i64 %36, %35
  %38 = add i64 %31, 9
  store i64 %38, i64* %PC, align 8
  %39 = inttoptr i64 %37 to i8*
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = add nsw i32 %41, -97
  %43 = zext i32 %42 to i64
  %44 = lshr i32 %42, 31
  store i64 %43, i64* %RCX, align 8, !tbaa !2428
  %45 = add nsw i32 %41, -119
  %46 = zext i32 %45 to i64
  store i64 %46, i64* %RAX, align 8, !tbaa !2428
  %47 = icmp ult i32 %42, 22
  %48 = zext i1 %47 to i8
  store i8 %48, i8* %5, align 1, !tbaa !2432
  %49 = and i32 %45, 255
  %50 = tail call i32 @llvm.ctpop.i32(i32 %49) #8
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 1
  %53 = xor i8 %52, 1
  store i8 %53, i8* %6, align 1, !tbaa !2446
  %54 = xor i32 %42, 16
  %55 = xor i32 %54, %45
  %56 = lshr i32 %55, 4
  %57 = trunc i32 %56 to i8
  %58 = and i8 %57, 1
  store i8 %58, i8* %7, align 1, !tbaa !2447
  %59 = icmp eq i32 %45, 0
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %8, align 1, !tbaa !2448
  %61 = lshr i32 %45, 31
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %9, align 1, !tbaa !2449
  %63 = xor i32 %61, %44
  %64 = add nuw nsw i32 %63, %44
  %65 = icmp eq i32 %64, 2
  %66 = zext i1 %65 to i8
  store i8 %66, i8* %10, align 1, !tbaa !2450
  %67 = add i64 %29, -80
  %68 = add i64 %31, 21
  store i64 %68, i64* %PC, align 8
  %69 = inttoptr i64 %67 to i64*
  store i64 %43, i64* %69, align 8
  %70 = load i64, i64* %RBP, align 8
  %71 = add i64 %70, -84
  %72 = load i32, i32* %EAX, align 4
  %73 = load i64, i64* %PC, align 8
  %74 = add i64 %73, 3
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %71 to i32*
  store i32 %72, i32* %75, align 4
  %76 = load i64, i64* %PC, align 8
  %77 = load i8, i8* %5, align 1, !tbaa !2432
  %78 = load i8, i8* %8, align 1, !tbaa !2448
  %79 = or i8 %78, %77
  %80 = icmp eq i8 %79, 0
  %.v33 = select i1 %80, i64 76, i64 6
  %81 = add i64 %76, %.v33
  store i64 %81, i64* %PC, align 8, !tbaa !2428
  br i1 %80, label %block_40072e, label %block_4006e8

block_40082f:                                     ; preds = %block_400823, %block_4007b9, %block_400819
  %82 = phi i64 [ %.pre20, %block_400823 ], [ %611, %block_4007b9 ], [ %143, %block_400819 ]
  %83 = load i64, i64* %RBP, align 8
  %84 = add i64 %83, -28
  %85 = add i64 %82, 3
  store i64 %85, i64* %PC, align 8
  %86 = inttoptr i64 %84 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %RAX, align 8, !tbaa !2428
  %89 = add i64 %83, -20
  %90 = add i64 %82, 6
  store i64 %90, i64* %PC, align 8
  %91 = inttoptr i64 %89 to i32*
  %92 = load i32, i32* %91, align 4
  %93 = sub i32 %87, %92
  %94 = icmp ult i32 %87, %92
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %5, align 1, !tbaa !2432
  %96 = and i32 %93, 255
  %97 = tail call i32 @llvm.ctpop.i32(i32 %96) #8
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  %100 = xor i8 %99, 1
  store i8 %100, i8* %6, align 1, !tbaa !2446
  %101 = xor i32 %92, %87
  %102 = xor i32 %101, %93
  %103 = lshr i32 %102, 4
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  store i8 %105, i8* %7, align 1, !tbaa !2447
  %106 = icmp eq i32 %93, 0
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %8, align 1, !tbaa !2448
  %108 = lshr i32 %93, 31
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %9, align 1, !tbaa !2449
  %110 = lshr i32 %87, 31
  %111 = lshr i32 %92, 31
  %112 = xor i32 %111, %110
  %113 = xor i32 %108, %110
  %114 = add nuw nsw i32 %113, %112
  %115 = icmp eq i32 %114, 2
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %10, align 1, !tbaa !2450
  %.v30 = select i1 %106, i64 12, i64 56
  %117 = add i64 %82, %.v30
  store i64 %117, i64* %PC, align 8, !tbaa !2428
  br i1 %106, label %block_40083b, label %block_40082f.block_400867_crit_edge

block_40082f.block_400867_crit_edge:              ; preds = %block_40082f
  %.pre22 = add i64 %83, -24
  %.pre23 = inttoptr i64 %.pre22 to i32*
  br label %block_400867

block_400819:                                     ; preds = %block_40080f
  %118 = add i64 %452, 4
  store i64 %118, i64* %PC, align 8
  %119 = load i32, i32* %439, align 4
  %120 = add i32 %119, -11
  %121 = icmp ult i32 %119, 11
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %5, align 1, !tbaa !2432
  %123 = and i32 %120, 255
  %124 = tail call i32 @llvm.ctpop.i32(i32 %123) #8
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  %127 = xor i8 %126, 1
  store i8 %127, i8* %6, align 1, !tbaa !2446
  %128 = xor i32 %119, %120
  %129 = lshr i32 %128, 4
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  store i8 %131, i8* %7, align 1, !tbaa !2447
  %132 = icmp eq i32 %120, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %8, align 1, !tbaa !2448
  %134 = lshr i32 %120, 31
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %9, align 1, !tbaa !2449
  %136 = lshr i32 %119, 31
  %137 = xor i32 %134, %136
  %138 = add nuw nsw i32 %137, %136
  %139 = icmp eq i32 %138, 2
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %10, align 1, !tbaa !2450
  %141 = icmp ne i8 %135, 0
  %142 = xor i1 %141, %139
  %.v29 = select i1 %142, i64 22, i64 10
  %143 = add i64 %452, %.v29
  store i64 %143, i64* %PC, align 8, !tbaa !2428
  br i1 %142, label %block_40082f, label %block_400823

block_40083b:                                     ; preds = %block_40082f
  %144 = add i64 %83, -32
  %145 = add i64 %117, 3
  store i64 %145, i64* %PC, align 8
  %146 = inttoptr i64 %144 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = zext i32 %147 to i64
  store i64 %148, i64* %RAX, align 8, !tbaa !2428
  %149 = add i64 %83, -24
  %150 = add i64 %117, 6
  store i64 %150, i64* %PC, align 8
  %151 = inttoptr i64 %149 to i32*
  %152 = load i32, i32* %151, align 4
  %153 = sub i32 %147, %152
  %154 = icmp ult i32 %147, %152
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %5, align 1, !tbaa !2432
  %156 = and i32 %153, 255
  %157 = tail call i32 @llvm.ctpop.i32(i32 %156) #8
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  %160 = xor i8 %159, 1
  store i8 %160, i8* %6, align 1, !tbaa !2446
  %161 = xor i32 %152, %147
  %162 = xor i32 %161, %153
  %163 = lshr i32 %162, 4
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  store i8 %165, i8* %7, align 1, !tbaa !2447
  %166 = icmp eq i32 %153, 0
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %8, align 1, !tbaa !2448
  %168 = lshr i32 %153, 31
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %9, align 1, !tbaa !2449
  %170 = lshr i32 %147, 31
  %171 = lshr i32 %152, 31
  %172 = xor i32 %171, %170
  %173 = xor i32 %168, %170
  %174 = add nuw nsw i32 %173, %172
  %175 = icmp eq i32 %174, 2
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %10, align 1, !tbaa !2450
  %.v31 = select i1 %166, i64 12, i64 44
  %177 = add i64 %117, %.v31
  store i64 %177, i64* %PC, align 8, !tbaa !2428
  br i1 %166, label %block_400847, label %block_400867

block_400897:                                     ; preds = %block_400867
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %178 = add i64 %436, -1047
  %179 = add i64 %436, 17
  %180 = load i64, i64* %RSP, align 8, !tbaa !2428
  %181 = add i64 %180, -8
  %182 = inttoptr i64 %181 to i64*
  store i64 %179, i64* %182, align 8
  store i64 %181, i64* %RSP, align 8, !tbaa !2428
  store i64 %178, i64* %PC, align 8, !tbaa !2428
  %183 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %375)
  %184 = load i64, i64* %RBP, align 8
  %185 = add i64 %184, -4
  %186 = load i64, i64* %PC, align 8
  %187 = add i64 %186, 7
  store i64 %187, i64* %PC, align 8
  %188 = inttoptr i64 %185 to i32*
  store i32 1, i32* %188, align 4
  %189 = load i64, i64* %RBP, align 8
  %190 = add i64 %189, -108
  %191 = load i32, i32* %EAX, align 4
  %192 = load i64, i64* %PC, align 8
  %193 = add i64 %192, 3
  store i64 %193, i64* %PC, align 8
  %194 = inttoptr i64 %190 to i32*
  store i32 %191, i32* %194, align 4
  %.pre21 = load i64, i64* %PC, align 8
  br label %block_4008b2

block_4006f6:                                     ; preds = %block_4006e8, %3
  %195 = phi i64 [ %phitmp, %3 ], [ 4196089, %block_4006e8 ]
  %196 = phi i64 [ %.pre, %3 ], [ %612, %block_4006e8 ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %3 ], [ %375, %block_4006e8 ]
  %197 = add i64 %196, -24
  store i64 %195, i64* %PC, align 8
  %198 = inttoptr i64 %197 to i32*
  %199 = load i32, i32* %198, align 4
  %200 = add i32 %199, -1
  %201 = icmp ne i32 %199, 0
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %5, align 1, !tbaa !2432
  %203 = and i32 %200, 255
  %204 = tail call i32 @llvm.ctpop.i32(i32 %203) #8
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  %207 = xor i8 %206, 1
  store i8 %207, i8* %6, align 1, !tbaa !2446
  %208 = xor i32 %199, 16
  %209 = xor i32 %200, %208
  %210 = lshr i32 %209, 4
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  store i8 %212, i8* %7, align 1, !tbaa !2447
  %213 = icmp eq i32 %200, 0
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %8, align 1, !tbaa !2448
  %215 = lshr i32 %200, 31
  %216 = trunc i32 %215 to i8
  store i8 %216, i8* %9, align 1, !tbaa !2449
  %217 = lshr i32 %199, 31
  %218 = xor i32 %215, %217
  %219 = xor i32 %215, 1
  %220 = add nuw nsw i32 %218, %219
  %221 = icmp eq i32 %220, 2
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %10, align 1, !tbaa !2450
  %223 = add i64 %195, 6
  store i64 %223, i64* %PC, align 8
  store i32 %200, i32* %198, align 4
  %224 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %225 = load i64, i64* %RBP, align 8
  %226 = add i64 %225, -24
  %227 = add i64 %224, 111
  store i64 %227, i64* %PC, align 8
  %228 = inttoptr i64 %226 to i32*
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = mul nsw i64 %230, 11
  store i64 %231, i64* %RCX, align 8, !tbaa !2428
  %232 = lshr i64 %231, 63
  %233 = add i64 %231, ptrtoint (%maze_type* @maze to i64)
  store i64 %233, i64* %RAX, align 8, !tbaa !2428
  %234 = icmp ult i64 %233, ptrtoint (%maze_type* @maze to i64)
  %235 = icmp ult i64 %233, %231
  %236 = or i1 %234, %235
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %5, align 1, !tbaa !2432
  %238 = trunc i64 %233 to i32
  %239 = and i32 %238, 255
  %240 = tail call i32 @llvm.ctpop.i32(i32 %239) #8
  %241 = trunc i32 %240 to i8
  %242 = and i8 %241, 1
  %243 = xor i8 %242, 1
  store i8 %243, i8* %6, align 1, !tbaa !2446
  %244 = xor i64 %231, ptrtoint (%maze_type* @maze to i64)
  %245 = xor i64 %244, %233
  %246 = lshr i64 %245, 4
  %247 = trunc i64 %246 to i8
  %248 = and i8 %247, 1
  store i8 %248, i8* %7, align 1, !tbaa !2447
  %249 = icmp eq i64 %233, 0
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %8, align 1, !tbaa !2448
  %251 = lshr i64 %233, 63
  %252 = trunc i64 %251 to i8
  store i8 %252, i8* %9, align 1, !tbaa !2449
  %253 = xor i64 %251, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %254 = xor i64 %251, %232
  %255 = add nuw nsw i64 %253, %254
  %256 = icmp eq i64 %255, 2
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %10, align 1, !tbaa !2450
  %258 = add i64 %225, -20
  %259 = add i64 %224, 122
  store i64 %259, i64* %PC, align 8
  %260 = inttoptr i64 %258 to i32*
  %261 = load i32, i32* %260, align 4
  %262 = sext i32 %261 to i64
  store i64 %262, i64* %RCX, align 8, !tbaa !2428
  %263 = add i64 %262, %233
  %264 = add i64 %224, 126
  store i64 %264, i64* %PC, align 8
  %265 = inttoptr i64 %263 to i8*
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i64
  %268 = and i64 %267, 4294967295
  store i64 %268, i64* %RDX, align 8, !tbaa !2428
  %269 = sext i8 %266 to i32
  %270 = add nsw i32 %269, -35
  %271 = icmp ult i8 %266, 35
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %5, align 1, !tbaa !2432
  %273 = and i32 %270, 255
  %274 = tail call i32 @llvm.ctpop.i32(i32 %273) #8
  %275 = trunc i32 %274 to i8
  %276 = and i8 %275, 1
  %277 = xor i8 %276, 1
  store i8 %277, i8* %6, align 1, !tbaa !2446
  %278 = xor i32 %269, %270
  %279 = lshr i32 %278, 4
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  store i8 %281, i8* %7, align 1, !tbaa !2447
  %282 = icmp eq i32 %270, 0
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %8, align 1, !tbaa !2448
  %284 = lshr i32 %270, 31
  %285 = trunc i32 %284 to i8
  store i8 %285, i8* %9, align 1, !tbaa !2449
  %286 = lshr i32 %269, 31
  %287 = xor i32 %284, %286
  %288 = add nuw nsw i32 %287, %286
  %289 = icmp eq i32 %288, 2
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %10, align 1, !tbaa !2450
  %.v = select i1 %282, i64 135, i64 186
  %291 = add i64 %224, %.v
  %292 = add i64 %291, 10
  store i64 %292, i64* %PC, align 8
  br i1 %282, label %block_400786, label %block_4007b9

block_4008b2:                                     ; preds = %block_400847, %block_400897
  %293 = phi i64 [ %.pre21, %block_400897 ], [ %640, %block_400847 ]
  %MEMORY.2 = phi %struct.Memory* [ %183, %block_400897 ], [ %627, %block_400847 ]
  %294 = load i64, i64* %RBP, align 8
  %295 = add i64 %294, -4
  %296 = add i64 %293, 3
  store i64 %296, i64* %PC, align 8
  %297 = inttoptr i64 %295 to i32*
  %298 = load i32, i32* %297, align 4
  %299 = zext i32 %298 to i64
  store i64 %299, i64* %RAX, align 8, !tbaa !2428
  %300 = load i64, i64* %RSP, align 8
  %301 = add i64 %300, 112
  store i64 %301, i64* %RSP, align 8, !tbaa !2428
  %302 = icmp ugt i64 %300, -113
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %5, align 1, !tbaa !2432
  %304 = trunc i64 %301 to i32
  %305 = and i32 %304, 255
  %306 = tail call i32 @llvm.ctpop.i32(i32 %305) #8
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  %309 = xor i8 %308, 1
  store i8 %309, i8* %6, align 1, !tbaa !2446
  %310 = xor i64 %300, 16
  %311 = xor i64 %310, %301
  %312 = lshr i64 %311, 4
  %313 = trunc i64 %312 to i8
  %314 = and i8 %313, 1
  store i8 %314, i8* %7, align 1, !tbaa !2447
  %315 = icmp eq i64 %301, 0
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %8, align 1, !tbaa !2448
  %317 = lshr i64 %301, 63
  %318 = trunc i64 %317 to i8
  store i8 %318, i8* %9, align 1, !tbaa !2449
  %319 = lshr i64 %300, 63
  %320 = xor i64 %317, %319
  %321 = add nuw nsw i64 %320, %317
  %322 = icmp eq i64 %321, 2
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %10, align 1, !tbaa !2450
  %324 = add i64 %293, 8
  store i64 %324, i64* %PC, align 8
  %325 = add i64 %300, 120
  %326 = inttoptr i64 %301 to i64*
  %327 = load i64, i64* %326, align 8
  store i64 %327, i64* %RBP, align 8, !tbaa !2428
  store i64 %325, i64* %RSP, align 8, !tbaa !2428
  %328 = add i64 %293, 9
  store i64 %328, i64* %PC, align 8
  %329 = inttoptr i64 %325 to i64*
  %330 = load i64, i64* %329, align 8
  store i64 %330, i64* %PC, align 8, !tbaa !2428
  %331 = add i64 %300, 128
  store i64 %331, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.2

block_400867:                                     ; preds = %block_40083b, %block_40082f.block_400867_crit_edge
  %.pre-phi24 = phi i32* [ %.pre23, %block_40082f.block_400867_crit_edge ], [ %151, %block_40083b ]
  %332 = phi i64 [ %117, %block_40082f.block_400867_crit_edge ], [ %177, %block_40083b ]
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %333 = add i64 %332, 14
  store i64 %333, i64* %PC, align 8
  %334 = load i32, i32* %.pre-phi24, align 4
  %335 = sext i32 %334 to i64
  %336 = mul nsw i64 %335, 11
  store i64 %336, i64* %RCX, align 8, !tbaa !2428
  %337 = lshr i64 %336, 63
  %338 = add i64 %336, ptrtoint (%maze_type* @maze to i64)
  store i64 %338, i64* %RAX, align 8, !tbaa !2428
  %339 = icmp ult i64 %338, ptrtoint (%maze_type* @maze to i64)
  %340 = icmp ult i64 %338, %336
  %341 = or i1 %339, %340
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %5, align 1, !tbaa !2432
  %343 = trunc i64 %338 to i32
  %344 = and i32 %343, 255
  %345 = tail call i32 @llvm.ctpop.i32(i32 %344) #8
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  %348 = xor i8 %347, 1
  store i8 %348, i8* %6, align 1, !tbaa !2446
  %349 = xor i64 %336, ptrtoint (%maze_type* @maze to i64)
  %350 = xor i64 %349, %338
  %351 = lshr i64 %350, 4
  %352 = trunc i64 %351 to i8
  %353 = and i8 %352, 1
  store i8 %353, i8* %7, align 1, !tbaa !2447
  %354 = icmp eq i64 %338, 0
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %8, align 1, !tbaa !2448
  %356 = lshr i64 %338, 63
  %357 = trunc i64 %356 to i8
  store i8 %357, i8* %9, align 1, !tbaa !2449
  %358 = xor i64 %356, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %359 = xor i64 %356, %337
  %360 = add nuw nsw i64 %358, %359
  %361 = icmp eq i64 %360, 2
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %10, align 1, !tbaa !2450
  %363 = add i64 %332, 25
  store i64 %363, i64* %PC, align 8
  %364 = load i32, i32* %91, align 4
  %365 = sext i32 %364 to i64
  store i64 %365, i64* %RCX, align 8, !tbaa !2428
  %366 = add i64 %365, %338
  %367 = add i64 %332, 29
  store i64 %367, i64* %PC, align 8
  %368 = inttoptr i64 %366 to i8*
  store i8 88, i8* %368, align 1
  %369 = load i64, i64* %PC, align 8
  %370 = add i64 %369, -740
  %371 = add i64 %369, 5
  %372 = load i64, i64* %RSP, align 8, !tbaa !2428
  %373 = add i64 %372, -8
  %374 = inttoptr i64 %373 to i64*
  store i64 %371, i64* %374, align 8
  store i64 %373, i64* %RSP, align 8, !tbaa !2428
  store i64 %370, i64* %PC, align 8, !tbaa !2428
  %375 = tail call %struct.Memory* @sub_4005a0_draw_renamed_(%struct.State* nonnull %0, i64 %370, %struct.Memory* %MEMORY.1)
  %376 = load i64, i64* %RBP, align 8
  %377 = add i64 %376, -36
  %378 = load i64, i64* %PC, align 8
  %379 = add i64 %378, 3
  store i64 %379, i64* %PC, align 8
  %380 = inttoptr i64 %377 to i32*
  %381 = load i32, i32* %380, align 4
  %382 = add i32 %381, 1
  %383 = zext i32 %382 to i64
  store i64 %383, i64* %RDX, align 8, !tbaa !2428
  %384 = icmp eq i32 %381, -1
  %385 = icmp eq i32 %382, 0
  %386 = or i1 %384, %385
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %5, align 1, !tbaa !2432
  %388 = and i32 %382, 255
  %389 = tail call i32 @llvm.ctpop.i32(i32 %388) #8
  %390 = trunc i32 %389 to i8
  %391 = and i8 %390, 1
  %392 = xor i8 %391, 1
  store i8 %392, i8* %6, align 1, !tbaa !2446
  %393 = xor i32 %381, %382
  %394 = lshr i32 %393, 4
  %395 = trunc i32 %394 to i8
  %396 = and i8 %395, 1
  store i8 %396, i8* %7, align 1, !tbaa !2447
  %397 = zext i1 %385 to i8
  store i8 %397, i8* %8, align 1, !tbaa !2448
  %398 = lshr i32 %382, 31
  %399 = trunc i32 %398 to i8
  store i8 %399, i8* %9, align 1, !tbaa !2449
  %400 = lshr i32 %381, 31
  %401 = xor i32 %398, %400
  %402 = add nuw nsw i32 %401, %398
  %403 = icmp eq i32 %402, 2
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %10, align 1, !tbaa !2450
  %405 = add i64 %378, 9
  store i64 %405, i64* %PC, align 8
  store i32 %382, i32* %380, align 4
  %406 = load i64, i64* %PC, align 8
  %407 = load i64, i64* %RBP, align 8
  %408 = add i64 %407, -36
  %409 = add i64 %406, -474
  store i64 %409, i64* %PC, align 8
  %410 = inttoptr i64 %408 to i32*
  %411 = load i32, i32* %410, align 4
  %412 = add i32 %411, -28
  %413 = icmp ult i32 %411, 28
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %5, align 1, !tbaa !2432
  %415 = and i32 %412, 255
  %416 = tail call i32 @llvm.ctpop.i32(i32 %415) #8
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  %419 = xor i8 %418, 1
  store i8 %419, i8* %6, align 1, !tbaa !2446
  %420 = xor i32 %411, 16
  %421 = xor i32 %420, %412
  %422 = lshr i32 %421, 4
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  store i8 %424, i8* %7, align 1, !tbaa !2447
  %425 = icmp eq i32 %412, 0
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %8, align 1, !tbaa !2448
  %427 = lshr i32 %412, 31
  %428 = trunc i32 %427 to i8
  store i8 %428, i8* %9, align 1, !tbaa !2449
  %429 = lshr i32 %411, 31
  %430 = xor i32 %427, %429
  %431 = add nuw nsw i32 %430, %429
  %432 = icmp eq i32 %431, 2
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %10, align 1, !tbaa !2450
  %434 = icmp ne i8 %428, 0
  %435 = xor i1 %434, %432
  %.v32 = select i1 %435, i64 -468, i64 5
  %436 = add i64 %406, %.v32
  store i64 %436, i64* %PC, align 8, !tbaa !2428
  br i1 %435, label %block_4006be, label %block_400897

block_40080f:                                     ; preds = %block_4007e9
  %437 = add i64 %.pre19, -20
  %438 = add i64 %517, 4
  store i64 %438, i64* %PC, align 8
  %439 = inttoptr i64 %437 to i32*
  %440 = load i32, i32* %439, align 4
  store i8 0, i8* %5, align 1, !tbaa !2432
  %441 = and i32 %440, 255
  %442 = tail call i32 @llvm.ctpop.i32(i32 %441) #8
  %443 = trunc i32 %442 to i8
  %444 = and i8 %443, 1
  %445 = xor i8 %444, 1
  store i8 %445, i8* %6, align 1, !tbaa !2446
  store i8 0, i8* %7, align 1, !tbaa !2447
  %446 = icmp eq i32 %440, 0
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %8, align 1, !tbaa !2448
  %448 = lshr i32 %440, 31
  %449 = trunc i32 %448 to i8
  store i8 %449, i8* %9, align 1, !tbaa !2449
  store i8 0, i8* %10, align 1, !tbaa !2450
  %450 = icmp ne i8 %449, 0
  %451 = or i1 %446, %450
  %.v28 = select i1 %451, i64 20, i64 10
  %452 = add i64 %517, %.v28
  store i64 %452, i64* %PC, align 8, !tbaa !2428
  br i1 %451, label %block_400823, label %block_400819

block_4007e9:                                     ; preds = %block_4007df
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %453 = add i64 %544, 14
  store i64 %453, i64* %PC, align 8
  %454 = load i32, i32* %521, align 4
  %455 = sext i32 %454 to i64
  %456 = mul nsw i64 %455, 11
  store i64 %456, i64* %RCX, align 8, !tbaa !2428
  %457 = lshr i64 %456, 63
  %458 = add i64 %456, ptrtoint (%maze_type* @maze to i64)
  store i64 %458, i64* %RAX, align 8, !tbaa !2428
  %459 = icmp ult i64 %458, ptrtoint (%maze_type* @maze to i64)
  %460 = icmp ult i64 %458, %456
  %461 = or i1 %459, %460
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %5, align 1, !tbaa !2432
  %463 = trunc i64 %458 to i32
  %464 = and i32 %463, 255
  %465 = tail call i32 @llvm.ctpop.i32(i32 %464) #8
  %466 = trunc i32 %465 to i8
  %467 = and i8 %466, 1
  %468 = xor i8 %467, 1
  store i8 %468, i8* %6, align 1, !tbaa !2446
  %469 = xor i64 %456, ptrtoint (%maze_type* @maze to i64)
  %470 = xor i64 %469, %458
  %471 = lshr i64 %470, 4
  %472 = trunc i64 %471 to i8
  %473 = and i8 %472, 1
  store i8 %473, i8* %7, align 1, !tbaa !2447
  %474 = icmp eq i64 %458, 0
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %8, align 1, !tbaa !2448
  %476 = lshr i64 %458, 63
  %477 = trunc i64 %476 to i8
  store i8 %477, i8* %9, align 1, !tbaa !2449
  %478 = xor i64 %476, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %479 = xor i64 %476, %457
  %480 = add nuw nsw i64 %478, %479
  %481 = icmp eq i64 %480, 2
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %10, align 1, !tbaa !2450
  %483 = add i64 %518, -20
  %484 = add i64 %544, 25
  store i64 %484, i64* %PC, align 8
  %485 = inttoptr i64 %483 to i32*
  %486 = load i32, i32* %485, align 4
  %487 = sext i32 %486 to i64
  store i64 %487, i64* %RCX, align 8, !tbaa !2428
  %488 = add i64 %487, %458
  %489 = add i64 %544, 29
  store i64 %489, i64* %PC, align 8
  %490 = inttoptr i64 %488 to i8*
  %491 = load i8, i8* %490, align 1
  %492 = sext i8 %491 to i64
  %493 = and i64 %492, 4294967295
  store i64 %493, i64* %RDX, align 8, !tbaa !2428
  %494 = sext i8 %491 to i32
  %495 = add nsw i32 %494, -124
  %496 = icmp ult i8 %491, 124
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %5, align 1, !tbaa !2432
  %498 = and i32 %495, 255
  %499 = tail call i32 @llvm.ctpop.i32(i32 %498) #8
  %500 = trunc i32 %499 to i8
  %501 = and i8 %500, 1
  %502 = xor i8 %501, 1
  store i8 %502, i8* %6, align 1, !tbaa !2446
  %503 = xor i32 %494, 16
  %504 = xor i32 %503, %495
  %505 = lshr i32 %504, 4
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  store i8 %507, i8* %7, align 1, !tbaa !2447
  %508 = icmp eq i32 %495, 0
  %509 = zext i1 %508 to i8
  store i8 %509, i8* %8, align 1, !tbaa !2448
  %510 = lshr i32 %495, 31
  %511 = trunc i32 %510 to i8
  store i8 %511, i8* %9, align 1, !tbaa !2449
  %512 = lshr i32 %494, 31
  %513 = xor i32 %510, %512
  %514 = add nuw nsw i32 %513, %512
  %515 = icmp eq i32 %514, 2
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %10, align 1, !tbaa !2450
  %.v27 = select i1 %508, i64 38, i64 58
  %517 = add i64 %544, %.v27
  store i64 %517, i64* %PC, align 8, !tbaa !2428
  %.pre19 = load i64, i64* %RBP, align 8
  br i1 %508, label %block_40080f, label %block_400823

block_4007df:                                     ; preds = %block_4007b9
  %518 = load i64, i64* %RBP, align 8
  %519 = add i64 %518, -24
  %520 = add i64 %611, 4
  store i64 %520, i64* %PC, align 8
  %521 = inttoptr i64 %519 to i32*
  %522 = load i32, i32* %521, align 4
  %523 = add i32 %522, -2
  %524 = icmp ult i32 %522, 2
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %5, align 1, !tbaa !2432
  %526 = and i32 %523, 255
  %527 = tail call i32 @llvm.ctpop.i32(i32 %526) #8
  %528 = trunc i32 %527 to i8
  %529 = and i8 %528, 1
  %530 = xor i8 %529, 1
  store i8 %530, i8* %6, align 1, !tbaa !2446
  %531 = xor i32 %522, %523
  %532 = lshr i32 %531, 4
  %533 = trunc i32 %532 to i8
  %534 = and i8 %533, 1
  store i8 %534, i8* %7, align 1, !tbaa !2447
  %535 = icmp eq i32 %523, 0
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %8, align 1, !tbaa !2448
  %537 = lshr i32 %523, 31
  %538 = trunc i32 %537 to i8
  store i8 %538, i8* %9, align 1, !tbaa !2449
  %539 = lshr i32 %522, 31
  %540 = xor i32 %537, %539
  %541 = add nuw nsw i32 %540, %539
  %542 = icmp eq i32 %541, 2
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %10, align 1, !tbaa !2450
  %.v26 = select i1 %535, i64 10, i64 68
  %544 = add i64 %611, %.v26
  store i64 %544, i64* %PC, align 8, !tbaa !2428
  br i1 %535, label %block_4007e9, label %block_400823

block_4007b9:                                     ; preds = %block_4006f6
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %545 = load i64, i64* %RBP, align 8
  %546 = add i64 %545, -24
  %547 = add i64 %291, 14
  store i64 %547, i64* %PC, align 8
  %548 = inttoptr i64 %546 to i32*
  %549 = load i32, i32* %548, align 4
  %550 = sext i32 %549 to i64
  %551 = mul nsw i64 %550, 11
  store i64 %551, i64* %RCX, align 8, !tbaa !2428
  %552 = lshr i64 %551, 63
  %553 = add i64 %551, ptrtoint (%maze_type* @maze to i64)
  store i64 %553, i64* %RAX, align 8, !tbaa !2428
  %554 = icmp ult i64 %553, ptrtoint (%maze_type* @maze to i64)
  %555 = icmp ult i64 %553, %551
  %556 = or i1 %554, %555
  %557 = zext i1 %556 to i8
  store i8 %557, i8* %5, align 1, !tbaa !2432
  %558 = trunc i64 %553 to i32
  %559 = and i32 %558, 255
  %560 = tail call i32 @llvm.ctpop.i32(i32 %559) #8
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  %563 = xor i8 %562, 1
  store i8 %563, i8* %6, align 1, !tbaa !2446
  %564 = xor i64 %551, ptrtoint (%maze_type* @maze to i64)
  %565 = xor i64 %564, %553
  %566 = lshr i64 %565, 4
  %567 = trunc i64 %566 to i8
  %568 = and i8 %567, 1
  store i8 %568, i8* %7, align 1, !tbaa !2447
  %569 = icmp eq i64 %553, 0
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %8, align 1, !tbaa !2448
  %571 = lshr i64 %553, 63
  %572 = trunc i64 %571 to i8
  store i8 %572, i8* %9, align 1, !tbaa !2449
  %573 = xor i64 %571, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %574 = xor i64 %571, %552
  %575 = add nuw nsw i64 %573, %574
  %576 = icmp eq i64 %575, 2
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %10, align 1, !tbaa !2450
  %578 = add i64 %545, -20
  %579 = add i64 %291, 25
  store i64 %579, i64* %PC, align 8
  %580 = inttoptr i64 %578 to i32*
  %581 = load i32, i32* %580, align 4
  %582 = sext i32 %581 to i64
  store i64 %582, i64* %RCX, align 8, !tbaa !2428
  %583 = add i64 %582, %553
  %584 = add i64 %291, 29
  store i64 %584, i64* %PC, align 8
  %585 = inttoptr i64 %583 to i8*
  %586 = load i8, i8* %585, align 1
  %587 = sext i8 %586 to i64
  %588 = and i64 %587, 4294967295
  store i64 %588, i64* %RDX, align 8, !tbaa !2428
  %589 = sext i8 %586 to i32
  %590 = add nsw i32 %589, -32
  %591 = icmp ult i8 %586, 32
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %5, align 1, !tbaa !2432
  %593 = and i32 %590, 255
  %594 = tail call i32 @llvm.ctpop.i32(i32 %593) #8
  %595 = trunc i32 %594 to i8
  %596 = and i8 %595, 1
  %597 = xor i8 %596, 1
  store i8 %597, i8* %6, align 1, !tbaa !2446
  %598 = xor i32 %589, %590
  %599 = lshr i32 %598, 4
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  store i8 %601, i8* %7, align 1, !tbaa !2447
  %602 = icmp eq i32 %590, 0
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %8, align 1, !tbaa !2448
  %604 = lshr i32 %590, 31
  %605 = trunc i32 %604 to i8
  store i8 %605, i8* %9, align 1, !tbaa !2449
  %606 = lshr i32 %589, 31
  %607 = xor i32 %604, %606
  %608 = add nuw nsw i32 %607, %606
  %609 = icmp eq i32 %608, 2
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %10, align 1, !tbaa !2450
  %.v25 = select i1 %602, i64 118, i64 38
  %611 = add i64 %291, %.v25
  store i64 %611, i64* %PC, align 8, !tbaa !2428
  br i1 %602, label %block_40082f, label %block_4007df

block_4006e8:                                     ; preds = %block_4006be
  %612 = load i64, i64* %RBP, align 8
  %613 = add i64 %612, -80
  %614 = add i64 %81, 4
  store i64 %614, i64* %PC, align 8
  %615 = inttoptr i64 %613 to i64*
  %616 = load i64, i64* %615, align 8
  store i64 %616, i64* %RAX, align 8, !tbaa !2428
  %617 = shl i64 %616, 3
  %618 = add i64 %617, add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 8)
  %619 = add i64 %81, 12
  store i64 %619, i64* %PC, align 8
  %620 = inttoptr i64 %618 to i64*
  %621 = load i64, i64* %620, align 8
  store i64 %621, i64* %RCX, align 8, !tbaa !2428
  store i64 %621, i64* %PC, align 8, !tbaa !2428
  switch i64 %621, label %701 [
    i64 4196114, label %block_400712
    i64 4196128, label %block_400720
    i64 4196100, label %block_400704
    i64 4196142, label %block_40072e
    i64 4196086, label %block_4006f6
  ]

block_400847:                                     ; preds = %block_40083b
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %622 = add i64 %177, -967
  %623 = add i64 %177, 17
  %624 = load i64, i64* %RSP, align 8, !tbaa !2428
  %625 = add i64 %624, -8
  %626 = inttoptr i64 %625 to i64*
  store i64 %623, i64* %626, align 8
  store i64 %625, i64* %RSP, align 8, !tbaa !2428
  store i64 %622, i64* %PC, align 8, !tbaa !2428
  %627 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %628 = load i64, i64* %RBP, align 8
  %629 = add i64 %628, -4
  %630 = load i64, i64* %PC, align 8
  %631 = add i64 %630, 7
  store i64 %631, i64* %PC, align 8
  %632 = inttoptr i64 %629 to i32*
  store i32 2, i32* %632, align 4
  %633 = load i64, i64* %RBP, align 8
  %634 = add i64 %633, -104
  %635 = load i32, i32* %EAX, align 4
  %636 = load i64, i64* %PC, align 8
  %637 = add i64 %636, 3
  store i64 %637, i64* %PC, align 8
  %638 = inttoptr i64 %634 to i32*
  store i32 %635, i32* %638, align 4
  %639 = load i64, i64* %PC, align 8
  %640 = add i64 %639, 80
  store i64 %640, i64* %PC, align 8, !tbaa !2428
  br label %block_4008b2

block_400823:                                     ; preds = %block_4007e9, %block_4007df, %block_40080f, %block_400819
  %641 = phi i64 [ %544, %block_4007df ], [ %452, %block_40080f ], [ %143, %block_400819 ], [ %517, %block_4007e9 ]
  %642 = phi i64 [ %518, %block_4007df ], [ %.pre19, %block_40080f ], [ %.pre19, %block_400819 ], [ %.pre19, %block_4007e9 ]
  %643 = add i64 %642, -28
  %644 = add i64 %641, 3
  store i64 %644, i64* %PC, align 8
  %645 = inttoptr i64 %643 to i32*
  %646 = load i32, i32* %645, align 4
  %647 = zext i32 %646 to i64
  store i64 %647, i64* %RAX, align 8, !tbaa !2428
  %648 = add i64 %642, -20
  %649 = add i64 %641, 6
  store i64 %649, i64* %PC, align 8
  %650 = inttoptr i64 %648 to i32*
  store i32 %646, i32* %650, align 4
  %651 = load i64, i64* %RBP, align 8
  %652 = add i64 %651, -32
  %653 = load i64, i64* %PC, align 8
  %654 = add i64 %653, 3
  store i64 %654, i64* %PC, align 8
  %655 = inttoptr i64 %652 to i32*
  %656 = load i32, i32* %655, align 4
  %657 = zext i32 %656 to i64
  store i64 %657, i64* %RAX, align 8, !tbaa !2428
  %658 = add i64 %651, -24
  %659 = add i64 %653, 6
  store i64 %659, i64* %PC, align 8
  %660 = inttoptr i64 %658 to i32*
  store i32 %656, i32* %660, align 4
  %.pre20 = load i64, i64* %PC, align 8
  br label %block_40082f

block_400786:                                     ; preds = %block_4006f6
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %661 = add i64 %291, -774
  %662 = add i64 %291, 17
  %663 = load i64, i64* %RSP, align 8, !tbaa !2428
  %664 = add i64 %663, -8
  %665 = inttoptr i64 %664 to i64*
  store i64 %662, i64* %665, align 8
  store i64 %664, i64* %RSP, align 8, !tbaa !2428
  store i64 %661, i64* %PC, align 8, !tbaa !2428
  %666 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %667 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2428
  %668 = load i64, i64* %RBP, align 8
  %669 = add i64 %668, -64
  store i64 %669, i64* %RSI, align 8, !tbaa !2428
  %670 = add i64 %668, -96
  %671 = load i32, i32* %EAX, align 4
  %672 = add i64 %667, 17
  store i64 %672, i64* %PC, align 8
  %673 = inttoptr i64 %670 to i32*
  store i32 %671, i32* %673, align 4
  %674 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %675 = add i64 %674, -808
  %676 = add i64 %674, 7
  %677 = load i64, i64* %RSP, align 8, !tbaa !2428
  %678 = add i64 %677, -8
  %679 = inttoptr i64 %678 to i64*
  store i64 %676, i64* %679, align 8
  store i64 %678, i64* %RSP, align 8, !tbaa !2428
  store i64 %675, i64* %PC, align 8, !tbaa !2428
  %680 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %666)
  %681 = load i64, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %5, align 1, !tbaa !2432
  store i8 1, i8* %6, align 1, !tbaa !2446
  store i8 1, i8* %8, align 1, !tbaa !2448
  store i8 0, i8* %9, align 1, !tbaa !2449
  store i8 0, i8* %10, align 1, !tbaa !2450
  store i8 0, i8* %7, align 1, !tbaa !2447
  %682 = load i64, i64* %RBP, align 8
  %683 = add i64 %682, -100
  %684 = load i32, i32* %EAX, align 4
  %685 = add i64 %681, 5
  store i64 %685, i64* %PC, align 8
  %686 = inttoptr i64 %683 to i32*
  store i32 %684, i32* %686, align 4
  %687 = load i64, i64* %PC, align 8
  %688 = add i64 %687, -788
  %689 = add i64 %687, 5
  %690 = load i64, i64* %RSP, align 8, !tbaa !2428
  %691 = add i64 %690, -8
  %692 = inttoptr i64 %691 to i64*
  store i64 %689, i64* %692, align 8
  store i64 %691, i64* %RSP, align 8, !tbaa !2428
  store i64 %688, i64* %PC, align 8, !tbaa !2428
  %693 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %680)
  %694 = load i64, i64* %PC, align 8
  %695 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %694, %struct.Memory* %693)
  ret %struct.Memory* %695

block_40072e:                                     ; preds = %block_4006e8, %block_4006be
  %696 = phi i64 [ 4196142, %block_4006e8 ], [ %81, %block_4006be ]
  %697 = tail call %struct.Memory* @sub_40072e(%struct.State* nonnull %0, i64 %696, %struct.Memory* %375)
  ret %struct.Memory* %697

block_400704:                                     ; preds = %block_4006e8
  %698 = tail call %struct.Memory* @sub_400704(%struct.State* nonnull %0, i64 4196100, %struct.Memory* %375)
  ret %struct.Memory* %698

block_400720:                                     ; preds = %block_4006e8
  %699 = tail call %struct.Memory* @sub_400720(%struct.State* nonnull %0, i64 4196128, %struct.Memory* %375)
  ret %struct.Memory* %699

block_400712:                                     ; preds = %block_4006e8
  %700 = tail call %struct.Memory* @sub_400712(%struct.State* nonnull %0, i64 4196114, %struct.Memory* %375)
  ret %struct.Memory* %700

; <label>:701:                                    ; preds = %block_4006e8
  %702 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %621, %struct.Memory* %375)
  ret %struct.Memory* %702
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004f0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4004f0:
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
  store i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 zext (i1 icmp ult (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)) to i8), i8* %10, align 1, !tbaa !2432
  %11 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 sub (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)) to i32), i32 255)) #8
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1, !tbaa !2446
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295)), i64 sub (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64))), i64 4) to i8), i8 1), i8* %16, align 1, !tbaa !2447
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 zext (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)), i64 0) to i8), i8* %17, align 1, !tbaa !2448
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 trunc (i64 lshr (i64 sub (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)), i64 63) to i8), i8* %18, align 1, !tbaa !2449
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 sub (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)), i64 63), i64 lshr (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 63)), i64 xor (i64 lshr (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 63), i64 lshr (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 63))), i64 2) to i8), i8* %19, align 1, !tbaa !2450
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %20 = add i64 %9, select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)), i64 0), i64 39, i64 16)
  store i64 %20, i64* %PC, align 8, !tbaa !2428
  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)), i64 0), label %block_400518, label %block_400501

block_400518:                                     ; preds = %block_400501, %block_4004f0
  %21 = phi i64 [ %28, %block_400501 ], [ %20, %block_4004f0 ]
  %22 = add i64 %21, 1
  store i64 %22, i64* %PC, align 8
  %23 = load i64, i64* %8, align 8
  store i64 %23, i64* %RBP, align 8, !tbaa !2428
  store i64 %6, i64* %5, align 8, !tbaa !2428
  %24 = add i64 %21, 2
  store i64 %24, i64* %PC, align 8
  %25 = inttoptr i64 %6 to i64*
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %PC, align 8, !tbaa !2428
  %27 = add i64 %6, 8
  store i64 %27, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400501:                                     ; preds = %block_4004f0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %10, align 1, !tbaa !2432
  store i8 1, i8* %15, align 1, !tbaa !2446
  store i8 1, i8* %17, align 1, !tbaa !2448
  store i8 0, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %19, align 1, !tbaa !2450
  store i8 0, i8* %16, align 1, !tbaa !2447
  %28 = add i64 %9, add (i64 select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)), i64 0), i64 39, i64 16), i64 23)
  store i64 %28, i64* %PC, align 8, !tbaa !2428
  br label %block_400518
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005a0_draw(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4005a0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
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
  store i8 %12, i8* %13, align 1, !tbaa !2432
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #8
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1, !tbaa !2446
  %21 = xor i64 %7, %10
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1, !tbaa !2447
  %26 = icmp eq i64 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1, !tbaa !2448
  %29 = lshr i64 %10, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1, !tbaa !2449
  %32 = lshr i64 %7, 63
  %33 = xor i64 %29, %32
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1, !tbaa !2450
  %38 = add i64 %6, -12
  %39 = add i64 %9, 14
  store i64 %39, i64* %PC, align 8
  %40 = inttoptr i64 %38 to i32*
  store i32 0, i32* %40, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_4005af

block_4005b9:                                     ; preds = %block_4005af
  %41 = add i64 %45, -8
  %42 = add i64 %73, 7
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %41 to i32*
  store i32 0, i32* %43, align 4
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_4005c0

block_4005af:                                     ; preds = %block_400609, %block_4005a0
  %44 = phi i64 [ %.pre, %block_4005a0 ], [ %246, %block_400609 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4005a0 ], [ %208, %block_400609 ]
  %45 = load i64, i64* %RBP, align 8
  %46 = add i64 %45, -4
  %47 = add i64 %44, 4
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %46 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = add i32 %49, -7
  %51 = icmp ult i32 %49, 7
  %52 = zext i1 %51 to i8
  store i8 %52, i8* %13, align 1, !tbaa !2432
  %53 = and i32 %50, 255
  %54 = tail call i32 @llvm.ctpop.i32(i32 %53) #8
  %55 = trunc i32 %54 to i8
  %56 = and i8 %55, 1
  %57 = xor i8 %56, 1
  store i8 %57, i8* %20, align 1, !tbaa !2446
  %58 = xor i32 %49, %50
  %59 = lshr i32 %58, 4
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 1
  store i8 %61, i8* %25, align 1, !tbaa !2447
  %62 = icmp eq i32 %50, 0
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %28, align 1, !tbaa !2448
  %64 = lshr i32 %50, 31
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %31, align 1, !tbaa !2449
  %66 = lshr i32 %49, 31
  %67 = xor i32 %64, %66
  %68 = add nuw nsw i32 %67, %66
  %69 = icmp eq i32 %68, 2
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %37, align 1, !tbaa !2450
  %71 = icmp ne i8 %65, 0
  %72 = xor i1 %71, %69
  %.v = select i1 %72, i64 10, i64 124
  %73 = add i64 %44, %.v
  store i64 %73, i64* %PC, align 8, !tbaa !2428
  br i1 %72, label %block_4005b9, label %block_40062b

block_40062b:                                     ; preds = %block_4005af
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 273), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %74 = add i64 %73, -427
  %75 = add i64 %73, 17
  %76 = load i64, i64* %RSP, align 8, !tbaa !2428
  %77 = add i64 %76, -8
  %78 = inttoptr i64 %77 to i64*
  store i64 %75, i64* %78, align 8
  store i64 %77, i64* %RSP, align 8, !tbaa !2428
  store i64 %74, i64* %PC, align 8, !tbaa !2428
  %79 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %80 = load i64, i64* %RBP, align 8
  %81 = add i64 %80, -20
  %82 = load i32, i32* %EAX, align 4
  %83 = load i64, i64* %PC, align 8
  %84 = add i64 %83, 3
  store i64 %84, i64* %PC, align 8
  %85 = inttoptr i64 %81 to i32*
  store i32 %82, i32* %85, align 4
  %86 = load i64, i64* %RSP, align 8
  %87 = load i64, i64* %PC, align 8
  %88 = add i64 %86, 32
  store i64 %88, i64* %RSP, align 8, !tbaa !2428
  %89 = icmp ugt i64 %86, -33
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %13, align 1, !tbaa !2432
  %91 = trunc i64 %88 to i32
  %92 = and i32 %91, 255
  %93 = tail call i32 @llvm.ctpop.i32(i32 %92) #8
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %96 = xor i8 %95, 1
  store i8 %96, i8* %20, align 1, !tbaa !2446
  %97 = xor i64 %86, %88
  %98 = lshr i64 %97, 4
  %99 = trunc i64 %98 to i8
  %100 = and i8 %99, 1
  store i8 %100, i8* %25, align 1, !tbaa !2447
  %101 = icmp eq i64 %88, 0
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %28, align 1, !tbaa !2448
  %103 = lshr i64 %88, 63
  %104 = trunc i64 %103 to i8
  store i8 %104, i8* %31, align 1, !tbaa !2449
  %105 = lshr i64 %86, 63
  %106 = xor i64 %103, %105
  %107 = add nuw nsw i64 %106, %103
  %108 = icmp eq i64 %107, 2
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %37, align 1, !tbaa !2450
  %110 = add i64 %87, 5
  store i64 %110, i64* %PC, align 8
  %111 = add i64 %86, 40
  %112 = inttoptr i64 %88 to i64*
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %RBP, align 8, !tbaa !2428
  store i64 %111, i64* %RSP, align 8, !tbaa !2428
  %114 = add i64 %87, 6
  store i64 %114, i64* %PC, align 8
  %115 = inttoptr i64 %111 to i64*
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %PC, align 8, !tbaa !2428
  %117 = add i64 %86, 48
  store i64 %117, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %79

block_4005ca:                                     ; preds = %block_4005c0
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 192), i64* %RDI, align 8, !tbaa !2428
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %118 = add i64 %248, -4
  %119 = add i64 %276, 24
  store i64 %119, i64* %PC, align 8
  %120 = inttoptr i64 %118 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = mul nsw i64 %122, 11
  store i64 %123, i64* %RCX, align 8, !tbaa !2428
  %124 = lshr i64 %123, 63
  %125 = add i64 %123, ptrtoint (%maze_type* @maze to i64)
  store i64 %125, i64* %RAX, align 8, !tbaa !2428
  %126 = icmp ult i64 %125, ptrtoint (%maze_type* @maze to i64)
  %127 = icmp ult i64 %125, %123
  %128 = or i1 %126, %127
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %13, align 1, !tbaa !2432
  %130 = trunc i64 %125 to i32
  %131 = and i32 %130, 255
  %132 = tail call i32 @llvm.ctpop.i32(i32 %131) #8
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  store i8 %135, i8* %20, align 1, !tbaa !2446
  %136 = xor i64 %123, ptrtoint (%maze_type* @maze to i64)
  %137 = xor i64 %136, %125
  %138 = lshr i64 %137, 4
  %139 = trunc i64 %138 to i8
  %140 = and i8 %139, 1
  store i8 %140, i8* %25, align 1, !tbaa !2447
  %141 = icmp eq i64 %125, 0
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %28, align 1, !tbaa !2448
  %143 = lshr i64 %125, 63
  %144 = trunc i64 %143 to i8
  store i8 %144, i8* %31, align 1, !tbaa !2449
  %145 = xor i64 %143, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %146 = xor i64 %143, %124
  %147 = add nuw nsw i64 %145, %146
  %148 = icmp eq i64 %147, 2
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %37, align 1, !tbaa !2450
  %150 = add i64 %276, 35
  store i64 %150, i64* %PC, align 8
  %151 = load i32, i32* %251, align 4
  %152 = sext i32 %151 to i64
  store i64 %152, i64* %RCX, align 8, !tbaa !2428
  %153 = add i64 %152, %125
  %154 = add i64 %276, 39
  store i64 %154, i64* %PC, align 8
  %155 = inttoptr i64 %153 to i8*
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i64
  %158 = and i64 %157, 4294967295
  store i64 %158, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %159 = add i64 %276, -330
  %160 = add i64 %276, 46
  %161 = load i64, i64* %RSP, align 8, !tbaa !2428
  %162 = add i64 %161, -8
  %163 = inttoptr i64 %162 to i64*
  store i64 %160, i64* %163, align 8
  store i64 %162, i64* %RSP, align 8, !tbaa !2428
  store i64 %159, i64* %PC, align 8, !tbaa !2428
  %164 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %165 = load i64, i64* %RBP, align 8
  %166 = add i64 %165, -12
  %167 = load i32, i32* %EAX, align 4
  %168 = load i64, i64* %PC, align 8
  %169 = add i64 %168, 3
  store i64 %169, i64* %PC, align 8
  %170 = inttoptr i64 %166 to i32*
  store i32 %167, i32* %170, align 4
  %171 = load i64, i64* %RBP, align 8
  %172 = add i64 %171, -8
  %173 = load i64, i64* %PC, align 8
  %174 = add i64 %173, 3
  store i64 %174, i64* %PC, align 8
  %175 = inttoptr i64 %172 to i32*
  %176 = load i32, i32* %175, align 4
  %177 = add i32 %176, 1
  %178 = zext i32 %177 to i64
  store i64 %178, i64* %RAX, align 8, !tbaa !2428
  %179 = icmp eq i32 %176, -1
  %180 = icmp eq i32 %177, 0
  %181 = or i1 %179, %180
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %13, align 1, !tbaa !2432
  %183 = and i32 %177, 255
  %184 = tail call i32 @llvm.ctpop.i32(i32 %183) #8
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  %187 = xor i8 %186, 1
  store i8 %187, i8* %20, align 1, !tbaa !2446
  %188 = xor i32 %176, %177
  %189 = lshr i32 %188, 4
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  store i8 %191, i8* %25, align 1, !tbaa !2447
  %192 = zext i1 %180 to i8
  store i8 %192, i8* %28, align 1, !tbaa !2448
  %193 = lshr i32 %177, 31
  %194 = trunc i32 %193 to i8
  store i8 %194, i8* %31, align 1, !tbaa !2449
  %195 = lshr i32 %176, 31
  %196 = xor i32 %193, %195
  %197 = add nuw nsw i32 %196, %193
  %198 = icmp eq i32 %197, 2
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %37, align 1, !tbaa !2450
  %200 = add i64 %173, 9
  store i64 %200, i64* %PC, align 8
  store i32 %177, i32* %175, align 4
  %201 = load i64, i64* %PC, align 8
  %202 = add i64 %201, -68
  store i64 %202, i64* %PC, align 8, !tbaa !2428
  br label %block_4005c0

block_400609:                                     ; preds = %block_4005c0
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 273), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %203 = add i64 %276, -393
  %204 = add i64 %276, 17
  %205 = load i64, i64* %RSP, align 8, !tbaa !2428
  %206 = add i64 %205, -8
  %207 = inttoptr i64 %206 to i64*
  store i64 %204, i64* %207, align 8
  store i64 %206, i64* %RSP, align 8, !tbaa !2428
  store i64 %203, i64* %PC, align 8, !tbaa !2428
  %208 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %209 = load i64, i64* %RBP, align 8
  %210 = add i64 %209, -16
  %211 = load i32, i32* %EAX, align 4
  %212 = load i64, i64* %PC, align 8
  %213 = add i64 %212, 3
  store i64 %213, i64* %PC, align 8
  %214 = inttoptr i64 %210 to i32*
  store i32 %211, i32* %214, align 4
  %215 = load i64, i64* %RBP, align 8
  %216 = add i64 %215, -4
  %217 = load i64, i64* %PC, align 8
  %218 = add i64 %217, 3
  store i64 %218, i64* %PC, align 8
  %219 = inttoptr i64 %216 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = add i32 %220, 1
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %RAX, align 8, !tbaa !2428
  %223 = icmp eq i32 %220, -1
  %224 = icmp eq i32 %221, 0
  %225 = or i1 %223, %224
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %13, align 1, !tbaa !2432
  %227 = and i32 %221, 255
  %228 = tail call i32 @llvm.ctpop.i32(i32 %227) #8
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  %231 = xor i8 %230, 1
  store i8 %231, i8* %20, align 1, !tbaa !2446
  %232 = xor i32 %220, %221
  %233 = lshr i32 %232, 4
  %234 = trunc i32 %233 to i8
  %235 = and i8 %234, 1
  store i8 %235, i8* %25, align 1, !tbaa !2447
  %236 = zext i1 %224 to i8
  store i8 %236, i8* %28, align 1, !tbaa !2448
  %237 = lshr i32 %221, 31
  %238 = trunc i32 %237 to i8
  store i8 %238, i8* %31, align 1, !tbaa !2449
  %239 = lshr i32 %220, 31
  %240 = xor i32 %237, %239
  %241 = add nuw nsw i32 %240, %237
  %242 = icmp eq i32 %241, 2
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %37, align 1, !tbaa !2450
  %244 = add i64 %217, 9
  store i64 %244, i64* %PC, align 8
  store i32 %221, i32* %219, align 4
  %245 = load i64, i64* %PC, align 8
  %246 = add i64 %245, -119
  store i64 %246, i64* %PC, align 8, !tbaa !2428
  br label %block_4005af

block_4005c0:                                     ; preds = %block_4005ca, %block_4005b9
  %247 = phi i64 [ %.pre1, %block_4005b9 ], [ %202, %block_4005ca ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_4005b9 ], [ %164, %block_4005ca ]
  %248 = load i64, i64* %RBP, align 8
  %249 = add i64 %248, -8
  %250 = add i64 %247, 4
  store i64 %250, i64* %PC, align 8
  %251 = inttoptr i64 %249 to i32*
  %252 = load i32, i32* %251, align 4
  %253 = add i32 %252, -11
  %254 = icmp ult i32 %252, 11
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %13, align 1, !tbaa !2432
  %256 = and i32 %253, 255
  %257 = tail call i32 @llvm.ctpop.i32(i32 %256) #8
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = xor i8 %259, 1
  store i8 %260, i8* %20, align 1, !tbaa !2446
  %261 = xor i32 %252, %253
  %262 = lshr i32 %261, 4
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  store i8 %264, i8* %25, align 1, !tbaa !2447
  %265 = icmp eq i32 %253, 0
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %28, align 1, !tbaa !2448
  %267 = lshr i32 %253, 31
  %268 = trunc i32 %267 to i8
  store i8 %268, i8* %31, align 1, !tbaa !2449
  %269 = lshr i32 %252, 31
  %270 = xor i32 %267, %269
  %271 = add nuw nsw i32 %270, %269
  %272 = icmp eq i32 %271, 2
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %37, align 1, !tbaa !2450
  %274 = icmp ne i8 %268, 0
  %275 = xor i1 %274, %272
  %.v2 = select i1 %275, i64 10, i64 73
  %276 = add i64 %247, %.v2
  %277 = add i64 %276, 10
  store i64 %277, i64* %PC, align 8
  br i1 %275, label %block_4005ca, label %block_400609
}

; Function Attrs: noinline
define %struct.Memory* @sub_40072e(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_40072e:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 195), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %4 = add i64 %1, -686
  %5 = add i64 %1, 17
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !2428
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8, !tbaa !2428
  store i64 %4, i64* %PC, align 8, !tbaa !2428
  %10 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %2)
  %11 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 235), i64* %RDI, align 8, !tbaa !2428
  %12 = load i64, i64* %RBP, align 8
  %13 = add i64 %12, -88
  %14 = load i32, i32* %EAX, align 4
  %15 = add i64 %11, 13
  store i64 %15, i64* %PC, align 8
  %16 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %16, align 4
  %17 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %18 = add i64 %17, -716
  %19 = add i64 %17, 7
  %20 = load i64, i64* %6, align 8, !tbaa !2428
  %21 = add i64 %20, -8
  %22 = inttoptr i64 %21 to i64*
  store i64 %19, i64* %22, align 8
  store i64 %21, i64* %6, align 8, !tbaa !2428
  store i64 %18, i64* %PC, align 8, !tbaa !2428
  %23 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %10)
  %24 = load i64, i64* %PC, align 8
  store i64 4294967295, i64* %RDI, align 8, !tbaa !2428
  %25 = load i64, i64* %RBP, align 8
  %26 = add i64 %25, -92
  %27 = load i32, i32* %EAX, align 4
  %28 = add i64 %24, 8
  store i64 %28, i64* %PC, align 8
  %29 = inttoptr i64 %26 to i32*
  store i32 %27, i32* %29, align 4
  %30 = load i64, i64* %PC, align 8
  %31 = add i64 %30, -699
  %32 = add i64 %30, 5
  %33 = load i64, i64* %6, align 8, !tbaa !2428
  %34 = add i64 %33, -8
  %35 = inttoptr i64 %34 to i64*
  store i64 %32, i64* %35, align 8
  store i64 %34, i64* %6, align 8, !tbaa !2428
  store i64 %31, i64* %PC, align 8, !tbaa !2428
  %36 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %23)
  %37 = load i64, i64* %PC, align 8
  %38 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %37, %struct.Memory* %36)
  ret %struct.Memory* %38
}

; Function Attrs: noinline
define %struct.Memory* @sub_400934__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400934:
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
  store i8 %18, i8* %6, align 1, !tbaa !2432
  %19 = trunc i64 %3 to i32
  %20 = and i32 %19, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20) #8
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  store i8 %24, i8* %7, align 1, !tbaa !2446
  %25 = xor i64 %4, %3
  %26 = lshr i64 %25, 4
  %27 = trunc i64 %26 to i8
  %28 = and i8 %27, 1
  store i8 %28, i8* %8, align 1, !tbaa !2447
  %29 = icmp eq i64 %3, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %9, align 1, !tbaa !2448
  %31 = trunc i64 %12 to i8
  store i8 %31, i8* %11, align 1, !tbaa !2449
  store i8 %16, i8* %17, align 1, !tbaa !2450
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
define %struct.Memory* @sub_4004b0__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4004b0:
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !2428
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %RSI, align 8, !tbaa !2428
  store i64 %13, i64* %RDX, align 8, !tbaa !2428
  %16 = and i64 %13, -16
  store i8 0, i8* %3, align 1, !tbaa !2432
  %17 = trunc i64 %13 to i32
  %18 = and i32 %17, 240
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #8
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  store i8 %22, i8* %4, align 1, !tbaa !2446
  %23 = icmp eq i64 %16, 0
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %5, align 1, !tbaa !2448
  %25 = lshr i64 %13, 63
  %26 = trunc i64 %25 to i8
  store i8 %26, i8* %6, align 1, !tbaa !2449
  store i8 0, i8* %7, align 1, !tbaa !2450
  store i8 0, i8* %8, align 1, !tbaa !2447
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
  store i64 ptrtoint (void ()* @callback_sub_400930___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_4008c0___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %36 = add i64 %35, 27
  %37 = add i64 %16, -24
  %38 = inttoptr i64 %37 to i64*
  store i64 %36, i64* %38, align 8
  store i64 %37, i64* %11, align 8, !tbaa !2428
  %39 = load i64, i64* getelementptr inbounds (%seg_600ff0__got_type, %seg_600ff0__got_type* @seg_600ff0__got, i64 0, i32 0), align 8
  store i64 %39, i64* %PC, align 8, !tbaa !2428
  %40 = tail call fastcc %struct.Memory* @ext_6010a0___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %41 = load i64, i64* %PC, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %PC, align 8
  %43 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %42, %struct.Memory* %40)
  ret %struct.Memory* %43
}

; Function Attrs: noinline
define %struct.Memory* @sub_400712(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %4 to i8*
  %EAX = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %RBP, align 8
  %phitmp = add i64 %1, 3
  br label %block_400712

block_4006be:                                     ; preds = %block_400867
  %11 = add i64 %366, -20
  %12 = add i64 %395, 3
  store i64 %12, i64* %PC, align 8
  %13 = inttoptr i64 %11 to i32*
  %14 = load i32, i32* %13, align 4
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8, !tbaa !2428
  %16 = add i64 %366, -28
  %17 = add i64 %395, 6
  store i64 %17, i64* %PC, align 8
  %18 = inttoptr i64 %16 to i32*
  store i32 %14, i32* %18, align 4
  %19 = load i64, i64* %RBP, align 8
  %20 = add i64 %19, -24
  %21 = load i64, i64* %PC, align 8
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC, align 8
  %23 = inttoptr i64 %20 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = zext i32 %24 to i64
  store i64 %25, i64* %RAX, align 8, !tbaa !2428
  %26 = add i64 %19, -32
  %27 = add i64 %21, 6
  store i64 %27, i64* %PC, align 8
  %28 = inttoptr i64 %26 to i32*
  store i32 %24, i32* %28, align 4
  %29 = load i64, i64* %RBP, align 8
  %30 = add i64 %29, -36
  %31 = load i64, i64* %PC, align 8
  %32 = add i64 %31, 4
  store i64 %32, i64* %PC, align 8
  %33 = inttoptr i64 %30 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %RCX, align 8, !tbaa !2428
  %36 = add i64 %29, -64
  %37 = add i64 %36, %35
  %38 = add i64 %31, 9
  store i64 %38, i64* %PC, align 8
  %39 = inttoptr i64 %37 to i8*
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = add nsw i32 %41, -97
  %43 = zext i32 %42 to i64
  %44 = lshr i32 %42, 31
  store i64 %43, i64* %RCX, align 8, !tbaa !2428
  %45 = add nsw i32 %41, -119
  %46 = zext i32 %45 to i64
  store i64 %46, i64* %RAX, align 8, !tbaa !2428
  %47 = icmp ult i32 %42, 22
  %48 = zext i1 %47 to i8
  store i8 %48, i8* %5, align 1, !tbaa !2432
  %49 = and i32 %45, 255
  %50 = tail call i32 @llvm.ctpop.i32(i32 %49) #8
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 1
  %53 = xor i8 %52, 1
  store i8 %53, i8* %6, align 1, !tbaa !2446
  %54 = xor i32 %42, 16
  %55 = xor i32 %54, %45
  %56 = lshr i32 %55, 4
  %57 = trunc i32 %56 to i8
  %58 = and i8 %57, 1
  store i8 %58, i8* %7, align 1, !tbaa !2447
  %59 = icmp eq i32 %45, 0
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %8, align 1, !tbaa !2448
  %61 = lshr i32 %45, 31
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %9, align 1, !tbaa !2449
  %63 = xor i32 %61, %44
  %64 = add nuw nsw i32 %63, %44
  %65 = icmp eq i32 %64, 2
  %66 = zext i1 %65 to i8
  store i8 %66, i8* %10, align 1, !tbaa !2450
  %67 = add i64 %29, -80
  %68 = add i64 %31, 21
  store i64 %68, i64* %PC, align 8
  %69 = inttoptr i64 %67 to i64*
  store i64 %43, i64* %69, align 8
  %70 = load i64, i64* %RBP, align 8
  %71 = add i64 %70, -84
  %72 = load i32, i32* %EAX, align 4
  %73 = load i64, i64* %PC, align 8
  %74 = add i64 %73, 3
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %71 to i32*
  store i32 %72, i32* %75, align 4
  %76 = load i64, i64* %PC, align 8
  %77 = load i8, i8* %5, align 1, !tbaa !2432
  %78 = load i8, i8* %8, align 1, !tbaa !2448
  %79 = or i8 %78, %77
  %80 = icmp eq i8 %79, 0
  %.v37 = select i1 %80, i64 76, i64 6
  %81 = add i64 %76, %.v37
  store i64 %81, i64* %PC, align 8, !tbaa !2428
  br i1 %80, label %block_40072e, label %block_4006e8

block_400819:                                     ; preds = %block_40080f
  %82 = add i64 %411, 4
  store i64 %82, i64* %PC, align 8
  %83 = load i32, i32* %398, align 4
  %84 = add i32 %83, -11
  %85 = icmp ult i32 %83, 11
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %5, align 1, !tbaa !2432
  %87 = and i32 %84, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #8
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %6, align 1, !tbaa !2446
  %92 = xor i32 %83, %84
  %93 = lshr i32 %92, 4
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  store i8 %95, i8* %7, align 1, !tbaa !2447
  %96 = icmp eq i32 %84, 0
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %8, align 1, !tbaa !2448
  %98 = lshr i32 %84, 31
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %9, align 1, !tbaa !2449
  %100 = lshr i32 %83, 31
  %101 = xor i32 %98, %100
  %102 = add nuw nsw i32 %101, %100
  %103 = icmp eq i32 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %10, align 1, !tbaa !2450
  %105 = icmp ne i8 %99, 0
  %106 = xor i1 %105, %103
  %.v33 = select i1 %106, i64 22, i64 10
  %107 = add i64 %411, %.v33
  store i64 %107, i64* %PC, align 8, !tbaa !2428
  br i1 %106, label %block_40082f, label %block_400823

block_40083b:                                     ; preds = %block_40082f
  %108 = add i64 %187, -32
  %109 = add i64 %221, 3
  store i64 %109, i64* %PC, align 8
  %110 = inttoptr i64 %108 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = zext i32 %111 to i64
  store i64 %112, i64* %RAX, align 8, !tbaa !2428
  %113 = add i64 %187, -24
  %114 = add i64 %221, 6
  store i64 %114, i64* %PC, align 8
  %115 = inttoptr i64 %113 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = sub i32 %111, %116
  %118 = icmp ult i32 %111, %116
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %5, align 1, !tbaa !2432
  %120 = and i32 %117, 255
  %121 = tail call i32 @llvm.ctpop.i32(i32 %120) #8
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  %124 = xor i8 %123, 1
  store i8 %124, i8* %6, align 1, !tbaa !2446
  %125 = xor i32 %116, %111
  %126 = xor i32 %125, %117
  %127 = lshr i32 %126, 4
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  store i8 %129, i8* %7, align 1, !tbaa !2447
  %130 = icmp eq i32 %117, 0
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %8, align 1, !tbaa !2448
  %132 = lshr i32 %117, 31
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %9, align 1, !tbaa !2449
  %134 = lshr i32 %111, 31
  %135 = lshr i32 %116, 31
  %136 = xor i32 %135, %134
  %137 = xor i32 %132, %134
  %138 = add nuw nsw i32 %137, %136
  %139 = icmp eq i32 %138, 2
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %10, align 1, !tbaa !2450
  %.v35 = select i1 %130, i64 12, i64 44
  %141 = add i64 %221, %.v35
  store i64 %141, i64* %PC, align 8, !tbaa !2428
  br i1 %130, label %block_400847, label %block_400867

block_400897:                                     ; preds = %block_400867
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %142 = add i64 %395, -1047
  %143 = add i64 %395, 17
  %144 = load i64, i64* %RSP, align 8, !tbaa !2428
  %145 = add i64 %144, -8
  %146 = inttoptr i64 %145 to i64*
  store i64 %143, i64* %146, align 8
  store i64 %145, i64* %RSP, align 8, !tbaa !2428
  store i64 %142, i64* %PC, align 8, !tbaa !2428
  %147 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %334)
  %148 = load i64, i64* %RBP, align 8
  %149 = add i64 %148, -4
  %150 = load i64, i64* %PC, align 8
  %151 = add i64 %150, 7
  store i64 %151, i64* %PC, align 8
  %152 = inttoptr i64 %149 to i32*
  store i32 1, i32* %152, align 4
  %153 = load i64, i64* %RBP, align 8
  %154 = add i64 %153, -108
  %155 = load i32, i32* %EAX, align 4
  %156 = load i64, i64* %PC, align 8
  %157 = add i64 %156, 3
  store i64 %157, i64* %PC, align 8
  %158 = inttoptr i64 %154 to i32*
  store i32 %155, i32* %158, align 4
  %.pre21 = load i64, i64* %PC, align 8
  br label %block_4008b2

block_4006f6:                                     ; preds = %block_4006e8
  %159 = add i64 %571, -24
  store i64 4196089, i64* %PC, align 8
  %160 = inttoptr i64 %159 to i32*
  %161 = load i32, i32* %160, align 4
  %162 = add i32 %161, -1
  %163 = zext i32 %162 to i64
  store i64 %163, i64* %RAX, align 8, !tbaa !2428
  %164 = icmp ne i32 %161, 0
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %5, align 1, !tbaa !2432
  %166 = and i32 %162, 255
  %167 = tail call i32 @llvm.ctpop.i32(i32 %166) #8
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  %170 = xor i8 %169, 1
  store i8 %170, i8* %6, align 1, !tbaa !2446
  %171 = xor i32 %161, 16
  %172 = xor i32 %162, %171
  %173 = lshr i32 %172, 4
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  store i8 %175, i8* %7, align 1, !tbaa !2447
  %176 = icmp eq i32 %162, 0
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %8, align 1, !tbaa !2448
  %178 = lshr i32 %162, 31
  %179 = trunc i32 %178 to i8
  store i8 %179, i8* %9, align 1, !tbaa !2449
  %180 = lshr i32 %161, 31
  %181 = xor i32 %178, %180
  %182 = xor i32 %178, 1
  %183 = add nuw nsw i32 %181, %182
  %184 = icmp eq i32 %183, 2
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %10, align 1, !tbaa !2450
  store i64 4196095, i64* %PC, align 8
  store i32 %162, i32* %160, align 4
  br label %block_400760

block_40082f:                                     ; preds = %block_400823, %block_4007b9, %block_400819
  %186 = phi i64 [ %.pre20, %block_400823 ], [ %570, %block_4007b9 ], [ %107, %block_400819 ]
  %187 = load i64, i64* %RBP, align 8
  %188 = add i64 %187, -28
  %189 = add i64 %186, 3
  store i64 %189, i64* %PC, align 8
  %190 = inttoptr i64 %188 to i32*
  %191 = load i32, i32* %190, align 4
  %192 = zext i32 %191 to i64
  store i64 %192, i64* %RAX, align 8, !tbaa !2428
  %193 = add i64 %187, -20
  %194 = add i64 %186, 6
  store i64 %194, i64* %PC, align 8
  %195 = inttoptr i64 %193 to i32*
  %196 = load i32, i32* %195, align 4
  %197 = sub i32 %191, %196
  %198 = icmp ult i32 %191, %196
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %5, align 1, !tbaa !2432
  %200 = and i32 %197, 255
  %201 = tail call i32 @llvm.ctpop.i32(i32 %200) #8
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  %204 = xor i8 %203, 1
  store i8 %204, i8* %6, align 1, !tbaa !2446
  %205 = xor i32 %196, %191
  %206 = xor i32 %205, %197
  %207 = lshr i32 %206, 4
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  store i8 %209, i8* %7, align 1, !tbaa !2447
  %210 = icmp eq i32 %197, 0
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %8, align 1, !tbaa !2448
  %212 = lshr i32 %197, 31
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* %9, align 1, !tbaa !2449
  %214 = lshr i32 %191, 31
  %215 = lshr i32 %196, 31
  %216 = xor i32 %215, %214
  %217 = xor i32 %212, %214
  %218 = add nuw nsw i32 %217, %216
  %219 = icmp eq i32 %218, 2
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %10, align 1, !tbaa !2450
  %.v34 = select i1 %210, i64 12, i64 56
  %221 = add i64 %186, %.v34
  store i64 %221, i64* %PC, align 8, !tbaa !2428
  br i1 %210, label %block_40083b, label %block_40082f.block_400867_crit_edge

block_40082f.block_400867_crit_edge:              ; preds = %block_40082f
  %.pre22 = add i64 %187, -24
  %.pre23 = inttoptr i64 %.pre22 to i32*
  br label %block_400867

block_400712:                                     ; preds = %block_4006e8, %3
  %222 = phi i64 [ %phitmp, %3 ], [ 4196117, %block_4006e8 ]
  %223 = phi i64 [ %.pre, %3 ], [ %571, %block_4006e8 ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %3 ], [ %334, %block_4006e8 ]
  %224 = add i64 %223, -20
  store i64 %222, i64* %PC, align 8
  %225 = inttoptr i64 %224 to i32*
  %226 = load i32, i32* %225, align 4
  %227 = add i32 %226, -1
  %228 = zext i32 %227 to i64
  store i64 %228, i64* %RAX, align 8, !tbaa !2428
  %229 = icmp ne i32 %226, 0
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %5, align 1, !tbaa !2432
  %231 = and i32 %227, 255
  %232 = tail call i32 @llvm.ctpop.i32(i32 %231) #8
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  %235 = xor i8 %234, 1
  store i8 %235, i8* %6, align 1, !tbaa !2446
  %236 = xor i32 %226, 16
  %237 = xor i32 %227, %236
  %238 = lshr i32 %237, 4
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  store i8 %240, i8* %7, align 1, !tbaa !2447
  %241 = icmp eq i32 %227, 0
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %8, align 1, !tbaa !2448
  %243 = lshr i32 %227, 31
  %244 = trunc i32 %243 to i8
  store i8 %244, i8* %9, align 1, !tbaa !2449
  %245 = lshr i32 %226, 31
  %246 = xor i32 %243, %245
  %247 = xor i32 %243, 1
  %248 = add nuw nsw i32 %246, %247
  %249 = icmp eq i32 %248, 2
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %10, align 1, !tbaa !2450
  %251 = add i64 %222, 6
  store i64 %251, i64* %PC, align 8
  store i32 %227, i32* %225, align 4
  br label %block_400760

block_4008b2:                                     ; preds = %block_400847, %block_400897
  %252 = phi i64 [ %.pre21, %block_400897 ], [ %599, %block_400847 ]
  %MEMORY.2 = phi %struct.Memory* [ %147, %block_400897 ], [ %586, %block_400847 ]
  %253 = load i64, i64* %RBP, align 8
  %254 = add i64 %253, -4
  %255 = add i64 %252, 3
  store i64 %255, i64* %PC, align 8
  %256 = inttoptr i64 %254 to i32*
  %257 = load i32, i32* %256, align 4
  %258 = zext i32 %257 to i64
  store i64 %258, i64* %RAX, align 8, !tbaa !2428
  %259 = load i64, i64* %RSP, align 8
  %260 = add i64 %259, 112
  store i64 %260, i64* %RSP, align 8, !tbaa !2428
  %261 = icmp ugt i64 %259, -113
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %5, align 1, !tbaa !2432
  %263 = trunc i64 %260 to i32
  %264 = and i32 %263, 255
  %265 = tail call i32 @llvm.ctpop.i32(i32 %264) #8
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  %268 = xor i8 %267, 1
  store i8 %268, i8* %6, align 1, !tbaa !2446
  %269 = xor i64 %259, 16
  %270 = xor i64 %269, %260
  %271 = lshr i64 %270, 4
  %272 = trunc i64 %271 to i8
  %273 = and i8 %272, 1
  store i8 %273, i8* %7, align 1, !tbaa !2447
  %274 = icmp eq i64 %260, 0
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %8, align 1, !tbaa !2448
  %276 = lshr i64 %260, 63
  %277 = trunc i64 %276 to i8
  store i8 %277, i8* %9, align 1, !tbaa !2449
  %278 = lshr i64 %259, 63
  %279 = xor i64 %276, %278
  %280 = add nuw nsw i64 %279, %276
  %281 = icmp eq i64 %280, 2
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %10, align 1, !tbaa !2450
  %283 = add i64 %252, 8
  store i64 %283, i64* %PC, align 8
  %284 = add i64 %259, 120
  %285 = inttoptr i64 %260 to i64*
  %286 = load i64, i64* %285, align 8
  store i64 %286, i64* %RBP, align 8, !tbaa !2428
  store i64 %284, i64* %RSP, align 8, !tbaa !2428
  %287 = add i64 %252, 9
  store i64 %287, i64* %PC, align 8
  %288 = inttoptr i64 %284 to i64*
  %289 = load i64, i64* %288, align 8
  store i64 %289, i64* %PC, align 8, !tbaa !2428
  %290 = add i64 %259, 128
  store i64 %290, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.2

block_400867:                                     ; preds = %block_40083b, %block_40082f.block_400867_crit_edge
  %.pre-phi24 = phi i32* [ %.pre23, %block_40082f.block_400867_crit_edge ], [ %115, %block_40083b ]
  %291 = phi i64 [ %221, %block_40082f.block_400867_crit_edge ], [ %141, %block_40083b ]
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %292 = add i64 %291, 14
  store i64 %292, i64* %PC, align 8
  %293 = load i32, i32* %.pre-phi24, align 4
  %294 = sext i32 %293 to i64
  %295 = mul nsw i64 %294, 11
  store i64 %295, i64* %RCX, align 8, !tbaa !2428
  %296 = lshr i64 %295, 63
  %297 = add i64 %295, ptrtoint (%maze_type* @maze to i64)
  store i64 %297, i64* %RAX, align 8, !tbaa !2428
  %298 = icmp ult i64 %297, ptrtoint (%maze_type* @maze to i64)
  %299 = icmp ult i64 %297, %295
  %300 = or i1 %298, %299
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %5, align 1, !tbaa !2432
  %302 = trunc i64 %297 to i32
  %303 = and i32 %302, 255
  %304 = tail call i32 @llvm.ctpop.i32(i32 %303) #8
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  %307 = xor i8 %306, 1
  store i8 %307, i8* %6, align 1, !tbaa !2446
  %308 = xor i64 %295, ptrtoint (%maze_type* @maze to i64)
  %309 = xor i64 %308, %297
  %310 = lshr i64 %309, 4
  %311 = trunc i64 %310 to i8
  %312 = and i8 %311, 1
  store i8 %312, i8* %7, align 1, !tbaa !2447
  %313 = icmp eq i64 %297, 0
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %8, align 1, !tbaa !2448
  %315 = lshr i64 %297, 63
  %316 = trunc i64 %315 to i8
  store i8 %316, i8* %9, align 1, !tbaa !2449
  %317 = xor i64 %315, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %318 = xor i64 %315, %296
  %319 = add nuw nsw i64 %317, %318
  %320 = icmp eq i64 %319, 2
  %321 = zext i1 %320 to i8
  store i8 %321, i8* %10, align 1, !tbaa !2450
  %322 = add i64 %291, 25
  store i64 %322, i64* %PC, align 8
  %323 = load i32, i32* %195, align 4
  %324 = sext i32 %323 to i64
  store i64 %324, i64* %RCX, align 8, !tbaa !2428
  %325 = add i64 %324, %297
  %326 = add i64 %291, 29
  store i64 %326, i64* %PC, align 8
  %327 = inttoptr i64 %325 to i8*
  store i8 88, i8* %327, align 1
  %328 = load i64, i64* %PC, align 8
  %329 = add i64 %328, -740
  %330 = add i64 %328, 5
  %331 = load i64, i64* %RSP, align 8, !tbaa !2428
  %332 = add i64 %331, -8
  %333 = inttoptr i64 %332 to i64*
  store i64 %330, i64* %333, align 8
  store i64 %332, i64* %RSP, align 8, !tbaa !2428
  store i64 %329, i64* %PC, align 8, !tbaa !2428
  %334 = tail call %struct.Memory* @sub_4005a0_draw_renamed_(%struct.State* nonnull %0, i64 %329, %struct.Memory* %MEMORY.5)
  %335 = load i64, i64* %RBP, align 8
  %336 = add i64 %335, -36
  %337 = load i64, i64* %PC, align 8
  %338 = add i64 %337, 3
  store i64 %338, i64* %PC, align 8
  %339 = inttoptr i64 %336 to i32*
  %340 = load i32, i32* %339, align 4
  %341 = add i32 %340, 1
  %342 = zext i32 %341 to i64
  store i64 %342, i64* %RDX, align 8, !tbaa !2428
  %343 = icmp eq i32 %340, -1
  %344 = icmp eq i32 %341, 0
  %345 = or i1 %343, %344
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %5, align 1, !tbaa !2432
  %347 = and i32 %341, 255
  %348 = tail call i32 @llvm.ctpop.i32(i32 %347) #8
  %349 = trunc i32 %348 to i8
  %350 = and i8 %349, 1
  %351 = xor i8 %350, 1
  store i8 %351, i8* %6, align 1, !tbaa !2446
  %352 = xor i32 %340, %341
  %353 = lshr i32 %352, 4
  %354 = trunc i32 %353 to i8
  %355 = and i8 %354, 1
  store i8 %355, i8* %7, align 1, !tbaa !2447
  %356 = zext i1 %344 to i8
  store i8 %356, i8* %8, align 1, !tbaa !2448
  %357 = lshr i32 %341, 31
  %358 = trunc i32 %357 to i8
  store i8 %358, i8* %9, align 1, !tbaa !2449
  %359 = lshr i32 %340, 31
  %360 = xor i32 %357, %359
  %361 = add nuw nsw i32 %360, %357
  %362 = icmp eq i32 %361, 2
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %10, align 1, !tbaa !2450
  %364 = add i64 %337, 9
  store i64 %364, i64* %PC, align 8
  store i32 %341, i32* %339, align 4
  %365 = load i64, i64* %PC, align 8
  %366 = load i64, i64* %RBP, align 8
  %367 = add i64 %366, -36
  %368 = add i64 %365, -474
  store i64 %368, i64* %PC, align 8
  %369 = inttoptr i64 %367 to i32*
  %370 = load i32, i32* %369, align 4
  %371 = add i32 %370, -28
  %372 = icmp ult i32 %370, 28
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %5, align 1, !tbaa !2432
  %374 = and i32 %371, 255
  %375 = tail call i32 @llvm.ctpop.i32(i32 %374) #8
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  %378 = xor i8 %377, 1
  store i8 %378, i8* %6, align 1, !tbaa !2446
  %379 = xor i32 %370, 16
  %380 = xor i32 %379, %371
  %381 = lshr i32 %380, 4
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  store i8 %383, i8* %7, align 1, !tbaa !2447
  %384 = icmp eq i32 %371, 0
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %8, align 1, !tbaa !2448
  %386 = lshr i32 %371, 31
  %387 = trunc i32 %386 to i8
  store i8 %387, i8* %9, align 1, !tbaa !2449
  %388 = lshr i32 %370, 31
  %389 = xor i32 %386, %388
  %390 = add nuw nsw i32 %389, %388
  %391 = icmp eq i32 %390, 2
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %10, align 1, !tbaa !2450
  %393 = icmp ne i8 %387, 0
  %394 = xor i1 %393, %391
  %.v36 = select i1 %394, i64 -468, i64 5
  %395 = add i64 %365, %.v36
  store i64 %395, i64* %PC, align 8, !tbaa !2428
  br i1 %394, label %block_4006be, label %block_400897

block_40080f:                                     ; preds = %block_4007e9
  %396 = add i64 %.pre19, -20
  %397 = add i64 %476, 4
  store i64 %397, i64* %PC, align 8
  %398 = inttoptr i64 %396 to i32*
  %399 = load i32, i32* %398, align 4
  store i8 0, i8* %5, align 1, !tbaa !2432
  %400 = and i32 %399, 255
  %401 = tail call i32 @llvm.ctpop.i32(i32 %400) #8
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  %404 = xor i8 %403, 1
  store i8 %404, i8* %6, align 1, !tbaa !2446
  store i8 0, i8* %7, align 1, !tbaa !2447
  %405 = icmp eq i32 %399, 0
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %8, align 1, !tbaa !2448
  %407 = lshr i32 %399, 31
  %408 = trunc i32 %407 to i8
  store i8 %408, i8* %9, align 1, !tbaa !2449
  store i8 0, i8* %10, align 1, !tbaa !2450
  %409 = icmp ne i8 %408, 0
  %410 = or i1 %405, %409
  %.v32 = select i1 %410, i64 20, i64 10
  %411 = add i64 %476, %.v32
  store i64 %411, i64* %PC, align 8, !tbaa !2428
  br i1 %410, label %block_400823, label %block_400819

block_4007e9:                                     ; preds = %block_4007df
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %412 = add i64 %503, 14
  store i64 %412, i64* %PC, align 8
  %413 = load i32, i32* %480, align 4
  %414 = sext i32 %413 to i64
  %415 = mul nsw i64 %414, 11
  store i64 %415, i64* %RCX, align 8, !tbaa !2428
  %416 = lshr i64 %415, 63
  %417 = add i64 %415, ptrtoint (%maze_type* @maze to i64)
  store i64 %417, i64* %RAX, align 8, !tbaa !2428
  %418 = icmp ult i64 %417, ptrtoint (%maze_type* @maze to i64)
  %419 = icmp ult i64 %417, %415
  %420 = or i1 %418, %419
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %5, align 1, !tbaa !2432
  %422 = trunc i64 %417 to i32
  %423 = and i32 %422, 255
  %424 = tail call i32 @llvm.ctpop.i32(i32 %423) #8
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  %427 = xor i8 %426, 1
  store i8 %427, i8* %6, align 1, !tbaa !2446
  %428 = xor i64 %415, ptrtoint (%maze_type* @maze to i64)
  %429 = xor i64 %428, %417
  %430 = lshr i64 %429, 4
  %431 = trunc i64 %430 to i8
  %432 = and i8 %431, 1
  store i8 %432, i8* %7, align 1, !tbaa !2447
  %433 = icmp eq i64 %417, 0
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %8, align 1, !tbaa !2448
  %435 = lshr i64 %417, 63
  %436 = trunc i64 %435 to i8
  store i8 %436, i8* %9, align 1, !tbaa !2449
  %437 = xor i64 %435, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %438 = xor i64 %435, %416
  %439 = add nuw nsw i64 %437, %438
  %440 = icmp eq i64 %439, 2
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %10, align 1, !tbaa !2450
  %442 = add i64 %477, -20
  %443 = add i64 %503, 25
  store i64 %443, i64* %PC, align 8
  %444 = inttoptr i64 %442 to i32*
  %445 = load i32, i32* %444, align 4
  %446 = sext i32 %445 to i64
  store i64 %446, i64* %RCX, align 8, !tbaa !2428
  %447 = add i64 %446, %417
  %448 = add i64 %503, 29
  store i64 %448, i64* %PC, align 8
  %449 = inttoptr i64 %447 to i8*
  %450 = load i8, i8* %449, align 1
  %451 = sext i8 %450 to i64
  %452 = and i64 %451, 4294967295
  store i64 %452, i64* %RDX, align 8, !tbaa !2428
  %453 = sext i8 %450 to i32
  %454 = add nsw i32 %453, -124
  %455 = icmp ult i8 %450, 124
  %456 = zext i1 %455 to i8
  store i8 %456, i8* %5, align 1, !tbaa !2432
  %457 = and i32 %454, 255
  %458 = tail call i32 @llvm.ctpop.i32(i32 %457) #8
  %459 = trunc i32 %458 to i8
  %460 = and i8 %459, 1
  %461 = xor i8 %460, 1
  store i8 %461, i8* %6, align 1, !tbaa !2446
  %462 = xor i32 %453, 16
  %463 = xor i32 %462, %454
  %464 = lshr i32 %463, 4
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  store i8 %466, i8* %7, align 1, !tbaa !2447
  %467 = icmp eq i32 %454, 0
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %8, align 1, !tbaa !2448
  %469 = lshr i32 %454, 31
  %470 = trunc i32 %469 to i8
  store i8 %470, i8* %9, align 1, !tbaa !2449
  %471 = lshr i32 %453, 31
  %472 = xor i32 %469, %471
  %473 = add nuw nsw i32 %472, %471
  %474 = icmp eq i32 %473, 2
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %10, align 1, !tbaa !2450
  %.v31 = select i1 %467, i64 38, i64 58
  %476 = add i64 %503, %.v31
  store i64 %476, i64* %PC, align 8, !tbaa !2428
  %.pre19 = load i64, i64* %RBP, align 8
  br i1 %467, label %block_40080f, label %block_400823

block_4007df:                                     ; preds = %block_4007b9
  %477 = load i64, i64* %RBP, align 8
  %478 = add i64 %477, -24
  %479 = add i64 %570, 4
  store i64 %479, i64* %PC, align 8
  %480 = inttoptr i64 %478 to i32*
  %481 = load i32, i32* %480, align 4
  %482 = add i32 %481, -2
  %483 = icmp ult i32 %481, 2
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %5, align 1, !tbaa !2432
  %485 = and i32 %482, 255
  %486 = tail call i32 @llvm.ctpop.i32(i32 %485) #8
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, 1
  %489 = xor i8 %488, 1
  store i8 %489, i8* %6, align 1, !tbaa !2446
  %490 = xor i32 %481, %482
  %491 = lshr i32 %490, 4
  %492 = trunc i32 %491 to i8
  %493 = and i8 %492, 1
  store i8 %493, i8* %7, align 1, !tbaa !2447
  %494 = icmp eq i32 %482, 0
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %8, align 1, !tbaa !2448
  %496 = lshr i32 %482, 31
  %497 = trunc i32 %496 to i8
  store i8 %497, i8* %9, align 1, !tbaa !2449
  %498 = lshr i32 %481, 31
  %499 = xor i32 %496, %498
  %500 = add nuw nsw i32 %499, %498
  %501 = icmp eq i32 %500, 2
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %10, align 1, !tbaa !2450
  %.v30 = select i1 %494, i64 10, i64 68
  %503 = add i64 %570, %.v30
  store i64 %503, i64* %PC, align 8, !tbaa !2428
  br i1 %494, label %block_4007e9, label %block_400823

block_4007b9:                                     ; preds = %block_400760
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %504 = load i64, i64* %RBP, align 8
  %505 = add i64 %504, -24
  %506 = add i64 %723, 14
  store i64 %506, i64* %PC, align 8
  %507 = inttoptr i64 %505 to i32*
  %508 = load i32, i32* %507, align 4
  %509 = sext i32 %508 to i64
  %510 = mul nsw i64 %509, 11
  store i64 %510, i64* %RCX, align 8, !tbaa !2428
  %511 = lshr i64 %510, 63
  %512 = add i64 %510, ptrtoint (%maze_type* @maze to i64)
  store i64 %512, i64* %RAX, align 8, !tbaa !2428
  %513 = icmp ult i64 %512, ptrtoint (%maze_type* @maze to i64)
  %514 = icmp ult i64 %512, %510
  %515 = or i1 %513, %514
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %5, align 1, !tbaa !2432
  %517 = trunc i64 %512 to i32
  %518 = and i32 %517, 255
  %519 = tail call i32 @llvm.ctpop.i32(i32 %518) #8
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  %522 = xor i8 %521, 1
  store i8 %522, i8* %6, align 1, !tbaa !2446
  %523 = xor i64 %510, ptrtoint (%maze_type* @maze to i64)
  %524 = xor i64 %523, %512
  %525 = lshr i64 %524, 4
  %526 = trunc i64 %525 to i8
  %527 = and i8 %526, 1
  store i8 %527, i8* %7, align 1, !tbaa !2447
  %528 = icmp eq i64 %512, 0
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %8, align 1, !tbaa !2448
  %530 = lshr i64 %512, 63
  %531 = trunc i64 %530 to i8
  store i8 %531, i8* %9, align 1, !tbaa !2449
  %532 = xor i64 %530, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %533 = xor i64 %530, %511
  %534 = add nuw nsw i64 %532, %533
  %535 = icmp eq i64 %534, 2
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %10, align 1, !tbaa !2450
  %537 = add i64 %504, -20
  %538 = add i64 %723, 25
  store i64 %538, i64* %PC, align 8
  %539 = inttoptr i64 %537 to i32*
  %540 = load i32, i32* %539, align 4
  %541 = sext i32 %540 to i64
  store i64 %541, i64* %RCX, align 8, !tbaa !2428
  %542 = add i64 %541, %512
  %543 = add i64 %723, 29
  store i64 %543, i64* %PC, align 8
  %544 = inttoptr i64 %542 to i8*
  %545 = load i8, i8* %544, align 1
  %546 = sext i8 %545 to i64
  %547 = and i64 %546, 4294967295
  store i64 %547, i64* %RDX, align 8, !tbaa !2428
  %548 = sext i8 %545 to i32
  %549 = add nsw i32 %548, -32
  %550 = icmp ult i8 %545, 32
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %5, align 1, !tbaa !2432
  %552 = and i32 %549, 255
  %553 = tail call i32 @llvm.ctpop.i32(i32 %552) #8
  %554 = trunc i32 %553 to i8
  %555 = and i8 %554, 1
  %556 = xor i8 %555, 1
  store i8 %556, i8* %6, align 1, !tbaa !2446
  %557 = xor i32 %548, %549
  %558 = lshr i32 %557, 4
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  store i8 %560, i8* %7, align 1, !tbaa !2447
  %561 = icmp eq i32 %549, 0
  %562 = zext i1 %561 to i8
  store i8 %562, i8* %8, align 1, !tbaa !2448
  %563 = lshr i32 %549, 31
  %564 = trunc i32 %563 to i8
  store i8 %564, i8* %9, align 1, !tbaa !2449
  %565 = lshr i32 %548, 31
  %566 = xor i32 %563, %565
  %567 = add nuw nsw i32 %566, %565
  %568 = icmp eq i32 %567, 2
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %10, align 1, !tbaa !2450
  %.v29 = select i1 %561, i64 118, i64 38
  %570 = add i64 %723, %.v29
  store i64 %570, i64* %PC, align 8, !tbaa !2428
  br i1 %561, label %block_40082f, label %block_4007df

block_4006e8:                                     ; preds = %block_4006be
  %571 = load i64, i64* %RBP, align 8
  %572 = add i64 %571, -80
  %573 = add i64 %81, 4
  store i64 %573, i64* %PC, align 8
  %574 = inttoptr i64 %572 to i64*
  %575 = load i64, i64* %574, align 8
  store i64 %575, i64* %RAX, align 8, !tbaa !2428
  %576 = shl i64 %575, 3
  %577 = add i64 %576, add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 8)
  %578 = add i64 %81, 12
  store i64 %578, i64* %PC, align 8
  %579 = inttoptr i64 %577 to i64*
  %580 = load i64, i64* %579, align 8
  store i64 %580, i64* %RCX, align 8, !tbaa !2428
  store i64 %580, i64* %PC, align 8, !tbaa !2428
  switch i64 %580, label %729 [
    i64 4196114, label %block_400712
    i64 4196128, label %block_400720
    i64 4196100, label %block_400704
    i64 4196142, label %block_40072e
    i64 4196086, label %block_4006f6
  ]

block_400847:                                     ; preds = %block_40083b
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %581 = add i64 %141, -967
  %582 = add i64 %141, 17
  %583 = load i64, i64* %RSP, align 8, !tbaa !2428
  %584 = add i64 %583, -8
  %585 = inttoptr i64 %584 to i64*
  store i64 %582, i64* %585, align 8
  store i64 %584, i64* %RSP, align 8, !tbaa !2428
  store i64 %581, i64* %PC, align 8, !tbaa !2428
  %586 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.5)
  %587 = load i64, i64* %RBP, align 8
  %588 = add i64 %587, -4
  %589 = load i64, i64* %PC, align 8
  %590 = add i64 %589, 7
  store i64 %590, i64* %PC, align 8
  %591 = inttoptr i64 %588 to i32*
  store i32 2, i32* %591, align 4
  %592 = load i64, i64* %RBP, align 8
  %593 = add i64 %592, -104
  %594 = load i32, i32* %EAX, align 4
  %595 = load i64, i64* %PC, align 8
  %596 = add i64 %595, 3
  store i64 %596, i64* %PC, align 8
  %597 = inttoptr i64 %593 to i32*
  store i32 %594, i32* %597, align 4
  %598 = load i64, i64* %PC, align 8
  %599 = add i64 %598, 80
  store i64 %599, i64* %PC, align 8, !tbaa !2428
  br label %block_4008b2

block_400823:                                     ; preds = %block_4007e9, %block_4007df, %block_40080f, %block_400819
  %600 = phi i64 [ %503, %block_4007df ], [ %411, %block_40080f ], [ %107, %block_400819 ], [ %476, %block_4007e9 ]
  %601 = phi i64 [ %477, %block_4007df ], [ %.pre19, %block_40080f ], [ %.pre19, %block_400819 ], [ %.pre19, %block_4007e9 ]
  %602 = add i64 %601, -28
  %603 = add i64 %600, 3
  store i64 %603, i64* %PC, align 8
  %604 = inttoptr i64 %602 to i32*
  %605 = load i32, i32* %604, align 4
  %606 = zext i32 %605 to i64
  store i64 %606, i64* %RAX, align 8, !tbaa !2428
  %607 = add i64 %601, -20
  %608 = add i64 %600, 6
  store i64 %608, i64* %PC, align 8
  %609 = inttoptr i64 %607 to i32*
  store i32 %605, i32* %609, align 4
  %610 = load i64, i64* %RBP, align 8
  %611 = add i64 %610, -32
  %612 = load i64, i64* %PC, align 8
  %613 = add i64 %612, 3
  store i64 %613, i64* %PC, align 8
  %614 = inttoptr i64 %611 to i32*
  %615 = load i32, i32* %614, align 4
  %616 = zext i32 %615 to i64
  store i64 %616, i64* %RAX, align 8, !tbaa !2428
  %617 = add i64 %610, -24
  %618 = add i64 %612, 6
  store i64 %618, i64* %PC, align 8
  %619 = inttoptr i64 %617 to i32*
  store i32 %615, i32* %619, align 4
  %.pre20 = load i64, i64* %PC, align 8
  br label %block_40082f

block_400786:                                     ; preds = %block_400760
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %620 = add i64 %723, -774
  %621 = add i64 %723, 17
  %622 = load i64, i64* %RSP, align 8, !tbaa !2428
  %623 = add i64 %622, -8
  %624 = inttoptr i64 %623 to i64*
  store i64 %621, i64* %624, align 8
  store i64 %623, i64* %RSP, align 8, !tbaa !2428
  store i64 %620, i64* %PC, align 8, !tbaa !2428
  %625 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.5)
  %626 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2428
  %627 = load i64, i64* %RBP, align 8
  %628 = add i64 %627, -64
  store i64 %628, i64* %RSI, align 8, !tbaa !2428
  %629 = add i64 %627, -96
  %630 = load i32, i32* %EAX, align 4
  %631 = add i64 %626, 17
  store i64 %631, i64* %PC, align 8
  %632 = inttoptr i64 %629 to i32*
  store i32 %630, i32* %632, align 4
  %633 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %634 = add i64 %633, -808
  %635 = add i64 %633, 7
  %636 = load i64, i64* %RSP, align 8, !tbaa !2428
  %637 = add i64 %636, -8
  %638 = inttoptr i64 %637 to i64*
  store i64 %635, i64* %638, align 8
  store i64 %637, i64* %RSP, align 8, !tbaa !2428
  store i64 %634, i64* %PC, align 8, !tbaa !2428
  %639 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %625)
  %640 = load i64, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %5, align 1, !tbaa !2432
  store i8 1, i8* %6, align 1, !tbaa !2446
  store i8 1, i8* %8, align 1, !tbaa !2448
  store i8 0, i8* %9, align 1, !tbaa !2449
  store i8 0, i8* %10, align 1, !tbaa !2450
  store i8 0, i8* %7, align 1, !tbaa !2447
  %641 = load i64, i64* %RBP, align 8
  %642 = add i64 %641, -100
  %643 = load i32, i32* %EAX, align 4
  %644 = add i64 %640, 5
  store i64 %644, i64* %PC, align 8
  %645 = inttoptr i64 %642 to i32*
  store i32 %643, i32* %645, align 4
  %646 = load i64, i64* %PC, align 8
  %647 = add i64 %646, -788
  %648 = add i64 %646, 5
  %649 = load i64, i64* %RSP, align 8, !tbaa !2428
  %650 = add i64 %649, -8
  %651 = inttoptr i64 %650 to i64*
  store i64 %648, i64* %651, align 8
  store i64 %650, i64* %RSP, align 8, !tbaa !2428
  store i64 %647, i64* %PC, align 8, !tbaa !2428
  %652 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %639)
  %653 = load i64, i64* %PC, align 8
  %654 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %653, %struct.Memory* %652)
  ret %struct.Memory* %654

block_400760:                                     ; preds = %block_400712, %block_4006f6
  %.sink28 = phi i64 [ 69, %block_400712 ], [ 97, %block_4006f6 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.1, %block_400712 ], [ %334, %block_4006f6 ]
  %655 = load i64, i64* %PC, align 8
  %656 = add i64 %655, %.sink28
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %657 = load i64, i64* %RBP, align 8
  %658 = add i64 %657, -24
  %659 = add i64 %656, 14
  store i64 %659, i64* %PC, align 8
  %660 = inttoptr i64 %658 to i32*
  %661 = load i32, i32* %660, align 4
  %662 = sext i32 %661 to i64
  %663 = mul nsw i64 %662, 11
  store i64 %663, i64* %RCX, align 8, !tbaa !2428
  %664 = lshr i64 %663, 63
  %665 = add i64 %663, ptrtoint (%maze_type* @maze to i64)
  store i64 %665, i64* %RAX, align 8, !tbaa !2428
  %666 = icmp ult i64 %665, ptrtoint (%maze_type* @maze to i64)
  %667 = icmp ult i64 %665, %663
  %668 = or i1 %666, %667
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %5, align 1, !tbaa !2432
  %670 = trunc i64 %665 to i32
  %671 = and i32 %670, 255
  %672 = tail call i32 @llvm.ctpop.i32(i32 %671) #8
  %673 = trunc i32 %672 to i8
  %674 = and i8 %673, 1
  %675 = xor i8 %674, 1
  store i8 %675, i8* %6, align 1, !tbaa !2446
  %676 = xor i64 %663, ptrtoint (%maze_type* @maze to i64)
  %677 = xor i64 %676, %665
  %678 = lshr i64 %677, 4
  %679 = trunc i64 %678 to i8
  %680 = and i8 %679, 1
  store i8 %680, i8* %7, align 1, !tbaa !2447
  %681 = icmp eq i64 %665, 0
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %8, align 1, !tbaa !2448
  %683 = lshr i64 %665, 63
  %684 = trunc i64 %683 to i8
  store i8 %684, i8* %9, align 1, !tbaa !2449
  %685 = xor i64 %683, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %686 = xor i64 %683, %664
  %687 = add nuw nsw i64 %685, %686
  %688 = icmp eq i64 %687, 2
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %10, align 1, !tbaa !2450
  %690 = add i64 %657, -20
  %691 = add i64 %656, 25
  store i64 %691, i64* %PC, align 8
  %692 = inttoptr i64 %690 to i32*
  %693 = load i32, i32* %692, align 4
  %694 = sext i32 %693 to i64
  store i64 %694, i64* %RCX, align 8, !tbaa !2428
  %695 = add i64 %694, %665
  %696 = add i64 %656, 29
  store i64 %696, i64* %PC, align 8
  %697 = inttoptr i64 %695 to i8*
  %698 = load i8, i8* %697, align 1
  %699 = sext i8 %698 to i64
  %700 = and i64 %699, 4294967295
  store i64 %700, i64* %RDX, align 8, !tbaa !2428
  %701 = sext i8 %698 to i32
  %702 = add nsw i32 %701, -35
  %703 = icmp ult i8 %698, 35
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %5, align 1, !tbaa !2432
  %705 = and i32 %702, 255
  %706 = tail call i32 @llvm.ctpop.i32(i32 %705) #8
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  %709 = xor i8 %708, 1
  store i8 %709, i8* %6, align 1, !tbaa !2446
  %710 = xor i32 %701, %702
  %711 = lshr i32 %710, 4
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  store i8 %713, i8* %7, align 1, !tbaa !2447
  %714 = icmp eq i32 %702, 0
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %8, align 1, !tbaa !2448
  %716 = lshr i32 %702, 31
  %717 = trunc i32 %716 to i8
  store i8 %717, i8* %9, align 1, !tbaa !2449
  %718 = lshr i32 %701, 31
  %719 = xor i32 %716, %718
  %720 = add nuw nsw i32 %719, %718
  %721 = icmp eq i32 %720, 2
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %10, align 1, !tbaa !2450
  %.v = select i1 %714, i64 38, i64 89
  %723 = add i64 %656, %.v
  %724 = add i64 %723, 10
  store i64 %724, i64* %PC, align 8
  br i1 %714, label %block_400786, label %block_4007b9

block_40072e:                                     ; preds = %block_4006e8, %block_4006be
  %725 = phi i64 [ 4196142, %block_4006e8 ], [ %81, %block_4006be ]
  %726 = tail call %struct.Memory* @sub_40072e(%struct.State* nonnull %0, i64 %725, %struct.Memory* %334)
  ret %struct.Memory* %726

block_400704:                                     ; preds = %block_4006e8
  %727 = tail call %struct.Memory* @sub_400704(%struct.State* nonnull %0, i64 4196100, %struct.Memory* %334)
  ret %struct.Memory* %727

block_400720:                                     ; preds = %block_4006e8
  %728 = tail call %struct.Memory* @sub_400720(%struct.State* nonnull %0, i64 4196128, %struct.Memory* %334)
  ret %struct.Memory* %728

; <label>:729:                                    ; preds = %block_4006e8
  %730 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %580, %struct.Memory* %334)
  ret %struct.Memory* %730
}

; Function Attrs: noinline
define %struct.Memory* @sub_400560___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400560:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i64 0, i32 0, i64 0), align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4, align 1, !tbaa !2432
  %5 = zext i8 %3 to i32
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #8
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
  br i1 %12, label %block_400569, label %block_400580

block_400580:                                     ; preds = %block_400560
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

block_400569:                                     ; preds = %block_400560
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
  %36 = tail call %struct.Memory* @sub_4004f0_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
  %37 = load i64, i64* %PC, align 8
  store i8 1, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i64 0, i32 0, i64 0), align 8
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
define %struct.Memory* @sub_400520_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400520:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64* %RSI, align 8, !tbaa !2428
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
  %11 = sub i64 %9, ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)
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
  store i8 %22, i8* %12, align 1, !tbaa !2451
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 255
  %26 = tail call i32 @llvm.ctpop.i32(i32 %25) #8
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  store i8 %29, i8* %13, align 1, !tbaa !2451
  store i8 0, i8* %14, align 1, !tbaa !2451
  %30 = icmp eq i64 %23, 0
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %15, align 1, !tbaa !2451
  %32 = lshr i64 %23, 63
  %33 = trunc i64 %32 to i8
  store i8 %33, i8* %16, align 1, !tbaa !2451
  store i8 0, i8* %17, align 1, !tbaa !2451
  %.v = select i1 %30, i64 50, i64 29
  %34 = add i64 %10, %.v
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  br i1 %30, label %block_400558, label %block_400543

block_400558:                                     ; preds = %block_400543, %block_400520
  %35 = phi i64 [ %45, %block_400543 ], [ %34, %block_400520 ]
  %36 = add i64 %35, 1
  store i64 %36, i64* %PC, align 8
  %37 = load i64, i64* %5, align 8, !tbaa !2428
  %38 = add i64 %37, 8
  %39 = inttoptr i64 %37 to i64*
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %RBP, align 8, !tbaa !2428
  store i64 %38, i64* %5, align 8, !tbaa !2428
  %41 = add i64 %35, 2
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %38 to i64*
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %PC, align 8, !tbaa !2428
  %44 = add i64 %37, 16
  store i64 %44, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400543:                                     ; preds = %block_400520
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 1, i8* %13, align 1, !tbaa !2446
  store i8 1, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %14, align 1, !tbaa !2447
  %45 = add i64 %34, 21
  store i64 %45, i64* %PC, align 8, !tbaa !2428
  br label %block_400558
}

; Function Attrs: noinline
define %struct.Memory* @sub_400650_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400650:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %1, 1
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %RSP, align 8, !tbaa !2428
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  %10 = load i64, i64* %PC, align 8
  store i64 %8, i64* %RBP, align 8, !tbaa !2428
  %11 = add i64 %7, -120
  store i64 %11, i64* %RSP, align 8, !tbaa !2428
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 1, i8* %13, align 1, !tbaa !2446
  store i8 1, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %14, align 1, !tbaa !2447
  store i64 28, i64* %RCX, align 8, !tbaa !2428
  store i64 28, i64* %RDX, align 8, !tbaa !2428
  %18 = add i64 %7, -72
  store i64 %18, i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %R9, align 8, !tbaa !2428
  %19 = add i64 %7, -12
  %20 = add i64 %10, 37
  store i64 %20, i64* %PC, align 8
  %21 = inttoptr i64 %19 to i32*
  store i32 0, i32* %21, align 4
  %22 = load i64, i64* %RBP, align 8
  %23 = add i64 %22, -8
  %24 = load i32, i32* %EDI, align 4
  %25 = load i64, i64* %PC, align 8
  %26 = add i64 %25, 3
  store i64 %26, i64* %PC, align 8
  %27 = inttoptr i64 %23 to i32*
  store i32 %24, i32* %27, align 4
  %28 = load i64, i64* %RBP, align 8
  %29 = add i64 %28, -16
  %30 = load i64, i64* %RSI, align 8
  %31 = load i64, i64* %PC, align 8
  %32 = add i64 %31, 4
  store i64 %32, i64* %PC, align 8
  %33 = inttoptr i64 %29 to i64*
  store i64 %30, i64* %33, align 8
  %34 = load i64, i64* %RBP, align 8
  %35 = add i64 %34, -36
  %36 = load i64, i64* %PC, align 8
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC, align 8
  %38 = inttoptr i64 %35 to i32*
  store i32 0, i32* %38, align 4
  %39 = load i64, i64* %RBP, align 8
  %40 = add i64 %39, -20
  %41 = load i64, i64* %PC, align 8
  %42 = add i64 %41, 7
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 1, i32* %43, align 4
  %44 = load i64, i64* %RBP, align 8
  %45 = add i64 %44, -24
  %46 = load i64, i64* %PC, align 8
  %47 = add i64 %46, 7
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %45 to i32*
  store i32 1, i32* %48, align 4
  %49 = load i64, i64* %RBP, align 8
  %50 = add i64 %49, -24
  %51 = load i64, i64* %PC, align 8
  %52 = add i64 %51, 4
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %50 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = mul nsw i64 %55, 11
  store i64 %56, i64* %RSI, align 8, !tbaa !2428
  %57 = lshr i64 %56, 63
  %58 = load i64, i64* %R9, align 8
  %59 = add i64 %56, %58
  store i64 %59, i64* %R9, align 8, !tbaa !2428
  %60 = icmp ult i64 %59, %58
  %61 = icmp ult i64 %59, %56
  %62 = or i1 %60, %61
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %12, align 1, !tbaa !2432
  %64 = trunc i64 %59 to i32
  %65 = and i32 %64, 255
  %66 = tail call i32 @llvm.ctpop.i32(i32 %65) #8
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  store i8 %69, i8* %13, align 1, !tbaa !2446
  %70 = xor i64 %56, %58
  %71 = xor i64 %70, %59
  %72 = lshr i64 %71, 4
  %73 = trunc i64 %72 to i8
  %74 = and i8 %73, 1
  store i8 %74, i8* %14, align 1, !tbaa !2447
  %75 = icmp eq i64 %59, 0
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %15, align 1, !tbaa !2448
  %77 = lshr i64 %59, 63
  %78 = trunc i64 %77 to i8
  store i8 %78, i8* %16, align 1, !tbaa !2449
  %79 = lshr i64 %58, 63
  %80 = xor i64 %77, %79
  %81 = xor i64 %77, %57
  %82 = add nuw nsw i64 %80, %81
  %83 = icmp eq i64 %82, 2
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %17, align 1, !tbaa !2450
  %85 = add i64 %49, -20
  %86 = add i64 %51, 15
  store i64 %86, i64* %PC, align 8
  %87 = inttoptr i64 %85 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = add i64 %89, %59
  %91 = add i64 %51, 20
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %90 to i8*
  store i8 88, i8* %92, align 1
  %93 = load i32, i32* %EAX, align 4
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %PC, align 8
  store i64 %94, i64* %RDI, align 8, !tbaa !2428
  %96 = load i64, i64* %R8, align 8
  store i64 %96, i64* %RSI, align 8, !tbaa !2428
  %97 = add i64 %95, -534
  %98 = add i64 %95, 10
  %99 = load i64, i64* %RSP, align 8, !tbaa !2428
  %100 = add i64 %99, -8
  %101 = inttoptr i64 %100 to i64*
  store i64 %98, i64* %101, align 8
  store i64 %100, i64* %RSP, align 8, !tbaa !2428
  store i64 %97, i64* %PC, align 8, !tbaa !2428
  %102 = tail call fastcc %struct.Memory* @ext_601098_read(%struct.State* nonnull %0, %struct.Memory* %2)
  %103 = load i64, i64* %RBP, align 8
  %104 = add i64 %103, -72
  %105 = load i64, i64* %RAX, align 8
  %106 = load i64, i64* %PC, align 8
  %107 = add i64 %106, 4
  store i64 %107, i64* %PC, align 8
  %108 = inttoptr i64 %104 to i64*
  store i64 %105, i64* %108, align 8
  %.pre = load i64, i64* %PC, align 8
  br label %block_4006b4

block_4006f6:                                     ; preds = %block_4006e8
  %109 = add i64 %136, -24
  store i64 4196089, i64* %PC, align 8
  %110 = inttoptr i64 %109 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = add i32 %111, -1
  %113 = zext i32 %112 to i64
  store i64 %113, i64* %RAX, align 8, !tbaa !2428
  %114 = icmp ne i32 %111, 0
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %12, align 1, !tbaa !2432
  %116 = and i32 %112, 255
  %117 = tail call i32 @llvm.ctpop.i32(i32 %116) #8
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  %120 = xor i8 %119, 1
  store i8 %120, i8* %13, align 1, !tbaa !2446
  %121 = xor i32 %111, 16
  %122 = xor i32 %112, %121
  %123 = lshr i32 %122, 4
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  store i8 %125, i8* %14, align 1, !tbaa !2447
  %126 = icmp eq i32 %112, 0
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %15, align 1, !tbaa !2448
  %128 = lshr i32 %112, 31
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %16, align 1, !tbaa !2449
  %130 = lshr i32 %111, 31
  %131 = xor i32 %128, %130
  %132 = xor i32 %128, 1
  %133 = add nuw nsw i32 %131, %132
  %134 = icmp eq i32 %133, 2
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %17, align 1, !tbaa !2450
  store i64 4196095, i64* %PC, align 8
  store i32 %112, i32* %110, align 4
  br label %block_400760

block_4006e8:                                     ; preds = %block_4006be
  %136 = load i64, i64* %RBP, align 8
  %137 = add i64 %136, -80
  %138 = add i64 %320, 4
  store i64 %138, i64* %PC, align 8
  %139 = inttoptr i64 %137 to i64*
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %RAX, align 8, !tbaa !2428
  %141 = shl i64 %140, 3
  %142 = add i64 %141, add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 8)
  %143 = add i64 %320, 12
  store i64 %143, i64* %PC, align 8
  %144 = inttoptr i64 %142 to i64*
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %RCX, align 8, !tbaa !2428
  store i64 %145, i64* %PC, align 8, !tbaa !2428
  switch i64 %145, label %909 [
    i64 4196114, label %block_400712
    i64 4196128, label %block_400720
    i64 4196100, label %block_400704
    i64 4196142, label %block_40072e
    i64 4196086, label %block_4006f6
  ]

block_40083b:                                     ; preds = %block_40082f
  %146 = add i64 %554, -32
  %147 = add i64 %588, 3
  store i64 %147, i64* %PC, align 8
  %148 = inttoptr i64 %146 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = zext i32 %149 to i64
  store i64 %150, i64* %RAX, align 8, !tbaa !2428
  %151 = add i64 %554, -24
  %152 = add i64 %588, 6
  store i64 %152, i64* %PC, align 8
  %153 = inttoptr i64 %151 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = sub i32 %149, %154
  %156 = icmp ult i32 %149, %154
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %12, align 1, !tbaa !2432
  %158 = and i32 %155, 255
  %159 = tail call i32 @llvm.ctpop.i32(i32 %158) #8
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  store i8 %162, i8* %13, align 1, !tbaa !2446
  %163 = xor i32 %154, %149
  %164 = xor i32 %163, %155
  %165 = lshr i32 %164, 4
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  store i8 %167, i8* %14, align 1, !tbaa !2447
  %168 = icmp eq i32 %155, 0
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %15, align 1, !tbaa !2448
  %170 = lshr i32 %155, 31
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %16, align 1, !tbaa !2449
  %172 = lshr i32 %149, 31
  %173 = lshr i32 %154, 31
  %174 = xor i32 %173, %172
  %175 = xor i32 %170, %172
  %176 = add nuw nsw i32 %175, %174
  %177 = icmp eq i32 %176, 2
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %17, align 1, !tbaa !2450
  %.v24 = select i1 %168, i64 12, i64 44
  %179 = add i64 %588, %.v24
  store i64 %179, i64* %PC, align 8, !tbaa !2428
  br i1 %168, label %block_400847, label %block_400867

block_400760:                                     ; preds = %block_400704, %block_400712, %block_400720, %block_4006f6
  %.sink15 = phi i64 [ 83, %block_400704 ], [ 69, %block_400712 ], [ 55, %block_400720 ], [ 97, %block_4006f6 ]
  %180 = load i64, i64* %PC, align 8
  %181 = add i64 %180, %.sink15
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %182 = load i64, i64* %RBP, align 8
  %183 = add i64 %182, -24
  %184 = add i64 %181, 14
  store i64 %184, i64* %PC, align 8
  %185 = inttoptr i64 %183 to i32*
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = mul nsw i64 %187, 11
  store i64 %188, i64* %RCX, align 8, !tbaa !2428
  %189 = lshr i64 %188, 63
  %190 = add i64 %188, ptrtoint (%maze_type* @maze to i64)
  store i64 %190, i64* %RAX, align 8, !tbaa !2428
  %191 = icmp ult i64 %190, ptrtoint (%maze_type* @maze to i64)
  %192 = icmp ult i64 %190, %188
  %193 = or i1 %191, %192
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %12, align 1, !tbaa !2432
  %195 = trunc i64 %190 to i32
  %196 = and i32 %195, 255
  %197 = tail call i32 @llvm.ctpop.i32(i32 %196) #8
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  store i8 %200, i8* %13, align 1, !tbaa !2446
  %201 = xor i64 %188, ptrtoint (%maze_type* @maze to i64)
  %202 = xor i64 %201, %190
  %203 = lshr i64 %202, 4
  %204 = trunc i64 %203 to i8
  %205 = and i8 %204, 1
  store i8 %205, i8* %14, align 1, !tbaa !2447
  %206 = icmp eq i64 %190, 0
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %15, align 1, !tbaa !2448
  %208 = lshr i64 %190, 63
  %209 = trunc i64 %208 to i8
  store i8 %209, i8* %16, align 1, !tbaa !2449
  %210 = xor i64 %208, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %211 = xor i64 %208, %189
  %212 = add nuw nsw i64 %210, %211
  %213 = icmp eq i64 %212, 2
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %17, align 1, !tbaa !2450
  %215 = add i64 %182, -20
  %216 = add i64 %181, 25
  store i64 %216, i64* %PC, align 8
  %217 = inttoptr i64 %215 to i32*
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  store i64 %219, i64* %RCX, align 8, !tbaa !2428
  %220 = add i64 %219, %190
  %221 = add i64 %181, 29
  store i64 %221, i64* %PC, align 8
  %222 = inttoptr i64 %220 to i8*
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i64
  %225 = and i64 %224, 4294967295
  store i64 %225, i64* %RDX, align 8, !tbaa !2428
  %226 = sext i8 %223 to i32
  %227 = add nsw i32 %226, -35
  %228 = icmp ult i8 %223, 35
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %12, align 1, !tbaa !2432
  %230 = and i32 %227, 255
  %231 = tail call i32 @llvm.ctpop.i32(i32 %230) #8
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  %234 = xor i8 %233, 1
  store i8 %234, i8* %13, align 1, !tbaa !2446
  %235 = xor i32 %226, %227
  %236 = lshr i32 %235, 4
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  store i8 %238, i8* %14, align 1, !tbaa !2447
  %239 = icmp eq i32 %227, 0
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %15, align 1, !tbaa !2448
  %241 = lshr i32 %227, 31
  %242 = trunc i32 %241 to i8
  store i8 %242, i8* %16, align 1, !tbaa !2449
  %243 = lshr i32 %226, 31
  %244 = xor i32 %241, %243
  %245 = add nuw nsw i32 %244, %243
  %246 = icmp eq i32 %245, 2
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %17, align 1, !tbaa !2450
  %.v17 = select i1 %239, i64 38, i64 89
  %248 = add i64 %181, %.v17
  %249 = add i64 %248, 10
  store i64 %249, i64* %PC, align 8
  br i1 %239, label %block_400786, label %block_4007b9

block_4006be:                                     ; preds = %block_4006b4
  %250 = add i64 %484, -20
  %251 = add i64 %513, 3
  store i64 %251, i64* %PC, align 8
  %252 = inttoptr i64 %250 to i32*
  %253 = load i32, i32* %252, align 4
  %254 = zext i32 %253 to i64
  store i64 %254, i64* %RAX, align 8, !tbaa !2428
  %255 = add i64 %484, -28
  %256 = add i64 %513, 6
  store i64 %256, i64* %PC, align 8
  %257 = inttoptr i64 %255 to i32*
  store i32 %253, i32* %257, align 4
  %258 = load i64, i64* %RBP, align 8
  %259 = add i64 %258, -24
  %260 = load i64, i64* %PC, align 8
  %261 = add i64 %260, 3
  store i64 %261, i64* %PC, align 8
  %262 = inttoptr i64 %259 to i32*
  %263 = load i32, i32* %262, align 4
  %264 = zext i32 %263 to i64
  store i64 %264, i64* %RAX, align 8, !tbaa !2428
  %265 = add i64 %258, -32
  %266 = add i64 %260, 6
  store i64 %266, i64* %PC, align 8
  %267 = inttoptr i64 %265 to i32*
  store i32 %263, i32* %267, align 4
  %268 = load i64, i64* %RBP, align 8
  %269 = add i64 %268, -36
  %270 = load i64, i64* %PC, align 8
  %271 = add i64 %270, 4
  store i64 %271, i64* %PC, align 8
  %272 = inttoptr i64 %269 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = sext i32 %273 to i64
  store i64 %274, i64* %RCX, align 8, !tbaa !2428
  %275 = add i64 %268, -64
  %276 = add i64 %275, %274
  %277 = add i64 %270, 9
  store i64 %277, i64* %PC, align 8
  %278 = inttoptr i64 %276 to i8*
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = add nsw i32 %280, -97
  %282 = zext i32 %281 to i64
  %283 = lshr i32 %281, 31
  store i64 %282, i64* %RCX, align 8, !tbaa !2428
  %284 = add nsw i32 %280, -119
  %285 = zext i32 %284 to i64
  store i64 %285, i64* %RAX, align 8, !tbaa !2428
  %286 = icmp ult i32 %281, 22
  %287 = zext i1 %286 to i8
  store i8 %287, i8* %12, align 1, !tbaa !2432
  %288 = and i32 %284, 255
  %289 = tail call i32 @llvm.ctpop.i32(i32 %288) #8
  %290 = trunc i32 %289 to i8
  %291 = and i8 %290, 1
  %292 = xor i8 %291, 1
  store i8 %292, i8* %13, align 1, !tbaa !2446
  %293 = xor i32 %281, 16
  %294 = xor i32 %293, %284
  %295 = lshr i32 %294, 4
  %296 = trunc i32 %295 to i8
  %297 = and i8 %296, 1
  store i8 %297, i8* %14, align 1, !tbaa !2447
  %298 = icmp eq i32 %284, 0
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %15, align 1, !tbaa !2448
  %300 = lshr i32 %284, 31
  %301 = trunc i32 %300 to i8
  store i8 %301, i8* %16, align 1, !tbaa !2449
  %302 = xor i32 %300, %283
  %303 = add nuw nsw i32 %302, %283
  %304 = icmp eq i32 %303, 2
  %305 = zext i1 %304 to i8
  store i8 %305, i8* %17, align 1, !tbaa !2450
  %306 = add i64 %268, -80
  %307 = add i64 %270, 21
  store i64 %307, i64* %PC, align 8
  %308 = inttoptr i64 %306 to i64*
  store i64 %282, i64* %308, align 8
  %309 = load i64, i64* %RBP, align 8
  %310 = add i64 %309, -84
  %311 = load i32, i32* %EAX, align 4
  %312 = load i64, i64* %PC, align 8
  %313 = add i64 %312, 3
  store i64 %313, i64* %PC, align 8
  %314 = inttoptr i64 %310 to i32*
  store i32 %311, i32* %314, align 4
  %315 = load i64, i64* %PC, align 8
  %316 = load i8, i8* %12, align 1, !tbaa !2432
  %317 = load i8, i8* %15, align 1, !tbaa !2448
  %318 = or i8 %317, %316
  %319 = icmp eq i8 %318, 0
  %.v16 = select i1 %319, i64 76, i64 6
  %320 = add i64 %315, %.v16
  store i64 %320, i64* %PC, align 8, !tbaa !2428
  br i1 %319, label %block_40072e, label %block_4006e8

block_400847:                                     ; preds = %block_40083b
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %321 = add i64 %179, -967
  %322 = add i64 %179, 17
  %323 = load i64, i64* %RSP, align 8, !tbaa !2428
  %324 = add i64 %323, -8
  %325 = inttoptr i64 %324 to i64*
  store i64 %322, i64* %325, align 8
  store i64 %324, i64* %RSP, align 8, !tbaa !2428
  store i64 %321, i64* %PC, align 8, !tbaa !2428
  %326 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %327 = load i64, i64* %RBP, align 8
  %328 = add i64 %327, -4
  %329 = load i64, i64* %PC, align 8
  %330 = add i64 %329, 7
  store i64 %330, i64* %PC, align 8
  %331 = inttoptr i64 %328 to i32*
  store i32 2, i32* %331, align 4
  %332 = load i64, i64* %RBP, align 8
  %333 = add i64 %332, -104
  %334 = load i32, i32* %EAX, align 4
  %335 = load i64, i64* %PC, align 8
  %336 = add i64 %335, 3
  store i64 %336, i64* %PC, align 8
  %337 = inttoptr i64 %333 to i32*
  store i32 %334, i32* %337, align 4
  %338 = load i64, i64* %PC, align 8
  %339 = add i64 %338, 80
  store i64 %339, i64* %PC, align 8, !tbaa !2428
  br label %block_4008b2

block_400867:                                     ; preds = %block_40083b, %block_40082f.block_400867_crit_edge
  %.pre-phi11 = phi i32* [ %.pre10, %block_40082f.block_400867_crit_edge ], [ %153, %block_40083b ]
  %340 = phi i64 [ %588, %block_40082f.block_400867_crit_edge ], [ %179, %block_40083b ]
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %341 = add i64 %340, 14
  store i64 %341, i64* %PC, align 8
  %342 = load i32, i32* %.pre-phi11, align 4
  %343 = sext i32 %342 to i64
  %344 = mul nsw i64 %343, 11
  store i64 %344, i64* %RCX, align 8, !tbaa !2428
  %345 = lshr i64 %344, 63
  %346 = add i64 %344, ptrtoint (%maze_type* @maze to i64)
  store i64 %346, i64* %RAX, align 8, !tbaa !2428
  %347 = icmp ult i64 %346, ptrtoint (%maze_type* @maze to i64)
  %348 = icmp ult i64 %346, %344
  %349 = or i1 %347, %348
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %12, align 1, !tbaa !2432
  %351 = trunc i64 %346 to i32
  %352 = and i32 %351, 255
  %353 = tail call i32 @llvm.ctpop.i32(i32 %352) #8
  %354 = trunc i32 %353 to i8
  %355 = and i8 %354, 1
  %356 = xor i8 %355, 1
  store i8 %356, i8* %13, align 1, !tbaa !2446
  %357 = xor i64 %344, ptrtoint (%maze_type* @maze to i64)
  %358 = xor i64 %357, %346
  %359 = lshr i64 %358, 4
  %360 = trunc i64 %359 to i8
  %361 = and i8 %360, 1
  store i8 %361, i8* %14, align 1, !tbaa !2447
  %362 = icmp eq i64 %346, 0
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %15, align 1, !tbaa !2448
  %364 = lshr i64 %346, 63
  %365 = trunc i64 %364 to i8
  store i8 %365, i8* %16, align 1, !tbaa !2449
  %366 = xor i64 %364, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %367 = xor i64 %364, %345
  %368 = add nuw nsw i64 %366, %367
  %369 = icmp eq i64 %368, 2
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %17, align 1, !tbaa !2450
  %371 = add i64 %340, 25
  store i64 %371, i64* %PC, align 8
  %372 = load i32, i32* %562, align 4
  %373 = sext i32 %372 to i64
  store i64 %373, i64* %RCX, align 8, !tbaa !2428
  %374 = add i64 %373, %346
  %375 = add i64 %340, 29
  store i64 %375, i64* %PC, align 8
  %376 = inttoptr i64 %374 to i8*
  store i8 88, i8* %376, align 1
  %377 = load i64, i64* %PC, align 8
  %378 = add i64 %377, -740
  %379 = add i64 %377, 5
  %380 = load i64, i64* %RSP, align 8, !tbaa !2428
  %381 = add i64 %380, -8
  %382 = inttoptr i64 %381 to i64*
  store i64 %379, i64* %382, align 8
  store i64 %381, i64* %RSP, align 8, !tbaa !2428
  store i64 %378, i64* %PC, align 8, !tbaa !2428
  %383 = tail call %struct.Memory* @sub_4005a0_draw_renamed_(%struct.State* nonnull %0, i64 %378, %struct.Memory* %MEMORY.2)
  %384 = load i64, i64* %RBP, align 8
  %385 = add i64 %384, -36
  %386 = load i64, i64* %PC, align 8
  %387 = add i64 %386, 3
  store i64 %387, i64* %PC, align 8
  %388 = inttoptr i64 %385 to i32*
  %389 = load i32, i32* %388, align 4
  %390 = add i32 %389, 1
  %391 = zext i32 %390 to i64
  store i64 %391, i64* %RDX, align 8, !tbaa !2428
  %392 = icmp eq i32 %389, -1
  %393 = icmp eq i32 %390, 0
  %394 = or i1 %392, %393
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %12, align 1, !tbaa !2432
  %396 = and i32 %390, 255
  %397 = tail call i32 @llvm.ctpop.i32(i32 %396) #8
  %398 = trunc i32 %397 to i8
  %399 = and i8 %398, 1
  %400 = xor i8 %399, 1
  store i8 %400, i8* %13, align 1, !tbaa !2446
  %401 = xor i32 %389, %390
  %402 = lshr i32 %401, 4
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  store i8 %404, i8* %14, align 1, !tbaa !2447
  %405 = zext i1 %393 to i8
  store i8 %405, i8* %15, align 1, !tbaa !2448
  %406 = lshr i32 %390, 31
  %407 = trunc i32 %406 to i8
  store i8 %407, i8* %16, align 1, !tbaa !2449
  %408 = lshr i32 %389, 31
  %409 = xor i32 %406, %408
  %410 = add nuw nsw i32 %409, %406
  %411 = icmp eq i32 %410, 2
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %17, align 1, !tbaa !2450
  %413 = add i64 %386, 9
  store i64 %413, i64* %PC, align 8
  store i32 %390, i32* %388, align 4
  %414 = load i64, i64* %PC, align 8
  %415 = add i64 %414, -478
  store i64 %415, i64* %PC, align 8, !tbaa !2428
  br label %block_4006b4

block_4007b9:                                     ; preds = %block_400760
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %416 = load i64, i64* %RBP, align 8
  %417 = add i64 %416, -24
  %418 = add i64 %248, 14
  store i64 %418, i64* %PC, align 8
  %419 = inttoptr i64 %417 to i32*
  %420 = load i32, i32* %419, align 4
  %421 = sext i32 %420 to i64
  %422 = mul nsw i64 %421, 11
  store i64 %422, i64* %RCX, align 8, !tbaa !2428
  %423 = lshr i64 %422, 63
  %424 = add i64 %422, ptrtoint (%maze_type* @maze to i64)
  store i64 %424, i64* %RAX, align 8, !tbaa !2428
  %425 = icmp ult i64 %424, ptrtoint (%maze_type* @maze to i64)
  %426 = icmp ult i64 %424, %422
  %427 = or i1 %425, %426
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %12, align 1, !tbaa !2432
  %429 = trunc i64 %424 to i32
  %430 = and i32 %429, 255
  %431 = tail call i32 @llvm.ctpop.i32(i32 %430) #8
  %432 = trunc i32 %431 to i8
  %433 = and i8 %432, 1
  %434 = xor i8 %433, 1
  store i8 %434, i8* %13, align 1, !tbaa !2446
  %435 = xor i64 %422, ptrtoint (%maze_type* @maze to i64)
  %436 = xor i64 %435, %424
  %437 = lshr i64 %436, 4
  %438 = trunc i64 %437 to i8
  %439 = and i8 %438, 1
  store i8 %439, i8* %14, align 1, !tbaa !2447
  %440 = icmp eq i64 %424, 0
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %15, align 1, !tbaa !2448
  %442 = lshr i64 %424, 63
  %443 = trunc i64 %442 to i8
  store i8 %443, i8* %16, align 1, !tbaa !2449
  %444 = xor i64 %442, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %445 = xor i64 %442, %423
  %446 = add nuw nsw i64 %444, %445
  %447 = icmp eq i64 %446, 2
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %17, align 1, !tbaa !2450
  %449 = add i64 %416, -20
  %450 = add i64 %248, 25
  store i64 %450, i64* %PC, align 8
  %451 = inttoptr i64 %449 to i32*
  %452 = load i32, i32* %451, align 4
  %453 = sext i32 %452 to i64
  store i64 %453, i64* %RCX, align 8, !tbaa !2428
  %454 = add i64 %453, %424
  %455 = add i64 %248, 29
  store i64 %455, i64* %PC, align 8
  %456 = inttoptr i64 %454 to i8*
  %457 = load i8, i8* %456, align 1
  %458 = sext i8 %457 to i64
  %459 = and i64 %458, 4294967295
  store i64 %459, i64* %RDX, align 8, !tbaa !2428
  %460 = sext i8 %457 to i32
  %461 = add nsw i32 %460, -32
  %462 = icmp ult i8 %457, 32
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %12, align 1, !tbaa !2432
  %464 = and i32 %461, 255
  %465 = tail call i32 @llvm.ctpop.i32(i32 %464) #8
  %466 = trunc i32 %465 to i8
  %467 = and i8 %466, 1
  %468 = xor i8 %467, 1
  store i8 %468, i8* %13, align 1, !tbaa !2446
  %469 = xor i32 %460, %461
  %470 = lshr i32 %469, 4
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  store i8 %472, i8* %14, align 1, !tbaa !2447
  %473 = icmp eq i32 %461, 0
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %15, align 1, !tbaa !2448
  %475 = lshr i32 %461, 31
  %476 = trunc i32 %475 to i8
  store i8 %476, i8* %16, align 1, !tbaa !2449
  %477 = lshr i32 %460, 31
  %478 = xor i32 %475, %477
  %479 = add nuw nsw i32 %478, %477
  %480 = icmp eq i32 %479, 2
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %17, align 1, !tbaa !2450
  %.v18 = select i1 %473, i64 118, i64 38
  %482 = add i64 %248, %.v18
  store i64 %482, i64* %PC, align 8, !tbaa !2428
  br i1 %473, label %block_40082f, label %block_4007df

block_4006b4:                                     ; preds = %block_400867, %block_400650
  %483 = phi i64 [ %.pre, %block_400650 ], [ %415, %block_400867 ]
  %MEMORY.2 = phi %struct.Memory* [ %102, %block_400650 ], [ %383, %block_400867 ]
  %484 = load i64, i64* %RBP, align 8
  %485 = add i64 %484, -36
  %486 = add i64 %483, 4
  store i64 %486, i64* %PC, align 8
  %487 = inttoptr i64 %485 to i32*
  %488 = load i32, i32* %487, align 4
  %489 = add i32 %488, -28
  %490 = icmp ult i32 %488, 28
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %12, align 1, !tbaa !2432
  %492 = and i32 %489, 255
  %493 = tail call i32 @llvm.ctpop.i32(i32 %492) #8
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  %496 = xor i8 %495, 1
  store i8 %496, i8* %13, align 1, !tbaa !2446
  %497 = xor i32 %488, 16
  %498 = xor i32 %497, %489
  %499 = lshr i32 %498, 4
  %500 = trunc i32 %499 to i8
  %501 = and i8 %500, 1
  store i8 %501, i8* %14, align 1, !tbaa !2447
  %502 = icmp eq i32 %489, 0
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %15, align 1, !tbaa !2448
  %504 = lshr i32 %489, 31
  %505 = trunc i32 %504 to i8
  store i8 %505, i8* %16, align 1, !tbaa !2449
  %506 = lshr i32 %488, 31
  %507 = xor i32 %504, %506
  %508 = add nuw nsw i32 %507, %506
  %509 = icmp eq i32 %508, 2
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %17, align 1, !tbaa !2450
  %511 = icmp ne i8 %505, 0
  %512 = xor i1 %511, %509
  %.v = select i1 %512, i64 10, i64 483
  %513 = add i64 %483, %.v
  store i64 %513, i64* %PC, align 8, !tbaa !2428
  br i1 %512, label %block_4006be, label %block_400897

block_4008b2:                                     ; preds = %block_400897, %block_400847
  %514 = phi i64 [ %.pre8, %block_400897 ], [ %339, %block_400847 ]
  %MEMORY.3 = phi %struct.Memory* [ %793, %block_400897 ], [ %326, %block_400847 ]
  %515 = load i64, i64* %RBP, align 8
  %516 = add i64 %515, -4
  %517 = add i64 %514, 3
  store i64 %517, i64* %PC, align 8
  %518 = inttoptr i64 %516 to i32*
  %519 = load i32, i32* %518, align 4
  %520 = zext i32 %519 to i64
  store i64 %520, i64* %RAX, align 8, !tbaa !2428
  %521 = load i64, i64* %RSP, align 8
  %522 = add i64 %521, 112
  store i64 %522, i64* %RSP, align 8, !tbaa !2428
  %523 = icmp ugt i64 %521, -113
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %12, align 1, !tbaa !2432
  %525 = trunc i64 %522 to i32
  %526 = and i32 %525, 255
  %527 = tail call i32 @llvm.ctpop.i32(i32 %526) #8
  %528 = trunc i32 %527 to i8
  %529 = and i8 %528, 1
  %530 = xor i8 %529, 1
  store i8 %530, i8* %13, align 1, !tbaa !2446
  %531 = xor i64 %521, 16
  %532 = xor i64 %531, %522
  %533 = lshr i64 %532, 4
  %534 = trunc i64 %533 to i8
  %535 = and i8 %534, 1
  store i8 %535, i8* %14, align 1, !tbaa !2447
  %536 = icmp eq i64 %522, 0
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %15, align 1, !tbaa !2448
  %538 = lshr i64 %522, 63
  %539 = trunc i64 %538 to i8
  store i8 %539, i8* %16, align 1, !tbaa !2449
  %540 = lshr i64 %521, 63
  %541 = xor i64 %538, %540
  %542 = add nuw nsw i64 %541, %538
  %543 = icmp eq i64 %542, 2
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %17, align 1, !tbaa !2450
  %545 = add i64 %514, 8
  store i64 %545, i64* %PC, align 8
  %546 = add i64 %521, 120
  %547 = inttoptr i64 %522 to i64*
  %548 = load i64, i64* %547, align 8
  store i64 %548, i64* %RBP, align 8, !tbaa !2428
  store i64 %546, i64* %RSP, align 8, !tbaa !2428
  %549 = add i64 %514, 9
  store i64 %549, i64* %PC, align 8
  %550 = inttoptr i64 %546 to i64*
  %551 = load i64, i64* %550, align 8
  store i64 %551, i64* %PC, align 8, !tbaa !2428
  %552 = add i64 %521, 128
  store i64 %552, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.3

block_40082f:                                     ; preds = %block_400823, %block_400819, %block_4007b9
  %553 = phi i64 [ %.pre7, %block_400823 ], [ %702, %block_400819 ], [ %482, %block_4007b9 ]
  %554 = load i64, i64* %RBP, align 8
  %555 = add i64 %554, -28
  %556 = add i64 %553, 3
  store i64 %556, i64* %PC, align 8
  %557 = inttoptr i64 %555 to i32*
  %558 = load i32, i32* %557, align 4
  %559 = zext i32 %558 to i64
  store i64 %559, i64* %RAX, align 8, !tbaa !2428
  %560 = add i64 %554, -20
  %561 = add i64 %553, 6
  store i64 %561, i64* %PC, align 8
  %562 = inttoptr i64 %560 to i32*
  %563 = load i32, i32* %562, align 4
  %564 = sub i32 %558, %563
  %565 = icmp ult i32 %558, %563
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %12, align 1, !tbaa !2432
  %567 = and i32 %564, 255
  %568 = tail call i32 @llvm.ctpop.i32(i32 %567) #8
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  %571 = xor i8 %570, 1
  store i8 %571, i8* %13, align 1, !tbaa !2446
  %572 = xor i32 %563, %558
  %573 = xor i32 %572, %564
  %574 = lshr i32 %573, 4
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  store i8 %576, i8* %14, align 1, !tbaa !2447
  %577 = icmp eq i32 %564, 0
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %15, align 1, !tbaa !2448
  %579 = lshr i32 %564, 31
  %580 = trunc i32 %579 to i8
  store i8 %580, i8* %16, align 1, !tbaa !2449
  %581 = lshr i32 %558, 31
  %582 = lshr i32 %563, 31
  %583 = xor i32 %582, %581
  %584 = xor i32 %579, %581
  %585 = add nuw nsw i32 %584, %583
  %586 = icmp eq i32 %585, 2
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %17, align 1, !tbaa !2450
  %.v23 = select i1 %577, i64 12, i64 56
  %588 = add i64 %553, %.v23
  store i64 %588, i64* %PC, align 8, !tbaa !2428
  br i1 %577, label %block_40083b, label %block_40082f.block_400867_crit_edge

block_40082f.block_400867_crit_edge:              ; preds = %block_40082f
  %.pre9 = add i64 %554, -24
  %.pre10 = inttoptr i64 %.pre9 to i32*
  br label %block_400867

block_40072e:                                     ; preds = %block_4006be, %block_4006e8
  %589 = phi i64 [ %320, %block_4006be ], [ 4196142, %block_4006e8 ]
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 195), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %590 = add i64 %589, -686
  %591 = add i64 %589, 17
  %592 = load i64, i64* %RSP, align 8, !tbaa !2428
  %593 = add i64 %592, -8
  %594 = inttoptr i64 %593 to i64*
  store i64 %591, i64* %594, align 8
  store i64 %593, i64* %RSP, align 8, !tbaa !2428
  store i64 %590, i64* %PC, align 8, !tbaa !2428
  %595 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %596 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 235), i64* %RDI, align 8, !tbaa !2428
  %597 = load i64, i64* %RBP, align 8
  %598 = add i64 %597, -88
  %599 = load i32, i32* %EAX, align 4
  %600 = add i64 %596, 13
  store i64 %600, i64* %PC, align 8
  %601 = inttoptr i64 %598 to i32*
  store i32 %599, i32* %601, align 4
  %602 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %603 = add i64 %602, -716
  %604 = add i64 %602, 7
  %605 = load i64, i64* %RSP, align 8, !tbaa !2428
  %606 = add i64 %605, -8
  %607 = inttoptr i64 %606 to i64*
  store i64 %604, i64* %607, align 8
  store i64 %606, i64* %RSP, align 8, !tbaa !2428
  store i64 %603, i64* %PC, align 8, !tbaa !2428
  %608 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %595)
  %609 = load i64, i64* %PC, align 8
  store i64 4294967295, i64* %RDI, align 8, !tbaa !2428
  %610 = load i64, i64* %RBP, align 8
  %611 = add i64 %610, -92
  %612 = load i32, i32* %EAX, align 4
  %613 = add i64 %609, 8
  store i64 %613, i64* %PC, align 8
  %614 = inttoptr i64 %611 to i32*
  store i32 %612, i32* %614, align 4
  %615 = load i64, i64* %PC, align 8
  %616 = add i64 %615, -699
  %617 = add i64 %615, 5
  %618 = load i64, i64* %RSP, align 8, !tbaa !2428
  %619 = add i64 %618, -8
  %620 = inttoptr i64 %619 to i64*
  store i64 %617, i64* %620, align 8
  store i64 %619, i64* %RSP, align 8, !tbaa !2428
  store i64 %616, i64* %PC, align 8, !tbaa !2428
  %621 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %608)
  %622 = load i64, i64* %PC, align 8
  %623 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %622, %struct.Memory* %621)
  ret %struct.Memory* %623

block_400720:                                     ; preds = %block_4006e8
  %624 = add i64 %136, -20
  store i64 4196131, i64* %PC, align 8
  %625 = inttoptr i64 %624 to i32*
  %626 = load i32, i32* %625, align 4
  %627 = add i32 %626, 1
  %628 = zext i32 %627 to i64
  store i64 %628, i64* %RAX, align 8, !tbaa !2428
  %629 = icmp eq i32 %626, -1
  %630 = icmp eq i32 %627, 0
  %631 = or i1 %629, %630
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %12, align 1, !tbaa !2432
  %633 = and i32 %627, 255
  %634 = tail call i32 @llvm.ctpop.i32(i32 %633) #8
  %635 = trunc i32 %634 to i8
  %636 = and i8 %635, 1
  %637 = xor i8 %636, 1
  store i8 %637, i8* %13, align 1, !tbaa !2446
  %638 = xor i32 %626, %627
  %639 = lshr i32 %638, 4
  %640 = trunc i32 %639 to i8
  %641 = and i8 %640, 1
  store i8 %641, i8* %14, align 1, !tbaa !2447
  %642 = zext i1 %630 to i8
  store i8 %642, i8* %15, align 1, !tbaa !2448
  %643 = lshr i32 %627, 31
  %644 = trunc i32 %643 to i8
  store i8 %644, i8* %16, align 1, !tbaa !2449
  %645 = lshr i32 %626, 31
  %646 = xor i32 %643, %645
  %647 = add nuw nsw i32 %646, %643
  %648 = icmp eq i32 %647, 2
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %17, align 1, !tbaa !2450
  store i64 4196137, i64* %PC, align 8
  store i32 %627, i32* %625, align 4
  br label %block_400760

block_4007df:                                     ; preds = %block_4007b9
  %650 = load i64, i64* %RBP, align 8
  %651 = add i64 %650, -24
  %652 = add i64 %482, 4
  store i64 %652, i64* %PC, align 8
  %653 = inttoptr i64 %651 to i32*
  %654 = load i32, i32* %653, align 4
  %655 = add i32 %654, -2
  %656 = icmp ult i32 %654, 2
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %12, align 1, !tbaa !2432
  %658 = and i32 %655, 255
  %659 = tail call i32 @llvm.ctpop.i32(i32 %658) #8
  %660 = trunc i32 %659 to i8
  %661 = and i8 %660, 1
  %662 = xor i8 %661, 1
  store i8 %662, i8* %13, align 1, !tbaa !2446
  %663 = xor i32 %654, %655
  %664 = lshr i32 %663, 4
  %665 = trunc i32 %664 to i8
  %666 = and i8 %665, 1
  store i8 %666, i8* %14, align 1, !tbaa !2447
  %667 = icmp eq i32 %655, 0
  %668 = zext i1 %667 to i8
  store i8 %668, i8* %15, align 1, !tbaa !2448
  %669 = lshr i32 %655, 31
  %670 = trunc i32 %669 to i8
  store i8 %670, i8* %16, align 1, !tbaa !2449
  %671 = lshr i32 %654, 31
  %672 = xor i32 %669, %671
  %673 = add nuw nsw i32 %672, %671
  %674 = icmp eq i32 %673, 2
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %17, align 1, !tbaa !2450
  %.v19 = select i1 %667, i64 10, i64 68
  %676 = add i64 %482, %.v19
  store i64 %676, i64* %PC, align 8, !tbaa !2428
  br i1 %667, label %block_4007e9, label %block_400823

block_400819:                                     ; preds = %block_40080f
  %677 = add i64 %820, 4
  store i64 %677, i64* %PC, align 8
  %678 = load i32, i32* %807, align 4
  %679 = add i32 %678, -11
  %680 = icmp ult i32 %678, 11
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %12, align 1, !tbaa !2432
  %682 = and i32 %679, 255
  %683 = tail call i32 @llvm.ctpop.i32(i32 %682) #8
  %684 = trunc i32 %683 to i8
  %685 = and i8 %684, 1
  %686 = xor i8 %685, 1
  store i8 %686, i8* %13, align 1, !tbaa !2446
  %687 = xor i32 %678, %679
  %688 = lshr i32 %687, 4
  %689 = trunc i32 %688 to i8
  %690 = and i8 %689, 1
  store i8 %690, i8* %14, align 1, !tbaa !2447
  %691 = icmp eq i32 %679, 0
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %15, align 1, !tbaa !2448
  %693 = lshr i32 %679, 31
  %694 = trunc i32 %693 to i8
  store i8 %694, i8* %16, align 1, !tbaa !2449
  %695 = lshr i32 %678, 31
  %696 = xor i32 %693, %695
  %697 = add nuw nsw i32 %696, %695
  %698 = icmp eq i32 %697, 2
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %17, align 1, !tbaa !2450
  %700 = icmp ne i8 %694, 0
  %701 = xor i1 %700, %698
  %.v22 = select i1 %701, i64 22, i64 10
  %702 = add i64 %820, %.v22
  store i64 %702, i64* %PC, align 8, !tbaa !2428
  br i1 %701, label %block_40082f, label %block_400823

block_4007e9:                                     ; preds = %block_4007df
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %703 = add i64 %676, 14
  store i64 %703, i64* %PC, align 8
  %704 = load i32, i32* %653, align 4
  %705 = sext i32 %704 to i64
  %706 = mul nsw i64 %705, 11
  store i64 %706, i64* %RCX, align 8, !tbaa !2428
  %707 = lshr i64 %706, 63
  %708 = add i64 %706, ptrtoint (%maze_type* @maze to i64)
  store i64 %708, i64* %RAX, align 8, !tbaa !2428
  %709 = icmp ult i64 %708, ptrtoint (%maze_type* @maze to i64)
  %710 = icmp ult i64 %708, %706
  %711 = or i1 %709, %710
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %12, align 1, !tbaa !2432
  %713 = trunc i64 %708 to i32
  %714 = and i32 %713, 255
  %715 = tail call i32 @llvm.ctpop.i32(i32 %714) #8
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  %718 = xor i8 %717, 1
  store i8 %718, i8* %13, align 1, !tbaa !2446
  %719 = xor i64 %706, ptrtoint (%maze_type* @maze to i64)
  %720 = xor i64 %719, %708
  %721 = lshr i64 %720, 4
  %722 = trunc i64 %721 to i8
  %723 = and i8 %722, 1
  store i8 %723, i8* %14, align 1, !tbaa !2447
  %724 = icmp eq i64 %708, 0
  %725 = zext i1 %724 to i8
  store i8 %725, i8* %15, align 1, !tbaa !2448
  %726 = lshr i64 %708, 63
  %727 = trunc i64 %726 to i8
  store i8 %727, i8* %16, align 1, !tbaa !2449
  %728 = xor i64 %726, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %729 = xor i64 %726, %707
  %730 = add nuw nsw i64 %728, %729
  %731 = icmp eq i64 %730, 2
  %732 = zext i1 %731 to i8
  store i8 %732, i8* %17, align 1, !tbaa !2450
  %733 = add i64 %650, -20
  %734 = add i64 %676, 25
  store i64 %734, i64* %PC, align 8
  %735 = inttoptr i64 %733 to i32*
  %736 = load i32, i32* %735, align 4
  %737 = sext i32 %736 to i64
  store i64 %737, i64* %RCX, align 8, !tbaa !2428
  %738 = add i64 %737, %708
  %739 = add i64 %676, 29
  store i64 %739, i64* %PC, align 8
  %740 = inttoptr i64 %738 to i8*
  %741 = load i8, i8* %740, align 1
  %742 = sext i8 %741 to i64
  %743 = and i64 %742, 4294967295
  store i64 %743, i64* %RDX, align 8, !tbaa !2428
  %744 = sext i8 %741 to i32
  %745 = add nsw i32 %744, -124
  %746 = icmp ult i8 %741, 124
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %12, align 1, !tbaa !2432
  %748 = and i32 %745, 255
  %749 = tail call i32 @llvm.ctpop.i32(i32 %748) #8
  %750 = trunc i32 %749 to i8
  %751 = and i8 %750, 1
  %752 = xor i8 %751, 1
  store i8 %752, i8* %13, align 1, !tbaa !2446
  %753 = xor i32 %744, 16
  %754 = xor i32 %753, %745
  %755 = lshr i32 %754, 4
  %756 = trunc i32 %755 to i8
  %757 = and i8 %756, 1
  store i8 %757, i8* %14, align 1, !tbaa !2447
  %758 = icmp eq i32 %745, 0
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %15, align 1, !tbaa !2448
  %760 = lshr i32 %745, 31
  %761 = trunc i32 %760 to i8
  store i8 %761, i8* %16, align 1, !tbaa !2449
  %762 = lshr i32 %744, 31
  %763 = xor i32 %760, %762
  %764 = add nuw nsw i32 %763, %762
  %765 = icmp eq i32 %764, 2
  %766 = zext i1 %765 to i8
  store i8 %766, i8* %17, align 1, !tbaa !2450
  %.v20 = select i1 %758, i64 38, i64 58
  %767 = add i64 %676, %.v20
  store i64 %767, i64* %PC, align 8, !tbaa !2428
  %.pre6 = load i64, i64* %RBP, align 8
  br i1 %758, label %block_40080f, label %block_400823

block_400823:                                     ; preds = %block_4007e9, %block_4007df, %block_40080f, %block_400819
  %768 = phi i64 [ %820, %block_40080f ], [ %702, %block_400819 ], [ %676, %block_4007df ], [ %767, %block_4007e9 ]
  %769 = phi i64 [ %.pre6, %block_40080f ], [ %.pre6, %block_400819 ], [ %650, %block_4007df ], [ %.pre6, %block_4007e9 ]
  %770 = add i64 %769, -28
  %771 = add i64 %768, 3
  store i64 %771, i64* %PC, align 8
  %772 = inttoptr i64 %770 to i32*
  %773 = load i32, i32* %772, align 4
  %774 = zext i32 %773 to i64
  store i64 %774, i64* %RAX, align 8, !tbaa !2428
  %775 = add i64 %769, -20
  %776 = add i64 %768, 6
  store i64 %776, i64* %PC, align 8
  %777 = inttoptr i64 %775 to i32*
  store i32 %773, i32* %777, align 4
  %778 = load i64, i64* %RBP, align 8
  %779 = add i64 %778, -32
  %780 = load i64, i64* %PC, align 8
  %781 = add i64 %780, 3
  store i64 %781, i64* %PC, align 8
  %782 = inttoptr i64 %779 to i32*
  %783 = load i32, i32* %782, align 4
  %784 = zext i32 %783 to i64
  store i64 %784, i64* %RAX, align 8, !tbaa !2428
  %785 = add i64 %778, -24
  %786 = add i64 %780, 6
  store i64 %786, i64* %PC, align 8
  %787 = inttoptr i64 %785 to i32*
  store i32 %783, i32* %787, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_40082f

block_400897:                                     ; preds = %block_4006b4
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %788 = add i64 %513, -1047
  %789 = add i64 %513, 17
  %790 = load i64, i64* %RSP, align 8, !tbaa !2428
  %791 = add i64 %790, -8
  %792 = inttoptr i64 %791 to i64*
  store i64 %789, i64* %792, align 8
  store i64 %791, i64* %RSP, align 8, !tbaa !2428
  store i64 %788, i64* %PC, align 8, !tbaa !2428
  %793 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %794 = load i64, i64* %RBP, align 8
  %795 = add i64 %794, -4
  %796 = load i64, i64* %PC, align 8
  %797 = add i64 %796, 7
  store i64 %797, i64* %PC, align 8
  %798 = inttoptr i64 %795 to i32*
  store i32 1, i32* %798, align 4
  %799 = load i64, i64* %RBP, align 8
  %800 = add i64 %799, -108
  %801 = load i32, i32* %EAX, align 4
  %802 = load i64, i64* %PC, align 8
  %803 = add i64 %802, 3
  store i64 %803, i64* %PC, align 8
  %804 = inttoptr i64 %800 to i32*
  store i32 %801, i32* %804, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_4008b2

block_40080f:                                     ; preds = %block_4007e9
  %805 = add i64 %.pre6, -20
  %806 = add i64 %767, 4
  store i64 %806, i64* %PC, align 8
  %807 = inttoptr i64 %805 to i32*
  %808 = load i32, i32* %807, align 4
  store i8 0, i8* %12, align 1, !tbaa !2432
  %809 = and i32 %808, 255
  %810 = tail call i32 @llvm.ctpop.i32(i32 %809) #8
  %811 = trunc i32 %810 to i8
  %812 = and i8 %811, 1
  %813 = xor i8 %812, 1
  store i8 %813, i8* %13, align 1, !tbaa !2446
  store i8 0, i8* %14, align 1, !tbaa !2447
  %814 = icmp eq i32 %808, 0
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %15, align 1, !tbaa !2448
  %816 = lshr i32 %808, 31
  %817 = trunc i32 %816 to i8
  store i8 %817, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  %818 = icmp ne i8 %817, 0
  %819 = or i1 %814, %818
  %.v21 = select i1 %819, i64 20, i64 10
  %820 = add i64 %767, %.v21
  store i64 %820, i64* %PC, align 8, !tbaa !2428
  br i1 %819, label %block_400823, label %block_400819

block_400712:                                     ; preds = %block_4006e8
  %821 = add i64 %136, -20
  store i64 4196117, i64* %PC, align 8
  %822 = inttoptr i64 %821 to i32*
  %823 = load i32, i32* %822, align 4
  %824 = add i32 %823, -1
  %825 = zext i32 %824 to i64
  store i64 %825, i64* %RAX, align 8, !tbaa !2428
  %826 = icmp ne i32 %823, 0
  %827 = zext i1 %826 to i8
  store i8 %827, i8* %12, align 1, !tbaa !2432
  %828 = and i32 %824, 255
  %829 = tail call i32 @llvm.ctpop.i32(i32 %828) #8
  %830 = trunc i32 %829 to i8
  %831 = and i8 %830, 1
  %832 = xor i8 %831, 1
  store i8 %832, i8* %13, align 1, !tbaa !2446
  %833 = xor i32 %823, 16
  %834 = xor i32 %824, %833
  %835 = lshr i32 %834, 4
  %836 = trunc i32 %835 to i8
  %837 = and i8 %836, 1
  store i8 %837, i8* %14, align 1, !tbaa !2447
  %838 = icmp eq i32 %824, 0
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %15, align 1, !tbaa !2448
  %840 = lshr i32 %824, 31
  %841 = trunc i32 %840 to i8
  store i8 %841, i8* %16, align 1, !tbaa !2449
  %842 = lshr i32 %823, 31
  %843 = xor i32 %840, %842
  %844 = xor i32 %840, 1
  %845 = add nuw nsw i32 %843, %844
  %846 = icmp eq i32 %845, 2
  %847 = zext i1 %846 to i8
  store i8 %847, i8* %17, align 1, !tbaa !2450
  store i64 4196123, i64* %PC, align 8
  store i32 %824, i32* %822, align 4
  br label %block_400760

block_400786:                                     ; preds = %block_400760
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %848 = add i64 %248, -774
  %849 = add i64 %248, 17
  %850 = load i64, i64* %RSP, align 8, !tbaa !2428
  %851 = add i64 %850, -8
  %852 = inttoptr i64 %851 to i64*
  store i64 %849, i64* %852, align 8
  store i64 %851, i64* %RSP, align 8, !tbaa !2428
  store i64 %848, i64* %PC, align 8, !tbaa !2428
  %853 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %854 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2428
  %855 = load i64, i64* %RBP, align 8
  %856 = add i64 %855, -64
  store i64 %856, i64* %RSI, align 8, !tbaa !2428
  %857 = add i64 %855, -96
  %858 = load i32, i32* %EAX, align 4
  %859 = add i64 %854, 17
  store i64 %859, i64* %PC, align 8
  %860 = inttoptr i64 %857 to i32*
  store i32 %858, i32* %860, align 4
  %861 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %862 = add i64 %861, -808
  %863 = add i64 %861, 7
  %864 = load i64, i64* %RSP, align 8, !tbaa !2428
  %865 = add i64 %864, -8
  %866 = inttoptr i64 %865 to i64*
  store i64 %863, i64* %866, align 8
  store i64 %865, i64* %RSP, align 8, !tbaa !2428
  store i64 %862, i64* %PC, align 8, !tbaa !2428
  %867 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %853)
  %868 = load i64, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 1, i8* %13, align 1, !tbaa !2446
  store i8 1, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %14, align 1, !tbaa !2447
  %869 = load i64, i64* %RBP, align 8
  %870 = add i64 %869, -100
  %871 = load i32, i32* %EAX, align 4
  %872 = add i64 %868, 5
  store i64 %872, i64* %PC, align 8
  %873 = inttoptr i64 %870 to i32*
  store i32 %871, i32* %873, align 4
  %874 = load i64, i64* %PC, align 8
  %875 = add i64 %874, -788
  %876 = add i64 %874, 5
  %877 = load i64, i64* %RSP, align 8, !tbaa !2428
  %878 = add i64 %877, -8
  %879 = inttoptr i64 %878 to i64*
  store i64 %876, i64* %879, align 8
  store i64 %878, i64* %RSP, align 8, !tbaa !2428
  store i64 %875, i64* %PC, align 8, !tbaa !2428
  %880 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %867)
  %881 = load i64, i64* %PC, align 8
  %882 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %881, %struct.Memory* %880)
  ret %struct.Memory* %882

block_400704:                                     ; preds = %block_4006e8
  %883 = add i64 %136, -24
  store i64 4196103, i64* %PC, align 8
  %884 = inttoptr i64 %883 to i32*
  %885 = load i32, i32* %884, align 4
  %886 = add i32 %885, 1
  %887 = zext i32 %886 to i64
  store i64 %887, i64* %RAX, align 8, !tbaa !2428
  %888 = icmp eq i32 %885, -1
  %889 = icmp eq i32 %886, 0
  %890 = or i1 %888, %889
  %891 = zext i1 %890 to i8
  store i8 %891, i8* %12, align 1, !tbaa !2432
  %892 = and i32 %886, 255
  %893 = tail call i32 @llvm.ctpop.i32(i32 %892) #8
  %894 = trunc i32 %893 to i8
  %895 = and i8 %894, 1
  %896 = xor i8 %895, 1
  store i8 %896, i8* %13, align 1, !tbaa !2446
  %897 = xor i32 %885, %886
  %898 = lshr i32 %897, 4
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  store i8 %900, i8* %14, align 1, !tbaa !2447
  %901 = zext i1 %889 to i8
  store i8 %901, i8* %15, align 1, !tbaa !2448
  %902 = lshr i32 %886, 31
  %903 = trunc i32 %902 to i8
  store i8 %903, i8* %16, align 1, !tbaa !2449
  %904 = lshr i32 %885, 31
  %905 = xor i32 %902, %904
  %906 = add nuw nsw i32 %905, %902
  %907 = icmp eq i32 %906, 2
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %17, align 1, !tbaa !2450
  store i64 4196109, i64* %PC, align 8
  store i32 %886, i32* %884, align 4
  br label %block_400760

; <label>:909:                                    ; preds = %block_4006e8
  %910 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %145, %struct.Memory* %MEMORY.2)
  ret %struct.Memory* %910
}

; Function Attrs: noinline
define %struct.Memory* @sub_4008c0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4008c0:
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
  store i64 ptrtoint (%seg_600df0__init_array_type* @seg_600df0__init_array to i64), i64* %R12, align 8, !tbaa !2428
  %27 = load i64, i64* %RBP, align 8
  %28 = add i64 %26, 8
  store i64 %28, i64* %PC, align 8
  %29 = add i64 %7, -40
  %30 = inttoptr i64 %29 to i64*
  store i64 %27, i64* %30, align 8
  %31 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_600df0__init_array_type* @seg_600df0__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2428
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
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #8
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
  %63 = add i64 %38, -1163
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_400450__init_proc_renamed_(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
  %68 = load i64, i64* %RBP, align 8
  %69 = load i64, i64* %PC, align 8
  store i8 0, i8* %43, align 1, !tbaa !2432
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #8
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
  br i1 %76, label %block_400916, label %block_4008f6

block_400916:                                     ; preds = %block_400900, %block_4008c0
  %81 = phi i64 [ %80, %block_4008c0 ], [ %179, %block_400900 ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_4008c0 ], [ %149, %block_400900 ]
  %82 = load i64, i64* %RSP, align 8
  %83 = add i64 %82, 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  %84 = icmp ugt i64 %82, -9
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %43, align 1, !tbaa !2432
  %86 = trunc i64 %83 to i32
  %87 = and i32 %86, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #8
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %44, align 1, !tbaa !2446
  %92 = xor i64 %82, %83
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

block_4008f6:                                     ; preds = %block_4008c0
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_400900

block_400900:                                     ; preds = %block_400900, %block_4008f6
  %134 = phi i64 [ 0, %block_4008f6 ], [ %152, %block_400900 ]
  %135 = phi i64 [ %133, %block_4008f6 ], [ %179, %block_400900 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_4008f6 ], [ %149, %block_400900 ]
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
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #8
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
  %.v1 = select i1 %169, i64 9, i64 -13
  %179 = add i64 %151, %.v1
  store i64 %179, i64* %PC, align 8, !tbaa !2428
  br i1 %169, label %block_400916, label %block_400900
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004e0__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4004e0:
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
define %struct.Memory* @sub_400704(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %4 to i8*
  %EAX = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %RBP, align 8
  %phitmp = add i64 %1, 3
  br label %block_400704

block_4006f6:                                     ; preds = %block_4006e8
  %11 = add i64 %38, -24
  store i64 4196089, i64* %PC, align 8
  %12 = inttoptr i64 %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, -1
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8, !tbaa !2428
  %16 = icmp ne i32 %13, 0
  %17 = zext i1 %16 to i8
  store i8 %17, i8* %5, align 1, !tbaa !2432
  %18 = and i32 %14, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #8
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  store i8 %22, i8* %6, align 1, !tbaa !2446
  %23 = xor i32 %13, 16
  %24 = xor i32 %14, %23
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %7, align 1, !tbaa !2447
  %28 = icmp eq i32 %14, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %8, align 1, !tbaa !2448
  %30 = lshr i32 %14, 31
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %9, align 1, !tbaa !2449
  %32 = lshr i32 %13, 31
  %33 = xor i32 %30, %32
  %34 = xor i32 %30, 1
  %35 = add nuw nsw i32 %33, %34
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  store i8 %37, i8* %10, align 1, !tbaa !2450
  store i64 4196095, i64* %PC, align 8
  store i32 %14, i32* %12, align 4
  br label %block_400760

block_4006e8:                                     ; preds = %block_4006be
  %38 = load i64, i64* %RBP, align 8
  %39 = add i64 %38, -80
  %40 = add i64 %288, 4
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %39 to i64*
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %RAX, align 8, !tbaa !2428
  %43 = shl i64 %42, 3
  %44 = add i64 %43, add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 8)
  %45 = add i64 %288, 12
  store i64 %45, i64* %PC, align 8
  %46 = inttoptr i64 %44 to i64*
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %RCX, align 8, !tbaa !2428
  store i64 %47, i64* %PC, align 8, !tbaa !2428
  switch i64 %47, label %787 [
    i64 4196114, label %block_400712
    i64 4196128, label %block_400720
    i64 4196100, label %block_400704
    i64 4196142, label %block_40072e
    i64 4196086, label %block_4006f6
  ]

block_400867:                                     ; preds = %block_40083b, %block_40082f.block_400867_crit_edge
  %.pre-phi21 = phi i32* [ %.pre20, %block_40082f.block_400867_crit_edge ], [ %529, %block_40083b ]
  %48 = phi i64 [ %756, %block_40082f.block_400867_crit_edge ], [ %555, %block_40083b ]
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %49 = add i64 %48, 14
  store i64 %49, i64* %PC, align 8
  %50 = load i32, i32* %.pre-phi21, align 4
  %51 = sext i32 %50 to i64
  %52 = mul nsw i64 %51, 11
  store i64 %52, i64* %RCX, align 8, !tbaa !2428
  %53 = lshr i64 %52, 63
  %54 = add i64 %52, ptrtoint (%maze_type* @maze to i64)
  store i64 %54, i64* %RAX, align 8, !tbaa !2428
  %55 = icmp ult i64 %54, ptrtoint (%maze_type* @maze to i64)
  %56 = icmp ult i64 %54, %52
  %57 = or i1 %55, %56
  %58 = zext i1 %57 to i8
  store i8 %58, i8* %5, align 1, !tbaa !2432
  %59 = trunc i64 %54 to i32
  %60 = and i32 %59, 255
  %61 = tail call i32 @llvm.ctpop.i32(i32 %60) #8
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 1
  %64 = xor i8 %63, 1
  store i8 %64, i8* %6, align 1, !tbaa !2446
  %65 = xor i64 %52, ptrtoint (%maze_type* @maze to i64)
  %66 = xor i64 %65, %54
  %67 = lshr i64 %66, 4
  %68 = trunc i64 %67 to i8
  %69 = and i8 %68, 1
  store i8 %69, i8* %7, align 1, !tbaa !2447
  %70 = icmp eq i64 %54, 0
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %8, align 1, !tbaa !2448
  %72 = lshr i64 %54, 63
  %73 = trunc i64 %72 to i8
  store i8 %73, i8* %9, align 1, !tbaa !2449
  %74 = xor i64 %72, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %75 = xor i64 %72, %53
  %76 = add nuw nsw i64 %74, %75
  %77 = icmp eq i64 %76, 2
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %10, align 1, !tbaa !2450
  %79 = add i64 %48, 25
  store i64 %79, i64* %PC, align 8
  %80 = load i32, i32* %730, align 4
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %RCX, align 8, !tbaa !2428
  %82 = add i64 %81, %54
  %83 = add i64 %48, 29
  store i64 %83, i64* %PC, align 8
  %84 = inttoptr i64 %82 to i8*
  store i8 88, i8* %84, align 1
  %85 = load i64, i64* %PC, align 8
  %86 = add i64 %85, -740
  %87 = add i64 %85, 5
  %88 = load i64, i64* %RSP, align 8, !tbaa !2428
  %89 = add i64 %88, -8
  %90 = inttoptr i64 %89 to i64*
  store i64 %87, i64* %90, align 8
  store i64 %89, i64* %RSP, align 8, !tbaa !2428
  store i64 %86, i64* %PC, align 8, !tbaa !2428
  %91 = tail call %struct.Memory* @sub_4005a0_draw_renamed_(%struct.State* nonnull %0, i64 %86, %struct.Memory* %MEMORY.4)
  %92 = load i64, i64* %RBP, align 8
  %93 = add i64 %92, -36
  %94 = load i64, i64* %PC, align 8
  %95 = add i64 %94, 3
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %93 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = add i32 %97, 1
  %99 = zext i32 %98 to i64
  store i64 %99, i64* %RDX, align 8, !tbaa !2428
  %100 = icmp eq i32 %97, -1
  %101 = icmp eq i32 %98, 0
  %102 = or i1 %100, %101
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %5, align 1, !tbaa !2432
  %104 = and i32 %98, 255
  %105 = tail call i32 @llvm.ctpop.i32(i32 %104) #8
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  %108 = xor i8 %107, 1
  store i8 %108, i8* %6, align 1, !tbaa !2446
  %109 = xor i32 %97, %98
  %110 = lshr i32 %109, 4
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  store i8 %112, i8* %7, align 1, !tbaa !2447
  %113 = zext i1 %101 to i8
  store i8 %113, i8* %8, align 1, !tbaa !2448
  %114 = lshr i32 %98, 31
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %9, align 1, !tbaa !2449
  %116 = lshr i32 %97, 31
  %117 = xor i32 %114, %116
  %118 = add nuw nsw i32 %117, %114
  %119 = icmp eq i32 %118, 2
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %10, align 1, !tbaa !2450
  %121 = add i64 %94, 9
  store i64 %121, i64* %PC, align 8
  store i32 %98, i32* %96, align 4
  %122 = load i64, i64* %PC, align 8
  %123 = load i64, i64* %RBP, align 8
  %124 = add i64 %123, -36
  %125 = add i64 %122, -474
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %124 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = add i32 %127, -28
  %129 = icmp ult i32 %127, 28
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %5, align 1, !tbaa !2432
  %131 = and i32 %128, 255
  %132 = tail call i32 @llvm.ctpop.i32(i32 %131) #8
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  store i8 %135, i8* %6, align 1, !tbaa !2446
  %136 = xor i32 %127, 16
  %137 = xor i32 %136, %128
  %138 = lshr i32 %137, 4
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  store i8 %140, i8* %7, align 1, !tbaa !2447
  %141 = icmp eq i32 %128, 0
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %8, align 1, !tbaa !2448
  %143 = lshr i32 %128, 31
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* %9, align 1, !tbaa !2449
  %145 = lshr i32 %127, 31
  %146 = xor i32 %143, %145
  %147 = add nuw nsw i32 %146, %145
  %148 = icmp eq i32 %147, 2
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %10, align 1, !tbaa !2450
  %150 = icmp ne i8 %144, 0
  %151 = xor i1 %150, %148
  %.v33 = select i1 %151, i64 -468, i64 5
  %152 = add i64 %122, %.v33
  store i64 %152, i64* %PC, align 8, !tbaa !2428
  br i1 %151, label %block_4006be, label %block_400897

block_4007e9:                                     ; preds = %block_4007df
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %153 = add i64 %521, 14
  store i64 %153, i64* %PC, align 8
  %154 = load i32, i32* %498, align 4
  %155 = sext i32 %154 to i64
  %156 = mul nsw i64 %155, 11
  store i64 %156, i64* %RCX, align 8, !tbaa !2428
  %157 = lshr i64 %156, 63
  %158 = add i64 %156, ptrtoint (%maze_type* @maze to i64)
  store i64 %158, i64* %RAX, align 8, !tbaa !2428
  %159 = icmp ult i64 %158, ptrtoint (%maze_type* @maze to i64)
  %160 = icmp ult i64 %158, %156
  %161 = or i1 %159, %160
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %5, align 1, !tbaa !2432
  %163 = trunc i64 %158 to i32
  %164 = and i32 %163, 255
  %165 = tail call i32 @llvm.ctpop.i32(i32 %164) #8
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = xor i8 %167, 1
  store i8 %168, i8* %6, align 1, !tbaa !2446
  %169 = xor i64 %156, ptrtoint (%maze_type* @maze to i64)
  %170 = xor i64 %169, %158
  %171 = lshr i64 %170, 4
  %172 = trunc i64 %171 to i8
  %173 = and i8 %172, 1
  store i8 %173, i8* %7, align 1, !tbaa !2447
  %174 = icmp eq i64 %158, 0
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %8, align 1, !tbaa !2448
  %176 = lshr i64 %158, 63
  %177 = trunc i64 %176 to i8
  store i8 %177, i8* %9, align 1, !tbaa !2449
  %178 = xor i64 %176, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %179 = xor i64 %176, %157
  %180 = add nuw nsw i64 %178, %179
  %181 = icmp eq i64 %180, 2
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %10, align 1, !tbaa !2450
  %183 = add i64 %495, -20
  %184 = add i64 %521, 25
  store i64 %184, i64* %PC, align 8
  %185 = inttoptr i64 %183 to i32*
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  store i64 %187, i64* %RCX, align 8, !tbaa !2428
  %188 = add i64 %187, %158
  %189 = add i64 %521, 29
  store i64 %189, i64* %PC, align 8
  %190 = inttoptr i64 %188 to i8*
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i64
  %193 = and i64 %192, 4294967295
  store i64 %193, i64* %RDX, align 8, !tbaa !2428
  %194 = sext i8 %191 to i32
  %195 = add nsw i32 %194, -124
  %196 = icmp ult i8 %191, 124
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %5, align 1, !tbaa !2432
  %198 = and i32 %195, 255
  %199 = tail call i32 @llvm.ctpop.i32(i32 %198) #8
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  %202 = xor i8 %201, 1
  store i8 %202, i8* %6, align 1, !tbaa !2446
  %203 = xor i32 %194, 16
  %204 = xor i32 %203, %195
  %205 = lshr i32 %204, 4
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  store i8 %207, i8* %7, align 1, !tbaa !2447
  %208 = icmp eq i32 %195, 0
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %8, align 1, !tbaa !2448
  %210 = lshr i32 %195, 31
  %211 = trunc i32 %210 to i8
  store i8 %211, i8* %9, align 1, !tbaa !2449
  %212 = lshr i32 %194, 31
  %213 = xor i32 %210, %212
  %214 = add nuw nsw i32 %213, %212
  %215 = icmp eq i32 %214, 2
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %10, align 1, !tbaa !2450
  %.v28 = select i1 %208, i64 38, i64 58
  %217 = add i64 %521, %.v28
  store i64 %217, i64* %PC, align 8, !tbaa !2428
  %.pre16 = load i64, i64* %RBP, align 8
  br i1 %208, label %block_40080f, label %block_400823

block_4006be:                                     ; preds = %block_400867
  %218 = add i64 %123, -20
  %219 = add i64 %152, 3
  store i64 %219, i64* %PC, align 8
  %220 = inttoptr i64 %218 to i32*
  %221 = load i32, i32* %220, align 4
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %RAX, align 8, !tbaa !2428
  %223 = add i64 %123, -28
  %224 = add i64 %152, 6
  store i64 %224, i64* %PC, align 8
  %225 = inttoptr i64 %223 to i32*
  store i32 %221, i32* %225, align 4
  %226 = load i64, i64* %RBP, align 8
  %227 = add i64 %226, -24
  %228 = load i64, i64* %PC, align 8
  %229 = add i64 %228, 3
  store i64 %229, i64* %PC, align 8
  %230 = inttoptr i64 %227 to i32*
  %231 = load i32, i32* %230, align 4
  %232 = zext i32 %231 to i64
  store i64 %232, i64* %RAX, align 8, !tbaa !2428
  %233 = add i64 %226, -32
  %234 = add i64 %228, 6
  store i64 %234, i64* %PC, align 8
  %235 = inttoptr i64 %233 to i32*
  store i32 %231, i32* %235, align 4
  %236 = load i64, i64* %RBP, align 8
  %237 = add i64 %236, -36
  %238 = load i64, i64* %PC, align 8
  %239 = add i64 %238, 4
  store i64 %239, i64* %PC, align 8
  %240 = inttoptr i64 %237 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  store i64 %242, i64* %RCX, align 8, !tbaa !2428
  %243 = add i64 %236, -64
  %244 = add i64 %243, %242
  %245 = add i64 %238, 9
  store i64 %245, i64* %PC, align 8
  %246 = inttoptr i64 %244 to i8*
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = add nsw i32 %248, -97
  %250 = zext i32 %249 to i64
  %251 = lshr i32 %249, 31
  store i64 %250, i64* %RCX, align 8, !tbaa !2428
  %252 = add nsw i32 %248, -119
  %253 = zext i32 %252 to i64
  store i64 %253, i64* %RAX, align 8, !tbaa !2428
  %254 = icmp ult i32 %249, 22
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %5, align 1, !tbaa !2432
  %256 = and i32 %252, 255
  %257 = tail call i32 @llvm.ctpop.i32(i32 %256) #8
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = xor i8 %259, 1
  store i8 %260, i8* %6, align 1, !tbaa !2446
  %261 = xor i32 %249, 16
  %262 = xor i32 %261, %252
  %263 = lshr i32 %262, 4
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  store i8 %265, i8* %7, align 1, !tbaa !2447
  %266 = icmp eq i32 %252, 0
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %8, align 1, !tbaa !2448
  %268 = lshr i32 %252, 31
  %269 = trunc i32 %268 to i8
  store i8 %269, i8* %9, align 1, !tbaa !2449
  %270 = xor i32 %268, %251
  %271 = add nuw nsw i32 %270, %251
  %272 = icmp eq i32 %271, 2
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %10, align 1, !tbaa !2450
  %274 = add i64 %236, -80
  %275 = add i64 %238, 21
  store i64 %275, i64* %PC, align 8
  %276 = inttoptr i64 %274 to i64*
  store i64 %250, i64* %276, align 8
  %277 = load i64, i64* %RBP, align 8
  %278 = add i64 %277, -84
  %279 = load i32, i32* %EAX, align 4
  %280 = load i64, i64* %PC, align 8
  %281 = add i64 %280, 3
  store i64 %281, i64* %PC, align 8
  %282 = inttoptr i64 %278 to i32*
  store i32 %279, i32* %282, align 4
  %283 = load i64, i64* %PC, align 8
  %284 = load i8, i8* %5, align 1, !tbaa !2432
  %285 = load i8, i8* %8, align 1, !tbaa !2448
  %286 = or i8 %285, %284
  %287 = icmp eq i8 %286, 0
  %.v34 = select i1 %287, i64 76, i64 6
  %288 = add i64 %283, %.v34
  store i64 %288, i64* %PC, align 8, !tbaa !2428
  br i1 %287, label %block_40072e, label %block_4006e8

block_4007b9:                                     ; preds = %block_400760
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %289 = load i64, i64* %RBP, align 8
  %290 = add i64 %289, -24
  %291 = add i64 %719, 14
  store i64 %291, i64* %PC, align 8
  %292 = inttoptr i64 %290 to i32*
  %293 = load i32, i32* %292, align 4
  %294 = sext i32 %293 to i64
  %295 = mul nsw i64 %294, 11
  store i64 %295, i64* %RCX, align 8, !tbaa !2428
  %296 = lshr i64 %295, 63
  %297 = add i64 %295, ptrtoint (%maze_type* @maze to i64)
  store i64 %297, i64* %RAX, align 8, !tbaa !2428
  %298 = icmp ult i64 %297, ptrtoint (%maze_type* @maze to i64)
  %299 = icmp ult i64 %297, %295
  %300 = or i1 %298, %299
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %5, align 1, !tbaa !2432
  %302 = trunc i64 %297 to i32
  %303 = and i32 %302, 255
  %304 = tail call i32 @llvm.ctpop.i32(i32 %303) #8
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  %307 = xor i8 %306, 1
  store i8 %307, i8* %6, align 1, !tbaa !2446
  %308 = xor i64 %295, ptrtoint (%maze_type* @maze to i64)
  %309 = xor i64 %308, %297
  %310 = lshr i64 %309, 4
  %311 = trunc i64 %310 to i8
  %312 = and i8 %311, 1
  store i8 %312, i8* %7, align 1, !tbaa !2447
  %313 = icmp eq i64 %297, 0
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %8, align 1, !tbaa !2448
  %315 = lshr i64 %297, 63
  %316 = trunc i64 %315 to i8
  store i8 %316, i8* %9, align 1, !tbaa !2449
  %317 = xor i64 %315, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %318 = xor i64 %315, %296
  %319 = add nuw nsw i64 %317, %318
  %320 = icmp eq i64 %319, 2
  %321 = zext i1 %320 to i8
  store i8 %321, i8* %10, align 1, !tbaa !2450
  %322 = add i64 %289, -20
  %323 = add i64 %719, 25
  store i64 %323, i64* %PC, align 8
  %324 = inttoptr i64 %322 to i32*
  %325 = load i32, i32* %324, align 4
  %326 = sext i32 %325 to i64
  store i64 %326, i64* %RCX, align 8, !tbaa !2428
  %327 = add i64 %326, %297
  %328 = add i64 %719, 29
  store i64 %328, i64* %PC, align 8
  %329 = inttoptr i64 %327 to i8*
  %330 = load i8, i8* %329, align 1
  %331 = sext i8 %330 to i64
  %332 = and i64 %331, 4294967295
  store i64 %332, i64* %RDX, align 8, !tbaa !2428
  %333 = sext i8 %330 to i32
  %334 = add nsw i32 %333, -32
  %335 = icmp ult i8 %330, 32
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %5, align 1, !tbaa !2432
  %337 = and i32 %334, 255
  %338 = tail call i32 @llvm.ctpop.i32(i32 %337) #8
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  %341 = xor i8 %340, 1
  store i8 %341, i8* %6, align 1, !tbaa !2446
  %342 = xor i32 %333, %334
  %343 = lshr i32 %342, 4
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  store i8 %345, i8* %7, align 1, !tbaa !2447
  %346 = icmp eq i32 %334, 0
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %8, align 1, !tbaa !2448
  %348 = lshr i32 %334, 31
  %349 = trunc i32 %348 to i8
  store i8 %349, i8* %9, align 1, !tbaa !2449
  %350 = lshr i32 %333, 31
  %351 = xor i32 %348, %350
  %352 = add nuw nsw i32 %351, %350
  %353 = icmp eq i32 %352, 2
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %10, align 1, !tbaa !2450
  %.v26 = select i1 %346, i64 118, i64 38
  %355 = add i64 %719, %.v26
  store i64 %355, i64* %PC, align 8, !tbaa !2428
  br i1 %346, label %block_40082f, label %block_4007df

block_4008b2:                                     ; preds = %block_400897, %block_400847
  %356 = phi i64 [ %.pre18, %block_400897 ], [ %468, %block_400847 ]
  %MEMORY.1 = phi %struct.Memory* [ %561, %block_400897 ], [ %455, %block_400847 ]
  %357 = load i64, i64* %RBP, align 8
  %358 = add i64 %357, -4
  %359 = add i64 %356, 3
  store i64 %359, i64* %PC, align 8
  %360 = inttoptr i64 %358 to i32*
  %361 = load i32, i32* %360, align 4
  %362 = zext i32 %361 to i64
  store i64 %362, i64* %RAX, align 8, !tbaa !2428
  %363 = load i64, i64* %RSP, align 8
  %364 = add i64 %363, 112
  store i64 %364, i64* %RSP, align 8, !tbaa !2428
  %365 = icmp ugt i64 %363, -113
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %5, align 1, !tbaa !2432
  %367 = trunc i64 %364 to i32
  %368 = and i32 %367, 255
  %369 = tail call i32 @llvm.ctpop.i32(i32 %368) #8
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  %372 = xor i8 %371, 1
  store i8 %372, i8* %6, align 1, !tbaa !2446
  %373 = xor i64 %363, 16
  %374 = xor i64 %373, %364
  %375 = lshr i64 %374, 4
  %376 = trunc i64 %375 to i8
  %377 = and i8 %376, 1
  store i8 %377, i8* %7, align 1, !tbaa !2447
  %378 = icmp eq i64 %364, 0
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %8, align 1, !tbaa !2448
  %380 = lshr i64 %364, 63
  %381 = trunc i64 %380 to i8
  store i8 %381, i8* %9, align 1, !tbaa !2449
  %382 = lshr i64 %363, 63
  %383 = xor i64 %380, %382
  %384 = add nuw nsw i64 %383, %380
  %385 = icmp eq i64 %384, 2
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %10, align 1, !tbaa !2450
  %387 = add i64 %356, 8
  store i64 %387, i64* %PC, align 8
  %388 = add i64 %363, 120
  %389 = inttoptr i64 %364 to i64*
  %390 = load i64, i64* %389, align 8
  store i64 %390, i64* %RBP, align 8, !tbaa !2428
  store i64 %388, i64* %RSP, align 8, !tbaa !2428
  %391 = add i64 %356, 9
  store i64 %391, i64* %PC, align 8
  %392 = inttoptr i64 %388 to i64*
  %393 = load i64, i64* %392, align 8
  store i64 %393, i64* %PC, align 8, !tbaa !2428
  %394 = add i64 %363, 128
  store i64 %394, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_40072e:                                     ; preds = %block_4006be, %block_4006e8
  %395 = phi i64 [ %288, %block_4006be ], [ 4196142, %block_4006e8 ]
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 195), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %396 = add i64 %395, -686
  %397 = add i64 %395, 17
  %398 = load i64, i64* %RSP, align 8, !tbaa !2428
  %399 = add i64 %398, -8
  %400 = inttoptr i64 %399 to i64*
  store i64 %397, i64* %400, align 8
  store i64 %399, i64* %RSP, align 8, !tbaa !2428
  store i64 %396, i64* %PC, align 8, !tbaa !2428
  %401 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %91)
  %402 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 235), i64* %RDI, align 8, !tbaa !2428
  %403 = load i64, i64* %RBP, align 8
  %404 = add i64 %403, -88
  %405 = load i32, i32* %EAX, align 4
  %406 = add i64 %402, 13
  store i64 %406, i64* %PC, align 8
  %407 = inttoptr i64 %404 to i32*
  store i32 %405, i32* %407, align 4
  %408 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %409 = add i64 %408, -716
  %410 = add i64 %408, 7
  %411 = load i64, i64* %RSP, align 8, !tbaa !2428
  %412 = add i64 %411, -8
  %413 = inttoptr i64 %412 to i64*
  store i64 %410, i64* %413, align 8
  store i64 %412, i64* %RSP, align 8, !tbaa !2428
  store i64 %409, i64* %PC, align 8, !tbaa !2428
  %414 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %401)
  %415 = load i64, i64* %PC, align 8
  store i64 4294967295, i64* %RDI, align 8, !tbaa !2428
  %416 = load i64, i64* %RBP, align 8
  %417 = add i64 %416, -92
  %418 = load i32, i32* %EAX, align 4
  %419 = add i64 %415, 8
  store i64 %419, i64* %PC, align 8
  %420 = inttoptr i64 %417 to i32*
  store i32 %418, i32* %420, align 4
  %421 = load i64, i64* %PC, align 8
  %422 = add i64 %421, -699
  %423 = add i64 %421, 5
  %424 = load i64, i64* %RSP, align 8, !tbaa !2428
  %425 = add i64 %424, -8
  %426 = inttoptr i64 %425 to i64*
  store i64 %423, i64* %426, align 8
  store i64 %425, i64* %RSP, align 8, !tbaa !2428
  store i64 %422, i64* %PC, align 8, !tbaa !2428
  %427 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %414)
  %428 = load i64, i64* %PC, align 8
  %429 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %428, %struct.Memory* %427)
  ret %struct.Memory* %429

block_400823:                                     ; preds = %block_4007e9, %block_4007df, %block_40080f, %block_400819
  %430 = phi i64 [ %615, %block_40080f ], [ %521, %block_4007df ], [ %494, %block_400819 ], [ %217, %block_4007e9 ]
  %431 = phi i64 [ %.pre16, %block_40080f ], [ %495, %block_4007df ], [ %.pre16, %block_400819 ], [ %.pre16, %block_4007e9 ]
  %432 = add i64 %431, -28
  %433 = add i64 %430, 3
  store i64 %433, i64* %PC, align 8
  %434 = inttoptr i64 %432 to i32*
  %435 = load i32, i32* %434, align 4
  %436 = zext i32 %435 to i64
  store i64 %436, i64* %RAX, align 8, !tbaa !2428
  %437 = add i64 %431, -20
  %438 = add i64 %430, 6
  store i64 %438, i64* %PC, align 8
  %439 = inttoptr i64 %437 to i32*
  store i32 %435, i32* %439, align 4
  %440 = load i64, i64* %RBP, align 8
  %441 = add i64 %440, -32
  %442 = load i64, i64* %PC, align 8
  %443 = add i64 %442, 3
  store i64 %443, i64* %PC, align 8
  %444 = inttoptr i64 %441 to i32*
  %445 = load i32, i32* %444, align 4
  %446 = zext i32 %445 to i64
  store i64 %446, i64* %RAX, align 8, !tbaa !2428
  %447 = add i64 %440, -24
  %448 = add i64 %442, 6
  store i64 %448, i64* %PC, align 8
  %449 = inttoptr i64 %447 to i32*
  store i32 %445, i32* %449, align 4
  %.pre17 = load i64, i64* %PC, align 8
  br label %block_40082f

block_400847:                                     ; preds = %block_40083b
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %450 = add i64 %555, -967
  %451 = add i64 %555, 17
  %452 = load i64, i64* %RSP, align 8, !tbaa !2428
  %453 = add i64 %452, -8
  %454 = inttoptr i64 %453 to i64*
  store i64 %451, i64* %454, align 8
  store i64 %453, i64* %RSP, align 8, !tbaa !2428
  store i64 %450, i64* %PC, align 8, !tbaa !2428
  %455 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.4)
  %456 = load i64, i64* %RBP, align 8
  %457 = add i64 %456, -4
  %458 = load i64, i64* %PC, align 8
  %459 = add i64 %458, 7
  store i64 %459, i64* %PC, align 8
  %460 = inttoptr i64 %457 to i32*
  store i32 2, i32* %460, align 4
  %461 = load i64, i64* %RBP, align 8
  %462 = add i64 %461, -104
  %463 = load i32, i32* %EAX, align 4
  %464 = load i64, i64* %PC, align 8
  %465 = add i64 %464, 3
  store i64 %465, i64* %PC, align 8
  %466 = inttoptr i64 %462 to i32*
  store i32 %463, i32* %466, align 4
  %467 = load i64, i64* %PC, align 8
  %468 = add i64 %467, 80
  store i64 %468, i64* %PC, align 8, !tbaa !2428
  br label %block_4008b2

block_400819:                                     ; preds = %block_40080f
  %469 = add i64 %615, 4
  store i64 %469, i64* %PC, align 8
  %470 = load i32, i32* %602, align 4
  %471 = add i32 %470, -11
  %472 = icmp ult i32 %470, 11
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %5, align 1, !tbaa !2432
  %474 = and i32 %471, 255
  %475 = tail call i32 @llvm.ctpop.i32(i32 %474) #8
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  %478 = xor i8 %477, 1
  store i8 %478, i8* %6, align 1, !tbaa !2446
  %479 = xor i32 %470, %471
  %480 = lshr i32 %479, 4
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  store i8 %482, i8* %7, align 1, !tbaa !2447
  %483 = icmp eq i32 %471, 0
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %8, align 1, !tbaa !2448
  %485 = lshr i32 %471, 31
  %486 = trunc i32 %485 to i8
  store i8 %486, i8* %9, align 1, !tbaa !2449
  %487 = lshr i32 %470, 31
  %488 = xor i32 %485, %487
  %489 = add nuw nsw i32 %488, %487
  %490 = icmp eq i32 %489, 2
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %10, align 1, !tbaa !2450
  %492 = icmp ne i8 %486, 0
  %493 = xor i1 %492, %490
  %.v30 = select i1 %493, i64 22, i64 10
  %494 = add i64 %615, %.v30
  store i64 %494, i64* %PC, align 8, !tbaa !2428
  br i1 %493, label %block_40082f, label %block_400823

block_4007df:                                     ; preds = %block_4007b9
  %495 = load i64, i64* %RBP, align 8
  %496 = add i64 %495, -24
  %497 = add i64 %355, 4
  store i64 %497, i64* %PC, align 8
  %498 = inttoptr i64 %496 to i32*
  %499 = load i32, i32* %498, align 4
  %500 = add i32 %499, -2
  %501 = icmp ult i32 %499, 2
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %5, align 1, !tbaa !2432
  %503 = and i32 %500, 255
  %504 = tail call i32 @llvm.ctpop.i32(i32 %503) #8
  %505 = trunc i32 %504 to i8
  %506 = and i8 %505, 1
  %507 = xor i8 %506, 1
  store i8 %507, i8* %6, align 1, !tbaa !2446
  %508 = xor i32 %499, %500
  %509 = lshr i32 %508, 4
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  store i8 %511, i8* %7, align 1, !tbaa !2447
  %512 = icmp eq i32 %500, 0
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %8, align 1, !tbaa !2448
  %514 = lshr i32 %500, 31
  %515 = trunc i32 %514 to i8
  store i8 %515, i8* %9, align 1, !tbaa !2449
  %516 = lshr i32 %499, 31
  %517 = xor i32 %514, %516
  %518 = add nuw nsw i32 %517, %516
  %519 = icmp eq i32 %518, 2
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %10, align 1, !tbaa !2450
  %.v27 = select i1 %512, i64 10, i64 68
  %521 = add i64 %355, %.v27
  store i64 %521, i64* %PC, align 8, !tbaa !2428
  br i1 %512, label %block_4007e9, label %block_400823

block_40083b:                                     ; preds = %block_40082f
  %522 = add i64 %722, -32
  %523 = add i64 %756, 3
  store i64 %523, i64* %PC, align 8
  %524 = inttoptr i64 %522 to i32*
  %525 = load i32, i32* %524, align 4
  %526 = zext i32 %525 to i64
  store i64 %526, i64* %RAX, align 8, !tbaa !2428
  %527 = add i64 %722, -24
  %528 = add i64 %756, 6
  store i64 %528, i64* %PC, align 8
  %529 = inttoptr i64 %527 to i32*
  %530 = load i32, i32* %529, align 4
  %531 = sub i32 %525, %530
  %532 = icmp ult i32 %525, %530
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %5, align 1, !tbaa !2432
  %534 = and i32 %531, 255
  %535 = tail call i32 @llvm.ctpop.i32(i32 %534) #8
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  %538 = xor i8 %537, 1
  store i8 %538, i8* %6, align 1, !tbaa !2446
  %539 = xor i32 %530, %525
  %540 = xor i32 %539, %531
  %541 = lshr i32 %540, 4
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  store i8 %543, i8* %7, align 1, !tbaa !2447
  %544 = icmp eq i32 %531, 0
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %8, align 1, !tbaa !2448
  %546 = lshr i32 %531, 31
  %547 = trunc i32 %546 to i8
  store i8 %547, i8* %9, align 1, !tbaa !2449
  %548 = lshr i32 %525, 31
  %549 = lshr i32 %530, 31
  %550 = xor i32 %549, %548
  %551 = xor i32 %546, %548
  %552 = add nuw nsw i32 %551, %550
  %553 = icmp eq i32 %552, 2
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %10, align 1, !tbaa !2450
  %.v32 = select i1 %544, i64 12, i64 44
  %555 = add i64 %756, %.v32
  store i64 %555, i64* %PC, align 8, !tbaa !2428
  br i1 %544, label %block_400847, label %block_400867

block_400897:                                     ; preds = %block_400867
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %556 = add i64 %152, -1047
  %557 = add i64 %152, 17
  %558 = load i64, i64* %RSP, align 8, !tbaa !2428
  %559 = add i64 %558, -8
  %560 = inttoptr i64 %559 to i64*
  store i64 %557, i64* %560, align 8
  store i64 %559, i64* %RSP, align 8, !tbaa !2428
  store i64 %556, i64* %PC, align 8, !tbaa !2428
  %561 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %91)
  %562 = load i64, i64* %RBP, align 8
  %563 = add i64 %562, -4
  %564 = load i64, i64* %PC, align 8
  %565 = add i64 %564, 7
  store i64 %565, i64* %PC, align 8
  %566 = inttoptr i64 %563 to i32*
  store i32 1, i32* %566, align 4
  %567 = load i64, i64* %RBP, align 8
  %568 = add i64 %567, -108
  %569 = load i32, i32* %EAX, align 4
  %570 = load i64, i64* %PC, align 8
  %571 = add i64 %570, 3
  store i64 %571, i64* %PC, align 8
  %572 = inttoptr i64 %568 to i32*
  store i32 %569, i32* %572, align 4
  %.pre18 = load i64, i64* %PC, align 8
  br label %block_4008b2

block_400712:                                     ; preds = %block_4006e8
  %573 = add i64 %38, -20
  store i64 4196117, i64* %PC, align 8
  %574 = inttoptr i64 %573 to i32*
  %575 = load i32, i32* %574, align 4
  %576 = add i32 %575, -1
  %577 = zext i32 %576 to i64
  store i64 %577, i64* %RAX, align 8, !tbaa !2428
  %578 = icmp ne i32 %575, 0
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %5, align 1, !tbaa !2432
  %580 = and i32 %576, 255
  %581 = tail call i32 @llvm.ctpop.i32(i32 %580) #8
  %582 = trunc i32 %581 to i8
  %583 = and i8 %582, 1
  %584 = xor i8 %583, 1
  store i8 %584, i8* %6, align 1, !tbaa !2446
  %585 = xor i32 %575, 16
  %586 = xor i32 %576, %585
  %587 = lshr i32 %586, 4
  %588 = trunc i32 %587 to i8
  %589 = and i8 %588, 1
  store i8 %589, i8* %7, align 1, !tbaa !2447
  %590 = icmp eq i32 %576, 0
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %8, align 1, !tbaa !2448
  %592 = lshr i32 %576, 31
  %593 = trunc i32 %592 to i8
  store i8 %593, i8* %9, align 1, !tbaa !2449
  %594 = lshr i32 %575, 31
  %595 = xor i32 %592, %594
  %596 = xor i32 %592, 1
  %597 = add nuw nsw i32 %595, %596
  %598 = icmp eq i32 %597, 2
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %10, align 1, !tbaa !2450
  store i64 4196123, i64* %PC, align 8
  store i32 %576, i32* %574, align 4
  br label %block_400760

block_40080f:                                     ; preds = %block_4007e9
  %600 = add i64 %.pre16, -20
  %601 = add i64 %217, 4
  store i64 %601, i64* %PC, align 8
  %602 = inttoptr i64 %600 to i32*
  %603 = load i32, i32* %602, align 4
  store i8 0, i8* %5, align 1, !tbaa !2432
  %604 = and i32 %603, 255
  %605 = tail call i32 @llvm.ctpop.i32(i32 %604) #8
  %606 = trunc i32 %605 to i8
  %607 = and i8 %606, 1
  %608 = xor i8 %607, 1
  store i8 %608, i8* %6, align 1, !tbaa !2446
  store i8 0, i8* %7, align 1, !tbaa !2447
  %609 = icmp eq i32 %603, 0
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %8, align 1, !tbaa !2448
  %611 = lshr i32 %603, 31
  %612 = trunc i32 %611 to i8
  store i8 %612, i8* %9, align 1, !tbaa !2449
  store i8 0, i8* %10, align 1, !tbaa !2450
  %613 = icmp ne i8 %612, 0
  %614 = or i1 %609, %613
  %.v29 = select i1 %614, i64 20, i64 10
  %615 = add i64 %217, %.v29
  store i64 %615, i64* %PC, align 8, !tbaa !2428
  br i1 %614, label %block_400823, label %block_400819

block_400786:                                     ; preds = %block_400760
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %616 = add i64 %719, -774
  %617 = add i64 %719, 17
  %618 = load i64, i64* %RSP, align 8, !tbaa !2428
  %619 = add i64 %618, -8
  %620 = inttoptr i64 %619 to i64*
  store i64 %617, i64* %620, align 8
  store i64 %619, i64* %RSP, align 8, !tbaa !2428
  store i64 %616, i64* %PC, align 8, !tbaa !2428
  %621 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.4)
  %622 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2428
  %623 = load i64, i64* %RBP, align 8
  %624 = add i64 %623, -64
  store i64 %624, i64* %RSI, align 8, !tbaa !2428
  %625 = add i64 %623, -96
  %626 = load i32, i32* %EAX, align 4
  %627 = add i64 %622, 17
  store i64 %627, i64* %PC, align 8
  %628 = inttoptr i64 %625 to i32*
  store i32 %626, i32* %628, align 4
  %629 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %630 = add i64 %629, -808
  %631 = add i64 %629, 7
  %632 = load i64, i64* %RSP, align 8, !tbaa !2428
  %633 = add i64 %632, -8
  %634 = inttoptr i64 %633 to i64*
  store i64 %631, i64* %634, align 8
  store i64 %633, i64* %RSP, align 8, !tbaa !2428
  store i64 %630, i64* %PC, align 8, !tbaa !2428
  %635 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %621)
  %636 = load i64, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %5, align 1, !tbaa !2432
  store i8 1, i8* %6, align 1, !tbaa !2446
  store i8 1, i8* %8, align 1, !tbaa !2448
  store i8 0, i8* %9, align 1, !tbaa !2449
  store i8 0, i8* %10, align 1, !tbaa !2450
  store i8 0, i8* %7, align 1, !tbaa !2447
  %637 = load i64, i64* %RBP, align 8
  %638 = add i64 %637, -100
  %639 = load i32, i32* %EAX, align 4
  %640 = add i64 %636, 5
  store i64 %640, i64* %PC, align 8
  %641 = inttoptr i64 %638 to i32*
  store i32 %639, i32* %641, align 4
  %642 = load i64, i64* %PC, align 8
  %643 = add i64 %642, -788
  %644 = add i64 %642, 5
  %645 = load i64, i64* %RSP, align 8, !tbaa !2428
  %646 = add i64 %645, -8
  %647 = inttoptr i64 %646 to i64*
  store i64 %644, i64* %647, align 8
  store i64 %646, i64* %RSP, align 8, !tbaa !2428
  store i64 %643, i64* %PC, align 8, !tbaa !2428
  %648 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %635)
  %649 = load i64, i64* %PC, align 8
  %650 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %649, %struct.Memory* %648)
  ret %struct.Memory* %650

block_400760:                                     ; preds = %block_400712, %block_4006f6, %block_400704
  %.sink25 = phi i64 [ 69, %block_400712 ], [ 97, %block_4006f6 ], [ 83, %block_400704 ]
  %MEMORY.4 = phi %struct.Memory* [ %91, %block_400712 ], [ %91, %block_4006f6 ], [ %MEMORY.6, %block_400704 ]
  %651 = load i64, i64* %PC, align 8
  %652 = add i64 %651, %.sink25
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %653 = load i64, i64* %RBP, align 8
  %654 = add i64 %653, -24
  %655 = add i64 %652, 14
  store i64 %655, i64* %PC, align 8
  %656 = inttoptr i64 %654 to i32*
  %657 = load i32, i32* %656, align 4
  %658 = sext i32 %657 to i64
  %659 = mul nsw i64 %658, 11
  store i64 %659, i64* %RCX, align 8, !tbaa !2428
  %660 = lshr i64 %659, 63
  %661 = add i64 %659, ptrtoint (%maze_type* @maze to i64)
  store i64 %661, i64* %RAX, align 8, !tbaa !2428
  %662 = icmp ult i64 %661, ptrtoint (%maze_type* @maze to i64)
  %663 = icmp ult i64 %661, %659
  %664 = or i1 %662, %663
  %665 = zext i1 %664 to i8
  store i8 %665, i8* %5, align 1, !tbaa !2432
  %666 = trunc i64 %661 to i32
  %667 = and i32 %666, 255
  %668 = tail call i32 @llvm.ctpop.i32(i32 %667) #8
  %669 = trunc i32 %668 to i8
  %670 = and i8 %669, 1
  %671 = xor i8 %670, 1
  store i8 %671, i8* %6, align 1, !tbaa !2446
  %672 = xor i64 %659, ptrtoint (%maze_type* @maze to i64)
  %673 = xor i64 %672, %661
  %674 = lshr i64 %673, 4
  %675 = trunc i64 %674 to i8
  %676 = and i8 %675, 1
  store i8 %676, i8* %7, align 1, !tbaa !2447
  %677 = icmp eq i64 %661, 0
  %678 = zext i1 %677 to i8
  store i8 %678, i8* %8, align 1, !tbaa !2448
  %679 = lshr i64 %661, 63
  %680 = trunc i64 %679 to i8
  store i8 %680, i8* %9, align 1, !tbaa !2449
  %681 = xor i64 %679, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %682 = xor i64 %679, %660
  %683 = add nuw nsw i64 %681, %682
  %684 = icmp eq i64 %683, 2
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %10, align 1, !tbaa !2450
  %686 = add i64 %653, -20
  %687 = add i64 %652, 25
  store i64 %687, i64* %PC, align 8
  %688 = inttoptr i64 %686 to i32*
  %689 = load i32, i32* %688, align 4
  %690 = sext i32 %689 to i64
  store i64 %690, i64* %RCX, align 8, !tbaa !2428
  %691 = add i64 %690, %661
  %692 = add i64 %652, 29
  store i64 %692, i64* %PC, align 8
  %693 = inttoptr i64 %691 to i8*
  %694 = load i8, i8* %693, align 1
  %695 = sext i8 %694 to i64
  %696 = and i64 %695, 4294967295
  store i64 %696, i64* %RDX, align 8, !tbaa !2428
  %697 = sext i8 %694 to i32
  %698 = add nsw i32 %697, -35
  %699 = icmp ult i8 %694, 35
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %5, align 1, !tbaa !2432
  %701 = and i32 %698, 255
  %702 = tail call i32 @llvm.ctpop.i32(i32 %701) #8
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  %705 = xor i8 %704, 1
  store i8 %705, i8* %6, align 1, !tbaa !2446
  %706 = xor i32 %697, %698
  %707 = lshr i32 %706, 4
  %708 = trunc i32 %707 to i8
  %709 = and i8 %708, 1
  store i8 %709, i8* %7, align 1, !tbaa !2447
  %710 = icmp eq i32 %698, 0
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %8, align 1, !tbaa !2448
  %712 = lshr i32 %698, 31
  %713 = trunc i32 %712 to i8
  store i8 %713, i8* %9, align 1, !tbaa !2449
  %714 = lshr i32 %697, 31
  %715 = xor i32 %712, %714
  %716 = add nuw nsw i32 %715, %714
  %717 = icmp eq i32 %716, 2
  %718 = zext i1 %717 to i8
  store i8 %718, i8* %10, align 1, !tbaa !2450
  %.v = select i1 %710, i64 38, i64 89
  %719 = add i64 %652, %.v
  %720 = add i64 %719, 10
  store i64 %720, i64* %PC, align 8
  br i1 %710, label %block_400786, label %block_4007b9

block_40082f:                                     ; preds = %block_400819, %block_400823, %block_4007b9
  %721 = phi i64 [ %494, %block_400819 ], [ %.pre17, %block_400823 ], [ %355, %block_4007b9 ]
  %722 = load i64, i64* %RBP, align 8
  %723 = add i64 %722, -28
  %724 = add i64 %721, 3
  store i64 %724, i64* %PC, align 8
  %725 = inttoptr i64 %723 to i32*
  %726 = load i32, i32* %725, align 4
  %727 = zext i32 %726 to i64
  store i64 %727, i64* %RAX, align 8, !tbaa !2428
  %728 = add i64 %722, -20
  %729 = add i64 %721, 6
  store i64 %729, i64* %PC, align 8
  %730 = inttoptr i64 %728 to i32*
  %731 = load i32, i32* %730, align 4
  %732 = sub i32 %726, %731
  %733 = icmp ult i32 %726, %731
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %5, align 1, !tbaa !2432
  %735 = and i32 %732, 255
  %736 = tail call i32 @llvm.ctpop.i32(i32 %735) #8
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  %739 = xor i8 %738, 1
  store i8 %739, i8* %6, align 1, !tbaa !2446
  %740 = xor i32 %731, %726
  %741 = xor i32 %740, %732
  %742 = lshr i32 %741, 4
  %743 = trunc i32 %742 to i8
  %744 = and i8 %743, 1
  store i8 %744, i8* %7, align 1, !tbaa !2447
  %745 = icmp eq i32 %732, 0
  %746 = zext i1 %745 to i8
  store i8 %746, i8* %8, align 1, !tbaa !2448
  %747 = lshr i32 %732, 31
  %748 = trunc i32 %747 to i8
  store i8 %748, i8* %9, align 1, !tbaa !2449
  %749 = lshr i32 %726, 31
  %750 = lshr i32 %731, 31
  %751 = xor i32 %750, %749
  %752 = xor i32 %747, %749
  %753 = add nuw nsw i32 %752, %751
  %754 = icmp eq i32 %753, 2
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %10, align 1, !tbaa !2450
  %.v31 = select i1 %745, i64 12, i64 56
  %756 = add i64 %721, %.v31
  store i64 %756, i64* %PC, align 8, !tbaa !2428
  br i1 %745, label %block_40083b, label %block_40082f.block_400867_crit_edge

block_40082f.block_400867_crit_edge:              ; preds = %block_40082f
  %.pre19 = add i64 %722, -24
  %.pre20 = inttoptr i64 %.pre19 to i32*
  br label %block_400867

block_400704:                                     ; preds = %block_4006e8, %3
  %757 = phi i64 [ %phitmp, %3 ], [ 4196103, %block_4006e8 ]
  %758 = phi i64 [ %.pre, %3 ], [ %38, %block_4006e8 ]
  %MEMORY.6 = phi %struct.Memory* [ %2, %3 ], [ %91, %block_4006e8 ]
  %759 = add i64 %758, -24
  store i64 %757, i64* %PC, align 8
  %760 = inttoptr i64 %759 to i32*
  %761 = load i32, i32* %760, align 4
  %762 = add i32 %761, 1
  %763 = zext i32 %762 to i64
  store i64 %763, i64* %RAX, align 8, !tbaa !2428
  %764 = icmp eq i32 %761, -1
  %765 = icmp eq i32 %762, 0
  %766 = or i1 %764, %765
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %5, align 1, !tbaa !2432
  %768 = and i32 %762, 255
  %769 = tail call i32 @llvm.ctpop.i32(i32 %768) #8
  %770 = trunc i32 %769 to i8
  %771 = and i8 %770, 1
  %772 = xor i8 %771, 1
  store i8 %772, i8* %6, align 1, !tbaa !2446
  %773 = xor i32 %761, %762
  %774 = lshr i32 %773, 4
  %775 = trunc i32 %774 to i8
  %776 = and i8 %775, 1
  store i8 %776, i8* %7, align 1, !tbaa !2447
  %777 = zext i1 %765 to i8
  store i8 %777, i8* %8, align 1, !tbaa !2448
  %778 = lshr i32 %762, 31
  %779 = trunc i32 %778 to i8
  store i8 %779, i8* %9, align 1, !tbaa !2449
  %780 = lshr i32 %761, 31
  %781 = xor i32 %778, %780
  %782 = add nuw nsw i32 %781, %778
  %783 = icmp eq i32 %782, 2
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %10, align 1, !tbaa !2450
  %785 = add i64 %757, 6
  store i64 %785, i64* %PC, align 8
  store i32 %762, i32* %760, align 4
  br label %block_400760

block_400720:                                     ; preds = %block_4006e8
  %786 = tail call %struct.Memory* @sub_400720(%struct.State* nonnull %0, i64 4196128, %struct.Memory* %91)
  ret %struct.Memory* %786

; <label>:787:                                    ; preds = %block_4006e8
  %788 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %47, %struct.Memory* %91)
  ret %struct.Memory* %788
}

; Function Attrs: noinline
define %struct.Memory* @sub_400590_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400590:
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
  %13 = tail call %struct.Memory* @sub_400520_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline
define %struct.Memory* @sub_400720(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %4 to i8*
  %EAX = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %RBP, align 8
  %phitmp = add i64 %1, 3
  br label %block_400720

block_4006f6:                                     ; preds = %block_4006e8
  %11 = add i64 %38, -24
  store i64 4196089, i64* %PC, align 8
  %12 = inttoptr i64 %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, -1
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8, !tbaa !2428
  %16 = icmp ne i32 %13, 0
  %17 = zext i1 %16 to i8
  store i8 %17, i8* %5, align 1, !tbaa !2432
  %18 = and i32 %14, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #8
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  store i8 %22, i8* %6, align 1, !tbaa !2446
  %23 = xor i32 %13, 16
  %24 = xor i32 %14, %23
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %7, align 1, !tbaa !2447
  %28 = icmp eq i32 %14, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %8, align 1, !tbaa !2448
  %30 = lshr i32 %14, 31
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %9, align 1, !tbaa !2449
  %32 = lshr i32 %13, 31
  %33 = xor i32 %30, %32
  %34 = xor i32 %30, 1
  %35 = add nuw nsw i32 %33, %34
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  store i8 %37, i8* %10, align 1, !tbaa !2450
  store i64 4196095, i64* %PC, align 8
  store i32 %14, i32* %12, align 4
  br label %block_400760

block_4006e8:                                     ; preds = %block_4006be
  %38 = load i64, i64* %RBP, align 8
  %39 = add i64 %38, -80
  %40 = add i64 %288, 4
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %39 to i64*
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %RAX, align 8, !tbaa !2428
  %43 = shl i64 %42, 3
  %44 = add i64 %43, add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 8)
  %45 = add i64 %288, 12
  store i64 %45, i64* %PC, align 8
  %46 = inttoptr i64 %44 to i64*
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %RCX, align 8, !tbaa !2428
  store i64 %47, i64* %PC, align 8, !tbaa !2428
  switch i64 %47, label %812 [
    i64 4196114, label %block_400712
    i64 4196128, label %block_400720
    i64 4196100, label %block_400704
    i64 4196142, label %block_40072e
    i64 4196086, label %block_4006f6
  ]

block_400867:                                     ; preds = %block_40083b, %block_40082f.block_400867_crit_edge
  %.pre-phi18 = phi i32* [ %.pre17, %block_40082f.block_400867_crit_edge ], [ %558, %block_40083b ]
  %48 = phi i64 [ %785, %block_40082f.block_400867_crit_edge ], [ %584, %block_40083b ]
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %49 = add i64 %48, 14
  store i64 %49, i64* %PC, align 8
  %50 = load i32, i32* %.pre-phi18, align 4
  %51 = sext i32 %50 to i64
  %52 = mul nsw i64 %51, 11
  store i64 %52, i64* %RCX, align 8, !tbaa !2428
  %53 = lshr i64 %52, 63
  %54 = add i64 %52, ptrtoint (%maze_type* @maze to i64)
  store i64 %54, i64* %RAX, align 8, !tbaa !2428
  %55 = icmp ult i64 %54, ptrtoint (%maze_type* @maze to i64)
  %56 = icmp ult i64 %54, %52
  %57 = or i1 %55, %56
  %58 = zext i1 %57 to i8
  store i8 %58, i8* %5, align 1, !tbaa !2432
  %59 = trunc i64 %54 to i32
  %60 = and i32 %59, 255
  %61 = tail call i32 @llvm.ctpop.i32(i32 %60) #8
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 1
  %64 = xor i8 %63, 1
  store i8 %64, i8* %6, align 1, !tbaa !2446
  %65 = xor i64 %52, ptrtoint (%maze_type* @maze to i64)
  %66 = xor i64 %65, %54
  %67 = lshr i64 %66, 4
  %68 = trunc i64 %67 to i8
  %69 = and i8 %68, 1
  store i8 %69, i8* %7, align 1, !tbaa !2447
  %70 = icmp eq i64 %54, 0
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %8, align 1, !tbaa !2448
  %72 = lshr i64 %54, 63
  %73 = trunc i64 %72 to i8
  store i8 %73, i8* %9, align 1, !tbaa !2449
  %74 = xor i64 %72, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %75 = xor i64 %72, %53
  %76 = add nuw nsw i64 %74, %75
  %77 = icmp eq i64 %76, 2
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %10, align 1, !tbaa !2450
  %79 = add i64 %48, 25
  store i64 %79, i64* %PC, align 8
  %80 = load i32, i32* %759, align 4
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %RCX, align 8, !tbaa !2428
  %82 = add i64 %81, %54
  %83 = add i64 %48, 29
  store i64 %83, i64* %PC, align 8
  %84 = inttoptr i64 %82 to i8*
  store i8 88, i8* %84, align 1
  %85 = load i64, i64* %PC, align 8
  %86 = add i64 %85, -740
  %87 = add i64 %85, 5
  %88 = load i64, i64* %RSP, align 8, !tbaa !2428
  %89 = add i64 %88, -8
  %90 = inttoptr i64 %89 to i64*
  store i64 %87, i64* %90, align 8
  store i64 %89, i64* %RSP, align 8, !tbaa !2428
  store i64 %86, i64* %PC, align 8, !tbaa !2428
  %91 = tail call %struct.Memory* @sub_4005a0_draw_renamed_(%struct.State* nonnull %0, i64 %86, %struct.Memory* %MEMORY.5)
  %92 = load i64, i64* %RBP, align 8
  %93 = add i64 %92, -36
  %94 = load i64, i64* %PC, align 8
  %95 = add i64 %94, 3
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %93 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = add i32 %97, 1
  %99 = zext i32 %98 to i64
  store i64 %99, i64* %RDX, align 8, !tbaa !2428
  %100 = icmp eq i32 %97, -1
  %101 = icmp eq i32 %98, 0
  %102 = or i1 %100, %101
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %5, align 1, !tbaa !2432
  %104 = and i32 %98, 255
  %105 = tail call i32 @llvm.ctpop.i32(i32 %104) #8
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  %108 = xor i8 %107, 1
  store i8 %108, i8* %6, align 1, !tbaa !2446
  %109 = xor i32 %97, %98
  %110 = lshr i32 %109, 4
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  store i8 %112, i8* %7, align 1, !tbaa !2447
  %113 = zext i1 %101 to i8
  store i8 %113, i8* %8, align 1, !tbaa !2448
  %114 = lshr i32 %98, 31
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %9, align 1, !tbaa !2449
  %116 = lshr i32 %97, 31
  %117 = xor i32 %114, %116
  %118 = add nuw nsw i32 %117, %114
  %119 = icmp eq i32 %118, 2
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %10, align 1, !tbaa !2450
  %121 = add i64 %94, 9
  store i64 %121, i64* %PC, align 8
  store i32 %98, i32* %96, align 4
  %122 = load i64, i64* %PC, align 8
  %123 = load i64, i64* %RBP, align 8
  %124 = add i64 %123, -36
  %125 = add i64 %122, -474
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %124 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = add i32 %127, -28
  %129 = icmp ult i32 %127, 28
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %5, align 1, !tbaa !2432
  %131 = and i32 %128, 255
  %132 = tail call i32 @llvm.ctpop.i32(i32 %131) #8
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  store i8 %135, i8* %6, align 1, !tbaa !2446
  %136 = xor i32 %127, 16
  %137 = xor i32 %136, %128
  %138 = lshr i32 %137, 4
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  store i8 %140, i8* %7, align 1, !tbaa !2447
  %141 = icmp eq i32 %128, 0
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %8, align 1, !tbaa !2448
  %143 = lshr i32 %128, 31
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* %9, align 1, !tbaa !2449
  %145 = lshr i32 %127, 31
  %146 = xor i32 %143, %145
  %147 = add nuw nsw i32 %146, %145
  %148 = icmp eq i32 %147, 2
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %10, align 1, !tbaa !2450
  %150 = icmp ne i8 %144, 0
  %151 = xor i1 %150, %148
  %.v30 = select i1 %151, i64 -468, i64 5
  %152 = add i64 %122, %.v30
  store i64 %152, i64* %PC, align 8, !tbaa !2428
  br i1 %151, label %block_4006be, label %block_400897

block_4007e9:                                     ; preds = %block_4007df
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %153 = add i64 %550, 14
  store i64 %153, i64* %PC, align 8
  %154 = load i32, i32* %527, align 4
  %155 = sext i32 %154 to i64
  %156 = mul nsw i64 %155, 11
  store i64 %156, i64* %RCX, align 8, !tbaa !2428
  %157 = lshr i64 %156, 63
  %158 = add i64 %156, ptrtoint (%maze_type* @maze to i64)
  store i64 %158, i64* %RAX, align 8, !tbaa !2428
  %159 = icmp ult i64 %158, ptrtoint (%maze_type* @maze to i64)
  %160 = icmp ult i64 %158, %156
  %161 = or i1 %159, %160
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %5, align 1, !tbaa !2432
  %163 = trunc i64 %158 to i32
  %164 = and i32 %163, 255
  %165 = tail call i32 @llvm.ctpop.i32(i32 %164) #8
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = xor i8 %167, 1
  store i8 %168, i8* %6, align 1, !tbaa !2446
  %169 = xor i64 %156, ptrtoint (%maze_type* @maze to i64)
  %170 = xor i64 %169, %158
  %171 = lshr i64 %170, 4
  %172 = trunc i64 %171 to i8
  %173 = and i8 %172, 1
  store i8 %173, i8* %7, align 1, !tbaa !2447
  %174 = icmp eq i64 %158, 0
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %8, align 1, !tbaa !2448
  %176 = lshr i64 %158, 63
  %177 = trunc i64 %176 to i8
  store i8 %177, i8* %9, align 1, !tbaa !2449
  %178 = xor i64 %176, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %179 = xor i64 %176, %157
  %180 = add nuw nsw i64 %178, %179
  %181 = icmp eq i64 %180, 2
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %10, align 1, !tbaa !2450
  %183 = add i64 %524, -20
  %184 = add i64 %550, 25
  store i64 %184, i64* %PC, align 8
  %185 = inttoptr i64 %183 to i32*
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  store i64 %187, i64* %RCX, align 8, !tbaa !2428
  %188 = add i64 %187, %158
  %189 = add i64 %550, 29
  store i64 %189, i64* %PC, align 8
  %190 = inttoptr i64 %188 to i8*
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i64
  %193 = and i64 %192, 4294967295
  store i64 %193, i64* %RDX, align 8, !tbaa !2428
  %194 = sext i8 %191 to i32
  %195 = add nsw i32 %194, -124
  %196 = icmp ult i8 %191, 124
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %5, align 1, !tbaa !2432
  %198 = and i32 %195, 255
  %199 = tail call i32 @llvm.ctpop.i32(i32 %198) #8
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  %202 = xor i8 %201, 1
  store i8 %202, i8* %6, align 1, !tbaa !2446
  %203 = xor i32 %194, 16
  %204 = xor i32 %203, %195
  %205 = lshr i32 %204, 4
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  store i8 %207, i8* %7, align 1, !tbaa !2447
  %208 = icmp eq i32 %195, 0
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %8, align 1, !tbaa !2448
  %210 = lshr i32 %195, 31
  %211 = trunc i32 %210 to i8
  store i8 %211, i8* %9, align 1, !tbaa !2449
  %212 = lshr i32 %194, 31
  %213 = xor i32 %210, %212
  %214 = add nuw nsw i32 %213, %212
  %215 = icmp eq i32 %214, 2
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %10, align 1, !tbaa !2450
  %.v25 = select i1 %208, i64 38, i64 58
  %217 = add i64 %550, %.v25
  store i64 %217, i64* %PC, align 8, !tbaa !2428
  %.pre13 = load i64, i64* %RBP, align 8
  br i1 %208, label %block_40080f, label %block_400823

block_4006be:                                     ; preds = %block_400867
  %218 = add i64 %123, -20
  %219 = add i64 %152, 3
  store i64 %219, i64* %PC, align 8
  %220 = inttoptr i64 %218 to i32*
  %221 = load i32, i32* %220, align 4
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %RAX, align 8, !tbaa !2428
  %223 = add i64 %123, -28
  %224 = add i64 %152, 6
  store i64 %224, i64* %PC, align 8
  %225 = inttoptr i64 %223 to i32*
  store i32 %221, i32* %225, align 4
  %226 = load i64, i64* %RBP, align 8
  %227 = add i64 %226, -24
  %228 = load i64, i64* %PC, align 8
  %229 = add i64 %228, 3
  store i64 %229, i64* %PC, align 8
  %230 = inttoptr i64 %227 to i32*
  %231 = load i32, i32* %230, align 4
  %232 = zext i32 %231 to i64
  store i64 %232, i64* %RAX, align 8, !tbaa !2428
  %233 = add i64 %226, -32
  %234 = add i64 %228, 6
  store i64 %234, i64* %PC, align 8
  %235 = inttoptr i64 %233 to i32*
  store i32 %231, i32* %235, align 4
  %236 = load i64, i64* %RBP, align 8
  %237 = add i64 %236, -36
  %238 = load i64, i64* %PC, align 8
  %239 = add i64 %238, 4
  store i64 %239, i64* %PC, align 8
  %240 = inttoptr i64 %237 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  store i64 %242, i64* %RCX, align 8, !tbaa !2428
  %243 = add i64 %236, -64
  %244 = add i64 %243, %242
  %245 = add i64 %238, 9
  store i64 %245, i64* %PC, align 8
  %246 = inttoptr i64 %244 to i8*
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = add nsw i32 %248, -97
  %250 = zext i32 %249 to i64
  %251 = lshr i32 %249, 31
  store i64 %250, i64* %RCX, align 8, !tbaa !2428
  %252 = add nsw i32 %248, -119
  %253 = zext i32 %252 to i64
  store i64 %253, i64* %RAX, align 8, !tbaa !2428
  %254 = icmp ult i32 %249, 22
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %5, align 1, !tbaa !2432
  %256 = and i32 %252, 255
  %257 = tail call i32 @llvm.ctpop.i32(i32 %256) #8
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = xor i8 %259, 1
  store i8 %260, i8* %6, align 1, !tbaa !2446
  %261 = xor i32 %249, 16
  %262 = xor i32 %261, %252
  %263 = lshr i32 %262, 4
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  store i8 %265, i8* %7, align 1, !tbaa !2447
  %266 = icmp eq i32 %252, 0
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %8, align 1, !tbaa !2448
  %268 = lshr i32 %252, 31
  %269 = trunc i32 %268 to i8
  store i8 %269, i8* %9, align 1, !tbaa !2449
  %270 = xor i32 %268, %251
  %271 = add nuw nsw i32 %270, %251
  %272 = icmp eq i32 %271, 2
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %10, align 1, !tbaa !2450
  %274 = add i64 %236, -80
  %275 = add i64 %238, 21
  store i64 %275, i64* %PC, align 8
  %276 = inttoptr i64 %274 to i64*
  store i64 %250, i64* %276, align 8
  %277 = load i64, i64* %RBP, align 8
  %278 = add i64 %277, -84
  %279 = load i32, i32* %EAX, align 4
  %280 = load i64, i64* %PC, align 8
  %281 = add i64 %280, 3
  store i64 %281, i64* %PC, align 8
  %282 = inttoptr i64 %278 to i32*
  store i32 %279, i32* %282, align 4
  %283 = load i64, i64* %PC, align 8
  %284 = load i8, i8* %5, align 1, !tbaa !2432
  %285 = load i8, i8* %8, align 1, !tbaa !2448
  %286 = or i8 %285, %284
  %287 = icmp eq i8 %286, 0
  %.v31 = select i1 %287, i64 76, i64 6
  %288 = add i64 %283, %.v31
  store i64 %288, i64* %PC, align 8, !tbaa !2428
  br i1 %287, label %block_40072e, label %block_4006e8

block_4007b9:                                     ; preds = %block_400760
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %289 = load i64, i64* %RBP, align 8
  %290 = add i64 %289, -24
  %291 = add i64 %748, 14
  store i64 %291, i64* %PC, align 8
  %292 = inttoptr i64 %290 to i32*
  %293 = load i32, i32* %292, align 4
  %294 = sext i32 %293 to i64
  %295 = mul nsw i64 %294, 11
  store i64 %295, i64* %RCX, align 8, !tbaa !2428
  %296 = lshr i64 %295, 63
  %297 = add i64 %295, ptrtoint (%maze_type* @maze to i64)
  store i64 %297, i64* %RAX, align 8, !tbaa !2428
  %298 = icmp ult i64 %297, ptrtoint (%maze_type* @maze to i64)
  %299 = icmp ult i64 %297, %295
  %300 = or i1 %298, %299
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %5, align 1, !tbaa !2432
  %302 = trunc i64 %297 to i32
  %303 = and i32 %302, 255
  %304 = tail call i32 @llvm.ctpop.i32(i32 %303) #8
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  %307 = xor i8 %306, 1
  store i8 %307, i8* %6, align 1, !tbaa !2446
  %308 = xor i64 %295, ptrtoint (%maze_type* @maze to i64)
  %309 = xor i64 %308, %297
  %310 = lshr i64 %309, 4
  %311 = trunc i64 %310 to i8
  %312 = and i8 %311, 1
  store i8 %312, i8* %7, align 1, !tbaa !2447
  %313 = icmp eq i64 %297, 0
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %8, align 1, !tbaa !2448
  %315 = lshr i64 %297, 63
  %316 = trunc i64 %315 to i8
  store i8 %316, i8* %9, align 1, !tbaa !2449
  %317 = xor i64 %315, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %318 = xor i64 %315, %296
  %319 = add nuw nsw i64 %317, %318
  %320 = icmp eq i64 %319, 2
  %321 = zext i1 %320 to i8
  store i8 %321, i8* %10, align 1, !tbaa !2450
  %322 = add i64 %289, -20
  %323 = add i64 %748, 25
  store i64 %323, i64* %PC, align 8
  %324 = inttoptr i64 %322 to i32*
  %325 = load i32, i32* %324, align 4
  %326 = sext i32 %325 to i64
  store i64 %326, i64* %RCX, align 8, !tbaa !2428
  %327 = add i64 %326, %297
  %328 = add i64 %748, 29
  store i64 %328, i64* %PC, align 8
  %329 = inttoptr i64 %327 to i8*
  %330 = load i8, i8* %329, align 1
  %331 = sext i8 %330 to i64
  %332 = and i64 %331, 4294967295
  store i64 %332, i64* %RDX, align 8, !tbaa !2428
  %333 = sext i8 %330 to i32
  %334 = add nsw i32 %333, -32
  %335 = icmp ult i8 %330, 32
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %5, align 1, !tbaa !2432
  %337 = and i32 %334, 255
  %338 = tail call i32 @llvm.ctpop.i32(i32 %337) #8
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  %341 = xor i8 %340, 1
  store i8 %341, i8* %6, align 1, !tbaa !2446
  %342 = xor i32 %333, %334
  %343 = lshr i32 %342, 4
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  store i8 %345, i8* %7, align 1, !tbaa !2447
  %346 = icmp eq i32 %334, 0
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %8, align 1, !tbaa !2448
  %348 = lshr i32 %334, 31
  %349 = trunc i32 %348 to i8
  store i8 %349, i8* %9, align 1, !tbaa !2449
  %350 = lshr i32 %333, 31
  %351 = xor i32 %348, %350
  %352 = add nuw nsw i32 %351, %350
  %353 = icmp eq i32 %352, 2
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %10, align 1, !tbaa !2450
  %.v23 = select i1 %346, i64 118, i64 38
  %355 = add i64 %748, %.v23
  store i64 %355, i64* %PC, align 8, !tbaa !2428
  br i1 %346, label %block_40082f, label %block_4007df

block_4008b2:                                     ; preds = %block_400897, %block_400847
  %356 = phi i64 [ %.pre15, %block_400897 ], [ %497, %block_400847 ]
  %MEMORY.1 = phi %struct.Memory* [ %590, %block_400897 ], [ %484, %block_400847 ]
  %357 = load i64, i64* %RBP, align 8
  %358 = add i64 %357, -4
  %359 = add i64 %356, 3
  store i64 %359, i64* %PC, align 8
  %360 = inttoptr i64 %358 to i32*
  %361 = load i32, i32* %360, align 4
  %362 = zext i32 %361 to i64
  store i64 %362, i64* %RAX, align 8, !tbaa !2428
  %363 = load i64, i64* %RSP, align 8
  %364 = add i64 %363, 112
  store i64 %364, i64* %RSP, align 8, !tbaa !2428
  %365 = icmp ugt i64 %363, -113
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %5, align 1, !tbaa !2432
  %367 = trunc i64 %364 to i32
  %368 = and i32 %367, 255
  %369 = tail call i32 @llvm.ctpop.i32(i32 %368) #8
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  %372 = xor i8 %371, 1
  store i8 %372, i8* %6, align 1, !tbaa !2446
  %373 = xor i64 %363, 16
  %374 = xor i64 %373, %364
  %375 = lshr i64 %374, 4
  %376 = trunc i64 %375 to i8
  %377 = and i8 %376, 1
  store i8 %377, i8* %7, align 1, !tbaa !2447
  %378 = icmp eq i64 %364, 0
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %8, align 1, !tbaa !2448
  %380 = lshr i64 %364, 63
  %381 = trunc i64 %380 to i8
  store i8 %381, i8* %9, align 1, !tbaa !2449
  %382 = lshr i64 %363, 63
  %383 = xor i64 %380, %382
  %384 = add nuw nsw i64 %383, %380
  %385 = icmp eq i64 %384, 2
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %10, align 1, !tbaa !2450
  %387 = add i64 %356, 8
  store i64 %387, i64* %PC, align 8
  %388 = add i64 %363, 120
  %389 = inttoptr i64 %364 to i64*
  %390 = load i64, i64* %389, align 8
  store i64 %390, i64* %RBP, align 8, !tbaa !2428
  store i64 %388, i64* %RSP, align 8, !tbaa !2428
  %391 = add i64 %356, 9
  store i64 %391, i64* %PC, align 8
  %392 = inttoptr i64 %388 to i64*
  %393 = load i64, i64* %392, align 8
  store i64 %393, i64* %PC, align 8, !tbaa !2428
  %394 = add i64 %363, 128
  store i64 %394, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_40072e:                                     ; preds = %block_4006be, %block_4006e8
  %395 = phi i64 [ %288, %block_4006be ], [ 4196142, %block_4006e8 ]
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 195), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %396 = add i64 %395, -686
  %397 = add i64 %395, 17
  %398 = load i64, i64* %RSP, align 8, !tbaa !2428
  %399 = add i64 %398, -8
  %400 = inttoptr i64 %399 to i64*
  store i64 %397, i64* %400, align 8
  store i64 %399, i64* %RSP, align 8, !tbaa !2428
  store i64 %396, i64* %PC, align 8, !tbaa !2428
  %401 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %91)
  %402 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 235), i64* %RDI, align 8, !tbaa !2428
  %403 = load i64, i64* %RBP, align 8
  %404 = add i64 %403, -88
  %405 = load i32, i32* %EAX, align 4
  %406 = add i64 %402, 13
  store i64 %406, i64* %PC, align 8
  %407 = inttoptr i64 %404 to i32*
  store i32 %405, i32* %407, align 4
  %408 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %409 = add i64 %408, -716
  %410 = add i64 %408, 7
  %411 = load i64, i64* %RSP, align 8, !tbaa !2428
  %412 = add i64 %411, -8
  %413 = inttoptr i64 %412 to i64*
  store i64 %410, i64* %413, align 8
  store i64 %412, i64* %RSP, align 8, !tbaa !2428
  store i64 %409, i64* %PC, align 8, !tbaa !2428
  %414 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %401)
  %415 = load i64, i64* %PC, align 8
  store i64 4294967295, i64* %RDI, align 8, !tbaa !2428
  %416 = load i64, i64* %RBP, align 8
  %417 = add i64 %416, -92
  %418 = load i32, i32* %EAX, align 4
  %419 = add i64 %415, 8
  store i64 %419, i64* %PC, align 8
  %420 = inttoptr i64 %417 to i32*
  store i32 %418, i32* %420, align 4
  %421 = load i64, i64* %PC, align 8
  %422 = add i64 %421, -699
  %423 = add i64 %421, 5
  %424 = load i64, i64* %RSP, align 8, !tbaa !2428
  %425 = add i64 %424, -8
  %426 = inttoptr i64 %425 to i64*
  store i64 %423, i64* %426, align 8
  store i64 %425, i64* %RSP, align 8, !tbaa !2428
  store i64 %422, i64* %PC, align 8, !tbaa !2428
  %427 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %414)
  %428 = load i64, i64* %PC, align 8
  %429 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %428, %struct.Memory* %427)
  ret %struct.Memory* %429

block_400823:                                     ; preds = %block_4007e9, %block_4007df, %block_40080f, %block_400819
  %430 = phi i64 [ %644, %block_40080f ], [ %550, %block_4007df ], [ %523, %block_400819 ], [ %217, %block_4007e9 ]
  %431 = phi i64 [ %.pre13, %block_40080f ], [ %524, %block_4007df ], [ %.pre13, %block_400819 ], [ %.pre13, %block_4007e9 ]
  %432 = add i64 %431, -28
  %433 = add i64 %430, 3
  store i64 %433, i64* %PC, align 8
  %434 = inttoptr i64 %432 to i32*
  %435 = load i32, i32* %434, align 4
  %436 = zext i32 %435 to i64
  store i64 %436, i64* %RAX, align 8, !tbaa !2428
  %437 = add i64 %431, -20
  %438 = add i64 %430, 6
  store i64 %438, i64* %PC, align 8
  %439 = inttoptr i64 %437 to i32*
  store i32 %435, i32* %439, align 4
  %440 = load i64, i64* %RBP, align 8
  %441 = add i64 %440, -32
  %442 = load i64, i64* %PC, align 8
  %443 = add i64 %442, 3
  store i64 %443, i64* %PC, align 8
  %444 = inttoptr i64 %441 to i32*
  %445 = load i32, i32* %444, align 4
  %446 = zext i32 %445 to i64
  store i64 %446, i64* %RAX, align 8, !tbaa !2428
  %447 = add i64 %440, -24
  %448 = add i64 %442, 6
  store i64 %448, i64* %PC, align 8
  %449 = inttoptr i64 %447 to i32*
  store i32 %445, i32* %449, align 4
  %.pre14 = load i64, i64* %PC, align 8
  br label %block_40082f

block_400720:                                     ; preds = %block_4006e8, %3
  %450 = phi i64 [ %phitmp, %3 ], [ 4196131, %block_4006e8 ]
  %451 = phi i64 [ %.pre, %3 ], [ %38, %block_4006e8 ]
  %MEMORY.4 = phi %struct.Memory* [ %2, %3 ], [ %91, %block_4006e8 ]
  %452 = add i64 %451, -20
  store i64 %450, i64* %PC, align 8
  %453 = inttoptr i64 %452 to i32*
  %454 = load i32, i32* %453, align 4
  %455 = add i32 %454, 1
  %456 = zext i32 %455 to i64
  store i64 %456, i64* %RAX, align 8, !tbaa !2428
  %457 = icmp eq i32 %454, -1
  %458 = icmp eq i32 %455, 0
  %459 = or i1 %457, %458
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %5, align 1, !tbaa !2432
  %461 = and i32 %455, 255
  %462 = tail call i32 @llvm.ctpop.i32(i32 %461) #8
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  %465 = xor i8 %464, 1
  store i8 %465, i8* %6, align 1, !tbaa !2446
  %466 = xor i32 %454, %455
  %467 = lshr i32 %466, 4
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  store i8 %469, i8* %7, align 1, !tbaa !2447
  %470 = zext i1 %458 to i8
  store i8 %470, i8* %8, align 1, !tbaa !2448
  %471 = lshr i32 %455, 31
  %472 = trunc i32 %471 to i8
  store i8 %472, i8* %9, align 1, !tbaa !2449
  %473 = lshr i32 %454, 31
  %474 = xor i32 %471, %473
  %475 = add nuw nsw i32 %474, %471
  %476 = icmp eq i32 %475, 2
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %10, align 1, !tbaa !2450
  %478 = add i64 %450, 6
  store i64 %478, i64* %PC, align 8
  store i32 %455, i32* %453, align 4
  br label %block_400760

block_400847:                                     ; preds = %block_40083b
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %479 = add i64 %584, -967
  %480 = add i64 %584, 17
  %481 = load i64, i64* %RSP, align 8, !tbaa !2428
  %482 = add i64 %481, -8
  %483 = inttoptr i64 %482 to i64*
  store i64 %480, i64* %483, align 8
  store i64 %482, i64* %RSP, align 8, !tbaa !2428
  store i64 %479, i64* %PC, align 8, !tbaa !2428
  %484 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.5)
  %485 = load i64, i64* %RBP, align 8
  %486 = add i64 %485, -4
  %487 = load i64, i64* %PC, align 8
  %488 = add i64 %487, 7
  store i64 %488, i64* %PC, align 8
  %489 = inttoptr i64 %486 to i32*
  store i32 2, i32* %489, align 4
  %490 = load i64, i64* %RBP, align 8
  %491 = add i64 %490, -104
  %492 = load i32, i32* %EAX, align 4
  %493 = load i64, i64* %PC, align 8
  %494 = add i64 %493, 3
  store i64 %494, i64* %PC, align 8
  %495 = inttoptr i64 %491 to i32*
  store i32 %492, i32* %495, align 4
  %496 = load i64, i64* %PC, align 8
  %497 = add i64 %496, 80
  store i64 %497, i64* %PC, align 8, !tbaa !2428
  br label %block_4008b2

block_400819:                                     ; preds = %block_40080f
  %498 = add i64 %644, 4
  store i64 %498, i64* %PC, align 8
  %499 = load i32, i32* %631, align 4
  %500 = add i32 %499, -11
  %501 = icmp ult i32 %499, 11
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %5, align 1, !tbaa !2432
  %503 = and i32 %500, 255
  %504 = tail call i32 @llvm.ctpop.i32(i32 %503) #8
  %505 = trunc i32 %504 to i8
  %506 = and i8 %505, 1
  %507 = xor i8 %506, 1
  store i8 %507, i8* %6, align 1, !tbaa !2446
  %508 = xor i32 %499, %500
  %509 = lshr i32 %508, 4
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  store i8 %511, i8* %7, align 1, !tbaa !2447
  %512 = icmp eq i32 %500, 0
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %8, align 1, !tbaa !2448
  %514 = lshr i32 %500, 31
  %515 = trunc i32 %514 to i8
  store i8 %515, i8* %9, align 1, !tbaa !2449
  %516 = lshr i32 %499, 31
  %517 = xor i32 %514, %516
  %518 = add nuw nsw i32 %517, %516
  %519 = icmp eq i32 %518, 2
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %10, align 1, !tbaa !2450
  %521 = icmp ne i8 %515, 0
  %522 = xor i1 %521, %519
  %.v27 = select i1 %522, i64 22, i64 10
  %523 = add i64 %644, %.v27
  store i64 %523, i64* %PC, align 8, !tbaa !2428
  br i1 %522, label %block_40082f, label %block_400823

block_4007df:                                     ; preds = %block_4007b9
  %524 = load i64, i64* %RBP, align 8
  %525 = add i64 %524, -24
  %526 = add i64 %355, 4
  store i64 %526, i64* %PC, align 8
  %527 = inttoptr i64 %525 to i32*
  %528 = load i32, i32* %527, align 4
  %529 = add i32 %528, -2
  %530 = icmp ult i32 %528, 2
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %5, align 1, !tbaa !2432
  %532 = and i32 %529, 255
  %533 = tail call i32 @llvm.ctpop.i32(i32 %532) #8
  %534 = trunc i32 %533 to i8
  %535 = and i8 %534, 1
  %536 = xor i8 %535, 1
  store i8 %536, i8* %6, align 1, !tbaa !2446
  %537 = xor i32 %528, %529
  %538 = lshr i32 %537, 4
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  store i8 %540, i8* %7, align 1, !tbaa !2447
  %541 = icmp eq i32 %529, 0
  %542 = zext i1 %541 to i8
  store i8 %542, i8* %8, align 1, !tbaa !2448
  %543 = lshr i32 %529, 31
  %544 = trunc i32 %543 to i8
  store i8 %544, i8* %9, align 1, !tbaa !2449
  %545 = lshr i32 %528, 31
  %546 = xor i32 %543, %545
  %547 = add nuw nsw i32 %546, %545
  %548 = icmp eq i32 %547, 2
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %10, align 1, !tbaa !2450
  %.v24 = select i1 %541, i64 10, i64 68
  %550 = add i64 %355, %.v24
  store i64 %550, i64* %PC, align 8, !tbaa !2428
  br i1 %541, label %block_4007e9, label %block_400823

block_40083b:                                     ; preds = %block_40082f
  %551 = add i64 %751, -32
  %552 = add i64 %785, 3
  store i64 %552, i64* %PC, align 8
  %553 = inttoptr i64 %551 to i32*
  %554 = load i32, i32* %553, align 4
  %555 = zext i32 %554 to i64
  store i64 %555, i64* %RAX, align 8, !tbaa !2428
  %556 = add i64 %751, -24
  %557 = add i64 %785, 6
  store i64 %557, i64* %PC, align 8
  %558 = inttoptr i64 %556 to i32*
  %559 = load i32, i32* %558, align 4
  %560 = sub i32 %554, %559
  %561 = icmp ult i32 %554, %559
  %562 = zext i1 %561 to i8
  store i8 %562, i8* %5, align 1, !tbaa !2432
  %563 = and i32 %560, 255
  %564 = tail call i32 @llvm.ctpop.i32(i32 %563) #8
  %565 = trunc i32 %564 to i8
  %566 = and i8 %565, 1
  %567 = xor i8 %566, 1
  store i8 %567, i8* %6, align 1, !tbaa !2446
  %568 = xor i32 %559, %554
  %569 = xor i32 %568, %560
  %570 = lshr i32 %569, 4
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  store i8 %572, i8* %7, align 1, !tbaa !2447
  %573 = icmp eq i32 %560, 0
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %8, align 1, !tbaa !2448
  %575 = lshr i32 %560, 31
  %576 = trunc i32 %575 to i8
  store i8 %576, i8* %9, align 1, !tbaa !2449
  %577 = lshr i32 %554, 31
  %578 = lshr i32 %559, 31
  %579 = xor i32 %578, %577
  %580 = xor i32 %575, %577
  %581 = add nuw nsw i32 %580, %579
  %582 = icmp eq i32 %581, 2
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %10, align 1, !tbaa !2450
  %.v29 = select i1 %573, i64 12, i64 44
  %584 = add i64 %785, %.v29
  store i64 %584, i64* %PC, align 8, !tbaa !2428
  br i1 %573, label %block_400847, label %block_400867

block_400897:                                     ; preds = %block_400867
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %585 = add i64 %152, -1047
  %586 = add i64 %152, 17
  %587 = load i64, i64* %RSP, align 8, !tbaa !2428
  %588 = add i64 %587, -8
  %589 = inttoptr i64 %588 to i64*
  store i64 %586, i64* %589, align 8
  store i64 %588, i64* %RSP, align 8, !tbaa !2428
  store i64 %585, i64* %PC, align 8, !tbaa !2428
  %590 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %91)
  %591 = load i64, i64* %RBP, align 8
  %592 = add i64 %591, -4
  %593 = load i64, i64* %PC, align 8
  %594 = add i64 %593, 7
  store i64 %594, i64* %PC, align 8
  %595 = inttoptr i64 %592 to i32*
  store i32 1, i32* %595, align 4
  %596 = load i64, i64* %RBP, align 8
  %597 = add i64 %596, -108
  %598 = load i32, i32* %EAX, align 4
  %599 = load i64, i64* %PC, align 8
  %600 = add i64 %599, 3
  store i64 %600, i64* %PC, align 8
  %601 = inttoptr i64 %597 to i32*
  store i32 %598, i32* %601, align 4
  %.pre15 = load i64, i64* %PC, align 8
  br label %block_4008b2

block_400712:                                     ; preds = %block_4006e8
  %602 = add i64 %38, -20
  store i64 4196117, i64* %PC, align 8
  %603 = inttoptr i64 %602 to i32*
  %604 = load i32, i32* %603, align 4
  %605 = add i32 %604, -1
  %606 = zext i32 %605 to i64
  store i64 %606, i64* %RAX, align 8, !tbaa !2428
  %607 = icmp ne i32 %604, 0
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %5, align 1, !tbaa !2432
  %609 = and i32 %605, 255
  %610 = tail call i32 @llvm.ctpop.i32(i32 %609) #8
  %611 = trunc i32 %610 to i8
  %612 = and i8 %611, 1
  %613 = xor i8 %612, 1
  store i8 %613, i8* %6, align 1, !tbaa !2446
  %614 = xor i32 %604, 16
  %615 = xor i32 %605, %614
  %616 = lshr i32 %615, 4
  %617 = trunc i32 %616 to i8
  %618 = and i8 %617, 1
  store i8 %618, i8* %7, align 1, !tbaa !2447
  %619 = icmp eq i32 %605, 0
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %8, align 1, !tbaa !2448
  %621 = lshr i32 %605, 31
  %622 = trunc i32 %621 to i8
  store i8 %622, i8* %9, align 1, !tbaa !2449
  %623 = lshr i32 %604, 31
  %624 = xor i32 %621, %623
  %625 = xor i32 %621, 1
  %626 = add nuw nsw i32 %624, %625
  %627 = icmp eq i32 %626, 2
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %10, align 1, !tbaa !2450
  store i64 4196123, i64* %PC, align 8
  store i32 %605, i32* %603, align 4
  br label %block_400760

block_40080f:                                     ; preds = %block_4007e9
  %629 = add i64 %.pre13, -20
  %630 = add i64 %217, 4
  store i64 %630, i64* %PC, align 8
  %631 = inttoptr i64 %629 to i32*
  %632 = load i32, i32* %631, align 4
  store i8 0, i8* %5, align 1, !tbaa !2432
  %633 = and i32 %632, 255
  %634 = tail call i32 @llvm.ctpop.i32(i32 %633) #8
  %635 = trunc i32 %634 to i8
  %636 = and i8 %635, 1
  %637 = xor i8 %636, 1
  store i8 %637, i8* %6, align 1, !tbaa !2446
  store i8 0, i8* %7, align 1, !tbaa !2447
  %638 = icmp eq i32 %632, 0
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %8, align 1, !tbaa !2448
  %640 = lshr i32 %632, 31
  %641 = trunc i32 %640 to i8
  store i8 %641, i8* %9, align 1, !tbaa !2449
  store i8 0, i8* %10, align 1, !tbaa !2450
  %642 = icmp ne i8 %641, 0
  %643 = or i1 %638, %642
  %.v26 = select i1 %643, i64 20, i64 10
  %644 = add i64 %217, %.v26
  store i64 %644, i64* %PC, align 8, !tbaa !2428
  br i1 %643, label %block_400823, label %block_400819

block_400786:                                     ; preds = %block_400760
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %645 = add i64 %748, -774
  %646 = add i64 %748, 17
  %647 = load i64, i64* %RSP, align 8, !tbaa !2428
  %648 = add i64 %647, -8
  %649 = inttoptr i64 %648 to i64*
  store i64 %646, i64* %649, align 8
  store i64 %648, i64* %RSP, align 8, !tbaa !2428
  store i64 %645, i64* %PC, align 8, !tbaa !2428
  %650 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.5)
  %651 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2428
  %652 = load i64, i64* %RBP, align 8
  %653 = add i64 %652, -64
  store i64 %653, i64* %RSI, align 8, !tbaa !2428
  %654 = add i64 %652, -96
  %655 = load i32, i32* %EAX, align 4
  %656 = add i64 %651, 17
  store i64 %656, i64* %PC, align 8
  %657 = inttoptr i64 %654 to i32*
  store i32 %655, i32* %657, align 4
  %658 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %659 = add i64 %658, -808
  %660 = add i64 %658, 7
  %661 = load i64, i64* %RSP, align 8, !tbaa !2428
  %662 = add i64 %661, -8
  %663 = inttoptr i64 %662 to i64*
  store i64 %660, i64* %663, align 8
  store i64 %662, i64* %RSP, align 8, !tbaa !2428
  store i64 %659, i64* %PC, align 8, !tbaa !2428
  %664 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %650)
  %665 = load i64, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %5, align 1, !tbaa !2432
  store i8 1, i8* %6, align 1, !tbaa !2446
  store i8 1, i8* %8, align 1, !tbaa !2448
  store i8 0, i8* %9, align 1, !tbaa !2449
  store i8 0, i8* %10, align 1, !tbaa !2450
  store i8 0, i8* %7, align 1, !tbaa !2447
  %666 = load i64, i64* %RBP, align 8
  %667 = add i64 %666, -100
  %668 = load i32, i32* %EAX, align 4
  %669 = add i64 %665, 5
  store i64 %669, i64* %PC, align 8
  %670 = inttoptr i64 %667 to i32*
  store i32 %668, i32* %670, align 4
  %671 = load i64, i64* %PC, align 8
  %672 = add i64 %671, -788
  %673 = add i64 %671, 5
  %674 = load i64, i64* %RSP, align 8, !tbaa !2428
  %675 = add i64 %674, -8
  %676 = inttoptr i64 %675 to i64*
  store i64 %673, i64* %676, align 8
  store i64 %675, i64* %RSP, align 8, !tbaa !2428
  store i64 %672, i64* %PC, align 8, !tbaa !2428
  %677 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %664)
  %678 = load i64, i64* %PC, align 8
  %679 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %678, %struct.Memory* %677)
  ret %struct.Memory* %679

block_400760:                                     ; preds = %block_400704, %block_400712, %block_4006f6, %block_400720
  %.sink22 = phi i64 [ 83, %block_400704 ], [ 69, %block_400712 ], [ 97, %block_4006f6 ], [ 55, %block_400720 ]
  %MEMORY.5 = phi %struct.Memory* [ %91, %block_400704 ], [ %91, %block_400712 ], [ %91, %block_4006f6 ], [ %MEMORY.4, %block_400720 ]
  %680 = load i64, i64* %PC, align 8
  %681 = add i64 %680, %.sink22
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %682 = load i64, i64* %RBP, align 8
  %683 = add i64 %682, -24
  %684 = add i64 %681, 14
  store i64 %684, i64* %PC, align 8
  %685 = inttoptr i64 %683 to i32*
  %686 = load i32, i32* %685, align 4
  %687 = sext i32 %686 to i64
  %688 = mul nsw i64 %687, 11
  store i64 %688, i64* %RCX, align 8, !tbaa !2428
  %689 = lshr i64 %688, 63
  %690 = add i64 %688, ptrtoint (%maze_type* @maze to i64)
  store i64 %690, i64* %RAX, align 8, !tbaa !2428
  %691 = icmp ult i64 %690, ptrtoint (%maze_type* @maze to i64)
  %692 = icmp ult i64 %690, %688
  %693 = or i1 %691, %692
  %694 = zext i1 %693 to i8
  store i8 %694, i8* %5, align 1, !tbaa !2432
  %695 = trunc i64 %690 to i32
  %696 = and i32 %695, 255
  %697 = tail call i32 @llvm.ctpop.i32(i32 %696) #8
  %698 = trunc i32 %697 to i8
  %699 = and i8 %698, 1
  %700 = xor i8 %699, 1
  store i8 %700, i8* %6, align 1, !tbaa !2446
  %701 = xor i64 %688, ptrtoint (%maze_type* @maze to i64)
  %702 = xor i64 %701, %690
  %703 = lshr i64 %702, 4
  %704 = trunc i64 %703 to i8
  %705 = and i8 %704, 1
  store i8 %705, i8* %7, align 1, !tbaa !2447
  %706 = icmp eq i64 %690, 0
  %707 = zext i1 %706 to i8
  store i8 %707, i8* %8, align 1, !tbaa !2448
  %708 = lshr i64 %690, 63
  %709 = trunc i64 %708 to i8
  store i8 %709, i8* %9, align 1, !tbaa !2449
  %710 = xor i64 %708, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %711 = xor i64 %708, %689
  %712 = add nuw nsw i64 %710, %711
  %713 = icmp eq i64 %712, 2
  %714 = zext i1 %713 to i8
  store i8 %714, i8* %10, align 1, !tbaa !2450
  %715 = add i64 %682, -20
  %716 = add i64 %681, 25
  store i64 %716, i64* %PC, align 8
  %717 = inttoptr i64 %715 to i32*
  %718 = load i32, i32* %717, align 4
  %719 = sext i32 %718 to i64
  store i64 %719, i64* %RCX, align 8, !tbaa !2428
  %720 = add i64 %719, %690
  %721 = add i64 %681, 29
  store i64 %721, i64* %PC, align 8
  %722 = inttoptr i64 %720 to i8*
  %723 = load i8, i8* %722, align 1
  %724 = sext i8 %723 to i64
  %725 = and i64 %724, 4294967295
  store i64 %725, i64* %RDX, align 8, !tbaa !2428
  %726 = sext i8 %723 to i32
  %727 = add nsw i32 %726, -35
  %728 = icmp ult i8 %723, 35
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %5, align 1, !tbaa !2432
  %730 = and i32 %727, 255
  %731 = tail call i32 @llvm.ctpop.i32(i32 %730) #8
  %732 = trunc i32 %731 to i8
  %733 = and i8 %732, 1
  %734 = xor i8 %733, 1
  store i8 %734, i8* %6, align 1, !tbaa !2446
  %735 = xor i32 %726, %727
  %736 = lshr i32 %735, 4
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  store i8 %738, i8* %7, align 1, !tbaa !2447
  %739 = icmp eq i32 %727, 0
  %740 = zext i1 %739 to i8
  store i8 %740, i8* %8, align 1, !tbaa !2448
  %741 = lshr i32 %727, 31
  %742 = trunc i32 %741 to i8
  store i8 %742, i8* %9, align 1, !tbaa !2449
  %743 = lshr i32 %726, 31
  %744 = xor i32 %741, %743
  %745 = add nuw nsw i32 %744, %743
  %746 = icmp eq i32 %745, 2
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %10, align 1, !tbaa !2450
  %.v = select i1 %739, i64 38, i64 89
  %748 = add i64 %681, %.v
  %749 = add i64 %748, 10
  store i64 %749, i64* %PC, align 8
  br i1 %739, label %block_400786, label %block_4007b9

block_40082f:                                     ; preds = %block_400819, %block_400823, %block_4007b9
  %750 = phi i64 [ %523, %block_400819 ], [ %.pre14, %block_400823 ], [ %355, %block_4007b9 ]
  %751 = load i64, i64* %RBP, align 8
  %752 = add i64 %751, -28
  %753 = add i64 %750, 3
  store i64 %753, i64* %PC, align 8
  %754 = inttoptr i64 %752 to i32*
  %755 = load i32, i32* %754, align 4
  %756 = zext i32 %755 to i64
  store i64 %756, i64* %RAX, align 8, !tbaa !2428
  %757 = add i64 %751, -20
  %758 = add i64 %750, 6
  store i64 %758, i64* %PC, align 8
  %759 = inttoptr i64 %757 to i32*
  %760 = load i32, i32* %759, align 4
  %761 = sub i32 %755, %760
  %762 = icmp ult i32 %755, %760
  %763 = zext i1 %762 to i8
  store i8 %763, i8* %5, align 1, !tbaa !2432
  %764 = and i32 %761, 255
  %765 = tail call i32 @llvm.ctpop.i32(i32 %764) #8
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  %768 = xor i8 %767, 1
  store i8 %768, i8* %6, align 1, !tbaa !2446
  %769 = xor i32 %760, %755
  %770 = xor i32 %769, %761
  %771 = lshr i32 %770, 4
  %772 = trunc i32 %771 to i8
  %773 = and i8 %772, 1
  store i8 %773, i8* %7, align 1, !tbaa !2447
  %774 = icmp eq i32 %761, 0
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %8, align 1, !tbaa !2448
  %776 = lshr i32 %761, 31
  %777 = trunc i32 %776 to i8
  store i8 %777, i8* %9, align 1, !tbaa !2449
  %778 = lshr i32 %755, 31
  %779 = lshr i32 %760, 31
  %780 = xor i32 %779, %778
  %781 = xor i32 %776, %778
  %782 = add nuw nsw i32 %781, %780
  %783 = icmp eq i32 %782, 2
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %10, align 1, !tbaa !2450
  %.v28 = select i1 %774, i64 12, i64 56
  %785 = add i64 %750, %.v28
  store i64 %785, i64* %PC, align 8, !tbaa !2428
  br i1 %774, label %block_40083b, label %block_40082f.block_400867_crit_edge

block_40082f.block_400867_crit_edge:              ; preds = %block_40082f
  %.pre16 = add i64 %751, -24
  %.pre17 = inttoptr i64 %.pre16 to i32*
  br label %block_400867

block_400704:                                     ; preds = %block_4006e8
  %786 = add i64 %38, -24
  store i64 4196103, i64* %PC, align 8
  %787 = inttoptr i64 %786 to i32*
  %788 = load i32, i32* %787, align 4
  %789 = add i32 %788, 1
  %790 = zext i32 %789 to i64
  store i64 %790, i64* %RAX, align 8, !tbaa !2428
  %791 = icmp eq i32 %788, -1
  %792 = icmp eq i32 %789, 0
  %793 = or i1 %791, %792
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %5, align 1, !tbaa !2432
  %795 = and i32 %789, 255
  %796 = tail call i32 @llvm.ctpop.i32(i32 %795) #8
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  %799 = xor i8 %798, 1
  store i8 %799, i8* %6, align 1, !tbaa !2446
  %800 = xor i32 %788, %789
  %801 = lshr i32 %800, 4
  %802 = trunc i32 %801 to i8
  %803 = and i8 %802, 1
  store i8 %803, i8* %7, align 1, !tbaa !2447
  %804 = zext i1 %792 to i8
  store i8 %804, i8* %8, align 1, !tbaa !2448
  %805 = lshr i32 %789, 31
  %806 = trunc i32 %805 to i8
  store i8 %806, i8* %9, align 1, !tbaa !2449
  %807 = lshr i32 %788, 31
  %808 = xor i32 %805, %807
  %809 = add nuw nsw i32 %808, %805
  %810 = icmp eq i32 %809, 2
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %10, align 1, !tbaa !2450
  store i64 4196109, i64* %PC, align 8
  store i32 %789, i32* %787, align 4
  br label %block_400760

; <label>:812:                                    ; preds = %block_4006e8
  %813 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %47, %struct.Memory* %91)
  ret %struct.Memory* %813
}

; Function Attrs: noinline
define %struct.Memory* @sub_400450__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400450:
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
  %11 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_600ff0__got_type* @seg_600ff0__got to i64), i64 8) to i64*), align 8
  store i64 %11, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %5, align 1, !tbaa !2432
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #8
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
  br i1 %18, label %block_400450.block_400462_crit_edge, label %block_400460

block_400450.block_400462_crit_edge:              ; preds = %block_400450
  br label %block_400462

block_400460:                                     ; preds = %block_400450
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400462

block_400462:                                     ; preds = %block_400450.block_400462_crit_edge, %block_400460
  %.pre-phi = phi i64* [ %RSP, %block_400450.block_400462_crit_edge ], [ %RSP, %block_400460 ]
  %27 = phi i64 [ %22, %block_400450.block_400462_crit_edge ], [ %.pre1, %block_400460 ]
  %28 = phi i64 [ %4, %block_400450.block_400462_crit_edge ], [ %.pre, %block_400460 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400450.block_400462_crit_edge ], [ %26, %block_400460 ]
  %29 = add i64 %28, 8
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  %30 = icmp ugt i64 %28, -9
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %5, align 1, !tbaa !2432
  %32 = trunc i64 %29 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #8
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %6, align 1, !tbaa !2446
  %38 = xor i64 %28, %29
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
  store i64 %54, i64* %.pre-phi, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_400930___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400930:
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
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400590_frame_dummy() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400590;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_400590_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400590_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400560___do_global_dtors_aux() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400560;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_400560___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400560___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6010b0_printf(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6010c8_exit(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400930___libc_csu_fini() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400930;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_400930___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400930___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4008c0___libc_csu_init() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4008c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_4008c0___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4008c0___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400650;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400650_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6010a0___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_601098_read(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @read to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400934;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @.term_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400934__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400450;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400450__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @draw() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4005a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @draw_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4005a0_draw(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

define internal void @__mcsema_constructor() {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_4008c0___libc_csu_init()
  ret void
}

define internal void @__mcsema_destructor() {
  tail call void @callback_sub_400930___libc_csu_fini()
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
