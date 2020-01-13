; ModuleID = 'binary/test.mcsema.calls_renamed.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400590__init_type = type <{ [23 x i8] }>
%seg_4005b0__plt_type = type <{ [144 x i8] }>
%seg_400640__text_type = type <{ [3378 x i8] }>
%seg_401374__fini_type = type <{ [9 x i8] }>
%seg_401380__rodata_type = type <{ [48 x i8], [7 x i8], [51 x i8], [76 x i8] }>
%seg_401438__eh_frame_hdr_type = type <{ [172 x i8] }>
%seg_4014e8__eh_frame_type = type <{ [648 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%seg_602000__got_plt_type = type <{ [24 x i8], i64, i64, i64, i64, i64, i64, i64, i64 }>
%seg_602058__data_type = type <{ [16 x i8] }>
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

@switch.table = private unnamed_addr constant [4 x i32] [i32 2048, i32 3072, i32 0, i32 1024]
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
@stderr = external global i64, align 128
@seg_400590__init = internal constant %seg_400590__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05]\1A \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_4005b0__plt = internal constant %seg_4005b0__plt_type <{ [144 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%R\1A \00\00\00\00\00\00\00\00\00\00\00\FF%J\1A \00\00\00\00\00\00\00\00\00\00\00\FF%B\1A \00\00\00\00\00\00\00\00\00\00\00\FF%:\1A \00\00\00\00\00\00\00\00\00\00\00\FF%2\1A \00\00\00\00\00\00\00\00\00\00\00\FF%*\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\22\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\1A\1A \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_400640__text = internal constant %seg_400640__text_type <{ [3378 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0p\13@\00H\C7\C1\00\13@\00H\C7\C7\10\09@\00\FF\15\86\19 \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8h `\00H=h `\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BFh `\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BEh `\00UH\81\EEh `\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BFh `\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\91\19 \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\7F\19 \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC \B8\08\00\00\00\89\C6\C7E\FC\00\01@\00Hc}\FC\E8\A1\FE\FF\FF\0FW\C0H\89E\F0\F2\0F\11E\E0\C7E\EC\00\00\00\00\8BE\EC;E\FC\0F\8D%\00\00\00H\8BE\F0HcM\EC\F2\0F\10\04\C8\F2\0FXE\E0\F2\0F\11E\E0\8BE\EC\83\C0\01\89E\EC\E9\CF\FF\FF\FFH\8BE\F0H\89\C7\E8!\FE\FF\FFH\83\C4 ]\C3ff.\0F\1F\84\00\00\00\00\00UH\89\E5\E8w\FF\FF\FF]\C3\0F\1FD\00\00UH\89\E5\E8\E7\FF\FF\FF\E8\12\00\00\00\F2\0F\11\04%\B0 `\00]\C3\0F\1F\80\00\00\00\00UH\89\E5\0FW\C0]\C3\0F\1F\80\00\00\00\00UH\89\E5\E8\E7\FF\FF\FF\F2\0F\11\04%\A8 `\00]\C3fff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC\10H\BF\B0\13@\00\00\00\00\00\F2\0F\10\04%\A8 `\00\F2\0F\5C\04%\B0 `\00\B0\01\E8\95\FD\FF\FF\89E\FCH\83\C4\10]\C3fff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC H\89}\F8\89u\F4H\8B}\F8H\89}\E8Hc}\F4H\0F\AF}\E8H\89}\E8H\8B}\E8\E8\13\00\00\00H\89E\E0H\8BE\E0H\83\C4 ]\C3\0F\1FD\00\00UH\89\E5H\83\EC H\8DE\F0\B9 \00\00\00\89\CEH\89}\F8H\C7E\F0\00\00\00\00H\8BU\F8H\89\C7\E8u\FD\FF\FF\89E\ECH\83}\F0\00\0F\84\0A\00\00\00\83}\EC\00\0F\84&\00\00\00H\BE\B7\13@\00\00\00\00\00H\8B<%\80 `\00\B0\00\E8\14\FD\FF\FF\BF\01\00\00\00\89E\E8\E8'\FD\FF\FFH\8BE\F0H\83\C4 ]\C3ffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC`\B8\00\00\10\00\89\C1\B8\08\00\00\00\C7E\FC\00\00\00\00\89}\F8H\89u\F0\C7E\EC\00\04\00\00\C7E\E8\00\04\00\00H\89\CF\89\C6\E8\06\FF\FF\FF\BE\00\00\10\00\89\F7\BE\08\00\00\00H\89E\D0\E8\F1\FE\FF\FF\BE\00\00\10\00\89\F7\BE\08\00\00\00H\89E\C8\E8\DC\FE\FF\FF\BE\00\00\10\00\89\F7\BE\08\00\00\00H\89E\C0\E8\C7\FE\FF\FFH\8DU\E0H\8DM\D8H\89E\B8\8B}\EC\8Bu\E8L\8BE\D0L\8BM\C8H\8BE\C0L\8BU\B8H\89\04$L\89T$\08\E8\B7\00\00\00\8B}\EC\8Bu\E8\F2\0F\10E\E0\F2\0F\10M\D8H\8BU\D0H\8BM\C0L\8BE\B8\E86\02\00\00\8B}\EC\8Bu\E8\F2\0F\10E\E0\F2\0F\10M\D8H\8BU\C8H\8BM\C0L\8BE\B8\E8\B5\03\00\00\8B}\ECH\8Bu\D0H\8BU\C8\E8E\05\00\00\83\F8\00\0F\85\0C\00\00\00\C7E\FC\01\00\00\00\E9C\00\00\00\8B}\ECH\8Bu\C8\E8T\06\00\00H\8Bu\D0H\89\F7\E8\88\FB\FF\FFH\8Bu\C8H\89\F7\E8|\FB\FF\FFH\8Bu\C0H\89\F7\E8p\FB\FF\FFH\8Bu\B8H\89\F7\E8d\FB\FF\FF\C7E\FC\00\00\00\00\8BE\FCH\83\C4`]\C3\0F\1F@\00UH\89\E5H\8BE\18L\8BU\10\F2\0F\10\05\04\09\00\00\F2\0F\10\0D\04\09\00\00\89}\FC\89u\F8H\89U\F0H\89M\E8L\89E\E0L\89M\D8H\8BM\F0\F2\0F\11\09H\8BM\E8\F2\0F\11\01\C7E\D4\00\00\00\00L\89U\C8H\89E\C0\8BE\D4;E\FC\0F\8D\9E\00\00\00\C7E\D0\00\00\00\00\8BE\D0;E\F8\0F\8Dx\00\00\00\8BE\D4\F2\0F*\C0\8BE\D0\F2\0F*\C8\F2\0FY\C1\8BE\FC\F2\0F*\C8\F2\0F^\C1H\8BM\10HcU\D4H\C1\E2\0DH\01\D1HcU\D0\F2\0F\11\04\D1\8BE\D4\F2\0F*\C0\8BE\D0\F2\0F*\C8\F2\0FY\C1\8BE\FC\F2\0F*\C8\F2\0F^\C1H\8BM\18HcU\D4H\C1\E2\0DH\01\D1HcU\D0\F2\0F\11\04\D1\8BE\D0\83\C0\01\89E\D0\E9|\FF\FF\FF\E9\00\00\00\00\8BE\D4\83\C0\01\89E\D4\E9V\FF\FF\FF\C7E\D4\00\00\00\00\8BE\D4;E\FC\0F\8D\81\00\00\00\C7E\D0\00\00\00\00\8BE\D0;E\FC\0F\8D[\00\00\00\8BE\D4\F2\0F*\C0\8BE\D0\F2\0F*\C8\F2\0FY\C1\8BE\FC\F2\0F*\C8\F2\0F^\C1H\8BM\E0HcU\D4H\C1\E2\0DH\01\D1HcU\D0\F2\0F\11\04\D1H\8BM\D8HcU\D4H\C1\E2\0DH\01\D1HcU\D0\F2\0F\11\04\D1\8BE\D0\83\C0\01\89E\D0\E9\99\FF\FF\FF\E9\00\00\00\00\8BE\D4\83\C0\01\89E\D4\E9s\FF\FF\FF]\C3ffffff.\0F\1F\84\00\00\00\00\00UH\89\E5\89}\FC\89u\F8\F2\0F\11E\F0\F2\0F\11M\E8H\89U\E0H\89M\D8L\89E\D0\C7E\CC\00\00\00\00\8BE\CC;E\FC\0F\8DV\00\00\00\C7E\C8\00\00\00\00\8BE\C8;E\FC\0F\8D0\00\00\00\F2\0F\10E\E8H\8BE\E0HcM\CCH\C1\E1\0DH\01\C8HcM\C8\F2\0FY\04\C8\F2\0F\11\04\C8\8BE\C8\83\C0\01\89E\C8\E9\C4\FF\FF\FF\E9\00\00\00\00\8BE\CC\83\C0\01\89E\CC\E9\9E\FF\FF\FF\C7E\CC\00\00\00\00\8BE\CC;E\FC\0F\8D\FE\00\00\00\C7E\C8\00\00\00\00\8BE\C8;E\FC\0F\8D\D8\00\00\00\C7E\C4\00\00\00\00\8BE\C4;E\F8\0F\8D\B2\00\00\00\F2\0F\10E\F0H\8BE\D8HcM\CCH\C1\E1\0DH\01\C8HcM\C4\F2\0FY\04\C8H\8BE\D0HcM\C8H\C1\E1\0DH\01\C8HcM\C4\F2\0FY\04\C8H\8BE\E0HcM\CCH\C1\E1\0DH\01\C8HcM\C8\F2\0FX\04\C8\F2\0F\11\04\C8\F2\0F\10E\F0H\8BE\D0HcM\CCH\C1\E1\0DH\01\C8HcM\C4\F2\0FY\04\C8H\8BE\D8HcM\C8H\C1\E1\0DH\01\C8HcM\C4\F2\0FY\04\C8H\8BE\E0HcM\CCH\C1\E1\0DH\01\C8HcM\C8\F2\0FX\04\C8\F2\0F\11\04\C8\8BE\C4\83\C0\01\89E\C4\E9B\FF\FF\FF\E9\00\00\00\00\8BE\C8\83\C0\01\89E\C8\E9\1C\FF\FF\FF\E9\00\00\00\00\8BE\CC\83\C0\01\89E\CC\E9\F6\FE\FF\FF]\C3\0F\1F@\00UH\89\E5\89}\FC\89u\F8\F2\0F\11E\F0\F2\0F\11M\E8H\89U\E0H\89M\D8L\89E\D0\C7E\CC\00\00\00\00\8BE\CC;E\FC\0F\8DV\00\00\00\C7E\C8\00\00\00\00\8BE\C8;E\FC\0F\8D0\00\00\00\F2\0F\10E\E8H\8BE\E0HcM\CCH\C1\E1\0DH\01\C8HcM\C8\F2\0FY\04\C8\F2\0F\11\04\C8\8BE\C8\83\C0\01\89E\C8\E9\C4\FF\FF\FF\E9\00\00\00\00\8BE\CC\83\C0\01\89E\CC\E9\9E\FF\FF\FF\C7E\CC\00\00\00\00\8BE\CC;E\FC\0F\8D\FE\00\00\00\C7E\C8\00\00\00\00\8BE\C8;E\FC\0F\8D\D8\00\00\00\C7E\C4\00\00\00\00\8BE\C4;E\F8\0F\8D\B2\00\00\00\F2\0F\10E\F0H\8BE\D8HcM\CCH\C1\E1\0DH\01\C8HcM\C4\F2\0FY\04\C8H\8BE\D0HcM\C8H\C1\E1\0DH\01\C8HcM\C4\F2\0FY\04\C8H\8BE\E0HcM\CCH\C1\E1\0DH\01\C8HcM\C8\F2\0FX\04\C8\F2\0F\11\04\C8\F2\0F\10E\F0H\8BE\D0HcM\CCH\C1\E1\0DH\01\C8HcM\C4\F2\0FY\04\C8H\8BE\D8HcM\C8H\C1\E1\0DH\01\C8HcM\C4\F2\0FY\04\C8H\8BE\E0HcM\CCH\C1\E1\0DH\01\C8HcM\C8\F2\0FX\04\C8\F2\0F\11\04\C8\8BE\C4\83\C0\01\89E\C4\E9B\FF\FF\FF\E9\00\00\00\00\8BE\C8\83\C0\01\89E\C8\E9\1C\FF\FF\FF\E9\00\00\00\00\8BE\CC\83\C0\01\89E\CC\E9\F6\FE\FF\FF]\C3\0F\1F@\00UH\89\E5H\83\ECP\F2\0F\10\058\04\00\00\89}\F8H\89u\F0H\89U\E8\F2\0F\11E\D8\C7E\E4\00\00\00\00\8BE\E4;E\F8\0F\8D\E2\00\00\00\C7E\E0\00\00\00\00\8BE\E0;E\F8\0F\8D\BC\00\00\00H\8BE\F0HcM\E4H\C1\E1\0DH\01\C8HcM\E0\F2\0F\10\04\C8\F2\0F\11E\D0H\8BE\E8HcM\E4H\C1\E1\0DH\01\C8HcM\E0\F2\0F\10\04\C8\F2\0F\11E\C8\F2\0F\10E\D0\F2\0F\5CE\C8\0F(\0D\BF\03\00\00f\0F\DB\C1\F2\0F\11E\C0\F2\0F\10E\C0f\0F.E\D8\0F\86E\00\00\00H\BE\EA\13@\00\00\00\00\00H\8B<%\80 `\00\8BU\E4\8BM\E0\F2\0F\10E\D0D\8BE\E4D\8BM\E0\F2\0F\10M\C8\F2\0F\10U\D8\B0\03\E8\D0\F5\FF\FF\C7E\FC\00\00\00\00\89E\BC\E9-\00\00\00\E9\00\00\00\00\8BE\E0\83\C0\01\89E\E0\E98\FF\FF\FF\E9\00\00\00\00\8BE\E4\83\C0\01\89E\E4\E9\12\FF\FF\FF\C7E\FC\01\00\00\00\8BE\FCH\83\C4P]\C3ff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC0\89}\FCH\89u\F0\8B}\FC\C1\E7\04\83\C7\01Hc\FF\E8p\F5\FF\FFH\89E\E0H\8BE\E0\8BM\FC\C1\E1\04Hc\F1\C6\040\00\C7E\EC\00\00\00\00\8BE\EC;E\FC\0F\8Dl\00\00\00\C7E\E8\00\00\00\00\8BE\E8;E\FC\0F\8D7\00\00\00H\8BE\F0HcM\ECH\C1\E1\0DH\01\C8HcM\E8\F2\0F\10\04\C8\8BU\E8\C1\E2\04H\8Bu\E0\89\D7\E8L\00\00\00\8BE\E8\83\C0\01\89E\E8\E9\BD\FF\FF\FFH\8B}\E0H\8B4%\80 `\00\E8\BD\F4\FF\FF\89E\DC\8BE\EC\83\C0\01\89E\EC\E9\88\FF\FF\FFH\8B}\E0\E8\83\F4\FF\FFH\83\C40]\C3ffff.\0F\1F\84\00\00\00\00\00UH\89\E5\F2\0F\11E\F8\89}\F4H\89u\E8\F2\0F\10E\F8\F2\0F\11E\E0\0F\BE}\E0\83\E7\0F\83\C70@\88\F8H\8Bu\E8HcM\F4\88\04\0E\0F\BE}\E0\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\01\0F\BE}\E1\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\02\0F\BE}\E1\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\03\0F\BE}\E2\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\04\0F\BE}\E2\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\05\0F\BE}\E3\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\06\0F\BE}\E3\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\07\0F\BE}\E4\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\08\0F\BE}\E4\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\09\0F\BE}\E5\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\0A\0F\BE}\E5\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\0B\0F\BE}\E6\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\0C\0F\BE}\E6\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\0D\0F\BE}\E7\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\0E\0F\BE}\E7\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\0F]\C3\0F\1FD\00\00AWAVI\89\D7AUATL\8D%\DE\0A \00UH\8D-\DE\0A \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8_\F2\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_401374__fini = internal constant %seg_401374__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_401380__rodata = internal constant %seg_401380__rodata_type <{ [48 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\96\A0@\00\00\00\00\00\A7\DF@\F1h\E3\88\B5\F8\E4>\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\7F", [7 x i8] c"%0.6f\0A\00", [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", [76 x i8] c"A[%d][%d] = %lf and B[%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00" }>
@seg_401438__eh_frame_hdr = internal constant %seg_401438__eh_frame_hdr_type <{ [172 x i8] c"\01\1B\03;\AC\00\00\00\14\00\00\00x\F1\FF\FF\08\01\00\00\08\F2\FF\FF\C8\00\00\008\F2\FF\FF\F4\00\00\00\F8\F2\FF\FF0\01\00\00x\F3\FF\FFL\01\00\00\88\F3\FF\FFh\01\00\00\A8\F3\FF\FF\84\01\00\00\B8\F3\FF\FF\A0\01\00\00\D8\F3\FF\FF\BC\01\00\00\18\F4\FF\FF\D8\01\00\00X\F4\FF\FF\F4\01\00\00\D8\F4\FF\FF\10\02\00\008\F6\FF\FF,\02\00\00\D8\F7\FF\FFH\02\00\00x\F9\FF\FFd\02\00\00\18\FB\FF\FF\80\02\00\00H\FC\FF\FF\9C\02\00\00\18\FD\FF\FF\B8\02\00\00\C8\FE\FF\FF\D8\02\00\008\FF\FF\FF \03\00\00" }>
@seg_4014e8__eh_frame = internal constant %seg_4014e8__eh_frame_type <{ [648 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\008\F1\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00<\F1\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\00h\F0\FF\FF\90\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00\C0\F1\FF\FFu\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00t\00\00\00$\F2\FF\FF\0B\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\90\00\00\00\18\F2\FF\FF\19\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\AC\00\00\00\1C\F2\FF\FF\09\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\C8\00\00\00\10\F2\FF\FF\14\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\E4\00\00\00\14\F2\FF\FF4\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\00\01\00\008\F2\FF\FF;\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\1C\01\00\00\5C\F2\FF\FFs\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\01\00\00\C0\F2\FF\FF\5C\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00T\01\00\00\04\F4\FF\FF\91\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00p\01\00\00\88\F5\FF\FF\9C\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\8C\01\00\00\0C\F7\FF\FF\9C\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\A8\01\00\00\90\F8\FF\FF%\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\C4\01\00\00\A4\F9\FF\FF\C3\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\1C\00\00\00\E0\01\00\00X\FA\FF\FF\AB\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00D\00\00\00\00\02\00\00\E8\FB\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00H\02\00\00\10\FC\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400720_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_4006f0___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602000__got_plt = internal global %seg_602000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64)* @free to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 ptrtoint (i64 (i64, i64)* @fputs to i64), i64 ptrtoint (i64 (i64, i64)* @calloc to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), i64 ptrtoint (i64 (i64)* @malloc to i64), i64 ptrtoint (i64 (i64)* @exit to i64), i64 ptrtoint (i64 (i64, i64, i64)* @posix_memalign to i64) }>
@seg_602058__data = internal global %seg_602058__data_type zeroinitializer
@seg_602080__bss = internal global %seg_602080__bss_type zeroinitializer
@polybench_papi_counters_threadid = global %polybench_papi_counters_threadid_type zeroinitializer
@polybench_program_total_flops = global %polybench_program_total_flops_type zeroinitializer
@polybench_c_end = global %polybench_c_end_type zeroinitializer
@polybench_t_end = global %polybench_t_end_type zeroinitializer
@polybench_t_start = global %polybench_t_start_type zeroinitializer
@polybench_c_start = global %polybench_c_start_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400720_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4006f0___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401370___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401300___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_flush_cache_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_alloc_data_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_print_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_start_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_stop_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_prepare_instruments_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

declare %struct.Memory* @sub_400590__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400c10_kernel_syr2k_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4007b0_polybench_prepare_instruments_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400890_xmalloc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400730_polybench_flush_cache_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400db0_kernel_syr2k_StrictFP_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400f50_check_FP_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_401080_print_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4007e0_rtclock_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_401150_print_element_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400680_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400a70_init_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @__remill_sync_hyper_call(%struct.State* dereferenceable(3376), %struct.Memory*, i32) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare zeroext i8 @__remill_read_memory_8(%struct.Memory*, i64) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_8(%struct.Memory*, i64, i8 zeroext) #2

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare zeroext i16 @__remill_read_memory_16(%struct.Memory*, i64) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_16(%struct.Memory*, i64, i16 zeroext) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare i32 @__remill_read_memory_32(%struct.Memory*, i64) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_32(%struct.Memory*, i64, i32) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare i64 @__remill_read_memory_64(%struct.Memory*, i64) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_64(%struct.Memory*, i64, i64) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare float @__remill_read_memory_f32(%struct.Memory*, i64) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare double @__remill_read_memory_f64(%struct.Memory*, i64) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare zeroext i8 @__remill_undefined_8() #2

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #4

; Function Attrs: nounwind readnone
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind readnone
declare i32 @llvm.cttz.i32(i32, i1) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.cttz.i64(i64, i1) #3

; Function Attrs: nounwind readnone
declare i32 @llvm.ctlz.i32(i32, i1) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.ctlz.i64(i64, i1) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind readnone
declare double @llvm.nearbyint.f64(double) #3

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind readnone
declare <4 x double> @llvm.nearbyint.v4f64(<4 x double>) #3

; Function Attrs: nounwind readnone
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #3

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #3

; Function Attrs: nounwind readnone
declare <4 x double> @llvm.trunc.v4f64(<4 x double>) #3

; Function Attrs: nounwind readnone
declare float @llvm.nearbyint.f32(float) #3

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.nearbyint.v4f32(<4 x float>) #3

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #3

; Function Attrs: nounwind readnone
declare float @llvm.trunc.f32(float) #3

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.trunc.v4f32(<4 x float>) #3

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_f32(%struct.Memory*, i64, float) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_f64(%struct.Memory*, i64, double) #2

; Function Attrs: nounwind readnone
declare zeroext i8 @__remill_read_io_port_8(%struct.Memory*, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare zeroext i16 @__remill_read_io_port_16(%struct.Memory*, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i32 @__remill_read_io_port_32(%struct.Memory*, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare %struct.Memory* @__remill_write_io_port_8(%struct.Memory*, i64, i8 zeroext) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare %struct.Memory* @__remill_write_io_port_16(%struct.Memory*, i64, i16 zeroext) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare %struct.Memory* @__remill_write_io_port_32(%struct.Memory*, i64, i32) local_unnamed_addr #5

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_barrier_store_load(%struct.Memory*) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_barrier_store_store(%struct.Memory*) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_barrier_load_load(%struct.Memory*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare i64 @__remill_undefined_64() #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare double @__remill_undefined_f64() #2

declare %struct.Memory* @__remill_compare_exchange_memory_8(%struct.Memory*, i64, i8* dereferenceable(1), i8 zeroext) #0

declare %struct.Memory* @__remill_compare_exchange_memory_16(%struct.Memory*, i64, i16* dereferenceable(2), i16 zeroext) #0

declare %struct.Memory* @__remill_compare_exchange_memory_32(%struct.Memory*, i64, i32* dereferenceable(4), i32) #0

declare %struct.Memory* @__remill_compare_exchange_memory_64(%struct.Memory*, i64, i64* dereferenceable(8), i64) #0

declare %struct.Memory* @__remill_compare_exchange_memory_128(%struct.Memory*, i64, i128* dereferenceable(16), i128* dereferenceable(16)) local_unnamed_addr #0

declare %struct.Memory* @__remill_fetch_and_add_8(%struct.Memory*, i64, i8* dereferenceable(1)) #0

declare %struct.Memory* @__remill_fetch_and_add_16(%struct.Memory*, i64, i16* dereferenceable(2)) #0

declare %struct.Memory* @__remill_fetch_and_add_32(%struct.Memory*, i64, i32* dereferenceable(4)) #0

declare %struct.Memory* @__remill_fetch_and_add_64(%struct.Memory*, i64, i64* dereferenceable(8)) #0

; Function Attrs: nounwind readnone
declare float @sqrtf(float) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare double @sqrt(double) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @fesetround(i32) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @fegetround() local_unnamed_addr #7

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare double @__remill_read_memory_f80(%struct.Memory*, i64) #2

; Function Attrs: nounwind
declare i32 @fetestexcept(i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @feraiseexcept(i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @feclearexcept(i32) local_unnamed_addr #6

; Function Attrs: nounwind readnone
declare i32 @__remill_fpu_exception_test_and_clear(i32, i32) #5

; Function Attrs: nounwind readnone
declare double @cos(double) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare double @sin(double) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare double @tan(double) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare double @atan(double) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare double @exp2(double) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare double @remainder(double, double) local_unnamed_addr #5

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_f80(%struct.Memory*, i64, double) #2

; Function Attrs: nounwind readnone
declare double @log2(double) local_unnamed_addr #5

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @__remill_basic_block(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #8 !dbg !1261 {
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
define void @__remill_intrinsics() #9 !dbg !2425 {
  ret void, !dbg !2427
}

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_barrier_load_store(%struct.Memory*) #10

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_atomic_begin(%struct.Memory*) #10

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_atomic_end(%struct.Memory*) #10

declare %struct.Memory* @__remill_fetch_and_sub_8(%struct.Memory*, i64, i8* dereferenceable(1)) #11

declare %struct.Memory* @__remill_fetch_and_sub_16(%struct.Memory*, i64, i16* dereferenceable(2)) #11

declare %struct.Memory* @__remill_fetch_and_sub_32(%struct.Memory*, i64, i32* dereferenceable(4)) #11

declare %struct.Memory* @__remill_fetch_and_sub_64(%struct.Memory*, i64, i64* dereferenceable(8)) #11

declare %struct.Memory* @__remill_fetch_and_or_8(%struct.Memory*, i64, i8* dereferenceable(1)) #11

declare %struct.Memory* @__remill_fetch_and_or_16(%struct.Memory*, i64, i16* dereferenceable(2)) #11

declare %struct.Memory* @__remill_fetch_and_or_32(%struct.Memory*, i64, i32* dereferenceable(4)) #11

declare %struct.Memory* @__remill_fetch_and_or_64(%struct.Memory*, i64, i64* dereferenceable(8)) #11

declare %struct.Memory* @__remill_fetch_and_and_8(%struct.Memory*, i64, i8* dereferenceable(1)) #11

declare %struct.Memory* @__remill_fetch_and_and_16(%struct.Memory*, i64, i16* dereferenceable(2)) #11

declare %struct.Memory* @__remill_fetch_and_and_32(%struct.Memory*, i64, i32* dereferenceable(4)) #11

declare %struct.Memory* @__remill_fetch_and_and_64(%struct.Memory*, i64, i64* dereferenceable(8)) #11

declare %struct.Memory* @__remill_fetch_and_xor_8(%struct.Memory*, i64, i8* dereferenceable(1)) #11

declare %struct.Memory* @__remill_fetch_and_xor_16(%struct.Memory*, i64, i16* dereferenceable(2)) #11

declare %struct.Memory* @__remill_fetch_and_xor_32(%struct.Memory*, i64, i32* dereferenceable(4)) #11

declare %struct.Memory* @__remill_fetch_and_xor_64(%struct.Memory*, i64, i64* dereferenceable(8)) #11

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #12

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_function_return(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #12

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_jump(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #12

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_missing_block(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #12

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_async_hyper_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #12

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare zeroext i16 @__remill_undefined_16() #10

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare i32 @__remill_undefined_32() #10

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare float @__remill_undefined_f32() #10

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @posix_memalign(i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fputs(i64, i64) #13

; Function Attrs: noinline
define %struct.Memory* @sub_400590__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400590:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = sub i64 %12, 8
  store i64 %15, i64* %RSP, align 8, !tbaa !2428
  %16 = icmp ult i64 %12, 8
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1, !tbaa !2432
  %19 = trunc i64 %15 to i32
  %20 = and i32 %19, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20) #16
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1, !tbaa !2446
  %26 = xor i64 8, %12
  %27 = xor i64 %26, %15
  %28 = lshr i64 %27, 4
  %29 = trunc i64 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1, !tbaa !2447
  %32 = icmp eq i64 %15, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1, !tbaa !2448
  %35 = lshr i64 %15, 63
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1, !tbaa !2449
  %38 = lshr i64 %12, 63
  %39 = xor i64 %35, %38
  %40 = add nuw nsw i64 %39, %38
  %41 = icmp eq i64 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1, !tbaa !2450
  %44 = load i64, i64* %PC
  %45 = add i64 %44, 7
  store i64 %45, i64* %PC
  %46 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_601ff0__got_type* @seg_601ff0__got to i64), i64 8) to i64*)
  store i64 %46, i64* %RAX, align 8, !tbaa !2428
  %47 = load i64, i64* %RAX
  %48 = load i64, i64* %RAX
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 3
  store i64 %50, i64* %PC
  %51 = and i64 %48, %47
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %52, align 1, !tbaa !2432
  %53 = trunc i64 %51 to i32
  %54 = and i32 %53, 255
  %55 = call i32 @llvm.ctpop.i32(i32 %54) #16
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %58, i8* %59, align 1, !tbaa !2446
  %60 = icmp eq i64 %51, 0
  %61 = zext i1 %60 to i8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %61, i8* %62, align 1, !tbaa !2448
  %63 = lshr i64 %51, 63
  %64 = trunc i64 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %64, i8* %65, align 1, !tbaa !2449
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %66, align 1, !tbaa !2450
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %67, align 1, !tbaa !2447
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 4
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 2
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 2
  store i64 %73, i64* %PC
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %75 = load i8, i8* %74, align 1, !tbaa !2448
  store i8 %75, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %77 = icmp ne i8 %75, 0
  %78 = select i1 %77, i64 %69, i64 %71
  store i64 %78, i64* %76, align 8, !tbaa !2428
  %79 = load i8, i8* %BRANCH_TAKEN
  %80 = icmp eq i8 %79, 1
  br i1 %80, label %block_4005a2, label %block_4005a0

block_4005a0:                                     ; preds = %block_400590
  %81 = load i64, i64* %RAX
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 2
  %84 = load i64, i64* %PC
  %85 = add i64 %84, 2
  store i64 %85, i64* %PC
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %87 = load i64, i64* %86, align 8, !tbaa !2428
  %88 = add i64 %87, -8
  %89 = inttoptr i64 %88 to i64*
  store i64 %83, i64* %89
  store i64 %88, i64* %86, align 8, !tbaa !2428
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %81, i64* %90, align 8, !tbaa !2428
  %91 = load i64, i64* %PC
  %92 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 %91, %struct.Memory* %2)
  br label %block_4005a2

block_4005a2:                                     ; preds = %block_4005a0, %block_400590
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400590 ], [ %92, %block_4005a0 ]
  %93 = load i64, i64* %RSP
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC
  %96 = add i64 8, %93
  store i64 %96, i64* %RSP, align 8, !tbaa !2428
  %97 = icmp ult i64 %96, %93
  %98 = icmp ult i64 %96, 8
  %99 = or i1 %97, %98
  %100 = zext i1 %99 to i8
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %100, i8* %101, align 1, !tbaa !2432
  %102 = trunc i64 %96 to i32
  %103 = and i32 %102, 255
  %104 = call i32 @llvm.ctpop.i32(i32 %103) #16
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %107, i8* %108, align 1, !tbaa !2446
  %109 = xor i64 8, %93
  %110 = xor i64 %109, %96
  %111 = lshr i64 %110, 4
  %112 = trunc i64 %111 to i8
  %113 = and i8 %112, 1
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %113, i8* %114, align 1, !tbaa !2447
  %115 = icmp eq i64 %96, 0
  %116 = zext i1 %115 to i8
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %116, i8* %117, align 1, !tbaa !2448
  %118 = lshr i64 %96, 63
  %119 = trunc i64 %118 to i8
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %119, i8* %120, align 1, !tbaa !2449
  %121 = lshr i64 %93, 63
  %122 = xor i64 %118, %121
  %123 = add nuw nsw i64 %122, %118
  %124 = icmp eq i64 %123, 2
  %125 = zext i1 %124 to i8
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %125, i8* %126, align 1, !tbaa !2450
  %127 = load i64, i64* %PC
  %128 = add i64 %127, 1
  store i64 %128, i64* %PC
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %131 = load i64, i64* %130, align 8, !tbaa !2428
  %132 = inttoptr i64 %131 to i64*
  %133 = load i64, i64* %132
  store i64 %133, i64* %129, align 8, !tbaa !2428
  %134 = add i64 %131, 8
  store i64 %134, i64* %130, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_400720_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400720:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 1
  store i64 %14, i64* %PC
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %16 = load i64, i64* %15, align 8, !tbaa !2428
  %17 = add i64 %16, -8
  %18 = inttoptr i64 %17 to i64*
  store i64 %12, i64* %18
  store i64 %17, i64* %15, align 8, !tbaa !2428
  %19 = load i64, i64* %RSP
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  store i64 %19, i64* %RBP, align 8, !tbaa !2428
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 1
  store i64 %23, i64* %PC
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %25 = load i64, i64* %24, align 8, !tbaa !2428
  %26 = add i64 %25, 8
  %27 = inttoptr i64 %25 to i64*
  %28 = load i64, i64* %27
  store i64 %28, i64* %RBP, align 8, !tbaa !2428
  store i64 %26, i64* %24, align 8, !tbaa !2428
  %29 = load i64, i64* %PC
  %30 = sub i64 %29, 117
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 2
  store i64 %32, i64* %PC
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %30, i64* %33, align 8, !tbaa !2428
  %34 = load i64, i64* %PC
  %35 = tail call %struct.Memory* @sub_4006b0_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
}

; Function Attrs: noinline
define %struct.Memory* @sub_400a70_init_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400a70:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %EDI = bitcast %union.anon* %14 to i32*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RAX = bitcast %union.anon* %17 to i64*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RCX = bitcast %union.anon* %20 to i64*
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.GPR, %struct.GPR* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.Reg, %struct.Reg* %22, i32 0, i32 0
  %RDX = bitcast %union.anon* %23 to i64*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.GPR, %struct.GPR* %24, i32 0, i32 13
  %26 = getelementptr inbounds %struct.Reg, %struct.Reg* %25, i32 0, i32 0
  %RSP = bitcast %union.anon* %26 to i64*
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 15
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %RBP = bitcast %union.anon* %29 to i64*
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %31 = getelementptr inbounds %struct.GPR, %struct.GPR* %30, i32 0, i32 17
  %32 = getelementptr inbounds %struct.Reg, %struct.Reg* %31, i32 0, i32 0
  %R8 = bitcast %union.anon* %32 to i64*
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %34 = getelementptr inbounds %struct.GPR, %struct.GPR* %33, i32 0, i32 19
  %35 = getelementptr inbounds %struct.Reg, %struct.Reg* %34, i32 0, i32 0
  %R9 = bitcast %union.anon* %35 to i64*
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %37 = getelementptr inbounds %struct.GPR, %struct.GPR* %36, i32 0, i32 21
  %38 = getelementptr inbounds %struct.Reg, %struct.Reg* %37, i32 0, i32 0
  %R10 = bitcast %union.anon* %38 to i64*
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %40 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %39, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %40 to %"class.std::bitset"*
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %42 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %41, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %42 to %"class.std::bitset"*
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %44 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %43, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %44 to %union.vec128_t*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %46 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %45, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %46 to %union.vec128_t*
  %47 = load i64, i64* %RBP
  %48 = load i64, i64* %PC
  %49 = add i64 %48, 1
  store i64 %49, i64* %PC
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %51 = load i64, i64* %50, align 8, !tbaa !2428
  %52 = add i64 %51, -8
  %53 = inttoptr i64 %52 to i64*
  store i64 %47, i64* %53
  store i64 %52, i64* %50, align 8, !tbaa !2428
  %54 = load i64, i64* %RSP
  %55 = load i64, i64* %PC
  %56 = add i64 %55, 3
  store i64 %56, i64* %PC
  store i64 %54, i64* %RBP, align 8, !tbaa !2428
  %57 = load i64, i64* %RBP
  %58 = add i64 %57, 24
  %59 = load i64, i64* %PC
  %60 = add i64 %59, 4
  store i64 %60, i64* %PC
  %61 = inttoptr i64 %58 to i64*
  %62 = load i64, i64* %61
  store i64 %62, i64* %RAX, align 8, !tbaa !2428
  %63 = load i64, i64* %RBP
  %64 = add i64 %63, 16
  %65 = load i64, i64* %PC
  %66 = add i64 %65, 4
  store i64 %66, i64* %PC
  %67 = inttoptr i64 %64 to i64*
  %68 = load i64, i64* %67
  store i64 %68, i64* %R10, align 8, !tbaa !2428
  %69 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 8
  store i64 %71, i64* %PC
  %72 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401380__rodata_type* @seg_401380__rodata to i64), i64 8) to double*)
  %73 = bitcast i8* %69 to double*
  store double %72, double* %73, align 1, !tbaa !2452
  %74 = getelementptr inbounds i8, i8* %69, i64 8
  %75 = bitcast i8* %74 to double*
  store double 0.000000e+00, double* %75, align 1, !tbaa !2452
  %76 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 8
  store i64 %78, i64* %PC
  %79 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401380__rodata_type* @seg_401380__rodata to i64), i64 16) to double*)
  %80 = bitcast i8* %76 to double*
  store double %79, double* %80, align 1, !tbaa !2452
  %81 = getelementptr inbounds i8, i8* %76, i64 8
  %82 = bitcast i8* %81 to double*
  store double 0.000000e+00, double* %82, align 1, !tbaa !2452
  %83 = load i64, i64* %RBP
  %84 = sub i64 %83, 4
  %85 = load i32, i32* %EDI
  %86 = zext i32 %85 to i64
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 3
  store i64 %88, i64* %PC
  %89 = inttoptr i64 %84 to i32*
  store i32 %85, i32* %89
  %90 = load i64, i64* %RBP
  %91 = sub i64 %90, 8
  %92 = load i32, i32* %ESI
  %93 = zext i32 %92 to i64
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 3
  store i64 %95, i64* %PC
  %96 = inttoptr i64 %91 to i32*
  store i32 %92, i32* %96
  %97 = load i64, i64* %RBP
  %98 = sub i64 %97, 16
  %99 = load i64, i64* %RDX
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 4
  store i64 %101, i64* %PC
  %102 = inttoptr i64 %98 to i64*
  store i64 %99, i64* %102
  %103 = load i64, i64* %RBP
  %104 = sub i64 %103, 24
  %105 = load i64, i64* %RCX
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 4
  store i64 %107, i64* %PC
  %108 = inttoptr i64 %104 to i64*
  store i64 %105, i64* %108
  %109 = load i64, i64* %RBP
  %110 = sub i64 %109, 32
  %111 = load i64, i64* %R8
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 4
  store i64 %113, i64* %PC
  %114 = inttoptr i64 %110 to i64*
  store i64 %111, i64* %114
  %115 = load i64, i64* %RBP
  %116 = sub i64 %115, 40
  %117 = load i64, i64* %R9
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 4
  store i64 %119, i64* %PC
  %120 = inttoptr i64 %116 to i64*
  store i64 %117, i64* %120
  %121 = load i64, i64* %RBP
  %122 = sub i64 %121, 16
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 4
  store i64 %124, i64* %PC
  %125 = inttoptr i64 %122 to i64*
  %126 = load i64, i64* %125
  store i64 %126, i64* %RCX, align 8, !tbaa !2428
  %127 = load i64, i64* %RCX
  %128 = bitcast %union.vec128_t* %XMM1 to i8*
  %129 = load i64, i64* %PC
  %130 = add i64 %129, 4
  store i64 %130, i64* %PC
  %131 = bitcast i8* %128 to double*
  %132 = load double, double* %131, align 1
  %133 = inttoptr i64 %127 to double*
  store double %132, double* %133
  %134 = load i64, i64* %RBP
  %135 = sub i64 %134, 24
  %136 = load i64, i64* %PC
  %137 = add i64 %136, 4
  store i64 %137, i64* %PC
  %138 = inttoptr i64 %135 to i64*
  %139 = load i64, i64* %138
  store i64 %139, i64* %RCX, align 8, !tbaa !2428
  %140 = load i64, i64* %RCX
  %141 = bitcast %union.vec128_t* %XMM0 to i8*
  %142 = load i64, i64* %PC
  %143 = add i64 %142, 4
  store i64 %143, i64* %PC
  %144 = bitcast i8* %141 to double*
  %145 = load double, double* %144, align 1
  %146 = inttoptr i64 %140 to double*
  store double %145, double* %146
  %147 = load i64, i64* %RBP
  %148 = sub i64 %147, 44
  %149 = load i64, i64* %PC
  %150 = add i64 %149, 7
  store i64 %150, i64* %PC
  %151 = inttoptr i64 %148 to i32*
  store i32 0, i32* %151
  %152 = load i64, i64* %RBP
  %153 = sub i64 %152, 56
  %154 = load i64, i64* %R10
  %155 = load i64, i64* %PC
  %156 = add i64 %155, 4
  store i64 %156, i64* %PC
  %157 = inttoptr i64 %153 to i64*
  store i64 %154, i64* %157
  %158 = load i64, i64* %RBP
  %159 = sub i64 %158, 64
  %160 = load i64, i64* %RAX
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 4
  store i64 %162, i64* %PC
  %163 = inttoptr i64 %159 to i64*
  store i64 %160, i64* %163
  br label %block_400ac1

block_400b7e:                                     ; preds = %block_400b72
  %164 = load i64, i64* %RBP
  %165 = sub i64 %164, 48
  %166 = load i64, i64* %PC
  %167 = add i64 %166, 7
  store i64 %167, i64* %PC
  %168 = inttoptr i64 %165 to i32*
  store i32 0, i32* %168
  br label %block_400b85

block_400ad4:                                     ; preds = %block_400ae0, %block_400acd
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.3, %block_400acd ], [ %MEMORY.0, %block_400ae0 ]
  %169 = load i64, i64* %RBP
  %170 = sub i64 %169, 48
  %171 = load i64, i64* %PC
  %172 = add i64 %171, 3
  store i64 %172, i64* %PC
  %173 = inttoptr i64 %170 to i32*
  %174 = load i32, i32* %173
  %175 = zext i32 %174 to i64
  store i64 %175, i64* %RAX, align 8, !tbaa !2428
  %176 = load i32, i32* %EAX
  %177 = zext i32 %176 to i64
  %178 = load i64, i64* %RBP
  %179 = sub i64 %178, 8
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 3
  store i64 %181, i64* %PC
  %182 = inttoptr i64 %179 to i32*
  %183 = load i32, i32* %182
  %184 = sub i32 %176, %183
  %185 = icmp ult i32 %176, %183
  %186 = zext i1 %185 to i8
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %186, i8* %187, align 1, !tbaa !2432
  %188 = and i32 %184, 255
  %189 = call i32 @llvm.ctpop.i32(i32 %188) #16
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %192, i8* %193, align 1, !tbaa !2446
  %194 = xor i32 %183, %176
  %195 = xor i32 %194, %184
  %196 = lshr i32 %195, 4
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %198, i8* %199, align 1, !tbaa !2447
  %200 = icmp eq i32 %184, 0
  %201 = zext i1 %200 to i8
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %201, i8* %202, align 1, !tbaa !2448
  %203 = lshr i32 %184, 31
  %204 = trunc i32 %203 to i8
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %204, i8* %205, align 1, !tbaa !2449
  %206 = lshr i32 %176, 31
  %207 = lshr i32 %183, 31
  %208 = xor i32 %207, %206
  %209 = xor i32 %203, %206
  %210 = add nuw nsw i32 %209, %208
  %211 = icmp eq i32 %210, 2
  %212 = zext i1 %211 to i8
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %212, i8* %213, align 1, !tbaa !2450
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 126
  %216 = load i64, i64* %PC
  %217 = add i64 %216, 6
  %218 = load i64, i64* %PC
  %219 = add i64 %218, 6
  store i64 %219, i64* %PC
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %221 = load i8, i8* %220, align 1, !tbaa !2449
  %222 = icmp ne i8 %221, 0
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %224 = load i8, i8* %223, align 1, !tbaa !2450
  %225 = icmp ne i8 %224, 0
  %226 = xor i1 %222, %225
  %227 = xor i1 %226, true
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %230 = select i1 %226, i64 %217, i64 %215
  store i64 %230, i64* %229, align 8, !tbaa !2428
  %231 = load i8, i8* %BRANCH_TAKEN
  %232 = icmp eq i8 %231, 1
  br i1 %232, label %block_400b58, label %block_400ae0

block_400b72:                                     ; preds = %block_400b6b, %block_400bec
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.3, %block_400b6b ], [ %MEMORY.2, %block_400bec ]
  %233 = load i64, i64* %RBP
  %234 = sub i64 %233, 44
  %235 = load i64, i64* %PC
  %236 = add i64 %235, 3
  store i64 %236, i64* %PC
  %237 = inttoptr i64 %234 to i32*
  %238 = load i32, i32* %237
  %239 = zext i32 %238 to i64
  store i64 %239, i64* %RAX, align 8, !tbaa !2428
  %240 = load i32, i32* %EAX
  %241 = zext i32 %240 to i64
  %242 = load i64, i64* %RBP
  %243 = sub i64 %242, 4
  %244 = load i64, i64* %PC
  %245 = add i64 %244, 3
  store i64 %245, i64* %PC
  %246 = inttoptr i64 %243 to i32*
  %247 = load i32, i32* %246
  %248 = sub i32 %240, %247
  %249 = icmp ult i32 %240, %247
  %250 = zext i1 %249 to i8
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %250, i8* %251, align 1, !tbaa !2432
  %252 = and i32 %248, 255
  %253 = call i32 @llvm.ctpop.i32(i32 %252) #16
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = xor i8 %255, 1
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %256, i8* %257, align 1, !tbaa !2446
  %258 = xor i32 %247, %240
  %259 = xor i32 %258, %248
  %260 = lshr i32 %259, 4
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %262, i8* %263, align 1, !tbaa !2447
  %264 = icmp eq i32 %248, 0
  %265 = zext i1 %264 to i8
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %265, i8* %266, align 1, !tbaa !2448
  %267 = lshr i32 %248, 31
  %268 = trunc i32 %267 to i8
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %268, i8* %269, align 1, !tbaa !2449
  %270 = lshr i32 %240, 31
  %271 = lshr i32 %247, 31
  %272 = xor i32 %271, %270
  %273 = xor i32 %267, %270
  %274 = add nuw nsw i32 %273, %272
  %275 = icmp eq i32 %274, 2
  %276 = zext i1 %275 to i8
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %276, i8* %277, align 1, !tbaa !2450
  %278 = load i64, i64* %PC
  %279 = add i64 %278, 135
  %280 = load i64, i64* %PC
  %281 = add i64 %280, 6
  %282 = load i64, i64* %PC
  %283 = add i64 %282, 6
  store i64 %283, i64* %PC
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %285 = load i8, i8* %284, align 1, !tbaa !2449
  %286 = icmp ne i8 %285, 0
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %288 = load i8, i8* %287, align 1, !tbaa !2450
  %289 = icmp ne i8 %288, 0
  %290 = xor i1 %286, %289
  %291 = xor i1 %290, true
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %294 = select i1 %290, i64 %281, i64 %279
  store i64 %294, i64* %293, align 8, !tbaa !2428
  %295 = load i8, i8* %BRANCH_TAKEN
  %296 = icmp eq i8 %295, 1
  br i1 %296, label %block_400bff, label %block_400b7e

block_400b58:                                     ; preds = %block_400ad4
  %297 = load i64, i64* %PC
  %298 = add i64 %297, 5
  %299 = load i64, i64* %PC
  %300 = add i64 %299, 5
  store i64 %300, i64* %PC
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %298, i64* %301, align 8, !tbaa !2428
  %302 = load i64, i64* %RBP
  %303 = sub i64 %302, 44
  %304 = load i64, i64* %PC
  %305 = add i64 %304, 3
  store i64 %305, i64* %PC
  %306 = inttoptr i64 %303 to i32*
  %307 = load i32, i32* %306
  %308 = zext i32 %307 to i64
  store i64 %308, i64* %RAX, align 8, !tbaa !2428
  %309 = load i64, i64* %RAX
  %310 = load i64, i64* %PC
  %311 = add i64 %310, 3
  store i64 %311, i64* %PC
  %312 = trunc i64 %309 to i32
  %313 = add i32 1, %312
  %314 = zext i32 %313 to i64
  store i64 %314, i64* %RAX, align 8, !tbaa !2428
  %315 = icmp ult i32 %313, %312
  %316 = icmp ult i32 %313, 1
  %317 = or i1 %315, %316
  %318 = zext i1 %317 to i8
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %318, i8* %319, align 1, !tbaa !2432
  %320 = and i32 %313, 255
  %321 = call i32 @llvm.ctpop.i32(i32 %320) #16
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  %324 = xor i8 %323, 1
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %324, i8* %325, align 1, !tbaa !2446
  %326 = xor i64 1, %309
  %327 = trunc i64 %326 to i32
  %328 = xor i32 %327, %313
  %329 = lshr i32 %328, 4
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %331, i8* %332, align 1, !tbaa !2447
  %333 = icmp eq i32 %313, 0
  %334 = zext i1 %333 to i8
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %334, i8* %335, align 1, !tbaa !2448
  %336 = lshr i32 %313, 31
  %337 = trunc i32 %336 to i8
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %337, i8* %338, align 1, !tbaa !2449
  %339 = lshr i32 %312, 31
  %340 = xor i32 %336, %339
  %341 = add nuw nsw i32 %340, %336
  %342 = icmp eq i32 %341, 2
  %343 = zext i1 %342 to i8
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %343, i8* %344, align 1, !tbaa !2450
  %345 = load i64, i64* %RBP
  %346 = sub i64 %345, 44
  %347 = load i32, i32* %EAX
  %348 = zext i32 %347 to i64
  %349 = load i64, i64* %PC
  %350 = add i64 %349, 3
  store i64 %350, i64* %PC
  %351 = inttoptr i64 %346 to i32*
  store i32 %347, i32* %351
  %352 = load i64, i64* %PC
  %353 = sub i64 %352, 165
  %354 = load i64, i64* %PC
  %355 = add i64 %354, 5
  store i64 %355, i64* %PC
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %353, i64* %356, align 8, !tbaa !2428
  br label %block_400ac1

block_400bff:                                     ; preds = %block_400b72
  %357 = load i64, i64* %PC
  %358 = add i64 %357, 1
  store i64 %358, i64* %PC
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %360 = load i64, i64* %359, align 8, !tbaa !2428
  %361 = add i64 %360, 8
  %362 = inttoptr i64 %360 to i64*
  %363 = load i64, i64* %362
  store i64 %363, i64* %RBP, align 8, !tbaa !2428
  store i64 %361, i64* %359, align 8, !tbaa !2428
  %364 = load i64, i64* %PC
  %365 = add i64 %364, 1
  store i64 %365, i64* %PC
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %368 = load i64, i64* %367, align 8, !tbaa !2428
  %369 = inttoptr i64 %368 to i64*
  %370 = load i64, i64* %369
  store i64 %370, i64* %366, align 8, !tbaa !2428
  %371 = add i64 %368, 8
  store i64 %371, i64* %367, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_400acd:                                     ; preds = %block_400ac1
  %372 = sub i64 %877, 48
  %373 = load i64, i64* %PC
  %374 = add i64 %373, 7
  store i64 %374, i64* %PC
  %375 = inttoptr i64 %372 to i32*
  store i32 0, i32* %375
  br label %block_400ad4

block_400bec:                                     ; preds = %block_400b85
  %376 = load i64, i64* %PC
  %377 = add i64 %376, 5
  %378 = load i64, i64* %PC
  %379 = add i64 %378, 5
  store i64 %379, i64* %PC
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %377, i64* %380, align 8, !tbaa !2428
  %381 = load i64, i64* %RBP
  %382 = sub i64 %381, 44
  %383 = load i64, i64* %PC
  %384 = add i64 %383, 3
  store i64 %384, i64* %PC
  %385 = inttoptr i64 %382 to i32*
  %386 = load i32, i32* %385
  %387 = zext i32 %386 to i64
  store i64 %387, i64* %RAX, align 8, !tbaa !2428
  %388 = load i64, i64* %RAX
  %389 = load i64, i64* %PC
  %390 = add i64 %389, 3
  store i64 %390, i64* %PC
  %391 = trunc i64 %388 to i32
  %392 = add i32 1, %391
  %393 = zext i32 %392 to i64
  store i64 %393, i64* %RAX, align 8, !tbaa !2428
  %394 = icmp ult i32 %392, %391
  %395 = icmp ult i32 %392, 1
  %396 = or i1 %394, %395
  %397 = zext i1 %396 to i8
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %397, i8* %398, align 1, !tbaa !2432
  %399 = and i32 %392, 255
  %400 = call i32 @llvm.ctpop.i32(i32 %399) #16
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  %403 = xor i8 %402, 1
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %403, i8* %404, align 1, !tbaa !2446
  %405 = xor i64 1, %388
  %406 = trunc i64 %405 to i32
  %407 = xor i32 %406, %392
  %408 = lshr i32 %407, 4
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %410, i8* %411, align 1, !tbaa !2447
  %412 = icmp eq i32 %392, 0
  %413 = zext i1 %412 to i8
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %413, i8* %414, align 1, !tbaa !2448
  %415 = lshr i32 %392, 31
  %416 = trunc i32 %415 to i8
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %416, i8* %417, align 1, !tbaa !2449
  %418 = lshr i32 %391, 31
  %419 = xor i32 %415, %418
  %420 = add nuw nsw i32 %419, %415
  %421 = icmp eq i32 %420, 2
  %422 = zext i1 %421 to i8
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %422, i8* %423, align 1, !tbaa !2450
  %424 = load i64, i64* %RBP
  %425 = sub i64 %424, 44
  %426 = load i32, i32* %EAX
  %427 = zext i32 %426 to i64
  %428 = load i64, i64* %PC
  %429 = add i64 %428, 3
  store i64 %429, i64* %PC
  %430 = inttoptr i64 %425 to i32*
  store i32 %426, i32* %430
  %431 = load i64, i64* %PC
  %432 = sub i64 %431, 136
  %433 = load i64, i64* %PC
  %434 = add i64 %433, 5
  store i64 %434, i64* %PC
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %432, i64* %435, align 8, !tbaa !2428
  br label %block_400b72

block_400b91:                                     ; preds = %block_400b85
  %436 = load i64, i64* %RBP
  %437 = sub i64 %436, 44
  %438 = load i64, i64* %PC
  %439 = add i64 %438, 3
  store i64 %439, i64* %PC
  %440 = inttoptr i64 %437 to i32*
  %441 = load i32, i32* %440
  %442 = zext i32 %441 to i64
  store i64 %442, i64* %RAX, align 8, !tbaa !2428
  %443 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %444 = load i32, i32* %EAX
  %445 = zext i32 %444 to i64
  %446 = load i64, i64* %PC
  %447 = add i64 %446, 4
  store i64 %447, i64* %PC
  %448 = sitofp i32 %444 to double
  %449 = bitcast i8* %443 to double*
  store double %448, double* %449, align 1, !tbaa !2452
  %450 = load i64, i64* %RBP
  %451 = sub i64 %450, 48
  %452 = load i64, i64* %PC
  %453 = add i64 %452, 3
  store i64 %453, i64* %PC
  %454 = inttoptr i64 %451 to i32*
  %455 = load i32, i32* %454
  %456 = zext i32 %455 to i64
  store i64 %456, i64* %RAX, align 8, !tbaa !2428
  %457 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %458 = load i32, i32* %EAX
  %459 = zext i32 %458 to i64
  %460 = load i64, i64* %PC
  %461 = add i64 %460, 4
  store i64 %461, i64* %PC
  %462 = sitofp i32 %458 to double
  %463 = bitcast i8* %457 to double*
  store double %462, double* %463, align 1, !tbaa !2452
  %464 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %465 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %466 = bitcast %union.vec128_t* %XMM1 to i8*
  %467 = load i64, i64* %PC
  %468 = add i64 %467, 4
  store i64 %468, i64* %PC
  %469 = bitcast i8* %465 to double*
  %470 = load double, double* %469, align 1
  %471 = getelementptr inbounds i8, i8* %465, i64 8
  %472 = bitcast i8* %471 to i64*
  %473 = load i64, i64* %472, align 1
  %474 = bitcast i8* %466 to double*
  %475 = load double, double* %474, align 1
  %476 = fmul double %470, %475
  %477 = bitcast i8* %464 to double*
  store double %476, double* %477, align 1, !tbaa !2452
  %478 = getelementptr inbounds i8, i8* %464, i64 8
  %479 = bitcast i8* %478 to i64*
  store i64 %473, i64* %479, align 1, !tbaa !2452
  %480 = load i64, i64* %RBP
  %481 = sub i64 %480, 4
  %482 = load i64, i64* %PC
  %483 = add i64 %482, 3
  store i64 %483, i64* %PC
  %484 = inttoptr i64 %481 to i32*
  %485 = load i32, i32* %484
  %486 = zext i32 %485 to i64
  store i64 %486, i64* %RAX, align 8, !tbaa !2428
  %487 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %488 = load i32, i32* %EAX
  %489 = zext i32 %488 to i64
  %490 = load i64, i64* %PC
  %491 = add i64 %490, 4
  store i64 %491, i64* %PC
  %492 = sitofp i32 %488 to double
  %493 = bitcast i8* %487 to double*
  store double %492, double* %493, align 1, !tbaa !2452
  %494 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %495 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %496 = bitcast %union.vec128_t* %XMM1 to i8*
  %497 = load i64, i64* %PC
  %498 = add i64 %497, 4
  store i64 %498, i64* %PC
  %499 = bitcast i8* %495 to double*
  %500 = load double, double* %499, align 1
  %501 = getelementptr inbounds i8, i8* %495, i64 8
  %502 = bitcast i8* %501 to i64*
  %503 = load i64, i64* %502, align 1
  %504 = bitcast i8* %496 to double*
  %505 = load double, double* %504, align 1
  %506 = fdiv double %500, %505
  %507 = bitcast i8* %494 to double*
  store double %506, double* %507, align 1, !tbaa !2452
  %508 = getelementptr inbounds i8, i8* %494, i64 8
  %509 = bitcast i8* %508 to i64*
  store i64 %503, i64* %509, align 1, !tbaa !2452
  %510 = load i64, i64* %RBP
  %511 = sub i64 %510, 32
  %512 = load i64, i64* %PC
  %513 = add i64 %512, 4
  store i64 %513, i64* %PC
  %514 = inttoptr i64 %511 to i64*
  %515 = load i64, i64* %514
  store i64 %515, i64* %RCX, align 8, !tbaa !2428
  %516 = load i64, i64* %RBP
  %517 = sub i64 %516, 44
  %518 = load i64, i64* %PC
  %519 = add i64 %518, 4
  store i64 %519, i64* %PC
  %520 = inttoptr i64 %517 to i32*
  %521 = load i32, i32* %520
  %522 = sext i32 %521 to i64
  store i64 %522, i64* %RDX, align 8, !tbaa !2428
  %523 = load i64, i64* %RDX
  %524 = load i64, i64* %PC
  %525 = add i64 %524, 4
  store i64 %525, i64* %PC
  %526 = shl i64 %523, 12
  %527 = icmp slt i64 %526, 0
  %528 = shl i64 %526, 1
  store i64 %528, i64* %RDX, align 8, !tbaa !2428
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %530 = zext i1 %527 to i8
  store i8 %530, i8* %529, align 1, !tbaa !2451
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %532 = trunc i64 %528 to i32
  %533 = and i32 %532, 254
  %534 = call i32 @llvm.ctpop.i32(i32 %533) #16
  %535 = trunc i32 %534 to i8
  %536 = and i8 %535, 1
  %537 = xor i8 %536, 1
  store i8 %537, i8* %531, align 1, !tbaa !2451
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %538, align 1, !tbaa !2451
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %540 = icmp eq i64 %528, 0
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %539, align 1, !tbaa !2451
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %543 = lshr i64 %528, 63
  %544 = trunc i64 %543 to i8
  store i8 %544, i8* %542, align 1, !tbaa !2451
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %545, align 1, !tbaa !2451
  %546 = load i64, i64* %RCX
  %547 = load i64, i64* %RDX
  %548 = load i64, i64* %PC
  %549 = add i64 %548, 3
  store i64 %549, i64* %PC
  %550 = add i64 %547, %546
  store i64 %550, i64* %RCX, align 8, !tbaa !2428
  %551 = icmp ult i64 %550, %546
  %552 = icmp ult i64 %550, %547
  %553 = or i1 %551, %552
  %554 = zext i1 %553 to i8
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %554, i8* %555, align 1, !tbaa !2432
  %556 = trunc i64 %550 to i32
  %557 = and i32 %556, 255
  %558 = call i32 @llvm.ctpop.i32(i32 %557) #16
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  %561 = xor i8 %560, 1
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %561, i8* %562, align 1, !tbaa !2446
  %563 = xor i64 %547, %546
  %564 = xor i64 %563, %550
  %565 = lshr i64 %564, 4
  %566 = trunc i64 %565 to i8
  %567 = and i8 %566, 1
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %567, i8* %568, align 1, !tbaa !2447
  %569 = icmp eq i64 %550, 0
  %570 = zext i1 %569 to i8
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %570, i8* %571, align 1, !tbaa !2448
  %572 = lshr i64 %550, 63
  %573 = trunc i64 %572 to i8
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %573, i8* %574, align 1, !tbaa !2449
  %575 = lshr i64 %546, 63
  %576 = lshr i64 %547, 63
  %577 = xor i64 %572, %575
  %578 = xor i64 %572, %576
  %579 = add nuw nsw i64 %577, %578
  %580 = icmp eq i64 %579, 2
  %581 = zext i1 %580 to i8
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %581, i8* %582, align 1, !tbaa !2450
  %583 = load i64, i64* %RBP
  %584 = sub i64 %583, 48
  %585 = load i64, i64* %PC
  %586 = add i64 %585, 4
  store i64 %586, i64* %PC
  %587 = inttoptr i64 %584 to i32*
  %588 = load i32, i32* %587
  %589 = sext i32 %588 to i64
  store i64 %589, i64* %RDX, align 8, !tbaa !2428
  %590 = load i64, i64* %RCX
  %591 = load i64, i64* %RDX
  %592 = mul i64 %591, 8
  %593 = add i64 %592, %590
  %594 = bitcast %union.vec128_t* %XMM0 to i8*
  %595 = load i64, i64* %PC
  %596 = add i64 %595, 5
  store i64 %596, i64* %PC
  %597 = bitcast i8* %594 to double*
  %598 = load double, double* %597, align 1
  %599 = inttoptr i64 %593 to double*
  store double %598, double* %599
  %600 = load i64, i64* %RBP
  %601 = sub i64 %600, 40
  %602 = load i64, i64* %PC
  %603 = add i64 %602, 4
  store i64 %603, i64* %PC
  %604 = inttoptr i64 %601 to i64*
  %605 = load i64, i64* %604
  store i64 %605, i64* %RCX, align 8, !tbaa !2428
  %606 = load i64, i64* %RBP
  %607 = sub i64 %606, 44
  %608 = load i64, i64* %PC
  %609 = add i64 %608, 4
  store i64 %609, i64* %PC
  %610 = inttoptr i64 %607 to i32*
  %611 = load i32, i32* %610
  %612 = sext i32 %611 to i64
  store i64 %612, i64* %RDX, align 8, !tbaa !2428
  %613 = load i64, i64* %RDX
  %614 = load i64, i64* %PC
  %615 = add i64 %614, 4
  store i64 %615, i64* %PC
  %616 = shl i64 %613, 12
  %617 = icmp slt i64 %616, 0
  %618 = shl i64 %616, 1
  store i64 %618, i64* %RDX, align 8, !tbaa !2428
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %620 = zext i1 %617 to i8
  store i8 %620, i8* %619, align 1, !tbaa !2451
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %622 = trunc i64 %618 to i32
  %623 = and i32 %622, 254
  %624 = call i32 @llvm.ctpop.i32(i32 %623) #16
  %625 = trunc i32 %624 to i8
  %626 = and i8 %625, 1
  %627 = xor i8 %626, 1
  store i8 %627, i8* %621, align 1, !tbaa !2451
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %628, align 1, !tbaa !2451
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %630 = icmp eq i64 %618, 0
  %631 = zext i1 %630 to i8
  store i8 %631, i8* %629, align 1, !tbaa !2451
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %633 = lshr i64 %618, 63
  %634 = trunc i64 %633 to i8
  store i8 %634, i8* %632, align 1, !tbaa !2451
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %635, align 1, !tbaa !2451
  %636 = load i64, i64* %RCX
  %637 = load i64, i64* %RDX
  %638 = load i64, i64* %PC
  %639 = add i64 %638, 3
  store i64 %639, i64* %PC
  %640 = add i64 %637, %636
  store i64 %640, i64* %RCX, align 8, !tbaa !2428
  %641 = icmp ult i64 %640, %636
  %642 = icmp ult i64 %640, %637
  %643 = or i1 %641, %642
  %644 = zext i1 %643 to i8
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %644, i8* %645, align 1, !tbaa !2432
  %646 = trunc i64 %640 to i32
  %647 = and i32 %646, 255
  %648 = call i32 @llvm.ctpop.i32(i32 %647) #16
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = xor i8 %650, 1
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %651, i8* %652, align 1, !tbaa !2446
  %653 = xor i64 %637, %636
  %654 = xor i64 %653, %640
  %655 = lshr i64 %654, 4
  %656 = trunc i64 %655 to i8
  %657 = and i8 %656, 1
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %657, i8* %658, align 1, !tbaa !2447
  %659 = icmp eq i64 %640, 0
  %660 = zext i1 %659 to i8
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %660, i8* %661, align 1, !tbaa !2448
  %662 = lshr i64 %640, 63
  %663 = trunc i64 %662 to i8
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %663, i8* %664, align 1, !tbaa !2449
  %665 = lshr i64 %636, 63
  %666 = lshr i64 %637, 63
  %667 = xor i64 %662, %665
  %668 = xor i64 %662, %666
  %669 = add nuw nsw i64 %667, %668
  %670 = icmp eq i64 %669, 2
  %671 = zext i1 %670 to i8
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %671, i8* %672, align 1, !tbaa !2450
  %673 = load i64, i64* %RBP
  %674 = sub i64 %673, 48
  %675 = load i64, i64* %PC
  %676 = add i64 %675, 4
  store i64 %676, i64* %PC
  %677 = inttoptr i64 %674 to i32*
  %678 = load i32, i32* %677
  %679 = sext i32 %678 to i64
  store i64 %679, i64* %RDX, align 8, !tbaa !2428
  %680 = load i64, i64* %RCX
  %681 = load i64, i64* %RDX
  %682 = mul i64 %681, 8
  %683 = add i64 %682, %680
  %684 = bitcast %union.vec128_t* %XMM0 to i8*
  %685 = load i64, i64* %PC
  %686 = add i64 %685, 5
  store i64 %686, i64* %PC
  %687 = bitcast i8* %684 to double*
  %688 = load double, double* %687, align 1
  %689 = inttoptr i64 %683 to double*
  store double %688, double* %689
  %690 = load i64, i64* %RBP
  %691 = sub i64 %690, 48
  %692 = load i64, i64* %PC
  %693 = add i64 %692, 3
  store i64 %693, i64* %PC
  %694 = inttoptr i64 %691 to i32*
  %695 = load i32, i32* %694
  %696 = zext i32 %695 to i64
  store i64 %696, i64* %RAX, align 8, !tbaa !2428
  %697 = load i64, i64* %RAX
  %698 = load i64, i64* %PC
  %699 = add i64 %698, 3
  store i64 %699, i64* %PC
  %700 = trunc i64 %697 to i32
  %701 = add i32 1, %700
  %702 = zext i32 %701 to i64
  store i64 %702, i64* %RAX, align 8, !tbaa !2428
  %703 = icmp ult i32 %701, %700
  %704 = icmp ult i32 %701, 1
  %705 = or i1 %703, %704
  %706 = zext i1 %705 to i8
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %706, i8* %707, align 1, !tbaa !2432
  %708 = and i32 %701, 255
  %709 = call i32 @llvm.ctpop.i32(i32 %708) #16
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  %712 = xor i8 %711, 1
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %712, i8* %713, align 1, !tbaa !2446
  %714 = xor i64 1, %697
  %715 = trunc i64 %714 to i32
  %716 = xor i32 %715, %701
  %717 = lshr i32 %716, 4
  %718 = trunc i32 %717 to i8
  %719 = and i8 %718, 1
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %719, i8* %720, align 1, !tbaa !2447
  %721 = icmp eq i32 %701, 0
  %722 = zext i1 %721 to i8
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %722, i8* %723, align 1, !tbaa !2448
  %724 = lshr i32 %701, 31
  %725 = trunc i32 %724 to i8
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %725, i8* %726, align 1, !tbaa !2449
  %727 = lshr i32 %700, 31
  %728 = xor i32 %724, %727
  %729 = add nuw nsw i32 %728, %724
  %730 = icmp eq i32 %729, 2
  %731 = zext i1 %730 to i8
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %731, i8* %732, align 1, !tbaa !2450
  %733 = load i64, i64* %RBP
  %734 = sub i64 %733, 48
  %735 = load i32, i32* %EAX
  %736 = zext i32 %735 to i64
  %737 = load i64, i64* %PC
  %738 = add i64 %737, 3
  store i64 %738, i64* %PC
  %739 = inttoptr i64 %734 to i32*
  store i32 %735, i32* %739
  %740 = load i64, i64* %PC
  %741 = sub i64 %740, 98
  %742 = load i64, i64* %PC
  %743 = add i64 %742, 5
  store i64 %743, i64* %PC
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %741, i64* %744, align 8, !tbaa !2428
  br label %block_400b85

block_400b85:                                     ; preds = %block_400b91, %block_400b7e
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_400b7e ], [ %MEMORY.2, %block_400b91 ]
  %745 = load i64, i64* %RBP
  %746 = sub i64 %745, 48
  %747 = load i64, i64* %PC
  %748 = add i64 %747, 3
  store i64 %748, i64* %PC
  %749 = inttoptr i64 %746 to i32*
  %750 = load i32, i32* %749
  %751 = zext i32 %750 to i64
  store i64 %751, i64* %RAX, align 8, !tbaa !2428
  %752 = load i32, i32* %EAX
  %753 = zext i32 %752 to i64
  %754 = load i64, i64* %RBP
  %755 = sub i64 %754, 4
  %756 = load i64, i64* %PC
  %757 = add i64 %756, 3
  store i64 %757, i64* %PC
  %758 = inttoptr i64 %755 to i32*
  %759 = load i32, i32* %758
  %760 = sub i32 %752, %759
  %761 = icmp ult i32 %752, %759
  %762 = zext i1 %761 to i8
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %762, i8* %763, align 1, !tbaa !2432
  %764 = and i32 %760, 255
  %765 = call i32 @llvm.ctpop.i32(i32 %764) #16
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  %768 = xor i8 %767, 1
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %768, i8* %769, align 1, !tbaa !2446
  %770 = xor i32 %759, %752
  %771 = xor i32 %770, %760
  %772 = lshr i32 %771, 4
  %773 = trunc i32 %772 to i8
  %774 = and i8 %773, 1
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %774, i8* %775, align 1, !tbaa !2447
  %776 = icmp eq i32 %760, 0
  %777 = zext i1 %776 to i8
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %777, i8* %778, align 1, !tbaa !2448
  %779 = lshr i32 %760, 31
  %780 = trunc i32 %779 to i8
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %780, i8* %781, align 1, !tbaa !2449
  %782 = lshr i32 %752, 31
  %783 = lshr i32 %759, 31
  %784 = xor i32 %783, %782
  %785 = xor i32 %779, %782
  %786 = add nuw nsw i32 %785, %784
  %787 = icmp eq i32 %786, 2
  %788 = zext i1 %787 to i8
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %788, i8* %789, align 1, !tbaa !2450
  %790 = load i64, i64* %PC
  %791 = add i64 %790, 97
  %792 = load i64, i64* %PC
  %793 = add i64 %792, 6
  %794 = load i64, i64* %PC
  %795 = add i64 %794, 6
  store i64 %795, i64* %PC
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %797 = load i8, i8* %796, align 1, !tbaa !2449
  %798 = icmp ne i8 %797, 0
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %800 = load i8, i8* %799, align 1, !tbaa !2450
  %801 = icmp ne i8 %800, 0
  %802 = xor i1 %798, %801
  %803 = xor i1 %802, true
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %806 = select i1 %802, i64 %793, i64 %791
  store i64 %806, i64* %805, align 8, !tbaa !2428
  %807 = load i8, i8* %BRANCH_TAKEN
  %808 = icmp eq i8 %807, 1
  br i1 %808, label %block_400bec, label %block_400b91

block_400b6b:                                     ; preds = %block_400ac1
  %809 = sub i64 %877, 44
  %810 = load i64, i64* %PC
  %811 = add i64 %810, 7
  store i64 %811, i64* %PC
  %812 = inttoptr i64 %809 to i32*
  store i32 0, i32* %812
  br label %block_400b72

block_400ac1:                                     ; preds = %block_400b58, %block_400a70
  %MEMORY.3 = phi %struct.Memory* [ %2, %block_400a70 ], [ %MEMORY.0, %block_400b58 ]
  %813 = load i64, i64* %RBP
  %814 = sub i64 %813, 44
  %815 = load i64, i64* %PC
  %816 = add i64 %815, 3
  store i64 %816, i64* %PC
  %817 = inttoptr i64 %814 to i32*
  %818 = load i32, i32* %817
  %819 = zext i32 %818 to i64
  store i64 %819, i64* %RAX, align 8, !tbaa !2428
  %820 = load i32, i32* %EAX
  %821 = zext i32 %820 to i64
  %822 = load i64, i64* %RBP
  %823 = sub i64 %822, 4
  %824 = load i64, i64* %PC
  %825 = add i64 %824, 3
  store i64 %825, i64* %PC
  %826 = inttoptr i64 %823 to i32*
  %827 = load i32, i32* %826
  %828 = sub i32 %820, %827
  %829 = icmp ult i32 %820, %827
  %830 = zext i1 %829 to i8
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %830, i8* %831, align 1, !tbaa !2432
  %832 = and i32 %828, 255
  %833 = call i32 @llvm.ctpop.i32(i32 %832) #16
  %834 = trunc i32 %833 to i8
  %835 = and i8 %834, 1
  %836 = xor i8 %835, 1
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %836, i8* %837, align 1, !tbaa !2446
  %838 = xor i32 %827, %820
  %839 = xor i32 %838, %828
  %840 = lshr i32 %839, 4
  %841 = trunc i32 %840 to i8
  %842 = and i8 %841, 1
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %842, i8* %843, align 1, !tbaa !2447
  %844 = icmp eq i32 %828, 0
  %845 = zext i1 %844 to i8
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %845, i8* %846, align 1, !tbaa !2448
  %847 = lshr i32 %828, 31
  %848 = trunc i32 %847 to i8
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %848, i8* %849, align 1, !tbaa !2449
  %850 = lshr i32 %820, 31
  %851 = lshr i32 %827, 31
  %852 = xor i32 %851, %850
  %853 = xor i32 %847, %850
  %854 = add nuw nsw i32 %853, %852
  %855 = icmp eq i32 %854, 2
  %856 = zext i1 %855 to i8
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %856, i8* %857, align 1, !tbaa !2450
  %858 = load i64, i64* %PC
  %859 = add i64 %858, 164
  %860 = load i64, i64* %PC
  %861 = add i64 %860, 6
  %862 = load i64, i64* %PC
  %863 = add i64 %862, 6
  store i64 %863, i64* %PC
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %865 = load i8, i8* %864, align 1, !tbaa !2449
  %866 = icmp ne i8 %865, 0
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %868 = load i8, i8* %867, align 1, !tbaa !2450
  %869 = icmp ne i8 %868, 0
  %870 = xor i1 %866, %869
  %871 = xor i1 %870, true
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %874 = select i1 %870, i64 %861, i64 %859
  store i64 %874, i64* %873, align 8, !tbaa !2428
  %875 = load i8, i8* %BRANCH_TAKEN
  %876 = icmp eq i8 %875, 1
  %877 = load i64, i64* %RBP
  br i1 %876, label %block_400b6b, label %block_400acd

block_400ae0:                                     ; preds = %block_400ad4
  %878 = load i64, i64* %RBP
  %879 = sub i64 %878, 44
  %880 = load i64, i64* %PC
  %881 = add i64 %880, 3
  store i64 %881, i64* %PC
  %882 = inttoptr i64 %879 to i32*
  %883 = load i32, i32* %882
  %884 = zext i32 %883 to i64
  store i64 %884, i64* %RAX, align 8, !tbaa !2428
  %885 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %886 = load i32, i32* %EAX
  %887 = zext i32 %886 to i64
  %888 = load i64, i64* %PC
  %889 = add i64 %888, 4
  store i64 %889, i64* %PC
  %890 = sitofp i32 %886 to double
  %891 = bitcast i8* %885 to double*
  store double %890, double* %891, align 1, !tbaa !2452
  %892 = load i64, i64* %RBP
  %893 = sub i64 %892, 48
  %894 = load i64, i64* %PC
  %895 = add i64 %894, 3
  store i64 %895, i64* %PC
  %896 = inttoptr i64 %893 to i32*
  %897 = load i32, i32* %896
  %898 = zext i32 %897 to i64
  store i64 %898, i64* %RAX, align 8, !tbaa !2428
  %899 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %900 = load i32, i32* %EAX
  %901 = zext i32 %900 to i64
  %902 = load i64, i64* %PC
  %903 = add i64 %902, 4
  store i64 %903, i64* %PC
  %904 = sitofp i32 %900 to double
  %905 = bitcast i8* %899 to double*
  store double %904, double* %905, align 1, !tbaa !2452
  %906 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %907 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %908 = bitcast %union.vec128_t* %XMM1 to i8*
  %909 = load i64, i64* %PC
  %910 = add i64 %909, 4
  store i64 %910, i64* %PC
  %911 = bitcast i8* %907 to double*
  %912 = load double, double* %911, align 1
  %913 = getelementptr inbounds i8, i8* %907, i64 8
  %914 = bitcast i8* %913 to i64*
  %915 = load i64, i64* %914, align 1
  %916 = bitcast i8* %908 to double*
  %917 = load double, double* %916, align 1
  %918 = fmul double %912, %917
  %919 = bitcast i8* %906 to double*
  store double %918, double* %919, align 1, !tbaa !2452
  %920 = getelementptr inbounds i8, i8* %906, i64 8
  %921 = bitcast i8* %920 to i64*
  store i64 %915, i64* %921, align 1, !tbaa !2452
  %922 = load i64, i64* %RBP
  %923 = sub i64 %922, 4
  %924 = load i64, i64* %PC
  %925 = add i64 %924, 3
  store i64 %925, i64* %PC
  %926 = inttoptr i64 %923 to i32*
  %927 = load i32, i32* %926
  %928 = zext i32 %927 to i64
  store i64 %928, i64* %RAX, align 8, !tbaa !2428
  %929 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %930 = load i32, i32* %EAX
  %931 = zext i32 %930 to i64
  %932 = load i64, i64* %PC
  %933 = add i64 %932, 4
  store i64 %933, i64* %PC
  %934 = sitofp i32 %930 to double
  %935 = bitcast i8* %929 to double*
  store double %934, double* %935, align 1, !tbaa !2452
  %936 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %937 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %938 = bitcast %union.vec128_t* %XMM1 to i8*
  %939 = load i64, i64* %PC
  %940 = add i64 %939, 4
  store i64 %940, i64* %PC
  %941 = bitcast i8* %937 to double*
  %942 = load double, double* %941, align 1
  %943 = getelementptr inbounds i8, i8* %937, i64 8
  %944 = bitcast i8* %943 to i64*
  %945 = load i64, i64* %944, align 1
  %946 = bitcast i8* %938 to double*
  %947 = load double, double* %946, align 1
  %948 = fdiv double %942, %947
  %949 = bitcast i8* %936 to double*
  store double %948, double* %949, align 1, !tbaa !2452
  %950 = getelementptr inbounds i8, i8* %936, i64 8
  %951 = bitcast i8* %950 to i64*
  store i64 %945, i64* %951, align 1, !tbaa !2452
  %952 = load i64, i64* %RBP
  %953 = add i64 %952, 16
  %954 = load i64, i64* %PC
  %955 = add i64 %954, 4
  store i64 %955, i64* %PC
  %956 = inttoptr i64 %953 to i64*
  %957 = load i64, i64* %956
  store i64 %957, i64* %RCX, align 8, !tbaa !2428
  %958 = load i64, i64* %RBP
  %959 = sub i64 %958, 44
  %960 = load i64, i64* %PC
  %961 = add i64 %960, 4
  store i64 %961, i64* %PC
  %962 = inttoptr i64 %959 to i32*
  %963 = load i32, i32* %962
  %964 = sext i32 %963 to i64
  store i64 %964, i64* %RDX, align 8, !tbaa !2428
  %965 = load i64, i64* %RDX
  %966 = load i64, i64* %PC
  %967 = add i64 %966, 4
  store i64 %967, i64* %PC
  %968 = shl i64 %965, 12
  %969 = icmp slt i64 %968, 0
  %970 = shl i64 %968, 1
  store i64 %970, i64* %RDX, align 8, !tbaa !2428
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %972 = zext i1 %969 to i8
  store i8 %972, i8* %971, align 1, !tbaa !2451
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %974 = trunc i64 %970 to i32
  %975 = and i32 %974, 254
  %976 = call i32 @llvm.ctpop.i32(i32 %975) #16
  %977 = trunc i32 %976 to i8
  %978 = and i8 %977, 1
  %979 = xor i8 %978, 1
  store i8 %979, i8* %973, align 1, !tbaa !2451
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %980, align 1, !tbaa !2451
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %982 = icmp eq i64 %970, 0
  %983 = zext i1 %982 to i8
  store i8 %983, i8* %981, align 1, !tbaa !2451
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %985 = lshr i64 %970, 63
  %986 = trunc i64 %985 to i8
  store i8 %986, i8* %984, align 1, !tbaa !2451
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %987, align 1, !tbaa !2451
  %988 = load i64, i64* %RCX
  %989 = load i64, i64* %RDX
  %990 = load i64, i64* %PC
  %991 = add i64 %990, 3
  store i64 %991, i64* %PC
  %992 = add i64 %989, %988
  store i64 %992, i64* %RCX, align 8, !tbaa !2428
  %993 = icmp ult i64 %992, %988
  %994 = icmp ult i64 %992, %989
  %995 = or i1 %993, %994
  %996 = zext i1 %995 to i8
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %996, i8* %997, align 1, !tbaa !2432
  %998 = trunc i64 %992 to i32
  %999 = and i32 %998, 255
  %1000 = call i32 @llvm.ctpop.i32(i32 %999) #16
  %1001 = trunc i32 %1000 to i8
  %1002 = and i8 %1001, 1
  %1003 = xor i8 %1002, 1
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1003, i8* %1004, align 1, !tbaa !2446
  %1005 = xor i64 %989, %988
  %1006 = xor i64 %1005, %992
  %1007 = lshr i64 %1006, 4
  %1008 = trunc i64 %1007 to i8
  %1009 = and i8 %1008, 1
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1009, i8* %1010, align 1, !tbaa !2447
  %1011 = icmp eq i64 %992, 0
  %1012 = zext i1 %1011 to i8
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1012, i8* %1013, align 1, !tbaa !2448
  %1014 = lshr i64 %992, 63
  %1015 = trunc i64 %1014 to i8
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1015, i8* %1016, align 1, !tbaa !2449
  %1017 = lshr i64 %988, 63
  %1018 = lshr i64 %989, 63
  %1019 = xor i64 %1014, %1017
  %1020 = xor i64 %1014, %1018
  %1021 = add nuw nsw i64 %1019, %1020
  %1022 = icmp eq i64 %1021, 2
  %1023 = zext i1 %1022 to i8
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1023, i8* %1024, align 1, !tbaa !2450
  %1025 = load i64, i64* %RBP
  %1026 = sub i64 %1025, 48
  %1027 = load i64, i64* %PC
  %1028 = add i64 %1027, 4
  store i64 %1028, i64* %PC
  %1029 = inttoptr i64 %1026 to i32*
  %1030 = load i32, i32* %1029
  %1031 = sext i32 %1030 to i64
  store i64 %1031, i64* %RDX, align 8, !tbaa !2428
  %1032 = load i64, i64* %RCX
  %1033 = load i64, i64* %RDX
  %1034 = mul i64 %1033, 8
  %1035 = add i64 %1034, %1032
  %1036 = bitcast %union.vec128_t* %XMM0 to i8*
  %1037 = load i64, i64* %PC
  %1038 = add i64 %1037, 5
  store i64 %1038, i64* %PC
  %1039 = bitcast i8* %1036 to double*
  %1040 = load double, double* %1039, align 1
  %1041 = inttoptr i64 %1035 to double*
  store double %1040, double* %1041
  %1042 = load i64, i64* %RBP
  %1043 = sub i64 %1042, 44
  %1044 = load i64, i64* %PC
  %1045 = add i64 %1044, 3
  store i64 %1045, i64* %PC
  %1046 = inttoptr i64 %1043 to i32*
  %1047 = load i32, i32* %1046
  %1048 = zext i32 %1047 to i64
  store i64 %1048, i64* %RAX, align 8, !tbaa !2428
  %1049 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1050 = load i32, i32* %EAX
  %1051 = zext i32 %1050 to i64
  %1052 = load i64, i64* %PC
  %1053 = add i64 %1052, 4
  store i64 %1053, i64* %PC
  %1054 = sitofp i32 %1050 to double
  %1055 = bitcast i8* %1049 to double*
  store double %1054, double* %1055, align 1, !tbaa !2452
  %1056 = load i64, i64* %RBP
  %1057 = sub i64 %1056, 48
  %1058 = load i64, i64* %PC
  %1059 = add i64 %1058, 3
  store i64 %1059, i64* %PC
  %1060 = inttoptr i64 %1057 to i32*
  %1061 = load i32, i32* %1060
  %1062 = zext i32 %1061 to i64
  store i64 %1062, i64* %RAX, align 8, !tbaa !2428
  %1063 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1064 = load i32, i32* %EAX
  %1065 = zext i32 %1064 to i64
  %1066 = load i64, i64* %PC
  %1067 = add i64 %1066, 4
  store i64 %1067, i64* %PC
  %1068 = sitofp i32 %1064 to double
  %1069 = bitcast i8* %1063 to double*
  store double %1068, double* %1069, align 1, !tbaa !2452
  %1070 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1071 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1072 = bitcast %union.vec128_t* %XMM1 to i8*
  %1073 = load i64, i64* %PC
  %1074 = add i64 %1073, 4
  store i64 %1074, i64* %PC
  %1075 = bitcast i8* %1071 to double*
  %1076 = load double, double* %1075, align 1
  %1077 = getelementptr inbounds i8, i8* %1071, i64 8
  %1078 = bitcast i8* %1077 to i64*
  %1079 = load i64, i64* %1078, align 1
  %1080 = bitcast i8* %1072 to double*
  %1081 = load double, double* %1080, align 1
  %1082 = fmul double %1076, %1081
  %1083 = bitcast i8* %1070 to double*
  store double %1082, double* %1083, align 1, !tbaa !2452
  %1084 = getelementptr inbounds i8, i8* %1070, i64 8
  %1085 = bitcast i8* %1084 to i64*
  store i64 %1079, i64* %1085, align 1, !tbaa !2452
  %1086 = load i64, i64* %RBP
  %1087 = sub i64 %1086, 4
  %1088 = load i64, i64* %PC
  %1089 = add i64 %1088, 3
  store i64 %1089, i64* %PC
  %1090 = inttoptr i64 %1087 to i32*
  %1091 = load i32, i32* %1090
  %1092 = zext i32 %1091 to i64
  store i64 %1092, i64* %RAX, align 8, !tbaa !2428
  %1093 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1094 = load i32, i32* %EAX
  %1095 = zext i32 %1094 to i64
  %1096 = load i64, i64* %PC
  %1097 = add i64 %1096, 4
  store i64 %1097, i64* %PC
  %1098 = sitofp i32 %1094 to double
  %1099 = bitcast i8* %1093 to double*
  store double %1098, double* %1099, align 1, !tbaa !2452
  %1100 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1101 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1102 = bitcast %union.vec128_t* %XMM1 to i8*
  %1103 = load i64, i64* %PC
  %1104 = add i64 %1103, 4
  store i64 %1104, i64* %PC
  %1105 = bitcast i8* %1101 to double*
  %1106 = load double, double* %1105, align 1
  %1107 = getelementptr inbounds i8, i8* %1101, i64 8
  %1108 = bitcast i8* %1107 to i64*
  %1109 = load i64, i64* %1108, align 1
  %1110 = bitcast i8* %1102 to double*
  %1111 = load double, double* %1110, align 1
  %1112 = fdiv double %1106, %1111
  %1113 = bitcast i8* %1100 to double*
  store double %1112, double* %1113, align 1, !tbaa !2452
  %1114 = getelementptr inbounds i8, i8* %1100, i64 8
  %1115 = bitcast i8* %1114 to i64*
  store i64 %1109, i64* %1115, align 1, !tbaa !2452
  %1116 = load i64, i64* %RBP
  %1117 = add i64 %1116, 24
  %1118 = load i64, i64* %PC
  %1119 = add i64 %1118, 4
  store i64 %1119, i64* %PC
  %1120 = inttoptr i64 %1117 to i64*
  %1121 = load i64, i64* %1120
  store i64 %1121, i64* %RCX, align 8, !tbaa !2428
  %1122 = load i64, i64* %RBP
  %1123 = sub i64 %1122, 44
  %1124 = load i64, i64* %PC
  %1125 = add i64 %1124, 4
  store i64 %1125, i64* %PC
  %1126 = inttoptr i64 %1123 to i32*
  %1127 = load i32, i32* %1126
  %1128 = sext i32 %1127 to i64
  store i64 %1128, i64* %RDX, align 8, !tbaa !2428
  %1129 = load i64, i64* %RDX
  %1130 = load i64, i64* %PC
  %1131 = add i64 %1130, 4
  store i64 %1131, i64* %PC
  %1132 = shl i64 %1129, 12
  %1133 = icmp slt i64 %1132, 0
  %1134 = shl i64 %1132, 1
  store i64 %1134, i64* %RDX, align 8, !tbaa !2428
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1136 = zext i1 %1133 to i8
  store i8 %1136, i8* %1135, align 1, !tbaa !2451
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1138 = trunc i64 %1134 to i32
  %1139 = and i32 %1138, 254
  %1140 = call i32 @llvm.ctpop.i32(i32 %1139) #16
  %1141 = trunc i32 %1140 to i8
  %1142 = and i8 %1141, 1
  %1143 = xor i8 %1142, 1
  store i8 %1143, i8* %1137, align 1, !tbaa !2451
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1144, align 1, !tbaa !2451
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1146 = icmp eq i64 %1134, 0
  %1147 = zext i1 %1146 to i8
  store i8 %1147, i8* %1145, align 1, !tbaa !2451
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1149 = lshr i64 %1134, 63
  %1150 = trunc i64 %1149 to i8
  store i8 %1150, i8* %1148, align 1, !tbaa !2451
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1151, align 1, !tbaa !2451
  %1152 = load i64, i64* %RCX
  %1153 = load i64, i64* %RDX
  %1154 = load i64, i64* %PC
  %1155 = add i64 %1154, 3
  store i64 %1155, i64* %PC
  %1156 = add i64 %1153, %1152
  store i64 %1156, i64* %RCX, align 8, !tbaa !2428
  %1157 = icmp ult i64 %1156, %1152
  %1158 = icmp ult i64 %1156, %1153
  %1159 = or i1 %1157, %1158
  %1160 = zext i1 %1159 to i8
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1160, i8* %1161, align 1, !tbaa !2432
  %1162 = trunc i64 %1156 to i32
  %1163 = and i32 %1162, 255
  %1164 = call i32 @llvm.ctpop.i32(i32 %1163) #16
  %1165 = trunc i32 %1164 to i8
  %1166 = and i8 %1165, 1
  %1167 = xor i8 %1166, 1
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1167, i8* %1168, align 1, !tbaa !2446
  %1169 = xor i64 %1153, %1152
  %1170 = xor i64 %1169, %1156
  %1171 = lshr i64 %1170, 4
  %1172 = trunc i64 %1171 to i8
  %1173 = and i8 %1172, 1
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1173, i8* %1174, align 1, !tbaa !2447
  %1175 = icmp eq i64 %1156, 0
  %1176 = zext i1 %1175 to i8
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1176, i8* %1177, align 1, !tbaa !2448
  %1178 = lshr i64 %1156, 63
  %1179 = trunc i64 %1178 to i8
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1179, i8* %1180, align 1, !tbaa !2449
  %1181 = lshr i64 %1152, 63
  %1182 = lshr i64 %1153, 63
  %1183 = xor i64 %1178, %1181
  %1184 = xor i64 %1178, %1182
  %1185 = add nuw nsw i64 %1183, %1184
  %1186 = icmp eq i64 %1185, 2
  %1187 = zext i1 %1186 to i8
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1187, i8* %1188, align 1, !tbaa !2450
  %1189 = load i64, i64* %RBP
  %1190 = sub i64 %1189, 48
  %1191 = load i64, i64* %PC
  %1192 = add i64 %1191, 4
  store i64 %1192, i64* %PC
  %1193 = inttoptr i64 %1190 to i32*
  %1194 = load i32, i32* %1193
  %1195 = sext i32 %1194 to i64
  store i64 %1195, i64* %RDX, align 8, !tbaa !2428
  %1196 = load i64, i64* %RCX
  %1197 = load i64, i64* %RDX
  %1198 = mul i64 %1197, 8
  %1199 = add i64 %1198, %1196
  %1200 = bitcast %union.vec128_t* %XMM0 to i8*
  %1201 = load i64, i64* %PC
  %1202 = add i64 %1201, 5
  store i64 %1202, i64* %PC
  %1203 = bitcast i8* %1200 to double*
  %1204 = load double, double* %1203, align 1
  %1205 = inttoptr i64 %1199 to double*
  store double %1204, double* %1205
  %1206 = load i64, i64* %RBP
  %1207 = sub i64 %1206, 48
  %1208 = load i64, i64* %PC
  %1209 = add i64 %1208, 3
  store i64 %1209, i64* %PC
  %1210 = inttoptr i64 %1207 to i32*
  %1211 = load i32, i32* %1210
  %1212 = zext i32 %1211 to i64
  store i64 %1212, i64* %RAX, align 8, !tbaa !2428
  %1213 = load i64, i64* %RAX
  %1214 = load i64, i64* %PC
  %1215 = add i64 %1214, 3
  store i64 %1215, i64* %PC
  %1216 = trunc i64 %1213 to i32
  %1217 = add i32 1, %1216
  %1218 = zext i32 %1217 to i64
  store i64 %1218, i64* %RAX, align 8, !tbaa !2428
  %1219 = icmp ult i32 %1217, %1216
  %1220 = icmp ult i32 %1217, 1
  %1221 = or i1 %1219, %1220
  %1222 = zext i1 %1221 to i8
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1222, i8* %1223, align 1, !tbaa !2432
  %1224 = and i32 %1217, 255
  %1225 = call i32 @llvm.ctpop.i32(i32 %1224) #16
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  %1228 = xor i8 %1227, 1
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1228, i8* %1229, align 1, !tbaa !2446
  %1230 = xor i64 1, %1213
  %1231 = trunc i64 %1230 to i32
  %1232 = xor i32 %1231, %1217
  %1233 = lshr i32 %1232, 4
  %1234 = trunc i32 %1233 to i8
  %1235 = and i8 %1234, 1
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1235, i8* %1236, align 1, !tbaa !2447
  %1237 = icmp eq i32 %1217, 0
  %1238 = zext i1 %1237 to i8
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1238, i8* %1239, align 1, !tbaa !2448
  %1240 = lshr i32 %1217, 31
  %1241 = trunc i32 %1240 to i8
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1241, i8* %1242, align 1, !tbaa !2449
  %1243 = lshr i32 %1216, 31
  %1244 = xor i32 %1240, %1243
  %1245 = add nuw nsw i32 %1244, %1240
  %1246 = icmp eq i32 %1245, 2
  %1247 = zext i1 %1246 to i8
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1247, i8* %1248, align 1, !tbaa !2450
  %1249 = load i64, i64* %RBP
  %1250 = sub i64 %1249, 48
  %1251 = load i32, i32* %EAX
  %1252 = zext i32 %1251 to i64
  %1253 = load i64, i64* %PC
  %1254 = add i64 %1253, 3
  store i64 %1254, i64* %PC
  %1255 = inttoptr i64 %1250 to i32*
  store i32 %1251, i32* %1255
  %1256 = load i64, i64* %PC
  %1257 = sub i64 %1256, 127
  %1258 = load i64, i64* %PC
  %1259 = add i64 %1258, 5
  store i64 %1259, i64* %PC
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1257, i64* %1260, align 8, !tbaa !2428
  br label %block_400ad4
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007e0_rtclock(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4007e0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %15 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %14, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %15 to %union.vec128_t*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 1
  store i64 %18, i64* %PC
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %20 = load i64, i64* %19, align 8, !tbaa !2428
  %21 = add i64 %20, -8
  %22 = inttoptr i64 %21 to i64*
  store i64 %16, i64* %22
  store i64 %21, i64* %19, align 8, !tbaa !2428
  %23 = load i64, i64* %RSP
  %24 = load i64, i64* %PC
  %25 = add i64 %24, 3
  store i64 %25, i64* %PC
  store i64 %23, i64* %RBP, align 8, !tbaa !2428
  %26 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %27 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %28 = bitcast %union.vec128_t* %XMM0 to i8*
  %29 = load i64, i64* %PC
  %30 = add i64 %29, 3
  store i64 %30, i64* %PC
  %31 = bitcast i8* %27 to i64*
  %32 = load i64, i64* %31, align 1
  %33 = getelementptr inbounds i8, i8* %27, i64 8
  %34 = bitcast i8* %33 to i64*
  %35 = load i64, i64* %34, align 1
  %36 = bitcast i8* %28 to i64*
  %37 = load i64, i64* %36, align 1
  %38 = getelementptr inbounds i8, i8* %28, i64 8
  %39 = bitcast i8* %38 to i64*
  %40 = load i64, i64* %39, align 1
  %41 = xor i64 %37, %32
  %42 = xor i64 %40, %35
  %43 = trunc i64 %41 to i32
  %44 = lshr i64 %41, 32
  %45 = trunc i64 %44 to i32
  %46 = bitcast i8* %26 to i32*
  store i32 %43, i32* %46, align 1, !tbaa !2454
  %47 = getelementptr inbounds i8, i8* %26, i64 4
  %48 = bitcast i8* %47 to i32*
  store i32 %45, i32* %48, align 1, !tbaa !2454
  %49 = trunc i64 %42 to i32
  %50 = getelementptr inbounds i8, i8* %26, i64 8
  %51 = bitcast i8* %50 to i32*
  store i32 %49, i32* %51, align 1, !tbaa !2454
  %52 = lshr i64 %42, 32
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds i8, i8* %26, i64 12
  %55 = bitcast i8* %54 to i32*
  store i32 %53, i32* %55, align 1, !tbaa !2454
  %56 = load i64, i64* %PC
  %57 = add i64 %56, 1
  store i64 %57, i64* %PC
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %59 = load i64, i64* %58, align 8, !tbaa !2428
  %60 = add i64 %59, 8
  %61 = inttoptr i64 %59 to i64*
  %62 = load i64, i64* %61
  store i64 %62, i64* %RBP, align 8, !tbaa !2428
  store i64 %60, i64* %58, align 8, !tbaa !2428
  %63 = load i64, i64* %PC
  %64 = add i64 %63, 1
  store i64 %64, i64* %PC
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %67 = load i64, i64* %66, align 8, !tbaa !2428
  %68 = inttoptr i64 %67 to i64*
  %69 = load i64, i64* %68
  store i64 %69, i64* %65, align 8, !tbaa !2428
  %70 = add i64 %67, 8
  store i64 %70, i64* %66, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400730_polybench_flush_cache(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400730:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 9
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RSI = bitcast %union.anon* %17 to i64*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 11
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RDI = bitcast %union.anon* %20 to i64*
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.GPR, %struct.GPR* %21, i32 0, i32 13
  %23 = getelementptr inbounds %struct.Reg, %struct.Reg* %22, i32 0, i32 0
  %RSP = bitcast %union.anon* %23 to i64*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.GPR, %struct.GPR* %24, i32 0, i32 15
  %26 = getelementptr inbounds %struct.Reg, %struct.Reg* %25, i32 0, i32 0
  %RBP = bitcast %union.anon* %26 to i64*
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %28 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %27, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %28 to %"class.std::bitset"*
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %30 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %29, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %30 to %union.vec128_t*
  %31 = load i64, i64* %RBP
  %32 = load i64, i64* %PC
  %33 = add i64 %32, 1
  store i64 %33, i64* %PC
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %35 = load i64, i64* %34, align 8, !tbaa !2428
  %36 = add i64 %35, -8
  %37 = inttoptr i64 %36 to i64*
  store i64 %31, i64* %37
  store i64 %36, i64* %34, align 8, !tbaa !2428
  %38 = load i64, i64* %RSP
  %39 = load i64, i64* %PC
  %40 = add i64 %39, 3
  store i64 %40, i64* %PC
  store i64 %38, i64* %RBP, align 8, !tbaa !2428
  %41 = load i64, i64* %RSP
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 4
  store i64 %43, i64* %PC
  %44 = sub i64 %41, 32
  store i64 %44, i64* %RSP, align 8, !tbaa !2428
  %45 = icmp ult i64 %41, 32
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %46, i8* %47, align 1, !tbaa !2432
  %48 = trunc i64 %44 to i32
  %49 = and i32 %48, 255
  %50 = call i32 @llvm.ctpop.i32(i32 %49) #16
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 1
  %53 = xor i8 %52, 1
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %53, i8* %54, align 1, !tbaa !2446
  %55 = xor i64 32, %41
  %56 = xor i64 %55, %44
  %57 = lshr i64 %56, 4
  %58 = trunc i64 %57 to i8
  %59 = and i8 %58, 1
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %59, i8* %60, align 1, !tbaa !2447
  %61 = icmp eq i64 %44, 0
  %62 = zext i1 %61 to i8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %62, i8* %63, align 1, !tbaa !2448
  %64 = lshr i64 %44, 63
  %65 = trunc i64 %64 to i8
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %65, i8* %66, align 1, !tbaa !2449
  %67 = lshr i64 %41, 63
  %68 = xor i64 %64, %67
  %69 = add nuw nsw i64 %68, %67
  %70 = icmp eq i64 %69, 2
  %71 = zext i1 %70 to i8
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %71, i8* %72, align 1, !tbaa !2450
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC
  store i64 8, i64* %RAX, align 8, !tbaa !2428
  %75 = load i32, i32* %EAX
  %76 = zext i32 %75 to i64
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 2
  store i64 %78, i64* %PC
  %79 = and i64 %76, 4294967295
  store i64 %79, i64* %RSI, align 8, !tbaa !2428
  %80 = load i64, i64* %RBP
  %81 = sub i64 %80, 4
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 7
  store i64 %83, i64* %PC
  %84 = inttoptr i64 %81 to i32*
  store i32 4194560, i32* %84
  %85 = load i64, i64* %RBP
  %86 = sub i64 %85, 4
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC
  %89 = inttoptr i64 %86 to i32*
  %90 = load i32, i32* %89
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %RDI, align 8, !tbaa !2428
  %92 = load i64, i64* %PC
  %93 = sub i64 %92, 346
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 5
  %96 = load i64, i64* %PC
  %97 = add i64 %96, 5
  store i64 %97, i64* %PC
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %99 = load i64, i64* %98, align 8, !tbaa !2428
  %100 = add i64 %99, -8
  %101 = inttoptr i64 %100 to i64*
  store i64 %95, i64* %101
  store i64 %100, i64* %98, align 8, !tbaa !2428
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %93, i64* %102, align 8, !tbaa !2428
  %103 = load i64, i64* %PC
  %104 = call %struct.Memory* @ext_6020e0_calloc(%struct.State* %0, i64 %103, %struct.Memory* %2)
  %105 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %106 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %107 = bitcast %union.vec128_t* %XMM0 to i8*
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 3
  store i64 %109, i64* %PC
  %110 = bitcast i8* %106 to i64*
  %111 = load i64, i64* %110, align 1
  %112 = getelementptr inbounds i8, i8* %106, i64 8
  %113 = bitcast i8* %112 to i64*
  %114 = load i64, i64* %113, align 1
  %115 = bitcast i8* %107 to i64*
  %116 = load i64, i64* %115, align 1
  %117 = getelementptr inbounds i8, i8* %107, i64 8
  %118 = bitcast i8* %117 to i64*
  %119 = load i64, i64* %118, align 1
  %120 = xor i64 %116, %111
  %121 = xor i64 %119, %114
  %122 = trunc i64 %120 to i32
  %123 = lshr i64 %120, 32
  %124 = trunc i64 %123 to i32
  %125 = bitcast i8* %105 to i32*
  store i32 %122, i32* %125, align 1, !tbaa !2454
  %126 = getelementptr inbounds i8, i8* %105, i64 4
  %127 = bitcast i8* %126 to i32*
  store i32 %124, i32* %127, align 1, !tbaa !2454
  %128 = trunc i64 %121 to i32
  %129 = getelementptr inbounds i8, i8* %105, i64 8
  %130 = bitcast i8* %129 to i32*
  store i32 %128, i32* %130, align 1, !tbaa !2454
  %131 = lshr i64 %121, 32
  %132 = trunc i64 %131 to i32
  %133 = getelementptr inbounds i8, i8* %105, i64 12
  %134 = bitcast i8* %133 to i32*
  store i32 %132, i32* %134, align 1, !tbaa !2454
  %135 = load i64, i64* %RBP
  %136 = sub i64 %135, 16
  %137 = load i64, i64* %RAX
  %138 = load i64, i64* %PC
  %139 = add i64 %138, 4
  store i64 %139, i64* %PC
  %140 = inttoptr i64 %136 to i64*
  store i64 %137, i64* %140
  %141 = load i64, i64* %RBP
  %142 = sub i64 %141, 32
  %143 = bitcast %union.vec128_t* %XMM0 to i8*
  %144 = load i64, i64* %PC
  %145 = add i64 %144, 5
  store i64 %145, i64* %PC
  %146 = bitcast i8* %143 to double*
  %147 = load double, double* %146, align 1
  %148 = inttoptr i64 %142 to double*
  store double %147, double* %148
  %149 = load i64, i64* %RBP
  %150 = sub i64 %149, 20
  %151 = load i64, i64* %PC
  %152 = add i64 %151, 7
  store i64 %152, i64* %PC
  %153 = inttoptr i64 %150 to i32*
  store i32 0, i32* %153
  br label %block_400762

block_40076e:                                     ; preds = %block_400762
  %154 = load i64, i64* %RBP
  %155 = sub i64 %154, 20
  %156 = load i64, i64* %PC
  %157 = add i64 %156, 4
  store i64 %157, i64* %PC
  %158 = inttoptr i64 %155 to i32*
  %159 = load i32, i32* %158
  %160 = sext i32 %159 to i64
  store i64 %160, i64* %RCX, align 8, !tbaa !2428
  %161 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %162 = load i64, i64* %RAX
  %163 = load i64, i64* %RCX
  %164 = mul i64 %163, 8
  %165 = add i64 %164, %162
  %166 = load i64, i64* %PC
  %167 = add i64 %166, 5
  store i64 %167, i64* %PC
  %168 = inttoptr i64 %165 to double*
  %169 = load double, double* %168
  %170 = bitcast i8* %161 to double*
  store double %169, double* %170, align 1, !tbaa !2452
  %171 = getelementptr inbounds i8, i8* %161, i64 8
  %172 = bitcast i8* %171 to double*
  store double 0.000000e+00, double* %172, align 1, !tbaa !2452
  %173 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %174 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %175 = load i64, i64* %RBP
  %176 = sub i64 %175, 32
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 5
  store i64 %178, i64* %PC
  %179 = bitcast i8* %174 to double*
  %180 = load double, double* %179, align 1
  %181 = getelementptr inbounds i8, i8* %174, i64 8
  %182 = bitcast i8* %181 to i64*
  %183 = load i64, i64* %182, align 1
  %184 = inttoptr i64 %176 to double*
  %185 = load double, double* %184
  %186 = fadd double %180, %185
  %187 = bitcast i8* %173 to double*
  store double %186, double* %187, align 1, !tbaa !2452
  %188 = getelementptr inbounds i8, i8* %173, i64 8
  %189 = bitcast i8* %188 to i64*
  store i64 %183, i64* %189, align 1, !tbaa !2452
  %190 = load i64, i64* %RBP
  %191 = sub i64 %190, 32
  %192 = bitcast %union.vec128_t* %XMM0 to i8*
  %193 = load i64, i64* %PC
  %194 = add i64 %193, 5
  store i64 %194, i64* %PC
  %195 = bitcast i8* %192 to double*
  %196 = load double, double* %195, align 1
  %197 = inttoptr i64 %191 to double*
  store double %196, double* %197
  %198 = load i64, i64* %RBP
  %199 = sub i64 %198, 20
  %200 = load i64, i64* %PC
  %201 = add i64 %200, 3
  store i64 %201, i64* %PC
  %202 = inttoptr i64 %199 to i32*
  %203 = load i32, i32* %202
  %204 = zext i32 %203 to i64
  store i64 %204, i64* %RAX, align 8, !tbaa !2428
  %205 = load i64, i64* %RAX
  %206 = load i64, i64* %PC
  %207 = add i64 %206, 3
  store i64 %207, i64* %PC
  %208 = trunc i64 %205 to i32
  %209 = add i32 1, %208
  %210 = zext i32 %209 to i64
  store i64 %210, i64* %RAX, align 8, !tbaa !2428
  %211 = icmp ult i32 %209, %208
  %212 = icmp ult i32 %209, 1
  %213 = or i1 %211, %212
  %214 = zext i1 %213 to i8
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %214, i8* %215, align 1, !tbaa !2432
  %216 = and i32 %209, 255
  %217 = call i32 @llvm.ctpop.i32(i32 %216) #16
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  %220 = xor i8 %219, 1
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %220, i8* %221, align 1, !tbaa !2446
  %222 = xor i64 1, %205
  %223 = trunc i64 %222 to i32
  %224 = xor i32 %223, %209
  %225 = lshr i32 %224, 4
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %227, i8* %228, align 1, !tbaa !2447
  %229 = icmp eq i32 %209, 0
  %230 = zext i1 %229 to i8
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %230, i8* %231, align 1, !tbaa !2448
  %232 = lshr i32 %209, 31
  %233 = trunc i32 %232 to i8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %233, i8* %234, align 1, !tbaa !2449
  %235 = lshr i32 %208, 31
  %236 = xor i32 %232, %235
  %237 = add nuw nsw i32 %236, %232
  %238 = icmp eq i32 %237, 2
  %239 = zext i1 %238 to i8
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %239, i8* %240, align 1, !tbaa !2450
  %241 = load i64, i64* %RBP
  %242 = sub i64 %241, 20
  %243 = load i32, i32* %EAX
  %244 = zext i32 %243 to i64
  %245 = load i64, i64* %PC
  %246 = add i64 %245, 3
  store i64 %246, i64* %PC
  %247 = inttoptr i64 %242 to i32*
  store i32 %243, i32* %247
  %248 = load i64, i64* %PC
  %249 = sub i64 %248, 44
  %250 = load i64, i64* %PC
  %251 = add i64 %250, 5
  store i64 %251, i64* %PC
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %249, i64* %252, align 8, !tbaa !2428
  br label %block_400762

block_400793:                                     ; preds = %block_400762
  %253 = load i64, i64* %RAX
  %254 = load i64, i64* %PC
  %255 = add i64 %254, 3
  store i64 %255, i64* %PC
  store i64 %253, i64* %RDI, align 8, !tbaa !2428
  %256 = load i64, i64* %PC
  %257 = sub i64 %256, 474
  %258 = load i64, i64* %PC
  %259 = add i64 %258, 5
  %260 = load i64, i64* %PC
  %261 = add i64 %260, 5
  store i64 %261, i64* %PC
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %263 = load i64, i64* %262, align 8, !tbaa !2428
  %264 = add i64 %263, -8
  %265 = inttoptr i64 %264 to i64*
  store i64 %259, i64* %265
  store i64 %264, i64* %262, align 8, !tbaa !2428
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %257, i64* %266, align 8, !tbaa !2428
  %267 = load i64, i64* %PC
  %268 = call %struct.Memory* @ext_4005c0_free(%struct.State* %0, i64 %267, %struct.Memory* %MEMORY.0)
  %269 = load i64, i64* %RSP
  %270 = load i64, i64* %PC
  %271 = add i64 %270, 4
  store i64 %271, i64* %PC
  %272 = add i64 32, %269
  store i64 %272, i64* %RSP, align 8, !tbaa !2428
  %273 = icmp ult i64 %272, %269
  %274 = icmp ult i64 %272, 32
  %275 = or i1 %273, %274
  %276 = zext i1 %275 to i8
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %276, i8* %277, align 1, !tbaa !2432
  %278 = trunc i64 %272 to i32
  %279 = and i32 %278, 255
  %280 = call i32 @llvm.ctpop.i32(i32 %279) #16
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = xor i8 %282, 1
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %283, i8* %284, align 1, !tbaa !2446
  %285 = xor i64 32, %269
  %286 = xor i64 %285, %272
  %287 = lshr i64 %286, 4
  %288 = trunc i64 %287 to i8
  %289 = and i8 %288, 1
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %289, i8* %290, align 1, !tbaa !2447
  %291 = icmp eq i64 %272, 0
  %292 = zext i1 %291 to i8
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %292, i8* %293, align 1, !tbaa !2448
  %294 = lshr i64 %272, 63
  %295 = trunc i64 %294 to i8
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %295, i8* %296, align 1, !tbaa !2449
  %297 = lshr i64 %269, 63
  %298 = xor i64 %294, %297
  %299 = add nuw nsw i64 %298, %294
  %300 = icmp eq i64 %299, 2
  %301 = zext i1 %300 to i8
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %301, i8* %302, align 1, !tbaa !2450
  %303 = load i64, i64* %PC
  %304 = add i64 %303, 1
  store i64 %304, i64* %PC
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %306 = load i64, i64* %305, align 8, !tbaa !2428
  %307 = add i64 %306, 8
  %308 = inttoptr i64 %306 to i64*
  %309 = load i64, i64* %308
  store i64 %309, i64* %RBP, align 8, !tbaa !2428
  store i64 %307, i64* %305, align 8, !tbaa !2428
  %310 = load i64, i64* %PC
  %311 = add i64 %310, 1
  store i64 %311, i64* %PC
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %314 = load i64, i64* %313, align 8, !tbaa !2428
  %315 = inttoptr i64 %314 to i64*
  %316 = load i64, i64* %315
  store i64 %316, i64* %312, align 8, !tbaa !2428
  %317 = add i64 %314, 8
  store i64 %317, i64* %313, align 8, !tbaa !2428
  ret %struct.Memory* %268

block_400762:                                     ; preds = %block_40076e, %block_400730
  %MEMORY.0 = phi %struct.Memory* [ %104, %block_400730 ], [ %MEMORY.0, %block_40076e ]
  %318 = load i64, i64* %RBP
  %319 = sub i64 %318, 20
  %320 = load i64, i64* %PC
  %321 = add i64 %320, 3
  store i64 %321, i64* %PC
  %322 = inttoptr i64 %319 to i32*
  %323 = load i32, i32* %322
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RAX, align 8, !tbaa !2428
  %325 = load i32, i32* %EAX
  %326 = zext i32 %325 to i64
  %327 = load i64, i64* %RBP
  %328 = sub i64 %327, 4
  %329 = load i64, i64* %PC
  %330 = add i64 %329, 3
  store i64 %330, i64* %PC
  %331 = inttoptr i64 %328 to i32*
  %332 = load i32, i32* %331
  %333 = sub i32 %325, %332
  %334 = icmp ult i32 %325, %332
  %335 = zext i1 %334 to i8
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %335, i8* %336, align 1, !tbaa !2432
  %337 = and i32 %333, 255
  %338 = call i32 @llvm.ctpop.i32(i32 %337) #16
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  %341 = xor i8 %340, 1
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %341, i8* %342, align 1, !tbaa !2446
  %343 = xor i32 %332, %325
  %344 = xor i32 %343, %333
  %345 = lshr i32 %344, 4
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %347, i8* %348, align 1, !tbaa !2447
  %349 = icmp eq i32 %333, 0
  %350 = zext i1 %349 to i8
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %350, i8* %351, align 1, !tbaa !2448
  %352 = lshr i32 %333, 31
  %353 = trunc i32 %352 to i8
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %353, i8* %354, align 1, !tbaa !2449
  %355 = lshr i32 %325, 31
  %356 = lshr i32 %332, 31
  %357 = xor i32 %356, %355
  %358 = xor i32 %352, %355
  %359 = add nuw nsw i32 %358, %357
  %360 = icmp eq i32 %359, 2
  %361 = zext i1 %360 to i8
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %361, i8* %362, align 1, !tbaa !2450
  %363 = load i64, i64* %PC
  %364 = add i64 %363, 43
  %365 = load i64, i64* %PC
  %366 = add i64 %365, 6
  %367 = load i64, i64* %PC
  %368 = add i64 %367, 6
  store i64 %368, i64* %PC
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %370 = load i8, i8* %369, align 1, !tbaa !2449
  %371 = icmp ne i8 %370, 0
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %373 = load i8, i8* %372, align 1, !tbaa !2450
  %374 = icmp ne i8 %373, 0
  %375 = xor i1 %371, %374
  %376 = xor i1 %375, true
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %379 = select i1 %375, i64 %366, i64 %364
  store i64 %379, i64* %378, align 8, !tbaa !2428
  %380 = load i8, i8* %BRANCH_TAKEN
  %381 = icmp eq i8 %380, 1
  %382 = load i64, i64* %RBP
  %383 = sub i64 %382, 16
  %384 = load i64, i64* %PC
  %385 = add i64 %384, 4
  store i64 %385, i64* %PC
  %386 = inttoptr i64 %383 to i64*
  %387 = load i64, i64* %386
  store i64 %387, i64* %RAX, align 8, !tbaa !2428
  br i1 %381, label %block_400793, label %block_40076e
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006b0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4006b0:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %AX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %EAX = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RAX = bitcast %union.anon* %14 to i64*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 9
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RSI = bitcast %union.anon* %17 to i64*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 11
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RDI = bitcast %union.anon* %20 to i64*
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.GPR, %struct.GPR* %21, i32 0, i32 13
  %23 = getelementptr inbounds %struct.Reg, %struct.Reg* %22, i32 0, i32 0
  %RSP = bitcast %union.anon* %23 to i64*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.GPR, %struct.GPR* %24, i32 0, i32 15
  %26 = getelementptr inbounds %struct.Reg, %struct.Reg* %25, i32 0, i32 0
  %RBP = bitcast %union.anon* %26 to i64*
  %27 = load i64, i64* %PC
  %28 = add i64 %27, 5
  store i64 %28, i64* %PC
  store i64 6299752, i64* %RSI, align 8, !tbaa !2428
  %29 = load i64, i64* %RBP
  %30 = load i64, i64* %PC
  %31 = add i64 %30, 1
  store i64 %31, i64* %PC
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %33 = load i64, i64* %32, align 8, !tbaa !2428
  %34 = add i64 %33, -8
  %35 = inttoptr i64 %34 to i64*
  store i64 %29, i64* %35
  store i64 %34, i64* %32, align 8, !tbaa !2428
  %36 = load i64, i64* %RSI
  %37 = load i64, i64* %PC
  %38 = add i64 %37, 7
  store i64 %38, i64* %PC
  %39 = sub i64 %36, 6299752
  store i64 %39, i64* %RSI, align 8, !tbaa !2428
  %40 = icmp ult i64 %36, 6299752
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %41, i8* %42, align 1, !tbaa !2432
  %43 = trunc i64 %39 to i32
  %44 = and i32 %43, 255
  %45 = call i32 @llvm.ctpop.i32(i32 %44) #16
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = xor i8 %47, 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %48, i8* %49, align 1, !tbaa !2446
  %50 = xor i64 6299752, %36
  %51 = xor i64 %50, %39
  %52 = lshr i64 %51, 4
  %53 = trunc i64 %52 to i8
  %54 = and i8 %53, 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %54, i8* %55, align 1, !tbaa !2447
  %56 = icmp eq i64 %39, 0
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %57, i8* %58, align 1, !tbaa !2448
  %59 = lshr i64 %39, 63
  %60 = trunc i64 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %60, i8* %61, align 1, !tbaa !2449
  %62 = lshr i64 %36, 63
  %63 = xor i64 %59, %62
  %64 = add nuw nsw i64 %63, %62
  %65 = icmp eq i64 %64, 2
  %66 = zext i1 %65 to i8
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %66, i8* %67, align 1, !tbaa !2450
  %68 = load i64, i64* %RSP
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 3
  store i64 %70, i64* %PC
  store i64 %68, i64* %RBP, align 8, !tbaa !2428
  %71 = load i64, i64* %RSI
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 4
  store i64 %73, i64* %PC
  %74 = ashr i64 %71, 2
  %75 = trunc i64 %74 to i8
  %76 = and i8 %75, 1
  %77 = ashr i64 %74, 1
  store i64 %77, i64* %RSI, align 8, !tbaa !2428
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %76, i8* %78, align 1, !tbaa !2451
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %80 = trunc i64 %77 to i32
  %81 = and i32 %80, 255
  %82 = call i32 @llvm.ctpop.i32(i32 %81) #16
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  %85 = xor i8 %84, 1
  store i8 %85, i8* %79, align 1, !tbaa !2451
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %86, align 1, !tbaa !2451
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %88 = icmp eq i64 %77, 0
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %87, align 1, !tbaa !2451
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %91 = lshr i64 %77, 63
  %92 = trunc i64 %91 to i8
  store i8 %92, i8* %90, align 1, !tbaa !2451
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %93, align 1, !tbaa !2451
  %94 = load i64, i64* %RSI
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 3
  store i64 %96, i64* %PC
  store i64 %94, i64* %RAX, align 8, !tbaa !2428
  %97 = load i64, i64* %RAX
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 4
  store i64 %99, i64* %PC
  %100 = lshr i64 %97, 62
  %101 = trunc i64 %100 to i8
  %102 = and i8 %101, 1
  %103 = lshr i64 %100, 1
  store i64 %103, i64* %RAX, align 8, !tbaa !2428
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %102, i8* %104, align 1, !tbaa !2451
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %106 = trunc i64 %103 to i32
  %107 = and i32 %106, 255
  %108 = call i32 @llvm.ctpop.i32(i32 %107) #16
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = xor i8 %110, 1
  store i8 %111, i8* %105, align 1, !tbaa !2451
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %112, align 1, !tbaa !2451
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %114 = icmp eq i64 %103, 0
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %113, align 1, !tbaa !2451
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %116, align 1, !tbaa !2451
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %117, align 1, !tbaa !2451
  %118 = load i64, i64* %RSI
  %119 = load i64, i64* %RAX
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 3
  store i64 %121, i64* %PC
  %122 = add i64 %119, %118
  store i64 %122, i64* %RSI, align 8, !tbaa !2428
  %123 = icmp ult i64 %122, %118
  %124 = icmp ult i64 %122, %119
  %125 = or i1 %123, %124
  %126 = zext i1 %125 to i8
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %126, i8* %127, align 1, !tbaa !2432
  %128 = trunc i64 %122 to i32
  %129 = and i32 %128, 255
  %130 = call i32 @llvm.ctpop.i32(i32 %129) #16
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  %133 = xor i8 %132, 1
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %133, i8* %134, align 1, !tbaa !2446
  %135 = xor i64 %119, %118
  %136 = xor i64 %135, %122
  %137 = lshr i64 %136, 4
  %138 = trunc i64 %137 to i8
  %139 = and i8 %138, 1
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %139, i8* %140, align 1, !tbaa !2447
  %141 = icmp eq i64 %122, 0
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %142, i8* %143, align 1, !tbaa !2448
  %144 = lshr i64 %122, 63
  %145 = trunc i64 %144 to i8
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %145, i8* %146, align 1, !tbaa !2449
  %147 = lshr i64 %118, 63
  %148 = lshr i64 %119, 63
  %149 = xor i64 %144, %147
  %150 = xor i64 %144, %148
  %151 = add nuw nsw i64 %149, %150
  %152 = icmp eq i64 %151, 2
  %153 = zext i1 %152 to i8
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %153, i8* %154, align 1, !tbaa !2450
  %155 = load i64, i64* %RSI
  %156 = load i64, i64* %PC
  %157 = add i64 %156, 3
  store i64 %157, i64* %PC
  %158 = trunc i64 %155 to i8
  %159 = and i8 %158, 1
  %160 = ashr i64 %155, 1
  store i64 %160, i64* %RSI, align 8, !tbaa !2428
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %159, i8* %161, align 1, !tbaa !2451
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %163 = trunc i64 %160 to i32
  %164 = and i32 %163, 255
  %165 = call i32 @llvm.ctpop.i32(i32 %164) #16
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = xor i8 %167, 1
  store i8 %168, i8* %162, align 1, !tbaa !2451
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %169, align 1, !tbaa !2451
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %171 = icmp eq i64 %160, 0
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %170, align 1, !tbaa !2451
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %174 = lshr i64 %160, 63
  %175 = trunc i64 %174 to i8
  store i8 %175, i8* %173, align 1, !tbaa !2451
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %176, align 1, !tbaa !2451
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 23
  %179 = load i64, i64* %PC
  %180 = add i64 %179, 2
  %181 = load i64, i64* %PC
  %182 = add i64 %181, 2
  store i64 %182, i64* %PC
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %184 = load i8, i8* %183, align 1, !tbaa !2448
  store i8 %184, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %186 = icmp ne i8 %184, 0
  %187 = select i1 %186, i64 %178, i64 %180
  store i64 %187, i64* %185, align 8, !tbaa !2428
  %188 = load i8, i8* %BRANCH_TAKEN
  %189 = icmp eq i8 %188, 1
  br i1 %189, label %block_4006e8, label %block_4006d3

block_4006dd:                                     ; preds = %block_4006d3
  %190 = load i64, i64* %PC
  %191 = add i64 %190, 1
  store i64 %191, i64* %PC
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %193 = load i64, i64* %192, align 8, !tbaa !2428
  %194 = add i64 %193, 8
  %195 = inttoptr i64 %193 to i64*
  %196 = load i64, i64* %195
  store i64 %196, i64* %RBP, align 8, !tbaa !2428
  store i64 %194, i64* %192, align 8, !tbaa !2428
  %197 = load i64, i64* %PC
  %198 = add i64 %197, 5
  store i64 %198, i64* %PC
  store i64 6299752, i64* %RDI, align 8, !tbaa !2428
  %199 = load i64, i64* %RAX
  %200 = load i64, i64* %PC
  %201 = add i64 %200, 2
  store i64 %201, i64* %PC
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %199, i64* %202, align 8, !tbaa !2428
  %203 = load i64, i64* %PC
  switch i64 %203, label %269 [
    i64 4196074, label %block_4006ea
    i64 4196069, label %block_4006e5
  ]

block_4006ea:                                     ; preds = %block_4006dd
  %204 = load i64, i64* %RAX
  %205 = load i64, i64* %RAX
  %206 = add i64 %205, %204
  %207 = load i16, i16* %AX
  %208 = zext i16 %207 to i64
  %209 = load i64, i64* %PC
  %210 = add i64 %209, 6
  store i64 %210, i64* %PC
  %211 = load i64, i64* %PC
  %212 = tail call %struct.Memory* @sub_4006f0___do_global_dtors_aux(%struct.State* %0, i64 %211, %struct.Memory* %2)
  ret %struct.Memory* %212

block_4006d3:                                     ; preds = %block_4006b0
  %213 = load i64, i64* %PC
  %214 = add i64 %213, 5
  store i64 %214, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %215 = load i64, i64* %RAX
  %216 = load i64, i64* %RAX
  %217 = load i64, i64* %PC
  %218 = add i64 %217, 3
  store i64 %218, i64* %PC
  %219 = and i64 %216, %215
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %220, align 1, !tbaa !2432
  %221 = trunc i64 %219 to i32
  %222 = and i32 %221, 255
  %223 = call i32 @llvm.ctpop.i32(i32 %222) #16
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %226, i8* %227, align 1, !tbaa !2446
  %228 = icmp eq i64 %219, 0
  %229 = zext i1 %228 to i8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %229, i8* %230, align 1, !tbaa !2448
  %231 = lshr i64 %219, 63
  %232 = trunc i64 %231 to i8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %232, i8* %233, align 1, !tbaa !2449
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %234, align 1, !tbaa !2450
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %235, align 1, !tbaa !2447
  %236 = load i64, i64* %PC
  %237 = add i64 %236, 13
  %238 = load i64, i64* %PC
  %239 = add i64 %238, 2
  %240 = load i64, i64* %PC
  %241 = add i64 %240, 2
  store i64 %241, i64* %PC
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %243 = load i8, i8* %242, align 1, !tbaa !2448
  store i8 %243, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %245 = icmp ne i8 %243, 0
  %246 = select i1 %245, i64 %237, i64 %239
  store i64 %246, i64* %244, align 8, !tbaa !2428
  %247 = load i8, i8* %BRANCH_TAKEN
  %248 = icmp eq i8 %247, 1
  br i1 %248, label %block_4006e8, label %block_4006dd

block_4006e8:                                     ; preds = %block_4006e5, %block_4006d3, %block_4006b0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4006b0 ], [ %2, %block_4006d3 ], [ %2, %block_4006e5 ]
  %249 = load i64, i64* %PC
  %250 = add i64 %249, 1
  store i64 %250, i64* %PC
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %252 = load i64, i64* %251, align 8, !tbaa !2428
  %253 = add i64 %252, 8
  %254 = inttoptr i64 %252 to i64*
  %255 = load i64, i64* %254
  store i64 %255, i64* %RBP, align 8, !tbaa !2428
  store i64 %253, i64* %251, align 8, !tbaa !2428
  %256 = load i64, i64* %PC
  %257 = add i64 %256, 1
  store i64 %257, i64* %PC
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %260 = load i64, i64* %259, align 8, !tbaa !2428
  %261 = inttoptr i64 %260 to i64*
  %262 = load i64, i64* %261
  store i64 %262, i64* %258, align 8, !tbaa !2428
  %263 = add i64 %260, 8
  store i64 %263, i64* %259, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_4006e5:                                     ; preds = %block_4006dd
  %264 = load i64, i64* %RAX
  %265 = load i32, i32* %EAX
  %266 = zext i32 %265 to i64
  %267 = load i64, i64* %PC
  %268 = add i64 %267, 3
  store i64 %268, i64* %PC
  br label %block_4006e8

; <label>:269:                                    ; preds = %block_4006dd
  %270 = load i64, i64* %PC
  %271 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %270, %struct.Memory* %2)
  ret %struct.Memory* %271
}

; Function Attrs: noinline
define %struct.Memory* @sub_400c10_kernel_syr2k(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400c10:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %EDI = bitcast %union.anon* %14 to i32*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RAX = bitcast %union.anon* %17 to i64*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RCX = bitcast %union.anon* %20 to i64*
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.GPR, %struct.GPR* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.Reg, %struct.Reg* %22, i32 0, i32 0
  %RDX = bitcast %union.anon* %23 to i64*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.GPR, %struct.GPR* %24, i32 0, i32 13
  %26 = getelementptr inbounds %struct.Reg, %struct.Reg* %25, i32 0, i32 0
  %RSP = bitcast %union.anon* %26 to i64*
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 15
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %RBP = bitcast %union.anon* %29 to i64*
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %31 = getelementptr inbounds %struct.GPR, %struct.GPR* %30, i32 0, i32 17
  %32 = getelementptr inbounds %struct.Reg, %struct.Reg* %31, i32 0, i32 0
  %R8 = bitcast %union.anon* %32 to i64*
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %34 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %33, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %34 to %"class.std::bitset"*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %36 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %35, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %36 to %union.vec128_t*
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %38 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %37, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %38 to %union.vec128_t*
  %39 = load i64, i64* %RBP
  %40 = load i64, i64* %PC
  %41 = add i64 %40, 1
  store i64 %41, i64* %PC
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %43 = load i64, i64* %42, align 8, !tbaa !2428
  %44 = add i64 %43, -8
  %45 = inttoptr i64 %44 to i64*
  store i64 %39, i64* %45
  store i64 %44, i64* %42, align 8, !tbaa !2428
  %46 = load i64, i64* %RSP
  %47 = load i64, i64* %PC
  %48 = add i64 %47, 3
  store i64 %48, i64* %PC
  store i64 %46, i64* %RBP, align 8, !tbaa !2428
  %49 = load i64, i64* %RBP
  %50 = sub i64 %49, 4
  %51 = load i32, i32* %EDI
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* %PC
  %54 = add i64 %53, 3
  store i64 %54, i64* %PC
  %55 = inttoptr i64 %50 to i32*
  store i32 %51, i32* %55
  %56 = load i64, i64* %RBP
  %57 = sub i64 %56, 8
  %58 = load i32, i32* %ESI
  %59 = zext i32 %58 to i64
  %60 = load i64, i64* %PC
  %61 = add i64 %60, 3
  store i64 %61, i64* %PC
  %62 = inttoptr i64 %57 to i32*
  store i32 %58, i32* %62
  %63 = load i64, i64* %RBP
  %64 = sub i64 %63, 16
  %65 = bitcast %union.vec128_t* %XMM0 to i8*
  %66 = load i64, i64* %PC
  %67 = add i64 %66, 5
  store i64 %67, i64* %PC
  %68 = bitcast i8* %65 to double*
  %69 = load double, double* %68, align 1
  %70 = inttoptr i64 %64 to double*
  store double %69, double* %70
  %71 = load i64, i64* %RBP
  %72 = sub i64 %71, 24
  %73 = bitcast %union.vec128_t* %XMM1 to i8*
  %74 = load i64, i64* %PC
  %75 = add i64 %74, 5
  store i64 %75, i64* %PC
  %76 = bitcast i8* %73 to double*
  %77 = load double, double* %76, align 1
  %78 = inttoptr i64 %72 to double*
  store double %77, double* %78
  %79 = load i64, i64* %RBP
  %80 = sub i64 %79, 32
  %81 = load i64, i64* %RDX
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 4
  store i64 %83, i64* %PC
  %84 = inttoptr i64 %80 to i64*
  store i64 %81, i64* %84
  %85 = load i64, i64* %RBP
  %86 = sub i64 %85, 40
  %87 = load i64, i64* %RCX
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 4
  store i64 %89, i64* %PC
  %90 = inttoptr i64 %86 to i64*
  store i64 %87, i64* %90
  %91 = load i64, i64* %RBP
  %92 = sub i64 %91, 48
  %93 = load i64, i64* %R8
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC
  %96 = inttoptr i64 %92 to i64*
  store i64 %93, i64* %96
  %97 = load i64, i64* %RBP
  %98 = sub i64 %97, 52
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 7
  store i64 %100, i64* %PC
  %101 = inttoptr i64 %98 to i32*
  store i32 0, i32* %101
  br label %block_400c37

block_400cbf:                                     ; preds = %block_400cb3
  %102 = load i64, i64* %RBP
  %103 = sub i64 %102, 60
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 7
  store i64 %105, i64* %PC
  %106 = inttoptr i64 %103 to i32*
  store i32 0, i32* %106
  br label %block_400cc6

block_400daa:                                     ; preds = %block_400ca0
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 1
  store i64 %108, i64* %PC
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %110 = load i64, i64* %109, align 8, !tbaa !2428
  %111 = add i64 %110, 8
  %112 = inttoptr i64 %110 to i64*
  %113 = load i64, i64* %112
  store i64 %113, i64* %RBP, align 8, !tbaa !2428
  store i64 %111, i64* %109, align 8, !tbaa !2428
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 1
  store i64 %115, i64* %PC
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %118 = load i64, i64* %117, align 8, !tbaa !2428
  %119 = inttoptr i64 %118 to i64*
  %120 = load i64, i64* %119
  store i64 %120, i64* %116, align 8, !tbaa !2428
  %121 = add i64 %118, 8
  store i64 %121, i64* %117, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.4

block_400c99:                                     ; preds = %block_400c37
  %122 = sub i64 %190, 52
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 7
  store i64 %124, i64* %PC
  %125 = inttoptr i64 %122 to i32*
  store i32 0, i32* %125
  br label %block_400ca0

block_400c37:                                     ; preds = %block_400c86, %block_400c10
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400c10 ], [ %MEMORY.2, %block_400c86 ]
  %126 = load i64, i64* %RBP
  %127 = sub i64 %126, 52
  %128 = load i64, i64* %PC
  %129 = add i64 %128, 3
  store i64 %129, i64* %PC
  %130 = inttoptr i64 %127 to i32*
  %131 = load i32, i32* %130
  %132 = zext i32 %131 to i64
  store i64 %132, i64* %RAX, align 8, !tbaa !2428
  %133 = load i32, i32* %EAX
  %134 = zext i32 %133 to i64
  %135 = load i64, i64* %RBP
  %136 = sub i64 %135, 4
  %137 = load i64, i64* %PC
  %138 = add i64 %137, 3
  store i64 %138, i64* %PC
  %139 = inttoptr i64 %136 to i32*
  %140 = load i32, i32* %139
  %141 = sub i32 %133, %140
  %142 = icmp ult i32 %133, %140
  %143 = zext i1 %142 to i8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %143, i8* %144, align 1, !tbaa !2432
  %145 = and i32 %141, 255
  %146 = call i32 @llvm.ctpop.i32(i32 %145) #16
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = xor i8 %148, 1
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %149, i8* %150, align 1, !tbaa !2446
  %151 = xor i32 %140, %133
  %152 = xor i32 %151, %141
  %153 = lshr i32 %152, 4
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %155, i8* %156, align 1, !tbaa !2447
  %157 = icmp eq i32 %141, 0
  %158 = zext i1 %157 to i8
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %158, i8* %159, align 1, !tbaa !2448
  %160 = lshr i32 %141, 31
  %161 = trunc i32 %160 to i8
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %161, i8* %162, align 1, !tbaa !2449
  %163 = lshr i32 %133, 31
  %164 = lshr i32 %140, 31
  %165 = xor i32 %164, %163
  %166 = xor i32 %160, %163
  %167 = add nuw nsw i32 %166, %165
  %168 = icmp eq i32 %167, 2
  %169 = zext i1 %168 to i8
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %169, i8* %170, align 1, !tbaa !2450
  %171 = load i64, i64* %PC
  %172 = add i64 %171, 92
  %173 = load i64, i64* %PC
  %174 = add i64 %173, 6
  %175 = load i64, i64* %PC
  %176 = add i64 %175, 6
  store i64 %176, i64* %PC
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %178 = load i8, i8* %177, align 1, !tbaa !2449
  %179 = icmp ne i8 %178, 0
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %181 = load i8, i8* %180, align 1, !tbaa !2450
  %182 = icmp ne i8 %181, 0
  %183 = xor i1 %179, %182
  %184 = xor i1 %183, true
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %187 = select i1 %183, i64 %174, i64 %172
  store i64 %187, i64* %186, align 8, !tbaa !2428
  %188 = load i8, i8* %BRANCH_TAKEN
  %189 = icmp eq i8 %188, 1
  %190 = load i64, i64* %RBP
  br i1 %189, label %block_400c99, label %block_400c43

block_400c56:                                     ; preds = %block_400c4a
  %191 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %192 = load i64, i64* %RBP
  %193 = sub i64 %192, 24
  %194 = load i64, i64* %PC
  %195 = add i64 %194, 5
  store i64 %195, i64* %PC
  %196 = inttoptr i64 %193 to double*
  %197 = load double, double* %196
  %198 = bitcast i8* %191 to double*
  store double %197, double* %198, align 1, !tbaa !2452
  %199 = getelementptr inbounds i8, i8* %191, i64 8
  %200 = bitcast i8* %199 to double*
  store double 0.000000e+00, double* %200, align 1, !tbaa !2452
  %201 = load i64, i64* %RBP
  %202 = sub i64 %201, 32
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 4
  store i64 %204, i64* %PC
  %205 = inttoptr i64 %202 to i64*
  %206 = load i64, i64* %205
  store i64 %206, i64* %RAX, align 8, !tbaa !2428
  %207 = load i64, i64* %RBP
  %208 = sub i64 %207, 52
  %209 = load i64, i64* %PC
  %210 = add i64 %209, 4
  store i64 %210, i64* %PC
  %211 = inttoptr i64 %208 to i32*
  %212 = load i32, i32* %211
  %213 = sext i32 %212 to i64
  store i64 %213, i64* %RCX, align 8, !tbaa !2428
  %214 = load i64, i64* %RCX
  %215 = load i64, i64* %PC
  %216 = add i64 %215, 4
  store i64 %216, i64* %PC
  %217 = shl i64 %214, 12
  %218 = icmp slt i64 %217, 0
  %219 = shl i64 %217, 1
  store i64 %219, i64* %RCX, align 8, !tbaa !2428
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %221 = zext i1 %218 to i8
  store i8 %221, i8* %220, align 1, !tbaa !2451
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %223 = trunc i64 %219 to i32
  %224 = and i32 %223, 254
  %225 = call i32 @llvm.ctpop.i32(i32 %224) #16
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = xor i8 %227, 1
  store i8 %228, i8* %222, align 1, !tbaa !2451
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %229, align 1, !tbaa !2451
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %231 = icmp eq i64 %219, 0
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %230, align 1, !tbaa !2451
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %234 = lshr i64 %219, 63
  %235 = trunc i64 %234 to i8
  store i8 %235, i8* %233, align 1, !tbaa !2451
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %236, align 1, !tbaa !2451
  %237 = load i64, i64* %RAX
  %238 = load i64, i64* %RCX
  %239 = load i64, i64* %PC
  %240 = add i64 %239, 3
  store i64 %240, i64* %PC
  %241 = add i64 %238, %237
  store i64 %241, i64* %RAX, align 8, !tbaa !2428
  %242 = icmp ult i64 %241, %237
  %243 = icmp ult i64 %241, %238
  %244 = or i1 %242, %243
  %245 = zext i1 %244 to i8
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %245, i8* %246, align 1, !tbaa !2432
  %247 = trunc i64 %241 to i32
  %248 = and i32 %247, 255
  %249 = call i32 @llvm.ctpop.i32(i32 %248) #16
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  %252 = xor i8 %251, 1
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %252, i8* %253, align 1, !tbaa !2446
  %254 = xor i64 %238, %237
  %255 = xor i64 %254, %241
  %256 = lshr i64 %255, 4
  %257 = trunc i64 %256 to i8
  %258 = and i8 %257, 1
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %258, i8* %259, align 1, !tbaa !2447
  %260 = icmp eq i64 %241, 0
  %261 = zext i1 %260 to i8
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %261, i8* %262, align 1, !tbaa !2448
  %263 = lshr i64 %241, 63
  %264 = trunc i64 %263 to i8
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %264, i8* %265, align 1, !tbaa !2449
  %266 = lshr i64 %237, 63
  %267 = lshr i64 %238, 63
  %268 = xor i64 %263, %266
  %269 = xor i64 %263, %267
  %270 = add nuw nsw i64 %268, %269
  %271 = icmp eq i64 %270, 2
  %272 = zext i1 %271 to i8
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %272, i8* %273, align 1, !tbaa !2450
  %274 = load i64, i64* %RBP
  %275 = sub i64 %274, 56
  %276 = load i64, i64* %PC
  %277 = add i64 %276, 4
  store i64 %277, i64* %PC
  %278 = inttoptr i64 %275 to i32*
  %279 = load i32, i32* %278
  %280 = sext i32 %279 to i64
  store i64 %280, i64* %RCX, align 8, !tbaa !2428
  %281 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %282 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %283 = load i64, i64* %RAX
  %284 = load i64, i64* %RCX
  %285 = mul i64 %284, 8
  %286 = add i64 %285, %283
  %287 = load i64, i64* %PC
  %288 = add i64 %287, 5
  store i64 %288, i64* %PC
  %289 = bitcast i8* %282 to double*
  %290 = load double, double* %289, align 1
  %291 = getelementptr inbounds i8, i8* %282, i64 8
  %292 = bitcast i8* %291 to i64*
  %293 = load i64, i64* %292, align 1
  %294 = inttoptr i64 %286 to double*
  %295 = load double, double* %294
  %296 = fmul double %290, %295
  %297 = bitcast i8* %281 to double*
  store double %296, double* %297, align 1, !tbaa !2452
  %298 = getelementptr inbounds i8, i8* %281, i64 8
  %299 = bitcast i8* %298 to i64*
  store i64 %293, i64* %299, align 1, !tbaa !2452
  %300 = load i64, i64* %RAX
  %301 = load i64, i64* %RCX
  %302 = mul i64 %301, 8
  %303 = add i64 %302, %300
  %304 = bitcast %union.vec128_t* %XMM0 to i8*
  %305 = load i64, i64* %PC
  %306 = add i64 %305, 5
  store i64 %306, i64* %PC
  %307 = bitcast i8* %304 to double*
  %308 = load double, double* %307, align 1
  %309 = inttoptr i64 %303 to double*
  store double %308, double* %309
  %310 = load i64, i64* %RBP
  %311 = sub i64 %310, 56
  %312 = load i64, i64* %PC
  %313 = add i64 %312, 3
  store i64 %313, i64* %PC
  %314 = inttoptr i64 %311 to i32*
  %315 = load i32, i32* %314
  %316 = zext i32 %315 to i64
  store i64 %316, i64* %RAX, align 8, !tbaa !2428
  %317 = load i64, i64* %RAX
  %318 = load i64, i64* %PC
  %319 = add i64 %318, 3
  store i64 %319, i64* %PC
  %320 = trunc i64 %317 to i32
  %321 = add i32 1, %320
  %322 = zext i32 %321 to i64
  store i64 %322, i64* %RAX, align 8, !tbaa !2428
  %323 = icmp ult i32 %321, %320
  %324 = icmp ult i32 %321, 1
  %325 = or i1 %323, %324
  %326 = zext i1 %325 to i8
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %326, i8* %327, align 1, !tbaa !2432
  %328 = and i32 %321, 255
  %329 = call i32 @llvm.ctpop.i32(i32 %328) #16
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  %332 = xor i8 %331, 1
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %332, i8* %333, align 1, !tbaa !2446
  %334 = xor i64 1, %317
  %335 = trunc i64 %334 to i32
  %336 = xor i32 %335, %321
  %337 = lshr i32 %336, 4
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %339, i8* %340, align 1, !tbaa !2447
  %341 = icmp eq i32 %321, 0
  %342 = zext i1 %341 to i8
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %342, i8* %343, align 1, !tbaa !2448
  %344 = lshr i32 %321, 31
  %345 = trunc i32 %344 to i8
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %345, i8* %346, align 1, !tbaa !2449
  %347 = lshr i32 %320, 31
  %348 = xor i32 %344, %347
  %349 = add nuw nsw i32 %348, %344
  %350 = icmp eq i32 %349, 2
  %351 = zext i1 %350 to i8
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %351, i8* %352, align 1, !tbaa !2450
  %353 = load i64, i64* %RBP
  %354 = sub i64 %353, 56
  %355 = load i32, i32* %EAX
  %356 = zext i32 %355 to i64
  %357 = load i64, i64* %PC
  %358 = add i64 %357, 3
  store i64 %358, i64* %PC
  %359 = inttoptr i64 %354 to i32*
  store i32 %355, i32* %359
  %360 = load i64, i64* %PC
  %361 = sub i64 %360, 55
  %362 = load i64, i64* %PC
  %363 = add i64 %362, 5
  store i64 %363, i64* %PC
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %361, i64* %364, align 8, !tbaa !2428
  br label %block_400c4a

block_400cb3:                                     ; preds = %block_400d84, %block_400cac
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.4, %block_400cac ], [ %MEMORY.3, %block_400d84 ]
  %365 = load i64, i64* %RBP
  %366 = sub i64 %365, 56
  %367 = load i64, i64* %PC
  %368 = add i64 %367, 3
  store i64 %368, i64* %PC
  %369 = inttoptr i64 %366 to i32*
  %370 = load i32, i32* %369
  %371 = zext i32 %370 to i64
  store i64 %371, i64* %RAX, align 8, !tbaa !2428
  %372 = load i32, i32* %EAX
  %373 = zext i32 %372 to i64
  %374 = load i64, i64* %RBP
  %375 = sub i64 %374, 4
  %376 = load i64, i64* %PC
  %377 = add i64 %376, 3
  store i64 %377, i64* %PC
  %378 = inttoptr i64 %375 to i32*
  %379 = load i32, i32* %378
  %380 = sub i32 %372, %379
  %381 = icmp ult i32 %372, %379
  %382 = zext i1 %381 to i8
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %382, i8* %383, align 1, !tbaa !2432
  %384 = and i32 %380, 255
  %385 = call i32 @llvm.ctpop.i32(i32 %384) #16
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  %388 = xor i8 %387, 1
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %388, i8* %389, align 1, !tbaa !2446
  %390 = xor i32 %379, %372
  %391 = xor i32 %390, %380
  %392 = lshr i32 %391, 4
  %393 = trunc i32 %392 to i8
  %394 = and i8 %393, 1
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %394, i8* %395, align 1, !tbaa !2447
  %396 = icmp eq i32 %380, 0
  %397 = zext i1 %396 to i8
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %397, i8* %398, align 1, !tbaa !2448
  %399 = lshr i32 %380, 31
  %400 = trunc i32 %399 to i8
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %400, i8* %401, align 1, !tbaa !2449
  %402 = lshr i32 %372, 31
  %403 = lshr i32 %379, 31
  %404 = xor i32 %403, %402
  %405 = xor i32 %399, %402
  %406 = add nuw nsw i32 %405, %404
  %407 = icmp eq i32 %406, 2
  %408 = zext i1 %407 to i8
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %408, i8* %409, align 1, !tbaa !2450
  %410 = load i64, i64* %PC
  %411 = add i64 %410, 222
  %412 = load i64, i64* %PC
  %413 = add i64 %412, 6
  %414 = load i64, i64* %PC
  %415 = add i64 %414, 6
  store i64 %415, i64* %PC
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %417 = load i8, i8* %416, align 1, !tbaa !2449
  %418 = icmp ne i8 %417, 0
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %420 = load i8, i8* %419, align 1, !tbaa !2450
  %421 = icmp ne i8 %420, 0
  %422 = xor i1 %418, %421
  %423 = xor i1 %422, true
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %426 = select i1 %422, i64 %413, i64 %411
  store i64 %426, i64* %425, align 8, !tbaa !2428
  %427 = load i8, i8* %BRANCH_TAKEN
  %428 = icmp eq i8 %427, 1
  br i1 %428, label %block_400d97, label %block_400cbf

block_400cd2:                                     ; preds = %block_400cc6
  %429 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %430 = load i64, i64* %RBP
  %431 = sub i64 %430, 16
  %432 = load i64, i64* %PC
  %433 = add i64 %432, 5
  store i64 %433, i64* %PC
  %434 = inttoptr i64 %431 to double*
  %435 = load double, double* %434
  %436 = bitcast i8* %429 to double*
  store double %435, double* %436, align 1, !tbaa !2452
  %437 = getelementptr inbounds i8, i8* %429, i64 8
  %438 = bitcast i8* %437 to double*
  store double 0.000000e+00, double* %438, align 1, !tbaa !2452
  %439 = load i64, i64* %RBP
  %440 = sub i64 %439, 40
  %441 = load i64, i64* %PC
  %442 = add i64 %441, 4
  store i64 %442, i64* %PC
  %443 = inttoptr i64 %440 to i64*
  %444 = load i64, i64* %443
  store i64 %444, i64* %RAX, align 8, !tbaa !2428
  %445 = load i64, i64* %RBP
  %446 = sub i64 %445, 52
  %447 = load i64, i64* %PC
  %448 = add i64 %447, 4
  store i64 %448, i64* %PC
  %449 = inttoptr i64 %446 to i32*
  %450 = load i32, i32* %449
  %451 = sext i32 %450 to i64
  store i64 %451, i64* %RCX, align 8, !tbaa !2428
  %452 = load i64, i64* %RCX
  %453 = load i64, i64* %PC
  %454 = add i64 %453, 4
  store i64 %454, i64* %PC
  %455 = shl i64 %452, 12
  %456 = icmp slt i64 %455, 0
  %457 = shl i64 %455, 1
  store i64 %457, i64* %RCX, align 8, !tbaa !2428
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %459 = zext i1 %456 to i8
  store i8 %459, i8* %458, align 1, !tbaa !2451
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %461 = trunc i64 %457 to i32
  %462 = and i32 %461, 254
  %463 = call i32 @llvm.ctpop.i32(i32 %462) #16
  %464 = trunc i32 %463 to i8
  %465 = and i8 %464, 1
  %466 = xor i8 %465, 1
  store i8 %466, i8* %460, align 1, !tbaa !2451
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %467, align 1, !tbaa !2451
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %469 = icmp eq i64 %457, 0
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %468, align 1, !tbaa !2451
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %472 = lshr i64 %457, 63
  %473 = trunc i64 %472 to i8
  store i8 %473, i8* %471, align 1, !tbaa !2451
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %474, align 1, !tbaa !2451
  %475 = load i64, i64* %RAX
  %476 = load i64, i64* %RCX
  %477 = load i64, i64* %PC
  %478 = add i64 %477, 3
  store i64 %478, i64* %PC
  %479 = add i64 %476, %475
  store i64 %479, i64* %RAX, align 8, !tbaa !2428
  %480 = icmp ult i64 %479, %475
  %481 = icmp ult i64 %479, %476
  %482 = or i1 %480, %481
  %483 = zext i1 %482 to i8
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %483, i8* %484, align 1, !tbaa !2432
  %485 = trunc i64 %479 to i32
  %486 = and i32 %485, 255
  %487 = call i32 @llvm.ctpop.i32(i32 %486) #16
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  %490 = xor i8 %489, 1
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %490, i8* %491, align 1, !tbaa !2446
  %492 = xor i64 %476, %475
  %493 = xor i64 %492, %479
  %494 = lshr i64 %493, 4
  %495 = trunc i64 %494 to i8
  %496 = and i8 %495, 1
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %496, i8* %497, align 1, !tbaa !2447
  %498 = icmp eq i64 %479, 0
  %499 = zext i1 %498 to i8
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %499, i8* %500, align 1, !tbaa !2448
  %501 = lshr i64 %479, 63
  %502 = trunc i64 %501 to i8
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %502, i8* %503, align 1, !tbaa !2449
  %504 = lshr i64 %475, 63
  %505 = lshr i64 %476, 63
  %506 = xor i64 %501, %504
  %507 = xor i64 %501, %505
  %508 = add nuw nsw i64 %506, %507
  %509 = icmp eq i64 %508, 2
  %510 = zext i1 %509 to i8
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %510, i8* %511, align 1, !tbaa !2450
  %512 = load i64, i64* %RBP
  %513 = sub i64 %512, 60
  %514 = load i64, i64* %PC
  %515 = add i64 %514, 4
  store i64 %515, i64* %PC
  %516 = inttoptr i64 %513 to i32*
  %517 = load i32, i32* %516
  %518 = sext i32 %517 to i64
  store i64 %518, i64* %RCX, align 8, !tbaa !2428
  %519 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %520 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %521 = load i64, i64* %RAX
  %522 = load i64, i64* %RCX
  %523 = mul i64 %522, 8
  %524 = add i64 %523, %521
  %525 = load i64, i64* %PC
  %526 = add i64 %525, 5
  store i64 %526, i64* %PC
  %527 = bitcast i8* %520 to double*
  %528 = load double, double* %527, align 1
  %529 = getelementptr inbounds i8, i8* %520, i64 8
  %530 = bitcast i8* %529 to i64*
  %531 = load i64, i64* %530, align 1
  %532 = inttoptr i64 %524 to double*
  %533 = load double, double* %532
  %534 = fmul double %528, %533
  %535 = bitcast i8* %519 to double*
  store double %534, double* %535, align 1, !tbaa !2452
  %536 = getelementptr inbounds i8, i8* %519, i64 8
  %537 = bitcast i8* %536 to i64*
  store i64 %531, i64* %537, align 1, !tbaa !2452
  %538 = load i64, i64* %RBP
  %539 = sub i64 %538, 48
  %540 = load i64, i64* %PC
  %541 = add i64 %540, 4
  store i64 %541, i64* %PC
  %542 = inttoptr i64 %539 to i64*
  %543 = load i64, i64* %542
  store i64 %543, i64* %RAX, align 8, !tbaa !2428
  %544 = load i64, i64* %RBP
  %545 = sub i64 %544, 56
  %546 = load i64, i64* %PC
  %547 = add i64 %546, 4
  store i64 %547, i64* %PC
  %548 = inttoptr i64 %545 to i32*
  %549 = load i32, i32* %548
  %550 = sext i32 %549 to i64
  store i64 %550, i64* %RCX, align 8, !tbaa !2428
  %551 = load i64, i64* %RCX
  %552 = load i64, i64* %PC
  %553 = add i64 %552, 4
  store i64 %553, i64* %PC
  %554 = shl i64 %551, 12
  %555 = icmp slt i64 %554, 0
  %556 = shl i64 %554, 1
  store i64 %556, i64* %RCX, align 8, !tbaa !2428
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %558 = zext i1 %555 to i8
  store i8 %558, i8* %557, align 1, !tbaa !2451
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %560 = trunc i64 %556 to i32
  %561 = and i32 %560, 254
  %562 = call i32 @llvm.ctpop.i32(i32 %561) #16
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  %565 = xor i8 %564, 1
  store i8 %565, i8* %559, align 1, !tbaa !2451
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %566, align 1, !tbaa !2451
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %568 = icmp eq i64 %556, 0
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %567, align 1, !tbaa !2451
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %571 = lshr i64 %556, 63
  %572 = trunc i64 %571 to i8
  store i8 %572, i8* %570, align 1, !tbaa !2451
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %573, align 1, !tbaa !2451
  %574 = load i64, i64* %RAX
  %575 = load i64, i64* %RCX
  %576 = load i64, i64* %PC
  %577 = add i64 %576, 3
  store i64 %577, i64* %PC
  %578 = add i64 %575, %574
  store i64 %578, i64* %RAX, align 8, !tbaa !2428
  %579 = icmp ult i64 %578, %574
  %580 = icmp ult i64 %578, %575
  %581 = or i1 %579, %580
  %582 = zext i1 %581 to i8
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %582, i8* %583, align 1, !tbaa !2432
  %584 = trunc i64 %578 to i32
  %585 = and i32 %584, 255
  %586 = call i32 @llvm.ctpop.i32(i32 %585) #16
  %587 = trunc i32 %586 to i8
  %588 = and i8 %587, 1
  %589 = xor i8 %588, 1
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %589, i8* %590, align 1, !tbaa !2446
  %591 = xor i64 %575, %574
  %592 = xor i64 %591, %578
  %593 = lshr i64 %592, 4
  %594 = trunc i64 %593 to i8
  %595 = and i8 %594, 1
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %595, i8* %596, align 1, !tbaa !2447
  %597 = icmp eq i64 %578, 0
  %598 = zext i1 %597 to i8
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %598, i8* %599, align 1, !tbaa !2448
  %600 = lshr i64 %578, 63
  %601 = trunc i64 %600 to i8
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %601, i8* %602, align 1, !tbaa !2449
  %603 = lshr i64 %574, 63
  %604 = lshr i64 %575, 63
  %605 = xor i64 %600, %603
  %606 = xor i64 %600, %604
  %607 = add nuw nsw i64 %605, %606
  %608 = icmp eq i64 %607, 2
  %609 = zext i1 %608 to i8
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %609, i8* %610, align 1, !tbaa !2450
  %611 = load i64, i64* %RBP
  %612 = sub i64 %611, 60
  %613 = load i64, i64* %PC
  %614 = add i64 %613, 4
  store i64 %614, i64* %PC
  %615 = inttoptr i64 %612 to i32*
  %616 = load i32, i32* %615
  %617 = sext i32 %616 to i64
  store i64 %617, i64* %RCX, align 8, !tbaa !2428
  %618 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %619 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %620 = load i64, i64* %RAX
  %621 = load i64, i64* %RCX
  %622 = mul i64 %621, 8
  %623 = add i64 %622, %620
  %624 = load i64, i64* %PC
  %625 = add i64 %624, 5
  store i64 %625, i64* %PC
  %626 = bitcast i8* %619 to double*
  %627 = load double, double* %626, align 1
  %628 = getelementptr inbounds i8, i8* %619, i64 8
  %629 = bitcast i8* %628 to i64*
  %630 = load i64, i64* %629, align 1
  %631 = inttoptr i64 %623 to double*
  %632 = load double, double* %631
  %633 = fmul double %627, %632
  %634 = bitcast i8* %618 to double*
  store double %633, double* %634, align 1, !tbaa !2452
  %635 = getelementptr inbounds i8, i8* %618, i64 8
  %636 = bitcast i8* %635 to i64*
  store i64 %630, i64* %636, align 1, !tbaa !2452
  %637 = load i64, i64* %RBP
  %638 = sub i64 %637, 32
  %639 = load i64, i64* %PC
  %640 = add i64 %639, 4
  store i64 %640, i64* %PC
  %641 = inttoptr i64 %638 to i64*
  %642 = load i64, i64* %641
  store i64 %642, i64* %RAX, align 8, !tbaa !2428
  %643 = load i64, i64* %RBP
  %644 = sub i64 %643, 52
  %645 = load i64, i64* %PC
  %646 = add i64 %645, 4
  store i64 %646, i64* %PC
  %647 = inttoptr i64 %644 to i32*
  %648 = load i32, i32* %647
  %649 = sext i32 %648 to i64
  store i64 %649, i64* %RCX, align 8, !tbaa !2428
  %650 = load i64, i64* %RCX
  %651 = load i64, i64* %PC
  %652 = add i64 %651, 4
  store i64 %652, i64* %PC
  %653 = shl i64 %650, 12
  %654 = icmp slt i64 %653, 0
  %655 = shl i64 %653, 1
  store i64 %655, i64* %RCX, align 8, !tbaa !2428
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %657 = zext i1 %654 to i8
  store i8 %657, i8* %656, align 1, !tbaa !2451
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %659 = trunc i64 %655 to i32
  %660 = and i32 %659, 254
  %661 = call i32 @llvm.ctpop.i32(i32 %660) #16
  %662 = trunc i32 %661 to i8
  %663 = and i8 %662, 1
  %664 = xor i8 %663, 1
  store i8 %664, i8* %658, align 1, !tbaa !2451
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %665, align 1, !tbaa !2451
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %667 = icmp eq i64 %655, 0
  %668 = zext i1 %667 to i8
  store i8 %668, i8* %666, align 1, !tbaa !2451
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %670 = lshr i64 %655, 63
  %671 = trunc i64 %670 to i8
  store i8 %671, i8* %669, align 1, !tbaa !2451
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %672, align 1, !tbaa !2451
  %673 = load i64, i64* %RAX
  %674 = load i64, i64* %RCX
  %675 = load i64, i64* %PC
  %676 = add i64 %675, 3
  store i64 %676, i64* %PC
  %677 = add i64 %674, %673
  store i64 %677, i64* %RAX, align 8, !tbaa !2428
  %678 = icmp ult i64 %677, %673
  %679 = icmp ult i64 %677, %674
  %680 = or i1 %678, %679
  %681 = zext i1 %680 to i8
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %681, i8* %682, align 1, !tbaa !2432
  %683 = trunc i64 %677 to i32
  %684 = and i32 %683, 255
  %685 = call i32 @llvm.ctpop.i32(i32 %684) #16
  %686 = trunc i32 %685 to i8
  %687 = and i8 %686, 1
  %688 = xor i8 %687, 1
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %688, i8* %689, align 1, !tbaa !2446
  %690 = xor i64 %674, %673
  %691 = xor i64 %690, %677
  %692 = lshr i64 %691, 4
  %693 = trunc i64 %692 to i8
  %694 = and i8 %693, 1
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %694, i8* %695, align 1, !tbaa !2447
  %696 = icmp eq i64 %677, 0
  %697 = zext i1 %696 to i8
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %697, i8* %698, align 1, !tbaa !2448
  %699 = lshr i64 %677, 63
  %700 = trunc i64 %699 to i8
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %700, i8* %701, align 1, !tbaa !2449
  %702 = lshr i64 %673, 63
  %703 = lshr i64 %674, 63
  %704 = xor i64 %699, %702
  %705 = xor i64 %699, %703
  %706 = add nuw nsw i64 %704, %705
  %707 = icmp eq i64 %706, 2
  %708 = zext i1 %707 to i8
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %708, i8* %709, align 1, !tbaa !2450
  %710 = load i64, i64* %RBP
  %711 = sub i64 %710, 56
  %712 = load i64, i64* %PC
  %713 = add i64 %712, 4
  store i64 %713, i64* %PC
  %714 = inttoptr i64 %711 to i32*
  %715 = load i32, i32* %714
  %716 = sext i32 %715 to i64
  store i64 %716, i64* %RCX, align 8, !tbaa !2428
  %717 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %718 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %719 = load i64, i64* %RAX
  %720 = load i64, i64* %RCX
  %721 = mul i64 %720, 8
  %722 = add i64 %721, %719
  %723 = load i64, i64* %PC
  %724 = add i64 %723, 5
  store i64 %724, i64* %PC
  %725 = bitcast i8* %718 to double*
  %726 = load double, double* %725, align 1
  %727 = getelementptr inbounds i8, i8* %718, i64 8
  %728 = bitcast i8* %727 to i64*
  %729 = load i64, i64* %728, align 1
  %730 = inttoptr i64 %722 to double*
  %731 = load double, double* %730
  %732 = fadd double %726, %731
  %733 = bitcast i8* %717 to double*
  store double %732, double* %733, align 1, !tbaa !2452
  %734 = getelementptr inbounds i8, i8* %717, i64 8
  %735 = bitcast i8* %734 to i64*
  store i64 %729, i64* %735, align 1, !tbaa !2452
  %736 = load i64, i64* %RAX
  %737 = load i64, i64* %RCX
  %738 = mul i64 %737, 8
  %739 = add i64 %738, %736
  %740 = bitcast %union.vec128_t* %XMM0 to i8*
  %741 = load i64, i64* %PC
  %742 = add i64 %741, 5
  store i64 %742, i64* %PC
  %743 = bitcast i8* %740 to double*
  %744 = load double, double* %743, align 1
  %745 = inttoptr i64 %739 to double*
  store double %744, double* %745
  %746 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %747 = load i64, i64* %RBP
  %748 = sub i64 %747, 16
  %749 = load i64, i64* %PC
  %750 = add i64 %749, 5
  store i64 %750, i64* %PC
  %751 = inttoptr i64 %748 to double*
  %752 = load double, double* %751
  %753 = bitcast i8* %746 to double*
  store double %752, double* %753, align 1, !tbaa !2452
  %754 = getelementptr inbounds i8, i8* %746, i64 8
  %755 = bitcast i8* %754 to double*
  store double 0.000000e+00, double* %755, align 1, !tbaa !2452
  %756 = load i64, i64* %RBP
  %757 = sub i64 %756, 48
  %758 = load i64, i64* %PC
  %759 = add i64 %758, 4
  store i64 %759, i64* %PC
  %760 = inttoptr i64 %757 to i64*
  %761 = load i64, i64* %760
  store i64 %761, i64* %RAX, align 8, !tbaa !2428
  %762 = load i64, i64* %RBP
  %763 = sub i64 %762, 52
  %764 = load i64, i64* %PC
  %765 = add i64 %764, 4
  store i64 %765, i64* %PC
  %766 = inttoptr i64 %763 to i32*
  %767 = load i32, i32* %766
  %768 = sext i32 %767 to i64
  store i64 %768, i64* %RCX, align 8, !tbaa !2428
  %769 = load i64, i64* %RCX
  %770 = load i64, i64* %PC
  %771 = add i64 %770, 4
  store i64 %771, i64* %PC
  %772 = shl i64 %769, 12
  %773 = icmp slt i64 %772, 0
  %774 = shl i64 %772, 1
  store i64 %774, i64* %RCX, align 8, !tbaa !2428
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %776 = zext i1 %773 to i8
  store i8 %776, i8* %775, align 1, !tbaa !2451
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %778 = trunc i64 %774 to i32
  %779 = and i32 %778, 254
  %780 = call i32 @llvm.ctpop.i32(i32 %779) #16
  %781 = trunc i32 %780 to i8
  %782 = and i8 %781, 1
  %783 = xor i8 %782, 1
  store i8 %783, i8* %777, align 1, !tbaa !2451
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %784, align 1, !tbaa !2451
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %786 = icmp eq i64 %774, 0
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %785, align 1, !tbaa !2451
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %789 = lshr i64 %774, 63
  %790 = trunc i64 %789 to i8
  store i8 %790, i8* %788, align 1, !tbaa !2451
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %791, align 1, !tbaa !2451
  %792 = load i64, i64* %RAX
  %793 = load i64, i64* %RCX
  %794 = load i64, i64* %PC
  %795 = add i64 %794, 3
  store i64 %795, i64* %PC
  %796 = add i64 %793, %792
  store i64 %796, i64* %RAX, align 8, !tbaa !2428
  %797 = icmp ult i64 %796, %792
  %798 = icmp ult i64 %796, %793
  %799 = or i1 %797, %798
  %800 = zext i1 %799 to i8
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %800, i8* %801, align 1, !tbaa !2432
  %802 = trunc i64 %796 to i32
  %803 = and i32 %802, 255
  %804 = call i32 @llvm.ctpop.i32(i32 %803) #16
  %805 = trunc i32 %804 to i8
  %806 = and i8 %805, 1
  %807 = xor i8 %806, 1
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %807, i8* %808, align 1, !tbaa !2446
  %809 = xor i64 %793, %792
  %810 = xor i64 %809, %796
  %811 = lshr i64 %810, 4
  %812 = trunc i64 %811 to i8
  %813 = and i8 %812, 1
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %813, i8* %814, align 1, !tbaa !2447
  %815 = icmp eq i64 %796, 0
  %816 = zext i1 %815 to i8
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %816, i8* %817, align 1, !tbaa !2448
  %818 = lshr i64 %796, 63
  %819 = trunc i64 %818 to i8
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %819, i8* %820, align 1, !tbaa !2449
  %821 = lshr i64 %792, 63
  %822 = lshr i64 %793, 63
  %823 = xor i64 %818, %821
  %824 = xor i64 %818, %822
  %825 = add nuw nsw i64 %823, %824
  %826 = icmp eq i64 %825, 2
  %827 = zext i1 %826 to i8
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %827, i8* %828, align 1, !tbaa !2450
  %829 = load i64, i64* %RBP
  %830 = sub i64 %829, 60
  %831 = load i64, i64* %PC
  %832 = add i64 %831, 4
  store i64 %832, i64* %PC
  %833 = inttoptr i64 %830 to i32*
  %834 = load i32, i32* %833
  %835 = sext i32 %834 to i64
  store i64 %835, i64* %RCX, align 8, !tbaa !2428
  %836 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %837 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %838 = load i64, i64* %RAX
  %839 = load i64, i64* %RCX
  %840 = mul i64 %839, 8
  %841 = add i64 %840, %838
  %842 = load i64, i64* %PC
  %843 = add i64 %842, 5
  store i64 %843, i64* %PC
  %844 = bitcast i8* %837 to double*
  %845 = load double, double* %844, align 1
  %846 = getelementptr inbounds i8, i8* %837, i64 8
  %847 = bitcast i8* %846 to i64*
  %848 = load i64, i64* %847, align 1
  %849 = inttoptr i64 %841 to double*
  %850 = load double, double* %849
  %851 = fmul double %845, %850
  %852 = bitcast i8* %836 to double*
  store double %851, double* %852, align 1, !tbaa !2452
  %853 = getelementptr inbounds i8, i8* %836, i64 8
  %854 = bitcast i8* %853 to i64*
  store i64 %848, i64* %854, align 1, !tbaa !2452
  %855 = load i64, i64* %RBP
  %856 = sub i64 %855, 40
  %857 = load i64, i64* %PC
  %858 = add i64 %857, 4
  store i64 %858, i64* %PC
  %859 = inttoptr i64 %856 to i64*
  %860 = load i64, i64* %859
  store i64 %860, i64* %RAX, align 8, !tbaa !2428
  %861 = load i64, i64* %RBP
  %862 = sub i64 %861, 56
  %863 = load i64, i64* %PC
  %864 = add i64 %863, 4
  store i64 %864, i64* %PC
  %865 = inttoptr i64 %862 to i32*
  %866 = load i32, i32* %865
  %867 = sext i32 %866 to i64
  store i64 %867, i64* %RCX, align 8, !tbaa !2428
  %868 = load i64, i64* %RCX
  %869 = load i64, i64* %PC
  %870 = add i64 %869, 4
  store i64 %870, i64* %PC
  %871 = shl i64 %868, 12
  %872 = icmp slt i64 %871, 0
  %873 = shl i64 %871, 1
  store i64 %873, i64* %RCX, align 8, !tbaa !2428
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %875 = zext i1 %872 to i8
  store i8 %875, i8* %874, align 1, !tbaa !2451
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %877 = trunc i64 %873 to i32
  %878 = and i32 %877, 254
  %879 = call i32 @llvm.ctpop.i32(i32 %878) #16
  %880 = trunc i32 %879 to i8
  %881 = and i8 %880, 1
  %882 = xor i8 %881, 1
  store i8 %882, i8* %876, align 1, !tbaa !2451
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %883, align 1, !tbaa !2451
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %885 = icmp eq i64 %873, 0
  %886 = zext i1 %885 to i8
  store i8 %886, i8* %884, align 1, !tbaa !2451
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %888 = lshr i64 %873, 63
  %889 = trunc i64 %888 to i8
  store i8 %889, i8* %887, align 1, !tbaa !2451
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %890, align 1, !tbaa !2451
  %891 = load i64, i64* %RAX
  %892 = load i64, i64* %RCX
  %893 = load i64, i64* %PC
  %894 = add i64 %893, 3
  store i64 %894, i64* %PC
  %895 = add i64 %892, %891
  store i64 %895, i64* %RAX, align 8, !tbaa !2428
  %896 = icmp ult i64 %895, %891
  %897 = icmp ult i64 %895, %892
  %898 = or i1 %896, %897
  %899 = zext i1 %898 to i8
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %899, i8* %900, align 1, !tbaa !2432
  %901 = trunc i64 %895 to i32
  %902 = and i32 %901, 255
  %903 = call i32 @llvm.ctpop.i32(i32 %902) #16
  %904 = trunc i32 %903 to i8
  %905 = and i8 %904, 1
  %906 = xor i8 %905, 1
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %906, i8* %907, align 1, !tbaa !2446
  %908 = xor i64 %892, %891
  %909 = xor i64 %908, %895
  %910 = lshr i64 %909, 4
  %911 = trunc i64 %910 to i8
  %912 = and i8 %911, 1
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %912, i8* %913, align 1, !tbaa !2447
  %914 = icmp eq i64 %895, 0
  %915 = zext i1 %914 to i8
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %915, i8* %916, align 1, !tbaa !2448
  %917 = lshr i64 %895, 63
  %918 = trunc i64 %917 to i8
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %918, i8* %919, align 1, !tbaa !2449
  %920 = lshr i64 %891, 63
  %921 = lshr i64 %892, 63
  %922 = xor i64 %917, %920
  %923 = xor i64 %917, %921
  %924 = add nuw nsw i64 %922, %923
  %925 = icmp eq i64 %924, 2
  %926 = zext i1 %925 to i8
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %926, i8* %927, align 1, !tbaa !2450
  %928 = load i64, i64* %RBP
  %929 = sub i64 %928, 60
  %930 = load i64, i64* %PC
  %931 = add i64 %930, 4
  store i64 %931, i64* %PC
  %932 = inttoptr i64 %929 to i32*
  %933 = load i32, i32* %932
  %934 = sext i32 %933 to i64
  store i64 %934, i64* %RCX, align 8, !tbaa !2428
  %935 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %936 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %937 = load i64, i64* %RAX
  %938 = load i64, i64* %RCX
  %939 = mul i64 %938, 8
  %940 = add i64 %939, %937
  %941 = load i64, i64* %PC
  %942 = add i64 %941, 5
  store i64 %942, i64* %PC
  %943 = bitcast i8* %936 to double*
  %944 = load double, double* %943, align 1
  %945 = getelementptr inbounds i8, i8* %936, i64 8
  %946 = bitcast i8* %945 to i64*
  %947 = load i64, i64* %946, align 1
  %948 = inttoptr i64 %940 to double*
  %949 = load double, double* %948
  %950 = fmul double %944, %949
  %951 = bitcast i8* %935 to double*
  store double %950, double* %951, align 1, !tbaa !2452
  %952 = getelementptr inbounds i8, i8* %935, i64 8
  %953 = bitcast i8* %952 to i64*
  store i64 %947, i64* %953, align 1, !tbaa !2452
  %954 = load i64, i64* %RBP
  %955 = sub i64 %954, 32
  %956 = load i64, i64* %PC
  %957 = add i64 %956, 4
  store i64 %957, i64* %PC
  %958 = inttoptr i64 %955 to i64*
  %959 = load i64, i64* %958
  store i64 %959, i64* %RAX, align 8, !tbaa !2428
  %960 = load i64, i64* %RBP
  %961 = sub i64 %960, 52
  %962 = load i64, i64* %PC
  %963 = add i64 %962, 4
  store i64 %963, i64* %PC
  %964 = inttoptr i64 %961 to i32*
  %965 = load i32, i32* %964
  %966 = sext i32 %965 to i64
  store i64 %966, i64* %RCX, align 8, !tbaa !2428
  %967 = load i64, i64* %RCX
  %968 = load i64, i64* %PC
  %969 = add i64 %968, 4
  store i64 %969, i64* %PC
  %970 = shl i64 %967, 12
  %971 = icmp slt i64 %970, 0
  %972 = shl i64 %970, 1
  store i64 %972, i64* %RCX, align 8, !tbaa !2428
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %974 = zext i1 %971 to i8
  store i8 %974, i8* %973, align 1, !tbaa !2451
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %976 = trunc i64 %972 to i32
  %977 = and i32 %976, 254
  %978 = call i32 @llvm.ctpop.i32(i32 %977) #16
  %979 = trunc i32 %978 to i8
  %980 = and i8 %979, 1
  %981 = xor i8 %980, 1
  store i8 %981, i8* %975, align 1, !tbaa !2451
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %982, align 1, !tbaa !2451
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %984 = icmp eq i64 %972, 0
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %983, align 1, !tbaa !2451
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %987 = lshr i64 %972, 63
  %988 = trunc i64 %987 to i8
  store i8 %988, i8* %986, align 1, !tbaa !2451
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %989, align 1, !tbaa !2451
  %990 = load i64, i64* %RAX
  %991 = load i64, i64* %RCX
  %992 = load i64, i64* %PC
  %993 = add i64 %992, 3
  store i64 %993, i64* %PC
  %994 = add i64 %991, %990
  store i64 %994, i64* %RAX, align 8, !tbaa !2428
  %995 = icmp ult i64 %994, %990
  %996 = icmp ult i64 %994, %991
  %997 = or i1 %995, %996
  %998 = zext i1 %997 to i8
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %998, i8* %999, align 1, !tbaa !2432
  %1000 = trunc i64 %994 to i32
  %1001 = and i32 %1000, 255
  %1002 = call i32 @llvm.ctpop.i32(i32 %1001) #16
  %1003 = trunc i32 %1002 to i8
  %1004 = and i8 %1003, 1
  %1005 = xor i8 %1004, 1
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1005, i8* %1006, align 1, !tbaa !2446
  %1007 = xor i64 %991, %990
  %1008 = xor i64 %1007, %994
  %1009 = lshr i64 %1008, 4
  %1010 = trunc i64 %1009 to i8
  %1011 = and i8 %1010, 1
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1011, i8* %1012, align 1, !tbaa !2447
  %1013 = icmp eq i64 %994, 0
  %1014 = zext i1 %1013 to i8
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1014, i8* %1015, align 1, !tbaa !2448
  %1016 = lshr i64 %994, 63
  %1017 = trunc i64 %1016 to i8
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1017, i8* %1018, align 1, !tbaa !2449
  %1019 = lshr i64 %990, 63
  %1020 = lshr i64 %991, 63
  %1021 = xor i64 %1016, %1019
  %1022 = xor i64 %1016, %1020
  %1023 = add nuw nsw i64 %1021, %1022
  %1024 = icmp eq i64 %1023, 2
  %1025 = zext i1 %1024 to i8
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1025, i8* %1026, align 1, !tbaa !2450
  %1027 = load i64, i64* %RBP
  %1028 = sub i64 %1027, 56
  %1029 = load i64, i64* %PC
  %1030 = add i64 %1029, 4
  store i64 %1030, i64* %PC
  %1031 = inttoptr i64 %1028 to i32*
  %1032 = load i32, i32* %1031
  %1033 = sext i32 %1032 to i64
  store i64 %1033, i64* %RCX, align 8, !tbaa !2428
  %1034 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1035 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1036 = load i64, i64* %RAX
  %1037 = load i64, i64* %RCX
  %1038 = mul i64 %1037, 8
  %1039 = add i64 %1038, %1036
  %1040 = load i64, i64* %PC
  %1041 = add i64 %1040, 5
  store i64 %1041, i64* %PC
  %1042 = bitcast i8* %1035 to double*
  %1043 = load double, double* %1042, align 1
  %1044 = getelementptr inbounds i8, i8* %1035, i64 8
  %1045 = bitcast i8* %1044 to i64*
  %1046 = load i64, i64* %1045, align 1
  %1047 = inttoptr i64 %1039 to double*
  %1048 = load double, double* %1047
  %1049 = fadd double %1043, %1048
  %1050 = bitcast i8* %1034 to double*
  store double %1049, double* %1050, align 1, !tbaa !2452
  %1051 = getelementptr inbounds i8, i8* %1034, i64 8
  %1052 = bitcast i8* %1051 to i64*
  store i64 %1046, i64* %1052, align 1, !tbaa !2452
  %1053 = load i64, i64* %RAX
  %1054 = load i64, i64* %RCX
  %1055 = mul i64 %1054, 8
  %1056 = add i64 %1055, %1053
  %1057 = bitcast %union.vec128_t* %XMM0 to i8*
  %1058 = load i64, i64* %PC
  %1059 = add i64 %1058, 5
  store i64 %1059, i64* %PC
  %1060 = bitcast i8* %1057 to double*
  %1061 = load double, double* %1060, align 1
  %1062 = inttoptr i64 %1056 to double*
  store double %1061, double* %1062
  %1063 = load i64, i64* %RBP
  %1064 = sub i64 %1063, 60
  %1065 = load i64, i64* %PC
  %1066 = add i64 %1065, 3
  store i64 %1066, i64* %PC
  %1067 = inttoptr i64 %1064 to i32*
  %1068 = load i32, i32* %1067
  %1069 = zext i32 %1068 to i64
  store i64 %1069, i64* %RAX, align 8, !tbaa !2428
  %1070 = load i64, i64* %RAX
  %1071 = load i64, i64* %PC
  %1072 = add i64 %1071, 3
  store i64 %1072, i64* %PC
  %1073 = trunc i64 %1070 to i32
  %1074 = add i32 1, %1073
  %1075 = zext i32 %1074 to i64
  store i64 %1075, i64* %RAX, align 8, !tbaa !2428
  %1076 = icmp ult i32 %1074, %1073
  %1077 = icmp ult i32 %1074, 1
  %1078 = or i1 %1076, %1077
  %1079 = zext i1 %1078 to i8
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1079, i8* %1080, align 1, !tbaa !2432
  %1081 = and i32 %1074, 255
  %1082 = call i32 @llvm.ctpop.i32(i32 %1081) #16
  %1083 = trunc i32 %1082 to i8
  %1084 = and i8 %1083, 1
  %1085 = xor i8 %1084, 1
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1085, i8* %1086, align 1, !tbaa !2446
  %1087 = xor i64 1, %1070
  %1088 = trunc i64 %1087 to i32
  %1089 = xor i32 %1088, %1074
  %1090 = lshr i32 %1089, 4
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1092, i8* %1093, align 1, !tbaa !2447
  %1094 = icmp eq i32 %1074, 0
  %1095 = zext i1 %1094 to i8
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1095, i8* %1096, align 1, !tbaa !2448
  %1097 = lshr i32 %1074, 31
  %1098 = trunc i32 %1097 to i8
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1098, i8* %1099, align 1, !tbaa !2449
  %1100 = lshr i32 %1073, 31
  %1101 = xor i32 %1097, %1100
  %1102 = add nuw nsw i32 %1101, %1097
  %1103 = icmp eq i32 %1102, 2
  %1104 = zext i1 %1103 to i8
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1104, i8* %1105, align 1, !tbaa !2450
  %1106 = load i64, i64* %RBP
  %1107 = sub i64 %1106, 60
  %1108 = load i32, i32* %EAX
  %1109 = zext i32 %1108 to i64
  %1110 = load i64, i64* %PC
  %1111 = add i64 %1110, 3
  store i64 %1111, i64* %PC
  %1112 = inttoptr i64 %1107 to i32*
  store i32 %1108, i32* %1112
  %1113 = load i64, i64* %PC
  %1114 = sub i64 %1113, 185
  %1115 = load i64, i64* %PC
  %1116 = add i64 %1115, 5
  store i64 %1116, i64* %PC
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1114, i64* %1117, align 8, !tbaa !2428
  br label %block_400cc6

block_400d97:                                     ; preds = %block_400cb3
  %1118 = load i64, i64* %PC
  %1119 = add i64 %1118, 5
  %1120 = load i64, i64* %PC
  %1121 = add i64 %1120, 5
  store i64 %1121, i64* %PC
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1119, i64* %1122, align 8, !tbaa !2428
  %1123 = load i64, i64* %RBP
  %1124 = sub i64 %1123, 52
  %1125 = load i64, i64* %PC
  %1126 = add i64 %1125, 3
  store i64 %1126, i64* %PC
  %1127 = inttoptr i64 %1124 to i32*
  %1128 = load i32, i32* %1127
  %1129 = zext i32 %1128 to i64
  store i64 %1129, i64* %RAX, align 8, !tbaa !2428
  %1130 = load i64, i64* %RAX
  %1131 = load i64, i64* %PC
  %1132 = add i64 %1131, 3
  store i64 %1132, i64* %PC
  %1133 = trunc i64 %1130 to i32
  %1134 = add i32 1, %1133
  %1135 = zext i32 %1134 to i64
  store i64 %1135, i64* %RAX, align 8, !tbaa !2428
  %1136 = icmp ult i32 %1134, %1133
  %1137 = icmp ult i32 %1134, 1
  %1138 = or i1 %1136, %1137
  %1139 = zext i1 %1138 to i8
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1139, i8* %1140, align 1, !tbaa !2432
  %1141 = and i32 %1134, 255
  %1142 = call i32 @llvm.ctpop.i32(i32 %1141) #16
  %1143 = trunc i32 %1142 to i8
  %1144 = and i8 %1143, 1
  %1145 = xor i8 %1144, 1
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1145, i8* %1146, align 1, !tbaa !2446
  %1147 = xor i64 1, %1130
  %1148 = trunc i64 %1147 to i32
  %1149 = xor i32 %1148, %1134
  %1150 = lshr i32 %1149, 4
  %1151 = trunc i32 %1150 to i8
  %1152 = and i8 %1151, 1
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1152, i8* %1153, align 1, !tbaa !2447
  %1154 = icmp eq i32 %1134, 0
  %1155 = zext i1 %1154 to i8
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1155, i8* %1156, align 1, !tbaa !2448
  %1157 = lshr i32 %1134, 31
  %1158 = trunc i32 %1157 to i8
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1158, i8* %1159, align 1, !tbaa !2449
  %1160 = lshr i32 %1133, 31
  %1161 = xor i32 %1157, %1160
  %1162 = add nuw nsw i32 %1161, %1157
  %1163 = icmp eq i32 %1162, 2
  %1164 = zext i1 %1163 to i8
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1164, i8* %1165, align 1, !tbaa !2450
  %1166 = load i64, i64* %RBP
  %1167 = sub i64 %1166, 52
  %1168 = load i32, i32* %EAX
  %1169 = zext i32 %1168 to i64
  %1170 = load i64, i64* %PC
  %1171 = add i64 %1170, 3
  store i64 %1171, i64* %PC
  %1172 = inttoptr i64 %1167 to i32*
  store i32 %1168, i32* %1172
  %1173 = load i64, i64* %PC
  %1174 = sub i64 %1173, 261
  %1175 = load i64, i64* %PC
  %1176 = add i64 %1175, 5
  store i64 %1176, i64* %PC
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1174, i64* %1177, align 8, !tbaa !2428
  br label %block_400ca0

block_400cac:                                     ; preds = %block_400ca0
  %1178 = load i64, i64* %RBP
  %1179 = sub i64 %1178, 56
  %1180 = load i64, i64* %PC
  %1181 = add i64 %1180, 7
  store i64 %1181, i64* %PC
  %1182 = inttoptr i64 %1179 to i32*
  store i32 0, i32* %1182
  br label %block_400cb3

block_400c4a:                                     ; preds = %block_400c43, %block_400c56
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_400c43 ], [ %MEMORY.2, %block_400c56 ]
  %1183 = load i64, i64* %RBP
  %1184 = sub i64 %1183, 56
  %1185 = load i64, i64* %PC
  %1186 = add i64 %1185, 3
  store i64 %1186, i64* %PC
  %1187 = inttoptr i64 %1184 to i32*
  %1188 = load i32, i32* %1187
  %1189 = zext i32 %1188 to i64
  store i64 %1189, i64* %RAX, align 8, !tbaa !2428
  %1190 = load i32, i32* %EAX
  %1191 = zext i32 %1190 to i64
  %1192 = load i64, i64* %RBP
  %1193 = sub i64 %1192, 4
  %1194 = load i64, i64* %PC
  %1195 = add i64 %1194, 3
  store i64 %1195, i64* %PC
  %1196 = inttoptr i64 %1193 to i32*
  %1197 = load i32, i32* %1196
  %1198 = sub i32 %1190, %1197
  %1199 = icmp ult i32 %1190, %1197
  %1200 = zext i1 %1199 to i8
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1200, i8* %1201, align 1, !tbaa !2432
  %1202 = and i32 %1198, 255
  %1203 = call i32 @llvm.ctpop.i32(i32 %1202) #16
  %1204 = trunc i32 %1203 to i8
  %1205 = and i8 %1204, 1
  %1206 = xor i8 %1205, 1
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1206, i8* %1207, align 1, !tbaa !2446
  %1208 = xor i32 %1197, %1190
  %1209 = xor i32 %1208, %1198
  %1210 = lshr i32 %1209, 4
  %1211 = trunc i32 %1210 to i8
  %1212 = and i8 %1211, 1
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1212, i8* %1213, align 1, !tbaa !2447
  %1214 = icmp eq i32 %1198, 0
  %1215 = zext i1 %1214 to i8
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1215, i8* %1216, align 1, !tbaa !2448
  %1217 = lshr i32 %1198, 31
  %1218 = trunc i32 %1217 to i8
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1218, i8* %1219, align 1, !tbaa !2449
  %1220 = lshr i32 %1190, 31
  %1221 = lshr i32 %1197, 31
  %1222 = xor i32 %1221, %1220
  %1223 = xor i32 %1217, %1220
  %1224 = add nuw nsw i32 %1223, %1222
  %1225 = icmp eq i32 %1224, 2
  %1226 = zext i1 %1225 to i8
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1226, i8* %1227, align 1, !tbaa !2450
  %1228 = load i64, i64* %PC
  %1229 = add i64 %1228, 54
  %1230 = load i64, i64* %PC
  %1231 = add i64 %1230, 6
  %1232 = load i64, i64* %PC
  %1233 = add i64 %1232, 6
  store i64 %1233, i64* %PC
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1235 = load i8, i8* %1234, align 1, !tbaa !2449
  %1236 = icmp ne i8 %1235, 0
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1238 = load i8, i8* %1237, align 1, !tbaa !2450
  %1239 = icmp ne i8 %1238, 0
  %1240 = xor i1 %1236, %1239
  %1241 = xor i1 %1240, true
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1244 = select i1 %1240, i64 %1231, i64 %1229
  store i64 %1244, i64* %1243, align 8, !tbaa !2428
  %1245 = load i8, i8* %BRANCH_TAKEN
  %1246 = icmp eq i8 %1245, 1
  br i1 %1246, label %block_400c86, label %block_400c56

block_400c86:                                     ; preds = %block_400c4a
  %1247 = load i64, i64* %PC
  %1248 = add i64 %1247, 5
  %1249 = load i64, i64* %PC
  %1250 = add i64 %1249, 5
  store i64 %1250, i64* %PC
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1248, i64* %1251, align 8, !tbaa !2428
  %1252 = load i64, i64* %RBP
  %1253 = sub i64 %1252, 52
  %1254 = load i64, i64* %PC
  %1255 = add i64 %1254, 3
  store i64 %1255, i64* %PC
  %1256 = inttoptr i64 %1253 to i32*
  %1257 = load i32, i32* %1256
  %1258 = zext i32 %1257 to i64
  store i64 %1258, i64* %RAX, align 8, !tbaa !2428
  %1259 = load i64, i64* %RAX
  %1260 = load i64, i64* %PC
  %1261 = add i64 %1260, 3
  store i64 %1261, i64* %PC
  %1262 = trunc i64 %1259 to i32
  %1263 = add i32 1, %1262
  %1264 = zext i32 %1263 to i64
  store i64 %1264, i64* %RAX, align 8, !tbaa !2428
  %1265 = icmp ult i32 %1263, %1262
  %1266 = icmp ult i32 %1263, 1
  %1267 = or i1 %1265, %1266
  %1268 = zext i1 %1267 to i8
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1268, i8* %1269, align 1, !tbaa !2432
  %1270 = and i32 %1263, 255
  %1271 = call i32 @llvm.ctpop.i32(i32 %1270) #16
  %1272 = trunc i32 %1271 to i8
  %1273 = and i8 %1272, 1
  %1274 = xor i8 %1273, 1
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1274, i8* %1275, align 1, !tbaa !2446
  %1276 = xor i64 1, %1259
  %1277 = trunc i64 %1276 to i32
  %1278 = xor i32 %1277, %1263
  %1279 = lshr i32 %1278, 4
  %1280 = trunc i32 %1279 to i8
  %1281 = and i8 %1280, 1
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1281, i8* %1282, align 1, !tbaa !2447
  %1283 = icmp eq i32 %1263, 0
  %1284 = zext i1 %1283 to i8
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1284, i8* %1285, align 1, !tbaa !2448
  %1286 = lshr i32 %1263, 31
  %1287 = trunc i32 %1286 to i8
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1287, i8* %1288, align 1, !tbaa !2449
  %1289 = lshr i32 %1262, 31
  %1290 = xor i32 %1286, %1289
  %1291 = add nuw nsw i32 %1290, %1286
  %1292 = icmp eq i32 %1291, 2
  %1293 = zext i1 %1292 to i8
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1293, i8* %1294, align 1, !tbaa !2450
  %1295 = load i64, i64* %RBP
  %1296 = sub i64 %1295, 52
  %1297 = load i32, i32* %EAX
  %1298 = zext i32 %1297 to i64
  %1299 = load i64, i64* %PC
  %1300 = add i64 %1299, 3
  store i64 %1300, i64* %PC
  %1301 = inttoptr i64 %1296 to i32*
  store i32 %1297, i32* %1301
  %1302 = load i64, i64* %PC
  %1303 = sub i64 %1302, 93
  %1304 = load i64, i64* %PC
  %1305 = add i64 %1304, 5
  store i64 %1305, i64* %PC
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1303, i64* %1306, align 8, !tbaa !2428
  br label %block_400c37

block_400cc6:                                     ; preds = %block_400cd2, %block_400cbf
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.1, %block_400cbf ], [ %MEMORY.3, %block_400cd2 ]
  %1307 = load i64, i64* %RBP
  %1308 = sub i64 %1307, 60
  %1309 = load i64, i64* %PC
  %1310 = add i64 %1309, 3
  store i64 %1310, i64* %PC
  %1311 = inttoptr i64 %1308 to i32*
  %1312 = load i32, i32* %1311
  %1313 = zext i32 %1312 to i64
  store i64 %1313, i64* %RAX, align 8, !tbaa !2428
  %1314 = load i32, i32* %EAX
  %1315 = zext i32 %1314 to i64
  %1316 = load i64, i64* %RBP
  %1317 = sub i64 %1316, 8
  %1318 = load i64, i64* %PC
  %1319 = add i64 %1318, 3
  store i64 %1319, i64* %PC
  %1320 = inttoptr i64 %1317 to i32*
  %1321 = load i32, i32* %1320
  %1322 = sub i32 %1314, %1321
  %1323 = icmp ult i32 %1314, %1321
  %1324 = zext i1 %1323 to i8
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1324, i8* %1325, align 1, !tbaa !2432
  %1326 = and i32 %1322, 255
  %1327 = call i32 @llvm.ctpop.i32(i32 %1326) #16
  %1328 = trunc i32 %1327 to i8
  %1329 = and i8 %1328, 1
  %1330 = xor i8 %1329, 1
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1330, i8* %1331, align 1, !tbaa !2446
  %1332 = xor i32 %1321, %1314
  %1333 = xor i32 %1332, %1322
  %1334 = lshr i32 %1333, 4
  %1335 = trunc i32 %1334 to i8
  %1336 = and i8 %1335, 1
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1336, i8* %1337, align 1, !tbaa !2447
  %1338 = icmp eq i32 %1322, 0
  %1339 = zext i1 %1338 to i8
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1339, i8* %1340, align 1, !tbaa !2448
  %1341 = lshr i32 %1322, 31
  %1342 = trunc i32 %1341 to i8
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1342, i8* %1343, align 1, !tbaa !2449
  %1344 = lshr i32 %1314, 31
  %1345 = lshr i32 %1321, 31
  %1346 = xor i32 %1345, %1344
  %1347 = xor i32 %1341, %1344
  %1348 = add nuw nsw i32 %1347, %1346
  %1349 = icmp eq i32 %1348, 2
  %1350 = zext i1 %1349 to i8
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1350, i8* %1351, align 1, !tbaa !2450
  %1352 = load i64, i64* %PC
  %1353 = add i64 %1352, 184
  %1354 = load i64, i64* %PC
  %1355 = add i64 %1354, 6
  %1356 = load i64, i64* %PC
  %1357 = add i64 %1356, 6
  store i64 %1357, i64* %PC
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1359 = load i8, i8* %1358, align 1, !tbaa !2449
  %1360 = icmp ne i8 %1359, 0
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1362 = load i8, i8* %1361, align 1, !tbaa !2450
  %1363 = icmp ne i8 %1362, 0
  %1364 = xor i1 %1360, %1363
  %1365 = xor i1 %1364, true
  %1366 = zext i1 %1365 to i8
  store i8 %1366, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1368 = select i1 %1364, i64 %1355, i64 %1353
  store i64 %1368, i64* %1367, align 8, !tbaa !2428
  %1369 = load i8, i8* %BRANCH_TAKEN
  %1370 = icmp eq i8 %1369, 1
  br i1 %1370, label %block_400d84, label %block_400cd2

block_400d84:                                     ; preds = %block_400cc6
  %1371 = load i64, i64* %PC
  %1372 = add i64 %1371, 5
  %1373 = load i64, i64* %PC
  %1374 = add i64 %1373, 5
  store i64 %1374, i64* %PC
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1372, i64* %1375, align 8, !tbaa !2428
  %1376 = load i64, i64* %RBP
  %1377 = sub i64 %1376, 56
  %1378 = load i64, i64* %PC
  %1379 = add i64 %1378, 3
  store i64 %1379, i64* %PC
  %1380 = inttoptr i64 %1377 to i32*
  %1381 = load i32, i32* %1380
  %1382 = zext i32 %1381 to i64
  store i64 %1382, i64* %RAX, align 8, !tbaa !2428
  %1383 = load i64, i64* %RAX
  %1384 = load i64, i64* %PC
  %1385 = add i64 %1384, 3
  store i64 %1385, i64* %PC
  %1386 = trunc i64 %1383 to i32
  %1387 = add i32 1, %1386
  %1388 = zext i32 %1387 to i64
  store i64 %1388, i64* %RAX, align 8, !tbaa !2428
  %1389 = icmp ult i32 %1387, %1386
  %1390 = icmp ult i32 %1387, 1
  %1391 = or i1 %1389, %1390
  %1392 = zext i1 %1391 to i8
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1392, i8* %1393, align 1, !tbaa !2432
  %1394 = and i32 %1387, 255
  %1395 = call i32 @llvm.ctpop.i32(i32 %1394) #16
  %1396 = trunc i32 %1395 to i8
  %1397 = and i8 %1396, 1
  %1398 = xor i8 %1397, 1
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1398, i8* %1399, align 1, !tbaa !2446
  %1400 = xor i64 1, %1383
  %1401 = trunc i64 %1400 to i32
  %1402 = xor i32 %1401, %1387
  %1403 = lshr i32 %1402, 4
  %1404 = trunc i32 %1403 to i8
  %1405 = and i8 %1404, 1
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1405, i8* %1406, align 1, !tbaa !2447
  %1407 = icmp eq i32 %1387, 0
  %1408 = zext i1 %1407 to i8
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1408, i8* %1409, align 1, !tbaa !2448
  %1410 = lshr i32 %1387, 31
  %1411 = trunc i32 %1410 to i8
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1411, i8* %1412, align 1, !tbaa !2449
  %1413 = lshr i32 %1386, 31
  %1414 = xor i32 %1410, %1413
  %1415 = add nuw nsw i32 %1414, %1410
  %1416 = icmp eq i32 %1415, 2
  %1417 = zext i1 %1416 to i8
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1417, i8* %1418, align 1, !tbaa !2450
  %1419 = load i64, i64* %RBP
  %1420 = sub i64 %1419, 56
  %1421 = load i32, i32* %EAX
  %1422 = zext i32 %1421 to i64
  %1423 = load i64, i64* %PC
  %1424 = add i64 %1423, 3
  store i64 %1424, i64* %PC
  %1425 = inttoptr i64 %1420 to i32*
  store i32 %1421, i32* %1425
  %1426 = load i64, i64* %PC
  %1427 = sub i64 %1426, 223
  %1428 = load i64, i64* %PC
  %1429 = add i64 %1428, 5
  store i64 %1429, i64* %PC
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1427, i64* %1430, align 8, !tbaa !2428
  br label %block_400cb3

block_400c43:                                     ; preds = %block_400c37
  %1431 = sub i64 %190, 56
  %1432 = load i64, i64* %PC
  %1433 = add i64 %1432, 7
  store i64 %1433, i64* %PC
  %1434 = inttoptr i64 %1431 to i32*
  store i32 0, i32* %1434
  br label %block_400c4a

block_400ca0:                                     ; preds = %block_400d97, %block_400c99
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.0, %block_400c99 ], [ %MEMORY.1, %block_400d97 ]
  %1435 = load i64, i64* %RBP
  %1436 = sub i64 %1435, 52
  %1437 = load i64, i64* %PC
  %1438 = add i64 %1437, 3
  store i64 %1438, i64* %PC
  %1439 = inttoptr i64 %1436 to i32*
  %1440 = load i32, i32* %1439
  %1441 = zext i32 %1440 to i64
  store i64 %1441, i64* %RAX, align 8, !tbaa !2428
  %1442 = load i32, i32* %EAX
  %1443 = zext i32 %1442 to i64
  %1444 = load i64, i64* %RBP
  %1445 = sub i64 %1444, 4
  %1446 = load i64, i64* %PC
  %1447 = add i64 %1446, 3
  store i64 %1447, i64* %PC
  %1448 = inttoptr i64 %1445 to i32*
  %1449 = load i32, i32* %1448
  %1450 = sub i32 %1442, %1449
  %1451 = icmp ult i32 %1442, %1449
  %1452 = zext i1 %1451 to i8
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1452, i8* %1453, align 1, !tbaa !2432
  %1454 = and i32 %1450, 255
  %1455 = call i32 @llvm.ctpop.i32(i32 %1454) #16
  %1456 = trunc i32 %1455 to i8
  %1457 = and i8 %1456, 1
  %1458 = xor i8 %1457, 1
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1458, i8* %1459, align 1, !tbaa !2446
  %1460 = xor i32 %1449, %1442
  %1461 = xor i32 %1460, %1450
  %1462 = lshr i32 %1461, 4
  %1463 = trunc i32 %1462 to i8
  %1464 = and i8 %1463, 1
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1464, i8* %1465, align 1, !tbaa !2447
  %1466 = icmp eq i32 %1450, 0
  %1467 = zext i1 %1466 to i8
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1467, i8* %1468, align 1, !tbaa !2448
  %1469 = lshr i32 %1450, 31
  %1470 = trunc i32 %1469 to i8
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1470, i8* %1471, align 1, !tbaa !2449
  %1472 = lshr i32 %1442, 31
  %1473 = lshr i32 %1449, 31
  %1474 = xor i32 %1473, %1472
  %1475 = xor i32 %1469, %1472
  %1476 = add nuw nsw i32 %1475, %1474
  %1477 = icmp eq i32 %1476, 2
  %1478 = zext i1 %1477 to i8
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1478, i8* %1479, align 1, !tbaa !2450
  %1480 = load i64, i64* %PC
  %1481 = add i64 %1480, 260
  %1482 = load i64, i64* %PC
  %1483 = add i64 %1482, 6
  %1484 = load i64, i64* %PC
  %1485 = add i64 %1484, 6
  store i64 %1485, i64* %PC
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1487 = load i8, i8* %1486, align 1, !tbaa !2449
  %1488 = icmp ne i8 %1487, 0
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1490 = load i8, i8* %1489, align 1, !tbaa !2450
  %1491 = icmp ne i8 %1490, 0
  %1492 = xor i1 %1488, %1491
  %1493 = xor i1 %1492, true
  %1494 = zext i1 %1493 to i8
  store i8 %1494, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1496 = select i1 %1492, i64 %1483, i64 %1481
  store i64 %1496, i64* %1495, align 8, !tbaa !2428
  %1497 = load i8, i8* %BRANCH_TAKEN
  %1498 = icmp eq i8 %1497, 1
  br i1 %1498, label %block_400daa, label %block_400cac
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007b0_polybench_prepare_instruments(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4007b0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 1
  store i64 %14, i64* %PC
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %16 = load i64, i64* %15, align 8, !tbaa !2428
  %17 = add i64 %16, -8
  %18 = inttoptr i64 %17 to i64*
  store i64 %12, i64* %18
  store i64 %17, i64* %15, align 8, !tbaa !2428
  %19 = load i64, i64* %RSP
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  store i64 %19, i64* %RBP, align 8, !tbaa !2428
  %22 = load i64, i64* %PC
  %23 = sub i64 %22, 132
  %24 = load i64, i64* %PC
  %25 = add i64 %24, 5
  %26 = load i64, i64* %PC
  %27 = add i64 %26, 5
  store i64 %27, i64* %PC
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %29 = load i64, i64* %28, align 8, !tbaa !2428
  %30 = add i64 %29, -8
  %31 = inttoptr i64 %30 to i64*
  store i64 %25, i64* %31
  store i64 %30, i64* %28, align 8, !tbaa !2428
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %23, i64* %32, align 8, !tbaa !2428
  %33 = load i64, i64* %PC
  %34 = call %struct.Memory* @sub_400730_polybench_flush_cache_renamed_(%struct.State* %0, i64 %33, %struct.Memory* %2)
  %35 = load i64, i64* %PC
  %36 = add i64 %35, 1
  store i64 %36, i64* %PC
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %38 = load i64, i64* %37, align 8, !tbaa !2428
  %39 = add i64 %38, 8
  %40 = inttoptr i64 %38 to i64*
  %41 = load i64, i64* %40
  store i64 %41, i64* %RBP, align 8, !tbaa !2428
  store i64 %39, i64* %37, align 8, !tbaa !2428
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 1
  store i64 %43, i64* %PC
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %46 = load i64, i64* %45, align 8, !tbaa !2428
  %47 = inttoptr i64 %46 to i64*
  %48 = load i64, i64* %47
  store i64 %48, i64* %44, align 8, !tbaa !2428
  %49 = add i64 %46, 8
  store i64 %49, i64* %45, align 8, !tbaa !2428
  ret %struct.Memory* %34
}

; Function Attrs: noinline
define %struct.Memory* @sub_400680_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400680:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %AX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %EAX = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RAX = bitcast %union.anon* %14 to i64*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 11
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RDI = bitcast %union.anon* %17 to i64*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 13
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RSP = bitcast %union.anon* %20 to i64*
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.GPR, %struct.GPR* %21, i32 0, i32 15
  %23 = getelementptr inbounds %struct.Reg, %struct.Reg* %22, i32 0, i32 0
  %RBP = bitcast %union.anon* %23 to i64*
  %24 = load i64, i64* %RBP
  %25 = load i64, i64* %PC
  %26 = add i64 %25, 1
  store i64 %26, i64* %PC
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %28 = load i64, i64* %27, align 8, !tbaa !2428
  %29 = add i64 %28, -8
  %30 = inttoptr i64 %29 to i64*
  store i64 %24, i64* %30
  store i64 %29, i64* %27, align 8, !tbaa !2428
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 5
  store i64 %32, i64* %PC
  store i64 6299752, i64* %RAX, align 8, !tbaa !2428
  %33 = load i64, i64* %RAX
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 6
  store i64 %35, i64* %PC
  %36 = sub i64 %33, 6299752
  %37 = icmp ult i64 %33, 6299752
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %38, i8* %39, align 1, !tbaa !2432
  %40 = trunc i64 %36 to i32
  %41 = and i32 %40, 255
  %42 = call i32 @llvm.ctpop.i32(i32 %41) #16
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 1
  %45 = xor i8 %44, 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %45, i8* %46, align 1, !tbaa !2446
  %47 = xor i64 6299752, %33
  %48 = xor i64 %47, %36
  %49 = lshr i64 %48, 4
  %50 = trunc i64 %49 to i8
  %51 = and i8 %50, 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %51, i8* %52, align 1, !tbaa !2447
  %53 = icmp eq i64 %36, 0
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %54, i8* %55, align 1, !tbaa !2448
  %56 = lshr i64 %36, 63
  %57 = trunc i64 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %57, i8* %58, align 1, !tbaa !2449
  %59 = lshr i64 %33, 63
  %60 = xor i64 %56, %59
  %61 = add nuw nsw i64 %60, %59
  %62 = icmp eq i64 %61, 2
  %63 = zext i1 %62 to i8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %63, i8* %64, align 1, !tbaa !2450
  %65 = load i64, i64* %RSP
  %66 = load i64, i64* %PC
  %67 = add i64 %66, 3
  store i64 %67, i64* %PC
  store i64 %65, i64* %RBP, align 8, !tbaa !2428
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 25
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 2
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 2
  store i64 %73, i64* %PC
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %75 = load i8, i8* %74, align 1, !tbaa !2448
  store i8 %75, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %77 = icmp ne i8 %75, 0
  %78 = select i1 %77, i64 %69, i64 %71
  store i64 %78, i64* %76, align 8, !tbaa !2428
  %79 = load i8, i8* %BRANCH_TAKEN
  %80 = icmp eq i8 %79, 1
  br i1 %80, label %block_4006a8, label %block_400691

block_40069b:                                     ; preds = %block_400691
  %81 = load i64, i64* %PC
  %82 = add i64 %81, 1
  store i64 %82, i64* %PC
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %84 = load i64, i64* %83, align 8, !tbaa !2428
  %85 = add i64 %84, 8
  %86 = inttoptr i64 %84 to i64*
  %87 = load i64, i64* %86
  store i64 %87, i64* %RBP, align 8, !tbaa !2428
  store i64 %85, i64* %83, align 8, !tbaa !2428
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 5
  store i64 %89, i64* %PC
  store i64 6299752, i64* %RDI, align 8, !tbaa !2428
  %90 = load i64, i64* %RAX
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 2
  store i64 %92, i64* %PC
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %90, i64* %93, align 8, !tbaa !2428
  %94 = load i64, i64* %PC
  switch i64 %94, label %162 [
    i64 4196010, label %block_4006aa
    i64 4196003, label %block_4006a3
  ]

block_400691:                                     ; preds = %block_400680
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 5
  store i64 %96, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %97 = load i64, i64* %RAX
  %98 = load i64, i64* %RAX
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 3
  store i64 %100, i64* %PC
  %101 = and i64 %98, %97
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %102, align 1, !tbaa !2432
  %103 = trunc i64 %101 to i32
  %104 = and i32 %103, 255
  %105 = call i32 @llvm.ctpop.i32(i32 %104) #16
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  %108 = xor i8 %107, 1
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %108, i8* %109, align 1, !tbaa !2446
  %110 = icmp eq i64 %101, 0
  %111 = zext i1 %110 to i8
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %111, i8* %112, align 1, !tbaa !2448
  %113 = lshr i64 %101, 63
  %114 = trunc i64 %113 to i8
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %114, i8* %115, align 1, !tbaa !2449
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %116, align 1, !tbaa !2450
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %117, align 1, !tbaa !2447
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 15
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 2
  %122 = load i64, i64* %PC
  %123 = add i64 %122, 2
  store i64 %123, i64* %PC
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %125 = load i8, i8* %124, align 1, !tbaa !2448
  store i8 %125, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %127 = icmp ne i8 %125, 0
  %128 = select i1 %127, i64 %119, i64 %121
  store i64 %128, i64* %126, align 8, !tbaa !2428
  %129 = load i8, i8* %BRANCH_TAKEN
  %130 = icmp eq i8 %129, 1
  br i1 %130, label %block_4006a8, label %block_40069b

block_4006a8:                                     ; preds = %block_4006a3, %block_400691, %block_400680
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400680 ], [ %2, %block_400691 ], [ %2, %block_4006a3 ]
  %131 = load i64, i64* %PC
  %132 = add i64 %131, 1
  store i64 %132, i64* %PC
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %134 = load i64, i64* %133, align 8, !tbaa !2428
  %135 = add i64 %134, 8
  %136 = inttoptr i64 %134 to i64*
  %137 = load i64, i64* %136
  store i64 %137, i64* %RBP, align 8, !tbaa !2428
  store i64 %135, i64* %133, align 8, !tbaa !2428
  %138 = load i64, i64* %PC
  %139 = add i64 %138, 1
  store i64 %139, i64* %PC
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %142 = load i64, i64* %141, align 8, !tbaa !2428
  %143 = inttoptr i64 %142 to i64*
  %144 = load i64, i64* %143
  store i64 %144, i64* %140, align 8, !tbaa !2428
  %145 = add i64 %142, 8
  store i64 %145, i64* %141, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_4006aa:                                     ; preds = %block_40069b
  %146 = load i64, i64* %RAX
  %147 = load i64, i64* %RAX
  %148 = add i64 %147, %146
  %149 = load i16, i16* %AX
  %150 = zext i16 %149 to i64
  %151 = load i64, i64* %PC
  %152 = add i64 %151, 6
  store i64 %152, i64* %PC
  %153 = load i64, i64* %PC
  %154 = tail call %struct.Memory* @sub_4006b0_register_tm_clones(%struct.State* %0, i64 %153, %struct.Memory* %2)
  ret %struct.Memory* %154

block_4006a3:                                     ; preds = %block_40069b
  %155 = load i64, i64* %RAX
  %156 = load i64, i64* %RAX
  %157 = add i64 %156, %155
  %158 = load i32, i32* %EAX
  %159 = zext i32 %158 to i64
  %160 = load i64, i64* %PC
  %161 = add i64 %160, 5
  store i64 %161, i64* %PC
  br label %block_4006a8

; <label>:162:                                    ; preds = %block_40069b
  %163 = load i64, i64* %PC
  %164 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %163, %struct.Memory* %2)
  ret %struct.Memory* %164
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007f0_polybench_timer_stop(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4007f0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RBP
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 1
  store i64 %16, i64* %PC
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %18 = load i64, i64* %17, align 8, !tbaa !2428
  %19 = add i64 %18, -8
  %20 = inttoptr i64 %19 to i64*
  store i64 %14, i64* %20
  store i64 %19, i64* %17, align 8, !tbaa !2428
  %21 = load i64, i64* %RSP
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 3
  store i64 %23, i64* %PC
  store i64 %21, i64* %RBP, align 8, !tbaa !2428
  %24 = load i64, i64* %PC
  %25 = sub i64 %24, 20
  %26 = load i64, i64* %PC
  %27 = add i64 %26, 5
  %28 = load i64, i64* %PC
  %29 = add i64 %28, 5
  store i64 %29, i64* %PC
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %31 = load i64, i64* %30, align 8, !tbaa !2428
  %32 = add i64 %31, -8
  %33 = inttoptr i64 %32 to i64*
  store i64 %27, i64* %33
  store i64 %32, i64* %30, align 8, !tbaa !2428
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %25, i64* %34, align 8, !tbaa !2428
  %35 = load i64, i64* %PC
  %36 = call %struct.Memory* @sub_4007e0_rtclock_renamed_(%struct.State* %0, i64 %35, %struct.Memory* %2)
  %37 = bitcast %union.vec128_t* %XMM0 to i8*
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 9
  store i64 %39, i64* %PC
  %40 = bitcast i8* %37 to double*
  %41 = load double, double* %40, align 1
  store double %41, double* bitcast (%polybench_t_end_type* @polybench_t_end to double*)
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 1
  store i64 %43, i64* %PC
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %45 = load i64, i64* %44, align 8, !tbaa !2428
  %46 = add i64 %45, 8
  %47 = inttoptr i64 %45 to i64*
  %48 = load i64, i64* %47
  store i64 %48, i64* %RBP, align 8, !tbaa !2428
  store i64 %46, i64* %44, align 8, !tbaa !2428
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 1
  store i64 %50, i64* %PC
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %53 = load i64, i64* %52, align 8, !tbaa !2428
  %54 = inttoptr i64 %53 to i64*
  %55 = load i64, i64* %54
  store i64 %55, i64* %51, align 8, !tbaa !2428
  %56 = add i64 %53, 8
  store i64 %56, i64* %52, align 8, !tbaa !2428
  ret %struct.Memory* %36
}

; Function Attrs: noinline
define %struct.Memory* @sub_400f50_check_FP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400f50:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %EAX = bitcast %union.anon* %12 to i32*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 11
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %EDI = bitcast %union.anon* %15 to i32*
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %17 = getelementptr inbounds %struct.GPR, %struct.GPR* %16, i32 0, i32 17
  %18 = getelementptr inbounds %struct.Reg, %struct.Reg* %17, i32 0, i32 0
  %R8D = bitcast %union.anon* %18 to i32*
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 19
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0
  %R9D = bitcast %union.anon* %21 to i32*
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %23 = getelementptr inbounds %struct.GPR, %struct.GPR* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.Reg, %struct.Reg* %23, i32 0, i32 0
  %RAX = bitcast %union.anon* %24 to i64*
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %26 = getelementptr inbounds %struct.GPR, %struct.GPR* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.Reg, %struct.Reg* %26, i32 0, i32 0
  %RCX = bitcast %union.anon* %27 to i64*
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %29 = getelementptr inbounds %struct.GPR, %struct.GPR* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.Reg, %struct.Reg* %29, i32 0, i32 0
  %RDX = bitcast %union.anon* %30 to i64*
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %32 = getelementptr inbounds %struct.GPR, %struct.GPR* %31, i32 0, i32 9
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %32, i32 0, i32 0
  %RSI = bitcast %union.anon* %33 to i64*
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %35 = getelementptr inbounds %struct.GPR, %struct.GPR* %34, i32 0, i32 11
  %36 = getelementptr inbounds %struct.Reg, %struct.Reg* %35, i32 0, i32 0
  %RDI = bitcast %union.anon* %36 to i64*
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %38 = getelementptr inbounds %struct.GPR, %struct.GPR* %37, i32 0, i32 13
  %39 = getelementptr inbounds %struct.Reg, %struct.Reg* %38, i32 0, i32 0
  %RSP = bitcast %union.anon* %39 to i64*
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %41 = getelementptr inbounds %struct.GPR, %struct.GPR* %40, i32 0, i32 15
  %42 = getelementptr inbounds %struct.Reg, %struct.Reg* %41, i32 0, i32 0
  %RBP = bitcast %union.anon* %42 to i64*
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %44 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %43, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %44 to %"class.std::bitset"*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %46 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %45, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %46 to %"class.std::bitset"*
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %48 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %47, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %48 to %"class.std::bitset"*
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %50 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %49, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %50 to %union.vec128_t*
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %52 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %51, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %52 to %union.vec128_t*
  %53 = load i64, i64* %RBP
  %54 = load i64, i64* %PC
  %55 = add i64 %54, 1
  store i64 %55, i64* %PC
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %57 = load i64, i64* %56, align 8, !tbaa !2428
  %58 = add i64 %57, -8
  %59 = inttoptr i64 %58 to i64*
  store i64 %53, i64* %59
  store i64 %58, i64* %56, align 8, !tbaa !2428
  %60 = load i64, i64* %RSP
  %61 = load i64, i64* %PC
  %62 = add i64 %61, 3
  store i64 %62, i64* %PC
  store i64 %60, i64* %RBP, align 8, !tbaa !2428
  %63 = load i64, i64* %RSP
  %64 = load i64, i64* %PC
  %65 = add i64 %64, 4
  store i64 %65, i64* %PC
  %66 = sub i64 %63, 80
  store i64 %66, i64* %RSP, align 8, !tbaa !2428
  %67 = icmp ult i64 %63, 80
  %68 = zext i1 %67 to i8
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %68, i8* %69, align 1, !tbaa !2432
  %70 = trunc i64 %66 to i32
  %71 = and i32 %70, 255
  %72 = call i32 @llvm.ctpop.i32(i32 %71) #16
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %75, i8* %76, align 1, !tbaa !2446
  %77 = xor i64 80, %63
  %78 = xor i64 %77, %66
  %79 = lshr i64 %78, 4
  %80 = trunc i64 %79 to i8
  %81 = and i8 %80, 1
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %81, i8* %82, align 1, !tbaa !2447
  %83 = icmp eq i64 %66, 0
  %84 = zext i1 %83 to i8
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %84, i8* %85, align 1, !tbaa !2448
  %86 = lshr i64 %66, 63
  %87 = trunc i64 %86 to i8
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %87, i8* %88, align 1, !tbaa !2449
  %89 = lshr i64 %63, 63
  %90 = xor i64 %86, %89
  %91 = add nuw nsw i64 %90, %89
  %92 = icmp eq i64 %91, 2
  %93 = zext i1 %92 to i8
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %93, i8* %94, align 1, !tbaa !2450
  %95 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %96 = load i64, i64* %PC
  %97 = add i64 %96, 8
  store i64 %97, i64* %PC
  %98 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401380__rodata_type* @seg_401380__rodata to i64), i64 24) to double*)
  %99 = bitcast i8* %95 to double*
  store double %98, double* %99, align 1, !tbaa !2452
  %100 = getelementptr inbounds i8, i8* %95, i64 8
  %101 = bitcast i8* %100 to double*
  store double 0.000000e+00, double* %101, align 1, !tbaa !2452
  %102 = load i64, i64* %RBP
  %103 = sub i64 %102, 8
  %104 = load i32, i32* %EDI
  %105 = zext i32 %104 to i64
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 3
  store i64 %107, i64* %PC
  %108 = inttoptr i64 %103 to i32*
  store i32 %104, i32* %108
  %109 = load i64, i64* %RBP
  %110 = sub i64 %109, 16
  %111 = load i64, i64* %RSI
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 4
  store i64 %113, i64* %PC
  %114 = inttoptr i64 %110 to i64*
  store i64 %111, i64* %114
  %115 = load i64, i64* %RBP
  %116 = sub i64 %115, 24
  %117 = load i64, i64* %RDX
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 4
  store i64 %119, i64* %PC
  %120 = inttoptr i64 %116 to i64*
  store i64 %117, i64* %120
  %121 = load i64, i64* %RBP
  %122 = sub i64 %121, 40
  %123 = bitcast %union.vec128_t* %XMM0 to i8*
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 5
  store i64 %125, i64* %PC
  %126 = bitcast i8* %123 to double*
  %127 = load double, double* %126, align 1
  %128 = inttoptr i64 %122 to double*
  store double %127, double* %128
  %129 = load i64, i64* %RBP
  %130 = sub i64 %129, 28
  %131 = load i64, i64* %PC
  %132 = add i64 %131, 7
  store i64 %132, i64* %PC
  %133 = inttoptr i64 %130 to i32*
  store i32 0, i32* %133
  br label %block_400f77

block_400ffa:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %134 = add i64 %635, 10
  store i64 %134, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401380__rodata_type* @seg_401380__rodata to i64), i64 106), i64* %RSI, align 8, !tbaa !2428
  %135 = load i64, i64* %PC
  %136 = add i64 %135, 8
  store i64 %136, i64* %PC
  %137 = load i64, i64* @stderr
  store i64 %137, i64* %RDI, align 8, !tbaa !2428
  %138 = load i64, i64* %RBP
  %139 = sub i64 %138, 28
  %140 = load i64, i64* %PC
  %141 = add i64 %140, 3
  store i64 %141, i64* %PC
  %142 = inttoptr i64 %139 to i32*
  %143 = load i32, i32* %142
  %144 = zext i32 %143 to i64
  store i64 %144, i64* %RDX, align 8, !tbaa !2428
  %145 = load i64, i64* %RBP
  %146 = sub i64 %145, 32
  %147 = load i64, i64* %PC
  %148 = add i64 %147, 3
  store i64 %148, i64* %PC
  %149 = inttoptr i64 %146 to i32*
  %150 = load i32, i32* %149
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %RCX, align 8, !tbaa !2428
  %152 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %153 = load i64, i64* %RBP
  %154 = sub i64 %153, 48
  %155 = load i64, i64* %PC
  %156 = add i64 %155, 5
  store i64 %156, i64* %PC
  %157 = inttoptr i64 %154 to double*
  %158 = load double, double* %157
  %159 = bitcast i8* %152 to double*
  store double %158, double* %159, align 1, !tbaa !2452
  %160 = getelementptr inbounds i8, i8* %152, i64 8
  %161 = bitcast i8* %160 to double*
  store double 0.000000e+00, double* %161, align 1, !tbaa !2452
  %162 = bitcast i32* %R8D to i64*
  %163 = load i64, i64* %RBP
  %164 = sub i64 %163, 28
  %165 = load i64, i64* %PC
  %166 = add i64 %165, 4
  store i64 %166, i64* %PC
  %167 = inttoptr i64 %164 to i32*
  %168 = load i32, i32* %167
  %169 = zext i32 %168 to i64
  store i64 %169, i64* %162, align 8, !tbaa !2428
  %170 = bitcast i32* %R9D to i64*
  %171 = load i64, i64* %RBP
  %172 = sub i64 %171, 32
  %173 = load i64, i64* %PC
  %174 = add i64 %173, 4
  store i64 %174, i64* %PC
  %175 = inttoptr i64 %172 to i32*
  %176 = load i32, i32* %175
  %177 = zext i32 %176 to i64
  store i64 %177, i64* %170, align 8, !tbaa !2428
  %178 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %179 = load i64, i64* %RBP
  %180 = sub i64 %179, 56
  %181 = load i64, i64* %PC
  %182 = add i64 %181, 5
  store i64 %182, i64* %PC
  %183 = inttoptr i64 %180 to double*
  %184 = load double, double* %183
  %185 = bitcast i8* %178 to double*
  store double %184, double* %185, align 1, !tbaa !2452
  %186 = getelementptr inbounds i8, i8* %178, i64 8
  %187 = bitcast i8* %186 to double*
  store double 0.000000e+00, double* %187, align 1, !tbaa !2452
  %188 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %189 = load i64, i64* %RBP
  %190 = sub i64 %189, 40
  %191 = load i64, i64* %PC
  %192 = add i64 %191, 5
  store i64 %192, i64* %PC
  %193 = inttoptr i64 %190 to double*
  %194 = load double, double* %193
  %195 = bitcast i8* %188 to double*
  store double %194, double* %195, align 1, !tbaa !2452
  %196 = getelementptr inbounds i8, i8* %188, i64 8
  %197 = bitcast i8* %196 to double*
  store double 0.000000e+00, double* %197, align 1, !tbaa !2452
  %198 = load i64, i64* %PC
  %199 = add i64 %198, 2
  store i64 %199, i64* %PC
  store i8 3, i8* %AL, align 1, !tbaa !2451
  %200 = load i64, i64* %PC
  %201 = sub i64 %200, 2603
  %202 = load i64, i64* %PC
  %203 = add i64 %202, 5
  %204 = load i64, i64* %PC
  %205 = add i64 %204, 5
  store i64 %205, i64* %PC
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %207 = load i64, i64* %206, align 8, !tbaa !2428
  %208 = add i64 %207, -8
  %209 = inttoptr i64 %208 to i64*
  store i64 %203, i64* %209
  store i64 %208, i64* %206, align 8, !tbaa !2428
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %201, i64* %210, align 8, !tbaa !2428
  %211 = load i64, i64* %PC
  %212 = call %struct.Memory* @ext_6020e8_fprintf(%struct.State* %0, i64 %211, %struct.Memory* %617)
  %213 = load i64, i64* %RBP
  %214 = sub i64 %213, 4
  %215 = load i64, i64* %PC
  %216 = add i64 %215, 7
  store i64 %216, i64* %PC
  %217 = inttoptr i64 %214 to i32*
  store i32 0, i32* %217
  %218 = load i64, i64* %RBP
  %219 = sub i64 %218, 68
  %220 = load i32, i32* %EAX
  %221 = zext i32 %220 to i64
  %222 = load i64, i64* %PC
  %223 = add i64 %222, 3
  store i64 %223, i64* %PC
  %224 = inttoptr i64 %219 to i32*
  store i32 %220, i32* %224
  %225 = load i64, i64* %PC
  %226 = add i64 %225, 50
  %227 = load i64, i64* %PC
  %228 = add i64 %227, 5
  store i64 %228, i64* %PC
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %226, i64* %229, align 8, !tbaa !2428
  br label %block_40106c

block_40103f:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %230 = add i64 %635, 5
  %231 = load i64, i64* %PC
  %232 = add i64 %231, 5
  store i64 %232, i64* %PC
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %230, i64* %233, align 8, !tbaa !2428
  %234 = load i64, i64* %RBP
  %235 = sub i64 %234, 32
  %236 = load i64, i64* %PC
  %237 = add i64 %236, 3
  store i64 %237, i64* %PC
  %238 = inttoptr i64 %235 to i32*
  %239 = load i32, i32* %238
  %240 = zext i32 %239 to i64
  store i64 %240, i64* %RAX, align 8, !tbaa !2428
  %241 = load i64, i64* %RAX
  %242 = load i64, i64* %PC
  %243 = add i64 %242, 3
  store i64 %243, i64* %PC
  %244 = trunc i64 %241 to i32
  %245 = add i32 1, %244
  %246 = zext i32 %245 to i64
  store i64 %246, i64* %RAX, align 8, !tbaa !2428
  %247 = icmp ult i32 %245, %244
  %248 = icmp ult i32 %245, 1
  %249 = or i1 %247, %248
  %250 = zext i1 %249 to i8
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %250, i8* %251, align 1, !tbaa !2432
  %252 = and i32 %245, 255
  %253 = call i32 @llvm.ctpop.i32(i32 %252) #16
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = xor i8 %255, 1
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %256, i8* %257, align 1, !tbaa !2446
  %258 = xor i64 1, %241
  %259 = trunc i64 %258 to i32
  %260 = xor i32 %259, %245
  %261 = lshr i32 %260, 4
  %262 = trunc i32 %261 to i8
  %263 = and i8 %262, 1
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %263, i8* %264, align 1, !tbaa !2447
  %265 = icmp eq i32 %245, 0
  %266 = zext i1 %265 to i8
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %266, i8* %267, align 1, !tbaa !2448
  %268 = lshr i32 %245, 31
  %269 = trunc i32 %268 to i8
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %269, i8* %270, align 1, !tbaa !2449
  %271 = lshr i32 %244, 31
  %272 = xor i32 %268, %271
  %273 = add nuw nsw i32 %272, %268
  %274 = icmp eq i32 %273, 2
  %275 = zext i1 %274 to i8
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %275, i8* %276, align 1, !tbaa !2450
  %277 = load i64, i64* %RBP
  %278 = sub i64 %277, 32
  %279 = load i32, i32* %EAX
  %280 = zext i32 %279 to i64
  %281 = load i64, i64* %PC
  %282 = add i64 %281, 3
  store i64 %282, i64* %PC
  %283 = inttoptr i64 %278 to i32*
  store i32 %279, i32* %283
  %284 = load i64, i64* %PC
  %285 = sub i64 %284, 195
  %286 = load i64, i64* %PC
  %287 = add i64 %286, 5
  store i64 %287, i64* %PC
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %285, i64* %288, align 8, !tbaa !2428
  br label %block_400f8a

block_400f96:                                     ; preds = %block_400f8a
  %289 = load i64, i64* %RBP
  %290 = sub i64 %289, 16
  %291 = load i64, i64* %PC
  %292 = add i64 %291, 4
  store i64 %292, i64* %PC
  %293 = inttoptr i64 %290 to i64*
  %294 = load i64, i64* %293
  store i64 %294, i64* %RAX, align 8, !tbaa !2428
  %295 = load i64, i64* %RBP
  %296 = sub i64 %295, 28
  %297 = load i64, i64* %PC
  %298 = add i64 %297, 4
  store i64 %298, i64* %PC
  %299 = inttoptr i64 %296 to i32*
  %300 = load i32, i32* %299
  %301 = sext i32 %300 to i64
  store i64 %301, i64* %RCX, align 8, !tbaa !2428
  %302 = load i64, i64* %RCX
  %303 = load i64, i64* %PC
  %304 = add i64 %303, 4
  store i64 %304, i64* %PC
  %305 = shl i64 %302, 12
  %306 = icmp slt i64 %305, 0
  %307 = shl i64 %305, 1
  store i64 %307, i64* %RCX, align 8, !tbaa !2428
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %309 = zext i1 %306 to i8
  store i8 %309, i8* %308, align 1, !tbaa !2451
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %311 = trunc i64 %307 to i32
  %312 = and i32 %311, 254
  %313 = call i32 @llvm.ctpop.i32(i32 %312) #16
  %314 = trunc i32 %313 to i8
  %315 = and i8 %314, 1
  %316 = xor i8 %315, 1
  store i8 %316, i8* %310, align 1, !tbaa !2451
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %317, align 1, !tbaa !2451
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %319 = icmp eq i64 %307, 0
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %318, align 1, !tbaa !2451
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %322 = lshr i64 %307, 63
  %323 = trunc i64 %322 to i8
  store i8 %323, i8* %321, align 1, !tbaa !2451
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %324, align 1, !tbaa !2451
  %325 = load i64, i64* %RAX
  %326 = load i64, i64* %RCX
  %327 = load i64, i64* %PC
  %328 = add i64 %327, 3
  store i64 %328, i64* %PC
  %329 = add i64 %326, %325
  store i64 %329, i64* %RAX, align 8, !tbaa !2428
  %330 = icmp ult i64 %329, %325
  %331 = icmp ult i64 %329, %326
  %332 = or i1 %330, %331
  %333 = zext i1 %332 to i8
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %333, i8* %334, align 1, !tbaa !2432
  %335 = trunc i64 %329 to i32
  %336 = and i32 %335, 255
  %337 = call i32 @llvm.ctpop.i32(i32 %336) #16
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %340, i8* %341, align 1, !tbaa !2446
  %342 = xor i64 %326, %325
  %343 = xor i64 %342, %329
  %344 = lshr i64 %343, 4
  %345 = trunc i64 %344 to i8
  %346 = and i8 %345, 1
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %346, i8* %347, align 1, !tbaa !2447
  %348 = icmp eq i64 %329, 0
  %349 = zext i1 %348 to i8
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %349, i8* %350, align 1, !tbaa !2448
  %351 = lshr i64 %329, 63
  %352 = trunc i64 %351 to i8
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %352, i8* %353, align 1, !tbaa !2449
  %354 = lshr i64 %325, 63
  %355 = lshr i64 %326, 63
  %356 = xor i64 %351, %354
  %357 = xor i64 %351, %355
  %358 = add nuw nsw i64 %356, %357
  %359 = icmp eq i64 %358, 2
  %360 = zext i1 %359 to i8
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %360, i8* %361, align 1, !tbaa !2450
  %362 = load i64, i64* %RBP
  %363 = sub i64 %362, 32
  %364 = load i64, i64* %PC
  %365 = add i64 %364, 4
  store i64 %365, i64* %PC
  %366 = inttoptr i64 %363 to i32*
  %367 = load i32, i32* %366
  %368 = sext i32 %367 to i64
  store i64 %368, i64* %RCX, align 8, !tbaa !2428
  %369 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %370 = load i64, i64* %RAX
  %371 = load i64, i64* %RCX
  %372 = mul i64 %371, 8
  %373 = add i64 %372, %370
  %374 = load i64, i64* %PC
  %375 = add i64 %374, 5
  store i64 %375, i64* %PC
  %376 = inttoptr i64 %373 to double*
  %377 = load double, double* %376
  %378 = bitcast i8* %369 to double*
  store double %377, double* %378, align 1, !tbaa !2452
  %379 = getelementptr inbounds i8, i8* %369, i64 8
  %380 = bitcast i8* %379 to double*
  store double 0.000000e+00, double* %380, align 1, !tbaa !2452
  %381 = load i64, i64* %RBP
  %382 = sub i64 %381, 48
  %383 = bitcast %union.vec128_t* %XMM0 to i8*
  %384 = load i64, i64* %PC
  %385 = add i64 %384, 5
  store i64 %385, i64* %PC
  %386 = bitcast i8* %383 to double*
  %387 = load double, double* %386, align 1
  %388 = inttoptr i64 %382 to double*
  store double %387, double* %388
  %389 = load i64, i64* %RBP
  %390 = sub i64 %389, 24
  %391 = load i64, i64* %PC
  %392 = add i64 %391, 4
  store i64 %392, i64* %PC
  %393 = inttoptr i64 %390 to i64*
  %394 = load i64, i64* %393
  store i64 %394, i64* %RAX, align 8, !tbaa !2428
  %395 = load i64, i64* %RBP
  %396 = sub i64 %395, 28
  %397 = load i64, i64* %PC
  %398 = add i64 %397, 4
  store i64 %398, i64* %PC
  %399 = inttoptr i64 %396 to i32*
  %400 = load i32, i32* %399
  %401 = sext i32 %400 to i64
  store i64 %401, i64* %RCX, align 8, !tbaa !2428
  %402 = load i64, i64* %RCX
  %403 = load i64, i64* %PC
  %404 = add i64 %403, 4
  store i64 %404, i64* %PC
  %405 = shl i64 %402, 12
  %406 = icmp slt i64 %405, 0
  %407 = shl i64 %405, 1
  store i64 %407, i64* %RCX, align 8, !tbaa !2428
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %409 = zext i1 %406 to i8
  store i8 %409, i8* %408, align 1, !tbaa !2451
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %411 = trunc i64 %407 to i32
  %412 = and i32 %411, 254
  %413 = call i32 @llvm.ctpop.i32(i32 %412) #16
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  %416 = xor i8 %415, 1
  store i8 %416, i8* %410, align 1, !tbaa !2451
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %417, align 1, !tbaa !2451
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %419 = icmp eq i64 %407, 0
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %418, align 1, !tbaa !2451
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %422 = lshr i64 %407, 63
  %423 = trunc i64 %422 to i8
  store i8 %423, i8* %421, align 1, !tbaa !2451
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %424, align 1, !tbaa !2451
  %425 = load i64, i64* %RAX
  %426 = load i64, i64* %RCX
  %427 = load i64, i64* %PC
  %428 = add i64 %427, 3
  store i64 %428, i64* %PC
  %429 = add i64 %426, %425
  store i64 %429, i64* %RAX, align 8, !tbaa !2428
  %430 = icmp ult i64 %429, %425
  %431 = icmp ult i64 %429, %426
  %432 = or i1 %430, %431
  %433 = zext i1 %432 to i8
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %433, i8* %434, align 1, !tbaa !2432
  %435 = trunc i64 %429 to i32
  %436 = and i32 %435, 255
  %437 = call i32 @llvm.ctpop.i32(i32 %436) #16
  %438 = trunc i32 %437 to i8
  %439 = and i8 %438, 1
  %440 = xor i8 %439, 1
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %440, i8* %441, align 1, !tbaa !2446
  %442 = xor i64 %426, %425
  %443 = xor i64 %442, %429
  %444 = lshr i64 %443, 4
  %445 = trunc i64 %444 to i8
  %446 = and i8 %445, 1
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %446, i8* %447, align 1, !tbaa !2447
  %448 = icmp eq i64 %429, 0
  %449 = zext i1 %448 to i8
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %449, i8* %450, align 1, !tbaa !2448
  %451 = lshr i64 %429, 63
  %452 = trunc i64 %451 to i8
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %452, i8* %453, align 1, !tbaa !2449
  %454 = lshr i64 %425, 63
  %455 = lshr i64 %426, 63
  %456 = xor i64 %451, %454
  %457 = xor i64 %451, %455
  %458 = add nuw nsw i64 %456, %457
  %459 = icmp eq i64 %458, 2
  %460 = zext i1 %459 to i8
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %460, i8* %461, align 1, !tbaa !2450
  %462 = load i64, i64* %RBP
  %463 = sub i64 %462, 32
  %464 = load i64, i64* %PC
  %465 = add i64 %464, 4
  store i64 %465, i64* %PC
  %466 = inttoptr i64 %463 to i32*
  %467 = load i32, i32* %466
  %468 = sext i32 %467 to i64
  store i64 %468, i64* %RCX, align 8, !tbaa !2428
  %469 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %470 = load i64, i64* %RAX
  %471 = load i64, i64* %RCX
  %472 = mul i64 %471, 8
  %473 = add i64 %472, %470
  %474 = load i64, i64* %PC
  %475 = add i64 %474, 5
  store i64 %475, i64* %PC
  %476 = inttoptr i64 %473 to double*
  %477 = load double, double* %476
  %478 = bitcast i8* %469 to double*
  store double %477, double* %478, align 1, !tbaa !2452
  %479 = getelementptr inbounds i8, i8* %469, i64 8
  %480 = bitcast i8* %479 to double*
  store double 0.000000e+00, double* %480, align 1, !tbaa !2452
  %481 = load i64, i64* %RBP
  %482 = sub i64 %481, 56
  %483 = bitcast %union.vec128_t* %XMM0 to i8*
  %484 = load i64, i64* %PC
  %485 = add i64 %484, 5
  store i64 %485, i64* %PC
  %486 = bitcast i8* %483 to double*
  %487 = load double, double* %486, align 1
  %488 = inttoptr i64 %482 to double*
  store double %487, double* %488
  %489 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %490 = load i64, i64* %RBP
  %491 = sub i64 %490, 48
  %492 = load i64, i64* %PC
  %493 = add i64 %492, 5
  store i64 %493, i64* %PC
  %494 = inttoptr i64 %491 to double*
  %495 = load double, double* %494
  %496 = bitcast i8* %489 to double*
  store double %495, double* %496, align 1, !tbaa !2452
  %497 = getelementptr inbounds i8, i8* %489, i64 8
  %498 = bitcast i8* %497 to double*
  store double 0.000000e+00, double* %498, align 1, !tbaa !2452
  %499 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %500 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %501 = load i64, i64* %RBP
  %502 = sub i64 %501, 56
  %503 = load i64, i64* %PC
  %504 = add i64 %503, 5
  store i64 %504, i64* %PC
  %505 = bitcast i8* %500 to double*
  %506 = load double, double* %505, align 1
  %507 = getelementptr inbounds i8, i8* %500, i64 8
  %508 = bitcast i8* %507 to i64*
  %509 = load i64, i64* %508, align 1
  %510 = inttoptr i64 %502 to double*
  %511 = load double, double* %510
  %512 = fsub double %506, %511
  %513 = bitcast i8* %499 to double*
  store double %512, double* %513, align 1, !tbaa !2452
  %514 = getelementptr inbounds i8, i8* %499, i64 8
  %515 = bitcast i8* %514 to i64*
  store i64 %509, i64* %515, align 1, !tbaa !2452
  %516 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %517 = load i64, i64* %PC
  %518 = add i64 %517, 7
  store i64 %518, i64* %PC
  %519 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401380__rodata_type* @seg_401380__rodata to i64), i64 32) to float*)
  %520 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401380__rodata_type* @seg_401380__rodata to i64), i64 36) to float*)
  %521 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401380__rodata_type* @seg_401380__rodata to i64), i64 40) to float*)
  %522 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401380__rodata_type* @seg_401380__rodata to i64), i64 44) to float*)
  %523 = bitcast i8* %516 to float*
  store float %519, float* %523, align 1, !tbaa !2455
  %524 = getelementptr inbounds i8, i8* %516, i64 4
  %525 = bitcast i8* %524 to float*
  store float %520, float* %525, align 1, !tbaa !2455
  %526 = getelementptr inbounds i8, i8* %516, i64 8
  %527 = bitcast i8* %526 to float*
  store float %521, float* %527, align 1, !tbaa !2455
  %528 = getelementptr inbounds i8, i8* %516, i64 12
  %529 = bitcast i8* %528 to float*
  store float %522, float* %529, align 1, !tbaa !2455
  %530 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %531 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %532 = bitcast %union.vec128_t* %XMM1 to i8*
  %533 = load i64, i64* %PC
  %534 = add i64 %533, 4
  store i64 %534, i64* %PC
  %535 = bitcast i8* %531 to i64*
  %536 = load i64, i64* %535, align 1
  %537 = getelementptr inbounds i8, i8* %531, i64 8
  %538 = bitcast i8* %537 to i64*
  %539 = load i64, i64* %538, align 1
  %540 = bitcast i8* %532 to i64*
  %541 = load i64, i64* %540, align 1
  %542 = getelementptr inbounds i8, i8* %532, i64 8
  %543 = bitcast i8* %542 to i64*
  %544 = load i64, i64* %543, align 1
  %545 = and i64 %541, %536
  %546 = and i64 %544, %539
  %547 = trunc i64 %545 to i32
  %548 = lshr i64 %545, 32
  %549 = trunc i64 %548 to i32
  %550 = bitcast i8* %530 to i32*
  store i32 %547, i32* %550, align 1, !tbaa !2454
  %551 = getelementptr inbounds i8, i8* %530, i64 4
  %552 = bitcast i8* %551 to i32*
  store i32 %549, i32* %552, align 1, !tbaa !2454
  %553 = trunc i64 %546 to i32
  %554 = getelementptr inbounds i8, i8* %530, i64 8
  %555 = bitcast i8* %554 to i32*
  store i32 %553, i32* %555, align 1, !tbaa !2454
  %556 = lshr i64 %546, 32
  %557 = trunc i64 %556 to i32
  %558 = getelementptr inbounds i8, i8* %530, i64 12
  %559 = bitcast i8* %558 to i32*
  store i32 %557, i32* %559, align 1, !tbaa !2454
  %560 = load i64, i64* %RBP
  %561 = sub i64 %560, 64
  %562 = bitcast %union.vec128_t* %XMM0 to i8*
  %563 = load i64, i64* %PC
  %564 = add i64 %563, 5
  store i64 %564, i64* %PC
  %565 = bitcast i8* %562 to double*
  %566 = load double, double* %565, align 1
  %567 = inttoptr i64 %561 to double*
  store double %566, double* %567
  %568 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %569 = load i64, i64* %RBP
  %570 = sub i64 %569, 64
  %571 = load i64, i64* %PC
  %572 = add i64 %571, 5
  store i64 %572, i64* %PC
  %573 = inttoptr i64 %570 to double*
  %574 = load double, double* %573
  %575 = bitcast i8* %568 to double*
  store double %574, double* %575, align 1, !tbaa !2452
  %576 = getelementptr inbounds i8, i8* %568, i64 8
  %577 = bitcast i8* %576 to double*
  store double 0.000000e+00, double* %577, align 1, !tbaa !2452
  %578 = bitcast %union.vec128_t* %XMM0 to i8*
  %579 = load i64, i64* %RBP
  %580 = sub i64 %579, 40
  %581 = load i64, i64* %PC
  %582 = add i64 %581, 5
  store i64 %582, i64* %PC
  %583 = bitcast i8* %578 to double*
  %584 = load double, double* %583, align 1
  %585 = inttoptr i64 %580 to double*
  %586 = load double, double* %585
  %587 = fcmp uno double %584, %586
  br i1 %587, label %588, label %600

; <label>:588:                                    ; preds = %block_400f96
  %589 = fadd double %584, %586
  %590 = bitcast double %589 to i64
  %591 = and i64 %590, 9221120237041090560
  %592 = icmp eq i64 %591, 9218868437227405312
  %593 = and i64 %590, 2251799813685247
  %594 = icmp ne i64 %593, 0
  %595 = and i1 %592, %594
  br i1 %595, label %596, label %606

; <label>:596:                                    ; preds = %588
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %598 = load i64, i64* %597, align 8, !tbaa !2428
  %599 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %598, %struct.Memory* %MEMORY.2) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:600:                                    ; preds = %block_400f96
  %601 = fcmp ogt double %584, %586
  br i1 %601, label %606, label %602

; <label>:602:                                    ; preds = %600
  %603 = fcmp olt double %584, %586
  br i1 %603, label %606, label %604

; <label>:604:                                    ; preds = %602
  %605 = fcmp oeq double %584, %586
  br i1 %605, label %606, label %613

; <label>:606:                                    ; preds = %604, %602, %600, %588
  %607 = phi i8 [ 0, %600 ], [ 0, %602 ], [ 1, %604 ], [ 1, %588 ]
  %608 = phi i8 [ 0, %600 ], [ 0, %602 ], [ 0, %604 ], [ 1, %588 ]
  %609 = phi i8 [ 0, %600 ], [ 1, %602 ], [ 0, %604 ], [ 1, %588 ]
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %607, i8* %610, align 1, !tbaa !2451
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %608, i8* %611, align 1, !tbaa !2451
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %609, i8* %612, align 1, !tbaa !2451
  br label %613

; <label>:613:                                    ; preds = %606, %604
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %614, align 1, !tbaa !2451
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %615, align 1, !tbaa !2451
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %616, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %596, %613
  %617 = phi %struct.Memory* [ %599, %596 ], [ %MEMORY.2, %613 ]
  %618 = load i64, i64* %PC
  %619 = add i64 %618, 75
  %620 = load i64, i64* %PC
  %621 = add i64 %620, 6
  %622 = load i64, i64* %PC
  %623 = add i64 %622, 6
  store i64 %623, i64* %PC
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %625 = load i8, i8* %624, align 1, !tbaa !2432
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %627 = load i8, i8* %626, align 1, !tbaa !2448
  %628 = or i8 %627, %625
  %629 = icmp ne i8 %628, 0
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %632 = select i1 %629, i64 %619, i64 %621
  store i64 %632, i64* %631, align 8, !tbaa !2428
  %633 = load i8, i8* %BRANCH_TAKEN
  %634 = icmp eq i8 %633, 1
  %635 = load i64, i64* %PC
  br i1 %634, label %block_40103f, label %block_400ffa

block_401052:                                     ; preds = %block_400f8a
  %636 = load i64, i64* %PC
  %637 = add i64 %636, 5
  %638 = load i64, i64* %PC
  %639 = add i64 %638, 5
  store i64 %639, i64* %PC
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %637, i64* %640, align 8, !tbaa !2428
  %641 = load i64, i64* %RBP
  %642 = sub i64 %641, 28
  %643 = load i64, i64* %PC
  %644 = add i64 %643, 3
  store i64 %644, i64* %PC
  %645 = inttoptr i64 %642 to i32*
  %646 = load i32, i32* %645
  %647 = zext i32 %646 to i64
  store i64 %647, i64* %RAX, align 8, !tbaa !2428
  %648 = load i64, i64* %RAX
  %649 = load i64, i64* %PC
  %650 = add i64 %649, 3
  store i64 %650, i64* %PC
  %651 = trunc i64 %648 to i32
  %652 = add i32 1, %651
  %653 = zext i32 %652 to i64
  store i64 %653, i64* %RAX, align 8, !tbaa !2428
  %654 = icmp ult i32 %652, %651
  %655 = icmp ult i32 %652, 1
  %656 = or i1 %654, %655
  %657 = zext i1 %656 to i8
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %657, i8* %658, align 1, !tbaa !2432
  %659 = and i32 %652, 255
  %660 = call i32 @llvm.ctpop.i32(i32 %659) #16
  %661 = trunc i32 %660 to i8
  %662 = and i8 %661, 1
  %663 = xor i8 %662, 1
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %663, i8* %664, align 1, !tbaa !2446
  %665 = xor i64 1, %648
  %666 = trunc i64 %665 to i32
  %667 = xor i32 %666, %652
  %668 = lshr i32 %667, 4
  %669 = trunc i32 %668 to i8
  %670 = and i8 %669, 1
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %670, i8* %671, align 1, !tbaa !2447
  %672 = icmp eq i32 %652, 0
  %673 = zext i1 %672 to i8
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %673, i8* %674, align 1, !tbaa !2448
  %675 = lshr i32 %652, 31
  %676 = trunc i32 %675 to i8
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %676, i8* %677, align 1, !tbaa !2449
  %678 = lshr i32 %651, 31
  %679 = xor i32 %675, %678
  %680 = add nuw nsw i32 %679, %675
  %681 = icmp eq i32 %680, 2
  %682 = zext i1 %681 to i8
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %682, i8* %683, align 1, !tbaa !2450
  %684 = load i64, i64* %RBP
  %685 = sub i64 %684, 28
  %686 = load i32, i32* %EAX
  %687 = zext i32 %686 to i64
  %688 = load i64, i64* %PC
  %689 = add i64 %688, 3
  store i64 %689, i64* %PC
  %690 = inttoptr i64 %685 to i32*
  store i32 %686, i32* %690
  %691 = load i64, i64* %PC
  %692 = sub i64 %691, 233
  %693 = load i64, i64* %PC
  %694 = add i64 %693, 5
  store i64 %694, i64* %PC
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %692, i64* %695, align 8, !tbaa !2428
  br label %block_400f77

block_40106c:                                     ; preds = %block_401065, %block_400ffa
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_401065 ], [ %212, %block_400ffa ]
  %696 = load i64, i64* %RBP
  %697 = sub i64 %696, 4
  %698 = load i64, i64* %PC
  %699 = add i64 %698, 3
  store i64 %699, i64* %PC
  %700 = inttoptr i64 %697 to i32*
  %701 = load i32, i32* %700
  %702 = zext i32 %701 to i64
  store i64 %702, i64* %RAX, align 8, !tbaa !2428
  %703 = load i64, i64* %RSP
  %704 = load i64, i64* %PC
  %705 = add i64 %704, 4
  store i64 %705, i64* %PC
  %706 = add i64 80, %703
  store i64 %706, i64* %RSP, align 8, !tbaa !2428
  %707 = icmp ult i64 %706, %703
  %708 = icmp ult i64 %706, 80
  %709 = or i1 %707, %708
  %710 = zext i1 %709 to i8
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %710, i8* %711, align 1, !tbaa !2432
  %712 = trunc i64 %706 to i32
  %713 = and i32 %712, 255
  %714 = call i32 @llvm.ctpop.i32(i32 %713) #16
  %715 = trunc i32 %714 to i8
  %716 = and i8 %715, 1
  %717 = xor i8 %716, 1
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %717, i8* %718, align 1, !tbaa !2446
  %719 = xor i64 80, %703
  %720 = xor i64 %719, %706
  %721 = lshr i64 %720, 4
  %722 = trunc i64 %721 to i8
  %723 = and i8 %722, 1
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %723, i8* %724, align 1, !tbaa !2447
  %725 = icmp eq i64 %706, 0
  %726 = zext i1 %725 to i8
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %726, i8* %727, align 1, !tbaa !2448
  %728 = lshr i64 %706, 63
  %729 = trunc i64 %728 to i8
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %729, i8* %730, align 1, !tbaa !2449
  %731 = lshr i64 %703, 63
  %732 = xor i64 %728, %731
  %733 = add nuw nsw i64 %732, %728
  %734 = icmp eq i64 %733, 2
  %735 = zext i1 %734 to i8
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %735, i8* %736, align 1, !tbaa !2450
  %737 = load i64, i64* %PC
  %738 = add i64 %737, 1
  store i64 %738, i64* %PC
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %740 = load i64, i64* %739, align 8, !tbaa !2428
  %741 = add i64 %740, 8
  %742 = inttoptr i64 %740 to i64*
  %743 = load i64, i64* %742
  store i64 %743, i64* %RBP, align 8, !tbaa !2428
  store i64 %741, i64* %739, align 8, !tbaa !2428
  %744 = load i64, i64* %PC
  %745 = add i64 %744, 1
  store i64 %745, i64* %PC
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %748 = load i64, i64* %747, align 8, !tbaa !2428
  %749 = inttoptr i64 %748 to i64*
  %750 = load i64, i64* %749
  store i64 %750, i64* %746, align 8, !tbaa !2428
  %751 = add i64 %748, 8
  store i64 %751, i64* %747, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400f77:                                     ; preds = %block_401052, %block_400f50
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_400f50 ], [ %MEMORY.2, %block_401052 ]
  %752 = load i64, i64* %RBP
  %753 = sub i64 %752, 28
  %754 = load i64, i64* %PC
  %755 = add i64 %754, 3
  store i64 %755, i64* %PC
  %756 = inttoptr i64 %753 to i32*
  %757 = load i32, i32* %756
  %758 = zext i32 %757 to i64
  store i64 %758, i64* %RAX, align 8, !tbaa !2428
  %759 = load i32, i32* %EAX
  %760 = zext i32 %759 to i64
  %761 = load i64, i64* %RBP
  %762 = sub i64 %761, 8
  %763 = load i64, i64* %PC
  %764 = add i64 %763, 3
  store i64 %764, i64* %PC
  %765 = inttoptr i64 %762 to i32*
  %766 = load i32, i32* %765
  %767 = sub i32 %759, %766
  %768 = icmp ult i32 %759, %766
  %769 = zext i1 %768 to i8
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %769, i8* %770, align 1, !tbaa !2432
  %771 = and i32 %767, 255
  %772 = call i32 @llvm.ctpop.i32(i32 %771) #16
  %773 = trunc i32 %772 to i8
  %774 = and i8 %773, 1
  %775 = xor i8 %774, 1
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %775, i8* %776, align 1, !tbaa !2446
  %777 = xor i32 %766, %759
  %778 = xor i32 %777, %767
  %779 = lshr i32 %778, 4
  %780 = trunc i32 %779 to i8
  %781 = and i8 %780, 1
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %781, i8* %782, align 1, !tbaa !2447
  %783 = icmp eq i32 %767, 0
  %784 = zext i1 %783 to i8
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %784, i8* %785, align 1, !tbaa !2448
  %786 = lshr i32 %767, 31
  %787 = trunc i32 %786 to i8
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %787, i8* %788, align 1, !tbaa !2449
  %789 = lshr i32 %759, 31
  %790 = lshr i32 %766, 31
  %791 = xor i32 %790, %789
  %792 = xor i32 %786, %789
  %793 = add nuw nsw i32 %792, %791
  %794 = icmp eq i32 %793, 2
  %795 = zext i1 %794 to i8
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %795, i8* %796, align 1, !tbaa !2450
  %797 = load i64, i64* %PC
  %798 = add i64 %797, 232
  %799 = load i64, i64* %PC
  %800 = add i64 %799, 6
  %801 = load i64, i64* %PC
  %802 = add i64 %801, 6
  store i64 %802, i64* %PC
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %804 = load i8, i8* %803, align 1, !tbaa !2449
  %805 = icmp ne i8 %804, 0
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %807 = load i8, i8* %806, align 1, !tbaa !2450
  %808 = icmp ne i8 %807, 0
  %809 = xor i1 %805, %808
  %810 = xor i1 %809, true
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %813 = select i1 %809, i64 %800, i64 %798
  store i64 %813, i64* %812, align 8, !tbaa !2428
  %814 = load i8, i8* %BRANCH_TAKEN
  %815 = icmp eq i8 %814, 1
  %816 = load i64, i64* %RBP
  br i1 %815, label %block_401065, label %block_400f83

block_400f8a:                                     ; preds = %block_400f83, %block_40103f
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_400f83 ], [ %617, %block_40103f ]
  %817 = load i64, i64* %RBP
  %818 = sub i64 %817, 32
  %819 = load i64, i64* %PC
  %820 = add i64 %819, 3
  store i64 %820, i64* %PC
  %821 = inttoptr i64 %818 to i32*
  %822 = load i32, i32* %821
  %823 = zext i32 %822 to i64
  store i64 %823, i64* %RAX, align 8, !tbaa !2428
  %824 = load i32, i32* %EAX
  %825 = zext i32 %824 to i64
  %826 = load i64, i64* %RBP
  %827 = sub i64 %826, 8
  %828 = load i64, i64* %PC
  %829 = add i64 %828, 3
  store i64 %829, i64* %PC
  %830 = inttoptr i64 %827 to i32*
  %831 = load i32, i32* %830
  %832 = sub i32 %824, %831
  %833 = icmp ult i32 %824, %831
  %834 = zext i1 %833 to i8
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %834, i8* %835, align 1, !tbaa !2432
  %836 = and i32 %832, 255
  %837 = call i32 @llvm.ctpop.i32(i32 %836) #16
  %838 = trunc i32 %837 to i8
  %839 = and i8 %838, 1
  %840 = xor i8 %839, 1
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %840, i8* %841, align 1, !tbaa !2446
  %842 = xor i32 %831, %824
  %843 = xor i32 %842, %832
  %844 = lshr i32 %843, 4
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %846, i8* %847, align 1, !tbaa !2447
  %848 = icmp eq i32 %832, 0
  %849 = zext i1 %848 to i8
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %849, i8* %850, align 1, !tbaa !2448
  %851 = lshr i32 %832, 31
  %852 = trunc i32 %851 to i8
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %852, i8* %853, align 1, !tbaa !2449
  %854 = lshr i32 %824, 31
  %855 = lshr i32 %831, 31
  %856 = xor i32 %855, %854
  %857 = xor i32 %851, %854
  %858 = add nuw nsw i32 %857, %856
  %859 = icmp eq i32 %858, 2
  %860 = zext i1 %859 to i8
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %860, i8* %861, align 1, !tbaa !2450
  %862 = load i64, i64* %PC
  %863 = add i64 %862, 194
  %864 = load i64, i64* %PC
  %865 = add i64 %864, 6
  %866 = load i64, i64* %PC
  %867 = add i64 %866, 6
  store i64 %867, i64* %PC
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %869 = load i8, i8* %868, align 1, !tbaa !2449
  %870 = icmp ne i8 %869, 0
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %872 = load i8, i8* %871, align 1, !tbaa !2450
  %873 = icmp ne i8 %872, 0
  %874 = xor i1 %870, %873
  %875 = xor i1 %874, true
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %878 = select i1 %874, i64 %865, i64 %863
  store i64 %878, i64* %877, align 8, !tbaa !2428
  %879 = load i8, i8* %BRANCH_TAKEN
  %880 = icmp eq i8 %879, 1
  br i1 %880, label %block_401052, label %block_400f96

block_401065:                                     ; preds = %block_400f77
  %881 = sub i64 %816, 4
  %882 = load i64, i64* %PC
  %883 = add i64 %882, 7
  store i64 %883, i64* %PC
  %884 = inttoptr i64 %881 to i32*
  store i32 1, i32* %884
  br label %block_40106c

block_400f83:                                     ; preds = %block_400f77
  %885 = sub i64 %816, 32
  %886 = load i64, i64* %PC
  %887 = add i64 %886, 7
  store i64 %887, i64* %PC
  %888 = inttoptr i64 %885 to i32*
  store i32 0, i32* %888
  br label %block_400f8a
}

; Function Attrs: noinline
define %struct.Memory* @sub_401374__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401374:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSP
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sub i64 %9, 8
  store i64 %12, i64* %RSP, align 8, !tbaa !2428
  %13 = icmp ult i64 %9, 8
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1, !tbaa !2432
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17) #16
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1, !tbaa !2446
  %23 = xor i64 8, %9
  %24 = xor i64 %23, %12
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1, !tbaa !2447
  %29 = icmp eq i64 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1, !tbaa !2448
  %32 = lshr i64 %12, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1, !tbaa !2449
  %35 = lshr i64 %9, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !2450
  %41 = load i64, i64* %RSP
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 4
  store i64 %43, i64* %PC
  %44 = add i64 8, %41
  store i64 %44, i64* %RSP, align 8, !tbaa !2428
  %45 = icmp ult i64 %44, %41
  %46 = icmp ult i64 %44, 8
  %47 = or i1 %45, %46
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %48, i8* %49, align 1, !tbaa !2432
  %50 = trunc i64 %44 to i32
  %51 = and i32 %50, 255
  %52 = call i32 @llvm.ctpop.i32(i32 %51) #16
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 1
  %55 = xor i8 %54, 1
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %55, i8* %56, align 1, !tbaa !2446
  %57 = xor i64 8, %41
  %58 = xor i64 %57, %44
  %59 = lshr i64 %58, 4
  %60 = trunc i64 %59 to i8
  %61 = and i8 %60, 1
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %61, i8* %62, align 1, !tbaa !2447
  %63 = icmp eq i64 %44, 0
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %64, i8* %65, align 1, !tbaa !2448
  %66 = lshr i64 %44, 63
  %67 = trunc i64 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %67, i8* %68, align 1, !tbaa !2449
  %69 = lshr i64 %41, 63
  %70 = xor i64 %66, %69
  %71 = add nuw nsw i64 %70, %66
  %72 = icmp eq i64 %71, 2
  %73 = zext i1 %72 to i8
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %73, i8* %74, align 1, !tbaa !2450
  %75 = load i64, i64* %PC
  %76 = add i64 %75, 1
  store i64 %76, i64* %PC
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %79 = load i64, i64* %78, align 8, !tbaa !2428
  %80 = inttoptr i64 %79 to i64*
  %81 = load i64, i64* %80
  store i64 %81, i64* %77, align 8, !tbaa !2428
  %82 = add i64 %79, 8
  store i64 %82, i64* %78, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400670__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400670:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %9, align 8, !tbaa !2428
  %11 = inttoptr i64 %10 to i64*
  %12 = load i64, i64* %11
  store i64 %12, i64* %8, align 8, !tbaa !2428
  %13 = add i64 %10, 8
  store i64 %13, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_401150_print_element(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401150:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 11
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %15 = getelementptr inbounds %struct.GPR, %struct.GPR* %14, i32 0, i32 11
  %16 = getelementptr inbounds %struct.Reg, %struct.Reg* %15, i32 0, i32 0
  %EDI = bitcast %union.anon* %16 to i32*
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %RCX = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 9
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSI = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 11
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RDI = bitcast %union.anon* %25 to i64*
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %27 = getelementptr inbounds %struct.GPR, %struct.GPR* %26, i32 0, i32 13
  %28 = getelementptr inbounds %struct.Reg, %struct.Reg* %27, i32 0, i32 0
  %RSP = bitcast %union.anon* %28 to i64*
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 15
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %RBP = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %33 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %32, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %33 to %"class.std::bitset"*
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %35 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %34, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %35 to %union.vec128_t*
  %36 = load i64, i64* %RBP
  %37 = load i64, i64* %PC
  %38 = add i64 %37, 1
  store i64 %38, i64* %PC
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !2428
  %41 = add i64 %40, -8
  %42 = inttoptr i64 %41 to i64*
  store i64 %36, i64* %42
  store i64 %41, i64* %39, align 8, !tbaa !2428
  %43 = load i64, i64* %RSP
  %44 = load i64, i64* %PC
  %45 = add i64 %44, 3
  store i64 %45, i64* %PC
  store i64 %43, i64* %RBP, align 8, !tbaa !2428
  %46 = load i64, i64* %RBP
  %47 = sub i64 %46, 8
  %48 = bitcast %union.vec128_t* %XMM0 to i8*
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 5
  store i64 %50, i64* %PC
  %51 = bitcast i8* %48 to double*
  %52 = load double, double* %51, align 1
  %53 = inttoptr i64 %47 to double*
  store double %52, double* %53
  %54 = load i64, i64* %RBP
  %55 = sub i64 %54, 12
  %56 = load i32, i32* %EDI
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %PC
  %59 = add i64 %58, 3
  store i64 %59, i64* %PC
  %60 = inttoptr i64 %55 to i32*
  store i32 %56, i32* %60
  %61 = load i64, i64* %RBP
  %62 = sub i64 %61, 24
  %63 = load i64, i64* %RSI
  %64 = load i64, i64* %PC
  %65 = add i64 %64, 4
  store i64 %65, i64* %PC
  %66 = inttoptr i64 %62 to i64*
  store i64 %63, i64* %66
  %67 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %68 = load i64, i64* %RBP
  %69 = sub i64 %68, 8
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 5
  store i64 %71, i64* %PC
  %72 = inttoptr i64 %69 to double*
  %73 = load double, double* %72
  %74 = bitcast i8* %67 to double*
  store double %73, double* %74, align 1, !tbaa !2452
  %75 = getelementptr inbounds i8, i8* %67, i64 8
  %76 = bitcast i8* %75 to double*
  store double 0.000000e+00, double* %76, align 1, !tbaa !2452
  %77 = load i64, i64* %RBP
  %78 = sub i64 %77, 32
  %79 = bitcast %union.vec128_t* %XMM0 to i8*
  %80 = load i64, i64* %PC
  %81 = add i64 %80, 5
  store i64 %81, i64* %PC
  %82 = bitcast i8* %79 to double*
  %83 = load double, double* %82, align 1
  %84 = inttoptr i64 %78 to double*
  store double %83, double* %84
  %85 = load i64, i64* %RBP
  %86 = sub i64 %85, 32
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC
  %89 = inttoptr i64 %86 to i8*
  %90 = load i8, i8* %89
  %91 = sext i8 %90 to i64
  %92 = and i64 %91, 4294967295
  store i64 %92, i64* %RDI, align 8, !tbaa !2428
  %93 = load i64, i64* %RDI
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 3
  store i64 %95, i64* %PC
  %96 = and i64 15, %93
  %97 = trunc i64 %96 to i32
  store i64 %96, i64* %RDI, align 8, !tbaa !2428
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %98, align 1, !tbaa !2432
  %99 = and i32 %97, 255
  %100 = call i32 @llvm.ctpop.i32(i32 %99) #16
  %101 = trunc i32 %100 to i8
  %102 = and i8 %101, 1
  %103 = xor i8 %102, 1
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %103, i8* %104, align 1, !tbaa !2446
  %105 = icmp eq i32 %97, 0
  %106 = zext i1 %105 to i8
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %106, i8* %107, align 1, !tbaa !2448
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %108, align 1, !tbaa !2449
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %109, align 1, !tbaa !2450
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %110, align 1, !tbaa !2447
  %111 = load i64, i64* %RDI
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 3
  store i64 %113, i64* %PC
  %114 = trunc i64 %111 to i32
  %115 = add i32 48, %114
  %116 = zext i32 %115 to i64
  store i64 %116, i64* %RDI, align 8, !tbaa !2428
  %117 = icmp ult i32 %115, %114
  %118 = icmp ult i32 %115, 48
  %119 = or i1 %117, %118
  %120 = zext i1 %119 to i8
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %120, i8* %121, align 1, !tbaa !2432
  %122 = and i32 %115, 255
  %123 = call i32 @llvm.ctpop.i32(i32 %122) #16
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %126, i8* %127, align 1, !tbaa !2446
  %128 = xor i64 48, %111
  %129 = trunc i64 %128 to i32
  %130 = xor i32 %129, %115
  %131 = lshr i32 %130, 4
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %133, i8* %134, align 1, !tbaa !2447
  %135 = icmp eq i32 %115, 0
  %136 = zext i1 %135 to i8
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %136, i8* %137, align 1, !tbaa !2448
  %138 = lshr i32 %115, 31
  %139 = trunc i32 %138 to i8
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %139, i8* %140, align 1, !tbaa !2449
  %141 = lshr i32 %114, 31
  %142 = xor i32 %138, %141
  %143 = add nuw nsw i32 %142, %138
  %144 = icmp eq i32 %143, 2
  %145 = zext i1 %144 to i8
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %145, i8* %146, align 1, !tbaa !2450
  %147 = load i8, i8* %DIL
  %148 = zext i8 %147 to i64
  %149 = load i64, i64* %PC
  %150 = add i64 %149, 3
  store i64 %150, i64* %PC
  store i8 %147, i8* %AL, align 1, !tbaa !2451
  %151 = load i64, i64* %RBP
  %152 = sub i64 %151, 24
  %153 = load i64, i64* %PC
  %154 = add i64 %153, 4
  store i64 %154, i64* %PC
  %155 = inttoptr i64 %152 to i64*
  %156 = load i64, i64* %155
  store i64 %156, i64* %RSI, align 8, !tbaa !2428
  %157 = load i64, i64* %RBP
  %158 = sub i64 %157, 12
  %159 = load i64, i64* %PC
  %160 = add i64 %159, 4
  store i64 %160, i64* %PC
  %161 = inttoptr i64 %158 to i32*
  %162 = load i32, i32* %161
  %163 = sext i32 %162 to i64
  store i64 %163, i64* %RCX, align 8, !tbaa !2428
  %164 = load i64, i64* %RSI
  %165 = load i64, i64* %RCX
  %166 = add i64 %165, %164
  %167 = load i8, i8* %AL
  %168 = zext i8 %167 to i64
  %169 = load i64, i64* %PC
  %170 = add i64 %169, 3
  store i64 %170, i64* %PC
  %171 = inttoptr i64 %166 to i8*
  store i8 %167, i8* %171
  %172 = load i64, i64* %RBP
  %173 = sub i64 %172, 32
  %174 = load i64, i64* %PC
  %175 = add i64 %174, 4
  store i64 %175, i64* %PC
  %176 = inttoptr i64 %173 to i8*
  %177 = load i8, i8* %176
  %178 = sext i8 %177 to i64
  %179 = and i64 %178, 4294967295
  store i64 %179, i64* %RDI, align 8, !tbaa !2428
  %180 = load i64, i64* %RDI
  %181 = load i64, i64* %PC
  %182 = add i64 %181, 3
  store i64 %182, i64* %PC
  %183 = and i64 15, %180
  %184 = trunc i64 %183 to i32
  store i64 %183, i64* %RDI, align 8, !tbaa !2428
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %185, align 1, !tbaa !2432
  %186 = and i32 %184, 255
  %187 = call i32 @llvm.ctpop.i32(i32 %186) #16
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %190, i8* %191, align 1, !tbaa !2446
  %192 = icmp eq i32 %184, 0
  %193 = zext i1 %192 to i8
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %193, i8* %194, align 1, !tbaa !2448
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %195, align 1, !tbaa !2449
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %196, align 1, !tbaa !2450
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %197, align 1, !tbaa !2447
  %198 = load i64, i64* %RDI
  %199 = load i64, i64* %PC
  %200 = add i64 %199, 3
  store i64 %200, i64* %PC
  %201 = trunc i64 %198 to i32
  %202 = add i32 48, %201
  %203 = zext i32 %202 to i64
  store i64 %203, i64* %RDI, align 8, !tbaa !2428
  %204 = icmp ult i32 %202, %201
  %205 = icmp ult i32 %202, 48
  %206 = or i1 %204, %205
  %207 = zext i1 %206 to i8
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %207, i8* %208, align 1, !tbaa !2432
  %209 = and i32 %202, 255
  %210 = call i32 @llvm.ctpop.i32(i32 %209) #16
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  %213 = xor i8 %212, 1
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %213, i8* %214, align 1, !tbaa !2446
  %215 = xor i64 48, %198
  %216 = trunc i64 %215 to i32
  %217 = xor i32 %216, %202
  %218 = lshr i32 %217, 4
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %220, i8* %221, align 1, !tbaa !2447
  %222 = icmp eq i32 %202, 0
  %223 = zext i1 %222 to i8
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %223, i8* %224, align 1, !tbaa !2448
  %225 = lshr i32 %202, 31
  %226 = trunc i32 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %226, i8* %227, align 1, !tbaa !2449
  %228 = lshr i32 %201, 31
  %229 = xor i32 %225, %228
  %230 = add nuw nsw i32 %229, %225
  %231 = icmp eq i32 %230, 2
  %232 = zext i1 %231 to i8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %232, i8* %233, align 1, !tbaa !2450
  %234 = load i8, i8* %DIL
  %235 = zext i8 %234 to i64
  %236 = load i64, i64* %PC
  %237 = add i64 %236, 3
  store i64 %237, i64* %PC
  store i8 %234, i8* %AL, align 1, !tbaa !2451
  %238 = load i64, i64* %RBP
  %239 = sub i64 %238, 24
  %240 = load i64, i64* %PC
  %241 = add i64 %240, 4
  store i64 %241, i64* %PC
  %242 = inttoptr i64 %239 to i64*
  %243 = load i64, i64* %242
  store i64 %243, i64* %RCX, align 8, !tbaa !2428
  %244 = load i64, i64* %RBP
  %245 = sub i64 %244, 12
  %246 = load i64, i64* %PC
  %247 = add i64 %246, 4
  store i64 %247, i64* %PC
  %248 = inttoptr i64 %245 to i32*
  %249 = load i32, i32* %248
  %250 = sext i32 %249 to i64
  store i64 %250, i64* %RSI, align 8, !tbaa !2428
  %251 = load i64, i64* %RCX
  %252 = load i64, i64* %RSI
  %253 = add i64 %251, 1
  %254 = add i64 %253, %252
  %255 = load i8, i8* %AL
  %256 = zext i8 %255 to i64
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 4
  store i64 %258, i64* %PC
  %259 = inttoptr i64 %254 to i8*
  store i8 %255, i8* %259
  %260 = load i64, i64* %RBP
  %261 = sub i64 %260, 31
  %262 = load i64, i64* %PC
  %263 = add i64 %262, 4
  store i64 %263, i64* %PC
  %264 = inttoptr i64 %261 to i8*
  %265 = load i8, i8* %264
  %266 = sext i8 %265 to i64
  %267 = and i64 %266, 4294967295
  store i64 %267, i64* %RDI, align 8, !tbaa !2428
  %268 = load i64, i64* %RDI
  %269 = load i64, i64* %PC
  %270 = add i64 %269, 3
  store i64 %270, i64* %PC
  %271 = and i64 15, %268
  %272 = trunc i64 %271 to i32
  store i64 %271, i64* %RDI, align 8, !tbaa !2428
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %273, align 1, !tbaa !2432
  %274 = and i32 %272, 255
  %275 = call i32 @llvm.ctpop.i32(i32 %274) #16
  %276 = trunc i32 %275 to i8
  %277 = and i8 %276, 1
  %278 = xor i8 %277, 1
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %278, i8* %279, align 1, !tbaa !2446
  %280 = icmp eq i32 %272, 0
  %281 = zext i1 %280 to i8
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %281, i8* %282, align 1, !tbaa !2448
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %283, align 1, !tbaa !2449
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %284, align 1, !tbaa !2450
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %285, align 1, !tbaa !2447
  %286 = load i64, i64* %RDI
  %287 = load i64, i64* %PC
  %288 = add i64 %287, 3
  store i64 %288, i64* %PC
  %289 = trunc i64 %286 to i32
  %290 = add i32 48, %289
  %291 = zext i32 %290 to i64
  store i64 %291, i64* %RDI, align 8, !tbaa !2428
  %292 = icmp ult i32 %290, %289
  %293 = icmp ult i32 %290, 48
  %294 = or i1 %292, %293
  %295 = zext i1 %294 to i8
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %295, i8* %296, align 1, !tbaa !2432
  %297 = and i32 %290, 255
  %298 = call i32 @llvm.ctpop.i32(i32 %297) #16
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = xor i8 %300, 1
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %301, i8* %302, align 1, !tbaa !2446
  %303 = xor i64 48, %286
  %304 = trunc i64 %303 to i32
  %305 = xor i32 %304, %290
  %306 = lshr i32 %305, 4
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %308, i8* %309, align 1, !tbaa !2447
  %310 = icmp eq i32 %290, 0
  %311 = zext i1 %310 to i8
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %311, i8* %312, align 1, !tbaa !2448
  %313 = lshr i32 %290, 31
  %314 = trunc i32 %313 to i8
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %314, i8* %315, align 1, !tbaa !2449
  %316 = lshr i32 %289, 31
  %317 = xor i32 %313, %316
  %318 = add nuw nsw i32 %317, %313
  %319 = icmp eq i32 %318, 2
  %320 = zext i1 %319 to i8
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %320, i8* %321, align 1, !tbaa !2450
  %322 = load i8, i8* %DIL
  %323 = zext i8 %322 to i64
  %324 = load i64, i64* %PC
  %325 = add i64 %324, 3
  store i64 %325, i64* %PC
  store i8 %322, i8* %AL, align 1, !tbaa !2451
  %326 = load i64, i64* %RBP
  %327 = sub i64 %326, 24
  %328 = load i64, i64* %PC
  %329 = add i64 %328, 4
  store i64 %329, i64* %PC
  %330 = inttoptr i64 %327 to i64*
  %331 = load i64, i64* %330
  store i64 %331, i64* %RCX, align 8, !tbaa !2428
  %332 = load i64, i64* %RBP
  %333 = sub i64 %332, 12
  %334 = load i64, i64* %PC
  %335 = add i64 %334, 4
  store i64 %335, i64* %PC
  %336 = inttoptr i64 %333 to i32*
  %337 = load i32, i32* %336
  %338 = sext i32 %337 to i64
  store i64 %338, i64* %RSI, align 8, !tbaa !2428
  %339 = load i64, i64* %RCX
  %340 = load i64, i64* %RSI
  %341 = add i64 %339, 2
  %342 = add i64 %341, %340
  %343 = load i8, i8* %AL
  %344 = zext i8 %343 to i64
  %345 = load i64, i64* %PC
  %346 = add i64 %345, 4
  store i64 %346, i64* %PC
  %347 = inttoptr i64 %342 to i8*
  store i8 %343, i8* %347
  %348 = load i64, i64* %RBP
  %349 = sub i64 %348, 31
  %350 = load i64, i64* %PC
  %351 = add i64 %350, 4
  store i64 %351, i64* %PC
  %352 = inttoptr i64 %349 to i8*
  %353 = load i8, i8* %352
  %354 = sext i8 %353 to i64
  %355 = and i64 %354, 4294967295
  store i64 %355, i64* %RDI, align 8, !tbaa !2428
  %356 = load i64, i64* %RDI
  %357 = load i64, i64* %PC
  %358 = add i64 %357, 3
  store i64 %358, i64* %PC
  %359 = and i64 15, %356
  %360 = trunc i64 %359 to i32
  store i64 %359, i64* %RDI, align 8, !tbaa !2428
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %361, align 1, !tbaa !2432
  %362 = and i32 %360, 255
  %363 = call i32 @llvm.ctpop.i32(i32 %362) #16
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  %366 = xor i8 %365, 1
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %366, i8* %367, align 1, !tbaa !2446
  %368 = icmp eq i32 %360, 0
  %369 = zext i1 %368 to i8
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %369, i8* %370, align 1, !tbaa !2448
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %371, align 1, !tbaa !2449
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %372, align 1, !tbaa !2450
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %373, align 1, !tbaa !2447
  %374 = load i64, i64* %RDI
  %375 = load i64, i64* %PC
  %376 = add i64 %375, 3
  store i64 %376, i64* %PC
  %377 = trunc i64 %374 to i32
  %378 = add i32 48, %377
  %379 = zext i32 %378 to i64
  store i64 %379, i64* %RDI, align 8, !tbaa !2428
  %380 = icmp ult i32 %378, %377
  %381 = icmp ult i32 %378, 48
  %382 = or i1 %380, %381
  %383 = zext i1 %382 to i8
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %383, i8* %384, align 1, !tbaa !2432
  %385 = and i32 %378, 255
  %386 = call i32 @llvm.ctpop.i32(i32 %385) #16
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  %389 = xor i8 %388, 1
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %389, i8* %390, align 1, !tbaa !2446
  %391 = xor i64 48, %374
  %392 = trunc i64 %391 to i32
  %393 = xor i32 %392, %378
  %394 = lshr i32 %393, 4
  %395 = trunc i32 %394 to i8
  %396 = and i8 %395, 1
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %396, i8* %397, align 1, !tbaa !2447
  %398 = icmp eq i32 %378, 0
  %399 = zext i1 %398 to i8
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %399, i8* %400, align 1, !tbaa !2448
  %401 = lshr i32 %378, 31
  %402 = trunc i32 %401 to i8
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %402, i8* %403, align 1, !tbaa !2449
  %404 = lshr i32 %377, 31
  %405 = xor i32 %401, %404
  %406 = add nuw nsw i32 %405, %401
  %407 = icmp eq i32 %406, 2
  %408 = zext i1 %407 to i8
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %408, i8* %409, align 1, !tbaa !2450
  %410 = load i8, i8* %DIL
  %411 = zext i8 %410 to i64
  %412 = load i64, i64* %PC
  %413 = add i64 %412, 3
  store i64 %413, i64* %PC
  store i8 %410, i8* %AL, align 1, !tbaa !2451
  %414 = load i64, i64* %RBP
  %415 = sub i64 %414, 24
  %416 = load i64, i64* %PC
  %417 = add i64 %416, 4
  store i64 %417, i64* %PC
  %418 = inttoptr i64 %415 to i64*
  %419 = load i64, i64* %418
  store i64 %419, i64* %RCX, align 8, !tbaa !2428
  %420 = load i64, i64* %RBP
  %421 = sub i64 %420, 12
  %422 = load i64, i64* %PC
  %423 = add i64 %422, 4
  store i64 %423, i64* %PC
  %424 = inttoptr i64 %421 to i32*
  %425 = load i32, i32* %424
  %426 = sext i32 %425 to i64
  store i64 %426, i64* %RSI, align 8, !tbaa !2428
  %427 = load i64, i64* %RCX
  %428 = load i64, i64* %RSI
  %429 = add i64 %427, 3
  %430 = add i64 %429, %428
  %431 = load i8, i8* %AL
  %432 = zext i8 %431 to i64
  %433 = load i64, i64* %PC
  %434 = add i64 %433, 4
  store i64 %434, i64* %PC
  %435 = inttoptr i64 %430 to i8*
  store i8 %431, i8* %435
  %436 = load i64, i64* %RBP
  %437 = sub i64 %436, 30
  %438 = load i64, i64* %PC
  %439 = add i64 %438, 4
  store i64 %439, i64* %PC
  %440 = inttoptr i64 %437 to i8*
  %441 = load i8, i8* %440
  %442 = sext i8 %441 to i64
  %443 = and i64 %442, 4294967295
  store i64 %443, i64* %RDI, align 8, !tbaa !2428
  %444 = load i64, i64* %RDI
  %445 = load i64, i64* %PC
  %446 = add i64 %445, 3
  store i64 %446, i64* %PC
  %447 = and i64 15, %444
  %448 = trunc i64 %447 to i32
  store i64 %447, i64* %RDI, align 8, !tbaa !2428
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %449, align 1, !tbaa !2432
  %450 = and i32 %448, 255
  %451 = call i32 @llvm.ctpop.i32(i32 %450) #16
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  %454 = xor i8 %453, 1
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %454, i8* %455, align 1, !tbaa !2446
  %456 = icmp eq i32 %448, 0
  %457 = zext i1 %456 to i8
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %457, i8* %458, align 1, !tbaa !2448
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %459, align 1, !tbaa !2449
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %460, align 1, !tbaa !2450
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %461, align 1, !tbaa !2447
  %462 = load i64, i64* %RDI
  %463 = load i64, i64* %PC
  %464 = add i64 %463, 3
  store i64 %464, i64* %PC
  %465 = trunc i64 %462 to i32
  %466 = add i32 48, %465
  %467 = zext i32 %466 to i64
  store i64 %467, i64* %RDI, align 8, !tbaa !2428
  %468 = icmp ult i32 %466, %465
  %469 = icmp ult i32 %466, 48
  %470 = or i1 %468, %469
  %471 = zext i1 %470 to i8
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %471, i8* %472, align 1, !tbaa !2432
  %473 = and i32 %466, 255
  %474 = call i32 @llvm.ctpop.i32(i32 %473) #16
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  %477 = xor i8 %476, 1
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %477, i8* %478, align 1, !tbaa !2446
  %479 = xor i64 48, %462
  %480 = trunc i64 %479 to i32
  %481 = xor i32 %480, %466
  %482 = lshr i32 %481, 4
  %483 = trunc i32 %482 to i8
  %484 = and i8 %483, 1
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %484, i8* %485, align 1, !tbaa !2447
  %486 = icmp eq i32 %466, 0
  %487 = zext i1 %486 to i8
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %487, i8* %488, align 1, !tbaa !2448
  %489 = lshr i32 %466, 31
  %490 = trunc i32 %489 to i8
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %490, i8* %491, align 1, !tbaa !2449
  %492 = lshr i32 %465, 31
  %493 = xor i32 %489, %492
  %494 = add nuw nsw i32 %493, %489
  %495 = icmp eq i32 %494, 2
  %496 = zext i1 %495 to i8
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %496, i8* %497, align 1, !tbaa !2450
  %498 = load i8, i8* %DIL
  %499 = zext i8 %498 to i64
  %500 = load i64, i64* %PC
  %501 = add i64 %500, 3
  store i64 %501, i64* %PC
  store i8 %498, i8* %AL, align 1, !tbaa !2451
  %502 = load i64, i64* %RBP
  %503 = sub i64 %502, 24
  %504 = load i64, i64* %PC
  %505 = add i64 %504, 4
  store i64 %505, i64* %PC
  %506 = inttoptr i64 %503 to i64*
  %507 = load i64, i64* %506
  store i64 %507, i64* %RCX, align 8, !tbaa !2428
  %508 = load i64, i64* %RBP
  %509 = sub i64 %508, 12
  %510 = load i64, i64* %PC
  %511 = add i64 %510, 4
  store i64 %511, i64* %PC
  %512 = inttoptr i64 %509 to i32*
  %513 = load i32, i32* %512
  %514 = sext i32 %513 to i64
  store i64 %514, i64* %RSI, align 8, !tbaa !2428
  %515 = load i64, i64* %RCX
  %516 = load i64, i64* %RSI
  %517 = add i64 %515, 4
  %518 = add i64 %517, %516
  %519 = load i8, i8* %AL
  %520 = zext i8 %519 to i64
  %521 = load i64, i64* %PC
  %522 = add i64 %521, 4
  store i64 %522, i64* %PC
  %523 = inttoptr i64 %518 to i8*
  store i8 %519, i8* %523
  %524 = load i64, i64* %RBP
  %525 = sub i64 %524, 30
  %526 = load i64, i64* %PC
  %527 = add i64 %526, 4
  store i64 %527, i64* %PC
  %528 = inttoptr i64 %525 to i8*
  %529 = load i8, i8* %528
  %530 = sext i8 %529 to i64
  %531 = and i64 %530, 4294967295
  store i64 %531, i64* %RDI, align 8, !tbaa !2428
  %532 = load i64, i64* %RDI
  %533 = load i64, i64* %PC
  %534 = add i64 %533, 3
  store i64 %534, i64* %PC
  %535 = and i64 15, %532
  %536 = trunc i64 %535 to i32
  store i64 %535, i64* %RDI, align 8, !tbaa !2428
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %537, align 1, !tbaa !2432
  %538 = and i32 %536, 255
  %539 = call i32 @llvm.ctpop.i32(i32 %538) #16
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = xor i8 %541, 1
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %542, i8* %543, align 1, !tbaa !2446
  %544 = icmp eq i32 %536, 0
  %545 = zext i1 %544 to i8
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %545, i8* %546, align 1, !tbaa !2448
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %547, align 1, !tbaa !2449
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %548, align 1, !tbaa !2450
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %549, align 1, !tbaa !2447
  %550 = load i64, i64* %RDI
  %551 = load i64, i64* %PC
  %552 = add i64 %551, 3
  store i64 %552, i64* %PC
  %553 = trunc i64 %550 to i32
  %554 = add i32 48, %553
  %555 = zext i32 %554 to i64
  store i64 %555, i64* %RDI, align 8, !tbaa !2428
  %556 = icmp ult i32 %554, %553
  %557 = icmp ult i32 %554, 48
  %558 = or i1 %556, %557
  %559 = zext i1 %558 to i8
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %559, i8* %560, align 1, !tbaa !2432
  %561 = and i32 %554, 255
  %562 = call i32 @llvm.ctpop.i32(i32 %561) #16
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  %565 = xor i8 %564, 1
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %565, i8* %566, align 1, !tbaa !2446
  %567 = xor i64 48, %550
  %568 = trunc i64 %567 to i32
  %569 = xor i32 %568, %554
  %570 = lshr i32 %569, 4
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %572, i8* %573, align 1, !tbaa !2447
  %574 = icmp eq i32 %554, 0
  %575 = zext i1 %574 to i8
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %575, i8* %576, align 1, !tbaa !2448
  %577 = lshr i32 %554, 31
  %578 = trunc i32 %577 to i8
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %578, i8* %579, align 1, !tbaa !2449
  %580 = lshr i32 %553, 31
  %581 = xor i32 %577, %580
  %582 = add nuw nsw i32 %581, %577
  %583 = icmp eq i32 %582, 2
  %584 = zext i1 %583 to i8
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %584, i8* %585, align 1, !tbaa !2450
  %586 = load i8, i8* %DIL
  %587 = zext i8 %586 to i64
  %588 = load i64, i64* %PC
  %589 = add i64 %588, 3
  store i64 %589, i64* %PC
  store i8 %586, i8* %AL, align 1, !tbaa !2451
  %590 = load i64, i64* %RBP
  %591 = sub i64 %590, 24
  %592 = load i64, i64* %PC
  %593 = add i64 %592, 4
  store i64 %593, i64* %PC
  %594 = inttoptr i64 %591 to i64*
  %595 = load i64, i64* %594
  store i64 %595, i64* %RCX, align 8, !tbaa !2428
  %596 = load i64, i64* %RBP
  %597 = sub i64 %596, 12
  %598 = load i64, i64* %PC
  %599 = add i64 %598, 4
  store i64 %599, i64* %PC
  %600 = inttoptr i64 %597 to i32*
  %601 = load i32, i32* %600
  %602 = sext i32 %601 to i64
  store i64 %602, i64* %RSI, align 8, !tbaa !2428
  %603 = load i64, i64* %RCX
  %604 = load i64, i64* %RSI
  %605 = add i64 %603, 5
  %606 = add i64 %605, %604
  %607 = load i8, i8* %AL
  %608 = zext i8 %607 to i64
  %609 = load i64, i64* %PC
  %610 = add i64 %609, 4
  store i64 %610, i64* %PC
  %611 = inttoptr i64 %606 to i8*
  store i8 %607, i8* %611
  %612 = load i64, i64* %RBP
  %613 = sub i64 %612, 29
  %614 = load i64, i64* %PC
  %615 = add i64 %614, 4
  store i64 %615, i64* %PC
  %616 = inttoptr i64 %613 to i8*
  %617 = load i8, i8* %616
  %618 = sext i8 %617 to i64
  %619 = and i64 %618, 4294967295
  store i64 %619, i64* %RDI, align 8, !tbaa !2428
  %620 = load i64, i64* %RDI
  %621 = load i64, i64* %PC
  %622 = add i64 %621, 3
  store i64 %622, i64* %PC
  %623 = and i64 15, %620
  %624 = trunc i64 %623 to i32
  store i64 %623, i64* %RDI, align 8, !tbaa !2428
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %625, align 1, !tbaa !2432
  %626 = and i32 %624, 255
  %627 = call i32 @llvm.ctpop.i32(i32 %626) #16
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  %630 = xor i8 %629, 1
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %630, i8* %631, align 1, !tbaa !2446
  %632 = icmp eq i32 %624, 0
  %633 = zext i1 %632 to i8
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %633, i8* %634, align 1, !tbaa !2448
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %635, align 1, !tbaa !2449
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %636, align 1, !tbaa !2450
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %637, align 1, !tbaa !2447
  %638 = load i64, i64* %RDI
  %639 = load i64, i64* %PC
  %640 = add i64 %639, 3
  store i64 %640, i64* %PC
  %641 = trunc i64 %638 to i32
  %642 = add i32 48, %641
  %643 = zext i32 %642 to i64
  store i64 %643, i64* %RDI, align 8, !tbaa !2428
  %644 = icmp ult i32 %642, %641
  %645 = icmp ult i32 %642, 48
  %646 = or i1 %644, %645
  %647 = zext i1 %646 to i8
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %647, i8* %648, align 1, !tbaa !2432
  %649 = and i32 %642, 255
  %650 = call i32 @llvm.ctpop.i32(i32 %649) #16
  %651 = trunc i32 %650 to i8
  %652 = and i8 %651, 1
  %653 = xor i8 %652, 1
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %653, i8* %654, align 1, !tbaa !2446
  %655 = xor i64 48, %638
  %656 = trunc i64 %655 to i32
  %657 = xor i32 %656, %642
  %658 = lshr i32 %657, 4
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %660, i8* %661, align 1, !tbaa !2447
  %662 = icmp eq i32 %642, 0
  %663 = zext i1 %662 to i8
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %663, i8* %664, align 1, !tbaa !2448
  %665 = lshr i32 %642, 31
  %666 = trunc i32 %665 to i8
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %666, i8* %667, align 1, !tbaa !2449
  %668 = lshr i32 %641, 31
  %669 = xor i32 %665, %668
  %670 = add nuw nsw i32 %669, %665
  %671 = icmp eq i32 %670, 2
  %672 = zext i1 %671 to i8
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %672, i8* %673, align 1, !tbaa !2450
  %674 = load i8, i8* %DIL
  %675 = zext i8 %674 to i64
  %676 = load i64, i64* %PC
  %677 = add i64 %676, 3
  store i64 %677, i64* %PC
  store i8 %674, i8* %AL, align 1, !tbaa !2451
  %678 = load i64, i64* %RBP
  %679 = sub i64 %678, 24
  %680 = load i64, i64* %PC
  %681 = add i64 %680, 4
  store i64 %681, i64* %PC
  %682 = inttoptr i64 %679 to i64*
  %683 = load i64, i64* %682
  store i64 %683, i64* %RCX, align 8, !tbaa !2428
  %684 = load i64, i64* %RBP
  %685 = sub i64 %684, 12
  %686 = load i64, i64* %PC
  %687 = add i64 %686, 4
  store i64 %687, i64* %PC
  %688 = inttoptr i64 %685 to i32*
  %689 = load i32, i32* %688
  %690 = sext i32 %689 to i64
  store i64 %690, i64* %RSI, align 8, !tbaa !2428
  %691 = load i64, i64* %RCX
  %692 = load i64, i64* %RSI
  %693 = add i64 %691, 6
  %694 = add i64 %693, %692
  %695 = load i8, i8* %AL
  %696 = zext i8 %695 to i64
  %697 = load i64, i64* %PC
  %698 = add i64 %697, 4
  store i64 %698, i64* %PC
  %699 = inttoptr i64 %694 to i8*
  store i8 %695, i8* %699
  %700 = load i64, i64* %RBP
  %701 = sub i64 %700, 29
  %702 = load i64, i64* %PC
  %703 = add i64 %702, 4
  store i64 %703, i64* %PC
  %704 = inttoptr i64 %701 to i8*
  %705 = load i8, i8* %704
  %706 = sext i8 %705 to i64
  %707 = and i64 %706, 4294967295
  store i64 %707, i64* %RDI, align 8, !tbaa !2428
  %708 = load i64, i64* %RDI
  %709 = load i64, i64* %PC
  %710 = add i64 %709, 3
  store i64 %710, i64* %PC
  %711 = and i64 15, %708
  %712 = trunc i64 %711 to i32
  store i64 %711, i64* %RDI, align 8, !tbaa !2428
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %713, align 1, !tbaa !2432
  %714 = and i32 %712, 255
  %715 = call i32 @llvm.ctpop.i32(i32 %714) #16
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  %718 = xor i8 %717, 1
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %718, i8* %719, align 1, !tbaa !2446
  %720 = icmp eq i32 %712, 0
  %721 = zext i1 %720 to i8
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %721, i8* %722, align 1, !tbaa !2448
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %723, align 1, !tbaa !2449
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %724, align 1, !tbaa !2450
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %725, align 1, !tbaa !2447
  %726 = load i64, i64* %RDI
  %727 = load i64, i64* %PC
  %728 = add i64 %727, 3
  store i64 %728, i64* %PC
  %729 = trunc i64 %726 to i32
  %730 = add i32 48, %729
  %731 = zext i32 %730 to i64
  store i64 %731, i64* %RDI, align 8, !tbaa !2428
  %732 = icmp ult i32 %730, %729
  %733 = icmp ult i32 %730, 48
  %734 = or i1 %732, %733
  %735 = zext i1 %734 to i8
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %735, i8* %736, align 1, !tbaa !2432
  %737 = and i32 %730, 255
  %738 = call i32 @llvm.ctpop.i32(i32 %737) #16
  %739 = trunc i32 %738 to i8
  %740 = and i8 %739, 1
  %741 = xor i8 %740, 1
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %741, i8* %742, align 1, !tbaa !2446
  %743 = xor i64 48, %726
  %744 = trunc i64 %743 to i32
  %745 = xor i32 %744, %730
  %746 = lshr i32 %745, 4
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %748, i8* %749, align 1, !tbaa !2447
  %750 = icmp eq i32 %730, 0
  %751 = zext i1 %750 to i8
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %751, i8* %752, align 1, !tbaa !2448
  %753 = lshr i32 %730, 31
  %754 = trunc i32 %753 to i8
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %754, i8* %755, align 1, !tbaa !2449
  %756 = lshr i32 %729, 31
  %757 = xor i32 %753, %756
  %758 = add nuw nsw i32 %757, %753
  %759 = icmp eq i32 %758, 2
  %760 = zext i1 %759 to i8
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %760, i8* %761, align 1, !tbaa !2450
  %762 = load i8, i8* %DIL
  %763 = zext i8 %762 to i64
  %764 = load i64, i64* %PC
  %765 = add i64 %764, 3
  store i64 %765, i64* %PC
  store i8 %762, i8* %AL, align 1, !tbaa !2451
  %766 = load i64, i64* %RBP
  %767 = sub i64 %766, 24
  %768 = load i64, i64* %PC
  %769 = add i64 %768, 4
  store i64 %769, i64* %PC
  %770 = inttoptr i64 %767 to i64*
  %771 = load i64, i64* %770
  store i64 %771, i64* %RCX, align 8, !tbaa !2428
  %772 = load i64, i64* %RBP
  %773 = sub i64 %772, 12
  %774 = load i64, i64* %PC
  %775 = add i64 %774, 4
  store i64 %775, i64* %PC
  %776 = inttoptr i64 %773 to i32*
  %777 = load i32, i32* %776
  %778 = sext i32 %777 to i64
  store i64 %778, i64* %RSI, align 8, !tbaa !2428
  %779 = load i64, i64* %RCX
  %780 = load i64, i64* %RSI
  %781 = add i64 %779, 7
  %782 = add i64 %781, %780
  %783 = load i8, i8* %AL
  %784 = zext i8 %783 to i64
  %785 = load i64, i64* %PC
  %786 = add i64 %785, 4
  store i64 %786, i64* %PC
  %787 = inttoptr i64 %782 to i8*
  store i8 %783, i8* %787
  %788 = load i64, i64* %RBP
  %789 = sub i64 %788, 28
  %790 = load i64, i64* %PC
  %791 = add i64 %790, 4
  store i64 %791, i64* %PC
  %792 = inttoptr i64 %789 to i8*
  %793 = load i8, i8* %792
  %794 = sext i8 %793 to i64
  %795 = and i64 %794, 4294967295
  store i64 %795, i64* %RDI, align 8, !tbaa !2428
  %796 = load i64, i64* %RDI
  %797 = load i64, i64* %PC
  %798 = add i64 %797, 3
  store i64 %798, i64* %PC
  %799 = and i64 15, %796
  %800 = trunc i64 %799 to i32
  store i64 %799, i64* %RDI, align 8, !tbaa !2428
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %801, align 1, !tbaa !2432
  %802 = and i32 %800, 255
  %803 = call i32 @llvm.ctpop.i32(i32 %802) #16
  %804 = trunc i32 %803 to i8
  %805 = and i8 %804, 1
  %806 = xor i8 %805, 1
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %806, i8* %807, align 1, !tbaa !2446
  %808 = icmp eq i32 %800, 0
  %809 = zext i1 %808 to i8
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %809, i8* %810, align 1, !tbaa !2448
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %811, align 1, !tbaa !2449
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %812, align 1, !tbaa !2450
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %813, align 1, !tbaa !2447
  %814 = load i64, i64* %RDI
  %815 = load i64, i64* %PC
  %816 = add i64 %815, 3
  store i64 %816, i64* %PC
  %817 = trunc i64 %814 to i32
  %818 = add i32 48, %817
  %819 = zext i32 %818 to i64
  store i64 %819, i64* %RDI, align 8, !tbaa !2428
  %820 = icmp ult i32 %818, %817
  %821 = icmp ult i32 %818, 48
  %822 = or i1 %820, %821
  %823 = zext i1 %822 to i8
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %823, i8* %824, align 1, !tbaa !2432
  %825 = and i32 %818, 255
  %826 = call i32 @llvm.ctpop.i32(i32 %825) #16
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  %829 = xor i8 %828, 1
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %829, i8* %830, align 1, !tbaa !2446
  %831 = xor i64 48, %814
  %832 = trunc i64 %831 to i32
  %833 = xor i32 %832, %818
  %834 = lshr i32 %833, 4
  %835 = trunc i32 %834 to i8
  %836 = and i8 %835, 1
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %836, i8* %837, align 1, !tbaa !2447
  %838 = icmp eq i32 %818, 0
  %839 = zext i1 %838 to i8
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %839, i8* %840, align 1, !tbaa !2448
  %841 = lshr i32 %818, 31
  %842 = trunc i32 %841 to i8
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %842, i8* %843, align 1, !tbaa !2449
  %844 = lshr i32 %817, 31
  %845 = xor i32 %841, %844
  %846 = add nuw nsw i32 %845, %841
  %847 = icmp eq i32 %846, 2
  %848 = zext i1 %847 to i8
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %848, i8* %849, align 1, !tbaa !2450
  %850 = load i8, i8* %DIL
  %851 = zext i8 %850 to i64
  %852 = load i64, i64* %PC
  %853 = add i64 %852, 3
  store i64 %853, i64* %PC
  store i8 %850, i8* %AL, align 1, !tbaa !2451
  %854 = load i64, i64* %RBP
  %855 = sub i64 %854, 24
  %856 = load i64, i64* %PC
  %857 = add i64 %856, 4
  store i64 %857, i64* %PC
  %858 = inttoptr i64 %855 to i64*
  %859 = load i64, i64* %858
  store i64 %859, i64* %RCX, align 8, !tbaa !2428
  %860 = load i64, i64* %RBP
  %861 = sub i64 %860, 12
  %862 = load i64, i64* %PC
  %863 = add i64 %862, 4
  store i64 %863, i64* %PC
  %864 = inttoptr i64 %861 to i32*
  %865 = load i32, i32* %864
  %866 = sext i32 %865 to i64
  store i64 %866, i64* %RSI, align 8, !tbaa !2428
  %867 = load i64, i64* %RCX
  %868 = load i64, i64* %RSI
  %869 = add i64 %867, 8
  %870 = add i64 %869, %868
  %871 = load i8, i8* %AL
  %872 = zext i8 %871 to i64
  %873 = load i64, i64* %PC
  %874 = add i64 %873, 4
  store i64 %874, i64* %PC
  %875 = inttoptr i64 %870 to i8*
  store i8 %871, i8* %875
  %876 = load i64, i64* %RBP
  %877 = sub i64 %876, 28
  %878 = load i64, i64* %PC
  %879 = add i64 %878, 4
  store i64 %879, i64* %PC
  %880 = inttoptr i64 %877 to i8*
  %881 = load i8, i8* %880
  %882 = sext i8 %881 to i64
  %883 = and i64 %882, 4294967295
  store i64 %883, i64* %RDI, align 8, !tbaa !2428
  %884 = load i64, i64* %RDI
  %885 = load i64, i64* %PC
  %886 = add i64 %885, 3
  store i64 %886, i64* %PC
  %887 = and i64 15, %884
  %888 = trunc i64 %887 to i32
  store i64 %887, i64* %RDI, align 8, !tbaa !2428
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %889, align 1, !tbaa !2432
  %890 = and i32 %888, 255
  %891 = call i32 @llvm.ctpop.i32(i32 %890) #16
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  %894 = xor i8 %893, 1
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %894, i8* %895, align 1, !tbaa !2446
  %896 = icmp eq i32 %888, 0
  %897 = zext i1 %896 to i8
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %897, i8* %898, align 1, !tbaa !2448
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %899, align 1, !tbaa !2449
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %900, align 1, !tbaa !2450
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %901, align 1, !tbaa !2447
  %902 = load i64, i64* %RDI
  %903 = load i64, i64* %PC
  %904 = add i64 %903, 3
  store i64 %904, i64* %PC
  %905 = trunc i64 %902 to i32
  %906 = add i32 48, %905
  %907 = zext i32 %906 to i64
  store i64 %907, i64* %RDI, align 8, !tbaa !2428
  %908 = icmp ult i32 %906, %905
  %909 = icmp ult i32 %906, 48
  %910 = or i1 %908, %909
  %911 = zext i1 %910 to i8
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %911, i8* %912, align 1, !tbaa !2432
  %913 = and i32 %906, 255
  %914 = call i32 @llvm.ctpop.i32(i32 %913) #16
  %915 = trunc i32 %914 to i8
  %916 = and i8 %915, 1
  %917 = xor i8 %916, 1
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %917, i8* %918, align 1, !tbaa !2446
  %919 = xor i64 48, %902
  %920 = trunc i64 %919 to i32
  %921 = xor i32 %920, %906
  %922 = lshr i32 %921, 4
  %923 = trunc i32 %922 to i8
  %924 = and i8 %923, 1
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %924, i8* %925, align 1, !tbaa !2447
  %926 = icmp eq i32 %906, 0
  %927 = zext i1 %926 to i8
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %927, i8* %928, align 1, !tbaa !2448
  %929 = lshr i32 %906, 31
  %930 = trunc i32 %929 to i8
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %930, i8* %931, align 1, !tbaa !2449
  %932 = lshr i32 %905, 31
  %933 = xor i32 %929, %932
  %934 = add nuw nsw i32 %933, %929
  %935 = icmp eq i32 %934, 2
  %936 = zext i1 %935 to i8
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %936, i8* %937, align 1, !tbaa !2450
  %938 = load i8, i8* %DIL
  %939 = zext i8 %938 to i64
  %940 = load i64, i64* %PC
  %941 = add i64 %940, 3
  store i64 %941, i64* %PC
  store i8 %938, i8* %AL, align 1, !tbaa !2451
  %942 = load i64, i64* %RBP
  %943 = sub i64 %942, 24
  %944 = load i64, i64* %PC
  %945 = add i64 %944, 4
  store i64 %945, i64* %PC
  %946 = inttoptr i64 %943 to i64*
  %947 = load i64, i64* %946
  store i64 %947, i64* %RCX, align 8, !tbaa !2428
  %948 = load i64, i64* %RBP
  %949 = sub i64 %948, 12
  %950 = load i64, i64* %PC
  %951 = add i64 %950, 4
  store i64 %951, i64* %PC
  %952 = inttoptr i64 %949 to i32*
  %953 = load i32, i32* %952
  %954 = sext i32 %953 to i64
  store i64 %954, i64* %RSI, align 8, !tbaa !2428
  %955 = load i64, i64* %RCX
  %956 = load i64, i64* %RSI
  %957 = add i64 %955, 9
  %958 = add i64 %957, %956
  %959 = load i8, i8* %AL
  %960 = zext i8 %959 to i64
  %961 = load i64, i64* %PC
  %962 = add i64 %961, 4
  store i64 %962, i64* %PC
  %963 = inttoptr i64 %958 to i8*
  store i8 %959, i8* %963
  %964 = load i64, i64* %RBP
  %965 = sub i64 %964, 27
  %966 = load i64, i64* %PC
  %967 = add i64 %966, 4
  store i64 %967, i64* %PC
  %968 = inttoptr i64 %965 to i8*
  %969 = load i8, i8* %968
  %970 = sext i8 %969 to i64
  %971 = and i64 %970, 4294967295
  store i64 %971, i64* %RDI, align 8, !tbaa !2428
  %972 = load i64, i64* %RDI
  %973 = load i64, i64* %PC
  %974 = add i64 %973, 3
  store i64 %974, i64* %PC
  %975 = and i64 15, %972
  %976 = trunc i64 %975 to i32
  store i64 %975, i64* %RDI, align 8, !tbaa !2428
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %977, align 1, !tbaa !2432
  %978 = and i32 %976, 255
  %979 = call i32 @llvm.ctpop.i32(i32 %978) #16
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = xor i8 %981, 1
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %982, i8* %983, align 1, !tbaa !2446
  %984 = icmp eq i32 %976, 0
  %985 = zext i1 %984 to i8
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %985, i8* %986, align 1, !tbaa !2448
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %987, align 1, !tbaa !2449
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %988, align 1, !tbaa !2450
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %989, align 1, !tbaa !2447
  %990 = load i64, i64* %RDI
  %991 = load i64, i64* %PC
  %992 = add i64 %991, 3
  store i64 %992, i64* %PC
  %993 = trunc i64 %990 to i32
  %994 = add i32 48, %993
  %995 = zext i32 %994 to i64
  store i64 %995, i64* %RDI, align 8, !tbaa !2428
  %996 = icmp ult i32 %994, %993
  %997 = icmp ult i32 %994, 48
  %998 = or i1 %996, %997
  %999 = zext i1 %998 to i8
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %999, i8* %1000, align 1, !tbaa !2432
  %1001 = and i32 %994, 255
  %1002 = call i32 @llvm.ctpop.i32(i32 %1001) #16
  %1003 = trunc i32 %1002 to i8
  %1004 = and i8 %1003, 1
  %1005 = xor i8 %1004, 1
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1005, i8* %1006, align 1, !tbaa !2446
  %1007 = xor i64 48, %990
  %1008 = trunc i64 %1007 to i32
  %1009 = xor i32 %1008, %994
  %1010 = lshr i32 %1009, 4
  %1011 = trunc i32 %1010 to i8
  %1012 = and i8 %1011, 1
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1012, i8* %1013, align 1, !tbaa !2447
  %1014 = icmp eq i32 %994, 0
  %1015 = zext i1 %1014 to i8
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1015, i8* %1016, align 1, !tbaa !2448
  %1017 = lshr i32 %994, 31
  %1018 = trunc i32 %1017 to i8
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1018, i8* %1019, align 1, !tbaa !2449
  %1020 = lshr i32 %993, 31
  %1021 = xor i32 %1017, %1020
  %1022 = add nuw nsw i32 %1021, %1017
  %1023 = icmp eq i32 %1022, 2
  %1024 = zext i1 %1023 to i8
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1024, i8* %1025, align 1, !tbaa !2450
  %1026 = load i8, i8* %DIL
  %1027 = zext i8 %1026 to i64
  %1028 = load i64, i64* %PC
  %1029 = add i64 %1028, 3
  store i64 %1029, i64* %PC
  store i8 %1026, i8* %AL, align 1, !tbaa !2451
  %1030 = load i64, i64* %RBP
  %1031 = sub i64 %1030, 24
  %1032 = load i64, i64* %PC
  %1033 = add i64 %1032, 4
  store i64 %1033, i64* %PC
  %1034 = inttoptr i64 %1031 to i64*
  %1035 = load i64, i64* %1034
  store i64 %1035, i64* %RCX, align 8, !tbaa !2428
  %1036 = load i64, i64* %RBP
  %1037 = sub i64 %1036, 12
  %1038 = load i64, i64* %PC
  %1039 = add i64 %1038, 4
  store i64 %1039, i64* %PC
  %1040 = inttoptr i64 %1037 to i32*
  %1041 = load i32, i32* %1040
  %1042 = sext i32 %1041 to i64
  store i64 %1042, i64* %RSI, align 8, !tbaa !2428
  %1043 = load i64, i64* %RCX
  %1044 = load i64, i64* %RSI
  %1045 = add i64 %1043, 10
  %1046 = add i64 %1045, %1044
  %1047 = load i8, i8* %AL
  %1048 = zext i8 %1047 to i64
  %1049 = load i64, i64* %PC
  %1050 = add i64 %1049, 4
  store i64 %1050, i64* %PC
  %1051 = inttoptr i64 %1046 to i8*
  store i8 %1047, i8* %1051
  %1052 = load i64, i64* %RBP
  %1053 = sub i64 %1052, 27
  %1054 = load i64, i64* %PC
  %1055 = add i64 %1054, 4
  store i64 %1055, i64* %PC
  %1056 = inttoptr i64 %1053 to i8*
  %1057 = load i8, i8* %1056
  %1058 = sext i8 %1057 to i64
  %1059 = and i64 %1058, 4294967295
  store i64 %1059, i64* %RDI, align 8, !tbaa !2428
  %1060 = load i64, i64* %RDI
  %1061 = load i64, i64* %PC
  %1062 = add i64 %1061, 3
  store i64 %1062, i64* %PC
  %1063 = and i64 15, %1060
  %1064 = trunc i64 %1063 to i32
  store i64 %1063, i64* %RDI, align 8, !tbaa !2428
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1065, align 1, !tbaa !2432
  %1066 = and i32 %1064, 255
  %1067 = call i32 @llvm.ctpop.i32(i32 %1066) #16
  %1068 = trunc i32 %1067 to i8
  %1069 = and i8 %1068, 1
  %1070 = xor i8 %1069, 1
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1070, i8* %1071, align 1, !tbaa !2446
  %1072 = icmp eq i32 %1064, 0
  %1073 = zext i1 %1072 to i8
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1073, i8* %1074, align 1, !tbaa !2448
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1075, align 1, !tbaa !2449
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1076, align 1, !tbaa !2450
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1077, align 1, !tbaa !2447
  %1078 = load i64, i64* %RDI
  %1079 = load i64, i64* %PC
  %1080 = add i64 %1079, 3
  store i64 %1080, i64* %PC
  %1081 = trunc i64 %1078 to i32
  %1082 = add i32 48, %1081
  %1083 = zext i32 %1082 to i64
  store i64 %1083, i64* %RDI, align 8, !tbaa !2428
  %1084 = icmp ult i32 %1082, %1081
  %1085 = icmp ult i32 %1082, 48
  %1086 = or i1 %1084, %1085
  %1087 = zext i1 %1086 to i8
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1087, i8* %1088, align 1, !tbaa !2432
  %1089 = and i32 %1082, 255
  %1090 = call i32 @llvm.ctpop.i32(i32 %1089) #16
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  %1093 = xor i8 %1092, 1
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1093, i8* %1094, align 1, !tbaa !2446
  %1095 = xor i64 48, %1078
  %1096 = trunc i64 %1095 to i32
  %1097 = xor i32 %1096, %1082
  %1098 = lshr i32 %1097, 4
  %1099 = trunc i32 %1098 to i8
  %1100 = and i8 %1099, 1
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1100, i8* %1101, align 1, !tbaa !2447
  %1102 = icmp eq i32 %1082, 0
  %1103 = zext i1 %1102 to i8
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1103, i8* %1104, align 1, !tbaa !2448
  %1105 = lshr i32 %1082, 31
  %1106 = trunc i32 %1105 to i8
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1106, i8* %1107, align 1, !tbaa !2449
  %1108 = lshr i32 %1081, 31
  %1109 = xor i32 %1105, %1108
  %1110 = add nuw nsw i32 %1109, %1105
  %1111 = icmp eq i32 %1110, 2
  %1112 = zext i1 %1111 to i8
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1112, i8* %1113, align 1, !tbaa !2450
  %1114 = load i8, i8* %DIL
  %1115 = zext i8 %1114 to i64
  %1116 = load i64, i64* %PC
  %1117 = add i64 %1116, 3
  store i64 %1117, i64* %PC
  store i8 %1114, i8* %AL, align 1, !tbaa !2451
  %1118 = load i64, i64* %RBP
  %1119 = sub i64 %1118, 24
  %1120 = load i64, i64* %PC
  %1121 = add i64 %1120, 4
  store i64 %1121, i64* %PC
  %1122 = inttoptr i64 %1119 to i64*
  %1123 = load i64, i64* %1122
  store i64 %1123, i64* %RCX, align 8, !tbaa !2428
  %1124 = load i64, i64* %RBP
  %1125 = sub i64 %1124, 12
  %1126 = load i64, i64* %PC
  %1127 = add i64 %1126, 4
  store i64 %1127, i64* %PC
  %1128 = inttoptr i64 %1125 to i32*
  %1129 = load i32, i32* %1128
  %1130 = sext i32 %1129 to i64
  store i64 %1130, i64* %RSI, align 8, !tbaa !2428
  %1131 = load i64, i64* %RCX
  %1132 = load i64, i64* %RSI
  %1133 = add i64 %1131, 11
  %1134 = add i64 %1133, %1132
  %1135 = load i8, i8* %AL
  %1136 = zext i8 %1135 to i64
  %1137 = load i64, i64* %PC
  %1138 = add i64 %1137, 4
  store i64 %1138, i64* %PC
  %1139 = inttoptr i64 %1134 to i8*
  store i8 %1135, i8* %1139
  %1140 = load i64, i64* %RBP
  %1141 = sub i64 %1140, 26
  %1142 = load i64, i64* %PC
  %1143 = add i64 %1142, 4
  store i64 %1143, i64* %PC
  %1144 = inttoptr i64 %1141 to i8*
  %1145 = load i8, i8* %1144
  %1146 = sext i8 %1145 to i64
  %1147 = and i64 %1146, 4294967295
  store i64 %1147, i64* %RDI, align 8, !tbaa !2428
  %1148 = load i64, i64* %RDI
  %1149 = load i64, i64* %PC
  %1150 = add i64 %1149, 3
  store i64 %1150, i64* %PC
  %1151 = and i64 15, %1148
  %1152 = trunc i64 %1151 to i32
  store i64 %1151, i64* %RDI, align 8, !tbaa !2428
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1153, align 1, !tbaa !2432
  %1154 = and i32 %1152, 255
  %1155 = call i32 @llvm.ctpop.i32(i32 %1154) #16
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  %1158 = xor i8 %1157, 1
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1158, i8* %1159, align 1, !tbaa !2446
  %1160 = icmp eq i32 %1152, 0
  %1161 = zext i1 %1160 to i8
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1161, i8* %1162, align 1, !tbaa !2448
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1163, align 1, !tbaa !2449
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1164, align 1, !tbaa !2450
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1165, align 1, !tbaa !2447
  %1166 = load i64, i64* %RDI
  %1167 = load i64, i64* %PC
  %1168 = add i64 %1167, 3
  store i64 %1168, i64* %PC
  %1169 = trunc i64 %1166 to i32
  %1170 = add i32 48, %1169
  %1171 = zext i32 %1170 to i64
  store i64 %1171, i64* %RDI, align 8, !tbaa !2428
  %1172 = icmp ult i32 %1170, %1169
  %1173 = icmp ult i32 %1170, 48
  %1174 = or i1 %1172, %1173
  %1175 = zext i1 %1174 to i8
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1175, i8* %1176, align 1, !tbaa !2432
  %1177 = and i32 %1170, 255
  %1178 = call i32 @llvm.ctpop.i32(i32 %1177) #16
  %1179 = trunc i32 %1178 to i8
  %1180 = and i8 %1179, 1
  %1181 = xor i8 %1180, 1
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1181, i8* %1182, align 1, !tbaa !2446
  %1183 = xor i64 48, %1166
  %1184 = trunc i64 %1183 to i32
  %1185 = xor i32 %1184, %1170
  %1186 = lshr i32 %1185, 4
  %1187 = trunc i32 %1186 to i8
  %1188 = and i8 %1187, 1
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1188, i8* %1189, align 1, !tbaa !2447
  %1190 = icmp eq i32 %1170, 0
  %1191 = zext i1 %1190 to i8
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1191, i8* %1192, align 1, !tbaa !2448
  %1193 = lshr i32 %1170, 31
  %1194 = trunc i32 %1193 to i8
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1194, i8* %1195, align 1, !tbaa !2449
  %1196 = lshr i32 %1169, 31
  %1197 = xor i32 %1193, %1196
  %1198 = add nuw nsw i32 %1197, %1193
  %1199 = icmp eq i32 %1198, 2
  %1200 = zext i1 %1199 to i8
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1200, i8* %1201, align 1, !tbaa !2450
  %1202 = load i8, i8* %DIL
  %1203 = zext i8 %1202 to i64
  %1204 = load i64, i64* %PC
  %1205 = add i64 %1204, 3
  store i64 %1205, i64* %PC
  store i8 %1202, i8* %AL, align 1, !tbaa !2451
  %1206 = load i64, i64* %RBP
  %1207 = sub i64 %1206, 24
  %1208 = load i64, i64* %PC
  %1209 = add i64 %1208, 4
  store i64 %1209, i64* %PC
  %1210 = inttoptr i64 %1207 to i64*
  %1211 = load i64, i64* %1210
  store i64 %1211, i64* %RCX, align 8, !tbaa !2428
  %1212 = load i64, i64* %RBP
  %1213 = sub i64 %1212, 12
  %1214 = load i64, i64* %PC
  %1215 = add i64 %1214, 4
  store i64 %1215, i64* %PC
  %1216 = inttoptr i64 %1213 to i32*
  %1217 = load i32, i32* %1216
  %1218 = sext i32 %1217 to i64
  store i64 %1218, i64* %RSI, align 8, !tbaa !2428
  %1219 = load i64, i64* %RCX
  %1220 = load i64, i64* %RSI
  %1221 = add i64 %1219, 12
  %1222 = add i64 %1221, %1220
  %1223 = load i8, i8* %AL
  %1224 = zext i8 %1223 to i64
  %1225 = load i64, i64* %PC
  %1226 = add i64 %1225, 4
  store i64 %1226, i64* %PC
  %1227 = inttoptr i64 %1222 to i8*
  store i8 %1223, i8* %1227
  %1228 = load i64, i64* %RBP
  %1229 = sub i64 %1228, 26
  %1230 = load i64, i64* %PC
  %1231 = add i64 %1230, 4
  store i64 %1231, i64* %PC
  %1232 = inttoptr i64 %1229 to i8*
  %1233 = load i8, i8* %1232
  %1234 = sext i8 %1233 to i64
  %1235 = and i64 %1234, 4294967295
  store i64 %1235, i64* %RDI, align 8, !tbaa !2428
  %1236 = load i64, i64* %RDI
  %1237 = load i64, i64* %PC
  %1238 = add i64 %1237, 3
  store i64 %1238, i64* %PC
  %1239 = and i64 15, %1236
  %1240 = trunc i64 %1239 to i32
  store i64 %1239, i64* %RDI, align 8, !tbaa !2428
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1241, align 1, !tbaa !2432
  %1242 = and i32 %1240, 255
  %1243 = call i32 @llvm.ctpop.i32(i32 %1242) #16
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  %1246 = xor i8 %1245, 1
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1246, i8* %1247, align 1, !tbaa !2446
  %1248 = icmp eq i32 %1240, 0
  %1249 = zext i1 %1248 to i8
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1249, i8* %1250, align 1, !tbaa !2448
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1251, align 1, !tbaa !2449
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1252, align 1, !tbaa !2450
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1253, align 1, !tbaa !2447
  %1254 = load i64, i64* %RDI
  %1255 = load i64, i64* %PC
  %1256 = add i64 %1255, 3
  store i64 %1256, i64* %PC
  %1257 = trunc i64 %1254 to i32
  %1258 = add i32 48, %1257
  %1259 = zext i32 %1258 to i64
  store i64 %1259, i64* %RDI, align 8, !tbaa !2428
  %1260 = icmp ult i32 %1258, %1257
  %1261 = icmp ult i32 %1258, 48
  %1262 = or i1 %1260, %1261
  %1263 = zext i1 %1262 to i8
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1263, i8* %1264, align 1, !tbaa !2432
  %1265 = and i32 %1258, 255
  %1266 = call i32 @llvm.ctpop.i32(i32 %1265) #16
  %1267 = trunc i32 %1266 to i8
  %1268 = and i8 %1267, 1
  %1269 = xor i8 %1268, 1
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1269, i8* %1270, align 1, !tbaa !2446
  %1271 = xor i64 48, %1254
  %1272 = trunc i64 %1271 to i32
  %1273 = xor i32 %1272, %1258
  %1274 = lshr i32 %1273, 4
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1276, i8* %1277, align 1, !tbaa !2447
  %1278 = icmp eq i32 %1258, 0
  %1279 = zext i1 %1278 to i8
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1279, i8* %1280, align 1, !tbaa !2448
  %1281 = lshr i32 %1258, 31
  %1282 = trunc i32 %1281 to i8
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1282, i8* %1283, align 1, !tbaa !2449
  %1284 = lshr i32 %1257, 31
  %1285 = xor i32 %1281, %1284
  %1286 = add nuw nsw i32 %1285, %1281
  %1287 = icmp eq i32 %1286, 2
  %1288 = zext i1 %1287 to i8
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1288, i8* %1289, align 1, !tbaa !2450
  %1290 = load i8, i8* %DIL
  %1291 = zext i8 %1290 to i64
  %1292 = load i64, i64* %PC
  %1293 = add i64 %1292, 3
  store i64 %1293, i64* %PC
  store i8 %1290, i8* %AL, align 1, !tbaa !2451
  %1294 = load i64, i64* %RBP
  %1295 = sub i64 %1294, 24
  %1296 = load i64, i64* %PC
  %1297 = add i64 %1296, 4
  store i64 %1297, i64* %PC
  %1298 = inttoptr i64 %1295 to i64*
  %1299 = load i64, i64* %1298
  store i64 %1299, i64* %RCX, align 8, !tbaa !2428
  %1300 = load i64, i64* %RBP
  %1301 = sub i64 %1300, 12
  %1302 = load i64, i64* %PC
  %1303 = add i64 %1302, 4
  store i64 %1303, i64* %PC
  %1304 = inttoptr i64 %1301 to i32*
  %1305 = load i32, i32* %1304
  %1306 = sext i32 %1305 to i64
  store i64 %1306, i64* %RSI, align 8, !tbaa !2428
  %1307 = load i64, i64* %RCX
  %1308 = load i64, i64* %RSI
  %1309 = add i64 %1307, 13
  %1310 = add i64 %1309, %1308
  %1311 = load i8, i8* %AL
  %1312 = zext i8 %1311 to i64
  %1313 = load i64, i64* %PC
  %1314 = add i64 %1313, 4
  store i64 %1314, i64* %PC
  %1315 = inttoptr i64 %1310 to i8*
  store i8 %1311, i8* %1315
  %1316 = load i64, i64* %RBP
  %1317 = sub i64 %1316, 25
  %1318 = load i64, i64* %PC
  %1319 = add i64 %1318, 4
  store i64 %1319, i64* %PC
  %1320 = inttoptr i64 %1317 to i8*
  %1321 = load i8, i8* %1320
  %1322 = sext i8 %1321 to i64
  %1323 = and i64 %1322, 4294967295
  store i64 %1323, i64* %RDI, align 8, !tbaa !2428
  %1324 = load i64, i64* %RDI
  %1325 = load i64, i64* %PC
  %1326 = add i64 %1325, 3
  store i64 %1326, i64* %PC
  %1327 = and i64 15, %1324
  %1328 = trunc i64 %1327 to i32
  store i64 %1327, i64* %RDI, align 8, !tbaa !2428
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1329, align 1, !tbaa !2432
  %1330 = and i32 %1328, 255
  %1331 = call i32 @llvm.ctpop.i32(i32 %1330) #16
  %1332 = trunc i32 %1331 to i8
  %1333 = and i8 %1332, 1
  %1334 = xor i8 %1333, 1
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1334, i8* %1335, align 1, !tbaa !2446
  %1336 = icmp eq i32 %1328, 0
  %1337 = zext i1 %1336 to i8
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1337, i8* %1338, align 1, !tbaa !2448
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1339, align 1, !tbaa !2449
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1340, align 1, !tbaa !2450
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1341, align 1, !tbaa !2447
  %1342 = load i64, i64* %RDI
  %1343 = load i64, i64* %PC
  %1344 = add i64 %1343, 3
  store i64 %1344, i64* %PC
  %1345 = trunc i64 %1342 to i32
  %1346 = add i32 48, %1345
  %1347 = zext i32 %1346 to i64
  store i64 %1347, i64* %RDI, align 8, !tbaa !2428
  %1348 = icmp ult i32 %1346, %1345
  %1349 = icmp ult i32 %1346, 48
  %1350 = or i1 %1348, %1349
  %1351 = zext i1 %1350 to i8
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1351, i8* %1352, align 1, !tbaa !2432
  %1353 = and i32 %1346, 255
  %1354 = call i32 @llvm.ctpop.i32(i32 %1353) #16
  %1355 = trunc i32 %1354 to i8
  %1356 = and i8 %1355, 1
  %1357 = xor i8 %1356, 1
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1357, i8* %1358, align 1, !tbaa !2446
  %1359 = xor i64 48, %1342
  %1360 = trunc i64 %1359 to i32
  %1361 = xor i32 %1360, %1346
  %1362 = lshr i32 %1361, 4
  %1363 = trunc i32 %1362 to i8
  %1364 = and i8 %1363, 1
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1364, i8* %1365, align 1, !tbaa !2447
  %1366 = icmp eq i32 %1346, 0
  %1367 = zext i1 %1366 to i8
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1367, i8* %1368, align 1, !tbaa !2448
  %1369 = lshr i32 %1346, 31
  %1370 = trunc i32 %1369 to i8
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1370, i8* %1371, align 1, !tbaa !2449
  %1372 = lshr i32 %1345, 31
  %1373 = xor i32 %1369, %1372
  %1374 = add nuw nsw i32 %1373, %1369
  %1375 = icmp eq i32 %1374, 2
  %1376 = zext i1 %1375 to i8
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1376, i8* %1377, align 1, !tbaa !2450
  %1378 = load i8, i8* %DIL
  %1379 = zext i8 %1378 to i64
  %1380 = load i64, i64* %PC
  %1381 = add i64 %1380, 3
  store i64 %1381, i64* %PC
  store i8 %1378, i8* %AL, align 1, !tbaa !2451
  %1382 = load i64, i64* %RBP
  %1383 = sub i64 %1382, 24
  %1384 = load i64, i64* %PC
  %1385 = add i64 %1384, 4
  store i64 %1385, i64* %PC
  %1386 = inttoptr i64 %1383 to i64*
  %1387 = load i64, i64* %1386
  store i64 %1387, i64* %RCX, align 8, !tbaa !2428
  %1388 = load i64, i64* %RBP
  %1389 = sub i64 %1388, 12
  %1390 = load i64, i64* %PC
  %1391 = add i64 %1390, 4
  store i64 %1391, i64* %PC
  %1392 = inttoptr i64 %1389 to i32*
  %1393 = load i32, i32* %1392
  %1394 = sext i32 %1393 to i64
  store i64 %1394, i64* %RSI, align 8, !tbaa !2428
  %1395 = load i64, i64* %RCX
  %1396 = load i64, i64* %RSI
  %1397 = add i64 %1395, 14
  %1398 = add i64 %1397, %1396
  %1399 = load i8, i8* %AL
  %1400 = zext i8 %1399 to i64
  %1401 = load i64, i64* %PC
  %1402 = add i64 %1401, 4
  store i64 %1402, i64* %PC
  %1403 = inttoptr i64 %1398 to i8*
  store i8 %1399, i8* %1403
  %1404 = load i64, i64* %RBP
  %1405 = sub i64 %1404, 25
  %1406 = load i64, i64* %PC
  %1407 = add i64 %1406, 4
  store i64 %1407, i64* %PC
  %1408 = inttoptr i64 %1405 to i8*
  %1409 = load i8, i8* %1408
  %1410 = sext i8 %1409 to i64
  %1411 = and i64 %1410, 4294967295
  store i64 %1411, i64* %RDI, align 8, !tbaa !2428
  %1412 = load i64, i64* %RDI
  %1413 = load i64, i64* %PC
  %1414 = add i64 %1413, 3
  store i64 %1414, i64* %PC
  %1415 = and i64 15, %1412
  %1416 = trunc i64 %1415 to i32
  store i64 %1415, i64* %RDI, align 8, !tbaa !2428
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1417, align 1, !tbaa !2432
  %1418 = and i32 %1416, 255
  %1419 = call i32 @llvm.ctpop.i32(i32 %1418) #16
  %1420 = trunc i32 %1419 to i8
  %1421 = and i8 %1420, 1
  %1422 = xor i8 %1421, 1
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1422, i8* %1423, align 1, !tbaa !2446
  %1424 = icmp eq i32 %1416, 0
  %1425 = zext i1 %1424 to i8
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1425, i8* %1426, align 1, !tbaa !2448
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1427, align 1, !tbaa !2449
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1428, align 1, !tbaa !2450
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1429, align 1, !tbaa !2447
  %1430 = load i64, i64* %RDI
  %1431 = load i64, i64* %PC
  %1432 = add i64 %1431, 3
  store i64 %1432, i64* %PC
  %1433 = trunc i64 %1430 to i32
  %1434 = add i32 48, %1433
  %1435 = zext i32 %1434 to i64
  store i64 %1435, i64* %RDI, align 8, !tbaa !2428
  %1436 = icmp ult i32 %1434, %1433
  %1437 = icmp ult i32 %1434, 48
  %1438 = or i1 %1436, %1437
  %1439 = zext i1 %1438 to i8
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1439, i8* %1440, align 1, !tbaa !2432
  %1441 = and i32 %1434, 255
  %1442 = call i32 @llvm.ctpop.i32(i32 %1441) #16
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  %1445 = xor i8 %1444, 1
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1445, i8* %1446, align 1, !tbaa !2446
  %1447 = xor i64 48, %1430
  %1448 = trunc i64 %1447 to i32
  %1449 = xor i32 %1448, %1434
  %1450 = lshr i32 %1449, 4
  %1451 = trunc i32 %1450 to i8
  %1452 = and i8 %1451, 1
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1452, i8* %1453, align 1, !tbaa !2447
  %1454 = icmp eq i32 %1434, 0
  %1455 = zext i1 %1454 to i8
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1455, i8* %1456, align 1, !tbaa !2448
  %1457 = lshr i32 %1434, 31
  %1458 = trunc i32 %1457 to i8
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1458, i8* %1459, align 1, !tbaa !2449
  %1460 = lshr i32 %1433, 31
  %1461 = xor i32 %1457, %1460
  %1462 = add nuw nsw i32 %1461, %1457
  %1463 = icmp eq i32 %1462, 2
  %1464 = zext i1 %1463 to i8
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1464, i8* %1465, align 1, !tbaa !2450
  %1466 = load i8, i8* %DIL
  %1467 = zext i8 %1466 to i64
  %1468 = load i64, i64* %PC
  %1469 = add i64 %1468, 3
  store i64 %1469, i64* %PC
  store i8 %1466, i8* %AL, align 1, !tbaa !2451
  %1470 = load i64, i64* %RBP
  %1471 = sub i64 %1470, 24
  %1472 = load i64, i64* %PC
  %1473 = add i64 %1472, 4
  store i64 %1473, i64* %PC
  %1474 = inttoptr i64 %1471 to i64*
  %1475 = load i64, i64* %1474
  store i64 %1475, i64* %RCX, align 8, !tbaa !2428
  %1476 = load i64, i64* %RBP
  %1477 = sub i64 %1476, 12
  %1478 = load i64, i64* %PC
  %1479 = add i64 %1478, 4
  store i64 %1479, i64* %PC
  %1480 = inttoptr i64 %1477 to i32*
  %1481 = load i32, i32* %1480
  %1482 = sext i32 %1481 to i64
  store i64 %1482, i64* %RSI, align 8, !tbaa !2428
  %1483 = load i64, i64* %RCX
  %1484 = load i64, i64* %RSI
  %1485 = add i64 %1483, 15
  %1486 = add i64 %1485, %1484
  %1487 = load i8, i8* %AL
  %1488 = zext i8 %1487 to i64
  %1489 = load i64, i64* %PC
  %1490 = add i64 %1489, 4
  store i64 %1490, i64* %PC
  %1491 = inttoptr i64 %1486 to i8*
  store i8 %1487, i8* %1491
  %1492 = load i64, i64* %PC
  %1493 = add i64 %1492, 1
  store i64 %1493, i64* %PC
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1495 = load i64, i64* %1494, align 8, !tbaa !2428
  %1496 = add i64 %1495, 8
  %1497 = inttoptr i64 %1495 to i64*
  %1498 = load i64, i64* %1497
  store i64 %1498, i64* %RBP, align 8, !tbaa !2428
  store i64 %1496, i64* %1494, align 8, !tbaa !2428
  %1499 = load i64, i64* %PC
  %1500 = add i64 %1499, 1
  store i64 %1500, i64* %PC
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1503 = load i64, i64* %1502, align 8, !tbaa !2428
  %1504 = inttoptr i64 %1503 to i64*
  %1505 = load i64, i64* %1504
  store i64 %1505, i64* %1501, align 8, !tbaa !2428
  %1506 = add i64 %1503, 8
  store i64 %1506, i64* %1502, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400640__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400640:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EBP = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RDX = bitcast %union.anon* %17 to i64*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 9
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RSI = bitcast %union.anon* %20 to i64*
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.GPR, %struct.GPR* %21, i32 0, i32 11
  %23 = getelementptr inbounds %struct.Reg, %struct.Reg* %22, i32 0, i32 0
  %RDI = bitcast %union.anon* %23 to i64*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.GPR, %struct.GPR* %24, i32 0, i32 13
  %26 = getelementptr inbounds %struct.Reg, %struct.Reg* %25, i32 0, i32 0
  %RSP = bitcast %union.anon* %26 to i64*
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 15
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %RBP = bitcast %union.anon* %29 to i64*
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %31 = getelementptr inbounds %struct.GPR, %struct.GPR* %30, i32 0, i32 17
  %32 = getelementptr inbounds %struct.Reg, %struct.Reg* %31, i32 0, i32 0
  %R8 = bitcast %union.anon* %32 to i64*
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %34 = getelementptr inbounds %struct.GPR, %struct.GPR* %33, i32 0, i32 19
  %35 = getelementptr inbounds %struct.Reg, %struct.Reg* %34, i32 0, i32 0
  %R9 = bitcast %union.anon* %35 to i64*
  %36 = load i64, i64* %RBP
  %37 = load i32, i32* %EBP
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* %PC
  %40 = add i64 %39, 2
  store i64 %40, i64* %PC
  %41 = xor i64 %38, %36
  %42 = trunc i64 %41 to i32
  %43 = and i64 %41, 4294967295
  store i64 %43, i64* %RBP, align 8, !tbaa !2428
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %44, align 1, !tbaa !2432
  %45 = and i32 %42, 255
  %46 = call i32 @llvm.ctpop.i32(i32 %45) #16
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %49 = xor i8 %48, 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %49, i8* %50, align 1, !tbaa !2446
  %51 = icmp eq i32 %42, 0
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %52, i8* %53, align 1, !tbaa !2448
  %54 = lshr i32 %42, 31
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %55, i8* %56, align 1, !tbaa !2449
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %57, align 1, !tbaa !2450
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %58, align 1, !tbaa !2447
  %59 = load i64, i64* %RDX
  %60 = load i64, i64* %PC
  %61 = add i64 %60, 3
  store i64 %61, i64* %PC
  store i64 %59, i64* %R9, align 8, !tbaa !2428
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 1
  store i64 %63, i64* %PC
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8, !tbaa !2428
  %66 = add i64 %65, 8
  %67 = inttoptr i64 %65 to i64*
  %68 = load i64, i64* %67
  store i64 %68, i64* %RSI, align 8, !tbaa !2428
  store i64 %66, i64* %64, align 8, !tbaa !2428
  %69 = load i64, i64* %RSP
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 3
  store i64 %71, i64* %PC
  store i64 %69, i64* %RDX, align 8, !tbaa !2428
  %72 = load i64, i64* %RSP
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 4
  store i64 %74, i64* %PC
  %75 = and i64 -16, %72
  store i64 %75, i64* %RSP, align 8, !tbaa !2428
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %76, align 1, !tbaa !2432
  %77 = trunc i64 %75 to i32
  %78 = and i32 %77, 255
  %79 = call i32 @llvm.ctpop.i32(i32 %78) #16
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 1
  %82 = xor i8 %81, 1
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %82, i8* %83, align 1, !tbaa !2446
  %84 = icmp eq i64 %75, 0
  %85 = zext i1 %84 to i8
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %85, i8* %86, align 1, !tbaa !2448
  %87 = lshr i64 %75, 63
  %88 = trunc i64 %87 to i8
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %88, i8* %89, align 1, !tbaa !2449
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %90, align 1, !tbaa !2450
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %91, align 1, !tbaa !2447
  %92 = load i64, i64* %RAX
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 1
  store i64 %94, i64* %PC
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %96 = load i64, i64* %95, align 8, !tbaa !2428
  %97 = add i64 %96, -8
  %98 = inttoptr i64 %97 to i64*
  store i64 %92, i64* %98
  store i64 %97, i64* %95, align 8, !tbaa !2428
  %99 = load i64, i64* %RSP
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 1
  store i64 %101, i64* %PC
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %103 = load i64, i64* %102, align 8, !tbaa !2428
  %104 = add i64 %103, -8
  %105 = inttoptr i64 %104 to i64*
  store i64 %99, i64* %105
  store i64 %104, i64* %102, align 8, !tbaa !2428
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 7
  store i64 %107, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_401370___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_401300___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 7
  store i64 %111, i64* %PC
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 6
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 6
  store i64 %115, i64* %PC
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %117 = load i64, i64* %116, align 8, !tbaa !2428
  %118 = add i64 %117, -8
  %119 = inttoptr i64 %118 to i64*
  store i64 %113, i64* %119
  store i64 %118, i64* %116, align 8, !tbaa !2428
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %121 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i32 0, i32 0)
  store i64 %121, i64* %120, align 8, !tbaa !2428
  %122 = load i64, i64* %PC
  %123 = call %struct.Memory* @ext_6020d8___libc_start_main(%struct.State* %0, i64 %122, %struct.Memory* %2)
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 1
  store i64 %125, i64* %PC
  %126 = load i64, i64* %PC
  %127 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %126, %struct.Memory* %123)
  ret %struct.Memory* %127
}

; Function Attrs: noinline
define %struct.Memory* @sub_400db0_kernel_syr2k_StrictFP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400db0:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %EDI = bitcast %union.anon* %14 to i32*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RAX = bitcast %union.anon* %17 to i64*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RCX = bitcast %union.anon* %20 to i64*
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.GPR, %struct.GPR* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.Reg, %struct.Reg* %22, i32 0, i32 0
  %RDX = bitcast %union.anon* %23 to i64*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.GPR, %struct.GPR* %24, i32 0, i32 13
  %26 = getelementptr inbounds %struct.Reg, %struct.Reg* %25, i32 0, i32 0
  %RSP = bitcast %union.anon* %26 to i64*
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 15
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %RBP = bitcast %union.anon* %29 to i64*
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %31 = getelementptr inbounds %struct.GPR, %struct.GPR* %30, i32 0, i32 17
  %32 = getelementptr inbounds %struct.Reg, %struct.Reg* %31, i32 0, i32 0
  %R8 = bitcast %union.anon* %32 to i64*
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %34 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %33, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %34 to %"class.std::bitset"*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %36 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %35, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %36 to %union.vec128_t*
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %38 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %37, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %38 to %union.vec128_t*
  %39 = load i64, i64* %RBP
  %40 = load i64, i64* %PC
  %41 = add i64 %40, 1
  store i64 %41, i64* %PC
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %43 = load i64, i64* %42, align 8, !tbaa !2428
  %44 = add i64 %43, -8
  %45 = inttoptr i64 %44 to i64*
  store i64 %39, i64* %45
  store i64 %44, i64* %42, align 8, !tbaa !2428
  %46 = load i64, i64* %RSP
  %47 = load i64, i64* %PC
  %48 = add i64 %47, 3
  store i64 %48, i64* %PC
  store i64 %46, i64* %RBP, align 8, !tbaa !2428
  %49 = load i64, i64* %RBP
  %50 = sub i64 %49, 4
  %51 = load i32, i32* %EDI
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* %PC
  %54 = add i64 %53, 3
  store i64 %54, i64* %PC
  %55 = inttoptr i64 %50 to i32*
  store i32 %51, i32* %55
  %56 = load i64, i64* %RBP
  %57 = sub i64 %56, 8
  %58 = load i32, i32* %ESI
  %59 = zext i32 %58 to i64
  %60 = load i64, i64* %PC
  %61 = add i64 %60, 3
  store i64 %61, i64* %PC
  %62 = inttoptr i64 %57 to i32*
  store i32 %58, i32* %62
  %63 = load i64, i64* %RBP
  %64 = sub i64 %63, 16
  %65 = bitcast %union.vec128_t* %XMM0 to i8*
  %66 = load i64, i64* %PC
  %67 = add i64 %66, 5
  store i64 %67, i64* %PC
  %68 = bitcast i8* %65 to double*
  %69 = load double, double* %68, align 1
  %70 = inttoptr i64 %64 to double*
  store double %69, double* %70
  %71 = load i64, i64* %RBP
  %72 = sub i64 %71, 24
  %73 = bitcast %union.vec128_t* %XMM1 to i8*
  %74 = load i64, i64* %PC
  %75 = add i64 %74, 5
  store i64 %75, i64* %PC
  %76 = bitcast i8* %73 to double*
  %77 = load double, double* %76, align 1
  %78 = inttoptr i64 %72 to double*
  store double %77, double* %78
  %79 = load i64, i64* %RBP
  %80 = sub i64 %79, 32
  %81 = load i64, i64* %RDX
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 4
  store i64 %83, i64* %PC
  %84 = inttoptr i64 %80 to i64*
  store i64 %81, i64* %84
  %85 = load i64, i64* %RBP
  %86 = sub i64 %85, 40
  %87 = load i64, i64* %RCX
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 4
  store i64 %89, i64* %PC
  %90 = inttoptr i64 %86 to i64*
  store i64 %87, i64* %90
  %91 = load i64, i64* %RBP
  %92 = sub i64 %91, 48
  %93 = load i64, i64* %R8
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC
  %96 = inttoptr i64 %92 to i64*
  store i64 %93, i64* %96
  %97 = load i64, i64* %RBP
  %98 = sub i64 %97, 52
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 7
  store i64 %100, i64* %PC
  %101 = inttoptr i64 %98 to i32*
  store i32 0, i32* %101
  br label %block_400dd7

block_400e5f:                                     ; preds = %block_400e53
  %102 = load i64, i64* %RBP
  %103 = sub i64 %102, 60
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 7
  store i64 %105, i64* %PC
  %106 = inttoptr i64 %103 to i32*
  store i32 0, i32* %106
  br label %block_400e66

block_400f4a:                                     ; preds = %block_400e40
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 1
  store i64 %108, i64* %PC
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %110 = load i64, i64* %109, align 8, !tbaa !2428
  %111 = add i64 %110, 8
  %112 = inttoptr i64 %110 to i64*
  %113 = load i64, i64* %112
  store i64 %113, i64* %RBP, align 8, !tbaa !2428
  store i64 %111, i64* %109, align 8, !tbaa !2428
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 1
  store i64 %115, i64* %PC
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %118 = load i64, i64* %117, align 8, !tbaa !2428
  %119 = inttoptr i64 %118 to i64*
  %120 = load i64, i64* %119
  store i64 %120, i64* %116, align 8, !tbaa !2428
  %121 = add i64 %118, 8
  store i64 %121, i64* %117, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.4

block_400e39:                                     ; preds = %block_400dd7
  %122 = sub i64 %1434, 52
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 7
  store i64 %124, i64* %PC
  %125 = inttoptr i64 %122 to i32*
  store i32 0, i32* %125
  br label %block_400e40

block_400df6:                                     ; preds = %block_400dea
  %126 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %127 = load i64, i64* %RBP
  %128 = sub i64 %127, 24
  %129 = load i64, i64* %PC
  %130 = add i64 %129, 5
  store i64 %130, i64* %PC
  %131 = inttoptr i64 %128 to double*
  %132 = load double, double* %131
  %133 = bitcast i8* %126 to double*
  store double %132, double* %133, align 1, !tbaa !2452
  %134 = getelementptr inbounds i8, i8* %126, i64 8
  %135 = bitcast i8* %134 to double*
  store double 0.000000e+00, double* %135, align 1, !tbaa !2452
  %136 = load i64, i64* %RBP
  %137 = sub i64 %136, 32
  %138 = load i64, i64* %PC
  %139 = add i64 %138, 4
  store i64 %139, i64* %PC
  %140 = inttoptr i64 %137 to i64*
  %141 = load i64, i64* %140
  store i64 %141, i64* %RAX, align 8, !tbaa !2428
  %142 = load i64, i64* %RBP
  %143 = sub i64 %142, 52
  %144 = load i64, i64* %PC
  %145 = add i64 %144, 4
  store i64 %145, i64* %PC
  %146 = inttoptr i64 %143 to i32*
  %147 = load i32, i32* %146
  %148 = sext i32 %147 to i64
  store i64 %148, i64* %RCX, align 8, !tbaa !2428
  %149 = load i64, i64* %RCX
  %150 = load i64, i64* %PC
  %151 = add i64 %150, 4
  store i64 %151, i64* %PC
  %152 = shl i64 %149, 12
  %153 = icmp slt i64 %152, 0
  %154 = shl i64 %152, 1
  store i64 %154, i64* %RCX, align 8, !tbaa !2428
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %156 = zext i1 %153 to i8
  store i8 %156, i8* %155, align 1, !tbaa !2451
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %158 = trunc i64 %154 to i32
  %159 = and i32 %158, 254
  %160 = call i32 @llvm.ctpop.i32(i32 %159) #16
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %157, align 1, !tbaa !2451
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %164, align 1, !tbaa !2451
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %166 = icmp eq i64 %154, 0
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %165, align 1, !tbaa !2451
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %169 = lshr i64 %154, 63
  %170 = trunc i64 %169 to i8
  store i8 %170, i8* %168, align 1, !tbaa !2451
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %171, align 1, !tbaa !2451
  %172 = load i64, i64* %RAX
  %173 = load i64, i64* %RCX
  %174 = load i64, i64* %PC
  %175 = add i64 %174, 3
  store i64 %175, i64* %PC
  %176 = add i64 %173, %172
  store i64 %176, i64* %RAX, align 8, !tbaa !2428
  %177 = icmp ult i64 %176, %172
  %178 = icmp ult i64 %176, %173
  %179 = or i1 %177, %178
  %180 = zext i1 %179 to i8
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %180, i8* %181, align 1, !tbaa !2432
  %182 = trunc i64 %176 to i32
  %183 = and i32 %182, 255
  %184 = call i32 @llvm.ctpop.i32(i32 %183) #16
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  %187 = xor i8 %186, 1
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %187, i8* %188, align 1, !tbaa !2446
  %189 = xor i64 %173, %172
  %190 = xor i64 %189, %176
  %191 = lshr i64 %190, 4
  %192 = trunc i64 %191 to i8
  %193 = and i8 %192, 1
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %193, i8* %194, align 1, !tbaa !2447
  %195 = icmp eq i64 %176, 0
  %196 = zext i1 %195 to i8
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %196, i8* %197, align 1, !tbaa !2448
  %198 = lshr i64 %176, 63
  %199 = trunc i64 %198 to i8
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %199, i8* %200, align 1, !tbaa !2449
  %201 = lshr i64 %172, 63
  %202 = lshr i64 %173, 63
  %203 = xor i64 %198, %201
  %204 = xor i64 %198, %202
  %205 = add nuw nsw i64 %203, %204
  %206 = icmp eq i64 %205, 2
  %207 = zext i1 %206 to i8
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %207, i8* %208, align 1, !tbaa !2450
  %209 = load i64, i64* %RBP
  %210 = sub i64 %209, 56
  %211 = load i64, i64* %PC
  %212 = add i64 %211, 4
  store i64 %212, i64* %PC
  %213 = inttoptr i64 %210 to i32*
  %214 = load i32, i32* %213
  %215 = sext i32 %214 to i64
  store i64 %215, i64* %RCX, align 8, !tbaa !2428
  %216 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %217 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %218 = load i64, i64* %RAX
  %219 = load i64, i64* %RCX
  %220 = mul i64 %219, 8
  %221 = add i64 %220, %218
  %222 = load i64, i64* %PC
  %223 = add i64 %222, 5
  store i64 %223, i64* %PC
  %224 = bitcast i8* %217 to double*
  %225 = load double, double* %224, align 1
  %226 = getelementptr inbounds i8, i8* %217, i64 8
  %227 = bitcast i8* %226 to i64*
  %228 = load i64, i64* %227, align 1
  %229 = inttoptr i64 %221 to double*
  %230 = load double, double* %229
  %231 = fmul double %225, %230
  %232 = bitcast i8* %216 to double*
  store double %231, double* %232, align 1, !tbaa !2452
  %233 = getelementptr inbounds i8, i8* %216, i64 8
  %234 = bitcast i8* %233 to i64*
  store i64 %228, i64* %234, align 1, !tbaa !2452
  %235 = load i64, i64* %RAX
  %236 = load i64, i64* %RCX
  %237 = mul i64 %236, 8
  %238 = add i64 %237, %235
  %239 = bitcast %union.vec128_t* %XMM0 to i8*
  %240 = load i64, i64* %PC
  %241 = add i64 %240, 5
  store i64 %241, i64* %PC
  %242 = bitcast i8* %239 to double*
  %243 = load double, double* %242, align 1
  %244 = inttoptr i64 %238 to double*
  store double %243, double* %244
  %245 = load i64, i64* %RBP
  %246 = sub i64 %245, 56
  %247 = load i64, i64* %PC
  %248 = add i64 %247, 3
  store i64 %248, i64* %PC
  %249 = inttoptr i64 %246 to i32*
  %250 = load i32, i32* %249
  %251 = zext i32 %250 to i64
  store i64 %251, i64* %RAX, align 8, !tbaa !2428
  %252 = load i64, i64* %RAX
  %253 = load i64, i64* %PC
  %254 = add i64 %253, 3
  store i64 %254, i64* %PC
  %255 = trunc i64 %252 to i32
  %256 = add i32 1, %255
  %257 = zext i32 %256 to i64
  store i64 %257, i64* %RAX, align 8, !tbaa !2428
  %258 = icmp ult i32 %256, %255
  %259 = icmp ult i32 %256, 1
  %260 = or i1 %258, %259
  %261 = zext i1 %260 to i8
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %261, i8* %262, align 1, !tbaa !2432
  %263 = and i32 %256, 255
  %264 = call i32 @llvm.ctpop.i32(i32 %263) #16
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  %267 = xor i8 %266, 1
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %267, i8* %268, align 1, !tbaa !2446
  %269 = xor i64 1, %252
  %270 = trunc i64 %269 to i32
  %271 = xor i32 %270, %256
  %272 = lshr i32 %271, 4
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %274, i8* %275, align 1, !tbaa !2447
  %276 = icmp eq i32 %256, 0
  %277 = zext i1 %276 to i8
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %277, i8* %278, align 1, !tbaa !2448
  %279 = lshr i32 %256, 31
  %280 = trunc i32 %279 to i8
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %280, i8* %281, align 1, !tbaa !2449
  %282 = lshr i32 %255, 31
  %283 = xor i32 %279, %282
  %284 = add nuw nsw i32 %283, %279
  %285 = icmp eq i32 %284, 2
  %286 = zext i1 %285 to i8
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %286, i8* %287, align 1, !tbaa !2450
  %288 = load i64, i64* %RBP
  %289 = sub i64 %288, 56
  %290 = load i32, i32* %EAX
  %291 = zext i32 %290 to i64
  %292 = load i64, i64* %PC
  %293 = add i64 %292, 3
  store i64 %293, i64* %PC
  %294 = inttoptr i64 %289 to i32*
  store i32 %290, i32* %294
  %295 = load i64, i64* %PC
  %296 = sub i64 %295, 55
  %297 = load i64, i64* %PC
  %298 = add i64 %297, 5
  store i64 %298, i64* %PC
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %296, i64* %299, align 8, !tbaa !2428
  br label %block_400dea

block_400e53:                                     ; preds = %block_400f24, %block_400e4c
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.4, %block_400e4c ], [ %MEMORY.2, %block_400f24 ]
  %300 = load i64, i64* %RBP
  %301 = sub i64 %300, 56
  %302 = load i64, i64* %PC
  %303 = add i64 %302, 3
  store i64 %303, i64* %PC
  %304 = inttoptr i64 %301 to i32*
  %305 = load i32, i32* %304
  %306 = zext i32 %305 to i64
  store i64 %306, i64* %RAX, align 8, !tbaa !2428
  %307 = load i32, i32* %EAX
  %308 = zext i32 %307 to i64
  %309 = load i64, i64* %RBP
  %310 = sub i64 %309, 4
  %311 = load i64, i64* %PC
  %312 = add i64 %311, 3
  store i64 %312, i64* %PC
  %313 = inttoptr i64 %310 to i32*
  %314 = load i32, i32* %313
  %315 = sub i32 %307, %314
  %316 = icmp ult i32 %307, %314
  %317 = zext i1 %316 to i8
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %317, i8* %318, align 1, !tbaa !2432
  %319 = and i32 %315, 255
  %320 = call i32 @llvm.ctpop.i32(i32 %319) #16
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  %323 = xor i8 %322, 1
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %323, i8* %324, align 1, !tbaa !2446
  %325 = xor i32 %314, %307
  %326 = xor i32 %325, %315
  %327 = lshr i32 %326, 4
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %329, i8* %330, align 1, !tbaa !2447
  %331 = icmp eq i32 %315, 0
  %332 = zext i1 %331 to i8
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %332, i8* %333, align 1, !tbaa !2448
  %334 = lshr i32 %315, 31
  %335 = trunc i32 %334 to i8
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %335, i8* %336, align 1, !tbaa !2449
  %337 = lshr i32 %307, 31
  %338 = lshr i32 %314, 31
  %339 = xor i32 %338, %337
  %340 = xor i32 %334, %337
  %341 = add nuw nsw i32 %340, %339
  %342 = icmp eq i32 %341, 2
  %343 = zext i1 %342 to i8
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %343, i8* %344, align 1, !tbaa !2450
  %345 = load i64, i64* %PC
  %346 = add i64 %345, 222
  %347 = load i64, i64* %PC
  %348 = add i64 %347, 6
  %349 = load i64, i64* %PC
  %350 = add i64 %349, 6
  store i64 %350, i64* %PC
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %352 = load i8, i8* %351, align 1, !tbaa !2449
  %353 = icmp ne i8 %352, 0
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %355 = load i8, i8* %354, align 1, !tbaa !2450
  %356 = icmp ne i8 %355, 0
  %357 = xor i1 %353, %356
  %358 = xor i1 %357, true
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %361 = select i1 %357, i64 %348, i64 %346
  store i64 %361, i64* %360, align 8, !tbaa !2428
  %362 = load i8, i8* %BRANCH_TAKEN
  %363 = icmp eq i8 %362, 1
  br i1 %363, label %block_400f37, label %block_400e5f

block_400e72:                                     ; preds = %block_400e66
  %364 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %365 = load i64, i64* %RBP
  %366 = sub i64 %365, 16
  %367 = load i64, i64* %PC
  %368 = add i64 %367, 5
  store i64 %368, i64* %PC
  %369 = inttoptr i64 %366 to double*
  %370 = load double, double* %369
  %371 = bitcast i8* %364 to double*
  store double %370, double* %371, align 1, !tbaa !2452
  %372 = getelementptr inbounds i8, i8* %364, i64 8
  %373 = bitcast i8* %372 to double*
  store double 0.000000e+00, double* %373, align 1, !tbaa !2452
  %374 = load i64, i64* %RBP
  %375 = sub i64 %374, 40
  %376 = load i64, i64* %PC
  %377 = add i64 %376, 4
  store i64 %377, i64* %PC
  %378 = inttoptr i64 %375 to i64*
  %379 = load i64, i64* %378
  store i64 %379, i64* %RAX, align 8, !tbaa !2428
  %380 = load i64, i64* %RBP
  %381 = sub i64 %380, 52
  %382 = load i64, i64* %PC
  %383 = add i64 %382, 4
  store i64 %383, i64* %PC
  %384 = inttoptr i64 %381 to i32*
  %385 = load i32, i32* %384
  %386 = sext i32 %385 to i64
  store i64 %386, i64* %RCX, align 8, !tbaa !2428
  %387 = load i64, i64* %RCX
  %388 = load i64, i64* %PC
  %389 = add i64 %388, 4
  store i64 %389, i64* %PC
  %390 = shl i64 %387, 12
  %391 = icmp slt i64 %390, 0
  %392 = shl i64 %390, 1
  store i64 %392, i64* %RCX, align 8, !tbaa !2428
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %394 = zext i1 %391 to i8
  store i8 %394, i8* %393, align 1, !tbaa !2451
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %396 = trunc i64 %392 to i32
  %397 = and i32 %396, 254
  %398 = call i32 @llvm.ctpop.i32(i32 %397) #16
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  %401 = xor i8 %400, 1
  store i8 %401, i8* %395, align 1, !tbaa !2451
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %402, align 1, !tbaa !2451
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %404 = icmp eq i64 %392, 0
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %403, align 1, !tbaa !2451
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %407 = lshr i64 %392, 63
  %408 = trunc i64 %407 to i8
  store i8 %408, i8* %406, align 1, !tbaa !2451
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %409, align 1, !tbaa !2451
  %410 = load i64, i64* %RAX
  %411 = load i64, i64* %RCX
  %412 = load i64, i64* %PC
  %413 = add i64 %412, 3
  store i64 %413, i64* %PC
  %414 = add i64 %411, %410
  store i64 %414, i64* %RAX, align 8, !tbaa !2428
  %415 = icmp ult i64 %414, %410
  %416 = icmp ult i64 %414, %411
  %417 = or i1 %415, %416
  %418 = zext i1 %417 to i8
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %418, i8* %419, align 1, !tbaa !2432
  %420 = trunc i64 %414 to i32
  %421 = and i32 %420, 255
  %422 = call i32 @llvm.ctpop.i32(i32 %421) #16
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  %425 = xor i8 %424, 1
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %425, i8* %426, align 1, !tbaa !2446
  %427 = xor i64 %411, %410
  %428 = xor i64 %427, %414
  %429 = lshr i64 %428, 4
  %430 = trunc i64 %429 to i8
  %431 = and i8 %430, 1
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %431, i8* %432, align 1, !tbaa !2447
  %433 = icmp eq i64 %414, 0
  %434 = zext i1 %433 to i8
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %434, i8* %435, align 1, !tbaa !2448
  %436 = lshr i64 %414, 63
  %437 = trunc i64 %436 to i8
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %437, i8* %438, align 1, !tbaa !2449
  %439 = lshr i64 %410, 63
  %440 = lshr i64 %411, 63
  %441 = xor i64 %436, %439
  %442 = xor i64 %436, %440
  %443 = add nuw nsw i64 %441, %442
  %444 = icmp eq i64 %443, 2
  %445 = zext i1 %444 to i8
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %445, i8* %446, align 1, !tbaa !2450
  %447 = load i64, i64* %RBP
  %448 = sub i64 %447, 60
  %449 = load i64, i64* %PC
  %450 = add i64 %449, 4
  store i64 %450, i64* %PC
  %451 = inttoptr i64 %448 to i32*
  %452 = load i32, i32* %451
  %453 = sext i32 %452 to i64
  store i64 %453, i64* %RCX, align 8, !tbaa !2428
  %454 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %455 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %456 = load i64, i64* %RAX
  %457 = load i64, i64* %RCX
  %458 = mul i64 %457, 8
  %459 = add i64 %458, %456
  %460 = load i64, i64* %PC
  %461 = add i64 %460, 5
  store i64 %461, i64* %PC
  %462 = bitcast i8* %455 to double*
  %463 = load double, double* %462, align 1
  %464 = getelementptr inbounds i8, i8* %455, i64 8
  %465 = bitcast i8* %464 to i64*
  %466 = load i64, i64* %465, align 1
  %467 = inttoptr i64 %459 to double*
  %468 = load double, double* %467
  %469 = fmul double %463, %468
  %470 = bitcast i8* %454 to double*
  store double %469, double* %470, align 1, !tbaa !2452
  %471 = getelementptr inbounds i8, i8* %454, i64 8
  %472 = bitcast i8* %471 to i64*
  store i64 %466, i64* %472, align 1, !tbaa !2452
  %473 = load i64, i64* %RBP
  %474 = sub i64 %473, 48
  %475 = load i64, i64* %PC
  %476 = add i64 %475, 4
  store i64 %476, i64* %PC
  %477 = inttoptr i64 %474 to i64*
  %478 = load i64, i64* %477
  store i64 %478, i64* %RAX, align 8, !tbaa !2428
  %479 = load i64, i64* %RBP
  %480 = sub i64 %479, 56
  %481 = load i64, i64* %PC
  %482 = add i64 %481, 4
  store i64 %482, i64* %PC
  %483 = inttoptr i64 %480 to i32*
  %484 = load i32, i32* %483
  %485 = sext i32 %484 to i64
  store i64 %485, i64* %RCX, align 8, !tbaa !2428
  %486 = load i64, i64* %RCX
  %487 = load i64, i64* %PC
  %488 = add i64 %487, 4
  store i64 %488, i64* %PC
  %489 = shl i64 %486, 12
  %490 = icmp slt i64 %489, 0
  %491 = shl i64 %489, 1
  store i64 %491, i64* %RCX, align 8, !tbaa !2428
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %493 = zext i1 %490 to i8
  store i8 %493, i8* %492, align 1, !tbaa !2451
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %495 = trunc i64 %491 to i32
  %496 = and i32 %495, 254
  %497 = call i32 @llvm.ctpop.i32(i32 %496) #16
  %498 = trunc i32 %497 to i8
  %499 = and i8 %498, 1
  %500 = xor i8 %499, 1
  store i8 %500, i8* %494, align 1, !tbaa !2451
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %501, align 1, !tbaa !2451
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %503 = icmp eq i64 %491, 0
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %502, align 1, !tbaa !2451
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %506 = lshr i64 %491, 63
  %507 = trunc i64 %506 to i8
  store i8 %507, i8* %505, align 1, !tbaa !2451
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %508, align 1, !tbaa !2451
  %509 = load i64, i64* %RAX
  %510 = load i64, i64* %RCX
  %511 = load i64, i64* %PC
  %512 = add i64 %511, 3
  store i64 %512, i64* %PC
  %513 = add i64 %510, %509
  store i64 %513, i64* %RAX, align 8, !tbaa !2428
  %514 = icmp ult i64 %513, %509
  %515 = icmp ult i64 %513, %510
  %516 = or i1 %514, %515
  %517 = zext i1 %516 to i8
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %517, i8* %518, align 1, !tbaa !2432
  %519 = trunc i64 %513 to i32
  %520 = and i32 %519, 255
  %521 = call i32 @llvm.ctpop.i32(i32 %520) #16
  %522 = trunc i32 %521 to i8
  %523 = and i8 %522, 1
  %524 = xor i8 %523, 1
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %524, i8* %525, align 1, !tbaa !2446
  %526 = xor i64 %510, %509
  %527 = xor i64 %526, %513
  %528 = lshr i64 %527, 4
  %529 = trunc i64 %528 to i8
  %530 = and i8 %529, 1
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %530, i8* %531, align 1, !tbaa !2447
  %532 = icmp eq i64 %513, 0
  %533 = zext i1 %532 to i8
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %533, i8* %534, align 1, !tbaa !2448
  %535 = lshr i64 %513, 63
  %536 = trunc i64 %535 to i8
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %536, i8* %537, align 1, !tbaa !2449
  %538 = lshr i64 %509, 63
  %539 = lshr i64 %510, 63
  %540 = xor i64 %535, %538
  %541 = xor i64 %535, %539
  %542 = add nuw nsw i64 %540, %541
  %543 = icmp eq i64 %542, 2
  %544 = zext i1 %543 to i8
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %544, i8* %545, align 1, !tbaa !2450
  %546 = load i64, i64* %RBP
  %547 = sub i64 %546, 60
  %548 = load i64, i64* %PC
  %549 = add i64 %548, 4
  store i64 %549, i64* %PC
  %550 = inttoptr i64 %547 to i32*
  %551 = load i32, i32* %550
  %552 = sext i32 %551 to i64
  store i64 %552, i64* %RCX, align 8, !tbaa !2428
  %553 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %554 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %555 = load i64, i64* %RAX
  %556 = load i64, i64* %RCX
  %557 = mul i64 %556, 8
  %558 = add i64 %557, %555
  %559 = load i64, i64* %PC
  %560 = add i64 %559, 5
  store i64 %560, i64* %PC
  %561 = bitcast i8* %554 to double*
  %562 = load double, double* %561, align 1
  %563 = getelementptr inbounds i8, i8* %554, i64 8
  %564 = bitcast i8* %563 to i64*
  %565 = load i64, i64* %564, align 1
  %566 = inttoptr i64 %558 to double*
  %567 = load double, double* %566
  %568 = fmul double %562, %567
  %569 = bitcast i8* %553 to double*
  store double %568, double* %569, align 1, !tbaa !2452
  %570 = getelementptr inbounds i8, i8* %553, i64 8
  %571 = bitcast i8* %570 to i64*
  store i64 %565, i64* %571, align 1, !tbaa !2452
  %572 = load i64, i64* %RBP
  %573 = sub i64 %572, 32
  %574 = load i64, i64* %PC
  %575 = add i64 %574, 4
  store i64 %575, i64* %PC
  %576 = inttoptr i64 %573 to i64*
  %577 = load i64, i64* %576
  store i64 %577, i64* %RAX, align 8, !tbaa !2428
  %578 = load i64, i64* %RBP
  %579 = sub i64 %578, 52
  %580 = load i64, i64* %PC
  %581 = add i64 %580, 4
  store i64 %581, i64* %PC
  %582 = inttoptr i64 %579 to i32*
  %583 = load i32, i32* %582
  %584 = sext i32 %583 to i64
  store i64 %584, i64* %RCX, align 8, !tbaa !2428
  %585 = load i64, i64* %RCX
  %586 = load i64, i64* %PC
  %587 = add i64 %586, 4
  store i64 %587, i64* %PC
  %588 = shl i64 %585, 12
  %589 = icmp slt i64 %588, 0
  %590 = shl i64 %588, 1
  store i64 %590, i64* %RCX, align 8, !tbaa !2428
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %592 = zext i1 %589 to i8
  store i8 %592, i8* %591, align 1, !tbaa !2451
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %594 = trunc i64 %590 to i32
  %595 = and i32 %594, 254
  %596 = call i32 @llvm.ctpop.i32(i32 %595) #16
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  %599 = xor i8 %598, 1
  store i8 %599, i8* %593, align 1, !tbaa !2451
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %600, align 1, !tbaa !2451
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %602 = icmp eq i64 %590, 0
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %601, align 1, !tbaa !2451
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %605 = lshr i64 %590, 63
  %606 = trunc i64 %605 to i8
  store i8 %606, i8* %604, align 1, !tbaa !2451
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %607, align 1, !tbaa !2451
  %608 = load i64, i64* %RAX
  %609 = load i64, i64* %RCX
  %610 = load i64, i64* %PC
  %611 = add i64 %610, 3
  store i64 %611, i64* %PC
  %612 = add i64 %609, %608
  store i64 %612, i64* %RAX, align 8, !tbaa !2428
  %613 = icmp ult i64 %612, %608
  %614 = icmp ult i64 %612, %609
  %615 = or i1 %613, %614
  %616 = zext i1 %615 to i8
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %616, i8* %617, align 1, !tbaa !2432
  %618 = trunc i64 %612 to i32
  %619 = and i32 %618, 255
  %620 = call i32 @llvm.ctpop.i32(i32 %619) #16
  %621 = trunc i32 %620 to i8
  %622 = and i8 %621, 1
  %623 = xor i8 %622, 1
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %623, i8* %624, align 1, !tbaa !2446
  %625 = xor i64 %609, %608
  %626 = xor i64 %625, %612
  %627 = lshr i64 %626, 4
  %628 = trunc i64 %627 to i8
  %629 = and i8 %628, 1
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %629, i8* %630, align 1, !tbaa !2447
  %631 = icmp eq i64 %612, 0
  %632 = zext i1 %631 to i8
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %632, i8* %633, align 1, !tbaa !2448
  %634 = lshr i64 %612, 63
  %635 = trunc i64 %634 to i8
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %635, i8* %636, align 1, !tbaa !2449
  %637 = lshr i64 %608, 63
  %638 = lshr i64 %609, 63
  %639 = xor i64 %634, %637
  %640 = xor i64 %634, %638
  %641 = add nuw nsw i64 %639, %640
  %642 = icmp eq i64 %641, 2
  %643 = zext i1 %642 to i8
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %643, i8* %644, align 1, !tbaa !2450
  %645 = load i64, i64* %RBP
  %646 = sub i64 %645, 56
  %647 = load i64, i64* %PC
  %648 = add i64 %647, 4
  store i64 %648, i64* %PC
  %649 = inttoptr i64 %646 to i32*
  %650 = load i32, i32* %649
  %651 = sext i32 %650 to i64
  store i64 %651, i64* %RCX, align 8, !tbaa !2428
  %652 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %653 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %654 = load i64, i64* %RAX
  %655 = load i64, i64* %RCX
  %656 = mul i64 %655, 8
  %657 = add i64 %656, %654
  %658 = load i64, i64* %PC
  %659 = add i64 %658, 5
  store i64 %659, i64* %PC
  %660 = bitcast i8* %653 to double*
  %661 = load double, double* %660, align 1
  %662 = getelementptr inbounds i8, i8* %653, i64 8
  %663 = bitcast i8* %662 to i64*
  %664 = load i64, i64* %663, align 1
  %665 = inttoptr i64 %657 to double*
  %666 = load double, double* %665
  %667 = fadd double %661, %666
  %668 = bitcast i8* %652 to double*
  store double %667, double* %668, align 1, !tbaa !2452
  %669 = getelementptr inbounds i8, i8* %652, i64 8
  %670 = bitcast i8* %669 to i64*
  store i64 %664, i64* %670, align 1, !tbaa !2452
  %671 = load i64, i64* %RAX
  %672 = load i64, i64* %RCX
  %673 = mul i64 %672, 8
  %674 = add i64 %673, %671
  %675 = bitcast %union.vec128_t* %XMM0 to i8*
  %676 = load i64, i64* %PC
  %677 = add i64 %676, 5
  store i64 %677, i64* %PC
  %678 = bitcast i8* %675 to double*
  %679 = load double, double* %678, align 1
  %680 = inttoptr i64 %674 to double*
  store double %679, double* %680
  %681 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %682 = load i64, i64* %RBP
  %683 = sub i64 %682, 16
  %684 = load i64, i64* %PC
  %685 = add i64 %684, 5
  store i64 %685, i64* %PC
  %686 = inttoptr i64 %683 to double*
  %687 = load double, double* %686
  %688 = bitcast i8* %681 to double*
  store double %687, double* %688, align 1, !tbaa !2452
  %689 = getelementptr inbounds i8, i8* %681, i64 8
  %690 = bitcast i8* %689 to double*
  store double 0.000000e+00, double* %690, align 1, !tbaa !2452
  %691 = load i64, i64* %RBP
  %692 = sub i64 %691, 48
  %693 = load i64, i64* %PC
  %694 = add i64 %693, 4
  store i64 %694, i64* %PC
  %695 = inttoptr i64 %692 to i64*
  %696 = load i64, i64* %695
  store i64 %696, i64* %RAX, align 8, !tbaa !2428
  %697 = load i64, i64* %RBP
  %698 = sub i64 %697, 52
  %699 = load i64, i64* %PC
  %700 = add i64 %699, 4
  store i64 %700, i64* %PC
  %701 = inttoptr i64 %698 to i32*
  %702 = load i32, i32* %701
  %703 = sext i32 %702 to i64
  store i64 %703, i64* %RCX, align 8, !tbaa !2428
  %704 = load i64, i64* %RCX
  %705 = load i64, i64* %PC
  %706 = add i64 %705, 4
  store i64 %706, i64* %PC
  %707 = shl i64 %704, 12
  %708 = icmp slt i64 %707, 0
  %709 = shl i64 %707, 1
  store i64 %709, i64* %RCX, align 8, !tbaa !2428
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %711 = zext i1 %708 to i8
  store i8 %711, i8* %710, align 1, !tbaa !2451
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %713 = trunc i64 %709 to i32
  %714 = and i32 %713, 254
  %715 = call i32 @llvm.ctpop.i32(i32 %714) #16
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  %718 = xor i8 %717, 1
  store i8 %718, i8* %712, align 1, !tbaa !2451
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %719, align 1, !tbaa !2451
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %721 = icmp eq i64 %709, 0
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %720, align 1, !tbaa !2451
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %724 = lshr i64 %709, 63
  %725 = trunc i64 %724 to i8
  store i8 %725, i8* %723, align 1, !tbaa !2451
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %726, align 1, !tbaa !2451
  %727 = load i64, i64* %RAX
  %728 = load i64, i64* %RCX
  %729 = load i64, i64* %PC
  %730 = add i64 %729, 3
  store i64 %730, i64* %PC
  %731 = add i64 %728, %727
  store i64 %731, i64* %RAX, align 8, !tbaa !2428
  %732 = icmp ult i64 %731, %727
  %733 = icmp ult i64 %731, %728
  %734 = or i1 %732, %733
  %735 = zext i1 %734 to i8
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %735, i8* %736, align 1, !tbaa !2432
  %737 = trunc i64 %731 to i32
  %738 = and i32 %737, 255
  %739 = call i32 @llvm.ctpop.i32(i32 %738) #16
  %740 = trunc i32 %739 to i8
  %741 = and i8 %740, 1
  %742 = xor i8 %741, 1
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %742, i8* %743, align 1, !tbaa !2446
  %744 = xor i64 %728, %727
  %745 = xor i64 %744, %731
  %746 = lshr i64 %745, 4
  %747 = trunc i64 %746 to i8
  %748 = and i8 %747, 1
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %748, i8* %749, align 1, !tbaa !2447
  %750 = icmp eq i64 %731, 0
  %751 = zext i1 %750 to i8
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %751, i8* %752, align 1, !tbaa !2448
  %753 = lshr i64 %731, 63
  %754 = trunc i64 %753 to i8
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %754, i8* %755, align 1, !tbaa !2449
  %756 = lshr i64 %727, 63
  %757 = lshr i64 %728, 63
  %758 = xor i64 %753, %756
  %759 = xor i64 %753, %757
  %760 = add nuw nsw i64 %758, %759
  %761 = icmp eq i64 %760, 2
  %762 = zext i1 %761 to i8
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %762, i8* %763, align 1, !tbaa !2450
  %764 = load i64, i64* %RBP
  %765 = sub i64 %764, 60
  %766 = load i64, i64* %PC
  %767 = add i64 %766, 4
  store i64 %767, i64* %PC
  %768 = inttoptr i64 %765 to i32*
  %769 = load i32, i32* %768
  %770 = sext i32 %769 to i64
  store i64 %770, i64* %RCX, align 8, !tbaa !2428
  %771 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %772 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %773 = load i64, i64* %RAX
  %774 = load i64, i64* %RCX
  %775 = mul i64 %774, 8
  %776 = add i64 %775, %773
  %777 = load i64, i64* %PC
  %778 = add i64 %777, 5
  store i64 %778, i64* %PC
  %779 = bitcast i8* %772 to double*
  %780 = load double, double* %779, align 1
  %781 = getelementptr inbounds i8, i8* %772, i64 8
  %782 = bitcast i8* %781 to i64*
  %783 = load i64, i64* %782, align 1
  %784 = inttoptr i64 %776 to double*
  %785 = load double, double* %784
  %786 = fmul double %780, %785
  %787 = bitcast i8* %771 to double*
  store double %786, double* %787, align 1, !tbaa !2452
  %788 = getelementptr inbounds i8, i8* %771, i64 8
  %789 = bitcast i8* %788 to i64*
  store i64 %783, i64* %789, align 1, !tbaa !2452
  %790 = load i64, i64* %RBP
  %791 = sub i64 %790, 40
  %792 = load i64, i64* %PC
  %793 = add i64 %792, 4
  store i64 %793, i64* %PC
  %794 = inttoptr i64 %791 to i64*
  %795 = load i64, i64* %794
  store i64 %795, i64* %RAX, align 8, !tbaa !2428
  %796 = load i64, i64* %RBP
  %797 = sub i64 %796, 56
  %798 = load i64, i64* %PC
  %799 = add i64 %798, 4
  store i64 %799, i64* %PC
  %800 = inttoptr i64 %797 to i32*
  %801 = load i32, i32* %800
  %802 = sext i32 %801 to i64
  store i64 %802, i64* %RCX, align 8, !tbaa !2428
  %803 = load i64, i64* %RCX
  %804 = load i64, i64* %PC
  %805 = add i64 %804, 4
  store i64 %805, i64* %PC
  %806 = shl i64 %803, 12
  %807 = icmp slt i64 %806, 0
  %808 = shl i64 %806, 1
  store i64 %808, i64* %RCX, align 8, !tbaa !2428
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %810 = zext i1 %807 to i8
  store i8 %810, i8* %809, align 1, !tbaa !2451
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %812 = trunc i64 %808 to i32
  %813 = and i32 %812, 254
  %814 = call i32 @llvm.ctpop.i32(i32 %813) #16
  %815 = trunc i32 %814 to i8
  %816 = and i8 %815, 1
  %817 = xor i8 %816, 1
  store i8 %817, i8* %811, align 1, !tbaa !2451
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %818, align 1, !tbaa !2451
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %820 = icmp eq i64 %808, 0
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %819, align 1, !tbaa !2451
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %823 = lshr i64 %808, 63
  %824 = trunc i64 %823 to i8
  store i8 %824, i8* %822, align 1, !tbaa !2451
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %825, align 1, !tbaa !2451
  %826 = load i64, i64* %RAX
  %827 = load i64, i64* %RCX
  %828 = load i64, i64* %PC
  %829 = add i64 %828, 3
  store i64 %829, i64* %PC
  %830 = add i64 %827, %826
  store i64 %830, i64* %RAX, align 8, !tbaa !2428
  %831 = icmp ult i64 %830, %826
  %832 = icmp ult i64 %830, %827
  %833 = or i1 %831, %832
  %834 = zext i1 %833 to i8
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %834, i8* %835, align 1, !tbaa !2432
  %836 = trunc i64 %830 to i32
  %837 = and i32 %836, 255
  %838 = call i32 @llvm.ctpop.i32(i32 %837) #16
  %839 = trunc i32 %838 to i8
  %840 = and i8 %839, 1
  %841 = xor i8 %840, 1
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %841, i8* %842, align 1, !tbaa !2446
  %843 = xor i64 %827, %826
  %844 = xor i64 %843, %830
  %845 = lshr i64 %844, 4
  %846 = trunc i64 %845 to i8
  %847 = and i8 %846, 1
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %847, i8* %848, align 1, !tbaa !2447
  %849 = icmp eq i64 %830, 0
  %850 = zext i1 %849 to i8
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %850, i8* %851, align 1, !tbaa !2448
  %852 = lshr i64 %830, 63
  %853 = trunc i64 %852 to i8
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %853, i8* %854, align 1, !tbaa !2449
  %855 = lshr i64 %826, 63
  %856 = lshr i64 %827, 63
  %857 = xor i64 %852, %855
  %858 = xor i64 %852, %856
  %859 = add nuw nsw i64 %857, %858
  %860 = icmp eq i64 %859, 2
  %861 = zext i1 %860 to i8
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %861, i8* %862, align 1, !tbaa !2450
  %863 = load i64, i64* %RBP
  %864 = sub i64 %863, 60
  %865 = load i64, i64* %PC
  %866 = add i64 %865, 4
  store i64 %866, i64* %PC
  %867 = inttoptr i64 %864 to i32*
  %868 = load i32, i32* %867
  %869 = sext i32 %868 to i64
  store i64 %869, i64* %RCX, align 8, !tbaa !2428
  %870 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %871 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %872 = load i64, i64* %RAX
  %873 = load i64, i64* %RCX
  %874 = mul i64 %873, 8
  %875 = add i64 %874, %872
  %876 = load i64, i64* %PC
  %877 = add i64 %876, 5
  store i64 %877, i64* %PC
  %878 = bitcast i8* %871 to double*
  %879 = load double, double* %878, align 1
  %880 = getelementptr inbounds i8, i8* %871, i64 8
  %881 = bitcast i8* %880 to i64*
  %882 = load i64, i64* %881, align 1
  %883 = inttoptr i64 %875 to double*
  %884 = load double, double* %883
  %885 = fmul double %879, %884
  %886 = bitcast i8* %870 to double*
  store double %885, double* %886, align 1, !tbaa !2452
  %887 = getelementptr inbounds i8, i8* %870, i64 8
  %888 = bitcast i8* %887 to i64*
  store i64 %882, i64* %888, align 1, !tbaa !2452
  %889 = load i64, i64* %RBP
  %890 = sub i64 %889, 32
  %891 = load i64, i64* %PC
  %892 = add i64 %891, 4
  store i64 %892, i64* %PC
  %893 = inttoptr i64 %890 to i64*
  %894 = load i64, i64* %893
  store i64 %894, i64* %RAX, align 8, !tbaa !2428
  %895 = load i64, i64* %RBP
  %896 = sub i64 %895, 52
  %897 = load i64, i64* %PC
  %898 = add i64 %897, 4
  store i64 %898, i64* %PC
  %899 = inttoptr i64 %896 to i32*
  %900 = load i32, i32* %899
  %901 = sext i32 %900 to i64
  store i64 %901, i64* %RCX, align 8, !tbaa !2428
  %902 = load i64, i64* %RCX
  %903 = load i64, i64* %PC
  %904 = add i64 %903, 4
  store i64 %904, i64* %PC
  %905 = shl i64 %902, 12
  %906 = icmp slt i64 %905, 0
  %907 = shl i64 %905, 1
  store i64 %907, i64* %RCX, align 8, !tbaa !2428
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %909 = zext i1 %906 to i8
  store i8 %909, i8* %908, align 1, !tbaa !2451
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %911 = trunc i64 %907 to i32
  %912 = and i32 %911, 254
  %913 = call i32 @llvm.ctpop.i32(i32 %912) #16
  %914 = trunc i32 %913 to i8
  %915 = and i8 %914, 1
  %916 = xor i8 %915, 1
  store i8 %916, i8* %910, align 1, !tbaa !2451
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %917, align 1, !tbaa !2451
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %919 = icmp eq i64 %907, 0
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %918, align 1, !tbaa !2451
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %922 = lshr i64 %907, 63
  %923 = trunc i64 %922 to i8
  store i8 %923, i8* %921, align 1, !tbaa !2451
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %924, align 1, !tbaa !2451
  %925 = load i64, i64* %RAX
  %926 = load i64, i64* %RCX
  %927 = load i64, i64* %PC
  %928 = add i64 %927, 3
  store i64 %928, i64* %PC
  %929 = add i64 %926, %925
  store i64 %929, i64* %RAX, align 8, !tbaa !2428
  %930 = icmp ult i64 %929, %925
  %931 = icmp ult i64 %929, %926
  %932 = or i1 %930, %931
  %933 = zext i1 %932 to i8
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %933, i8* %934, align 1, !tbaa !2432
  %935 = trunc i64 %929 to i32
  %936 = and i32 %935, 255
  %937 = call i32 @llvm.ctpop.i32(i32 %936) #16
  %938 = trunc i32 %937 to i8
  %939 = and i8 %938, 1
  %940 = xor i8 %939, 1
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %940, i8* %941, align 1, !tbaa !2446
  %942 = xor i64 %926, %925
  %943 = xor i64 %942, %929
  %944 = lshr i64 %943, 4
  %945 = trunc i64 %944 to i8
  %946 = and i8 %945, 1
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %946, i8* %947, align 1, !tbaa !2447
  %948 = icmp eq i64 %929, 0
  %949 = zext i1 %948 to i8
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %949, i8* %950, align 1, !tbaa !2448
  %951 = lshr i64 %929, 63
  %952 = trunc i64 %951 to i8
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %952, i8* %953, align 1, !tbaa !2449
  %954 = lshr i64 %925, 63
  %955 = lshr i64 %926, 63
  %956 = xor i64 %951, %954
  %957 = xor i64 %951, %955
  %958 = add nuw nsw i64 %956, %957
  %959 = icmp eq i64 %958, 2
  %960 = zext i1 %959 to i8
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %960, i8* %961, align 1, !tbaa !2450
  %962 = load i64, i64* %RBP
  %963 = sub i64 %962, 56
  %964 = load i64, i64* %PC
  %965 = add i64 %964, 4
  store i64 %965, i64* %PC
  %966 = inttoptr i64 %963 to i32*
  %967 = load i32, i32* %966
  %968 = sext i32 %967 to i64
  store i64 %968, i64* %RCX, align 8, !tbaa !2428
  %969 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %970 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %971 = load i64, i64* %RAX
  %972 = load i64, i64* %RCX
  %973 = mul i64 %972, 8
  %974 = add i64 %973, %971
  %975 = load i64, i64* %PC
  %976 = add i64 %975, 5
  store i64 %976, i64* %PC
  %977 = bitcast i8* %970 to double*
  %978 = load double, double* %977, align 1
  %979 = getelementptr inbounds i8, i8* %970, i64 8
  %980 = bitcast i8* %979 to i64*
  %981 = load i64, i64* %980, align 1
  %982 = inttoptr i64 %974 to double*
  %983 = load double, double* %982
  %984 = fadd double %978, %983
  %985 = bitcast i8* %969 to double*
  store double %984, double* %985, align 1, !tbaa !2452
  %986 = getelementptr inbounds i8, i8* %969, i64 8
  %987 = bitcast i8* %986 to i64*
  store i64 %981, i64* %987, align 1, !tbaa !2452
  %988 = load i64, i64* %RAX
  %989 = load i64, i64* %RCX
  %990 = mul i64 %989, 8
  %991 = add i64 %990, %988
  %992 = bitcast %union.vec128_t* %XMM0 to i8*
  %993 = load i64, i64* %PC
  %994 = add i64 %993, 5
  store i64 %994, i64* %PC
  %995 = bitcast i8* %992 to double*
  %996 = load double, double* %995, align 1
  %997 = inttoptr i64 %991 to double*
  store double %996, double* %997
  %998 = load i64, i64* %RBP
  %999 = sub i64 %998, 60
  %1000 = load i64, i64* %PC
  %1001 = add i64 %1000, 3
  store i64 %1001, i64* %PC
  %1002 = inttoptr i64 %999 to i32*
  %1003 = load i32, i32* %1002
  %1004 = zext i32 %1003 to i64
  store i64 %1004, i64* %RAX, align 8, !tbaa !2428
  %1005 = load i64, i64* %RAX
  %1006 = load i64, i64* %PC
  %1007 = add i64 %1006, 3
  store i64 %1007, i64* %PC
  %1008 = trunc i64 %1005 to i32
  %1009 = add i32 1, %1008
  %1010 = zext i32 %1009 to i64
  store i64 %1010, i64* %RAX, align 8, !tbaa !2428
  %1011 = icmp ult i32 %1009, %1008
  %1012 = icmp ult i32 %1009, 1
  %1013 = or i1 %1011, %1012
  %1014 = zext i1 %1013 to i8
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1014, i8* %1015, align 1, !tbaa !2432
  %1016 = and i32 %1009, 255
  %1017 = call i32 @llvm.ctpop.i32(i32 %1016) #16
  %1018 = trunc i32 %1017 to i8
  %1019 = and i8 %1018, 1
  %1020 = xor i8 %1019, 1
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1020, i8* %1021, align 1, !tbaa !2446
  %1022 = xor i64 1, %1005
  %1023 = trunc i64 %1022 to i32
  %1024 = xor i32 %1023, %1009
  %1025 = lshr i32 %1024, 4
  %1026 = trunc i32 %1025 to i8
  %1027 = and i8 %1026, 1
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1027, i8* %1028, align 1, !tbaa !2447
  %1029 = icmp eq i32 %1009, 0
  %1030 = zext i1 %1029 to i8
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1030, i8* %1031, align 1, !tbaa !2448
  %1032 = lshr i32 %1009, 31
  %1033 = trunc i32 %1032 to i8
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1033, i8* %1034, align 1, !tbaa !2449
  %1035 = lshr i32 %1008, 31
  %1036 = xor i32 %1032, %1035
  %1037 = add nuw nsw i32 %1036, %1032
  %1038 = icmp eq i32 %1037, 2
  %1039 = zext i1 %1038 to i8
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1039, i8* %1040, align 1, !tbaa !2450
  %1041 = load i64, i64* %RBP
  %1042 = sub i64 %1041, 60
  %1043 = load i32, i32* %EAX
  %1044 = zext i32 %1043 to i64
  %1045 = load i64, i64* %PC
  %1046 = add i64 %1045, 3
  store i64 %1046, i64* %PC
  %1047 = inttoptr i64 %1042 to i32*
  store i32 %1043, i32* %1047
  %1048 = load i64, i64* %PC
  %1049 = sub i64 %1048, 185
  %1050 = load i64, i64* %PC
  %1051 = add i64 %1050, 5
  store i64 %1051, i64* %PC
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1049, i64* %1052, align 8, !tbaa !2428
  br label %block_400e66

block_400f37:                                     ; preds = %block_400e53
  %1053 = load i64, i64* %PC
  %1054 = add i64 %1053, 5
  %1055 = load i64, i64* %PC
  %1056 = add i64 %1055, 5
  store i64 %1056, i64* %PC
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1054, i64* %1057, align 8, !tbaa !2428
  %1058 = load i64, i64* %RBP
  %1059 = sub i64 %1058, 52
  %1060 = load i64, i64* %PC
  %1061 = add i64 %1060, 3
  store i64 %1061, i64* %PC
  %1062 = inttoptr i64 %1059 to i32*
  %1063 = load i32, i32* %1062
  %1064 = zext i32 %1063 to i64
  store i64 %1064, i64* %RAX, align 8, !tbaa !2428
  %1065 = load i64, i64* %RAX
  %1066 = load i64, i64* %PC
  %1067 = add i64 %1066, 3
  store i64 %1067, i64* %PC
  %1068 = trunc i64 %1065 to i32
  %1069 = add i32 1, %1068
  %1070 = zext i32 %1069 to i64
  store i64 %1070, i64* %RAX, align 8, !tbaa !2428
  %1071 = icmp ult i32 %1069, %1068
  %1072 = icmp ult i32 %1069, 1
  %1073 = or i1 %1071, %1072
  %1074 = zext i1 %1073 to i8
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1074, i8* %1075, align 1, !tbaa !2432
  %1076 = and i32 %1069, 255
  %1077 = call i32 @llvm.ctpop.i32(i32 %1076) #16
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1080, i8* %1081, align 1, !tbaa !2446
  %1082 = xor i64 1, %1065
  %1083 = trunc i64 %1082 to i32
  %1084 = xor i32 %1083, %1069
  %1085 = lshr i32 %1084, 4
  %1086 = trunc i32 %1085 to i8
  %1087 = and i8 %1086, 1
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1087, i8* %1088, align 1, !tbaa !2447
  %1089 = icmp eq i32 %1069, 0
  %1090 = zext i1 %1089 to i8
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1090, i8* %1091, align 1, !tbaa !2448
  %1092 = lshr i32 %1069, 31
  %1093 = trunc i32 %1092 to i8
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1093, i8* %1094, align 1, !tbaa !2449
  %1095 = lshr i32 %1068, 31
  %1096 = xor i32 %1092, %1095
  %1097 = add nuw nsw i32 %1096, %1092
  %1098 = icmp eq i32 %1097, 2
  %1099 = zext i1 %1098 to i8
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1099, i8* %1100, align 1, !tbaa !2450
  %1101 = load i64, i64* %RBP
  %1102 = sub i64 %1101, 52
  %1103 = load i32, i32* %EAX
  %1104 = zext i32 %1103 to i64
  %1105 = load i64, i64* %PC
  %1106 = add i64 %1105, 3
  store i64 %1106, i64* %PC
  %1107 = inttoptr i64 %1102 to i32*
  store i32 %1103, i32* %1107
  %1108 = load i64, i64* %PC
  %1109 = sub i64 %1108, 261
  %1110 = load i64, i64* %PC
  %1111 = add i64 %1110, 5
  store i64 %1111, i64* %PC
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1109, i64* %1112, align 8, !tbaa !2428
  br label %block_400e40

block_400e4c:                                     ; preds = %block_400e40
  %1113 = load i64, i64* %RBP
  %1114 = sub i64 %1113, 56
  %1115 = load i64, i64* %PC
  %1116 = add i64 %1115, 7
  store i64 %1116, i64* %PC
  %1117 = inttoptr i64 %1114 to i32*
  store i32 0, i32* %1117
  br label %block_400e53

block_400dea:                                     ; preds = %block_400de3, %block_400df6
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.3, %block_400de3 ], [ %MEMORY.1, %block_400df6 ]
  %1118 = load i64, i64* %RBP
  %1119 = sub i64 %1118, 56
  %1120 = load i64, i64* %PC
  %1121 = add i64 %1120, 3
  store i64 %1121, i64* %PC
  %1122 = inttoptr i64 %1119 to i32*
  %1123 = load i32, i32* %1122
  %1124 = zext i32 %1123 to i64
  store i64 %1124, i64* %RAX, align 8, !tbaa !2428
  %1125 = load i32, i32* %EAX
  %1126 = zext i32 %1125 to i64
  %1127 = load i64, i64* %RBP
  %1128 = sub i64 %1127, 4
  %1129 = load i64, i64* %PC
  %1130 = add i64 %1129, 3
  store i64 %1130, i64* %PC
  %1131 = inttoptr i64 %1128 to i32*
  %1132 = load i32, i32* %1131
  %1133 = sub i32 %1125, %1132
  %1134 = icmp ult i32 %1125, %1132
  %1135 = zext i1 %1134 to i8
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1135, i8* %1136, align 1, !tbaa !2432
  %1137 = and i32 %1133, 255
  %1138 = call i32 @llvm.ctpop.i32(i32 %1137) #16
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  %1141 = xor i8 %1140, 1
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1141, i8* %1142, align 1, !tbaa !2446
  %1143 = xor i32 %1132, %1125
  %1144 = xor i32 %1143, %1133
  %1145 = lshr i32 %1144, 4
  %1146 = trunc i32 %1145 to i8
  %1147 = and i8 %1146, 1
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1147, i8* %1148, align 1, !tbaa !2447
  %1149 = icmp eq i32 %1133, 0
  %1150 = zext i1 %1149 to i8
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1150, i8* %1151, align 1, !tbaa !2448
  %1152 = lshr i32 %1133, 31
  %1153 = trunc i32 %1152 to i8
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1153, i8* %1154, align 1, !tbaa !2449
  %1155 = lshr i32 %1125, 31
  %1156 = lshr i32 %1132, 31
  %1157 = xor i32 %1156, %1155
  %1158 = xor i32 %1152, %1155
  %1159 = add nuw nsw i32 %1158, %1157
  %1160 = icmp eq i32 %1159, 2
  %1161 = zext i1 %1160 to i8
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1161, i8* %1162, align 1, !tbaa !2450
  %1163 = load i64, i64* %PC
  %1164 = add i64 %1163, 54
  %1165 = load i64, i64* %PC
  %1166 = add i64 %1165, 6
  %1167 = load i64, i64* %PC
  %1168 = add i64 %1167, 6
  store i64 %1168, i64* %PC
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1170 = load i8, i8* %1169, align 1, !tbaa !2449
  %1171 = icmp ne i8 %1170, 0
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1173 = load i8, i8* %1172, align 1, !tbaa !2450
  %1174 = icmp ne i8 %1173, 0
  %1175 = xor i1 %1171, %1174
  %1176 = xor i1 %1175, true
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1179 = select i1 %1175, i64 %1166, i64 %1164
  store i64 %1179, i64* %1178, align 8, !tbaa !2428
  %1180 = load i8, i8* %BRANCH_TAKEN
  %1181 = icmp eq i8 %1180, 1
  br i1 %1181, label %block_400e26, label %block_400df6

block_400e26:                                     ; preds = %block_400dea
  %1182 = load i64, i64* %PC
  %1183 = add i64 %1182, 5
  %1184 = load i64, i64* %PC
  %1185 = add i64 %1184, 5
  store i64 %1185, i64* %PC
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1183, i64* %1186, align 8, !tbaa !2428
  %1187 = load i64, i64* %RBP
  %1188 = sub i64 %1187, 52
  %1189 = load i64, i64* %PC
  %1190 = add i64 %1189, 3
  store i64 %1190, i64* %PC
  %1191 = inttoptr i64 %1188 to i32*
  %1192 = load i32, i32* %1191
  %1193 = zext i32 %1192 to i64
  store i64 %1193, i64* %RAX, align 8, !tbaa !2428
  %1194 = load i64, i64* %RAX
  %1195 = load i64, i64* %PC
  %1196 = add i64 %1195, 3
  store i64 %1196, i64* %PC
  %1197 = trunc i64 %1194 to i32
  %1198 = add i32 1, %1197
  %1199 = zext i32 %1198 to i64
  store i64 %1199, i64* %RAX, align 8, !tbaa !2428
  %1200 = icmp ult i32 %1198, %1197
  %1201 = icmp ult i32 %1198, 1
  %1202 = or i1 %1200, %1201
  %1203 = zext i1 %1202 to i8
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1203, i8* %1204, align 1, !tbaa !2432
  %1205 = and i32 %1198, 255
  %1206 = call i32 @llvm.ctpop.i32(i32 %1205) #16
  %1207 = trunc i32 %1206 to i8
  %1208 = and i8 %1207, 1
  %1209 = xor i8 %1208, 1
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1209, i8* %1210, align 1, !tbaa !2446
  %1211 = xor i64 1, %1194
  %1212 = trunc i64 %1211 to i32
  %1213 = xor i32 %1212, %1198
  %1214 = lshr i32 %1213, 4
  %1215 = trunc i32 %1214 to i8
  %1216 = and i8 %1215, 1
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1216, i8* %1217, align 1, !tbaa !2447
  %1218 = icmp eq i32 %1198, 0
  %1219 = zext i1 %1218 to i8
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1219, i8* %1220, align 1, !tbaa !2448
  %1221 = lshr i32 %1198, 31
  %1222 = trunc i32 %1221 to i8
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1222, i8* %1223, align 1, !tbaa !2449
  %1224 = lshr i32 %1197, 31
  %1225 = xor i32 %1221, %1224
  %1226 = add nuw nsw i32 %1225, %1221
  %1227 = icmp eq i32 %1226, 2
  %1228 = zext i1 %1227 to i8
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1228, i8* %1229, align 1, !tbaa !2450
  %1230 = load i64, i64* %RBP
  %1231 = sub i64 %1230, 52
  %1232 = load i32, i32* %EAX
  %1233 = zext i32 %1232 to i64
  %1234 = load i64, i64* %PC
  %1235 = add i64 %1234, 3
  store i64 %1235, i64* %PC
  %1236 = inttoptr i64 %1231 to i32*
  store i32 %1232, i32* %1236
  %1237 = load i64, i64* %PC
  %1238 = sub i64 %1237, 93
  %1239 = load i64, i64* %PC
  %1240 = add i64 %1239, 5
  store i64 %1240, i64* %PC
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1238, i64* %1241, align 8, !tbaa !2428
  br label %block_400dd7

block_400e66:                                     ; preds = %block_400e72, %block_400e5f
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_400e5f ], [ %MEMORY.2, %block_400e72 ]
  %1242 = load i64, i64* %RBP
  %1243 = sub i64 %1242, 60
  %1244 = load i64, i64* %PC
  %1245 = add i64 %1244, 3
  store i64 %1245, i64* %PC
  %1246 = inttoptr i64 %1243 to i32*
  %1247 = load i32, i32* %1246
  %1248 = zext i32 %1247 to i64
  store i64 %1248, i64* %RAX, align 8, !tbaa !2428
  %1249 = load i32, i32* %EAX
  %1250 = zext i32 %1249 to i64
  %1251 = load i64, i64* %RBP
  %1252 = sub i64 %1251, 8
  %1253 = load i64, i64* %PC
  %1254 = add i64 %1253, 3
  store i64 %1254, i64* %PC
  %1255 = inttoptr i64 %1252 to i32*
  %1256 = load i32, i32* %1255
  %1257 = sub i32 %1249, %1256
  %1258 = icmp ult i32 %1249, %1256
  %1259 = zext i1 %1258 to i8
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1259, i8* %1260, align 1, !tbaa !2432
  %1261 = and i32 %1257, 255
  %1262 = call i32 @llvm.ctpop.i32(i32 %1261) #16
  %1263 = trunc i32 %1262 to i8
  %1264 = and i8 %1263, 1
  %1265 = xor i8 %1264, 1
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1265, i8* %1266, align 1, !tbaa !2446
  %1267 = xor i32 %1256, %1249
  %1268 = xor i32 %1267, %1257
  %1269 = lshr i32 %1268, 4
  %1270 = trunc i32 %1269 to i8
  %1271 = and i8 %1270, 1
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1271, i8* %1272, align 1, !tbaa !2447
  %1273 = icmp eq i32 %1257, 0
  %1274 = zext i1 %1273 to i8
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1274, i8* %1275, align 1, !tbaa !2448
  %1276 = lshr i32 %1257, 31
  %1277 = trunc i32 %1276 to i8
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1277, i8* %1278, align 1, !tbaa !2449
  %1279 = lshr i32 %1249, 31
  %1280 = lshr i32 %1256, 31
  %1281 = xor i32 %1280, %1279
  %1282 = xor i32 %1276, %1279
  %1283 = add nuw nsw i32 %1282, %1281
  %1284 = icmp eq i32 %1283, 2
  %1285 = zext i1 %1284 to i8
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1285, i8* %1286, align 1, !tbaa !2450
  %1287 = load i64, i64* %PC
  %1288 = add i64 %1287, 184
  %1289 = load i64, i64* %PC
  %1290 = add i64 %1289, 6
  %1291 = load i64, i64* %PC
  %1292 = add i64 %1291, 6
  store i64 %1292, i64* %PC
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1294 = load i8, i8* %1293, align 1, !tbaa !2449
  %1295 = icmp ne i8 %1294, 0
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1297 = load i8, i8* %1296, align 1, !tbaa !2450
  %1298 = icmp ne i8 %1297, 0
  %1299 = xor i1 %1295, %1298
  %1300 = xor i1 %1299, true
  %1301 = zext i1 %1300 to i8
  store i8 %1301, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1303 = select i1 %1299, i64 %1290, i64 %1288
  store i64 %1303, i64* %1302, align 8, !tbaa !2428
  %1304 = load i8, i8* %BRANCH_TAKEN
  %1305 = icmp eq i8 %1304, 1
  br i1 %1305, label %block_400f24, label %block_400e72

block_400f24:                                     ; preds = %block_400e66
  %1306 = load i64, i64* %PC
  %1307 = add i64 %1306, 5
  %1308 = load i64, i64* %PC
  %1309 = add i64 %1308, 5
  store i64 %1309, i64* %PC
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1307, i64* %1310, align 8, !tbaa !2428
  %1311 = load i64, i64* %RBP
  %1312 = sub i64 %1311, 56
  %1313 = load i64, i64* %PC
  %1314 = add i64 %1313, 3
  store i64 %1314, i64* %PC
  %1315 = inttoptr i64 %1312 to i32*
  %1316 = load i32, i32* %1315
  %1317 = zext i32 %1316 to i64
  store i64 %1317, i64* %RAX, align 8, !tbaa !2428
  %1318 = load i64, i64* %RAX
  %1319 = load i64, i64* %PC
  %1320 = add i64 %1319, 3
  store i64 %1320, i64* %PC
  %1321 = trunc i64 %1318 to i32
  %1322 = add i32 1, %1321
  %1323 = zext i32 %1322 to i64
  store i64 %1323, i64* %RAX, align 8, !tbaa !2428
  %1324 = icmp ult i32 %1322, %1321
  %1325 = icmp ult i32 %1322, 1
  %1326 = or i1 %1324, %1325
  %1327 = zext i1 %1326 to i8
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1327, i8* %1328, align 1, !tbaa !2432
  %1329 = and i32 %1322, 255
  %1330 = call i32 @llvm.ctpop.i32(i32 %1329) #16
  %1331 = trunc i32 %1330 to i8
  %1332 = and i8 %1331, 1
  %1333 = xor i8 %1332, 1
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1333, i8* %1334, align 1, !tbaa !2446
  %1335 = xor i64 1, %1318
  %1336 = trunc i64 %1335 to i32
  %1337 = xor i32 %1336, %1322
  %1338 = lshr i32 %1337, 4
  %1339 = trunc i32 %1338 to i8
  %1340 = and i8 %1339, 1
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1340, i8* %1341, align 1, !tbaa !2447
  %1342 = icmp eq i32 %1322, 0
  %1343 = zext i1 %1342 to i8
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1343, i8* %1344, align 1, !tbaa !2448
  %1345 = lshr i32 %1322, 31
  %1346 = trunc i32 %1345 to i8
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1346, i8* %1347, align 1, !tbaa !2449
  %1348 = lshr i32 %1321, 31
  %1349 = xor i32 %1345, %1348
  %1350 = add nuw nsw i32 %1349, %1345
  %1351 = icmp eq i32 %1350, 2
  %1352 = zext i1 %1351 to i8
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1352, i8* %1353, align 1, !tbaa !2450
  %1354 = load i64, i64* %RBP
  %1355 = sub i64 %1354, 56
  %1356 = load i32, i32* %EAX
  %1357 = zext i32 %1356 to i64
  %1358 = load i64, i64* %PC
  %1359 = add i64 %1358, 3
  store i64 %1359, i64* %PC
  %1360 = inttoptr i64 %1355 to i32*
  store i32 %1356, i32* %1360
  %1361 = load i64, i64* %PC
  %1362 = sub i64 %1361, 223
  %1363 = load i64, i64* %PC
  %1364 = add i64 %1363, 5
  store i64 %1364, i64* %PC
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1362, i64* %1365, align 8, !tbaa !2428
  br label %block_400e53

block_400de3:                                     ; preds = %block_400dd7
  %1366 = sub i64 %1434, 56
  %1367 = load i64, i64* %PC
  %1368 = add i64 %1367, 7
  store i64 %1368, i64* %PC
  %1369 = inttoptr i64 %1366 to i32*
  store i32 0, i32* %1369
  br label %block_400dea

block_400dd7:                                     ; preds = %block_400e26, %block_400db0
  %MEMORY.3 = phi %struct.Memory* [ %2, %block_400db0 ], [ %MEMORY.1, %block_400e26 ]
  %1370 = load i64, i64* %RBP
  %1371 = sub i64 %1370, 52
  %1372 = load i64, i64* %PC
  %1373 = add i64 %1372, 3
  store i64 %1373, i64* %PC
  %1374 = inttoptr i64 %1371 to i32*
  %1375 = load i32, i32* %1374
  %1376 = zext i32 %1375 to i64
  store i64 %1376, i64* %RAX, align 8, !tbaa !2428
  %1377 = load i32, i32* %EAX
  %1378 = zext i32 %1377 to i64
  %1379 = load i64, i64* %RBP
  %1380 = sub i64 %1379, 4
  %1381 = load i64, i64* %PC
  %1382 = add i64 %1381, 3
  store i64 %1382, i64* %PC
  %1383 = inttoptr i64 %1380 to i32*
  %1384 = load i32, i32* %1383
  %1385 = sub i32 %1377, %1384
  %1386 = icmp ult i32 %1377, %1384
  %1387 = zext i1 %1386 to i8
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1387, i8* %1388, align 1, !tbaa !2432
  %1389 = and i32 %1385, 255
  %1390 = call i32 @llvm.ctpop.i32(i32 %1389) #16
  %1391 = trunc i32 %1390 to i8
  %1392 = and i8 %1391, 1
  %1393 = xor i8 %1392, 1
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1393, i8* %1394, align 1, !tbaa !2446
  %1395 = xor i32 %1384, %1377
  %1396 = xor i32 %1395, %1385
  %1397 = lshr i32 %1396, 4
  %1398 = trunc i32 %1397 to i8
  %1399 = and i8 %1398, 1
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1399, i8* %1400, align 1, !tbaa !2447
  %1401 = icmp eq i32 %1385, 0
  %1402 = zext i1 %1401 to i8
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1402, i8* %1403, align 1, !tbaa !2448
  %1404 = lshr i32 %1385, 31
  %1405 = trunc i32 %1404 to i8
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1405, i8* %1406, align 1, !tbaa !2449
  %1407 = lshr i32 %1377, 31
  %1408 = lshr i32 %1384, 31
  %1409 = xor i32 %1408, %1407
  %1410 = xor i32 %1404, %1407
  %1411 = add nuw nsw i32 %1410, %1409
  %1412 = icmp eq i32 %1411, 2
  %1413 = zext i1 %1412 to i8
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1413, i8* %1414, align 1, !tbaa !2450
  %1415 = load i64, i64* %PC
  %1416 = add i64 %1415, 92
  %1417 = load i64, i64* %PC
  %1418 = add i64 %1417, 6
  %1419 = load i64, i64* %PC
  %1420 = add i64 %1419, 6
  store i64 %1420, i64* %PC
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1422 = load i8, i8* %1421, align 1, !tbaa !2449
  %1423 = icmp ne i8 %1422, 0
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1425 = load i8, i8* %1424, align 1, !tbaa !2450
  %1426 = icmp ne i8 %1425, 0
  %1427 = xor i1 %1423, %1426
  %1428 = xor i1 %1427, true
  %1429 = zext i1 %1428 to i8
  store i8 %1429, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1431 = select i1 %1427, i64 %1418, i64 %1416
  store i64 %1431, i64* %1430, align 8, !tbaa !2428
  %1432 = load i8, i8* %BRANCH_TAKEN
  %1433 = icmp eq i8 %1432, 1
  %1434 = load i64, i64* %RBP
  br i1 %1433, label %block_400e39, label %block_400de3

block_400e40:                                     ; preds = %block_400f37, %block_400e39
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.3, %block_400e39 ], [ %MEMORY.0, %block_400f37 ]
  %1435 = load i64, i64* %RBP
  %1436 = sub i64 %1435, 52
  %1437 = load i64, i64* %PC
  %1438 = add i64 %1437, 3
  store i64 %1438, i64* %PC
  %1439 = inttoptr i64 %1436 to i32*
  %1440 = load i32, i32* %1439
  %1441 = zext i32 %1440 to i64
  store i64 %1441, i64* %RAX, align 8, !tbaa !2428
  %1442 = load i32, i32* %EAX
  %1443 = zext i32 %1442 to i64
  %1444 = load i64, i64* %RBP
  %1445 = sub i64 %1444, 4
  %1446 = load i64, i64* %PC
  %1447 = add i64 %1446, 3
  store i64 %1447, i64* %PC
  %1448 = inttoptr i64 %1445 to i32*
  %1449 = load i32, i32* %1448
  %1450 = sub i32 %1442, %1449
  %1451 = icmp ult i32 %1442, %1449
  %1452 = zext i1 %1451 to i8
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1452, i8* %1453, align 1, !tbaa !2432
  %1454 = and i32 %1450, 255
  %1455 = call i32 @llvm.ctpop.i32(i32 %1454) #16
  %1456 = trunc i32 %1455 to i8
  %1457 = and i8 %1456, 1
  %1458 = xor i8 %1457, 1
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1458, i8* %1459, align 1, !tbaa !2446
  %1460 = xor i32 %1449, %1442
  %1461 = xor i32 %1460, %1450
  %1462 = lshr i32 %1461, 4
  %1463 = trunc i32 %1462 to i8
  %1464 = and i8 %1463, 1
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1464, i8* %1465, align 1, !tbaa !2447
  %1466 = icmp eq i32 %1450, 0
  %1467 = zext i1 %1466 to i8
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1467, i8* %1468, align 1, !tbaa !2448
  %1469 = lshr i32 %1450, 31
  %1470 = trunc i32 %1469 to i8
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1470, i8* %1471, align 1, !tbaa !2449
  %1472 = lshr i32 %1442, 31
  %1473 = lshr i32 %1449, 31
  %1474 = xor i32 %1473, %1472
  %1475 = xor i32 %1469, %1472
  %1476 = add nuw nsw i32 %1475, %1474
  %1477 = icmp eq i32 %1476, 2
  %1478 = zext i1 %1477 to i8
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1478, i8* %1479, align 1, !tbaa !2450
  %1480 = load i64, i64* %PC
  %1481 = add i64 %1480, 260
  %1482 = load i64, i64* %PC
  %1483 = add i64 %1482, 6
  %1484 = load i64, i64* %PC
  %1485 = add i64 %1484, 6
  store i64 %1485, i64* %PC
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1487 = load i8, i8* %1486, align 1, !tbaa !2449
  %1488 = icmp ne i8 %1487, 0
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1490 = load i8, i8* %1489, align 1, !tbaa !2450
  %1491 = icmp ne i8 %1490, 0
  %1492 = xor i1 %1488, %1491
  %1493 = xor i1 %1492, true
  %1494 = zext i1 %1493 to i8
  store i8 %1494, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1496 = select i1 %1492, i64 %1483, i64 %1481
  store i64 %1496, i64* %1495, align 8, !tbaa !2428
  %1497 = load i8, i8* %BRANCH_TAKEN
  %1498 = icmp eq i8 %1497, 1
  br i1 %1498, label %block_400f4a, label %block_400e4c
}

; Function Attrs: noinline
define %struct.Memory* @sub_400810_polybench_timer_print(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400810:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %EAX = bitcast %union.anon* %12 to i32*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 11
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RDI = bitcast %union.anon* %15 to i64*
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %17 = getelementptr inbounds %struct.GPR, %struct.GPR* %16, i32 0, i32 13
  %18 = getelementptr inbounds %struct.Reg, %struct.Reg* %17, i32 0, i32 0
  %RSP = bitcast %union.anon* %18 to i64*
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 15
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0
  %RBP = bitcast %union.anon* %21 to i64*
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %23 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %22, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %23 to %"class.std::bitset"*
  %24 = load i64, i64* %RBP
  %25 = load i64, i64* %PC
  %26 = add i64 %25, 1
  store i64 %26, i64* %PC
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %28 = load i64, i64* %27, align 8, !tbaa !2428
  %29 = add i64 %28, -8
  %30 = inttoptr i64 %29 to i64*
  store i64 %24, i64* %30
  store i64 %29, i64* %27, align 8, !tbaa !2428
  %31 = load i64, i64* %RSP
  %32 = load i64, i64* %PC
  %33 = add i64 %32, 3
  store i64 %33, i64* %PC
  store i64 %31, i64* %RBP, align 8, !tbaa !2428
  %34 = load i64, i64* %RSP
  %35 = load i64, i64* %PC
  %36 = add i64 %35, 4
  store i64 %36, i64* %PC
  %37 = sub i64 %34, 16
  store i64 %37, i64* %RSP, align 8, !tbaa !2428
  %38 = icmp ult i64 %34, 16
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %39, i8* %40, align 1, !tbaa !2432
  %41 = trunc i64 %37 to i32
  %42 = and i32 %41, 255
  %43 = call i32 @llvm.ctpop.i32(i32 %42) #16
  %44 = trunc i32 %43 to i8
  %45 = and i8 %44, 1
  %46 = xor i8 %45, 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %46, i8* %47, align 1, !tbaa !2446
  %48 = xor i64 16, %34
  %49 = xor i64 %48, %37
  %50 = lshr i64 %49, 4
  %51 = trunc i64 %50 to i8
  %52 = and i8 %51, 1
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %52, i8* %53, align 1, !tbaa !2447
  %54 = icmp eq i64 %37, 0
  %55 = zext i1 %54 to i8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %55, i8* %56, align 1, !tbaa !2448
  %57 = lshr i64 %37, 63
  %58 = trunc i64 %57 to i8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %58, i8* %59, align 1, !tbaa !2449
  %60 = lshr i64 %34, 63
  %61 = xor i64 %57, %60
  %62 = add nuw nsw i64 %61, %60
  %63 = icmp eq i64 %62, 2
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %64, i8* %65, align 1, !tbaa !2450
  %66 = load i64, i64* %PC
  %67 = add i64 %66, 10
  store i64 %67, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401380__rodata_type* @seg_401380__rodata to i64), i64 48), i64* %RDI, align 8, !tbaa !2428
  %68 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 9
  store i64 %70, i64* %PC
  %71 = load double, double* bitcast (%polybench_t_end_type* @polybench_t_end to double*)
  %72 = bitcast i8* %68 to double*
  store double %71, double* %72, align 1, !tbaa !2452
  %73 = getelementptr inbounds i8, i8* %68, i64 8
  %74 = bitcast i8* %73 to double*
  store double 0.000000e+00, double* %74, align 1, !tbaa !2452
  %75 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %76 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 9
  store i64 %78, i64* %PC
  %79 = bitcast i8* %76 to double*
  %80 = load double, double* %79, align 1
  %81 = getelementptr inbounds i8, i8* %76, i64 8
  %82 = bitcast i8* %81 to i64*
  %83 = load i64, i64* %82, align 1
  %84 = load double, double* bitcast (%polybench_t_start_type* @polybench_t_start to double*)
  %85 = fsub double %80, %84
  %86 = bitcast i8* %75 to double*
  store double %85, double* %86, align 1, !tbaa !2452
  %87 = getelementptr inbounds i8, i8* %75, i64 8
  %88 = bitcast i8* %87 to i64*
  store i64 %83, i64* %88, align 1, !tbaa !2452
  %89 = load i64, i64* %PC
  %90 = add i64 %89, 2
  store i64 %90, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %91 = load i64, i64* %PC
  %92 = sub i64 %91, 614
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 5
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 5
  store i64 %96, i64* %PC
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %98 = load i64, i64* %97, align 8, !tbaa !2428
  %99 = add i64 %98, -8
  %100 = inttoptr i64 %99 to i64*
  store i64 %94, i64* %100
  store i64 %99, i64* %97, align 8, !tbaa !2428
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %92, i64* %101, align 8, !tbaa !2428
  %102 = load i64, i64* %PC
  %103 = call %struct.Memory* @ext_602110_printf(%struct.State* %0, i64 %102, %struct.Memory* %2)
  %104 = load i64, i64* %RBP
  %105 = sub i64 %104, 4
  %106 = load i32, i32* %EAX
  %107 = zext i32 %106 to i64
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 3
  store i64 %109, i64* %PC
  %110 = inttoptr i64 %105 to i32*
  store i32 %106, i32* %110
  %111 = load i64, i64* %RSP
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 4
  store i64 %113, i64* %PC
  %114 = add i64 16, %111
  store i64 %114, i64* %RSP, align 8, !tbaa !2428
  %115 = icmp ult i64 %114, %111
  %116 = icmp ult i64 %114, 16
  %117 = or i1 %115, %116
  %118 = zext i1 %117 to i8
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %118, i8* %119, align 1, !tbaa !2432
  %120 = trunc i64 %114 to i32
  %121 = and i32 %120, 255
  %122 = call i32 @llvm.ctpop.i32(i32 %121) #16
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %125, i8* %126, align 1, !tbaa !2446
  %127 = xor i64 16, %111
  %128 = xor i64 %127, %114
  %129 = lshr i64 %128, 4
  %130 = trunc i64 %129 to i8
  %131 = and i8 %130, 1
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %131, i8* %132, align 1, !tbaa !2447
  %133 = icmp eq i64 %114, 0
  %134 = zext i1 %133 to i8
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %134, i8* %135, align 1, !tbaa !2448
  %136 = lshr i64 %114, 63
  %137 = trunc i64 %136 to i8
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %137, i8* %138, align 1, !tbaa !2449
  %139 = lshr i64 %111, 63
  %140 = xor i64 %136, %139
  %141 = add nuw nsw i64 %140, %136
  %142 = icmp eq i64 %141, 2
  %143 = zext i1 %142 to i8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %143, i8* %144, align 1, !tbaa !2450
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 1
  store i64 %146, i64* %PC
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %148 = load i64, i64* %147, align 8, !tbaa !2428
  %149 = add i64 %148, 8
  %150 = inttoptr i64 %148 to i64*
  %151 = load i64, i64* %150
  store i64 %151, i64* %RBP, align 8, !tbaa !2428
  store i64 %149, i64* %147, align 8, !tbaa !2428
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 1
  store i64 %153, i64* %PC
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %156 = load i64, i64* %155, align 8, !tbaa !2428
  %157 = inttoptr i64 %156 to i64*
  %158 = load i64, i64* %157
  store i64 %158, i64* %154, align 8, !tbaa !2428
  %159 = add i64 %156, 8
  store i64 %159, i64* %155, align 8, !tbaa !2428
  ret %struct.Memory* %103
}

; Function Attrs: noinline
define %struct.Memory* @sub_401080_print_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401080:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %ECX = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %EDX = bitcast %union.anon* %14 to i32*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 11
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %EDI = bitcast %union.anon* %17 to i32*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RAX = bitcast %union.anon* %20 to i64*
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.GPR, %struct.GPR* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.Reg, %struct.Reg* %22, i32 0, i32 0
  %RCX = bitcast %union.anon* %23 to i64*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.GPR, %struct.GPR* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.Reg, %struct.Reg* %25, i32 0, i32 0
  %RDX = bitcast %union.anon* %26 to i64*
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 9
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %RSI = bitcast %union.anon* %29 to i64*
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %31 = getelementptr inbounds %struct.GPR, %struct.GPR* %30, i32 0, i32 11
  %32 = getelementptr inbounds %struct.Reg, %struct.Reg* %31, i32 0, i32 0
  %RDI = bitcast %union.anon* %32 to i64*
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %34 = getelementptr inbounds %struct.GPR, %struct.GPR* %33, i32 0, i32 13
  %35 = getelementptr inbounds %struct.Reg, %struct.Reg* %34, i32 0, i32 0
  %RSP = bitcast %union.anon* %35 to i64*
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %37 = getelementptr inbounds %struct.GPR, %struct.GPR* %36, i32 0, i32 15
  %38 = getelementptr inbounds %struct.Reg, %struct.Reg* %37, i32 0, i32 0
  %RBP = bitcast %union.anon* %38 to i64*
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %40 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %39, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %40 to %"class.std::bitset"*
  %41 = load i64, i64* %RBP
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 1
  store i64 %43, i64* %PC
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %45 = load i64, i64* %44, align 8, !tbaa !2428
  %46 = add i64 %45, -8
  %47 = inttoptr i64 %46 to i64*
  store i64 %41, i64* %47
  store i64 %46, i64* %44, align 8, !tbaa !2428
  %48 = load i64, i64* %RSP
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 3
  store i64 %50, i64* %PC
  store i64 %48, i64* %RBP, align 8, !tbaa !2428
  %51 = load i64, i64* %RSP
  %52 = load i64, i64* %PC
  %53 = add i64 %52, 4
  store i64 %53, i64* %PC
  %54 = sub i64 %51, 48
  store i64 %54, i64* %RSP, align 8, !tbaa !2428
  %55 = icmp ult i64 %51, 48
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %56, i8* %57, align 1, !tbaa !2432
  %58 = trunc i64 %54 to i32
  %59 = and i32 %58, 255
  %60 = call i32 @llvm.ctpop.i32(i32 %59) #16
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  %63 = xor i8 %62, 1
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %63, i8* %64, align 1, !tbaa !2446
  %65 = xor i64 48, %51
  %66 = xor i64 %65, %54
  %67 = lshr i64 %66, 4
  %68 = trunc i64 %67 to i8
  %69 = and i8 %68, 1
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %69, i8* %70, align 1, !tbaa !2447
  %71 = icmp eq i64 %54, 0
  %72 = zext i1 %71 to i8
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %72, i8* %73, align 1, !tbaa !2448
  %74 = lshr i64 %54, 63
  %75 = trunc i64 %74 to i8
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %75, i8* %76, align 1, !tbaa !2449
  %77 = lshr i64 %51, 63
  %78 = xor i64 %74, %77
  %79 = add nuw nsw i64 %78, %77
  %80 = icmp eq i64 %79, 2
  %81 = zext i1 %80 to i8
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %81, i8* %82, align 1, !tbaa !2450
  %83 = load i64, i64* %RBP
  %84 = sub i64 %83, 4
  %85 = load i32, i32* %EDI
  %86 = zext i32 %85 to i64
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 3
  store i64 %88, i64* %PC
  %89 = inttoptr i64 %84 to i32*
  store i32 %85, i32* %89
  %90 = load i64, i64* %RBP
  %91 = sub i64 %90, 16
  %92 = load i64, i64* %RSI
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 4
  store i64 %94, i64* %PC
  %95 = inttoptr i64 %91 to i64*
  store i64 %92, i64* %95
  %96 = load i64, i64* %RBP
  %97 = sub i64 %96, 4
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 3
  store i64 %99, i64* %PC
  %100 = inttoptr i64 %97 to i32*
  %101 = load i32, i32* %100
  %102 = zext i32 %101 to i64
  store i64 %102, i64* %RDI, align 8, !tbaa !2428
  %103 = load i64, i64* %RDI
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 3
  store i64 %105, i64* %PC
  %106 = and i64 %103, 4294967295
  %107 = shl i64 %106, 3
  %108 = trunc i64 %107 to i32
  %109 = icmp slt i32 %108, 0
  %110 = shl i32 %108, 1
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %RDI, align 8, !tbaa !2428
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %113 = zext i1 %109 to i8
  store i8 %113, i8* %112, align 1, !tbaa !2451
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %115 = and i32 %110, 254
  %116 = call i32 @llvm.ctpop.i32(i32 %115) #16
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  %119 = xor i8 %118, 1
  store i8 %119, i8* %114, align 1, !tbaa !2451
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %120, align 1, !tbaa !2451
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %122 = icmp eq i32 %110, 0
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %121, align 1, !tbaa !2451
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %125 = lshr i32 %110, 31
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %124, align 1, !tbaa !2451
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %127, align 1, !tbaa !2451
  %128 = load i64, i64* %RDI
  %129 = load i64, i64* %PC
  %130 = add i64 %129, 3
  store i64 %130, i64* %PC
  %131 = trunc i64 %128 to i32
  %132 = add i32 1, %131
  %133 = zext i32 %132 to i64
  store i64 %133, i64* %RDI, align 8, !tbaa !2428
  %134 = icmp ult i32 %132, %131
  %135 = icmp ult i32 %132, 1
  %136 = or i1 %134, %135
  %137 = zext i1 %136 to i8
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %137, i8* %138, align 1, !tbaa !2432
  %139 = and i32 %132, 255
  %140 = call i32 @llvm.ctpop.i32(i32 %139) #16
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  %143 = xor i8 %142, 1
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %143, i8* %144, align 1, !tbaa !2446
  %145 = xor i64 1, %128
  %146 = trunc i64 %145 to i32
  %147 = xor i32 %146, %132
  %148 = lshr i32 %147, 4
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %150, i8* %151, align 1, !tbaa !2447
  %152 = icmp eq i32 %132, 0
  %153 = zext i1 %152 to i8
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %153, i8* %154, align 1, !tbaa !2448
  %155 = lshr i32 %132, 31
  %156 = trunc i32 %155 to i8
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %156, i8* %157, align 1, !tbaa !2449
  %158 = lshr i32 %131, 31
  %159 = xor i32 %155, %158
  %160 = add nuw nsw i32 %159, %155
  %161 = icmp eq i32 %160, 2
  %162 = zext i1 %161 to i8
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %162, i8* %163, align 1, !tbaa !2450
  %164 = load i32, i32* %EDI
  %165 = zext i32 %164 to i64
  %166 = load i64, i64* %PC
  %167 = add i64 %166, 3
  store i64 %167, i64* %PC
  %168 = shl i64 %165, 32
  %169 = ashr exact i64 %168, 32
  store i64 %169, i64* %RDI, align 8, !tbaa !2428
  %170 = load i64, i64* %PC
  %171 = sub i64 %170, 2699
  %172 = load i64, i64* %PC
  %173 = add i64 %172, 5
  %174 = load i64, i64* %PC
  %175 = add i64 %174, 5
  store i64 %175, i64* %PC
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %177 = load i64, i64* %176, align 8, !tbaa !2428
  %178 = add i64 %177, -8
  %179 = inttoptr i64 %178 to i64*
  store i64 %173, i64* %179
  store i64 %178, i64* %176, align 8, !tbaa !2428
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %171, i64* %180, align 8, !tbaa !2428
  %181 = load i64, i64* %PC
  %182 = call %struct.Memory* @ext_6020f0_malloc(%struct.State* %0, i64 %181, %struct.Memory* %2)
  %183 = load i64, i64* %RBP
  %184 = sub i64 %183, 32
  %185 = load i64, i64* %RAX
  %186 = load i64, i64* %PC
  %187 = add i64 %186, 4
  store i64 %187, i64* %PC
  %188 = inttoptr i64 %184 to i64*
  store i64 %185, i64* %188
  %189 = load i64, i64* %RBP
  %190 = sub i64 %189, 32
  %191 = load i64, i64* %PC
  %192 = add i64 %191, 4
  store i64 %192, i64* %PC
  %193 = inttoptr i64 %190 to i64*
  %194 = load i64, i64* %193
  store i64 %194, i64* %RAX, align 8, !tbaa !2428
  %195 = load i64, i64* %RBP
  %196 = sub i64 %195, 4
  %197 = load i64, i64* %PC
  %198 = add i64 %197, 3
  store i64 %198, i64* %PC
  %199 = inttoptr i64 %196 to i32*
  %200 = load i32, i32* %199
  %201 = zext i32 %200 to i64
  store i64 %201, i64* %RCX, align 8, !tbaa !2428
  %202 = load i64, i64* %RCX
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 3
  store i64 %204, i64* %PC
  %205 = and i64 %202, 4294967295
  %206 = shl i64 %205, 3
  %207 = trunc i64 %206 to i32
  %208 = icmp slt i32 %207, 0
  %209 = shl i32 %207, 1
  %210 = zext i32 %209 to i64
  store i64 %210, i64* %RCX, align 8, !tbaa !2428
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %212 = zext i1 %208 to i8
  store i8 %212, i8* %211, align 1, !tbaa !2451
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %214 = and i32 %209, 254
  %215 = call i32 @llvm.ctpop.i32(i32 %214) #16
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  %218 = xor i8 %217, 1
  store i8 %218, i8* %213, align 1, !tbaa !2451
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %219, align 1, !tbaa !2451
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %221 = icmp eq i32 %209, 0
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %220, align 1, !tbaa !2451
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %224 = lshr i32 %209, 31
  %225 = trunc i32 %224 to i8
  store i8 %225, i8* %223, align 1, !tbaa !2451
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %226, align 1, !tbaa !2451
  %227 = load i32, i32* %ECX
  %228 = zext i32 %227 to i64
  %229 = load i64, i64* %PC
  %230 = add i64 %229, 3
  store i64 %230, i64* %PC
  %231 = shl i64 %228, 32
  %232 = ashr exact i64 %231, 32
  store i64 %232, i64* %RSI, align 8, !tbaa !2428
  %233 = load i64, i64* %RAX
  %234 = load i64, i64* %RSI
  %235 = add i64 %234, %233
  %236 = load i64, i64* %PC
  %237 = add i64 %236, 4
  store i64 %237, i64* %PC
  %238 = inttoptr i64 %235 to i8*
  store i8 0, i8* %238
  %239 = load i64, i64* %RBP
  %240 = sub i64 %239, 20
  %241 = load i64, i64* %PC
  %242 = add i64 %241, 7
  store i64 %242, i64* %PC
  %243 = inttoptr i64 %240 to i32*
  store i32 0, i32* %243
  br label %block_4010bc

block_4010bc:                                     ; preds = %block_401112, %block_401080
  %MEMORY.0 = phi %struct.Memory* [ %182, %block_401080 ], [ %598, %block_401112 ]
  %244 = load i64, i64* %RBP
  %245 = sub i64 %244, 20
  %246 = load i64, i64* %PC
  %247 = add i64 %246, 3
  store i64 %247, i64* %PC
  %248 = inttoptr i64 %245 to i32*
  %249 = load i32, i32* %248
  %250 = zext i32 %249 to i64
  store i64 %250, i64* %RAX, align 8, !tbaa !2428
  %251 = load i32, i32* %EAX
  %252 = zext i32 %251 to i64
  %253 = load i64, i64* %RBP
  %254 = sub i64 %253, 4
  %255 = load i64, i64* %PC
  %256 = add i64 %255, 3
  store i64 %256, i64* %PC
  %257 = inttoptr i64 %254 to i32*
  %258 = load i32, i32* %257
  %259 = sub i32 %251, %258
  %260 = icmp ult i32 %251, %258
  %261 = zext i1 %260 to i8
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %261, i8* %262, align 1, !tbaa !2432
  %263 = and i32 %259, 255
  %264 = call i32 @llvm.ctpop.i32(i32 %263) #16
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  %267 = xor i8 %266, 1
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %267, i8* %268, align 1, !tbaa !2446
  %269 = xor i32 %258, %251
  %270 = xor i32 %269, %259
  %271 = lshr i32 %270, 4
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %273, i8* %274, align 1, !tbaa !2447
  %275 = icmp eq i32 %259, 0
  %276 = zext i1 %275 to i8
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %276, i8* %277, align 1, !tbaa !2448
  %278 = lshr i32 %259, 31
  %279 = trunc i32 %278 to i8
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %279, i8* %280, align 1, !tbaa !2449
  %281 = lshr i32 %251, 31
  %282 = lshr i32 %258, 31
  %283 = xor i32 %282, %281
  %284 = xor i32 %278, %281
  %285 = add nuw nsw i32 %284, %283
  %286 = icmp eq i32 %285, 2
  %287 = zext i1 %286 to i8
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %287, i8* %288, align 1, !tbaa !2450
  %289 = load i64, i64* %PC
  %290 = add i64 %289, 114
  %291 = load i64, i64* %PC
  %292 = add i64 %291, 6
  %293 = load i64, i64* %PC
  %294 = add i64 %293, 6
  store i64 %294, i64* %PC
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %296 = load i8, i8* %295, align 1, !tbaa !2449
  %297 = icmp ne i8 %296, 0
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %299 = load i8, i8* %298, align 1, !tbaa !2450
  %300 = icmp ne i8 %299, 0
  %301 = xor i1 %297, %300
  %302 = xor i1 %301, true
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %305 = select i1 %301, i64 %292, i64 %290
  store i64 %305, i64* %304, align 8, !tbaa !2428
  %306 = load i8, i8* %BRANCH_TAKEN
  %307 = icmp eq i8 %306, 1
  %308 = load i64, i64* %RBP
  br i1 %307, label %block_401134, label %block_4010c8

block_401134:                                     ; preds = %block_4010bc
  %309 = sub i64 %308, 32
  %310 = load i64, i64* %PC
  %311 = add i64 %310, 4
  store i64 %311, i64* %PC
  %312 = inttoptr i64 %309 to i64*
  %313 = load i64, i64* %312
  store i64 %313, i64* %RDI, align 8, !tbaa !2428
  %314 = load i64, i64* %PC
  %315 = sub i64 %314, 2936
  %316 = load i64, i64* %PC
  %317 = add i64 %316, 5
  %318 = load i64, i64* %PC
  %319 = add i64 %318, 5
  store i64 %319, i64* %PC
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %321 = load i64, i64* %320, align 8, !tbaa !2428
  %322 = add i64 %321, -8
  %323 = inttoptr i64 %322 to i64*
  store i64 %317, i64* %323
  store i64 %322, i64* %320, align 8, !tbaa !2428
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %315, i64* %324, align 8, !tbaa !2428
  %325 = load i64, i64* %PC
  %326 = call %struct.Memory* @ext_4005c0_free(%struct.State* %0, i64 %325, %struct.Memory* %MEMORY.0)
  %327 = load i64, i64* %RSP
  %328 = load i64, i64* %PC
  %329 = add i64 %328, 4
  store i64 %329, i64* %PC
  %330 = add i64 48, %327
  store i64 %330, i64* %RSP, align 8, !tbaa !2428
  %331 = icmp ult i64 %330, %327
  %332 = icmp ult i64 %330, 48
  %333 = or i1 %331, %332
  %334 = zext i1 %333 to i8
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %334, i8* %335, align 1, !tbaa !2432
  %336 = trunc i64 %330 to i32
  %337 = and i32 %336, 255
  %338 = call i32 @llvm.ctpop.i32(i32 %337) #16
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  %341 = xor i8 %340, 1
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %341, i8* %342, align 1, !tbaa !2446
  %343 = xor i64 48, %327
  %344 = xor i64 %343, %330
  %345 = lshr i64 %344, 4
  %346 = trunc i64 %345 to i8
  %347 = and i8 %346, 1
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %347, i8* %348, align 1, !tbaa !2447
  %349 = icmp eq i64 %330, 0
  %350 = zext i1 %349 to i8
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %350, i8* %351, align 1, !tbaa !2448
  %352 = lshr i64 %330, 63
  %353 = trunc i64 %352 to i8
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %353, i8* %354, align 1, !tbaa !2449
  %355 = lshr i64 %327, 63
  %356 = xor i64 %352, %355
  %357 = add nuw nsw i64 %356, %352
  %358 = icmp eq i64 %357, 2
  %359 = zext i1 %358 to i8
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %359, i8* %360, align 1, !tbaa !2450
  %361 = load i64, i64* %PC
  %362 = add i64 %361, 1
  store i64 %362, i64* %PC
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %364 = load i64, i64* %363, align 8, !tbaa !2428
  %365 = add i64 %364, 8
  %366 = inttoptr i64 %364 to i64*
  %367 = load i64, i64* %366
  store i64 %367, i64* %RBP, align 8, !tbaa !2428
  store i64 %365, i64* %363, align 8, !tbaa !2428
  %368 = load i64, i64* %PC
  %369 = add i64 %368, 1
  store i64 %369, i64* %PC
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %372 = load i64, i64* %371, align 8, !tbaa !2428
  %373 = inttoptr i64 %372 to i64*
  %374 = load i64, i64* %373
  store i64 %374, i64* %370, align 8, !tbaa !2428
  %375 = add i64 %372, 8
  store i64 %375, i64* %371, align 8, !tbaa !2428
  ret %struct.Memory* %326

block_4010db:                                     ; preds = %block_4010cf
  %376 = sub i64 %725, 16
  %377 = load i64, i64* %PC
  %378 = add i64 %377, 4
  store i64 %378, i64* %PC
  %379 = inttoptr i64 %376 to i64*
  %380 = load i64, i64* %379
  store i64 %380, i64* %RAX, align 8, !tbaa !2428
  %381 = load i64, i64* %RBP
  %382 = sub i64 %381, 20
  %383 = load i64, i64* %PC
  %384 = add i64 %383, 4
  store i64 %384, i64* %PC
  %385 = inttoptr i64 %382 to i32*
  %386 = load i32, i32* %385
  %387 = sext i32 %386 to i64
  store i64 %387, i64* %RCX, align 8, !tbaa !2428
  %388 = load i64, i64* %RCX
  %389 = load i64, i64* %PC
  %390 = add i64 %389, 4
  store i64 %390, i64* %PC
  %391 = shl i64 %388, 12
  %392 = icmp slt i64 %391, 0
  %393 = shl i64 %391, 1
  store i64 %393, i64* %RCX, align 8, !tbaa !2428
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %395 = zext i1 %392 to i8
  store i8 %395, i8* %394, align 1, !tbaa !2451
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %397 = trunc i64 %393 to i32
  %398 = and i32 %397, 254
  %399 = call i32 @llvm.ctpop.i32(i32 %398) #16
  %400 = trunc i32 %399 to i8
  %401 = and i8 %400, 1
  %402 = xor i8 %401, 1
  store i8 %402, i8* %396, align 1, !tbaa !2451
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %403, align 1, !tbaa !2451
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %405 = icmp eq i64 %393, 0
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %404, align 1, !tbaa !2451
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %408 = lshr i64 %393, 63
  %409 = trunc i64 %408 to i8
  store i8 %409, i8* %407, align 1, !tbaa !2451
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %410, align 1, !tbaa !2451
  %411 = load i64, i64* %RAX
  %412 = load i64, i64* %RCX
  %413 = load i64, i64* %PC
  %414 = add i64 %413, 3
  store i64 %414, i64* %PC
  %415 = add i64 %412, %411
  store i64 %415, i64* %RAX, align 8, !tbaa !2428
  %416 = icmp ult i64 %415, %411
  %417 = icmp ult i64 %415, %412
  %418 = or i1 %416, %417
  %419 = zext i1 %418 to i8
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %419, i8* %420, align 1, !tbaa !2432
  %421 = trunc i64 %415 to i32
  %422 = and i32 %421, 255
  %423 = call i32 @llvm.ctpop.i32(i32 %422) #16
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  %426 = xor i8 %425, 1
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %426, i8* %427, align 1, !tbaa !2446
  %428 = xor i64 %412, %411
  %429 = xor i64 %428, %415
  %430 = lshr i64 %429, 4
  %431 = trunc i64 %430 to i8
  %432 = and i8 %431, 1
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %432, i8* %433, align 1, !tbaa !2447
  %434 = icmp eq i64 %415, 0
  %435 = zext i1 %434 to i8
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %435, i8* %436, align 1, !tbaa !2448
  %437 = lshr i64 %415, 63
  %438 = trunc i64 %437 to i8
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %438, i8* %439, align 1, !tbaa !2449
  %440 = lshr i64 %411, 63
  %441 = lshr i64 %412, 63
  %442 = xor i64 %437, %440
  %443 = xor i64 %437, %441
  %444 = add nuw nsw i64 %442, %443
  %445 = icmp eq i64 %444, 2
  %446 = zext i1 %445 to i8
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %446, i8* %447, align 1, !tbaa !2450
  %448 = load i64, i64* %RBP
  %449 = sub i64 %448, 24
  %450 = load i64, i64* %PC
  %451 = add i64 %450, 4
  store i64 %451, i64* %PC
  %452 = inttoptr i64 %449 to i32*
  %453 = load i32, i32* %452
  %454 = sext i32 %453 to i64
  store i64 %454, i64* %RCX, align 8, !tbaa !2428
  %455 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %456 = load i64, i64* %RAX
  %457 = load i64, i64* %RCX
  %458 = mul i64 %457, 8
  %459 = add i64 %458, %456
  %460 = load i64, i64* %PC
  %461 = add i64 %460, 5
  store i64 %461, i64* %PC
  %462 = inttoptr i64 %459 to double*
  %463 = load double, double* %462
  %464 = bitcast i8* %455 to double*
  store double %463, double* %464, align 1, !tbaa !2452
  %465 = getelementptr inbounds i8, i8* %455, i64 8
  %466 = bitcast i8* %465 to double*
  store double 0.000000e+00, double* %466, align 1, !tbaa !2452
  %467 = load i64, i64* %RBP
  %468 = sub i64 %467, 24
  %469 = load i64, i64* %PC
  %470 = add i64 %469, 3
  store i64 %470, i64* %PC
  %471 = inttoptr i64 %468 to i32*
  %472 = load i32, i32* %471
  %473 = zext i32 %472 to i64
  store i64 %473, i64* %RDX, align 8, !tbaa !2428
  %474 = load i64, i64* %RDX
  %475 = load i64, i64* %PC
  %476 = add i64 %475, 3
  store i64 %476, i64* %PC
  %477 = and i64 %474, 4294967295
  %478 = shl i64 %477, 3
  %479 = trunc i64 %478 to i32
  %480 = icmp slt i32 %479, 0
  %481 = shl i32 %479, 1
  %482 = zext i32 %481 to i64
  store i64 %482, i64* %RDX, align 8, !tbaa !2428
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %484 = zext i1 %480 to i8
  store i8 %484, i8* %483, align 1, !tbaa !2451
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %486 = and i32 %481, 254
  %487 = call i32 @llvm.ctpop.i32(i32 %486) #16
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  %490 = xor i8 %489, 1
  store i8 %490, i8* %485, align 1, !tbaa !2451
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %491, align 1, !tbaa !2451
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %493 = icmp eq i32 %481, 0
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %492, align 1, !tbaa !2451
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %496 = lshr i32 %481, 31
  %497 = trunc i32 %496 to i8
  store i8 %497, i8* %495, align 1, !tbaa !2451
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %498, align 1, !tbaa !2451
  %499 = load i64, i64* %RBP
  %500 = sub i64 %499, 32
  %501 = load i64, i64* %PC
  %502 = add i64 %501, 4
  store i64 %502, i64* %PC
  %503 = inttoptr i64 %500 to i64*
  %504 = load i64, i64* %503
  store i64 %504, i64* %RSI, align 8, !tbaa !2428
  %505 = load i32, i32* %EDX
  %506 = zext i32 %505 to i64
  %507 = load i64, i64* %PC
  %508 = add i64 %507, 2
  store i64 %508, i64* %PC
  %509 = and i64 %506, 4294967295
  store i64 %509, i64* %RDI, align 8, !tbaa !2428
  %510 = load i64, i64* %PC
  %511 = add i64 %510, 81
  %512 = load i64, i64* %PC
  %513 = add i64 %512, 5
  %514 = load i64, i64* %PC
  %515 = add i64 %514, 5
  store i64 %515, i64* %PC
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %517 = load i64, i64* %516, align 8, !tbaa !2428
  %518 = add i64 %517, -8
  %519 = inttoptr i64 %518 to i64*
  store i64 %513, i64* %519
  store i64 %518, i64* %516, align 8, !tbaa !2428
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %511, i64* %520, align 8, !tbaa !2428
  %521 = load i64, i64* %PC
  %522 = call %struct.Memory* @sub_401150_print_element_renamed_(%struct.State* %0, i64 %521, %struct.Memory* %MEMORY.1)
  %523 = load i64, i64* %RBP
  %524 = sub i64 %523, 24
  %525 = load i64, i64* %PC
  %526 = add i64 %525, 3
  store i64 %526, i64* %PC
  %527 = inttoptr i64 %524 to i32*
  %528 = load i32, i32* %527
  %529 = zext i32 %528 to i64
  store i64 %529, i64* %RAX, align 8, !tbaa !2428
  %530 = load i64, i64* %RAX
  %531 = load i64, i64* %PC
  %532 = add i64 %531, 3
  store i64 %532, i64* %PC
  %533 = trunc i64 %530 to i32
  %534 = add i32 1, %533
  %535 = zext i32 %534 to i64
  store i64 %535, i64* %RAX, align 8, !tbaa !2428
  %536 = icmp ult i32 %534, %533
  %537 = icmp ult i32 %534, 1
  %538 = or i1 %536, %537
  %539 = zext i1 %538 to i8
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %539, i8* %540, align 1, !tbaa !2432
  %541 = and i32 %534, 255
  %542 = call i32 @llvm.ctpop.i32(i32 %541) #16
  %543 = trunc i32 %542 to i8
  %544 = and i8 %543, 1
  %545 = xor i8 %544, 1
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %545, i8* %546, align 1, !tbaa !2446
  %547 = xor i64 1, %530
  %548 = trunc i64 %547 to i32
  %549 = xor i32 %548, %534
  %550 = lshr i32 %549, 4
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %552, i8* %553, align 1, !tbaa !2447
  %554 = icmp eq i32 %534, 0
  %555 = zext i1 %554 to i8
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %555, i8* %556, align 1, !tbaa !2448
  %557 = lshr i32 %534, 31
  %558 = trunc i32 %557 to i8
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %558, i8* %559, align 1, !tbaa !2449
  %560 = lshr i32 %533, 31
  %561 = xor i32 %557, %560
  %562 = add nuw nsw i32 %561, %557
  %563 = icmp eq i32 %562, 2
  %564 = zext i1 %563 to i8
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %564, i8* %565, align 1, !tbaa !2450
  %566 = load i64, i64* %RBP
  %567 = sub i64 %566, 24
  %568 = load i32, i32* %EAX
  %569 = zext i32 %568 to i64
  %570 = load i64, i64* %PC
  %571 = add i64 %570, 3
  store i64 %571, i64* %PC
  %572 = inttoptr i64 %567 to i32*
  store i32 %568, i32* %572
  %573 = load i64, i64* %PC
  %574 = sub i64 %573, 62
  %575 = load i64, i64* %PC
  %576 = add i64 %575, 5
  store i64 %576, i64* %PC
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %574, i64* %577, align 8, !tbaa !2428
  br label %block_4010cf

block_401112:                                     ; preds = %block_4010cf
  %578 = sub i64 %725, 32
  %579 = load i64, i64* %PC
  %580 = add i64 %579, 4
  store i64 %580, i64* %PC
  %581 = inttoptr i64 %578 to i64*
  %582 = load i64, i64* %581
  store i64 %582, i64* %RDI, align 8, !tbaa !2428
  %583 = load i64, i64* %PC
  %584 = add i64 %583, 8
  store i64 %584, i64* %PC
  %585 = load i64, i64* @stderr
  store i64 %585, i64* %RSI, align 8, !tbaa !2428
  %586 = load i64, i64* %PC
  %587 = sub i64 %586, 2878
  %588 = load i64, i64* %PC
  %589 = add i64 %588, 5
  %590 = load i64, i64* %PC
  %591 = add i64 %590, 5
  store i64 %591, i64* %PC
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %593 = load i64, i64* %592, align 8, !tbaa !2428
  %594 = add i64 %593, -8
  %595 = inttoptr i64 %594 to i64*
  store i64 %589, i64* %595
  store i64 %594, i64* %592, align 8, !tbaa !2428
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %587, i64* %596, align 8, !tbaa !2428
  %597 = load i64, i64* %PC
  %598 = call %struct.Memory* @ext_4005e0_fputs(%struct.State* %0, i64 %597, %struct.Memory* %MEMORY.1)
  %599 = load i64, i64* %RBP
  %600 = sub i64 %599, 36
  %601 = load i32, i32* %EAX
  %602 = zext i32 %601 to i64
  %603 = load i64, i64* %PC
  %604 = add i64 %603, 3
  store i64 %604, i64* %PC
  %605 = inttoptr i64 %600 to i32*
  store i32 %601, i32* %605
  %606 = load i64, i64* %RBP
  %607 = sub i64 %606, 20
  %608 = load i64, i64* %PC
  %609 = add i64 %608, 3
  store i64 %609, i64* %PC
  %610 = inttoptr i64 %607 to i32*
  %611 = load i32, i32* %610
  %612 = zext i32 %611 to i64
  store i64 %612, i64* %RAX, align 8, !tbaa !2428
  %613 = load i64, i64* %RAX
  %614 = load i64, i64* %PC
  %615 = add i64 %614, 3
  store i64 %615, i64* %PC
  %616 = trunc i64 %613 to i32
  %617 = add i32 1, %616
  %618 = zext i32 %617 to i64
  store i64 %618, i64* %RAX, align 8, !tbaa !2428
  %619 = icmp ult i32 %617, %616
  %620 = icmp ult i32 %617, 1
  %621 = or i1 %619, %620
  %622 = zext i1 %621 to i8
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %622, i8* %623, align 1, !tbaa !2432
  %624 = and i32 %617, 255
  %625 = call i32 @llvm.ctpop.i32(i32 %624) #16
  %626 = trunc i32 %625 to i8
  %627 = and i8 %626, 1
  %628 = xor i8 %627, 1
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %628, i8* %629, align 1, !tbaa !2446
  %630 = xor i64 1, %613
  %631 = trunc i64 %630 to i32
  %632 = xor i32 %631, %617
  %633 = lshr i32 %632, 4
  %634 = trunc i32 %633 to i8
  %635 = and i8 %634, 1
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %635, i8* %636, align 1, !tbaa !2447
  %637 = icmp eq i32 %617, 0
  %638 = zext i1 %637 to i8
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %638, i8* %639, align 1, !tbaa !2448
  %640 = lshr i32 %617, 31
  %641 = trunc i32 %640 to i8
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %641, i8* %642, align 1, !tbaa !2449
  %643 = lshr i32 %616, 31
  %644 = xor i32 %640, %643
  %645 = add nuw nsw i32 %644, %640
  %646 = icmp eq i32 %645, 2
  %647 = zext i1 %646 to i8
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %647, i8* %648, align 1, !tbaa !2450
  %649 = load i64, i64* %RBP
  %650 = sub i64 %649, 20
  %651 = load i32, i32* %EAX
  %652 = zext i32 %651 to i64
  %653 = load i64, i64* %PC
  %654 = add i64 %653, 3
  store i64 %654, i64* %PC
  %655 = inttoptr i64 %650 to i32*
  store i32 %651, i32* %655
  %656 = load i64, i64* %PC
  %657 = sub i64 %656, 115
  %658 = load i64, i64* %PC
  %659 = add i64 %658, 5
  store i64 %659, i64* %PC
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %657, i64* %660, align 8, !tbaa !2428
  br label %block_4010bc

block_4010cf:                                     ; preds = %block_4010c8, %block_4010db
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_4010c8 ], [ %522, %block_4010db ]
  %661 = load i64, i64* %RBP
  %662 = sub i64 %661, 24
  %663 = load i64, i64* %PC
  %664 = add i64 %663, 3
  store i64 %664, i64* %PC
  %665 = inttoptr i64 %662 to i32*
  %666 = load i32, i32* %665
  %667 = zext i32 %666 to i64
  store i64 %667, i64* %RAX, align 8, !tbaa !2428
  %668 = load i32, i32* %EAX
  %669 = zext i32 %668 to i64
  %670 = load i64, i64* %RBP
  %671 = sub i64 %670, 4
  %672 = load i64, i64* %PC
  %673 = add i64 %672, 3
  store i64 %673, i64* %PC
  %674 = inttoptr i64 %671 to i32*
  %675 = load i32, i32* %674
  %676 = sub i32 %668, %675
  %677 = icmp ult i32 %668, %675
  %678 = zext i1 %677 to i8
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %678, i8* %679, align 1, !tbaa !2432
  %680 = and i32 %676, 255
  %681 = call i32 @llvm.ctpop.i32(i32 %680) #16
  %682 = trunc i32 %681 to i8
  %683 = and i8 %682, 1
  %684 = xor i8 %683, 1
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %684, i8* %685, align 1, !tbaa !2446
  %686 = xor i32 %675, %668
  %687 = xor i32 %686, %676
  %688 = lshr i32 %687, 4
  %689 = trunc i32 %688 to i8
  %690 = and i8 %689, 1
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %690, i8* %691, align 1, !tbaa !2447
  %692 = icmp eq i32 %676, 0
  %693 = zext i1 %692 to i8
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %693, i8* %694, align 1, !tbaa !2448
  %695 = lshr i32 %676, 31
  %696 = trunc i32 %695 to i8
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %696, i8* %697, align 1, !tbaa !2449
  %698 = lshr i32 %668, 31
  %699 = lshr i32 %675, 31
  %700 = xor i32 %699, %698
  %701 = xor i32 %695, %698
  %702 = add nuw nsw i32 %701, %700
  %703 = icmp eq i32 %702, 2
  %704 = zext i1 %703 to i8
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %704, i8* %705, align 1, !tbaa !2450
  %706 = load i64, i64* %PC
  %707 = add i64 %706, 61
  %708 = load i64, i64* %PC
  %709 = add i64 %708, 6
  %710 = load i64, i64* %PC
  %711 = add i64 %710, 6
  store i64 %711, i64* %PC
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %713 = load i8, i8* %712, align 1, !tbaa !2449
  %714 = icmp ne i8 %713, 0
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %716 = load i8, i8* %715, align 1, !tbaa !2450
  %717 = icmp ne i8 %716, 0
  %718 = xor i1 %714, %717
  %719 = xor i1 %718, true
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %722 = select i1 %718, i64 %709, i64 %707
  store i64 %722, i64* %721, align 8, !tbaa !2428
  %723 = load i8, i8* %BRANCH_TAKEN
  %724 = icmp eq i8 %723, 1
  %725 = load i64, i64* %RBP
  br i1 %724, label %block_401112, label %block_4010db

block_4010c8:                                     ; preds = %block_4010bc
  %726 = sub i64 %308, 24
  %727 = load i64, i64* %PC
  %728 = add i64 %727, 7
  store i64 %728, i64* %PC
  %729 = inttoptr i64 %726 to i32*
  store i32 0, i32* %729
  br label %block_4010cf
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007c0_polybench_timer_start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4007c0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RBP
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 1
  store i64 %16, i64* %PC
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %18 = load i64, i64* %17, align 8, !tbaa !2428
  %19 = add i64 %18, -8
  %20 = inttoptr i64 %19 to i64*
  store i64 %14, i64* %20
  store i64 %19, i64* %17, align 8, !tbaa !2428
  %21 = load i64, i64* %RSP
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 3
  store i64 %23, i64* %PC
  store i64 %21, i64* %RBP, align 8, !tbaa !2428
  %24 = load i64, i64* %PC
  %25 = sub i64 %24, 20
  %26 = load i64, i64* %PC
  %27 = add i64 %26, 5
  %28 = load i64, i64* %PC
  %29 = add i64 %28, 5
  store i64 %29, i64* %PC
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %31 = load i64, i64* %30, align 8, !tbaa !2428
  %32 = add i64 %31, -8
  %33 = inttoptr i64 %32 to i64*
  store i64 %27, i64* %33
  store i64 %32, i64* %30, align 8, !tbaa !2428
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %25, i64* %34, align 8, !tbaa !2428
  %35 = load i64, i64* %PC
  %36 = call %struct.Memory* @sub_4007b0_polybench_prepare_instruments_renamed_(%struct.State* %0, i64 %35, %struct.Memory* %2)
  %37 = load i64, i64* %PC
  %38 = add i64 %37, 23
  %39 = load i64, i64* %PC
  %40 = add i64 %39, 5
  %41 = load i64, i64* %PC
  %42 = add i64 %41, 5
  store i64 %42, i64* %PC
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %44 = load i64, i64* %43, align 8, !tbaa !2428
  %45 = add i64 %44, -8
  %46 = inttoptr i64 %45 to i64*
  store i64 %40, i64* %46
  store i64 %45, i64* %43, align 8, !tbaa !2428
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %38, i64* %47, align 8, !tbaa !2428
  %48 = load i64, i64* %PC
  %49 = call %struct.Memory* @sub_4007e0_rtclock_renamed_(%struct.State* %0, i64 %48, %struct.Memory* %36)
  %50 = bitcast %union.vec128_t* %XMM0 to i8*
  %51 = load i64, i64* %PC
  %52 = add i64 %51, 9
  store i64 %52, i64* %PC
  %53 = bitcast i8* %50 to double*
  %54 = load double, double* %53, align 1
  store double %54, double* bitcast (%polybench_t_start_type* @polybench_t_start to double*)
  %55 = load i64, i64* %PC
  %56 = add i64 %55, 1
  store i64 %56, i64* %PC
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %58 = load i64, i64* %57, align 8, !tbaa !2428
  %59 = add i64 %58, 8
  %60 = inttoptr i64 %58 to i64*
  %61 = load i64, i64* %60
  store i64 %61, i64* %RBP, align 8, !tbaa !2428
  store i64 %59, i64* %57, align 8, !tbaa !2428
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 1
  store i64 %63, i64* %PC
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %66 = load i64, i64* %65, align 8, !tbaa !2428
  %67 = inttoptr i64 %66 to i64*
  %68 = load i64, i64* %67
  store i64 %68, i64* %64, align 8, !tbaa !2428
  %69 = add i64 %66, 8
  store i64 %69, i64* %65, align 8, !tbaa !2428
  ret %struct.Memory* %49
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006f0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4006f0:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 7
  store i64 %13, i64* %PC
  %14 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 8) to i8*)
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1, !tbaa !2432
  %16 = zext i8 %14 to i32
  %17 = call i32 @llvm.ctpop.i32(i32 %16) #16
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1, !tbaa !2446
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1, !tbaa !2447
  %23 = icmp eq i8 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1, !tbaa !2448
  %26 = lshr i8 %14, 7
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1, !tbaa !2449
  %28 = lshr i8 %14, 7
  %29 = xor i8 %26, %28
  %30 = add nuw nsw i8 %29, %28
  %31 = icmp eq i8 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1, !tbaa !2450
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 25
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 2
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 2
  store i64 %39, i64* %PC
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %41 = load i8, i8* %40, align 1, !tbaa !2448
  %42 = icmp eq i8 %41, 0
  %43 = zext i1 %42 to i8
  store i8 %43, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %45 = select i1 %42, i64 %35, i64 %37
  store i64 %45, i64* %44, align 8, !tbaa !2428
  %46 = load i8, i8* %BRANCH_TAKEN
  %47 = icmp eq i8 %46, 1
  br i1 %47, label %block_400710, label %block_4006f9

block_400710:                                     ; preds = %block_4006f0
  %48 = load i64, i64* %PC
  %49 = add i64 %48, 2
  store i64 %49, i64* %PC
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8, !tbaa !2428
  %53 = inttoptr i64 %52 to i64*
  %54 = load i64, i64* %53
  store i64 %54, i64* %50, align 8, !tbaa !2428
  %55 = add i64 %52, 8
  store i64 %55, i64* %51, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4006f9:                                     ; preds = %block_4006f0
  %56 = load i64, i64* %RBP
  %57 = load i64, i64* %PC
  %58 = add i64 %57, 1
  store i64 %58, i64* %PC
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %60 = load i64, i64* %59, align 8, !tbaa !2428
  %61 = add i64 %60, -8
  %62 = inttoptr i64 %61 to i64*
  store i64 %56, i64* %62
  store i64 %61, i64* %59, align 8, !tbaa !2428
  %63 = load i64, i64* %RSP
  %64 = load i64, i64* %PC
  %65 = add i64 %64, 3
  store i64 %65, i64* %PC
  store i64 %63, i64* %RBP, align 8, !tbaa !2428
  %66 = load i64, i64* %PC
  %67 = sub i64 %66, 125
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 5
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 5
  store i64 %71, i64* %PC
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %73 = load i64, i64* %72, align 8, !tbaa !2428
  %74 = add i64 %73, -8
  %75 = inttoptr i64 %74 to i64*
  store i64 %69, i64* %75
  store i64 %74, i64* %72, align 8, !tbaa !2428
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %67, i64* %76, align 8, !tbaa !2428
  %77 = load i64, i64* %PC
  %78 = call %struct.Memory* @sub_400680_deregister_tm_clones_renamed_(%struct.State* %0, i64 %77, %struct.Memory* %2)
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 7
  store i64 %80, i64* %PC
  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 8) to i8*)
  %81 = load i64, i64* %PC
  %82 = add i64 %81, 1
  store i64 %82, i64* %PC
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %84 = load i64, i64* %83, align 8, !tbaa !2428
  %85 = add i64 %84, 8
  %86 = inttoptr i64 %84 to i64*
  %87 = load i64, i64* %86
  store i64 %87, i64* %RBP, align 8, !tbaa !2428
  store i64 %85, i64* %83, align 8, !tbaa !2428
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 1
  store i64 %89, i64* %PC
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %92 = load i64, i64* %91, align 8, !tbaa !2428
  %93 = inttoptr i64 %92 to i64*
  %94 = load i64, i64* %93
  store i64 %94, i64* %90, align 8, !tbaa !2428
  %95 = add i64 %92, 8
  store i64 %95, i64* %91, align 8, !tbaa !2428
  ret %struct.Memory* %78
}

; Function Attrs: noinline
define %struct.Memory* @sub_400910_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400910:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %EDI = bitcast %union.anon* %14 to i32*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RAX = bitcast %union.anon* %17 to i64*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RCX = bitcast %union.anon* %20 to i64*
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.GPR, %struct.GPR* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.Reg, %struct.Reg* %22, i32 0, i32 0
  %RDX = bitcast %union.anon* %23 to i64*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.GPR, %struct.GPR* %24, i32 0, i32 9
  %26 = getelementptr inbounds %struct.Reg, %struct.Reg* %25, i32 0, i32 0
  %RSI = bitcast %union.anon* %26 to i64*
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 11
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %RDI = bitcast %union.anon* %29 to i64*
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %31 = getelementptr inbounds %struct.GPR, %struct.GPR* %30, i32 0, i32 13
  %32 = getelementptr inbounds %struct.Reg, %struct.Reg* %31, i32 0, i32 0
  %RSP = bitcast %union.anon* %32 to i64*
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %34 = getelementptr inbounds %struct.GPR, %struct.GPR* %33, i32 0, i32 15
  %35 = getelementptr inbounds %struct.Reg, %struct.Reg* %34, i32 0, i32 0
  %RBP = bitcast %union.anon* %35 to i64*
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %37 = getelementptr inbounds %struct.GPR, %struct.GPR* %36, i32 0, i32 17
  %38 = getelementptr inbounds %struct.Reg, %struct.Reg* %37, i32 0, i32 0
  %R8 = bitcast %union.anon* %38 to i64*
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 19
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0
  %R9 = bitcast %union.anon* %41 to i64*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 21
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %R10 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %46 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %45, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %46 to %"class.std::bitset"*
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %48 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %47, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %48 to %"class.std::bitset"*
  %49 = load i64, i64* %RBP
  %50 = load i64, i64* %PC
  %51 = add i64 %50, 1
  store i64 %51, i64* %PC
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %53 = load i64, i64* %52, align 8, !tbaa !2428
  %54 = add i64 %53, -8
  %55 = inttoptr i64 %54 to i64*
  store i64 %49, i64* %55
  store i64 %54, i64* %52, align 8, !tbaa !2428
  %56 = load i64, i64* %RSP
  %57 = load i64, i64* %PC
  %58 = add i64 %57, 3
  store i64 %58, i64* %PC
  store i64 %56, i64* %RBP, align 8, !tbaa !2428
  %59 = load i64, i64* %RSP
  %60 = load i64, i64* %PC
  %61 = add i64 %60, 4
  store i64 %61, i64* %PC
  %62 = sub i64 %59, 96
  store i64 %62, i64* %RSP, align 8, !tbaa !2428
  %63 = icmp ult i64 %59, 96
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %64, i8* %65, align 1, !tbaa !2432
  %66 = trunc i64 %62 to i32
  %67 = and i32 %66, 255
  %68 = call i32 @llvm.ctpop.i32(i32 %67) #16
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 1
  %71 = xor i8 %70, 1
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %71, i8* %72, align 1, !tbaa !2446
  %73 = xor i64 96, %59
  %74 = xor i64 %73, %62
  %75 = lshr i64 %74, 4
  %76 = trunc i64 %75 to i8
  %77 = and i8 %76, 1
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %77, i8* %78, align 1, !tbaa !2447
  %79 = icmp eq i64 %62, 0
  %80 = zext i1 %79 to i8
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %80, i8* %81, align 1, !tbaa !2448
  %82 = lshr i64 %62, 63
  %83 = trunc i64 %82 to i8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %83, i8* %84, align 1, !tbaa !2449
  %85 = lshr i64 %59, 63
  %86 = xor i64 %82, %85
  %87 = add nuw nsw i64 %86, %85
  %88 = icmp eq i64 %87, 2
  %89 = zext i1 %88 to i8
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %89, i8* %90, align 1, !tbaa !2450
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 5
  store i64 %92, i64* %PC
  store i64 1048576, i64* %RAX, align 8, !tbaa !2428
  %93 = load i32, i32* %EAX
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 2
  store i64 %96, i64* %PC
  %97 = and i64 %94, 4294967295
  store i64 %97, i64* %RCX, align 8, !tbaa !2428
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 5
  store i64 %99, i64* %PC
  store i64 8, i64* %RAX, align 8, !tbaa !2428
  %100 = load i64, i64* %RBP
  %101 = sub i64 %100, 4
  %102 = load i64, i64* %PC
  %103 = add i64 %102, 7
  store i64 %103, i64* %PC
  %104 = inttoptr i64 %101 to i32*
  store i32 0, i32* %104
  %105 = load i64, i64* %RBP
  %106 = sub i64 %105, 8
  %107 = load i32, i32* %EDI
  %108 = zext i32 %107 to i64
  %109 = load i64, i64* %PC
  %110 = add i64 %109, 3
  store i64 %110, i64* %PC
  %111 = inttoptr i64 %106 to i32*
  store i32 %107, i32* %111
  %112 = load i64, i64* %RBP
  %113 = sub i64 %112, 16
  %114 = load i64, i64* %RSI
  %115 = load i64, i64* %PC
  %116 = add i64 %115, 4
  store i64 %116, i64* %PC
  %117 = inttoptr i64 %113 to i64*
  store i64 %114, i64* %117
  %118 = load i64, i64* %RBP
  %119 = sub i64 %118, 20
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 7
  store i64 %121, i64* %PC
  %122 = inttoptr i64 %119 to i32*
  store i32 1024, i32* %122
  %123 = load i64, i64* %RBP
  %124 = sub i64 %123, 24
  %125 = load i64, i64* %PC
  %126 = add i64 %125, 7
  store i64 %126, i64* %PC
  %127 = inttoptr i64 %124 to i32*
  store i32 1024, i32* %127
  %128 = load i64, i64* %RCX
  %129 = load i64, i64* %PC
  %130 = add i64 %129, 3
  store i64 %130, i64* %PC
  store i64 %128, i64* %RDI, align 8, !tbaa !2428
  %131 = load i32, i32* %EAX
  %132 = zext i32 %131 to i64
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 2
  store i64 %134, i64* %PC
  %135 = and i64 %132, 4294967295
  store i64 %135, i64* %RSI, align 8, !tbaa !2428
  %136 = load i64, i64* %PC
  %137 = sub i64 %136, 245
  %138 = load i64, i64* %PC
  %139 = add i64 %138, 5
  %140 = load i64, i64* %PC
  %141 = add i64 %140, 5
  store i64 %141, i64* %PC
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %143 = load i64, i64* %142, align 8, !tbaa !2428
  %144 = add i64 %143, -8
  %145 = inttoptr i64 %144 to i64*
  store i64 %139, i64* %145
  store i64 %144, i64* %142, align 8, !tbaa !2428
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %137, i64* %146, align 8, !tbaa !2428
  %147 = load i64, i64* %PC
  %148 = call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* %0, i64 %147, %struct.Memory* %2)
  %149 = load i64, i64* %PC
  %150 = add i64 %149, 5
  store i64 %150, i64* %PC
  store i64 1048576, i64* %RSI, align 8, !tbaa !2428
  %151 = load i32, i32* %ESI
  %152 = zext i32 %151 to i64
  %153 = load i64, i64* %PC
  %154 = add i64 %153, 2
  store i64 %154, i64* %PC
  %155 = and i64 %152, 4294967295
  store i64 %155, i64* %RDI, align 8, !tbaa !2428
  %156 = load i64, i64* %PC
  %157 = add i64 %156, 5
  store i64 %157, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %158 = load i64, i64* %RBP
  %159 = sub i64 %158, 48
  %160 = load i64, i64* %RAX
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 4
  store i64 %162, i64* %PC
  %163 = inttoptr i64 %159 to i64*
  store i64 %160, i64* %163
  %164 = load i64, i64* %PC
  %165 = sub i64 %164, 266
  %166 = load i64, i64* %PC
  %167 = add i64 %166, 5
  %168 = load i64, i64* %PC
  %169 = add i64 %168, 5
  store i64 %169, i64* %PC
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %171 = load i64, i64* %170, align 8, !tbaa !2428
  %172 = add i64 %171, -8
  %173 = inttoptr i64 %172 to i64*
  store i64 %167, i64* %173
  store i64 %172, i64* %170, align 8, !tbaa !2428
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %165, i64* %174, align 8, !tbaa !2428
  %175 = load i64, i64* %PC
  %176 = call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* %0, i64 %175, %struct.Memory* %148)
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 5
  store i64 %178, i64* %PC
  store i64 1048576, i64* %RSI, align 8, !tbaa !2428
  %179 = load i32, i32* %ESI
  %180 = zext i32 %179 to i64
  %181 = load i64, i64* %PC
  %182 = add i64 %181, 2
  store i64 %182, i64* %PC
  %183 = and i64 %180, 4294967295
  store i64 %183, i64* %RDI, align 8, !tbaa !2428
  %184 = load i64, i64* %PC
  %185 = add i64 %184, 5
  store i64 %185, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %186 = load i64, i64* %RBP
  %187 = sub i64 %186, 56
  %188 = load i64, i64* %RAX
  %189 = load i64, i64* %PC
  %190 = add i64 %189, 4
  store i64 %190, i64* %PC
  %191 = inttoptr i64 %187 to i64*
  store i64 %188, i64* %191
  %192 = load i64, i64* %PC
  %193 = sub i64 %192, 287
  %194 = load i64, i64* %PC
  %195 = add i64 %194, 5
  %196 = load i64, i64* %PC
  %197 = add i64 %196, 5
  store i64 %197, i64* %PC
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %199 = load i64, i64* %198, align 8, !tbaa !2428
  %200 = add i64 %199, -8
  %201 = inttoptr i64 %200 to i64*
  store i64 %195, i64* %201
  store i64 %200, i64* %198, align 8, !tbaa !2428
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %193, i64* %202, align 8, !tbaa !2428
  %203 = load i64, i64* %PC
  %204 = call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* %0, i64 %203, %struct.Memory* %176)
  %205 = load i64, i64* %PC
  %206 = add i64 %205, 5
  store i64 %206, i64* %PC
  store i64 1048576, i64* %RSI, align 8, !tbaa !2428
  %207 = load i32, i32* %ESI
  %208 = zext i32 %207 to i64
  %209 = load i64, i64* %PC
  %210 = add i64 %209, 2
  store i64 %210, i64* %PC
  %211 = and i64 %208, 4294967295
  store i64 %211, i64* %RDI, align 8, !tbaa !2428
  %212 = load i64, i64* %PC
  %213 = add i64 %212, 5
  store i64 %213, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %214 = load i64, i64* %RBP
  %215 = sub i64 %214, 64
  %216 = load i64, i64* %RAX
  %217 = load i64, i64* %PC
  %218 = add i64 %217, 4
  store i64 %218, i64* %PC
  %219 = inttoptr i64 %215 to i64*
  store i64 %216, i64* %219
  %220 = load i64, i64* %PC
  %221 = sub i64 %220, 308
  %222 = load i64, i64* %PC
  %223 = add i64 %222, 5
  %224 = load i64, i64* %PC
  %225 = add i64 %224, 5
  store i64 %225, i64* %PC
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %227 = load i64, i64* %226, align 8, !tbaa !2428
  %228 = add i64 %227, -8
  %229 = inttoptr i64 %228 to i64*
  store i64 %223, i64* %229
  store i64 %228, i64* %226, align 8, !tbaa !2428
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %221, i64* %230, align 8, !tbaa !2428
  %231 = load i64, i64* %PC
  %232 = call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* %0, i64 %231, %struct.Memory* %204)
  %233 = load i64, i64* %RBP
  %234 = sub i64 %233, 32
  %235 = load i64, i64* %PC
  %236 = add i64 %235, 4
  store i64 %236, i64* %PC
  store i64 %234, i64* %RDX, align 8, !tbaa !2428
  %237 = load i64, i64* %RBP
  %238 = sub i64 %237, 40
  %239 = load i64, i64* %PC
  %240 = add i64 %239, 4
  store i64 %240, i64* %PC
  store i64 %238, i64* %RCX, align 8, !tbaa !2428
  %241 = load i64, i64* %RBP
  %242 = sub i64 %241, 72
  %243 = load i64, i64* %RAX
  %244 = load i64, i64* %PC
  %245 = add i64 %244, 4
  store i64 %245, i64* %PC
  %246 = inttoptr i64 %242 to i64*
  store i64 %243, i64* %246
  %247 = load i64, i64* %RBP
  %248 = sub i64 %247, 20
  %249 = load i64, i64* %PC
  %250 = add i64 %249, 3
  store i64 %250, i64* %PC
  %251 = inttoptr i64 %248 to i32*
  %252 = load i32, i32* %251
  %253 = zext i32 %252 to i64
  store i64 %253, i64* %RDI, align 8, !tbaa !2428
  %254 = load i64, i64* %RBP
  %255 = sub i64 %254, 24
  %256 = load i64, i64* %PC
  %257 = add i64 %256, 3
  store i64 %257, i64* %PC
  %258 = inttoptr i64 %255 to i32*
  %259 = load i32, i32* %258
  %260 = zext i32 %259 to i64
  store i64 %260, i64* %RSI, align 8, !tbaa !2428
  %261 = load i64, i64* %RBP
  %262 = sub i64 %261, 48
  %263 = load i64, i64* %PC
  %264 = add i64 %263, 4
  store i64 %264, i64* %PC
  %265 = inttoptr i64 %262 to i64*
  %266 = load i64, i64* %265
  store i64 %266, i64* %R8, align 8, !tbaa !2428
  %267 = load i64, i64* %RBP
  %268 = sub i64 %267, 56
  %269 = load i64, i64* %PC
  %270 = add i64 %269, 4
  store i64 %270, i64* %PC
  %271 = inttoptr i64 %268 to i64*
  %272 = load i64, i64* %271
  store i64 %272, i64* %R9, align 8, !tbaa !2428
  %273 = load i64, i64* %RBP
  %274 = sub i64 %273, 64
  %275 = load i64, i64* %PC
  %276 = add i64 %275, 4
  store i64 %276, i64* %PC
  %277 = inttoptr i64 %274 to i64*
  %278 = load i64, i64* %277
  store i64 %278, i64* %RAX, align 8, !tbaa !2428
  %279 = load i64, i64* %RBP
  %280 = sub i64 %279, 72
  %281 = load i64, i64* %PC
  %282 = add i64 %281, 4
  store i64 %282, i64* %PC
  %283 = inttoptr i64 %280 to i64*
  %284 = load i64, i64* %283
  store i64 %284, i64* %R10, align 8, !tbaa !2428
  %285 = load i64, i64* %RSP
  %286 = load i64, i64* %RAX
  %287 = load i64, i64* %PC
  %288 = add i64 %287, 4
  store i64 %288, i64* %PC
  %289 = inttoptr i64 %285 to i64*
  store i64 %286, i64* %289
  %290 = load i64, i64* %RSP
  %291 = add i64 %290, 8
  %292 = load i64, i64* %R10
  %293 = load i64, i64* %PC
  %294 = add i64 %293, 5
  store i64 %294, i64* %PC
  %295 = inttoptr i64 %291 to i64*
  store i64 %292, i64* %295
  %296 = load i64, i64* %PC
  %297 = add i64 %296, 188
  %298 = load i64, i64* %PC
  %299 = add i64 %298, 5
  %300 = load i64, i64* %PC
  %301 = add i64 %300, 5
  store i64 %301, i64* %PC
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %303 = load i64, i64* %302, align 8, !tbaa !2428
  %304 = add i64 %303, -8
  %305 = inttoptr i64 %304 to i64*
  store i64 %299, i64* %305
  store i64 %304, i64* %302, align 8, !tbaa !2428
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %297, i64* %306, align 8, !tbaa !2428
  %307 = load i64, i64* %PC
  %308 = call %struct.Memory* @sub_400a70_init_array_renamed_(%struct.State* %0, i64 %307, %struct.Memory* %232)
  %309 = load i64, i64* %RBP
  %310 = sub i64 %309, 20
  %311 = load i64, i64* %PC
  %312 = add i64 %311, 3
  store i64 %312, i64* %PC
  %313 = inttoptr i64 %310 to i32*
  %314 = load i32, i32* %313
  %315 = zext i32 %314 to i64
  store i64 %315, i64* %RDI, align 8, !tbaa !2428
  %316 = load i64, i64* %RBP
  %317 = sub i64 %316, 24
  %318 = load i64, i64* %PC
  %319 = add i64 %318, 3
  store i64 %319, i64* %PC
  %320 = inttoptr i64 %317 to i32*
  %321 = load i32, i32* %320
  %322 = zext i32 %321 to i64
  store i64 %322, i64* %RSI, align 8, !tbaa !2428
  %323 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %324 = load i64, i64* %RBP
  %325 = sub i64 %324, 32
  %326 = load i64, i64* %PC
  %327 = add i64 %326, 5
  store i64 %327, i64* %PC
  %328 = inttoptr i64 %325 to double*
  %329 = load double, double* %328
  %330 = bitcast i8* %323 to double*
  store double %329, double* %330, align 1, !tbaa !2452
  %331 = getelementptr inbounds i8, i8* %323, i64 8
  %332 = bitcast i8* %331 to double*
  store double 0.000000e+00, double* %332, align 1, !tbaa !2452
  %333 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %334 = load i64, i64* %RBP
  %335 = sub i64 %334, 40
  %336 = load i64, i64* %PC
  %337 = add i64 %336, 5
  store i64 %337, i64* %PC
  %338 = inttoptr i64 %335 to double*
  %339 = load double, double* %338
  %340 = bitcast i8* %333 to double*
  store double %339, double* %340, align 1, !tbaa !2452
  %341 = getelementptr inbounds i8, i8* %333, i64 8
  %342 = bitcast i8* %341 to double*
  store double 0.000000e+00, double* %342, align 1, !tbaa !2452
  %343 = load i64, i64* %RBP
  %344 = sub i64 %343, 48
  %345 = load i64, i64* %PC
  %346 = add i64 %345, 4
  store i64 %346, i64* %PC
  %347 = inttoptr i64 %344 to i64*
  %348 = load i64, i64* %347
  store i64 %348, i64* %RDX, align 8, !tbaa !2428
  %349 = load i64, i64* %RBP
  %350 = sub i64 %349, 64
  %351 = load i64, i64* %PC
  %352 = add i64 %351, 4
  store i64 %352, i64* %PC
  %353 = inttoptr i64 %350 to i64*
  %354 = load i64, i64* %353
  store i64 %354, i64* %RCX, align 8, !tbaa !2428
  %355 = load i64, i64* %RBP
  %356 = sub i64 %355, 72
  %357 = load i64, i64* %PC
  %358 = add i64 %357, 4
  store i64 %358, i64* %PC
  %359 = inttoptr i64 %356 to i64*
  %360 = load i64, i64* %359
  store i64 %360, i64* %R8, align 8, !tbaa !2428
  %361 = load i64, i64* %PC
  %362 = add i64 %361, 571
  %363 = load i64, i64* %PC
  %364 = add i64 %363, 5
  %365 = load i64, i64* %PC
  %366 = add i64 %365, 5
  store i64 %366, i64* %PC
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %368 = load i64, i64* %367, align 8, !tbaa !2428
  %369 = add i64 %368, -8
  %370 = inttoptr i64 %369 to i64*
  store i64 %364, i64* %370
  store i64 %369, i64* %367, align 8, !tbaa !2428
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %362, i64* %371, align 8, !tbaa !2428
  %372 = load i64, i64* %PC
  %373 = call %struct.Memory* @sub_400c10_kernel_syr2k_renamed_(%struct.State* %0, i64 %372, %struct.Memory* %308)
  %374 = load i64, i64* %RBP
  %375 = sub i64 %374, 20
  %376 = load i64, i64* %PC
  %377 = add i64 %376, 3
  store i64 %377, i64* %PC
  %378 = inttoptr i64 %375 to i32*
  %379 = load i32, i32* %378
  %380 = zext i32 %379 to i64
  store i64 %380, i64* %RDI, align 8, !tbaa !2428
  %381 = load i64, i64* %RBP
  %382 = sub i64 %381, 24
  %383 = load i64, i64* %PC
  %384 = add i64 %383, 3
  store i64 %384, i64* %PC
  %385 = inttoptr i64 %382 to i32*
  %386 = load i32, i32* %385
  %387 = zext i32 %386 to i64
  store i64 %387, i64* %RSI, align 8, !tbaa !2428
  %388 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %389 = load i64, i64* %RBP
  %390 = sub i64 %389, 32
  %391 = load i64, i64* %PC
  %392 = add i64 %391, 5
  store i64 %392, i64* %PC
  %393 = inttoptr i64 %390 to double*
  %394 = load double, double* %393
  %395 = bitcast i8* %388 to double*
  store double %394, double* %395, align 1, !tbaa !2452
  %396 = getelementptr inbounds i8, i8* %388, i64 8
  %397 = bitcast i8* %396 to double*
  store double 0.000000e+00, double* %397, align 1, !tbaa !2452
  %398 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %399 = load i64, i64* %RBP
  %400 = sub i64 %399, 40
  %401 = load i64, i64* %PC
  %402 = add i64 %401, 5
  store i64 %402, i64* %PC
  %403 = inttoptr i64 %400 to double*
  %404 = load double, double* %403
  %405 = bitcast i8* %398 to double*
  store double %404, double* %405, align 1, !tbaa !2452
  %406 = getelementptr inbounds i8, i8* %398, i64 8
  %407 = bitcast i8* %406 to double*
  store double 0.000000e+00, double* %407, align 1, !tbaa !2452
  %408 = load i64, i64* %RBP
  %409 = sub i64 %408, 56
  %410 = load i64, i64* %PC
  %411 = add i64 %410, 4
  store i64 %411, i64* %PC
  %412 = inttoptr i64 %409 to i64*
  %413 = load i64, i64* %412
  store i64 %413, i64* %RDX, align 8, !tbaa !2428
  %414 = load i64, i64* %RBP
  %415 = sub i64 %414, 64
  %416 = load i64, i64* %PC
  %417 = add i64 %416, 4
  store i64 %417, i64* %PC
  %418 = inttoptr i64 %415 to i64*
  %419 = load i64, i64* %418
  store i64 %419, i64* %RCX, align 8, !tbaa !2428
  %420 = load i64, i64* %RBP
  %421 = sub i64 %420, 72
  %422 = load i64, i64* %PC
  %423 = add i64 %422, 4
  store i64 %423, i64* %PC
  %424 = inttoptr i64 %421 to i64*
  %425 = load i64, i64* %424
  store i64 %425, i64* %R8, align 8, !tbaa !2428
  %426 = load i64, i64* %PC
  %427 = add i64 %426, 954
  %428 = load i64, i64* %PC
  %429 = add i64 %428, 5
  %430 = load i64, i64* %PC
  %431 = add i64 %430, 5
  store i64 %431, i64* %PC
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %433 = load i64, i64* %432, align 8, !tbaa !2428
  %434 = add i64 %433, -8
  %435 = inttoptr i64 %434 to i64*
  store i64 %429, i64* %435
  store i64 %434, i64* %432, align 8, !tbaa !2428
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %427, i64* %436, align 8, !tbaa !2428
  %437 = load i64, i64* %PC
  %438 = call %struct.Memory* @sub_400db0_kernel_syr2k_StrictFP_renamed_(%struct.State* %0, i64 %437, %struct.Memory* %373)
  %439 = load i64, i64* %RBP
  %440 = sub i64 %439, 20
  %441 = load i64, i64* %PC
  %442 = add i64 %441, 3
  store i64 %442, i64* %PC
  %443 = inttoptr i64 %440 to i32*
  %444 = load i32, i32* %443
  %445 = zext i32 %444 to i64
  store i64 %445, i64* %RDI, align 8, !tbaa !2428
  %446 = load i64, i64* %RBP
  %447 = sub i64 %446, 48
  %448 = load i64, i64* %PC
  %449 = add i64 %448, 4
  store i64 %449, i64* %PC
  %450 = inttoptr i64 %447 to i64*
  %451 = load i64, i64* %450
  store i64 %451, i64* %RSI, align 8, !tbaa !2428
  %452 = load i64, i64* %RBP
  %453 = sub i64 %452, 56
  %454 = load i64, i64* %PC
  %455 = add i64 %454, 4
  store i64 %455, i64* %PC
  %456 = inttoptr i64 %453 to i64*
  %457 = load i64, i64* %456
  store i64 %457, i64* %RDX, align 8, !tbaa !2428
  %458 = load i64, i64* %PC
  %459 = add i64 %458, 1354
  %460 = load i64, i64* %PC
  %461 = add i64 %460, 5
  %462 = load i64, i64* %PC
  %463 = add i64 %462, 5
  store i64 %463, i64* %PC
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %465 = load i64, i64* %464, align 8, !tbaa !2428
  %466 = add i64 %465, -8
  %467 = inttoptr i64 %466 to i64*
  store i64 %461, i64* %467
  store i64 %466, i64* %464, align 8, !tbaa !2428
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %459, i64* %468, align 8, !tbaa !2428
  %469 = load i64, i64* %PC
  %470 = call %struct.Memory* @sub_400f50_check_FP_renamed_(%struct.State* %0, i64 %469, %struct.Memory* %438)
  %471 = load i32, i32* %EAX
  %472 = zext i32 %471 to i64
  %473 = load i64, i64* %PC
  %474 = add i64 %473, 3
  store i64 %474, i64* %PC
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %475, align 1, !tbaa !2432
  %476 = and i32 %471, 255
  %477 = call i32 @llvm.ctpop.i32(i32 %476) #16
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  %480 = xor i8 %479, 1
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %480, i8* %481, align 1, !tbaa !2446
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %482, align 1, !tbaa !2447
  %483 = icmp eq i32 %471, 0
  %484 = zext i1 %483 to i8
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %484, i8* %485, align 1, !tbaa !2448
  %486 = lshr i32 %471, 31
  %487 = trunc i32 %486 to i8
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %487, i8* %488, align 1, !tbaa !2449
  %489 = lshr i32 %471, 31
  %490 = xor i32 %486, %489
  %491 = add nuw nsw i32 %490, %489
  %492 = icmp eq i32 %491, 2
  %493 = zext i1 %492 to i8
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %493, i8* %494, align 1, !tbaa !2450
  %495 = load i64, i64* %PC
  %496 = add i64 %495, 18
  %497 = load i64, i64* %PC
  %498 = add i64 %497, 6
  %499 = load i64, i64* %PC
  %500 = add i64 %499, 6
  store i64 %500, i64* %PC
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %502 = load i8, i8* %501, align 1, !tbaa !2448
  %503 = icmp eq i8 %502, 0
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %506 = select i1 %503, i64 %496, i64 %498
  store i64 %506, i64* %505, align 8, !tbaa !2428
  %507 = load i8, i8* %BRANCH_TAKEN
  %508 = icmp eq i8 %507, 1
  %509 = load i64, i64* %RBP
  br i1 %508, label %block_400a20, label %block_400a14

block_400a63:                                     ; preds = %block_400a14, %block_400a20
  %MEMORY.0 = phi %struct.Memory* [ %678, %block_400a20 ], [ %470, %block_400a14 ]
  %510 = load i64, i64* %RBP
  %511 = sub i64 %510, 4
  %512 = load i64, i64* %PC
  %513 = add i64 %512, 3
  store i64 %513, i64* %PC
  %514 = inttoptr i64 %511 to i32*
  %515 = load i32, i32* %514
  %516 = zext i32 %515 to i64
  store i64 %516, i64* %RAX, align 8, !tbaa !2428
  %517 = load i64, i64* %RSP
  %518 = load i64, i64* %PC
  %519 = add i64 %518, 4
  store i64 %519, i64* %PC
  %520 = add i64 96, %517
  store i64 %520, i64* %RSP, align 8, !tbaa !2428
  %521 = icmp ult i64 %520, %517
  %522 = icmp ult i64 %520, 96
  %523 = or i1 %521, %522
  %524 = zext i1 %523 to i8
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %524, i8* %525, align 1, !tbaa !2432
  %526 = trunc i64 %520 to i32
  %527 = and i32 %526, 255
  %528 = call i32 @llvm.ctpop.i32(i32 %527) #16
  %529 = trunc i32 %528 to i8
  %530 = and i8 %529, 1
  %531 = xor i8 %530, 1
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %531, i8* %532, align 1, !tbaa !2446
  %533 = xor i64 96, %517
  %534 = xor i64 %533, %520
  %535 = lshr i64 %534, 4
  %536 = trunc i64 %535 to i8
  %537 = and i8 %536, 1
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %537, i8* %538, align 1, !tbaa !2447
  %539 = icmp eq i64 %520, 0
  %540 = zext i1 %539 to i8
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %540, i8* %541, align 1, !tbaa !2448
  %542 = lshr i64 %520, 63
  %543 = trunc i64 %542 to i8
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %543, i8* %544, align 1, !tbaa !2449
  %545 = lshr i64 %517, 63
  %546 = xor i64 %542, %545
  %547 = add nuw nsw i64 %546, %542
  %548 = icmp eq i64 %547, 2
  %549 = zext i1 %548 to i8
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %549, i8* %550, align 1, !tbaa !2450
  %551 = load i64, i64* %PC
  %552 = add i64 %551, 1
  store i64 %552, i64* %PC
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %554 = load i64, i64* %553, align 8, !tbaa !2428
  %555 = add i64 %554, 8
  %556 = inttoptr i64 %554 to i64*
  %557 = load i64, i64* %556
  store i64 %557, i64* %RBP, align 8, !tbaa !2428
  store i64 %555, i64* %553, align 8, !tbaa !2428
  %558 = load i64, i64* %PC
  %559 = add i64 %558, 1
  store i64 %559, i64* %PC
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %562 = load i64, i64* %561, align 8, !tbaa !2428
  %563 = inttoptr i64 %562 to i64*
  %564 = load i64, i64* %563
  store i64 %564, i64* %560, align 8, !tbaa !2428
  %565 = add i64 %562, 8
  store i64 %565, i64* %561, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400a20:                                     ; preds = %block_400910
  %566 = sub i64 %509, 20
  %567 = load i64, i64* %PC
  %568 = add i64 %567, 3
  store i64 %568, i64* %PC
  %569 = inttoptr i64 %566 to i32*
  %570 = load i32, i32* %569
  %571 = zext i32 %570 to i64
  store i64 %571, i64* %RDI, align 8, !tbaa !2428
  %572 = load i64, i64* %RBP
  %573 = sub i64 %572, 56
  %574 = load i64, i64* %PC
  %575 = add i64 %574, 4
  store i64 %575, i64* %PC
  %576 = inttoptr i64 %573 to i64*
  %577 = load i64, i64* %576
  store i64 %577, i64* %RSI, align 8, !tbaa !2428
  %578 = load i64, i64* %PC
  %579 = add i64 %578, 1625
  %580 = load i64, i64* %PC
  %581 = add i64 %580, 5
  %582 = load i64, i64* %PC
  %583 = add i64 %582, 5
  store i64 %583, i64* %PC
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %585 = load i64, i64* %584, align 8, !tbaa !2428
  %586 = add i64 %585, -8
  %587 = inttoptr i64 %586 to i64*
  store i64 %581, i64* %587
  store i64 %586, i64* %584, align 8, !tbaa !2428
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %579, i64* %588, align 8, !tbaa !2428
  %589 = load i64, i64* %PC
  %590 = call %struct.Memory* @sub_401080_print_array_renamed_(%struct.State* %0, i64 %589, %struct.Memory* %470)
  %591 = load i64, i64* %RBP
  %592 = sub i64 %591, 48
  %593 = load i64, i64* %PC
  %594 = add i64 %593, 4
  store i64 %594, i64* %PC
  %595 = inttoptr i64 %592 to i64*
  %596 = load i64, i64* %595
  store i64 %596, i64* %RSI, align 8, !tbaa !2428
  %597 = load i64, i64* %RSI
  %598 = load i64, i64* %PC
  %599 = add i64 %598, 3
  store i64 %599, i64* %PC
  store i64 %597, i64* %RDI, align 8, !tbaa !2428
  %600 = load i64, i64* %PC
  %601 = sub i64 %600, 1139
  %602 = load i64, i64* %PC
  %603 = add i64 %602, 5
  %604 = load i64, i64* %PC
  %605 = add i64 %604, 5
  store i64 %605, i64* %PC
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %607 = load i64, i64* %606, align 8, !tbaa !2428
  %608 = add i64 %607, -8
  %609 = inttoptr i64 %608 to i64*
  store i64 %603, i64* %609
  store i64 %608, i64* %606, align 8, !tbaa !2428
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %601, i64* %610, align 8, !tbaa !2428
  %611 = load i64, i64* %PC
  %612 = call %struct.Memory* @ext_4005c0_free(%struct.State* %0, i64 %611, %struct.Memory* %590)
  %613 = load i64, i64* %RBP
  %614 = sub i64 %613, 56
  %615 = load i64, i64* %PC
  %616 = add i64 %615, 4
  store i64 %616, i64* %PC
  %617 = inttoptr i64 %614 to i64*
  %618 = load i64, i64* %617
  store i64 %618, i64* %RSI, align 8, !tbaa !2428
  %619 = load i64, i64* %RSI
  %620 = load i64, i64* %PC
  %621 = add i64 %620, 3
  store i64 %621, i64* %PC
  store i64 %619, i64* %RDI, align 8, !tbaa !2428
  %622 = load i64, i64* %PC
  %623 = sub i64 %622, 1151
  %624 = load i64, i64* %PC
  %625 = add i64 %624, 5
  %626 = load i64, i64* %PC
  %627 = add i64 %626, 5
  store i64 %627, i64* %PC
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %629 = load i64, i64* %628, align 8, !tbaa !2428
  %630 = add i64 %629, -8
  %631 = inttoptr i64 %630 to i64*
  store i64 %625, i64* %631
  store i64 %630, i64* %628, align 8, !tbaa !2428
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %623, i64* %632, align 8, !tbaa !2428
  %633 = load i64, i64* %PC
  %634 = call %struct.Memory* @ext_4005c0_free(%struct.State* %0, i64 %633, %struct.Memory* %612)
  %635 = load i64, i64* %RBP
  %636 = sub i64 %635, 64
  %637 = load i64, i64* %PC
  %638 = add i64 %637, 4
  store i64 %638, i64* %PC
  %639 = inttoptr i64 %636 to i64*
  %640 = load i64, i64* %639
  store i64 %640, i64* %RSI, align 8, !tbaa !2428
  %641 = load i64, i64* %RSI
  %642 = load i64, i64* %PC
  %643 = add i64 %642, 3
  store i64 %643, i64* %PC
  store i64 %641, i64* %RDI, align 8, !tbaa !2428
  %644 = load i64, i64* %PC
  %645 = sub i64 %644, 1163
  %646 = load i64, i64* %PC
  %647 = add i64 %646, 5
  %648 = load i64, i64* %PC
  %649 = add i64 %648, 5
  store i64 %649, i64* %PC
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %651 = load i64, i64* %650, align 8, !tbaa !2428
  %652 = add i64 %651, -8
  %653 = inttoptr i64 %652 to i64*
  store i64 %647, i64* %653
  store i64 %652, i64* %650, align 8, !tbaa !2428
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %645, i64* %654, align 8, !tbaa !2428
  %655 = load i64, i64* %PC
  %656 = call %struct.Memory* @ext_4005c0_free(%struct.State* %0, i64 %655, %struct.Memory* %634)
  %657 = load i64, i64* %RBP
  %658 = sub i64 %657, 72
  %659 = load i64, i64* %PC
  %660 = add i64 %659, 4
  store i64 %660, i64* %PC
  %661 = inttoptr i64 %658 to i64*
  %662 = load i64, i64* %661
  store i64 %662, i64* %RSI, align 8, !tbaa !2428
  %663 = load i64, i64* %RSI
  %664 = load i64, i64* %PC
  %665 = add i64 %664, 3
  store i64 %665, i64* %PC
  store i64 %663, i64* %RDI, align 8, !tbaa !2428
  %666 = load i64, i64* %PC
  %667 = sub i64 %666, 1175
  %668 = load i64, i64* %PC
  %669 = add i64 %668, 5
  %670 = load i64, i64* %PC
  %671 = add i64 %670, 5
  store i64 %671, i64* %PC
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %673 = load i64, i64* %672, align 8, !tbaa !2428
  %674 = add i64 %673, -8
  %675 = inttoptr i64 %674 to i64*
  store i64 %669, i64* %675
  store i64 %674, i64* %672, align 8, !tbaa !2428
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %667, i64* %676, align 8, !tbaa !2428
  %677 = load i64, i64* %PC
  %678 = call %struct.Memory* @ext_4005c0_free(%struct.State* %0, i64 %677, %struct.Memory* %656)
  %679 = load i64, i64* %RBP
  %680 = sub i64 %679, 4
  %681 = load i64, i64* %PC
  %682 = add i64 %681, 7
  store i64 %682, i64* %PC
  %683 = inttoptr i64 %680 to i32*
  store i32 0, i32* %683
  br label %block_400a63

block_400a14:                                     ; preds = %block_400910
  %684 = sub i64 %509, 4
  %685 = load i64, i64* %PC
  %686 = add i64 %685, 7
  store i64 %686, i64* %PC
  %687 = inttoptr i64 %684 to i32*
  store i32 1, i32* %687
  %688 = load i64, i64* %PC
  %689 = add i64 %688, 72
  %690 = load i64, i64* %PC
  %691 = add i64 %690, 5
  store i64 %691, i64* %PC
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %689, i64* %692, align 8, !tbaa !2428
  br label %block_400a63
}

; Function Attrs: noinline
define %struct.Memory* @sub_401300___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401300:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %EBX = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %EDI = bitcast %union.anon* %14 to i32*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 27
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %R13D = bitcast %union.anon* %17 to i32*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RAX = bitcast %union.anon* %20 to i64*
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.GPR, %struct.GPR* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.Reg, %struct.Reg* %22, i32 0, i32 0
  %RBX = bitcast %union.anon* %23 to i64*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.GPR, %struct.GPR* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.Reg, %struct.Reg* %25, i32 0, i32 0
  %RDX = bitcast %union.anon* %26 to i64*
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 9
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %RSI = bitcast %union.anon* %29 to i64*
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %31 = getelementptr inbounds %struct.GPR, %struct.GPR* %30, i32 0, i32 11
  %32 = getelementptr inbounds %struct.Reg, %struct.Reg* %31, i32 0, i32 0
  %RDI = bitcast %union.anon* %32 to i64*
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %34 = getelementptr inbounds %struct.GPR, %struct.GPR* %33, i32 0, i32 13
  %35 = getelementptr inbounds %struct.Reg, %struct.Reg* %34, i32 0, i32 0
  %RSP = bitcast %union.anon* %35 to i64*
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %37 = getelementptr inbounds %struct.GPR, %struct.GPR* %36, i32 0, i32 15
  %38 = getelementptr inbounds %struct.Reg, %struct.Reg* %37, i32 0, i32 0
  %RBP = bitcast %union.anon* %38 to i64*
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 25
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0
  %R12 = bitcast %union.anon* %41 to i64*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 27
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %R13 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 29
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %R14 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 31
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %R15 = bitcast %union.anon* %50 to i64*
  %51 = load i64, i64* %R15
  %52 = load i64, i64* %PC
  %53 = add i64 %52, 2
  store i64 %53, i64* %PC
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %55 = load i64, i64* %54, align 8, !tbaa !2428
  %56 = add i64 %55, -8
  %57 = inttoptr i64 %56 to i64*
  store i64 %51, i64* %57
  store i64 %56, i64* %54, align 8, !tbaa !2428
  %58 = load i64, i64* %R14
  %59 = load i64, i64* %PC
  %60 = add i64 %59, 2
  store i64 %60, i64* %PC
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %62 = load i64, i64* %61, align 8, !tbaa !2428
  %63 = add i64 %62, -8
  %64 = inttoptr i64 %63 to i64*
  store i64 %58, i64* %64
  store i64 %63, i64* %61, align 8, !tbaa !2428
  %65 = load i64, i64* %RDX
  %66 = load i64, i64* %PC
  %67 = add i64 %66, 3
  store i64 %67, i64* %PC
  store i64 %65, i64* %R15, align 8, !tbaa !2428
  %68 = load i64, i64* %R13
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 2
  store i64 %70, i64* %PC
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %72 = load i64, i64* %71, align 8, !tbaa !2428
  %73 = add i64 %72, -8
  %74 = inttoptr i64 %73 to i64*
  store i64 %68, i64* %74
  store i64 %73, i64* %71, align 8, !tbaa !2428
  %75 = load i64, i64* %R12
  %76 = load i64, i64* %PC
  %77 = add i64 %76, 2
  store i64 %77, i64* %PC
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %79 = load i64, i64* %78, align 8, !tbaa !2428
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*
  store i64 %75, i64* %81
  store i64 %80, i64* %78, align 8, !tbaa !2428
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 7
  store i64 %83, i64* %PC
  store i64 ptrtoint (%seg_601df0__init_array_type* @seg_601df0__init_array to i64), i64* %R12, align 8, !tbaa !2428
  %84 = load i64, i64* %RBP
  %85 = load i64, i64* %PC
  %86 = add i64 %85, 1
  store i64 %86, i64* %PC
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %88 = load i64, i64* %87, align 8, !tbaa !2428
  %89 = add i64 %88, -8
  %90 = inttoptr i64 %89 to i64*
  store i64 %84, i64* %90
  store i64 %89, i64* %87, align 8, !tbaa !2428
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 7
  store i64 %92, i64* %PC
  store i64 add (i64 ptrtoint (%seg_601df0__init_array_type* @seg_601df0__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2428
  %93 = load i64, i64* %RBX
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 1
  store i64 %95, i64* %PC
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %97 = load i64, i64* %96, align 8, !tbaa !2428
  %98 = add i64 %97, -8
  %99 = inttoptr i64 %98 to i64*
  store i64 %93, i64* %99
  store i64 %98, i64* %96, align 8, !tbaa !2428
  %100 = bitcast i32* %R13D to i64*
  %101 = load i32, i32* %EDI
  %102 = zext i32 %101 to i64
  %103 = load i64, i64* %PC
  %104 = add i64 %103, 3
  store i64 %104, i64* %PC
  %105 = and i64 %102, 4294967295
  store i64 %105, i64* %100, align 8, !tbaa !2428
  %106 = load i64, i64* %RSI
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 3
  store i64 %108, i64* %PC
  store i64 %106, i64* %R14, align 8, !tbaa !2428
  %109 = load i64, i64* %RBP
  %110 = load i64, i64* %R12
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 3
  store i64 %112, i64* %PC
  %113 = sub i64 %109, %110
  store i64 %113, i64* %RBP, align 8, !tbaa !2428
  %114 = icmp ult i64 %109, %110
  %115 = zext i1 %114 to i8
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %115, i8* %116, align 1, !tbaa !2432
  %117 = trunc i64 %113 to i32
  %118 = and i32 %117, 255
  %119 = call i32 @llvm.ctpop.i32(i32 %118) #16
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = xor i8 %121, 1
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %122, i8* %123, align 1, !tbaa !2446
  %124 = xor i64 %110, %109
  %125 = xor i64 %124, %113
  %126 = lshr i64 %125, 4
  %127 = trunc i64 %126 to i8
  %128 = and i8 %127, 1
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %128, i8* %129, align 1, !tbaa !2447
  %130 = icmp eq i64 %113, 0
  %131 = zext i1 %130 to i8
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %131, i8* %132, align 1, !tbaa !2448
  %133 = lshr i64 %113, 63
  %134 = trunc i64 %133 to i8
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %134, i8* %135, align 1, !tbaa !2449
  %136 = lshr i64 %109, 63
  %137 = lshr i64 %110, 63
  %138 = xor i64 %137, %136
  %139 = xor i64 %133, %136
  %140 = add nuw nsw i64 %139, %138
  %141 = icmp eq i64 %140, 2
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %142, i8* %143, align 1, !tbaa !2450
  %144 = load i64, i64* %RSP
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 4
  store i64 %146, i64* %PC
  %147 = sub i64 %144, 8
  store i64 %147, i64* %RSP, align 8, !tbaa !2428
  %148 = icmp ult i64 %144, 8
  %149 = zext i1 %148 to i8
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %149, i8* %150, align 1, !tbaa !2432
  %151 = trunc i64 %147 to i32
  %152 = and i32 %151, 255
  %153 = call i32 @llvm.ctpop.i32(i32 %152) #16
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %156, i8* %157, align 1, !tbaa !2446
  %158 = xor i64 8, %144
  %159 = xor i64 %158, %147
  %160 = lshr i64 %159, 4
  %161 = trunc i64 %160 to i8
  %162 = and i8 %161, 1
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %162, i8* %163, align 1, !tbaa !2447
  %164 = icmp eq i64 %147, 0
  %165 = zext i1 %164 to i8
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %165, i8* %166, align 1, !tbaa !2448
  %167 = lshr i64 %147, 63
  %168 = trunc i64 %167 to i8
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %168, i8* %169, align 1, !tbaa !2449
  %170 = lshr i64 %144, 63
  %171 = xor i64 %167, %170
  %172 = add nuw nsw i64 %171, %170
  %173 = icmp eq i64 %172, 2
  %174 = zext i1 %173 to i8
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %174, i8* %175, align 1, !tbaa !2450
  %176 = load i64, i64* %RBP
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 4
  store i64 %178, i64* %PC
  %179 = ashr i64 %176, 2
  %180 = trunc i64 %179 to i8
  %181 = and i8 %180, 1
  %182 = ashr i64 %179, 1
  store i64 %182, i64* %RBP, align 8, !tbaa !2428
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %181, i8* %183, align 1, !tbaa !2451
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %185 = trunc i64 %182 to i32
  %186 = and i32 %185, 255
  %187 = call i32 @llvm.ctpop.i32(i32 %186) #16
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  store i8 %190, i8* %184, align 1, !tbaa !2451
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %191, align 1, !tbaa !2451
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %193 = icmp eq i64 %182, 0
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %192, align 1, !tbaa !2451
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %196 = lshr i64 %182, 63
  %197 = trunc i64 %196 to i8
  store i8 %197, i8* %195, align 1, !tbaa !2451
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %198, align 1, !tbaa !2451
  %199 = load i64, i64* %PC
  %200 = sub i64 %199, 3484
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 5
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 5
  store i64 %204, i64* %PC
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %206 = load i64, i64* %205, align 8, !tbaa !2428
  %207 = add i64 %206, -8
  %208 = inttoptr i64 %207 to i64*
  store i64 %202, i64* %208
  store i64 %207, i64* %205, align 8, !tbaa !2428
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %200, i64* %209, align 8, !tbaa !2428
  %210 = load i64, i64* %PC
  %211 = call %struct.Memory* @sub_400590__init_proc_renamed_(%struct.State* %0, i64 %210, %struct.Memory* %2)
  %212 = load i64, i64* %RBP
  %213 = load i64, i64* %RBP
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 3
  store i64 %215, i64* %PC
  %216 = and i64 %213, %212
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %217, align 1, !tbaa !2432
  %218 = trunc i64 %216 to i32
  %219 = and i32 %218, 255
  %220 = call i32 @llvm.ctpop.i32(i32 %219) #16
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %223, i8* %224, align 1, !tbaa !2446
  %225 = icmp eq i64 %216, 0
  %226 = zext i1 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %226, i8* %227, align 1, !tbaa !2448
  %228 = lshr i64 %216, 63
  %229 = trunc i64 %228 to i8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %229, i8* %230, align 1, !tbaa !2449
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %231, align 1, !tbaa !2450
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %232, align 1, !tbaa !2447
  %233 = load i64, i64* %PC
  %234 = add i64 %233, 34
  %235 = load i64, i64* %PC
  %236 = add i64 %235, 2
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 2
  store i64 %238, i64* %PC
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %240 = load i8, i8* %239, align 1, !tbaa !2448
  store i8 %240, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %242 = icmp ne i8 %240, 0
  %243 = select i1 %242, i64 %234, i64 %236
  store i64 %243, i64* %241, align 8, !tbaa !2428
  %244 = load i8, i8* %BRANCH_TAKEN
  %245 = icmp eq i8 %244, 1
  br i1 %245, label %block_401356, label %block_401336

block_401356:                                     ; preds = %block_401340, %block_401300
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_401300 ], [ %387, %block_401340 ]
  %246 = load i64, i64* %RSP
  %247 = load i64, i64* %PC
  %248 = add i64 %247, 4
  store i64 %248, i64* %PC
  %249 = add i64 8, %246
  store i64 %249, i64* %RSP, align 8, !tbaa !2428
  %250 = icmp ult i64 %249, %246
  %251 = icmp ult i64 %249, 8
  %252 = or i1 %250, %251
  %253 = zext i1 %252 to i8
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %253, i8* %254, align 1, !tbaa !2432
  %255 = trunc i64 %249 to i32
  %256 = and i32 %255, 255
  %257 = call i32 @llvm.ctpop.i32(i32 %256) #16
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = xor i8 %259, 1
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %260, i8* %261, align 1, !tbaa !2446
  %262 = xor i64 8, %246
  %263 = xor i64 %262, %249
  %264 = lshr i64 %263, 4
  %265 = trunc i64 %264 to i8
  %266 = and i8 %265, 1
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %266, i8* %267, align 1, !tbaa !2447
  %268 = icmp eq i64 %249, 0
  %269 = zext i1 %268 to i8
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %269, i8* %270, align 1, !tbaa !2448
  %271 = lshr i64 %249, 63
  %272 = trunc i64 %271 to i8
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %272, i8* %273, align 1, !tbaa !2449
  %274 = lshr i64 %246, 63
  %275 = xor i64 %271, %274
  %276 = add nuw nsw i64 %275, %271
  %277 = icmp eq i64 %276, 2
  %278 = zext i1 %277 to i8
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %278, i8* %279, align 1, !tbaa !2450
  %280 = load i64, i64* %PC
  %281 = add i64 %280, 1
  store i64 %281, i64* %PC
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %283 = load i64, i64* %282, align 8, !tbaa !2428
  %284 = add i64 %283, 8
  %285 = inttoptr i64 %283 to i64*
  %286 = load i64, i64* %285
  store i64 %286, i64* %RBX, align 8, !tbaa !2428
  store i64 %284, i64* %282, align 8, !tbaa !2428
  %287 = load i64, i64* %PC
  %288 = add i64 %287, 1
  store i64 %288, i64* %PC
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %290 = load i64, i64* %289, align 8, !tbaa !2428
  %291 = add i64 %290, 8
  %292 = inttoptr i64 %290 to i64*
  %293 = load i64, i64* %292
  store i64 %293, i64* %RBP, align 8, !tbaa !2428
  store i64 %291, i64* %289, align 8, !tbaa !2428
  %294 = load i64, i64* %PC
  %295 = add i64 %294, 2
  store i64 %295, i64* %PC
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %297 = load i64, i64* %296, align 8, !tbaa !2428
  %298 = add i64 %297, 8
  %299 = inttoptr i64 %297 to i64*
  %300 = load i64, i64* %299
  store i64 %300, i64* %R12, align 8, !tbaa !2428
  store i64 %298, i64* %296, align 8, !tbaa !2428
  %301 = load i64, i64* %PC
  %302 = add i64 %301, 2
  store i64 %302, i64* %PC
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %304 = load i64, i64* %303, align 8, !tbaa !2428
  %305 = add i64 %304, 8
  %306 = inttoptr i64 %304 to i64*
  %307 = load i64, i64* %306
  store i64 %307, i64* %R13, align 8, !tbaa !2428
  store i64 %305, i64* %303, align 8, !tbaa !2428
  %308 = load i64, i64* %PC
  %309 = add i64 %308, 2
  store i64 %309, i64* %PC
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %311 = load i64, i64* %310, align 8, !tbaa !2428
  %312 = add i64 %311, 8
  %313 = inttoptr i64 %311 to i64*
  %314 = load i64, i64* %313
  store i64 %314, i64* %R14, align 8, !tbaa !2428
  store i64 %312, i64* %310, align 8, !tbaa !2428
  %315 = load i64, i64* %PC
  %316 = add i64 %315, 2
  store i64 %316, i64* %PC
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %318 = load i64, i64* %317, align 8, !tbaa !2428
  %319 = add i64 %318, 8
  %320 = inttoptr i64 %318 to i64*
  %321 = load i64, i64* %320
  store i64 %321, i64* %R15, align 8, !tbaa !2428
  store i64 %319, i64* %317, align 8, !tbaa !2428
  %322 = load i64, i64* %PC
  %323 = add i64 %322, 1
  store i64 %323, i64* %PC
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %326 = load i64, i64* %325, align 8, !tbaa !2428
  %327 = inttoptr i64 %326 to i64*
  %328 = load i64, i64* %327
  store i64 %328, i64* %324, align 8, !tbaa !2428
  %329 = add i64 %326, 8
  store i64 %329, i64* %325, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_401336:                                     ; preds = %block_401300
  %330 = load i64, i64* %RBX
  %331 = load i32, i32* %EBX
  %332 = zext i32 %331 to i64
  %333 = load i64, i64* %PC
  %334 = add i64 %333, 2
  store i64 %334, i64* %PC
  %335 = xor i64 %332, %330
  %336 = trunc i64 %335 to i32
  %337 = and i64 %335, 4294967295
  store i64 %337, i64* %RBX, align 8, !tbaa !2428
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %338, align 1, !tbaa !2432
  %339 = and i32 %336, 255
  %340 = call i32 @llvm.ctpop.i32(i32 %339) #16
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  %343 = xor i8 %342, 1
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %343, i8* %344, align 1, !tbaa !2446
  %345 = icmp eq i32 %336, 0
  %346 = zext i1 %345 to i8
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %346, i8* %347, align 1, !tbaa !2448
  %348 = lshr i32 %336, 31
  %349 = trunc i32 %348 to i8
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %349, i8* %350, align 1, !tbaa !2449
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %351, align 1, !tbaa !2450
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %352, align 1, !tbaa !2447
  %353 = load i64, i64* %RAX
  %354 = load i64, i64* %RAX
  %355 = add i64 %354, %353
  %356 = load i32, i32* %EAX
  %357 = zext i32 %356 to i64
  %358 = load i64, i64* %PC
  %359 = add i64 %358, 8
  store i64 %359, i64* %PC
  br label %block_401340

block_401340:                                     ; preds = %block_401340, %block_401336
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_401336 ], [ %387, %block_401340 ]
  %360 = load i64, i64* %R15
  %361 = load i64, i64* %PC
  %362 = add i64 %361, 3
  store i64 %362, i64* %PC
  store i64 %360, i64* %RDX, align 8, !tbaa !2428
  %363 = load i64, i64* %R14
  %364 = load i64, i64* %PC
  %365 = add i64 %364, 3
  store i64 %365, i64* %PC
  store i64 %363, i64* %RSI, align 8, !tbaa !2428
  %366 = load i32, i32* %R13D
  %367 = zext i32 %366 to i64
  %368 = load i64, i64* %PC
  %369 = add i64 %368, 3
  store i64 %369, i64* %PC
  %370 = and i64 %367, 4294967295
  store i64 %370, i64* %RDI, align 8, !tbaa !2428
  %371 = load i64, i64* %R12
  %372 = load i64, i64* %RBX
  %373 = mul i64 %372, 8
  %374 = add i64 %373, %371
  %375 = load i64, i64* %PC
  %376 = add i64 %375, 4
  %377 = load i64, i64* %PC
  %378 = add i64 %377, 4
  store i64 %378, i64* %PC
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %380 = load i64, i64* %379, align 8, !tbaa !2428
  %381 = add i64 %380, -8
  %382 = inttoptr i64 %381 to i64*
  store i64 %376, i64* %382
  store i64 %381, i64* %379, align 8, !tbaa !2428
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %384 = inttoptr i64 %374 to i64*
  %385 = load i64, i64* %384
  store i64 %385, i64* %383, align 8, !tbaa !2428
  %386 = load i64, i64* %PC
  %387 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 %386, %struct.Memory* %MEMORY.1)
  %388 = load i64, i64* %RBX
  %389 = load i64, i64* %PC
  %390 = add i64 %389, 4
  store i64 %390, i64* %PC
  %391 = add i64 1, %388
  store i64 %391, i64* %RBX, align 8, !tbaa !2428
  %392 = icmp ult i64 %391, %388
  %393 = icmp ult i64 %391, 1
  %394 = or i1 %392, %393
  %395 = zext i1 %394 to i8
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %395, i8* %396, align 1, !tbaa !2432
  %397 = trunc i64 %391 to i32
  %398 = and i32 %397, 255
  %399 = call i32 @llvm.ctpop.i32(i32 %398) #16
  %400 = trunc i32 %399 to i8
  %401 = and i8 %400, 1
  %402 = xor i8 %401, 1
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %402, i8* %403, align 1, !tbaa !2446
  %404 = xor i64 1, %388
  %405 = xor i64 %404, %391
  %406 = lshr i64 %405, 4
  %407 = trunc i64 %406 to i8
  %408 = and i8 %407, 1
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %408, i8* %409, align 1, !tbaa !2447
  %410 = icmp eq i64 %391, 0
  %411 = zext i1 %410 to i8
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %411, i8* %412, align 1, !tbaa !2448
  %413 = lshr i64 %391, 63
  %414 = trunc i64 %413 to i8
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %414, i8* %415, align 1, !tbaa !2449
  %416 = lshr i64 %388, 63
  %417 = xor i64 %413, %416
  %418 = add nuw nsw i64 %417, %413
  %419 = icmp eq i64 %418, 2
  %420 = zext i1 %419 to i8
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %420, i8* %421, align 1, !tbaa !2450
  %422 = load i64, i64* %RBP
  %423 = load i64, i64* %RBX
  %424 = load i64, i64* %PC
  %425 = add i64 %424, 3
  store i64 %425, i64* %PC
  %426 = sub i64 %422, %423
  %427 = icmp ult i64 %422, %423
  %428 = zext i1 %427 to i8
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %428, i8* %429, align 1, !tbaa !2432
  %430 = trunc i64 %426 to i32
  %431 = and i32 %430, 255
  %432 = call i32 @llvm.ctpop.i32(i32 %431) #16
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %435, i8* %436, align 1, !tbaa !2446
  %437 = xor i64 %423, %422
  %438 = xor i64 %437, %426
  %439 = lshr i64 %438, 4
  %440 = trunc i64 %439 to i8
  %441 = and i8 %440, 1
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %441, i8* %442, align 1, !tbaa !2447
  %443 = icmp eq i64 %426, 0
  %444 = zext i1 %443 to i8
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %444, i8* %445, align 1, !tbaa !2448
  %446 = lshr i64 %426, 63
  %447 = trunc i64 %446 to i8
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %447, i8* %448, align 1, !tbaa !2449
  %449 = lshr i64 %422, 63
  %450 = lshr i64 %423, 63
  %451 = xor i64 %450, %449
  %452 = xor i64 %446, %449
  %453 = add nuw nsw i64 %452, %451
  %454 = icmp eq i64 %453, 2
  %455 = zext i1 %454 to i8
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %455, i8* %456, align 1, !tbaa !2450
  %457 = load i64, i64* %PC
  %458 = sub i64 %457, 20
  %459 = load i64, i64* %PC
  %460 = add i64 %459, 2
  %461 = load i64, i64* %PC
  %462 = add i64 %461, 2
  store i64 %462, i64* %PC
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %464 = load i8, i8* %463, align 1, !tbaa !2448
  %465 = icmp eq i8 %464, 0
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %468 = select i1 %465, i64 %458, i64 %460
  store i64 %468, i64* %467, align 8, !tbaa !2428
  %469 = load i8, i8* %BRANCH_TAKEN
  %470 = icmp eq i8 %469, 1
  br i1 %470, label %block_401340, label %block_401356
}

; Function Attrs: noinline
define %struct.Memory* @sub_401370___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401370:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %9, align 8, !tbaa !2428
  %11 = inttoptr i64 %10 to i64*
  %12 = load i64, i64* %11
  store i64 %12, i64* %8, align 8, !tbaa !2428
  %13 = add i64 %10, 8
  store i64 %13, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400890_xmalloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400890:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %EAX = bitcast %union.anon* %12 to i32*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %ECX = bitcast %union.anon* %15 to i32*
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %17 = getelementptr inbounds %struct.GPR, %struct.GPR* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.Reg, %struct.Reg* %17, i32 0, i32 0
  %RAX = bitcast %union.anon* %18 to i64*
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0
  %RCX = bitcast %union.anon* %21 to i64*
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %23 = getelementptr inbounds %struct.GPR, %struct.GPR* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.Reg, %struct.Reg* %23, i32 0, i32 0
  %RDX = bitcast %union.anon* %24 to i64*
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %26 = getelementptr inbounds %struct.GPR, %struct.GPR* %25, i32 0, i32 9
  %27 = getelementptr inbounds %struct.Reg, %struct.Reg* %26, i32 0, i32 0
  %RSI = bitcast %union.anon* %27 to i64*
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %29 = getelementptr inbounds %struct.GPR, %struct.GPR* %28, i32 0, i32 11
  %30 = getelementptr inbounds %struct.Reg, %struct.Reg* %29, i32 0, i32 0
  %RDI = bitcast %union.anon* %30 to i64*
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %32 = getelementptr inbounds %struct.GPR, %struct.GPR* %31, i32 0, i32 13
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %32, i32 0, i32 0
  %RSP = bitcast %union.anon* %33 to i64*
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %35 = getelementptr inbounds %struct.GPR, %struct.GPR* %34, i32 0, i32 15
  %36 = getelementptr inbounds %struct.Reg, %struct.Reg* %35, i32 0, i32 0
  %RBP = bitcast %union.anon* %36 to i64*
  %37 = load i64, i64* %RBP
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 1
  store i64 %39, i64* %PC
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %41 = load i64, i64* %40, align 8, !tbaa !2428
  %42 = add i64 %41, -8
  %43 = inttoptr i64 %42 to i64*
  store i64 %37, i64* %43
  store i64 %42, i64* %40, align 8, !tbaa !2428
  %44 = load i64, i64* %RSP
  %45 = load i64, i64* %PC
  %46 = add i64 %45, 3
  store i64 %46, i64* %PC
  store i64 %44, i64* %RBP, align 8, !tbaa !2428
  %47 = load i64, i64* %RSP
  %48 = load i64, i64* %PC
  %49 = add i64 %48, 4
  store i64 %49, i64* %PC
  %50 = sub i64 %47, 32
  store i64 %50, i64* %RSP, align 8, !tbaa !2428
  %51 = icmp ult i64 %47, 32
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %52, i8* %53, align 1, !tbaa !2432
  %54 = trunc i64 %50 to i32
  %55 = and i32 %54, 255
  %56 = call i32 @llvm.ctpop.i32(i32 %55) #16
  %57 = trunc i32 %56 to i8
  %58 = and i8 %57, 1
  %59 = xor i8 %58, 1
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %59, i8* %60, align 1, !tbaa !2446
  %61 = xor i64 32, %47
  %62 = xor i64 %61, %50
  %63 = lshr i64 %62, 4
  %64 = trunc i64 %63 to i8
  %65 = and i8 %64, 1
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %65, i8* %66, align 1, !tbaa !2447
  %67 = icmp eq i64 %50, 0
  %68 = zext i1 %67 to i8
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %68, i8* %69, align 1, !tbaa !2448
  %70 = lshr i64 %50, 63
  %71 = trunc i64 %70 to i8
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %71, i8* %72, align 1, !tbaa !2449
  %73 = lshr i64 %47, 63
  %74 = xor i64 %70, %73
  %75 = add nuw nsw i64 %74, %73
  %76 = icmp eq i64 %75, 2
  %77 = zext i1 %76 to i8
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %77, i8* %78, align 1, !tbaa !2450
  %79 = load i64, i64* %RBP
  %80 = sub i64 %79, 16
  %81 = load i64, i64* %PC
  %82 = add i64 %81, 4
  store i64 %82, i64* %PC
  store i64 %80, i64* %RAX, align 8, !tbaa !2428
  %83 = load i64, i64* %PC
  %84 = add i64 %83, 5
  store i64 %84, i64* %PC
  store i64 32, i64* %RCX, align 8, !tbaa !2428
  %85 = load i32, i32* %ECX
  %86 = zext i32 %85 to i64
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 2
  store i64 %88, i64* %PC
  %89 = and i64 %86, 4294967295
  store i64 %89, i64* %RSI, align 8, !tbaa !2428
  %90 = load i64, i64* %RBP
  %91 = sub i64 %90, 8
  %92 = load i64, i64* %RDI
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 4
  store i64 %94, i64* %PC
  %95 = inttoptr i64 %91 to i64*
  store i64 %92, i64* %95
  %96 = load i64, i64* %RBP
  %97 = sub i64 %96, 16
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 8
  store i64 %99, i64* %PC
  %100 = inttoptr i64 %97 to i64*
  store i64 0, i64* %100
  %101 = load i64, i64* %RBP
  %102 = sub i64 %101, 8
  %103 = load i64, i64* %PC
  %104 = add i64 %103, 4
  store i64 %104, i64* %PC
  %105 = inttoptr i64 %102 to i64*
  %106 = load i64, i64* %105
  store i64 %106, i64* %RDX, align 8, !tbaa !2428
  %107 = load i64, i64* %RAX
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 3
  store i64 %109, i64* %PC
  store i64 %107, i64* %RDI, align 8, !tbaa !2428
  %110 = load i64, i64* %PC
  %111 = sub i64 %110, 646
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 5
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 5
  store i64 %115, i64* %PC
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %117 = load i64, i64* %116, align 8, !tbaa !2428
  %118 = add i64 %117, -8
  %119 = inttoptr i64 %118 to i64*
  store i64 %113, i64* %119
  store i64 %118, i64* %116, align 8, !tbaa !2428
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %111, i64* %120, align 8, !tbaa !2428
  %121 = load i64, i64* %PC
  %122 = call %struct.Memory* @ext_602148_posix_memalign(%struct.State* %0, i64 %121, %struct.Memory* %2)
  %123 = load i64, i64* %RBP
  %124 = sub i64 %123, 20
  %125 = load i32, i32* %EAX
  %126 = zext i32 %125 to i64
  %127 = load i64, i64* %PC
  %128 = add i64 %127, 3
  store i64 %128, i64* %PC
  %129 = inttoptr i64 %124 to i32*
  store i32 %125, i32* %129
  %130 = load i64, i64* %RBP
  %131 = sub i64 %130, 16
  %132 = load i64, i64* %PC
  %133 = add i64 %132, 5
  store i64 %133, i64* %PC
  %134 = inttoptr i64 %131 to i64*
  %135 = load i64, i64* %134
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %136, align 1, !tbaa !2432
  %137 = trunc i64 %135 to i32
  %138 = and i32 %137, 255
  %139 = call i32 @llvm.ctpop.i32(i32 %138) #16
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  %142 = xor i8 %141, 1
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %142, i8* %143, align 1, !tbaa !2446
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %144, align 1, !tbaa !2447
  %145 = icmp eq i64 %135, 0
  %146 = zext i1 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %146, i8* %147, align 1, !tbaa !2448
  %148 = lshr i64 %135, 63
  %149 = trunc i64 %148 to i8
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %149, i8* %150, align 1, !tbaa !2449
  %151 = lshr i64 %135, 63
  %152 = xor i64 %148, %151
  %153 = add nuw nsw i64 %152, %151
  %154 = icmp eq i64 %153, 2
  %155 = zext i1 %154 to i8
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %155, i8* %156, align 1, !tbaa !2450
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 16
  %159 = load i64, i64* %PC
  %160 = add i64 %159, 6
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 6
  store i64 %162, i64* %PC
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %164 = load i8, i8* %163, align 1, !tbaa !2448
  store i8 %164, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %166 = icmp ne i8 %164, 0
  %167 = select i1 %166, i64 %158, i64 %160
  store i64 %167, i64* %165, align 8, !tbaa !2428
  %168 = load i8, i8* %BRANCH_TAKEN
  %169 = icmp eq i8 %168, 1
  br i1 %169, label %block_4008d3, label %block_4008c9

block_4008d3:                                     ; preds = %block_4008c9, %block_400890
  %MEMORY.0 = phi %struct.Memory* [ %122, %block_400890 ], [ %122, %block_4008c9 ]
  %170 = load i64, i64* %PC
  %171 = add i64 %170, 10
  store i64 %171, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401380__rodata_type* @seg_401380__rodata to i64), i64 55), i64* %RSI, align 8, !tbaa !2428
  %172 = load i64, i64* %PC
  %173 = add i64 %172, 8
  store i64 %173, i64* %PC
  %174 = load i64, i64* @stderr
  store i64 %174, i64* %RDI, align 8, !tbaa !2428
  %175 = load i64, i64* %PC
  %176 = add i64 %175, 2
  store i64 %176, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %177 = load i64, i64* %PC
  %178 = sub i64 %177, 743
  %179 = load i64, i64* %PC
  %180 = add i64 %179, 5
  %181 = load i64, i64* %PC
  %182 = add i64 %181, 5
  store i64 %182, i64* %PC
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %184 = load i64, i64* %183, align 8, !tbaa !2428
  %185 = add i64 %184, -8
  %186 = inttoptr i64 %185 to i64*
  store i64 %180, i64* %186
  store i64 %185, i64* %183, align 8, !tbaa !2428
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %178, i64* %187, align 8, !tbaa !2428
  %188 = load i64, i64* %PC
  %189 = call %struct.Memory* @ext_6020e8_fprintf(%struct.State* %0, i64 %188, %struct.Memory* %MEMORY.0)
  %190 = load i64, i64* %PC
  %191 = add i64 %190, 5
  store i64 %191, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %192 = load i64, i64* %RBP
  %193 = sub i64 %192, 24
  %194 = load i32, i32* %EAX
  %195 = zext i32 %194 to i64
  %196 = load i64, i64* %PC
  %197 = add i64 %196, 3
  store i64 %197, i64* %PC
  %198 = inttoptr i64 %193 to i32*
  store i32 %194, i32* %198
  %199 = load i64, i64* %PC
  %200 = sub i64 %199, 724
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 5
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 5
  store i64 %204, i64* %PC
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %206 = load i64, i64* %205, align 8, !tbaa !2428
  %207 = add i64 %206, -8
  %208 = inttoptr i64 %207 to i64*
  store i64 %202, i64* %208
  store i64 %207, i64* %205, align 8, !tbaa !2428
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %200, i64* %209, align 8, !tbaa !2428
  %210 = load i64, i64* %PC
  %211 = call %struct.Memory* @ext_6020f8_exit(%struct.State* %0, i64 %210, %struct.Memory* %189)
  %212 = load i64, i64* %PC
  %213 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %212, %struct.Memory* %211)
  ret %struct.Memory* %213

block_4008c9:                                     ; preds = %block_400890
  %214 = load i64, i64* %RBP
  %215 = sub i64 %214, 20
  %216 = load i64, i64* %PC
  %217 = add i64 %216, 4
  store i64 %217, i64* %PC
  %218 = inttoptr i64 %215 to i32*
  %219 = load i32, i32* %218
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %220, align 1, !tbaa !2432
  %221 = and i32 %219, 255
  %222 = call i32 @llvm.ctpop.i32(i32 %221) #16
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %225, i8* %226, align 1, !tbaa !2446
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %227, align 1, !tbaa !2447
  %228 = icmp eq i32 %219, 0
  %229 = zext i1 %228 to i8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %229, i8* %230, align 1, !tbaa !2448
  %231 = lshr i32 %219, 31
  %232 = trunc i32 %231 to i8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %232, i8* %233, align 1, !tbaa !2449
  %234 = lshr i32 %219, 31
  %235 = xor i32 %231, %234
  %236 = add nuw nsw i32 %235, %234
  %237 = icmp eq i32 %236, 2
  %238 = zext i1 %237 to i8
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %238, i8* %239, align 1, !tbaa !2450
  %240 = load i64, i64* %PC
  %241 = add i64 %240, 44
  %242 = load i64, i64* %PC
  %243 = add i64 %242, 6
  %244 = load i64, i64* %PC
  %245 = add i64 %244, 6
  store i64 %245, i64* %PC
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %247 = load i8, i8* %246, align 1, !tbaa !2448
  store i8 %247, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %249 = icmp ne i8 %247, 0
  %250 = select i1 %249, i64 %241, i64 %243
  store i64 %250, i64* %248, align 8, !tbaa !2428
  %251 = load i8, i8* %BRANCH_TAKEN
  %252 = icmp eq i8 %251, 1
  br i1 %252, label %block_4008f9, label %block_4008d3

block_4008f9:                                     ; preds = %block_4008c9
  %253 = load i64, i64* %RBP
  %254 = sub i64 %253, 16
  %255 = load i64, i64* %PC
  %256 = add i64 %255, 4
  store i64 %256, i64* %PC
  %257 = inttoptr i64 %254 to i64*
  %258 = load i64, i64* %257
  store i64 %258, i64* %RAX, align 8, !tbaa !2428
  %259 = load i64, i64* %RSP
  %260 = load i64, i64* %PC
  %261 = add i64 %260, 4
  store i64 %261, i64* %PC
  %262 = add i64 32, %259
  store i64 %262, i64* %RSP, align 8, !tbaa !2428
  %263 = icmp ult i64 %262, %259
  %264 = icmp ult i64 %262, 32
  %265 = or i1 %263, %264
  %266 = zext i1 %265 to i8
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %266, i8* %267, align 1, !tbaa !2432
  %268 = trunc i64 %262 to i32
  %269 = and i32 %268, 255
  %270 = call i32 @llvm.ctpop.i32(i32 %269) #16
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  %273 = xor i8 %272, 1
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %273, i8* %274, align 1, !tbaa !2446
  %275 = xor i64 32, %259
  %276 = xor i64 %275, %262
  %277 = lshr i64 %276, 4
  %278 = trunc i64 %277 to i8
  %279 = and i8 %278, 1
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %279, i8* %280, align 1, !tbaa !2447
  %281 = icmp eq i64 %262, 0
  %282 = zext i1 %281 to i8
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %282, i8* %283, align 1, !tbaa !2448
  %284 = lshr i64 %262, 63
  %285 = trunc i64 %284 to i8
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %285, i8* %286, align 1, !tbaa !2449
  %287 = lshr i64 %259, 63
  %288 = xor i64 %284, %287
  %289 = add nuw nsw i64 %288, %284
  %290 = icmp eq i64 %289, 2
  %291 = zext i1 %290 to i8
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %291, i8* %292, align 1, !tbaa !2450
  %293 = load i64, i64* %PC
  %294 = add i64 %293, 1
  store i64 %294, i64* %PC
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %296 = load i64, i64* %295, align 8, !tbaa !2428
  %297 = add i64 %296, 8
  %298 = inttoptr i64 %296 to i64*
  %299 = load i64, i64* %298
  store i64 %299, i64* %RBP, align 8, !tbaa !2428
  store i64 %297, i64* %295, align 8, !tbaa !2428
  %300 = load i64, i64* %PC
  %301 = add i64 %300, 1
  store i64 %301, i64* %PC
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %304 = load i64, i64* %303, align 8, !tbaa !2428
  %305 = inttoptr i64 %304 to i64*
  %306 = load i64, i64* %305
  store i64 %306, i64* %302, align 8, !tbaa !2428
  %307 = add i64 %304, 8
  store i64 %307, i64* %303, align 8, !tbaa !2428
  ret %struct.Memory* %122
}

; Function Attrs: noinline
define %struct.Memory* @sub_400850_polybench_alloc_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400850:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 13
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RSP = bitcast %union.anon* %17 to i64*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 15
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RBP = bitcast %union.anon* %20 to i64*
  %21 = load i64, i64* %RBP
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 1
  store i64 %23, i64* %PC
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %25 = load i64, i64* %24, align 8, !tbaa !2428
  %26 = add i64 %25, -8
  %27 = inttoptr i64 %26 to i64*
  store i64 %21, i64* %27
  store i64 %26, i64* %24, align 8, !tbaa !2428
  %28 = load i64, i64* %RSP
  %29 = load i64, i64* %PC
  %30 = add i64 %29, 3
  store i64 %30, i64* %PC
  store i64 %28, i64* %RBP, align 8, !tbaa !2428
  %31 = load i64, i64* %RSP
  %32 = load i64, i64* %PC
  %33 = add i64 %32, 4
  store i64 %33, i64* %PC
  %34 = sub i64 %31, 32
  store i64 %34, i64* %RSP, align 8, !tbaa !2428
  %35 = icmp ult i64 %31, 32
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %36, i8* %37, align 1, !tbaa !2432
  %38 = trunc i64 %34 to i32
  %39 = and i32 %38, 255
  %40 = call i32 @llvm.ctpop.i32(i32 %39) #16
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = xor i8 %42, 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %43, i8* %44, align 1, !tbaa !2446
  %45 = xor i64 32, %31
  %46 = xor i64 %45, %34
  %47 = lshr i64 %46, 4
  %48 = trunc i64 %47 to i8
  %49 = and i8 %48, 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %49, i8* %50, align 1, !tbaa !2447
  %51 = icmp eq i64 %34, 0
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %52, i8* %53, align 1, !tbaa !2448
  %54 = lshr i64 %34, 63
  %55 = trunc i64 %54 to i8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %55, i8* %56, align 1, !tbaa !2449
  %57 = lshr i64 %31, 63
  %58 = xor i64 %54, %57
  %59 = add nuw nsw i64 %58, %57
  %60 = icmp eq i64 %59, 2
  %61 = zext i1 %60 to i8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %61, i8* %62, align 1, !tbaa !2450
  %63 = load i64, i64* %RBP
  %64 = sub i64 %63, 8
  %65 = load i64, i64* %RDI
  %66 = load i64, i64* %PC
  %67 = add i64 %66, 4
  store i64 %67, i64* %PC
  %68 = inttoptr i64 %64 to i64*
  store i64 %65, i64* %68
  %69 = load i64, i64* %RBP
  %70 = sub i64 %69, 12
  %71 = load i32, i32* %ESI
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 3
  store i64 %74, i64* %PC
  %75 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %75
  %76 = load i64, i64* %RBP
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %PC
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC
  %80 = inttoptr i64 %77 to i64*
  %81 = load i64, i64* %80
  store i64 %81, i64* %RDI, align 8, !tbaa !2428
  %82 = load i64, i64* %RBP
  %83 = sub i64 %82, 24
  %84 = load i64, i64* %RDI
  %85 = load i64, i64* %PC
  %86 = add i64 %85, 4
  store i64 %86, i64* %PC
  %87 = inttoptr i64 %83 to i64*
  store i64 %84, i64* %87
  %88 = load i64, i64* %RBP
  %89 = sub i64 %88, 12
  %90 = load i64, i64* %PC
  %91 = add i64 %90, 4
  store i64 %91, i64* %PC
  %92 = inttoptr i64 %89 to i32*
  %93 = load i32, i32* %92
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %RDI, align 8, !tbaa !2428
  %95 = load i64, i64* %RDI
  %96 = load i64, i64* %RBP
  %97 = sub i64 %96, 24
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 5
  store i64 %99, i64* %PC
  %100 = inttoptr i64 %97 to i64*
  %101 = load i64, i64* %100
  %102 = sext i64 %95 to i128
  %103 = and i128 %102, -18446744073709551616
  %104 = sext i64 %101 to i128
  %105 = and i128 %104, -18446744073709551616
  %106 = zext i64 %95 to i128
  %107 = or i128 %103, %106
  %108 = zext i64 %101 to i128
  %109 = or i128 %105, %108
  %110 = mul nsw i128 %109, %107
  %111 = trunc i128 %110 to i64
  store i64 %111, i64* %RDI, align 8, !tbaa !2428
  %112 = sext i64 %111 to i128
  %113 = icmp ne i128 %112, %110
  %114 = zext i1 %113 to i8
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %114, i8* %115, align 1, !tbaa !2432
  %116 = trunc i128 %110 to i32
  %117 = and i32 %116, 255
  %118 = call i32 @llvm.ctpop.i32(i32 %117) #16
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  %121 = xor i8 %120, 1
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %121, i8* %122, align 1, !tbaa !2446
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %123, align 1, !tbaa !2447
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %124, align 1, !tbaa !2448
  %125 = lshr i64 %111, 63
  %126 = trunc i64 %125 to i8
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %126, i8* %127, align 1, !tbaa !2449
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %114, i8* %128, align 1, !tbaa !2450
  %129 = load i64, i64* %RBP
  %130 = sub i64 %129, 24
  %131 = load i64, i64* %RDI
  %132 = load i64, i64* %PC
  %133 = add i64 %132, 4
  store i64 %133, i64* %PC
  %134 = inttoptr i64 %130 to i64*
  store i64 %131, i64* %134
  %135 = load i64, i64* %RBP
  %136 = sub i64 %135, 24
  %137 = load i64, i64* %PC
  %138 = add i64 %137, 4
  store i64 %138, i64* %PC
  %139 = inttoptr i64 %136 to i64*
  %140 = load i64, i64* %139
  store i64 %140, i64* %RDI, align 8, !tbaa !2428
  %141 = load i64, i64* %PC
  %142 = add i64 %141, 24
  %143 = load i64, i64* %PC
  %144 = add i64 %143, 5
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 5
  store i64 %146, i64* %PC
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %148 = load i64, i64* %147, align 8, !tbaa !2428
  %149 = add i64 %148, -8
  %150 = inttoptr i64 %149 to i64*
  store i64 %144, i64* %150
  store i64 %149, i64* %147, align 8, !tbaa !2428
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %142, i64* %151, align 8, !tbaa !2428
  %152 = load i64, i64* %PC
  %153 = call %struct.Memory* @sub_400890_xmalloc_renamed_(%struct.State* %0, i64 %152, %struct.Memory* %2)
  %154 = load i64, i64* %RBP
  %155 = sub i64 %154, 32
  %156 = load i64, i64* %RAX
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 4
  store i64 %158, i64* %PC
  %159 = inttoptr i64 %155 to i64*
  store i64 %156, i64* %159
  %160 = load i64, i64* %RBP
  %161 = sub i64 %160, 32
  %162 = load i64, i64* %PC
  %163 = add i64 %162, 4
  store i64 %163, i64* %PC
  %164 = inttoptr i64 %161 to i64*
  %165 = load i64, i64* %164
  store i64 %165, i64* %RAX, align 8, !tbaa !2428
  %166 = load i64, i64* %RSP
  %167 = load i64, i64* %PC
  %168 = add i64 %167, 4
  store i64 %168, i64* %PC
  %169 = add i64 32, %166
  store i64 %169, i64* %RSP, align 8, !tbaa !2428
  %170 = icmp ult i64 %169, %166
  %171 = icmp ult i64 %169, 32
  %172 = or i1 %170, %171
  %173 = zext i1 %172 to i8
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %173, i8* %174, align 1, !tbaa !2432
  %175 = trunc i64 %169 to i32
  %176 = and i32 %175, 255
  %177 = call i32 @llvm.ctpop.i32(i32 %176) #16
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  %180 = xor i8 %179, 1
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %180, i8* %181, align 1, !tbaa !2446
  %182 = xor i64 32, %166
  %183 = xor i64 %182, %169
  %184 = lshr i64 %183, 4
  %185 = trunc i64 %184 to i8
  %186 = and i8 %185, 1
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %186, i8* %187, align 1, !tbaa !2447
  %188 = icmp eq i64 %169, 0
  %189 = zext i1 %188 to i8
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %189, i8* %190, align 1, !tbaa !2448
  %191 = lshr i64 %169, 63
  %192 = trunc i64 %191 to i8
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %192, i8* %193, align 1, !tbaa !2449
  %194 = lshr i64 %166, 63
  %195 = xor i64 %191, %194
  %196 = add nuw nsw i64 %195, %191
  %197 = icmp eq i64 %196, 2
  %198 = zext i1 %197 to i8
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %198, i8* %199, align 1, !tbaa !2450
  %200 = load i64, i64* %PC
  %201 = add i64 %200, 1
  store i64 %201, i64* %PC
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %203 = load i64, i64* %202, align 8, !tbaa !2428
  %204 = add i64 %203, 8
  %205 = inttoptr i64 %203 to i64*
  %206 = load i64, i64* %205
  store i64 %206, i64* %RBP, align 8, !tbaa !2428
  store i64 %204, i64* %202, align 8, !tbaa !2428
  %207 = load i64, i64* %PC
  %208 = add i64 %207, 1
  store i64 %208, i64* %PC
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %211 = load i64, i64* %210, align 8, !tbaa !2428
  %212 = inttoptr i64 %211 to i64*
  %213 = load i64, i64* %212
  store i64 %213, i64* %209, align 8, !tbaa !2428
  %214 = add i64 %211, 8
  store i64 %214, i64* %210, align 8, !tbaa !2428
  ret %struct.Memory* %153
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #13

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400720_frame_dummy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400720;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400720_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400720_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4006f0___do_global_dtors_aux() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4006f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4006f0___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4006f0___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_4005c0_free(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020e0_calloc(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020e8_fprintf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401370___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401370;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401370___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401370___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401300___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401300;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401300___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401300___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400910;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400910_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020d8___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602110_printf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_4005e0_fputs(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020f0_malloc(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020f8_exit(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602148_posix_memalign(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @posix_memalign to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_flush_cache() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400730;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
  ret void
}

define internal %struct.Memory* @polybench_flush_cache_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400730_polybench_flush_cache(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400590;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
  ret void
}

define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400590__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_alloc_data() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400850;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
  ret void
}

define internal %struct.Memory* @polybench_alloc_data_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400850_polybench_alloc_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_print() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400810;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @10, void ()** @2)
  ret void
}

define internal %struct.Memory* @polybench_timer_print_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400810_polybench_timer_print(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_start() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4007c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @11, void ()** @2)
  ret void
}

define internal %struct.Memory* @polybench_timer_start_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4007c0_polybench_timer_start(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401374;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @12, void ()** @2)
  ret void
}

define internal %struct.Memory* @.term_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401374__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_stop() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4007f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @13, void ()** @2)
  ret void
}

define internal %struct.Memory* @polybench_timer_stop_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4007f0_polybench_timer_stop(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_prepare_instruments() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4007b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @14, void ()** @2)
  ret void
}

define internal %struct.Memory* @polybench_prepare_instruments_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4007b0_polybench_prepare_instruments(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

define internal void @__mcsema_constructor() {
  %1 = load volatile i1, i1* @0
  br i1 %1, label %2, label %3

; <label>:2:                                      ; preds = %0
  br label %__mcsema_early_init.exit

; <label>:3:                                      ; preds = %0
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %2
  call void @callback_sub_401300___libc_csu_init()
  ret void
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_401370___libc_csu_fini()
  ret void
}

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noduplicate noinline nounwind optnone readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noduplicate noinline nounwind optnone readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noinline }
attributes #14 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { naked nobuiltin noinline }
attributes #16 = { nounwind }
attributes #17 = { alwaysinline nobuiltin nounwind }

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
!2452 = !{!2453, !2453, i64 0}
!2453 = !{!"double", !2430, i64 0}
!2454 = !{!2445, !2445, i64 0}
!2455 = !{!2456, !2456, i64 0}
!2456 = !{!"float", !2430, i64 0}
