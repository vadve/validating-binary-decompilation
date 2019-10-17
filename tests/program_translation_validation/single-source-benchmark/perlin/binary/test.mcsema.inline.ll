; ModuleID = 'binary/test.mcsema.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400438__init_type = type <{ [23 x i8] }>
%seg_400450__plt_type = type <{ [48 x i8] }>
%seg_400480__text_type = type <{ [2418 x i8] }>
%seg_400df4__fini_type = type <{ [9 x i8] }>
%seg_400e00__rodata_type = type <{ [112 x i8], [4 x i8] }>
%seg_400e74__eh_frame_hdr_type = type <{ [100 x i8] }>
%seg_400ed8__eh_frame_type = type <{ [392 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%seg_602000__got_plt_type = type <{ [24 x i8], i64, i64 }>
%seg_602030__data_type = type <{ [16 x i8], [1024 x i8] }>
%__bss_start_type = type <{ [16 x i8], [2048 x i8] }>
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
@seg_400438__init = internal constant %seg_400438__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05\B5\1B \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400450__plt = internal constant %seg_400450__plt_type <{ [48 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%\B2\1B \00\00\00\00\00\00\00\00\00\00\00\FF%\AA\1B \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_400480__text = internal constant %seg_400480__text_type <{ [2418 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\F0\0D@\00H\C7\C1\80\0D@\00H\C7\C7p\05@\00\FF\15F\1B \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8@$`\00H=@$`\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BF@$`\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BE@$`\00UH\81\EE@$`\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF@$`\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\09\1F \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\F7\1E \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC0\C7E\FC\00\00\00\00\E8\FC\00\00\00\F2\0F\10\05|\08\00\00\0FW\C9\F2\0F\11M\D8\F2\0F\11E\F0\89E\D4\F2\0F\10\05l\08\00\00f\0F.E\F0\0F\86\AD\00\00\00\F2\0F\10\05a\08\00\00\F2\0F\11E\E8\F2\0F\10\05\5C\08\00\00f\0F.E\E8\0F\86q\00\00\00\F2\0F\10\05Y\08\00\00\F2\0F\11E\E0\F2\0F\10\05T\08\00\00f\0F.E\E8\0F\865\00\00\00\F2\0F\10E\F0\F2\0F\10M\E8\F2\0F\10U\E0\E8\DD\00\00\00\F2\0FXE\D8\F2\0F\11E\D8\F2\0F\10\053\08\00\00\F2\0FXE\E8\F2\0F\11E\E8\E9\B8\FF\FF\FF\E9\00\00\00\00\F2\0F\10\05\0F\08\00\00\F2\0FXE\E8\F2\0F\11E\E8\E9|\FF\FF\FF\E9\00\00\00\00\F2\0F\10\05\DB\07\00\00\F2\0FXE\F0\F2\0F\11E\F0\E9@\FF\FF\FFH\BFp\0E@\00\00\00\00\00\F2\0F\10E\D8\B0\01\E8\EE\FD\FF\FF1\C9\89E\D0\89\C8H\83\C40]\C3\90UH\89\E5\C7E\F8\00\00\00\00\C7E\F8\00\00\00\00\81}\F8\00\01\00\00\0F\8D7\00\00\00HcE\F8\8B\0C\85@ `\00HcE\F8\89\0C\85P$`\00\8BU\F8\81\C2\00\01\00\00Hc\C2\89\0C\85P$`\00\8BE\F8\83\C0\01\89E\F8\E9\BC\FF\FF\FF\8BE\FC]\C3\0F\1FD\00\00UH\89\E5H\81\EC\10\01\00\00\F2\0F\11E\F8\F2\0F\11M\F0\F2\0F\11U\E8\F2\0F\10E\F8\E8l\FD\FF\FF\F2\0F,\C0%\FF\00\00\00\89E\E4\F2\0F\10E\F0\E8V\FD\FF\FF\F2\0F,\C0%\FF\00\00\00\89E\E0\F2\0F\10E\E8\E8@\FD\FF\FF\F2\0F,\C0%\FF\00\00\00\89E\DC\F2\0F\10E\F8\E8*\FD\FF\FF\F2\0F\10M\F8\F2\0F\5C\C8\F2\0F\11M\F8\F2\0F\10E\F0\E8\12\FD\FF\FF\F2\0F\10M\F0\F2\0F\5C\C8\F2\0F\11M\F0\F2\0F\10E\E8\E8\FA\FC\FF\FF\F2\0F\10M\E8\F2\0F\5C\C8\F2\0F\11M\E8\F2\0F\10E\F8\E8\12\04\00\00\F2\0F\11E\D0\F2\0F\10E\F0\E8\03\04\00\00\F2\0F\11E\C8\F2\0F\10E\E8\E8\F4\03\00\00\F2\0F\11E\C0HcM\E4\8B\04\8DP$`\00\03E\E0\89E\BCHcM\BC\8B\04\8DP$`\00\03E\DC\89E\B8\8BE\BC\83\C0\01Hc\C8\8B\04\8DP$`\00\03E\DC\89E\B4\8BE\E4\83\C0\01Hc\C8\8B\04\8DP$`\00\03E\E0\89E\B0HcM\B0\8B\04\8DP$`\00\03E\DC\89E\AC\8BE\B0\83\C0\01Hc\C8\8B\04\8DP$`\00\03E\DC\89E\A8\F2\0F\10E\C0\F2\0F\10M\C8\F2\0F\10U\D0HcM\B8\8B<\8DP$`\00\F2\0F\10]\F8\F2\0F\10e\F0\F2\0F\10m\E8\F2\0F\11E\A0\0F(\C3\F2\0F\11M\98\0F(\CC\F2\0F\11U\90\0F(\D5\E8\84\03\00\00\F2\0F\10\0D\DC\05\00\00HcM\AC\8B<\8DP$`\00\F2\0F\10U\F8\F2\0F\5C\D1\F2\0F\10M\F0\F2\0F\10]\E8\F2\0F\11E\88\0F(\C2\0F(\D3\E8N\03\00\00\F2\0F\10M\90\F2\0F\11E\80\0F(\C1\F2\0F\10M\88\F2\0F\10U\80\E8\82\04\00\00\F2\0F\10\0D\8A\05\00\00\F2\0F\10U\D0HcM\B4\8B<\8DP$`\00\F2\0F\10]\F8\F2\0F\10e\F0\F2\0F\5C\E1\F2\0F\10M\E8\F2\0F\11\85x\FF\FF\FF\0F(\C3\F2\0F\11\8Dp\FF\FF\FF\0F(\CC\F2\0F\10\9Dp\FF\FF\FF\F2\0F\11\95h\FF\FF\FF\0F(\D3\E8\D9\02\00\00\F2\0F\10\0D1\05\00\00HcM\A8\8B<\8DP$`\00\F2\0F\10U\F8\F2\0F\5C\D1\F2\0F\10]\F0\F2\0F\5C\D9\F2\0F\10M\E8\F2\0F\11\85`\FF\FF\FF\0F(\C2\F2\0F\11\8DX\FF\FF\FF\0F(\CB\F2\0F\10\95X\FF\FF\FF\E8\8C\02\00\00\F2\0F\10\8Dh\FF\FF\FF\F2\0F\11\85P\FF\FF\FF\0F(\C1\F2\0F\10\8D`\FF\FF\FF\F2\0F\10\95P\FF\FF\FF\E8\B4\03\00\00\F2\0F\10M\98\F2\0F\11\85H\FF\FF\FF\0F(\C1\F2\0F\10\8Dx\FF\FF\FF\F2\0F\10\95H\FF\FF\FF\E8\8F\03\00\00\F2\0F\10\0D\97\04\00\00\F2\0F\10U\C8\F2\0F\10]\D0\8BE\B8\83\C0\01Hc\C8\8B<\8DP$`\00\F2\0F\10e\F8\F2\0F\10m\F0\F2\0F\10u\E8\F2\0F\5C\F1\F2\0F\11\85@\FF\FF\FF\0F(\C4\0F(\CD\F2\0F\11\958\FF\FF\FF\0F(\D6\F2\0F\11\9D0\FF\FF\FF\E8\E4\01\00\00\F2\0F\10\0D<\04\00\00\8BE\AC\83\C0\01Hc\C8\8B<\8DP$`\00\F2\0F\10U\F8\F2\0F\5C\D1\F2\0F\10]\F0\F2\0F\10e\E8\F2\0F\5C\E1\F2\0F\11\85(\FF\FF\FF\0F(\C2\0F(\CB\0F(\D4\E8\9F\01\00\00\F2\0F\10\8D0\FF\FF\FF\F2\0F\11\85 \FF\FF\FF\0F(\C1\F2\0F\10\8D(\FF\FF\FF\F2\0F\10\95 \FF\FF\FF\E8\C7\02\00\00\F2\0F\10\0D\CF\03\00\00\F2\0F\10U\D0\8BE\B4\83\C0\01Hc\C8\8B<\8DP$`\00\F2\0F\10]\F8\F2\0F\10e\F0\F2\0F\5C\E1\F2\0F\10m\E8\F2\0F\5C\E9\F2\0F\11\85\18\FF\FF\FF\0F(\C3\0F(\CC\F2\0F\11\95\10\FF\FF\FF\0F(\D5\E8%\01\00\00\F2\0F\10\0D}\03\00\00\8BE\A8\83\C0\01Hc\C8\8B<\8DP$`\00\F2\0F\10U\F8\F2\0F\5C\D1\F2\0F\10]\F0\F2\0F\5C\D9\F2\0F\10e\E8\F2\0F\5C\E1\F2\0F\11\85\08\FF\FF\FF\0F(\C2\0F(\CB\0F(\D4\E8\DC\00\00\00\F2\0F\10\8D\10\FF\FF\FF\F2\0F\11\85\00\FF\FF\FF\0F(\C1\F2\0F\10\8D\08\FF\FF\FF\F2\0F\10\95\00\FF\FF\FF\E8\04\02\00\00\F2\0F\10\8D8\FF\FF\FF\F2\0F\11\85\F8\FE\FF\FF\0F(\C1\F2\0F\10\8D\18\FF\FF\FF\F2\0F\10\95\F8\FE\FF\FF\E8\DC\01\00\00\F2\0F\10M\A0\F2\0F\11\85\F0\FE\FF\FF\0F(\C1\F2\0F\10\8D@\FF\FF\FF\F2\0F\10\95\F0\FE\FF\FF\E8\B7\01\00\00H\81\C4\10\01\00\00]\C3fffff.\0F\1F\84\00\00\00\00\00UH\89\E5\F2\0F\10\0D\AC\02\00\00\F2\0F\10\15\AC\02\00\00\F2\0F\10\1D\AC\02\00\00\F2\0F\11E\F8\F2\0F\10E\F8\F2\0FYE\F8\F2\0FYE\F8\F2\0F\10e\F8\F2\0FY]\F8\F2\0F\5C\DA\F2\0FY\E3\F2\0FX\E1\F2\0FY\C4]\C3\0F\1F@\00UH\89\E5\89}\FC\F2\0F\11E\F0\F2\0F\11M\E8\F2\0F\11U\E0\8B}\FC\83\E7\0F\89}\DC\83}\DC\08\0F\8D\0F\00\00\00\F2\0F\10E\F0\F2\0F\11E\C0\E9\0A\00\00\00\F2\0F\10E\E8\F2\0F\11E\C0\F2\0F\10E\C0\F2\0F\11E\D0\83}\DC\04\0F\8D\0F\00\00\00\F2\0F\10E\E8\F2\0F\11E\B8\E97\00\00\00\83}\DC\0C\0F\84\0A\00\00\00\83}\DC\0E\0F\85\0F\00\00\00\F2\0F\10E\F0\F2\0F\11E\B0\E9\0A\00\00\00\F2\0F\10E\E0\F2\0F\11E\B0\F2\0F\10E\B0\F2\0F\11E\B8\F2\0F\10E\B8\F2\0F\11E\C8\8BE\DC\83\E0\01\83\F8\00\0F\85\0F\00\00\00\F2\0F\10E\D0\F2\0F\11E\A8\E9!\00\00\00H\B8\00\00\00\00\00\00\00\80\F2\0F\10E\D0fH\0F~\C1H1\C1fH\0Fn\C1\F2\0F\11E\A8\F2\0F\10E\A8\8BE\DC\83\E0\02\83\F8\00\F2\0F\11E\A0\0F\85\0F\00\00\00\F2\0F\10E\C8\F2\0F\11E\98\E9!\00\00\00H\B8\00\00\00\00\00\00\00\80\F2\0F\10E\C8fH\0F~\C1H1\C1fH\0Fn\C1\F2\0F\11E\98\F2\0F\10E\98\F2\0F\10M\A0\F2\0FX\C8\0F(\C1]\C3ffffff.\0F\1F\84\00\00\00\00\00UH\89\E5\F2\0F\11E\F8\F2\0F\11M\F0\F2\0F\11U\E8\F2\0F\10E\F0\F2\0F\10M\F8\F2\0F\10U\E8\F2\0F\5CU\F0\F2\0FY\CA\F2\0FX\C1]\C3f.\0F\1F\84\00\00\00\00\00\0F\1FD\00\00AWAVI\89\D7AUATL\8D%^\10 \00UH\8D-^\10 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\87\F6\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_400df4__fini = internal constant %seg_400df4__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400e00__rodata = internal constant %seg_400e00__rodata_type <{ [112 x i8] c"\01\00\02\00\00\00\00\00\5C\8F\C2\F5H,\C6\C0\AEG\E1zd\02\D7@\E5\D0\22\DB\F9\A1u\C0\0E-\B2\9D\EF\07_@\04V\0E-\B2\9D\BF?\ECQ\B8\1E\85\87c\C0y\E9&1\08<7@\ECQ\B8\1E\85\EB\F6?\9A\99\99\99\99\99\03@\00\00\00\00\00\00\F0?\00\00\00\00\00\00$@\00\00\00\00\00\00.@\00\00\00\00\00\00\18@", [4 x i8] c"%e\0A\00" }>
@seg_400e74__eh_frame_hdr = internal constant %seg_400e74__eh_frame_hdr_type <{ [100 x i8] c"\01\1B\03;`\00\00\00\0B\00\00\00\DC\F5\FF\FF\BC\00\00\00\0C\F6\FF\FF|\00\00\00<\F6\FF\FF\A8\00\00\00\FC\F6\FF\FF\E4\00\00\00\0C\F8\FF\FF\00\01\00\00l\F8\FF\FF\1C\01\00\00,\FD\FF\FF8\01\00\00|\FD\FF\FFT\01\00\00\CC\FE\FF\FFp\01\00\00\0C\FF\FF\FF\8C\01\00\00|\FF\FF\FF\D4\01\00\00" }>
@seg_400ed8__eh_frame = internal constant %seg_400ed8__eh_frame_type <{ [392 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00\88\F5\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00\8C\F5\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\00\18\F5\FF\FF0\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00\10\F6\FF\FF\0F\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00t\00\00\00\04\F7\FF\FF[\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\90\00\00\00H\F7\FF\FF\B2\04\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\AC\00\00\00\EC\FB\FF\FFL\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\C8\00\00\00 \FC\FF\FFA\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\E4\00\00\00T\FD\FF\FF1\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00D\00\00\00\00\01\00\00x\FD\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00H\01\00\00\A0\FD\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400560_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400530___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602000__got_plt = internal global %seg_602000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 ptrtoint (i64 (i64)* @floor to i64) }>
@seg_602030__data = internal global %seg_602030__data_type <{ [16 x i8] zeroinitializer, [1024 x i8] c"\97\00\00\00\A0\00\00\00\89\00\00\00[\00\00\00Z\00\00\00\0F\00\00\00\83\00\00\00\0D\00\00\00\C9\00\00\00_\00\00\00`\00\00\005\00\00\00\C2\00\00\00\E9\00\00\00\07\00\00\00\E1\00\00\00\8C\00\00\00$\00\00\00g\00\00\00\1E\00\00\00E\00\00\00\8E\00\00\00\08\00\00\00c\00\00\00%\00\00\00\F0\00\00\00\15\00\00\00\0A\00\00\00\17\00\00\00\BE\00\00\00\06\00\00\00\94\00\00\00\F7\00\00\00x\00\00\00\EA\00\00\00K\00\00\00\00\00\00\00\1A\00\00\00\C5\00\00\00>\00\00\00^\00\00\00\FC\00\00\00\DB\00\00\00\CB\00\00\00u\00\00\00#\00\00\00\0B\00\00\00 \00\00\009\00\00\00\B1\00\00\00!\00\00\00X\00\00\00\ED\00\00\00\95\00\00\008\00\00\00W\00\00\00\AE\00\00\00\14\00\00\00}\00\00\00\88\00\00\00\AB\00\00\00\A8\00\00\00D\00\00\00\AF\00\00\00J\00\00\00\A5\00\00\00G\00\00\00\86\00\00\00\8B\00\00\000\00\00\00\1B\00\00\00\A6\00\00\00M\00\00\00\92\00\00\00\9E\00\00\00\E7\00\00\00S\00\00\00o\00\00\00\E5\00\00\00z\00\00\00<\00\00\00\D3\00\00\00\85\00\00\00\E6\00\00\00\DC\00\00\00i\00\00\00\5C\00\00\00)\00\00\007\00\00\00.\00\00\00\F5\00\00\00(\00\00\00\F4\00\00\00f\00\00\00\8F\00\00\006\00\00\00A\00\00\00\19\00\00\00?\00\00\00\A1\00\00\00\01\00\00\00\D8\00\00\00P\00\00\00I\00\00\00\D1\00\00\00L\00\00\00\84\00\00\00\BB\00\00\00\D0\00\00\00Y\00\00\00\12\00\00\00\A9\00\00\00\C8\00\00\00\C4\00\00\00\87\00\00\00\82\00\00\00t\00\00\00\BC\00\00\00\9F\00\00\00V\00\00\00\A4\00\00\00d\00\00\00m\00\00\00\C6\00\00\00\AD\00\00\00\BA\00\00\00\03\00\00\00@\00\00\004\00\00\00\D9\00\00\00\E2\00\00\00\FA\00\00\00|\00\00\00{\00\00\00\05\00\00\00\CA\00\00\00&\00\00\00\93\00\00\00v\00\00\00~\00\00\00\FF\00\00\00R\00\00\00U\00\00\00\D4\00\00\00\CF\00\00\00\CE\00\00\00;\00\00\00\E3\00\00\00/\00\00\00\10\00\00\00:\00\00\00\11\00\00\00\B6\00\00\00\BD\00\00\00\1C\00\00\00*\00\00\00\DF\00\00\00\B7\00\00\00\AA\00\00\00\D5\00\00\00w\00\00\00\F8\00\00\00\98\00\00\00\02\00\00\00,\00\00\00\9A\00\00\00\A3\00\00\00F\00\00\00\DD\00\00\00\99\00\00\00e\00\00\00\9B\00\00\00\A7\00\00\00+\00\00\00\AC\00\00\00\09\00\00\00\81\00\00\00\16\00\00\00'\00\00\00\FD\00\00\00\13\00\00\00b\00\00\00l\00\00\00n\00\00\00O\00\00\00q\00\00\00\E0\00\00\00\E8\00\00\00\B2\00\00\00\B9\00\00\00p\00\00\00h\00\00\00\DA\00\00\00\F6\00\00\00a\00\00\00\E4\00\00\00\FB\00\00\00\22\00\00\00\F2\00\00\00\C1\00\00\00\EE\00\00\00\D2\00\00\00\90\00\00\00\0C\00\00\00\BF\00\00\00\B3\00\00\00\A2\00\00\00\F1\00\00\00Q\00\00\003\00\00\00\91\00\00\00\EB\00\00\00\F9\00\00\00\0E\00\00\00\EF\00\00\00k\00\00\001\00\00\00\C0\00\00\00\D6\00\00\00\1F\00\00\00\B5\00\00\00\C7\00\00\00j\00\00\00\9D\00\00\00\B8\00\00\00T\00\00\00\CC\00\00\00\B0\00\00\00s\00\00\00y\00\00\002\00\00\00-\00\00\00\7F\00\00\00\04\00\00\00\96\00\00\00\FE\00\00\00\8A\00\00\00\EC\00\00\00\CD\00\00\00]\00\00\00\DE\00\00\00r\00\00\00C\00\00\00\1D\00\00\00\18\00\00\00H\00\00\00\F3\00\00\00\8D\00\00\00\80\00\00\00\C3\00\00\00N\00\00\00B\00\00\00\D7\00\00\00=\00\00\00\9C\00\00\00\B4\00\00\00" }>
@__bss_start = global %__bss_start_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400560_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400530___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400df0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400d80___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
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
declare extern_weak x86_64_sysvcc i64 @floor(i64) #13

; Function Attrs: noinline
define %struct.Memory* @sub_400570_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400570:
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
  %23 = getelementptr inbounds %struct.GPR, %struct.GPR* %22, i32 0, i32 11
  %24 = getelementptr inbounds %struct.Reg, %struct.Reg* %23, i32 0, i32 0
  %RDI = bitcast %union.anon* %24 to i64*
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %26 = getelementptr inbounds %struct.GPR, %struct.GPR* %25, i32 0, i32 13
  %27 = getelementptr inbounds %struct.Reg, %struct.Reg* %26, i32 0, i32 0
  %RSP = bitcast %union.anon* %27 to i64*
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %29 = getelementptr inbounds %struct.GPR, %struct.GPR* %28, i32 0, i32 15
  %30 = getelementptr inbounds %struct.Reg, %struct.Reg* %29, i32 0, i32 0
  %RBP = bitcast %union.anon* %30 to i64*
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %32 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %31, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %32 to %"class.std::bitset"*
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %34 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %33, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %34 to %"class.std::bitset"*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %36 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %35, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %36 to %"class.std::bitset"*
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
  %85 = load i64, i64* %PC
  %86 = add i64 %85, 7
  store i64 %86, i64* %PC
  %87 = inttoptr i64 %84 to i32*
  store i32 0, i32* %87
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 257
  %90 = load i64, i64* %PC
  %91 = add i64 %90, 5
  %92 = load i64, i64* %PC
  %93 = add i64 %92, 5
  store i64 %93, i64* %PC
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %95 = load i64, i64* %94, align 8, !tbaa !2428
  %96 = add i64 %95, -8
  %97 = inttoptr i64 %96 to i64*
  store i64 %91, i64* %97
  store i64 %96, i64* %94, align 8, !tbaa !2428
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %89, i64* %98, align 8, !tbaa !2428
  %99 = load i64, i64* %PC
  %100 = call %struct.Memory* @sub_400680_init(%struct.State* %0, i64 %99, %struct.Memory* %2)
  %101 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %102 = load i64, i64* %PC
  %103 = add i64 %102, 8
  store i64 %103, i64* %PC
  %104 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400e00__rodata_type* @seg_400e00__rodata to i64), i64 8) to double*)
  %105 = bitcast i8* %101 to double*
  store double %104, double* %105, align 1, !tbaa !2451
  %106 = getelementptr inbounds i8, i8* %101, i64 8
  %107 = bitcast i8* %106 to double*
  store double 0.000000e+00, double* %107, align 1, !tbaa !2451
  %108 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %109 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %110 = bitcast %union.vec128_t* %XMM1 to i8*
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 3
  store i64 %112, i64* %PC
  %113 = bitcast i8* %109 to i64*
  %114 = load i64, i64* %113, align 1
  %115 = getelementptr inbounds i8, i8* %109, i64 8
  %116 = bitcast i8* %115 to i64*
  %117 = load i64, i64* %116, align 1
  %118 = bitcast i8* %110 to i64*
  %119 = load i64, i64* %118, align 1
  %120 = getelementptr inbounds i8, i8* %110, i64 8
  %121 = bitcast i8* %120 to i64*
  %122 = load i64, i64* %121, align 1
  %123 = xor i64 %119, %114
  %124 = xor i64 %122, %117
  %125 = trunc i64 %123 to i32
  %126 = lshr i64 %123, 32
  %127 = trunc i64 %126 to i32
  %128 = bitcast i8* %108 to i32*
  store i32 %125, i32* %128, align 1, !tbaa !2453
  %129 = getelementptr inbounds i8, i8* %108, i64 4
  %130 = bitcast i8* %129 to i32*
  store i32 %127, i32* %130, align 1, !tbaa !2453
  %131 = trunc i64 %124 to i32
  %132 = getelementptr inbounds i8, i8* %108, i64 8
  %133 = bitcast i8* %132 to i32*
  store i32 %131, i32* %133, align 1, !tbaa !2453
  %134 = lshr i64 %124, 32
  %135 = trunc i64 %134 to i32
  %136 = getelementptr inbounds i8, i8* %108, i64 12
  %137 = bitcast i8* %136 to i32*
  store i32 %135, i32* %137, align 1, !tbaa !2453
  %138 = load i64, i64* %RBP
  %139 = sub i64 %138, 40
  %140 = bitcast %union.vec128_t* %XMM1 to i8*
  %141 = load i64, i64* %PC
  %142 = add i64 %141, 5
  store i64 %142, i64* %PC
  %143 = bitcast i8* %140 to double*
  %144 = load double, double* %143, align 1
  %145 = inttoptr i64 %139 to double*
  store double %144, double* %145
  %146 = load i64, i64* %RBP
  %147 = sub i64 %146, 16
  %148 = bitcast %union.vec128_t* %XMM0 to i8*
  %149 = load i64, i64* %PC
  %150 = add i64 %149, 5
  store i64 %150, i64* %PC
  %151 = bitcast i8* %148 to double*
  %152 = load double, double* %151, align 1
  %153 = inttoptr i64 %147 to double*
  store double %152, double* %153
  %154 = load i64, i64* %RBP
  %155 = sub i64 %154, 44
  %156 = load i32, i32* %EAX
  %157 = zext i32 %156 to i64
  %158 = load i64, i64* %PC
  %159 = add i64 %158, 3
  store i64 %159, i64* %PC
  %160 = inttoptr i64 %155 to i32*
  store i32 %156, i32* %160
  br label %block_40059c

block_4005ef:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2
  %161 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %162 = load i64, i64* %RBP
  %163 = sub i64 %162, 16
  %164 = load i64, i64* %PC
  %165 = add i64 %164, 5
  store i64 %165, i64* %PC
  %166 = inttoptr i64 %163 to double*
  %167 = load double, double* %166
  %168 = bitcast i8* %161 to double*
  store double %167, double* %168, align 1, !tbaa !2451
  %169 = getelementptr inbounds i8, i8* %161, i64 8
  %170 = bitcast i8* %169 to double*
  store double 0.000000e+00, double* %170, align 1, !tbaa !2451
  %171 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %172 = load i64, i64* %RBP
  %173 = sub i64 %172, 24
  %174 = load i64, i64* %PC
  %175 = add i64 %174, 5
  store i64 %175, i64* %PC
  %176 = inttoptr i64 %173 to double*
  %177 = load double, double* %176
  %178 = bitcast i8* %171 to double*
  store double %177, double* %178, align 1, !tbaa !2451
  %179 = getelementptr inbounds i8, i8* %171, i64 8
  %180 = bitcast i8* %179 to double*
  store double 0.000000e+00, double* %180, align 1, !tbaa !2451
  %181 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %182 = load i64, i64* %RBP
  %183 = sub i64 %182, 32
  %184 = load i64, i64* %PC
  %185 = add i64 %184, 5
  store i64 %185, i64* %PC
  %186 = inttoptr i64 %183 to double*
  %187 = load double, double* %186
  %188 = bitcast i8* %181 to double*
  store double %187, double* %188, align 1, !tbaa !2451
  %189 = getelementptr inbounds i8, i8* %181, i64 8
  %190 = bitcast i8* %189 to double*
  store double 0.000000e+00, double* %190, align 1, !tbaa !2451
  %191 = load i64, i64* %PC
  %192 = add i64 %191, 226
  %193 = load i64, i64* %PC
  %194 = add i64 %193, 5
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 5
  store i64 %196, i64* %PC
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %198 = load i64, i64* %197, align 8, !tbaa !2428
  %199 = add i64 %198, -8
  %200 = inttoptr i64 %199 to i64*
  store i64 %194, i64* %200
  store i64 %199, i64* %197, align 8, !tbaa !2428
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %192, i64* %201, align 8, !tbaa !2428
  %202 = load i64, i64* %PC
  %203 = call %struct.Memory* @sub_4006e0_noise(%struct.State* %0, i64 %202, %struct.Memory* %327)
  %204 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %205 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %206 = load i64, i64* %RBP
  %207 = sub i64 %206, 40
  %208 = load i64, i64* %PC
  %209 = add i64 %208, 5
  store i64 %209, i64* %PC
  %210 = bitcast i8* %205 to double*
  %211 = load double, double* %210, align 1
  %212 = getelementptr inbounds i8, i8* %205, i64 8
  %213 = bitcast i8* %212 to i64*
  %214 = load i64, i64* %213, align 1
  %215 = inttoptr i64 %207 to double*
  %216 = load double, double* %215
  %217 = fadd double %211, %216
  %218 = bitcast i8* %204 to double*
  store double %217, double* %218, align 1, !tbaa !2451
  %219 = getelementptr inbounds i8, i8* %204, i64 8
  %220 = bitcast i8* %219 to i64*
  store i64 %214, i64* %220, align 1, !tbaa !2451
  %221 = load i64, i64* %RBP
  %222 = sub i64 %221, 40
  %223 = bitcast %union.vec128_t* %XMM0 to i8*
  %224 = load i64, i64* %PC
  %225 = add i64 %224, 5
  store i64 %225, i64* %PC
  %226 = bitcast i8* %223 to double*
  %227 = load double, double* %226, align 1
  %228 = inttoptr i64 %222 to double*
  store double %227, double* %228
  %229 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %230 = load i64, i64* %PC
  %231 = add i64 %230, 8
  store i64 %231, i64* %PC
  %232 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400e00__rodata_type* @seg_400e00__rodata to i64), i64 72) to double*)
  %233 = bitcast i8* %229 to double*
  store double %232, double* %233, align 1, !tbaa !2451
  %234 = getelementptr inbounds i8, i8* %229, i64 8
  %235 = bitcast i8* %234 to double*
  store double 0.000000e+00, double* %235, align 1, !tbaa !2451
  %236 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %237 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %238 = load i64, i64* %RBP
  %239 = sub i64 %238, 24
  %240 = load i64, i64* %PC
  %241 = add i64 %240, 5
  store i64 %241, i64* %PC
  %242 = bitcast i8* %237 to double*
  %243 = load double, double* %242, align 1
  %244 = getelementptr inbounds i8, i8* %237, i64 8
  %245 = bitcast i8* %244 to i64*
  %246 = load i64, i64* %245, align 1
  %247 = inttoptr i64 %239 to double*
  %248 = load double, double* %247
  %249 = fadd double %243, %248
  %250 = bitcast i8* %236 to double*
  store double %249, double* %250, align 1, !tbaa !2451
  %251 = getelementptr inbounds i8, i8* %236, i64 8
  %252 = bitcast i8* %251 to i64*
  store i64 %246, i64* %252, align 1, !tbaa !2451
  %253 = load i64, i64* %RBP
  %254 = sub i64 %253, 24
  %255 = bitcast %union.vec128_t* %XMM0 to i8*
  %256 = load i64, i64* %PC
  %257 = add i64 %256, 5
  store i64 %257, i64* %PC
  %258 = bitcast i8* %255 to double*
  %259 = load double, double* %258, align 1
  %260 = inttoptr i64 %254 to double*
  store double %259, double* %260
  %261 = load i64, i64* %PC
  %262 = sub i64 %261, 67
  %263 = load i64, i64* %PC
  %264 = add i64 %263, 5
  store i64 %264, i64* %PC
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %262, i64* %265, align 8, !tbaa !2428
  br label %block_4005dc

block_4005cf:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %266 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %267 = load i64, i64* %PC
  %268 = add i64 %267, 8
  store i64 %268, i64* %PC
  %269 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400e00__rodata_type* @seg_400e00__rodata to i64), i64 48) to double*)
  %270 = bitcast i8* %266 to double*
  store double %269, double* %270, align 1, !tbaa !2451
  %271 = getelementptr inbounds i8, i8* %266, i64 8
  %272 = bitcast i8* %271 to double*
  store double 0.000000e+00, double* %272, align 1, !tbaa !2451
  %273 = load i64, i64* %RBP
  %274 = sub i64 %273, 32
  %275 = bitcast %union.vec128_t* %XMM0 to i8*
  %276 = load i64, i64* %PC
  %277 = add i64 %276, 5
  store i64 %277, i64* %PC
  %278 = bitcast i8* %275 to double*
  %279 = load double, double* %278, align 1
  %280 = inttoptr i64 %274 to double*
  store double %279, double* %280
  br label %block_4005dc

block_4005dc:                                     ; preds = %block_4005cf, %block_4005ef
  %MEMORY.0 = phi %struct.Memory* [ %581, %block_4005cf ], [ %203, %block_4005ef ]
  %281 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %282 = load i64, i64* %PC
  %283 = add i64 %282, 8
  store i64 %283, i64* %PC
  %284 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400e00__rodata_type* @seg_400e00__rodata to i64), i64 56) to double*)
  %285 = bitcast i8* %281 to double*
  store double %284, double* %285, align 1, !tbaa !2451
  %286 = getelementptr inbounds i8, i8* %281, i64 8
  %287 = bitcast i8* %286 to double*
  store double 0.000000e+00, double* %287, align 1, !tbaa !2451
  %288 = bitcast %union.vec128_t* %XMM0 to i8*
  %289 = load i64, i64* %RBP
  %290 = sub i64 %289, 24
  %291 = load i64, i64* %PC
  %292 = add i64 %291, 5
  store i64 %292, i64* %PC
  %293 = bitcast i8* %288 to double*
  %294 = load double, double* %293, align 1
  %295 = inttoptr i64 %290 to double*
  %296 = load double, double* %295
  %297 = fcmp uno double %294, %296
  br i1 %297, label %298, label %310

; <label>:298:                                    ; preds = %block_4005dc
  %299 = fadd double %294, %296
  %300 = bitcast double %299 to i64
  %301 = and i64 %300, 9221120237041090560
  %302 = icmp eq i64 %301, 9218868437227405312
  %303 = and i64 %300, 2251799813685247
  %304 = icmp ne i64 %303, 0
  %305 = and i1 %302, %304
  br i1 %305, label %306, label %316

; <label>:306:                                    ; preds = %298
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %308 = load i64, i64* %307, align 8, !tbaa !2428
  %309 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %308, %struct.Memory* %MEMORY.0) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2

; <label>:310:                                    ; preds = %block_4005dc
  %311 = fcmp ogt double %294, %296
  br i1 %311, label %316, label %312

; <label>:312:                                    ; preds = %310
  %313 = fcmp olt double %294, %296
  br i1 %313, label %316, label %314

; <label>:314:                                    ; preds = %312
  %315 = fcmp oeq double %294, %296
  br i1 %315, label %316, label %323

; <label>:316:                                    ; preds = %314, %312, %310, %298
  %317 = phi i8 [ 0, %310 ], [ 0, %312 ], [ 1, %314 ], [ 1, %298 ]
  %318 = phi i8 [ 0, %310 ], [ 0, %312 ], [ 0, %314 ], [ 1, %298 ]
  %319 = phi i8 [ 0, %310 ], [ 1, %312 ], [ 0, %314 ], [ 1, %298 ]
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %317, i8* %320, align 1, !tbaa !2454
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %318, i8* %321, align 1, !tbaa !2454
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %319, i8* %322, align 1, !tbaa !2454
  br label %323

; <label>:323:                                    ; preds = %316, %314
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %324, align 1, !tbaa !2454
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %325, align 1, !tbaa !2454
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %326, align 1, !tbaa !2454
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2: ; preds = %306, %323
  %327 = phi %struct.Memory* [ %309, %306 ], [ %MEMORY.0, %323 ]
  %328 = load i64, i64* %PC
  %329 = add i64 %328, 59
  %330 = load i64, i64* %PC
  %331 = add i64 %330, 6
  %332 = load i64, i64* %PC
  %333 = add i64 %332, 6
  store i64 %333, i64* %PC
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %335 = load i8, i8* %334, align 1, !tbaa !2432
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %337 = load i8, i8* %336, align 1, !tbaa !2448
  %338 = or i8 %337, %335
  %339 = icmp ne i8 %338, 0
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %BRANCH_TAKEN, align 1, !tbaa !2454
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %342 = select i1 %339, i64 %329, i64 %331
  store i64 %342, i64* %341, align 8, !tbaa !2428
  %343 = load i8, i8* %BRANCH_TAKEN
  %344 = icmp eq i8 %343, 1
  br i1 %344, label %block_400624, label %block_4005ef

block_40065c:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %345 = load i64, i64* %PC
  %346 = add i64 %345, 10
  store i64 %346, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400e00__rodata_type* @seg_400e00__rodata to i64), i64 112), i64* %RDI, align 8, !tbaa !2428
  %347 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %348 = load i64, i64* %RBP
  %349 = sub i64 %348, 40
  %350 = load i64, i64* %PC
  %351 = add i64 %350, 5
  store i64 %351, i64* %PC
  %352 = inttoptr i64 %349 to double*
  %353 = load double, double* %352
  %354 = bitcast i8* %347 to double*
  store double %353, double* %354, align 1, !tbaa !2451
  %355 = getelementptr inbounds i8, i8* %347, i64 8
  %356 = bitcast i8* %355 to double*
  store double 0.000000e+00, double* %356, align 1, !tbaa !2451
  %357 = load i64, i64* %PC
  %358 = add i64 %357, 2
  store i64 %358, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2454
  %359 = load i64, i64* %PC
  %360 = sub i64 %359, 525
  %361 = load i64, i64* %PC
  %362 = add i64 %361, 5
  %363 = load i64, i64* %PC
  %364 = add i64 %363, 5
  store i64 %364, i64* %PC
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %366 = load i64, i64* %365, align 8, !tbaa !2428
  %367 = add i64 %366, -8
  %368 = inttoptr i64 %367 to i64*
  store i64 %362, i64* %368
  store i64 %367, i64* %365, align 8, !tbaa !2428
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %360, i64* %369, align 8, !tbaa !2428
  %370 = load i64, i64* %PC
  %371 = call %struct.Memory* @ext_602c68_printf(%struct.State* %0, i64 %370, %struct.Memory* %502)
  %372 = load i64, i64* %RCX
  %373 = load i32, i32* %ECX
  %374 = zext i32 %373 to i64
  %375 = load i64, i64* %PC
  %376 = add i64 %375, 2
  store i64 %376, i64* %PC
  %377 = xor i64 %374, %372
  %378 = trunc i64 %377 to i32
  %379 = and i64 %377, 4294967295
  store i64 %379, i64* %RCX, align 8, !tbaa !2428
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %380, align 1, !tbaa !2432
  %381 = and i32 %378, 255
  %382 = call i32 @llvm.ctpop.i32(i32 %381) #16
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %385, i8* %386, align 1, !tbaa !2446
  %387 = icmp eq i32 %378, 0
  %388 = zext i1 %387 to i8
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %388, i8* %389, align 1, !tbaa !2448
  %390 = lshr i32 %378, 31
  %391 = trunc i32 %390 to i8
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %391, i8* %392, align 1, !tbaa !2449
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %393, align 1, !tbaa !2450
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %394, align 1, !tbaa !2447
  %395 = load i64, i64* %RBP
  %396 = sub i64 %395, 48
  %397 = load i32, i32* %EAX
  %398 = zext i32 %397 to i64
  %399 = load i64, i64* %PC
  %400 = add i64 %399, 3
  store i64 %400, i64* %PC
  %401 = inttoptr i64 %396 to i32*
  store i32 %397, i32* %401
  %402 = load i32, i32* %ECX
  %403 = zext i32 %402 to i64
  %404 = load i64, i64* %PC
  %405 = add i64 %404, 2
  store i64 %405, i64* %PC
  %406 = and i64 %403, 4294967295
  store i64 %406, i64* %RAX, align 8, !tbaa !2428
  %407 = load i64, i64* %RSP
  %408 = load i64, i64* %PC
  %409 = add i64 %408, 4
  store i64 %409, i64* %PC
  %410 = add i64 48, %407
  store i64 %410, i64* %RSP, align 8, !tbaa !2428
  %411 = icmp ult i64 %410, %407
  %412 = icmp ult i64 %410, 48
  %413 = or i1 %411, %412
  %414 = zext i1 %413 to i8
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %414, i8* %415, align 1, !tbaa !2432
  %416 = trunc i64 %410 to i32
  %417 = and i32 %416, 255
  %418 = call i32 @llvm.ctpop.i32(i32 %417) #16
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = xor i8 %420, 1
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %421, i8* %422, align 1, !tbaa !2446
  %423 = xor i64 48, %407
  %424 = xor i64 %423, %410
  %425 = lshr i64 %424, 4
  %426 = trunc i64 %425 to i8
  %427 = and i8 %426, 1
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %427, i8* %428, align 1, !tbaa !2447
  %429 = icmp eq i64 %410, 0
  %430 = zext i1 %429 to i8
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %430, i8* %431, align 1, !tbaa !2448
  %432 = lshr i64 %410, 63
  %433 = trunc i64 %432 to i8
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %433, i8* %434, align 1, !tbaa !2449
  %435 = lshr i64 %407, 63
  %436 = xor i64 %432, %435
  %437 = add nuw nsw i64 %436, %432
  %438 = icmp eq i64 %437, 2
  %439 = zext i1 %438 to i8
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %439, i8* %440, align 1, !tbaa !2450
  %441 = load i64, i64* %PC
  %442 = add i64 %441, 1
  store i64 %442, i64* %PC
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %444 = load i64, i64* %443, align 8, !tbaa !2428
  %445 = add i64 %444, 8
  %446 = inttoptr i64 %444 to i64*
  %447 = load i64, i64* %446
  store i64 %447, i64* %RBP, align 8, !tbaa !2428
  store i64 %445, i64* %443, align 8, !tbaa !2428
  %448 = load i64, i64* %PC
  %449 = add i64 %448, 1
  store i64 %449, i64* %PC
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %452 = load i64, i64* %451, align 8, !tbaa !2428
  %453 = inttoptr i64 %452 to i64*
  %454 = load i64, i64* %453
  store i64 %454, i64* %450, align 8, !tbaa !2428
  %455 = add i64 %452, 8
  store i64 %455, i64* %451, align 8, !tbaa !2428
  ret %struct.Memory* %371

block_40059c:                                     ; preds = %block_400640, %block_400570
  %MEMORY.1 = phi %struct.Memory* [ %100, %block_400570 ], [ %581, %block_400640 ]
  %456 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %457 = load i64, i64* %PC
  %458 = add i64 %457, 8
  store i64 %458, i64* %PC
  %459 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400e00__rodata_type* @seg_400e00__rodata to i64), i64 16) to double*)
  %460 = bitcast i8* %456 to double*
  store double %459, double* %460, align 1, !tbaa !2451
  %461 = getelementptr inbounds i8, i8* %456, i64 8
  %462 = bitcast i8* %461 to double*
  store double 0.000000e+00, double* %462, align 1, !tbaa !2451
  %463 = bitcast %union.vec128_t* %XMM0 to i8*
  %464 = load i64, i64* %RBP
  %465 = sub i64 %464, 16
  %466 = load i64, i64* %PC
  %467 = add i64 %466, 5
  store i64 %467, i64* %PC
  %468 = bitcast i8* %463 to double*
  %469 = load double, double* %468, align 1
  %470 = inttoptr i64 %465 to double*
  %471 = load double, double* %470
  %472 = fcmp uno double %469, %471
  br i1 %472, label %473, label %485

; <label>:473:                                    ; preds = %block_40059c
  %474 = fadd double %469, %471
  %475 = bitcast double %474 to i64
  %476 = and i64 %475, 9221120237041090560
  %477 = icmp eq i64 %476, 9218868437227405312
  %478 = and i64 %475, 2251799813685247
  %479 = icmp ne i64 %478, 0
  %480 = and i1 %477, %479
  br i1 %480, label %481, label %491

; <label>:481:                                    ; preds = %473
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %483 = load i64, i64* %482, align 8, !tbaa !2428
  %484 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %483, %struct.Memory* %MEMORY.1) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

; <label>:485:                                    ; preds = %block_40059c
  %486 = fcmp ogt double %469, %471
  br i1 %486, label %491, label %487

; <label>:487:                                    ; preds = %485
  %488 = fcmp olt double %469, %471
  br i1 %488, label %491, label %489

; <label>:489:                                    ; preds = %487
  %490 = fcmp oeq double %469, %471
  br i1 %490, label %491, label %498

; <label>:491:                                    ; preds = %489, %487, %485, %473
  %492 = phi i8 [ 0, %485 ], [ 0, %487 ], [ 1, %489 ], [ 1, %473 ]
  %493 = phi i8 [ 0, %485 ], [ 0, %487 ], [ 0, %489 ], [ 1, %473 ]
  %494 = phi i8 [ 0, %485 ], [ 1, %487 ], [ 0, %489 ], [ 1, %473 ]
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %492, i8* %495, align 1, !tbaa !2454
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %493, i8* %496, align 1, !tbaa !2454
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %494, i8* %497, align 1, !tbaa !2454
  br label %498

; <label>:498:                                    ; preds = %491, %489
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %499, align 1, !tbaa !2454
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %500, align 1, !tbaa !2454
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %501, align 1, !tbaa !2454
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1: ; preds = %481, %498
  %502 = phi %struct.Memory* [ %484, %481 ], [ %MEMORY.1, %498 ]
  %503 = load i64, i64* %PC
  %504 = add i64 %503, 179
  %505 = load i64, i64* %PC
  %506 = add i64 %505, 6
  %507 = load i64, i64* %PC
  %508 = add i64 %507, 6
  store i64 %508, i64* %PC
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %510 = load i8, i8* %509, align 1, !tbaa !2432
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %512 = load i8, i8* %511, align 1, !tbaa !2448
  %513 = or i8 %512, %510
  %514 = icmp ne i8 %513, 0
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %BRANCH_TAKEN, align 1, !tbaa !2454
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %517 = select i1 %514, i64 %504, i64 %506
  store i64 %517, i64* %516, align 8, !tbaa !2428
  %518 = load i8, i8* %BRANCH_TAKEN
  %519 = icmp eq i8 %518, 1
  br i1 %519, label %block_40065c, label %block_4005af

block_4005af:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %520 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %521 = load i64, i64* %PC
  %522 = add i64 %521, 8
  store i64 %522, i64* %PC
  %523 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400e00__rodata_type* @seg_400e00__rodata to i64), i64 24) to double*)
  %524 = bitcast i8* %520 to double*
  store double %523, double* %524, align 1, !tbaa !2451
  %525 = getelementptr inbounds i8, i8* %520, i64 8
  %526 = bitcast i8* %525 to double*
  store double 0.000000e+00, double* %526, align 1, !tbaa !2451
  %527 = load i64, i64* %RBP
  %528 = sub i64 %527, 24
  %529 = bitcast %union.vec128_t* %XMM0 to i8*
  %530 = load i64, i64* %PC
  %531 = add i64 %530, 5
  store i64 %531, i64* %PC
  %532 = bitcast i8* %529 to double*
  %533 = load double, double* %532, align 1
  %534 = inttoptr i64 %528 to double*
  store double %533, double* %534
  br label %block_4005bc

block_4005bc:                                     ; preds = %block_400624, %block_4005af
  %MEMORY.2 = phi %struct.Memory* [ %502, %block_4005af ], [ %327, %block_400624 ]
  %535 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %536 = load i64, i64* %PC
  %537 = add i64 %536, 8
  store i64 %537, i64* %PC
  %538 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400e00__rodata_type* @seg_400e00__rodata to i64), i64 32) to double*)
  %539 = bitcast i8* %535 to double*
  store double %538, double* %539, align 1, !tbaa !2451
  %540 = getelementptr inbounds i8, i8* %535, i64 8
  %541 = bitcast i8* %540 to double*
  store double 0.000000e+00, double* %541, align 1, !tbaa !2451
  %542 = bitcast %union.vec128_t* %XMM0 to i8*
  %543 = load i64, i64* %RBP
  %544 = sub i64 %543, 24
  %545 = load i64, i64* %PC
  %546 = add i64 %545, 5
  store i64 %546, i64* %PC
  %547 = bitcast i8* %542 to double*
  %548 = load double, double* %547, align 1
  %549 = inttoptr i64 %544 to double*
  %550 = load double, double* %549
  %551 = fcmp uno double %548, %550
  br i1 %551, label %552, label %564

; <label>:552:                                    ; preds = %block_4005bc
  %553 = fadd double %548, %550
  %554 = bitcast double %553 to i64
  %555 = and i64 %554, 9221120237041090560
  %556 = icmp eq i64 %555, 9218868437227405312
  %557 = and i64 %554, 2251799813685247
  %558 = icmp ne i64 %557, 0
  %559 = and i1 %556, %558
  br i1 %559, label %560, label %570

; <label>:560:                                    ; preds = %552
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %562 = load i64, i64* %561, align 8, !tbaa !2428
  %563 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %562, %struct.Memory* %MEMORY.2) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:564:                                    ; preds = %block_4005bc
  %565 = fcmp ogt double %548, %550
  br i1 %565, label %570, label %566

; <label>:566:                                    ; preds = %564
  %567 = fcmp olt double %548, %550
  br i1 %567, label %570, label %568

; <label>:568:                                    ; preds = %566
  %569 = fcmp oeq double %548, %550
  br i1 %569, label %570, label %577

; <label>:570:                                    ; preds = %568, %566, %564, %552
  %571 = phi i8 [ 0, %564 ], [ 0, %566 ], [ 1, %568 ], [ 1, %552 ]
  %572 = phi i8 [ 0, %564 ], [ 0, %566 ], [ 0, %568 ], [ 1, %552 ]
  %573 = phi i8 [ 0, %564 ], [ 1, %566 ], [ 0, %568 ], [ 1, %552 ]
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %571, i8* %574, align 1, !tbaa !2454
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %572, i8* %575, align 1, !tbaa !2454
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %573, i8* %576, align 1, !tbaa !2454
  br label %577

; <label>:577:                                    ; preds = %570, %568
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %578, align 1, !tbaa !2454
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %579, align 1, !tbaa !2454
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %580, align 1, !tbaa !2454
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %560, %577
  %581 = phi %struct.Memory* [ %563, %560 ], [ %MEMORY.2, %577 ]
  %582 = load i64, i64* %PC
  %583 = add i64 %582, 119
  %584 = load i64, i64* %PC
  %585 = add i64 %584, 6
  %586 = load i64, i64* %PC
  %587 = add i64 %586, 6
  store i64 %587, i64* %PC
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %589 = load i8, i8* %588, align 1, !tbaa !2432
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %591 = load i8, i8* %590, align 1, !tbaa !2448
  %592 = or i8 %591, %589
  %593 = icmp ne i8 %592, 0
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %BRANCH_TAKEN, align 1, !tbaa !2454
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %596 = select i1 %593, i64 %583, i64 %585
  store i64 %596, i64* %595, align 8, !tbaa !2428
  %597 = load i8, i8* %BRANCH_TAKEN
  %598 = icmp eq i8 %597, 1
  br i1 %598, label %block_400640, label %block_4005cf

block_400624:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2
  %599 = load i64, i64* %PC
  %600 = add i64 %599, 5
  %601 = load i64, i64* %PC
  %602 = add i64 %601, 5
  store i64 %602, i64* %PC
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %600, i64* %603, align 8, !tbaa !2428
  %604 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %605 = load i64, i64* %PC
  %606 = add i64 %605, 8
  store i64 %606, i64* %PC
  %607 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400e00__rodata_type* @seg_400e00__rodata to i64), i64 64) to double*)
  %608 = bitcast i8* %604 to double*
  store double %607, double* %608, align 1, !tbaa !2451
  %609 = getelementptr inbounds i8, i8* %604, i64 8
  %610 = bitcast i8* %609 to double*
  store double 0.000000e+00, double* %610, align 1, !tbaa !2451
  %611 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %612 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %613 = load i64, i64* %RBP
  %614 = sub i64 %613, 24
  %615 = load i64, i64* %PC
  %616 = add i64 %615, 5
  store i64 %616, i64* %PC
  %617 = bitcast i8* %612 to double*
  %618 = load double, double* %617, align 1
  %619 = getelementptr inbounds i8, i8* %612, i64 8
  %620 = bitcast i8* %619 to i64*
  %621 = load i64, i64* %620, align 1
  %622 = inttoptr i64 %614 to double*
  %623 = load double, double* %622
  %624 = fadd double %618, %623
  %625 = bitcast i8* %611 to double*
  store double %624, double* %625, align 1, !tbaa !2451
  %626 = getelementptr inbounds i8, i8* %611, i64 8
  %627 = bitcast i8* %626 to i64*
  store i64 %621, i64* %627, align 1, !tbaa !2451
  %628 = load i64, i64* %RBP
  %629 = sub i64 %628, 24
  %630 = bitcast %union.vec128_t* %XMM0 to i8*
  %631 = load i64, i64* %PC
  %632 = add i64 %631, 5
  store i64 %632, i64* %PC
  %633 = bitcast i8* %630 to double*
  %634 = load double, double* %633, align 1
  %635 = inttoptr i64 %629 to double*
  store double %634, double* %635
  %636 = load i64, i64* %PC
  %637 = sub i64 %636, 127
  %638 = load i64, i64* %PC
  %639 = add i64 %638, 5
  store i64 %639, i64* %PC
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %637, i64* %640, align 8, !tbaa !2428
  br label %block_4005bc

block_400640:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %641 = load i64, i64* %PC
  %642 = add i64 %641, 5
  %643 = load i64, i64* %PC
  %644 = add i64 %643, 5
  store i64 %644, i64* %PC
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %642, i64* %645, align 8, !tbaa !2428
  %646 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %647 = load i64, i64* %PC
  %648 = add i64 %647, 8
  store i64 %648, i64* %PC
  %649 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400e00__rodata_type* @seg_400e00__rodata to i64), i64 40) to double*)
  %650 = bitcast i8* %646 to double*
  store double %649, double* %650, align 1, !tbaa !2451
  %651 = getelementptr inbounds i8, i8* %646, i64 8
  %652 = bitcast i8* %651 to double*
  store double 0.000000e+00, double* %652, align 1, !tbaa !2451
  %653 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %654 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %655 = load i64, i64* %RBP
  %656 = sub i64 %655, 16
  %657 = load i64, i64* %PC
  %658 = add i64 %657, 5
  store i64 %658, i64* %PC
  %659 = bitcast i8* %654 to double*
  %660 = load double, double* %659, align 1
  %661 = getelementptr inbounds i8, i8* %654, i64 8
  %662 = bitcast i8* %661 to i64*
  %663 = load i64, i64* %662, align 1
  %664 = inttoptr i64 %656 to double*
  %665 = load double, double* %664
  %666 = fadd double %660, %665
  %667 = bitcast i8* %653 to double*
  store double %666, double* %667, align 1, !tbaa !2451
  %668 = getelementptr inbounds i8, i8* %653, i64 8
  %669 = bitcast i8* %668 to i64*
  store i64 %663, i64* %669, align 1, !tbaa !2451
  %670 = load i64, i64* %RBP
  %671 = sub i64 %670, 16
  %672 = bitcast %union.vec128_t* %XMM0 to i8*
  %673 = load i64, i64* %PC
  %674 = add i64 %673, 5
  store i64 %674, i64* %PC
  %675 = bitcast i8* %672 to double*
  %676 = load double, double* %675, align 1
  %677 = inttoptr i64 %671 to double*
  store double %676, double* %677
  %678 = load i64, i64* %PC
  %679 = sub i64 %678, 187
  %680 = load i64, i64* %PC
  %681 = add i64 %680, 5
  store i64 %681, i64* %PC
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %679, i64* %682, align 8, !tbaa !2428
  br label %block_40059c
}

; Function Attrs: noinline
define %struct.Memory* @sub_400ba0_fade(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400ba0:
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
  %15 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %14, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %15 to %"class.std::bitset"*
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %17 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %16, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %17 to %"class.std::bitset"*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %19 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %18, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %19 to %"class.std::bitset"*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %21 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %20, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %21 to %"class.std::bitset"*
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %23 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %22, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %23 to %union.vec128_t*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %25 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %24, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %25 to %union.vec128_t*
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %27 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %26, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %27 to %union.vec128_t*
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %29 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %28, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %29 to %union.vec128_t*
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %31 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %30, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %31 to %union.vec128_t*
  %32 = load i64, i64* %RBP
  %33 = load i64, i64* %PC
  %34 = add i64 %33, 1
  store i64 %34, i64* %PC
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %36 = load i64, i64* %35, align 8, !tbaa !2428
  %37 = add i64 %36, -8
  %38 = inttoptr i64 %37 to i64*
  store i64 %32, i64* %38
  store i64 %37, i64* %35, align 8, !tbaa !2428
  %39 = load i64, i64* %RSP
  %40 = load i64, i64* %PC
  %41 = add i64 %40, 3
  store i64 %41, i64* %PC
  store i64 %39, i64* %RBP, align 8, !tbaa !2428
  %42 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %43 = load i64, i64* %PC
  %44 = add i64 %43, 8
  store i64 %44, i64* %PC
  %45 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400e00__rodata_type* @seg_400e00__rodata to i64), i64 88) to double*)
  %46 = bitcast i8* %42 to double*
  store double %45, double* %46, align 1, !tbaa !2451
  %47 = getelementptr inbounds i8, i8* %42, i64 8
  %48 = bitcast i8* %47 to double*
  store double 0.000000e+00, double* %48, align 1, !tbaa !2451
  %49 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %50 = load i64, i64* %PC
  %51 = add i64 %50, 8
  store i64 %51, i64* %PC
  %52 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400e00__rodata_type* @seg_400e00__rodata to i64), i64 96) to double*)
  %53 = bitcast i8* %49 to double*
  store double %52, double* %53, align 1, !tbaa !2451
  %54 = getelementptr inbounds i8, i8* %49, i64 8
  %55 = bitcast i8* %54 to double*
  store double 0.000000e+00, double* %55, align 1, !tbaa !2451
  %56 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %57 = load i64, i64* %PC
  %58 = add i64 %57, 8
  store i64 %58, i64* %PC
  %59 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400e00__rodata_type* @seg_400e00__rodata to i64), i64 104) to double*)
  %60 = bitcast i8* %56 to double*
  store double %59, double* %60, align 1, !tbaa !2451
  %61 = getelementptr inbounds i8, i8* %56, i64 8
  %62 = bitcast i8* %61 to double*
  store double 0.000000e+00, double* %62, align 1, !tbaa !2451
  %63 = load i64, i64* %RBP
  %64 = sub i64 %63, 8
  %65 = bitcast %union.vec128_t* %XMM0 to i8*
  %66 = load i64, i64* %PC
  %67 = add i64 %66, 5
  store i64 %67, i64* %PC
  %68 = bitcast i8* %65 to double*
  %69 = load double, double* %68, align 1
  %70 = inttoptr i64 %64 to double*
  store double %69, double* %70
  %71 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %72 = load i64, i64* %RBP
  %73 = sub i64 %72, 8
  %74 = load i64, i64* %PC
  %75 = add i64 %74, 5
  store i64 %75, i64* %PC
  %76 = inttoptr i64 %73 to double*
  %77 = load double, double* %76
  %78 = bitcast i8* %71 to double*
  store double %77, double* %78, align 1, !tbaa !2451
  %79 = getelementptr inbounds i8, i8* %71, i64 8
  %80 = bitcast i8* %79 to double*
  store double 0.000000e+00, double* %80, align 1, !tbaa !2451
  %81 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %82 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %83 = load i64, i64* %RBP
  %84 = sub i64 %83, 8
  %85 = load i64, i64* %PC
  %86 = add i64 %85, 5
  store i64 %86, i64* %PC
  %87 = bitcast i8* %82 to double*
  %88 = load double, double* %87, align 1
  %89 = getelementptr inbounds i8, i8* %82, i64 8
  %90 = bitcast i8* %89 to i64*
  %91 = load i64, i64* %90, align 1
  %92 = inttoptr i64 %84 to double*
  %93 = load double, double* %92
  %94 = fmul double %88, %93
  %95 = bitcast i8* %81 to double*
  store double %94, double* %95, align 1, !tbaa !2451
  %96 = getelementptr inbounds i8, i8* %81, i64 8
  %97 = bitcast i8* %96 to i64*
  store i64 %91, i64* %97, align 1, !tbaa !2451
  %98 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %99 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %100 = load i64, i64* %RBP
  %101 = sub i64 %100, 8
  %102 = load i64, i64* %PC
  %103 = add i64 %102, 5
  store i64 %103, i64* %PC
  %104 = bitcast i8* %99 to double*
  %105 = load double, double* %104, align 1
  %106 = getelementptr inbounds i8, i8* %99, i64 8
  %107 = bitcast i8* %106 to i64*
  %108 = load i64, i64* %107, align 1
  %109 = inttoptr i64 %101 to double*
  %110 = load double, double* %109
  %111 = fmul double %105, %110
  %112 = bitcast i8* %98 to double*
  store double %111, double* %112, align 1, !tbaa !2451
  %113 = getelementptr inbounds i8, i8* %98, i64 8
  %114 = bitcast i8* %113 to i64*
  store i64 %108, i64* %114, align 1, !tbaa !2451
  %115 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %116 = load i64, i64* %RBP
  %117 = sub i64 %116, 8
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 5
  store i64 %119, i64* %PC
  %120 = inttoptr i64 %117 to double*
  %121 = load double, double* %120
  %122 = bitcast i8* %115 to double*
  store double %121, double* %122, align 1, !tbaa !2451
  %123 = getelementptr inbounds i8, i8* %115, i64 8
  %124 = bitcast i8* %123 to double*
  store double 0.000000e+00, double* %124, align 1, !tbaa !2451
  %125 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %126 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %127 = load i64, i64* %RBP
  %128 = sub i64 %127, 8
  %129 = load i64, i64* %PC
  %130 = add i64 %129, 5
  store i64 %130, i64* %PC
  %131 = bitcast i8* %126 to double*
  %132 = load double, double* %131, align 1
  %133 = getelementptr inbounds i8, i8* %126, i64 8
  %134 = bitcast i8* %133 to i64*
  %135 = load i64, i64* %134, align 1
  %136 = inttoptr i64 %128 to double*
  %137 = load double, double* %136
  %138 = fmul double %132, %137
  %139 = bitcast i8* %125 to double*
  store double %138, double* %139, align 1, !tbaa !2451
  %140 = getelementptr inbounds i8, i8* %125, i64 8
  %141 = bitcast i8* %140 to i64*
  store i64 %135, i64* %141, align 1, !tbaa !2451
  %142 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %143 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %144 = bitcast %union.vec128_t* %XMM2 to i8*
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 4
  store i64 %146, i64* %PC
  %147 = bitcast i8* %143 to double*
  %148 = load double, double* %147, align 1
  %149 = getelementptr inbounds i8, i8* %143, i64 8
  %150 = bitcast i8* %149 to i64*
  %151 = load i64, i64* %150, align 1
  %152 = bitcast i8* %144 to double*
  %153 = load double, double* %152, align 1
  %154 = fsub double %148, %153
  %155 = bitcast i8* %142 to double*
  store double %154, double* %155, align 1, !tbaa !2451
  %156 = getelementptr inbounds i8, i8* %142, i64 8
  %157 = bitcast i8* %156 to i64*
  store i64 %151, i64* %157, align 1, !tbaa !2451
  %158 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %159 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %160 = bitcast %union.vec128_t* %XMM3 to i8*
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 4
  store i64 %162, i64* %PC
  %163 = bitcast i8* %159 to double*
  %164 = load double, double* %163, align 1
  %165 = getelementptr inbounds i8, i8* %159, i64 8
  %166 = bitcast i8* %165 to i64*
  %167 = load i64, i64* %166, align 1
  %168 = bitcast i8* %160 to double*
  %169 = load double, double* %168, align 1
  %170 = fmul double %164, %169
  %171 = bitcast i8* %158 to double*
  store double %170, double* %171, align 1, !tbaa !2451
  %172 = getelementptr inbounds i8, i8* %158, i64 8
  %173 = bitcast i8* %172 to i64*
  store i64 %167, i64* %173, align 1, !tbaa !2451
  %174 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %175 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %176 = bitcast %union.vec128_t* %XMM1 to i8*
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 4
  store i64 %178, i64* %PC
  %179 = bitcast i8* %175 to double*
  %180 = load double, double* %179, align 1
  %181 = getelementptr inbounds i8, i8* %175, i64 8
  %182 = bitcast i8* %181 to i64*
  %183 = load i64, i64* %182, align 1
  %184 = bitcast i8* %176 to double*
  %185 = load double, double* %184, align 1
  %186 = fadd double %180, %185
  %187 = bitcast i8* %174 to double*
  store double %186, double* %187, align 1, !tbaa !2451
  %188 = getelementptr inbounds i8, i8* %174, i64 8
  %189 = bitcast i8* %188 to i64*
  store i64 %183, i64* %189, align 1, !tbaa !2451
  %190 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %191 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %192 = bitcast %union.vec128_t* %XMM4 to i8*
  %193 = load i64, i64* %PC
  %194 = add i64 %193, 4
  store i64 %194, i64* %PC
  %195 = bitcast i8* %191 to double*
  %196 = load double, double* %195, align 1
  %197 = getelementptr inbounds i8, i8* %191, i64 8
  %198 = bitcast i8* %197 to i64*
  %199 = load i64, i64* %198, align 1
  %200 = bitcast i8* %192 to double*
  %201 = load double, double* %200, align 1
  %202 = fmul double %196, %201
  %203 = bitcast i8* %190 to double*
  store double %202, double* %203, align 1, !tbaa !2451
  %204 = getelementptr inbounds i8, i8* %190, i64 8
  %205 = bitcast i8* %204 to i64*
  store i64 %199, i64* %205, align 1, !tbaa !2451
  %206 = load i64, i64* %PC
  %207 = add i64 %206, 1
  store i64 %207, i64* %PC
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %209 = load i64, i64* %208, align 8, !tbaa !2428
  %210 = add i64 %209, 8
  %211 = inttoptr i64 %209 to i64*
  %212 = load i64, i64* %211
  store i64 %212, i64* %RBP, align 8, !tbaa !2428
  store i64 %210, i64* %208, align 8, !tbaa !2428
  %213 = load i64, i64* %PC
  %214 = add i64 %213, 1
  store i64 %214, i64* %PC
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %217 = load i64, i64* %216, align 8, !tbaa !2428
  %218 = inttoptr i64 %217 to i64*
  %219 = load i64, i64* %218
  store i64 %219, i64* %215, align 8, !tbaa !2428
  %220 = add i64 %217, 8
  store i64 %220, i64* %216, align 8, !tbaa !2428
  ret %struct.Memory* %2
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
define %struct.Memory* @sub_400438__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400438:
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
  store i8 %75, i8* %BRANCH_TAKEN, align 1, !tbaa !2454
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %77 = icmp ne i8 %75, 0
  %78 = select i1 %77, i64 %69, i64 %71
  store i64 %78, i64* %76, align 8, !tbaa !2428
  %79 = load i8, i8* %BRANCH_TAKEN
  %80 = icmp eq i8 %79, 1
  br i1 %80, label %block_40044a, label %block_400448

block_400448:                                     ; preds = %block_400438
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
  br label %block_40044a

block_40044a:                                     ; preds = %block_400448, %block_400438
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400438 ], [ %92, %block_400448 ]
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
  store i8 %43, i8* %BRANCH_TAKEN, align 1, !tbaa !2454
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
define %struct.Memory* @sub_4006e0_noise(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4006e0:
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
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %25 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %24, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %25 to %"class.std::bitset"*
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %27 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %26, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %27 to %"class.std::bitset"*
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %29 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %28, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %29 to %"class.std::bitset"*
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %31 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %30, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %31 to %"class.std::bitset"*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %33 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %32, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %33 to %"class.std::bitset"*
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %35 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %34, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %35 to %"class.std::bitset"*
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %37 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %36, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %37 to %"class.std::bitset"*
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %39 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %38, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %39 to %union.vec128_t*
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %41 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %41 to %union.vec128_t*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %43 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %42, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %43 to %union.vec128_t*
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %45 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %44, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %45 to %union.vec128_t*
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %47 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %46, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %47 to %union.vec128_t*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %49 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %48, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %49 to %union.vec128_t*
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %51 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %50, i64 0, i64 6
  %XMM6 = bitcast %union.VectorReg* %51 to %union.vec128_t*
  %52 = load i64, i64* %RBP
  %53 = load i64, i64* %PC
  %54 = add i64 %53, 1
  store i64 %54, i64* %PC
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %56 = load i64, i64* %55, align 8, !tbaa !2428
  %57 = add i64 %56, -8
  %58 = inttoptr i64 %57 to i64*
  store i64 %52, i64* %58
  store i64 %57, i64* %55, align 8, !tbaa !2428
  %59 = load i64, i64* %RSP
  %60 = load i64, i64* %PC
  %61 = add i64 %60, 3
  store i64 %61, i64* %PC
  store i64 %59, i64* %RBP, align 8, !tbaa !2428
  %62 = load i64, i64* %RSP
  %63 = load i64, i64* %PC
  %64 = add i64 %63, 7
  store i64 %64, i64* %PC
  %65 = sub i64 %62, 272
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  %66 = icmp ult i64 %62, 272
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %67, i8* %68, align 1, !tbaa !2432
  %69 = trunc i64 %65 to i32
  %70 = and i32 %69, 255
  %71 = call i32 @llvm.ctpop.i32(i32 %70) #16
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %74, i8* %75, align 1, !tbaa !2446
  %76 = xor i64 272, %62
  %77 = xor i64 %76, %65
  %78 = lshr i64 %77, 4
  %79 = trunc i64 %78 to i8
  %80 = and i8 %79, 1
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %80, i8* %81, align 1, !tbaa !2447
  %82 = icmp eq i64 %65, 0
  %83 = zext i1 %82 to i8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %83, i8* %84, align 1, !tbaa !2448
  %85 = lshr i64 %65, 63
  %86 = trunc i64 %85 to i8
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %86, i8* %87, align 1, !tbaa !2449
  %88 = lshr i64 %62, 63
  %89 = xor i64 %85, %88
  %90 = add nuw nsw i64 %89, %88
  %91 = icmp eq i64 %90, 2
  %92 = zext i1 %91 to i8
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %92, i8* %93, align 1, !tbaa !2450
  %94 = load i64, i64* %RBP
  %95 = sub i64 %94, 8
  %96 = bitcast %union.vec128_t* %XMM0 to i8*
  %97 = load i64, i64* %PC
  %98 = add i64 %97, 5
  store i64 %98, i64* %PC
  %99 = bitcast i8* %96 to double*
  %100 = load double, double* %99, align 1
  %101 = inttoptr i64 %95 to double*
  store double %100, double* %101
  %102 = load i64, i64* %RBP
  %103 = sub i64 %102, 16
  %104 = bitcast %union.vec128_t* %XMM1 to i8*
  %105 = load i64, i64* %PC
  %106 = add i64 %105, 5
  store i64 %106, i64* %PC
  %107 = bitcast i8* %104 to double*
  %108 = load double, double* %107, align 1
  %109 = inttoptr i64 %103 to double*
  store double %108, double* %109
  %110 = load i64, i64* %RBP
  %111 = sub i64 %110, 24
  %112 = bitcast %union.vec128_t* %XMM2 to i8*
  %113 = load i64, i64* %PC
  %114 = add i64 %113, 5
  store i64 %114, i64* %PC
  %115 = bitcast i8* %112 to double*
  %116 = load double, double* %115, align 1
  %117 = inttoptr i64 %111 to double*
  store double %116, double* %117
  %118 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %119 = load i64, i64* %RBP
  %120 = sub i64 %119, 8
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 5
  store i64 %122, i64* %PC
  %123 = inttoptr i64 %120 to double*
  %124 = load double, double* %123
  %125 = bitcast i8* %118 to double*
  store double %124, double* %125, align 1, !tbaa !2451
  %126 = getelementptr inbounds i8, i8* %118, i64 8
  %127 = bitcast i8* %126 to double*
  store double 0.000000e+00, double* %127, align 1, !tbaa !2451
  %128 = load i64, i64* %PC
  %129 = sub i64 %128, 655
  %130 = load i64, i64* %PC
  %131 = add i64 %130, 5
  %132 = load i64, i64* %PC
  %133 = add i64 %132, 5
  store i64 %133, i64* %PC
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %135 = load i64, i64* %134, align 8, !tbaa !2428
  %136 = add i64 %135, -8
  %137 = inttoptr i64 %136 to i64*
  store i64 %131, i64* %137
  store i64 %136, i64* %134, align 8, !tbaa !2428
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %129, i64* %138, align 8, !tbaa !2428
  %139 = load i64, i64* %PC
  %140 = call %struct.Memory* @ext_602c78_floor(%struct.State* %0, i64 %139, %struct.Memory* %2)
  %141 = bitcast %union.vec128_t* %XMM0 to i8*
  %142 = load i64, i64* %PC
  %143 = add i64 %142, 4
  store i64 %143, i64* %PC
  %144 = bitcast i8* %141 to double*
  %145 = load double, double* %144, align 1
  %146 = call double @llvm.trunc.f64(double %145) #16
  %147 = call double @llvm.fabs.f64(double %146) #16
  %148 = fcmp ogt double %147, 0x41DFFFFFFFC00000
  %149 = fptosi double %146 to i32
  %150 = zext i32 %149 to i64
  %151 = select i1 %148, i64 2147483648, i64 %150
  store i64 %151, i64* %RAX, align 8, !tbaa !2428
  %152 = load i64, i64* %RAX
  %153 = load i64, i64* %PC
  %154 = add i64 %153, 5
  store i64 %154, i64* %PC
  %155 = and i64 255, %152
  %156 = trunc i64 %155 to i32
  store i64 %155, i64* %RAX, align 8, !tbaa !2428
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %157, align 1, !tbaa !2432
  %158 = and i32 %156, 255
  %159 = call i32 @llvm.ctpop.i32(i32 %158) #16
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %162, i8* %163, align 1, !tbaa !2446
  %164 = icmp eq i32 %156, 0
  %165 = zext i1 %164 to i8
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %165, i8* %166, align 1, !tbaa !2448
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %167, align 1, !tbaa !2449
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %168, align 1, !tbaa !2450
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %169, align 1, !tbaa !2447
  %170 = load i64, i64* %RBP
  %171 = sub i64 %170, 28
  %172 = load i32, i32* %EAX
  %173 = zext i32 %172 to i64
  %174 = load i64, i64* %PC
  %175 = add i64 %174, 3
  store i64 %175, i64* %PC
  %176 = inttoptr i64 %171 to i32*
  store i32 %172, i32* %176
  %177 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %178 = load i64, i64* %RBP
  %179 = sub i64 %178, 16
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 5
  store i64 %181, i64* %PC
  %182 = inttoptr i64 %179 to double*
  %183 = load double, double* %182
  %184 = bitcast i8* %177 to double*
  store double %183, double* %184, align 1, !tbaa !2451
  %185 = getelementptr inbounds i8, i8* %177, i64 8
  %186 = bitcast i8* %185 to double*
  store double 0.000000e+00, double* %186, align 1, !tbaa !2451
  %187 = load i64, i64* %PC
  %188 = sub i64 %187, 677
  %189 = load i64, i64* %PC
  %190 = add i64 %189, 5
  %191 = load i64, i64* %PC
  %192 = add i64 %191, 5
  store i64 %192, i64* %PC
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %194 = load i64, i64* %193, align 8, !tbaa !2428
  %195 = add i64 %194, -8
  %196 = inttoptr i64 %195 to i64*
  store i64 %190, i64* %196
  store i64 %195, i64* %193, align 8, !tbaa !2428
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %188, i64* %197, align 8, !tbaa !2428
  %198 = load i64, i64* %PC
  %199 = call %struct.Memory* @ext_602c78_floor(%struct.State* %0, i64 %198, %struct.Memory* %140)
  %200 = bitcast %union.vec128_t* %XMM0 to i8*
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 4
  store i64 %202, i64* %PC
  %203 = bitcast i8* %200 to double*
  %204 = load double, double* %203, align 1
  %205 = call double @llvm.trunc.f64(double %204) #16
  %206 = call double @llvm.fabs.f64(double %205) #16
  %207 = fcmp ogt double %206, 0x41DFFFFFFFC00000
  %208 = fptosi double %205 to i32
  %209 = zext i32 %208 to i64
  %210 = select i1 %207, i64 2147483648, i64 %209
  store i64 %210, i64* %RAX, align 8, !tbaa !2428
  %211 = load i64, i64* %RAX
  %212 = load i64, i64* %PC
  %213 = add i64 %212, 5
  store i64 %213, i64* %PC
  %214 = and i64 255, %211
  %215 = trunc i64 %214 to i32
  store i64 %214, i64* %RAX, align 8, !tbaa !2428
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %216, align 1, !tbaa !2432
  %217 = and i32 %215, 255
  %218 = call i32 @llvm.ctpop.i32(i32 %217) #16
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = xor i8 %220, 1
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %221, i8* %222, align 1, !tbaa !2446
  %223 = icmp eq i32 %215, 0
  %224 = zext i1 %223 to i8
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %224, i8* %225, align 1, !tbaa !2448
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %226, align 1, !tbaa !2449
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %227, align 1, !tbaa !2450
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %228, align 1, !tbaa !2447
  %229 = load i64, i64* %RBP
  %230 = sub i64 %229, 32
  %231 = load i32, i32* %EAX
  %232 = zext i32 %231 to i64
  %233 = load i64, i64* %PC
  %234 = add i64 %233, 3
  store i64 %234, i64* %PC
  %235 = inttoptr i64 %230 to i32*
  store i32 %231, i32* %235
  %236 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %237 = load i64, i64* %RBP
  %238 = sub i64 %237, 24
  %239 = load i64, i64* %PC
  %240 = add i64 %239, 5
  store i64 %240, i64* %PC
  %241 = inttoptr i64 %238 to double*
  %242 = load double, double* %241
  %243 = bitcast i8* %236 to double*
  store double %242, double* %243, align 1, !tbaa !2451
  %244 = getelementptr inbounds i8, i8* %236, i64 8
  %245 = bitcast i8* %244 to double*
  store double 0.000000e+00, double* %245, align 1, !tbaa !2451
  %246 = load i64, i64* %PC
  %247 = sub i64 %246, 699
  %248 = load i64, i64* %PC
  %249 = add i64 %248, 5
  %250 = load i64, i64* %PC
  %251 = add i64 %250, 5
  store i64 %251, i64* %PC
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %253 = load i64, i64* %252, align 8, !tbaa !2428
  %254 = add i64 %253, -8
  %255 = inttoptr i64 %254 to i64*
  store i64 %249, i64* %255
  store i64 %254, i64* %252, align 8, !tbaa !2428
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %247, i64* %256, align 8, !tbaa !2428
  %257 = load i64, i64* %PC
  %258 = call %struct.Memory* @ext_602c78_floor(%struct.State* %0, i64 %257, %struct.Memory* %199)
  %259 = bitcast %union.vec128_t* %XMM0 to i8*
  %260 = load i64, i64* %PC
  %261 = add i64 %260, 4
  store i64 %261, i64* %PC
  %262 = bitcast i8* %259 to double*
  %263 = load double, double* %262, align 1
  %264 = call double @llvm.trunc.f64(double %263) #16
  %265 = call double @llvm.fabs.f64(double %264) #16
  %266 = fcmp ogt double %265, 0x41DFFFFFFFC00000
  %267 = fptosi double %264 to i32
  %268 = zext i32 %267 to i64
  %269 = select i1 %266, i64 2147483648, i64 %268
  store i64 %269, i64* %RAX, align 8, !tbaa !2428
  %270 = load i64, i64* %RAX
  %271 = load i64, i64* %PC
  %272 = add i64 %271, 5
  store i64 %272, i64* %PC
  %273 = and i64 255, %270
  %274 = trunc i64 %273 to i32
  store i64 %273, i64* %RAX, align 8, !tbaa !2428
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %275, align 1, !tbaa !2432
  %276 = and i32 %274, 255
  %277 = call i32 @llvm.ctpop.i32(i32 %276) #16
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  %280 = xor i8 %279, 1
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %280, i8* %281, align 1, !tbaa !2446
  %282 = icmp eq i32 %274, 0
  %283 = zext i1 %282 to i8
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %283, i8* %284, align 1, !tbaa !2448
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %285, align 1, !tbaa !2449
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %286, align 1, !tbaa !2450
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %287, align 1, !tbaa !2447
  %288 = load i64, i64* %RBP
  %289 = sub i64 %288, 36
  %290 = load i32, i32* %EAX
  %291 = zext i32 %290 to i64
  %292 = load i64, i64* %PC
  %293 = add i64 %292, 3
  store i64 %293, i64* %PC
  %294 = inttoptr i64 %289 to i32*
  store i32 %290, i32* %294
  %295 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %296 = load i64, i64* %RBP
  %297 = sub i64 %296, 8
  %298 = load i64, i64* %PC
  %299 = add i64 %298, 5
  store i64 %299, i64* %PC
  %300 = inttoptr i64 %297 to double*
  %301 = load double, double* %300
  %302 = bitcast i8* %295 to double*
  store double %301, double* %302, align 1, !tbaa !2451
  %303 = getelementptr inbounds i8, i8* %295, i64 8
  %304 = bitcast i8* %303 to double*
  store double 0.000000e+00, double* %304, align 1, !tbaa !2451
  %305 = load i64, i64* %PC
  %306 = sub i64 %305, 721
  %307 = load i64, i64* %PC
  %308 = add i64 %307, 5
  %309 = load i64, i64* %PC
  %310 = add i64 %309, 5
  store i64 %310, i64* %PC
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %312 = load i64, i64* %311, align 8, !tbaa !2428
  %313 = add i64 %312, -8
  %314 = inttoptr i64 %313 to i64*
  store i64 %308, i64* %314
  store i64 %313, i64* %311, align 8, !tbaa !2428
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %306, i64* %315, align 8, !tbaa !2428
  %316 = load i64, i64* %PC
  %317 = call %struct.Memory* @ext_602c78_floor(%struct.State* %0, i64 %316, %struct.Memory* %258)
  %318 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %319 = load i64, i64* %RBP
  %320 = sub i64 %319, 8
  %321 = load i64, i64* %PC
  %322 = add i64 %321, 5
  store i64 %322, i64* %PC
  %323 = inttoptr i64 %320 to double*
  %324 = load double, double* %323
  %325 = bitcast i8* %318 to double*
  store double %324, double* %325, align 1, !tbaa !2451
  %326 = getelementptr inbounds i8, i8* %318, i64 8
  %327 = bitcast i8* %326 to double*
  store double 0.000000e+00, double* %327, align 1, !tbaa !2451
  %328 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %329 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %330 = bitcast %union.vec128_t* %XMM0 to i8*
  %331 = load i64, i64* %PC
  %332 = add i64 %331, 4
  store i64 %332, i64* %PC
  %333 = bitcast i8* %329 to double*
  %334 = load double, double* %333, align 1
  %335 = getelementptr inbounds i8, i8* %329, i64 8
  %336 = bitcast i8* %335 to i64*
  %337 = load i64, i64* %336, align 1
  %338 = bitcast i8* %330 to double*
  %339 = load double, double* %338, align 1
  %340 = fsub double %334, %339
  %341 = bitcast i8* %328 to double*
  store double %340, double* %341, align 1, !tbaa !2451
  %342 = getelementptr inbounds i8, i8* %328, i64 8
  %343 = bitcast i8* %342 to i64*
  store i64 %337, i64* %343, align 1, !tbaa !2451
  %344 = load i64, i64* %RBP
  %345 = sub i64 %344, 8
  %346 = bitcast %union.vec128_t* %XMM1 to i8*
  %347 = load i64, i64* %PC
  %348 = add i64 %347, 5
  store i64 %348, i64* %PC
  %349 = bitcast i8* %346 to double*
  %350 = load double, double* %349, align 1
  %351 = inttoptr i64 %345 to double*
  store double %350, double* %351
  %352 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %353 = load i64, i64* %RBP
  %354 = sub i64 %353, 16
  %355 = load i64, i64* %PC
  %356 = add i64 %355, 5
  store i64 %356, i64* %PC
  %357 = inttoptr i64 %354 to double*
  %358 = load double, double* %357
  %359 = bitcast i8* %352 to double*
  store double %358, double* %359, align 1, !tbaa !2451
  %360 = getelementptr inbounds i8, i8* %352, i64 8
  %361 = bitcast i8* %360 to double*
  store double 0.000000e+00, double* %361, align 1, !tbaa !2451
  %362 = load i64, i64* %PC
  %363 = sub i64 %362, 745
  %364 = load i64, i64* %PC
  %365 = add i64 %364, 5
  %366 = load i64, i64* %PC
  %367 = add i64 %366, 5
  store i64 %367, i64* %PC
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %369 = load i64, i64* %368, align 8, !tbaa !2428
  %370 = add i64 %369, -8
  %371 = inttoptr i64 %370 to i64*
  store i64 %365, i64* %371
  store i64 %370, i64* %368, align 8, !tbaa !2428
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %363, i64* %372, align 8, !tbaa !2428
  %373 = load i64, i64* %PC
  %374 = call %struct.Memory* @ext_602c78_floor(%struct.State* %0, i64 %373, %struct.Memory* %317)
  %375 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %376 = load i64, i64* %RBP
  %377 = sub i64 %376, 16
  %378 = load i64, i64* %PC
  %379 = add i64 %378, 5
  store i64 %379, i64* %PC
  %380 = inttoptr i64 %377 to double*
  %381 = load double, double* %380
  %382 = bitcast i8* %375 to double*
  store double %381, double* %382, align 1, !tbaa !2451
  %383 = getelementptr inbounds i8, i8* %375, i64 8
  %384 = bitcast i8* %383 to double*
  store double 0.000000e+00, double* %384, align 1, !tbaa !2451
  %385 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %386 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %387 = bitcast %union.vec128_t* %XMM0 to i8*
  %388 = load i64, i64* %PC
  %389 = add i64 %388, 4
  store i64 %389, i64* %PC
  %390 = bitcast i8* %386 to double*
  %391 = load double, double* %390, align 1
  %392 = getelementptr inbounds i8, i8* %386, i64 8
  %393 = bitcast i8* %392 to i64*
  %394 = load i64, i64* %393, align 1
  %395 = bitcast i8* %387 to double*
  %396 = load double, double* %395, align 1
  %397 = fsub double %391, %396
  %398 = bitcast i8* %385 to double*
  store double %397, double* %398, align 1, !tbaa !2451
  %399 = getelementptr inbounds i8, i8* %385, i64 8
  %400 = bitcast i8* %399 to i64*
  store i64 %394, i64* %400, align 1, !tbaa !2451
  %401 = load i64, i64* %RBP
  %402 = sub i64 %401, 16
  %403 = bitcast %union.vec128_t* %XMM1 to i8*
  %404 = load i64, i64* %PC
  %405 = add i64 %404, 5
  store i64 %405, i64* %PC
  %406 = bitcast i8* %403 to double*
  %407 = load double, double* %406, align 1
  %408 = inttoptr i64 %402 to double*
  store double %407, double* %408
  %409 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %410 = load i64, i64* %RBP
  %411 = sub i64 %410, 24
  %412 = load i64, i64* %PC
  %413 = add i64 %412, 5
  store i64 %413, i64* %PC
  %414 = inttoptr i64 %411 to double*
  %415 = load double, double* %414
  %416 = bitcast i8* %409 to double*
  store double %415, double* %416, align 1, !tbaa !2451
  %417 = getelementptr inbounds i8, i8* %409, i64 8
  %418 = bitcast i8* %417 to double*
  store double 0.000000e+00, double* %418, align 1, !tbaa !2451
  %419 = load i64, i64* %PC
  %420 = sub i64 %419, 769
  %421 = load i64, i64* %PC
  %422 = add i64 %421, 5
  %423 = load i64, i64* %PC
  %424 = add i64 %423, 5
  store i64 %424, i64* %PC
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %426 = load i64, i64* %425, align 8, !tbaa !2428
  %427 = add i64 %426, -8
  %428 = inttoptr i64 %427 to i64*
  store i64 %422, i64* %428
  store i64 %427, i64* %425, align 8, !tbaa !2428
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %420, i64* %429, align 8, !tbaa !2428
  %430 = load i64, i64* %PC
  %431 = call %struct.Memory* @ext_602c78_floor(%struct.State* %0, i64 %430, %struct.Memory* %374)
  %432 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %433 = load i64, i64* %RBP
  %434 = sub i64 %433, 24
  %435 = load i64, i64* %PC
  %436 = add i64 %435, 5
  store i64 %436, i64* %PC
  %437 = inttoptr i64 %434 to double*
  %438 = load double, double* %437
  %439 = bitcast i8* %432 to double*
  store double %438, double* %439, align 1, !tbaa !2451
  %440 = getelementptr inbounds i8, i8* %432, i64 8
  %441 = bitcast i8* %440 to double*
  store double 0.000000e+00, double* %441, align 1, !tbaa !2451
  %442 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %443 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %444 = bitcast %union.vec128_t* %XMM0 to i8*
  %445 = load i64, i64* %PC
  %446 = add i64 %445, 4
  store i64 %446, i64* %PC
  %447 = bitcast i8* %443 to double*
  %448 = load double, double* %447, align 1
  %449 = getelementptr inbounds i8, i8* %443, i64 8
  %450 = bitcast i8* %449 to i64*
  %451 = load i64, i64* %450, align 1
  %452 = bitcast i8* %444 to double*
  %453 = load double, double* %452, align 1
  %454 = fsub double %448, %453
  %455 = bitcast i8* %442 to double*
  store double %454, double* %455, align 1, !tbaa !2451
  %456 = getelementptr inbounds i8, i8* %442, i64 8
  %457 = bitcast i8* %456 to i64*
  store i64 %451, i64* %457, align 1, !tbaa !2451
  %458 = load i64, i64* %RBP
  %459 = sub i64 %458, 24
  %460 = bitcast %union.vec128_t* %XMM1 to i8*
  %461 = load i64, i64* %PC
  %462 = add i64 %461, 5
  store i64 %462, i64* %PC
  %463 = bitcast i8* %460 to double*
  %464 = load double, double* %463, align 1
  %465 = inttoptr i64 %459 to double*
  store double %464, double* %465
  %466 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %467 = load i64, i64* %RBP
  %468 = sub i64 %467, 8
  %469 = load i64, i64* %PC
  %470 = add i64 %469, 5
  store i64 %470, i64* %PC
  %471 = inttoptr i64 %468 to double*
  %472 = load double, double* %471
  %473 = bitcast i8* %466 to double*
  store double %472, double* %473, align 1, !tbaa !2451
  %474 = getelementptr inbounds i8, i8* %466, i64 8
  %475 = bitcast i8* %474 to double*
  store double 0.000000e+00, double* %475, align 1, !tbaa !2451
  %476 = load i64, i64* %PC
  %477 = add i64 %476, 1047
  %478 = load i64, i64* %PC
  %479 = add i64 %478, 5
  %480 = load i64, i64* %PC
  %481 = add i64 %480, 5
  store i64 %481, i64* %PC
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %483 = load i64, i64* %482, align 8, !tbaa !2428
  %484 = add i64 %483, -8
  %485 = inttoptr i64 %484 to i64*
  store i64 %479, i64* %485
  store i64 %484, i64* %482, align 8, !tbaa !2428
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %477, i64* %486, align 8, !tbaa !2428
  %487 = load i64, i64* %PC
  %488 = call %struct.Memory* @sub_400ba0_fade(%struct.State* %0, i64 %487, %struct.Memory* %431)
  %489 = load i64, i64* %RBP
  %490 = sub i64 %489, 48
  %491 = bitcast %union.vec128_t* %XMM0 to i8*
  %492 = load i64, i64* %PC
  %493 = add i64 %492, 5
  store i64 %493, i64* %PC
  %494 = bitcast i8* %491 to double*
  %495 = load double, double* %494, align 1
  %496 = inttoptr i64 %490 to double*
  store double %495, double* %496
  %497 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %498 = load i64, i64* %RBP
  %499 = sub i64 %498, 16
  %500 = load i64, i64* %PC
  %501 = add i64 %500, 5
  store i64 %501, i64* %PC
  %502 = inttoptr i64 %499 to double*
  %503 = load double, double* %502
  %504 = bitcast i8* %497 to double*
  store double %503, double* %504, align 1, !tbaa !2451
  %505 = getelementptr inbounds i8, i8* %497, i64 8
  %506 = bitcast i8* %505 to double*
  store double 0.000000e+00, double* %506, align 1, !tbaa !2451
  %507 = load i64, i64* %PC
  %508 = add i64 %507, 1032
  %509 = load i64, i64* %PC
  %510 = add i64 %509, 5
  %511 = load i64, i64* %PC
  %512 = add i64 %511, 5
  store i64 %512, i64* %PC
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %514 = load i64, i64* %513, align 8, !tbaa !2428
  %515 = add i64 %514, -8
  %516 = inttoptr i64 %515 to i64*
  store i64 %510, i64* %516
  store i64 %515, i64* %513, align 8, !tbaa !2428
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %508, i64* %517, align 8, !tbaa !2428
  %518 = load i64, i64* %PC
  %519 = call %struct.Memory* @sub_400ba0_fade(%struct.State* %0, i64 %518, %struct.Memory* %488)
  %520 = load i64, i64* %RBP
  %521 = sub i64 %520, 56
  %522 = bitcast %union.vec128_t* %XMM0 to i8*
  %523 = load i64, i64* %PC
  %524 = add i64 %523, 5
  store i64 %524, i64* %PC
  %525 = bitcast i8* %522 to double*
  %526 = load double, double* %525, align 1
  %527 = inttoptr i64 %521 to double*
  store double %526, double* %527
  %528 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %529 = load i64, i64* %RBP
  %530 = sub i64 %529, 24
  %531 = load i64, i64* %PC
  %532 = add i64 %531, 5
  store i64 %532, i64* %PC
  %533 = inttoptr i64 %530 to double*
  %534 = load double, double* %533
  %535 = bitcast i8* %528 to double*
  store double %534, double* %535, align 1, !tbaa !2451
  %536 = getelementptr inbounds i8, i8* %528, i64 8
  %537 = bitcast i8* %536 to double*
  store double 0.000000e+00, double* %537, align 1, !tbaa !2451
  %538 = load i64, i64* %PC
  %539 = add i64 %538, 1017
  %540 = load i64, i64* %PC
  %541 = add i64 %540, 5
  %542 = load i64, i64* %PC
  %543 = add i64 %542, 5
  store i64 %543, i64* %PC
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %545 = load i64, i64* %544, align 8, !tbaa !2428
  %546 = add i64 %545, -8
  %547 = inttoptr i64 %546 to i64*
  store i64 %541, i64* %547
  store i64 %546, i64* %544, align 8, !tbaa !2428
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %539, i64* %548, align 8, !tbaa !2428
  %549 = load i64, i64* %PC
  %550 = call %struct.Memory* @sub_400ba0_fade(%struct.State* %0, i64 %549, %struct.Memory* %519)
  %551 = load i64, i64* %RBP
  %552 = sub i64 %551, 64
  %553 = bitcast %union.vec128_t* %XMM0 to i8*
  %554 = load i64, i64* %PC
  %555 = add i64 %554, 5
  store i64 %555, i64* %PC
  %556 = bitcast i8* %553 to double*
  %557 = load double, double* %556, align 1
  %558 = inttoptr i64 %552 to double*
  store double %557, double* %558
  %559 = load i64, i64* %RBP
  %560 = sub i64 %559, 28
  %561 = load i64, i64* %PC
  %562 = add i64 %561, 4
  store i64 %562, i64* %PC
  %563 = inttoptr i64 %560 to i32*
  %564 = load i32, i32* %563
  %565 = sext i32 %564 to i64
  store i64 %565, i64* %RCX, align 8, !tbaa !2428
  %566 = load i64, i64* %RCX
  %567 = mul i64 %566, 4
  %568 = add i64 %567, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
  %569 = load i64, i64* %PC
  %570 = add i64 %569, 7
  store i64 %570, i64* %PC
  %571 = inttoptr i64 %568 to i32*
  %572 = load i32, i32* %571
  %573 = zext i32 %572 to i64
  store i64 %573, i64* %RAX, align 8, !tbaa !2428
  %574 = load i64, i64* %RAX
  %575 = load i64, i64* %RBP
  %576 = sub i64 %575, 32
  %577 = load i64, i64* %PC
  %578 = add i64 %577, 3
  store i64 %578, i64* %PC
  %579 = trunc i64 %574 to i32
  %580 = inttoptr i64 %576 to i32*
  %581 = load i32, i32* %580
  %582 = add i32 %581, %579
  %583 = zext i32 %582 to i64
  store i64 %583, i64* %RAX, align 8, !tbaa !2428
  %584 = icmp ult i32 %582, %579
  %585 = icmp ult i32 %582, %581
  %586 = or i1 %584, %585
  %587 = zext i1 %586 to i8
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %587, i8* %588, align 1, !tbaa !2432
  %589 = and i32 %582, 255
  %590 = call i32 @llvm.ctpop.i32(i32 %589) #16
  %591 = trunc i32 %590 to i8
  %592 = and i8 %591, 1
  %593 = xor i8 %592, 1
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %593, i8* %594, align 1, !tbaa !2446
  %595 = xor i32 %581, %579
  %596 = xor i32 %595, %582
  %597 = lshr i32 %596, 4
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %599, i8* %600, align 1, !tbaa !2447
  %601 = icmp eq i32 %582, 0
  %602 = zext i1 %601 to i8
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %602, i8* %603, align 1, !tbaa !2448
  %604 = lshr i32 %582, 31
  %605 = trunc i32 %604 to i8
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %605, i8* %606, align 1, !tbaa !2449
  %607 = lshr i32 %579, 31
  %608 = lshr i32 %581, 31
  %609 = xor i32 %604, %607
  %610 = xor i32 %604, %608
  %611 = add nuw nsw i32 %609, %610
  %612 = icmp eq i32 %611, 2
  %613 = zext i1 %612 to i8
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %613, i8* %614, align 1, !tbaa !2450
  %615 = load i64, i64* %RBP
  %616 = sub i64 %615, 68
  %617 = load i32, i32* %EAX
  %618 = zext i32 %617 to i64
  %619 = load i64, i64* %PC
  %620 = add i64 %619, 3
  store i64 %620, i64* %PC
  %621 = inttoptr i64 %616 to i32*
  store i32 %617, i32* %621
  %622 = load i64, i64* %RBP
  %623 = sub i64 %622, 68
  %624 = load i64, i64* %PC
  %625 = add i64 %624, 4
  store i64 %625, i64* %PC
  %626 = inttoptr i64 %623 to i32*
  %627 = load i32, i32* %626
  %628 = sext i32 %627 to i64
  store i64 %628, i64* %RCX, align 8, !tbaa !2428
  %629 = load i64, i64* %RCX
  %630 = mul i64 %629, 4
  %631 = add i64 %630, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
  %632 = load i64, i64* %PC
  %633 = add i64 %632, 7
  store i64 %633, i64* %PC
  %634 = inttoptr i64 %631 to i32*
  %635 = load i32, i32* %634
  %636 = zext i32 %635 to i64
  store i64 %636, i64* %RAX, align 8, !tbaa !2428
  %637 = load i64, i64* %RAX
  %638 = load i64, i64* %RBP
  %639 = sub i64 %638, 36
  %640 = load i64, i64* %PC
  %641 = add i64 %640, 3
  store i64 %641, i64* %PC
  %642 = trunc i64 %637 to i32
  %643 = inttoptr i64 %639 to i32*
  %644 = load i32, i32* %643
  %645 = add i32 %644, %642
  %646 = zext i32 %645 to i64
  store i64 %646, i64* %RAX, align 8, !tbaa !2428
  %647 = icmp ult i32 %645, %642
  %648 = icmp ult i32 %645, %644
  %649 = or i1 %647, %648
  %650 = zext i1 %649 to i8
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %650, i8* %651, align 1, !tbaa !2432
  %652 = and i32 %645, 255
  %653 = call i32 @llvm.ctpop.i32(i32 %652) #16
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  %656 = xor i8 %655, 1
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %656, i8* %657, align 1, !tbaa !2446
  %658 = xor i32 %644, %642
  %659 = xor i32 %658, %645
  %660 = lshr i32 %659, 4
  %661 = trunc i32 %660 to i8
  %662 = and i8 %661, 1
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %662, i8* %663, align 1, !tbaa !2447
  %664 = icmp eq i32 %645, 0
  %665 = zext i1 %664 to i8
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %665, i8* %666, align 1, !tbaa !2448
  %667 = lshr i32 %645, 31
  %668 = trunc i32 %667 to i8
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %668, i8* %669, align 1, !tbaa !2449
  %670 = lshr i32 %642, 31
  %671 = lshr i32 %644, 31
  %672 = xor i32 %667, %670
  %673 = xor i32 %667, %671
  %674 = add nuw nsw i32 %672, %673
  %675 = icmp eq i32 %674, 2
  %676 = zext i1 %675 to i8
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %676, i8* %677, align 1, !tbaa !2450
  %678 = load i64, i64* %RBP
  %679 = sub i64 %678, 72
  %680 = load i32, i32* %EAX
  %681 = zext i32 %680 to i64
  %682 = load i64, i64* %PC
  %683 = add i64 %682, 3
  store i64 %683, i64* %PC
  %684 = inttoptr i64 %679 to i32*
  store i32 %680, i32* %684
  %685 = load i64, i64* %RBP
  %686 = sub i64 %685, 68
  %687 = load i64, i64* %PC
  %688 = add i64 %687, 3
  store i64 %688, i64* %PC
  %689 = inttoptr i64 %686 to i32*
  %690 = load i32, i32* %689
  %691 = zext i32 %690 to i64
  store i64 %691, i64* %RAX, align 8, !tbaa !2428
  %692 = load i64, i64* %RAX
  %693 = load i64, i64* %PC
  %694 = add i64 %693, 3
  store i64 %694, i64* %PC
  %695 = trunc i64 %692 to i32
  %696 = add i32 1, %695
  %697 = zext i32 %696 to i64
  store i64 %697, i64* %RAX, align 8, !tbaa !2428
  %698 = icmp ult i32 %696, %695
  %699 = icmp ult i32 %696, 1
  %700 = or i1 %698, %699
  %701 = zext i1 %700 to i8
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %701, i8* %702, align 1, !tbaa !2432
  %703 = and i32 %696, 255
  %704 = call i32 @llvm.ctpop.i32(i32 %703) #16
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  %707 = xor i8 %706, 1
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %707, i8* %708, align 1, !tbaa !2446
  %709 = xor i64 1, %692
  %710 = trunc i64 %709 to i32
  %711 = xor i32 %710, %696
  %712 = lshr i32 %711, 4
  %713 = trunc i32 %712 to i8
  %714 = and i8 %713, 1
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %714, i8* %715, align 1, !tbaa !2447
  %716 = icmp eq i32 %696, 0
  %717 = zext i1 %716 to i8
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %717, i8* %718, align 1, !tbaa !2448
  %719 = lshr i32 %696, 31
  %720 = trunc i32 %719 to i8
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %720, i8* %721, align 1, !tbaa !2449
  %722 = lshr i32 %695, 31
  %723 = xor i32 %719, %722
  %724 = add nuw nsw i32 %723, %719
  %725 = icmp eq i32 %724, 2
  %726 = zext i1 %725 to i8
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %726, i8* %727, align 1, !tbaa !2450
  %728 = load i32, i32* %EAX
  %729 = zext i32 %728 to i64
  %730 = load i64, i64* %PC
  %731 = add i64 %730, 3
  store i64 %731, i64* %PC
  %732 = shl i64 %729, 32
  %733 = ashr exact i64 %732, 32
  store i64 %733, i64* %RCX, align 8, !tbaa !2428
  %734 = load i64, i64* %RCX
  %735 = mul i64 %734, 4
  %736 = add i64 %735, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
  %737 = load i64, i64* %PC
  %738 = add i64 %737, 7
  store i64 %738, i64* %PC
  %739 = inttoptr i64 %736 to i32*
  %740 = load i32, i32* %739
  %741 = zext i32 %740 to i64
  store i64 %741, i64* %RAX, align 8, !tbaa !2428
  %742 = load i64, i64* %RAX
  %743 = load i64, i64* %RBP
  %744 = sub i64 %743, 36
  %745 = load i64, i64* %PC
  %746 = add i64 %745, 3
  store i64 %746, i64* %PC
  %747 = trunc i64 %742 to i32
  %748 = inttoptr i64 %744 to i32*
  %749 = load i32, i32* %748
  %750 = add i32 %749, %747
  %751 = zext i32 %750 to i64
  store i64 %751, i64* %RAX, align 8, !tbaa !2428
  %752 = icmp ult i32 %750, %747
  %753 = icmp ult i32 %750, %749
  %754 = or i1 %752, %753
  %755 = zext i1 %754 to i8
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %755, i8* %756, align 1, !tbaa !2432
  %757 = and i32 %750, 255
  %758 = call i32 @llvm.ctpop.i32(i32 %757) #16
  %759 = trunc i32 %758 to i8
  %760 = and i8 %759, 1
  %761 = xor i8 %760, 1
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %761, i8* %762, align 1, !tbaa !2446
  %763 = xor i32 %749, %747
  %764 = xor i32 %763, %750
  %765 = lshr i32 %764, 4
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %767, i8* %768, align 1, !tbaa !2447
  %769 = icmp eq i32 %750, 0
  %770 = zext i1 %769 to i8
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %770, i8* %771, align 1, !tbaa !2448
  %772 = lshr i32 %750, 31
  %773 = trunc i32 %772 to i8
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %773, i8* %774, align 1, !tbaa !2449
  %775 = lshr i32 %747, 31
  %776 = lshr i32 %749, 31
  %777 = xor i32 %772, %775
  %778 = xor i32 %772, %776
  %779 = add nuw nsw i32 %777, %778
  %780 = icmp eq i32 %779, 2
  %781 = zext i1 %780 to i8
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %781, i8* %782, align 1, !tbaa !2450
  %783 = load i64, i64* %RBP
  %784 = sub i64 %783, 76
  %785 = load i32, i32* %EAX
  %786 = zext i32 %785 to i64
  %787 = load i64, i64* %PC
  %788 = add i64 %787, 3
  store i64 %788, i64* %PC
  %789 = inttoptr i64 %784 to i32*
  store i32 %785, i32* %789
  %790 = load i64, i64* %RBP
  %791 = sub i64 %790, 28
  %792 = load i64, i64* %PC
  %793 = add i64 %792, 3
  store i64 %793, i64* %PC
  %794 = inttoptr i64 %791 to i32*
  %795 = load i32, i32* %794
  %796 = zext i32 %795 to i64
  store i64 %796, i64* %RAX, align 8, !tbaa !2428
  %797 = load i64, i64* %RAX
  %798 = load i64, i64* %PC
  %799 = add i64 %798, 3
  store i64 %799, i64* %PC
  %800 = trunc i64 %797 to i32
  %801 = add i32 1, %800
  %802 = zext i32 %801 to i64
  store i64 %802, i64* %RAX, align 8, !tbaa !2428
  %803 = icmp ult i32 %801, %800
  %804 = icmp ult i32 %801, 1
  %805 = or i1 %803, %804
  %806 = zext i1 %805 to i8
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %806, i8* %807, align 1, !tbaa !2432
  %808 = and i32 %801, 255
  %809 = call i32 @llvm.ctpop.i32(i32 %808) #16
  %810 = trunc i32 %809 to i8
  %811 = and i8 %810, 1
  %812 = xor i8 %811, 1
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %812, i8* %813, align 1, !tbaa !2446
  %814 = xor i64 1, %797
  %815 = trunc i64 %814 to i32
  %816 = xor i32 %815, %801
  %817 = lshr i32 %816, 4
  %818 = trunc i32 %817 to i8
  %819 = and i8 %818, 1
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %819, i8* %820, align 1, !tbaa !2447
  %821 = icmp eq i32 %801, 0
  %822 = zext i1 %821 to i8
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %822, i8* %823, align 1, !tbaa !2448
  %824 = lshr i32 %801, 31
  %825 = trunc i32 %824 to i8
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %825, i8* %826, align 1, !tbaa !2449
  %827 = lshr i32 %800, 31
  %828 = xor i32 %824, %827
  %829 = add nuw nsw i32 %828, %824
  %830 = icmp eq i32 %829, 2
  %831 = zext i1 %830 to i8
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %831, i8* %832, align 1, !tbaa !2450
  %833 = load i32, i32* %EAX
  %834 = zext i32 %833 to i64
  %835 = load i64, i64* %PC
  %836 = add i64 %835, 3
  store i64 %836, i64* %PC
  %837 = shl i64 %834, 32
  %838 = ashr exact i64 %837, 32
  store i64 %838, i64* %RCX, align 8, !tbaa !2428
  %839 = load i64, i64* %RCX
  %840 = mul i64 %839, 4
  %841 = add i64 %840, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
  %842 = load i64, i64* %PC
  %843 = add i64 %842, 7
  store i64 %843, i64* %PC
  %844 = inttoptr i64 %841 to i32*
  %845 = load i32, i32* %844
  %846 = zext i32 %845 to i64
  store i64 %846, i64* %RAX, align 8, !tbaa !2428
  %847 = load i64, i64* %RAX
  %848 = load i64, i64* %RBP
  %849 = sub i64 %848, 32
  %850 = load i64, i64* %PC
  %851 = add i64 %850, 3
  store i64 %851, i64* %PC
  %852 = trunc i64 %847 to i32
  %853 = inttoptr i64 %849 to i32*
  %854 = load i32, i32* %853
  %855 = add i32 %854, %852
  %856 = zext i32 %855 to i64
  store i64 %856, i64* %RAX, align 8, !tbaa !2428
  %857 = icmp ult i32 %855, %852
  %858 = icmp ult i32 %855, %854
  %859 = or i1 %857, %858
  %860 = zext i1 %859 to i8
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %860, i8* %861, align 1, !tbaa !2432
  %862 = and i32 %855, 255
  %863 = call i32 @llvm.ctpop.i32(i32 %862) #16
  %864 = trunc i32 %863 to i8
  %865 = and i8 %864, 1
  %866 = xor i8 %865, 1
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %866, i8* %867, align 1, !tbaa !2446
  %868 = xor i32 %854, %852
  %869 = xor i32 %868, %855
  %870 = lshr i32 %869, 4
  %871 = trunc i32 %870 to i8
  %872 = and i8 %871, 1
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %872, i8* %873, align 1, !tbaa !2447
  %874 = icmp eq i32 %855, 0
  %875 = zext i1 %874 to i8
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %875, i8* %876, align 1, !tbaa !2448
  %877 = lshr i32 %855, 31
  %878 = trunc i32 %877 to i8
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %878, i8* %879, align 1, !tbaa !2449
  %880 = lshr i32 %852, 31
  %881 = lshr i32 %854, 31
  %882 = xor i32 %877, %880
  %883 = xor i32 %877, %881
  %884 = add nuw nsw i32 %882, %883
  %885 = icmp eq i32 %884, 2
  %886 = zext i1 %885 to i8
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %886, i8* %887, align 1, !tbaa !2450
  %888 = load i64, i64* %RBP
  %889 = sub i64 %888, 80
  %890 = load i32, i32* %EAX
  %891 = zext i32 %890 to i64
  %892 = load i64, i64* %PC
  %893 = add i64 %892, 3
  store i64 %893, i64* %PC
  %894 = inttoptr i64 %889 to i32*
  store i32 %890, i32* %894
  %895 = load i64, i64* %RBP
  %896 = sub i64 %895, 80
  %897 = load i64, i64* %PC
  %898 = add i64 %897, 4
  store i64 %898, i64* %PC
  %899 = inttoptr i64 %896 to i32*
  %900 = load i32, i32* %899
  %901 = sext i32 %900 to i64
  store i64 %901, i64* %RCX, align 8, !tbaa !2428
  %902 = load i64, i64* %RCX
  %903 = mul i64 %902, 4
  %904 = add i64 %903, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
  %905 = load i64, i64* %PC
  %906 = add i64 %905, 7
  store i64 %906, i64* %PC
  %907 = inttoptr i64 %904 to i32*
  %908 = load i32, i32* %907
  %909 = zext i32 %908 to i64
  store i64 %909, i64* %RAX, align 8, !tbaa !2428
  %910 = load i64, i64* %RAX
  %911 = load i64, i64* %RBP
  %912 = sub i64 %911, 36
  %913 = load i64, i64* %PC
  %914 = add i64 %913, 3
  store i64 %914, i64* %PC
  %915 = trunc i64 %910 to i32
  %916 = inttoptr i64 %912 to i32*
  %917 = load i32, i32* %916
  %918 = add i32 %917, %915
  %919 = zext i32 %918 to i64
  store i64 %919, i64* %RAX, align 8, !tbaa !2428
  %920 = icmp ult i32 %918, %915
  %921 = icmp ult i32 %918, %917
  %922 = or i1 %920, %921
  %923 = zext i1 %922 to i8
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %923, i8* %924, align 1, !tbaa !2432
  %925 = and i32 %918, 255
  %926 = call i32 @llvm.ctpop.i32(i32 %925) #16
  %927 = trunc i32 %926 to i8
  %928 = and i8 %927, 1
  %929 = xor i8 %928, 1
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %929, i8* %930, align 1, !tbaa !2446
  %931 = xor i32 %917, %915
  %932 = xor i32 %931, %918
  %933 = lshr i32 %932, 4
  %934 = trunc i32 %933 to i8
  %935 = and i8 %934, 1
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %935, i8* %936, align 1, !tbaa !2447
  %937 = icmp eq i32 %918, 0
  %938 = zext i1 %937 to i8
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %938, i8* %939, align 1, !tbaa !2448
  %940 = lshr i32 %918, 31
  %941 = trunc i32 %940 to i8
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %941, i8* %942, align 1, !tbaa !2449
  %943 = lshr i32 %915, 31
  %944 = lshr i32 %917, 31
  %945 = xor i32 %940, %943
  %946 = xor i32 %940, %944
  %947 = add nuw nsw i32 %945, %946
  %948 = icmp eq i32 %947, 2
  %949 = zext i1 %948 to i8
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %949, i8* %950, align 1, !tbaa !2450
  %951 = load i64, i64* %RBP
  %952 = sub i64 %951, 84
  %953 = load i32, i32* %EAX
  %954 = zext i32 %953 to i64
  %955 = load i64, i64* %PC
  %956 = add i64 %955, 3
  store i64 %956, i64* %PC
  %957 = inttoptr i64 %952 to i32*
  store i32 %953, i32* %957
  %958 = load i64, i64* %RBP
  %959 = sub i64 %958, 80
  %960 = load i64, i64* %PC
  %961 = add i64 %960, 3
  store i64 %961, i64* %PC
  %962 = inttoptr i64 %959 to i32*
  %963 = load i32, i32* %962
  %964 = zext i32 %963 to i64
  store i64 %964, i64* %RAX, align 8, !tbaa !2428
  %965 = load i64, i64* %RAX
  %966 = load i64, i64* %PC
  %967 = add i64 %966, 3
  store i64 %967, i64* %PC
  %968 = trunc i64 %965 to i32
  %969 = add i32 1, %968
  %970 = zext i32 %969 to i64
  store i64 %970, i64* %RAX, align 8, !tbaa !2428
  %971 = icmp ult i32 %969, %968
  %972 = icmp ult i32 %969, 1
  %973 = or i1 %971, %972
  %974 = zext i1 %973 to i8
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %974, i8* %975, align 1, !tbaa !2432
  %976 = and i32 %969, 255
  %977 = call i32 @llvm.ctpop.i32(i32 %976) #16
  %978 = trunc i32 %977 to i8
  %979 = and i8 %978, 1
  %980 = xor i8 %979, 1
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %980, i8* %981, align 1, !tbaa !2446
  %982 = xor i64 1, %965
  %983 = trunc i64 %982 to i32
  %984 = xor i32 %983, %969
  %985 = lshr i32 %984, 4
  %986 = trunc i32 %985 to i8
  %987 = and i8 %986, 1
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %987, i8* %988, align 1, !tbaa !2447
  %989 = icmp eq i32 %969, 0
  %990 = zext i1 %989 to i8
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %990, i8* %991, align 1, !tbaa !2448
  %992 = lshr i32 %969, 31
  %993 = trunc i32 %992 to i8
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %993, i8* %994, align 1, !tbaa !2449
  %995 = lshr i32 %968, 31
  %996 = xor i32 %992, %995
  %997 = add nuw nsw i32 %996, %992
  %998 = icmp eq i32 %997, 2
  %999 = zext i1 %998 to i8
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %999, i8* %1000, align 1, !tbaa !2450
  %1001 = load i32, i32* %EAX
  %1002 = zext i32 %1001 to i64
  %1003 = load i64, i64* %PC
  %1004 = add i64 %1003, 3
  store i64 %1004, i64* %PC
  %1005 = shl i64 %1002, 32
  %1006 = ashr exact i64 %1005, 32
  store i64 %1006, i64* %RCX, align 8, !tbaa !2428
  %1007 = load i64, i64* %RCX
  %1008 = mul i64 %1007, 4
  %1009 = add i64 %1008, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
  %1010 = load i64, i64* %PC
  %1011 = add i64 %1010, 7
  store i64 %1011, i64* %PC
  %1012 = inttoptr i64 %1009 to i32*
  %1013 = load i32, i32* %1012
  %1014 = zext i32 %1013 to i64
  store i64 %1014, i64* %RAX, align 8, !tbaa !2428
  %1015 = load i64, i64* %RAX
  %1016 = load i64, i64* %RBP
  %1017 = sub i64 %1016, 36
  %1018 = load i64, i64* %PC
  %1019 = add i64 %1018, 3
  store i64 %1019, i64* %PC
  %1020 = trunc i64 %1015 to i32
  %1021 = inttoptr i64 %1017 to i32*
  %1022 = load i32, i32* %1021
  %1023 = add i32 %1022, %1020
  %1024 = zext i32 %1023 to i64
  store i64 %1024, i64* %RAX, align 8, !tbaa !2428
  %1025 = icmp ult i32 %1023, %1020
  %1026 = icmp ult i32 %1023, %1022
  %1027 = or i1 %1025, %1026
  %1028 = zext i1 %1027 to i8
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1028, i8* %1029, align 1, !tbaa !2432
  %1030 = and i32 %1023, 255
  %1031 = call i32 @llvm.ctpop.i32(i32 %1030) #16
  %1032 = trunc i32 %1031 to i8
  %1033 = and i8 %1032, 1
  %1034 = xor i8 %1033, 1
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1034, i8* %1035, align 1, !tbaa !2446
  %1036 = xor i32 %1022, %1020
  %1037 = xor i32 %1036, %1023
  %1038 = lshr i32 %1037, 4
  %1039 = trunc i32 %1038 to i8
  %1040 = and i8 %1039, 1
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1040, i8* %1041, align 1, !tbaa !2447
  %1042 = icmp eq i32 %1023, 0
  %1043 = zext i1 %1042 to i8
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1043, i8* %1044, align 1, !tbaa !2448
  %1045 = lshr i32 %1023, 31
  %1046 = trunc i32 %1045 to i8
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1046, i8* %1047, align 1, !tbaa !2449
  %1048 = lshr i32 %1020, 31
  %1049 = lshr i32 %1022, 31
  %1050 = xor i32 %1045, %1048
  %1051 = xor i32 %1045, %1049
  %1052 = add nuw nsw i32 %1050, %1051
  %1053 = icmp eq i32 %1052, 2
  %1054 = zext i1 %1053 to i8
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1054, i8* %1055, align 1, !tbaa !2450
  %1056 = load i64, i64* %RBP
  %1057 = sub i64 %1056, 88
  %1058 = load i32, i32* %EAX
  %1059 = zext i32 %1058 to i64
  %1060 = load i64, i64* %PC
  %1061 = add i64 %1060, 3
  store i64 %1061, i64* %PC
  %1062 = inttoptr i64 %1057 to i32*
  store i32 %1058, i32* %1062
  %1063 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1064 = load i64, i64* %RBP
  %1065 = sub i64 %1064, 64
  %1066 = load i64, i64* %PC
  %1067 = add i64 %1066, 5
  store i64 %1067, i64* %PC
  %1068 = inttoptr i64 %1065 to double*
  %1069 = load double, double* %1068
  %1070 = bitcast i8* %1063 to double*
  store double %1069, double* %1070, align 1, !tbaa !2451
  %1071 = getelementptr inbounds i8, i8* %1063, i64 8
  %1072 = bitcast i8* %1071 to double*
  store double 0.000000e+00, double* %1072, align 1, !tbaa !2451
  %1073 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1074 = load i64, i64* %RBP
  %1075 = sub i64 %1074, 56
  %1076 = load i64, i64* %PC
  %1077 = add i64 %1076, 5
  store i64 %1077, i64* %PC
  %1078 = inttoptr i64 %1075 to double*
  %1079 = load double, double* %1078
  %1080 = bitcast i8* %1073 to double*
  store double %1079, double* %1080, align 1, !tbaa !2451
  %1081 = getelementptr inbounds i8, i8* %1073, i64 8
  %1082 = bitcast i8* %1081 to double*
  store double 0.000000e+00, double* %1082, align 1, !tbaa !2451
  %1083 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1084 = load i64, i64* %RBP
  %1085 = sub i64 %1084, 48
  %1086 = load i64, i64* %PC
  %1087 = add i64 %1086, 5
  store i64 %1087, i64* %PC
  %1088 = inttoptr i64 %1085 to double*
  %1089 = load double, double* %1088
  %1090 = bitcast i8* %1083 to double*
  store double %1089, double* %1090, align 1, !tbaa !2451
  %1091 = getelementptr inbounds i8, i8* %1083, i64 8
  %1092 = bitcast i8* %1091 to double*
  store double 0.000000e+00, double* %1092, align 1, !tbaa !2451
  %1093 = load i64, i64* %RBP
  %1094 = sub i64 %1093, 72
  %1095 = load i64, i64* %PC
  %1096 = add i64 %1095, 4
  store i64 %1096, i64* %PC
  %1097 = inttoptr i64 %1094 to i32*
  %1098 = load i32, i32* %1097
  %1099 = sext i32 %1098 to i64
  store i64 %1099, i64* %RCX, align 8, !tbaa !2428
  %1100 = load i64, i64* %RCX
  %1101 = mul i64 %1100, 4
  %1102 = add i64 %1101, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
  %1103 = load i64, i64* %PC
  %1104 = add i64 %1103, 7
  store i64 %1104, i64* %PC
  %1105 = inttoptr i64 %1102 to i32*
  %1106 = load i32, i32* %1105
  %1107 = zext i32 %1106 to i64
  store i64 %1107, i64* %RDI, align 8, !tbaa !2428
  %1108 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %1109 = load i64, i64* %RBP
  %1110 = sub i64 %1109, 8
  %1111 = load i64, i64* %PC
  %1112 = add i64 %1111, 5
  store i64 %1112, i64* %PC
  %1113 = inttoptr i64 %1110 to double*
  %1114 = load double, double* %1113
  %1115 = bitcast i8* %1108 to double*
  store double %1114, double* %1115, align 1, !tbaa !2451
  %1116 = getelementptr inbounds i8, i8* %1108, i64 8
  %1117 = bitcast i8* %1116 to double*
  store double 0.000000e+00, double* %1117, align 1, !tbaa !2451
  %1118 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %1119 = load i64, i64* %RBP
  %1120 = sub i64 %1119, 16
  %1121 = load i64, i64* %PC
  %1122 = add i64 %1121, 5
  store i64 %1122, i64* %PC
  %1123 = inttoptr i64 %1120 to double*
  %1124 = load double, double* %1123
  %1125 = bitcast i8* %1118 to double*
  store double %1124, double* %1125, align 1, !tbaa !2451
  %1126 = getelementptr inbounds i8, i8* %1118, i64 8
  %1127 = bitcast i8* %1126 to double*
  store double 0.000000e+00, double* %1127, align 1, !tbaa !2451
  %1128 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %1129 = load i64, i64* %RBP
  %1130 = sub i64 %1129, 24
  %1131 = load i64, i64* %PC
  %1132 = add i64 %1131, 5
  store i64 %1132, i64* %PC
  %1133 = inttoptr i64 %1130 to double*
  %1134 = load double, double* %1133
  %1135 = bitcast i8* %1128 to double*
  store double %1134, double* %1135, align 1, !tbaa !2451
  %1136 = getelementptr inbounds i8, i8* %1128, i64 8
  %1137 = bitcast i8* %1136 to double*
  store double 0.000000e+00, double* %1137, align 1, !tbaa !2451
  %1138 = load i64, i64* %RBP
  %1139 = sub i64 %1138, 96
  %1140 = bitcast %union.vec128_t* %XMM0 to i8*
  %1141 = load i64, i64* %PC
  %1142 = add i64 %1141, 5
  store i64 %1142, i64* %PC
  %1143 = bitcast i8* %1140 to double*
  %1144 = load double, double* %1143, align 1
  %1145 = inttoptr i64 %1139 to double*
  store double %1144, double* %1145
  %1146 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1147 = bitcast %union.vec128_t* %XMM3 to i8*
  %1148 = load i64, i64* %PC
  %1149 = add i64 %1148, 3
  store i64 %1149, i64* %PC
  %1150 = bitcast i8* %1147 to <2 x i32>*
  %1151 = load <2 x i32>, <2 x i32>* %1150, align 1
  %1152 = getelementptr inbounds i8, i8* %1147, i64 8
  %1153 = bitcast i8* %1152 to <2 x i32>*
  %1154 = load <2 x i32>, <2 x i32>* %1153, align 1
  %1155 = extractelement <2 x i32> %1151, i32 0
  %1156 = bitcast i8* %1146 to i32*
  store i32 %1155, i32* %1156, align 1, !tbaa !2455
  %1157 = extractelement <2 x i32> %1151, i32 1
  %1158 = getelementptr inbounds i8, i8* %1146, i64 4
  %1159 = bitcast i8* %1158 to i32*
  store i32 %1157, i32* %1159, align 1, !tbaa !2455
  %1160 = extractelement <2 x i32> %1154, i32 0
  %1161 = getelementptr inbounds i8, i8* %1146, i64 8
  %1162 = bitcast i8* %1161 to i32*
  store i32 %1160, i32* %1162, align 1, !tbaa !2455
  %1163 = extractelement <2 x i32> %1154, i32 1
  %1164 = getelementptr inbounds i8, i8* %1146, i64 12
  %1165 = bitcast i8* %1164 to i32*
  store i32 %1163, i32* %1165, align 1, !tbaa !2455
  %1166 = load i64, i64* %RBP
  %1167 = sub i64 %1166, 104
  %1168 = bitcast %union.vec128_t* %XMM1 to i8*
  %1169 = load i64, i64* %PC
  %1170 = add i64 %1169, 5
  store i64 %1170, i64* %PC
  %1171 = bitcast i8* %1168 to double*
  %1172 = load double, double* %1171, align 1
  %1173 = inttoptr i64 %1167 to double*
  store double %1172, double* %1173
  %1174 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1175 = bitcast %union.vec128_t* %XMM4 to i8*
  %1176 = load i64, i64* %PC
  %1177 = add i64 %1176, 3
  store i64 %1177, i64* %PC
  %1178 = bitcast i8* %1175 to <2 x i32>*
  %1179 = load <2 x i32>, <2 x i32>* %1178, align 1
  %1180 = getelementptr inbounds i8, i8* %1175, i64 8
  %1181 = bitcast i8* %1180 to <2 x i32>*
  %1182 = load <2 x i32>, <2 x i32>* %1181, align 1
  %1183 = extractelement <2 x i32> %1179, i32 0
  %1184 = bitcast i8* %1174 to i32*
  store i32 %1183, i32* %1184, align 1, !tbaa !2455
  %1185 = extractelement <2 x i32> %1179, i32 1
  %1186 = getelementptr inbounds i8, i8* %1174, i64 4
  %1187 = bitcast i8* %1186 to i32*
  store i32 %1185, i32* %1187, align 1, !tbaa !2455
  %1188 = extractelement <2 x i32> %1182, i32 0
  %1189 = getelementptr inbounds i8, i8* %1174, i64 8
  %1190 = bitcast i8* %1189 to i32*
  store i32 %1188, i32* %1190, align 1, !tbaa !2455
  %1191 = extractelement <2 x i32> %1182, i32 1
  %1192 = getelementptr inbounds i8, i8* %1174, i64 12
  %1193 = bitcast i8* %1192 to i32*
  store i32 %1191, i32* %1193, align 1, !tbaa !2455
  %1194 = load i64, i64* %RBP
  %1195 = sub i64 %1194, 112
  %1196 = bitcast %union.vec128_t* %XMM2 to i8*
  %1197 = load i64, i64* %PC
  %1198 = add i64 %1197, 5
  store i64 %1198, i64* %PC
  %1199 = bitcast i8* %1196 to double*
  %1200 = load double, double* %1199, align 1
  %1201 = inttoptr i64 %1195 to double*
  store double %1200, double* %1201
  %1202 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1203 = bitcast %union.vec128_t* %XMM5 to i8*
  %1204 = load i64, i64* %PC
  %1205 = add i64 %1204, 3
  store i64 %1205, i64* %PC
  %1206 = bitcast i8* %1203 to <2 x i32>*
  %1207 = load <2 x i32>, <2 x i32>* %1206, align 1
  %1208 = getelementptr inbounds i8, i8* %1203, i64 8
  %1209 = bitcast i8* %1208 to <2 x i32>*
  %1210 = load <2 x i32>, <2 x i32>* %1209, align 1
  %1211 = extractelement <2 x i32> %1207, i32 0
  %1212 = bitcast i8* %1202 to i32*
  store i32 %1211, i32* %1212, align 1, !tbaa !2455
  %1213 = extractelement <2 x i32> %1207, i32 1
  %1214 = getelementptr inbounds i8, i8* %1202, i64 4
  %1215 = bitcast i8* %1214 to i32*
  store i32 %1213, i32* %1215, align 1, !tbaa !2455
  %1216 = extractelement <2 x i32> %1210, i32 0
  %1217 = getelementptr inbounds i8, i8* %1202, i64 8
  %1218 = bitcast i8* %1217 to i32*
  store i32 %1216, i32* %1218, align 1, !tbaa !2455
  %1219 = extractelement <2 x i32> %1210, i32 1
  %1220 = getelementptr inbounds i8, i8* %1202, i64 12
  %1221 = bitcast i8* %1220 to i32*
  store i32 %1219, i32* %1221, align 1, !tbaa !2455
  %1222 = load i64, i64* %PC
  %1223 = add i64 %1222, 905
  %1224 = load i64, i64* %PC
  %1225 = add i64 %1224, 5
  %1226 = load i64, i64* %PC
  %1227 = add i64 %1226, 5
  store i64 %1227, i64* %PC
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1229 = load i64, i64* %1228, align 8, !tbaa !2428
  %1230 = add i64 %1229, -8
  %1231 = inttoptr i64 %1230 to i64*
  store i64 %1225, i64* %1231
  store i64 %1230, i64* %1228, align 8, !tbaa !2428
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1223, i64* %1232, align 8, !tbaa !2428
  %1233 = load i64, i64* %PC
  %1234 = call %struct.Memory* @sub_400bf0_grad(%struct.State* %0, i64 %1233, %struct.Memory* %550)
  %1235 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1236 = load i64, i64* %PC
  %1237 = add i64 %1236, 8
  store i64 %1237, i64* %PC
  %1238 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400e00__rodata_type* @seg_400e00__rodata to i64), i64 80) to double*)
  %1239 = bitcast i8* %1235 to double*
  store double %1238, double* %1239, align 1, !tbaa !2451
  %1240 = getelementptr inbounds i8, i8* %1235, i64 8
  %1241 = bitcast i8* %1240 to double*
  store double 0.000000e+00, double* %1241, align 1, !tbaa !2451
  %1242 = load i64, i64* %RBP
  %1243 = sub i64 %1242, 84
  %1244 = load i64, i64* %PC
  %1245 = add i64 %1244, 4
  store i64 %1245, i64* %PC
  %1246 = inttoptr i64 %1243 to i32*
  %1247 = load i32, i32* %1246
  %1248 = sext i32 %1247 to i64
  store i64 %1248, i64* %RCX, align 8, !tbaa !2428
  %1249 = load i64, i64* %RCX
  %1250 = mul i64 %1249, 4
  %1251 = add i64 %1250, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
  %1252 = load i64, i64* %PC
  %1253 = add i64 %1252, 7
  store i64 %1253, i64* %PC
  %1254 = inttoptr i64 %1251 to i32*
  %1255 = load i32, i32* %1254
  %1256 = zext i32 %1255 to i64
  store i64 %1256, i64* %RDI, align 8, !tbaa !2428
  %1257 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1258 = load i64, i64* %RBP
  %1259 = sub i64 %1258, 8
  %1260 = load i64, i64* %PC
  %1261 = add i64 %1260, 5
  store i64 %1261, i64* %PC
  %1262 = inttoptr i64 %1259 to double*
  %1263 = load double, double* %1262
  %1264 = bitcast i8* %1257 to double*
  store double %1263, double* %1264, align 1, !tbaa !2451
  %1265 = getelementptr inbounds i8, i8* %1257, i64 8
  %1266 = bitcast i8* %1265 to double*
  store double 0.000000e+00, double* %1266, align 1, !tbaa !2451
  %1267 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1268 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1269 = bitcast %union.vec128_t* %XMM1 to i8*
  %1270 = load i64, i64* %PC
  %1271 = add i64 %1270, 4
  store i64 %1271, i64* %PC
  %1272 = bitcast i8* %1268 to double*
  %1273 = load double, double* %1272, align 1
  %1274 = getelementptr inbounds i8, i8* %1268, i64 8
  %1275 = bitcast i8* %1274 to i64*
  %1276 = load i64, i64* %1275, align 1
  %1277 = bitcast i8* %1269 to double*
  %1278 = load double, double* %1277, align 1
  %1279 = fsub double %1273, %1278
  %1280 = bitcast i8* %1267 to double*
  store double %1279, double* %1280, align 1, !tbaa !2451
  %1281 = getelementptr inbounds i8, i8* %1267, i64 8
  %1282 = bitcast i8* %1281 to i64*
  store i64 %1276, i64* %1282, align 1, !tbaa !2451
  %1283 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1284 = load i64, i64* %RBP
  %1285 = sub i64 %1284, 16
  %1286 = load i64, i64* %PC
  %1287 = add i64 %1286, 5
  store i64 %1287, i64* %PC
  %1288 = inttoptr i64 %1285 to double*
  %1289 = load double, double* %1288
  %1290 = bitcast i8* %1283 to double*
  store double %1289, double* %1290, align 1, !tbaa !2451
  %1291 = getelementptr inbounds i8, i8* %1283, i64 8
  %1292 = bitcast i8* %1291 to double*
  store double 0.000000e+00, double* %1292, align 1, !tbaa !2451
  %1293 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %1294 = load i64, i64* %RBP
  %1295 = sub i64 %1294, 24
  %1296 = load i64, i64* %PC
  %1297 = add i64 %1296, 5
  store i64 %1297, i64* %PC
  %1298 = inttoptr i64 %1295 to double*
  %1299 = load double, double* %1298
  %1300 = bitcast i8* %1293 to double*
  store double %1299, double* %1300, align 1, !tbaa !2451
  %1301 = getelementptr inbounds i8, i8* %1293, i64 8
  %1302 = bitcast i8* %1301 to double*
  store double 0.000000e+00, double* %1302, align 1, !tbaa !2451
  %1303 = load i64, i64* %RBP
  %1304 = sub i64 %1303, 120
  %1305 = bitcast %union.vec128_t* %XMM0 to i8*
  %1306 = load i64, i64* %PC
  %1307 = add i64 %1306, 5
  store i64 %1307, i64* %PC
  %1308 = bitcast i8* %1305 to double*
  %1309 = load double, double* %1308, align 1
  %1310 = inttoptr i64 %1304 to double*
  store double %1309, double* %1310
  %1311 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1312 = bitcast %union.vec128_t* %XMM2 to i8*
  %1313 = load i64, i64* %PC
  %1314 = add i64 %1313, 3
  store i64 %1314, i64* %PC
  %1315 = bitcast i8* %1312 to <2 x i32>*
  %1316 = load <2 x i32>, <2 x i32>* %1315, align 1
  %1317 = getelementptr inbounds i8, i8* %1312, i64 8
  %1318 = bitcast i8* %1317 to <2 x i32>*
  %1319 = load <2 x i32>, <2 x i32>* %1318, align 1
  %1320 = extractelement <2 x i32> %1316, i32 0
  %1321 = bitcast i8* %1311 to i32*
  store i32 %1320, i32* %1321, align 1, !tbaa !2455
  %1322 = extractelement <2 x i32> %1316, i32 1
  %1323 = getelementptr inbounds i8, i8* %1311, i64 4
  %1324 = bitcast i8* %1323 to i32*
  store i32 %1322, i32* %1324, align 1, !tbaa !2455
  %1325 = extractelement <2 x i32> %1319, i32 0
  %1326 = getelementptr inbounds i8, i8* %1311, i64 8
  %1327 = bitcast i8* %1326 to i32*
  store i32 %1325, i32* %1327, align 1, !tbaa !2455
  %1328 = extractelement <2 x i32> %1319, i32 1
  %1329 = getelementptr inbounds i8, i8* %1311, i64 12
  %1330 = bitcast i8* %1329 to i32*
  store i32 %1328, i32* %1330, align 1, !tbaa !2455
  %1331 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1332 = bitcast %union.vec128_t* %XMM3 to i8*
  %1333 = load i64, i64* %PC
  %1334 = add i64 %1333, 3
  store i64 %1334, i64* %PC
  %1335 = bitcast i8* %1332 to <2 x i32>*
  %1336 = load <2 x i32>, <2 x i32>* %1335, align 1
  %1337 = getelementptr inbounds i8, i8* %1332, i64 8
  %1338 = bitcast i8* %1337 to <2 x i32>*
  %1339 = load <2 x i32>, <2 x i32>* %1338, align 1
  %1340 = extractelement <2 x i32> %1336, i32 0
  %1341 = bitcast i8* %1331 to i32*
  store i32 %1340, i32* %1341, align 1, !tbaa !2455
  %1342 = extractelement <2 x i32> %1336, i32 1
  %1343 = getelementptr inbounds i8, i8* %1331, i64 4
  %1344 = bitcast i8* %1343 to i32*
  store i32 %1342, i32* %1344, align 1, !tbaa !2455
  %1345 = extractelement <2 x i32> %1339, i32 0
  %1346 = getelementptr inbounds i8, i8* %1331, i64 8
  %1347 = bitcast i8* %1346 to i32*
  store i32 %1345, i32* %1347, align 1, !tbaa !2455
  %1348 = extractelement <2 x i32> %1339, i32 1
  %1349 = getelementptr inbounds i8, i8* %1331, i64 12
  %1350 = bitcast i8* %1349 to i32*
  store i32 %1348, i32* %1350, align 1, !tbaa !2455
  %1351 = load i64, i64* %PC
  %1352 = add i64 %1351, 851
  %1353 = load i64, i64* %PC
  %1354 = add i64 %1353, 5
  %1355 = load i64, i64* %PC
  %1356 = add i64 %1355, 5
  store i64 %1356, i64* %PC
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1358 = load i64, i64* %1357, align 8, !tbaa !2428
  %1359 = add i64 %1358, -8
  %1360 = inttoptr i64 %1359 to i64*
  store i64 %1354, i64* %1360
  store i64 %1359, i64* %1357, align 8, !tbaa !2428
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1352, i64* %1361, align 8, !tbaa !2428
  %1362 = load i64, i64* %PC
  %1363 = call %struct.Memory* @sub_400bf0_grad(%struct.State* %0, i64 %1362, %struct.Memory* %1234)
  %1364 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1365 = load i64, i64* %RBP
  %1366 = sub i64 %1365, 112
  %1367 = load i64, i64* %PC
  %1368 = add i64 %1367, 5
  store i64 %1368, i64* %PC
  %1369 = inttoptr i64 %1366 to double*
  %1370 = load double, double* %1369
  %1371 = bitcast i8* %1364 to double*
  store double %1370, double* %1371, align 1, !tbaa !2451
  %1372 = getelementptr inbounds i8, i8* %1364, i64 8
  %1373 = bitcast i8* %1372 to double*
  store double 0.000000e+00, double* %1373, align 1, !tbaa !2451
  %1374 = load i64, i64* %RBP
  %1375 = sub i64 %1374, 128
  %1376 = bitcast %union.vec128_t* %XMM0 to i8*
  %1377 = load i64, i64* %PC
  %1378 = add i64 %1377, 5
  store i64 %1378, i64* %PC
  %1379 = bitcast i8* %1376 to double*
  %1380 = load double, double* %1379, align 1
  %1381 = inttoptr i64 %1375 to double*
  store double %1380, double* %1381
  %1382 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1383 = bitcast %union.vec128_t* %XMM1 to i8*
  %1384 = load i64, i64* %PC
  %1385 = add i64 %1384, 3
  store i64 %1385, i64* %PC
  %1386 = bitcast i8* %1383 to <2 x i32>*
  %1387 = load <2 x i32>, <2 x i32>* %1386, align 1
  %1388 = getelementptr inbounds i8, i8* %1383, i64 8
  %1389 = bitcast i8* %1388 to <2 x i32>*
  %1390 = load <2 x i32>, <2 x i32>* %1389, align 1
  %1391 = extractelement <2 x i32> %1387, i32 0
  %1392 = bitcast i8* %1382 to i32*
  store i32 %1391, i32* %1392, align 1, !tbaa !2455
  %1393 = extractelement <2 x i32> %1387, i32 1
  %1394 = getelementptr inbounds i8, i8* %1382, i64 4
  %1395 = bitcast i8* %1394 to i32*
  store i32 %1393, i32* %1395, align 1, !tbaa !2455
  %1396 = extractelement <2 x i32> %1390, i32 0
  %1397 = getelementptr inbounds i8, i8* %1382, i64 8
  %1398 = bitcast i8* %1397 to i32*
  store i32 %1396, i32* %1398, align 1, !tbaa !2455
  %1399 = extractelement <2 x i32> %1390, i32 1
  %1400 = getelementptr inbounds i8, i8* %1382, i64 12
  %1401 = bitcast i8* %1400 to i32*
  store i32 %1399, i32* %1401, align 1, !tbaa !2455
  %1402 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1403 = load i64, i64* %RBP
  %1404 = sub i64 %1403, 120
  %1405 = load i64, i64* %PC
  %1406 = add i64 %1405, 5
  store i64 %1406, i64* %PC
  %1407 = inttoptr i64 %1404 to double*
  %1408 = load double, double* %1407
  %1409 = bitcast i8* %1402 to double*
  store double %1408, double* %1409, align 1, !tbaa !2451
  %1410 = getelementptr inbounds i8, i8* %1402, i64 8
  %1411 = bitcast i8* %1410 to double*
  store double 0.000000e+00, double* %1411, align 1, !tbaa !2451
  %1412 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1413 = load i64, i64* %RBP
  %1414 = sub i64 %1413, 128
  %1415 = load i64, i64* %PC
  %1416 = add i64 %1415, 5
  store i64 %1416, i64* %PC
  %1417 = inttoptr i64 %1414 to double*
  %1418 = load double, double* %1417
  %1419 = bitcast i8* %1412 to double*
  store double %1418, double* %1419, align 1, !tbaa !2451
  %1420 = getelementptr inbounds i8, i8* %1412, i64 8
  %1421 = bitcast i8* %1420 to double*
  store double 0.000000e+00, double* %1421, align 1, !tbaa !2451
  %1422 = load i64, i64* %PC
  %1423 = add i64 %1422, 1159
  %1424 = load i64, i64* %PC
  %1425 = add i64 %1424, 5
  %1426 = load i64, i64* %PC
  %1427 = add i64 %1426, 5
  store i64 %1427, i64* %PC
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1429 = load i64, i64* %1428, align 8, !tbaa !2428
  %1430 = add i64 %1429, -8
  %1431 = inttoptr i64 %1430 to i64*
  store i64 %1425, i64* %1431
  store i64 %1430, i64* %1428, align 8, !tbaa !2428
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1423, i64* %1432, align 8, !tbaa !2428
  %1433 = load i64, i64* %PC
  %1434 = call %struct.Memory* @sub_400d40_lerp(%struct.State* %0, i64 %1433, %struct.Memory* %1363)
  %1435 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1436 = load i64, i64* %PC
  %1437 = add i64 %1436, 8
  store i64 %1437, i64* %PC
  %1438 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400e00__rodata_type* @seg_400e00__rodata to i64), i64 80) to double*)
  %1439 = bitcast i8* %1435 to double*
  store double %1438, double* %1439, align 1, !tbaa !2451
  %1440 = getelementptr inbounds i8, i8* %1435, i64 8
  %1441 = bitcast i8* %1440 to double*
  store double 0.000000e+00, double* %1441, align 1, !tbaa !2451
  %1442 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1443 = load i64, i64* %RBP
  %1444 = sub i64 %1443, 48
  %1445 = load i64, i64* %PC
  %1446 = add i64 %1445, 5
  store i64 %1446, i64* %PC
  %1447 = inttoptr i64 %1444 to double*
  %1448 = load double, double* %1447
  %1449 = bitcast i8* %1442 to double*
  store double %1448, double* %1449, align 1, !tbaa !2451
  %1450 = getelementptr inbounds i8, i8* %1442, i64 8
  %1451 = bitcast i8* %1450 to double*
  store double 0.000000e+00, double* %1451, align 1, !tbaa !2451
  %1452 = load i64, i64* %RBP
  %1453 = sub i64 %1452, 76
  %1454 = load i64, i64* %PC
  %1455 = add i64 %1454, 4
  store i64 %1455, i64* %PC
  %1456 = inttoptr i64 %1453 to i32*
  %1457 = load i32, i32* %1456
  %1458 = sext i32 %1457 to i64
  store i64 %1458, i64* %RCX, align 8, !tbaa !2428
  %1459 = load i64, i64* %RCX
  %1460 = mul i64 %1459, 4
  %1461 = add i64 %1460, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
  %1462 = load i64, i64* %PC
  %1463 = add i64 %1462, 7
  store i64 %1463, i64* %PC
  %1464 = inttoptr i64 %1461 to i32*
  %1465 = load i32, i32* %1464
  %1466 = zext i32 %1465 to i64
  store i64 %1466, i64* %RDI, align 8, !tbaa !2428
  %1467 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %1468 = load i64, i64* %RBP
  %1469 = sub i64 %1468, 8
  %1470 = load i64, i64* %PC
  %1471 = add i64 %1470, 5
  store i64 %1471, i64* %PC
  %1472 = inttoptr i64 %1469 to double*
  %1473 = load double, double* %1472
  %1474 = bitcast i8* %1467 to double*
  store double %1473, double* %1474, align 1, !tbaa !2451
  %1475 = getelementptr inbounds i8, i8* %1467, i64 8
  %1476 = bitcast i8* %1475 to double*
  store double 0.000000e+00, double* %1476, align 1, !tbaa !2451
  %1477 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %1478 = load i64, i64* %RBP
  %1479 = sub i64 %1478, 16
  %1480 = load i64, i64* %PC
  %1481 = add i64 %1480, 5
  store i64 %1481, i64* %PC
  %1482 = inttoptr i64 %1479 to double*
  %1483 = load double, double* %1482
  %1484 = bitcast i8* %1477 to double*
  store double %1483, double* %1484, align 1, !tbaa !2451
  %1485 = getelementptr inbounds i8, i8* %1477, i64 8
  %1486 = bitcast i8* %1485 to double*
  store double 0.000000e+00, double* %1486, align 1, !tbaa !2451
  %1487 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %1488 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %1489 = bitcast %union.vec128_t* %XMM1 to i8*
  %1490 = load i64, i64* %PC
  %1491 = add i64 %1490, 4
  store i64 %1491, i64* %PC
  %1492 = bitcast i8* %1488 to double*
  %1493 = load double, double* %1492, align 1
  %1494 = getelementptr inbounds i8, i8* %1488, i64 8
  %1495 = bitcast i8* %1494 to i64*
  %1496 = load i64, i64* %1495, align 1
  %1497 = bitcast i8* %1489 to double*
  %1498 = load double, double* %1497, align 1
  %1499 = fsub double %1493, %1498
  %1500 = bitcast i8* %1487 to double*
  store double %1499, double* %1500, align 1, !tbaa !2451
  %1501 = getelementptr inbounds i8, i8* %1487, i64 8
  %1502 = bitcast i8* %1501 to i64*
  store i64 %1496, i64* %1502, align 1, !tbaa !2451
  %1503 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1504 = load i64, i64* %RBP
  %1505 = sub i64 %1504, 24
  %1506 = load i64, i64* %PC
  %1507 = add i64 %1506, 5
  store i64 %1507, i64* %PC
  %1508 = inttoptr i64 %1505 to double*
  %1509 = load double, double* %1508
  %1510 = bitcast i8* %1503 to double*
  store double %1509, double* %1510, align 1, !tbaa !2451
  %1511 = getelementptr inbounds i8, i8* %1503, i64 8
  %1512 = bitcast i8* %1511 to double*
  store double 0.000000e+00, double* %1512, align 1, !tbaa !2451
  %1513 = load i64, i64* %RBP
  %1514 = sub i64 %1513, 136
  %1515 = bitcast %union.vec128_t* %XMM0 to i8*
  %1516 = load i64, i64* %PC
  %1517 = add i64 %1516, 8
  store i64 %1517, i64* %PC
  %1518 = bitcast i8* %1515 to double*
  %1519 = load double, double* %1518, align 1
  %1520 = inttoptr i64 %1514 to double*
  store double %1519, double* %1520
  %1521 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1522 = bitcast %union.vec128_t* %XMM3 to i8*
  %1523 = load i64, i64* %PC
  %1524 = add i64 %1523, 3
  store i64 %1524, i64* %PC
  %1525 = bitcast i8* %1522 to <2 x i32>*
  %1526 = load <2 x i32>, <2 x i32>* %1525, align 1
  %1527 = getelementptr inbounds i8, i8* %1522, i64 8
  %1528 = bitcast i8* %1527 to <2 x i32>*
  %1529 = load <2 x i32>, <2 x i32>* %1528, align 1
  %1530 = extractelement <2 x i32> %1526, i32 0
  %1531 = bitcast i8* %1521 to i32*
  store i32 %1530, i32* %1531, align 1, !tbaa !2455
  %1532 = extractelement <2 x i32> %1526, i32 1
  %1533 = getelementptr inbounds i8, i8* %1521, i64 4
  %1534 = bitcast i8* %1533 to i32*
  store i32 %1532, i32* %1534, align 1, !tbaa !2455
  %1535 = extractelement <2 x i32> %1529, i32 0
  %1536 = getelementptr inbounds i8, i8* %1521, i64 8
  %1537 = bitcast i8* %1536 to i32*
  store i32 %1535, i32* %1537, align 1, !tbaa !2455
  %1538 = extractelement <2 x i32> %1529, i32 1
  %1539 = getelementptr inbounds i8, i8* %1521, i64 12
  %1540 = bitcast i8* %1539 to i32*
  store i32 %1538, i32* %1540, align 1, !tbaa !2455
  %1541 = load i64, i64* %RBP
  %1542 = sub i64 %1541, 144
  %1543 = bitcast %union.vec128_t* %XMM1 to i8*
  %1544 = load i64, i64* %PC
  %1545 = add i64 %1544, 8
  store i64 %1545, i64* %PC
  %1546 = bitcast i8* %1543 to double*
  %1547 = load double, double* %1546, align 1
  %1548 = inttoptr i64 %1542 to double*
  store double %1547, double* %1548
  %1549 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1550 = bitcast %union.vec128_t* %XMM4 to i8*
  %1551 = load i64, i64* %PC
  %1552 = add i64 %1551, 3
  store i64 %1552, i64* %PC
  %1553 = bitcast i8* %1550 to <2 x i32>*
  %1554 = load <2 x i32>, <2 x i32>* %1553, align 1
  %1555 = getelementptr inbounds i8, i8* %1550, i64 8
  %1556 = bitcast i8* %1555 to <2 x i32>*
  %1557 = load <2 x i32>, <2 x i32>* %1556, align 1
  %1558 = extractelement <2 x i32> %1554, i32 0
  %1559 = bitcast i8* %1549 to i32*
  store i32 %1558, i32* %1559, align 1, !tbaa !2455
  %1560 = extractelement <2 x i32> %1554, i32 1
  %1561 = getelementptr inbounds i8, i8* %1549, i64 4
  %1562 = bitcast i8* %1561 to i32*
  store i32 %1560, i32* %1562, align 1, !tbaa !2455
  %1563 = extractelement <2 x i32> %1557, i32 0
  %1564 = getelementptr inbounds i8, i8* %1549, i64 8
  %1565 = bitcast i8* %1564 to i32*
  store i32 %1563, i32* %1565, align 1, !tbaa !2455
  %1566 = extractelement <2 x i32> %1557, i32 1
  %1567 = getelementptr inbounds i8, i8* %1549, i64 12
  %1568 = bitcast i8* %1567 to i32*
  store i32 %1566, i32* %1568, align 1, !tbaa !2455
  %1569 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %1570 = load i64, i64* %RBP
  %1571 = sub i64 %1570, 144
  %1572 = load i64, i64* %PC
  %1573 = add i64 %1572, 8
  store i64 %1573, i64* %PC
  %1574 = inttoptr i64 %1571 to double*
  %1575 = load double, double* %1574
  %1576 = bitcast i8* %1569 to double*
  store double %1575, double* %1576, align 1, !tbaa !2451
  %1577 = getelementptr inbounds i8, i8* %1569, i64 8
  %1578 = bitcast i8* %1577 to double*
  store double 0.000000e+00, double* %1578, align 1, !tbaa !2451
  %1579 = load i64, i64* %RBP
  %1580 = sub i64 %1579, 152
  %1581 = bitcast %union.vec128_t* %XMM2 to i8*
  %1582 = load i64, i64* %PC
  %1583 = add i64 %1582, 8
  store i64 %1583, i64* %PC
  %1584 = bitcast i8* %1581 to double*
  %1585 = load double, double* %1584, align 1
  %1586 = inttoptr i64 %1580 to double*
  store double %1585, double* %1586
  %1587 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1588 = bitcast %union.vec128_t* %XMM3 to i8*
  %1589 = load i64, i64* %PC
  %1590 = add i64 %1589, 3
  store i64 %1590, i64* %PC
  %1591 = bitcast i8* %1588 to <2 x i32>*
  %1592 = load <2 x i32>, <2 x i32>* %1591, align 1
  %1593 = getelementptr inbounds i8, i8* %1588, i64 8
  %1594 = bitcast i8* %1593 to <2 x i32>*
  %1595 = load <2 x i32>, <2 x i32>* %1594, align 1
  %1596 = extractelement <2 x i32> %1592, i32 0
  %1597 = bitcast i8* %1587 to i32*
  store i32 %1596, i32* %1597, align 1, !tbaa !2455
  %1598 = extractelement <2 x i32> %1592, i32 1
  %1599 = getelementptr inbounds i8, i8* %1587, i64 4
  %1600 = bitcast i8* %1599 to i32*
  store i32 %1598, i32* %1600, align 1, !tbaa !2455
  %1601 = extractelement <2 x i32> %1595, i32 0
  %1602 = getelementptr inbounds i8, i8* %1587, i64 8
  %1603 = bitcast i8* %1602 to i32*
  store i32 %1601, i32* %1603, align 1, !tbaa !2455
  %1604 = extractelement <2 x i32> %1595, i32 1
  %1605 = getelementptr inbounds i8, i8* %1587, i64 12
  %1606 = bitcast i8* %1605 to i32*
  store i32 %1604, i32* %1606, align 1, !tbaa !2455
  %1607 = load i64, i64* %PC
  %1608 = add i64 %1607, 734
  %1609 = load i64, i64* %PC
  %1610 = add i64 %1609, 5
  %1611 = load i64, i64* %PC
  %1612 = add i64 %1611, 5
  store i64 %1612, i64* %PC
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1614 = load i64, i64* %1613, align 8, !tbaa !2428
  %1615 = add i64 %1614, -8
  %1616 = inttoptr i64 %1615 to i64*
  store i64 %1610, i64* %1616
  store i64 %1615, i64* %1613, align 8, !tbaa !2428
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1608, i64* %1617, align 8, !tbaa !2428
  %1618 = load i64, i64* %PC
  %1619 = call %struct.Memory* @sub_400bf0_grad(%struct.State* %0, i64 %1618, %struct.Memory* %1434)
  %1620 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1621 = load i64, i64* %PC
  %1622 = add i64 %1621, 8
  store i64 %1622, i64* %PC
  %1623 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400e00__rodata_type* @seg_400e00__rodata to i64), i64 80) to double*)
  %1624 = bitcast i8* %1620 to double*
  store double %1623, double* %1624, align 1, !tbaa !2451
  %1625 = getelementptr inbounds i8, i8* %1620, i64 8
  %1626 = bitcast i8* %1625 to double*
  store double 0.000000e+00, double* %1626, align 1, !tbaa !2451
  %1627 = load i64, i64* %RBP
  %1628 = sub i64 %1627, 88
  %1629 = load i64, i64* %PC
  %1630 = add i64 %1629, 4
  store i64 %1630, i64* %PC
  %1631 = inttoptr i64 %1628 to i32*
  %1632 = load i32, i32* %1631
  %1633 = sext i32 %1632 to i64
  store i64 %1633, i64* %RCX, align 8, !tbaa !2428
  %1634 = load i64, i64* %RCX
  %1635 = mul i64 %1634, 4
  %1636 = add i64 %1635, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
  %1637 = load i64, i64* %PC
  %1638 = add i64 %1637, 7
  store i64 %1638, i64* %PC
  %1639 = inttoptr i64 %1636 to i32*
  %1640 = load i32, i32* %1639
  %1641 = zext i32 %1640 to i64
  store i64 %1641, i64* %RDI, align 8, !tbaa !2428
  %1642 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1643 = load i64, i64* %RBP
  %1644 = sub i64 %1643, 8
  %1645 = load i64, i64* %PC
  %1646 = add i64 %1645, 5
  store i64 %1646, i64* %PC
  %1647 = inttoptr i64 %1644 to double*
  %1648 = load double, double* %1647
  %1649 = bitcast i8* %1642 to double*
  store double %1648, double* %1649, align 1, !tbaa !2451
  %1650 = getelementptr inbounds i8, i8* %1642, i64 8
  %1651 = bitcast i8* %1650 to double*
  store double 0.000000e+00, double* %1651, align 1, !tbaa !2451
  %1652 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1653 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1654 = bitcast %union.vec128_t* %XMM1 to i8*
  %1655 = load i64, i64* %PC
  %1656 = add i64 %1655, 4
  store i64 %1656, i64* %PC
  %1657 = bitcast i8* %1653 to double*
  %1658 = load double, double* %1657, align 1
  %1659 = getelementptr inbounds i8, i8* %1653, i64 8
  %1660 = bitcast i8* %1659 to i64*
  %1661 = load i64, i64* %1660, align 1
  %1662 = bitcast i8* %1654 to double*
  %1663 = load double, double* %1662, align 1
  %1664 = fsub double %1658, %1663
  %1665 = bitcast i8* %1652 to double*
  store double %1664, double* %1665, align 1, !tbaa !2451
  %1666 = getelementptr inbounds i8, i8* %1652, i64 8
  %1667 = bitcast i8* %1666 to i64*
  store i64 %1661, i64* %1667, align 1, !tbaa !2451
  %1668 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %1669 = load i64, i64* %RBP
  %1670 = sub i64 %1669, 16
  %1671 = load i64, i64* %PC
  %1672 = add i64 %1671, 5
  store i64 %1672, i64* %PC
  %1673 = inttoptr i64 %1670 to double*
  %1674 = load double, double* %1673
  %1675 = bitcast i8* %1668 to double*
  store double %1674, double* %1675, align 1, !tbaa !2451
  %1676 = getelementptr inbounds i8, i8* %1668, i64 8
  %1677 = bitcast i8* %1676 to double*
  store double 0.000000e+00, double* %1677, align 1, !tbaa !2451
  %1678 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %1679 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %1680 = bitcast %union.vec128_t* %XMM1 to i8*
  %1681 = load i64, i64* %PC
  %1682 = add i64 %1681, 4
  store i64 %1682, i64* %PC
  %1683 = bitcast i8* %1679 to double*
  %1684 = load double, double* %1683, align 1
  %1685 = getelementptr inbounds i8, i8* %1679, i64 8
  %1686 = bitcast i8* %1685 to i64*
  %1687 = load i64, i64* %1686, align 1
  %1688 = bitcast i8* %1680 to double*
  %1689 = load double, double* %1688, align 1
  %1690 = fsub double %1684, %1689
  %1691 = bitcast i8* %1678 to double*
  store double %1690, double* %1691, align 1, !tbaa !2451
  %1692 = getelementptr inbounds i8, i8* %1678, i64 8
  %1693 = bitcast i8* %1692 to i64*
  store i64 %1687, i64* %1693, align 1, !tbaa !2451
  %1694 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1695 = load i64, i64* %RBP
  %1696 = sub i64 %1695, 24
  %1697 = load i64, i64* %PC
  %1698 = add i64 %1697, 5
  store i64 %1698, i64* %PC
  %1699 = inttoptr i64 %1696 to double*
  %1700 = load double, double* %1699
  %1701 = bitcast i8* %1694 to double*
  store double %1700, double* %1701, align 1, !tbaa !2451
  %1702 = getelementptr inbounds i8, i8* %1694, i64 8
  %1703 = bitcast i8* %1702 to double*
  store double 0.000000e+00, double* %1703, align 1, !tbaa !2451
  %1704 = load i64, i64* %RBP
  %1705 = sub i64 %1704, 160
  %1706 = bitcast %union.vec128_t* %XMM0 to i8*
  %1707 = load i64, i64* %PC
  %1708 = add i64 %1707, 8
  store i64 %1708, i64* %PC
  %1709 = bitcast i8* %1706 to double*
  %1710 = load double, double* %1709, align 1
  %1711 = inttoptr i64 %1705 to double*
  store double %1710, double* %1711
  %1712 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1713 = bitcast %union.vec128_t* %XMM2 to i8*
  %1714 = load i64, i64* %PC
  %1715 = add i64 %1714, 3
  store i64 %1715, i64* %PC
  %1716 = bitcast i8* %1713 to <2 x i32>*
  %1717 = load <2 x i32>, <2 x i32>* %1716, align 1
  %1718 = getelementptr inbounds i8, i8* %1713, i64 8
  %1719 = bitcast i8* %1718 to <2 x i32>*
  %1720 = load <2 x i32>, <2 x i32>* %1719, align 1
  %1721 = extractelement <2 x i32> %1717, i32 0
  %1722 = bitcast i8* %1712 to i32*
  store i32 %1721, i32* %1722, align 1, !tbaa !2455
  %1723 = extractelement <2 x i32> %1717, i32 1
  %1724 = getelementptr inbounds i8, i8* %1712, i64 4
  %1725 = bitcast i8* %1724 to i32*
  store i32 %1723, i32* %1725, align 1, !tbaa !2455
  %1726 = extractelement <2 x i32> %1720, i32 0
  %1727 = getelementptr inbounds i8, i8* %1712, i64 8
  %1728 = bitcast i8* %1727 to i32*
  store i32 %1726, i32* %1728, align 1, !tbaa !2455
  %1729 = extractelement <2 x i32> %1720, i32 1
  %1730 = getelementptr inbounds i8, i8* %1712, i64 12
  %1731 = bitcast i8* %1730 to i32*
  store i32 %1729, i32* %1731, align 1, !tbaa !2455
  %1732 = load i64, i64* %RBP
  %1733 = sub i64 %1732, 168
  %1734 = bitcast %union.vec128_t* %XMM1 to i8*
  %1735 = load i64, i64* %PC
  %1736 = add i64 %1735, 8
  store i64 %1736, i64* %PC
  %1737 = bitcast i8* %1734 to double*
  %1738 = load double, double* %1737, align 1
  %1739 = inttoptr i64 %1733 to double*
  store double %1738, double* %1739
  %1740 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1741 = bitcast %union.vec128_t* %XMM3 to i8*
  %1742 = load i64, i64* %PC
  %1743 = add i64 %1742, 3
  store i64 %1743, i64* %PC
  %1744 = bitcast i8* %1741 to <2 x i32>*
  %1745 = load <2 x i32>, <2 x i32>* %1744, align 1
  %1746 = getelementptr inbounds i8, i8* %1741, i64 8
  %1747 = bitcast i8* %1746 to <2 x i32>*
  %1748 = load <2 x i32>, <2 x i32>* %1747, align 1
  %1749 = extractelement <2 x i32> %1745, i32 0
  %1750 = bitcast i8* %1740 to i32*
  store i32 %1749, i32* %1750, align 1, !tbaa !2455
  %1751 = extractelement <2 x i32> %1745, i32 1
  %1752 = getelementptr inbounds i8, i8* %1740, i64 4
  %1753 = bitcast i8* %1752 to i32*
  store i32 %1751, i32* %1753, align 1, !tbaa !2455
  %1754 = extractelement <2 x i32> %1748, i32 0
  %1755 = getelementptr inbounds i8, i8* %1740, i64 8
  %1756 = bitcast i8* %1755 to i32*
  store i32 %1754, i32* %1756, align 1, !tbaa !2455
  %1757 = extractelement <2 x i32> %1748, i32 1
  %1758 = getelementptr inbounds i8, i8* %1740, i64 12
  %1759 = bitcast i8* %1758 to i32*
  store i32 %1757, i32* %1759, align 1, !tbaa !2455
  %1760 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1761 = load i64, i64* %RBP
  %1762 = sub i64 %1761, 168
  %1763 = load i64, i64* %PC
  %1764 = add i64 %1763, 8
  store i64 %1764, i64* %PC
  %1765 = inttoptr i64 %1762 to double*
  %1766 = load double, double* %1765
  %1767 = bitcast i8* %1760 to double*
  store double %1766, double* %1767, align 1, !tbaa !2451
  %1768 = getelementptr inbounds i8, i8* %1760, i64 8
  %1769 = bitcast i8* %1768 to double*
  store double 0.000000e+00, double* %1769, align 1, !tbaa !2451
  %1770 = load i64, i64* %PC
  %1771 = add i64 %1770, 657
  %1772 = load i64, i64* %PC
  %1773 = add i64 %1772, 5
  %1774 = load i64, i64* %PC
  %1775 = add i64 %1774, 5
  store i64 %1775, i64* %PC
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1777 = load i64, i64* %1776, align 8, !tbaa !2428
  %1778 = add i64 %1777, -8
  %1779 = inttoptr i64 %1778 to i64*
  store i64 %1773, i64* %1779
  store i64 %1778, i64* %1776, align 8, !tbaa !2428
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1771, i64* %1780, align 8, !tbaa !2428
  %1781 = load i64, i64* %PC
  %1782 = call %struct.Memory* @sub_400bf0_grad(%struct.State* %0, i64 %1781, %struct.Memory* %1619)
  %1783 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1784 = load i64, i64* %RBP
  %1785 = sub i64 %1784, 152
  %1786 = load i64, i64* %PC
  %1787 = add i64 %1786, 8
  store i64 %1787, i64* %PC
  %1788 = inttoptr i64 %1785 to double*
  %1789 = load double, double* %1788
  %1790 = bitcast i8* %1783 to double*
  store double %1789, double* %1790, align 1, !tbaa !2451
  %1791 = getelementptr inbounds i8, i8* %1783, i64 8
  %1792 = bitcast i8* %1791 to double*
  store double 0.000000e+00, double* %1792, align 1, !tbaa !2451
  %1793 = load i64, i64* %RBP
  %1794 = sub i64 %1793, 176
  %1795 = bitcast %union.vec128_t* %XMM0 to i8*
  %1796 = load i64, i64* %PC
  %1797 = add i64 %1796, 8
  store i64 %1797, i64* %PC
  %1798 = bitcast i8* %1795 to double*
  %1799 = load double, double* %1798, align 1
  %1800 = inttoptr i64 %1794 to double*
  store double %1799, double* %1800
  %1801 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1802 = bitcast %union.vec128_t* %XMM1 to i8*
  %1803 = load i64, i64* %PC
  %1804 = add i64 %1803, 3
  store i64 %1804, i64* %PC
  %1805 = bitcast i8* %1802 to <2 x i32>*
  %1806 = load <2 x i32>, <2 x i32>* %1805, align 1
  %1807 = getelementptr inbounds i8, i8* %1802, i64 8
  %1808 = bitcast i8* %1807 to <2 x i32>*
  %1809 = load <2 x i32>, <2 x i32>* %1808, align 1
  %1810 = extractelement <2 x i32> %1806, i32 0
  %1811 = bitcast i8* %1801 to i32*
  store i32 %1810, i32* %1811, align 1, !tbaa !2455
  %1812 = extractelement <2 x i32> %1806, i32 1
  %1813 = getelementptr inbounds i8, i8* %1801, i64 4
  %1814 = bitcast i8* %1813 to i32*
  store i32 %1812, i32* %1814, align 1, !tbaa !2455
  %1815 = extractelement <2 x i32> %1809, i32 0
  %1816 = getelementptr inbounds i8, i8* %1801, i64 8
  %1817 = bitcast i8* %1816 to i32*
  store i32 %1815, i32* %1817, align 1, !tbaa !2455
  %1818 = extractelement <2 x i32> %1809, i32 1
  %1819 = getelementptr inbounds i8, i8* %1801, i64 12
  %1820 = bitcast i8* %1819 to i32*
  store i32 %1818, i32* %1820, align 1, !tbaa !2455
  %1821 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1822 = load i64, i64* %RBP
  %1823 = sub i64 %1822, 160
  %1824 = load i64, i64* %PC
  %1825 = add i64 %1824, 8
  store i64 %1825, i64* %PC
  %1826 = inttoptr i64 %1823 to double*
  %1827 = load double, double* %1826
  %1828 = bitcast i8* %1821 to double*
  store double %1827, double* %1828, align 1, !tbaa !2451
  %1829 = getelementptr inbounds i8, i8* %1821, i64 8
  %1830 = bitcast i8* %1829 to double*
  store double 0.000000e+00, double* %1830, align 1, !tbaa !2451
  %1831 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1832 = load i64, i64* %RBP
  %1833 = sub i64 %1832, 176
  %1834 = load i64, i64* %PC
  %1835 = add i64 %1834, 8
  store i64 %1835, i64* %PC
  %1836 = inttoptr i64 %1833 to double*
  %1837 = load double, double* %1836
  %1838 = bitcast i8* %1831 to double*
  store double %1837, double* %1838, align 1, !tbaa !2451
  %1839 = getelementptr inbounds i8, i8* %1831, i64 8
  %1840 = bitcast i8* %1839 to double*
  store double 0.000000e+00, double* %1840, align 1, !tbaa !2451
  %1841 = load i64, i64* %PC
  %1842 = add i64 %1841, 953
  %1843 = load i64, i64* %PC
  %1844 = add i64 %1843, 5
  %1845 = load i64, i64* %PC
  %1846 = add i64 %1845, 5
  store i64 %1846, i64* %PC
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1848 = load i64, i64* %1847, align 8, !tbaa !2428
  %1849 = add i64 %1848, -8
  %1850 = inttoptr i64 %1849 to i64*
  store i64 %1844, i64* %1850
  store i64 %1849, i64* %1847, align 8, !tbaa !2428
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1842, i64* %1851, align 8, !tbaa !2428
  %1852 = load i64, i64* %PC
  %1853 = call %struct.Memory* @sub_400d40_lerp(%struct.State* %0, i64 %1852, %struct.Memory* %1782)
  %1854 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1855 = load i64, i64* %RBP
  %1856 = sub i64 %1855, 104
  %1857 = load i64, i64* %PC
  %1858 = add i64 %1857, 5
  store i64 %1858, i64* %PC
  %1859 = inttoptr i64 %1856 to double*
  %1860 = load double, double* %1859
  %1861 = bitcast i8* %1854 to double*
  store double %1860, double* %1861, align 1, !tbaa !2451
  %1862 = getelementptr inbounds i8, i8* %1854, i64 8
  %1863 = bitcast i8* %1862 to double*
  store double 0.000000e+00, double* %1863, align 1, !tbaa !2451
  %1864 = load i64, i64* %RBP
  %1865 = sub i64 %1864, 184
  %1866 = bitcast %union.vec128_t* %XMM0 to i8*
  %1867 = load i64, i64* %PC
  %1868 = add i64 %1867, 8
  store i64 %1868, i64* %PC
  %1869 = bitcast i8* %1866 to double*
  %1870 = load double, double* %1869, align 1
  %1871 = inttoptr i64 %1865 to double*
  store double %1870, double* %1871
  %1872 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1873 = bitcast %union.vec128_t* %XMM1 to i8*
  %1874 = load i64, i64* %PC
  %1875 = add i64 %1874, 3
  store i64 %1875, i64* %PC
  %1876 = bitcast i8* %1873 to <2 x i32>*
  %1877 = load <2 x i32>, <2 x i32>* %1876, align 1
  %1878 = getelementptr inbounds i8, i8* %1873, i64 8
  %1879 = bitcast i8* %1878 to <2 x i32>*
  %1880 = load <2 x i32>, <2 x i32>* %1879, align 1
  %1881 = extractelement <2 x i32> %1877, i32 0
  %1882 = bitcast i8* %1872 to i32*
  store i32 %1881, i32* %1882, align 1, !tbaa !2455
  %1883 = extractelement <2 x i32> %1877, i32 1
  %1884 = getelementptr inbounds i8, i8* %1872, i64 4
  %1885 = bitcast i8* %1884 to i32*
  store i32 %1883, i32* %1885, align 1, !tbaa !2455
  %1886 = extractelement <2 x i32> %1880, i32 0
  %1887 = getelementptr inbounds i8, i8* %1872, i64 8
  %1888 = bitcast i8* %1887 to i32*
  store i32 %1886, i32* %1888, align 1, !tbaa !2455
  %1889 = extractelement <2 x i32> %1880, i32 1
  %1890 = getelementptr inbounds i8, i8* %1872, i64 12
  %1891 = bitcast i8* %1890 to i32*
  store i32 %1889, i32* %1891, align 1, !tbaa !2455
  %1892 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1893 = load i64, i64* %RBP
  %1894 = sub i64 %1893, 136
  %1895 = load i64, i64* %PC
  %1896 = add i64 %1895, 8
  store i64 %1896, i64* %PC
  %1897 = inttoptr i64 %1894 to double*
  %1898 = load double, double* %1897
  %1899 = bitcast i8* %1892 to double*
  store double %1898, double* %1899, align 1, !tbaa !2451
  %1900 = getelementptr inbounds i8, i8* %1892, i64 8
  %1901 = bitcast i8* %1900 to double*
  store double 0.000000e+00, double* %1901, align 1, !tbaa !2451
  %1902 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1903 = load i64, i64* %RBP
  %1904 = sub i64 %1903, 184
  %1905 = load i64, i64* %PC
  %1906 = add i64 %1905, 8
  store i64 %1906, i64* %PC
  %1907 = inttoptr i64 %1904 to double*
  %1908 = load double, double* %1907
  %1909 = bitcast i8* %1902 to double*
  store double %1908, double* %1909, align 1, !tbaa !2451
  %1910 = getelementptr inbounds i8, i8* %1902, i64 8
  %1911 = bitcast i8* %1910 to double*
  store double 0.000000e+00, double* %1911, align 1, !tbaa !2451
  %1912 = load i64, i64* %PC
  %1913 = add i64 %1912, 916
  %1914 = load i64, i64* %PC
  %1915 = add i64 %1914, 5
  %1916 = load i64, i64* %PC
  %1917 = add i64 %1916, 5
  store i64 %1917, i64* %PC
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1919 = load i64, i64* %1918, align 8, !tbaa !2428
  %1920 = add i64 %1919, -8
  %1921 = inttoptr i64 %1920 to i64*
  store i64 %1915, i64* %1921
  store i64 %1920, i64* %1918, align 8, !tbaa !2428
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1913, i64* %1922, align 8, !tbaa !2428
  %1923 = load i64, i64* %PC
  %1924 = call %struct.Memory* @sub_400d40_lerp(%struct.State* %0, i64 %1923, %struct.Memory* %1853)
  %1925 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1926 = load i64, i64* %PC
  %1927 = add i64 %1926, 8
  store i64 %1927, i64* %PC
  %1928 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400e00__rodata_type* @seg_400e00__rodata to i64), i64 80) to double*)
  %1929 = bitcast i8* %1925 to double*
  store double %1928, double* %1929, align 1, !tbaa !2451
  %1930 = getelementptr inbounds i8, i8* %1925, i64 8
  %1931 = bitcast i8* %1930 to double*
  store double 0.000000e+00, double* %1931, align 1, !tbaa !2451
  %1932 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1933 = load i64, i64* %RBP
  %1934 = sub i64 %1933, 56
  %1935 = load i64, i64* %PC
  %1936 = add i64 %1935, 5
  store i64 %1936, i64* %PC
  %1937 = inttoptr i64 %1934 to double*
  %1938 = load double, double* %1937
  %1939 = bitcast i8* %1932 to double*
  store double %1938, double* %1939, align 1, !tbaa !2451
  %1940 = getelementptr inbounds i8, i8* %1932, i64 8
  %1941 = bitcast i8* %1940 to double*
  store double 0.000000e+00, double* %1941, align 1, !tbaa !2451
  %1942 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %1943 = load i64, i64* %RBP
  %1944 = sub i64 %1943, 48
  %1945 = load i64, i64* %PC
  %1946 = add i64 %1945, 5
  store i64 %1946, i64* %PC
  %1947 = inttoptr i64 %1944 to double*
  %1948 = load double, double* %1947
  %1949 = bitcast i8* %1942 to double*
  store double %1948, double* %1949, align 1, !tbaa !2451
  %1950 = getelementptr inbounds i8, i8* %1942, i64 8
  %1951 = bitcast i8* %1950 to double*
  store double 0.000000e+00, double* %1951, align 1, !tbaa !2451
  %1952 = load i64, i64* %RBP
  %1953 = sub i64 %1952, 72
  %1954 = load i64, i64* %PC
  %1955 = add i64 %1954, 3
  store i64 %1955, i64* %PC
  %1956 = inttoptr i64 %1953 to i32*
  %1957 = load i32, i32* %1956
  %1958 = zext i32 %1957 to i64
  store i64 %1958, i64* %RAX, align 8, !tbaa !2428
  %1959 = load i64, i64* %RAX
  %1960 = load i64, i64* %PC
  %1961 = add i64 %1960, 3
  store i64 %1961, i64* %PC
  %1962 = trunc i64 %1959 to i32
  %1963 = add i32 1, %1962
  %1964 = zext i32 %1963 to i64
  store i64 %1964, i64* %RAX, align 8, !tbaa !2428
  %1965 = icmp ult i32 %1963, %1962
  %1966 = icmp ult i32 %1963, 1
  %1967 = or i1 %1965, %1966
  %1968 = zext i1 %1967 to i8
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1968, i8* %1969, align 1, !tbaa !2432
  %1970 = and i32 %1963, 255
  %1971 = call i32 @llvm.ctpop.i32(i32 %1970) #16
  %1972 = trunc i32 %1971 to i8
  %1973 = and i8 %1972, 1
  %1974 = xor i8 %1973, 1
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1974, i8* %1975, align 1, !tbaa !2446
  %1976 = xor i64 1, %1959
  %1977 = trunc i64 %1976 to i32
  %1978 = xor i32 %1977, %1963
  %1979 = lshr i32 %1978, 4
  %1980 = trunc i32 %1979 to i8
  %1981 = and i8 %1980, 1
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1981, i8* %1982, align 1, !tbaa !2447
  %1983 = icmp eq i32 %1963, 0
  %1984 = zext i1 %1983 to i8
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1984, i8* %1985, align 1, !tbaa !2448
  %1986 = lshr i32 %1963, 31
  %1987 = trunc i32 %1986 to i8
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1987, i8* %1988, align 1, !tbaa !2449
  %1989 = lshr i32 %1962, 31
  %1990 = xor i32 %1986, %1989
  %1991 = add nuw nsw i32 %1990, %1986
  %1992 = icmp eq i32 %1991, 2
  %1993 = zext i1 %1992 to i8
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1993, i8* %1994, align 1, !tbaa !2450
  %1995 = load i32, i32* %EAX
  %1996 = zext i32 %1995 to i64
  %1997 = load i64, i64* %PC
  %1998 = add i64 %1997, 3
  store i64 %1998, i64* %PC
  %1999 = shl i64 %1996, 32
  %2000 = ashr exact i64 %1999, 32
  store i64 %2000, i64* %RCX, align 8, !tbaa !2428
  %2001 = load i64, i64* %RCX
  %2002 = mul i64 %2001, 4
  %2003 = add i64 %2002, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
  %2004 = load i64, i64* %PC
  %2005 = add i64 %2004, 7
  store i64 %2005, i64* %PC
  %2006 = inttoptr i64 %2003 to i32*
  %2007 = load i32, i32* %2006
  %2008 = zext i32 %2007 to i64
  store i64 %2008, i64* %RDI, align 8, !tbaa !2428
  %2009 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %2010 = load i64, i64* %RBP
  %2011 = sub i64 %2010, 8
  %2012 = load i64, i64* %PC
  %2013 = add i64 %2012, 5
  store i64 %2013, i64* %PC
  %2014 = inttoptr i64 %2011 to double*
  %2015 = load double, double* %2014
  %2016 = bitcast i8* %2009 to double*
  store double %2015, double* %2016, align 1, !tbaa !2451
  %2017 = getelementptr inbounds i8, i8* %2009, i64 8
  %2018 = bitcast i8* %2017 to double*
  store double 0.000000e+00, double* %2018, align 1, !tbaa !2451
  %2019 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %2020 = load i64, i64* %RBP
  %2021 = sub i64 %2020, 16
  %2022 = load i64, i64* %PC
  %2023 = add i64 %2022, 5
  store i64 %2023, i64* %PC
  %2024 = inttoptr i64 %2021 to double*
  %2025 = load double, double* %2024
  %2026 = bitcast i8* %2019 to double*
  store double %2025, double* %2026, align 1, !tbaa !2451
  %2027 = getelementptr inbounds i8, i8* %2019, i64 8
  %2028 = bitcast i8* %2027 to double*
  store double 0.000000e+00, double* %2028, align 1, !tbaa !2451
  %2029 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %2030 = load i64, i64* %RBP
  %2031 = sub i64 %2030, 24
  %2032 = load i64, i64* %PC
  %2033 = add i64 %2032, 5
  store i64 %2033, i64* %PC
  %2034 = inttoptr i64 %2031 to double*
  %2035 = load double, double* %2034
  %2036 = bitcast i8* %2029 to double*
  store double %2035, double* %2036, align 1, !tbaa !2451
  %2037 = getelementptr inbounds i8, i8* %2029, i64 8
  %2038 = bitcast i8* %2037 to double*
  store double 0.000000e+00, double* %2038, align 1, !tbaa !2451
  %2039 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %2040 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %2041 = bitcast %union.vec128_t* %XMM1 to i8*
  %2042 = load i64, i64* %PC
  %2043 = add i64 %2042, 4
  store i64 %2043, i64* %PC
  %2044 = bitcast i8* %2040 to double*
  %2045 = load double, double* %2044, align 1
  %2046 = getelementptr inbounds i8, i8* %2040, i64 8
  %2047 = bitcast i8* %2046 to i64*
  %2048 = load i64, i64* %2047, align 1
  %2049 = bitcast i8* %2041 to double*
  %2050 = load double, double* %2049, align 1
  %2051 = fsub double %2045, %2050
  %2052 = bitcast i8* %2039 to double*
  store double %2051, double* %2052, align 1, !tbaa !2451
  %2053 = getelementptr inbounds i8, i8* %2039, i64 8
  %2054 = bitcast i8* %2053 to i64*
  store i64 %2048, i64* %2054, align 1, !tbaa !2451
  %2055 = load i64, i64* %RBP
  %2056 = sub i64 %2055, 192
  %2057 = bitcast %union.vec128_t* %XMM0 to i8*
  %2058 = load i64, i64* %PC
  %2059 = add i64 %2058, 8
  store i64 %2059, i64* %PC
  %2060 = bitcast i8* %2057 to double*
  %2061 = load double, double* %2060, align 1
  %2062 = inttoptr i64 %2056 to double*
  store double %2061, double* %2062
  %2063 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2064 = bitcast %union.vec128_t* %XMM4 to i8*
  %2065 = load i64, i64* %PC
  %2066 = add i64 %2065, 3
  store i64 %2066, i64* %PC
  %2067 = bitcast i8* %2064 to <2 x i32>*
  %2068 = load <2 x i32>, <2 x i32>* %2067, align 1
  %2069 = getelementptr inbounds i8, i8* %2064, i64 8
  %2070 = bitcast i8* %2069 to <2 x i32>*
  %2071 = load <2 x i32>, <2 x i32>* %2070, align 1
  %2072 = extractelement <2 x i32> %2068, i32 0
  %2073 = bitcast i8* %2063 to i32*
  store i32 %2072, i32* %2073, align 1, !tbaa !2455
  %2074 = extractelement <2 x i32> %2068, i32 1
  %2075 = getelementptr inbounds i8, i8* %2063, i64 4
  %2076 = bitcast i8* %2075 to i32*
  store i32 %2074, i32* %2076, align 1, !tbaa !2455
  %2077 = extractelement <2 x i32> %2071, i32 0
  %2078 = getelementptr inbounds i8, i8* %2063, i64 8
  %2079 = bitcast i8* %2078 to i32*
  store i32 %2077, i32* %2079, align 1, !tbaa !2455
  %2080 = extractelement <2 x i32> %2071, i32 1
  %2081 = getelementptr inbounds i8, i8* %2063, i64 12
  %2082 = bitcast i8* %2081 to i32*
  store i32 %2080, i32* %2082, align 1, !tbaa !2455
  %2083 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2084 = bitcast %union.vec128_t* %XMM5 to i8*
  %2085 = load i64, i64* %PC
  %2086 = add i64 %2085, 3
  store i64 %2086, i64* %PC
  %2087 = bitcast i8* %2084 to <2 x i32>*
  %2088 = load <2 x i32>, <2 x i32>* %2087, align 1
  %2089 = getelementptr inbounds i8, i8* %2084, i64 8
  %2090 = bitcast i8* %2089 to <2 x i32>*
  %2091 = load <2 x i32>, <2 x i32>* %2090, align 1
  %2092 = extractelement <2 x i32> %2088, i32 0
  %2093 = bitcast i8* %2083 to i32*
  store i32 %2092, i32* %2093, align 1, !tbaa !2455
  %2094 = extractelement <2 x i32> %2088, i32 1
  %2095 = getelementptr inbounds i8, i8* %2083, i64 4
  %2096 = bitcast i8* %2095 to i32*
  store i32 %2094, i32* %2096, align 1, !tbaa !2455
  %2097 = extractelement <2 x i32> %2091, i32 0
  %2098 = getelementptr inbounds i8, i8* %2083, i64 8
  %2099 = bitcast i8* %2098 to i32*
  store i32 %2097, i32* %2099, align 1, !tbaa !2455
  %2100 = extractelement <2 x i32> %2091, i32 1
  %2101 = getelementptr inbounds i8, i8* %2083, i64 12
  %2102 = bitcast i8* %2101 to i32*
  store i32 %2100, i32* %2102, align 1, !tbaa !2455
  %2103 = load i64, i64* %RBP
  %2104 = sub i64 %2103, 200
  %2105 = bitcast %union.vec128_t* %XMM2 to i8*
  %2106 = load i64, i64* %PC
  %2107 = add i64 %2106, 8
  store i64 %2107, i64* %PC
  %2108 = bitcast i8* %2105 to double*
  %2109 = load double, double* %2108, align 1
  %2110 = inttoptr i64 %2104 to double*
  store double %2109, double* %2110
  %2111 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %2112 = bitcast %union.vec128_t* %XMM6 to i8*
  %2113 = load i64, i64* %PC
  %2114 = add i64 %2113, 3
  store i64 %2114, i64* %PC
  %2115 = bitcast i8* %2112 to <2 x i32>*
  %2116 = load <2 x i32>, <2 x i32>* %2115, align 1
  %2117 = getelementptr inbounds i8, i8* %2112, i64 8
  %2118 = bitcast i8* %2117 to <2 x i32>*
  %2119 = load <2 x i32>, <2 x i32>* %2118, align 1
  %2120 = extractelement <2 x i32> %2116, i32 0
  %2121 = bitcast i8* %2111 to i32*
  store i32 %2120, i32* %2121, align 1, !tbaa !2455
  %2122 = extractelement <2 x i32> %2116, i32 1
  %2123 = getelementptr inbounds i8, i8* %2111, i64 4
  %2124 = bitcast i8* %2123 to i32*
  store i32 %2122, i32* %2124, align 1, !tbaa !2455
  %2125 = extractelement <2 x i32> %2119, i32 0
  %2126 = getelementptr inbounds i8, i8* %2111, i64 8
  %2127 = bitcast i8* %2126 to i32*
  store i32 %2125, i32* %2127, align 1, !tbaa !2455
  %2128 = extractelement <2 x i32> %2119, i32 1
  %2129 = getelementptr inbounds i8, i8* %2111, i64 12
  %2130 = bitcast i8* %2129 to i32*
  store i32 %2128, i32* %2130, align 1, !tbaa !2455
  %2131 = load i64, i64* %RBP
  %2132 = sub i64 %2131, 208
  %2133 = bitcast %union.vec128_t* %XMM3 to i8*
  %2134 = load i64, i64* %PC
  %2135 = add i64 %2134, 8
  store i64 %2135, i64* %PC
  %2136 = bitcast i8* %2133 to double*
  %2137 = load double, double* %2136, align 1
  %2138 = inttoptr i64 %2132 to double*
  store double %2137, double* %2138
  %2139 = load i64, i64* %PC
  %2140 = add i64 %2139, 489
  %2141 = load i64, i64* %PC
  %2142 = add i64 %2141, 5
  %2143 = load i64, i64* %PC
  %2144 = add i64 %2143, 5
  store i64 %2144, i64* %PC
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2146 = load i64, i64* %2145, align 8, !tbaa !2428
  %2147 = add i64 %2146, -8
  %2148 = inttoptr i64 %2147 to i64*
  store i64 %2142, i64* %2148
  store i64 %2147, i64* %2145, align 8, !tbaa !2428
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2140, i64* %2149, align 8, !tbaa !2428
  %2150 = load i64, i64* %PC
  %2151 = call %struct.Memory* @sub_400bf0_grad(%struct.State* %0, i64 %2150, %struct.Memory* %1924)
  %2152 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2153 = load i64, i64* %PC
  %2154 = add i64 %2153, 8
  store i64 %2154, i64* %PC
  %2155 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400e00__rodata_type* @seg_400e00__rodata to i64), i64 80) to double*)
  %2156 = bitcast i8* %2152 to double*
  store double %2155, double* %2156, align 1, !tbaa !2451
  %2157 = getelementptr inbounds i8, i8* %2152, i64 8
  %2158 = bitcast i8* %2157 to double*
  store double 0.000000e+00, double* %2158, align 1, !tbaa !2451
  %2159 = load i64, i64* %RBP
  %2160 = sub i64 %2159, 84
  %2161 = load i64, i64* %PC
  %2162 = add i64 %2161, 3
  store i64 %2162, i64* %PC
  %2163 = inttoptr i64 %2160 to i32*
  %2164 = load i32, i32* %2163
  %2165 = zext i32 %2164 to i64
  store i64 %2165, i64* %RAX, align 8, !tbaa !2428
  %2166 = load i64, i64* %RAX
  %2167 = load i64, i64* %PC
  %2168 = add i64 %2167, 3
  store i64 %2168, i64* %PC
  %2169 = trunc i64 %2166 to i32
  %2170 = add i32 1, %2169
  %2171 = zext i32 %2170 to i64
  store i64 %2171, i64* %RAX, align 8, !tbaa !2428
  %2172 = icmp ult i32 %2170, %2169
  %2173 = icmp ult i32 %2170, 1
  %2174 = or i1 %2172, %2173
  %2175 = zext i1 %2174 to i8
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2175, i8* %2176, align 1, !tbaa !2432
  %2177 = and i32 %2170, 255
  %2178 = call i32 @llvm.ctpop.i32(i32 %2177) #16
  %2179 = trunc i32 %2178 to i8
  %2180 = and i8 %2179, 1
  %2181 = xor i8 %2180, 1
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2181, i8* %2182, align 1, !tbaa !2446
  %2183 = xor i64 1, %2166
  %2184 = trunc i64 %2183 to i32
  %2185 = xor i32 %2184, %2170
  %2186 = lshr i32 %2185, 4
  %2187 = trunc i32 %2186 to i8
  %2188 = and i8 %2187, 1
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2188, i8* %2189, align 1, !tbaa !2447
  %2190 = icmp eq i32 %2170, 0
  %2191 = zext i1 %2190 to i8
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2191, i8* %2192, align 1, !tbaa !2448
  %2193 = lshr i32 %2170, 31
  %2194 = trunc i32 %2193 to i8
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2194, i8* %2195, align 1, !tbaa !2449
  %2196 = lshr i32 %2169, 31
  %2197 = xor i32 %2193, %2196
  %2198 = add nuw nsw i32 %2197, %2193
  %2199 = icmp eq i32 %2198, 2
  %2200 = zext i1 %2199 to i8
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2200, i8* %2201, align 1, !tbaa !2450
  %2202 = load i32, i32* %EAX
  %2203 = zext i32 %2202 to i64
  %2204 = load i64, i64* %PC
  %2205 = add i64 %2204, 3
  store i64 %2205, i64* %PC
  %2206 = shl i64 %2203, 32
  %2207 = ashr exact i64 %2206, 32
  store i64 %2207, i64* %RCX, align 8, !tbaa !2428
  %2208 = load i64, i64* %RCX
  %2209 = mul i64 %2208, 4
  %2210 = add i64 %2209, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
  %2211 = load i64, i64* %PC
  %2212 = add i64 %2211, 7
  store i64 %2212, i64* %PC
  %2213 = inttoptr i64 %2210 to i32*
  %2214 = load i32, i32* %2213
  %2215 = zext i32 %2214 to i64
  store i64 %2215, i64* %RDI, align 8, !tbaa !2428
  %2216 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %2217 = load i64, i64* %RBP
  %2218 = sub i64 %2217, 8
  %2219 = load i64, i64* %PC
  %2220 = add i64 %2219, 5
  store i64 %2220, i64* %PC
  %2221 = inttoptr i64 %2218 to double*
  %2222 = load double, double* %2221
  %2223 = bitcast i8* %2216 to double*
  store double %2222, double* %2223, align 1, !tbaa !2451
  %2224 = getelementptr inbounds i8, i8* %2216, i64 8
  %2225 = bitcast i8* %2224 to double*
  store double 0.000000e+00, double* %2225, align 1, !tbaa !2451
  %2226 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %2227 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %2228 = bitcast %union.vec128_t* %XMM1 to i8*
  %2229 = load i64, i64* %PC
  %2230 = add i64 %2229, 4
  store i64 %2230, i64* %PC
  %2231 = bitcast i8* %2227 to double*
  %2232 = load double, double* %2231, align 1
  %2233 = getelementptr inbounds i8, i8* %2227, i64 8
  %2234 = bitcast i8* %2233 to i64*
  %2235 = load i64, i64* %2234, align 1
  %2236 = bitcast i8* %2228 to double*
  %2237 = load double, double* %2236, align 1
  %2238 = fsub double %2232, %2237
  %2239 = bitcast i8* %2226 to double*
  store double %2238, double* %2239, align 1, !tbaa !2451
  %2240 = getelementptr inbounds i8, i8* %2226, i64 8
  %2241 = bitcast i8* %2240 to i64*
  store i64 %2235, i64* %2241, align 1, !tbaa !2451
  %2242 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %2243 = load i64, i64* %RBP
  %2244 = sub i64 %2243, 16
  %2245 = load i64, i64* %PC
  %2246 = add i64 %2245, 5
  store i64 %2246, i64* %PC
  %2247 = inttoptr i64 %2244 to double*
  %2248 = load double, double* %2247
  %2249 = bitcast i8* %2242 to double*
  store double %2248, double* %2249, align 1, !tbaa !2451
  %2250 = getelementptr inbounds i8, i8* %2242, i64 8
  %2251 = bitcast i8* %2250 to double*
  store double 0.000000e+00, double* %2251, align 1, !tbaa !2451
  %2252 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %2253 = load i64, i64* %RBP
  %2254 = sub i64 %2253, 24
  %2255 = load i64, i64* %PC
  %2256 = add i64 %2255, 5
  store i64 %2256, i64* %PC
  %2257 = inttoptr i64 %2254 to double*
  %2258 = load double, double* %2257
  %2259 = bitcast i8* %2252 to double*
  store double %2258, double* %2259, align 1, !tbaa !2451
  %2260 = getelementptr inbounds i8, i8* %2252, i64 8
  %2261 = bitcast i8* %2260 to double*
  store double 0.000000e+00, double* %2261, align 1, !tbaa !2451
  %2262 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %2263 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %2264 = bitcast %union.vec128_t* %XMM1 to i8*
  %2265 = load i64, i64* %PC
  %2266 = add i64 %2265, 4
  store i64 %2266, i64* %PC
  %2267 = bitcast i8* %2263 to double*
  %2268 = load double, double* %2267, align 1
  %2269 = getelementptr inbounds i8, i8* %2263, i64 8
  %2270 = bitcast i8* %2269 to i64*
  %2271 = load i64, i64* %2270, align 1
  %2272 = bitcast i8* %2264 to double*
  %2273 = load double, double* %2272, align 1
  %2274 = fsub double %2268, %2273
  %2275 = bitcast i8* %2262 to double*
  store double %2274, double* %2275, align 1, !tbaa !2451
  %2276 = getelementptr inbounds i8, i8* %2262, i64 8
  %2277 = bitcast i8* %2276 to i64*
  store i64 %2271, i64* %2277, align 1, !tbaa !2451
  %2278 = load i64, i64* %RBP
  %2279 = sub i64 %2278, 216
  %2280 = bitcast %union.vec128_t* %XMM0 to i8*
  %2281 = load i64, i64* %PC
  %2282 = add i64 %2281, 8
  store i64 %2282, i64* %PC
  %2283 = bitcast i8* %2280 to double*
  %2284 = load double, double* %2283, align 1
  %2285 = inttoptr i64 %2279 to double*
  store double %2284, double* %2285
  %2286 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2287 = bitcast %union.vec128_t* %XMM2 to i8*
  %2288 = load i64, i64* %PC
  %2289 = add i64 %2288, 3
  store i64 %2289, i64* %PC
  %2290 = bitcast i8* %2287 to <2 x i32>*
  %2291 = load <2 x i32>, <2 x i32>* %2290, align 1
  %2292 = getelementptr inbounds i8, i8* %2287, i64 8
  %2293 = bitcast i8* %2292 to <2 x i32>*
  %2294 = load <2 x i32>, <2 x i32>* %2293, align 1
  %2295 = extractelement <2 x i32> %2291, i32 0
  %2296 = bitcast i8* %2286 to i32*
  store i32 %2295, i32* %2296, align 1, !tbaa !2455
  %2297 = extractelement <2 x i32> %2291, i32 1
  %2298 = getelementptr inbounds i8, i8* %2286, i64 4
  %2299 = bitcast i8* %2298 to i32*
  store i32 %2297, i32* %2299, align 1, !tbaa !2455
  %2300 = extractelement <2 x i32> %2294, i32 0
  %2301 = getelementptr inbounds i8, i8* %2286, i64 8
  %2302 = bitcast i8* %2301 to i32*
  store i32 %2300, i32* %2302, align 1, !tbaa !2455
  %2303 = extractelement <2 x i32> %2294, i32 1
  %2304 = getelementptr inbounds i8, i8* %2286, i64 12
  %2305 = bitcast i8* %2304 to i32*
  store i32 %2303, i32* %2305, align 1, !tbaa !2455
  %2306 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2307 = bitcast %union.vec128_t* %XMM3 to i8*
  %2308 = load i64, i64* %PC
  %2309 = add i64 %2308, 3
  store i64 %2309, i64* %PC
  %2310 = bitcast i8* %2307 to <2 x i32>*
  %2311 = load <2 x i32>, <2 x i32>* %2310, align 1
  %2312 = getelementptr inbounds i8, i8* %2307, i64 8
  %2313 = bitcast i8* %2312 to <2 x i32>*
  %2314 = load <2 x i32>, <2 x i32>* %2313, align 1
  %2315 = extractelement <2 x i32> %2311, i32 0
  %2316 = bitcast i8* %2306 to i32*
  store i32 %2315, i32* %2316, align 1, !tbaa !2455
  %2317 = extractelement <2 x i32> %2311, i32 1
  %2318 = getelementptr inbounds i8, i8* %2306, i64 4
  %2319 = bitcast i8* %2318 to i32*
  store i32 %2317, i32* %2319, align 1, !tbaa !2455
  %2320 = extractelement <2 x i32> %2314, i32 0
  %2321 = getelementptr inbounds i8, i8* %2306, i64 8
  %2322 = bitcast i8* %2321 to i32*
  store i32 %2320, i32* %2322, align 1, !tbaa !2455
  %2323 = extractelement <2 x i32> %2314, i32 1
  %2324 = getelementptr inbounds i8, i8* %2306, i64 12
  %2325 = bitcast i8* %2324 to i32*
  store i32 %2323, i32* %2325, align 1, !tbaa !2455
  %2326 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %2327 = bitcast %union.vec128_t* %XMM4 to i8*
  %2328 = load i64, i64* %PC
  %2329 = add i64 %2328, 3
  store i64 %2329, i64* %PC
  %2330 = bitcast i8* %2327 to <2 x i32>*
  %2331 = load <2 x i32>, <2 x i32>* %2330, align 1
  %2332 = getelementptr inbounds i8, i8* %2327, i64 8
  %2333 = bitcast i8* %2332 to <2 x i32>*
  %2334 = load <2 x i32>, <2 x i32>* %2333, align 1
  %2335 = extractelement <2 x i32> %2331, i32 0
  %2336 = bitcast i8* %2326 to i32*
  store i32 %2335, i32* %2336, align 1, !tbaa !2455
  %2337 = extractelement <2 x i32> %2331, i32 1
  %2338 = getelementptr inbounds i8, i8* %2326, i64 4
  %2339 = bitcast i8* %2338 to i32*
  store i32 %2337, i32* %2339, align 1, !tbaa !2455
  %2340 = extractelement <2 x i32> %2334, i32 0
  %2341 = getelementptr inbounds i8, i8* %2326, i64 8
  %2342 = bitcast i8* %2341 to i32*
  store i32 %2340, i32* %2342, align 1, !tbaa !2455
  %2343 = extractelement <2 x i32> %2334, i32 1
  %2344 = getelementptr inbounds i8, i8* %2326, i64 12
  %2345 = bitcast i8* %2344 to i32*
  store i32 %2343, i32* %2345, align 1, !tbaa !2455
  %2346 = load i64, i64* %PC
  %2347 = add i64 %2346, 420
  %2348 = load i64, i64* %PC
  %2349 = add i64 %2348, 5
  %2350 = load i64, i64* %PC
  %2351 = add i64 %2350, 5
  store i64 %2351, i64* %PC
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2353 = load i64, i64* %2352, align 8, !tbaa !2428
  %2354 = add i64 %2353, -8
  %2355 = inttoptr i64 %2354 to i64*
  store i64 %2349, i64* %2355
  store i64 %2354, i64* %2352, align 8, !tbaa !2428
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2347, i64* %2356, align 8, !tbaa !2428
  %2357 = load i64, i64* %PC
  %2358 = call %struct.Memory* @sub_400bf0_grad(%struct.State* %0, i64 %2357, %struct.Memory* %2151)
  %2359 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2360 = load i64, i64* %RBP
  %2361 = sub i64 %2360, 208
  %2362 = load i64, i64* %PC
  %2363 = add i64 %2362, 8
  store i64 %2363, i64* %PC
  %2364 = inttoptr i64 %2361 to double*
  %2365 = load double, double* %2364
  %2366 = bitcast i8* %2359 to double*
  store double %2365, double* %2366, align 1, !tbaa !2451
  %2367 = getelementptr inbounds i8, i8* %2359, i64 8
  %2368 = bitcast i8* %2367 to double*
  store double 0.000000e+00, double* %2368, align 1, !tbaa !2451
  %2369 = load i64, i64* %RBP
  %2370 = sub i64 %2369, 224
  %2371 = bitcast %union.vec128_t* %XMM0 to i8*
  %2372 = load i64, i64* %PC
  %2373 = add i64 %2372, 8
  store i64 %2373, i64* %PC
  %2374 = bitcast i8* %2371 to double*
  %2375 = load double, double* %2374, align 1
  %2376 = inttoptr i64 %2370 to double*
  store double %2375, double* %2376
  %2377 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2378 = bitcast %union.vec128_t* %XMM1 to i8*
  %2379 = load i64, i64* %PC
  %2380 = add i64 %2379, 3
  store i64 %2380, i64* %PC
  %2381 = bitcast i8* %2378 to <2 x i32>*
  %2382 = load <2 x i32>, <2 x i32>* %2381, align 1
  %2383 = getelementptr inbounds i8, i8* %2378, i64 8
  %2384 = bitcast i8* %2383 to <2 x i32>*
  %2385 = load <2 x i32>, <2 x i32>* %2384, align 1
  %2386 = extractelement <2 x i32> %2382, i32 0
  %2387 = bitcast i8* %2377 to i32*
  store i32 %2386, i32* %2387, align 1, !tbaa !2455
  %2388 = extractelement <2 x i32> %2382, i32 1
  %2389 = getelementptr inbounds i8, i8* %2377, i64 4
  %2390 = bitcast i8* %2389 to i32*
  store i32 %2388, i32* %2390, align 1, !tbaa !2455
  %2391 = extractelement <2 x i32> %2385, i32 0
  %2392 = getelementptr inbounds i8, i8* %2377, i64 8
  %2393 = bitcast i8* %2392 to i32*
  store i32 %2391, i32* %2393, align 1, !tbaa !2455
  %2394 = extractelement <2 x i32> %2385, i32 1
  %2395 = getelementptr inbounds i8, i8* %2377, i64 12
  %2396 = bitcast i8* %2395 to i32*
  store i32 %2394, i32* %2396, align 1, !tbaa !2455
  %2397 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2398 = load i64, i64* %RBP
  %2399 = sub i64 %2398, 216
  %2400 = load i64, i64* %PC
  %2401 = add i64 %2400, 8
  store i64 %2401, i64* %PC
  %2402 = inttoptr i64 %2399 to double*
  %2403 = load double, double* %2402
  %2404 = bitcast i8* %2397 to double*
  store double %2403, double* %2404, align 1, !tbaa !2451
  %2405 = getelementptr inbounds i8, i8* %2397, i64 8
  %2406 = bitcast i8* %2405 to double*
  store double 0.000000e+00, double* %2406, align 1, !tbaa !2451
  %2407 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %2408 = load i64, i64* %RBP
  %2409 = sub i64 %2408, 224
  %2410 = load i64, i64* %PC
  %2411 = add i64 %2410, 8
  store i64 %2411, i64* %PC
  %2412 = inttoptr i64 %2409 to double*
  %2413 = load double, double* %2412
  %2414 = bitcast i8* %2407 to double*
  store double %2413, double* %2414, align 1, !tbaa !2451
  %2415 = getelementptr inbounds i8, i8* %2407, i64 8
  %2416 = bitcast i8* %2415 to double*
  store double 0.000000e+00, double* %2416, align 1, !tbaa !2451
  %2417 = load i64, i64* %PC
  %2418 = add i64 %2417, 716
  %2419 = load i64, i64* %PC
  %2420 = add i64 %2419, 5
  %2421 = load i64, i64* %PC
  %2422 = add i64 %2421, 5
  store i64 %2422, i64* %PC
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2424 = load i64, i64* %2423, align 8, !tbaa !2428
  %2425 = add i64 %2424, -8
  %2426 = inttoptr i64 %2425 to i64*
  store i64 %2420, i64* %2426
  store i64 %2425, i64* %2423, align 8, !tbaa !2428
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2418, i64* %2427, align 8, !tbaa !2428
  %2428 = load i64, i64* %PC
  %2429 = call %struct.Memory* @sub_400d40_lerp(%struct.State* %0, i64 %2428, %struct.Memory* %2358)
  %2430 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2431 = load i64, i64* %PC
  %2432 = add i64 %2431, 8
  store i64 %2432, i64* %PC
  %2433 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400e00__rodata_type* @seg_400e00__rodata to i64), i64 80) to double*)
  %2434 = bitcast i8* %2430 to double*
  store double %2433, double* %2434, align 1, !tbaa !2451
  %2435 = getelementptr inbounds i8, i8* %2430, i64 8
  %2436 = bitcast i8* %2435 to double*
  store double 0.000000e+00, double* %2436, align 1, !tbaa !2451
  %2437 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %2438 = load i64, i64* %RBP
  %2439 = sub i64 %2438, 48
  %2440 = load i64, i64* %PC
  %2441 = add i64 %2440, 5
  store i64 %2441, i64* %PC
  %2442 = inttoptr i64 %2439 to double*
  %2443 = load double, double* %2442
  %2444 = bitcast i8* %2437 to double*
  store double %2443, double* %2444, align 1, !tbaa !2451
  %2445 = getelementptr inbounds i8, i8* %2437, i64 8
  %2446 = bitcast i8* %2445 to double*
  store double 0.000000e+00, double* %2446, align 1, !tbaa !2451
  %2447 = load i64, i64* %RBP
  %2448 = sub i64 %2447, 76
  %2449 = load i64, i64* %PC
  %2450 = add i64 %2449, 3
  store i64 %2450, i64* %PC
  %2451 = inttoptr i64 %2448 to i32*
  %2452 = load i32, i32* %2451
  %2453 = zext i32 %2452 to i64
  store i64 %2453, i64* %RAX, align 8, !tbaa !2428
  %2454 = load i64, i64* %RAX
  %2455 = load i64, i64* %PC
  %2456 = add i64 %2455, 3
  store i64 %2456, i64* %PC
  %2457 = trunc i64 %2454 to i32
  %2458 = add i32 1, %2457
  %2459 = zext i32 %2458 to i64
  store i64 %2459, i64* %RAX, align 8, !tbaa !2428
  %2460 = icmp ult i32 %2458, %2457
  %2461 = icmp ult i32 %2458, 1
  %2462 = or i1 %2460, %2461
  %2463 = zext i1 %2462 to i8
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2463, i8* %2464, align 1, !tbaa !2432
  %2465 = and i32 %2458, 255
  %2466 = call i32 @llvm.ctpop.i32(i32 %2465) #16
  %2467 = trunc i32 %2466 to i8
  %2468 = and i8 %2467, 1
  %2469 = xor i8 %2468, 1
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2469, i8* %2470, align 1, !tbaa !2446
  %2471 = xor i64 1, %2454
  %2472 = trunc i64 %2471 to i32
  %2473 = xor i32 %2472, %2458
  %2474 = lshr i32 %2473, 4
  %2475 = trunc i32 %2474 to i8
  %2476 = and i8 %2475, 1
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2476, i8* %2477, align 1, !tbaa !2447
  %2478 = icmp eq i32 %2458, 0
  %2479 = zext i1 %2478 to i8
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2479, i8* %2480, align 1, !tbaa !2448
  %2481 = lshr i32 %2458, 31
  %2482 = trunc i32 %2481 to i8
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2482, i8* %2483, align 1, !tbaa !2449
  %2484 = lshr i32 %2457, 31
  %2485 = xor i32 %2481, %2484
  %2486 = add nuw nsw i32 %2485, %2481
  %2487 = icmp eq i32 %2486, 2
  %2488 = zext i1 %2487 to i8
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2488, i8* %2489, align 1, !tbaa !2450
  %2490 = load i32, i32* %EAX
  %2491 = zext i32 %2490 to i64
  %2492 = load i64, i64* %PC
  %2493 = add i64 %2492, 3
  store i64 %2493, i64* %PC
  %2494 = shl i64 %2491, 32
  %2495 = ashr exact i64 %2494, 32
  store i64 %2495, i64* %RCX, align 8, !tbaa !2428
  %2496 = load i64, i64* %RCX
  %2497 = mul i64 %2496, 4
  %2498 = add i64 %2497, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
  %2499 = load i64, i64* %PC
  %2500 = add i64 %2499, 7
  store i64 %2500, i64* %PC
  %2501 = inttoptr i64 %2498 to i32*
  %2502 = load i32, i32* %2501
  %2503 = zext i32 %2502 to i64
  store i64 %2503, i64* %RDI, align 8, !tbaa !2428
  %2504 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %2505 = load i64, i64* %RBP
  %2506 = sub i64 %2505, 8
  %2507 = load i64, i64* %PC
  %2508 = add i64 %2507, 5
  store i64 %2508, i64* %PC
  %2509 = inttoptr i64 %2506 to double*
  %2510 = load double, double* %2509
  %2511 = bitcast i8* %2504 to double*
  store double %2510, double* %2511, align 1, !tbaa !2451
  %2512 = getelementptr inbounds i8, i8* %2504, i64 8
  %2513 = bitcast i8* %2512 to double*
  store double 0.000000e+00, double* %2513, align 1, !tbaa !2451
  %2514 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %2515 = load i64, i64* %RBP
  %2516 = sub i64 %2515, 16
  %2517 = load i64, i64* %PC
  %2518 = add i64 %2517, 5
  store i64 %2518, i64* %PC
  %2519 = inttoptr i64 %2516 to double*
  %2520 = load double, double* %2519
  %2521 = bitcast i8* %2514 to double*
  store double %2520, double* %2521, align 1, !tbaa !2451
  %2522 = getelementptr inbounds i8, i8* %2514, i64 8
  %2523 = bitcast i8* %2522 to double*
  store double 0.000000e+00, double* %2523, align 1, !tbaa !2451
  %2524 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %2525 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %2526 = bitcast %union.vec128_t* %XMM1 to i8*
  %2527 = load i64, i64* %PC
  %2528 = add i64 %2527, 4
  store i64 %2528, i64* %PC
  %2529 = bitcast i8* %2525 to double*
  %2530 = load double, double* %2529, align 1
  %2531 = getelementptr inbounds i8, i8* %2525, i64 8
  %2532 = bitcast i8* %2531 to i64*
  %2533 = load i64, i64* %2532, align 1
  %2534 = bitcast i8* %2526 to double*
  %2535 = load double, double* %2534, align 1
  %2536 = fsub double %2530, %2535
  %2537 = bitcast i8* %2524 to double*
  store double %2536, double* %2537, align 1, !tbaa !2451
  %2538 = getelementptr inbounds i8, i8* %2524, i64 8
  %2539 = bitcast i8* %2538 to i64*
  store i64 %2533, i64* %2539, align 1, !tbaa !2451
  %2540 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %2541 = load i64, i64* %RBP
  %2542 = sub i64 %2541, 24
  %2543 = load i64, i64* %PC
  %2544 = add i64 %2543, 5
  store i64 %2544, i64* %PC
  %2545 = inttoptr i64 %2542 to double*
  %2546 = load double, double* %2545
  %2547 = bitcast i8* %2540 to double*
  store double %2546, double* %2547, align 1, !tbaa !2451
  %2548 = getelementptr inbounds i8, i8* %2540, i64 8
  %2549 = bitcast i8* %2548 to double*
  store double 0.000000e+00, double* %2549, align 1, !tbaa !2451
  %2550 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %2551 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %2552 = bitcast %union.vec128_t* %XMM1 to i8*
  %2553 = load i64, i64* %PC
  %2554 = add i64 %2553, 4
  store i64 %2554, i64* %PC
  %2555 = bitcast i8* %2551 to double*
  %2556 = load double, double* %2555, align 1
  %2557 = getelementptr inbounds i8, i8* %2551, i64 8
  %2558 = bitcast i8* %2557 to i64*
  %2559 = load i64, i64* %2558, align 1
  %2560 = bitcast i8* %2552 to double*
  %2561 = load double, double* %2560, align 1
  %2562 = fsub double %2556, %2561
  %2563 = bitcast i8* %2550 to double*
  store double %2562, double* %2563, align 1, !tbaa !2451
  %2564 = getelementptr inbounds i8, i8* %2550, i64 8
  %2565 = bitcast i8* %2564 to i64*
  store i64 %2559, i64* %2565, align 1, !tbaa !2451
  %2566 = load i64, i64* %RBP
  %2567 = sub i64 %2566, 232
  %2568 = bitcast %union.vec128_t* %XMM0 to i8*
  %2569 = load i64, i64* %PC
  %2570 = add i64 %2569, 8
  store i64 %2570, i64* %PC
  %2571 = bitcast i8* %2568 to double*
  %2572 = load double, double* %2571, align 1
  %2573 = inttoptr i64 %2567 to double*
  store double %2572, double* %2573
  %2574 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2575 = bitcast %union.vec128_t* %XMM3 to i8*
  %2576 = load i64, i64* %PC
  %2577 = add i64 %2576, 3
  store i64 %2577, i64* %PC
  %2578 = bitcast i8* %2575 to <2 x i32>*
  %2579 = load <2 x i32>, <2 x i32>* %2578, align 1
  %2580 = getelementptr inbounds i8, i8* %2575, i64 8
  %2581 = bitcast i8* %2580 to <2 x i32>*
  %2582 = load <2 x i32>, <2 x i32>* %2581, align 1
  %2583 = extractelement <2 x i32> %2579, i32 0
  %2584 = bitcast i8* %2574 to i32*
  store i32 %2583, i32* %2584, align 1, !tbaa !2455
  %2585 = extractelement <2 x i32> %2579, i32 1
  %2586 = getelementptr inbounds i8, i8* %2574, i64 4
  %2587 = bitcast i8* %2586 to i32*
  store i32 %2585, i32* %2587, align 1, !tbaa !2455
  %2588 = extractelement <2 x i32> %2582, i32 0
  %2589 = getelementptr inbounds i8, i8* %2574, i64 8
  %2590 = bitcast i8* %2589 to i32*
  store i32 %2588, i32* %2590, align 1, !tbaa !2455
  %2591 = extractelement <2 x i32> %2582, i32 1
  %2592 = getelementptr inbounds i8, i8* %2574, i64 12
  %2593 = bitcast i8* %2592 to i32*
  store i32 %2591, i32* %2593, align 1, !tbaa !2455
  %2594 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2595 = bitcast %union.vec128_t* %XMM4 to i8*
  %2596 = load i64, i64* %PC
  %2597 = add i64 %2596, 3
  store i64 %2597, i64* %PC
  %2598 = bitcast i8* %2595 to <2 x i32>*
  %2599 = load <2 x i32>, <2 x i32>* %2598, align 1
  %2600 = getelementptr inbounds i8, i8* %2595, i64 8
  %2601 = bitcast i8* %2600 to <2 x i32>*
  %2602 = load <2 x i32>, <2 x i32>* %2601, align 1
  %2603 = extractelement <2 x i32> %2599, i32 0
  %2604 = bitcast i8* %2594 to i32*
  store i32 %2603, i32* %2604, align 1, !tbaa !2455
  %2605 = extractelement <2 x i32> %2599, i32 1
  %2606 = getelementptr inbounds i8, i8* %2594, i64 4
  %2607 = bitcast i8* %2606 to i32*
  store i32 %2605, i32* %2607, align 1, !tbaa !2455
  %2608 = extractelement <2 x i32> %2602, i32 0
  %2609 = getelementptr inbounds i8, i8* %2594, i64 8
  %2610 = bitcast i8* %2609 to i32*
  store i32 %2608, i32* %2610, align 1, !tbaa !2455
  %2611 = extractelement <2 x i32> %2602, i32 1
  %2612 = getelementptr inbounds i8, i8* %2594, i64 12
  %2613 = bitcast i8* %2612 to i32*
  store i32 %2611, i32* %2613, align 1, !tbaa !2455
  %2614 = load i64, i64* %RBP
  %2615 = sub i64 %2614, 240
  %2616 = bitcast %union.vec128_t* %XMM2 to i8*
  %2617 = load i64, i64* %PC
  %2618 = add i64 %2617, 8
  store i64 %2618, i64* %PC
  %2619 = bitcast i8* %2616 to double*
  %2620 = load double, double* %2619, align 1
  %2621 = inttoptr i64 %2615 to double*
  store double %2620, double* %2621
  %2622 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %2623 = bitcast %union.vec128_t* %XMM5 to i8*
  %2624 = load i64, i64* %PC
  %2625 = add i64 %2624, 3
  store i64 %2625, i64* %PC
  %2626 = bitcast i8* %2623 to <2 x i32>*
  %2627 = load <2 x i32>, <2 x i32>* %2626, align 1
  %2628 = getelementptr inbounds i8, i8* %2623, i64 8
  %2629 = bitcast i8* %2628 to <2 x i32>*
  %2630 = load <2 x i32>, <2 x i32>* %2629, align 1
  %2631 = extractelement <2 x i32> %2627, i32 0
  %2632 = bitcast i8* %2622 to i32*
  store i32 %2631, i32* %2632, align 1, !tbaa !2455
  %2633 = extractelement <2 x i32> %2627, i32 1
  %2634 = getelementptr inbounds i8, i8* %2622, i64 4
  %2635 = bitcast i8* %2634 to i32*
  store i32 %2633, i32* %2635, align 1, !tbaa !2455
  %2636 = extractelement <2 x i32> %2630, i32 0
  %2637 = getelementptr inbounds i8, i8* %2622, i64 8
  %2638 = bitcast i8* %2637 to i32*
  store i32 %2636, i32* %2638, align 1, !tbaa !2455
  %2639 = extractelement <2 x i32> %2630, i32 1
  %2640 = getelementptr inbounds i8, i8* %2622, i64 12
  %2641 = bitcast i8* %2640 to i32*
  store i32 %2639, i32* %2641, align 1, !tbaa !2455
  %2642 = load i64, i64* %PC
  %2643 = add i64 %2642, 298
  %2644 = load i64, i64* %PC
  %2645 = add i64 %2644, 5
  %2646 = load i64, i64* %PC
  %2647 = add i64 %2646, 5
  store i64 %2647, i64* %PC
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2649 = load i64, i64* %2648, align 8, !tbaa !2428
  %2650 = add i64 %2649, -8
  %2651 = inttoptr i64 %2650 to i64*
  store i64 %2645, i64* %2651
  store i64 %2650, i64* %2648, align 8, !tbaa !2428
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2643, i64* %2652, align 8, !tbaa !2428
  %2653 = load i64, i64* %PC
  %2654 = call %struct.Memory* @sub_400bf0_grad(%struct.State* %0, i64 %2653, %struct.Memory* %2429)
  %2655 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2656 = load i64, i64* %PC
  %2657 = add i64 %2656, 8
  store i64 %2657, i64* %PC
  %2658 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_400e00__rodata_type* @seg_400e00__rodata to i64), i64 80) to double*)
  %2659 = bitcast i8* %2655 to double*
  store double %2658, double* %2659, align 1, !tbaa !2451
  %2660 = getelementptr inbounds i8, i8* %2655, i64 8
  %2661 = bitcast i8* %2660 to double*
  store double 0.000000e+00, double* %2661, align 1, !tbaa !2451
  %2662 = load i64, i64* %RBP
  %2663 = sub i64 %2662, 88
  %2664 = load i64, i64* %PC
  %2665 = add i64 %2664, 3
  store i64 %2665, i64* %PC
  %2666 = inttoptr i64 %2663 to i32*
  %2667 = load i32, i32* %2666
  %2668 = zext i32 %2667 to i64
  store i64 %2668, i64* %RAX, align 8, !tbaa !2428
  %2669 = load i64, i64* %RAX
  %2670 = load i64, i64* %PC
  %2671 = add i64 %2670, 3
  store i64 %2671, i64* %PC
  %2672 = trunc i64 %2669 to i32
  %2673 = add i32 1, %2672
  %2674 = zext i32 %2673 to i64
  store i64 %2674, i64* %RAX, align 8, !tbaa !2428
  %2675 = icmp ult i32 %2673, %2672
  %2676 = icmp ult i32 %2673, 1
  %2677 = or i1 %2675, %2676
  %2678 = zext i1 %2677 to i8
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2678, i8* %2679, align 1, !tbaa !2432
  %2680 = and i32 %2673, 255
  %2681 = call i32 @llvm.ctpop.i32(i32 %2680) #16
  %2682 = trunc i32 %2681 to i8
  %2683 = and i8 %2682, 1
  %2684 = xor i8 %2683, 1
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2684, i8* %2685, align 1, !tbaa !2446
  %2686 = xor i64 1, %2669
  %2687 = trunc i64 %2686 to i32
  %2688 = xor i32 %2687, %2673
  %2689 = lshr i32 %2688, 4
  %2690 = trunc i32 %2689 to i8
  %2691 = and i8 %2690, 1
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2691, i8* %2692, align 1, !tbaa !2447
  %2693 = icmp eq i32 %2673, 0
  %2694 = zext i1 %2693 to i8
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2694, i8* %2695, align 1, !tbaa !2448
  %2696 = lshr i32 %2673, 31
  %2697 = trunc i32 %2696 to i8
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2697, i8* %2698, align 1, !tbaa !2449
  %2699 = lshr i32 %2672, 31
  %2700 = xor i32 %2696, %2699
  %2701 = add nuw nsw i32 %2700, %2696
  %2702 = icmp eq i32 %2701, 2
  %2703 = zext i1 %2702 to i8
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2703, i8* %2704, align 1, !tbaa !2450
  %2705 = load i32, i32* %EAX
  %2706 = zext i32 %2705 to i64
  %2707 = load i64, i64* %PC
  %2708 = add i64 %2707, 3
  store i64 %2708, i64* %PC
  %2709 = shl i64 %2706, 32
  %2710 = ashr exact i64 %2709, 32
  store i64 %2710, i64* %RCX, align 8, !tbaa !2428
  %2711 = load i64, i64* %RCX
  %2712 = mul i64 %2711, 4
  %2713 = add i64 %2712, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
  %2714 = load i64, i64* %PC
  %2715 = add i64 %2714, 7
  store i64 %2715, i64* %PC
  %2716 = inttoptr i64 %2713 to i32*
  %2717 = load i32, i32* %2716
  %2718 = zext i32 %2717 to i64
  store i64 %2718, i64* %RDI, align 8, !tbaa !2428
  %2719 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %2720 = load i64, i64* %RBP
  %2721 = sub i64 %2720, 8
  %2722 = load i64, i64* %PC
  %2723 = add i64 %2722, 5
  store i64 %2723, i64* %PC
  %2724 = inttoptr i64 %2721 to double*
  %2725 = load double, double* %2724
  %2726 = bitcast i8* %2719 to double*
  store double %2725, double* %2726, align 1, !tbaa !2451
  %2727 = getelementptr inbounds i8, i8* %2719, i64 8
  %2728 = bitcast i8* %2727 to double*
  store double 0.000000e+00, double* %2728, align 1, !tbaa !2451
  %2729 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %2730 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %2731 = bitcast %union.vec128_t* %XMM1 to i8*
  %2732 = load i64, i64* %PC
  %2733 = add i64 %2732, 4
  store i64 %2733, i64* %PC
  %2734 = bitcast i8* %2730 to double*
  %2735 = load double, double* %2734, align 1
  %2736 = getelementptr inbounds i8, i8* %2730, i64 8
  %2737 = bitcast i8* %2736 to i64*
  %2738 = load i64, i64* %2737, align 1
  %2739 = bitcast i8* %2731 to double*
  %2740 = load double, double* %2739, align 1
  %2741 = fsub double %2735, %2740
  %2742 = bitcast i8* %2729 to double*
  store double %2741, double* %2742, align 1, !tbaa !2451
  %2743 = getelementptr inbounds i8, i8* %2729, i64 8
  %2744 = bitcast i8* %2743 to i64*
  store i64 %2738, i64* %2744, align 1, !tbaa !2451
  %2745 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %2746 = load i64, i64* %RBP
  %2747 = sub i64 %2746, 16
  %2748 = load i64, i64* %PC
  %2749 = add i64 %2748, 5
  store i64 %2749, i64* %PC
  %2750 = inttoptr i64 %2747 to double*
  %2751 = load double, double* %2750
  %2752 = bitcast i8* %2745 to double*
  store double %2751, double* %2752, align 1, !tbaa !2451
  %2753 = getelementptr inbounds i8, i8* %2745, i64 8
  %2754 = bitcast i8* %2753 to double*
  store double 0.000000e+00, double* %2754, align 1, !tbaa !2451
  %2755 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %2756 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %2757 = bitcast %union.vec128_t* %XMM1 to i8*
  %2758 = load i64, i64* %PC
  %2759 = add i64 %2758, 4
  store i64 %2759, i64* %PC
  %2760 = bitcast i8* %2756 to double*
  %2761 = load double, double* %2760, align 1
  %2762 = getelementptr inbounds i8, i8* %2756, i64 8
  %2763 = bitcast i8* %2762 to i64*
  %2764 = load i64, i64* %2763, align 1
  %2765 = bitcast i8* %2757 to double*
  %2766 = load double, double* %2765, align 1
  %2767 = fsub double %2761, %2766
  %2768 = bitcast i8* %2755 to double*
  store double %2767, double* %2768, align 1, !tbaa !2451
  %2769 = getelementptr inbounds i8, i8* %2755, i64 8
  %2770 = bitcast i8* %2769 to i64*
  store i64 %2764, i64* %2770, align 1, !tbaa !2451
  %2771 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %2772 = load i64, i64* %RBP
  %2773 = sub i64 %2772, 24
  %2774 = load i64, i64* %PC
  %2775 = add i64 %2774, 5
  store i64 %2775, i64* %PC
  %2776 = inttoptr i64 %2773 to double*
  %2777 = load double, double* %2776
  %2778 = bitcast i8* %2771 to double*
  store double %2777, double* %2778, align 1, !tbaa !2451
  %2779 = getelementptr inbounds i8, i8* %2771, i64 8
  %2780 = bitcast i8* %2779 to double*
  store double 0.000000e+00, double* %2780, align 1, !tbaa !2451
  %2781 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %2782 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %2783 = bitcast %union.vec128_t* %XMM1 to i8*
  %2784 = load i64, i64* %PC
  %2785 = add i64 %2784, 4
  store i64 %2785, i64* %PC
  %2786 = bitcast i8* %2782 to double*
  %2787 = load double, double* %2786, align 1
  %2788 = getelementptr inbounds i8, i8* %2782, i64 8
  %2789 = bitcast i8* %2788 to i64*
  %2790 = load i64, i64* %2789, align 1
  %2791 = bitcast i8* %2783 to double*
  %2792 = load double, double* %2791, align 1
  %2793 = fsub double %2787, %2792
  %2794 = bitcast i8* %2781 to double*
  store double %2793, double* %2794, align 1, !tbaa !2451
  %2795 = getelementptr inbounds i8, i8* %2781, i64 8
  %2796 = bitcast i8* %2795 to i64*
  store i64 %2790, i64* %2796, align 1, !tbaa !2451
  %2797 = load i64, i64* %RBP
  %2798 = sub i64 %2797, 248
  %2799 = bitcast %union.vec128_t* %XMM0 to i8*
  %2800 = load i64, i64* %PC
  %2801 = add i64 %2800, 8
  store i64 %2801, i64* %PC
  %2802 = bitcast i8* %2799 to double*
  %2803 = load double, double* %2802, align 1
  %2804 = inttoptr i64 %2798 to double*
  store double %2803, double* %2804
  %2805 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2806 = bitcast %union.vec128_t* %XMM2 to i8*
  %2807 = load i64, i64* %PC
  %2808 = add i64 %2807, 3
  store i64 %2808, i64* %PC
  %2809 = bitcast i8* %2806 to <2 x i32>*
  %2810 = load <2 x i32>, <2 x i32>* %2809, align 1
  %2811 = getelementptr inbounds i8, i8* %2806, i64 8
  %2812 = bitcast i8* %2811 to <2 x i32>*
  %2813 = load <2 x i32>, <2 x i32>* %2812, align 1
  %2814 = extractelement <2 x i32> %2810, i32 0
  %2815 = bitcast i8* %2805 to i32*
  store i32 %2814, i32* %2815, align 1, !tbaa !2455
  %2816 = extractelement <2 x i32> %2810, i32 1
  %2817 = getelementptr inbounds i8, i8* %2805, i64 4
  %2818 = bitcast i8* %2817 to i32*
  store i32 %2816, i32* %2818, align 1, !tbaa !2455
  %2819 = extractelement <2 x i32> %2813, i32 0
  %2820 = getelementptr inbounds i8, i8* %2805, i64 8
  %2821 = bitcast i8* %2820 to i32*
  store i32 %2819, i32* %2821, align 1, !tbaa !2455
  %2822 = extractelement <2 x i32> %2813, i32 1
  %2823 = getelementptr inbounds i8, i8* %2805, i64 12
  %2824 = bitcast i8* %2823 to i32*
  store i32 %2822, i32* %2824, align 1, !tbaa !2455
  %2825 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2826 = bitcast %union.vec128_t* %XMM3 to i8*
  %2827 = load i64, i64* %PC
  %2828 = add i64 %2827, 3
  store i64 %2828, i64* %PC
  %2829 = bitcast i8* %2826 to <2 x i32>*
  %2830 = load <2 x i32>, <2 x i32>* %2829, align 1
  %2831 = getelementptr inbounds i8, i8* %2826, i64 8
  %2832 = bitcast i8* %2831 to <2 x i32>*
  %2833 = load <2 x i32>, <2 x i32>* %2832, align 1
  %2834 = extractelement <2 x i32> %2830, i32 0
  %2835 = bitcast i8* %2825 to i32*
  store i32 %2834, i32* %2835, align 1, !tbaa !2455
  %2836 = extractelement <2 x i32> %2830, i32 1
  %2837 = getelementptr inbounds i8, i8* %2825, i64 4
  %2838 = bitcast i8* %2837 to i32*
  store i32 %2836, i32* %2838, align 1, !tbaa !2455
  %2839 = extractelement <2 x i32> %2833, i32 0
  %2840 = getelementptr inbounds i8, i8* %2825, i64 8
  %2841 = bitcast i8* %2840 to i32*
  store i32 %2839, i32* %2841, align 1, !tbaa !2455
  %2842 = extractelement <2 x i32> %2833, i32 1
  %2843 = getelementptr inbounds i8, i8* %2825, i64 12
  %2844 = bitcast i8* %2843 to i32*
  store i32 %2842, i32* %2844, align 1, !tbaa !2455
  %2845 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %2846 = bitcast %union.vec128_t* %XMM4 to i8*
  %2847 = load i64, i64* %PC
  %2848 = add i64 %2847, 3
  store i64 %2848, i64* %PC
  %2849 = bitcast i8* %2846 to <2 x i32>*
  %2850 = load <2 x i32>, <2 x i32>* %2849, align 1
  %2851 = getelementptr inbounds i8, i8* %2846, i64 8
  %2852 = bitcast i8* %2851 to <2 x i32>*
  %2853 = load <2 x i32>, <2 x i32>* %2852, align 1
  %2854 = extractelement <2 x i32> %2850, i32 0
  %2855 = bitcast i8* %2845 to i32*
  store i32 %2854, i32* %2855, align 1, !tbaa !2455
  %2856 = extractelement <2 x i32> %2850, i32 1
  %2857 = getelementptr inbounds i8, i8* %2845, i64 4
  %2858 = bitcast i8* %2857 to i32*
  store i32 %2856, i32* %2858, align 1, !tbaa !2455
  %2859 = extractelement <2 x i32> %2853, i32 0
  %2860 = getelementptr inbounds i8, i8* %2845, i64 8
  %2861 = bitcast i8* %2860 to i32*
  store i32 %2859, i32* %2861, align 1, !tbaa !2455
  %2862 = extractelement <2 x i32> %2853, i32 1
  %2863 = getelementptr inbounds i8, i8* %2845, i64 12
  %2864 = bitcast i8* %2863 to i32*
  store i32 %2862, i32* %2864, align 1, !tbaa !2455
  %2865 = load i64, i64* %PC
  %2866 = add i64 %2865, 225
  %2867 = load i64, i64* %PC
  %2868 = add i64 %2867, 5
  %2869 = load i64, i64* %PC
  %2870 = add i64 %2869, 5
  store i64 %2870, i64* %PC
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2872 = load i64, i64* %2871, align 8, !tbaa !2428
  %2873 = add i64 %2872, -8
  %2874 = inttoptr i64 %2873 to i64*
  store i64 %2868, i64* %2874
  store i64 %2873, i64* %2871, align 8, !tbaa !2428
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2866, i64* %2875, align 8, !tbaa !2428
  %2876 = load i64, i64* %PC
  %2877 = call %struct.Memory* @sub_400bf0_grad(%struct.State* %0, i64 %2876, %struct.Memory* %2654)
  %2878 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2879 = load i64, i64* %RBP
  %2880 = sub i64 %2879, 240
  %2881 = load i64, i64* %PC
  %2882 = add i64 %2881, 8
  store i64 %2882, i64* %PC
  %2883 = inttoptr i64 %2880 to double*
  %2884 = load double, double* %2883
  %2885 = bitcast i8* %2878 to double*
  store double %2884, double* %2885, align 1, !tbaa !2451
  %2886 = getelementptr inbounds i8, i8* %2878, i64 8
  %2887 = bitcast i8* %2886 to double*
  store double 0.000000e+00, double* %2887, align 1, !tbaa !2451
  %2888 = load i64, i64* %RBP
  %2889 = sub i64 %2888, 256
  %2890 = bitcast %union.vec128_t* %XMM0 to i8*
  %2891 = load i64, i64* %PC
  %2892 = add i64 %2891, 8
  store i64 %2892, i64* %PC
  %2893 = bitcast i8* %2890 to double*
  %2894 = load double, double* %2893, align 1
  %2895 = inttoptr i64 %2889 to double*
  store double %2894, double* %2895
  %2896 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2897 = bitcast %union.vec128_t* %XMM1 to i8*
  %2898 = load i64, i64* %PC
  %2899 = add i64 %2898, 3
  store i64 %2899, i64* %PC
  %2900 = bitcast i8* %2897 to <2 x i32>*
  %2901 = load <2 x i32>, <2 x i32>* %2900, align 1
  %2902 = getelementptr inbounds i8, i8* %2897, i64 8
  %2903 = bitcast i8* %2902 to <2 x i32>*
  %2904 = load <2 x i32>, <2 x i32>* %2903, align 1
  %2905 = extractelement <2 x i32> %2901, i32 0
  %2906 = bitcast i8* %2896 to i32*
  store i32 %2905, i32* %2906, align 1, !tbaa !2455
  %2907 = extractelement <2 x i32> %2901, i32 1
  %2908 = getelementptr inbounds i8, i8* %2896, i64 4
  %2909 = bitcast i8* %2908 to i32*
  store i32 %2907, i32* %2909, align 1, !tbaa !2455
  %2910 = extractelement <2 x i32> %2904, i32 0
  %2911 = getelementptr inbounds i8, i8* %2896, i64 8
  %2912 = bitcast i8* %2911 to i32*
  store i32 %2910, i32* %2912, align 1, !tbaa !2455
  %2913 = extractelement <2 x i32> %2904, i32 1
  %2914 = getelementptr inbounds i8, i8* %2896, i64 12
  %2915 = bitcast i8* %2914 to i32*
  store i32 %2913, i32* %2915, align 1, !tbaa !2455
  %2916 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2917 = load i64, i64* %RBP
  %2918 = sub i64 %2917, 248
  %2919 = load i64, i64* %PC
  %2920 = add i64 %2919, 8
  store i64 %2920, i64* %PC
  %2921 = inttoptr i64 %2918 to double*
  %2922 = load double, double* %2921
  %2923 = bitcast i8* %2916 to double*
  store double %2922, double* %2923, align 1, !tbaa !2451
  %2924 = getelementptr inbounds i8, i8* %2916, i64 8
  %2925 = bitcast i8* %2924 to double*
  store double 0.000000e+00, double* %2925, align 1, !tbaa !2451
  %2926 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %2927 = load i64, i64* %RBP
  %2928 = sub i64 %2927, 256
  %2929 = load i64, i64* %PC
  %2930 = add i64 %2929, 8
  store i64 %2930, i64* %PC
  %2931 = inttoptr i64 %2928 to double*
  %2932 = load double, double* %2931
  %2933 = bitcast i8* %2926 to double*
  store double %2932, double* %2933, align 1, !tbaa !2451
  %2934 = getelementptr inbounds i8, i8* %2926, i64 8
  %2935 = bitcast i8* %2934 to double*
  store double 0.000000e+00, double* %2935, align 1, !tbaa !2451
  %2936 = load i64, i64* %PC
  %2937 = add i64 %2936, 521
  %2938 = load i64, i64* %PC
  %2939 = add i64 %2938, 5
  %2940 = load i64, i64* %PC
  %2941 = add i64 %2940, 5
  store i64 %2941, i64* %PC
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2943 = load i64, i64* %2942, align 8, !tbaa !2428
  %2944 = add i64 %2943, -8
  %2945 = inttoptr i64 %2944 to i64*
  store i64 %2939, i64* %2945
  store i64 %2944, i64* %2942, align 8, !tbaa !2428
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2937, i64* %2946, align 8, !tbaa !2428
  %2947 = load i64, i64* %PC
  %2948 = call %struct.Memory* @sub_400d40_lerp(%struct.State* %0, i64 %2947, %struct.Memory* %2877)
  %2949 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2950 = load i64, i64* %RBP
  %2951 = sub i64 %2950, 200
  %2952 = load i64, i64* %PC
  %2953 = add i64 %2952, 8
  store i64 %2953, i64* %PC
  %2954 = inttoptr i64 %2951 to double*
  %2955 = load double, double* %2954
  %2956 = bitcast i8* %2949 to double*
  store double %2955, double* %2956, align 1, !tbaa !2451
  %2957 = getelementptr inbounds i8, i8* %2949, i64 8
  %2958 = bitcast i8* %2957 to double*
  store double 0.000000e+00, double* %2958, align 1, !tbaa !2451
  %2959 = load i64, i64* %RBP
  %2960 = sub i64 %2959, 264
  %2961 = bitcast %union.vec128_t* %XMM0 to i8*
  %2962 = load i64, i64* %PC
  %2963 = add i64 %2962, 8
  store i64 %2963, i64* %PC
  %2964 = bitcast i8* %2961 to double*
  %2965 = load double, double* %2964, align 1
  %2966 = inttoptr i64 %2960 to double*
  store double %2965, double* %2966
  %2967 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2968 = bitcast %union.vec128_t* %XMM1 to i8*
  %2969 = load i64, i64* %PC
  %2970 = add i64 %2969, 3
  store i64 %2970, i64* %PC
  %2971 = bitcast i8* %2968 to <2 x i32>*
  %2972 = load <2 x i32>, <2 x i32>* %2971, align 1
  %2973 = getelementptr inbounds i8, i8* %2968, i64 8
  %2974 = bitcast i8* %2973 to <2 x i32>*
  %2975 = load <2 x i32>, <2 x i32>* %2974, align 1
  %2976 = extractelement <2 x i32> %2972, i32 0
  %2977 = bitcast i8* %2967 to i32*
  store i32 %2976, i32* %2977, align 1, !tbaa !2455
  %2978 = extractelement <2 x i32> %2972, i32 1
  %2979 = getelementptr inbounds i8, i8* %2967, i64 4
  %2980 = bitcast i8* %2979 to i32*
  store i32 %2978, i32* %2980, align 1, !tbaa !2455
  %2981 = extractelement <2 x i32> %2975, i32 0
  %2982 = getelementptr inbounds i8, i8* %2967, i64 8
  %2983 = bitcast i8* %2982 to i32*
  store i32 %2981, i32* %2983, align 1, !tbaa !2455
  %2984 = extractelement <2 x i32> %2975, i32 1
  %2985 = getelementptr inbounds i8, i8* %2967, i64 12
  %2986 = bitcast i8* %2985 to i32*
  store i32 %2984, i32* %2986, align 1, !tbaa !2455
  %2987 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2988 = load i64, i64* %RBP
  %2989 = sub i64 %2988, 232
  %2990 = load i64, i64* %PC
  %2991 = add i64 %2990, 8
  store i64 %2991, i64* %PC
  %2992 = inttoptr i64 %2989 to double*
  %2993 = load double, double* %2992
  %2994 = bitcast i8* %2987 to double*
  store double %2993, double* %2994, align 1, !tbaa !2451
  %2995 = getelementptr inbounds i8, i8* %2987, i64 8
  %2996 = bitcast i8* %2995 to double*
  store double 0.000000e+00, double* %2996, align 1, !tbaa !2451
  %2997 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %2998 = load i64, i64* %RBP
  %2999 = sub i64 %2998, 264
  %3000 = load i64, i64* %PC
  %3001 = add i64 %3000, 8
  store i64 %3001, i64* %PC
  %3002 = inttoptr i64 %2999 to double*
  %3003 = load double, double* %3002
  %3004 = bitcast i8* %2997 to double*
  store double %3003, double* %3004, align 1, !tbaa !2451
  %3005 = getelementptr inbounds i8, i8* %2997, i64 8
  %3006 = bitcast i8* %3005 to double*
  store double 0.000000e+00, double* %3006, align 1, !tbaa !2451
  %3007 = load i64, i64* %PC
  %3008 = add i64 %3007, 481
  %3009 = load i64, i64* %PC
  %3010 = add i64 %3009, 5
  %3011 = load i64, i64* %PC
  %3012 = add i64 %3011, 5
  store i64 %3012, i64* %PC
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3014 = load i64, i64* %3013, align 8, !tbaa !2428
  %3015 = add i64 %3014, -8
  %3016 = inttoptr i64 %3015 to i64*
  store i64 %3010, i64* %3016
  store i64 %3015, i64* %3013, align 8, !tbaa !2428
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3008, i64* %3017, align 8, !tbaa !2428
  %3018 = load i64, i64* %PC
  %3019 = call %struct.Memory* @sub_400d40_lerp(%struct.State* %0, i64 %3018, %struct.Memory* %2948)
  %3020 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3021 = load i64, i64* %RBP
  %3022 = sub i64 %3021, 96
  %3023 = load i64, i64* %PC
  %3024 = add i64 %3023, 5
  store i64 %3024, i64* %PC
  %3025 = inttoptr i64 %3022 to double*
  %3026 = load double, double* %3025
  %3027 = bitcast i8* %3020 to double*
  store double %3026, double* %3027, align 1, !tbaa !2451
  %3028 = getelementptr inbounds i8, i8* %3020, i64 8
  %3029 = bitcast i8* %3028 to double*
  store double 0.000000e+00, double* %3029, align 1, !tbaa !2451
  %3030 = load i64, i64* %RBP
  %3031 = sub i64 %3030, 272
  %3032 = bitcast %union.vec128_t* %XMM0 to i8*
  %3033 = load i64, i64* %PC
  %3034 = add i64 %3033, 8
  store i64 %3034, i64* %PC
  %3035 = bitcast i8* %3032 to double*
  %3036 = load double, double* %3035, align 1
  %3037 = inttoptr i64 %3031 to double*
  store double %3036, double* %3037
  %3038 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3039 = bitcast %union.vec128_t* %XMM1 to i8*
  %3040 = load i64, i64* %PC
  %3041 = add i64 %3040, 3
  store i64 %3041, i64* %PC
  %3042 = bitcast i8* %3039 to <2 x i32>*
  %3043 = load <2 x i32>, <2 x i32>* %3042, align 1
  %3044 = getelementptr inbounds i8, i8* %3039, i64 8
  %3045 = bitcast i8* %3044 to <2 x i32>*
  %3046 = load <2 x i32>, <2 x i32>* %3045, align 1
  %3047 = extractelement <2 x i32> %3043, i32 0
  %3048 = bitcast i8* %3038 to i32*
  store i32 %3047, i32* %3048, align 1, !tbaa !2455
  %3049 = extractelement <2 x i32> %3043, i32 1
  %3050 = getelementptr inbounds i8, i8* %3038, i64 4
  %3051 = bitcast i8* %3050 to i32*
  store i32 %3049, i32* %3051, align 1, !tbaa !2455
  %3052 = extractelement <2 x i32> %3046, i32 0
  %3053 = getelementptr inbounds i8, i8* %3038, i64 8
  %3054 = bitcast i8* %3053 to i32*
  store i32 %3052, i32* %3054, align 1, !tbaa !2455
  %3055 = extractelement <2 x i32> %3046, i32 1
  %3056 = getelementptr inbounds i8, i8* %3038, i64 12
  %3057 = bitcast i8* %3056 to i32*
  store i32 %3055, i32* %3057, align 1, !tbaa !2455
  %3058 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3059 = load i64, i64* %RBP
  %3060 = sub i64 %3059, 192
  %3061 = load i64, i64* %PC
  %3062 = add i64 %3061, 8
  store i64 %3062, i64* %PC
  %3063 = inttoptr i64 %3060 to double*
  %3064 = load double, double* %3063
  %3065 = bitcast i8* %3058 to double*
  store double %3064, double* %3065, align 1, !tbaa !2451
  %3066 = getelementptr inbounds i8, i8* %3058, i64 8
  %3067 = bitcast i8* %3066 to double*
  store double 0.000000e+00, double* %3067, align 1, !tbaa !2451
  %3068 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %3069 = load i64, i64* %RBP
  %3070 = sub i64 %3069, 272
  %3071 = load i64, i64* %PC
  %3072 = add i64 %3071, 8
  store i64 %3072, i64* %PC
  %3073 = inttoptr i64 %3070 to double*
  %3074 = load double, double* %3073
  %3075 = bitcast i8* %3068 to double*
  store double %3074, double* %3075, align 1, !tbaa !2451
  %3076 = getelementptr inbounds i8, i8* %3068, i64 8
  %3077 = bitcast i8* %3076 to double*
  store double 0.000000e+00, double* %3077, align 1, !tbaa !2451
  %3078 = load i64, i64* %PC
  %3079 = add i64 %3078, 444
  %3080 = load i64, i64* %PC
  %3081 = add i64 %3080, 5
  %3082 = load i64, i64* %PC
  %3083 = add i64 %3082, 5
  store i64 %3083, i64* %PC
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3085 = load i64, i64* %3084, align 8, !tbaa !2428
  %3086 = add i64 %3085, -8
  %3087 = inttoptr i64 %3086 to i64*
  store i64 %3081, i64* %3087
  store i64 %3086, i64* %3084, align 8, !tbaa !2428
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3079, i64* %3088, align 8, !tbaa !2428
  %3089 = load i64, i64* %PC
  %3090 = call %struct.Memory* @sub_400d40_lerp(%struct.State* %0, i64 %3089, %struct.Memory* %3019)
  %3091 = load i64, i64* %RSP
  %3092 = load i64, i64* %PC
  %3093 = add i64 %3092, 7
  store i64 %3093, i64* %PC
  %3094 = add i64 272, %3091
  store i64 %3094, i64* %RSP, align 8, !tbaa !2428
  %3095 = icmp ult i64 %3094, %3091
  %3096 = icmp ult i64 %3094, 272
  %3097 = or i1 %3095, %3096
  %3098 = zext i1 %3097 to i8
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3098, i8* %3099, align 1, !tbaa !2432
  %3100 = trunc i64 %3094 to i32
  %3101 = and i32 %3100, 255
  %3102 = call i32 @llvm.ctpop.i32(i32 %3101) #16
  %3103 = trunc i32 %3102 to i8
  %3104 = and i8 %3103, 1
  %3105 = xor i8 %3104, 1
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3105, i8* %3106, align 1, !tbaa !2446
  %3107 = xor i64 272, %3091
  %3108 = xor i64 %3107, %3094
  %3109 = lshr i64 %3108, 4
  %3110 = trunc i64 %3109 to i8
  %3111 = and i8 %3110, 1
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3111, i8* %3112, align 1, !tbaa !2447
  %3113 = icmp eq i64 %3094, 0
  %3114 = zext i1 %3113 to i8
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3114, i8* %3115, align 1, !tbaa !2448
  %3116 = lshr i64 %3094, 63
  %3117 = trunc i64 %3116 to i8
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3117, i8* %3118, align 1, !tbaa !2449
  %3119 = lshr i64 %3091, 63
  %3120 = xor i64 %3116, %3119
  %3121 = add nuw nsw i64 %3120, %3116
  %3122 = icmp eq i64 %3121, 2
  %3123 = zext i1 %3122 to i8
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3123, i8* %3124, align 1, !tbaa !2450
  %3125 = load i64, i64* %PC
  %3126 = add i64 %3125, 1
  store i64 %3126, i64* %PC
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3128 = load i64, i64* %3127, align 8, !tbaa !2428
  %3129 = add i64 %3128, 8
  %3130 = inttoptr i64 %3128 to i64*
  %3131 = load i64, i64* %3130
  store i64 %3131, i64* %RBP, align 8, !tbaa !2428
  store i64 %3129, i64* %3127, align 8, !tbaa !2428
  %3132 = load i64, i64* %PC
  %3133 = add i64 %3132, 1
  store i64 %3133, i64* %PC
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3136 = load i64, i64* %3135, align 8, !tbaa !2428
  %3137 = inttoptr i64 %3136 to i64*
  %3138 = load i64, i64* %3137
  store i64 %3138, i64* %3134, align 8, !tbaa !2428
  %3139 = add i64 %3136, 8
  store i64 %3139, i64* %3135, align 8, !tbaa !2428
  ret %struct.Memory* %3090
}

; Function Attrs: noinline
define %struct.Memory* @sub_400d40_lerp(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400d40:
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
  %15 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %14, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %15 to %"class.std::bitset"*
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %17 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %16, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %17 to %"class.std::bitset"*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %19 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %18, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %19 to %union.vec128_t*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %21 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %20, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %21 to %union.vec128_t*
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %23 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %22, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %23 to %union.vec128_t*
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
  %34 = load i64, i64* %RBP
  %35 = sub i64 %34, 8
  %36 = bitcast %union.vec128_t* %XMM0 to i8*
  %37 = load i64, i64* %PC
  %38 = add i64 %37, 5
  store i64 %38, i64* %PC
  %39 = bitcast i8* %36 to double*
  %40 = load double, double* %39, align 1
  %41 = inttoptr i64 %35 to double*
  store double %40, double* %41
  %42 = load i64, i64* %RBP
  %43 = sub i64 %42, 16
  %44 = bitcast %union.vec128_t* %XMM1 to i8*
  %45 = load i64, i64* %PC
  %46 = add i64 %45, 5
  store i64 %46, i64* %PC
  %47 = bitcast i8* %44 to double*
  %48 = load double, double* %47, align 1
  %49 = inttoptr i64 %43 to double*
  store double %48, double* %49
  %50 = load i64, i64* %RBP
  %51 = sub i64 %50, 24
  %52 = bitcast %union.vec128_t* %XMM2 to i8*
  %53 = load i64, i64* %PC
  %54 = add i64 %53, 5
  store i64 %54, i64* %PC
  %55 = bitcast i8* %52 to double*
  %56 = load double, double* %55, align 1
  %57 = inttoptr i64 %51 to double*
  store double %56, double* %57
  %58 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %59 = load i64, i64* %RBP
  %60 = sub i64 %59, 16
  %61 = load i64, i64* %PC
  %62 = add i64 %61, 5
  store i64 %62, i64* %PC
  %63 = inttoptr i64 %60 to double*
  %64 = load double, double* %63
  %65 = bitcast i8* %58 to double*
  store double %64, double* %65, align 1, !tbaa !2451
  %66 = getelementptr inbounds i8, i8* %58, i64 8
  %67 = bitcast i8* %66 to double*
  store double 0.000000e+00, double* %67, align 1, !tbaa !2451
  %68 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %69 = load i64, i64* %RBP
  %70 = sub i64 %69, 8
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 5
  store i64 %72, i64* %PC
  %73 = inttoptr i64 %70 to double*
  %74 = load double, double* %73
  %75 = bitcast i8* %68 to double*
  store double %74, double* %75, align 1, !tbaa !2451
  %76 = getelementptr inbounds i8, i8* %68, i64 8
  %77 = bitcast i8* %76 to double*
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %78 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %79 = load i64, i64* %RBP
  %80 = sub i64 %79, 24
  %81 = load i64, i64* %PC
  %82 = add i64 %81, 5
  store i64 %82, i64* %PC
  %83 = inttoptr i64 %80 to double*
  %84 = load double, double* %83
  %85 = bitcast i8* %78 to double*
  store double %84, double* %85, align 1, !tbaa !2451
  %86 = getelementptr inbounds i8, i8* %78, i64 8
  %87 = bitcast i8* %86 to double*
  store double 0.000000e+00, double* %87, align 1, !tbaa !2451
  %88 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %89 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %90 = load i64, i64* %RBP
  %91 = sub i64 %90, 16
  %92 = load i64, i64* %PC
  %93 = add i64 %92, 5
  store i64 %93, i64* %PC
  %94 = bitcast i8* %89 to double*
  %95 = load double, double* %94, align 1
  %96 = getelementptr inbounds i8, i8* %89, i64 8
  %97 = bitcast i8* %96 to i64*
  %98 = load i64, i64* %97, align 1
  %99 = inttoptr i64 %91 to double*
  %100 = load double, double* %99
  %101 = fsub double %95, %100
  %102 = bitcast i8* %88 to double*
  store double %101, double* %102, align 1, !tbaa !2451
  %103 = getelementptr inbounds i8, i8* %88, i64 8
  %104 = bitcast i8* %103 to i64*
  store i64 %98, i64* %104, align 1, !tbaa !2451
  %105 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %106 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %107 = bitcast %union.vec128_t* %XMM2 to i8*
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 4
  store i64 %109, i64* %PC
  %110 = bitcast i8* %106 to double*
  %111 = load double, double* %110, align 1
  %112 = getelementptr inbounds i8, i8* %106, i64 8
  %113 = bitcast i8* %112 to i64*
  %114 = load i64, i64* %113, align 1
  %115 = bitcast i8* %107 to double*
  %116 = load double, double* %115, align 1
  %117 = fmul double %111, %116
  %118 = bitcast i8* %105 to double*
  store double %117, double* %118, align 1, !tbaa !2451
  %119 = getelementptr inbounds i8, i8* %105, i64 8
  %120 = bitcast i8* %119 to i64*
  store i64 %114, i64* %120, align 1, !tbaa !2451
  %121 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %122 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %123 = bitcast %union.vec128_t* %XMM1 to i8*
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 4
  store i64 %125, i64* %PC
  %126 = bitcast i8* %122 to double*
  %127 = load double, double* %126, align 1
  %128 = getelementptr inbounds i8, i8* %122, i64 8
  %129 = bitcast i8* %128 to i64*
  %130 = load i64, i64* %129, align 1
  %131 = bitcast i8* %123 to double*
  %132 = load double, double* %131, align 1
  %133 = fadd double %127, %132
  %134 = bitcast i8* %121 to double*
  store double %133, double* %134, align 1, !tbaa !2451
  %135 = getelementptr inbounds i8, i8* %121, i64 8
  %136 = bitcast i8* %135 to i64*
  store i64 %130, i64* %136, align 1, !tbaa !2451
  %137 = load i64, i64* %PC
  %138 = add i64 %137, 1
  store i64 %138, i64* %PC
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %140 = load i64, i64* %139, align 8, !tbaa !2428
  %141 = add i64 %140, 8
  %142 = inttoptr i64 %140 to i64*
  %143 = load i64, i64* %142
  store i64 %143, i64* %RBP, align 8, !tbaa !2428
  store i64 %141, i64* %139, align 8, !tbaa !2428
  %144 = load i64, i64* %PC
  %145 = add i64 %144, 1
  store i64 %145, i64* %PC
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %148 = load i64, i64* %147, align 8, !tbaa !2428
  %149 = inttoptr i64 %148 to i64*
  %150 = load i64, i64* %149
  store i64 %150, i64* %146, align 8, !tbaa !2428
  %151 = add i64 %148, 8
  store i64 %151, i64* %147, align 8, !tbaa !2428
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
  %42 = call i32 @llvm.ctpop.i32(i32 %41) #16
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
  store i8 %76, i8* %BRANCH_TAKEN, align 1, !tbaa !2454
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
  %106 = call i32 @llvm.ctpop.i32(i32 %105) #16
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
  store i8 %126, i8* %BRANCH_TAKEN, align 1, !tbaa !2454
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
define %struct.Memory* @sub_400680_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %30 = load i64, i64* %RBP
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 1
  store i64 %32, i64* %PC
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %34 = load i64, i64* %33, align 8, !tbaa !2428
  %35 = add i64 %34, -8
  %36 = inttoptr i64 %35 to i64*
  store i64 %30, i64* %36
  store i64 %35, i64* %33, align 8, !tbaa !2428
  %37 = load i64, i64* %RSP
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 3
  store i64 %39, i64* %PC
  store i64 %37, i64* %RBP, align 8, !tbaa !2428
  %40 = load i64, i64* %RBP
  %41 = sub i64 %40, 8
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 7
  store i64 %43, i64* %PC
  %44 = inttoptr i64 %41 to i32*
  store i32 0, i32* %44
  %45 = load i64, i64* %RBP
  %46 = sub i64 %45, 8
  %47 = load i64, i64* %PC
  %48 = add i64 %47, 7
  store i64 %48, i64* %PC
  %49 = inttoptr i64 %46 to i32*
  store i32 0, i32* %49
  br label %block_400692

block_40069f:                                     ; preds = %block_400692
  %50 = sub i64 %265, 8
  %51 = load i64, i64* %PC
  %52 = add i64 %51, 4
  store i64 %52, i64* %PC
  %53 = inttoptr i64 %50 to i32*
  %54 = load i32, i32* %53
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %RAX, align 8, !tbaa !2428
  %56 = load i64, i64* %RAX
  %57 = mul i64 %56, 4
  %58 = add i64 %57, add (i64 ptrtoint (%seg_602030__data_type* @seg_602030__data to i64), i64 16)
  %59 = load i64, i64* %PC
  %60 = add i64 %59, 7
  store i64 %60, i64* %PC
  %61 = inttoptr i64 %58 to i32*
  %62 = load i32, i32* %61
  %63 = zext i32 %62 to i64
  store i64 %63, i64* %RCX, align 8, !tbaa !2428
  %64 = load i64, i64* %RBP
  %65 = sub i64 %64, 8
  %66 = load i64, i64* %PC
  %67 = add i64 %66, 4
  store i64 %67, i64* %PC
  %68 = inttoptr i64 %65 to i32*
  %69 = load i32, i32* %68
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %RAX, align 8, !tbaa !2428
  %71 = load i64, i64* %RAX
  %72 = mul i64 %71, 4
  %73 = add i64 %72, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
  %74 = load i32, i32* %ECX
  %75 = zext i32 %74 to i64
  %76 = load i64, i64* %PC
  %77 = add i64 %76, 7
  store i64 %77, i64* %PC
  %78 = inttoptr i64 %73 to i32*
  store i32 %74, i32* %78
  %79 = load i64, i64* %RBP
  %80 = sub i64 %79, 8
  %81 = load i64, i64* %PC
  %82 = add i64 %81, 3
  store i64 %82, i64* %PC
  %83 = inttoptr i64 %80 to i32*
  %84 = load i32, i32* %83
  %85 = zext i32 %84 to i64
  store i64 %85, i64* %RDX, align 8, !tbaa !2428
  %86 = load i64, i64* %RDX
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 6
  store i64 %88, i64* %PC
  %89 = trunc i64 %86 to i32
  %90 = add i32 256, %89
  %91 = zext i32 %90 to i64
  store i64 %91, i64* %RDX, align 8, !tbaa !2428
  %92 = icmp ult i32 %90, %89
  %93 = icmp ult i32 %90, 256
  %94 = or i1 %92, %93
  %95 = zext i1 %94 to i8
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %95, i8* %96, align 1, !tbaa !2432
  %97 = and i32 %90, 255
  %98 = call i32 @llvm.ctpop.i32(i32 %97) #16
  %99 = trunc i32 %98 to i8
  %100 = and i8 %99, 1
  %101 = xor i8 %100, 1
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %101, i8* %102, align 1, !tbaa !2446
  %103 = xor i64 256, %86
  %104 = trunc i64 %103 to i32
  %105 = xor i32 %104, %90
  %106 = lshr i32 %105, 4
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %108, i8* %109, align 1, !tbaa !2447
  %110 = icmp eq i32 %90, 0
  %111 = zext i1 %110 to i8
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %111, i8* %112, align 1, !tbaa !2448
  %113 = lshr i32 %90, 31
  %114 = trunc i32 %113 to i8
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %114, i8* %115, align 1, !tbaa !2449
  %116 = lshr i32 %89, 31
  %117 = xor i32 %113, %116
  %118 = add nuw nsw i32 %117, %113
  %119 = icmp eq i32 %118, 2
  %120 = zext i1 %119 to i8
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %120, i8* %121, align 1, !tbaa !2450
  %122 = load i32, i32* %EDX
  %123 = zext i32 %122 to i64
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 3
  store i64 %125, i64* %PC
  %126 = shl i64 %123, 32
  %127 = ashr exact i64 %126, 32
  store i64 %127, i64* %RAX, align 8, !tbaa !2428
  %128 = load i64, i64* %RAX
  %129 = mul i64 %128, 4
  %130 = add i64 %129, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
  %131 = load i32, i32* %ECX
  %132 = zext i32 %131 to i64
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 7
  store i64 %134, i64* %PC
  %135 = inttoptr i64 %130 to i32*
  store i32 %131, i32* %135
  %136 = load i64, i64* %RBP
  %137 = sub i64 %136, 8
  %138 = load i64, i64* %PC
  %139 = add i64 %138, 3
  store i64 %139, i64* %PC
  %140 = inttoptr i64 %137 to i32*
  %141 = load i32, i32* %140
  %142 = zext i32 %141 to i64
  store i64 %142, i64* %RAX, align 8, !tbaa !2428
  %143 = load i64, i64* %RAX
  %144 = load i64, i64* %PC
  %145 = add i64 %144, 3
  store i64 %145, i64* %PC
  %146 = trunc i64 %143 to i32
  %147 = add i32 1, %146
  %148 = zext i32 %147 to i64
  store i64 %148, i64* %RAX, align 8, !tbaa !2428
  %149 = icmp ult i32 %147, %146
  %150 = icmp ult i32 %147, 1
  %151 = or i1 %149, %150
  %152 = zext i1 %151 to i8
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %152, i8* %153, align 1, !tbaa !2432
  %154 = and i32 %147, 255
  %155 = call i32 @llvm.ctpop.i32(i32 %154) #16
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  %158 = xor i8 %157, 1
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %158, i8* %159, align 1, !tbaa !2446
  %160 = xor i64 1, %143
  %161 = trunc i64 %160 to i32
  %162 = xor i32 %161, %147
  %163 = lshr i32 %162, 4
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %165, i8* %166, align 1, !tbaa !2447
  %167 = icmp eq i32 %147, 0
  %168 = zext i1 %167 to i8
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %168, i8* %169, align 1, !tbaa !2448
  %170 = lshr i32 %147, 31
  %171 = trunc i32 %170 to i8
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %171, i8* %172, align 1, !tbaa !2449
  %173 = lshr i32 %146, 31
  %174 = xor i32 %170, %173
  %175 = add nuw nsw i32 %174, %170
  %176 = icmp eq i32 %175, 2
  %177 = zext i1 %176 to i8
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %177, i8* %178, align 1, !tbaa !2450
  %179 = load i64, i64* %RBP
  %180 = sub i64 %179, 8
  %181 = load i32, i32* %EAX
  %182 = zext i32 %181 to i64
  %183 = load i64, i64* %PC
  %184 = add i64 %183, 3
  store i64 %184, i64* %PC
  %185 = inttoptr i64 %180 to i32*
  store i32 %181, i32* %185
  %186 = load i64, i64* %PC
  %187 = sub i64 %186, 63
  %188 = load i64, i64* %PC
  %189 = add i64 %188, 5
  store i64 %189, i64* %PC
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %187, i64* %190, align 8, !tbaa !2428
  br label %block_400692

block_4006d6:                                     ; preds = %block_400692
  %191 = sub i64 %265, 4
  %192 = load i64, i64* %PC
  %193 = add i64 %192, 3
  store i64 %193, i64* %PC
  %194 = inttoptr i64 %191 to i32*
  %195 = load i32, i32* %194
  %196 = zext i32 %195 to i64
  store i64 %196, i64* %RAX, align 8, !tbaa !2428
  %197 = load i64, i64* %PC
  %198 = add i64 %197, 1
  store i64 %198, i64* %PC
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %200 = load i64, i64* %199, align 8, !tbaa !2428
  %201 = add i64 %200, 8
  %202 = inttoptr i64 %200 to i64*
  %203 = load i64, i64* %202
  store i64 %203, i64* %RBP, align 8, !tbaa !2428
  store i64 %201, i64* %199, align 8, !tbaa !2428
  %204 = load i64, i64* %PC
  %205 = add i64 %204, 1
  store i64 %205, i64* %PC
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %208 = load i64, i64* %207, align 8, !tbaa !2428
  %209 = inttoptr i64 %208 to i64*
  %210 = load i64, i64* %209
  store i64 %210, i64* %206, align 8, !tbaa !2428
  %211 = add i64 %208, 8
  store i64 %211, i64* %207, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400692:                                     ; preds = %block_40069f, %block_400680
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400680 ], [ %MEMORY.0, %block_40069f ]
  %212 = load i64, i64* %RBP
  %213 = sub i64 %212, 8
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 7
  store i64 %215, i64* %PC
  %216 = inttoptr i64 %213 to i32*
  %217 = load i32, i32* %216
  %218 = sub i32 %217, 256
  %219 = icmp ult i32 %217, 256
  %220 = zext i1 %219 to i8
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %220, i8* %221, align 1, !tbaa !2432
  %222 = and i32 %218, 255
  %223 = call i32 @llvm.ctpop.i32(i32 %222) #16
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %226, i8* %227, align 1, !tbaa !2446
  %228 = xor i32 %217, 256
  %229 = xor i32 %228, %218
  %230 = lshr i32 %229, 4
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %232, i8* %233, align 1, !tbaa !2447
  %234 = icmp eq i32 %218, 0
  %235 = zext i1 %234 to i8
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %235, i8* %236, align 1, !tbaa !2448
  %237 = lshr i32 %218, 31
  %238 = trunc i32 %237 to i8
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %238, i8* %239, align 1, !tbaa !2449
  %240 = lshr i32 %217, 31
  %241 = xor i32 %237, %240
  %242 = add nuw nsw i32 %241, %240
  %243 = icmp eq i32 %242, 2
  %244 = zext i1 %243 to i8
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %244, i8* %245, align 1, !tbaa !2450
  %246 = load i64, i64* %PC
  %247 = add i64 %246, 61
  %248 = load i64, i64* %PC
  %249 = add i64 %248, 6
  %250 = load i64, i64* %PC
  %251 = add i64 %250, 6
  store i64 %251, i64* %PC
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %253 = load i8, i8* %252, align 1, !tbaa !2449
  %254 = icmp ne i8 %253, 0
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %256 = load i8, i8* %255, align 1, !tbaa !2450
  %257 = icmp ne i8 %256, 0
  %258 = xor i1 %254, %257
  %259 = xor i1 %258, true
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %BRANCH_TAKEN, align 1, !tbaa !2454
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %262 = select i1 %258, i64 %249, i64 %247
  store i64 %262, i64* %261, align 8, !tbaa !2428
  %263 = load i8, i8* %BRANCH_TAKEN
  %264 = icmp eq i8 %263, 1
  %265 = load i64, i64* %RBP
  br i1 %264, label %block_4006d6, label %block_40069f
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
define %struct.Memory* @sub_400bf0_grad(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400bf0:
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
  %30 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %29, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %30 to %"class.std::bitset"*
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %32 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %31, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %32 to %union.vec128_t*
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %34 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %33, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %34 to %union.vec128_t*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %36 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %35, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %36 to %union.vec128_t*
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
  %47 = load i64, i64* %RBP
  %48 = sub i64 %47, 4
  %49 = load i32, i32* %EDI
  %50 = zext i32 %49 to i64
  %51 = load i64, i64* %PC
  %52 = add i64 %51, 3
  store i64 %52, i64* %PC
  %53 = inttoptr i64 %48 to i32*
  store i32 %49, i32* %53
  %54 = load i64, i64* %RBP
  %55 = sub i64 %54, 16
  %56 = bitcast %union.vec128_t* %XMM0 to i8*
  %57 = load i64, i64* %PC
  %58 = add i64 %57, 5
  store i64 %58, i64* %PC
  %59 = bitcast i8* %56 to double*
  %60 = load double, double* %59, align 1
  %61 = inttoptr i64 %55 to double*
  store double %60, double* %61
  %62 = load i64, i64* %RBP
  %63 = sub i64 %62, 24
  %64 = bitcast %union.vec128_t* %XMM1 to i8*
  %65 = load i64, i64* %PC
  %66 = add i64 %65, 5
  store i64 %66, i64* %PC
  %67 = bitcast i8* %64 to double*
  %68 = load double, double* %67, align 1
  %69 = inttoptr i64 %63 to double*
  store double %68, double* %69
  %70 = load i64, i64* %RBP
  %71 = sub i64 %70, 32
  %72 = bitcast %union.vec128_t* %XMM2 to i8*
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC
  %75 = bitcast i8* %72 to double*
  %76 = load double, double* %75, align 1
  %77 = inttoptr i64 %71 to double*
  store double %76, double* %77
  %78 = load i64, i64* %RBP
  %79 = sub i64 %78, 4
  %80 = load i64, i64* %PC
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC
  %82 = inttoptr i64 %79 to i32*
  %83 = load i32, i32* %82
  %84 = zext i32 %83 to i64
  store i64 %84, i64* %RDI, align 8, !tbaa !2428
  %85 = load i64, i64* %RDI
  %86 = load i64, i64* %PC
  %87 = add i64 %86, 3
  store i64 %87, i64* %PC
  %88 = and i64 15, %85
  %89 = trunc i64 %88 to i32
  store i64 %88, i64* %RDI, align 8, !tbaa !2428
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %90, align 1, !tbaa !2432
  %91 = and i32 %89, 255
  %92 = call i32 @llvm.ctpop.i32(i32 %91) #16
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  %95 = xor i8 %94, 1
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %95, i8* %96, align 1, !tbaa !2446
  %97 = icmp eq i32 %89, 0
  %98 = zext i1 %97 to i8
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %98, i8* %99, align 1, !tbaa !2448
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %100, align 1, !tbaa !2449
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %101, align 1, !tbaa !2450
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %102, align 1, !tbaa !2447
  %103 = load i64, i64* %RBP
  %104 = sub i64 %103, 36
  %105 = load i32, i32* %EDI
  %106 = zext i32 %105 to i64
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 3
  store i64 %108, i64* %PC
  %109 = inttoptr i64 %104 to i32*
  store i32 %105, i32* %109
  %110 = load i64, i64* %RBP
  %111 = sub i64 %110, 36
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 4
  store i64 %113, i64* %PC
  %114 = inttoptr i64 %111 to i32*
  %115 = load i32, i32* %114
  %116 = sub i32 %115, 8
  %117 = icmp ult i32 %115, 8
  %118 = zext i1 %117 to i8
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %118, i8* %119, align 1, !tbaa !2432
  %120 = and i32 %116, 255
  %121 = call i32 @llvm.ctpop.i32(i32 %120) #16
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  %124 = xor i8 %123, 1
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %124, i8* %125, align 1, !tbaa !2446
  %126 = xor i32 %115, 8
  %127 = xor i32 %126, %116
  %128 = lshr i32 %127, 4
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %130, i8* %131, align 1, !tbaa !2447
  %132 = icmp eq i32 %116, 0
  %133 = zext i1 %132 to i8
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %133, i8* %134, align 1, !tbaa !2448
  %135 = lshr i32 %116, 31
  %136 = trunc i32 %135 to i8
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %136, i8* %137, align 1, !tbaa !2449
  %138 = lshr i32 %115, 31
  %139 = xor i32 %135, %138
  %140 = add nuw nsw i32 %139, %138
  %141 = icmp eq i32 %140, 2
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %142, i8* %143, align 1, !tbaa !2450
  %144 = load i64, i64* %PC
  %145 = add i64 %144, 21
  %146 = load i64, i64* %PC
  %147 = add i64 %146, 6
  %148 = load i64, i64* %PC
  %149 = add i64 %148, 6
  store i64 %149, i64* %PC
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %151 = load i8, i8* %150, align 1, !tbaa !2449
  %152 = icmp ne i8 %151, 0
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %154 = load i8, i8* %153, align 1, !tbaa !2450
  %155 = icmp ne i8 %154, 0
  %156 = xor i1 %152, %155
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %BRANCH_TAKEN, align 1, !tbaa !2454
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %160 = select i1 %156, i64 %147, i64 %145
  store i64 %160, i64* %159, align 8, !tbaa !2428
  %161 = load i8, i8* %BRANCH_TAKEN
  %162 = icmp eq i8 %161, 1
  %163 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %164 = load i64, i64* %RBP
  br i1 %162, label %block_400c28, label %block_400c19

block_400c5f:                                     ; preds = %block_400c55
  %165 = load i64, i64* %RBP
  %166 = sub i64 %165, 36
  %167 = load i64, i64* %PC
  %168 = add i64 %167, 4
  store i64 %168, i64* %PC
  %169 = inttoptr i64 %166 to i32*
  %170 = load i32, i32* %169
  %171 = sub i32 %170, 14
  %172 = icmp ult i32 %170, 14
  %173 = zext i1 %172 to i8
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %173, i8* %174, align 1, !tbaa !2432
  %175 = and i32 %171, 255
  %176 = call i32 @llvm.ctpop.i32(i32 %175) #16
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %179, i8* %180, align 1, !tbaa !2446
  %181 = xor i32 %170, 14
  %182 = xor i32 %181, %171
  %183 = lshr i32 %182, 4
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %185, i8* %186, align 1, !tbaa !2447
  %187 = icmp eq i32 %171, 0
  %188 = zext i1 %187 to i8
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %188, i8* %189, align 1, !tbaa !2448
  %190 = lshr i32 %171, 31
  %191 = trunc i32 %190 to i8
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %191, i8* %192, align 1, !tbaa !2449
  %193 = lshr i32 %170, 31
  %194 = xor i32 %190, %193
  %195 = add nuw nsw i32 %194, %193
  %196 = icmp eq i32 %195, 2
  %197 = zext i1 %196 to i8
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %197, i8* %198, align 1, !tbaa !2450
  %199 = load i64, i64* %PC
  %200 = add i64 %199, 21
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 6
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 6
  store i64 %204, i64* %PC
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %206 = load i8, i8* %205, align 1, !tbaa !2448
  %207 = icmp eq i8 %206, 0
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %BRANCH_TAKEN, align 1, !tbaa !2454
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %210 = select i1 %207, i64 %200, i64 %202
  store i64 %210, i64* %209, align 8, !tbaa !2428
  %211 = load i8, i8* %BRANCH_TAKEN
  %212 = icmp eq i8 %211, 1
  br i1 %212, label %block_400c78, label %block_400c69

block_400cfd:                                     ; preds = %block_400cd5
  %213 = load i64, i64* %PC
  %214 = add i64 %213, 10
  store i64 %214, i64* %PC
  store i64 -9223372036854775808, i64* %RAX, align 8, !tbaa !2428
  %215 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %216 = load i64, i64* %RBP
  %217 = sub i64 %216, 56
  %218 = load i64, i64* %PC
  %219 = add i64 %218, 5
  store i64 %219, i64* %PC
  %220 = inttoptr i64 %217 to double*
  %221 = load double, double* %220
  %222 = bitcast i8* %215 to double*
  store double %221, double* %222, align 1, !tbaa !2451
  %223 = getelementptr inbounds i8, i8* %215, i64 8
  %224 = bitcast i8* %223 to double*
  store double 0.000000e+00, double* %224, align 1, !tbaa !2451
  %225 = bitcast %union.vec128_t* %XMM0 to i8*
  %226 = load i64, i64* %PC
  %227 = add i64 %226, 5
  store i64 %227, i64* %PC
  %228 = bitcast i8* %225 to i64*
  %229 = load i64, i64* %228, align 1
  store i64 %229, i64* %RCX, align 1, !tbaa !2428
  %230 = load i64, i64* %RCX
  %231 = load i64, i64* %RAX
  %232 = load i64, i64* %PC
  %233 = add i64 %232, 3
  store i64 %233, i64* %PC
  %234 = xor i64 %231, %230
  store i64 %234, i64* %RCX, align 8, !tbaa !2428
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %235, align 1, !tbaa !2432
  %236 = trunc i64 %234 to i32
  %237 = and i32 %236, 255
  %238 = call i32 @llvm.ctpop.i32(i32 %237) #16
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  %241 = xor i8 %240, 1
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %241, i8* %242, align 1, !tbaa !2446
  %243 = icmp eq i64 %234, 0
  %244 = zext i1 %243 to i8
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %244, i8* %245, align 1, !tbaa !2448
  %246 = lshr i64 %234, 63
  %247 = trunc i64 %246 to i8
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %247, i8* %248, align 1, !tbaa !2449
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %249, align 1, !tbaa !2450
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %250, align 1, !tbaa !2447
  %251 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %252 = load i64, i64* %RCX
  %253 = load i64, i64* %PC
  %254 = add i64 %253, 5
  store i64 %254, i64* %PC
  %255 = bitcast i8* %251 to i64*
  store i64 %252, i64* %255, align 1, !tbaa !2428
  %256 = getelementptr inbounds i8, i8* %251, i64 8
  %257 = bitcast i8* %256 to i64*
  store i64 0, i64* %257, align 1, !tbaa !2428
  %258 = load i64, i64* %RBP
  %259 = sub i64 %258, 104
  %260 = bitcast %union.vec128_t* %XMM0 to i8*
  %261 = load i64, i64* %PC
  %262 = add i64 %261, 5
  store i64 %262, i64* %PC
  %263 = bitcast i8* %260 to double*
  %264 = load double, double* %263, align 1
  %265 = inttoptr i64 %259 to double*
  store double %264, double* %265
  br label %block_400d1e

block_400c19:                                     ; preds = %block_400bf0
  %266 = sub i64 %164, 16
  %267 = load i64, i64* %PC
  %268 = add i64 %267, 5
  store i64 %268, i64* %PC
  %269 = inttoptr i64 %266 to double*
  %270 = load double, double* %269
  %271 = bitcast i8* %163 to double*
  store double %270, double* %271, align 1, !tbaa !2451
  %272 = getelementptr inbounds i8, i8* %163, i64 8
  %273 = bitcast i8* %272 to double*
  store double 0.000000e+00, double* %273, align 1, !tbaa !2451
  %274 = load i64, i64* %RBP
  %275 = sub i64 %274, 64
  %276 = bitcast %union.vec128_t* %XMM0 to i8*
  %277 = load i64, i64* %PC
  %278 = add i64 %277, 5
  store i64 %278, i64* %PC
  %279 = bitcast i8* %276 to double*
  %280 = load double, double* %279, align 1
  %281 = inttoptr i64 %275 to double*
  store double %280, double* %281
  %282 = load i64, i64* %PC
  %283 = add i64 %282, 15
  %284 = load i64, i64* %PC
  %285 = add i64 %284, 5
  store i64 %285, i64* %PC
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %283, i64* %286, align 8, !tbaa !2428
  br label %block_400c32

block_400c78:                                     ; preds = %block_400c5f
  %287 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %288 = load i64, i64* %RBP
  %289 = sub i64 %288, 32
  %290 = load i64, i64* %PC
  %291 = add i64 %290, 5
  store i64 %291, i64* %PC
  %292 = inttoptr i64 %289 to double*
  %293 = load double, double* %292
  %294 = bitcast i8* %287 to double*
  store double %293, double* %294, align 1, !tbaa !2451
  %295 = getelementptr inbounds i8, i8* %287, i64 8
  %296 = bitcast i8* %295 to double*
  store double 0.000000e+00, double* %296, align 1, !tbaa !2451
  %297 = load i64, i64* %RBP
  %298 = sub i64 %297, 80
  %299 = bitcast %union.vec128_t* %XMM0 to i8*
  %300 = load i64, i64* %PC
  %301 = add i64 %300, 5
  store i64 %301, i64* %PC
  %302 = bitcast i8* %299 to double*
  %303 = load double, double* %302, align 1
  %304 = inttoptr i64 %298 to double*
  store double %303, double* %304
  br label %block_400c82

block_400cd5:                                     ; preds = %block_400ca5, %block_400cb4
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.3, %block_400cb4 ], [ %MEMORY.3, %block_400ca5 ]
  %305 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %306 = load i64, i64* %RBP
  %307 = sub i64 %306, 88
  %308 = load i64, i64* %PC
  %309 = add i64 %308, 5
  store i64 %309, i64* %PC
  %310 = inttoptr i64 %307 to double*
  %311 = load double, double* %310
  %312 = bitcast i8* %305 to double*
  store double %311, double* %312, align 1, !tbaa !2451
  %313 = getelementptr inbounds i8, i8* %305, i64 8
  %314 = bitcast i8* %313 to double*
  store double 0.000000e+00, double* %314, align 1, !tbaa !2451
  %315 = load i64, i64* %RBP
  %316 = sub i64 %315, 36
  %317 = load i64, i64* %PC
  %318 = add i64 %317, 3
  store i64 %318, i64* %PC
  %319 = inttoptr i64 %316 to i32*
  %320 = load i32, i32* %319
  %321 = zext i32 %320 to i64
  store i64 %321, i64* %RAX, align 8, !tbaa !2428
  %322 = load i64, i64* %RAX
  %323 = load i64, i64* %PC
  %324 = add i64 %323, 3
  store i64 %324, i64* %PC
  %325 = and i64 2, %322
  %326 = trunc i64 %325 to i32
  store i64 %325, i64* %RAX, align 8, !tbaa !2428
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %327, align 1, !tbaa !2432
  %328 = and i32 %326, 255
  %329 = call i32 @llvm.ctpop.i32(i32 %328) #16
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  %332 = xor i8 %331, 1
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %332, i8* %333, align 1, !tbaa !2446
  %334 = icmp eq i32 %326, 0
  %335 = zext i1 %334 to i8
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %335, i8* %336, align 1, !tbaa !2448
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %337, align 1, !tbaa !2449
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %338, align 1, !tbaa !2450
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %339, align 1, !tbaa !2447
  %340 = load i32, i32* %EAX
  %341 = zext i32 %340 to i64
  %342 = load i64, i64* %PC
  %343 = add i64 %342, 3
  store i64 %343, i64* %PC
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %344, align 1, !tbaa !2432
  %345 = and i32 %340, 255
  %346 = call i32 @llvm.ctpop.i32(i32 %345) #16
  %347 = trunc i32 %346 to i8
  %348 = and i8 %347, 1
  %349 = xor i8 %348, 1
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %349, i8* %350, align 1, !tbaa !2446
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %351, align 1, !tbaa !2447
  %352 = icmp eq i32 %340, 0
  %353 = zext i1 %352 to i8
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %353, i8* %354, align 1, !tbaa !2448
  %355 = lshr i32 %340, 31
  %356 = trunc i32 %355 to i8
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %356, i8* %357, align 1, !tbaa !2449
  %358 = lshr i32 %340, 31
  %359 = xor i32 %355, %358
  %360 = add nuw nsw i32 %359, %358
  %361 = icmp eq i32 %360, 2
  %362 = zext i1 %361 to i8
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %362, i8* %363, align 1, !tbaa !2450
  %364 = load i64, i64* %RBP
  %365 = sub i64 %364, 96
  %366 = bitcast %union.vec128_t* %XMM0 to i8*
  %367 = load i64, i64* %PC
  %368 = add i64 %367, 5
  store i64 %368, i64* %PC
  %369 = bitcast i8* %366 to double*
  %370 = load double, double* %369, align 1
  %371 = inttoptr i64 %365 to double*
  store double %370, double* %371
  %372 = load i64, i64* %PC
  %373 = add i64 %372, 21
  %374 = load i64, i64* %PC
  %375 = add i64 %374, 6
  %376 = load i64, i64* %PC
  %377 = add i64 %376, 6
  store i64 %377, i64* %PC
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %379 = load i8, i8* %378, align 1, !tbaa !2448
  %380 = icmp eq i8 %379, 0
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %BRANCH_TAKEN, align 1, !tbaa !2454
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %383 = select i1 %380, i64 %373, i64 %375
  store i64 %383, i64* %382, align 8, !tbaa !2428
  %384 = load i8, i8* %BRANCH_TAKEN
  %385 = icmp eq i8 %384, 1
  br i1 %385, label %block_400cfd, label %block_400cee

block_400c55:                                     ; preds = %block_400c32
  %386 = load i64, i64* %RBP
  %387 = sub i64 %386, 36
  %388 = load i64, i64* %PC
  %389 = add i64 %388, 4
  store i64 %389, i64* %PC
  %390 = inttoptr i64 %387 to i32*
  %391 = load i32, i32* %390
  %392 = sub i32 %391, 12
  %393 = icmp ult i32 %391, 12
  %394 = zext i1 %393 to i8
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %394, i8* %395, align 1, !tbaa !2432
  %396 = and i32 %392, 255
  %397 = call i32 @llvm.ctpop.i32(i32 %396) #16
  %398 = trunc i32 %397 to i8
  %399 = and i8 %398, 1
  %400 = xor i8 %399, 1
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %400, i8* %401, align 1, !tbaa !2446
  %402 = xor i32 %391, 12
  %403 = xor i32 %402, %392
  %404 = lshr i32 %403, 4
  %405 = trunc i32 %404 to i8
  %406 = and i8 %405, 1
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %406, i8* %407, align 1, !tbaa !2447
  %408 = icmp eq i32 %392, 0
  %409 = zext i1 %408 to i8
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %409, i8* %410, align 1, !tbaa !2448
  %411 = lshr i32 %392, 31
  %412 = trunc i32 %411 to i8
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %412, i8* %413, align 1, !tbaa !2449
  %414 = lshr i32 %391, 31
  %415 = xor i32 %411, %414
  %416 = add nuw nsw i32 %415, %414
  %417 = icmp eq i32 %416, 2
  %418 = zext i1 %417 to i8
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %418, i8* %419, align 1, !tbaa !2450
  %420 = load i64, i64* %PC
  %421 = add i64 %420, 16
  %422 = load i64, i64* %PC
  %423 = add i64 %422, 6
  %424 = load i64, i64* %PC
  %425 = add i64 %424, 6
  store i64 %425, i64* %PC
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %427 = load i8, i8* %426, align 1, !tbaa !2448
  store i8 %427, i8* %BRANCH_TAKEN, align 1, !tbaa !2454
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %429 = icmp ne i8 %427, 0
  %430 = select i1 %429, i64 %421, i64 %423
  store i64 %430, i64* %428, align 8, !tbaa !2428
  %431 = load i8, i8* %BRANCH_TAKEN
  %432 = icmp eq i8 %431, 1
  br i1 %432, label %block_400c69, label %block_400c5f

block_400cb4:                                     ; preds = %block_400c8c
  %433 = load i64, i64* %PC
  %434 = add i64 %433, 10
  store i64 %434, i64* %PC
  store i64 -9223372036854775808, i64* %RAX, align 8, !tbaa !2428
  %435 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %436 = load i64, i64* %RBP
  %437 = sub i64 %436, 48
  %438 = load i64, i64* %PC
  %439 = add i64 %438, 5
  store i64 %439, i64* %PC
  %440 = inttoptr i64 %437 to double*
  %441 = load double, double* %440
  %442 = bitcast i8* %435 to double*
  store double %441, double* %442, align 1, !tbaa !2451
  %443 = getelementptr inbounds i8, i8* %435, i64 8
  %444 = bitcast i8* %443 to double*
  store double 0.000000e+00, double* %444, align 1, !tbaa !2451
  %445 = bitcast %union.vec128_t* %XMM0 to i8*
  %446 = load i64, i64* %PC
  %447 = add i64 %446, 5
  store i64 %447, i64* %PC
  %448 = bitcast i8* %445 to i64*
  %449 = load i64, i64* %448, align 1
  store i64 %449, i64* %RCX, align 1, !tbaa !2428
  %450 = load i64, i64* %RCX
  %451 = load i64, i64* %RAX
  %452 = load i64, i64* %PC
  %453 = add i64 %452, 3
  store i64 %453, i64* %PC
  %454 = xor i64 %451, %450
  store i64 %454, i64* %RCX, align 8, !tbaa !2428
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %455, align 1, !tbaa !2432
  %456 = trunc i64 %454 to i32
  %457 = and i32 %456, 255
  %458 = call i32 @llvm.ctpop.i32(i32 %457) #16
  %459 = trunc i32 %458 to i8
  %460 = and i8 %459, 1
  %461 = xor i8 %460, 1
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %461, i8* %462, align 1, !tbaa !2446
  %463 = icmp eq i64 %454, 0
  %464 = zext i1 %463 to i8
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %464, i8* %465, align 1, !tbaa !2448
  %466 = lshr i64 %454, 63
  %467 = trunc i64 %466 to i8
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %467, i8* %468, align 1, !tbaa !2449
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %469, align 1, !tbaa !2450
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %470, align 1, !tbaa !2447
  %471 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %472 = load i64, i64* %RCX
  %473 = load i64, i64* %PC
  %474 = add i64 %473, 5
  store i64 %474, i64* %PC
  %475 = bitcast i8* %471 to i64*
  store i64 %472, i64* %475, align 1, !tbaa !2428
  %476 = getelementptr inbounds i8, i8* %471, i64 8
  %477 = bitcast i8* %476 to i64*
  store i64 0, i64* %477, align 1, !tbaa !2428
  %478 = load i64, i64* %RBP
  %479 = sub i64 %478, 88
  %480 = bitcast %union.vec128_t* %XMM0 to i8*
  %481 = load i64, i64* %PC
  %482 = add i64 %481, 5
  store i64 %482, i64* %PC
  %483 = bitcast i8* %480 to double*
  %484 = load double, double* %483, align 1
  %485 = inttoptr i64 %479 to double*
  store double %484, double* %485
  br label %block_400cd5

block_400c32:                                     ; preds = %block_400c28, %block_400c19
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_400c28 ], [ %2, %block_400c19 ]
  %486 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %487 = load i64, i64* %RBP
  %488 = sub i64 %487, 64
  %489 = load i64, i64* %PC
  %490 = add i64 %489, 5
  store i64 %490, i64* %PC
  %491 = inttoptr i64 %488 to double*
  %492 = load double, double* %491
  %493 = bitcast i8* %486 to double*
  store double %492, double* %493, align 1, !tbaa !2451
  %494 = getelementptr inbounds i8, i8* %486, i64 8
  %495 = bitcast i8* %494 to double*
  store double 0.000000e+00, double* %495, align 1, !tbaa !2451
  %496 = load i64, i64* %RBP
  %497 = sub i64 %496, 48
  %498 = bitcast %union.vec128_t* %XMM0 to i8*
  %499 = load i64, i64* %PC
  %500 = add i64 %499, 5
  store i64 %500, i64* %PC
  %501 = bitcast i8* %498 to double*
  %502 = load double, double* %501, align 1
  %503 = inttoptr i64 %497 to double*
  store double %502, double* %503
  %504 = load i64, i64* %RBP
  %505 = sub i64 %504, 36
  %506 = load i64, i64* %PC
  %507 = add i64 %506, 4
  store i64 %507, i64* %PC
  %508 = inttoptr i64 %505 to i32*
  %509 = load i32, i32* %508
  %510 = sub i32 %509, 4
  %511 = icmp ult i32 %509, 4
  %512 = zext i1 %511 to i8
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %512, i8* %513, align 1, !tbaa !2432
  %514 = and i32 %510, 255
  %515 = call i32 @llvm.ctpop.i32(i32 %514) #16
  %516 = trunc i32 %515 to i8
  %517 = and i8 %516, 1
  %518 = xor i8 %517, 1
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %518, i8* %519, align 1, !tbaa !2446
  %520 = xor i32 %509, 4
  %521 = xor i32 %520, %510
  %522 = lshr i32 %521, 4
  %523 = trunc i32 %522 to i8
  %524 = and i8 %523, 1
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %524, i8* %525, align 1, !tbaa !2447
  %526 = icmp eq i32 %510, 0
  %527 = zext i1 %526 to i8
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %527, i8* %528, align 1, !tbaa !2448
  %529 = lshr i32 %510, 31
  %530 = trunc i32 %529 to i8
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %530, i8* %531, align 1, !tbaa !2449
  %532 = lshr i32 %509, 31
  %533 = xor i32 %529, %532
  %534 = add nuw nsw i32 %533, %532
  %535 = icmp eq i32 %534, 2
  %536 = zext i1 %535 to i8
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %536, i8* %537, align 1, !tbaa !2450
  %538 = load i64, i64* %PC
  %539 = add i64 %538, 21
  %540 = load i64, i64* %PC
  %541 = add i64 %540, 6
  %542 = load i64, i64* %PC
  %543 = add i64 %542, 6
  store i64 %543, i64* %PC
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %545 = load i8, i8* %544, align 1, !tbaa !2449
  %546 = icmp ne i8 %545, 0
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %548 = load i8, i8* %547, align 1, !tbaa !2450
  %549 = icmp ne i8 %548, 0
  %550 = xor i1 %546, %549
  %551 = xor i1 %550, true
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %BRANCH_TAKEN, align 1, !tbaa !2454
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %554 = select i1 %550, i64 %541, i64 %539
  store i64 %554, i64* %553, align 8, !tbaa !2428
  %555 = load i8, i8* %BRANCH_TAKEN
  %556 = icmp eq i8 %555, 1
  br i1 %556, label %block_400c55, label %block_400c46

block_400d1e:                                     ; preds = %block_400cee, %block_400cfd
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_400cfd ], [ %MEMORY.0, %block_400cee ]
  %557 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %558 = load i64, i64* %RBP
  %559 = sub i64 %558, 104
  %560 = load i64, i64* %PC
  %561 = add i64 %560, 5
  store i64 %561, i64* %PC
  %562 = inttoptr i64 %559 to double*
  %563 = load double, double* %562
  %564 = bitcast i8* %557 to double*
  store double %563, double* %564, align 1, !tbaa !2451
  %565 = getelementptr inbounds i8, i8* %557, i64 8
  %566 = bitcast i8* %565 to double*
  store double 0.000000e+00, double* %566, align 1, !tbaa !2451
  %567 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %568 = load i64, i64* %RBP
  %569 = sub i64 %568, 96
  %570 = load i64, i64* %PC
  %571 = add i64 %570, 5
  store i64 %571, i64* %PC
  %572 = inttoptr i64 %569 to double*
  %573 = load double, double* %572
  %574 = bitcast i8* %567 to double*
  store double %573, double* %574, align 1, !tbaa !2451
  %575 = getelementptr inbounds i8, i8* %567, i64 8
  %576 = bitcast i8* %575 to double*
  store double 0.000000e+00, double* %576, align 1, !tbaa !2451
  %577 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %578 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %579 = bitcast %union.vec128_t* %XMM0 to i8*
  %580 = load i64, i64* %PC
  %581 = add i64 %580, 4
  store i64 %581, i64* %PC
  %582 = bitcast i8* %578 to double*
  %583 = load double, double* %582, align 1
  %584 = getelementptr inbounds i8, i8* %578, i64 8
  %585 = bitcast i8* %584 to i64*
  %586 = load i64, i64* %585, align 1
  %587 = bitcast i8* %579 to double*
  %588 = load double, double* %587, align 1
  %589 = fadd double %583, %588
  %590 = bitcast i8* %577 to double*
  store double %589, double* %590, align 1, !tbaa !2451
  %591 = getelementptr inbounds i8, i8* %577, i64 8
  %592 = bitcast i8* %591 to i64*
  store i64 %586, i64* %592, align 1, !tbaa !2451
  %593 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %594 = bitcast %union.vec128_t* %XMM1 to i8*
  %595 = load i64, i64* %PC
  %596 = add i64 %595, 3
  store i64 %596, i64* %PC
  %597 = bitcast i8* %594 to <2 x i32>*
  %598 = load <2 x i32>, <2 x i32>* %597, align 1
  %599 = getelementptr inbounds i8, i8* %594, i64 8
  %600 = bitcast i8* %599 to <2 x i32>*
  %601 = load <2 x i32>, <2 x i32>* %600, align 1
  %602 = extractelement <2 x i32> %598, i32 0
  %603 = bitcast i8* %593 to i32*
  store i32 %602, i32* %603, align 1, !tbaa !2455
  %604 = extractelement <2 x i32> %598, i32 1
  %605 = getelementptr inbounds i8, i8* %593, i64 4
  %606 = bitcast i8* %605 to i32*
  store i32 %604, i32* %606, align 1, !tbaa !2455
  %607 = extractelement <2 x i32> %601, i32 0
  %608 = getelementptr inbounds i8, i8* %593, i64 8
  %609 = bitcast i8* %608 to i32*
  store i32 %607, i32* %609, align 1, !tbaa !2455
  %610 = extractelement <2 x i32> %601, i32 1
  %611 = getelementptr inbounds i8, i8* %593, i64 12
  %612 = bitcast i8* %611 to i32*
  store i32 %610, i32* %612, align 1, !tbaa !2455
  %613 = load i64, i64* %PC
  %614 = add i64 %613, 1
  store i64 %614, i64* %PC
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %616 = load i64, i64* %615, align 8, !tbaa !2428
  %617 = add i64 %616, 8
  %618 = inttoptr i64 %616 to i64*
  %619 = load i64, i64* %618
  store i64 %619, i64* %RBP, align 8, !tbaa !2428
  store i64 %617, i64* %615, align 8, !tbaa !2428
  %620 = load i64, i64* %PC
  %621 = add i64 %620, 1
  store i64 %621, i64* %PC
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %624 = load i64, i64* %623, align 8, !tbaa !2428
  %625 = inttoptr i64 %624 to i64*
  %626 = load i64, i64* %625
  store i64 %626, i64* %622, align 8, !tbaa !2428
  %627 = add i64 %624, 8
  store i64 %627, i64* %623, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.2

block_400c8c:                                     ; preds = %block_400c82, %block_400c46
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.5, %block_400c82 ], [ %MEMORY.1, %block_400c46 ]
  %628 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %629 = load i64, i64* %RBP
  %630 = sub i64 %629, 72
  %631 = load i64, i64* %PC
  %632 = add i64 %631, 5
  store i64 %632, i64* %PC
  %633 = inttoptr i64 %630 to double*
  %634 = load double, double* %633
  %635 = bitcast i8* %628 to double*
  store double %634, double* %635, align 1, !tbaa !2451
  %636 = getelementptr inbounds i8, i8* %628, i64 8
  %637 = bitcast i8* %636 to double*
  store double 0.000000e+00, double* %637, align 1, !tbaa !2451
  %638 = load i64, i64* %RBP
  %639 = sub i64 %638, 56
  %640 = bitcast %union.vec128_t* %XMM0 to i8*
  %641 = load i64, i64* %PC
  %642 = add i64 %641, 5
  store i64 %642, i64* %PC
  %643 = bitcast i8* %640 to double*
  %644 = load double, double* %643, align 1
  %645 = inttoptr i64 %639 to double*
  store double %644, double* %645
  %646 = load i64, i64* %RBP
  %647 = sub i64 %646, 36
  %648 = load i64, i64* %PC
  %649 = add i64 %648, 3
  store i64 %649, i64* %PC
  %650 = inttoptr i64 %647 to i32*
  %651 = load i32, i32* %650
  %652 = zext i32 %651 to i64
  store i64 %652, i64* %RAX, align 8, !tbaa !2428
  %653 = load i64, i64* %RAX
  %654 = load i64, i64* %PC
  %655 = add i64 %654, 3
  store i64 %655, i64* %PC
  %656 = and i64 1, %653
  %657 = trunc i64 %656 to i32
  store i64 %656, i64* %RAX, align 8, !tbaa !2428
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %658, align 1, !tbaa !2432
  %659 = and i32 %657, 255
  %660 = call i32 @llvm.ctpop.i32(i32 %659) #16
  %661 = trunc i32 %660 to i8
  %662 = and i8 %661, 1
  %663 = xor i8 %662, 1
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %663, i8* %664, align 1, !tbaa !2446
  %665 = icmp eq i32 %657, 0
  %666 = zext i1 %665 to i8
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %666, i8* %667, align 1, !tbaa !2448
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %668, align 1, !tbaa !2449
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %669, align 1, !tbaa !2450
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %670, align 1, !tbaa !2447
  %671 = load i32, i32* %EAX
  %672 = zext i32 %671 to i64
  %673 = load i64, i64* %PC
  %674 = add i64 %673, 3
  store i64 %674, i64* %PC
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %675, align 1, !tbaa !2432
  %676 = and i32 %671, 255
  %677 = call i32 @llvm.ctpop.i32(i32 %676) #16
  %678 = trunc i32 %677 to i8
  %679 = and i8 %678, 1
  %680 = xor i8 %679, 1
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %680, i8* %681, align 1, !tbaa !2446
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %682, align 1, !tbaa !2447
  %683 = icmp eq i32 %671, 0
  %684 = zext i1 %683 to i8
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %684, i8* %685, align 1, !tbaa !2448
  %686 = lshr i32 %671, 31
  %687 = trunc i32 %686 to i8
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %687, i8* %688, align 1, !tbaa !2449
  %689 = lshr i32 %671, 31
  %690 = xor i32 %686, %689
  %691 = add nuw nsw i32 %690, %689
  %692 = icmp eq i32 %691, 2
  %693 = zext i1 %692 to i8
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %693, i8* %694, align 1, !tbaa !2450
  %695 = load i64, i64* %PC
  %696 = add i64 %695, 21
  %697 = load i64, i64* %PC
  %698 = add i64 %697, 6
  %699 = load i64, i64* %PC
  %700 = add i64 %699, 6
  store i64 %700, i64* %PC
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %702 = load i8, i8* %701, align 1, !tbaa !2448
  %703 = icmp eq i8 %702, 0
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %BRANCH_TAKEN, align 1, !tbaa !2454
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %706 = select i1 %703, i64 %696, i64 %698
  store i64 %706, i64* %705, align 8, !tbaa !2428
  %707 = load i8, i8* %BRANCH_TAKEN
  %708 = icmp eq i8 %707, 1
  br i1 %708, label %block_400cb4, label %block_400ca5

block_400cee:                                     ; preds = %block_400cd5
  %709 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %710 = load i64, i64* %RBP
  %711 = sub i64 %710, 56
  %712 = load i64, i64* %PC
  %713 = add i64 %712, 5
  store i64 %713, i64* %PC
  %714 = inttoptr i64 %711 to double*
  %715 = load double, double* %714
  %716 = bitcast i8* %709 to double*
  store double %715, double* %716, align 1, !tbaa !2451
  %717 = getelementptr inbounds i8, i8* %709, i64 8
  %718 = bitcast i8* %717 to double*
  store double 0.000000e+00, double* %718, align 1, !tbaa !2451
  %719 = load i64, i64* %RBP
  %720 = sub i64 %719, 104
  %721 = bitcast %union.vec128_t* %XMM0 to i8*
  %722 = load i64, i64* %PC
  %723 = add i64 %722, 5
  store i64 %723, i64* %PC
  %724 = bitcast i8* %721 to double*
  %725 = load double, double* %724, align 1
  %726 = inttoptr i64 %720 to double*
  store double %725, double* %726
  %727 = load i64, i64* %PC
  %728 = add i64 %727, 38
  %729 = load i64, i64* %PC
  %730 = add i64 %729, 5
  store i64 %730, i64* %PC
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %728, i64* %731, align 8, !tbaa !2428
  br label %block_400d1e

block_400c69:                                     ; preds = %block_400c55, %block_400c5f
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.1, %block_400c55 ], [ %MEMORY.1, %block_400c5f ]
  %732 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %733 = load i64, i64* %RBP
  %734 = sub i64 %733, 16
  %735 = load i64, i64* %PC
  %736 = add i64 %735, 5
  store i64 %736, i64* %PC
  %737 = inttoptr i64 %734 to double*
  %738 = load double, double* %737
  %739 = bitcast i8* %732 to double*
  store double %738, double* %739, align 1, !tbaa !2451
  %740 = getelementptr inbounds i8, i8* %732, i64 8
  %741 = bitcast i8* %740 to double*
  store double 0.000000e+00, double* %741, align 1, !tbaa !2451
  %742 = load i64, i64* %RBP
  %743 = sub i64 %742, 80
  %744 = bitcast %union.vec128_t* %XMM0 to i8*
  %745 = load i64, i64* %PC
  %746 = add i64 %745, 5
  store i64 %746, i64* %PC
  %747 = bitcast i8* %744 to double*
  %748 = load double, double* %747, align 1
  %749 = inttoptr i64 %743 to double*
  store double %748, double* %749
  %750 = load i64, i64* %PC
  %751 = add i64 %750, 15
  %752 = load i64, i64* %PC
  %753 = add i64 %752, 5
  store i64 %753, i64* %PC
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %751, i64* %754, align 8, !tbaa !2428
  br label %block_400c82

block_400c28:                                     ; preds = %block_400bf0
  %755 = sub i64 %164, 24
  %756 = load i64, i64* %PC
  %757 = add i64 %756, 5
  store i64 %757, i64* %PC
  %758 = inttoptr i64 %755 to double*
  %759 = load double, double* %758
  %760 = bitcast i8* %163 to double*
  store double %759, double* %760, align 1, !tbaa !2451
  %761 = getelementptr inbounds i8, i8* %163, i64 8
  %762 = bitcast i8* %761 to double*
  store double 0.000000e+00, double* %762, align 1, !tbaa !2451
  %763 = load i64, i64* %RBP
  %764 = sub i64 %763, 64
  %765 = bitcast %union.vec128_t* %XMM0 to i8*
  %766 = load i64, i64* %PC
  %767 = add i64 %766, 5
  store i64 %767, i64* %PC
  %768 = bitcast i8* %765 to double*
  %769 = load double, double* %768, align 1
  %770 = inttoptr i64 %764 to double*
  store double %769, double* %770
  br label %block_400c32

block_400c46:                                     ; preds = %block_400c32
  %771 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %772 = load i64, i64* %RBP
  %773 = sub i64 %772, 24
  %774 = load i64, i64* %PC
  %775 = add i64 %774, 5
  store i64 %775, i64* %PC
  %776 = inttoptr i64 %773 to double*
  %777 = load double, double* %776
  %778 = bitcast i8* %771 to double*
  store double %777, double* %778, align 1, !tbaa !2451
  %779 = getelementptr inbounds i8, i8* %771, i64 8
  %780 = bitcast i8* %779 to double*
  store double 0.000000e+00, double* %780, align 1, !tbaa !2451
  %781 = load i64, i64* %RBP
  %782 = sub i64 %781, 72
  %783 = bitcast %union.vec128_t* %XMM0 to i8*
  %784 = load i64, i64* %PC
  %785 = add i64 %784, 5
  store i64 %785, i64* %PC
  %786 = bitcast i8* %783 to double*
  %787 = load double, double* %786, align 1
  %788 = inttoptr i64 %782 to double*
  store double %787, double* %788
  %789 = load i64, i64* %PC
  %790 = add i64 %789, 60
  %791 = load i64, i64* %PC
  %792 = add i64 %791, 5
  store i64 %792, i64* %PC
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %790, i64* %793, align 8, !tbaa !2428
  br label %block_400c8c

block_400ca5:                                     ; preds = %block_400c8c
  %794 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %795 = load i64, i64* %RBP
  %796 = sub i64 %795, 48
  %797 = load i64, i64* %PC
  %798 = add i64 %797, 5
  store i64 %798, i64* %PC
  %799 = inttoptr i64 %796 to double*
  %800 = load double, double* %799
  %801 = bitcast i8* %794 to double*
  store double %800, double* %801, align 1, !tbaa !2451
  %802 = getelementptr inbounds i8, i8* %794, i64 8
  %803 = bitcast i8* %802 to double*
  store double 0.000000e+00, double* %803, align 1, !tbaa !2451
  %804 = load i64, i64* %RBP
  %805 = sub i64 %804, 88
  %806 = bitcast %union.vec128_t* %XMM0 to i8*
  %807 = load i64, i64* %PC
  %808 = add i64 %807, 5
  store i64 %808, i64* %PC
  %809 = bitcast i8* %806 to double*
  %810 = load double, double* %809, align 1
  %811 = inttoptr i64 %805 to double*
  store double %810, double* %811
  %812 = load i64, i64* %PC
  %813 = add i64 %812, 38
  %814 = load i64, i64* %PC
  %815 = add i64 %814, 5
  store i64 %815, i64* %PC
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %813, i64* %816, align 8, !tbaa !2428
  br label %block_400cd5

block_400c82:                                     ; preds = %block_400c69, %block_400c78
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.4, %block_400c69 ], [ %MEMORY.1, %block_400c78 ]
  %817 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %818 = load i64, i64* %RBP
  %819 = sub i64 %818, 80
  %820 = load i64, i64* %PC
  %821 = add i64 %820, 5
  store i64 %821, i64* %PC
  %822 = inttoptr i64 %819 to double*
  %823 = load double, double* %822
  %824 = bitcast i8* %817 to double*
  store double %823, double* %824, align 1, !tbaa !2451
  %825 = getelementptr inbounds i8, i8* %817, i64 8
  %826 = bitcast i8* %825 to double*
  store double 0.000000e+00, double* %826, align 1, !tbaa !2451
  %827 = load i64, i64* %RBP
  %828 = sub i64 %827, 72
  %829 = bitcast %union.vec128_t* %XMM0 to i8*
  %830 = load i64, i64* %PC
  %831 = add i64 %830, 5
  store i64 %831, i64* %PC
  %832 = bitcast i8* %829 to double*
  %833 = load double, double* %832, align 1
  %834 = inttoptr i64 %828 to double*
  store double %833, double* %834
  br label %block_400c8c
}

; Function Attrs: noinline
define %struct.Memory* @sub_400df0___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400df0:
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
  store i64 ptrtoint (void ()* @callback_sub_400df0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_400d80___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
  %123 = call %struct.Memory* @ext_602c70___libc_start_main(%struct.State* %0, i64 %122, %struct.Memory* %2)
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 1
  store i64 %125, i64* %PC
  %126 = load i64, i64* %PC
  %127 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %126, %struct.Memory* %123)
  ret %struct.Memory* %127
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
  %45 = call i32 @llvm.ctpop.i32(i32 %44) #16
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
  store i8 %77, i8* %79, align 1, !tbaa !2454
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %81 = trunc i64 %78 to i32
  %82 = and i32 %81, 255
  %83 = call i32 @llvm.ctpop.i32(i32 %82) #16
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %80, align 1, !tbaa !2454
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %87, align 1, !tbaa !2454
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %89 = icmp eq i64 %78, 0
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %88, align 1, !tbaa !2454
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %92 = lshr i64 %78, 63
  %93 = trunc i64 %92 to i8
  store i8 %93, i8* %91, align 1, !tbaa !2454
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %94, align 1, !tbaa !2454
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
  store i8 %103, i8* %105, align 1, !tbaa !2454
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %107 = trunc i64 %104 to i32
  %108 = and i32 %107, 255
  %109 = call i32 @llvm.ctpop.i32(i32 %108) #16
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %106, align 1, !tbaa !2454
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %113, align 1, !tbaa !2454
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %115 = icmp eq i64 %104, 0
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %114, align 1, !tbaa !2454
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %117, align 1, !tbaa !2454
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %118, align 1, !tbaa !2454
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
  %131 = call i32 @llvm.ctpop.i32(i32 %130) #16
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
  store i8 %160, i8* %162, align 1, !tbaa !2454
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %164 = trunc i64 %161 to i32
  %165 = and i32 %164, 255
  %166 = call i32 @llvm.ctpop.i32(i32 %165) #16
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  %169 = xor i8 %168, 1
  store i8 %169, i8* %163, align 1, !tbaa !2454
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %170, align 1, !tbaa !2454
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %172 = icmp eq i64 %161, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %171, align 1, !tbaa !2454
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %175 = lshr i64 %161, 63
  %176 = trunc i64 %175 to i8
  store i8 %176, i8* %174, align 1, !tbaa !2454
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %177, align 1, !tbaa !2454
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 23
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 2
  %182 = load i64, i64* %PC
  %183 = add i64 %182, 2
  store i64 %183, i64* %PC
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %185 = load i8, i8* %184, align 1, !tbaa !2448
  store i8 %185, i8* %BRANCH_TAKEN, align 1, !tbaa !2454
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
  %224 = call i32 @llvm.ctpop.i32(i32 %223) #16
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
  store i8 %244, i8* %BRANCH_TAKEN, align 1, !tbaa !2454
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
define %struct.Memory* @sub_400d80___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400d80:
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
  store i8 %181, i8* %183, align 1, !tbaa !2454
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %185 = trunc i64 %182 to i32
  %186 = and i32 %185, 255
  %187 = call i32 @llvm.ctpop.i32(i32 %186) #16
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  store i8 %190, i8* %184, align 1, !tbaa !2454
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %191, align 1, !tbaa !2454
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %193 = icmp eq i64 %182, 0
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %192, align 1, !tbaa !2454
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %196 = lshr i64 %182, 63
  %197 = trunc i64 %196 to i8
  store i8 %197, i8* %195, align 1, !tbaa !2454
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %198, align 1, !tbaa !2454
  %199 = load i64, i64* %PC
  %200 = sub i64 %199, 2420
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
  %211 = call %struct.Memory* @sub_400438__init_proc(%struct.State* %0, i64 %210, %struct.Memory* %2)
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
  store i8 %240, i8* %BRANCH_TAKEN, align 1, !tbaa !2454
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %242 = icmp ne i8 %240, 0
  %243 = select i1 %242, i64 %234, i64 %236
  store i64 %243, i64* %241, align 8, !tbaa !2428
  %244 = load i8, i8* %BRANCH_TAKEN
  %245 = icmp eq i8 %244, 1
  br i1 %245, label %block_400dd6, label %block_400db6

block_400dd6:                                     ; preds = %block_400dc0, %block_400d80
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_400d80 ], [ %387, %block_400dc0 ]
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

block_400db6:                                     ; preds = %block_400d80
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
  br label %block_400dc0

block_400dc0:                                     ; preds = %block_400dc0, %block_400db6
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_400db6 ], [ %387, %block_400dc0 ]
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
  store i8 %466, i8* %BRANCH_TAKEN, align 1, !tbaa !2454
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %468 = select i1 %465, i64 %458, i64 %460
  store i64 %468, i64* %467, align 8, !tbaa !2428
  %469 = load i8, i8* %BRANCH_TAKEN
  %470 = icmp eq i8 %469, 1
  br i1 %470, label %block_400dc0, label %block_400dd6
}

; Function Attrs: noinline
define %struct.Memory* @sub_400df4__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400df4:
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

; Function Attrs: noinline
define internal %struct.Memory* @ext_602c68_printf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602c78_floor(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400df0___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400df0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400df0___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400df0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400d80___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400d80;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400d80___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400d80___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400570;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400570_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602c70___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400df4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400df4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400438;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400438__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_400df0___libc_csu_fini()
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
  call void @callback_sub_400d80___libc_csu_init()
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
!2451 = !{!2452, !2452, i64 0}
!2452 = !{!"double", !2430, i64 0}
!2453 = !{!2445, !2445, i64 0}
!2454 = !{!2430, !2430, i64 0}
!2455 = !{!2456, !2456, i64 0}
!2456 = !{!"float", !2430, i64 0}
