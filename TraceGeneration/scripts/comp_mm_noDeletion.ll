; ModuleID = 'mm.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parm = type { i32, i32, i32, [8 x [8 x double]]*, [8 x [8 x double]]*, [8 x [8 x double]]* }

@a = common global [8 x [8 x double]] zeroinitializer, align 16
@b = common global [8 x [8 x double]] zeroinitializer, align 16
@.str = private unnamed_addr constant [40 x i8] c"Usage: %s n\0A  where n is no. of thread\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"The no of thread should between 1 and %d.\0A\00", align 1
@c = common global [8 x [8 x double]] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [26 x i8] c"Now checking the results\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"(%d,%d) error\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%d elements error\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"success\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @worker(i8* %arg) #0 {
  %1 = alloca i8*, align 8
  %p = alloca %struct.parm*, align 8
  store i8* %arg, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.parm*
  store %struct.parm* %3, %struct.parm** %p, align 8
  %4 = load %struct.parm*, %struct.parm** %p, align 8
  %5 = getelementptr inbounds %struct.parm, %struct.parm* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.parm*, %struct.parm** %p, align 8
  %8 = getelementptr inbounds %struct.parm, %struct.parm* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.parm*, %struct.parm** %p, align 8
  %11 = getelementptr inbounds %struct.parm, %struct.parm* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.parm*, %struct.parm** %p, align 8
  %14 = getelementptr inbounds %struct.parm, %struct.parm* %13, i32 0, i32 3
  %15 = load [8 x [8 x double]]*, [8 x [8 x double]]** %14, align 8
  %16 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* %15, i32 0, i32 0
  %17 = load %struct.parm*, %struct.parm** %p, align 8
  %18 = getelementptr inbounds %struct.parm, %struct.parm* %17, i32 0, i32 4
  %19 = load [8 x [8 x double]]*, [8 x [8 x double]]** %18, align 8
  %20 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* %19, i32 0, i32 0
  %21 = load %struct.parm*, %struct.parm** %p, align 8
  %22 = getelementptr inbounds %struct.parm, %struct.parm* %21, i32 0, i32 5
  %23 = load [8 x [8 x double]]*, [8 x [8 x double]]** %22, align 8
  %24 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* %23, i32 0, i32 0
  call void @mm(i32 %6, i32 %9, i32 %12, [8 x double]* %16, [8 x double]* %20, [8 x double]* %24)
  ret void
}

; Function Attrs: nounwind uwtable
define void @mm(i32 %me_no, i32 %noproc, i32 %n, [8 x double]* %a, [8 x double]* %b, [8 x double]* %c) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [8 x double]*, align 8
  %5 = alloca [8 x double]*, align 8
  %6 = alloca [8 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %sum = alloca double, align 8
  store i32 %me_no, i32* %1, align 4
  store i32 %noproc, i32* %2, align 4
  store i32 %n, i32* %3, align 4
  store [8 x double]* %a, [8 x double]** %4, align 8
  store [8 x double]* %b, [8 x double]** %5, align 8
  store [8 x double]* %c, [8 x double]** %6, align 8
  %7 = load i32, i32* %1, align 4
  store i32 %7, i32* %i, align 4
  br label %8

; <label>:8                                       ; preds = %57, %0
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %61

; <label>:12                                      ; preds = %8
  store i32 0, i32* %j, align 4
  br label %13

; <label>:13                                      ; preds = %54, %12
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %57

; <label>:17                                      ; preds = %13
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %k, align 4
  br label %18

; <label>:18                                      ; preds = %42, %17
  %19 = load i32, i32* %k, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %45

; <label>:22                                      ; preds = %18
  %23 = load double, double* %sum, align 8
  %24 = load i32, i32* %k, align 4
  %25 = sext i32 %24 to i64
  %26 = load i32, i32* %i, align 4
  %27 = sext i32 %26 to i64
  %28 = load [8 x double]*, [8 x double]** %4, align 8
  %29 = getelementptr inbounds [8 x double], [8 x double]* %28, i64 %27
  %30 = getelementptr inbounds [8 x double], [8 x double]* %29, i64 0, i64 %25
  %31 = load double, double* %30, align 8
  %32 = load i32, i32* %j, align 4
  %33 = sext i32 %32 to i64
  %34 = load i32, i32* %k, align 4
  %35 = sext i32 %34 to i64
  %36 = load [8 x double]*, [8 x double]** %5, align 8
  %37 = getelementptr inbounds [8 x double], [8 x double]* %36, i64 %35
  %38 = getelementptr inbounds [8 x double], [8 x double]* %37, i64 0, i64 %33
  %39 = load double, double* %38, align 8
  %40 = fmul double %31, %39
  %41 = fadd double %23, %40
  store double %41, double* %sum, align 8
  br label %42

; <label>:42                                      ; preds = %22
  %43 = load i32, i32* %k, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %k, align 4
  br label %18

; <label>:45                                      ; preds = %18
  %46 = load double, double* %sum, align 8
  %47 = load i32, i32* %j, align 4
  %48 = sext i32 %47 to i64
  %49 = load i32, i32* %i, align 4
  %50 = sext i32 %49 to i64
  %51 = load [8 x double]*, [8 x double]** %6, align 8
  %52 = getelementptr inbounds [8 x double], [8 x double]* %51, i64 %50
  %53 = getelementptr inbounds [8 x double], [8 x double]* %52, i64 0, i64 %48
  store double %46, double* %53, align 8
  br label %54

; <label>:54                                      ; preds = %45
  %55 = load i32, i32* %j, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %j, align 4
  br label %13

; <label>:57                                      ; preds = %13
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* %i, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %i, align 4
  br label %8

; <label>:61                                      ; preds = %8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %noproc = alloca i32, align 4
  %me_no = alloca i32, align 4
  %sum = alloca double, align 8
  %t1 = alloca double, align 8
  %t2 = alloca double, align 8
  %arg = alloca %struct.parm*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store i32 0, i32* %i, align 4
  br label %4

; <label>:4                                       ; preds = %36, %0
  %5 = load i32, i32* %i, align 4
  %6 = icmp slt i32 %5, 8
  br i1 %6, label %7, label %39

; <label>:7                                       ; preds = %4
  store i32 0, i32* %j, align 4
  br label %8

; <label>:8                                       ; preds = %32, %7
  %9 = load i32, i32* %j, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %35

; <label>:11                                      ; preds = %8
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %j, align 4
  %14 = add nsw i32 %12, %13
  %15 = sitofp i32 %14 to double
  %16 = load i32, i32* %j, align 4
  %17 = sext i32 %16 to i64
  %18 = load i32, i32* %i, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @a, i64 0, i64 %19
  %21 = getelementptr inbounds [8 x double], [8 x double]* %20, i64 0, i64 %17
  store double %15, double* %21, align 8
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %j, align 4
  %24 = add nsw i32 %22, %23
  %25 = sitofp i32 %24 to double
  %26 = load i32, i32* %j, align 4
  %27 = sext i32 %26 to i64
  %28 = load i32, i32* %i, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @b, i64 0, i64 %29
  %31 = getelementptr inbounds [8 x double], [8 x double]* %30, i64 0, i64 %27
  store double %25, double* %31, align 8
  br label %32

; <label>:32                                      ; preds = %11
  %33 = load i32, i32* %j, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %j, align 4
  br label %8

; <label>:35                                      ; preds = %8
  br label %36

; <label>:36                                      ; preds = %35
  %37 = load i32, i32* %i, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %i, align 4
  br label %4

; <label>:39                                      ; preds = %4
  %40 = load i32, i32* %2, align 4
  %41 = icmp ne i32 %40, 2
  br i1 %41, label %42, label %47

; <label>:42                                      ; preds = %39
  %43 = load i8**, i8*** %3, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), i8* %45)
  call void @exit(i32 1) #5
  unreachable

; <label>:47                                      ; preds = %39
  %48 = load i8**, i8*** %3, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @atoi(i8* %50) #6
  store i32 %51, i32* %n, align 4
  %52 = load i32, i32* %n, align 4
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %57, label %54

; <label>:54                                      ; preds = %47
  %55 = load i32, i32* %n, align 4
  %56 = icmp sgt i32 %55, 5
  br i1 %56, label %57, label %59

; <label>:57                                      ; preds = %54, %47
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 5)
  call void @exit(i32 1) #5
  unreachable

; <label>:59                                      ; preds = %54
  %60 = load i32, i32* %n, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 40, %61
  %63 = call noalias i8* @malloc(i64 %62) #7
  %64 = bitcast i8* %63 to %struct.parm*
  store %struct.parm* %64, %struct.parm** %arg, align 8
  store i32 0, i32* %i, align 4
  br label %65

; <label>:65                                      ; preds = %107, %59
  %66 = load i32, i32* %i, align 4
  %67 = load i32, i32* %n, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %110

; <label>:69                                      ; preds = %65
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %i, align 4
  %72 = sext i32 %71 to i64
  %73 = load %struct.parm*, %struct.parm** %arg, align 8
  %74 = getelementptr inbounds %struct.parm, %struct.parm* %73, i64 %72
  %75 = getelementptr inbounds %struct.parm, %struct.parm* %74, i32 0, i32 0
  store i32 %70, i32* %75, align 8
  %76 = load i32, i32* %n, align 4
  %77 = load i32, i32* %i, align 4
  %78 = sext i32 %77 to i64
  %79 = load %struct.parm*, %struct.parm** %arg, align 8
  %80 = getelementptr inbounds %struct.parm, %struct.parm* %79, i64 %78
  %81 = getelementptr inbounds %struct.parm, %struct.parm* %80, i32 0, i32 1
  store i32 %76, i32* %81, align 4
  %82 = load i32, i32* %i, align 4
  %83 = sext i32 %82 to i64
  %84 = load %struct.parm*, %struct.parm** %arg, align 8
  %85 = getelementptr inbounds %struct.parm, %struct.parm* %84, i64 %83
  %86 = getelementptr inbounds %struct.parm, %struct.parm* %85, i32 0, i32 2
  store i32 8, i32* %86, align 8
  %87 = load i32, i32* %i, align 4
  %88 = sext i32 %87 to i64
  %89 = load %struct.parm*, %struct.parm** %arg, align 8
  %90 = getelementptr inbounds %struct.parm, %struct.parm* %89, i64 %88
  %91 = getelementptr inbounds %struct.parm, %struct.parm* %90, i32 0, i32 3
  store [8 x [8 x double]]* @a, [8 x [8 x double]]** %91, align 8
  %92 = load i32, i32* %i, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.parm*, %struct.parm** %arg, align 8
  %95 = getelementptr inbounds %struct.parm, %struct.parm* %94, i64 %93
  %96 = getelementptr inbounds %struct.parm, %struct.parm* %95, i32 0, i32 4
  store [8 x [8 x double]]* @b, [8 x [8 x double]]** %96, align 8
  %97 = load i32, i32* %i, align 4
  %98 = sext i32 %97 to i64
  %99 = load %struct.parm*, %struct.parm** %arg, align 8
  %100 = getelementptr inbounds %struct.parm, %struct.parm* %99, i64 %98
  %101 = getelementptr inbounds %struct.parm, %struct.parm* %100, i32 0, i32 5
  store [8 x [8 x double]]* @c, [8 x [8 x double]]** %101, align 8
  %102 = load %struct.parm*, %struct.parm** %arg, align 8
  %103 = load i32, i32* %i, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.parm, %struct.parm* %102, i64 %104
  %106 = bitcast %struct.parm* %105 to i8*
  call void @worker(i8* %106)
  br label %107

; <label>:107                                     ; preds = %69
  %108 = load i32, i32* %i, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %i, align 4
  br label %65

; <label>:110                                     ; preds = %65
  call void @check_matrix(i32 8)
  %111 = load %struct.parm*, %struct.parm** %arg, align 8
  %112 = bitcast %struct.parm* %111 to i8*
  call void @free(i8* %112) #7
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind uwtable
define void @check_matrix(i32 %dim) #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %error = alloca i32, align 4
  %e = alloca double, align 8
  store i32 %dim, i32* %1, align 4
  store i32 0, i32* %error, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %59, %0
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %62

; <label>:7                                       ; preds = %3
  store i32 0, i32* %j, align 4
  br label %8

; <label>:8                                       ; preds = %55, %7
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %1, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %58

; <label>:12                                      ; preds = %8
  store double 0.000000e+00, double* %e, align 8
  store i32 0, i32* %k, align 4
  br label %13

; <label>:13                                      ; preds = %35, %12
  %14 = load i32, i32* %k, align 4
  %15 = load i32, i32* %1, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %38

; <label>:17                                      ; preds = %13
  %18 = load i32, i32* %k, align 4
  %19 = sext i32 %18 to i64
  %20 = load i32, i32* %i, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @a, i64 0, i64 %21
  %23 = getelementptr inbounds [8 x double], [8 x double]* %22, i64 0, i64 %19
  %24 = load double, double* %23, align 8
  %25 = load i32, i32* %j, align 4
  %26 = sext i32 %25 to i64
  %27 = load i32, i32* %k, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @b, i64 0, i64 %28
  %30 = getelementptr inbounds [8 x double], [8 x double]* %29, i64 0, i64 %26
  %31 = load double, double* %30, align 8
  %32 = fmul double %24, %31
  %33 = load double, double* %e, align 8
  %34 = fadd double %33, %32
  store double %34, double* %e, align 8
  br label %35

; <label>:35                                      ; preds = %17
  %36 = load i32, i32* %k, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %k, align 4
  br label %13

; <label>:38                                      ; preds = %13
  %39 = load double, double* %e, align 8
  %40 = load i32, i32* %j, align 4
  %41 = sext i32 %40 to i64
  %42 = load i32, i32* %i, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @c, i64 0, i64 %43
  %45 = getelementptr inbounds [8 x double], [8 x double]* %44, i64 0, i64 %41
  %46 = load double, double* %45, align 8
  %47 = fcmp une double %39, %46
  br i1 %47, label %48, label %54

; <label>:48                                      ; preds = %38
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %j, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 %49, i32 %50)
  %52 = load i32, i32* %error, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %error, align 4
  br label %54

; <label>:54                                      ; preds = %48, %38
  br label %55

; <label>:55                                      ; preds = %54
  %56 = load i32, i32* %j, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %j, align 4
  br label %8

; <label>:58                                      ; preds = %8
  br label %59

; <label>:59                                      ; preds = %58
  %60 = load i32, i32* %i, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %i, align 4
  br label %3

; <label>:62                                      ; preds = %3
  %63 = load i32, i32* %error, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

; <label>:65                                      ; preds = %62
  %66 = load i32, i32* %error, align 4
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i32 %66)
  br label %70

; <label>:68                                      ; preds = %62
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0))
  br label %70

; <label>:70                                      ; preds = %68, %65
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (tags/RELEASE_381/final)"}
