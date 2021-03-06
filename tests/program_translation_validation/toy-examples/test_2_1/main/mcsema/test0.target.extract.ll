; ModuleID = 'mcsema/test0.target.opt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

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
%union.anon = type { i64 }
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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4004f0.foo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %PC.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC.i, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %RSP.i48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %RBX.i46 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %12 = load i64, i64* %RBX.i46, align 8
  %13 = add i64 %10, 4
  store i64 %13, i64* %PC.i, align 8
  %14 = add i64 %7, -16
  %15 = inttoptr i64 %14 to i64*
  store i64 %12, i64* %15, align 8
  %16 = load i64, i64* %PC.i, align 8
  %17 = add i64 %7, -56
  store i64 %17, i64* %RSP.i48, align 8
  %18 = icmp ult i64 %14, 40
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = trunc i64 %17 to i32
  %22 = and i32 %21, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = xor i64 %14, %17
  %29 = lshr i64 %28, 4
  %30 = trunc i64 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i64 %17, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i64 %17, 63
  %37 = trunc i64 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %14, 63
  %40 = xor i64 %36, %39
  %41 = add nuw nsw i64 %40, %39
  %42 = icmp eq i64 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  store i64 100, i64* %RAX.i, align 8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i41 = getelementptr inbounds %union.anon, %union.anon* %46, i64 0, i32 0
  store i64 200, i64* %RCX.i41, align 8
  %RDX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 300, i64* %RDX.i, align 8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i38 = bitcast %union.anon* %47 to i32*
  %48 = getelementptr inbounds %union.anon, %union.anon* %47, i64 0, i32 0
  store i64 400, i64* %48, align 8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i36 = bitcast %union.anon* %49 to i32*
  %50 = getelementptr inbounds %union.anon, %union.anon* %49, i64 0, i32 0
  store i64 500, i64* %50, align 8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i34 = bitcast %union.anon* %51 to i32*
  %52 = getelementptr inbounds %union.anon, %union.anon* %51, i64 0, i32 0
  store i64 600, i64* %52, align 8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i32 = bitcast %union.anon* %53 to i32*
  %54 = getelementptr inbounds %union.anon, %union.anon* %53, i64 0, i32 0
  store i64 10, i64* %54, align 8
  store i64 20, i64* %RBX.i46, align 8
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -12
  %57 = add i64 %16, 55
  store i64 %57, i64* %PC.i, align 8
  %58 = inttoptr i64 %56 to i32*
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %59 to i32*
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -16
  %62 = load i32, i32* %EDI.i, align 4
  %63 = load i64, i64* %PC.i, align 8
  %64 = add i64 %63, 3
  store i64 %64, i64* %PC.i, align 8
  %65 = inttoptr i64 %61 to i32*
  store i32 %62, i32* %65, align 4
  %RSI.i23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -24
  %68 = load i64, i64* %RSI.i23, align 8
  %69 = load i64, i64* %PC.i, align 8
  %70 = add i64 %69, 4
  store i64 %70, i64* %PC.i, align 8
  %71 = inttoptr i64 %67 to i64*
  store i64 %68, i64* %71, align 8
  %EAX.i = bitcast %union.anon* %45 to i32*
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %59, i64 0, i32 0
  %72 = load i32, i32* %EAX.i, align 4
  %73 = zext i32 %72 to i64
  %74 = load i64, i64* %PC.i, align 8
  store i64 %73, i64* %RDI.i, align 8
  %ECX.i = bitcast %union.anon* %46 to i32*
  %75 = load i32, i32* %ECX.i, align 4
  %76 = zext i32 %75 to i64
  store i64 %76, i64* %RSI.i23, align 8
  %77 = load i32, i32* %R8D.i38, align 4
  %78 = zext i32 %77 to i64
  store i64 %78, i64* %RCX.i41, align 8
  %79 = load i32, i32* %R9D.i36, align 4
  %80 = zext i32 %79 to i64
  store i64 %80, i64* %48, align 8
  %81 = load i32, i32* %R10D.i34, align 4
  %82 = zext i32 %81 to i64
  store i64 %82, i64* %50, align 8
  %83 = bitcast i64* %RSP.i48 to i32**
  %84 = load i32*, i32** %83, align 8
  %85 = add i64 %74, 20
  store i64 %85, i64* %PC.i, align 8
  store i32 10, i32* %84, align 4
  %86 = load i64, i64* %RSP.i48, align 8
  %87 = add i64 %86, 8
  %88 = load i64, i64* %PC.i, align 8
  %89 = add i64 %88, 8
  store i64 %89, i64* %PC.i, align 8
  %90 = inttoptr i64 %87 to i32*
  store i32 20, i32* %90, align 4
  %EBX.i = bitcast %union.anon* %11 to i32*
  %91 = load i64, i64* %RBP.i, align 8
  %92 = add i64 %91, -28
  %93 = load i32, i32* %EBX.i, align 4
  %94 = load i64, i64* %PC.i, align 8
  %95 = add i64 %94, 3
  store i64 %95, i64* %PC.i, align 8
  %96 = inttoptr i64 %92 to i32*
  store i32 %93, i32* %96, align 4
  %97 = load i64, i64* %RBP.i, align 8
  %98 = add i64 %97, -32
  %99 = load i32, i32* %R11D.i32, align 4
  %100 = load i64, i64* %PC.i, align 8
  %101 = add i64 %100, 4
  store i64 %101, i64* %PC.i, align 8
  %102 = inttoptr i64 %98 to i32*
  store i32 %99, i32* %102, align 4
  %103 = load i64, i64* %PC.i, align 8
  %104 = add i64 %103, -198
  %105 = add i64 %103, 5
  %106 = load i64, i64* %6, align 8
  %107 = add i64 %106, -8
  %108 = inttoptr i64 %107 to i64*
  store i64 %105, i64* %108, align 8
  store i64 %107, i64* %6, align 8
  store i64 %104, i64* %3, align 8
  %call2_4005b6 = call %struct.Memory* @sub_4004f0.foo(%struct.State* %0, i64 %104, %struct.Memory* %2)
  %109 = load i64, i64* %RSP.i48, align 8
  %110 = load i64, i64* %PC.i, align 8
  %111 = add i64 %109, 40
  store i64 %111, i64* %RSP.i48, align 8
  %112 = icmp ugt i64 %109, -41
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %20, align 1
  %114 = trunc i64 %111 to i32
  %115 = and i32 %114, 255
  %116 = call i32 @llvm.ctpop.i32(i32 %115)
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  %119 = xor i8 %118, 1
  store i8 %119, i8* %27, align 1
  %120 = xor i64 %109, %111
  %121 = lshr i64 %120, 4
  %122 = trunc i64 %121 to i8
  %123 = and i8 %122, 1
  store i8 %123, i8* %32, align 1
  %124 = icmp eq i64 %111, 0
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %35, align 1
  %126 = lshr i64 %111, 63
  %127 = trunc i64 %126 to i8
  store i8 %127, i8* %38, align 1
  %128 = lshr i64 %109, 63
  %129 = xor i64 %126, %128
  %130 = add nuw nsw i64 %129, %126
  %131 = icmp eq i64 %130, 2
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %44, align 1
  %133 = add i64 %110, 5
  store i64 %133, i64* %PC.i, align 8
  %134 = add i64 %109, 48
  %135 = inttoptr i64 %111 to i64*
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %RBX.i46, align 8
  store i64 %134, i64* %6, align 8
  %137 = add i64 %110, 6
  store i64 %137, i64* %PC.i, align 8
  %138 = add i64 %109, 56
  %139 = inttoptr i64 %134 to i64*
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %RBP.i, align 8
  store i64 %138, i64* %6, align 8
  %141 = add i64 %110, 7
  store i64 %141, i64* %PC.i, align 8
  %142 = inttoptr i64 %138 to i64*
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %3, align 8
  %144 = add i64 %109, 64
  store i64 %144, i64* %6, align 8
  ret %struct.Memory* %call2_4005b6
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
