; ModuleID = 'binary/test.mcsema.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400430__init_type = type <{ [23 x i8] }>
%seg_400450__plt_type = type <{ [48 x i8] }>
%seg_400480__text_type = type <{ [1938 x i8] }>
%seg_400c14__fini_type = type <{ [9 x i8] }>
%seg_400c20__rodata_type = type <{ [32 x i8], [6 x i8] }>
%seg_400c48__eh_frame_hdr_type = type <{ [84 x i8] }>
%seg_400ca0__eh_frame_type = type <{ [336 x i8] }>
%seg_600df0__init_array_type = type <{ i64, i64 }>
%seg_600ff0__got_type = type <{ i64, i64 }>
%seg_601000__got_plt_type = type <{ [24 x i8], i64, i64 }>
%seg_601030__data_type = type <{ [16 x i8] }>
%bodies_type = type <{ [280 x i8] }>
%__bss_start_type = type <{ [8 x i8] }>
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
@seg_400430__init = internal constant %seg_400430__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05\BD\0B \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400450__plt = internal constant %seg_400450__plt_type <{ [48 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%\B2\0B \00\00\00\00\00\00\00\00\00\00\00\FF%\AA\0B \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_400480__text = internal constant %seg_400480__text_type <{ [1938 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\10\0C@\00H\C7\C1\A0\0B@\00H\C7\C7\D0\0A@\00\FF\15F\0B \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8X\11`\00H=X\11`\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BFX\11`\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BEX\11`\00UH\81\EEX\11`\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BFX\11`\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=!\0C \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\0F\0C \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC`\89}\FCH\89u\F0\F2\0F\11E\E8\C7E\E4\00\00\00\00\8BE\E4;E\FC\0F\8D\BE\01\00\00H\8BE\F0HcM\E4Hk\C98H\01\C8H\89E\D8\8BU\E4\83\C2\01\89U\E0\8BE\E0;E\FC\0F\8D\83\01\00\00H\8BE\F0HcM\E0Hk\C98H\01\C8H\89E\D0H\8BE\D8\F2\0F\10\00H\8BE\D0\F2\0F\5C\00\F2\0F\11E\C8H\8BE\D8\F2\0F\10@\08H\8BE\D0\F2\0F\5C@\08\F2\0F\11E\C0H\8BE\D8\F2\0F\10@\10H\8BE\D0\F2\0F\5C@\10\F2\0F\11E\B8\F2\0F\10E\C8\F2\0FYE\C8\F2\0F\10M\C0\F2\0FYM\C0\F2\0FX\C1\F2\0F\10M\B8\F2\0FYM\B8\F2\0FX\C1\E80\FE\FF\FF\F2\0F\11E\B0\F2\0F\10E\E8\F2\0F\10M\B0\F2\0FYM\B0\F2\0FYM\B0\F2\0F^\C1\F2\0F\11E\A8\F2\0F\10E\C8H\8BE\D0\F2\0FY@0\F2\0FYE\A8H\8BE\D8\F2\0F\10H\18\F2\0F\5C\C8\F2\0F\11H\18\F2\0F\10E\C0H\8BE\D0\F2\0FY@0\F2\0FYE\A8H\8BE\D8\F2\0F\10H \F2\0F\5C\C8\F2\0F\11H \F2\0F\10E\B8H\8BE\D0\F2\0FY@0\F2\0FYE\A8H\8BE\D8\F2\0F\10H(\F2\0F\5C\C8\F2\0F\11H(\F2\0F\10E\C8H\8BE\D8\F2\0FY@0\F2\0FYE\A8H\8BE\D0\F2\0FX@\18\F2\0F\11@\18\F2\0F\10E\C0H\8BE\D8\F2\0FY@0\F2\0FYE\A8H\8BE\D0\F2\0FX@ \F2\0F\11@ \F2\0F\10E\B8H\8BE\D8\F2\0FY@0\F2\0FYE\A8H\8BE\D0\F2\0FX@(\F2\0F\11@(\8BE\E0\83\C0\01\89E\E0\E9q\FE\FF\FF\E9\00\00\00\00\8BE\E4\83\C0\01\89E\E4\E96\FE\FF\FF\C7E\E4\00\00\00\00\8BE\E4;E\FC\0F\8Ds\00\00\00H\8BE\F0HcM\E4Hk\C98H\01\C8H\89E\A0\F2\0F\10E\E8H\8BE\A0\F2\0FY@\18H\8BE\A0\F2\0FX\00\F2\0F\11\00\F2\0F\10E\E8H\8BE\A0\F2\0FY@ H\8BE\A0\F2\0FX@\08\F2\0F\11@\08\F2\0F\10E\E8H\8BE\A0\F2\0FY@(H\8BE\A0\F2\0FX@\10\F2\0F\11@\10\8BE\E4\83\C0\01\89E\E4\E9\81\FF\FF\FFH\83\C4`]\C3ffffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\ECP\0FW\C0\89}\FCH\89u\F0\F2\0F\11E\E8\C7E\E4\00\00\00\00\8BE\E4;E\FC\0F\8DQ\01\00\00\F2\0F\10\05\06\04\00\00H\8BE\F0HcM\E4Hk\C98H\01\C8H\89E\D8H\8BE\D8\F2\0FY@0H\8BE\D8\F2\0F\10H\18H\8BE\D8\F2\0FYH\18H\8BE\D8\F2\0F\10P H\8BE\D8\F2\0FYP \F2\0FX\CAH\8BE\D8\F2\0F\10P(H\8BE\D8\F2\0FYP(\F2\0FX\CA\F2\0FY\C1\F2\0FXE\E8\F2\0F\11E\E8\8BU\E4\83\C2\01\89U\E0\8BE\E0;E\FC\0F\8D\B9\00\00\00H\8BE\F0HcM\E0Hk\C98H\01\C8H\89E\D0H\8BE\D8\F2\0F\10\00H\8BE\D0\F2\0F\5C\00\F2\0F\11E\C8H\8BE\D8\F2\0F\10@\08H\8BE\D0\F2\0F\5C@\08\F2\0F\11E\C0H\8BE\D8\F2\0F\10@\10H\8BE\D0\F2\0F\5C@\10\F2\0F\11E\B8\F2\0F\10E\C8\F2\0FYE\C8\F2\0F\10M\C0\F2\0FYM\C0\F2\0FX\C1\F2\0F\10M\B8\F2\0FYM\B8\F2\0FX\C1\E8P\FB\FF\FF\F2\0F\11E\B0H\8BE\D8\F2\0F\10@0H\8BE\D0\F2\0FY@0\F2\0F^E\B0\F2\0F\10M\E8\F2\0F\5C\C8\F2\0F\11M\E8\8BE\E0\83\C0\01\89E\E0\E9;\FF\FF\FF\E9\00\00\00\00\8BE\E4\83\C0\01\89E\E4\E9\A3\FE\FF\FF\F2\0F\10E\E8H\83\C4P]\C3f.\0F\1F\84\00\00\00\00\00UH\89\E5\0FW\C0\89}\FCH\89u\F0\F2\0F\11E\E8\F2\0F\11E\E0\F2\0F\11E\D8\C7E\D4\00\00\00\00\8BE\D4;E\FC\0F\8D\A4\00\00\00H\8BE\F0HcM\D4Hk\C98H\01\C8\F2\0F\10@\18H\8BE\F0HcM\D4Hk\C98H\01\C8\F2\0FY@0\F2\0FXE\E8\F2\0F\11E\E8H\8BE\F0HcM\D4Hk\C98H\01\C8\F2\0F\10@ H\8BE\F0HcM\D4Hk\C98H\01\C8\F2\0FY@0\F2\0FXE\E0\F2\0F\11E\E0H\8BE\F0HcM\D4Hk\C98H\01\C8\F2\0F\10@(H\8BE\F0HcM\D4Hk\C98H\01\C8\F2\0FY@0\F2\0FXE\D8\F2\0F\11E\D8\8BE\D4\83\C0\01\89E\D4\E9P\FF\FF\FF\F2\0F\10\05\D4\01\00\00H\B8\00\00\00\00\00\00\00\80\F2\0F\10M\E8fH\0F~\C9H1\C1fH\0Fn\C9\F2\0F^\C8H\8BM\F0\F2\0F\11I\18\F2\0F\10M\E0fH\0F~\C9H1\C1fH\0Fn\C9\F2\0F^\C8H\8BM\F0\F2\0F\11I \F2\0F\10M\D8fH\0F~\C9H1\C1fH\0Fn\C9\F2\0F^\C8H\8BE\F0\F2\0F\11H(]\C3ff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC \B8\05\00\00\00H\B9@\10`\00\00\00\00\00\C7E\FC\00\00\00\00\89}\F8H\89u\F0\C7E\EC@KL\00\89\C7H\89\CE\E8z\FE\FF\FF\BF\05\00\00\00H\BE@\10`\00\00\00\00\00\E8\D6\FC\FF\FFH\BF@\0C@\00\00\00\00\00\B0\01\E85\F9\FF\FF\C7E\E8\01\00\00\00\89E\E4\8BE\E8;E\EC\0F\8F*\00\00\00\BF\05\00\00\00H\BE@\10`\00\00\00\00\00\F2\0F\10\05\E0\00\00\00\E8\13\FA\FF\FF\8BE\E8\83\C0\01\89E\E8\E9\CA\FF\FF\FF\BF\05\00\00\00H\BE@\10`\00\00\00\00\00\E8q\FC\FF\FFH\BF@\0C@\00\00\00\00\00\B0\01\E8\D0\F8\FF\FF1\C9\89E\E0\89\C8H\83\C4 ]\C3\0F\1F\00AWAVI\89\D7AUATL\8D%>\02 \00UH\8D->\02 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8_\F8\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_400c14__fini = internal constant %seg_400c14__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400c20__rodata = internal constant %seg_400c20__rodata_type <{ [32 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\E0?\DEE\BE\C9<\BDC@{\14\AEG\E1z\84?", [6 x i8] c"%.9f\0A\00" }>
@seg_400c48__eh_frame_hdr = internal constant %seg_400c48__eh_frame_hdr_type <{ [84 x i8] c"\01\1B\03;T\00\00\00\09\00\00\00\08\F8\FF\FF\B0\00\00\008\F8\FF\FFp\00\00\00h\F8\FF\FF\9C\00\00\00(\F9\FF\FF\D8\00\00\00\A8\FB\FF\FF\F4\00\00\008\FD\FF\FF\10\01\00\00\88\FE\FF\FF,\01\00\00X\FF\FF\FFH\01\00\00\C8\FF\FF\FF\90\01\00\00" }>
@seg_400ca0__eh_frame = internal constant %seg_400ca0__eh_frame_type <{ [336 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00\C0\F7\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00\C4\F7\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\00P\F7\FF\FF0\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00H\F8\FF\FFq\02\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00t\00\00\00\AC\FA\FF\FF\86\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\90\00\00\00 \FC\FF\FFE\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\AC\00\00\00T\FD\FF\FF\CD\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00D\00\00\00\C8\00\00\00\08\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\10\01\00\000\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_600df0__init_array = internal global %seg_600df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400560_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400530___do_global_dtors_aux to i64) }>
@seg_600ff0__got = internal global %seg_600ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_601000__got_plt = internal global %seg_601000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 ptrtoint (double (double)* @sqrt to i64) }>
@seg_601030__data = internal global %seg_601030__data_type zeroinitializer
@bodies = global %bodies_type <{ [280 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\DEE\BE\C9<\BDC@,\D9<4\A0]\13@|\DB\1F\C0\AB\90\F2\BF\F0\EB%l\F9\86\BA\BF\BC\CC\93\9B\06g\E3?\9B\94}\F5\F2~\06@\15\07Z\9A\D7\D2\99\BF\D83\AB\D9\95L\A3?g\CA2\C3\CD\AF @\B0\01\DE1\CB\7F\10@|F\EB\E1S\D3\D9\BFB\94\87\B8!,\F0\BF\13\8F\1F\BF\E95\FD?\B4#\11_H<\81?7\C6\07\0DI\1D\87?\CF\D9\A7\CE\EA\C9)@~f&\D6\E88.\C0\A0}%\BEW\95\CC\BF\EF\1B\91\A9\1CS\F1?\C5\BBT>\7F\CC\EB?|>\F2\FAk/\86\BF\B3\1E\F4\9C\D2=\5C?*W\05\A9g\C2.@ \A2\C83X\EB9\C0@\E5\AB\93\F3\F1\C6?J\BCY\16\B6T\EF?\A3\FB\C41\C6\07\E3?\F6evX\88\CB\A1\BF\AC\99\17S\F3\A8`?" }>
@__bss_start = global %__bss_start_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400560_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400530___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400c10___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400ba0___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @energy_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @offset_momentum_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @advance_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

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
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
define %struct.Memory* @sub_400570_advance(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400570:
  %state.i = alloca %struct.State*, align 8
  %curr_pc.i = alloca i64, align 8
  %memory.i = alloca %struct.Memory*, align 8
  %BRANCH_TAKEN.i = alloca i8, align 1
  %SS_BASE.i = alloca i64, align 8
  %ES_BASE.i = alloca i64, align 8
  %DS_BASE.i = alloca i64, align 8
  %CS_BASE.i = alloca i64, align 8
  %STATE.i = alloca %struct.State*, align 8
  %MEMORY.i = alloca %struct.Memory*, align 8
  %_DR0.i = alloca i64*, align 8
  %_DR1.i = alloca i64*, align 8
  %_DR2.i = alloca i64*, align 8
  %_DR3.i = alloca i64*, align 8
  %_DR4.i = alloca i64*, align 8
  %_DR5.i = alloca i64*, align 8
  %_DR6.i = alloca i64*, align 8
  %_DR7.i = alloca i64*, align 8
  %CR0.i = alloca i64*, align 8
  %CR1.i = alloca i64*, align 8
  %CR2.i = alloca i64*, align 8
  %CR3.i = alloca i64*, align 8
  %CR4.i = alloca i64*, align 8
  %CR8.i = alloca i64*, align 8
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %EDX = bitcast %union.anon* %11 to i32*
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
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 13
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %RSP = bitcast %union.anon* %29 to i64*
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %31 = getelementptr inbounds %struct.GPR, %struct.GPR* %30, i32 0, i32 15
  %32 = getelementptr inbounds %struct.Reg, %struct.Reg* %31, i32 0, i32 0
  %RBP = bitcast %union.anon* %32 to i64*
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %34 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %33, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %34 to %"class.std::bitset"*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %36 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %35, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %36 to %"class.std::bitset"*
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %38 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %37, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %38 to %union.vec128_t*
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %40 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %39, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %40 to %union.vec128_t*
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
  %54 = sub i64 %51, 96
  store i64 %54, i64* %RSP, align 8, !tbaa !2428
  %55 = icmp ult i64 %51, 96
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %56, i8* %57, align 1, !tbaa !2432
  %58 = trunc i64 %54 to i32
  %59 = and i32 %58, 255
  %60 = call i32 @llvm.ctpop.i32(i32 %59) #17
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  %63 = xor i8 %62, 1
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %63, i8* %64, align 1, !tbaa !2446
  %65 = xor i64 96, %51
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
  %97 = sub i64 %96, 24
  %98 = bitcast %union.vec128_t* %XMM0 to i8*
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 5
  store i64 %100, i64* %PC
  %101 = bitcast i8* %98 to double*
  %102 = load double, double* %101, align 1
  %103 = inttoptr i64 %97 to double*
  store double %102, double* %103
  %104 = load i64, i64* %RBP
  %105 = sub i64 %104, 28
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 7
  store i64 %107, i64* %PC
  %108 = inttoptr i64 %105 to i32*
  store i32 0, i32* %108
  br label %block_40058b

block_4007db:                                     ; preds = %block_40075c
  %109 = load i64, i64* %RSP
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 4
  store i64 %111, i64* %PC
  %112 = add i64 96, %109
  store i64 %112, i64* %RSP, align 8, !tbaa !2428
  %113 = icmp ult i64 %112, %109
  %114 = icmp ult i64 %112, 96
  %115 = or i1 %113, %114
  %116 = zext i1 %115 to i8
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %116, i8* %117, align 1, !tbaa !2432
  %118 = trunc i64 %112 to i32
  %119 = and i32 %118, 255
  %120 = call i32 @llvm.ctpop.i32(i32 %119) #17
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = xor i8 %122, 1
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %123, i8* %124, align 1, !tbaa !2446
  %125 = xor i64 96, %109
  %126 = xor i64 %125, %112
  %127 = lshr i64 %126, 4
  %128 = trunc i64 %127 to i8
  %129 = and i8 %128, 1
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %129, i8* %130, align 1, !tbaa !2447
  %131 = icmp eq i64 %112, 0
  %132 = zext i1 %131 to i8
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %132, i8* %133, align 1, !tbaa !2448
  %134 = lshr i64 %112, 63
  %135 = trunc i64 %134 to i8
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %135, i8* %136, align 1, !tbaa !2449
  %137 = lshr i64 %109, 63
  %138 = xor i64 %134, %137
  %139 = add nuw nsw i64 %138, %134
  %140 = icmp eq i64 %139, 2
  %141 = zext i1 %140 to i8
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %141, i8* %142, align 1, !tbaa !2450
  %143 = load i64, i64* %PC
  %144 = add i64 %143, 1
  store i64 %144, i64* %PC
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %146 = load i64, i64* %145, align 8, !tbaa !2428
  %147 = add i64 %146, 8
  %148 = inttoptr i64 %146 to i64*
  %149 = load i64, i64* %148
  store i64 %149, i64* %RBP, align 8, !tbaa !2428
  store i64 %147, i64* %145, align 8, !tbaa !2428
  %150 = load i64, i64* %PC
  %151 = add i64 %150, 1
  store i64 %151, i64* %PC
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %154 = load i64, i64* %153, align 8, !tbaa !2428
  %155 = inttoptr i64 %154 to i64*
  %156 = load i64, i64* %155
  store i64 %156, i64* %152, align 8, !tbaa !2428
  %157 = add i64 %154, 8
  store i64 %157, i64* %153, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_400755:                                     ; preds = %block_40058b
  %158 = sub i64 %2325, 28
  %159 = load i64, i64* %PC
  %160 = add i64 %159, 7
  store i64 %160, i64* %PC
  %161 = inttoptr i64 %158 to i32*
  store i32 0, i32* %161
  br label %block_40075c

block_4005b3:                                     ; preds = %block_4005bf, %block_400597
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.2, %block_400597 ], [ %1583, %block_4005bf ]
  %162 = load i64, i64* %RBP
  %163 = sub i64 %162, 32
  %164 = load i64, i64* %PC
  %165 = add i64 %164, 3
  store i64 %165, i64* %PC
  %166 = inttoptr i64 %163 to i32*
  %167 = load i32, i32* %166
  %168 = zext i32 %167 to i64
  store i64 %168, i64* %RAX, align 8, !tbaa !2428
  %169 = load i32, i32* %EAX
  %170 = zext i32 %169 to i64
  %171 = load i64, i64* %RBP
  %172 = sub i64 %171, 4
  %173 = load i64, i64* %PC
  %174 = add i64 %173, 3
  store i64 %174, i64* %PC
  %175 = inttoptr i64 %172 to i32*
  %176 = load i32, i32* %175
  %177 = sub i32 %169, %176
  %178 = icmp ult i32 %169, %176
  %179 = zext i1 %178 to i8
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %179, i8* %180, align 1, !tbaa !2432
  %181 = and i32 %177, 255
  %182 = call i32 @llvm.ctpop.i32(i32 %181) #17
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 1
  %185 = xor i8 %184, 1
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %185, i8* %186, align 1, !tbaa !2446
  %187 = xor i32 %176, %169
  %188 = xor i32 %187, %177
  %189 = lshr i32 %188, 4
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %191, i8* %192, align 1, !tbaa !2447
  %193 = icmp eq i32 %177, 0
  %194 = zext i1 %193 to i8
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %194, i8* %195, align 1, !tbaa !2448
  %196 = lshr i32 %177, 31
  %197 = trunc i32 %196 to i8
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %197, i8* %198, align 1, !tbaa !2449
  %199 = lshr i32 %169, 31
  %200 = lshr i32 %176, 31
  %201 = xor i32 %200, %199
  %202 = xor i32 %196, %199
  %203 = add nuw nsw i32 %202, %201
  %204 = icmp eq i32 %203, 2
  %205 = zext i1 %204 to i8
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %205, i8* %206, align 1, !tbaa !2450
  %207 = load i64, i64* %PC
  %208 = add i64 %207, 393
  %209 = load i64, i64* %PC
  %210 = add i64 %209, 6
  %211 = load i64, i64* %PC
  %212 = add i64 %211, 6
  store i64 %212, i64* %PC
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %214 = load i8, i8* %213, align 1, !tbaa !2449
  %215 = icmp ne i8 %214, 0
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %217 = load i8, i8* %216, align 1, !tbaa !2450
  %218 = icmp ne i8 %217, 0
  %219 = xor i1 %215, %218
  %220 = xor i1 %219, true
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %223 = select i1 %219, i64 %210, i64 %208
  store i64 %223, i64* %222, align 8, !tbaa !2428
  %224 = load i8, i8* %BRANCH_TAKEN
  %225 = icmp eq i8 %224, 1
  br i1 %225, label %block_400742, label %block_4005bf

block_400597:                                     ; preds = %block_40058b
  %226 = sub i64 %2325, 16
  %227 = load i64, i64* %PC
  %228 = add i64 %227, 4
  store i64 %228, i64* %PC
  %229 = inttoptr i64 %226 to i64*
  %230 = load i64, i64* %229
  store i64 %230, i64* %RAX, align 8, !tbaa !2428
  %231 = load i64, i64* %RBP
  %232 = sub i64 %231, 28
  %233 = load i64, i64* %PC
  %234 = add i64 %233, 4
  store i64 %234, i64* %PC
  %235 = inttoptr i64 %232 to i32*
  %236 = load i32, i32* %235
  %237 = sext i32 %236 to i64
  store i64 %237, i64* %RCX, align 8, !tbaa !2428
  %238 = load i64, i64* %RCX
  %239 = load i64, i64* %PC
  %240 = add i64 %239, 4
  store i64 %240, i64* %PC
  %241 = sext i64 %238 to i128
  %242 = and i128 %241, -18446744073709551616
  %243 = zext i64 %238 to i128
  %244 = or i128 %242, %243
  %245 = mul nsw i128 56, %244
  %246 = trunc i128 %245 to i64
  store i64 %246, i64* %RCX, align 8, !tbaa !2428
  %247 = sext i64 %246 to i128
  %248 = icmp ne i128 %247, %245
  %249 = zext i1 %248 to i8
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %249, i8* %250, align 1, !tbaa !2432
  %251 = trunc i128 %245 to i32
  %252 = and i32 %251, 255
  %253 = call i32 @llvm.ctpop.i32(i32 %252) #17
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = xor i8 %255, 1
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %256, i8* %257, align 1, !tbaa !2446
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %258, align 1, !tbaa !2447
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %259, align 1, !tbaa !2448
  %260 = lshr i64 %246, 63
  %261 = trunc i64 %260 to i8
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %261, i8* %262, align 1, !tbaa !2449
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %249, i8* %263, align 1, !tbaa !2450
  %264 = load i64, i64* %RAX
  %265 = load i64, i64* %RCX
  %266 = load i64, i64* %PC
  %267 = add i64 %266, 3
  store i64 %267, i64* %PC
  %268 = add i64 %265, %264
  store i64 %268, i64* %RAX, align 8, !tbaa !2428
  %269 = icmp ult i64 %268, %264
  %270 = icmp ult i64 %268, %265
  %271 = or i1 %269, %270
  %272 = zext i1 %271 to i8
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %272, i8* %273, align 1, !tbaa !2432
  %274 = trunc i64 %268 to i32
  %275 = and i32 %274, 255
  %276 = call i32 @llvm.ctpop.i32(i32 %275) #17
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  %279 = xor i8 %278, 1
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %279, i8* %280, align 1, !tbaa !2446
  %281 = xor i64 %265, %264
  %282 = xor i64 %281, %268
  %283 = lshr i64 %282, 4
  %284 = trunc i64 %283 to i8
  %285 = and i8 %284, 1
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %285, i8* %286, align 1, !tbaa !2447
  %287 = icmp eq i64 %268, 0
  %288 = zext i1 %287 to i8
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %288, i8* %289, align 1, !tbaa !2448
  %290 = lshr i64 %268, 63
  %291 = trunc i64 %290 to i8
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %291, i8* %292, align 1, !tbaa !2449
  %293 = lshr i64 %264, 63
  %294 = lshr i64 %265, 63
  %295 = xor i64 %290, %293
  %296 = xor i64 %290, %294
  %297 = add nuw nsw i64 %295, %296
  %298 = icmp eq i64 %297, 2
  %299 = zext i1 %298 to i8
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %299, i8* %300, align 1, !tbaa !2450
  %301 = load i64, i64* %RBP
  %302 = sub i64 %301, 40
  %303 = load i64, i64* %RAX
  %304 = load i64, i64* %PC
  %305 = add i64 %304, 4
  store i64 %305, i64* %PC
  %306 = inttoptr i64 %302 to i64*
  store i64 %303, i64* %306
  %307 = load i64, i64* %RBP
  %308 = sub i64 %307, 28
  %309 = load i64, i64* %PC
  %310 = add i64 %309, 3
  store i64 %310, i64* %PC
  %311 = inttoptr i64 %308 to i32*
  %312 = load i32, i32* %311
  %313 = zext i32 %312 to i64
  store i64 %313, i64* %RDX, align 8, !tbaa !2428
  %314 = load i64, i64* %RDX
  %315 = load i64, i64* %PC
  %316 = add i64 %315, 3
  store i64 %316, i64* %PC
  %317 = trunc i64 %314 to i32
  %318 = add i32 1, %317
  %319 = zext i32 %318 to i64
  store i64 %319, i64* %RDX, align 8, !tbaa !2428
  %320 = icmp ult i32 %318, %317
  %321 = icmp ult i32 %318, 1
  %322 = or i1 %320, %321
  %323 = zext i1 %322 to i8
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %323, i8* %324, align 1, !tbaa !2432
  %325 = and i32 %318, 255
  %326 = call i32 @llvm.ctpop.i32(i32 %325) #17
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  %329 = xor i8 %328, 1
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %329, i8* %330, align 1, !tbaa !2446
  %331 = xor i64 1, %314
  %332 = trunc i64 %331 to i32
  %333 = xor i32 %332, %318
  %334 = lshr i32 %333, 4
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %336, i8* %337, align 1, !tbaa !2447
  %338 = icmp eq i32 %318, 0
  %339 = zext i1 %338 to i8
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %339, i8* %340, align 1, !tbaa !2448
  %341 = lshr i32 %318, 31
  %342 = trunc i32 %341 to i8
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %342, i8* %343, align 1, !tbaa !2449
  %344 = lshr i32 %317, 31
  %345 = xor i32 %341, %344
  %346 = add nuw nsw i32 %345, %341
  %347 = icmp eq i32 %346, 2
  %348 = zext i1 %347 to i8
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %348, i8* %349, align 1, !tbaa !2450
  %350 = load i64, i64* %RBP
  %351 = sub i64 %350, 32
  %352 = load i32, i32* %EDX
  %353 = zext i32 %352 to i64
  %354 = load i64, i64* %PC
  %355 = add i64 %354, 3
  store i64 %355, i64* %PC
  %356 = inttoptr i64 %351 to i32*
  store i32 %352, i32* %356
  br label %block_4005b3

block_400768:                                     ; preds = %block_40075c
  %357 = load i64, i64* %RBP
  %358 = sub i64 %357, 16
  %359 = load i64, i64* %PC
  %360 = add i64 %359, 4
  store i64 %360, i64* %PC
  %361 = inttoptr i64 %358 to i64*
  %362 = load i64, i64* %361
  store i64 %362, i64* %RAX, align 8, !tbaa !2428
  %363 = load i64, i64* %RBP
  %364 = sub i64 %363, 28
  %365 = load i64, i64* %PC
  %366 = add i64 %365, 4
  store i64 %366, i64* %PC
  %367 = inttoptr i64 %364 to i32*
  %368 = load i32, i32* %367
  %369 = sext i32 %368 to i64
  store i64 %369, i64* %RCX, align 8, !tbaa !2428
  %370 = load i64, i64* %RCX
  %371 = load i64, i64* %PC
  %372 = add i64 %371, 4
  store i64 %372, i64* %PC
  %373 = sext i64 %370 to i128
  %374 = and i128 %373, -18446744073709551616
  %375 = zext i64 %370 to i128
  %376 = or i128 %374, %375
  %377 = mul nsw i128 56, %376
  %378 = trunc i128 %377 to i64
  store i64 %378, i64* %RCX, align 8, !tbaa !2428
  %379 = sext i64 %378 to i128
  %380 = icmp ne i128 %379, %377
  %381 = zext i1 %380 to i8
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %381, i8* %382, align 1, !tbaa !2432
  %383 = trunc i128 %377 to i32
  %384 = and i32 %383, 255
  %385 = call i32 @llvm.ctpop.i32(i32 %384) #17
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  %388 = xor i8 %387, 1
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %388, i8* %389, align 1, !tbaa !2446
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %390, align 1, !tbaa !2447
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %391, align 1, !tbaa !2448
  %392 = lshr i64 %378, 63
  %393 = trunc i64 %392 to i8
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %393, i8* %394, align 1, !tbaa !2449
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %381, i8* %395, align 1, !tbaa !2450
  %396 = load i64, i64* %RAX
  %397 = load i64, i64* %RCX
  %398 = load i64, i64* %PC
  %399 = add i64 %398, 3
  store i64 %399, i64* %PC
  %400 = add i64 %397, %396
  store i64 %400, i64* %RAX, align 8, !tbaa !2428
  %401 = icmp ult i64 %400, %396
  %402 = icmp ult i64 %400, %397
  %403 = or i1 %401, %402
  %404 = zext i1 %403 to i8
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %404, i8* %405, align 1, !tbaa !2432
  %406 = trunc i64 %400 to i32
  %407 = and i32 %406, 255
  %408 = call i32 @llvm.ctpop.i32(i32 %407) #17
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  %411 = xor i8 %410, 1
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %411, i8* %412, align 1, !tbaa !2446
  %413 = xor i64 %397, %396
  %414 = xor i64 %413, %400
  %415 = lshr i64 %414, 4
  %416 = trunc i64 %415 to i8
  %417 = and i8 %416, 1
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %417, i8* %418, align 1, !tbaa !2447
  %419 = icmp eq i64 %400, 0
  %420 = zext i1 %419 to i8
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %420, i8* %421, align 1, !tbaa !2448
  %422 = lshr i64 %400, 63
  %423 = trunc i64 %422 to i8
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %423, i8* %424, align 1, !tbaa !2449
  %425 = lshr i64 %396, 63
  %426 = lshr i64 %397, 63
  %427 = xor i64 %422, %425
  %428 = xor i64 %422, %426
  %429 = add nuw nsw i64 %427, %428
  %430 = icmp eq i64 %429, 2
  %431 = zext i1 %430 to i8
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %431, i8* %432, align 1, !tbaa !2450
  %433 = load i64, i64* %RBP
  %434 = sub i64 %433, 96
  %435 = load i64, i64* %RAX
  %436 = load i64, i64* %PC
  %437 = add i64 %436, 4
  store i64 %437, i64* %PC
  %438 = inttoptr i64 %434 to i64*
  store i64 %435, i64* %438
  %439 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %440 = load i64, i64* %RBP
  %441 = sub i64 %440, 24
  %442 = load i64, i64* %PC
  %443 = add i64 %442, 5
  store i64 %443, i64* %PC
  %444 = inttoptr i64 %441 to double*
  %445 = load double, double* %444
  %446 = bitcast i8* %439 to double*
  store double %445, double* %446, align 1, !tbaa !2452
  %447 = getelementptr inbounds i8, i8* %439, i64 8
  %448 = bitcast i8* %447 to double*
  store double 0.000000e+00, double* %448, align 1, !tbaa !2452
  %449 = load i64, i64* %RBP
  %450 = sub i64 %449, 96
  %451 = load i64, i64* %PC
  %452 = add i64 %451, 4
  store i64 %452, i64* %PC
  %453 = inttoptr i64 %450 to i64*
  %454 = load i64, i64* %453
  store i64 %454, i64* %RAX, align 8, !tbaa !2428
  %455 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %456 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %457 = load i64, i64* %RAX
  %458 = add i64 %457, 24
  %459 = load i64, i64* %PC
  %460 = add i64 %459, 5
  store i64 %460, i64* %PC
  %461 = bitcast i8* %456 to double*
  %462 = load double, double* %461, align 1
  %463 = getelementptr inbounds i8, i8* %456, i64 8
  %464 = bitcast i8* %463 to i64*
  %465 = load i64, i64* %464, align 1
  %466 = inttoptr i64 %458 to double*
  %467 = load double, double* %466
  %468 = fmul double %462, %467
  %469 = bitcast i8* %455 to double*
  store double %468, double* %469, align 1, !tbaa !2452
  %470 = getelementptr inbounds i8, i8* %455, i64 8
  %471 = bitcast i8* %470 to i64*
  store i64 %465, i64* %471, align 1, !tbaa !2452
  %472 = load i64, i64* %RBP
  %473 = sub i64 %472, 96
  %474 = load i64, i64* %PC
  %475 = add i64 %474, 4
  store i64 %475, i64* %PC
  %476 = inttoptr i64 %473 to i64*
  %477 = load i64, i64* %476
  store i64 %477, i64* %RAX, align 8, !tbaa !2428
  %478 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %479 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %480 = load i64, i64* %RAX
  %481 = load i64, i64* %PC
  %482 = add i64 %481, 4
  store i64 %482, i64* %PC
  %483 = bitcast i8* %479 to double*
  %484 = load double, double* %483, align 1
  %485 = getelementptr inbounds i8, i8* %479, i64 8
  %486 = bitcast i8* %485 to i64*
  %487 = load i64, i64* %486, align 1
  %488 = inttoptr i64 %480 to double*
  %489 = load double, double* %488
  %490 = fadd double %484, %489
  %491 = bitcast i8* %478 to double*
  store double %490, double* %491, align 1, !tbaa !2452
  %492 = getelementptr inbounds i8, i8* %478, i64 8
  %493 = bitcast i8* %492 to i64*
  store i64 %487, i64* %493, align 1, !tbaa !2452
  %494 = load i64, i64* %RAX
  %495 = bitcast %union.vec128_t* %XMM0 to i8*
  %496 = load i64, i64* %PC
  %497 = add i64 %496, 4
  store i64 %497, i64* %PC
  %498 = bitcast i8* %495 to double*
  %499 = load double, double* %498, align 1
  %500 = inttoptr i64 %494 to double*
  store double %499, double* %500
  %501 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %502 = load i64, i64* %RBP
  %503 = sub i64 %502, 24
  %504 = load i64, i64* %PC
  %505 = add i64 %504, 5
  store i64 %505, i64* %PC
  %506 = inttoptr i64 %503 to double*
  %507 = load double, double* %506
  %508 = bitcast i8* %501 to double*
  store double %507, double* %508, align 1, !tbaa !2452
  %509 = getelementptr inbounds i8, i8* %501, i64 8
  %510 = bitcast i8* %509 to double*
  store double 0.000000e+00, double* %510, align 1, !tbaa !2452
  %511 = load i64, i64* %RBP
  %512 = sub i64 %511, 96
  %513 = load i64, i64* %PC
  %514 = add i64 %513, 4
  store i64 %514, i64* %PC
  %515 = inttoptr i64 %512 to i64*
  %516 = load i64, i64* %515
  store i64 %516, i64* %RAX, align 8, !tbaa !2428
  %517 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %518 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %519 = load i64, i64* %RAX
  %520 = add i64 %519, 32
  %521 = load i64, i64* %PC
  %522 = add i64 %521, 5
  store i64 %522, i64* %PC
  %523 = bitcast i8* %518 to double*
  %524 = load double, double* %523, align 1
  %525 = getelementptr inbounds i8, i8* %518, i64 8
  %526 = bitcast i8* %525 to i64*
  %527 = load i64, i64* %526, align 1
  %528 = inttoptr i64 %520 to double*
  %529 = load double, double* %528
  %530 = fmul double %524, %529
  %531 = bitcast i8* %517 to double*
  store double %530, double* %531, align 1, !tbaa !2452
  %532 = getelementptr inbounds i8, i8* %517, i64 8
  %533 = bitcast i8* %532 to i64*
  store i64 %527, i64* %533, align 1, !tbaa !2452
  %534 = load i64, i64* %RBP
  %535 = sub i64 %534, 96
  %536 = load i64, i64* %PC
  %537 = add i64 %536, 4
  store i64 %537, i64* %PC
  %538 = inttoptr i64 %535 to i64*
  %539 = load i64, i64* %538
  store i64 %539, i64* %RAX, align 8, !tbaa !2428
  %540 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %541 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %542 = load i64, i64* %RAX
  %543 = add i64 %542, 8
  %544 = load i64, i64* %PC
  %545 = add i64 %544, 5
  store i64 %545, i64* %PC
  %546 = bitcast i8* %541 to double*
  %547 = load double, double* %546, align 1
  %548 = getelementptr inbounds i8, i8* %541, i64 8
  %549 = bitcast i8* %548 to i64*
  %550 = load i64, i64* %549, align 1
  %551 = inttoptr i64 %543 to double*
  %552 = load double, double* %551
  %553 = fadd double %547, %552
  %554 = bitcast i8* %540 to double*
  store double %553, double* %554, align 1, !tbaa !2452
  %555 = getelementptr inbounds i8, i8* %540, i64 8
  %556 = bitcast i8* %555 to i64*
  store i64 %550, i64* %556, align 1, !tbaa !2452
  %557 = load i64, i64* %RAX
  %558 = add i64 %557, 8
  %559 = bitcast %union.vec128_t* %XMM0 to i8*
  %560 = load i64, i64* %PC
  %561 = add i64 %560, 5
  store i64 %561, i64* %PC
  %562 = bitcast i8* %559 to double*
  %563 = load double, double* %562, align 1
  %564 = inttoptr i64 %558 to double*
  store double %563, double* %564
  %565 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %566 = load i64, i64* %RBP
  %567 = sub i64 %566, 24
  %568 = load i64, i64* %PC
  %569 = add i64 %568, 5
  store i64 %569, i64* %PC
  %570 = inttoptr i64 %567 to double*
  %571 = load double, double* %570
  %572 = bitcast i8* %565 to double*
  store double %571, double* %572, align 1, !tbaa !2452
  %573 = getelementptr inbounds i8, i8* %565, i64 8
  %574 = bitcast i8* %573 to double*
  store double 0.000000e+00, double* %574, align 1, !tbaa !2452
  %575 = load i64, i64* %RBP
  %576 = sub i64 %575, 96
  %577 = load i64, i64* %PC
  %578 = add i64 %577, 4
  store i64 %578, i64* %PC
  %579 = inttoptr i64 %576 to i64*
  %580 = load i64, i64* %579
  store i64 %580, i64* %RAX, align 8, !tbaa !2428
  %581 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %582 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %583 = load i64, i64* %RAX
  %584 = add i64 %583, 40
  %585 = load i64, i64* %PC
  %586 = add i64 %585, 5
  store i64 %586, i64* %PC
  %587 = bitcast i8* %582 to double*
  %588 = load double, double* %587, align 1
  %589 = getelementptr inbounds i8, i8* %582, i64 8
  %590 = bitcast i8* %589 to i64*
  %591 = load i64, i64* %590, align 1
  %592 = inttoptr i64 %584 to double*
  %593 = load double, double* %592
  %594 = fmul double %588, %593
  %595 = bitcast i8* %581 to double*
  store double %594, double* %595, align 1, !tbaa !2452
  %596 = getelementptr inbounds i8, i8* %581, i64 8
  %597 = bitcast i8* %596 to i64*
  store i64 %591, i64* %597, align 1, !tbaa !2452
  %598 = load i64, i64* %RBP
  %599 = sub i64 %598, 96
  %600 = load i64, i64* %PC
  %601 = add i64 %600, 4
  store i64 %601, i64* %PC
  %602 = inttoptr i64 %599 to i64*
  %603 = load i64, i64* %602
  store i64 %603, i64* %RAX, align 8, !tbaa !2428
  %604 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %605 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %606 = load i64, i64* %RAX
  %607 = add i64 %606, 16
  %608 = load i64, i64* %PC
  %609 = add i64 %608, 5
  store i64 %609, i64* %PC
  %610 = bitcast i8* %605 to double*
  %611 = load double, double* %610, align 1
  %612 = getelementptr inbounds i8, i8* %605, i64 8
  %613 = bitcast i8* %612 to i64*
  %614 = load i64, i64* %613, align 1
  %615 = inttoptr i64 %607 to double*
  %616 = load double, double* %615
  %617 = fadd double %611, %616
  %618 = bitcast i8* %604 to double*
  store double %617, double* %618, align 1, !tbaa !2452
  %619 = getelementptr inbounds i8, i8* %604, i64 8
  %620 = bitcast i8* %619 to i64*
  store i64 %614, i64* %620, align 1, !tbaa !2452
  %621 = load i64, i64* %RAX
  %622 = add i64 %621, 16
  %623 = bitcast %union.vec128_t* %XMM0 to i8*
  %624 = load i64, i64* %PC
  %625 = add i64 %624, 5
  store i64 %625, i64* %PC
  %626 = bitcast i8* %623 to double*
  %627 = load double, double* %626, align 1
  %628 = inttoptr i64 %622 to double*
  store double %627, double* %628
  %629 = load i64, i64* %RBP
  %630 = sub i64 %629, 28
  %631 = load i64, i64* %PC
  %632 = add i64 %631, 3
  store i64 %632, i64* %PC
  %633 = inttoptr i64 %630 to i32*
  %634 = load i32, i32* %633
  %635 = zext i32 %634 to i64
  store i64 %635, i64* %RAX, align 8, !tbaa !2428
  %636 = load i64, i64* %RAX
  %637 = load i64, i64* %PC
  %638 = add i64 %637, 3
  store i64 %638, i64* %PC
  %639 = trunc i64 %636 to i32
  %640 = add i32 1, %639
  %641 = zext i32 %640 to i64
  store i64 %641, i64* %RAX, align 8, !tbaa !2428
  %642 = icmp ult i32 %640, %639
  %643 = icmp ult i32 %640, 1
  %644 = or i1 %642, %643
  %645 = zext i1 %644 to i8
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %645, i8* %646, align 1, !tbaa !2432
  %647 = and i32 %640, 255
  %648 = call i32 @llvm.ctpop.i32(i32 %647) #17
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = xor i8 %650, 1
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %651, i8* %652, align 1, !tbaa !2446
  %653 = xor i64 1, %636
  %654 = trunc i64 %653 to i32
  %655 = xor i32 %654, %640
  %656 = lshr i32 %655, 4
  %657 = trunc i32 %656 to i8
  %658 = and i8 %657, 1
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %658, i8* %659, align 1, !tbaa !2447
  %660 = icmp eq i32 %640, 0
  %661 = zext i1 %660 to i8
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %661, i8* %662, align 1, !tbaa !2448
  %663 = lshr i32 %640, 31
  %664 = trunc i32 %663 to i8
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %664, i8* %665, align 1, !tbaa !2449
  %666 = lshr i32 %639, 31
  %667 = xor i32 %663, %666
  %668 = add nuw nsw i32 %667, %663
  %669 = icmp eq i32 %668, 2
  %670 = zext i1 %669 to i8
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %670, i8* %671, align 1, !tbaa !2450
  %672 = load i64, i64* %RBP
  %673 = sub i64 %672, 28
  %674 = load i32, i32* %EAX
  %675 = zext i32 %674 to i64
  %676 = load i64, i64* %PC
  %677 = add i64 %676, 3
  store i64 %677, i64* %PC
  %678 = inttoptr i64 %673 to i32*
  store i32 %674, i32* %678
  %679 = load i64, i64* %PC
  %680 = sub i64 %679, 122
  %681 = load i64, i64* %PC
  %682 = add i64 %681, 5
  store i64 %682, i64* %PC
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %680, i64* %683, align 8, !tbaa !2428
  br label %block_40075c

block_40075c:                                     ; preds = %block_400768, %block_400755
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.2, %block_400755 ], [ %MEMORY.1, %block_400768 ]
  %684 = load i64, i64* %RBP
  %685 = sub i64 %684, 28
  %686 = load i64, i64* %PC
  %687 = add i64 %686, 3
  store i64 %687, i64* %PC
  %688 = inttoptr i64 %685 to i32*
  %689 = load i32, i32* %688
  %690 = zext i32 %689 to i64
  store i64 %690, i64* %RAX, align 8, !tbaa !2428
  %691 = load i32, i32* %EAX
  %692 = zext i32 %691 to i64
  %693 = load i64, i64* %RBP
  %694 = sub i64 %693, 4
  %695 = load i64, i64* %PC
  %696 = add i64 %695, 3
  store i64 %696, i64* %PC
  %697 = inttoptr i64 %694 to i32*
  %698 = load i32, i32* %697
  %699 = sub i32 %691, %698
  %700 = icmp ult i32 %691, %698
  %701 = zext i1 %700 to i8
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %701, i8* %702, align 1, !tbaa !2432
  %703 = and i32 %699, 255
  %704 = call i32 @llvm.ctpop.i32(i32 %703) #17
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  %707 = xor i8 %706, 1
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %707, i8* %708, align 1, !tbaa !2446
  %709 = xor i32 %698, %691
  %710 = xor i32 %709, %699
  %711 = lshr i32 %710, 4
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %713, i8* %714, align 1, !tbaa !2447
  %715 = icmp eq i32 %699, 0
  %716 = zext i1 %715 to i8
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %716, i8* %717, align 1, !tbaa !2448
  %718 = lshr i32 %699, 31
  %719 = trunc i32 %718 to i8
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %719, i8* %720, align 1, !tbaa !2449
  %721 = lshr i32 %691, 31
  %722 = lshr i32 %698, 31
  %723 = xor i32 %722, %721
  %724 = xor i32 %718, %721
  %725 = add nuw nsw i32 %724, %723
  %726 = icmp eq i32 %725, 2
  %727 = zext i1 %726 to i8
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %727, i8* %728, align 1, !tbaa !2450
  %729 = load i64, i64* %PC
  %730 = add i64 %729, 121
  %731 = load i64, i64* %PC
  %732 = add i64 %731, 6
  %733 = load i64, i64* %PC
  %734 = add i64 %733, 6
  store i64 %734, i64* %PC
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %736 = load i8, i8* %735, align 1, !tbaa !2449
  %737 = icmp ne i8 %736, 0
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %739 = load i8, i8* %738, align 1, !tbaa !2450
  %740 = icmp ne i8 %739, 0
  %741 = xor i1 %737, %740
  %742 = xor i1 %741, true
  %743 = zext i1 %742 to i8
  store i8 %743, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %745 = select i1 %741, i64 %732, i64 %730
  store i64 %745, i64* %744, align 8, !tbaa !2428
  %746 = load i8, i8* %BRANCH_TAKEN
  %747 = icmp eq i8 %746, 1
  br i1 %747, label %block_4007db, label %block_400768

block_400742:                                     ; preds = %block_4005b3
  %748 = load i64, i64* %PC
  %749 = add i64 %748, 5
  %750 = load i64, i64* %PC
  %751 = add i64 %750, 5
  store i64 %751, i64* %PC
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %749, i64* %752, align 8, !tbaa !2428
  %753 = load i64, i64* %RBP
  %754 = sub i64 %753, 28
  %755 = load i64, i64* %PC
  %756 = add i64 %755, 3
  store i64 %756, i64* %PC
  %757 = inttoptr i64 %754 to i32*
  %758 = load i32, i32* %757
  %759 = zext i32 %758 to i64
  store i64 %759, i64* %RAX, align 8, !tbaa !2428
  %760 = load i64, i64* %RAX
  %761 = load i64, i64* %PC
  %762 = add i64 %761, 3
  store i64 %762, i64* %PC
  %763 = trunc i64 %760 to i32
  %764 = add i32 1, %763
  %765 = zext i32 %764 to i64
  store i64 %765, i64* %RAX, align 8, !tbaa !2428
  %766 = icmp ult i32 %764, %763
  %767 = icmp ult i32 %764, 1
  %768 = or i1 %766, %767
  %769 = zext i1 %768 to i8
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %769, i8* %770, align 1, !tbaa !2432
  %771 = and i32 %764, 255
  %772 = call i32 @llvm.ctpop.i32(i32 %771) #17
  %773 = trunc i32 %772 to i8
  %774 = and i8 %773, 1
  %775 = xor i8 %774, 1
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %775, i8* %776, align 1, !tbaa !2446
  %777 = xor i64 1, %760
  %778 = trunc i64 %777 to i32
  %779 = xor i32 %778, %764
  %780 = lshr i32 %779, 4
  %781 = trunc i32 %780 to i8
  %782 = and i8 %781, 1
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %782, i8* %783, align 1, !tbaa !2447
  %784 = icmp eq i32 %764, 0
  %785 = zext i1 %784 to i8
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %785, i8* %786, align 1, !tbaa !2448
  %787 = lshr i32 %764, 31
  %788 = trunc i32 %787 to i8
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %788, i8* %789, align 1, !tbaa !2449
  %790 = lshr i32 %763, 31
  %791 = xor i32 %787, %790
  %792 = add nuw nsw i32 %791, %787
  %793 = icmp eq i32 %792, 2
  %794 = zext i1 %793 to i8
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %794, i8* %795, align 1, !tbaa !2450
  %796 = load i64, i64* %RBP
  %797 = sub i64 %796, 28
  %798 = load i32, i32* %EAX
  %799 = zext i32 %798 to i64
  %800 = load i64, i64* %PC
  %801 = add i64 %800, 3
  store i64 %801, i64* %PC
  %802 = inttoptr i64 %797 to i32*
  store i32 %798, i32* %802
  %803 = load i64, i64* %PC
  %804 = sub i64 %803, 453
  %805 = load i64, i64* %PC
  %806 = add i64 %805, 5
  store i64 %806, i64* %PC
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %804, i64* %807, align 8, !tbaa !2428
  br label %block_40058b

block_4005bf:                                     ; preds = %block_4005b3
  %808 = load i64, i64* %RBP
  %809 = sub i64 %808, 16
  %810 = load i64, i64* %PC
  %811 = add i64 %810, 4
  store i64 %811, i64* %PC
  %812 = inttoptr i64 %809 to i64*
  %813 = load i64, i64* %812
  store i64 %813, i64* %RAX, align 8, !tbaa !2428
  %814 = load i64, i64* %RBP
  %815 = sub i64 %814, 32
  %816 = load i64, i64* %PC
  %817 = add i64 %816, 4
  store i64 %817, i64* %PC
  %818 = inttoptr i64 %815 to i32*
  %819 = load i32, i32* %818
  %820 = sext i32 %819 to i64
  store i64 %820, i64* %RCX, align 8, !tbaa !2428
  %821 = load i64, i64* %RCX
  %822 = load i64, i64* %PC
  %823 = add i64 %822, 4
  store i64 %823, i64* %PC
  %824 = sext i64 %821 to i128
  %825 = and i128 %824, -18446744073709551616
  %826 = zext i64 %821 to i128
  %827 = or i128 %825, %826
  %828 = mul nsw i128 56, %827
  %829 = trunc i128 %828 to i64
  store i64 %829, i64* %RCX, align 8, !tbaa !2428
  %830 = sext i64 %829 to i128
  %831 = icmp ne i128 %830, %828
  %832 = zext i1 %831 to i8
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %832, i8* %833, align 1, !tbaa !2432
  %834 = trunc i128 %828 to i32
  %835 = and i32 %834, 255
  %836 = call i32 @llvm.ctpop.i32(i32 %835) #17
  %837 = trunc i32 %836 to i8
  %838 = and i8 %837, 1
  %839 = xor i8 %838, 1
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %839, i8* %840, align 1, !tbaa !2446
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %841, align 1, !tbaa !2447
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %842, align 1, !tbaa !2448
  %843 = lshr i64 %829, 63
  %844 = trunc i64 %843 to i8
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %844, i8* %845, align 1, !tbaa !2449
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %832, i8* %846, align 1, !tbaa !2450
  %847 = load i64, i64* %RAX
  %848 = load i64, i64* %RCX
  %849 = load i64, i64* %PC
  %850 = add i64 %849, 3
  store i64 %850, i64* %PC
  %851 = add i64 %848, %847
  store i64 %851, i64* %RAX, align 8, !tbaa !2428
  %852 = icmp ult i64 %851, %847
  %853 = icmp ult i64 %851, %848
  %854 = or i1 %852, %853
  %855 = zext i1 %854 to i8
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %855, i8* %856, align 1, !tbaa !2432
  %857 = trunc i64 %851 to i32
  %858 = and i32 %857, 255
  %859 = call i32 @llvm.ctpop.i32(i32 %858) #17
  %860 = trunc i32 %859 to i8
  %861 = and i8 %860, 1
  %862 = xor i8 %861, 1
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %862, i8* %863, align 1, !tbaa !2446
  %864 = xor i64 %848, %847
  %865 = xor i64 %864, %851
  %866 = lshr i64 %865, 4
  %867 = trunc i64 %866 to i8
  %868 = and i8 %867, 1
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %868, i8* %869, align 1, !tbaa !2447
  %870 = icmp eq i64 %851, 0
  %871 = zext i1 %870 to i8
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %871, i8* %872, align 1, !tbaa !2448
  %873 = lshr i64 %851, 63
  %874 = trunc i64 %873 to i8
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %874, i8* %875, align 1, !tbaa !2449
  %876 = lshr i64 %847, 63
  %877 = lshr i64 %848, 63
  %878 = xor i64 %873, %876
  %879 = xor i64 %873, %877
  %880 = add nuw nsw i64 %878, %879
  %881 = icmp eq i64 %880, 2
  %882 = zext i1 %881 to i8
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %882, i8* %883, align 1, !tbaa !2450
  %884 = load i64, i64* %RBP
  %885 = sub i64 %884, 48
  %886 = load i64, i64* %RAX
  %887 = load i64, i64* %PC
  %888 = add i64 %887, 4
  store i64 %888, i64* %PC
  %889 = inttoptr i64 %885 to i64*
  store i64 %886, i64* %889
  %890 = load i64, i64* %RBP
  %891 = sub i64 %890, 40
  %892 = load i64, i64* %PC
  %893 = add i64 %892, 4
  store i64 %893, i64* %PC
  %894 = inttoptr i64 %891 to i64*
  %895 = load i64, i64* %894
  store i64 %895, i64* %RAX, align 8, !tbaa !2428
  %896 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %897 = load i64, i64* %RAX
  %898 = load i64, i64* %PC
  %899 = add i64 %898, 4
  store i64 %899, i64* %PC
  %900 = inttoptr i64 %897 to double*
  %901 = load double, double* %900
  %902 = bitcast i8* %896 to double*
  store double %901, double* %902, align 1, !tbaa !2452
  %903 = getelementptr inbounds i8, i8* %896, i64 8
  %904 = bitcast i8* %903 to double*
  store double 0.000000e+00, double* %904, align 1, !tbaa !2452
  %905 = load i64, i64* %RBP
  %906 = sub i64 %905, 48
  %907 = load i64, i64* %PC
  %908 = add i64 %907, 4
  store i64 %908, i64* %PC
  %909 = inttoptr i64 %906 to i64*
  %910 = load i64, i64* %909
  store i64 %910, i64* %RAX, align 8, !tbaa !2428
  %911 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %912 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %913 = load i64, i64* %RAX
  %914 = load i64, i64* %PC
  %915 = add i64 %914, 4
  store i64 %915, i64* %PC
  %916 = bitcast i8* %912 to double*
  %917 = load double, double* %916, align 1
  %918 = getelementptr inbounds i8, i8* %912, i64 8
  %919 = bitcast i8* %918 to i64*
  %920 = load i64, i64* %919, align 1
  %921 = inttoptr i64 %913 to double*
  %922 = load double, double* %921
  %923 = fsub double %917, %922
  %924 = bitcast i8* %911 to double*
  store double %923, double* %924, align 1, !tbaa !2452
  %925 = getelementptr inbounds i8, i8* %911, i64 8
  %926 = bitcast i8* %925 to i64*
  store i64 %920, i64* %926, align 1, !tbaa !2452
  %927 = load i64, i64* %RBP
  %928 = sub i64 %927, 56
  %929 = bitcast %union.vec128_t* %XMM0 to i8*
  %930 = load i64, i64* %PC
  %931 = add i64 %930, 5
  store i64 %931, i64* %PC
  %932 = bitcast i8* %929 to double*
  %933 = load double, double* %932, align 1
  %934 = inttoptr i64 %928 to double*
  store double %933, double* %934
  %935 = load i64, i64* %RBP
  %936 = sub i64 %935, 40
  %937 = load i64, i64* %PC
  %938 = add i64 %937, 4
  store i64 %938, i64* %PC
  %939 = inttoptr i64 %936 to i64*
  %940 = load i64, i64* %939
  store i64 %940, i64* %RAX, align 8, !tbaa !2428
  %941 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %942 = load i64, i64* %RAX
  %943 = add i64 %942, 8
  %944 = load i64, i64* %PC
  %945 = add i64 %944, 5
  store i64 %945, i64* %PC
  %946 = inttoptr i64 %943 to double*
  %947 = load double, double* %946
  %948 = bitcast i8* %941 to double*
  store double %947, double* %948, align 1, !tbaa !2452
  %949 = getelementptr inbounds i8, i8* %941, i64 8
  %950 = bitcast i8* %949 to double*
  store double 0.000000e+00, double* %950, align 1, !tbaa !2452
  %951 = load i64, i64* %RBP
  %952 = sub i64 %951, 48
  %953 = load i64, i64* %PC
  %954 = add i64 %953, 4
  store i64 %954, i64* %PC
  %955 = inttoptr i64 %952 to i64*
  %956 = load i64, i64* %955
  store i64 %956, i64* %RAX, align 8, !tbaa !2428
  %957 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %958 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %959 = load i64, i64* %RAX
  %960 = add i64 %959, 8
  %961 = load i64, i64* %PC
  %962 = add i64 %961, 5
  store i64 %962, i64* %PC
  %963 = bitcast i8* %958 to double*
  %964 = load double, double* %963, align 1
  %965 = getelementptr inbounds i8, i8* %958, i64 8
  %966 = bitcast i8* %965 to i64*
  %967 = load i64, i64* %966, align 1
  %968 = inttoptr i64 %960 to double*
  %969 = load double, double* %968
  %970 = fsub double %964, %969
  %971 = bitcast i8* %957 to double*
  store double %970, double* %971, align 1, !tbaa !2452
  %972 = getelementptr inbounds i8, i8* %957, i64 8
  %973 = bitcast i8* %972 to i64*
  store i64 %967, i64* %973, align 1, !tbaa !2452
  %974 = load i64, i64* %RBP
  %975 = sub i64 %974, 64
  %976 = bitcast %union.vec128_t* %XMM0 to i8*
  %977 = load i64, i64* %PC
  %978 = add i64 %977, 5
  store i64 %978, i64* %PC
  %979 = bitcast i8* %976 to double*
  %980 = load double, double* %979, align 1
  %981 = inttoptr i64 %975 to double*
  store double %980, double* %981
  %982 = load i64, i64* %RBP
  %983 = sub i64 %982, 40
  %984 = load i64, i64* %PC
  %985 = add i64 %984, 4
  store i64 %985, i64* %PC
  %986 = inttoptr i64 %983 to i64*
  %987 = load i64, i64* %986
  store i64 %987, i64* %RAX, align 8, !tbaa !2428
  %988 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %989 = load i64, i64* %RAX
  %990 = add i64 %989, 16
  %991 = load i64, i64* %PC
  %992 = add i64 %991, 5
  store i64 %992, i64* %PC
  %993 = inttoptr i64 %990 to double*
  %994 = load double, double* %993
  %995 = bitcast i8* %988 to double*
  store double %994, double* %995, align 1, !tbaa !2452
  %996 = getelementptr inbounds i8, i8* %988, i64 8
  %997 = bitcast i8* %996 to double*
  store double 0.000000e+00, double* %997, align 1, !tbaa !2452
  %998 = load i64, i64* %RBP
  %999 = sub i64 %998, 48
  %1000 = load i64, i64* %PC
  %1001 = add i64 %1000, 4
  store i64 %1001, i64* %PC
  %1002 = inttoptr i64 %999 to i64*
  %1003 = load i64, i64* %1002
  store i64 %1003, i64* %RAX, align 8, !tbaa !2428
  %1004 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1005 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1006 = load i64, i64* %RAX
  %1007 = add i64 %1006, 16
  %1008 = load i64, i64* %PC
  %1009 = add i64 %1008, 5
  store i64 %1009, i64* %PC
  %1010 = bitcast i8* %1005 to double*
  %1011 = load double, double* %1010, align 1
  %1012 = getelementptr inbounds i8, i8* %1005, i64 8
  %1013 = bitcast i8* %1012 to i64*
  %1014 = load i64, i64* %1013, align 1
  %1015 = inttoptr i64 %1007 to double*
  %1016 = load double, double* %1015
  %1017 = fsub double %1011, %1016
  %1018 = bitcast i8* %1004 to double*
  store double %1017, double* %1018, align 1, !tbaa !2452
  %1019 = getelementptr inbounds i8, i8* %1004, i64 8
  %1020 = bitcast i8* %1019 to i64*
  store i64 %1014, i64* %1020, align 1, !tbaa !2452
  %1021 = load i64, i64* %RBP
  %1022 = sub i64 %1021, 72
  %1023 = bitcast %union.vec128_t* %XMM0 to i8*
  %1024 = load i64, i64* %PC
  %1025 = add i64 %1024, 5
  store i64 %1025, i64* %PC
  %1026 = bitcast i8* %1023 to double*
  %1027 = load double, double* %1026, align 1
  %1028 = inttoptr i64 %1022 to double*
  store double %1027, double* %1028
  %1029 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1030 = load i64, i64* %RBP
  %1031 = sub i64 %1030, 56
  %1032 = load i64, i64* %PC
  %1033 = add i64 %1032, 5
  store i64 %1033, i64* %PC
  %1034 = inttoptr i64 %1031 to double*
  %1035 = load double, double* %1034
  %1036 = bitcast i8* %1029 to double*
  store double %1035, double* %1036, align 1, !tbaa !2452
  %1037 = getelementptr inbounds i8, i8* %1029, i64 8
  %1038 = bitcast i8* %1037 to double*
  store double 0.000000e+00, double* %1038, align 1, !tbaa !2452
  %1039 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1040 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1041 = load i64, i64* %RBP
  %1042 = sub i64 %1041, 56
  %1043 = load i64, i64* %PC
  %1044 = add i64 %1043, 5
  store i64 %1044, i64* %PC
  %1045 = bitcast i8* %1040 to double*
  %1046 = load double, double* %1045, align 1
  %1047 = getelementptr inbounds i8, i8* %1040, i64 8
  %1048 = bitcast i8* %1047 to i64*
  %1049 = load i64, i64* %1048, align 1
  %1050 = inttoptr i64 %1042 to double*
  %1051 = load double, double* %1050
  %1052 = fmul double %1046, %1051
  %1053 = bitcast i8* %1039 to double*
  store double %1052, double* %1053, align 1, !tbaa !2452
  %1054 = getelementptr inbounds i8, i8* %1039, i64 8
  %1055 = bitcast i8* %1054 to i64*
  store i64 %1049, i64* %1055, align 1, !tbaa !2452
  %1056 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1057 = load i64, i64* %RBP
  %1058 = sub i64 %1057, 64
  %1059 = load i64, i64* %PC
  %1060 = add i64 %1059, 5
  store i64 %1060, i64* %PC
  %1061 = inttoptr i64 %1058 to double*
  %1062 = load double, double* %1061
  %1063 = bitcast i8* %1056 to double*
  store double %1062, double* %1063, align 1, !tbaa !2452
  %1064 = getelementptr inbounds i8, i8* %1056, i64 8
  %1065 = bitcast i8* %1064 to double*
  store double 0.000000e+00, double* %1065, align 1, !tbaa !2452
  %1066 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1067 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1068 = load i64, i64* %RBP
  %1069 = sub i64 %1068, 64
  %1070 = load i64, i64* %PC
  %1071 = add i64 %1070, 5
  store i64 %1071, i64* %PC
  %1072 = bitcast i8* %1067 to double*
  %1073 = load double, double* %1072, align 1
  %1074 = getelementptr inbounds i8, i8* %1067, i64 8
  %1075 = bitcast i8* %1074 to i64*
  %1076 = load i64, i64* %1075, align 1
  %1077 = inttoptr i64 %1069 to double*
  %1078 = load double, double* %1077
  %1079 = fmul double %1073, %1078
  %1080 = bitcast i8* %1066 to double*
  store double %1079, double* %1080, align 1, !tbaa !2452
  %1081 = getelementptr inbounds i8, i8* %1066, i64 8
  %1082 = bitcast i8* %1081 to i64*
  store i64 %1076, i64* %1082, align 1, !tbaa !2452
  %1083 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1084 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1085 = bitcast %union.vec128_t* %XMM1 to i8*
  %1086 = load i64, i64* %PC
  %1087 = add i64 %1086, 4
  store i64 %1087, i64* %PC
  %1088 = bitcast i8* %1084 to double*
  %1089 = load double, double* %1088, align 1
  %1090 = getelementptr inbounds i8, i8* %1084, i64 8
  %1091 = bitcast i8* %1090 to i64*
  %1092 = load i64, i64* %1091, align 1
  %1093 = bitcast i8* %1085 to double*
  %1094 = load double, double* %1093, align 1
  %1095 = fadd double %1089, %1094
  %1096 = bitcast i8* %1083 to double*
  store double %1095, double* %1096, align 1, !tbaa !2452
  %1097 = getelementptr inbounds i8, i8* %1083, i64 8
  %1098 = bitcast i8* %1097 to i64*
  store i64 %1092, i64* %1098, align 1, !tbaa !2452
  %1099 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1100 = load i64, i64* %RBP
  %1101 = sub i64 %1100, 72
  %1102 = load i64, i64* %PC
  %1103 = add i64 %1102, 5
  store i64 %1103, i64* %PC
  %1104 = inttoptr i64 %1101 to double*
  %1105 = load double, double* %1104
  %1106 = bitcast i8* %1099 to double*
  store double %1105, double* %1106, align 1, !tbaa !2452
  %1107 = getelementptr inbounds i8, i8* %1099, i64 8
  %1108 = bitcast i8* %1107 to double*
  store double 0.000000e+00, double* %1108, align 1, !tbaa !2452
  %1109 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1110 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1111 = load i64, i64* %RBP
  %1112 = sub i64 %1111, 72
  %1113 = load i64, i64* %PC
  %1114 = add i64 %1113, 5
  store i64 %1114, i64* %PC
  %1115 = bitcast i8* %1110 to double*
  %1116 = load double, double* %1115, align 1
  %1117 = getelementptr inbounds i8, i8* %1110, i64 8
  %1118 = bitcast i8* %1117 to i64*
  %1119 = load i64, i64* %1118, align 1
  %1120 = inttoptr i64 %1112 to double*
  %1121 = load double, double* %1120
  %1122 = fmul double %1116, %1121
  %1123 = bitcast i8* %1109 to double*
  store double %1122, double* %1123, align 1, !tbaa !2452
  %1124 = getelementptr inbounds i8, i8* %1109, i64 8
  %1125 = bitcast i8* %1124 to i64*
  store i64 %1119, i64* %1125, align 1, !tbaa !2452
  %1126 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1127 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1128 = bitcast %union.vec128_t* %XMM1 to i8*
  %1129 = load i64, i64* %PC
  %1130 = add i64 %1129, 4
  store i64 %1130, i64* %PC
  %1131 = bitcast i8* %1127 to double*
  %1132 = load double, double* %1131, align 1
  %1133 = getelementptr inbounds i8, i8* %1127, i64 8
  %1134 = bitcast i8* %1133 to i64*
  %1135 = load i64, i64* %1134, align 1
  %1136 = bitcast i8* %1128 to double*
  %1137 = load double, double* %1136, align 1
  %1138 = fadd double %1132, %1137
  %1139 = bitcast i8* %1126 to double*
  store double %1138, double* %1139, align 1, !tbaa !2452
  %1140 = getelementptr inbounds i8, i8* %1126, i64 8
  %1141 = bitcast i8* %1140 to i64*
  store i64 %1135, i64* %1141, align 1, !tbaa !2452
  %1142 = load i64, i64* %PC
  %1143 = sub i64 %1142, 459
  %1144 = load i64, i64* %PC
  %1145 = add i64 %1144, 5
  %1146 = load i64, i64* %PC
  %1147 = add i64 %1146, 5
  store i64 %1147, i64* %PC
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1149 = load i64, i64* %1148, align 8, !tbaa !2428
  %1150 = add i64 %1149, -8
  %1151 = inttoptr i64 %1150 to i64*
  store i64 %1145, i64* %1151
  store i64 %1150, i64* %1148, align 8, !tbaa !2428
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1143, i64* %1152, align 8, !tbaa !2428
  %1153 = load i64, i64* %PC
  %1154 = bitcast %struct.State** %state.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1154)
  %1155 = bitcast i64* %curr_pc.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1155)
  %1156 = bitcast %struct.Memory** %memory.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1156)
  call void @llvm.lifetime.start(i64 1, i8* %BRANCH_TAKEN.i)
  %1157 = bitcast i64* %SS_BASE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1157)
  %1158 = bitcast i64* %ES_BASE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1158)
  %1159 = bitcast i64* %DS_BASE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1159)
  %1160 = bitcast i64* %CS_BASE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1160)
  %1161 = bitcast %struct.State** %STATE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1161)
  %1162 = bitcast %struct.Memory** %MEMORY.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1162)
  %1163 = bitcast i64** %_DR0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1163)
  %1164 = bitcast i64** %_DR1.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1164)
  %1165 = bitcast i64** %_DR2.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1165)
  %1166 = bitcast i64** %_DR3.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1166)
  %1167 = bitcast i64** %_DR4.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1167)
  %1168 = bitcast i64** %_DR5.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1168)
  %1169 = bitcast i64** %_DR6.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1169)
  %1170 = bitcast i64** %_DR7.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1170)
  %1171 = bitcast i64** %CR0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1171)
  %1172 = bitcast i64** %CR1.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1172)
  %1173 = bitcast i64** %CR2.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1173)
  %1174 = bitcast i64** %CR3.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1174)
  %1175 = bitcast i64** %CR4.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1175)
  %1176 = bitcast i64** %CR8.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1176)
  store %struct.State* %0, %struct.State** %state.i, align 8, !noalias !2454
  store i64 %1153, i64* %curr_pc.i, align 8, !noalias !2454
  store %struct.Memory* %MEMORY.0, %struct.Memory** %memory.i, align 8, !noalias !2454
  store i8 0, i8* %BRANCH_TAKEN.i, align 1, !noalias !2454
  store i64 0, i64* %SS_BASE.i, align 8, !noalias !2454
  store i64 0, i64* %ES_BASE.i, align 8, !noalias !2454
  store i64 0, i64* %DS_BASE.i, align 8, !noalias !2454
  store i64 0, i64* %CS_BASE.i, align 8, !noalias !2454
  store %struct.State* %0, %struct.State** %STATE.i, align 8, !noalias !2454
  store %struct.Memory* %MEMORY.0, %struct.Memory** %MEMORY.i, align 8, !noalias !2454
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 33
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %PC.i = bitcast %union.anon* %1179 to i64*
  store i64 %1153, i64* %PC.i, align 8, !alias.scope !2458, !noalias !2459
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 1
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %1183 = bitcast %union.anon* %1182 to %struct.anon.2*
  %AH.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1183, i32 0, i32 1
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1185 = getelementptr inbounds %struct.GPR, %struct.GPR* %1184, i32 0, i32 3
  %1186 = getelementptr inbounds %struct.Reg, %struct.Reg* %1185, i32 0, i32 0
  %1187 = bitcast %union.anon* %1186 to %struct.anon.2*
  %BH.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1187, i32 0, i32 1
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 5
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %1191 = bitcast %union.anon* %1190 to %struct.anon.2*
  %CH.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1191, i32 0, i32 1
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1193 = getelementptr inbounds %struct.GPR, %struct.GPR* %1192, i32 0, i32 7
  %1194 = getelementptr inbounds %struct.Reg, %struct.Reg* %1193, i32 0, i32 0
  %1195 = bitcast %union.anon* %1194 to %struct.anon.2*
  %DH.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1195, i32 0, i32 1
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1197 = getelementptr inbounds %struct.GPR, %struct.GPR* %1196, i32 0, i32 1
  %1198 = getelementptr inbounds %struct.Reg, %struct.Reg* %1197, i32 0, i32 0
  %1199 = bitcast %union.anon* %1198 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1199, i32 0, i32 0
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 3
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %1203 = bitcast %union.anon* %1202 to %struct.anon.2*
  %BL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1203, i32 0, i32 0
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 5
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %1207 = bitcast %union.anon* %1206 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1207, i32 0, i32 0
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 7
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %1211 = bitcast %union.anon* %1210 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1211, i32 0, i32 0
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 9
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %1215 = bitcast %union.anon* %1214 to %struct.anon.2*
  %SIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1215, i32 0, i32 0
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1217 = getelementptr inbounds %struct.GPR, %struct.GPR* %1216, i32 0, i32 11
  %1218 = getelementptr inbounds %struct.Reg, %struct.Reg* %1217, i32 0, i32 0
  %1219 = bitcast %union.anon* %1218 to %struct.anon.2*
  %DIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1219, i32 0, i32 0
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 13
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %1223 = bitcast %union.anon* %1222 to %struct.anon.2*
  %SPL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1223, i32 0, i32 0
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 15
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %1227 = bitcast %union.anon* %1226 to %struct.anon.2*
  %BPL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1227, i32 0, i32 0
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1229 = getelementptr inbounds %struct.GPR, %struct.GPR* %1228, i32 0, i32 17
  %1230 = getelementptr inbounds %struct.Reg, %struct.Reg* %1229, i32 0, i32 0
  %1231 = bitcast %union.anon* %1230 to %struct.anon.2*
  %R8B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1231, i32 0, i32 0
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1233 = getelementptr inbounds %struct.GPR, %struct.GPR* %1232, i32 0, i32 19
  %1234 = getelementptr inbounds %struct.Reg, %struct.Reg* %1233, i32 0, i32 0
  %1235 = bitcast %union.anon* %1234 to %struct.anon.2*
  %R9B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1235, i32 0, i32 0
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1237 = getelementptr inbounds %struct.GPR, %struct.GPR* %1236, i32 0, i32 21
  %1238 = getelementptr inbounds %struct.Reg, %struct.Reg* %1237, i32 0, i32 0
  %1239 = bitcast %union.anon* %1238 to %struct.anon.2*
  %R10B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1239, i32 0, i32 0
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 23
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %1243 = bitcast %union.anon* %1242 to %struct.anon.2*
  %R11B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1243, i32 0, i32 0
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1245 = getelementptr inbounds %struct.GPR, %struct.GPR* %1244, i32 0, i32 25
  %1246 = getelementptr inbounds %struct.Reg, %struct.Reg* %1245, i32 0, i32 0
  %1247 = bitcast %union.anon* %1246 to %struct.anon.2*
  %R12B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1247, i32 0, i32 0
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1249 = getelementptr inbounds %struct.GPR, %struct.GPR* %1248, i32 0, i32 27
  %1250 = getelementptr inbounds %struct.Reg, %struct.Reg* %1249, i32 0, i32 0
  %1251 = bitcast %union.anon* %1250 to %struct.anon.2*
  %R13B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1251, i32 0, i32 0
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 29
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %1255 = bitcast %union.anon* %1254 to %struct.anon.2*
  %R14B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1255, i32 0, i32 0
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1257 = getelementptr inbounds %struct.GPR, %struct.GPR* %1256, i32 0, i32 31
  %1258 = getelementptr inbounds %struct.Reg, %struct.Reg* %1257, i32 0, i32 0
  %1259 = bitcast %union.anon* %1258 to %struct.anon.2*
  %R15B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1259, i32 0, i32 0
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 1
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %AX.i = bitcast %union.anon* %1262 to i16*
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1264 = getelementptr inbounds %struct.GPR, %struct.GPR* %1263, i32 0, i32 3
  %1265 = getelementptr inbounds %struct.Reg, %struct.Reg* %1264, i32 0, i32 0
  %BX.i = bitcast %union.anon* %1265 to i16*
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1267 = getelementptr inbounds %struct.GPR, %struct.GPR* %1266, i32 0, i32 5
  %1268 = getelementptr inbounds %struct.Reg, %struct.Reg* %1267, i32 0, i32 0
  %CX.i = bitcast %union.anon* %1268 to i16*
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 7
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %DX.i = bitcast %union.anon* %1271 to i16*
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 9
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %SI.i = bitcast %union.anon* %1274 to i16*
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 11
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %DI.i = bitcast %union.anon* %1277 to i16*
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1279 = getelementptr inbounds %struct.GPR, %struct.GPR* %1278, i32 0, i32 13
  %1280 = getelementptr inbounds %struct.Reg, %struct.Reg* %1279, i32 0, i32 0
  %SP.i = bitcast %union.anon* %1280 to i16*
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 15
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %BP.i = bitcast %union.anon* %1283 to i16*
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 17
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %R8W.i = bitcast %union.anon* %1286 to i16*
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1288 = getelementptr inbounds %struct.GPR, %struct.GPR* %1287, i32 0, i32 19
  %1289 = getelementptr inbounds %struct.Reg, %struct.Reg* %1288, i32 0, i32 0
  %R9W.i = bitcast %union.anon* %1289 to i16*
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1291 = getelementptr inbounds %struct.GPR, %struct.GPR* %1290, i32 0, i32 21
  %1292 = getelementptr inbounds %struct.Reg, %struct.Reg* %1291, i32 0, i32 0
  %R10W.i = bitcast %union.anon* %1292 to i16*
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 23
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %R11W.i = bitcast %union.anon* %1295 to i16*
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 25
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %R12W.i = bitcast %union.anon* %1298 to i16*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 27
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %R13W.i = bitcast %union.anon* %1301 to i16*
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 29
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %R14W.i = bitcast %union.anon* %1304 to i16*
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1306 = getelementptr inbounds %struct.GPR, %struct.GPR* %1305, i32 0, i32 31
  %1307 = getelementptr inbounds %struct.Reg, %struct.Reg* %1306, i32 0, i32 0
  %R15W.i = bitcast %union.anon* %1307 to i16*
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 33
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %IP.i = bitcast %union.anon* %1310 to i16*
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 1
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %1313 to i32*
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 3
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %EBX.i = bitcast %union.anon* %1316 to i32*
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 5
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %1319 to i32*
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 7
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %1322 to i32*
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1324 = getelementptr inbounds %struct.GPR, %struct.GPR* %1323, i32 0, i32 9
  %1325 = getelementptr inbounds %struct.Reg, %struct.Reg* %1324, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %1325 to i32*
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1327 = getelementptr inbounds %struct.GPR, %struct.GPR* %1326, i32 0, i32 11
  %1328 = getelementptr inbounds %struct.Reg, %struct.Reg* %1327, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %1328 to i32*
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 13
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %ESP.i = bitcast %union.anon* %1331 to i32*
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1333 = getelementptr inbounds %struct.GPR, %struct.GPR* %1332, i32 0, i32 15
  %1334 = getelementptr inbounds %struct.Reg, %struct.Reg* %1333, i32 0, i32 0
  %EBP.i = bitcast %union.anon* %1334 to i32*
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 33
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %EIP.i = bitcast %union.anon* %1337 to i32*
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1339 = getelementptr inbounds %struct.GPR, %struct.GPR* %1338, i32 0, i32 17
  %1340 = getelementptr inbounds %struct.Reg, %struct.Reg* %1339, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %1340 to i32*
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1342 = getelementptr inbounds %struct.GPR, %struct.GPR* %1341, i32 0, i32 19
  %1343 = getelementptr inbounds %struct.Reg, %struct.Reg* %1342, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %1343 to i32*
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 21
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %1346 to i32*
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 23
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %1349 to i32*
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 25
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %R12D.i = bitcast %union.anon* %1352 to i32*
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 27
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %R13D.i = bitcast %union.anon* %1355 to i32*
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1357 = getelementptr inbounds %struct.GPR, %struct.GPR* %1356, i32 0, i32 29
  %1358 = getelementptr inbounds %struct.Reg, %struct.Reg* %1357, i32 0, i32 0
  %R14D.i = bitcast %union.anon* %1358 to i32*
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1360 = getelementptr inbounds %struct.GPR, %struct.GPR* %1359, i32 0, i32 31
  %1361 = getelementptr inbounds %struct.Reg, %struct.Reg* %1360, i32 0, i32 0
  %R15D.i = bitcast %union.anon* %1361 to i32*
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 1
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %1364 to i64*
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 3
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %1367 to i64*
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 5
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %1370 to i64*
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 7
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %1373 to i64*
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 9
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %1376 to i64*
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 11
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %1379 to i64*
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 13
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %1382 to i64*
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1384 = getelementptr inbounds %struct.GPR, %struct.GPR* %1383, i32 0, i32 15
  %1385 = getelementptr inbounds %struct.Reg, %struct.Reg* %1384, i32 0, i32 0
  %RBP.i = bitcast %union.anon* %1385 to i64*
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1387 = getelementptr inbounds %struct.GPR, %struct.GPR* %1386, i32 0, i32 17
  %1388 = getelementptr inbounds %struct.Reg, %struct.Reg* %1387, i32 0, i32 0
  %R8.i = bitcast %union.anon* %1388 to i64*
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 19
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %R9.i = bitcast %union.anon* %1391 to i64*
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 21
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %R10.i = bitcast %union.anon* %1394 to i64*
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 23
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %R11.i = bitcast %union.anon* %1397 to i64*
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 25
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %R12.i = bitcast %union.anon* %1400 to i64*
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 27
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %R13.i = bitcast %union.anon* %1403 to i64*
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 29
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %R14.i = bitcast %union.anon* %1406 to i64*
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1408 = getelementptr inbounds %struct.GPR, %struct.GPR* %1407, i32 0, i32 31
  %1409 = getelementptr inbounds %struct.Reg, %struct.Reg* %1408, i32 0, i32 0
  %R15.i = bitcast %union.anon* %1409 to i64*
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1411 = getelementptr inbounds %struct.GPR, %struct.GPR* %1410, i32 0, i32 33
  %1412 = getelementptr inbounds %struct.Reg, %struct.Reg* %1411, i32 0, i32 0
  %RIP.i = bitcast %union.anon* %1412 to i64*
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %1414 = getelementptr inbounds %struct.Segments, %struct.Segments* %1413, i32 0, i32 1
  %SS.i = bitcast %union.SegmentSelector* %1414 to i16*
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %1416 = getelementptr inbounds %struct.Segments, %struct.Segments* %1415, i32 0, i32 3
  %ES.i = bitcast %union.SegmentSelector* %1416 to i16*
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %1418 = getelementptr inbounds %struct.Segments, %struct.Segments* %1417, i32 0, i32 5
  %GS.i = bitcast %union.SegmentSelector* %1418 to i16*
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %1420 = getelementptr inbounds %struct.Segments, %struct.Segments* %1419, i32 0, i32 7
  %FS.i = bitcast %union.SegmentSelector* %1420 to i16*
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %1422 = getelementptr inbounds %struct.Segments, %struct.Segments* %1421, i32 0, i32 9
  %DS.i = bitcast %union.SegmentSelector* %1422 to i16*
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %1424 = getelementptr inbounds %struct.Segments, %struct.Segments* %1423, i32 0, i32 11
  %CS.i = bitcast %union.SegmentSelector* %1424 to i16*
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %1426 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %1425, i32 0, i32 5
  %1427 = getelementptr inbounds %struct.Reg, %struct.Reg* %1426, i32 0, i32 0
  %GS_BASE.i = bitcast %union.anon* %1427 to i64*
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %1429 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %1428, i32 0, i32 7
  %1430 = getelementptr inbounds %struct.Reg, %struct.Reg* %1429, i32 0, i32 0
  %FS_BASE.i = bitcast %union.anon* %1430 to i64*
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1432 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1431, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %1432 to %"class.std::bitset"*
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1434 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1433, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %1434 to %"class.std::bitset"*
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1436 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1435, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %1436 to %"class.std::bitset"*
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1438 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1437, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %1438 to %"class.std::bitset"*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1440 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1439, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %1440 to %"class.std::bitset"*
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1442 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1441, i64 0, i64 5
  %YMM5.i = bitcast %union.VectorReg* %1442 to %"class.std::bitset"*
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1444 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1443, i64 0, i64 6
  %YMM6.i = bitcast %union.VectorReg* %1444 to %"class.std::bitset"*
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1446 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1445, i64 0, i64 7
  %YMM7.i = bitcast %union.VectorReg* %1446 to %"class.std::bitset"*
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1448 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1447, i64 0, i64 8
  %YMM8.i = bitcast %union.VectorReg* %1448 to %"class.std::bitset"*
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1450 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1449, i64 0, i64 9
  %YMM9.i = bitcast %union.VectorReg* %1450 to %"class.std::bitset"*
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1452 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1451, i64 0, i64 10
  %YMM10.i = bitcast %union.VectorReg* %1452 to %"class.std::bitset"*
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1454 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1453, i64 0, i64 11
  %YMM11.i = bitcast %union.VectorReg* %1454 to %"class.std::bitset"*
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1456 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1455, i64 0, i64 12
  %YMM12.i = bitcast %union.VectorReg* %1456 to %"class.std::bitset"*
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1458 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1457, i64 0, i64 13
  %YMM13.i = bitcast %union.VectorReg* %1458 to %"class.std::bitset"*
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1460 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1459, i64 0, i64 14
  %YMM14.i = bitcast %union.VectorReg* %1460 to %"class.std::bitset"*
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1462 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1461, i64 0, i64 15
  %YMM15.i = bitcast %union.VectorReg* %1462 to %"class.std::bitset"*
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1464 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1463, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %1464 to %union.vec128_t*
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1466 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1465, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %1466 to %union.vec128_t*
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1468 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1467, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %1468 to %union.vec128_t*
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1470 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1469, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %1470 to %union.vec128_t*
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1472 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1471, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %1472 to %union.vec128_t*
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1474 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1473, i64 0, i64 5
  %XMM5.i = bitcast %union.VectorReg* %1474 to %union.vec128_t*
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1476 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1475, i64 0, i64 6
  %XMM6.i = bitcast %union.VectorReg* %1476 to %union.vec128_t*
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1478 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1477, i64 0, i64 7
  %XMM7.i = bitcast %union.VectorReg* %1478 to %union.vec128_t*
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1480 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1479, i64 0, i64 8
  %XMM8.i = bitcast %union.VectorReg* %1480 to %union.vec128_t*
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1482 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1481, i64 0, i64 9
  %XMM9.i = bitcast %union.VectorReg* %1482 to %union.vec128_t*
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1484 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1483, i64 0, i64 10
  %XMM10.i = bitcast %union.VectorReg* %1484 to %union.vec128_t*
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1486 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1485, i64 0, i64 11
  %XMM11.i = bitcast %union.VectorReg* %1486 to %union.vec128_t*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1488 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1487, i64 0, i64 12
  %XMM12.i = bitcast %union.VectorReg* %1488 to %union.vec128_t*
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1490 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1489, i64 0, i64 13
  %XMM13.i = bitcast %union.VectorReg* %1490 to %union.vec128_t*
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1492 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1491, i64 0, i64 14
  %XMM14.i = bitcast %union.VectorReg* %1492 to %union.vec128_t*
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1494 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1493, i64 0, i64 15
  %XMM15.i = bitcast %union.VectorReg* %1494 to %union.vec128_t*
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %1496 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %1495, i32 0, i32 0
  %1497 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %1496, i64 0, i64 0
  %ST0.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %1497, i32 0, i32 1
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %1499 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %1498, i32 0, i32 0
  %1500 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %1499, i64 0, i64 1
  %ST1.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %1500, i32 0, i32 1
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %1502 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %1501, i32 0, i32 0
  %1503 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %1502, i64 0, i64 2
  %ST2.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %1503, i32 0, i32 1
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %1505 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %1504, i32 0, i32 0
  %1506 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %1505, i64 0, i64 3
  %ST3.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %1506, i32 0, i32 1
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %1508 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %1507, i32 0, i32 0
  %1509 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %1508, i64 0, i64 4
  %ST4.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %1509, i32 0, i32 1
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %1511 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %1510, i32 0, i32 0
  %1512 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %1511, i64 0, i64 5
  %ST5.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %1512, i32 0, i32 1
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %1514 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %1513, i32 0, i32 0
  %1515 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %1514, i64 0, i64 6
  %ST6.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %1515, i32 0, i32 1
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %1517 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %1516, i32 0, i32 0
  %1518 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %1517, i64 0, i64 7
  %ST7.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %1518, i32 0, i32 1
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %1520 = getelementptr inbounds %struct.MMX, %struct.MMX* %1519, i32 0, i32 0
  %1521 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %1520, i64 0, i64 0
  %1522 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %1521, i32 0, i32 1
  %1523 = bitcast %union.vec64_t* %1522 to %struct.uint64v1_t*
  %1524 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %1523, i32 0, i32 0
  %MM0.i = getelementptr inbounds [1 x i64], [1 x i64]* %1524, i64 0, i64 0
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %1526 = getelementptr inbounds %struct.MMX, %struct.MMX* %1525, i32 0, i32 0
  %1527 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %1526, i64 0, i64 1
  %1528 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %1527, i32 0, i32 1
  %1529 = bitcast %union.vec64_t* %1528 to %struct.uint64v1_t*
  %1530 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %1529, i32 0, i32 0
  %MM1.i = getelementptr inbounds [1 x i64], [1 x i64]* %1530, i64 0, i64 0
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %1532 = getelementptr inbounds %struct.MMX, %struct.MMX* %1531, i32 0, i32 0
  %1533 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %1532, i64 0, i64 2
  %1534 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %1533, i32 0, i32 1
  %1535 = bitcast %union.vec64_t* %1534 to %struct.uint64v1_t*
  %1536 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %1535, i32 0, i32 0
  %MM2.i = getelementptr inbounds [1 x i64], [1 x i64]* %1536, i64 0, i64 0
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %1538 = getelementptr inbounds %struct.MMX, %struct.MMX* %1537, i32 0, i32 0
  %1539 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %1538, i64 0, i64 3
  %1540 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %1539, i32 0, i32 1
  %1541 = bitcast %union.vec64_t* %1540 to %struct.uint64v1_t*
  %1542 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %1541, i32 0, i32 0
  %MM3.i = getelementptr inbounds [1 x i64], [1 x i64]* %1542, i64 0, i64 0
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %1544 = getelementptr inbounds %struct.MMX, %struct.MMX* %1543, i32 0, i32 0
  %1545 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %1544, i64 0, i64 4
  %1546 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %1545, i32 0, i32 1
  %1547 = bitcast %union.vec64_t* %1546 to %struct.uint64v1_t*
  %1548 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %1547, i32 0, i32 0
  %MM4.i = getelementptr inbounds [1 x i64], [1 x i64]* %1548, i64 0, i64 0
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %1550 = getelementptr inbounds %struct.MMX, %struct.MMX* %1549, i32 0, i32 0
  %1551 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %1550, i64 0, i64 5
  %1552 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %1551, i32 0, i32 1
  %1553 = bitcast %union.vec64_t* %1552 to %struct.uint64v1_t*
  %1554 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %1553, i32 0, i32 0
  %MM5.i = getelementptr inbounds [1 x i64], [1 x i64]* %1554, i64 0, i64 0
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %1556 = getelementptr inbounds %struct.MMX, %struct.MMX* %1555, i32 0, i32 0
  %1557 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %1556, i64 0, i64 6
  %1558 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %1557, i32 0, i32 1
  %1559 = bitcast %union.vec64_t* %1558 to %struct.uint64v1_t*
  %1560 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %1559, i32 0, i32 0
  %MM6.i = getelementptr inbounds [1 x i64], [1 x i64]* %1560, i64 0, i64 0
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %1562 = getelementptr inbounds %struct.MMX, %struct.MMX* %1561, i32 0, i32 0
  %1563 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %1562, i64 0, i64 7
  %1564 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %1563, i32 0, i32 1
  %1565 = bitcast %union.vec64_t* %1564 to %struct.uint64v1_t*
  %1566 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %1565, i32 0, i32 0
  %MM7.i = getelementptr inbounds [1 x i64], [1 x i64]* %1566, i64 0, i64 0
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %AF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %1567, i32 0, i32 5
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %CF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %1568, i32 0, i32 1
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %DF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %1569, i32 0, i32 11
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %OF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %1570, i32 0, i32 13
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %PF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %1571, i32 0, i32 3
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %SF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %1572, i32 0, i32 9
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %ZF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %1573, i32 0, i32 7
  store i64* @DR0, i64** %_DR0.i, align 8, !noalias !2454
  store i64* @DR1, i64** %_DR1.i, align 8, !noalias !2454
  store i64* @DR2, i64** %_DR2.i, align 8, !noalias !2454
  store i64* @DR3, i64** %_DR3.i, align 8, !noalias !2454
  store i64* @DR4, i64** %_DR4.i, align 8, !noalias !2454
  store i64* @DR5, i64** %_DR5.i, align 8, !noalias !2454
  store i64* @DR6, i64** %_DR6.i, align 8, !noalias !2454
  store i64* @DR7, i64** %_DR7.i, align 8, !noalias !2454
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR0, i32 0, i32 0), i64** %CR0.i, align 8, !noalias !2454
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR1, i32 0, i32 0), i64** %CR1.i, align 8, !noalias !2454
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR2, i32 0, i32 0), i64** %CR2.i, align 8, !noalias !2454
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR3, i32 0, i32 0), i64** %CR3.i, align 8, !noalias !2454
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR4, i32 0, i32 0), i64** %CR4.i, align 8, !noalias !2454
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR8, i32 0, i32 0), i64** %CR8.i, align 8, !noalias !2454
  %1574 = bitcast %"class.std::bitset"* %YMM0.i to double*
  %1575 = load double, double* %1574, !alias.scope !2458, !noalias !2459
  %1576 = load i64, i64* %RSP.i, !alias.scope !2458, !noalias !2459
  %1577 = load %struct.Memory*, %struct.Memory** %MEMORY.i, !noalias !2454
  %1578 = inttoptr i64 %1576 to i64*
  %1579 = load i64, i64* %1578
  store i64 %1579, i64* %PC.i, !alias.scope !2458, !noalias !2459
  %1580 = add i64 %1576, 8
  store i64 %1580, i64* %RSP.i, !alias.scope !2458, !noalias !2459
  %1581 = call double @sqrt(double %1575)
  store %"class.std::bitset" zeroinitializer, %"class.std::bitset"* %YMM0.i, !alias.scope !2458, !noalias !2459
  %1582 = bitcast %"class.std::bitset"* %YMM0.i to double*
  store double %1581, double* %1582, !alias.scope !2458, !noalias !2459
  %1583 = load %struct.Memory*, %struct.Memory** %MEMORY.i, !noalias !2454
  %1584 = bitcast %struct.State** %state.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1584)
  %1585 = bitcast i64* %curr_pc.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1585)
  %1586 = bitcast %struct.Memory** %memory.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1586)
  call void @llvm.lifetime.end(i64 1, i8* %BRANCH_TAKEN.i)
  %1587 = bitcast i64* %SS_BASE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1587)
  %1588 = bitcast i64* %ES_BASE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1588)
  %1589 = bitcast i64* %DS_BASE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1589)
  %1590 = bitcast i64* %CS_BASE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1590)
  %1591 = bitcast %struct.State** %STATE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1591)
  %1592 = bitcast %struct.Memory** %MEMORY.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1592)
  %1593 = bitcast i64** %_DR0.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1593)
  %1594 = bitcast i64** %_DR1.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1594)
  %1595 = bitcast i64** %_DR2.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1595)
  %1596 = bitcast i64** %_DR3.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1596)
  %1597 = bitcast i64** %_DR4.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1597)
  %1598 = bitcast i64** %_DR5.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1598)
  %1599 = bitcast i64** %_DR6.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1599)
  %1600 = bitcast i64** %_DR7.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1600)
  %1601 = bitcast i64** %CR0.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1601)
  %1602 = bitcast i64** %CR1.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1602)
  %1603 = bitcast i64** %CR2.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1603)
  %1604 = bitcast i64** %CR3.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1604)
  %1605 = bitcast i64** %CR4.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1605)
  %1606 = bitcast i64** %CR8.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1606)
  %1607 = load i64, i64* %RBP
  %1608 = sub i64 %1607, 80
  %1609 = bitcast %union.vec128_t* %XMM0 to i8*
  %1610 = load i64, i64* %PC
  %1611 = add i64 %1610, 5
  store i64 %1611, i64* %PC
  %1612 = bitcast i8* %1609 to double*
  %1613 = load double, double* %1612, align 1
  %1614 = inttoptr i64 %1608 to double*
  store double %1613, double* %1614
  %1615 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1616 = load i64, i64* %RBP
  %1617 = sub i64 %1616, 24
  %1618 = load i64, i64* %PC
  %1619 = add i64 %1618, 5
  store i64 %1619, i64* %PC
  %1620 = inttoptr i64 %1617 to double*
  %1621 = load double, double* %1620
  %1622 = bitcast i8* %1615 to double*
  store double %1621, double* %1622, align 1, !tbaa !2452
  %1623 = getelementptr inbounds i8, i8* %1615, i64 8
  %1624 = bitcast i8* %1623 to double*
  store double 0.000000e+00, double* %1624, align 1, !tbaa !2452
  %1625 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1626 = load i64, i64* %RBP
  %1627 = sub i64 %1626, 80
  %1628 = load i64, i64* %PC
  %1629 = add i64 %1628, 5
  store i64 %1629, i64* %PC
  %1630 = inttoptr i64 %1627 to double*
  %1631 = load double, double* %1630
  %1632 = bitcast i8* %1625 to double*
  store double %1631, double* %1632, align 1, !tbaa !2452
  %1633 = getelementptr inbounds i8, i8* %1625, i64 8
  %1634 = bitcast i8* %1633 to double*
  store double 0.000000e+00, double* %1634, align 1, !tbaa !2452
  %1635 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1636 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1637 = load i64, i64* %RBP
  %1638 = sub i64 %1637, 80
  %1639 = load i64, i64* %PC
  %1640 = add i64 %1639, 5
  store i64 %1640, i64* %PC
  %1641 = bitcast i8* %1636 to double*
  %1642 = load double, double* %1641, align 1
  %1643 = getelementptr inbounds i8, i8* %1636, i64 8
  %1644 = bitcast i8* %1643 to i64*
  %1645 = load i64, i64* %1644, align 1
  %1646 = inttoptr i64 %1638 to double*
  %1647 = load double, double* %1646
  %1648 = fmul double %1642, %1647
  %1649 = bitcast i8* %1635 to double*
  store double %1648, double* %1649, align 1, !tbaa !2452
  %1650 = getelementptr inbounds i8, i8* %1635, i64 8
  %1651 = bitcast i8* %1650 to i64*
  store i64 %1645, i64* %1651, align 1, !tbaa !2452
  %1652 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1653 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1654 = load i64, i64* %RBP
  %1655 = sub i64 %1654, 80
  %1656 = load i64, i64* %PC
  %1657 = add i64 %1656, 5
  store i64 %1657, i64* %PC
  %1658 = bitcast i8* %1653 to double*
  %1659 = load double, double* %1658, align 1
  %1660 = getelementptr inbounds i8, i8* %1653, i64 8
  %1661 = bitcast i8* %1660 to i64*
  %1662 = load i64, i64* %1661, align 1
  %1663 = inttoptr i64 %1655 to double*
  %1664 = load double, double* %1663
  %1665 = fmul double %1659, %1664
  %1666 = bitcast i8* %1652 to double*
  store double %1665, double* %1666, align 1, !tbaa !2452
  %1667 = getelementptr inbounds i8, i8* %1652, i64 8
  %1668 = bitcast i8* %1667 to i64*
  store i64 %1662, i64* %1668, align 1, !tbaa !2452
  %1669 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1670 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1671 = bitcast %union.vec128_t* %XMM1 to i8*
  %1672 = load i64, i64* %PC
  %1673 = add i64 %1672, 4
  store i64 %1673, i64* %PC
  %1674 = bitcast i8* %1670 to double*
  %1675 = load double, double* %1674, align 1
  %1676 = getelementptr inbounds i8, i8* %1670, i64 8
  %1677 = bitcast i8* %1676 to i64*
  %1678 = load i64, i64* %1677, align 1
  %1679 = bitcast i8* %1671 to double*
  %1680 = load double, double* %1679, align 1
  %1681 = fdiv double %1675, %1680
  %1682 = bitcast i8* %1669 to double*
  store double %1681, double* %1682, align 1, !tbaa !2452
  %1683 = getelementptr inbounds i8, i8* %1669, i64 8
  %1684 = bitcast i8* %1683 to i64*
  store i64 %1678, i64* %1684, align 1, !tbaa !2452
  %1685 = load i64, i64* %RBP
  %1686 = sub i64 %1685, 88
  %1687 = bitcast %union.vec128_t* %XMM0 to i8*
  %1688 = load i64, i64* %PC
  %1689 = add i64 %1688, 5
  store i64 %1689, i64* %PC
  %1690 = bitcast i8* %1687 to double*
  %1691 = load double, double* %1690, align 1
  %1692 = inttoptr i64 %1686 to double*
  store double %1691, double* %1692
  %1693 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1694 = load i64, i64* %RBP
  %1695 = sub i64 %1694, 56
  %1696 = load i64, i64* %PC
  %1697 = add i64 %1696, 5
  store i64 %1697, i64* %PC
  %1698 = inttoptr i64 %1695 to double*
  %1699 = load double, double* %1698
  %1700 = bitcast i8* %1693 to double*
  store double %1699, double* %1700, align 1, !tbaa !2452
  %1701 = getelementptr inbounds i8, i8* %1693, i64 8
  %1702 = bitcast i8* %1701 to double*
  store double 0.000000e+00, double* %1702, align 1, !tbaa !2452
  %1703 = load i64, i64* %RBP
  %1704 = sub i64 %1703, 48
  %1705 = load i64, i64* %PC
  %1706 = add i64 %1705, 4
  store i64 %1706, i64* %PC
  %1707 = inttoptr i64 %1704 to i64*
  %1708 = load i64, i64* %1707
  store i64 %1708, i64* %RAX, align 8, !tbaa !2428
  %1709 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1710 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1711 = load i64, i64* %RAX
  %1712 = add i64 %1711, 48
  %1713 = load i64, i64* %PC
  %1714 = add i64 %1713, 5
  store i64 %1714, i64* %PC
  %1715 = bitcast i8* %1710 to double*
  %1716 = load double, double* %1715, align 1
  %1717 = getelementptr inbounds i8, i8* %1710, i64 8
  %1718 = bitcast i8* %1717 to i64*
  %1719 = load i64, i64* %1718, align 1
  %1720 = inttoptr i64 %1712 to double*
  %1721 = load double, double* %1720
  %1722 = fmul double %1716, %1721
  %1723 = bitcast i8* %1709 to double*
  store double %1722, double* %1723, align 1, !tbaa !2452
  %1724 = getelementptr inbounds i8, i8* %1709, i64 8
  %1725 = bitcast i8* %1724 to i64*
  store i64 %1719, i64* %1725, align 1, !tbaa !2452
  %1726 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1727 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1728 = load i64, i64* %RBP
  %1729 = sub i64 %1728, 88
  %1730 = load i64, i64* %PC
  %1731 = add i64 %1730, 5
  store i64 %1731, i64* %PC
  %1732 = bitcast i8* %1727 to double*
  %1733 = load double, double* %1732, align 1
  %1734 = getelementptr inbounds i8, i8* %1727, i64 8
  %1735 = bitcast i8* %1734 to i64*
  %1736 = load i64, i64* %1735, align 1
  %1737 = inttoptr i64 %1729 to double*
  %1738 = load double, double* %1737
  %1739 = fmul double %1733, %1738
  %1740 = bitcast i8* %1726 to double*
  store double %1739, double* %1740, align 1, !tbaa !2452
  %1741 = getelementptr inbounds i8, i8* %1726, i64 8
  %1742 = bitcast i8* %1741 to i64*
  store i64 %1736, i64* %1742, align 1, !tbaa !2452
  %1743 = load i64, i64* %RBP
  %1744 = sub i64 %1743, 40
  %1745 = load i64, i64* %PC
  %1746 = add i64 %1745, 4
  store i64 %1746, i64* %PC
  %1747 = inttoptr i64 %1744 to i64*
  %1748 = load i64, i64* %1747
  store i64 %1748, i64* %RAX, align 8, !tbaa !2428
  %1749 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1750 = load i64, i64* %RAX
  %1751 = add i64 %1750, 24
  %1752 = load i64, i64* %PC
  %1753 = add i64 %1752, 5
  store i64 %1753, i64* %PC
  %1754 = inttoptr i64 %1751 to double*
  %1755 = load double, double* %1754
  %1756 = bitcast i8* %1749 to double*
  store double %1755, double* %1756, align 1, !tbaa !2452
  %1757 = getelementptr inbounds i8, i8* %1749, i64 8
  %1758 = bitcast i8* %1757 to double*
  store double 0.000000e+00, double* %1758, align 1, !tbaa !2452
  %1759 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1760 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1761 = bitcast %union.vec128_t* %XMM0 to i8*
  %1762 = load i64, i64* %PC
  %1763 = add i64 %1762, 4
  store i64 %1763, i64* %PC
  %1764 = bitcast i8* %1760 to double*
  %1765 = load double, double* %1764, align 1
  %1766 = getelementptr inbounds i8, i8* %1760, i64 8
  %1767 = bitcast i8* %1766 to i64*
  %1768 = load i64, i64* %1767, align 1
  %1769 = bitcast i8* %1761 to double*
  %1770 = load double, double* %1769, align 1
  %1771 = fsub double %1765, %1770
  %1772 = bitcast i8* %1759 to double*
  store double %1771, double* %1772, align 1, !tbaa !2452
  %1773 = getelementptr inbounds i8, i8* %1759, i64 8
  %1774 = bitcast i8* %1773 to i64*
  store i64 %1768, i64* %1774, align 1, !tbaa !2452
  %1775 = load i64, i64* %RAX
  %1776 = add i64 %1775, 24
  %1777 = bitcast %union.vec128_t* %XMM1 to i8*
  %1778 = load i64, i64* %PC
  %1779 = add i64 %1778, 5
  store i64 %1779, i64* %PC
  %1780 = bitcast i8* %1777 to double*
  %1781 = load double, double* %1780, align 1
  %1782 = inttoptr i64 %1776 to double*
  store double %1781, double* %1782
  %1783 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1784 = load i64, i64* %RBP
  %1785 = sub i64 %1784, 64
  %1786 = load i64, i64* %PC
  %1787 = add i64 %1786, 5
  store i64 %1787, i64* %PC
  %1788 = inttoptr i64 %1785 to double*
  %1789 = load double, double* %1788
  %1790 = bitcast i8* %1783 to double*
  store double %1789, double* %1790, align 1, !tbaa !2452
  %1791 = getelementptr inbounds i8, i8* %1783, i64 8
  %1792 = bitcast i8* %1791 to double*
  store double 0.000000e+00, double* %1792, align 1, !tbaa !2452
  %1793 = load i64, i64* %RBP
  %1794 = sub i64 %1793, 48
  %1795 = load i64, i64* %PC
  %1796 = add i64 %1795, 4
  store i64 %1796, i64* %PC
  %1797 = inttoptr i64 %1794 to i64*
  %1798 = load i64, i64* %1797
  store i64 %1798, i64* %RAX, align 8, !tbaa !2428
  %1799 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1800 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1801 = load i64, i64* %RAX
  %1802 = add i64 %1801, 48
  %1803 = load i64, i64* %PC
  %1804 = add i64 %1803, 5
  store i64 %1804, i64* %PC
  %1805 = bitcast i8* %1800 to double*
  %1806 = load double, double* %1805, align 1
  %1807 = getelementptr inbounds i8, i8* %1800, i64 8
  %1808 = bitcast i8* %1807 to i64*
  %1809 = load i64, i64* %1808, align 1
  %1810 = inttoptr i64 %1802 to double*
  %1811 = load double, double* %1810
  %1812 = fmul double %1806, %1811
  %1813 = bitcast i8* %1799 to double*
  store double %1812, double* %1813, align 1, !tbaa !2452
  %1814 = getelementptr inbounds i8, i8* %1799, i64 8
  %1815 = bitcast i8* %1814 to i64*
  store i64 %1809, i64* %1815, align 1, !tbaa !2452
  %1816 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1817 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1818 = load i64, i64* %RBP
  %1819 = sub i64 %1818, 88
  %1820 = load i64, i64* %PC
  %1821 = add i64 %1820, 5
  store i64 %1821, i64* %PC
  %1822 = bitcast i8* %1817 to double*
  %1823 = load double, double* %1822, align 1
  %1824 = getelementptr inbounds i8, i8* %1817, i64 8
  %1825 = bitcast i8* %1824 to i64*
  %1826 = load i64, i64* %1825, align 1
  %1827 = inttoptr i64 %1819 to double*
  %1828 = load double, double* %1827
  %1829 = fmul double %1823, %1828
  %1830 = bitcast i8* %1816 to double*
  store double %1829, double* %1830, align 1, !tbaa !2452
  %1831 = getelementptr inbounds i8, i8* %1816, i64 8
  %1832 = bitcast i8* %1831 to i64*
  store i64 %1826, i64* %1832, align 1, !tbaa !2452
  %1833 = load i64, i64* %RBP
  %1834 = sub i64 %1833, 40
  %1835 = load i64, i64* %PC
  %1836 = add i64 %1835, 4
  store i64 %1836, i64* %PC
  %1837 = inttoptr i64 %1834 to i64*
  %1838 = load i64, i64* %1837
  store i64 %1838, i64* %RAX, align 8, !tbaa !2428
  %1839 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1840 = load i64, i64* %RAX
  %1841 = add i64 %1840, 32
  %1842 = load i64, i64* %PC
  %1843 = add i64 %1842, 5
  store i64 %1843, i64* %PC
  %1844 = inttoptr i64 %1841 to double*
  %1845 = load double, double* %1844
  %1846 = bitcast i8* %1839 to double*
  store double %1845, double* %1846, align 1, !tbaa !2452
  %1847 = getelementptr inbounds i8, i8* %1839, i64 8
  %1848 = bitcast i8* %1847 to double*
  store double 0.000000e+00, double* %1848, align 1, !tbaa !2452
  %1849 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1850 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1851 = bitcast %union.vec128_t* %XMM0 to i8*
  %1852 = load i64, i64* %PC
  %1853 = add i64 %1852, 4
  store i64 %1853, i64* %PC
  %1854 = bitcast i8* %1850 to double*
  %1855 = load double, double* %1854, align 1
  %1856 = getelementptr inbounds i8, i8* %1850, i64 8
  %1857 = bitcast i8* %1856 to i64*
  %1858 = load i64, i64* %1857, align 1
  %1859 = bitcast i8* %1851 to double*
  %1860 = load double, double* %1859, align 1
  %1861 = fsub double %1855, %1860
  %1862 = bitcast i8* %1849 to double*
  store double %1861, double* %1862, align 1, !tbaa !2452
  %1863 = getelementptr inbounds i8, i8* %1849, i64 8
  %1864 = bitcast i8* %1863 to i64*
  store i64 %1858, i64* %1864, align 1, !tbaa !2452
  %1865 = load i64, i64* %RAX
  %1866 = add i64 %1865, 32
  %1867 = bitcast %union.vec128_t* %XMM1 to i8*
  %1868 = load i64, i64* %PC
  %1869 = add i64 %1868, 5
  store i64 %1869, i64* %PC
  %1870 = bitcast i8* %1867 to double*
  %1871 = load double, double* %1870, align 1
  %1872 = inttoptr i64 %1866 to double*
  store double %1871, double* %1872
  %1873 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1874 = load i64, i64* %RBP
  %1875 = sub i64 %1874, 72
  %1876 = load i64, i64* %PC
  %1877 = add i64 %1876, 5
  store i64 %1877, i64* %PC
  %1878 = inttoptr i64 %1875 to double*
  %1879 = load double, double* %1878
  %1880 = bitcast i8* %1873 to double*
  store double %1879, double* %1880, align 1, !tbaa !2452
  %1881 = getelementptr inbounds i8, i8* %1873, i64 8
  %1882 = bitcast i8* %1881 to double*
  store double 0.000000e+00, double* %1882, align 1, !tbaa !2452
  %1883 = load i64, i64* %RBP
  %1884 = sub i64 %1883, 48
  %1885 = load i64, i64* %PC
  %1886 = add i64 %1885, 4
  store i64 %1886, i64* %PC
  %1887 = inttoptr i64 %1884 to i64*
  %1888 = load i64, i64* %1887
  store i64 %1888, i64* %RAX, align 8, !tbaa !2428
  %1889 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1890 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1891 = load i64, i64* %RAX
  %1892 = add i64 %1891, 48
  %1893 = load i64, i64* %PC
  %1894 = add i64 %1893, 5
  store i64 %1894, i64* %PC
  %1895 = bitcast i8* %1890 to double*
  %1896 = load double, double* %1895, align 1
  %1897 = getelementptr inbounds i8, i8* %1890, i64 8
  %1898 = bitcast i8* %1897 to i64*
  %1899 = load i64, i64* %1898, align 1
  %1900 = inttoptr i64 %1892 to double*
  %1901 = load double, double* %1900
  %1902 = fmul double %1896, %1901
  %1903 = bitcast i8* %1889 to double*
  store double %1902, double* %1903, align 1, !tbaa !2452
  %1904 = getelementptr inbounds i8, i8* %1889, i64 8
  %1905 = bitcast i8* %1904 to i64*
  store i64 %1899, i64* %1905, align 1, !tbaa !2452
  %1906 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1907 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1908 = load i64, i64* %RBP
  %1909 = sub i64 %1908, 88
  %1910 = load i64, i64* %PC
  %1911 = add i64 %1910, 5
  store i64 %1911, i64* %PC
  %1912 = bitcast i8* %1907 to double*
  %1913 = load double, double* %1912, align 1
  %1914 = getelementptr inbounds i8, i8* %1907, i64 8
  %1915 = bitcast i8* %1914 to i64*
  %1916 = load i64, i64* %1915, align 1
  %1917 = inttoptr i64 %1909 to double*
  %1918 = load double, double* %1917
  %1919 = fmul double %1913, %1918
  %1920 = bitcast i8* %1906 to double*
  store double %1919, double* %1920, align 1, !tbaa !2452
  %1921 = getelementptr inbounds i8, i8* %1906, i64 8
  %1922 = bitcast i8* %1921 to i64*
  store i64 %1916, i64* %1922, align 1, !tbaa !2452
  %1923 = load i64, i64* %RBP
  %1924 = sub i64 %1923, 40
  %1925 = load i64, i64* %PC
  %1926 = add i64 %1925, 4
  store i64 %1926, i64* %PC
  %1927 = inttoptr i64 %1924 to i64*
  %1928 = load i64, i64* %1927
  store i64 %1928, i64* %RAX, align 8, !tbaa !2428
  %1929 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1930 = load i64, i64* %RAX
  %1931 = add i64 %1930, 40
  %1932 = load i64, i64* %PC
  %1933 = add i64 %1932, 5
  store i64 %1933, i64* %PC
  %1934 = inttoptr i64 %1931 to double*
  %1935 = load double, double* %1934
  %1936 = bitcast i8* %1929 to double*
  store double %1935, double* %1936, align 1, !tbaa !2452
  %1937 = getelementptr inbounds i8, i8* %1929, i64 8
  %1938 = bitcast i8* %1937 to double*
  store double 0.000000e+00, double* %1938, align 1, !tbaa !2452
  %1939 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1940 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1941 = bitcast %union.vec128_t* %XMM0 to i8*
  %1942 = load i64, i64* %PC
  %1943 = add i64 %1942, 4
  store i64 %1943, i64* %PC
  %1944 = bitcast i8* %1940 to double*
  %1945 = load double, double* %1944, align 1
  %1946 = getelementptr inbounds i8, i8* %1940, i64 8
  %1947 = bitcast i8* %1946 to i64*
  %1948 = load i64, i64* %1947, align 1
  %1949 = bitcast i8* %1941 to double*
  %1950 = load double, double* %1949, align 1
  %1951 = fsub double %1945, %1950
  %1952 = bitcast i8* %1939 to double*
  store double %1951, double* %1952, align 1, !tbaa !2452
  %1953 = getelementptr inbounds i8, i8* %1939, i64 8
  %1954 = bitcast i8* %1953 to i64*
  store i64 %1948, i64* %1954, align 1, !tbaa !2452
  %1955 = load i64, i64* %RAX
  %1956 = add i64 %1955, 40
  %1957 = bitcast %union.vec128_t* %XMM1 to i8*
  %1958 = load i64, i64* %PC
  %1959 = add i64 %1958, 5
  store i64 %1959, i64* %PC
  %1960 = bitcast i8* %1957 to double*
  %1961 = load double, double* %1960, align 1
  %1962 = inttoptr i64 %1956 to double*
  store double %1961, double* %1962
  %1963 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1964 = load i64, i64* %RBP
  %1965 = sub i64 %1964, 56
  %1966 = load i64, i64* %PC
  %1967 = add i64 %1966, 5
  store i64 %1967, i64* %PC
  %1968 = inttoptr i64 %1965 to double*
  %1969 = load double, double* %1968
  %1970 = bitcast i8* %1963 to double*
  store double %1969, double* %1970, align 1, !tbaa !2452
  %1971 = getelementptr inbounds i8, i8* %1963, i64 8
  %1972 = bitcast i8* %1971 to double*
  store double 0.000000e+00, double* %1972, align 1, !tbaa !2452
  %1973 = load i64, i64* %RBP
  %1974 = sub i64 %1973, 40
  %1975 = load i64, i64* %PC
  %1976 = add i64 %1975, 4
  store i64 %1976, i64* %PC
  %1977 = inttoptr i64 %1974 to i64*
  %1978 = load i64, i64* %1977
  store i64 %1978, i64* %RAX, align 8, !tbaa !2428
  %1979 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1980 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1981 = load i64, i64* %RAX
  %1982 = add i64 %1981, 48
  %1983 = load i64, i64* %PC
  %1984 = add i64 %1983, 5
  store i64 %1984, i64* %PC
  %1985 = bitcast i8* %1980 to double*
  %1986 = load double, double* %1985, align 1
  %1987 = getelementptr inbounds i8, i8* %1980, i64 8
  %1988 = bitcast i8* %1987 to i64*
  %1989 = load i64, i64* %1988, align 1
  %1990 = inttoptr i64 %1982 to double*
  %1991 = load double, double* %1990
  %1992 = fmul double %1986, %1991
  %1993 = bitcast i8* %1979 to double*
  store double %1992, double* %1993, align 1, !tbaa !2452
  %1994 = getelementptr inbounds i8, i8* %1979, i64 8
  %1995 = bitcast i8* %1994 to i64*
  store i64 %1989, i64* %1995, align 1, !tbaa !2452
  %1996 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1997 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1998 = load i64, i64* %RBP
  %1999 = sub i64 %1998, 88
  %2000 = load i64, i64* %PC
  %2001 = add i64 %2000, 5
  store i64 %2001, i64* %PC
  %2002 = bitcast i8* %1997 to double*
  %2003 = load double, double* %2002, align 1
  %2004 = getelementptr inbounds i8, i8* %1997, i64 8
  %2005 = bitcast i8* %2004 to i64*
  %2006 = load i64, i64* %2005, align 1
  %2007 = inttoptr i64 %1999 to double*
  %2008 = load double, double* %2007
  %2009 = fmul double %2003, %2008
  %2010 = bitcast i8* %1996 to double*
  store double %2009, double* %2010, align 1, !tbaa !2452
  %2011 = getelementptr inbounds i8, i8* %1996, i64 8
  %2012 = bitcast i8* %2011 to i64*
  store i64 %2006, i64* %2012, align 1, !tbaa !2452
  %2013 = load i64, i64* %RBP
  %2014 = sub i64 %2013, 48
  %2015 = load i64, i64* %PC
  %2016 = add i64 %2015, 4
  store i64 %2016, i64* %PC
  %2017 = inttoptr i64 %2014 to i64*
  %2018 = load i64, i64* %2017
  store i64 %2018, i64* %RAX, align 8, !tbaa !2428
  %2019 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2020 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2021 = load i64, i64* %RAX
  %2022 = add i64 %2021, 24
  %2023 = load i64, i64* %PC
  %2024 = add i64 %2023, 5
  store i64 %2024, i64* %PC
  %2025 = bitcast i8* %2020 to double*
  %2026 = load double, double* %2025, align 1
  %2027 = getelementptr inbounds i8, i8* %2020, i64 8
  %2028 = bitcast i8* %2027 to i64*
  %2029 = load i64, i64* %2028, align 1
  %2030 = inttoptr i64 %2022 to double*
  %2031 = load double, double* %2030
  %2032 = fadd double %2026, %2031
  %2033 = bitcast i8* %2019 to double*
  store double %2032, double* %2033, align 1, !tbaa !2452
  %2034 = getelementptr inbounds i8, i8* %2019, i64 8
  %2035 = bitcast i8* %2034 to i64*
  store i64 %2029, i64* %2035, align 1, !tbaa !2452
  %2036 = load i64, i64* %RAX
  %2037 = add i64 %2036, 24
  %2038 = bitcast %union.vec128_t* %XMM0 to i8*
  %2039 = load i64, i64* %PC
  %2040 = add i64 %2039, 5
  store i64 %2040, i64* %PC
  %2041 = bitcast i8* %2038 to double*
  %2042 = load double, double* %2041, align 1
  %2043 = inttoptr i64 %2037 to double*
  store double %2042, double* %2043
  %2044 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2045 = load i64, i64* %RBP
  %2046 = sub i64 %2045, 64
  %2047 = load i64, i64* %PC
  %2048 = add i64 %2047, 5
  store i64 %2048, i64* %PC
  %2049 = inttoptr i64 %2046 to double*
  %2050 = load double, double* %2049
  %2051 = bitcast i8* %2044 to double*
  store double %2050, double* %2051, align 1, !tbaa !2452
  %2052 = getelementptr inbounds i8, i8* %2044, i64 8
  %2053 = bitcast i8* %2052 to double*
  store double 0.000000e+00, double* %2053, align 1, !tbaa !2452
  %2054 = load i64, i64* %RBP
  %2055 = sub i64 %2054, 40
  %2056 = load i64, i64* %PC
  %2057 = add i64 %2056, 4
  store i64 %2057, i64* %PC
  %2058 = inttoptr i64 %2055 to i64*
  %2059 = load i64, i64* %2058
  store i64 %2059, i64* %RAX, align 8, !tbaa !2428
  %2060 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2061 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2062 = load i64, i64* %RAX
  %2063 = add i64 %2062, 48
  %2064 = load i64, i64* %PC
  %2065 = add i64 %2064, 5
  store i64 %2065, i64* %PC
  %2066 = bitcast i8* %2061 to double*
  %2067 = load double, double* %2066, align 1
  %2068 = getelementptr inbounds i8, i8* %2061, i64 8
  %2069 = bitcast i8* %2068 to i64*
  %2070 = load i64, i64* %2069, align 1
  %2071 = inttoptr i64 %2063 to double*
  %2072 = load double, double* %2071
  %2073 = fmul double %2067, %2072
  %2074 = bitcast i8* %2060 to double*
  store double %2073, double* %2074, align 1, !tbaa !2452
  %2075 = getelementptr inbounds i8, i8* %2060, i64 8
  %2076 = bitcast i8* %2075 to i64*
  store i64 %2070, i64* %2076, align 1, !tbaa !2452
  %2077 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2078 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2079 = load i64, i64* %RBP
  %2080 = sub i64 %2079, 88
  %2081 = load i64, i64* %PC
  %2082 = add i64 %2081, 5
  store i64 %2082, i64* %PC
  %2083 = bitcast i8* %2078 to double*
  %2084 = load double, double* %2083, align 1
  %2085 = getelementptr inbounds i8, i8* %2078, i64 8
  %2086 = bitcast i8* %2085 to i64*
  %2087 = load i64, i64* %2086, align 1
  %2088 = inttoptr i64 %2080 to double*
  %2089 = load double, double* %2088
  %2090 = fmul double %2084, %2089
  %2091 = bitcast i8* %2077 to double*
  store double %2090, double* %2091, align 1, !tbaa !2452
  %2092 = getelementptr inbounds i8, i8* %2077, i64 8
  %2093 = bitcast i8* %2092 to i64*
  store i64 %2087, i64* %2093, align 1, !tbaa !2452
  %2094 = load i64, i64* %RBP
  %2095 = sub i64 %2094, 48
  %2096 = load i64, i64* %PC
  %2097 = add i64 %2096, 4
  store i64 %2097, i64* %PC
  %2098 = inttoptr i64 %2095 to i64*
  %2099 = load i64, i64* %2098
  store i64 %2099, i64* %RAX, align 8, !tbaa !2428
  %2100 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2101 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2102 = load i64, i64* %RAX
  %2103 = add i64 %2102, 32
  %2104 = load i64, i64* %PC
  %2105 = add i64 %2104, 5
  store i64 %2105, i64* %PC
  %2106 = bitcast i8* %2101 to double*
  %2107 = load double, double* %2106, align 1
  %2108 = getelementptr inbounds i8, i8* %2101, i64 8
  %2109 = bitcast i8* %2108 to i64*
  %2110 = load i64, i64* %2109, align 1
  %2111 = inttoptr i64 %2103 to double*
  %2112 = load double, double* %2111
  %2113 = fadd double %2107, %2112
  %2114 = bitcast i8* %2100 to double*
  store double %2113, double* %2114, align 1, !tbaa !2452
  %2115 = getelementptr inbounds i8, i8* %2100, i64 8
  %2116 = bitcast i8* %2115 to i64*
  store i64 %2110, i64* %2116, align 1, !tbaa !2452
  %2117 = load i64, i64* %RAX
  %2118 = add i64 %2117, 32
  %2119 = bitcast %union.vec128_t* %XMM0 to i8*
  %2120 = load i64, i64* %PC
  %2121 = add i64 %2120, 5
  store i64 %2121, i64* %PC
  %2122 = bitcast i8* %2119 to double*
  %2123 = load double, double* %2122, align 1
  %2124 = inttoptr i64 %2118 to double*
  store double %2123, double* %2124
  %2125 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2126 = load i64, i64* %RBP
  %2127 = sub i64 %2126, 72
  %2128 = load i64, i64* %PC
  %2129 = add i64 %2128, 5
  store i64 %2129, i64* %PC
  %2130 = inttoptr i64 %2127 to double*
  %2131 = load double, double* %2130
  %2132 = bitcast i8* %2125 to double*
  store double %2131, double* %2132, align 1, !tbaa !2452
  %2133 = getelementptr inbounds i8, i8* %2125, i64 8
  %2134 = bitcast i8* %2133 to double*
  store double 0.000000e+00, double* %2134, align 1, !tbaa !2452
  %2135 = load i64, i64* %RBP
  %2136 = sub i64 %2135, 40
  %2137 = load i64, i64* %PC
  %2138 = add i64 %2137, 4
  store i64 %2138, i64* %PC
  %2139 = inttoptr i64 %2136 to i64*
  %2140 = load i64, i64* %2139
  store i64 %2140, i64* %RAX, align 8, !tbaa !2428
  %2141 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2142 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2143 = load i64, i64* %RAX
  %2144 = add i64 %2143, 48
  %2145 = load i64, i64* %PC
  %2146 = add i64 %2145, 5
  store i64 %2146, i64* %PC
  %2147 = bitcast i8* %2142 to double*
  %2148 = load double, double* %2147, align 1
  %2149 = getelementptr inbounds i8, i8* %2142, i64 8
  %2150 = bitcast i8* %2149 to i64*
  %2151 = load i64, i64* %2150, align 1
  %2152 = inttoptr i64 %2144 to double*
  %2153 = load double, double* %2152
  %2154 = fmul double %2148, %2153
  %2155 = bitcast i8* %2141 to double*
  store double %2154, double* %2155, align 1, !tbaa !2452
  %2156 = getelementptr inbounds i8, i8* %2141, i64 8
  %2157 = bitcast i8* %2156 to i64*
  store i64 %2151, i64* %2157, align 1, !tbaa !2452
  %2158 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2159 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2160 = load i64, i64* %RBP
  %2161 = sub i64 %2160, 88
  %2162 = load i64, i64* %PC
  %2163 = add i64 %2162, 5
  store i64 %2163, i64* %PC
  %2164 = bitcast i8* %2159 to double*
  %2165 = load double, double* %2164, align 1
  %2166 = getelementptr inbounds i8, i8* %2159, i64 8
  %2167 = bitcast i8* %2166 to i64*
  %2168 = load i64, i64* %2167, align 1
  %2169 = inttoptr i64 %2161 to double*
  %2170 = load double, double* %2169
  %2171 = fmul double %2165, %2170
  %2172 = bitcast i8* %2158 to double*
  store double %2171, double* %2172, align 1, !tbaa !2452
  %2173 = getelementptr inbounds i8, i8* %2158, i64 8
  %2174 = bitcast i8* %2173 to i64*
  store i64 %2168, i64* %2174, align 1, !tbaa !2452
  %2175 = load i64, i64* %RBP
  %2176 = sub i64 %2175, 48
  %2177 = load i64, i64* %PC
  %2178 = add i64 %2177, 4
  store i64 %2178, i64* %PC
  %2179 = inttoptr i64 %2176 to i64*
  %2180 = load i64, i64* %2179
  store i64 %2180, i64* %RAX, align 8, !tbaa !2428
  %2181 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2182 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2183 = load i64, i64* %RAX
  %2184 = add i64 %2183, 40
  %2185 = load i64, i64* %PC
  %2186 = add i64 %2185, 5
  store i64 %2186, i64* %PC
  %2187 = bitcast i8* %2182 to double*
  %2188 = load double, double* %2187, align 1
  %2189 = getelementptr inbounds i8, i8* %2182, i64 8
  %2190 = bitcast i8* %2189 to i64*
  %2191 = load i64, i64* %2190, align 1
  %2192 = inttoptr i64 %2184 to double*
  %2193 = load double, double* %2192
  %2194 = fadd double %2188, %2193
  %2195 = bitcast i8* %2181 to double*
  store double %2194, double* %2195, align 1, !tbaa !2452
  %2196 = getelementptr inbounds i8, i8* %2181, i64 8
  %2197 = bitcast i8* %2196 to i64*
  store i64 %2191, i64* %2197, align 1, !tbaa !2452
  %2198 = load i64, i64* %RAX
  %2199 = add i64 %2198, 40
  %2200 = bitcast %union.vec128_t* %XMM0 to i8*
  %2201 = load i64, i64* %PC
  %2202 = add i64 %2201, 5
  store i64 %2202, i64* %PC
  %2203 = bitcast i8* %2200 to double*
  %2204 = load double, double* %2203, align 1
  %2205 = inttoptr i64 %2199 to double*
  store double %2204, double* %2205
  %2206 = load i64, i64* %RBP
  %2207 = sub i64 %2206, 32
  %2208 = load i64, i64* %PC
  %2209 = add i64 %2208, 3
  store i64 %2209, i64* %PC
  %2210 = inttoptr i64 %2207 to i32*
  %2211 = load i32, i32* %2210
  %2212 = zext i32 %2211 to i64
  store i64 %2212, i64* %RAX, align 8, !tbaa !2428
  %2213 = load i64, i64* %RAX
  %2214 = load i64, i64* %PC
  %2215 = add i64 %2214, 3
  store i64 %2215, i64* %PC
  %2216 = trunc i64 %2213 to i32
  %2217 = add i32 1, %2216
  %2218 = zext i32 %2217 to i64
  store i64 %2218, i64* %RAX, align 8, !tbaa !2428
  %2219 = icmp ult i32 %2217, %2216
  %2220 = icmp ult i32 %2217, 1
  %2221 = or i1 %2219, %2220
  %2222 = zext i1 %2221 to i8
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2222, i8* %2223, align 1, !tbaa !2432
  %2224 = and i32 %2217, 255
  %2225 = call i32 @llvm.ctpop.i32(i32 %2224) #17
  %2226 = trunc i32 %2225 to i8
  %2227 = and i8 %2226, 1
  %2228 = xor i8 %2227, 1
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2228, i8* %2229, align 1, !tbaa !2446
  %2230 = xor i64 1, %2213
  %2231 = trunc i64 %2230 to i32
  %2232 = xor i32 %2231, %2217
  %2233 = lshr i32 %2232, 4
  %2234 = trunc i32 %2233 to i8
  %2235 = and i8 %2234, 1
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2235, i8* %2236, align 1, !tbaa !2447
  %2237 = icmp eq i32 %2217, 0
  %2238 = zext i1 %2237 to i8
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2238, i8* %2239, align 1, !tbaa !2448
  %2240 = lshr i32 %2217, 31
  %2241 = trunc i32 %2240 to i8
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2241, i8* %2242, align 1, !tbaa !2449
  %2243 = lshr i32 %2216, 31
  %2244 = xor i32 %2240, %2243
  %2245 = add nuw nsw i32 %2244, %2240
  %2246 = icmp eq i32 %2245, 2
  %2247 = zext i1 %2246 to i8
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2247, i8* %2248, align 1, !tbaa !2450
  %2249 = load i64, i64* %RBP
  %2250 = sub i64 %2249, 32
  %2251 = load i32, i32* %EAX
  %2252 = zext i32 %2251 to i64
  %2253 = load i64, i64* %PC
  %2254 = add i64 %2253, 3
  store i64 %2254, i64* %PC
  %2255 = inttoptr i64 %2250 to i32*
  store i32 %2251, i32* %2255
  %2256 = load i64, i64* %PC
  %2257 = sub i64 %2256, 394
  %2258 = load i64, i64* %PC
  %2259 = add i64 %2258, 5
  store i64 %2259, i64* %PC
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2257, i64* %2260, align 8, !tbaa !2428
  br label %block_4005b3

block_40058b:                                     ; preds = %block_400742, %block_400570
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_400570 ], [ %MEMORY.0, %block_400742 ]
  %2261 = load i64, i64* %RBP
  %2262 = sub i64 %2261, 28
  %2263 = load i64, i64* %PC
  %2264 = add i64 %2263, 3
  store i64 %2264, i64* %PC
  %2265 = inttoptr i64 %2262 to i32*
  %2266 = load i32, i32* %2265
  %2267 = zext i32 %2266 to i64
  store i64 %2267, i64* %RAX, align 8, !tbaa !2428
  %2268 = load i32, i32* %EAX
  %2269 = zext i32 %2268 to i64
  %2270 = load i64, i64* %RBP
  %2271 = sub i64 %2270, 4
  %2272 = load i64, i64* %PC
  %2273 = add i64 %2272, 3
  store i64 %2273, i64* %PC
  %2274 = inttoptr i64 %2271 to i32*
  %2275 = load i32, i32* %2274
  %2276 = sub i32 %2268, %2275
  %2277 = icmp ult i32 %2268, %2275
  %2278 = zext i1 %2277 to i8
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2278, i8* %2279, align 1, !tbaa !2432
  %2280 = and i32 %2276, 255
  %2281 = call i32 @llvm.ctpop.i32(i32 %2280) #17
  %2282 = trunc i32 %2281 to i8
  %2283 = and i8 %2282, 1
  %2284 = xor i8 %2283, 1
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2284, i8* %2285, align 1, !tbaa !2446
  %2286 = xor i32 %2275, %2268
  %2287 = xor i32 %2286, %2276
  %2288 = lshr i32 %2287, 4
  %2289 = trunc i32 %2288 to i8
  %2290 = and i8 %2289, 1
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2290, i8* %2291, align 1, !tbaa !2447
  %2292 = icmp eq i32 %2276, 0
  %2293 = zext i1 %2292 to i8
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2293, i8* %2294, align 1, !tbaa !2448
  %2295 = lshr i32 %2276, 31
  %2296 = trunc i32 %2295 to i8
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2296, i8* %2297, align 1, !tbaa !2449
  %2298 = lshr i32 %2268, 31
  %2299 = lshr i32 %2275, 31
  %2300 = xor i32 %2299, %2298
  %2301 = xor i32 %2295, %2298
  %2302 = add nuw nsw i32 %2301, %2300
  %2303 = icmp eq i32 %2302, 2
  %2304 = zext i1 %2303 to i8
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2304, i8* %2305, align 1, !tbaa !2450
  %2306 = load i64, i64* %PC
  %2307 = add i64 %2306, 452
  %2308 = load i64, i64* %PC
  %2309 = add i64 %2308, 6
  %2310 = load i64, i64* %PC
  %2311 = add i64 %2310, 6
  store i64 %2311, i64* %PC
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2313 = load i8, i8* %2312, align 1, !tbaa !2449
  %2314 = icmp ne i8 %2313, 0
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2316 = load i8, i8* %2315, align 1, !tbaa !2450
  %2317 = icmp ne i8 %2316, 0
  %2318 = xor i1 %2314, %2317
  %2319 = xor i1 %2318, true
  %2320 = zext i1 %2319 to i8
  store i8 %2320, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2322 = select i1 %2318, i64 %2309, i64 %2307
  store i64 %2322, i64* %2321, align 8, !tbaa !2428
  %2323 = load i8, i8* %BRANCH_TAKEN
  %2324 = icmp eq i8 %2323, 1
  %2325 = load i64, i64* %RBP
  br i1 %2324, label %block_400755, label %block_400597
}

; Function Attrs: noinline
define %struct.Memory* @sub_400ad0_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400ad0:
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
  %17 = getelementptr inbounds %struct.GPR, %struct.GPR* %16, i32 0, i32 11
  %18 = getelementptr inbounds %struct.Reg, %struct.Reg* %17, i32 0, i32 0
  %EDI = bitcast %union.anon* %18 to i32*
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0
  %RAX = bitcast %union.anon* %21 to i64*
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %23 = getelementptr inbounds %struct.GPR, %struct.GPR* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.Reg, %struct.Reg* %23, i32 0, i32 0
  %RCX = bitcast %union.anon* %24 to i64*
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
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %38 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %37, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %38 to %"class.std::bitset"*
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
  %49 = load i64, i64* %RSP
  %50 = load i64, i64* %PC
  %51 = add i64 %50, 4
  store i64 %51, i64* %PC
  %52 = sub i64 %49, 32
  store i64 %52, i64* %RSP, align 8, !tbaa !2428
  %53 = icmp ult i64 %49, 32
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %54, i8* %55, align 1, !tbaa !2432
  %56 = trunc i64 %52 to i32
  %57 = and i32 %56, 255
  %58 = call i32 @llvm.ctpop.i32(i32 %57) #17
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 1
  %61 = xor i8 %60, 1
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %61, i8* %62, align 1, !tbaa !2446
  %63 = xor i64 32, %49
  %64 = xor i64 %63, %52
  %65 = lshr i64 %64, 4
  %66 = trunc i64 %65 to i8
  %67 = and i8 %66, 1
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %67, i8* %68, align 1, !tbaa !2447
  %69 = icmp eq i64 %52, 0
  %70 = zext i1 %69 to i8
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %70, i8* %71, align 1, !tbaa !2448
  %72 = lshr i64 %52, 63
  %73 = trunc i64 %72 to i8
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %73, i8* %74, align 1, !tbaa !2449
  %75 = lshr i64 %49, 63
  %76 = xor i64 %72, %75
  %77 = add nuw nsw i64 %76, %75
  %78 = icmp eq i64 %77, 2
  %79 = zext i1 %78 to i8
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %79, i8* %80, align 1, !tbaa !2450
  %81 = load i64, i64* %PC
  %82 = add i64 %81, 5
  store i64 %82, i64* %PC
  store i64 5, i64* %RAX, align 8, !tbaa !2428
  %83 = load i64, i64* %PC
  %84 = add i64 %83, 10
  store i64 %84, i64* %PC
  store i64 ptrtoint (%bodies_type* @bodies to i64), i64* %RCX, align 8, !tbaa !2428
  %85 = load i64, i64* %RBP
  %86 = sub i64 %85, 4
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 7
  store i64 %88, i64* %PC
  %89 = inttoptr i64 %86 to i32*
  store i32 0, i32* %89
  %90 = load i64, i64* %RBP
  %91 = sub i64 %90, 8
  %92 = load i32, i32* %EDI
  %93 = zext i32 %92 to i64
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 3
  store i64 %95, i64* %PC
  %96 = inttoptr i64 %91 to i32*
  store i32 %92, i32* %96
  %97 = load i64, i64* %RBP
  %98 = sub i64 %97, 16
  %99 = load i64, i64* %RSI
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 4
  store i64 %101, i64* %PC
  %102 = inttoptr i64 %98 to i64*
  store i64 %99, i64* %102
  %103 = load i64, i64* %RBP
  %104 = sub i64 %103, 20
  %105 = load i64, i64* %PC
  %106 = add i64 %105, 7
  store i64 %106, i64* %PC
  %107 = inttoptr i64 %104 to i32*
  store i32 5000000, i32* %107
  %108 = load i32, i32* %EAX
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 2
  store i64 %111, i64* %PC
  %112 = and i64 %109, 4294967295
  store i64 %112, i64* %RDI, align 8, !tbaa !2428
  %113 = load i64, i64* %RCX
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 3
  store i64 %115, i64* %PC
  store i64 %113, i64* %RSI, align 8, !tbaa !2428
  %116 = load i64, i64* %PC
  %117 = sub i64 %116, 385
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 5
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 5
  store i64 %121, i64* %PC
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %123 = load i64, i64* %122, align 8, !tbaa !2428
  %124 = add i64 %123, -8
  %125 = inttoptr i64 %124 to i64*
  store i64 %119, i64* %125
  store i64 %124, i64* %122, align 8, !tbaa !2428
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %117, i64* %126, align 8, !tbaa !2428
  %127 = load i64, i64* %PC
  %128 = call %struct.Memory* @sub_400980_offset_momentum(%struct.State* %0, i64 %127, %struct.Memory* %2)
  %129 = load i64, i64* %PC
  %130 = add i64 %129, 5
  store i64 %130, i64* %PC
  store i64 5, i64* %RDI, align 8, !tbaa !2428
  %131 = load i64, i64* %PC
  %132 = add i64 %131, 10
  store i64 %132, i64* %PC
  store i64 ptrtoint (%bodies_type* @bodies to i64), i64* %RSI, align 8, !tbaa !2428
  %133 = load i64, i64* %PC
  %134 = sub i64 %133, 805
  %135 = load i64, i64* %PC
  %136 = add i64 %135, 5
  %137 = load i64, i64* %PC
  %138 = add i64 %137, 5
  store i64 %138, i64* %PC
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %140 = load i64, i64* %139, align 8, !tbaa !2428
  %141 = add i64 %140, -8
  %142 = inttoptr i64 %141 to i64*
  store i64 %136, i64* %142
  store i64 %141, i64* %139, align 8, !tbaa !2428
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %134, i64* %143, align 8, !tbaa !2428
  %144 = load i64, i64* %PC
  %145 = call %struct.Memory* @sub_4007f0_energy(%struct.State* %0, i64 %144, %struct.Memory* %128)
  %146 = load i64, i64* %PC
  %147 = add i64 %146, 10
  store i64 %147, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 32), i64* %RDI, align 8, !tbaa !2428
  %148 = load i64, i64* %PC
  %149 = add i64 %148, 2
  store i64 %149, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %150 = load i64, i64* %PC
  %151 = sub i64 %150, 1734
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 5
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 5
  store i64 %155, i64* %PC
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %157 = load i64, i64* %156, align 8, !tbaa !2428
  %158 = add i64 %157, -8
  %159 = inttoptr i64 %158 to i64*
  store i64 %153, i64* %159
  store i64 %158, i64* %156, align 8, !tbaa !2428
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %151, i64* %160, align 8, !tbaa !2428
  %161 = load i64, i64* %PC
  %162 = call %struct.Memory* @ext_601178_printf(%struct.State* %0, i64 %161, %struct.Memory* %145)
  %163 = load i64, i64* %RBP
  %164 = sub i64 %163, 24
  %165 = load i64, i64* %PC
  %166 = add i64 %165, 7
  store i64 %166, i64* %PC
  %167 = inttoptr i64 %164 to i32*
  store i32 1, i32* %167
  %168 = load i64, i64* %RBP
  %169 = sub i64 %168, 28
  %170 = load i32, i32* %EAX
  %171 = zext i32 %170 to i64
  %172 = load i64, i64* %PC
  %173 = add i64 %172, 3
  store i64 %173, i64* %PC
  %174 = inttoptr i64 %169 to i32*
  store i32 %170, i32* %174
  br label %block_400b35

block_400b35:                                     ; preds = %block_400b41, %block_400ad0
  %MEMORY.0 = phi %struct.Memory* [ %162, %block_400ad0 ], [ %266, %block_400b41 ]
  %175 = load i64, i64* %RBP
  %176 = sub i64 %175, 24
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 3
  store i64 %178, i64* %PC
  %179 = inttoptr i64 %176 to i32*
  %180 = load i32, i32* %179
  %181 = zext i32 %180 to i64
  store i64 %181, i64* %RAX, align 8, !tbaa !2428
  %182 = load i32, i32* %EAX
  %183 = zext i32 %182 to i64
  %184 = load i64, i64* %RBP
  %185 = sub i64 %184, 20
  %186 = load i64, i64* %PC
  %187 = add i64 %186, 3
  store i64 %187, i64* %PC
  %188 = inttoptr i64 %185 to i32*
  %189 = load i32, i32* %188
  %190 = sub i32 %182, %189
  %191 = icmp ult i32 %182, %189
  %192 = zext i1 %191 to i8
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %192, i8* %193, align 1, !tbaa !2432
  %194 = and i32 %190, 255
  %195 = call i32 @llvm.ctpop.i32(i32 %194) #17
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  %198 = xor i8 %197, 1
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %198, i8* %199, align 1, !tbaa !2446
  %200 = xor i32 %189, %182
  %201 = xor i32 %200, %190
  %202 = lshr i32 %201, 4
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %204, i8* %205, align 1, !tbaa !2447
  %206 = icmp eq i32 %190, 0
  %207 = zext i1 %206 to i8
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %207, i8* %208, align 1, !tbaa !2448
  %209 = lshr i32 %190, 31
  %210 = trunc i32 %209 to i8
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %210, i8* %211, align 1, !tbaa !2449
  %212 = lshr i32 %182, 31
  %213 = lshr i32 %189, 31
  %214 = xor i32 %213, %212
  %215 = xor i32 %209, %212
  %216 = add nuw nsw i32 %215, %214
  %217 = icmp eq i32 %216, 2
  %218 = zext i1 %217 to i8
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %218, i8* %219, align 1, !tbaa !2450
  %220 = load i64, i64* %PC
  %221 = add i64 %220, 48
  %222 = load i64, i64* %PC
  %223 = add i64 %222, 6
  %224 = load i64, i64* %PC
  %225 = add i64 %224, 6
  store i64 %225, i64* %PC
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %227 = load i8, i8* %226, align 1, !tbaa !2448
  %228 = icmp eq i8 %227, 0
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %230 = load i8, i8* %229, align 1, !tbaa !2449
  %231 = icmp ne i8 %230, 0
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %233 = load i8, i8* %232, align 1, !tbaa !2450
  %234 = icmp ne i8 %233, 0
  %235 = xor i1 %231, %234
  %236 = xor i1 %235, true
  %237 = and i1 %228, %236
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %240 = select i1 %237, i64 %221, i64 %223
  store i64 %240, i64* %239, align 8, !tbaa !2428
  %241 = load i8, i8* %BRANCH_TAKEN
  %242 = icmp eq i8 %241, 1
  %243 = load i64, i64* %PC
  %244 = add i64 %243, 5
  store i64 %244, i64* %PC
  store i64 5, i64* %RDI, align 8, !tbaa !2428
  %245 = load i64, i64* %PC
  %246 = add i64 %245, 10
  store i64 %246, i64* %PC
  store i64 ptrtoint (%bodies_type* @bodies to i64), i64* %RSI, align 8, !tbaa !2428
  br i1 %242, label %block_400b6b, label %block_400b41

block_400b41:                                     ; preds = %block_400b35
  %247 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %248 = load i64, i64* %PC
  %249 = add i64 %248, 8
  store i64 %249, i64* %PC
  %250 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 24) to double*)
  %251 = bitcast i8* %247 to double*
  store double %250, double* %251, align 1, !tbaa !2452
  %252 = getelementptr inbounds i8, i8* %247, i64 8
  %253 = bitcast i8* %252 to double*
  store double 0.000000e+00, double* %253, align 1, !tbaa !2452
  %254 = load i64, i64* %PC
  %255 = sub i64 %254, 1512
  %256 = load i64, i64* %PC
  %257 = add i64 %256, 5
  %258 = load i64, i64* %PC
  %259 = add i64 %258, 5
  store i64 %259, i64* %PC
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %261 = load i64, i64* %260, align 8, !tbaa !2428
  %262 = add i64 %261, -8
  %263 = inttoptr i64 %262 to i64*
  store i64 %257, i64* %263
  store i64 %262, i64* %260, align 8, !tbaa !2428
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %255, i64* %264, align 8, !tbaa !2428
  %265 = load i64, i64* %PC
  %266 = call %struct.Memory* @sub_400570_advance(%struct.State* %0, i64 %265, %struct.Memory* %MEMORY.0)
  %267 = load i64, i64* %RBP
  %268 = sub i64 %267, 24
  %269 = load i64, i64* %PC
  %270 = add i64 %269, 3
  store i64 %270, i64* %PC
  %271 = inttoptr i64 %268 to i32*
  %272 = load i32, i32* %271
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %RAX, align 8, !tbaa !2428
  %274 = load i64, i64* %RAX
  %275 = load i64, i64* %PC
  %276 = add i64 %275, 3
  store i64 %276, i64* %PC
  %277 = trunc i64 %274 to i32
  %278 = add i32 1, %277
  %279 = zext i32 %278 to i64
  store i64 %279, i64* %RAX, align 8, !tbaa !2428
  %280 = icmp ult i32 %278, %277
  %281 = icmp ult i32 %278, 1
  %282 = or i1 %280, %281
  %283 = zext i1 %282 to i8
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %283, i8* %284, align 1, !tbaa !2432
  %285 = and i32 %278, 255
  %286 = call i32 @llvm.ctpop.i32(i32 %285) #17
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  %289 = xor i8 %288, 1
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %289, i8* %290, align 1, !tbaa !2446
  %291 = xor i64 1, %274
  %292 = trunc i64 %291 to i32
  %293 = xor i32 %292, %278
  %294 = lshr i32 %293, 4
  %295 = trunc i32 %294 to i8
  %296 = and i8 %295, 1
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %296, i8* %297, align 1, !tbaa !2447
  %298 = icmp eq i32 %278, 0
  %299 = zext i1 %298 to i8
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %299, i8* %300, align 1, !tbaa !2448
  %301 = lshr i32 %278, 31
  %302 = trunc i32 %301 to i8
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %302, i8* %303, align 1, !tbaa !2449
  %304 = lshr i32 %277, 31
  %305 = xor i32 %301, %304
  %306 = add nuw nsw i32 %305, %301
  %307 = icmp eq i32 %306, 2
  %308 = zext i1 %307 to i8
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %308, i8* %309, align 1, !tbaa !2450
  %310 = load i64, i64* %RBP
  %311 = sub i64 %310, 24
  %312 = load i32, i32* %EAX
  %313 = zext i32 %312 to i64
  %314 = load i64, i64* %PC
  %315 = add i64 %314, 3
  store i64 %315, i64* %PC
  %316 = inttoptr i64 %311 to i32*
  store i32 %312, i32* %316
  %317 = load i64, i64* %PC
  %318 = sub i64 %317, 49
  %319 = load i64, i64* %PC
  %320 = add i64 %319, 5
  store i64 %320, i64* %PC
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %318, i64* %321, align 8, !tbaa !2428
  br label %block_400b35

block_400b6b:                                     ; preds = %block_400b35
  %322 = load i64, i64* %PC
  %323 = sub i64 %322, 906
  %324 = load i64, i64* %PC
  %325 = add i64 %324, 5
  %326 = load i64, i64* %PC
  %327 = add i64 %326, 5
  store i64 %327, i64* %PC
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %329 = load i64, i64* %328, align 8, !tbaa !2428
  %330 = add i64 %329, -8
  %331 = inttoptr i64 %330 to i64*
  store i64 %325, i64* %331
  store i64 %330, i64* %328, align 8, !tbaa !2428
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %323, i64* %332, align 8, !tbaa !2428
  %333 = load i64, i64* %PC
  %334 = call %struct.Memory* @sub_4007f0_energy(%struct.State* %0, i64 %333, %struct.Memory* %MEMORY.0)
  %335 = load i64, i64* %PC
  %336 = add i64 %335, 10
  store i64 %336, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 32), i64* %RDI, align 8, !tbaa !2428
  %337 = load i64, i64* %PC
  %338 = add i64 %337, 2
  store i64 %338, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %339 = load i64, i64* %PC
  %340 = sub i64 %339, 1835
  %341 = load i64, i64* %PC
  %342 = add i64 %341, 5
  %343 = load i64, i64* %PC
  %344 = add i64 %343, 5
  store i64 %344, i64* %PC
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %346 = load i64, i64* %345, align 8, !tbaa !2428
  %347 = add i64 %346, -8
  %348 = inttoptr i64 %347 to i64*
  store i64 %342, i64* %348
  store i64 %347, i64* %345, align 8, !tbaa !2428
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %340, i64* %349, align 8, !tbaa !2428
  %350 = load i64, i64* %PC
  %351 = call %struct.Memory* @ext_601178_printf(%struct.State* %0, i64 %350, %struct.Memory* %334)
  %352 = load i64, i64* %RCX
  %353 = load i32, i32* %ECX
  %354 = zext i32 %353 to i64
  %355 = load i64, i64* %PC
  %356 = add i64 %355, 2
  store i64 %356, i64* %PC
  %357 = xor i64 %354, %352
  %358 = trunc i64 %357 to i32
  %359 = and i64 %357, 4294967295
  store i64 %359, i64* %RCX, align 8, !tbaa !2428
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %360, align 1, !tbaa !2432
  %361 = and i32 %358, 255
  %362 = call i32 @llvm.ctpop.i32(i32 %361) #17
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  %365 = xor i8 %364, 1
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %365, i8* %366, align 1, !tbaa !2446
  %367 = icmp eq i32 %358, 0
  %368 = zext i1 %367 to i8
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %368, i8* %369, align 1, !tbaa !2448
  %370 = lshr i32 %358, 31
  %371 = trunc i32 %370 to i8
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %371, i8* %372, align 1, !tbaa !2449
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %373, align 1, !tbaa !2450
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %374, align 1, !tbaa !2447
  %375 = load i64, i64* %RBP
  %376 = sub i64 %375, 32
  %377 = load i32, i32* %EAX
  %378 = zext i32 %377 to i64
  %379 = load i64, i64* %PC
  %380 = add i64 %379, 3
  store i64 %380, i64* %PC
  %381 = inttoptr i64 %376 to i32*
  store i32 %377, i32* %381
  %382 = load i32, i32* %ECX
  %383 = zext i32 %382 to i64
  %384 = load i64, i64* %PC
  %385 = add i64 %384, 2
  store i64 %385, i64* %PC
  %386 = and i64 %383, 4294967295
  store i64 %386, i64* %RAX, align 8, !tbaa !2428
  %387 = load i64, i64* %RSP
  %388 = load i64, i64* %PC
  %389 = add i64 %388, 4
  store i64 %389, i64* %PC
  %390 = add i64 32, %387
  store i64 %390, i64* %RSP, align 8, !tbaa !2428
  %391 = icmp ult i64 %390, %387
  %392 = icmp ult i64 %390, 32
  %393 = or i1 %391, %392
  %394 = zext i1 %393 to i8
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %394, i8* %395, align 1, !tbaa !2432
  %396 = trunc i64 %390 to i32
  %397 = and i32 %396, 255
  %398 = call i32 @llvm.ctpop.i32(i32 %397) #17
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  %401 = xor i8 %400, 1
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %401, i8* %402, align 1, !tbaa !2446
  %403 = xor i64 32, %387
  %404 = xor i64 %403, %390
  %405 = lshr i64 %404, 4
  %406 = trunc i64 %405 to i8
  %407 = and i8 %406, 1
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %407, i8* %408, align 1, !tbaa !2447
  %409 = icmp eq i64 %390, 0
  %410 = zext i1 %409 to i8
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %410, i8* %411, align 1, !tbaa !2448
  %412 = lshr i64 %390, 63
  %413 = trunc i64 %412 to i8
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %413, i8* %414, align 1, !tbaa !2449
  %415 = lshr i64 %387, 63
  %416 = xor i64 %412, %415
  %417 = add nuw nsw i64 %416, %412
  %418 = icmp eq i64 %417, 2
  %419 = zext i1 %418 to i8
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %419, i8* %420, align 1, !tbaa !2450
  %421 = load i64, i64* %PC
  %422 = add i64 %421, 1
  store i64 %422, i64* %PC
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %424 = load i64, i64* %423, align 8, !tbaa !2428
  %425 = add i64 %424, 8
  %426 = inttoptr i64 %424 to i64*
  %427 = load i64, i64* %426
  store i64 %427, i64* %RBP, align 8, !tbaa !2428
  store i64 %425, i64* %423, align 8, !tbaa !2428
  %428 = load i64, i64* %PC
  %429 = add i64 %428, 1
  store i64 %429, i64* %PC
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %432 = load i64, i64* %431, align 8, !tbaa !2428
  %433 = inttoptr i64 %432 to i64*
  %434 = load i64, i64* %433
  store i64 %434, i64* %430, align 8, !tbaa !2428
  %435 = add i64 %432, 8
  store i64 %435, i64* %431, align 8, !tbaa !2428
  ret %struct.Memory* %351
}

; Function Attrs: noinline
define %struct.Memory* @sub_400560_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400560:
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
  %35 = tail call %struct.Memory* @sub_4004f0_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004f0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4004f0:
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
  store i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64* %RSI, align 8, !tbaa !2428
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
  %39 = sub i64 %36, ptrtoint (%__bss_start_type* @__bss_start to i64)
  store i64 %39, i64* %RSI, align 8, !tbaa !2428
  %40 = icmp ult i64 %36, ptrtoint (%__bss_start_type* @__bss_start to i64)
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %41, i8* %42, align 1, !tbaa !2432
  %43 = trunc i64 %39 to i32
  %44 = and i32 %43, 255
  %45 = call i32 @llvm.ctpop.i32(i32 %44) #17
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = xor i8 %47, 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %48, i8* %49, align 1, !tbaa !2446
  %50 = xor i64 ptrtoint (%__bss_start_type* @__bss_start to i64), %36
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
  %63 = xor i64 lshr (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 63), %62
  %64 = xor i64 %59, %62
  %65 = add nuw nsw i64 %64, %63
  %66 = icmp eq i64 %65, 2
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %67, i8* %68, align 1, !tbaa !2450
  %69 = load i64, i64* %RSP
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 3
  store i64 %71, i64* %PC
  store i64 %69, i64* %RBP, align 8, !tbaa !2428
  %72 = load i64, i64* %RSI
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 4
  store i64 %74, i64* %PC
  %75 = ashr i64 %72, 2
  %76 = trunc i64 %75 to i8
  %77 = and i8 %76, 1
  %78 = ashr i64 %75, 1
  store i64 %78, i64* %RSI, align 8, !tbaa !2428
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %77, i8* %79, align 1, !tbaa !2451
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %81 = trunc i64 %78 to i32
  %82 = and i32 %81, 255
  %83 = call i32 @llvm.ctpop.i32(i32 %82) #17
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %80, align 1, !tbaa !2451
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %87, align 1, !tbaa !2451
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %89 = icmp eq i64 %78, 0
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %88, align 1, !tbaa !2451
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %92 = lshr i64 %78, 63
  %93 = trunc i64 %92 to i8
  store i8 %93, i8* %91, align 1, !tbaa !2451
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %94, align 1, !tbaa !2451
  %95 = load i64, i64* %RSI
  %96 = load i64, i64* %PC
  %97 = add i64 %96, 3
  store i64 %97, i64* %PC
  store i64 %95, i64* %RAX, align 8, !tbaa !2428
  %98 = load i64, i64* %RAX
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 4
  store i64 %100, i64* %PC
  %101 = lshr i64 %98, 62
  %102 = trunc i64 %101 to i8
  %103 = and i8 %102, 1
  %104 = lshr i64 %101, 1
  store i64 %104, i64* %RAX, align 8, !tbaa !2428
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %103, i8* %105, align 1, !tbaa !2451
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %107 = trunc i64 %104 to i32
  %108 = and i32 %107, 255
  %109 = call i32 @llvm.ctpop.i32(i32 %108) #17
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %106, align 1, !tbaa !2451
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %113, align 1, !tbaa !2451
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %115 = icmp eq i64 %104, 0
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %114, align 1, !tbaa !2451
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %117, align 1, !tbaa !2451
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %118, align 1, !tbaa !2451
  %119 = load i64, i64* %RSI
  %120 = load i64, i64* %RAX
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 3
  store i64 %122, i64* %PC
  %123 = add i64 %120, %119
  store i64 %123, i64* %RSI, align 8, !tbaa !2428
  %124 = icmp ult i64 %123, %119
  %125 = icmp ult i64 %123, %120
  %126 = or i1 %124, %125
  %127 = zext i1 %126 to i8
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %127, i8* %128, align 1, !tbaa !2432
  %129 = trunc i64 %123 to i32
  %130 = and i32 %129, 255
  %131 = call i32 @llvm.ctpop.i32(i32 %130) #17
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %134, i8* %135, align 1, !tbaa !2446
  %136 = xor i64 %120, %119
  %137 = xor i64 %136, %123
  %138 = lshr i64 %137, 4
  %139 = trunc i64 %138 to i8
  %140 = and i8 %139, 1
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %140, i8* %141, align 1, !tbaa !2447
  %142 = icmp eq i64 %123, 0
  %143 = zext i1 %142 to i8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %143, i8* %144, align 1, !tbaa !2448
  %145 = lshr i64 %123, 63
  %146 = trunc i64 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %146, i8* %147, align 1, !tbaa !2449
  %148 = lshr i64 %119, 63
  %149 = lshr i64 %120, 63
  %150 = xor i64 %145, %148
  %151 = xor i64 %145, %149
  %152 = add nuw nsw i64 %150, %151
  %153 = icmp eq i64 %152, 2
  %154 = zext i1 %153 to i8
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %154, i8* %155, align 1, !tbaa !2450
  %156 = load i64, i64* %RSI
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 3
  store i64 %158, i64* %PC
  %159 = trunc i64 %156 to i8
  %160 = and i8 %159, 1
  %161 = ashr i64 %156, 1
  store i64 %161, i64* %RSI, align 8, !tbaa !2428
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %160, i8* %162, align 1, !tbaa !2451
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %164 = trunc i64 %161 to i32
  %165 = and i32 %164, 255
  %166 = call i32 @llvm.ctpop.i32(i32 %165) #17
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  %169 = xor i8 %168, 1
  store i8 %169, i8* %163, align 1, !tbaa !2451
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %170, align 1, !tbaa !2451
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %172 = icmp eq i64 %161, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %171, align 1, !tbaa !2451
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %175 = lshr i64 %161, 63
  %176 = trunc i64 %175 to i8
  store i8 %176, i8* %174, align 1, !tbaa !2451
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %177, align 1, !tbaa !2451
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 23
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 2
  %182 = load i64, i64* %PC
  %183 = add i64 %182, 2
  store i64 %183, i64* %PC
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %185 = load i8, i8* %184, align 1, !tbaa !2448
  store i8 %185, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %187 = icmp ne i8 %185, 0
  %188 = select i1 %187, i64 %179, i64 %181
  store i64 %188, i64* %186, align 8, !tbaa !2428
  %189 = load i8, i8* %BRANCH_TAKEN
  %190 = icmp eq i8 %189, 1
  br i1 %190, label %block_400528, label %block_400513

block_40051d:                                     ; preds = %block_400513
  %191 = load i64, i64* %PC
  %192 = add i64 %191, 1
  store i64 %192, i64* %PC
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %194 = load i64, i64* %193, align 8, !tbaa !2428
  %195 = add i64 %194, 8
  %196 = inttoptr i64 %194 to i64*
  %197 = load i64, i64* %196
  store i64 %197, i64* %RBP, align 8, !tbaa !2428
  store i64 %195, i64* %193, align 8, !tbaa !2428
  %198 = load i64, i64* %PC
  %199 = add i64 %198, 5
  store i64 %199, i64* %PC
  store i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64* %RDI, align 8, !tbaa !2428
  %200 = load i64, i64* %RAX
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 2
  store i64 %202, i64* %PC
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %200, i64* %203, align 8, !tbaa !2428
  %204 = load i64, i64* %PC
  switch i64 %204, label %270 [
    i64 4195626, label %block_40052a
    i64 4195621, label %block_400525
  ]

block_40052a:                                     ; preds = %block_40051d
  %205 = load i64, i64* %RAX
  %206 = load i64, i64* %RAX
  %207 = add i64 %206, %205
  %208 = load i16, i16* %AX
  %209 = zext i16 %208 to i64
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 6
  store i64 %211, i64* %PC
  %212 = load i64, i64* %PC
  %213 = tail call %struct.Memory* @sub_400530___do_global_dtors_aux(%struct.State* %0, i64 %212, %struct.Memory* %2)
  ret %struct.Memory* %213

block_400513:                                     ; preds = %block_4004f0
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 5
  store i64 %215, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %216 = load i64, i64* %RAX
  %217 = load i64, i64* %RAX
  %218 = load i64, i64* %PC
  %219 = add i64 %218, 3
  store i64 %219, i64* %PC
  %220 = and i64 %217, %216
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %221, align 1, !tbaa !2432
  %222 = trunc i64 %220 to i32
  %223 = and i32 %222, 255
  %224 = call i32 @llvm.ctpop.i32(i32 %223) #17
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %227, i8* %228, align 1, !tbaa !2446
  %229 = icmp eq i64 %220, 0
  %230 = zext i1 %229 to i8
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %230, i8* %231, align 1, !tbaa !2448
  %232 = lshr i64 %220, 63
  %233 = trunc i64 %232 to i8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %233, i8* %234, align 1, !tbaa !2449
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %235, align 1, !tbaa !2450
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %236, align 1, !tbaa !2447
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 13
  %239 = load i64, i64* %PC
  %240 = add i64 %239, 2
  %241 = load i64, i64* %PC
  %242 = add i64 %241, 2
  store i64 %242, i64* %PC
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %244 = load i8, i8* %243, align 1, !tbaa !2448
  store i8 %244, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %246 = icmp ne i8 %244, 0
  %247 = select i1 %246, i64 %238, i64 %240
  store i64 %247, i64* %245, align 8, !tbaa !2428
  %248 = load i8, i8* %BRANCH_TAKEN
  %249 = icmp eq i8 %248, 1
  br i1 %249, label %block_400528, label %block_40051d

block_400528:                                     ; preds = %block_400525, %block_400513, %block_4004f0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4004f0 ], [ %2, %block_400513 ], [ %2, %block_400525 ]
  %250 = load i64, i64* %PC
  %251 = add i64 %250, 1
  store i64 %251, i64* %PC
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %253 = load i64, i64* %252, align 8, !tbaa !2428
  %254 = add i64 %253, 8
  %255 = inttoptr i64 %253 to i64*
  %256 = load i64, i64* %255
  store i64 %256, i64* %RBP, align 8, !tbaa !2428
  store i64 %254, i64* %252, align 8, !tbaa !2428
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 1
  store i64 %258, i64* %PC
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %261 = load i64, i64* %260, align 8, !tbaa !2428
  %262 = inttoptr i64 %261 to i64*
  %263 = load i64, i64* %262
  store i64 %263, i64* %259, align 8, !tbaa !2428
  %264 = add i64 %261, 8
  store i64 %264, i64* %260, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400525:                                     ; preds = %block_40051d
  %265 = load i64, i64* %RAX
  %266 = load i32, i32* %EAX
  %267 = zext i32 %266 to i64
  %268 = load i64, i64* %PC
  %269 = add i64 %268, 3
  store i64 %269, i64* %PC
  br label %block_400528

; <label>:270:                                    ; preds = %block_40051d
  %271 = load i64, i64* %PC
  %272 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %271, %struct.Memory* %2)
  ret %struct.Memory* %272
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004b0__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4004b0:
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
define %struct.Memory* @sub_400c10___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400c10:
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
define %struct.Memory* @sub_4004c0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4004c0:
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
  store i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  %33 = load i64, i64* %RAX
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 6
  store i64 %35, i64* %PC
  %36 = sub i64 %33, ptrtoint (%__bss_start_type* @__bss_start to i64)
  %37 = icmp ult i64 %33, ptrtoint (%__bss_start_type* @__bss_start to i64)
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %38, i8* %39, align 1, !tbaa !2432
  %40 = trunc i64 %36 to i32
  %41 = and i32 %40, 255
  %42 = call i32 @llvm.ctpop.i32(i32 %41) #17
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 1
  %45 = xor i8 %44, 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %45, i8* %46, align 1, !tbaa !2446
  %47 = xor i64 ptrtoint (%__bss_start_type* @__bss_start to i64), %33
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
  %60 = xor i64 lshr (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 63), %59
  %61 = xor i64 %56, %59
  %62 = add nuw nsw i64 %61, %60
  %63 = icmp eq i64 %62, 2
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %64, i8* %65, align 1, !tbaa !2450
  %66 = load i64, i64* %RSP
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 3
  store i64 %68, i64* %PC
  store i64 %66, i64* %RBP, align 8, !tbaa !2428
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 25
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 2
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 2
  store i64 %74, i64* %PC
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %76 = load i8, i8* %75, align 1, !tbaa !2448
  store i8 %76, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %78 = icmp ne i8 %76, 0
  %79 = select i1 %78, i64 %70, i64 %72
  store i64 %79, i64* %77, align 8, !tbaa !2428
  %80 = load i8, i8* %BRANCH_TAKEN
  %81 = icmp eq i8 %80, 1
  br i1 %81, label %block_4004e8, label %block_4004d1

block_4004db:                                     ; preds = %block_4004d1
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 1
  store i64 %83, i64* %PC
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %85 = load i64, i64* %84, align 8, !tbaa !2428
  %86 = add i64 %85, 8
  %87 = inttoptr i64 %85 to i64*
  %88 = load i64, i64* %87
  store i64 %88, i64* %RBP, align 8, !tbaa !2428
  store i64 %86, i64* %84, align 8, !tbaa !2428
  %89 = load i64, i64* %PC
  %90 = add i64 %89, 5
  store i64 %90, i64* %PC
  store i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64* %RDI, align 8, !tbaa !2428
  %91 = load i64, i64* %RAX
  %92 = load i64, i64* %PC
  %93 = add i64 %92, 2
  store i64 %93, i64* %PC
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %91, i64* %94, align 8, !tbaa !2428
  %95 = load i64, i64* %PC
  switch i64 %95, label %163 [
    i64 4195562, label %block_4004ea
    i64 4195555, label %block_4004e3
  ]

block_4004d1:                                     ; preds = %block_4004c0
  %96 = load i64, i64* %PC
  %97 = add i64 %96, 5
  store i64 %97, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %98 = load i64, i64* %RAX
  %99 = load i64, i64* %RAX
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 3
  store i64 %101, i64* %PC
  %102 = and i64 %99, %98
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %103, align 1, !tbaa !2432
  %104 = trunc i64 %102 to i32
  %105 = and i32 %104, 255
  %106 = call i32 @llvm.ctpop.i32(i32 %105) #17
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %109, i8* %110, align 1, !tbaa !2446
  %111 = icmp eq i64 %102, 0
  %112 = zext i1 %111 to i8
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %112, i8* %113, align 1, !tbaa !2448
  %114 = lshr i64 %102, 63
  %115 = trunc i64 %114 to i8
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %115, i8* %116, align 1, !tbaa !2449
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %117, align 1, !tbaa !2450
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %118, align 1, !tbaa !2447
  %119 = load i64, i64* %PC
  %120 = add i64 %119, 15
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 2
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 2
  store i64 %124, i64* %PC
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %126 = load i8, i8* %125, align 1, !tbaa !2448
  store i8 %126, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %128 = icmp ne i8 %126, 0
  %129 = select i1 %128, i64 %120, i64 %122
  store i64 %129, i64* %127, align 8, !tbaa !2428
  %130 = load i8, i8* %BRANCH_TAKEN
  %131 = icmp eq i8 %130, 1
  br i1 %131, label %block_4004e8, label %block_4004db

block_4004e8:                                     ; preds = %block_4004e3, %block_4004d1, %block_4004c0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4004c0 ], [ %2, %block_4004d1 ], [ %2, %block_4004e3 ]
  %132 = load i64, i64* %PC
  %133 = add i64 %132, 1
  store i64 %133, i64* %PC
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %135 = load i64, i64* %134, align 8, !tbaa !2428
  %136 = add i64 %135, 8
  %137 = inttoptr i64 %135 to i64*
  %138 = load i64, i64* %137
  store i64 %138, i64* %RBP, align 8, !tbaa !2428
  store i64 %136, i64* %134, align 8, !tbaa !2428
  %139 = load i64, i64* %PC
  %140 = add i64 %139, 1
  store i64 %140, i64* %PC
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %143 = load i64, i64* %142, align 8, !tbaa !2428
  %144 = inttoptr i64 %143 to i64*
  %145 = load i64, i64* %144
  store i64 %145, i64* %141, align 8, !tbaa !2428
  %146 = add i64 %143, 8
  store i64 %146, i64* %142, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_4004ea:                                     ; preds = %block_4004db
  %147 = load i64, i64* %RAX
  %148 = load i64, i64* %RAX
  %149 = add i64 %148, %147
  %150 = load i16, i16* %AX
  %151 = zext i16 %150 to i64
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 6
  store i64 %153, i64* %PC
  %154 = load i64, i64* %PC
  %155 = tail call %struct.Memory* @sub_4004f0_register_tm_clones(%struct.State* %0, i64 %154, %struct.Memory* %2)
  ret %struct.Memory* %155

block_4004e3:                                     ; preds = %block_4004db
  %156 = load i64, i64* %RAX
  %157 = load i64, i64* %RAX
  %158 = add i64 %157, %156
  %159 = load i32, i32* %EAX
  %160 = zext i32 %159 to i64
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 5
  store i64 %162, i64* %PC
  br label %block_4004e8

; <label>:163:                                    ; preds = %block_4004db
  %164 = load i64, i64* %PC
  %165 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %164, %struct.Memory* %2)
  ret %struct.Memory* %165
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007f0_energy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4007f0:
  %state.i = alloca %struct.State*, align 8
  %curr_pc.i = alloca i64, align 8
  %memory.i = alloca %struct.Memory*, align 8
  %BRANCH_TAKEN.i = alloca i8, align 1
  %SS_BASE.i = alloca i64, align 8
  %ES_BASE.i = alloca i64, align 8
  %DS_BASE.i = alloca i64, align 8
  %CS_BASE.i = alloca i64, align 8
  %STATE.i = alloca %struct.State*, align 8
  %MEMORY.i = alloca %struct.Memory*, align 8
  %_DR0.i = alloca i64*, align 8
  %_DR1.i = alloca i64*, align 8
  %_DR2.i = alloca i64*, align 8
  %_DR3.i = alloca i64*, align 8
  %_DR4.i = alloca i64*, align 8
  %_DR5.i = alloca i64*, align 8
  %_DR6.i = alloca i64*, align 8
  %_DR7.i = alloca i64*, align 8
  %CR0.i = alloca i64*, align 8
  %CR1.i = alloca i64*, align 8
  %CR2.i = alloca i64*, align 8
  %CR3.i = alloca i64*, align 8
  %CR4.i = alloca i64*, align 8
  %CR8.i = alloca i64*, align 8
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %EDX = bitcast %union.anon* %11 to i32*
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
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 13
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %RSP = bitcast %union.anon* %29 to i64*
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %31 = getelementptr inbounds %struct.GPR, %struct.GPR* %30, i32 0, i32 15
  %32 = getelementptr inbounds %struct.Reg, %struct.Reg* %31, i32 0, i32 0
  %RBP = bitcast %union.anon* %32 to i64*
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %34 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %33, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %34 to %"class.std::bitset"*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %36 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %35, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %36 to %"class.std::bitset"*
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %38 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %37, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %38 to %"class.std::bitset"*
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %40 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %39, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %40 to %union.vec128_t*
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %42 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %41, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %42 to %union.vec128_t*
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %44 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %43, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %44 to %union.vec128_t*
  %45 = load i64, i64* %RBP
  %46 = load i64, i64* %PC
  %47 = add i64 %46, 1
  store i64 %47, i64* %PC
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %49 = load i64, i64* %48, align 8, !tbaa !2428
  %50 = add i64 %49, -8
  %51 = inttoptr i64 %50 to i64*
  store i64 %45, i64* %51
  store i64 %50, i64* %48, align 8, !tbaa !2428
  %52 = load i64, i64* %RSP
  %53 = load i64, i64* %PC
  %54 = add i64 %53, 3
  store i64 %54, i64* %PC
  store i64 %52, i64* %RBP, align 8, !tbaa !2428
  %55 = load i64, i64* %RSP
  %56 = load i64, i64* %PC
  %57 = add i64 %56, 4
  store i64 %57, i64* %PC
  %58 = sub i64 %55, 80
  store i64 %58, i64* %RSP, align 8, !tbaa !2428
  %59 = icmp ult i64 %55, 80
  %60 = zext i1 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %60, i8* %61, align 1, !tbaa !2432
  %62 = trunc i64 %58 to i32
  %63 = and i32 %62, 255
  %64 = call i32 @llvm.ctpop.i32(i32 %63) #17
  %65 = trunc i32 %64 to i8
  %66 = and i8 %65, 1
  %67 = xor i8 %66, 1
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %67, i8* %68, align 1, !tbaa !2446
  %69 = xor i64 80, %55
  %70 = xor i64 %69, %58
  %71 = lshr i64 %70, 4
  %72 = trunc i64 %71 to i8
  %73 = and i8 %72, 1
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %73, i8* %74, align 1, !tbaa !2447
  %75 = icmp eq i64 %58, 0
  %76 = zext i1 %75 to i8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %76, i8* %77, align 1, !tbaa !2448
  %78 = lshr i64 %58, 63
  %79 = trunc i64 %78 to i8
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %79, i8* %80, align 1, !tbaa !2449
  %81 = lshr i64 %55, 63
  %82 = xor i64 %78, %81
  %83 = add nuw nsw i64 %82, %81
  %84 = icmp eq i64 %83, 2
  %85 = zext i1 %84 to i8
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %85, i8* %86, align 1, !tbaa !2450
  %87 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %88 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %89 = bitcast %union.vec128_t* %XMM0 to i8*
  %90 = load i64, i64* %PC
  %91 = add i64 %90, 3
  store i64 %91, i64* %PC
  %92 = bitcast i8* %88 to i64*
  %93 = load i64, i64* %92, align 1
  %94 = getelementptr inbounds i8, i8* %88, i64 8
  %95 = bitcast i8* %94 to i64*
  %96 = load i64, i64* %95, align 1
  %97 = bitcast i8* %89 to i64*
  %98 = load i64, i64* %97, align 1
  %99 = getelementptr inbounds i8, i8* %89, i64 8
  %100 = bitcast i8* %99 to i64*
  %101 = load i64, i64* %100, align 1
  %102 = xor i64 %98, %93
  %103 = xor i64 %101, %96
  %104 = trunc i64 %102 to i32
  %105 = lshr i64 %102, 32
  %106 = trunc i64 %105 to i32
  %107 = bitcast i8* %87 to i32*
  store i32 %104, i32* %107, align 1, !tbaa !2460
  %108 = getelementptr inbounds i8, i8* %87, i64 4
  %109 = bitcast i8* %108 to i32*
  store i32 %106, i32* %109, align 1, !tbaa !2460
  %110 = trunc i64 %103 to i32
  %111 = getelementptr inbounds i8, i8* %87, i64 8
  %112 = bitcast i8* %111 to i32*
  store i32 %110, i32* %112, align 1, !tbaa !2460
  %113 = lshr i64 %103, 32
  %114 = trunc i64 %113 to i32
  %115 = getelementptr inbounds i8, i8* %87, i64 12
  %116 = bitcast i8* %115 to i32*
  store i32 %114, i32* %116, align 1, !tbaa !2460
  %117 = load i64, i64* %RBP
  %118 = sub i64 %117, 4
  %119 = load i32, i32* %EDI
  %120 = zext i32 %119 to i64
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 3
  store i64 %122, i64* %PC
  %123 = inttoptr i64 %118 to i32*
  store i32 %119, i32* %123
  %124 = load i64, i64* %RBP
  %125 = sub i64 %124, 16
  %126 = load i64, i64* %RSI
  %127 = load i64, i64* %PC
  %128 = add i64 %127, 4
  store i64 %128, i64* %PC
  %129 = inttoptr i64 %125 to i64*
  store i64 %126, i64* %129
  %130 = load i64, i64* %RBP
  %131 = sub i64 %130, 24
  %132 = bitcast %union.vec128_t* %XMM0 to i8*
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 5
  store i64 %134, i64* %PC
  %135 = bitcast i8* %132 to double*
  %136 = load double, double* %135, align 1
  %137 = inttoptr i64 %131 to double*
  store double %136, double* %137
  %138 = load i64, i64* %RBP
  %139 = sub i64 %138, 28
  %140 = load i64, i64* %PC
  %141 = add i64 %140, 7
  store i64 %141, i64* %PC
  %142 = inttoptr i64 %139 to i32*
  store i32 0, i32* %142
  br label %block_40080e

block_40089f:                                     ; preds = %block_400893
  %143 = load i64, i64* %RBP
  %144 = sub i64 %143, 16
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 4
  store i64 %146, i64* %PC
  %147 = inttoptr i64 %144 to i64*
  %148 = load i64, i64* %147
  store i64 %148, i64* %RAX, align 8, !tbaa !2428
  %149 = load i64, i64* %RBP
  %150 = sub i64 %149, 32
  %151 = load i64, i64* %PC
  %152 = add i64 %151, 4
  store i64 %152, i64* %PC
  %153 = inttoptr i64 %150 to i32*
  %154 = load i32, i32* %153
  %155 = sext i32 %154 to i64
  store i64 %155, i64* %RCX, align 8, !tbaa !2428
  %156 = load i64, i64* %RCX
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 4
  store i64 %158, i64* %PC
  %159 = sext i64 %156 to i128
  %160 = and i128 %159, -18446744073709551616
  %161 = zext i64 %156 to i128
  %162 = or i128 %160, %161
  %163 = mul nsw i128 56, %162
  %164 = trunc i128 %163 to i64
  store i64 %164, i64* %RCX, align 8, !tbaa !2428
  %165 = sext i64 %164 to i128
  %166 = icmp ne i128 %165, %163
  %167 = zext i1 %166 to i8
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %167, i8* %168, align 1, !tbaa !2432
  %169 = trunc i128 %163 to i32
  %170 = and i32 %169, 255
  %171 = call i32 @llvm.ctpop.i32(i32 %170) #17
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  %174 = xor i8 %173, 1
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %174, i8* %175, align 1, !tbaa !2446
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %176, align 1, !tbaa !2447
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %177, align 1, !tbaa !2448
  %178 = lshr i64 %164, 63
  %179 = trunc i64 %178 to i8
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %179, i8* %180, align 1, !tbaa !2449
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %167, i8* %181, align 1, !tbaa !2450
  %182 = load i64, i64* %RAX
  %183 = load i64, i64* %RCX
  %184 = load i64, i64* %PC
  %185 = add i64 %184, 3
  store i64 %185, i64* %PC
  %186 = add i64 %183, %182
  store i64 %186, i64* %RAX, align 8, !tbaa !2428
  %187 = icmp ult i64 %186, %182
  %188 = icmp ult i64 %186, %183
  %189 = or i1 %187, %188
  %190 = zext i1 %189 to i8
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %190, i8* %191, align 1, !tbaa !2432
  %192 = trunc i64 %186 to i32
  %193 = and i32 %192, 255
  %194 = call i32 @llvm.ctpop.i32(i32 %193) #17
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  %197 = xor i8 %196, 1
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %197, i8* %198, align 1, !tbaa !2446
  %199 = xor i64 %183, %182
  %200 = xor i64 %199, %186
  %201 = lshr i64 %200, 4
  %202 = trunc i64 %201 to i8
  %203 = and i8 %202, 1
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %203, i8* %204, align 1, !tbaa !2447
  %205 = icmp eq i64 %186, 0
  %206 = zext i1 %205 to i8
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %206, i8* %207, align 1, !tbaa !2448
  %208 = lshr i64 %186, 63
  %209 = trunc i64 %208 to i8
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %209, i8* %210, align 1, !tbaa !2449
  %211 = lshr i64 %182, 63
  %212 = lshr i64 %183, 63
  %213 = xor i64 %208, %211
  %214 = xor i64 %208, %212
  %215 = add nuw nsw i64 %213, %214
  %216 = icmp eq i64 %215, 2
  %217 = zext i1 %216 to i8
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %217, i8* %218, align 1, !tbaa !2450
  %219 = load i64, i64* %RBP
  %220 = sub i64 %219, 48
  %221 = load i64, i64* %RAX
  %222 = load i64, i64* %PC
  %223 = add i64 %222, 4
  store i64 %223, i64* %PC
  %224 = inttoptr i64 %220 to i64*
  store i64 %221, i64* %224
  %225 = load i64, i64* %RBP
  %226 = sub i64 %225, 40
  %227 = load i64, i64* %PC
  %228 = add i64 %227, 4
  store i64 %228, i64* %PC
  %229 = inttoptr i64 %226 to i64*
  %230 = load i64, i64* %229
  store i64 %230, i64* %RAX, align 8, !tbaa !2428
  %231 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %232 = load i64, i64* %RAX
  %233 = load i64, i64* %PC
  %234 = add i64 %233, 4
  store i64 %234, i64* %PC
  %235 = inttoptr i64 %232 to double*
  %236 = load double, double* %235
  %237 = bitcast i8* %231 to double*
  store double %236, double* %237, align 1, !tbaa !2452
  %238 = getelementptr inbounds i8, i8* %231, i64 8
  %239 = bitcast i8* %238 to double*
  store double 0.000000e+00, double* %239, align 1, !tbaa !2452
  %240 = load i64, i64* %RBP
  %241 = sub i64 %240, 48
  %242 = load i64, i64* %PC
  %243 = add i64 %242, 4
  store i64 %243, i64* %PC
  %244 = inttoptr i64 %241 to i64*
  %245 = load i64, i64* %244
  store i64 %245, i64* %RAX, align 8, !tbaa !2428
  %246 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %247 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %248 = load i64, i64* %RAX
  %249 = load i64, i64* %PC
  %250 = add i64 %249, 4
  store i64 %250, i64* %PC
  %251 = bitcast i8* %247 to double*
  %252 = load double, double* %251, align 1
  %253 = getelementptr inbounds i8, i8* %247, i64 8
  %254 = bitcast i8* %253 to i64*
  %255 = load i64, i64* %254, align 1
  %256 = inttoptr i64 %248 to double*
  %257 = load double, double* %256
  %258 = fsub double %252, %257
  %259 = bitcast i8* %246 to double*
  store double %258, double* %259, align 1, !tbaa !2452
  %260 = getelementptr inbounds i8, i8* %246, i64 8
  %261 = bitcast i8* %260 to i64*
  store i64 %255, i64* %261, align 1, !tbaa !2452
  %262 = load i64, i64* %RBP
  %263 = sub i64 %262, 56
  %264 = bitcast %union.vec128_t* %XMM0 to i8*
  %265 = load i64, i64* %PC
  %266 = add i64 %265, 5
  store i64 %266, i64* %PC
  %267 = bitcast i8* %264 to double*
  %268 = load double, double* %267, align 1
  %269 = inttoptr i64 %263 to double*
  store double %268, double* %269
  %270 = load i64, i64* %RBP
  %271 = sub i64 %270, 40
  %272 = load i64, i64* %PC
  %273 = add i64 %272, 4
  store i64 %273, i64* %PC
  %274 = inttoptr i64 %271 to i64*
  %275 = load i64, i64* %274
  store i64 %275, i64* %RAX, align 8, !tbaa !2428
  %276 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %277 = load i64, i64* %RAX
  %278 = add i64 %277, 8
  %279 = load i64, i64* %PC
  %280 = add i64 %279, 5
  store i64 %280, i64* %PC
  %281 = inttoptr i64 %278 to double*
  %282 = load double, double* %281
  %283 = bitcast i8* %276 to double*
  store double %282, double* %283, align 1, !tbaa !2452
  %284 = getelementptr inbounds i8, i8* %276, i64 8
  %285 = bitcast i8* %284 to double*
  store double 0.000000e+00, double* %285, align 1, !tbaa !2452
  %286 = load i64, i64* %RBP
  %287 = sub i64 %286, 48
  %288 = load i64, i64* %PC
  %289 = add i64 %288, 4
  store i64 %289, i64* %PC
  %290 = inttoptr i64 %287 to i64*
  %291 = load i64, i64* %290
  store i64 %291, i64* %RAX, align 8, !tbaa !2428
  %292 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %293 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %294 = load i64, i64* %RAX
  %295 = add i64 %294, 8
  %296 = load i64, i64* %PC
  %297 = add i64 %296, 5
  store i64 %297, i64* %PC
  %298 = bitcast i8* %293 to double*
  %299 = load double, double* %298, align 1
  %300 = getelementptr inbounds i8, i8* %293, i64 8
  %301 = bitcast i8* %300 to i64*
  %302 = load i64, i64* %301, align 1
  %303 = inttoptr i64 %295 to double*
  %304 = load double, double* %303
  %305 = fsub double %299, %304
  %306 = bitcast i8* %292 to double*
  store double %305, double* %306, align 1, !tbaa !2452
  %307 = getelementptr inbounds i8, i8* %292, i64 8
  %308 = bitcast i8* %307 to i64*
  store i64 %302, i64* %308, align 1, !tbaa !2452
  %309 = load i64, i64* %RBP
  %310 = sub i64 %309, 64
  %311 = bitcast %union.vec128_t* %XMM0 to i8*
  %312 = load i64, i64* %PC
  %313 = add i64 %312, 5
  store i64 %313, i64* %PC
  %314 = bitcast i8* %311 to double*
  %315 = load double, double* %314, align 1
  %316 = inttoptr i64 %310 to double*
  store double %315, double* %316
  %317 = load i64, i64* %RBP
  %318 = sub i64 %317, 40
  %319 = load i64, i64* %PC
  %320 = add i64 %319, 4
  store i64 %320, i64* %PC
  %321 = inttoptr i64 %318 to i64*
  %322 = load i64, i64* %321
  store i64 %322, i64* %RAX, align 8, !tbaa !2428
  %323 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %324 = load i64, i64* %RAX
  %325 = add i64 %324, 16
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
  %333 = load i64, i64* %RBP
  %334 = sub i64 %333, 48
  %335 = load i64, i64* %PC
  %336 = add i64 %335, 4
  store i64 %336, i64* %PC
  %337 = inttoptr i64 %334 to i64*
  %338 = load i64, i64* %337
  store i64 %338, i64* %RAX, align 8, !tbaa !2428
  %339 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %340 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %341 = load i64, i64* %RAX
  %342 = add i64 %341, 16
  %343 = load i64, i64* %PC
  %344 = add i64 %343, 5
  store i64 %344, i64* %PC
  %345 = bitcast i8* %340 to double*
  %346 = load double, double* %345, align 1
  %347 = getelementptr inbounds i8, i8* %340, i64 8
  %348 = bitcast i8* %347 to i64*
  %349 = load i64, i64* %348, align 1
  %350 = inttoptr i64 %342 to double*
  %351 = load double, double* %350
  %352 = fsub double %346, %351
  %353 = bitcast i8* %339 to double*
  store double %352, double* %353, align 1, !tbaa !2452
  %354 = getelementptr inbounds i8, i8* %339, i64 8
  %355 = bitcast i8* %354 to i64*
  store i64 %349, i64* %355, align 1, !tbaa !2452
  %356 = load i64, i64* %RBP
  %357 = sub i64 %356, 72
  %358 = bitcast %union.vec128_t* %XMM0 to i8*
  %359 = load i64, i64* %PC
  %360 = add i64 %359, 5
  store i64 %360, i64* %PC
  %361 = bitcast i8* %358 to double*
  %362 = load double, double* %361, align 1
  %363 = inttoptr i64 %357 to double*
  store double %362, double* %363
  %364 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %365 = load i64, i64* %RBP
  %366 = sub i64 %365, 56
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
  %374 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %375 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %376 = load i64, i64* %RBP
  %377 = sub i64 %376, 56
  %378 = load i64, i64* %PC
  %379 = add i64 %378, 5
  store i64 %379, i64* %PC
  %380 = bitcast i8* %375 to double*
  %381 = load double, double* %380, align 1
  %382 = getelementptr inbounds i8, i8* %375, i64 8
  %383 = bitcast i8* %382 to i64*
  %384 = load i64, i64* %383, align 1
  %385 = inttoptr i64 %377 to double*
  %386 = load double, double* %385
  %387 = fmul double %381, %386
  %388 = bitcast i8* %374 to double*
  store double %387, double* %388, align 1, !tbaa !2452
  %389 = getelementptr inbounds i8, i8* %374, i64 8
  %390 = bitcast i8* %389 to i64*
  store i64 %384, i64* %390, align 1, !tbaa !2452
  %391 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %392 = load i64, i64* %RBP
  %393 = sub i64 %392, 64
  %394 = load i64, i64* %PC
  %395 = add i64 %394, 5
  store i64 %395, i64* %PC
  %396 = inttoptr i64 %393 to double*
  %397 = load double, double* %396
  %398 = bitcast i8* %391 to double*
  store double %397, double* %398, align 1, !tbaa !2452
  %399 = getelementptr inbounds i8, i8* %391, i64 8
  %400 = bitcast i8* %399 to double*
  store double 0.000000e+00, double* %400, align 1, !tbaa !2452
  %401 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %402 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %403 = load i64, i64* %RBP
  %404 = sub i64 %403, 64
  %405 = load i64, i64* %PC
  %406 = add i64 %405, 5
  store i64 %406, i64* %PC
  %407 = bitcast i8* %402 to double*
  %408 = load double, double* %407, align 1
  %409 = getelementptr inbounds i8, i8* %402, i64 8
  %410 = bitcast i8* %409 to i64*
  %411 = load i64, i64* %410, align 1
  %412 = inttoptr i64 %404 to double*
  %413 = load double, double* %412
  %414 = fmul double %408, %413
  %415 = bitcast i8* %401 to double*
  store double %414, double* %415, align 1, !tbaa !2452
  %416 = getelementptr inbounds i8, i8* %401, i64 8
  %417 = bitcast i8* %416 to i64*
  store i64 %411, i64* %417, align 1, !tbaa !2452
  %418 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %419 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %420 = bitcast %union.vec128_t* %XMM1 to i8*
  %421 = load i64, i64* %PC
  %422 = add i64 %421, 4
  store i64 %422, i64* %PC
  %423 = bitcast i8* %419 to double*
  %424 = load double, double* %423, align 1
  %425 = getelementptr inbounds i8, i8* %419, i64 8
  %426 = bitcast i8* %425 to i64*
  %427 = load i64, i64* %426, align 1
  %428 = bitcast i8* %420 to double*
  %429 = load double, double* %428, align 1
  %430 = fadd double %424, %429
  %431 = bitcast i8* %418 to double*
  store double %430, double* %431, align 1, !tbaa !2452
  %432 = getelementptr inbounds i8, i8* %418, i64 8
  %433 = bitcast i8* %432 to i64*
  store i64 %427, i64* %433, align 1, !tbaa !2452
  %434 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %435 = load i64, i64* %RBP
  %436 = sub i64 %435, 72
  %437 = load i64, i64* %PC
  %438 = add i64 %437, 5
  store i64 %438, i64* %PC
  %439 = inttoptr i64 %436 to double*
  %440 = load double, double* %439
  %441 = bitcast i8* %434 to double*
  store double %440, double* %441, align 1, !tbaa !2452
  %442 = getelementptr inbounds i8, i8* %434, i64 8
  %443 = bitcast i8* %442 to double*
  store double 0.000000e+00, double* %443, align 1, !tbaa !2452
  %444 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %445 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %446 = load i64, i64* %RBP
  %447 = sub i64 %446, 72
  %448 = load i64, i64* %PC
  %449 = add i64 %448, 5
  store i64 %449, i64* %PC
  %450 = bitcast i8* %445 to double*
  %451 = load double, double* %450, align 1
  %452 = getelementptr inbounds i8, i8* %445, i64 8
  %453 = bitcast i8* %452 to i64*
  %454 = load i64, i64* %453, align 1
  %455 = inttoptr i64 %447 to double*
  %456 = load double, double* %455
  %457 = fmul double %451, %456
  %458 = bitcast i8* %444 to double*
  store double %457, double* %458, align 1, !tbaa !2452
  %459 = getelementptr inbounds i8, i8* %444, i64 8
  %460 = bitcast i8* %459 to i64*
  store i64 %454, i64* %460, align 1, !tbaa !2452
  %461 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %462 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %463 = bitcast %union.vec128_t* %XMM1 to i8*
  %464 = load i64, i64* %PC
  %465 = add i64 %464, 4
  store i64 %465, i64* %PC
  %466 = bitcast i8* %462 to double*
  %467 = load double, double* %466, align 1
  %468 = getelementptr inbounds i8, i8* %462, i64 8
  %469 = bitcast i8* %468 to i64*
  %470 = load i64, i64* %469, align 1
  %471 = bitcast i8* %463 to double*
  %472 = load double, double* %471, align 1
  %473 = fadd double %467, %472
  %474 = bitcast i8* %461 to double*
  store double %473, double* %474, align 1, !tbaa !2452
  %475 = getelementptr inbounds i8, i8* %461, i64 8
  %476 = bitcast i8* %475 to i64*
  store i64 %470, i64* %476, align 1, !tbaa !2452
  %477 = load i64, i64* %PC
  %478 = sub i64 %477, 1195
  %479 = load i64, i64* %PC
  %480 = add i64 %479, 5
  %481 = load i64, i64* %PC
  %482 = add i64 %481, 5
  store i64 %482, i64* %PC
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %484 = load i64, i64* %483, align 8, !tbaa !2428
  %485 = add i64 %484, -8
  %486 = inttoptr i64 %485 to i64*
  store i64 %480, i64* %486
  store i64 %485, i64* %483, align 8, !tbaa !2428
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %478, i64* %487, align 8, !tbaa !2428
  %488 = load i64, i64* %PC
  %489 = bitcast %struct.State** %state.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %489)
  %490 = bitcast i64* %curr_pc.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %490)
  %491 = bitcast %struct.Memory** %memory.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %491)
  call void @llvm.lifetime.start(i64 1, i8* %BRANCH_TAKEN.i)
  %492 = bitcast i64* %SS_BASE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %492)
  %493 = bitcast i64* %ES_BASE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %493)
  %494 = bitcast i64* %DS_BASE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %494)
  %495 = bitcast i64* %CS_BASE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %495)
  %496 = bitcast %struct.State** %STATE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %496)
  %497 = bitcast %struct.Memory** %MEMORY.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %497)
  %498 = bitcast i64** %_DR0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %498)
  %499 = bitcast i64** %_DR1.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %499)
  %500 = bitcast i64** %_DR2.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %500)
  %501 = bitcast i64** %_DR3.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %501)
  %502 = bitcast i64** %_DR4.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %502)
  %503 = bitcast i64** %_DR5.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %503)
  %504 = bitcast i64** %_DR6.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %504)
  %505 = bitcast i64** %_DR7.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %505)
  %506 = bitcast i64** %CR0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %506)
  %507 = bitcast i64** %CR1.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %507)
  %508 = bitcast i64** %CR2.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %508)
  %509 = bitcast i64** %CR3.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %509)
  %510 = bitcast i64** %CR4.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %510)
  %511 = bitcast i64** %CR8.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %511)
  store %struct.State* %0, %struct.State** %state.i, align 8, !noalias !2461
  store i64 %488, i64* %curr_pc.i, align 8, !noalias !2461
  store %struct.Memory* %MEMORY.0, %struct.Memory** %memory.i, align 8, !noalias !2461
  store i8 0, i8* %BRANCH_TAKEN.i, align 1, !noalias !2461
  store i64 0, i64* %SS_BASE.i, align 8, !noalias !2461
  store i64 0, i64* %ES_BASE.i, align 8, !noalias !2461
  store i64 0, i64* %DS_BASE.i, align 8, !noalias !2461
  store i64 0, i64* %CS_BASE.i, align 8, !noalias !2461
  store %struct.State* %0, %struct.State** %STATE.i, align 8, !noalias !2461
  store %struct.Memory* %MEMORY.0, %struct.Memory** %MEMORY.i, align 8, !noalias !2461
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 33
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %PC.i = bitcast %union.anon* %514 to i64*
  store i64 %488, i64* %PC.i, align 8, !alias.scope !2465, !noalias !2466
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 1
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %518 = bitcast %union.anon* %517 to %struct.anon.2*
  %AH.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %518, i32 0, i32 1
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 3
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %522 = bitcast %union.anon* %521 to %struct.anon.2*
  %BH.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %522, i32 0, i32 1
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %524 = getelementptr inbounds %struct.GPR, %struct.GPR* %523, i32 0, i32 5
  %525 = getelementptr inbounds %struct.Reg, %struct.Reg* %524, i32 0, i32 0
  %526 = bitcast %union.anon* %525 to %struct.anon.2*
  %CH.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %526, i32 0, i32 1
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 7
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %530 = bitcast %union.anon* %529 to %struct.anon.2*
  %DH.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %530, i32 0, i32 1
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 1
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %534 = bitcast %union.anon* %533 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %534, i32 0, i32 0
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 3
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %538 = bitcast %union.anon* %537 to %struct.anon.2*
  %BL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %538, i32 0, i32 0
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 5
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %542 = bitcast %union.anon* %541 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %542, i32 0, i32 0
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 7
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %546 = bitcast %union.anon* %545 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %546, i32 0, i32 0
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 9
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %550 = bitcast %union.anon* %549 to %struct.anon.2*
  %SIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %550, i32 0, i32 0
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 11
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %554 = bitcast %union.anon* %553 to %struct.anon.2*
  %DIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %554, i32 0, i32 0
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 13
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %558 = bitcast %union.anon* %557 to %struct.anon.2*
  %SPL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %558, i32 0, i32 0
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %560 = getelementptr inbounds %struct.GPR, %struct.GPR* %559, i32 0, i32 15
  %561 = getelementptr inbounds %struct.Reg, %struct.Reg* %560, i32 0, i32 0
  %562 = bitcast %union.anon* %561 to %struct.anon.2*
  %BPL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %562, i32 0, i32 0
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %564 = getelementptr inbounds %struct.GPR, %struct.GPR* %563, i32 0, i32 17
  %565 = getelementptr inbounds %struct.Reg, %struct.Reg* %564, i32 0, i32 0
  %566 = bitcast %union.anon* %565 to %struct.anon.2*
  %R8B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %566, i32 0, i32 0
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %568 = getelementptr inbounds %struct.GPR, %struct.GPR* %567, i32 0, i32 19
  %569 = getelementptr inbounds %struct.Reg, %struct.Reg* %568, i32 0, i32 0
  %570 = bitcast %union.anon* %569 to %struct.anon.2*
  %R9B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %570, i32 0, i32 0
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 21
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %574 = bitcast %union.anon* %573 to %struct.anon.2*
  %R10B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %574, i32 0, i32 0
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 23
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %578 = bitcast %union.anon* %577 to %struct.anon.2*
  %R11B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %578, i32 0, i32 0
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %580 = getelementptr inbounds %struct.GPR, %struct.GPR* %579, i32 0, i32 25
  %581 = getelementptr inbounds %struct.Reg, %struct.Reg* %580, i32 0, i32 0
  %582 = bitcast %union.anon* %581 to %struct.anon.2*
  %R12B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %582, i32 0, i32 0
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 27
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %586 = bitcast %union.anon* %585 to %struct.anon.2*
  %R13B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %586, i32 0, i32 0
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 29
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %590 = bitcast %union.anon* %589 to %struct.anon.2*
  %R14B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %590, i32 0, i32 0
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 31
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %594 = bitcast %union.anon* %593 to %struct.anon.2*
  %R15B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %594, i32 0, i32 0
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %596 = getelementptr inbounds %struct.GPR, %struct.GPR* %595, i32 0, i32 1
  %597 = getelementptr inbounds %struct.Reg, %struct.Reg* %596, i32 0, i32 0
  %AX.i = bitcast %union.anon* %597 to i16*
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %599 = getelementptr inbounds %struct.GPR, %struct.GPR* %598, i32 0, i32 3
  %600 = getelementptr inbounds %struct.Reg, %struct.Reg* %599, i32 0, i32 0
  %BX.i = bitcast %union.anon* %600 to i16*
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %602 = getelementptr inbounds %struct.GPR, %struct.GPR* %601, i32 0, i32 5
  %603 = getelementptr inbounds %struct.Reg, %struct.Reg* %602, i32 0, i32 0
  %CX.i = bitcast %union.anon* %603 to i16*
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 7
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %DX.i = bitcast %union.anon* %606 to i16*
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 9
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %SI.i = bitcast %union.anon* %609 to i16*
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %611 = getelementptr inbounds %struct.GPR, %struct.GPR* %610, i32 0, i32 11
  %612 = getelementptr inbounds %struct.Reg, %struct.Reg* %611, i32 0, i32 0
  %DI.i = bitcast %union.anon* %612 to i16*
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %614 = getelementptr inbounds %struct.GPR, %struct.GPR* %613, i32 0, i32 13
  %615 = getelementptr inbounds %struct.Reg, %struct.Reg* %614, i32 0, i32 0
  %SP.i = bitcast %union.anon* %615 to i16*
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 15
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %BP.i = bitcast %union.anon* %618 to i16*
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 17
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %R8W.i = bitcast %union.anon* %621 to i16*
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 19
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %R9W.i = bitcast %union.anon* %624 to i16*
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 21
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %R10W.i = bitcast %union.anon* %627 to i16*
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 23
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %R11W.i = bitcast %union.anon* %630 to i16*
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 25
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %R12W.i = bitcast %union.anon* %633 to i16*
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 27
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %R13W.i = bitcast %union.anon* %636 to i16*
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 29
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %R14W.i = bitcast %union.anon* %639 to i16*
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 31
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %R15W.i = bitcast %union.anon* %642 to i16*
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 33
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %IP.i = bitcast %union.anon* %645 to i16*
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 1
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %648 to i32*
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 3
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %EBX.i = bitcast %union.anon* %651 to i32*
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 5
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %654 to i32*
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 7
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %657 to i32*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 9
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %660 to i32*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 11
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %663 to i32*
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 13
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %ESP.i = bitcast %union.anon* %666 to i32*
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 15
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %EBP.i = bitcast %union.anon* %669 to i32*
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 33
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %EIP.i = bitcast %union.anon* %672 to i32*
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 17
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %675 to i32*
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 19
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %678 to i32*
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 21
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %681 to i32*
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 23
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %684 to i32*
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 25
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %R12D.i = bitcast %union.anon* %687 to i32*
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 27
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %R13D.i = bitcast %union.anon* %690 to i32*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 29
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %R14D.i = bitcast %union.anon* %693 to i32*
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 31
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %R15D.i = bitcast %union.anon* %696 to i32*
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 1
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %699 to i64*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 3
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %702 to i64*
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 5
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %705 to i64*
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 7
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %708 to i64*
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 9
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %711 to i64*
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 11
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %714 to i64*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 13
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %717 to i64*
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 15
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %RBP.i = bitcast %union.anon* %720 to i64*
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %722 = getelementptr inbounds %struct.GPR, %struct.GPR* %721, i32 0, i32 17
  %723 = getelementptr inbounds %struct.Reg, %struct.Reg* %722, i32 0, i32 0
  %R8.i = bitcast %union.anon* %723 to i64*
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 19
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %R9.i = bitcast %union.anon* %726 to i64*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 21
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %R10.i = bitcast %union.anon* %729 to i64*
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 23
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %R11.i = bitcast %union.anon* %732 to i64*
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 25
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %R12.i = bitcast %union.anon* %735 to i64*
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 27
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %R13.i = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 29
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %R14.i = bitcast %union.anon* %741 to i64*
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 31
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %R15.i = bitcast %union.anon* %744 to i64*
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 33
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %RIP.i = bitcast %union.anon* %747 to i64*
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %749 = getelementptr inbounds %struct.Segments, %struct.Segments* %748, i32 0, i32 1
  %SS.i = bitcast %union.SegmentSelector* %749 to i16*
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %751 = getelementptr inbounds %struct.Segments, %struct.Segments* %750, i32 0, i32 3
  %ES.i = bitcast %union.SegmentSelector* %751 to i16*
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %753 = getelementptr inbounds %struct.Segments, %struct.Segments* %752, i32 0, i32 5
  %GS.i = bitcast %union.SegmentSelector* %753 to i16*
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %755 = getelementptr inbounds %struct.Segments, %struct.Segments* %754, i32 0, i32 7
  %FS.i = bitcast %union.SegmentSelector* %755 to i16*
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %757 = getelementptr inbounds %struct.Segments, %struct.Segments* %756, i32 0, i32 9
  %DS.i = bitcast %union.SegmentSelector* %757 to i16*
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %759 = getelementptr inbounds %struct.Segments, %struct.Segments* %758, i32 0, i32 11
  %CS.i = bitcast %union.SegmentSelector* %759 to i16*
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %761 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %760, i32 0, i32 5
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %GS_BASE.i = bitcast %union.anon* %762 to i64*
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %764 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %763, i32 0, i32 7
  %765 = getelementptr inbounds %struct.Reg, %struct.Reg* %764, i32 0, i32 0
  %FS_BASE.i = bitcast %union.anon* %765 to i64*
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %767 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %766, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %767 to %"class.std::bitset"*
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %769 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %768, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %769 to %"class.std::bitset"*
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %771 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %770, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %771 to %"class.std::bitset"*
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %773 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %772, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %773 to %"class.std::bitset"*
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %775 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %774, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %775 to %"class.std::bitset"*
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %777 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %776, i64 0, i64 5
  %YMM5.i = bitcast %union.VectorReg* %777 to %"class.std::bitset"*
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %779 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %778, i64 0, i64 6
  %YMM6.i = bitcast %union.VectorReg* %779 to %"class.std::bitset"*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %781 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %780, i64 0, i64 7
  %YMM7.i = bitcast %union.VectorReg* %781 to %"class.std::bitset"*
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %783 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %782, i64 0, i64 8
  %YMM8.i = bitcast %union.VectorReg* %783 to %"class.std::bitset"*
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %785 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %784, i64 0, i64 9
  %YMM9.i = bitcast %union.VectorReg* %785 to %"class.std::bitset"*
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %787 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %786, i64 0, i64 10
  %YMM10.i = bitcast %union.VectorReg* %787 to %"class.std::bitset"*
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %789 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %788, i64 0, i64 11
  %YMM11.i = bitcast %union.VectorReg* %789 to %"class.std::bitset"*
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %791 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %790, i64 0, i64 12
  %YMM12.i = bitcast %union.VectorReg* %791 to %"class.std::bitset"*
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %793 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %792, i64 0, i64 13
  %YMM13.i = bitcast %union.VectorReg* %793 to %"class.std::bitset"*
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %795 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %794, i64 0, i64 14
  %YMM14.i = bitcast %union.VectorReg* %795 to %"class.std::bitset"*
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %797 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %796, i64 0, i64 15
  %YMM15.i = bitcast %union.VectorReg* %797 to %"class.std::bitset"*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %799 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %798, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %799 to %union.vec128_t*
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %801 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %800, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %801 to %union.vec128_t*
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %803 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %802, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %803 to %union.vec128_t*
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %805 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %804, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %805 to %union.vec128_t*
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %807 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %806, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %807 to %union.vec128_t*
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %809 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %808, i64 0, i64 5
  %XMM5.i = bitcast %union.VectorReg* %809 to %union.vec128_t*
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %811 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %810, i64 0, i64 6
  %XMM6.i = bitcast %union.VectorReg* %811 to %union.vec128_t*
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %813 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %812, i64 0, i64 7
  %XMM7.i = bitcast %union.VectorReg* %813 to %union.vec128_t*
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %815 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %814, i64 0, i64 8
  %XMM8.i = bitcast %union.VectorReg* %815 to %union.vec128_t*
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %817 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %816, i64 0, i64 9
  %XMM9.i = bitcast %union.VectorReg* %817 to %union.vec128_t*
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %819 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %818, i64 0, i64 10
  %XMM10.i = bitcast %union.VectorReg* %819 to %union.vec128_t*
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %821 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %820, i64 0, i64 11
  %XMM11.i = bitcast %union.VectorReg* %821 to %union.vec128_t*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %823 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %822, i64 0, i64 12
  %XMM12.i = bitcast %union.VectorReg* %823 to %union.vec128_t*
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %825 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %824, i64 0, i64 13
  %XMM13.i = bitcast %union.VectorReg* %825 to %union.vec128_t*
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %827 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %826, i64 0, i64 14
  %XMM14.i = bitcast %union.VectorReg* %827 to %union.vec128_t*
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %829 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %828, i64 0, i64 15
  %XMM15.i = bitcast %union.VectorReg* %829 to %union.vec128_t*
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %831 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %830, i32 0, i32 0
  %832 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %831, i64 0, i64 0
  %ST0.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %832, i32 0, i32 1
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %834 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %833, i32 0, i32 0
  %835 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %834, i64 0, i64 1
  %ST1.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %835, i32 0, i32 1
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %837 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %836, i32 0, i32 0
  %838 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %837, i64 0, i64 2
  %ST2.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %838, i32 0, i32 1
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %840 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %839, i32 0, i32 0
  %841 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %840, i64 0, i64 3
  %ST3.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %841, i32 0, i32 1
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %843 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %842, i32 0, i32 0
  %844 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %843, i64 0, i64 4
  %ST4.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %844, i32 0, i32 1
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %846 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %845, i32 0, i32 0
  %847 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %846, i64 0, i64 5
  %ST5.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %847, i32 0, i32 1
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %849 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %848, i32 0, i32 0
  %850 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %849, i64 0, i64 6
  %ST6.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %850, i32 0, i32 1
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %852 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %851, i32 0, i32 0
  %853 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %852, i64 0, i64 7
  %ST7.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %853, i32 0, i32 1
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %855 = getelementptr inbounds %struct.MMX, %struct.MMX* %854, i32 0, i32 0
  %856 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %855, i64 0, i64 0
  %857 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %856, i32 0, i32 1
  %858 = bitcast %union.vec64_t* %857 to %struct.uint64v1_t*
  %859 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %858, i32 0, i32 0
  %MM0.i = getelementptr inbounds [1 x i64], [1 x i64]* %859, i64 0, i64 0
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %861 = getelementptr inbounds %struct.MMX, %struct.MMX* %860, i32 0, i32 0
  %862 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %861, i64 0, i64 1
  %863 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %862, i32 0, i32 1
  %864 = bitcast %union.vec64_t* %863 to %struct.uint64v1_t*
  %865 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %864, i32 0, i32 0
  %MM1.i = getelementptr inbounds [1 x i64], [1 x i64]* %865, i64 0, i64 0
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %867 = getelementptr inbounds %struct.MMX, %struct.MMX* %866, i32 0, i32 0
  %868 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %867, i64 0, i64 2
  %869 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %868, i32 0, i32 1
  %870 = bitcast %union.vec64_t* %869 to %struct.uint64v1_t*
  %871 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %870, i32 0, i32 0
  %MM2.i = getelementptr inbounds [1 x i64], [1 x i64]* %871, i64 0, i64 0
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %873 = getelementptr inbounds %struct.MMX, %struct.MMX* %872, i32 0, i32 0
  %874 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %873, i64 0, i64 3
  %875 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %874, i32 0, i32 1
  %876 = bitcast %union.vec64_t* %875 to %struct.uint64v1_t*
  %877 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %876, i32 0, i32 0
  %MM3.i = getelementptr inbounds [1 x i64], [1 x i64]* %877, i64 0, i64 0
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %879 = getelementptr inbounds %struct.MMX, %struct.MMX* %878, i32 0, i32 0
  %880 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %879, i64 0, i64 4
  %881 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %880, i32 0, i32 1
  %882 = bitcast %union.vec64_t* %881 to %struct.uint64v1_t*
  %883 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %882, i32 0, i32 0
  %MM4.i = getelementptr inbounds [1 x i64], [1 x i64]* %883, i64 0, i64 0
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %885 = getelementptr inbounds %struct.MMX, %struct.MMX* %884, i32 0, i32 0
  %886 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %885, i64 0, i64 5
  %887 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %886, i32 0, i32 1
  %888 = bitcast %union.vec64_t* %887 to %struct.uint64v1_t*
  %889 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %888, i32 0, i32 0
  %MM5.i = getelementptr inbounds [1 x i64], [1 x i64]* %889, i64 0, i64 0
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %891 = getelementptr inbounds %struct.MMX, %struct.MMX* %890, i32 0, i32 0
  %892 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %891, i64 0, i64 6
  %893 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %892, i32 0, i32 1
  %894 = bitcast %union.vec64_t* %893 to %struct.uint64v1_t*
  %895 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %894, i32 0, i32 0
  %MM6.i = getelementptr inbounds [1 x i64], [1 x i64]* %895, i64 0, i64 0
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %897 = getelementptr inbounds %struct.MMX, %struct.MMX* %896, i32 0, i32 0
  %898 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %897, i64 0, i64 7
  %899 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %898, i32 0, i32 1
  %900 = bitcast %union.vec64_t* %899 to %struct.uint64v1_t*
  %901 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %900, i32 0, i32 0
  %MM7.i = getelementptr inbounds [1 x i64], [1 x i64]* %901, i64 0, i64 0
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %AF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %902, i32 0, i32 5
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %CF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %903, i32 0, i32 1
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %DF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %904, i32 0, i32 11
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %OF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %905, i32 0, i32 13
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %PF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %906, i32 0, i32 3
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %SF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %907, i32 0, i32 9
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %ZF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %908, i32 0, i32 7
  store i64* @DR0, i64** %_DR0.i, align 8, !noalias !2461
  store i64* @DR1, i64** %_DR1.i, align 8, !noalias !2461
  store i64* @DR2, i64** %_DR2.i, align 8, !noalias !2461
  store i64* @DR3, i64** %_DR3.i, align 8, !noalias !2461
  store i64* @DR4, i64** %_DR4.i, align 8, !noalias !2461
  store i64* @DR5, i64** %_DR5.i, align 8, !noalias !2461
  store i64* @DR6, i64** %_DR6.i, align 8, !noalias !2461
  store i64* @DR7, i64** %_DR7.i, align 8, !noalias !2461
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR0, i32 0, i32 0), i64** %CR0.i, align 8, !noalias !2461
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR1, i32 0, i32 0), i64** %CR1.i, align 8, !noalias !2461
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR2, i32 0, i32 0), i64** %CR2.i, align 8, !noalias !2461
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR3, i32 0, i32 0), i64** %CR3.i, align 8, !noalias !2461
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR4, i32 0, i32 0), i64** %CR4.i, align 8, !noalias !2461
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR8, i32 0, i32 0), i64** %CR8.i, align 8, !noalias !2461
  %909 = bitcast %"class.std::bitset"* %YMM0.i to double*
  %910 = load double, double* %909, !alias.scope !2465, !noalias !2466
  %911 = load i64, i64* %RSP.i, !alias.scope !2465, !noalias !2466
  %912 = load %struct.Memory*, %struct.Memory** %MEMORY.i, !noalias !2461
  %913 = inttoptr i64 %911 to i64*
  %914 = load i64, i64* %913
  store i64 %914, i64* %PC.i, !alias.scope !2465, !noalias !2466
  %915 = add i64 %911, 8
  store i64 %915, i64* %RSP.i, !alias.scope !2465, !noalias !2466
  %916 = call double @sqrt(double %910)
  store %"class.std::bitset" zeroinitializer, %"class.std::bitset"* %YMM0.i, !alias.scope !2465, !noalias !2466
  %917 = bitcast %"class.std::bitset"* %YMM0.i to double*
  store double %916, double* %917, !alias.scope !2465, !noalias !2466
  %918 = load %struct.Memory*, %struct.Memory** %MEMORY.i, !noalias !2461
  %919 = bitcast %struct.State** %state.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %919)
  %920 = bitcast i64* %curr_pc.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %920)
  %921 = bitcast %struct.Memory** %memory.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %921)
  call void @llvm.lifetime.end(i64 1, i8* %BRANCH_TAKEN.i)
  %922 = bitcast i64* %SS_BASE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %922)
  %923 = bitcast i64* %ES_BASE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %923)
  %924 = bitcast i64* %DS_BASE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %924)
  %925 = bitcast i64* %CS_BASE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %925)
  %926 = bitcast %struct.State** %STATE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %926)
  %927 = bitcast %struct.Memory** %MEMORY.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %927)
  %928 = bitcast i64** %_DR0.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %928)
  %929 = bitcast i64** %_DR1.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %929)
  %930 = bitcast i64** %_DR2.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %930)
  %931 = bitcast i64** %_DR3.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %931)
  %932 = bitcast i64** %_DR4.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %932)
  %933 = bitcast i64** %_DR5.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %933)
  %934 = bitcast i64** %_DR6.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %934)
  %935 = bitcast i64** %_DR7.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %935)
  %936 = bitcast i64** %CR0.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %936)
  %937 = bitcast i64** %CR1.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %937)
  %938 = bitcast i64** %CR2.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %938)
  %939 = bitcast i64** %CR3.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %939)
  %940 = bitcast i64** %CR4.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %940)
  %941 = bitcast i64** %CR8.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %941)
  %942 = load i64, i64* %RBP
  %943 = sub i64 %942, 80
  %944 = bitcast %union.vec128_t* %XMM0 to i8*
  %945 = load i64, i64* %PC
  %946 = add i64 %945, 5
  store i64 %946, i64* %PC
  %947 = bitcast i8* %944 to double*
  %948 = load double, double* %947, align 1
  %949 = inttoptr i64 %943 to double*
  store double %948, double* %949
  %950 = load i64, i64* %RBP
  %951 = sub i64 %950, 40
  %952 = load i64, i64* %PC
  %953 = add i64 %952, 4
  store i64 %953, i64* %PC
  %954 = inttoptr i64 %951 to i64*
  %955 = load i64, i64* %954
  store i64 %955, i64* %RAX, align 8, !tbaa !2428
  %956 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %957 = load i64, i64* %RAX
  %958 = add i64 %957, 48
  %959 = load i64, i64* %PC
  %960 = add i64 %959, 5
  store i64 %960, i64* %PC
  %961 = inttoptr i64 %958 to double*
  %962 = load double, double* %961
  %963 = bitcast i8* %956 to double*
  store double %962, double* %963, align 1, !tbaa !2452
  %964 = getelementptr inbounds i8, i8* %956, i64 8
  %965 = bitcast i8* %964 to double*
  store double 0.000000e+00, double* %965, align 1, !tbaa !2452
  %966 = load i64, i64* %RBP
  %967 = sub i64 %966, 48
  %968 = load i64, i64* %PC
  %969 = add i64 %968, 4
  store i64 %969, i64* %PC
  %970 = inttoptr i64 %967 to i64*
  %971 = load i64, i64* %970
  store i64 %971, i64* %RAX, align 8, !tbaa !2428
  %972 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %973 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %974 = load i64, i64* %RAX
  %975 = add i64 %974, 48
  %976 = load i64, i64* %PC
  %977 = add i64 %976, 5
  store i64 %977, i64* %PC
  %978 = bitcast i8* %973 to double*
  %979 = load double, double* %978, align 1
  %980 = getelementptr inbounds i8, i8* %973, i64 8
  %981 = bitcast i8* %980 to i64*
  %982 = load i64, i64* %981, align 1
  %983 = inttoptr i64 %975 to double*
  %984 = load double, double* %983
  %985 = fmul double %979, %984
  %986 = bitcast i8* %972 to double*
  store double %985, double* %986, align 1, !tbaa !2452
  %987 = getelementptr inbounds i8, i8* %972, i64 8
  %988 = bitcast i8* %987 to i64*
  store i64 %982, i64* %988, align 1, !tbaa !2452
  %989 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %990 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %991 = load i64, i64* %RBP
  %992 = sub i64 %991, 80
  %993 = load i64, i64* %PC
  %994 = add i64 %993, 5
  store i64 %994, i64* %PC
  %995 = bitcast i8* %990 to double*
  %996 = load double, double* %995, align 1
  %997 = getelementptr inbounds i8, i8* %990, i64 8
  %998 = bitcast i8* %997 to i64*
  %999 = load i64, i64* %998, align 1
  %1000 = inttoptr i64 %992 to double*
  %1001 = load double, double* %1000
  %1002 = fdiv double %996, %1001
  %1003 = bitcast i8* %989 to double*
  store double %1002, double* %1003, align 1, !tbaa !2452
  %1004 = getelementptr inbounds i8, i8* %989, i64 8
  %1005 = bitcast i8* %1004 to i64*
  store i64 %999, i64* %1005, align 1, !tbaa !2452
  %1006 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1007 = load i64, i64* %RBP
  %1008 = sub i64 %1007, 24
  %1009 = load i64, i64* %PC
  %1010 = add i64 %1009, 5
  store i64 %1010, i64* %PC
  %1011 = inttoptr i64 %1008 to double*
  %1012 = load double, double* %1011
  %1013 = bitcast i8* %1006 to double*
  store double %1012, double* %1013, align 1, !tbaa !2452
  %1014 = getelementptr inbounds i8, i8* %1006, i64 8
  %1015 = bitcast i8* %1014 to double*
  store double 0.000000e+00, double* %1015, align 1, !tbaa !2452
  %1016 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1017 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1018 = bitcast %union.vec128_t* %XMM0 to i8*
  %1019 = load i64, i64* %PC
  %1020 = add i64 %1019, 4
  store i64 %1020, i64* %PC
  %1021 = bitcast i8* %1017 to double*
  %1022 = load double, double* %1021, align 1
  %1023 = getelementptr inbounds i8, i8* %1017, i64 8
  %1024 = bitcast i8* %1023 to i64*
  %1025 = load i64, i64* %1024, align 1
  %1026 = bitcast i8* %1018 to double*
  %1027 = load double, double* %1026, align 1
  %1028 = fsub double %1022, %1027
  %1029 = bitcast i8* %1016 to double*
  store double %1028, double* %1029, align 1, !tbaa !2452
  %1030 = getelementptr inbounds i8, i8* %1016, i64 8
  %1031 = bitcast i8* %1030 to i64*
  store i64 %1025, i64* %1031, align 1, !tbaa !2452
  %1032 = load i64, i64* %RBP
  %1033 = sub i64 %1032, 24
  %1034 = bitcast %union.vec128_t* %XMM1 to i8*
  %1035 = load i64, i64* %PC
  %1036 = add i64 %1035, 5
  store i64 %1036, i64* %PC
  %1037 = bitcast i8* %1034 to double*
  %1038 = load double, double* %1037, align 1
  %1039 = inttoptr i64 %1033 to double*
  store double %1038, double* %1039
  %1040 = load i64, i64* %RBP
  %1041 = sub i64 %1040, 32
  %1042 = load i64, i64* %PC
  %1043 = add i64 %1042, 3
  store i64 %1043, i64* %PC
  %1044 = inttoptr i64 %1041 to i32*
  %1045 = load i32, i32* %1044
  %1046 = zext i32 %1045 to i64
  store i64 %1046, i64* %RAX, align 8, !tbaa !2428
  %1047 = load i64, i64* %RAX
  %1048 = load i64, i64* %PC
  %1049 = add i64 %1048, 3
  store i64 %1049, i64* %PC
  %1050 = trunc i64 %1047 to i32
  %1051 = add i32 1, %1050
  %1052 = zext i32 %1051 to i64
  store i64 %1052, i64* %RAX, align 8, !tbaa !2428
  %1053 = icmp ult i32 %1051, %1050
  %1054 = icmp ult i32 %1051, 1
  %1055 = or i1 %1053, %1054
  %1056 = zext i1 %1055 to i8
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1056, i8* %1057, align 1, !tbaa !2432
  %1058 = and i32 %1051, 255
  %1059 = call i32 @llvm.ctpop.i32(i32 %1058) #17
  %1060 = trunc i32 %1059 to i8
  %1061 = and i8 %1060, 1
  %1062 = xor i8 %1061, 1
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1062, i8* %1063, align 1, !tbaa !2446
  %1064 = xor i64 1, %1047
  %1065 = trunc i64 %1064 to i32
  %1066 = xor i32 %1065, %1051
  %1067 = lshr i32 %1066, 4
  %1068 = trunc i32 %1067 to i8
  %1069 = and i8 %1068, 1
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1069, i8* %1070, align 1, !tbaa !2447
  %1071 = icmp eq i32 %1051, 0
  %1072 = zext i1 %1071 to i8
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1072, i8* %1073, align 1, !tbaa !2448
  %1074 = lshr i32 %1051, 31
  %1075 = trunc i32 %1074 to i8
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1075, i8* %1076, align 1, !tbaa !2449
  %1077 = lshr i32 %1050, 31
  %1078 = xor i32 %1074, %1077
  %1079 = add nuw nsw i32 %1078, %1074
  %1080 = icmp eq i32 %1079, 2
  %1081 = zext i1 %1080 to i8
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1081, i8* %1082, align 1, !tbaa !2450
  %1083 = load i64, i64* %RBP
  %1084 = sub i64 %1083, 32
  %1085 = load i32, i32* %EAX
  %1086 = zext i32 %1085 to i64
  %1087 = load i64, i64* %PC
  %1088 = add i64 %1087, 3
  store i64 %1088, i64* %PC
  %1089 = inttoptr i64 %1084 to i32*
  store i32 %1085, i32* %1089
  %1090 = load i64, i64* %PC
  %1091 = sub i64 %1090, 192
  %1092 = load i64, i64* %PC
  %1093 = add i64 %1092, 5
  store i64 %1093, i64* %PC
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1091, i64* %1094, align 8, !tbaa !2428
  br label %block_400893

block_40081a:                                     ; preds = %block_40080e
  %1095 = load i64, i64* %PC
  %1096 = add i64 %1095, 8
  store i64 %1096, i64* %PC
  %1097 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 8) to double*)
  %1098 = bitcast i8* %1634 to double*
  store double %1097, double* %1098, align 1, !tbaa !2452
  %1099 = getelementptr inbounds i8, i8* %1634, i64 8
  %1100 = bitcast i8* %1099 to double*
  store double 0.000000e+00, double* %1100, align 1, !tbaa !2452
  %1101 = load i64, i64* %RBP
  %1102 = sub i64 %1101, 16
  %1103 = load i64, i64* %PC
  %1104 = add i64 %1103, 4
  store i64 %1104, i64* %PC
  %1105 = inttoptr i64 %1102 to i64*
  %1106 = load i64, i64* %1105
  store i64 %1106, i64* %RAX, align 8, !tbaa !2428
  %1107 = load i64, i64* %RBP
  %1108 = sub i64 %1107, 28
  %1109 = load i64, i64* %PC
  %1110 = add i64 %1109, 4
  store i64 %1110, i64* %PC
  %1111 = inttoptr i64 %1108 to i32*
  %1112 = load i32, i32* %1111
  %1113 = sext i32 %1112 to i64
  store i64 %1113, i64* %RCX, align 8, !tbaa !2428
  %1114 = load i64, i64* %RCX
  %1115 = load i64, i64* %PC
  %1116 = add i64 %1115, 4
  store i64 %1116, i64* %PC
  %1117 = sext i64 %1114 to i128
  %1118 = and i128 %1117, -18446744073709551616
  %1119 = zext i64 %1114 to i128
  %1120 = or i128 %1118, %1119
  %1121 = mul nsw i128 56, %1120
  %1122 = trunc i128 %1121 to i64
  store i64 %1122, i64* %RCX, align 8, !tbaa !2428
  %1123 = sext i64 %1122 to i128
  %1124 = icmp ne i128 %1123, %1121
  %1125 = zext i1 %1124 to i8
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1125, i8* %1126, align 1, !tbaa !2432
  %1127 = trunc i128 %1121 to i32
  %1128 = and i32 %1127, 255
  %1129 = call i32 @llvm.ctpop.i32(i32 %1128) #17
  %1130 = trunc i32 %1129 to i8
  %1131 = and i8 %1130, 1
  %1132 = xor i8 %1131, 1
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1132, i8* %1133, align 1, !tbaa !2446
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1134, align 1, !tbaa !2447
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1135, align 1, !tbaa !2448
  %1136 = lshr i64 %1122, 63
  %1137 = trunc i64 %1136 to i8
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1137, i8* %1138, align 1, !tbaa !2449
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1125, i8* %1139, align 1, !tbaa !2450
  %1140 = load i64, i64* %RAX
  %1141 = load i64, i64* %RCX
  %1142 = load i64, i64* %PC
  %1143 = add i64 %1142, 3
  store i64 %1143, i64* %PC
  %1144 = add i64 %1141, %1140
  store i64 %1144, i64* %RAX, align 8, !tbaa !2428
  %1145 = icmp ult i64 %1144, %1140
  %1146 = icmp ult i64 %1144, %1141
  %1147 = or i1 %1145, %1146
  %1148 = zext i1 %1147 to i8
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1148, i8* %1149, align 1, !tbaa !2432
  %1150 = trunc i64 %1144 to i32
  %1151 = and i32 %1150, 255
  %1152 = call i32 @llvm.ctpop.i32(i32 %1151) #17
  %1153 = trunc i32 %1152 to i8
  %1154 = and i8 %1153, 1
  %1155 = xor i8 %1154, 1
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1155, i8* %1156, align 1, !tbaa !2446
  %1157 = xor i64 %1141, %1140
  %1158 = xor i64 %1157, %1144
  %1159 = lshr i64 %1158, 4
  %1160 = trunc i64 %1159 to i8
  %1161 = and i8 %1160, 1
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1161, i8* %1162, align 1, !tbaa !2447
  %1163 = icmp eq i64 %1144, 0
  %1164 = zext i1 %1163 to i8
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1164, i8* %1165, align 1, !tbaa !2448
  %1166 = lshr i64 %1144, 63
  %1167 = trunc i64 %1166 to i8
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1167, i8* %1168, align 1, !tbaa !2449
  %1169 = lshr i64 %1140, 63
  %1170 = lshr i64 %1141, 63
  %1171 = xor i64 %1166, %1169
  %1172 = xor i64 %1166, %1170
  %1173 = add nuw nsw i64 %1171, %1172
  %1174 = icmp eq i64 %1173, 2
  %1175 = zext i1 %1174 to i8
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1175, i8* %1176, align 1, !tbaa !2450
  %1177 = load i64, i64* %RBP
  %1178 = sub i64 %1177, 40
  %1179 = load i64, i64* %RAX
  %1180 = load i64, i64* %PC
  %1181 = add i64 %1180, 4
  store i64 %1181, i64* %PC
  %1182 = inttoptr i64 %1178 to i64*
  store i64 %1179, i64* %1182
  %1183 = load i64, i64* %RBP
  %1184 = sub i64 %1183, 40
  %1185 = load i64, i64* %PC
  %1186 = add i64 %1185, 4
  store i64 %1186, i64* %PC
  %1187 = inttoptr i64 %1184 to i64*
  %1188 = load i64, i64* %1187
  store i64 %1188, i64* %RAX, align 8, !tbaa !2428
  %1189 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1190 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1191 = load i64, i64* %RAX
  %1192 = add i64 %1191, 48
  %1193 = load i64, i64* %PC
  %1194 = add i64 %1193, 5
  store i64 %1194, i64* %PC
  %1195 = bitcast i8* %1190 to double*
  %1196 = load double, double* %1195, align 1
  %1197 = getelementptr inbounds i8, i8* %1190, i64 8
  %1198 = bitcast i8* %1197 to i64*
  %1199 = load i64, i64* %1198, align 1
  %1200 = inttoptr i64 %1192 to double*
  %1201 = load double, double* %1200
  %1202 = fmul double %1196, %1201
  %1203 = bitcast i8* %1189 to double*
  store double %1202, double* %1203, align 1, !tbaa !2452
  %1204 = getelementptr inbounds i8, i8* %1189, i64 8
  %1205 = bitcast i8* %1204 to i64*
  store i64 %1199, i64* %1205, align 1, !tbaa !2452
  %1206 = load i64, i64* %RBP
  %1207 = sub i64 %1206, 40
  %1208 = load i64, i64* %PC
  %1209 = add i64 %1208, 4
  store i64 %1209, i64* %PC
  %1210 = inttoptr i64 %1207 to i64*
  %1211 = load i64, i64* %1210
  store i64 %1211, i64* %RAX, align 8, !tbaa !2428
  %1212 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1213 = load i64, i64* %RAX
  %1214 = add i64 %1213, 24
  %1215 = load i64, i64* %PC
  %1216 = add i64 %1215, 5
  store i64 %1216, i64* %PC
  %1217 = inttoptr i64 %1214 to double*
  %1218 = load double, double* %1217
  %1219 = bitcast i8* %1212 to double*
  store double %1218, double* %1219, align 1, !tbaa !2452
  %1220 = getelementptr inbounds i8, i8* %1212, i64 8
  %1221 = bitcast i8* %1220 to double*
  store double 0.000000e+00, double* %1221, align 1, !tbaa !2452
  %1222 = load i64, i64* %RBP
  %1223 = sub i64 %1222, 40
  %1224 = load i64, i64* %PC
  %1225 = add i64 %1224, 4
  store i64 %1225, i64* %PC
  %1226 = inttoptr i64 %1223 to i64*
  %1227 = load i64, i64* %1226
  store i64 %1227, i64* %RAX, align 8, !tbaa !2428
  %1228 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1229 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1230 = load i64, i64* %RAX
  %1231 = add i64 %1230, 24
  %1232 = load i64, i64* %PC
  %1233 = add i64 %1232, 5
  store i64 %1233, i64* %PC
  %1234 = bitcast i8* %1229 to double*
  %1235 = load double, double* %1234, align 1
  %1236 = getelementptr inbounds i8, i8* %1229, i64 8
  %1237 = bitcast i8* %1236 to i64*
  %1238 = load i64, i64* %1237, align 1
  %1239 = inttoptr i64 %1231 to double*
  %1240 = load double, double* %1239
  %1241 = fmul double %1235, %1240
  %1242 = bitcast i8* %1228 to double*
  store double %1241, double* %1242, align 1, !tbaa !2452
  %1243 = getelementptr inbounds i8, i8* %1228, i64 8
  %1244 = bitcast i8* %1243 to i64*
  store i64 %1238, i64* %1244, align 1, !tbaa !2452
  %1245 = load i64, i64* %RBP
  %1246 = sub i64 %1245, 40
  %1247 = load i64, i64* %PC
  %1248 = add i64 %1247, 4
  store i64 %1248, i64* %PC
  %1249 = inttoptr i64 %1246 to i64*
  %1250 = load i64, i64* %1249
  store i64 %1250, i64* %RAX, align 8, !tbaa !2428
  %1251 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1252 = load i64, i64* %RAX
  %1253 = add i64 %1252, 32
  %1254 = load i64, i64* %PC
  %1255 = add i64 %1254, 5
  store i64 %1255, i64* %PC
  %1256 = inttoptr i64 %1253 to double*
  %1257 = load double, double* %1256
  %1258 = bitcast i8* %1251 to double*
  store double %1257, double* %1258, align 1, !tbaa !2452
  %1259 = getelementptr inbounds i8, i8* %1251, i64 8
  %1260 = bitcast i8* %1259 to double*
  store double 0.000000e+00, double* %1260, align 1, !tbaa !2452
  %1261 = load i64, i64* %RBP
  %1262 = sub i64 %1261, 40
  %1263 = load i64, i64* %PC
  %1264 = add i64 %1263, 4
  store i64 %1264, i64* %PC
  %1265 = inttoptr i64 %1262 to i64*
  %1266 = load i64, i64* %1265
  store i64 %1266, i64* %RAX, align 8, !tbaa !2428
  %1267 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1268 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1269 = load i64, i64* %RAX
  %1270 = add i64 %1269, 32
  %1271 = load i64, i64* %PC
  %1272 = add i64 %1271, 5
  store i64 %1272, i64* %PC
  %1273 = bitcast i8* %1268 to double*
  %1274 = load double, double* %1273, align 1
  %1275 = getelementptr inbounds i8, i8* %1268, i64 8
  %1276 = bitcast i8* %1275 to i64*
  %1277 = load i64, i64* %1276, align 1
  %1278 = inttoptr i64 %1270 to double*
  %1279 = load double, double* %1278
  %1280 = fmul double %1274, %1279
  %1281 = bitcast i8* %1267 to double*
  store double %1280, double* %1281, align 1, !tbaa !2452
  %1282 = getelementptr inbounds i8, i8* %1267, i64 8
  %1283 = bitcast i8* %1282 to i64*
  store i64 %1277, i64* %1283, align 1, !tbaa !2452
  %1284 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1285 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1286 = bitcast %union.vec128_t* %XMM2 to i8*
  %1287 = load i64, i64* %PC
  %1288 = add i64 %1287, 4
  store i64 %1288, i64* %PC
  %1289 = bitcast i8* %1285 to double*
  %1290 = load double, double* %1289, align 1
  %1291 = getelementptr inbounds i8, i8* %1285, i64 8
  %1292 = bitcast i8* %1291 to i64*
  %1293 = load i64, i64* %1292, align 1
  %1294 = bitcast i8* %1286 to double*
  %1295 = load double, double* %1294, align 1
  %1296 = fadd double %1290, %1295
  %1297 = bitcast i8* %1284 to double*
  store double %1296, double* %1297, align 1, !tbaa !2452
  %1298 = getelementptr inbounds i8, i8* %1284, i64 8
  %1299 = bitcast i8* %1298 to i64*
  store i64 %1293, i64* %1299, align 1, !tbaa !2452
  %1300 = load i64, i64* %RBP
  %1301 = sub i64 %1300, 40
  %1302 = load i64, i64* %PC
  %1303 = add i64 %1302, 4
  store i64 %1303, i64* %PC
  %1304 = inttoptr i64 %1301 to i64*
  %1305 = load i64, i64* %1304
  store i64 %1305, i64* %RAX, align 8, !tbaa !2428
  %1306 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1307 = load i64, i64* %RAX
  %1308 = add i64 %1307, 40
  %1309 = load i64, i64* %PC
  %1310 = add i64 %1309, 5
  store i64 %1310, i64* %PC
  %1311 = inttoptr i64 %1308 to double*
  %1312 = load double, double* %1311
  %1313 = bitcast i8* %1306 to double*
  store double %1312, double* %1313, align 1, !tbaa !2452
  %1314 = getelementptr inbounds i8, i8* %1306, i64 8
  %1315 = bitcast i8* %1314 to double*
  store double 0.000000e+00, double* %1315, align 1, !tbaa !2452
  %1316 = load i64, i64* %RBP
  %1317 = sub i64 %1316, 40
  %1318 = load i64, i64* %PC
  %1319 = add i64 %1318, 4
  store i64 %1319, i64* %PC
  %1320 = inttoptr i64 %1317 to i64*
  %1321 = load i64, i64* %1320
  store i64 %1321, i64* %RAX, align 8, !tbaa !2428
  %1322 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1323 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1324 = load i64, i64* %RAX
  %1325 = add i64 %1324, 40
  %1326 = load i64, i64* %PC
  %1327 = add i64 %1326, 5
  store i64 %1327, i64* %PC
  %1328 = bitcast i8* %1323 to double*
  %1329 = load double, double* %1328, align 1
  %1330 = getelementptr inbounds i8, i8* %1323, i64 8
  %1331 = bitcast i8* %1330 to i64*
  %1332 = load i64, i64* %1331, align 1
  %1333 = inttoptr i64 %1325 to double*
  %1334 = load double, double* %1333
  %1335 = fmul double %1329, %1334
  %1336 = bitcast i8* %1322 to double*
  store double %1335, double* %1336, align 1, !tbaa !2452
  %1337 = getelementptr inbounds i8, i8* %1322, i64 8
  %1338 = bitcast i8* %1337 to i64*
  store i64 %1332, i64* %1338, align 1, !tbaa !2452
  %1339 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1340 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1341 = bitcast %union.vec128_t* %XMM2 to i8*
  %1342 = load i64, i64* %PC
  %1343 = add i64 %1342, 4
  store i64 %1343, i64* %PC
  %1344 = bitcast i8* %1340 to double*
  %1345 = load double, double* %1344, align 1
  %1346 = getelementptr inbounds i8, i8* %1340, i64 8
  %1347 = bitcast i8* %1346 to i64*
  %1348 = load i64, i64* %1347, align 1
  %1349 = bitcast i8* %1341 to double*
  %1350 = load double, double* %1349, align 1
  %1351 = fadd double %1345, %1350
  %1352 = bitcast i8* %1339 to double*
  store double %1351, double* %1352, align 1, !tbaa !2452
  %1353 = getelementptr inbounds i8, i8* %1339, i64 8
  %1354 = bitcast i8* %1353 to i64*
  store i64 %1348, i64* %1354, align 1, !tbaa !2452
  %1355 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1356 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1357 = bitcast %union.vec128_t* %XMM1 to i8*
  %1358 = load i64, i64* %PC
  %1359 = add i64 %1358, 4
  store i64 %1359, i64* %PC
  %1360 = bitcast i8* %1356 to double*
  %1361 = load double, double* %1360, align 1
  %1362 = getelementptr inbounds i8, i8* %1356, i64 8
  %1363 = bitcast i8* %1362 to i64*
  %1364 = load i64, i64* %1363, align 1
  %1365 = bitcast i8* %1357 to double*
  %1366 = load double, double* %1365, align 1
  %1367 = fmul double %1361, %1366
  %1368 = bitcast i8* %1355 to double*
  store double %1367, double* %1368, align 1, !tbaa !2452
  %1369 = getelementptr inbounds i8, i8* %1355, i64 8
  %1370 = bitcast i8* %1369 to i64*
  store i64 %1364, i64* %1370, align 1, !tbaa !2452
  %1371 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1372 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1373 = load i64, i64* %RBP
  %1374 = sub i64 %1373, 24
  %1375 = load i64, i64* %PC
  %1376 = add i64 %1375, 5
  store i64 %1376, i64* %PC
  %1377 = bitcast i8* %1372 to double*
  %1378 = load double, double* %1377, align 1
  %1379 = getelementptr inbounds i8, i8* %1372, i64 8
  %1380 = bitcast i8* %1379 to i64*
  %1381 = load i64, i64* %1380, align 1
  %1382 = inttoptr i64 %1374 to double*
  %1383 = load double, double* %1382
  %1384 = fadd double %1378, %1383
  %1385 = bitcast i8* %1371 to double*
  store double %1384, double* %1385, align 1, !tbaa !2452
  %1386 = getelementptr inbounds i8, i8* %1371, i64 8
  %1387 = bitcast i8* %1386 to i64*
  store i64 %1381, i64* %1387, align 1, !tbaa !2452
  %1388 = load i64, i64* %RBP
  %1389 = sub i64 %1388, 24
  %1390 = bitcast %union.vec128_t* %XMM0 to i8*
  %1391 = load i64, i64* %PC
  %1392 = add i64 %1391, 5
  store i64 %1392, i64* %PC
  %1393 = bitcast i8* %1390 to double*
  %1394 = load double, double* %1393, align 1
  %1395 = inttoptr i64 %1389 to double*
  store double %1394, double* %1395
  %1396 = load i64, i64* %RBP
  %1397 = sub i64 %1396, 28
  %1398 = load i64, i64* %PC
  %1399 = add i64 %1398, 3
  store i64 %1399, i64* %PC
  %1400 = inttoptr i64 %1397 to i32*
  %1401 = load i32, i32* %1400
  %1402 = zext i32 %1401 to i64
  store i64 %1402, i64* %RDX, align 8, !tbaa !2428
  %1403 = load i64, i64* %RDX
  %1404 = load i64, i64* %PC
  %1405 = add i64 %1404, 3
  store i64 %1405, i64* %PC
  %1406 = trunc i64 %1403 to i32
  %1407 = add i32 1, %1406
  %1408 = zext i32 %1407 to i64
  store i64 %1408, i64* %RDX, align 8, !tbaa !2428
  %1409 = icmp ult i32 %1407, %1406
  %1410 = icmp ult i32 %1407, 1
  %1411 = or i1 %1409, %1410
  %1412 = zext i1 %1411 to i8
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1412, i8* %1413, align 1, !tbaa !2432
  %1414 = and i32 %1407, 255
  %1415 = call i32 @llvm.ctpop.i32(i32 %1414) #17
  %1416 = trunc i32 %1415 to i8
  %1417 = and i8 %1416, 1
  %1418 = xor i8 %1417, 1
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1418, i8* %1419, align 1, !tbaa !2446
  %1420 = xor i64 1, %1403
  %1421 = trunc i64 %1420 to i32
  %1422 = xor i32 %1421, %1407
  %1423 = lshr i32 %1422, 4
  %1424 = trunc i32 %1423 to i8
  %1425 = and i8 %1424, 1
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1425, i8* %1426, align 1, !tbaa !2447
  %1427 = icmp eq i32 %1407, 0
  %1428 = zext i1 %1427 to i8
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1428, i8* %1429, align 1, !tbaa !2448
  %1430 = lshr i32 %1407, 31
  %1431 = trunc i32 %1430 to i8
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1431, i8* %1432, align 1, !tbaa !2449
  %1433 = lshr i32 %1406, 31
  %1434 = xor i32 %1430, %1433
  %1435 = add nuw nsw i32 %1434, %1430
  %1436 = icmp eq i32 %1435, 2
  %1437 = zext i1 %1436 to i8
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1437, i8* %1438, align 1, !tbaa !2450
  %1439 = load i64, i64* %RBP
  %1440 = sub i64 %1439, 32
  %1441 = load i32, i32* %EDX
  %1442 = zext i32 %1441 to i64
  %1443 = load i64, i64* %PC
  %1444 = add i64 %1443, 3
  store i64 %1444, i64* %PC
  %1445 = inttoptr i64 %1440 to i32*
  store i32 %1441, i32* %1445
  br label %block_400893

block_400893:                                     ; preds = %block_40081a, %block_40089f
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_40081a ], [ %918, %block_40089f ]
  %1446 = load i64, i64* %RBP
  %1447 = sub i64 %1446, 32
  %1448 = load i64, i64* %PC
  %1449 = add i64 %1448, 3
  store i64 %1449, i64* %PC
  %1450 = inttoptr i64 %1447 to i32*
  %1451 = load i32, i32* %1450
  %1452 = zext i32 %1451 to i64
  store i64 %1452, i64* %RAX, align 8, !tbaa !2428
  %1453 = load i32, i32* %EAX
  %1454 = zext i32 %1453 to i64
  %1455 = load i64, i64* %RBP
  %1456 = sub i64 %1455, 4
  %1457 = load i64, i64* %PC
  %1458 = add i64 %1457, 3
  store i64 %1458, i64* %PC
  %1459 = inttoptr i64 %1456 to i32*
  %1460 = load i32, i32* %1459
  %1461 = sub i32 %1453, %1460
  %1462 = icmp ult i32 %1453, %1460
  %1463 = zext i1 %1462 to i8
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1463, i8* %1464, align 1, !tbaa !2432
  %1465 = and i32 %1461, 255
  %1466 = call i32 @llvm.ctpop.i32(i32 %1465) #17
  %1467 = trunc i32 %1466 to i8
  %1468 = and i8 %1467, 1
  %1469 = xor i8 %1468, 1
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1469, i8* %1470, align 1, !tbaa !2446
  %1471 = xor i32 %1460, %1453
  %1472 = xor i32 %1471, %1461
  %1473 = lshr i32 %1472, 4
  %1474 = trunc i32 %1473 to i8
  %1475 = and i8 %1474, 1
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1475, i8* %1476, align 1, !tbaa !2447
  %1477 = icmp eq i32 %1461, 0
  %1478 = zext i1 %1477 to i8
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1478, i8* %1479, align 1, !tbaa !2448
  %1480 = lshr i32 %1461, 31
  %1481 = trunc i32 %1480 to i8
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1481, i8* %1482, align 1, !tbaa !2449
  %1483 = lshr i32 %1453, 31
  %1484 = lshr i32 %1460, 31
  %1485 = xor i32 %1484, %1483
  %1486 = xor i32 %1480, %1483
  %1487 = add nuw nsw i32 %1486, %1485
  %1488 = icmp eq i32 %1487, 2
  %1489 = zext i1 %1488 to i8
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1489, i8* %1490, align 1, !tbaa !2450
  %1491 = load i64, i64* %PC
  %1492 = add i64 %1491, 191
  %1493 = load i64, i64* %PC
  %1494 = add i64 %1493, 6
  %1495 = load i64, i64* %PC
  %1496 = add i64 %1495, 6
  store i64 %1496, i64* %PC
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1498 = load i8, i8* %1497, align 1, !tbaa !2449
  %1499 = icmp ne i8 %1498, 0
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1501 = load i8, i8* %1500, align 1, !tbaa !2450
  %1502 = icmp ne i8 %1501, 0
  %1503 = xor i1 %1499, %1502
  %1504 = xor i1 %1503, true
  %1505 = zext i1 %1504 to i8
  store i8 %1505, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1507 = select i1 %1503, i64 %1494, i64 %1492
  store i64 %1507, i64* %1506, align 8, !tbaa !2428
  %1508 = load i8, i8* %BRANCH_TAKEN
  %1509 = icmp eq i8 %1508, 1
  br i1 %1509, label %block_400958, label %block_40089f

block_400958:                                     ; preds = %block_400893
  %1510 = load i64, i64* %PC
  %1511 = add i64 %1510, 5
  %1512 = load i64, i64* %PC
  %1513 = add i64 %1512, 5
  store i64 %1513, i64* %PC
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1511, i64* %1514, align 8, !tbaa !2428
  %1515 = load i64, i64* %RBP
  %1516 = sub i64 %1515, 28
  %1517 = load i64, i64* %PC
  %1518 = add i64 %1517, 3
  store i64 %1518, i64* %PC
  %1519 = inttoptr i64 %1516 to i32*
  %1520 = load i32, i32* %1519
  %1521 = zext i32 %1520 to i64
  store i64 %1521, i64* %RAX, align 8, !tbaa !2428
  %1522 = load i64, i64* %RAX
  %1523 = load i64, i64* %PC
  %1524 = add i64 %1523, 3
  store i64 %1524, i64* %PC
  %1525 = trunc i64 %1522 to i32
  %1526 = add i32 1, %1525
  %1527 = zext i32 %1526 to i64
  store i64 %1527, i64* %RAX, align 8, !tbaa !2428
  %1528 = icmp ult i32 %1526, %1525
  %1529 = icmp ult i32 %1526, 1
  %1530 = or i1 %1528, %1529
  %1531 = zext i1 %1530 to i8
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1531, i8* %1532, align 1, !tbaa !2432
  %1533 = and i32 %1526, 255
  %1534 = call i32 @llvm.ctpop.i32(i32 %1533) #17
  %1535 = trunc i32 %1534 to i8
  %1536 = and i8 %1535, 1
  %1537 = xor i8 %1536, 1
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1537, i8* %1538, align 1, !tbaa !2446
  %1539 = xor i64 1, %1522
  %1540 = trunc i64 %1539 to i32
  %1541 = xor i32 %1540, %1526
  %1542 = lshr i32 %1541, 4
  %1543 = trunc i32 %1542 to i8
  %1544 = and i8 %1543, 1
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1544, i8* %1545, align 1, !tbaa !2447
  %1546 = icmp eq i32 %1526, 0
  %1547 = zext i1 %1546 to i8
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1547, i8* %1548, align 1, !tbaa !2448
  %1549 = lshr i32 %1526, 31
  %1550 = trunc i32 %1549 to i8
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1550, i8* %1551, align 1, !tbaa !2449
  %1552 = lshr i32 %1525, 31
  %1553 = xor i32 %1549, %1552
  %1554 = add nuw nsw i32 %1553, %1549
  %1555 = icmp eq i32 %1554, 2
  %1556 = zext i1 %1555 to i8
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1556, i8* %1557, align 1, !tbaa !2450
  %1558 = load i64, i64* %RBP
  %1559 = sub i64 %1558, 28
  %1560 = load i32, i32* %EAX
  %1561 = zext i32 %1560 to i64
  %1562 = load i64, i64* %PC
  %1563 = add i64 %1562, 3
  store i64 %1563, i64* %PC
  %1564 = inttoptr i64 %1559 to i32*
  store i32 %1560, i32* %1564
  %1565 = load i64, i64* %PC
  %1566 = sub i64 %1565, 344
  %1567 = load i64, i64* %PC
  %1568 = add i64 %1567, 5
  store i64 %1568, i64* %PC
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1566, i64* %1569, align 8, !tbaa !2428
  br label %block_40080e

block_40080e:                                     ; preds = %block_400958, %block_4007f0
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_4007f0 ], [ %MEMORY.0, %block_400958 ]
  %1570 = load i64, i64* %RBP
  %1571 = sub i64 %1570, 28
  %1572 = load i64, i64* %PC
  %1573 = add i64 %1572, 3
  store i64 %1573, i64* %PC
  %1574 = inttoptr i64 %1571 to i32*
  %1575 = load i32, i32* %1574
  %1576 = zext i32 %1575 to i64
  store i64 %1576, i64* %RAX, align 8, !tbaa !2428
  %1577 = load i32, i32* %EAX
  %1578 = zext i32 %1577 to i64
  %1579 = load i64, i64* %RBP
  %1580 = sub i64 %1579, 4
  %1581 = load i64, i64* %PC
  %1582 = add i64 %1581, 3
  store i64 %1582, i64* %PC
  %1583 = inttoptr i64 %1580 to i32*
  %1584 = load i32, i32* %1583
  %1585 = sub i32 %1577, %1584
  %1586 = icmp ult i32 %1577, %1584
  %1587 = zext i1 %1586 to i8
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1587, i8* %1588, align 1, !tbaa !2432
  %1589 = and i32 %1585, 255
  %1590 = call i32 @llvm.ctpop.i32(i32 %1589) #17
  %1591 = trunc i32 %1590 to i8
  %1592 = and i8 %1591, 1
  %1593 = xor i8 %1592, 1
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1593, i8* %1594, align 1, !tbaa !2446
  %1595 = xor i32 %1584, %1577
  %1596 = xor i32 %1595, %1585
  %1597 = lshr i32 %1596, 4
  %1598 = trunc i32 %1597 to i8
  %1599 = and i8 %1598, 1
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1599, i8* %1600, align 1, !tbaa !2447
  %1601 = icmp eq i32 %1585, 0
  %1602 = zext i1 %1601 to i8
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1602, i8* %1603, align 1, !tbaa !2448
  %1604 = lshr i32 %1585, 31
  %1605 = trunc i32 %1604 to i8
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1605, i8* %1606, align 1, !tbaa !2449
  %1607 = lshr i32 %1577, 31
  %1608 = lshr i32 %1584, 31
  %1609 = xor i32 %1608, %1607
  %1610 = xor i32 %1604, %1607
  %1611 = add nuw nsw i32 %1610, %1609
  %1612 = icmp eq i32 %1611, 2
  %1613 = zext i1 %1612 to i8
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1613, i8* %1614, align 1, !tbaa !2450
  %1615 = load i64, i64* %PC
  %1616 = add i64 %1615, 343
  %1617 = load i64, i64* %PC
  %1618 = add i64 %1617, 6
  %1619 = load i64, i64* %PC
  %1620 = add i64 %1619, 6
  store i64 %1620, i64* %PC
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1622 = load i8, i8* %1621, align 1, !tbaa !2449
  %1623 = icmp ne i8 %1622, 0
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1625 = load i8, i8* %1624, align 1, !tbaa !2450
  %1626 = icmp ne i8 %1625, 0
  %1627 = xor i1 %1623, %1626
  %1628 = xor i1 %1627, true
  %1629 = zext i1 %1628 to i8
  store i8 %1629, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1631 = select i1 %1627, i64 %1618, i64 %1616
  store i64 %1631, i64* %1630, align 8, !tbaa !2428
  %1632 = load i8, i8* %BRANCH_TAKEN
  %1633 = icmp eq i8 %1632, 1
  %1634 = bitcast %"class.std::bitset"* %YMM0 to i8*
  br i1 %1633, label %block_40096b, label %block_40081a

block_40096b:                                     ; preds = %block_40080e
  %1635 = load i64, i64* %RBP
  %1636 = sub i64 %1635, 24
  %1637 = load i64, i64* %PC
  %1638 = add i64 %1637, 5
  store i64 %1638, i64* %PC
  %1639 = inttoptr i64 %1636 to double*
  %1640 = load double, double* %1639
  %1641 = bitcast i8* %1634 to double*
  store double %1640, double* %1641, align 1, !tbaa !2452
  %1642 = getelementptr inbounds i8, i8* %1634, i64 8
  %1643 = bitcast i8* %1642 to double*
  store double 0.000000e+00, double* %1643, align 1, !tbaa !2452
  %1644 = load i64, i64* %RSP
  %1645 = load i64, i64* %PC
  %1646 = add i64 %1645, 4
  store i64 %1646, i64* %PC
  %1647 = add i64 80, %1644
  store i64 %1647, i64* %RSP, align 8, !tbaa !2428
  %1648 = icmp ult i64 %1647, %1644
  %1649 = icmp ult i64 %1647, 80
  %1650 = or i1 %1648, %1649
  %1651 = zext i1 %1650 to i8
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1651, i8* %1652, align 1, !tbaa !2432
  %1653 = trunc i64 %1647 to i32
  %1654 = and i32 %1653, 255
  %1655 = call i32 @llvm.ctpop.i32(i32 %1654) #17
  %1656 = trunc i32 %1655 to i8
  %1657 = and i8 %1656, 1
  %1658 = xor i8 %1657, 1
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1658, i8* %1659, align 1, !tbaa !2446
  %1660 = xor i64 80, %1644
  %1661 = xor i64 %1660, %1647
  %1662 = lshr i64 %1661, 4
  %1663 = trunc i64 %1662 to i8
  %1664 = and i8 %1663, 1
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1664, i8* %1665, align 1, !tbaa !2447
  %1666 = icmp eq i64 %1647, 0
  %1667 = zext i1 %1666 to i8
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1667, i8* %1668, align 1, !tbaa !2448
  %1669 = lshr i64 %1647, 63
  %1670 = trunc i64 %1669 to i8
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1670, i8* %1671, align 1, !tbaa !2449
  %1672 = lshr i64 %1644, 63
  %1673 = xor i64 %1669, %1672
  %1674 = add nuw nsw i64 %1673, %1669
  %1675 = icmp eq i64 %1674, 2
  %1676 = zext i1 %1675 to i8
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1676, i8* %1677, align 1, !tbaa !2450
  %1678 = load i64, i64* %PC
  %1679 = add i64 %1678, 1
  store i64 %1679, i64* %PC
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1681 = load i64, i64* %1680, align 8, !tbaa !2428
  %1682 = add i64 %1681, 8
  %1683 = inttoptr i64 %1681 to i64*
  %1684 = load i64, i64* %1683
  store i64 %1684, i64* %RBP, align 8, !tbaa !2428
  store i64 %1682, i64* %1680, align 8, !tbaa !2428
  %1685 = load i64, i64* %PC
  %1686 = add i64 %1685, 1
  store i64 %1686, i64* %PC
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1689 = load i64, i64* %1688, align 8, !tbaa !2428
  %1690 = inttoptr i64 %1689 to i64*
  %1691 = load i64, i64* %1690
  store i64 %1691, i64* %1687, align 8, !tbaa !2428
  %1692 = add i64 %1689, 8
  store i64 %1692, i64* %1688, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1
}

; Function Attrs: noinline
define %struct.Memory* @sub_400980_offset_momentum(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400980:
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %EDI = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RAX = bitcast %union.anon* %14 to i64*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RCX = bitcast %union.anon* %17 to i64*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 9
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RSI = bitcast %union.anon* %20 to i64*
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
  %30 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %29, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %30 to %"class.std::bitset"*
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %32 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %31, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %32 to %union.vec128_t*
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %34 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %33, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %34 to %union.vec128_t*
  %35 = load i64, i64* %RBP
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 1
  store i64 %37, i64* %PC
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %39 = load i64, i64* %38, align 8, !tbaa !2428
  %40 = add i64 %39, -8
  %41 = inttoptr i64 %40 to i64*
  store i64 %35, i64* %41
  store i64 %40, i64* %38, align 8, !tbaa !2428
  %42 = load i64, i64* %RSP
  %43 = load i64, i64* %PC
  %44 = add i64 %43, 3
  store i64 %44, i64* %PC
  store i64 %42, i64* %RBP, align 8, !tbaa !2428
  %45 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %46 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %47 = bitcast %union.vec128_t* %XMM0 to i8*
  %48 = load i64, i64* %PC
  %49 = add i64 %48, 3
  store i64 %49, i64* %PC
  %50 = bitcast i8* %46 to i64*
  %51 = load i64, i64* %50, align 1
  %52 = getelementptr inbounds i8, i8* %46, i64 8
  %53 = bitcast i8* %52 to i64*
  %54 = load i64, i64* %53, align 1
  %55 = bitcast i8* %47 to i64*
  %56 = load i64, i64* %55, align 1
  %57 = getelementptr inbounds i8, i8* %47, i64 8
  %58 = bitcast i8* %57 to i64*
  %59 = load i64, i64* %58, align 1
  %60 = xor i64 %56, %51
  %61 = xor i64 %59, %54
  %62 = trunc i64 %60 to i32
  %63 = lshr i64 %60, 32
  %64 = trunc i64 %63 to i32
  %65 = bitcast i8* %45 to i32*
  store i32 %62, i32* %65, align 1, !tbaa !2460
  %66 = getelementptr inbounds i8, i8* %45, i64 4
  %67 = bitcast i8* %66 to i32*
  store i32 %64, i32* %67, align 1, !tbaa !2460
  %68 = trunc i64 %61 to i32
  %69 = getelementptr inbounds i8, i8* %45, i64 8
  %70 = bitcast i8* %69 to i32*
  store i32 %68, i32* %70, align 1, !tbaa !2460
  %71 = lshr i64 %61, 32
  %72 = trunc i64 %71 to i32
  %73 = getelementptr inbounds i8, i8* %45, i64 12
  %74 = bitcast i8* %73 to i32*
  store i32 %72, i32* %74, align 1, !tbaa !2460
  %75 = load i64, i64* %RBP
  %76 = sub i64 %75, 4
  %77 = load i32, i32* %EDI
  %78 = zext i32 %77 to i64
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 3
  store i64 %80, i64* %PC
  %81 = inttoptr i64 %76 to i32*
  store i32 %77, i32* %81
  %82 = load i64, i64* %RBP
  %83 = sub i64 %82, 16
  %84 = load i64, i64* %RSI
  %85 = load i64, i64* %PC
  %86 = add i64 %85, 4
  store i64 %86, i64* %PC
  %87 = inttoptr i64 %83 to i64*
  store i64 %84, i64* %87
  %88 = load i64, i64* %RBP
  %89 = sub i64 %88, 24
  %90 = bitcast %union.vec128_t* %XMM0 to i8*
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 5
  store i64 %92, i64* %PC
  %93 = bitcast i8* %90 to double*
  %94 = load double, double* %93, align 1
  %95 = inttoptr i64 %89 to double*
  store double %94, double* %95
  %96 = load i64, i64* %RBP
  %97 = sub i64 %96, 32
  %98 = bitcast %union.vec128_t* %XMM0 to i8*
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 5
  store i64 %100, i64* %PC
  %101 = bitcast i8* %98 to double*
  %102 = load double, double* %101, align 1
  %103 = inttoptr i64 %97 to double*
  store double %102, double* %103
  %104 = load i64, i64* %RBP
  %105 = sub i64 %104, 40
  %106 = bitcast %union.vec128_t* %XMM0 to i8*
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 5
  store i64 %108, i64* %PC
  %109 = bitcast i8* %106 to double*
  %110 = load double, double* %109, align 1
  %111 = inttoptr i64 %105 to double*
  store double %110, double* %111
  %112 = load i64, i64* %RBP
  %113 = sub i64 %112, 44
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 7
  store i64 %115, i64* %PC
  %116 = inttoptr i64 %113 to i32*
  store i32 0, i32* %116
  br label %block_4009a4

block_400a54:                                     ; preds = %block_4009a4
  %117 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 8
  store i64 %119, i64* %PC
  %120 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400c20__rodata_type* @seg_400c20__rodata to i64), i64 16) to double*)
  %121 = bitcast i8* %117 to double*
  store double %120, double* %121, align 1, !tbaa !2452
  %122 = getelementptr inbounds i8, i8* %117, i64 8
  %123 = bitcast i8* %122 to double*
  store double 0.000000e+00, double* %123, align 1, !tbaa !2452
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 10
  store i64 %125, i64* %PC
  store i64 -9223372036854775808, i64* %RAX, align 8, !tbaa !2428
  %126 = bitcast %"class.std::bitset"* %YMM1 to i8*
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
  %136 = bitcast %union.vec128_t* %XMM1 to i8*
  %137 = load i64, i64* %PC
  %138 = add i64 %137, 5
  store i64 %138, i64* %PC
  %139 = bitcast i8* %136 to i64*
  %140 = load i64, i64* %139, align 1
  store i64 %140, i64* %RCX, align 1, !tbaa !2428
  %141 = load i64, i64* %RCX
  %142 = load i64, i64* %RAX
  %143 = load i64, i64* %PC
  %144 = add i64 %143, 3
  store i64 %144, i64* %PC
  %145 = xor i64 %142, %141
  store i64 %145, i64* %RCX, align 8, !tbaa !2428
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %146, align 1, !tbaa !2432
  %147 = trunc i64 %145 to i32
  %148 = and i32 %147, 255
  %149 = call i32 @llvm.ctpop.i32(i32 %148) #17
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  %152 = xor i8 %151, 1
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %152, i8* %153, align 1, !tbaa !2446
  %154 = icmp eq i64 %145, 0
  %155 = zext i1 %154 to i8
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %155, i8* %156, align 1, !tbaa !2448
  %157 = lshr i64 %145, 63
  %158 = trunc i64 %157 to i8
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %158, i8* %159, align 1, !tbaa !2449
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %160, align 1, !tbaa !2450
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %161, align 1, !tbaa !2447
  %162 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %163 = load i64, i64* %RCX
  %164 = load i64, i64* %PC
  %165 = add i64 %164, 5
  store i64 %165, i64* %PC
  %166 = bitcast i8* %162 to i64*
  store i64 %163, i64* %166, align 1, !tbaa !2428
  %167 = getelementptr inbounds i8, i8* %162, i64 8
  %168 = bitcast i8* %167 to i64*
  store i64 0, i64* %168, align 1, !tbaa !2428
  %169 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %170 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %171 = bitcast %union.vec128_t* %XMM0 to i8*
  %172 = load i64, i64* %PC
  %173 = add i64 %172, 4
  store i64 %173, i64* %PC
  %174 = bitcast i8* %170 to double*
  %175 = load double, double* %174, align 1
  %176 = getelementptr inbounds i8, i8* %170, i64 8
  %177 = bitcast i8* %176 to i64*
  %178 = load i64, i64* %177, align 1
  %179 = bitcast i8* %171 to double*
  %180 = load double, double* %179, align 1
  %181 = fdiv double %175, %180
  %182 = bitcast i8* %169 to double*
  store double %181, double* %182, align 1, !tbaa !2452
  %183 = getelementptr inbounds i8, i8* %169, i64 8
  %184 = bitcast i8* %183 to i64*
  store i64 %178, i64* %184, align 1, !tbaa !2452
  %185 = load i64, i64* %RBP
  %186 = sub i64 %185, 16
  %187 = load i64, i64* %PC
  %188 = add i64 %187, 4
  store i64 %188, i64* %PC
  %189 = inttoptr i64 %186 to i64*
  %190 = load i64, i64* %189
  store i64 %190, i64* %RCX, align 8, !tbaa !2428
  %191 = load i64, i64* %RCX
  %192 = add i64 %191, 24
  %193 = bitcast %union.vec128_t* %XMM1 to i8*
  %194 = load i64, i64* %PC
  %195 = add i64 %194, 5
  store i64 %195, i64* %PC
  %196 = bitcast i8* %193 to double*
  %197 = load double, double* %196, align 1
  %198 = inttoptr i64 %192 to double*
  store double %197, double* %198
  %199 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %200 = load i64, i64* %RBP
  %201 = sub i64 %200, 32
  %202 = load i64, i64* %PC
  %203 = add i64 %202, 5
  store i64 %203, i64* %PC
  %204 = inttoptr i64 %201 to double*
  %205 = load double, double* %204
  %206 = bitcast i8* %199 to double*
  store double %205, double* %206, align 1, !tbaa !2452
  %207 = getelementptr inbounds i8, i8* %199, i64 8
  %208 = bitcast i8* %207 to double*
  store double 0.000000e+00, double* %208, align 1, !tbaa !2452
  %209 = bitcast %union.vec128_t* %XMM1 to i8*
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 5
  store i64 %211, i64* %PC
  %212 = bitcast i8* %209 to i64*
  %213 = load i64, i64* %212, align 1
  store i64 %213, i64* %RCX, align 1, !tbaa !2428
  %214 = load i64, i64* %RCX
  %215 = load i64, i64* %RAX
  %216 = load i64, i64* %PC
  %217 = add i64 %216, 3
  store i64 %217, i64* %PC
  %218 = xor i64 %215, %214
  store i64 %218, i64* %RCX, align 8, !tbaa !2428
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %219, align 1, !tbaa !2432
  %220 = trunc i64 %218 to i32
  %221 = and i32 %220, 255
  %222 = call i32 @llvm.ctpop.i32(i32 %221) #17
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %225, i8* %226, align 1, !tbaa !2446
  %227 = icmp eq i64 %218, 0
  %228 = zext i1 %227 to i8
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %228, i8* %229, align 1, !tbaa !2448
  %230 = lshr i64 %218, 63
  %231 = trunc i64 %230 to i8
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %231, i8* %232, align 1, !tbaa !2449
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %233, align 1, !tbaa !2450
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %234, align 1, !tbaa !2447
  %235 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %236 = load i64, i64* %RCX
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 5
  store i64 %238, i64* %PC
  %239 = bitcast i8* %235 to i64*
  store i64 %236, i64* %239, align 1, !tbaa !2428
  %240 = getelementptr inbounds i8, i8* %235, i64 8
  %241 = bitcast i8* %240 to i64*
  store i64 0, i64* %241, align 1, !tbaa !2428
  %242 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %243 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %244 = bitcast %union.vec128_t* %XMM0 to i8*
  %245 = load i64, i64* %PC
  %246 = add i64 %245, 4
  store i64 %246, i64* %PC
  %247 = bitcast i8* %243 to double*
  %248 = load double, double* %247, align 1
  %249 = getelementptr inbounds i8, i8* %243, i64 8
  %250 = bitcast i8* %249 to i64*
  %251 = load i64, i64* %250, align 1
  %252 = bitcast i8* %244 to double*
  %253 = load double, double* %252, align 1
  %254 = fdiv double %248, %253
  %255 = bitcast i8* %242 to double*
  store double %254, double* %255, align 1, !tbaa !2452
  %256 = getelementptr inbounds i8, i8* %242, i64 8
  %257 = bitcast i8* %256 to i64*
  store i64 %251, i64* %257, align 1, !tbaa !2452
  %258 = load i64, i64* %RBP
  %259 = sub i64 %258, 16
  %260 = load i64, i64* %PC
  %261 = add i64 %260, 4
  store i64 %261, i64* %PC
  %262 = inttoptr i64 %259 to i64*
  %263 = load i64, i64* %262
  store i64 %263, i64* %RCX, align 8, !tbaa !2428
  %264 = load i64, i64* %RCX
  %265 = add i64 %264, 32
  %266 = bitcast %union.vec128_t* %XMM1 to i8*
  %267 = load i64, i64* %PC
  %268 = add i64 %267, 5
  store i64 %268, i64* %PC
  %269 = bitcast i8* %266 to double*
  %270 = load double, double* %269, align 1
  %271 = inttoptr i64 %265 to double*
  store double %270, double* %271
  %272 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %273 = load i64, i64* %RBP
  %274 = sub i64 %273, 40
  %275 = load i64, i64* %PC
  %276 = add i64 %275, 5
  store i64 %276, i64* %PC
  %277 = inttoptr i64 %274 to double*
  %278 = load double, double* %277
  %279 = bitcast i8* %272 to double*
  store double %278, double* %279, align 1, !tbaa !2452
  %280 = getelementptr inbounds i8, i8* %272, i64 8
  %281 = bitcast i8* %280 to double*
  store double 0.000000e+00, double* %281, align 1, !tbaa !2452
  %282 = bitcast %union.vec128_t* %XMM1 to i8*
  %283 = load i64, i64* %PC
  %284 = add i64 %283, 5
  store i64 %284, i64* %PC
  %285 = bitcast i8* %282 to i64*
  %286 = load i64, i64* %285, align 1
  store i64 %286, i64* %RCX, align 1, !tbaa !2428
  %287 = load i64, i64* %RCX
  %288 = load i64, i64* %RAX
  %289 = load i64, i64* %PC
  %290 = add i64 %289, 3
  store i64 %290, i64* %PC
  %291 = xor i64 %288, %287
  store i64 %291, i64* %RCX, align 8, !tbaa !2428
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %292, align 1, !tbaa !2432
  %293 = trunc i64 %291 to i32
  %294 = and i32 %293, 255
  %295 = call i32 @llvm.ctpop.i32(i32 %294) #17
  %296 = trunc i32 %295 to i8
  %297 = and i8 %296, 1
  %298 = xor i8 %297, 1
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %298, i8* %299, align 1, !tbaa !2446
  %300 = icmp eq i64 %291, 0
  %301 = zext i1 %300 to i8
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %301, i8* %302, align 1, !tbaa !2448
  %303 = lshr i64 %291, 63
  %304 = trunc i64 %303 to i8
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %304, i8* %305, align 1, !tbaa !2449
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %306, align 1, !tbaa !2450
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %307, align 1, !tbaa !2447
  %308 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %309 = load i64, i64* %RCX
  %310 = load i64, i64* %PC
  %311 = add i64 %310, 5
  store i64 %311, i64* %PC
  %312 = bitcast i8* %308 to i64*
  store i64 %309, i64* %312, align 1, !tbaa !2428
  %313 = getelementptr inbounds i8, i8* %308, i64 8
  %314 = bitcast i8* %313 to i64*
  store i64 0, i64* %314, align 1, !tbaa !2428
  %315 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %316 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %317 = bitcast %union.vec128_t* %XMM0 to i8*
  %318 = load i64, i64* %PC
  %319 = add i64 %318, 4
  store i64 %319, i64* %PC
  %320 = bitcast i8* %316 to double*
  %321 = load double, double* %320, align 1
  %322 = getelementptr inbounds i8, i8* %316, i64 8
  %323 = bitcast i8* %322 to i64*
  %324 = load i64, i64* %323, align 1
  %325 = bitcast i8* %317 to double*
  %326 = load double, double* %325, align 1
  %327 = fdiv double %321, %326
  %328 = bitcast i8* %315 to double*
  store double %327, double* %328, align 1, !tbaa !2452
  %329 = getelementptr inbounds i8, i8* %315, i64 8
  %330 = bitcast i8* %329 to i64*
  store i64 %324, i64* %330, align 1, !tbaa !2452
  %331 = load i64, i64* %RBP
  %332 = sub i64 %331, 16
  %333 = load i64, i64* %PC
  %334 = add i64 %333, 4
  store i64 %334, i64* %PC
  %335 = inttoptr i64 %332 to i64*
  %336 = load i64, i64* %335
  store i64 %336, i64* %RAX, align 8, !tbaa !2428
  %337 = load i64, i64* %RAX
  %338 = add i64 %337, 40
  %339 = bitcast %union.vec128_t* %XMM1 to i8*
  %340 = load i64, i64* %PC
  %341 = add i64 %340, 5
  store i64 %341, i64* %PC
  %342 = bitcast i8* %339 to double*
  %343 = load double, double* %342, align 1
  %344 = inttoptr i64 %338 to double*
  store double %343, double* %344
  %345 = load i64, i64* %PC
  %346 = add i64 %345, 1
  store i64 %346, i64* %PC
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %348 = load i64, i64* %347, align 8, !tbaa !2428
  %349 = add i64 %348, 8
  %350 = inttoptr i64 %348 to i64*
  %351 = load i64, i64* %350
  store i64 %351, i64* %RBP, align 8, !tbaa !2428
  store i64 %349, i64* %347, align 8, !tbaa !2428
  %352 = load i64, i64* %PC
  %353 = add i64 %352, 1
  store i64 %353, i64* %PC
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %356 = load i64, i64* %355, align 8, !tbaa !2428
  %357 = inttoptr i64 %356 to i64*
  %358 = load i64, i64* %357
  store i64 %358, i64* %354, align 8, !tbaa !2428
  %359 = add i64 %356, 8
  store i64 %359, i64* %355, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_4009a4:                                     ; preds = %block_4009b0, %block_400980
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400980 ], [ %MEMORY.0, %block_4009b0 ]
  %360 = load i64, i64* %RBP
  %361 = sub i64 %360, 44
  %362 = load i64, i64* %PC
  %363 = add i64 %362, 3
  store i64 %363, i64* %PC
  %364 = inttoptr i64 %361 to i32*
  %365 = load i32, i32* %364
  %366 = zext i32 %365 to i64
  store i64 %366, i64* %RAX, align 8, !tbaa !2428
  %367 = load i32, i32* %EAX
  %368 = zext i32 %367 to i64
  %369 = load i64, i64* %RBP
  %370 = sub i64 %369, 4
  %371 = load i64, i64* %PC
  %372 = add i64 %371, 3
  store i64 %372, i64* %PC
  %373 = inttoptr i64 %370 to i32*
  %374 = load i32, i32* %373
  %375 = sub i32 %367, %374
  %376 = icmp ult i32 %367, %374
  %377 = zext i1 %376 to i8
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %377, i8* %378, align 1, !tbaa !2432
  %379 = and i32 %375, 255
  %380 = call i32 @llvm.ctpop.i32(i32 %379) #17
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = xor i8 %382, 1
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %383, i8* %384, align 1, !tbaa !2446
  %385 = xor i32 %374, %367
  %386 = xor i32 %385, %375
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %389, i8* %390, align 1, !tbaa !2447
  %391 = icmp eq i32 %375, 0
  %392 = zext i1 %391 to i8
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %392, i8* %393, align 1, !tbaa !2448
  %394 = lshr i32 %375, 31
  %395 = trunc i32 %394 to i8
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %395, i8* %396, align 1, !tbaa !2449
  %397 = lshr i32 %367, 31
  %398 = lshr i32 %374, 31
  %399 = xor i32 %398, %397
  %400 = xor i32 %394, %397
  %401 = add nuw nsw i32 %400, %399
  %402 = icmp eq i32 %401, 2
  %403 = zext i1 %402 to i8
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %403, i8* %404, align 1, !tbaa !2450
  %405 = load i64, i64* %PC
  %406 = add i64 %405, 170
  %407 = load i64, i64* %PC
  %408 = add i64 %407, 6
  %409 = load i64, i64* %PC
  %410 = add i64 %409, 6
  store i64 %410, i64* %PC
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %412 = load i8, i8* %411, align 1, !tbaa !2449
  %413 = icmp ne i8 %412, 0
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %415 = load i8, i8* %414, align 1, !tbaa !2450
  %416 = icmp ne i8 %415, 0
  %417 = xor i1 %413, %416
  %418 = xor i1 %417, true
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %421 = select i1 %417, i64 %408, i64 %406
  store i64 %421, i64* %420, align 8, !tbaa !2428
  %422 = load i8, i8* %BRANCH_TAKEN
  %423 = icmp eq i8 %422, 1
  br i1 %423, label %block_400a54, label %block_4009b0

block_4009b0:                                     ; preds = %block_4009a4
  %424 = load i64, i64* %RBP
  %425 = sub i64 %424, 16
  %426 = load i64, i64* %PC
  %427 = add i64 %426, 4
  store i64 %427, i64* %PC
  %428 = inttoptr i64 %425 to i64*
  %429 = load i64, i64* %428
  store i64 %429, i64* %RAX, align 8, !tbaa !2428
  %430 = load i64, i64* %RBP
  %431 = sub i64 %430, 44
  %432 = load i64, i64* %PC
  %433 = add i64 %432, 4
  store i64 %433, i64* %PC
  %434 = inttoptr i64 %431 to i32*
  %435 = load i32, i32* %434
  %436 = sext i32 %435 to i64
  store i64 %436, i64* %RCX, align 8, !tbaa !2428
  %437 = load i64, i64* %RCX
  %438 = load i64, i64* %PC
  %439 = add i64 %438, 4
  store i64 %439, i64* %PC
  %440 = sext i64 %437 to i128
  %441 = and i128 %440, -18446744073709551616
  %442 = zext i64 %437 to i128
  %443 = or i128 %441, %442
  %444 = mul nsw i128 56, %443
  %445 = trunc i128 %444 to i64
  store i64 %445, i64* %RCX, align 8, !tbaa !2428
  %446 = sext i64 %445 to i128
  %447 = icmp ne i128 %446, %444
  %448 = zext i1 %447 to i8
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %448, i8* %449, align 1, !tbaa !2432
  %450 = trunc i128 %444 to i32
  %451 = and i32 %450, 255
  %452 = call i32 @llvm.ctpop.i32(i32 %451) #17
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, 1
  %455 = xor i8 %454, 1
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %455, i8* %456, align 1, !tbaa !2446
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %457, align 1, !tbaa !2447
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %458, align 1, !tbaa !2448
  %459 = lshr i64 %445, 63
  %460 = trunc i64 %459 to i8
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %460, i8* %461, align 1, !tbaa !2449
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %448, i8* %462, align 1, !tbaa !2450
  %463 = load i64, i64* %RAX
  %464 = load i64, i64* %RCX
  %465 = load i64, i64* %PC
  %466 = add i64 %465, 3
  store i64 %466, i64* %PC
  %467 = add i64 %464, %463
  store i64 %467, i64* %RAX, align 8, !tbaa !2428
  %468 = icmp ult i64 %467, %463
  %469 = icmp ult i64 %467, %464
  %470 = or i1 %468, %469
  %471 = zext i1 %470 to i8
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %471, i8* %472, align 1, !tbaa !2432
  %473 = trunc i64 %467 to i32
  %474 = and i32 %473, 255
  %475 = call i32 @llvm.ctpop.i32(i32 %474) #17
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  %478 = xor i8 %477, 1
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %478, i8* %479, align 1, !tbaa !2446
  %480 = xor i64 %464, %463
  %481 = xor i64 %480, %467
  %482 = lshr i64 %481, 4
  %483 = trunc i64 %482 to i8
  %484 = and i8 %483, 1
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %484, i8* %485, align 1, !tbaa !2447
  %486 = icmp eq i64 %467, 0
  %487 = zext i1 %486 to i8
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %487, i8* %488, align 1, !tbaa !2448
  %489 = lshr i64 %467, 63
  %490 = trunc i64 %489 to i8
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %490, i8* %491, align 1, !tbaa !2449
  %492 = lshr i64 %463, 63
  %493 = lshr i64 %464, 63
  %494 = xor i64 %489, %492
  %495 = xor i64 %489, %493
  %496 = add nuw nsw i64 %494, %495
  %497 = icmp eq i64 %496, 2
  %498 = zext i1 %497 to i8
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %498, i8* %499, align 1, !tbaa !2450
  %500 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %501 = load i64, i64* %RAX
  %502 = add i64 %501, 24
  %503 = load i64, i64* %PC
  %504 = add i64 %503, 5
  store i64 %504, i64* %PC
  %505 = inttoptr i64 %502 to double*
  %506 = load double, double* %505
  %507 = bitcast i8* %500 to double*
  store double %506, double* %507, align 1, !tbaa !2452
  %508 = getelementptr inbounds i8, i8* %500, i64 8
  %509 = bitcast i8* %508 to double*
  store double 0.000000e+00, double* %509, align 1, !tbaa !2452
  %510 = load i64, i64* %RBP
  %511 = sub i64 %510, 16
  %512 = load i64, i64* %PC
  %513 = add i64 %512, 4
  store i64 %513, i64* %PC
  %514 = inttoptr i64 %511 to i64*
  %515 = load i64, i64* %514
  store i64 %515, i64* %RAX, align 8, !tbaa !2428
  %516 = load i64, i64* %RBP
  %517 = sub i64 %516, 44
  %518 = load i64, i64* %PC
  %519 = add i64 %518, 4
  store i64 %519, i64* %PC
  %520 = inttoptr i64 %517 to i32*
  %521 = load i32, i32* %520
  %522 = sext i32 %521 to i64
  store i64 %522, i64* %RCX, align 8, !tbaa !2428
  %523 = load i64, i64* %RCX
  %524 = load i64, i64* %PC
  %525 = add i64 %524, 4
  store i64 %525, i64* %PC
  %526 = sext i64 %523 to i128
  %527 = and i128 %526, -18446744073709551616
  %528 = zext i64 %523 to i128
  %529 = or i128 %527, %528
  %530 = mul nsw i128 56, %529
  %531 = trunc i128 %530 to i64
  store i64 %531, i64* %RCX, align 8, !tbaa !2428
  %532 = sext i64 %531 to i128
  %533 = icmp ne i128 %532, %530
  %534 = zext i1 %533 to i8
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %534, i8* %535, align 1, !tbaa !2432
  %536 = trunc i128 %530 to i32
  %537 = and i32 %536, 255
  %538 = call i32 @llvm.ctpop.i32(i32 %537) #17
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  %541 = xor i8 %540, 1
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %541, i8* %542, align 1, !tbaa !2446
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %543, align 1, !tbaa !2447
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %544, align 1, !tbaa !2448
  %545 = lshr i64 %531, 63
  %546 = trunc i64 %545 to i8
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %546, i8* %547, align 1, !tbaa !2449
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %534, i8* %548, align 1, !tbaa !2450
  %549 = load i64, i64* %RAX
  %550 = load i64, i64* %RCX
  %551 = load i64, i64* %PC
  %552 = add i64 %551, 3
  store i64 %552, i64* %PC
  %553 = add i64 %550, %549
  store i64 %553, i64* %RAX, align 8, !tbaa !2428
  %554 = icmp ult i64 %553, %549
  %555 = icmp ult i64 %553, %550
  %556 = or i1 %554, %555
  %557 = zext i1 %556 to i8
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %557, i8* %558, align 1, !tbaa !2432
  %559 = trunc i64 %553 to i32
  %560 = and i32 %559, 255
  %561 = call i32 @llvm.ctpop.i32(i32 %560) #17
  %562 = trunc i32 %561 to i8
  %563 = and i8 %562, 1
  %564 = xor i8 %563, 1
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %564, i8* %565, align 1, !tbaa !2446
  %566 = xor i64 %550, %549
  %567 = xor i64 %566, %553
  %568 = lshr i64 %567, 4
  %569 = trunc i64 %568 to i8
  %570 = and i8 %569, 1
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %570, i8* %571, align 1, !tbaa !2447
  %572 = icmp eq i64 %553, 0
  %573 = zext i1 %572 to i8
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %573, i8* %574, align 1, !tbaa !2448
  %575 = lshr i64 %553, 63
  %576 = trunc i64 %575 to i8
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %576, i8* %577, align 1, !tbaa !2449
  %578 = lshr i64 %549, 63
  %579 = lshr i64 %550, 63
  %580 = xor i64 %575, %578
  %581 = xor i64 %575, %579
  %582 = add nuw nsw i64 %580, %581
  %583 = icmp eq i64 %582, 2
  %584 = zext i1 %583 to i8
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %584, i8* %585, align 1, !tbaa !2450
  %586 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %587 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %588 = load i64, i64* %RAX
  %589 = add i64 %588, 48
  %590 = load i64, i64* %PC
  %591 = add i64 %590, 5
  store i64 %591, i64* %PC
  %592 = bitcast i8* %587 to double*
  %593 = load double, double* %592, align 1
  %594 = getelementptr inbounds i8, i8* %587, i64 8
  %595 = bitcast i8* %594 to i64*
  %596 = load i64, i64* %595, align 1
  %597 = inttoptr i64 %589 to double*
  %598 = load double, double* %597
  %599 = fmul double %593, %598
  %600 = bitcast i8* %586 to double*
  store double %599, double* %600, align 1, !tbaa !2452
  %601 = getelementptr inbounds i8, i8* %586, i64 8
  %602 = bitcast i8* %601 to i64*
  store i64 %596, i64* %602, align 1, !tbaa !2452
  %603 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %604 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %605 = load i64, i64* %RBP
  %606 = sub i64 %605, 24
  %607 = load i64, i64* %PC
  %608 = add i64 %607, 5
  store i64 %608, i64* %PC
  %609 = bitcast i8* %604 to double*
  %610 = load double, double* %609, align 1
  %611 = getelementptr inbounds i8, i8* %604, i64 8
  %612 = bitcast i8* %611 to i64*
  %613 = load i64, i64* %612, align 1
  %614 = inttoptr i64 %606 to double*
  %615 = load double, double* %614
  %616 = fadd double %610, %615
  %617 = bitcast i8* %603 to double*
  store double %616, double* %617, align 1, !tbaa !2452
  %618 = getelementptr inbounds i8, i8* %603, i64 8
  %619 = bitcast i8* %618 to i64*
  store i64 %613, i64* %619, align 1, !tbaa !2452
  %620 = load i64, i64* %RBP
  %621 = sub i64 %620, 24
  %622 = bitcast %union.vec128_t* %XMM0 to i8*
  %623 = load i64, i64* %PC
  %624 = add i64 %623, 5
  store i64 %624, i64* %PC
  %625 = bitcast i8* %622 to double*
  %626 = load double, double* %625, align 1
  %627 = inttoptr i64 %621 to double*
  store double %626, double* %627
  %628 = load i64, i64* %RBP
  %629 = sub i64 %628, 16
  %630 = load i64, i64* %PC
  %631 = add i64 %630, 4
  store i64 %631, i64* %PC
  %632 = inttoptr i64 %629 to i64*
  %633 = load i64, i64* %632
  store i64 %633, i64* %RAX, align 8, !tbaa !2428
  %634 = load i64, i64* %RBP
  %635 = sub i64 %634, 44
  %636 = load i64, i64* %PC
  %637 = add i64 %636, 4
  store i64 %637, i64* %PC
  %638 = inttoptr i64 %635 to i32*
  %639 = load i32, i32* %638
  %640 = sext i32 %639 to i64
  store i64 %640, i64* %RCX, align 8, !tbaa !2428
  %641 = load i64, i64* %RCX
  %642 = load i64, i64* %PC
  %643 = add i64 %642, 4
  store i64 %643, i64* %PC
  %644 = sext i64 %641 to i128
  %645 = and i128 %644, -18446744073709551616
  %646 = zext i64 %641 to i128
  %647 = or i128 %645, %646
  %648 = mul nsw i128 56, %647
  %649 = trunc i128 %648 to i64
  store i64 %649, i64* %RCX, align 8, !tbaa !2428
  %650 = sext i64 %649 to i128
  %651 = icmp ne i128 %650, %648
  %652 = zext i1 %651 to i8
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %652, i8* %653, align 1, !tbaa !2432
  %654 = trunc i128 %648 to i32
  %655 = and i32 %654, 255
  %656 = call i32 @llvm.ctpop.i32(i32 %655) #17
  %657 = trunc i32 %656 to i8
  %658 = and i8 %657, 1
  %659 = xor i8 %658, 1
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %659, i8* %660, align 1, !tbaa !2446
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %661, align 1, !tbaa !2447
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %662, align 1, !tbaa !2448
  %663 = lshr i64 %649, 63
  %664 = trunc i64 %663 to i8
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %664, i8* %665, align 1, !tbaa !2449
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %652, i8* %666, align 1, !tbaa !2450
  %667 = load i64, i64* %RAX
  %668 = load i64, i64* %RCX
  %669 = load i64, i64* %PC
  %670 = add i64 %669, 3
  store i64 %670, i64* %PC
  %671 = add i64 %668, %667
  store i64 %671, i64* %RAX, align 8, !tbaa !2428
  %672 = icmp ult i64 %671, %667
  %673 = icmp ult i64 %671, %668
  %674 = or i1 %672, %673
  %675 = zext i1 %674 to i8
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %675, i8* %676, align 1, !tbaa !2432
  %677 = trunc i64 %671 to i32
  %678 = and i32 %677, 255
  %679 = call i32 @llvm.ctpop.i32(i32 %678) #17
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  %682 = xor i8 %681, 1
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %682, i8* %683, align 1, !tbaa !2446
  %684 = xor i64 %668, %667
  %685 = xor i64 %684, %671
  %686 = lshr i64 %685, 4
  %687 = trunc i64 %686 to i8
  %688 = and i8 %687, 1
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %688, i8* %689, align 1, !tbaa !2447
  %690 = icmp eq i64 %671, 0
  %691 = zext i1 %690 to i8
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %691, i8* %692, align 1, !tbaa !2448
  %693 = lshr i64 %671, 63
  %694 = trunc i64 %693 to i8
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %694, i8* %695, align 1, !tbaa !2449
  %696 = lshr i64 %667, 63
  %697 = lshr i64 %668, 63
  %698 = xor i64 %693, %696
  %699 = xor i64 %693, %697
  %700 = add nuw nsw i64 %698, %699
  %701 = icmp eq i64 %700, 2
  %702 = zext i1 %701 to i8
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %702, i8* %703, align 1, !tbaa !2450
  %704 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %705 = load i64, i64* %RAX
  %706 = add i64 %705, 32
  %707 = load i64, i64* %PC
  %708 = add i64 %707, 5
  store i64 %708, i64* %PC
  %709 = inttoptr i64 %706 to double*
  %710 = load double, double* %709
  %711 = bitcast i8* %704 to double*
  store double %710, double* %711, align 1, !tbaa !2452
  %712 = getelementptr inbounds i8, i8* %704, i64 8
  %713 = bitcast i8* %712 to double*
  store double 0.000000e+00, double* %713, align 1, !tbaa !2452
  %714 = load i64, i64* %RBP
  %715 = sub i64 %714, 16
  %716 = load i64, i64* %PC
  %717 = add i64 %716, 4
  store i64 %717, i64* %PC
  %718 = inttoptr i64 %715 to i64*
  %719 = load i64, i64* %718
  store i64 %719, i64* %RAX, align 8, !tbaa !2428
  %720 = load i64, i64* %RBP
  %721 = sub i64 %720, 44
  %722 = load i64, i64* %PC
  %723 = add i64 %722, 4
  store i64 %723, i64* %PC
  %724 = inttoptr i64 %721 to i32*
  %725 = load i32, i32* %724
  %726 = sext i32 %725 to i64
  store i64 %726, i64* %RCX, align 8, !tbaa !2428
  %727 = load i64, i64* %RCX
  %728 = load i64, i64* %PC
  %729 = add i64 %728, 4
  store i64 %729, i64* %PC
  %730 = sext i64 %727 to i128
  %731 = and i128 %730, -18446744073709551616
  %732 = zext i64 %727 to i128
  %733 = or i128 %731, %732
  %734 = mul nsw i128 56, %733
  %735 = trunc i128 %734 to i64
  store i64 %735, i64* %RCX, align 8, !tbaa !2428
  %736 = sext i64 %735 to i128
  %737 = icmp ne i128 %736, %734
  %738 = zext i1 %737 to i8
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %738, i8* %739, align 1, !tbaa !2432
  %740 = trunc i128 %734 to i32
  %741 = and i32 %740, 255
  %742 = call i32 @llvm.ctpop.i32(i32 %741) #17
  %743 = trunc i32 %742 to i8
  %744 = and i8 %743, 1
  %745 = xor i8 %744, 1
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %745, i8* %746, align 1, !tbaa !2446
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %747, align 1, !tbaa !2447
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %748, align 1, !tbaa !2448
  %749 = lshr i64 %735, 63
  %750 = trunc i64 %749 to i8
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %750, i8* %751, align 1, !tbaa !2449
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %738, i8* %752, align 1, !tbaa !2450
  %753 = load i64, i64* %RAX
  %754 = load i64, i64* %RCX
  %755 = load i64, i64* %PC
  %756 = add i64 %755, 3
  store i64 %756, i64* %PC
  %757 = add i64 %754, %753
  store i64 %757, i64* %RAX, align 8, !tbaa !2428
  %758 = icmp ult i64 %757, %753
  %759 = icmp ult i64 %757, %754
  %760 = or i1 %758, %759
  %761 = zext i1 %760 to i8
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %761, i8* %762, align 1, !tbaa !2432
  %763 = trunc i64 %757 to i32
  %764 = and i32 %763, 255
  %765 = call i32 @llvm.ctpop.i32(i32 %764) #17
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  %768 = xor i8 %767, 1
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %768, i8* %769, align 1, !tbaa !2446
  %770 = xor i64 %754, %753
  %771 = xor i64 %770, %757
  %772 = lshr i64 %771, 4
  %773 = trunc i64 %772 to i8
  %774 = and i8 %773, 1
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %774, i8* %775, align 1, !tbaa !2447
  %776 = icmp eq i64 %757, 0
  %777 = zext i1 %776 to i8
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %777, i8* %778, align 1, !tbaa !2448
  %779 = lshr i64 %757, 63
  %780 = trunc i64 %779 to i8
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %780, i8* %781, align 1, !tbaa !2449
  %782 = lshr i64 %753, 63
  %783 = lshr i64 %754, 63
  %784 = xor i64 %779, %782
  %785 = xor i64 %779, %783
  %786 = add nuw nsw i64 %784, %785
  %787 = icmp eq i64 %786, 2
  %788 = zext i1 %787 to i8
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %788, i8* %789, align 1, !tbaa !2450
  %790 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %791 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %792 = load i64, i64* %RAX
  %793 = add i64 %792, 48
  %794 = load i64, i64* %PC
  %795 = add i64 %794, 5
  store i64 %795, i64* %PC
  %796 = bitcast i8* %791 to double*
  %797 = load double, double* %796, align 1
  %798 = getelementptr inbounds i8, i8* %791, i64 8
  %799 = bitcast i8* %798 to i64*
  %800 = load i64, i64* %799, align 1
  %801 = inttoptr i64 %793 to double*
  %802 = load double, double* %801
  %803 = fmul double %797, %802
  %804 = bitcast i8* %790 to double*
  store double %803, double* %804, align 1, !tbaa !2452
  %805 = getelementptr inbounds i8, i8* %790, i64 8
  %806 = bitcast i8* %805 to i64*
  store i64 %800, i64* %806, align 1, !tbaa !2452
  %807 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %808 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %809 = load i64, i64* %RBP
  %810 = sub i64 %809, 32
  %811 = load i64, i64* %PC
  %812 = add i64 %811, 5
  store i64 %812, i64* %PC
  %813 = bitcast i8* %808 to double*
  %814 = load double, double* %813, align 1
  %815 = getelementptr inbounds i8, i8* %808, i64 8
  %816 = bitcast i8* %815 to i64*
  %817 = load i64, i64* %816, align 1
  %818 = inttoptr i64 %810 to double*
  %819 = load double, double* %818
  %820 = fadd double %814, %819
  %821 = bitcast i8* %807 to double*
  store double %820, double* %821, align 1, !tbaa !2452
  %822 = getelementptr inbounds i8, i8* %807, i64 8
  %823 = bitcast i8* %822 to i64*
  store i64 %817, i64* %823, align 1, !tbaa !2452
  %824 = load i64, i64* %RBP
  %825 = sub i64 %824, 32
  %826 = bitcast %union.vec128_t* %XMM0 to i8*
  %827 = load i64, i64* %PC
  %828 = add i64 %827, 5
  store i64 %828, i64* %PC
  %829 = bitcast i8* %826 to double*
  %830 = load double, double* %829, align 1
  %831 = inttoptr i64 %825 to double*
  store double %830, double* %831
  %832 = load i64, i64* %RBP
  %833 = sub i64 %832, 16
  %834 = load i64, i64* %PC
  %835 = add i64 %834, 4
  store i64 %835, i64* %PC
  %836 = inttoptr i64 %833 to i64*
  %837 = load i64, i64* %836
  store i64 %837, i64* %RAX, align 8, !tbaa !2428
  %838 = load i64, i64* %RBP
  %839 = sub i64 %838, 44
  %840 = load i64, i64* %PC
  %841 = add i64 %840, 4
  store i64 %841, i64* %PC
  %842 = inttoptr i64 %839 to i32*
  %843 = load i32, i32* %842
  %844 = sext i32 %843 to i64
  store i64 %844, i64* %RCX, align 8, !tbaa !2428
  %845 = load i64, i64* %RCX
  %846 = load i64, i64* %PC
  %847 = add i64 %846, 4
  store i64 %847, i64* %PC
  %848 = sext i64 %845 to i128
  %849 = and i128 %848, -18446744073709551616
  %850 = zext i64 %845 to i128
  %851 = or i128 %849, %850
  %852 = mul nsw i128 56, %851
  %853 = trunc i128 %852 to i64
  store i64 %853, i64* %RCX, align 8, !tbaa !2428
  %854 = sext i64 %853 to i128
  %855 = icmp ne i128 %854, %852
  %856 = zext i1 %855 to i8
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %856, i8* %857, align 1, !tbaa !2432
  %858 = trunc i128 %852 to i32
  %859 = and i32 %858, 255
  %860 = call i32 @llvm.ctpop.i32(i32 %859) #17
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  %863 = xor i8 %862, 1
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %863, i8* %864, align 1, !tbaa !2446
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %865, align 1, !tbaa !2447
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %866, align 1, !tbaa !2448
  %867 = lshr i64 %853, 63
  %868 = trunc i64 %867 to i8
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %868, i8* %869, align 1, !tbaa !2449
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %856, i8* %870, align 1, !tbaa !2450
  %871 = load i64, i64* %RAX
  %872 = load i64, i64* %RCX
  %873 = load i64, i64* %PC
  %874 = add i64 %873, 3
  store i64 %874, i64* %PC
  %875 = add i64 %872, %871
  store i64 %875, i64* %RAX, align 8, !tbaa !2428
  %876 = icmp ult i64 %875, %871
  %877 = icmp ult i64 %875, %872
  %878 = or i1 %876, %877
  %879 = zext i1 %878 to i8
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %879, i8* %880, align 1, !tbaa !2432
  %881 = trunc i64 %875 to i32
  %882 = and i32 %881, 255
  %883 = call i32 @llvm.ctpop.i32(i32 %882) #17
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  %886 = xor i8 %885, 1
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %886, i8* %887, align 1, !tbaa !2446
  %888 = xor i64 %872, %871
  %889 = xor i64 %888, %875
  %890 = lshr i64 %889, 4
  %891 = trunc i64 %890 to i8
  %892 = and i8 %891, 1
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %892, i8* %893, align 1, !tbaa !2447
  %894 = icmp eq i64 %875, 0
  %895 = zext i1 %894 to i8
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %895, i8* %896, align 1, !tbaa !2448
  %897 = lshr i64 %875, 63
  %898 = trunc i64 %897 to i8
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %898, i8* %899, align 1, !tbaa !2449
  %900 = lshr i64 %871, 63
  %901 = lshr i64 %872, 63
  %902 = xor i64 %897, %900
  %903 = xor i64 %897, %901
  %904 = add nuw nsw i64 %902, %903
  %905 = icmp eq i64 %904, 2
  %906 = zext i1 %905 to i8
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %906, i8* %907, align 1, !tbaa !2450
  %908 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %909 = load i64, i64* %RAX
  %910 = add i64 %909, 40
  %911 = load i64, i64* %PC
  %912 = add i64 %911, 5
  store i64 %912, i64* %PC
  %913 = inttoptr i64 %910 to double*
  %914 = load double, double* %913
  %915 = bitcast i8* %908 to double*
  store double %914, double* %915, align 1, !tbaa !2452
  %916 = getelementptr inbounds i8, i8* %908, i64 8
  %917 = bitcast i8* %916 to double*
  store double 0.000000e+00, double* %917, align 1, !tbaa !2452
  %918 = load i64, i64* %RBP
  %919 = sub i64 %918, 16
  %920 = load i64, i64* %PC
  %921 = add i64 %920, 4
  store i64 %921, i64* %PC
  %922 = inttoptr i64 %919 to i64*
  %923 = load i64, i64* %922
  store i64 %923, i64* %RAX, align 8, !tbaa !2428
  %924 = load i64, i64* %RBP
  %925 = sub i64 %924, 44
  %926 = load i64, i64* %PC
  %927 = add i64 %926, 4
  store i64 %927, i64* %PC
  %928 = inttoptr i64 %925 to i32*
  %929 = load i32, i32* %928
  %930 = sext i32 %929 to i64
  store i64 %930, i64* %RCX, align 8, !tbaa !2428
  %931 = load i64, i64* %RCX
  %932 = load i64, i64* %PC
  %933 = add i64 %932, 4
  store i64 %933, i64* %PC
  %934 = sext i64 %931 to i128
  %935 = and i128 %934, -18446744073709551616
  %936 = zext i64 %931 to i128
  %937 = or i128 %935, %936
  %938 = mul nsw i128 56, %937
  %939 = trunc i128 %938 to i64
  store i64 %939, i64* %RCX, align 8, !tbaa !2428
  %940 = sext i64 %939 to i128
  %941 = icmp ne i128 %940, %938
  %942 = zext i1 %941 to i8
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %942, i8* %943, align 1, !tbaa !2432
  %944 = trunc i128 %938 to i32
  %945 = and i32 %944, 255
  %946 = call i32 @llvm.ctpop.i32(i32 %945) #17
  %947 = trunc i32 %946 to i8
  %948 = and i8 %947, 1
  %949 = xor i8 %948, 1
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %949, i8* %950, align 1, !tbaa !2446
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %951, align 1, !tbaa !2447
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %952, align 1, !tbaa !2448
  %953 = lshr i64 %939, 63
  %954 = trunc i64 %953 to i8
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %954, i8* %955, align 1, !tbaa !2449
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %942, i8* %956, align 1, !tbaa !2450
  %957 = load i64, i64* %RAX
  %958 = load i64, i64* %RCX
  %959 = load i64, i64* %PC
  %960 = add i64 %959, 3
  store i64 %960, i64* %PC
  %961 = add i64 %958, %957
  store i64 %961, i64* %RAX, align 8, !tbaa !2428
  %962 = icmp ult i64 %961, %957
  %963 = icmp ult i64 %961, %958
  %964 = or i1 %962, %963
  %965 = zext i1 %964 to i8
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %965, i8* %966, align 1, !tbaa !2432
  %967 = trunc i64 %961 to i32
  %968 = and i32 %967, 255
  %969 = call i32 @llvm.ctpop.i32(i32 %968) #17
  %970 = trunc i32 %969 to i8
  %971 = and i8 %970, 1
  %972 = xor i8 %971, 1
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %972, i8* %973, align 1, !tbaa !2446
  %974 = xor i64 %958, %957
  %975 = xor i64 %974, %961
  %976 = lshr i64 %975, 4
  %977 = trunc i64 %976 to i8
  %978 = and i8 %977, 1
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %978, i8* %979, align 1, !tbaa !2447
  %980 = icmp eq i64 %961, 0
  %981 = zext i1 %980 to i8
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %981, i8* %982, align 1, !tbaa !2448
  %983 = lshr i64 %961, 63
  %984 = trunc i64 %983 to i8
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %984, i8* %985, align 1, !tbaa !2449
  %986 = lshr i64 %957, 63
  %987 = lshr i64 %958, 63
  %988 = xor i64 %983, %986
  %989 = xor i64 %983, %987
  %990 = add nuw nsw i64 %988, %989
  %991 = icmp eq i64 %990, 2
  %992 = zext i1 %991 to i8
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %992, i8* %993, align 1, !tbaa !2450
  %994 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %995 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %996 = load i64, i64* %RAX
  %997 = add i64 %996, 48
  %998 = load i64, i64* %PC
  %999 = add i64 %998, 5
  store i64 %999, i64* %PC
  %1000 = bitcast i8* %995 to double*
  %1001 = load double, double* %1000, align 1
  %1002 = getelementptr inbounds i8, i8* %995, i64 8
  %1003 = bitcast i8* %1002 to i64*
  %1004 = load i64, i64* %1003, align 1
  %1005 = inttoptr i64 %997 to double*
  %1006 = load double, double* %1005
  %1007 = fmul double %1001, %1006
  %1008 = bitcast i8* %994 to double*
  store double %1007, double* %1008, align 1, !tbaa !2452
  %1009 = getelementptr inbounds i8, i8* %994, i64 8
  %1010 = bitcast i8* %1009 to i64*
  store i64 %1004, i64* %1010, align 1, !tbaa !2452
  %1011 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1012 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1013 = load i64, i64* %RBP
  %1014 = sub i64 %1013, 40
  %1015 = load i64, i64* %PC
  %1016 = add i64 %1015, 5
  store i64 %1016, i64* %PC
  %1017 = bitcast i8* %1012 to double*
  %1018 = load double, double* %1017, align 1
  %1019 = getelementptr inbounds i8, i8* %1012, i64 8
  %1020 = bitcast i8* %1019 to i64*
  %1021 = load i64, i64* %1020, align 1
  %1022 = inttoptr i64 %1014 to double*
  %1023 = load double, double* %1022
  %1024 = fadd double %1018, %1023
  %1025 = bitcast i8* %1011 to double*
  store double %1024, double* %1025, align 1, !tbaa !2452
  %1026 = getelementptr inbounds i8, i8* %1011, i64 8
  %1027 = bitcast i8* %1026 to i64*
  store i64 %1021, i64* %1027, align 1, !tbaa !2452
  %1028 = load i64, i64* %RBP
  %1029 = sub i64 %1028, 40
  %1030 = bitcast %union.vec128_t* %XMM0 to i8*
  %1031 = load i64, i64* %PC
  %1032 = add i64 %1031, 5
  store i64 %1032, i64* %PC
  %1033 = bitcast i8* %1030 to double*
  %1034 = load double, double* %1033, align 1
  %1035 = inttoptr i64 %1029 to double*
  store double %1034, double* %1035
  %1036 = load i64, i64* %RBP
  %1037 = sub i64 %1036, 44
  %1038 = load i64, i64* %PC
  %1039 = add i64 %1038, 3
  store i64 %1039, i64* %PC
  %1040 = inttoptr i64 %1037 to i32*
  %1041 = load i32, i32* %1040
  %1042 = zext i32 %1041 to i64
  store i64 %1042, i64* %RAX, align 8, !tbaa !2428
  %1043 = load i64, i64* %RAX
  %1044 = load i64, i64* %PC
  %1045 = add i64 %1044, 3
  store i64 %1045, i64* %PC
  %1046 = trunc i64 %1043 to i32
  %1047 = add i32 1, %1046
  %1048 = zext i32 %1047 to i64
  store i64 %1048, i64* %RAX, align 8, !tbaa !2428
  %1049 = icmp ult i32 %1047, %1046
  %1050 = icmp ult i32 %1047, 1
  %1051 = or i1 %1049, %1050
  %1052 = zext i1 %1051 to i8
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1052, i8* %1053, align 1, !tbaa !2432
  %1054 = and i32 %1047, 255
  %1055 = call i32 @llvm.ctpop.i32(i32 %1054) #17
  %1056 = trunc i32 %1055 to i8
  %1057 = and i8 %1056, 1
  %1058 = xor i8 %1057, 1
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1058, i8* %1059, align 1, !tbaa !2446
  %1060 = xor i64 1, %1043
  %1061 = trunc i64 %1060 to i32
  %1062 = xor i32 %1061, %1047
  %1063 = lshr i32 %1062, 4
  %1064 = trunc i32 %1063 to i8
  %1065 = and i8 %1064, 1
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1065, i8* %1066, align 1, !tbaa !2447
  %1067 = icmp eq i32 %1047, 0
  %1068 = zext i1 %1067 to i8
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1068, i8* %1069, align 1, !tbaa !2448
  %1070 = lshr i32 %1047, 31
  %1071 = trunc i32 %1070 to i8
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1071, i8* %1072, align 1, !tbaa !2449
  %1073 = lshr i32 %1046, 31
  %1074 = xor i32 %1070, %1073
  %1075 = add nuw nsw i32 %1074, %1070
  %1076 = icmp eq i32 %1075, 2
  %1077 = zext i1 %1076 to i8
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1077, i8* %1078, align 1, !tbaa !2450
  %1079 = load i64, i64* %RBP
  %1080 = sub i64 %1079, 44
  %1081 = load i32, i32* %EAX
  %1082 = zext i32 %1081 to i64
  %1083 = load i64, i64* %PC
  %1084 = add i64 %1083, 3
  store i64 %1084, i64* %PC
  %1085 = inttoptr i64 %1080 to i32*
  store i32 %1081, i32* %1085
  %1086 = load i64, i64* %PC
  %1087 = sub i64 %1086, 171
  %1088 = load i64, i64* %PC
  %1089 = add i64 %1088, 5
  store i64 %1089, i64* %PC
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1087, i64* %1090, align 8, !tbaa !2428
  br label %block_4009a4
}

; Function Attrs: noinline
define %struct.Memory* @sub_400430__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400430:
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
  %21 = call i32 @llvm.ctpop.i32(i32 %20) #17
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
  %46 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_600ff0__got_type* @seg_600ff0__got to i64), i64 8) to i64*)
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
  %55 = call i32 @llvm.ctpop.i32(i32 %54) #17
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
  br i1 %80, label %block_400442, label %block_400440

block_400440:                                     ; preds = %block_400430
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
  br label %block_400442

block_400442:                                     ; preds = %block_400440, %block_400430
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400430 ], [ %92, %block_400440 ]
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
  %104 = call i32 @llvm.ctpop.i32(i32 %103) #17
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
define %struct.Memory* @sub_400480__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400480:
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
  %46 = call i32 @llvm.ctpop.i32(i32 %45) #17
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
  %79 = call i32 @llvm.ctpop.i32(i32 %78) #17
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
  store i64 ptrtoint (void ()* @callback_sub_400c10___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_400ba0___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
  %121 = load i64, i64* getelementptr inbounds (%seg_600ff0__got_type, %seg_600ff0__got_type* @seg_600ff0__got, i32 0, i32 0)
  store i64 %121, i64* %120, align 8, !tbaa !2428
  %122 = load i64, i64* %PC
  %123 = call %struct.Memory* @ext_601180___libc_start_main(%struct.State* %0, i64 %122, %struct.Memory* %2)
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 1
  store i64 %125, i64* %PC
  %126 = load i64, i64* %PC
  %127 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %126, %struct.Memory* %123)
  ret %struct.Memory* %127
}

; Function Attrs: noinline
define %struct.Memory* @sub_400530___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400530:
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
  %14 = load i8, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i32 0, i32 0, i32 0)
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1, !tbaa !2432
  %16 = zext i8 %14 to i32
  %17 = call i32 @llvm.ctpop.i32(i32 %16) #17
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
  br i1 %47, label %block_400550, label %block_400539

block_400550:                                     ; preds = %block_400530
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

block_400539:                                     ; preds = %block_400530
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
  %78 = call %struct.Memory* @sub_4004c0_deregister_tm_clones(%struct.State* %0, i64 %77, %struct.Memory* %2)
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 7
  store i64 %80, i64* %PC
  store i8 1, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i32 0, i32 0, i32 0)
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
define %struct.Memory* @sub_400c14__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400c14:
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
  %18 = call i32 @llvm.ctpop.i32(i32 %17) #17
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
  %52 = call i32 @llvm.ctpop.i32(i32 %51) #17
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
define %struct.Memory* @sub_400ba0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400ba0:
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
  store i64 ptrtoint (%seg_600df0__init_array_type* @seg_600df0__init_array to i64), i64* %R12, align 8, !tbaa !2428
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
  store i64 add (i64 ptrtoint (%seg_600df0__init_array_type* @seg_600df0__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2428
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
  %119 = call i32 @llvm.ctpop.i32(i32 %118) #17
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
  %153 = call i32 @llvm.ctpop.i32(i32 %152) #17
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
  %187 = call i32 @llvm.ctpop.i32(i32 %186) #17
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
  %200 = sub i64 %199, 1948
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
  %211 = call %struct.Memory* @sub_400430__init_proc(%struct.State* %0, i64 %210, %struct.Memory* %2)
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
  %220 = call i32 @llvm.ctpop.i32(i32 %219) #17
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
  br i1 %245, label %block_400bf6, label %block_400bd6

block_400bf6:                                     ; preds = %block_400be0, %block_400ba0
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_400ba0 ], [ %387, %block_400be0 ]
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
  %257 = call i32 @llvm.ctpop.i32(i32 %256) #17
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

block_400bd6:                                     ; preds = %block_400ba0
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
  %340 = call i32 @llvm.ctpop.i32(i32 %339) #17
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
  br label %block_400be0

block_400be0:                                     ; preds = %block_400be0, %block_400bd6
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_400bd6 ], [ %387, %block_400be0 ]
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
  %399 = call i32 @llvm.ctpop.i32(i32 %398) #17
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
  %432 = call i32 @llvm.ctpop.i32(i32 %431) #17
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
  br i1 %470, label %block_400be0, label %block_400bf6
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #13

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400560_frame_dummy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400560;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400560_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400560_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400530___do_global_dtors_aux() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400530;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400530___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400530___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_601170_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #16 {
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
  store i8 0, i8* %BRANCH_TAKEN, align 1
  store i64 0, i64* %SS_BASE, align 8
  store i64 0, i64* %ES_BASE, align 8
  store i64 0, i64* %DS_BASE, align 8
  store i64 0, i64* %CS_BASE, align 8
  store %struct.State* %0, %struct.State** %STATE, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 33
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %5, i32 0, i32 0
  %PC = bitcast %union.anon* %6 to i64*
  store i64 %1, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %10 = bitcast %union.anon* %9 to %struct.anon.2*
  %AH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %10, i32 0, i32 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.GPR, %struct.GPR* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.Reg, %struct.Reg* %12, i32 0, i32 0
  %14 = bitcast %union.anon* %13 to %struct.anon.2*
  %BH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %14, i32 0, i32 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %18 = bitcast %union.anon* %17 to %struct.anon.2*
  %CH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %18, i32 0, i32 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0
  %22 = bitcast %union.anon* %21 to %struct.anon.2*
  %DH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %22, i32 0, i32 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %26 = bitcast %union.anon* %25 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %26, i32 0, i32 0
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %30 = bitcast %union.anon* %29 to %struct.anon.2*
  %BL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %30, i32 0, i32 0
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %32 = getelementptr inbounds %struct.GPR, %struct.GPR* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %32, i32 0, i32 0
  %34 = bitcast %union.anon* %33 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %34, i32 0, i32 0
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %38 = bitcast %union.anon* %37 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %38, i32 0, i32 0
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 9
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0
  %42 = bitcast %union.anon* %41 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %42, i32 0, i32 0
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %44 = getelementptr inbounds %struct.GPR, %struct.GPR* %43, i32 0, i32 11
  %45 = getelementptr inbounds %struct.Reg, %struct.Reg* %44, i32 0, i32 0
  %46 = bitcast %union.anon* %45 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %46, i32 0, i32 0
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 13
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0
  %50 = bitcast %union.anon* %49 to %struct.anon.2*
  %SPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %50, i32 0, i32 0
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 15
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0
  %54 = bitcast %union.anon* %53 to %struct.anon.2*
  %BPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %54, i32 0, i32 0
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 17
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %58 = bitcast %union.anon* %57 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %58, i32 0, i32 0
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %60 = getelementptr inbounds %struct.GPR, %struct.GPR* %59, i32 0, i32 19
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %60, i32 0, i32 0
  %62 = bitcast %union.anon* %61 to %struct.anon.2*
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %62, i32 0, i32 0
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %64 = getelementptr inbounds %struct.GPR, %struct.GPR* %63, i32 0, i32 21
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %64, i32 0, i32 0
  %66 = bitcast %union.anon* %65 to %struct.anon.2*
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %66, i32 0, i32 0
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 23
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %70 = bitcast %union.anon* %69 to %struct.anon.2*
  %R11B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %70, i32 0, i32 0
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 25
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0
  %74 = bitcast %union.anon* %73 to %struct.anon.2*
  %R12B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %74, i32 0, i32 0
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 27
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %78 = bitcast %union.anon* %77 to %struct.anon.2*
  %R13B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %78, i32 0, i32 0
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 29
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0
  %82 = bitcast %union.anon* %81 to %struct.anon.2*
  %R14B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %82, i32 0, i32 0
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 31
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %86 = bitcast %union.anon* %85 to %struct.anon.2*
  %R15B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %86, i32 0, i32 0
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0
  %AX = bitcast %union.anon* %89 to i16*
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %BX = bitcast %union.anon* %92 to i16*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %CX = bitcast %union.anon* %95 to i16*
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 7
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %DX = bitcast %union.anon* %98 to i16*
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 9
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %SI = bitcast %union.anon* %101 to i16*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 11
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %DI = bitcast %union.anon* %104 to i16*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 13
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %SP = bitcast %union.anon* %107 to i16*
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 15
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %BP = bitcast %union.anon* %110 to i16*
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 17
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0
  %R8W = bitcast %union.anon* %113 to i16*
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 19
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %R9W = bitcast %union.anon* %116 to i16*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 21
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %R10W = bitcast %union.anon* %119 to i16*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 23
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %R11W = bitcast %union.anon* %122 to i16*
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 25
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %R12W = bitcast %union.anon* %125 to i16*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 27
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %R13W = bitcast %union.anon* %128 to i16*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 29
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %R14W = bitcast %union.anon* %131 to i16*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 31
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %R15W = bitcast %union.anon* %134 to i16*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %IP = bitcast %union.anon* %137 to i16*
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %EAX = bitcast %union.anon* %140 to i32*
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %EBX = bitcast %union.anon* %143 to i32*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %ECX = bitcast %union.anon* %146 to i32*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 7
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %EDX = bitcast %union.anon* %149 to i32*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 9
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %ESI = bitcast %union.anon* %152 to i32*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 11
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %EDI = bitcast %union.anon* %155 to i32*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 13
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %ESP = bitcast %union.anon* %158 to i32*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 15
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %EBP = bitcast %union.anon* %161 to i32*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 33
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %EIP = bitcast %union.anon* %164 to i32*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 17
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %R8D = bitcast %union.anon* %167 to i32*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 19
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %R9D = bitcast %union.anon* %170 to i32*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 21
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %R10D = bitcast %union.anon* %173 to i32*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 23
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %R11D = bitcast %union.anon* %176 to i32*
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 25
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %R12D = bitcast %union.anon* %179 to i32*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 27
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %R13D = bitcast %union.anon* %182 to i32*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 29
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %R14D = bitcast %union.anon* %185 to i32*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 31
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %R15D = bitcast %union.anon* %188 to i32*
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %RAX = bitcast %union.anon* %191 to i64*
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0
  %RBX = bitcast %union.anon* %194 to i64*
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 5
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0
  %RCX = bitcast %union.anon* %197 to i64*
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 7
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %RDX = bitcast %union.anon* %200 to i64*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 9
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %RSI = bitcast %union.anon* %203 to i64*
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 11
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %RDI = bitcast %union.anon* %206 to i64*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 13
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %RSP = bitcast %union.anon* %209 to i64*
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 15
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %RBP = bitcast %union.anon* %212 to i64*
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 17
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %R8 = bitcast %union.anon* %215 to i64*
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 19
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %R9 = bitcast %union.anon* %218 to i64*
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 21
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %R10 = bitcast %union.anon* %221 to i64*
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 23
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %R11 = bitcast %union.anon* %224 to i64*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 25
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %R12 = bitcast %union.anon* %227 to i64*
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 27
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %R13 = bitcast %union.anon* %230 to i64*
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 29
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %R14 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 31
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %R15 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 33
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RIP = bitcast %union.anon* %239 to i64*
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %241 = getelementptr inbounds %struct.Segments, %struct.Segments* %240, i32 0, i32 1
  %SS = bitcast %union.SegmentSelector* %241 to i16*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %243 = getelementptr inbounds %struct.Segments, %struct.Segments* %242, i32 0, i32 3
  %ES = bitcast %union.SegmentSelector* %243 to i16*
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %245 = getelementptr inbounds %struct.Segments, %struct.Segments* %244, i32 0, i32 5
  %GS = bitcast %union.SegmentSelector* %245 to i16*
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %247 = getelementptr inbounds %struct.Segments, %struct.Segments* %246, i32 0, i32 7
  %FS = bitcast %union.SegmentSelector* %247 to i16*
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %249 = getelementptr inbounds %struct.Segments, %struct.Segments* %248, i32 0, i32 9
  %DS = bitcast %union.SegmentSelector* %249 to i16*
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %251 = getelementptr inbounds %struct.Segments, %struct.Segments* %250, i32 0, i32 11
  %CS = bitcast %union.SegmentSelector* %251 to i16*
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %253 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %252, i32 0, i32 5
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %GS_BASE = bitcast %union.anon* %254 to i64*
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %256 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %255, i32 0, i32 7
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %FS_BASE = bitcast %union.anon* %257 to i64*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %259 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %258, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %259 to %"class.std::bitset"*
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %261 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %260, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %261 to %"class.std::bitset"*
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %263 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %262, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %263 to %"class.std::bitset"*
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %264, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %265 to %"class.std::bitset"*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %266, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %267 to %"class.std::bitset"*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %268, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %269 to %"class.std::bitset"*
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %271 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %270, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %271 to %"class.std::bitset"*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %272, i64 0, i64 7
  %YMM7 = bitcast %union.VectorReg* %273 to %"class.std::bitset"*
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %275 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %274, i64 0, i64 8
  %YMM8 = bitcast %union.VectorReg* %275 to %"class.std::bitset"*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %277 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %276, i64 0, i64 9
  %YMM9 = bitcast %union.VectorReg* %277 to %"class.std::bitset"*
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %279 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %278, i64 0, i64 10
  %YMM10 = bitcast %union.VectorReg* %279 to %"class.std::bitset"*
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %281 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %280, i64 0, i64 11
  %YMM11 = bitcast %union.VectorReg* %281 to %"class.std::bitset"*
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %283 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %282, i64 0, i64 12
  %YMM12 = bitcast %union.VectorReg* %283 to %"class.std::bitset"*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %285 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %284, i64 0, i64 13
  %YMM13 = bitcast %union.VectorReg* %285 to %"class.std::bitset"*
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %287 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %286, i64 0, i64 14
  %YMM14 = bitcast %union.VectorReg* %287 to %"class.std::bitset"*
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %289 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %288, i64 0, i64 15
  %YMM15 = bitcast %union.VectorReg* %289 to %"class.std::bitset"*
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %291 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %290, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %291 to %union.vec128_t*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %293 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %292, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %293 to %union.vec128_t*
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %295 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %294, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %295 to %union.vec128_t*
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %297 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %296, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %297 to %union.vec128_t*
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %299 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %298, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %299 to %union.vec128_t*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %301 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %300, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %301 to %union.vec128_t*
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %303 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 6
  %XMM6 = bitcast %union.VectorReg* %303 to %union.vec128_t*
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %305 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %304, i64 0, i64 7
  %XMM7 = bitcast %union.VectorReg* %305 to %union.vec128_t*
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %307 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %306, i64 0, i64 8
  %XMM8 = bitcast %union.VectorReg* %307 to %union.vec128_t*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %309 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %308, i64 0, i64 9
  %XMM9 = bitcast %union.VectorReg* %309 to %union.vec128_t*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %311 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %310, i64 0, i64 10
  %XMM10 = bitcast %union.VectorReg* %311 to %union.vec128_t*
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %313 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %312, i64 0, i64 11
  %XMM11 = bitcast %union.VectorReg* %313 to %union.vec128_t*
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %315 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %314, i64 0, i64 12
  %XMM12 = bitcast %union.VectorReg* %315 to %union.vec128_t*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %317 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %316, i64 0, i64 13
  %XMM13 = bitcast %union.VectorReg* %317 to %union.vec128_t*
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %319 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %318, i64 0, i64 14
  %XMM14 = bitcast %union.VectorReg* %319 to %union.vec128_t*
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %321 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %320, i64 0, i64 15
  %XMM15 = bitcast %union.VectorReg* %321 to %union.vec128_t*
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %323 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %322, i32 0, i32 0
  %324 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %323, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %324, i32 0, i32 1
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %326 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %325, i32 0, i32 0
  %327 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %326, i64 0, i64 1
  %ST1 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %327, i32 0, i32 1
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %329 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %328, i32 0, i32 0
  %330 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %329, i64 0, i64 2
  %ST2 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %330, i32 0, i32 1
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %332 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %331, i32 0, i32 0
  %333 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %332, i64 0, i64 3
  %ST3 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %333, i32 0, i32 1
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %335 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %334, i32 0, i32 0
  %336 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %335, i64 0, i64 4
  %ST4 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %336, i32 0, i32 1
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %338 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %337, i32 0, i32 0
  %339 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %338, i64 0, i64 5
  %ST5 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %339, i32 0, i32 1
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %341 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %340, i32 0, i32 0
  %342 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %341, i64 0, i64 6
  %ST6 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %342, i32 0, i32 1
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %344 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %343, i32 0, i32 0
  %345 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %344, i64 0, i64 7
  %ST7 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %345, i32 0, i32 1
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %347 = getelementptr inbounds %struct.MMX, %struct.MMX* %346, i32 0, i32 0
  %348 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %347, i64 0, i64 0
  %349 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %348, i32 0, i32 1
  %350 = bitcast %union.vec64_t* %349 to %struct.uint64v1_t*
  %351 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %350, i32 0, i32 0
  %MM0 = getelementptr inbounds [1 x i64], [1 x i64]* %351, i64 0, i64 0
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %353 = getelementptr inbounds %struct.MMX, %struct.MMX* %352, i32 0, i32 0
  %354 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %353, i64 0, i64 1
  %355 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %354, i32 0, i32 1
  %356 = bitcast %union.vec64_t* %355 to %struct.uint64v1_t*
  %357 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %356, i32 0, i32 0
  %MM1 = getelementptr inbounds [1 x i64], [1 x i64]* %357, i64 0, i64 0
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %359 = getelementptr inbounds %struct.MMX, %struct.MMX* %358, i32 0, i32 0
  %360 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %359, i64 0, i64 2
  %361 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %360, i32 0, i32 1
  %362 = bitcast %union.vec64_t* %361 to %struct.uint64v1_t*
  %363 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %362, i32 0, i32 0
  %MM2 = getelementptr inbounds [1 x i64], [1 x i64]* %363, i64 0, i64 0
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %365 = getelementptr inbounds %struct.MMX, %struct.MMX* %364, i32 0, i32 0
  %366 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %365, i64 0, i64 3
  %367 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %366, i32 0, i32 1
  %368 = bitcast %union.vec64_t* %367 to %struct.uint64v1_t*
  %369 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %368, i32 0, i32 0
  %MM3 = getelementptr inbounds [1 x i64], [1 x i64]* %369, i64 0, i64 0
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %371 = getelementptr inbounds %struct.MMX, %struct.MMX* %370, i32 0, i32 0
  %372 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %371, i64 0, i64 4
  %373 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %372, i32 0, i32 1
  %374 = bitcast %union.vec64_t* %373 to %struct.uint64v1_t*
  %375 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %374, i32 0, i32 0
  %MM4 = getelementptr inbounds [1 x i64], [1 x i64]* %375, i64 0, i64 0
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %377 = getelementptr inbounds %struct.MMX, %struct.MMX* %376, i32 0, i32 0
  %378 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %377, i64 0, i64 5
  %379 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %378, i32 0, i32 1
  %380 = bitcast %union.vec64_t* %379 to %struct.uint64v1_t*
  %381 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %380, i32 0, i32 0
  %MM5 = getelementptr inbounds [1 x i64], [1 x i64]* %381, i64 0, i64 0
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %383 = getelementptr inbounds %struct.MMX, %struct.MMX* %382, i32 0, i32 0
  %384 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %383, i64 0, i64 6
  %385 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %384, i32 0, i32 1
  %386 = bitcast %union.vec64_t* %385 to %struct.uint64v1_t*
  %387 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %386, i32 0, i32 0
  %MM6 = getelementptr inbounds [1 x i64], [1 x i64]* %387, i64 0, i64 0
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %389 = getelementptr inbounds %struct.MMX, %struct.MMX* %388, i32 0, i32 0
  %390 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %389, i64 0, i64 7
  %391 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %390, i32 0, i32 1
  %392 = bitcast %union.vec64_t* %391 to %struct.uint64v1_t*
  %393 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %392, i32 0, i32 0
  %MM7 = getelementptr inbounds [1 x i64], [1 x i64]* %393, i64 0, i64 0
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %AF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %394, i32 0, i32 5
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %CF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %395, i32 0, i32 1
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %DF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %396, i32 0, i32 11
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %OF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %397, i32 0, i32 13
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %PF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %398, i32 0, i32 3
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %SF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %399, i32 0, i32 9
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %ZF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %400, i32 0, i32 7
  store i64* @DR0, i64** %_DR0, align 8
  store i64* @DR1, i64** %_DR1, align 8
  store i64* @DR2, i64** %_DR2, align 8
  store i64* @DR3, i64** %_DR3, align 8
  store i64* @DR4, i64** %_DR4, align 8
  store i64* @DR5, i64** %_DR5, align 8
  store i64* @DR6, i64** %_DR6, align 8
  store i64* @DR7, i64** %_DR7, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR0, i32 0, i32 0), i64** %CR0, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR1, i32 0, i32 0), i64** %CR1, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR2, i32 0, i32 0), i64** %CR2, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR3, i32 0, i32 0), i64** %CR3, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR4, i32 0, i32 0), i64** %CR4, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR8, i32 0, i32 0), i64** %CR8, align 8
  %401 = bitcast %"class.std::bitset"* %YMM0 to double*
  %402 = load double, double* %401
  %403 = load i64, i64* %RSP
  %404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %405 = inttoptr i64 %403 to i64*
  %406 = load i64, i64* %405
  store i64 %406, i64* %PC
  %407 = add i64 %403, 8
  store i64 %407, i64* %RSP
  %408 = call double @sqrt(double %402)
  store %"class.std::bitset" zeroinitializer, %"class.std::bitset"* %YMM0
  %409 = bitcast %"class.std::bitset"* %YMM0 to double*
  store double %408, double* %409
  %410 = load %struct.Memory*, %struct.Memory** %MEMORY
  ret %struct.Memory* %410
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_601178_printf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400c10___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400c10;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400c10___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400c10___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400ba0___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400ba0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400ba0___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400ba0___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400ad0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400ad0_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_601180___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400430;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400430__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @energy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4007f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
  ret void
}

define internal %struct.Memory* @energy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4007f0_energy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @offset_momentum() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400980;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
  ret void
}

define internal %struct.Memory* @offset_momentum_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400980_offset_momentum(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400c14;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @10, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400c14__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @advance() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400570;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @11, void ()** @2)
  ret void
}

define internal %struct.Memory* @advance_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400570_advance(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_400c10___libc_csu_fini()
  ret void
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
  call void @callback_sub_400ba0___libc_csu_init()
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
attributes #16 = { alwaysinline inlinehint "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nounwind }

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
!2454 = !{!2455, !2457}
!2455 = distinct !{!2455, !2456, !"ext_601170_sqrt: argument 0"}
!2456 = distinct !{!2456, !"ext_601170_sqrt"}
!2457 = distinct !{!2457, !2456, !"ext_601170_sqrt: argument 1"}
!2458 = !{!2455}
!2459 = !{!2457}
!2460 = !{!2445, !2445, i64 0}
!2461 = !{!2462, !2464}
!2462 = distinct !{!2462, !2463, !"ext_601170_sqrt: argument 0"}
!2463 = distinct !{!2463, !"ext_601170_sqrt"}
!2464 = distinct !{!2464, !2463, !"ext_601170_sqrt: argument 1"}
!2465 = !{!2462}
!2466 = !{!2464}