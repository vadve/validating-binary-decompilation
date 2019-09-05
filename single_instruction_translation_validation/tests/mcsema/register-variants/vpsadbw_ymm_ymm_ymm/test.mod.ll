; ModuleID = 'test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%struct.State = type {%struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, i64, i64, i64, %struct.GPR}

%struct.ArchState = type { i32, i32, %union.anon }
%union.VectorReg = type { %union.vec512_t }
%union.vec512_t = type { %struct.uint64v8_t }
%struct.uint64v8_t = type { [8 x i64] }
%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Reg = type { %union.anon }
%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.float32v8_t = type { [8 x float] }
%struct.int32v8_t = type { [8 x i32] }
%struct.uint16v16_t = type { [16 x i16] }
%struct.uint8v32_t = type { [32 x i8] }
%"class.std::bitset" = type { %struct.uint64v4_t }
%struct.uint64v4_t = type { [4 x i64] }
%struct.anon.2 = type { i8, i8 }
%union.vec128_t = type { %struct.uint128v1_t }
%struct.uint128v1_t = type { [1 x i128] }

define i32 @my.ctpop.i32(i32 %x) {
entry:
  %and = and i32 %x, 1
  %shr123 = lshr i32 %x, 1
  %and1 = and i32 %shr123, 1
  %shr2124 = lshr i32 %x, 2
  %and3 = and i32 %shr2124, 1
  %shr5125 = lshr i32 %x, 3
  %and6 = and i32 %shr5125, 1
  %shr8126 = lshr i32 %x, 4
  %and9 = and i32 %shr8126, 1
  %shr11127 = lshr i32 %x, 5
  %and12 = and i32 %shr11127, 1
  %shr14128 = lshr i32 %x, 6
  %and15 = and i32 %shr14128, 1
  %shr17129 = lshr i32 %x, 7
  %and18 = and i32 %shr17129, 1
  %shr20130 = lshr i32 %x, 8
  %and21 = and i32 %shr20130, 1
  %shr23131 = lshr i32 %x, 9
  %and24 = and i32 %shr23131, 1
  %shr26132 = lshr i32 %x, 10
  %and27 = and i32 %shr26132, 1
  %shr29133 = lshr i32 %x, 11
  %and30 = and i32 %shr29133, 1
  %shr32134 = lshr i32 %x, 12
  %and33 = and i32 %shr32134, 1
  %shr35135 = lshr i32 %x, 13
  %and36 = and i32 %shr35135, 1
  %shr38136 = lshr i32 %x, 14
  %and39 = and i32 %shr38136, 1
  %shr41137 = lshr i32 %x, 15
  %and42 = and i32 %shr41137, 1
  %shr44138 = lshr i32 %x, 16
  %and45 = and i32 %shr44138, 1
  %shr47139 = lshr i32 %x, 17
  %and48 = and i32 %shr47139, 1
  %shr50140 = lshr i32 %x, 18
  %and51 = and i32 %shr50140, 1
  %shr53141 = lshr i32 %x, 19
  %and54 = and i32 %shr53141, 1
  %shr56142 = lshr i32 %x, 20
  %and57 = and i32 %shr56142, 1
  %shr59143 = lshr i32 %x, 21
  %and60 = and i32 %shr59143, 1
  %shr62144 = lshr i32 %x, 22
  %and63 = and i32 %shr62144, 1
  %shr65145 = lshr i32 %x, 23
  %and66 = and i32 %shr65145, 1
  %shr68146 = lshr i32 %x, 24
  %and69 = and i32 %shr68146, 1
  %shr71147 = lshr i32 %x, 25
  %and72 = and i32 %shr71147, 1
  %shr74148 = lshr i32 %x, 26
  %and75 = and i32 %shr74148, 1
  %shr77149 = lshr i32 %x, 27
  %and78 = and i32 %shr77149, 1
  %shr80150 = lshr i32 %x, 28
  %and81 = and i32 %shr80150, 1
  %shr83151 = lshr i32 %x, 29
  %and84 = and i32 %shr83151, 1
  %shr86152 = lshr i32 %x, 30
  %and87 = and i32 %shr86152, 1
  %shr89153 = lshr i32 %x, 31
  %add = add i32 %shr89153, %and
  %add4 = add i32 %add, %and1
  %add7 = add i32 %add4, %and3
  %add10 = add i32 %add7, %and6
  %add13 = add i32 %add10, %and9
  %add16 = add i32 %add13, %and12
  %add19 = add i32 %add16, %and15
  %add22 = add i32 %add19, %and18
  %add25 = add i32 %add22, %and21
  %add28 = add i32 %add25, %and24
  %add31 = add i32 %add28, %and27
  %add34 = add i32 %add31, %and30
  %add37 = add i32 %add34, %and33
  %add40 = add i32 %add37, %and36
  %add43 = add i32 %add40, %and39
  %add46 = add i32 %add43, %and42
  %add49 = add i32 %add46, %and45
  %add52 = add i32 %add49, %and48
  %add55 = add i32 %add52, %and51
  %add58 = add i32 %add55, %and54
  %add61 = add i32 %add58, %and57
  %add64 = add i32 %add61, %and60
  %add67 = add i32 %add64, %and63
  %add70 = add i32 %add67, %and66
  %add73 = add i32 %add70, %and69
  %add76 = add i32 %add73, %and72
  %add79 = add i32 %add76, %and75
  %add82 = add i32 %add79, %and78
  %add85 = add i32 %add82, %and81
  %add88 = add i32 %add85, %and84
  %add91 = add i32 %add88, %and87
  ret i32 %add91
}

define i32 @sub_vpsadbw_ymm_ymm_ymm(%struct.State*, i64, i64) {
block_530:
  %3 = alloca %struct.uint8v32_t, align 1
  %4 = alloca %struct.uint8v32_t, align 1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %5, i32 0, i32 33
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %PC = bitcast %union.anon* %7 to i64*
  store i64 %1, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %9 to %"class.std::bitset"*
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %11 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %10, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %11 to %"class.std::bitset"*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %16 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 0
  call void @my.lifetime.start(i64 32, i8* nonnull %19) #14
  call void @my.memcpy.p0i8.p0i8.i64(i8* nonnull %19, i8* %15, i64 32, i32 1, i1 false) #14
  %20 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 0
  call void @my.lifetime.start(i64 32, i8* nonnull %20) #14
  call void @my.memcpy.p0i8.p0i8.i64(i8* nonnull %20, i8* %16, i64 32, i32 1, i1 false) #14
  %21 = load i8, i8* %19, align 1
  %22 = load i8, i8* %20, align 1
  %23 = icmp uge i8 %21, %22
  %24 = sub i8 %21, %22
  %25 = sub i8 %22, %21
  %26 = select i1 %23, i8 %24, i8 %25
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = icmp uge i8 %29, %31
  %33 = sub i8 %29, %31
  %34 = sub i8 %31, %29
  %35 = select i1 %32, i8 %33, i8 %34
  %36 = zext i8 %35 to i64
  %37 = add   i64 %36, %27
  %38 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 2
  %39 = load i8, i8* %38, align 1
  %40 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 2
  %41 = load i8, i8* %40, align 1
  %42 = icmp uge i8 %39, %41
  %43 = sub i8 %39, %41
  %44 = sub i8 %41, %39
  %45 = select i1 %42, i8 %43, i8 %44
  %46 = zext i8 %45 to i64
  %47 = add   i64 %46, %37
  %48 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 3
  %49 = load i8, i8* %48, align 1
  %50 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 3
  %51 = load i8, i8* %50, align 1
  %52 = icmp uge i8 %49, %51
  %53 = sub i8 %49, %51
  %54 = sub i8 %51, %49
  %55 = select i1 %52, i8 %53, i8 %54
  %56 = zext i8 %55 to i64
  %57 = add   i64 %56, %47
  %58 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 4
  %59 = load i8, i8* %58, align 1
  %60 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 4
  %61 = load i8, i8* %60, align 1
  %62 = icmp uge i8 %59, %61
  %63 = sub i8 %59, %61
  %64 = sub i8 %61, %59
  %65 = select i1 %62, i8 %63, i8 %64
  %66 = zext i8 %65 to i64
  %67 = add   i64 %66, %57
  %68 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 5
  %69 = load i8, i8* %68, align 1
  %70 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 5
  %71 = load i8, i8* %70, align 1
  %72 = icmp uge i8 %69, %71
  %73 = sub i8 %69, %71
  %74 = sub i8 %71, %69
  %75 = select i1 %72, i8 %73, i8 %74
  %76 = zext i8 %75 to i64
  %77 = add   i64 %76, %67
  %78 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 6
  %79 = load i8, i8* %78, align 1
  %80 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 6
  %81 = load i8, i8* %80, align 1
  %82 = icmp uge i8 %79, %81
  %83 = sub i8 %79, %81
  %84 = sub i8 %81, %79
  %85 = select i1 %82, i8 %83, i8 %84
  %86 = zext i8 %85 to i64
  %87 = add   i64 %86, %77
  %88 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 7
  %89 = load i8, i8* %88, align 1
  %90 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 7
  %91 = load i8, i8* %90, align 1
  %92 = icmp uge i8 %89, %91
  %93 = sub i8 %89, %91
  %94 = sub i8 %91, %89
  %95 = select i1 %92, i8 %93, i8 %94
  %96 = zext i8 %95 to i64
  %97 = add i64 %96, %87
  %98 = and i64 %97, 65535
  %99 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 8
  %100 = load i8, i8* %99, align 1
  %101 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 8
  %102 = load i8, i8* %101, align 1
  %103 = icmp uge i8 %100, %102
  %104 = sub i8 %100, %102
  %105 = sub i8 %102, %100
  %106 = select i1 %103, i8 %104, i8 %105
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 9
  %109 = load i8, i8* %108, align 1
  %110 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 9
  %111 = load i8, i8* %110, align 1
  %112 = icmp uge i8 %109, %111
  %113 = sub i8 %109, %111
  %114 = sub i8 %111, %109
  %115 = select i1 %112, i8 %113, i8 %114
  %116 = zext i8 %115 to i64
  %117 = add   i64 %116, %107
  %118 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 10
  %119 = load i8, i8* %118, align 1
  %120 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 10
  %121 = load i8, i8* %120, align 1
  %122 = icmp uge i8 %119, %121
  %123 = sub i8 %119, %121
  %124 = sub i8 %121, %119
  %125 = select i1 %122, i8 %123, i8 %124
  %126 = zext i8 %125 to i64
  %127 = add   i64 %126, %117
  %128 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 11
  %129 = load i8, i8* %128, align 1
  %130 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 11
  %131 = load i8, i8* %130, align 1
  %132 = icmp uge i8 %129, %131
  %133 = sub i8 %129, %131
  %134 = sub i8 %131, %129
  %135 = select i1 %132, i8 %133, i8 %134
  %136 = zext i8 %135 to i64
  %137 = add   i64 %136, %127
  %138 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 12
  %139 = load i8, i8* %138, align 1
  %140 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 12
  %141 = load i8, i8* %140, align 1
  %142 = icmp uge i8 %139, %141
  %143 = sub i8 %139, %141
  %144 = sub i8 %141, %139
  %145 = select i1 %142, i8 %143, i8 %144
  %146 = zext i8 %145 to i64
  %147 = add   i64 %146, %137
  %148 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 13
  %149 = load i8, i8* %148, align 1
  %150 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 13
  %151 = load i8, i8* %150, align 1
  %152 = icmp uge i8 %149, %151
  %153 = sub i8 %149, %151
  %154 = sub i8 %151, %149
  %155 = select i1 %152, i8 %153, i8 %154
  %156 = zext i8 %155 to i64
  %157 = add   i64 %156, %147
  %158 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 14
  %159 = load i8, i8* %158, align 1
  %160 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 14
  %161 = load i8, i8* %160, align 1
  %162 = icmp uge i8 %159, %161
  %163 = sub i8 %159, %161
  %164 = sub i8 %161, %159
  %165 = select i1 %162, i8 %163, i8 %164
  %166 = zext i8 %165 to i64
  %167 = add   i64 %166, %157
  %168 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 15
  %169 = load i8, i8* %168, align 1
  %170 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 15
  %171 = load i8, i8* %170, align 1
  %172 = icmp uge i8 %169, %171
  %173 = sub i8 %169, %171
  %174 = sub i8 %171, %169
  %175 = select i1 %172, i8 %173, i8 %174
  %176 = zext i8 %175 to i64
  %177 = add i64 %176, %167
  %178 = and i64 %177, 65535
  %179 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 16
  %180 = load i8, i8* %179, align 1
  %181 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 16
  %182 = load i8, i8* %181, align 1
  %183 = icmp uge i8 %180, %182
  %184 = sub i8 %180, %182
  %185 = sub i8 %182, %180
  %186 = select i1 %183, i8 %184, i8 %185
  %187 = zext i8 %186 to i64
  %188 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 17
  %189 = load i8, i8* %188, align 1
  %190 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 17
  %191 = load i8, i8* %190, align 1
  %192 = icmp uge i8 %189, %191
  %193 = sub i8 %189, %191
  %194 = sub i8 %191, %189
  %195 = select i1 %192, i8 %193, i8 %194
  %196 = zext i8 %195 to i64
  %197 = add   i64 %196, %187
  %198 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 18
  %199 = load i8, i8* %198, align 1
  %200 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 18
  %201 = load i8, i8* %200, align 1
  %202 = icmp uge i8 %199, %201
  %203 = sub i8 %199, %201
  %204 = sub i8 %201, %199
  %205 = select i1 %202, i8 %203, i8 %204
  %206 = zext i8 %205 to i64
  %207 = add   i64 %206, %197
  %208 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 19
  %209 = load i8, i8* %208, align 1
  %210 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 19
  %211 = load i8, i8* %210, align 1
  %212 = icmp uge i8 %209, %211
  %213 = sub i8 %209, %211
  %214 = sub i8 %211, %209
  %215 = select i1 %212, i8 %213, i8 %214
  %216 = zext i8 %215 to i64
  %217 = add   i64 %216, %207
  %218 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 20
  %219 = load i8, i8* %218, align 1
  %220 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 20
  %221 = load i8, i8* %220, align 1
  %222 = icmp uge i8 %219, %221
  %223 = sub i8 %219, %221
  %224 = sub i8 %221, %219
  %225 = select i1 %222, i8 %223, i8 %224
  %226 = zext i8 %225 to i64
  %227 = add   i64 %226, %217
  %228 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 21
  %229 = load i8, i8* %228, align 1
  %230 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 21
  %231 = load i8, i8* %230, align 1
  %232 = icmp uge i8 %229, %231
  %233 = sub i8 %229, %231
  %234 = sub i8 %231, %229
  %235 = select i1 %232, i8 %233, i8 %234
  %236 = zext i8 %235 to i64
  %237 = add   i64 %236, %227
  %238 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 22
  %239 = load i8, i8* %238, align 1
  %240 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 22
  %241 = load i8, i8* %240, align 1
  %242 = icmp uge i8 %239, %241
  %243 = sub i8 %239, %241
  %244 = sub i8 %241, %239
  %245 = select i1 %242, i8 %243, i8 %244
  %246 = zext i8 %245 to i64
  %247 = add   i64 %246, %237
  %248 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 23
  %249 = load i8, i8* %248, align 1
  %250 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 23
  %251 = load i8, i8* %250, align 1
  %252 = icmp uge i8 %249, %251
  %253 = sub i8 %249, %251
  %254 = sub i8 %251, %249
  %255 = select i1 %252, i8 %253, i8 %254
  %256 = zext i8 %255 to i64
  %257 = add i64 %256, %247
  %258 = and i64 %257, 65535
  %259 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 24
  %260 = load i8, i8* %259, align 1
  %261 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 24
  %262 = load i8, i8* %261, align 1
  %263 = icmp uge i8 %260, %262
  %264 = sub i8 %260, %262
  %265 = sub i8 %262, %260
  %266 = select i1 %263, i8 %264, i8 %265
  %267 = zext i8 %266 to i64
  %268 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 25
  %269 = load i8, i8* %268, align 1
  %270 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 25
  %271 = load i8, i8* %270, align 1
  %272 = icmp uge i8 %269, %271
  %273 = sub i8 %269, %271
  %274 = sub i8 %271, %269
  %275 = select i1 %272, i8 %273, i8 %274
  %276 = zext i8 %275 to i64
  %277 = add   i64 %276, %267
  %278 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 26
  %279 = load i8, i8* %278, align 1
  %280 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 26
  %281 = load i8, i8* %280, align 1
  %282 = icmp uge i8 %279, %281
  %283 = sub i8 %279, %281
  %284 = sub i8 %281, %279
  %285 = select i1 %282, i8 %283, i8 %284
  %286 = zext i8 %285 to i64
  %287 = add   i64 %286, %277
  %288 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 27
  %289 = load i8, i8* %288, align 1
  %290 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 27
  %291 = load i8, i8* %290, align 1
  %292 = icmp uge i8 %289, %291
  %293 = sub i8 %289, %291
  %294 = sub i8 %291, %289
  %295 = select i1 %292, i8 %293, i8 %294
  %296 = zext i8 %295 to i64
  %297 = add   i64 %296, %287
  %298 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 28
  %299 = load i8, i8* %298, align 1
  %300 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 28
  %301 = load i8, i8* %300, align 1
  %302 = icmp uge i8 %299, %301
  %303 = sub i8 %299, %301
  %304 = sub i8 %301, %299
  %305 = select i1 %302, i8 %303, i8 %304
  %306 = zext i8 %305 to i64
  %307 = add   i64 %306, %297
  %308 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 29
  %309 = load i8, i8* %308, align 1
  %310 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 29
  %311 = load i8, i8* %310, align 1
  %312 = icmp uge i8 %309, %311
  %313 = sub i8 %309, %311
  %314 = sub i8 %311, %309
  %315 = select i1 %312, i8 %313, i8 %314
  %316 = zext i8 %315 to i64
  %317 = add   i64 %316, %307
  %318 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 30
  %319 = load i8, i8* %318, align 1
  %320 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 30
  %321 = load i8, i8* %320, align 1
  %322 = icmp uge i8 %319, %321
  %323 = sub i8 %319, %321
  %324 = sub i8 %321, %319
  %325 = select i1 %322, i8 %323, i8 %324
  %326 = zext i8 %325 to i64
  %327 = add   i64 %326, %317
  %328 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 31
  %329 = load i8, i8* %328, align 1
  %330 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 31
  %331 = load i8, i8* %330, align 1
  %332 = icmp uge i8 %329, %331
  %333 = sub i8 %329, %331
  %334 = sub i8 %331, %329
  %335 = select i1 %332, i8 %333, i8 %334
  %336 = zext i8 %335 to i64
  %337 = add i64 %336, %327
  %338 = and i64 %337, 65535
  %339 = bitcast i8* %14 to i64*
  store i64 %98, i64* %339, align 1
  %340 = getelementptr inbounds i8, i8* %14, i64 8
  %341 = bitcast i8* %340 to i64*
  store i64 %178, i64* %341, align 1
  %342 = getelementptr inbounds i8, i8* %14, i64 16
  %343 = bitcast i8* %342 to i64*
  store i64 %258, i64* %343, align 1
  %344 = getelementptr inbounds i8, i8* %14, i64 24
  %345 = bitcast i8* %344 to i64*
  store i64 %338, i64* %345, align 1
  call void @my.lifetime.end(i64 32, i8* nonnull %20) #14
  call void @my.lifetime.end(i64 32, i8* nonnull %19) #14
  %346 = load i64, i64* %PC
  %347 = add i64 %346, 1
  store i64 %347, i64* %PC
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  ret i32 0
}

define i32 @main() {
entry:
  %state = alloca %struct.State
  %addr1 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 1, i32 0, i32 0
  %addr2 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 3, i32 0, i32 0
  %addr3 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 5, i32 0, i32 0
  %addr4 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 7, i32 0, i32 0
  %addr5 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 9, i32 0, i32 0
  %addr6 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 11, i32 0, i32 0
  %addr7 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 13, i32 0, i32 0
  %addr8 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 15, i32 0, i32 0
  %addr9 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 100, i64* %addr1, align 8
  store i64 200, i64* %addr2, align 8
  store i64 300, i64* %addr3, align 8
  store i64 400, i64* %addr4, align 8
  store i64 500, i64* %addr5, align 8
  store i64 600, i64* %addr6, align 8
  store i64 700, i64* %addr7, align 8
  store i64 800, i64* %addr8, align 8
  store i64 900, i64* %addr9, align 8
  %call = call i32 @sub_vpsadbw_ymm_ymm_ymm(%struct.State* %state, i64 0, i64 0)
  ret i32 0
}