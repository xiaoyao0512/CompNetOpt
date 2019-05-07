; ModuleID = 'a.out_ct.link.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ct_orig_main() #0 {
  fence singlethread acquire, !ContechInst !1
  %bufPos = call i8* @__ctGetBuffer(), !ContechInst !1
  %bufPos1 = call i32 @__ctGetBufferPos(i8* %bufPos), !ContechInst !1
  %storeBlock33769 = call i8* @__ctStoreBasicBlock(i32 33769, i32 %bufPos1, i8* %bufPos), !ContechInst !1
  %1 = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %arr = alloca [1000 x i32], align 16
  %i = alloca i32, align 4
  %temp1 = alloca i32, align 4
  %temp2 = alloca i32, align 4
  %multi = alloca i32, align 4
  %"Cast as void" = bitcast i32* %1 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void", i32 0, i8* %storeBlock33769), !ContechInst !1
  store i32 0, i32* %1, align 4
  %"Cast as void2" = bitcast i32* %i to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void2", i32 1, i8* %storeBlock33769), !ContechInst !1
  store i32 0, i32* %i, align 4
  %2 = call i32 @__ctStoreBasicBlockComplete(i32 2, i32 %bufPos1, i8* %bufPos), !ContechInst !1
  fence singlethread release, !ContechInst !1
  br label %3

; <label>:3                                       ; preds = %15, %0
  fence singlethread acquire, !ContechInst !1
  %bufPos3 = call i8* @__ctGetBuffer(), !ContechInst !1
  %bufPos4 = call i32 @__ctGetBufferPos(i8* %bufPos3), !ContechInst !1
  %storeBlock33770 = call i8* @__ctStoreBasicBlock(i32 33770, i32 %bufPos4, i8* %bufPos3), !ContechInst !1
  %"Cast as void5" = bitcast i32* %i to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void5", i32 0, i8* %storeBlock33770), !ContechInst !1
  %4 = load i32, i32* %i, align 4
  %5 = call i32 @__ctStoreBasicBlockComplete(i32 1, i32 %bufPos4, i8* %bufPos3), !ContechInst !1
  fence singlethread release, !ContechInst !1
  call void @__ctCheckBufferSize(i32 %5), !ContechInst !1
  %6 = icmp slt i32 %4, 1000
  br i1 %6, label %7, label %19

; <label>:7                                       ; preds = %3
  fence singlethread acquire, !ContechInst !1
  %bufPos6 = call i8* @__ctGetBuffer(), !ContechInst !1
  %bufPos7 = call i32 @__ctGetBufferPos(i8* %bufPos6), !ContechInst !1
  %storeBlock33771 = call i8* @__ctStoreBasicBlock(i32 33771, i32 %bufPos7, i8* %bufPos6), !ContechInst !1
  %"Cast as void8" = bitcast i32* %i to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void8", i32 0, i8* %storeBlock33771), !ContechInst !1
  %8 = load i32, i32* %i, align 4
  %"Cast as void9" = bitcast i32* %i to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void9", i32 1, i8* %storeBlock33771), !ContechInst !1
  %9 = load i32, i32* %i, align 4
  %10 = add nsw i32 %8, %9
  %"Cast as void10" = bitcast i32* %i to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void10", i32 2, i8* %storeBlock33771), !ContechInst !1
  %11 = load i32, i32* %i, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [1000 x i32], [1000 x i32]* %arr, i64 0, i64 %12
  %"Cast as void11" = bitcast i32* %13 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void11", i32 3, i8* %storeBlock33771), !ContechInst !1
  store i32 %10, i32* %13, align 4
  %14 = call i32 @__ctStoreBasicBlockComplete(i32 4, i32 %bufPos7, i8* %bufPos6), !ContechInst !1
  fence singlethread release, !ContechInst !1
  br label %15

; <label>:15                                      ; preds = %7
  fence singlethread acquire, !ContechInst !1
  %bufPos12 = call i8* @__ctGetBuffer(), !ContechInst !1
  %bufPos13 = call i32 @__ctGetBufferPos(i8* %bufPos12), !ContechInst !1
  %storeBlock33772 = call i8* @__ctStoreBasicBlock(i32 33772, i32 %bufPos13, i8* %bufPos12), !ContechInst !1
  %"Cast as void14" = bitcast i32* %i to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void14", i32 0, i8* %storeBlock33772), !ContechInst !1
  %16 = load i32, i32* %i, align 4
  %17 = add nsw i32 %16, 1
  %"Cast as void15" = bitcast i32* %i to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void15", i32 1, i8* %storeBlock33772), !ContechInst !1
  store i32 %17, i32* %i, align 4
  %18 = call i32 @__ctStoreBasicBlockComplete(i32 2, i32 %bufPos13, i8* %bufPos12), !ContechInst !1
  fence singlethread release, !ContechInst !1
  br label %3

; <label>:19                                      ; preds = %3
  fence singlethread acquire, !ContechInst !1
  %bufPos16 = call i8* @__ctGetBuffer(), !ContechInst !1
  %bufPos17 = call i32 @__ctGetBufferPos(i8* %bufPos16), !ContechInst !1
  %storeBlock33773 = call i8* @__ctStoreBasicBlock(i32 33773, i32 %bufPos17, i8* %bufPos16), !ContechInst !1
  %20 = getelementptr inbounds [1000 x i32], [1000 x i32]* %arr, i64 0, i64 40
  %"Cast as void18" = bitcast i32* %20 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void18", i32 0, i8* %storeBlock33773), !ContechInst !1
  %21 = load i32, i32* %20, align 16
  %22 = call i32 @__ctStoreBasicBlockComplete(i32 1, i32 %bufPos17, i8* %bufPos16), !ContechInst !1
  fence singlethread release, !ContechInst !1
  call void @__ctCheckBufferSize(i32 %22), !ContechInst !1
  %23 = icmp sgt i32 %21, 70
  br i1 %23, label %24, label %42

; <label>:24                                      ; preds = %19
  fence singlethread acquire, !ContechInst !1
  %bufPos19 = call i8* @__ctGetBuffer(), !ContechInst !1
  %bufPos20 = call i32 @__ctGetBufferPos(i8* %bufPos19), !ContechInst !1
  %storeBlock33774 = call i8* @__ctStoreBasicBlock(i32 33774, i32 %bufPos20, i8* %bufPos19), !ContechInst !1
  %25 = getelementptr inbounds [1000 x i32], [1000 x i32]* %arr, i64 0, i64 40
  %"Cast as void21" = bitcast i32* %25 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void21", i32 0, i8* %storeBlock33774), !ContechInst !1
  %26 = load i32, i32* %25, align 16
  %"Cast as void22" = bitcast i32* %temp1 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void22", i32 1, i8* %storeBlock33774), !ContechInst !1
  %27 = load i32, i32* %temp1, align 4
  %28 = sub nsw i32 %27, %26
  %"Cast as void23" = bitcast i32* %temp1 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void23", i32 2, i8* %storeBlock33774), !ContechInst !1
  store i32 %28, i32* %temp1, align 4
  %29 = getelementptr inbounds [1000 x i32], [1000 x i32]* %arr, i64 0, i64 100
  %30 = load i32, i32* %29, align 16
  %"Cast as void24" = bitcast i32* %temp1 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void24", i32 3, i8* %storeBlock33774), !ContechInst !1
  %31 = load i32, i32* %temp1, align 4
  %32 = add nsw i32 %31, %30
  %"Cast as void25" = bitcast i32* %temp1 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void25", i32 4, i8* %storeBlock33774), !ContechInst !1
  store i32 %32, i32* %temp1, align 4
  %"Cast as void26" = bitcast i32* %temp1 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void26", i32 5, i8* %storeBlock33774), !ContechInst !1
  %33 = load i32, i32* %temp1, align 4
  %"Cast as void27" = bitcast i32* %temp2 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void27", i32 6, i8* %storeBlock33774), !ContechInst !1
  %34 = load i32, i32* %temp2, align 4
  %35 = add nsw i32 %34, %33
  %"Cast as void28" = bitcast i32* %temp2 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void28", i32 7, i8* %storeBlock33774), !ContechInst !1
  store i32 %35, i32* %temp2, align 4
  %36 = getelementptr inbounds [1000 x i32], [1000 x i32]* %arr, i64 0, i64 99
  %37 = load i32, i32* %36, align 4
  %"Cast as void29" = bitcast i32* %temp2 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void29", i32 8, i8* %storeBlock33774), !ContechInst !1
  %38 = load i32, i32* %temp2, align 4
  %39 = add nsw i32 %38, %37
  %"Cast as void30" = bitcast i32* %temp2 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void30", i32 9, i8* %storeBlock33774), !ContechInst !1
  store i32 %39, i32* %temp2, align 4
  %40 = call i32 @__ctStoreBasicBlockComplete(i32 10, i32 %bufPos20, i8* %bufPos19), !ContechInst !1
  fence singlethread release, !ContechInst !1
  %41 = call i32 @mult(i32* %temp1, i32* %temp2)
  br label %67, !ContechInst !1

; <label>:42                                      ; preds = %19
  fence singlethread acquire, !ContechInst !1
  %bufPos31 = call i8* @__ctGetBuffer(), !ContechInst !1
  %bufPos32 = call i32 @__ctGetBufferPos(i8* %bufPos31), !ContechInst !1
  %storeBlock33775 = call i8* @__ctStoreBasicBlock(i32 33775, i32 %bufPos32, i8* %bufPos31), !ContechInst !1
  %43 = getelementptr inbounds [1000 x i32], [1000 x i32]* %arr, i64 0, i64 200
  %"Cast as void33" = bitcast i32* %43 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void33", i32 0, i8* %storeBlock33775), !ContechInst !1
  %44 = load i32, i32* %43, align 16
  %45 = call i32 @__ctStoreBasicBlockComplete(i32 1, i32 %bufPos32, i8* %bufPos31), !ContechInst !1
  fence singlethread release, !ContechInst !1
  call void @__ctCheckBufferSize(i32 %45), !ContechInst !1
  %46 = icmp slt i32 %44, 600
  br i1 %46, label %47, label %57

; <label>:47                                      ; preds = %42
  fence singlethread acquire, !ContechInst !1
  %bufPos34 = call i8* @__ctGetBuffer(), !ContechInst !1
  %bufPos35 = call i32 @__ctGetBufferPos(i8* %bufPos34), !ContechInst !1
  %storeBlock33776 = call i8* @__ctStoreBasicBlock(i32 33776, i32 %bufPos35, i8* %bufPos34), !ContechInst !1
  %48 = getelementptr inbounds [1000 x i32], [1000 x i32]* %arr, i64 0, i64 2
  %"Cast as void36" = bitcast i32* %48 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void36", i32 0, i8* %storeBlock33776), !ContechInst !1
  %49 = load i32, i32* %48, align 8
  %"Cast as void37" = bitcast i32* %temp2 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void37", i32 1, i8* %storeBlock33776), !ContechInst !1
  %50 = load i32, i32* %temp2, align 4
  %51 = mul nsw i32 %50, %49
  %"Cast as void38" = bitcast i32* %temp2 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void38", i32 2, i8* %storeBlock33776), !ContechInst !1
  store i32 %51, i32* %temp2, align 4
  %52 = getelementptr inbounds [1000 x i32], [1000 x i32]* %arr, i64 0, i64 10
  %53 = load i32, i32* %52, align 8
  %"Cast as void39" = bitcast i32* %temp2 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void39", i32 3, i8* %storeBlock33776), !ContechInst !1
  %54 = load i32, i32* %temp2, align 4
  %55 = sub nsw i32 %54, %53
  %"Cast as void40" = bitcast i32* %temp2 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void40", i32 4, i8* %storeBlock33776), !ContechInst !1
  store i32 %55, i32* %temp2, align 4
  %56 = call i32 @__ctStoreBasicBlockComplete(i32 5, i32 %bufPos35, i8* %bufPos34), !ContechInst !1
  fence singlethread release, !ContechInst !1
  br label %57

; <label>:57                                      ; preds = %47, %42
  fence singlethread acquire, !ContechInst !1
  %bufPos41 = call i8* @__ctGetBuffer(), !ContechInst !1
  %bufPos42 = call i32 @__ctGetBufferPos(i8* %bufPos41), !ContechInst !1
  %storeBlock33777 = call i8* @__ctStoreBasicBlock(i32 33777, i32 %bufPos42, i8* %bufPos41), !ContechInst !1
  %"Cast as void43" = bitcast i32* %temp1 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void43", i32 0, i8* %storeBlock33777), !ContechInst !1
  %58 = load i32, i32* %temp1, align 4
  %"Cast as void44" = bitcast i32* %temp2 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void44", i32 1, i8* %storeBlock33777), !ContechInst !1
  %59 = load i32, i32* %temp2, align 4
  %60 = add nsw i32 %59, %58
  %"Cast as void45" = bitcast i32* %temp2 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void45", i32 2, i8* %storeBlock33777), !ContechInst !1
  store i32 %60, i32* %temp2, align 4
  %61 = getelementptr inbounds [1000 x i32], [1000 x i32]* %arr, i64 0, i64 99
  %"Cast as void46" = bitcast i32* %61 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void46", i32 3, i8* %storeBlock33777), !ContechInst !1
  %62 = load i32, i32* %61, align 4
  %"Cast as void47" = bitcast i32* %temp2 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void47", i32 4, i8* %storeBlock33777), !ContechInst !1
  %63 = load i32, i32* %temp2, align 4
  %64 = add nsw i32 %63, %62
  %"Cast as void48" = bitcast i32* %temp2 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void48", i32 5, i8* %storeBlock33777), !ContechInst !1
  store i32 %64, i32* %temp2, align 4
  %65 = call i32 @__ctStoreBasicBlockComplete(i32 6, i32 %bufPos42, i8* %bufPos41), !ContechInst !1
  fence singlethread release, !ContechInst !1
  %66 = call i32 @mult(i32* %temp1, i32* %temp2)
  br label %67, !ContechInst !1

; <label>:67                                      ; preds = %24, %57
  %68 = phi i32 [ %66, %57 ], [ %41, %24 ]
  fence singlethread acquire, !ContechInst !1
  %bufPos49 = call i8* @__ctGetBuffer(), !ContechInst !1
  %bufPos50 = call i32 @__ctGetBufferPos(i8* %bufPos49), !ContechInst !1
  %storeBlock33778 = call i8* @__ctStoreBasicBlock(i32 33778, i32 %bufPos50, i8* %bufPos49), !ContechInst !1
  %"Cast as void51" = bitcast i32* %multi to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void51", i32 0, i8* %storeBlock33778), !ContechInst !1
  store i32 %68, i32* %multi, align 4
  %"Cast as void52" = bitcast i32* %multi to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void52", i32 1, i8* %storeBlock33778), !ContechInst !1
  %69 = load i32, i32* %multi, align 4
  %70 = call i32 @__ctStoreBasicBlockComplete(i32 2, i32 %bufPos50, i8* %bufPos49), !ContechInst !1
  fence singlethread release, !ContechInst !1
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %69)
  br label %72, !ContechInst !1

; <label>:72                                      ; preds = %67
  fence singlethread acquire, !ContechInst !1
  %bufPos53 = call i8* @__ctGetBuffer(), !ContechInst !1
  %bufPos54 = call i32 @__ctGetBufferPos(i8* %bufPos53), !ContechInst !1
  %storeBlock33779 = call i8* @__ctStoreBasicBlock(i32 33779, i32 %bufPos54, i8* %bufPos53), !ContechInst !1
  %"Cast as void55" = bitcast i32* %i to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void55", i32 0, i8* %storeBlock33779), !ContechInst !1
  store i32 0, i32* %i, align 4
  %73 = call i32 @__ctStoreBasicBlockComplete(i32 1, i32 %bufPos54, i8* %bufPos53), !ContechInst !1
  fence singlethread release, !ContechInst !1
  br label %74

; <label>:74                                      ; preds = %85, %72
  fence singlethread acquire, !ContechInst !1
  %bufPos56 = call i8* @__ctGetBuffer(), !ContechInst !1
  %bufPos57 = call i32 @__ctGetBufferPos(i8* %bufPos56), !ContechInst !1
  %storeBlock33780 = call i8* @__ctStoreBasicBlock(i32 33780, i32 %bufPos57, i8* %bufPos56), !ContechInst !1
  %"Cast as void58" = bitcast i32* %i to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void58", i32 0, i8* %storeBlock33780), !ContechInst !1
  %75 = load i32, i32* %i, align 4
  %76 = call i32 @__ctStoreBasicBlockComplete(i32 1, i32 %bufPos57, i8* %bufPos56), !ContechInst !1
  fence singlethread release, !ContechInst !1
  call void @__ctCheckBufferSize(i32 %76), !ContechInst !1
  %77 = icmp slt i32 %75, 1000
  br i1 %77, label %78, label %89

; <label>:78                                      ; preds = %74
  fence singlethread acquire, !ContechInst !1
  %bufPos59 = call i8* @__ctGetBuffer(), !ContechInst !1
  %bufPos60 = call i32 @__ctGetBufferPos(i8* %bufPos59), !ContechInst !1
  %storeBlock33781 = call i8* @__ctStoreBasicBlock(i32 33781, i32 %bufPos60, i8* %bufPos59), !ContechInst !1
  %"Cast as void61" = bitcast i32* %i to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void61", i32 0, i8* %storeBlock33781), !ContechInst !1
  %79 = load i32, i32* %i, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [1000 x i32], [1000 x i32]* %arr, i64 0, i64 %80
  %"Cast as void62" = bitcast i32* %81 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void62", i32 1, i8* %storeBlock33781), !ContechInst !1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @__ctStoreBasicBlockComplete(i32 2, i32 %bufPos60, i8* %bufPos59), !ContechInst !1
  fence singlethread release, !ContechInst !1
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %82)
  br label %85, !ContechInst !1

; <label>:85                                      ; preds = %78
  fence singlethread acquire, !ContechInst !1
  %bufPos63 = call i8* @__ctGetBuffer(), !ContechInst !1
  %bufPos64 = call i32 @__ctGetBufferPos(i8* %bufPos63), !ContechInst !1
  %storeBlock33782 = call i8* @__ctStoreBasicBlock(i32 33782, i32 %bufPos64, i8* %bufPos63), !ContechInst !1
  %"Cast as void65" = bitcast i32* %i to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void65", i32 0, i8* %storeBlock33782), !ContechInst !1
  %86 = load i32, i32* %i, align 4
  %87 = add nsw i32 %86, 1
  %"Cast as void66" = bitcast i32* %i to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void66", i32 1, i8* %storeBlock33782), !ContechInst !1
  store i32 %87, i32* %i, align 4
  %88 = call i32 @__ctStoreBasicBlockComplete(i32 2, i32 %bufPos64, i8* %bufPos63), !ContechInst !1
  fence singlethread release, !ContechInst !1
  br label %74

; <label>:89                                      ; preds = %74
  fence singlethread acquire, !ContechInst !1
  %bufPos67 = call i8* @__ctGetBuffer(), !ContechInst !1
  %bufPos68 = call i32 @__ctGetBufferPos(i8* %bufPos67), !ContechInst !1
  %storeBlock33783 = call i8* @__ctStoreBasicBlock(i32 33783, i32 %bufPos68, i8* %bufPos67), !ContechInst !1
  %"Cast as void69" = bitcast i32* %1 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void69", i32 0, i8* %storeBlock33783), !ContechInst !1
  %90 = load i32, i32* %1, align 4
  %91 = call i32 @__ctStoreBasicBlockComplete(i32 1, i32 %bufPos68, i8* %bufPos67), !ContechInst !1
  fence singlethread release, !ContechInst !1
  call void @__ctCheckBufferSize(i32 %91), !ContechInst !1
  ret i32 %90
}

; Function Attrs: nounwind uwtable
define i32 @mult(i32* %op1, i32* %op2) #0 {
  fence singlethread acquire, !ContechInst !1
  %bufPos = call i8* @__ctGetBuffer(), !ContechInst !1
  %bufPos1 = call i32 @__ctGetBufferPos(i8* %bufPos), !ContechInst !1
  %storeBlock33784 = call i8* @__ctStoreBasicBlock(i32 33784, i32 %bufPos1, i8* %bufPos), !ContechInst !1
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %temp = alloca i32, align 4
  %"Cast as void" = bitcast i32** %1 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void", i32 0, i8* %storeBlock33784), !ContechInst !1
  store i32* %op1, i32** %1, align 8
  %"Cast as void2" = bitcast i32** %2 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void2", i32 1, i8* %storeBlock33784), !ContechInst !1
  store i32* %op2, i32** %2, align 8
  %"Cast as void3" = bitcast i32** %1 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void3", i32 2, i8* %storeBlock33784), !ContechInst !1
  %3 = load i32*, i32** %1, align 8
  %"Cast as void4" = bitcast i32* %3 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void4", i32 3, i8* %storeBlock33784), !ContechInst !1
  %4 = load i32, i32* %3, align 4
  %"Cast as void5" = bitcast i32** %2 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void5", i32 4, i8* %storeBlock33784), !ContechInst !1
  %5 = load i32*, i32** %2, align 8
  %"Cast as void6" = bitcast i32* %5 to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void6", i32 5, i8* %storeBlock33784), !ContechInst !1
  %6 = load i32, i32* %5, align 4
  %7 = mul nsw i32 %4, %6
  %"Cast as void7" = bitcast i32* %temp to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void7", i32 6, i8* %storeBlock33784), !ContechInst !1
  store i32 %7, i32* %temp, align 4
  %"Cast as void8" = bitcast i32* %temp to i8*, !ContechInst !1
  call void @__ctStoreMemOp(i8* %"Cast as void8", i32 7, i8* %storeBlock33784), !ContechInst !1
  %8 = load i32, i32* %temp, align 4
  %9 = call i32 @__ctStoreBasicBlockComplete(i32 8, i32 %bufPos1, i8* %bufPos), !ContechInst !1
  fence singlethread release, !ContechInst !1
  call void @__ctCheckBufferSize(i32 %9), !ContechInst !1
  ret i32 %8
}

declare i32 @printf(i8*, ...) #1

declare i32 @__ctGetBufferPos(i8*)

; Function Attrs: alwaysinline
declare i8* @__ctStoreBasicBlock(i32, i32, i8*) #2

; Function Attrs: alwaysinline
declare i32 @__ctStoreBasicBlockComplete(i32, i32, i8*) #2

; Function Attrs: alwaysinline
declare void @__ctStoreMemOp(i8*, i32, i8*) #2

declare i8* @__ctGetBuffer()

declare i8* @__ctInitCilkSync()

declare void @__ctAllocateLocalBuffer()

declare void @__ctStoreMemReadMark()

declare void @__ctStoreMemWriteMark()

declare void @__ctOMPPushParent()

declare void @__ctOMPPopParent()

declare void @__ctOMPProcessJoinStack()

declare i32 @__ctAllocateCTid()

declare i32 @__ctGetLocalNumber()

declare i64 @__ctGetCurrentTick()

declare i64 @__ctAllocateTicket()

declare i32 @__ctPeekParent()

declare i32 @omp_get_level()

declare void @__ctStoreSync(i8*, i32, i32, i64, i64)

declare void @__ctStoreBasicBlockMark(i32)

declare void @pthread_exit(i32)

declare void @__ctOMPThreadCreate(i32)

declare void @__ctOMPThreadJoin(i32)

declare void @__ctOMPTaskCreate(i32)

declare void @__ctCheckBufferSize(i32)

declare void @__ctCheckBufferBySize(i32)

declare i32 @omp_get_ancestor_thread_num(i32)

declare void @__ctQueueBuffer(i8)

declare void @__ctOMPTaskJoin()

declare void @__ctStoreBarrier(i8, i8*, i64)

declare void @__ctAddThreadInfo(i8*, i32)

declare void @__ctStoreMPITransfer(i8, i8, i32, i32, i32, i32, i8*, i64, i8*)

declare void @__ctStoreMPIWait(i8*, i64)

declare void @__ctRecordCilkFrame(i8*, i64, i32, i32)

declare void @__ctRecordCilkSync(i8*)

declare void @__ctRestoreCilkFrame(i8*)

declare void @__ctCilkPromoteParent(i8*)

declare void @__ctStoreThreadCreate(i32, i64, i64)

declare void @__ctStoreThreadJoin(i64, i64)

declare void @__ctStoreMemoryEvent(i8, i64, i8*)

declare void @__ctStoreBulkMemoryEvent(i64, i8*, i8*)

declare void @__ctOMPStoreInOutDeps(i8*, i64, i32, i32)

declare i32 @__ctThreadCreateActual(i64*, i8*, i8* (i8*)*, i8*)

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (tags/RELEASE_381/final)"}
!1 = !{!"Contech"}
