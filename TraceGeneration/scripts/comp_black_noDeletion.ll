; ModuleID = 'blackscholes.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OptionData_ = type { float, float, float, float, float, float, i8, float, float }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@numError = global i32 0, align 4
@numOptions = common global i32 0, align 4
@nThreads = common global i32 0, align 4
@sptprice = common global float* null, align 8
@strike = common global float* null, align 8
@rate = common global float* null, align 8
@volatility = common global float* null, align 8
@otime = common global float* null, align 8
@otype = common global i32* null, align 8
@prices = common global float* null, align 8
@data = common global %struct.OptionData_* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"Error on %d. Computed=%.5f, Ref=%.5f, Delta=%.5f\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Usage:\0A\09%s <nthreads> <inputFile> <outputFile>\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%f %f %f %f %f %f %c %f %f\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Num of Options: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Num of Runs: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Size of data: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%.18f\0A\00", align 1

; Function Attrs: nounwind uwtable
define float @CNDF(float %InputX) #0 {
  %1 = alloca float, align 4
  %sign = alloca i32, align 4
  %OutputX = alloca float, align 4
  %xInput = alloca float, align 4
  %xNPrimeofX = alloca float, align 4
  %expValues = alloca float, align 4
  %xK2 = alloca float, align 4
  %xK2_2 = alloca float, align 4
  %xK2_3 = alloca float, align 4
  %xK2_4 = alloca float, align 4
  %xK2_5 = alloca float, align 4
  %xLocal = alloca float, align 4
  %xLocal_1 = alloca float, align 4
  %xLocal_2 = alloca float, align 4
  %xLocal_3 = alloca float, align 4
  store float %InputX, float* %1, align 4
  %2 = load float, float* %1, align 4
  %3 = fpext float %2 to double
  %4 = fcmp olt double %3, 0.000000e+00
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = load float, float* %1, align 4
  %7 = fsub float -0.000000e+00, %6
  store float %7, float* %1, align 4
  store i32 1, i32* %sign, align 4
  br label %9

; <label>:8                                       ; preds = %0
  store i32 0, i32* %sign, align 4
  br label %9

; <label>:9                                       ; preds = %8, %5
  %10 = load float, float* %1, align 4
  store float %10, float* %xInput, align 4
  %11 = load float, float* %1, align 4
  %12 = fmul float -5.000000e-01, %11
  %13 = load float, float* %1, align 4
  %14 = fmul float %12, %13
  %15 = fpext float %14 to double
  %16 = call double @exp(double %15) #6
  %17 = fptrunc double %16 to float
  store float %17, float* %expValues, align 4
  %18 = load float, float* %expValues, align 4
  store float %18, float* %xNPrimeofX, align 4
  %19 = load float, float* %xNPrimeofX, align 4
  %20 = fpext float %19 to double
  %21 = fmul double %20, 0x3FD9884533D43651
  %22 = fptrunc double %21 to float
  store float %22, float* %xNPrimeofX, align 4
  %23 = load float, float* %xInput, align 4
  %24 = fpext float %23 to double
  %25 = fmul double 2.316419e-01, %24
  %26 = fptrunc double %25 to float
  store float %26, float* %xK2, align 4
  %27 = load float, float* %xK2, align 4
  %28 = fpext float %27 to double
  %29 = fadd double 1.000000e+00, %28
  %30 = fptrunc double %29 to float
  store float %30, float* %xK2, align 4
  %31 = load float, float* %xK2, align 4
  %32 = fpext float %31 to double
  %33 = fdiv double 1.000000e+00, %32
  %34 = fptrunc double %33 to float
  store float %34, float* %xK2, align 4
  %35 = load float, float* %xK2, align 4
  %36 = load float, float* %xK2, align 4
  %37 = fmul float %35, %36
  store float %37, float* %xK2_2, align 4
  %38 = load float, float* %xK2_2, align 4
  %39 = load float, float* %xK2, align 4
  %40 = fmul float %38, %39
  store float %40, float* %xK2_3, align 4
  %41 = load float, float* %xK2_3, align 4
  %42 = load float, float* %xK2, align 4
  %43 = fmul float %41, %42
  store float %43, float* %xK2_4, align 4
  %44 = load float, float* %xK2_4, align 4
  %45 = load float, float* %xK2, align 4
  %46 = fmul float %44, %45
  store float %46, float* %xK2_5, align 4
  %47 = load float, float* %xK2, align 4
  %48 = fpext float %47 to double
  %49 = fmul double %48, 0x3FD470BF3A92F8EC
  %50 = fptrunc double %49 to float
  store float %50, float* %xLocal_1, align 4
  %51 = load float, float* %xK2_2, align 4
  %52 = fpext float %51 to double
  %53 = fmul double %52, 0xBFD6D1F0E5A8325B
  %54 = fptrunc double %53 to float
  store float %54, float* %xLocal_2, align 4
  %55 = load float, float* %xK2_3, align 4
  %56 = fpext float %55 to double
  %57 = fmul double %56, 0x3FFC80EF025F5E68
  %58 = fptrunc double %57 to float
  store float %58, float* %xLocal_3, align 4
  %59 = load float, float* %xLocal_2, align 4
  %60 = load float, float* %xLocal_3, align 4
  %61 = fadd float %59, %60
  store float %61, float* %xLocal_2, align 4
  %62 = load float, float* %xK2_4, align 4
  %63 = fpext float %62 to double
  %64 = fmul double %63, 0xBFFD23DD4EF278D0
  %65 = fptrunc double %64 to float
  store float %65, float* %xLocal_3, align 4
  %66 = load float, float* %xLocal_2, align 4
  %67 = load float, float* %xLocal_3, align 4
  %68 = fadd float %66, %67
  store float %68, float* %xLocal_2, align 4
  %69 = load float, float* %xK2_5, align 4
  %70 = fpext float %69 to double
  %71 = fmul double %70, 0x3FF548CDD6F42943
  %72 = fptrunc double %71 to float
  store float %72, float* %xLocal_3, align 4
  %73 = load float, float* %xLocal_2, align 4
  %74 = load float, float* %xLocal_3, align 4
  %75 = fadd float %73, %74
  store float %75, float* %xLocal_2, align 4
  %76 = load float, float* %xLocal_2, align 4
  %77 = load float, float* %xLocal_1, align 4
  %78 = fadd float %76, %77
  store float %78, float* %xLocal_1, align 4
  %79 = load float, float* %xLocal_1, align 4
  %80 = load float, float* %xNPrimeofX, align 4
  %81 = fmul float %79, %80
  store float %81, float* %xLocal, align 4
  %82 = load float, float* %xLocal, align 4
  %83 = fpext float %82 to double
  %84 = fsub double 1.000000e+00, %83
  %85 = fptrunc double %84 to float
  store float %85, float* %xLocal, align 4
  %86 = load float, float* %xLocal, align 4
  store float %86, float* %OutputX, align 4
  %87 = load i32, i32* %sign, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

; <label>:89                                      ; preds = %9
  %90 = load float, float* %OutputX, align 4
  %91 = fpext float %90 to double
  %92 = fsub double 1.000000e+00, %91
  %93 = fptrunc double %92 to float
  store float %93, float* %OutputX, align 4
  br label %94

; <label>:94                                      ; preds = %89, %9
  %95 = load float, float* %OutputX, align 4
  ret float %95
}

; Function Attrs: nounwind
declare double @exp(double) #1

; Function Attrs: nounwind uwtable
define float @BlkSchlsEqEuroNoDiv(float %sptprice, float %strike, float %rate, float %volatility, float %time, i32 %otype, float %timet) #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %OptionPrice = alloca float, align 4
  %xStockPrice = alloca float, align 4
  %xStrikePrice = alloca float, align 4
  %xRiskFreeRate = alloca float, align 4
  %xVolatility = alloca float, align 4
  %xTime = alloca float, align 4
  %xSqrtTime = alloca float, align 4
  %logValues = alloca float, align 4
  %xLogTerm = alloca float, align 4
  %xD1 = alloca float, align 4
  %xD2 = alloca float, align 4
  %xPowerTerm = alloca float, align 4
  %xDen = alloca float, align 4
  %d1 = alloca float, align 4
  %d2 = alloca float, align 4
  %FutureValueX = alloca float, align 4
  %NofXd1 = alloca float, align 4
  %NofXd2 = alloca float, align 4
  %NegNofXd1 = alloca float, align 4
  %NegNofXd2 = alloca float, align 4
  store float %sptprice, float* %1, align 4
  store float %strike, float* %2, align 4
  store float %rate, float* %3, align 4
  store float %volatility, float* %4, align 4
  store float %time, float* %5, align 4
  store i32 %otype, i32* %6, align 4
  store float %timet, float* %7, align 4
  %8 = load float, float* %1, align 4
  store float %8, float* %xStockPrice, align 4
  %9 = load float, float* %2, align 4
  store float %9, float* %xStrikePrice, align 4
  %10 = load float, float* %3, align 4
  store float %10, float* %xRiskFreeRate, align 4
  %11 = load float, float* %4, align 4
  store float %11, float* %xVolatility, align 4
  %12 = load float, float* %5, align 4
  store float %12, float* %xTime, align 4
  %13 = load float, float* %xTime, align 4
  %14 = fpext float %13 to double
  %15 = call double @sqrt(double %14) #6
  %16 = fptrunc double %15 to float
  store float %16, float* %xSqrtTime, align 4
  %17 = load float, float* %1, align 4
  %18 = load float, float* %2, align 4
  %19 = fdiv float %17, %18
  %20 = fpext float %19 to double
  %21 = call double @log(double %20) #6
  %22 = fptrunc double %21 to float
  store float %22, float* %logValues, align 4
  %23 = load float, float* %logValues, align 4
  store float %23, float* %xLogTerm, align 4
  %24 = load float, float* %xVolatility, align 4
  %25 = load float, float* %xVolatility, align 4
  %26 = fmul float %24, %25
  store float %26, float* %xPowerTerm, align 4
  %27 = load float, float* %xPowerTerm, align 4
  %28 = fpext float %27 to double
  %29 = fmul double %28, 5.000000e-01
  %30 = fptrunc double %29 to float
  store float %30, float* %xPowerTerm, align 4
  %31 = load float, float* %xRiskFreeRate, align 4
  %32 = load float, float* %xPowerTerm, align 4
  %33 = fadd float %31, %32
  store float %33, float* %xD1, align 4
  %34 = load float, float* %xD1, align 4
  %35 = load float, float* %xTime, align 4
  %36 = fmul float %34, %35
  store float %36, float* %xD1, align 4
  %37 = load float, float* %xD1, align 4
  %38 = load float, float* %xLogTerm, align 4
  %39 = fadd float %37, %38
  store float %39, float* %xD1, align 4
  %40 = load float, float* %xVolatility, align 4
  %41 = load float, float* %xSqrtTime, align 4
  %42 = fmul float %40, %41
  store float %42, float* %xDen, align 4
  %43 = load float, float* %xD1, align 4
  %44 = load float, float* %xDen, align 4
  %45 = fdiv float %43, %44
  store float %45, float* %xD1, align 4
  %46 = load float, float* %xD1, align 4
  %47 = load float, float* %xDen, align 4
  %48 = fsub float %46, %47
  store float %48, float* %xD2, align 4
  %49 = load float, float* %xD1, align 4
  store float %49, float* %d1, align 4
  %50 = load float, float* %xD2, align 4
  store float %50, float* %d2, align 4
  %51 = load float, float* %d1, align 4
  %52 = call float @CNDF(float %51)
  store float %52, float* %NofXd1, align 4
  %53 = load float, float* %d2, align 4
  %54 = call float @CNDF(float %53)
  store float %54, float* %NofXd2, align 4
  %55 = load float, float* %2, align 4
  %56 = fpext float %55 to double
  %57 = load float, float* %3, align 4
  %58 = fsub float -0.000000e+00, %57
  %59 = load float, float* %5, align 4
  %60 = fmul float %58, %59
  %61 = fpext float %60 to double
  %62 = call double @exp(double %61) #6
  %63 = fmul double %56, %62
  %64 = fptrunc double %63 to float
  store float %64, float* %FutureValueX, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %75

; <label>:67                                      ; preds = %0
  %68 = load float, float* %1, align 4
  %69 = load float, float* %NofXd1, align 4
  %70 = fmul float %68, %69
  %71 = load float, float* %FutureValueX, align 4
  %72 = load float, float* %NofXd2, align 4
  %73 = fmul float %71, %72
  %74 = fsub float %70, %73
  store float %74, float* %OptionPrice, align 4
  br label %91

; <label>:75                                      ; preds = %0
  %76 = load float, float* %NofXd1, align 4
  %77 = fpext float %76 to double
  %78 = fsub double 1.000000e+00, %77
  %79 = fptrunc double %78 to float
  store float %79, float* %NegNofXd1, align 4
  %80 = load float, float* %NofXd2, align 4
  %81 = fpext float %80 to double
  %82 = fsub double 1.000000e+00, %81
  %83 = fptrunc double %82 to float
  store float %83, float* %NegNofXd2, align 4
  %84 = load float, float* %FutureValueX, align 4
  %85 = load float, float* %NegNofXd2, align 4
  %86 = fmul float %84, %85
  %87 = load float, float* %1, align 4
  %88 = load float, float* %NegNofXd1, align 4
  %89 = fmul float %87, %88
  %90 = fsub float %86, %89
  store float %90, float* %OptionPrice, align 4
  br label %91

; <label>:91                                      ; preds = %75, %67
  %92 = load float, float* %OptionPrice, align 4
  ret float %92
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind
declare double @log(double) #1

; Function Attrs: nounwind uwtable
define i32 @bs_thread(i8* %tid_ptr) #0 {
  %1 = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %price = alloca float, align 4
  %priceDelta = alloca float, align 4
  %tid = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  store i8* %tid_ptr, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to i32*
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %tid, align 4
  %5 = load i32, i32* %tid, align 4
  %6 = load i32, i32* @numOptions, align 4
  %7 = load i32, i32* @nThreads, align 4
  %8 = sdiv i32 %6, %7
  %9 = mul nsw i32 %5, %8
  store i32 %9, i32* %start, align 4
  %10 = load i32, i32* %start, align 4
  %11 = load i32, i32* @numOptions, align 4
  %12 = load i32, i32* @nThreads, align 4
  %13 = sdiv i32 %11, %12
  %14 = add nsw i32 %10, %13
  store i32 %14, i32* %end, align 4
  store i32 0, i32* %j, align 4
  br label %15

; <label>:15                                      ; preds = %93, %0
  %16 = load i32, i32* %j, align 4
  %17 = icmp slt i32 %16, 5
  br i1 %17, label %18, label %96

; <label>:18                                      ; preds = %15
  store i32 0, i32* %i, align 4
  br label %19

; <label>:19                                      ; preds = %89, %18
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* @numOptions, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %92

; <label>:23                                      ; preds = %19
  %24 = load i32, i32* %i, align 4
  %25 = sext i32 %24 to i64
  %26 = load float*, float** @sptprice, align 8
  %27 = getelementptr inbounds float, float* %26, i64 %25
  %28 = load float, float* %27, align 4
  %29 = load i32, i32* %i, align 4
  %30 = sext i32 %29 to i64
  %31 = load float*, float** @strike, align 8
  %32 = getelementptr inbounds float, float* %31, i64 %30
  %33 = load float, float* %32, align 4
  %34 = load i32, i32* %i, align 4
  %35 = sext i32 %34 to i64
  %36 = load float*, float** @rate, align 8
  %37 = getelementptr inbounds float, float* %36, i64 %35
  %38 = load float, float* %37, align 4
  %39 = load i32, i32* %i, align 4
  %40 = sext i32 %39 to i64
  %41 = load float*, float** @volatility, align 8
  %42 = getelementptr inbounds float, float* %41, i64 %40
  %43 = load float, float* %42, align 4
  %44 = load i32, i32* %i, align 4
  %45 = sext i32 %44 to i64
  %46 = load float*, float** @otime, align 8
  %47 = getelementptr inbounds float, float* %46, i64 %45
  %48 = load float, float* %47, align 4
  %49 = load i32, i32* %i, align 4
  %50 = sext i32 %49 to i64
  %51 = load i32*, i32** @otype, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 %50
  %53 = load i32, i32* %52, align 4
  %54 = call float @BlkSchlsEqEuroNoDiv(float %28, float %33, float %38, float %43, float %48, i32 %53, float 0.000000e+00)
  store float %54, float* %price, align 4
  %55 = load float, float* %price, align 4
  %56 = load i32, i32* %i, align 4
  %57 = sext i32 %56 to i64
  %58 = load float*, float** @prices, align 8
  %59 = getelementptr inbounds float, float* %58, i64 %57
  store float %55, float* %59, align 4
  %60 = load i32, i32* %i, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.OptionData_*, %struct.OptionData_** @data, align 8
  %63 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %62, i64 %61
  %64 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %63, i32 0, i32 8
  %65 = load float, float* %64, align 4
  %66 = load float, float* %price, align 4
  %67 = fsub float %65, %66
  store float %67, float* %priceDelta, align 4
  %68 = load float, float* %priceDelta, align 4
  %69 = fpext float %68 to double
  %70 = call double @fabs(double %69) #7
  %71 = fcmp oge double %70, 1.000000e-04
  br i1 %71, label %72, label %88

; <label>:72                                      ; preds = %23
  %73 = load i32, i32* %i, align 4
  %74 = load float, float* %price, align 4
  %75 = fpext float %74 to double
  %76 = load i32, i32* %i, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.OptionData_*, %struct.OptionData_** @data, align 8
  %79 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %78, i64 %77
  %80 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %79, i32 0, i32 8
  %81 = load float, float* %80, align 4
  %82 = fpext float %81 to double
  %83 = load float, float* %priceDelta, align 4
  %84 = fpext float %83 to double
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i32 %73, double %75, double %82, double %84)
  %86 = load i32, i32* @numError, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @numError, align 4
  br label %88

; <label>:88                                      ; preds = %72, %23
  br label %89

; <label>:89                                      ; preds = %88
  %90 = load i32, i32* %i, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %i, align 4
  br label %19

; <label>:92                                      ; preds = %19
  br label %93

; <label>:93                                      ; preds = %92
  %94 = load i32, i32* %j, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %j, align 4
  br label %15

; <label>:96                                      ; preds = %15
  ret i32 0
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %loopnum = alloca i32, align 4
  %buffer = alloca float*, align 8
  %buffer2 = alloca i32*, align 8
  %rv = alloca i32, align 4
  %inputFile = alloca i8*, align 8
  %outputFile = alloca i8*, align 8
  %tid = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 4
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = load i8**, i8*** %3, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0), i8* %9)
  call void @exit(i32 1) #8
  unreachable

; <label>:11                                      ; preds = %0
  %12 = load i8**, i8*** %3, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @atoi(i8* %14) #9
  store i32 %15, i32* @nThreads, align 4
  %16 = load i8**, i8*** %3, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 2
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %inputFile, align 8
  %19 = load i8**, i8*** %3, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 3
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %outputFile, align 8
  %22 = load i8*, i8** %inputFile, align 8
  %23 = call %struct._IO_FILE* @fopen(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %23, %struct._IO_FILE** %file, align 8
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32* @numOptions)
  store i32 %25, i32* %rv, align 4
  %26 = load i32, i32* @numOptions, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 36
  %29 = call noalias i8* @malloc(i64 %28) #6
  %30 = bitcast i8* %29 to %struct.OptionData_*
  store %struct.OptionData_* %30, %struct.OptionData_** @data, align 8
  %31 = load i32, i32* @numOptions, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = call noalias i8* @malloc(i64 %33) #6
  %35 = bitcast i8* %34 to float*
  store float* %35, float** @prices, align 8
  store i32 0, i32* %loopnum, align 4
  br label %36

; <label>:36                                      ; preds = %88, %11
  %37 = load i32, i32* %loopnum, align 4
  %38 = load i32, i32* @numOptions, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %91

; <label>:40                                      ; preds = %36
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %42 = load i32, i32* %loopnum, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.OptionData_*, %struct.OptionData_** @data, align 8
  %45 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %44, i64 %43
  %46 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %45, i32 0, i32 0
  %47 = load i32, i32* %loopnum, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.OptionData_*, %struct.OptionData_** @data, align 8
  %50 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %49, i64 %48
  %51 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %50, i32 0, i32 1
  %52 = load i32, i32* %loopnum, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.OptionData_*, %struct.OptionData_** @data, align 8
  %55 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %54, i64 %53
  %56 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %55, i32 0, i32 2
  %57 = load i32, i32* %loopnum, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.OptionData_*, %struct.OptionData_** @data, align 8
  %60 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %59, i64 %58
  %61 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %60, i32 0, i32 3
  %62 = load i32, i32* %loopnum, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.OptionData_*, %struct.OptionData_** @data, align 8
  %65 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %64, i64 %63
  %66 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %65, i32 0, i32 4
  %67 = load i32, i32* %loopnum, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.OptionData_*, %struct.OptionData_** @data, align 8
  %70 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %69, i64 %68
  %71 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %70, i32 0, i32 5
  %72 = load i32, i32* %loopnum, align 4
  %73 = sext i32 %72 to i64
  %74 = load %struct.OptionData_*, %struct.OptionData_** @data, align 8
  %75 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %74, i64 %73
  %76 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %75, i32 0, i32 6
  %77 = load i32, i32* %loopnum, align 4
  %78 = sext i32 %77 to i64
  %79 = load %struct.OptionData_*, %struct.OptionData_** @data, align 8
  %80 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %79, i64 %78
  %81 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %80, i32 0, i32 7
  %82 = load i32, i32* %loopnum, align 4
  %83 = sext i32 %82 to i64
  %84 = load %struct.OptionData_*, %struct.OptionData_** @data, align 8
  %85 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %84, i64 %83
  %86 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %85, i32 0, i32 8
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), float* %46, float* %51, float* %56, float* %61, float* %66, float* %71, i8* %76, float* %81, float* %86)
  store i32 %87, i32* %rv, align 4
  br label %88

; <label>:88                                      ; preds = %40
  %89 = load i32, i32* %loopnum, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %loopnum, align 4
  br label %36

; <label>:91                                      ; preds = %36
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %93 = call i32 @fclose(%struct._IO_FILE* %92)
  store i32 %93, i32* %rv, align 4
  %94 = load i32, i32* @numOptions, align 4
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32 %94)
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 5)
  %97 = load i32, i32* @numOptions, align 4
  %98 = mul nsw i32 5, %97
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 4
  %101 = add i64 %100, 256
  %102 = call noalias i8* @malloc(i64 %101) #6
  %103 = bitcast i8* %102 to float*
  store float* %103, float** %buffer, align 8
  %104 = load float*, float** %buffer, align 8
  %105 = ptrtoint float* %104 to i64
  %106 = add i64 %105, 256
  %107 = and i64 %106, -64
  %108 = inttoptr i64 %107 to float*
  store float* %108, float** @sptprice, align 8
  %109 = load float*, float** @sptprice, align 8
  %110 = load i32, i32* @numOptions, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, float* %109, i64 %111
  store float* %112, float** @strike, align 8
  %113 = load float*, float** @strike, align 8
  %114 = load i32, i32* @numOptions, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %113, i64 %115
  store float* %116, float** @rate, align 8
  %117 = load float*, float** @rate, align 8
  %118 = load i32, i32* @numOptions, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %117, i64 %119
  store float* %120, float** @volatility, align 8
  %121 = load float*, float** @volatility, align 8
  %122 = load i32, i32* @numOptions, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds float, float* %121, i64 %123
  store float* %124, float** @otime, align 8
  %125 = load i32, i32* @numOptions, align 4
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 4
  %128 = add i64 %127, 256
  %129 = call noalias i8* @malloc(i64 %128) #6
  %130 = bitcast i8* %129 to i32*
  store i32* %130, i32** %buffer2, align 8
  %131 = load i32*, i32** %buffer2, align 8
  %132 = ptrtoint i32* %131 to i64
  %133 = add i64 %132, 256
  %134 = and i64 %133, -64
  %135 = inttoptr i64 %134 to i32*
  store i32* %135, i32** @otype, align 8
  store i32 0, i32* %i, align 4
  br label %136

; <label>:136                                     ; preds = %204, %91
  %137 = load i32, i32* %i, align 4
  %138 = load i32, i32* @numOptions, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %207

; <label>:140                                     ; preds = %136
  %141 = load i32, i32* %i, align 4
  %142 = sext i32 %141 to i64
  %143 = load %struct.OptionData_*, %struct.OptionData_** @data, align 8
  %144 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %143, i64 %142
  %145 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %144, i32 0, i32 6
  %146 = load i8, i8* %145, align 4
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 80
  %149 = select i1 %148, i32 1, i32 0
  %150 = load i32, i32* %i, align 4
  %151 = sext i32 %150 to i64
  %152 = load i32*, i32** @otype, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 %151
  store i32 %149, i32* %153, align 4
  %154 = load i32, i32* %i, align 4
  %155 = sext i32 %154 to i64
  %156 = load %struct.OptionData_*, %struct.OptionData_** @data, align 8
  %157 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %156, i64 %155
  %158 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %157, i32 0, i32 0
  %159 = load float, float* %158, align 4
  %160 = load i32, i32* %i, align 4
  %161 = sext i32 %160 to i64
  %162 = load float*, float** @sptprice, align 8
  %163 = getelementptr inbounds float, float* %162, i64 %161
  store float %159, float* %163, align 4
  %164 = load i32, i32* %i, align 4
  %165 = sext i32 %164 to i64
  %166 = load %struct.OptionData_*, %struct.OptionData_** @data, align 8
  %167 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %166, i64 %165
  %168 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %167, i32 0, i32 1
  %169 = load float, float* %168, align 4
  %170 = load i32, i32* %i, align 4
  %171 = sext i32 %170 to i64
  %172 = load float*, float** @strike, align 8
  %173 = getelementptr inbounds float, float* %172, i64 %171
  store float %169, float* %173, align 4
  %174 = load i32, i32* %i, align 4
  %175 = sext i32 %174 to i64
  %176 = load %struct.OptionData_*, %struct.OptionData_** @data, align 8
  %177 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %176, i64 %175
  %178 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %177, i32 0, i32 2
  %179 = load float, float* %178, align 4
  %180 = load i32, i32* %i, align 4
  %181 = sext i32 %180 to i64
  %182 = load float*, float** @rate, align 8
  %183 = getelementptr inbounds float, float* %182, i64 %181
  store float %179, float* %183, align 4
  %184 = load i32, i32* %i, align 4
  %185 = sext i32 %184 to i64
  %186 = load %struct.OptionData_*, %struct.OptionData_** @data, align 8
  %187 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %186, i64 %185
  %188 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %187, i32 0, i32 4
  %189 = load float, float* %188, align 4
  %190 = load i32, i32* %i, align 4
  %191 = sext i32 %190 to i64
  %192 = load float*, float** @volatility, align 8
  %193 = getelementptr inbounds float, float* %192, i64 %191
  store float %189, float* %193, align 4
  %194 = load i32, i32* %i, align 4
  %195 = sext i32 %194 to i64
  %196 = load %struct.OptionData_*, %struct.OptionData_** @data, align 8
  %197 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %196, i64 %195
  %198 = getelementptr inbounds %struct.OptionData_, %struct.OptionData_* %197, i32 0, i32 5
  %199 = load float, float* %198, align 4
  %200 = load i32, i32* %i, align 4
  %201 = sext i32 %200 to i64
  %202 = load float*, float** @otime, align 8
  %203 = getelementptr inbounds float, float* %202, i64 %201
  store float %199, float* %203, align 4
  br label %204

; <label>:204                                     ; preds = %140
  %205 = load i32, i32* %i, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %i, align 4
  br label %136

; <label>:207                                     ; preds = %136
  %208 = load i32, i32* @numOptions, align 4
  %209 = sext i32 %208 to i64
  %210 = mul i64 %209, 40
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i64 %210)
  store i32 0, i32* %tid, align 4
  %212 = bitcast i32* %tid to i8*
  %213 = call i32 @bs_thread(i8* %212)
  %214 = load i8*, i8** %outputFile, align 8
  %215 = call %struct._IO_FILE* @fopen(i8* %214, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  store %struct._IO_FILE* %215, %struct._IO_FILE** %file, align 8
  store i32 0, i32* %i, align 4
  br label %216

; <label>:216                                     ; preds = %229, %207
  %217 = load i32, i32* %i, align 4
  %218 = load i32, i32* @numOptions, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %232

; <label>:220                                     ; preds = %216
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %222 = load i32, i32* %i, align 4
  %223 = sext i32 %222 to i64
  %224 = load float*, float** @prices, align 8
  %225 = getelementptr inbounds float, float* %224, i64 %223
  %226 = load float, float* %225, align 4
  %227 = fpext float %226 to double
  %228 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %221, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), double %227)
  store i32 %228, i32* %rv, align 4
  br label %229

; <label>:229                                     ; preds = %220
  %230 = load i32, i32* %i, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %i, align 4
  br label %216

; <label>:232                                     ; preds = %216
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %234 = call i32 @fclose(%struct._IO_FILE* %233)
  store i32 %234, i32* %rv, align 4
  %235 = load %struct.OptionData_*, %struct.OptionData_** @data, align 8
  %236 = bitcast %struct.OptionData_* %235 to i8*
  call void @free(i8* %236) #6
  %237 = load float*, float** @prices, align 8
  %238 = bitcast float* %237 to i8*
  call void @free(i8* %238) #6
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #5

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @fclose(%struct._IO_FILE*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (tags/RELEASE_381/final)"}
