; ModuleID = 'test3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__STDIO_FILE_STRUCT.273 = type { i16, [2 x i8], i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct.__STDIO_FILE_STRUCT.273*, [2 x i32], %struct.__mbstate_t.272 }
%struct.__mbstate_t.272 = type { i32, i32 }
%struct.Elf64_auxv_t = type { i64, %union.anon.645 }
%union.anon.645 = type { i64 }
%struct.stat.644 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64] }
%struct.termios.442 = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.__kernel_termios = type { i32, i32, i32, i32, i8, [19 x i8] }

@.str = private unnamed_addr constant [7 x i8] c"hello\0A\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"buff\00", align 1
@__libc_stack_end = global i8* null, align 8
@.str3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__uclibc_progname = hidden global i8* getelementptr inbounds ([1 x i8]* @.str3, i32 0, i32 0), align 8
@__environ = global i8** null, align 8
@__pagesize = global i64 0, align 8
@__uClibc_init.been_there_done_that = internal global i32 0, align 4
@__app_fini = hidden global void ()* null, align 8
@__rtld_fini = hidden global void ()* null, align 8
@.str14 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@_stdio_streams = internal global [3 x %struct.__STDIO_FILE_STRUCT.273] [%struct.__STDIO_FILE_STRUCT.273 { i16 544, [2 x i8] zeroinitializer, i32 0, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, %struct.__STDIO_FILE_STRUCT.273* bitcast (i8* getelementptr (i8* bitcast ([3 x %struct.__STDIO_FILE_STRUCT.273]* @_stdio_streams to i8*), i64 80) to %struct.__STDIO_FILE_STRUCT.273*), [2 x i32] zeroinitializer, %struct.__mbstate_t.272 zeroinitializer }, %struct.__STDIO_FILE_STRUCT.273 { i16 528, [2 x i8] zeroinitializer, i32 1, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, %struct.__STDIO_FILE_STRUCT.273* bitcast (i8* getelementptr (i8* bitcast ([3 x %struct.__STDIO_FILE_STRUCT.273]* @_stdio_streams to i8*), i64 160) to %struct.__STDIO_FILE_STRUCT.273*), [2 x i32] zeroinitializer, %struct.__mbstate_t.272 zeroinitializer }, %struct.__STDIO_FILE_STRUCT.273 { i16 528, [2 x i8] zeroinitializer, i32 2, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, %struct.__STDIO_FILE_STRUCT.273* null, [2 x i32] zeroinitializer, %struct.__mbstate_t.272 zeroinitializer }], align 16
@stdin = global %struct.__STDIO_FILE_STRUCT.273* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.273]* @_stdio_streams, i32 0, i32 0), align 8
@stdout = global %struct.__STDIO_FILE_STRUCT.273* bitcast (i8* getelementptr (i8* bitcast ([3 x %struct.__STDIO_FILE_STRUCT.273]* @_stdio_streams to i8*), i64 80) to %struct.__STDIO_FILE_STRUCT.273*), align 8
@stderr = global %struct.__STDIO_FILE_STRUCT.273* bitcast (i8* getelementptr (i8* bitcast ([3 x %struct.__STDIO_FILE_STRUCT.273]* @_stdio_streams to i8*), i64 160) to %struct.__STDIO_FILE_STRUCT.273*), align 8
@__stdin = global %struct.__STDIO_FILE_STRUCT.273* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.273]* @_stdio_streams, i32 0, i32 0), align 8
@__stdout = global %struct.__STDIO_FILE_STRUCT.273* bitcast (i8* getelementptr (i8* bitcast ([3 x %struct.__STDIO_FILE_STRUCT.273]* @_stdio_streams to i8*), i64 80) to %struct.__STDIO_FILE_STRUCT.273*), align 8
@_stdio_openlist = global %struct.__STDIO_FILE_STRUCT.273* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.273]* @_stdio_streams, i32 0, i32 0), align 8
@errno = global i32 0, align 4
@h_errno = global i32 0, align 4
@.str29 = private unnamed_addr constant [12 x i8] c"klee_choose\00", align 1
@.str130 = private unnamed_addr constant [60 x i8] c"/home/klee/klee_src/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str12 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str331 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str1432 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str6 = private unnamed_addr constant [51 x i8] c"/home/klee/klee_src/runtime/Intrinsic/klee_range.c\00", align 1
@.str17 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"user\00", align 1

@strcoll = alias i32 (i8*, i8*)* @strcmp
@environ = alias weak i8*** @__environ

; Function Attrs: nounwind uwtable
define i32 @checker(i8* %buff) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i8* %buff, i8** %2, align 8
  %3 = load i8** %2, align 8, !dbg !362
  %4 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0)) #13, !dbg !362
  %5 = icmp ne i32 %4, 0, !dbg !362
  br i1 %5, label %7, label %6, !dbg !362

; <label>:6                                       ; preds = %0
  store i32 0, i32* %1, !dbg !364
  br label %8, !dbg !364

; <label>:7                                       ; preds = %0
  store i32 -1, i32* %1, !dbg !366
  br label %8, !dbg !366

; <label>:8                                       ; preds = %7, %6
  %9 = load i32* %1, !dbg !368
  ret i32 %9, !dbg !368
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @__user_main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %buff = alloca [20 x i8], align 16
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %4 = bitcast [20 x i8]* %buff to i8*, !dbg !369
  call void @klee_make_symbolic(i8* %4, i64 20, i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0)), !dbg !369
  %5 = getelementptr inbounds [20 x i8]* %buff, i32 0, i32 0, !dbg !370
  %6 = call i32 @checker(i8* %5), !dbg !370
  ret i32 %6, !dbg !370
}

declare void @klee_make_symbolic(i8*, i64, i8*) #2

; Function Attrs: nounwind readonly uwtable
define i32 @strcmp(i8* %s1, i8* %s2) #3 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %r = alloca i32, align 4
  store i8* %s1, i8** %1, align 8
  store i8* %s2, i8** %2, align 8
  br label %3, !dbg !371

; <label>:3                                       ; preds = %13, %0
  %4 = load i8** %1, align 8, !dbg !371
  %5 = load i8* %4, align 1, !dbg !371
  %6 = zext i8 %5 to i32, !dbg !371
  %7 = load i8** %2, align 8, !dbg !371
  %8 = getelementptr inbounds i8* %7, i32 1, !dbg !371
  store i8* %8, i8** %2, align 8, !dbg !371
  %9 = load i8* %7, align 1, !dbg !371
  %10 = zext i8 %9 to i32, !dbg !371
  %11 = sub nsw i32 %6, %10, !dbg !371
  store i32 %11, i32* %r, align 4, !dbg !371
  %12 = icmp eq i32 %11, 0, !dbg !371
  br i1 %12, label %13, label %.critedge, !dbg !371

; <label>:13                                      ; preds = %3
  %14 = load i8** %1, align 8, !dbg !371
  %15 = getelementptr inbounds i8* %14, i32 1, !dbg !371
  store i8* %15, i8** %1, align 8, !dbg !371
  %16 = load i8* %14, align 1, !dbg !371
  %17 = sext i8 %16 to i32, !dbg !371
  %18 = icmp ne i32 %17, 0, !dbg !371
  br i1 %18, label %3, label %.critedge

.critedge:                                        ; preds = %3, %13
  %19 = load i32* %r, align 4, !dbg !372
  ret i32 %19, !dbg !372
}

; Function Attrs: nounwind uwtable
define void @__uClibc_init() #0 {
  %1 = load i32* @__uClibc_init.been_there_done_that, align 4, !dbg !373
  %2 = icmp ne i32 %1, 0, !dbg !373
  br i1 %2, label %8, label %3, !dbg !373

; <label>:3                                       ; preds = %0
  %4 = load i32* @__uClibc_init.been_there_done_that, align 4, !dbg !375
  %5 = add nsw i32 %4, 1, !dbg !375
  store i32 %5, i32* @__uClibc_init.been_there_done_that, align 4, !dbg !375
  store i64 4096, i64* @__pagesize, align 8, !dbg !376
  %6 = icmp ne i64 1, 0, !dbg !377
  br i1 %6, label %7, label %8, !dbg !377

; <label>:7                                       ; preds = %3
  call void @_stdio_init() #14, !dbg !379
  br label %8, !dbg !379

; <label>:8                                       ; preds = %0, %7, %3
  ret void, !dbg !380
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @__uClibc_fini() #0 {
  %1 = load void ()** @__app_fini, align 8, !dbg !381
  %2 = icmp ne void ()* %1, null, !dbg !381
  br i1 %2, label %3, label %5, !dbg !381

; <label>:3                                       ; preds = %0
  %4 = load void ()** @__app_fini, align 8, !dbg !383
  call void %4() #14, !dbg !383
  br label %5, !dbg !383

; <label>:5                                       ; preds = %3, %0
  %6 = load void ()** @__rtld_fini, align 8, !dbg !384
  %7 = icmp ne void ()* %6, null, !dbg !384
  br i1 %7, label %8, label %10, !dbg !384

; <label>:8                                       ; preds = %5
  %9 = load void ()** @__rtld_fini, align 8, !dbg !386
  call void %9() #14, !dbg !386
  br label %10, !dbg !386

; <label>:10                                      ; preds = %8, %5
  ret void, !dbg !387
}

; Function Attrs: noreturn nounwind uwtable
define void @__uClibc_main(i32 (i32, i8**, i8**)* %main, i32 %argc, i8** %argv, void ()* %app_init, void ()* %app_fini, void ()* %rtld_fini, i8* %stack_end) #4 {
  %1 = alloca i32 (i32, i8**, i8**)*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca void ()*, align 8
  %5 = alloca void ()*, align 8
  %6 = alloca void ()*, align 8
  %7 = alloca i8*, align 8
  %aux_dat = alloca i64*, align 8
  %auxvt = alloca [15 x %struct.Elf64_auxv_t], align 16
  %auxv_entry = alloca %struct.Elf64_auxv_t*, align 8
  store i32 (i32, i8**, i8**)* %main, i32 (i32, i8**, i8**)** %1, align 8
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store void ()* %app_init, void ()** %4, align 8
  store void ()* %app_fini, void ()** %5, align 8
  store void ()* %rtld_fini, void ()** %6, align 8
  store i8* %stack_end, i8** %7, align 8
  %8 = load i8** %7, align 8, !dbg !388
  store i8* %8, i8** @__libc_stack_end, align 8, !dbg !388
  %9 = load void ()** %6, align 8, !dbg !389
  store void ()* %9, void ()** @__rtld_fini, align 8, !dbg !389
  %10 = load i32* %2, align 4, !dbg !390
  %11 = add nsw i32 %10, 1, !dbg !390
  %12 = sext i32 %11 to i64, !dbg !390
  %13 = load i8*** %3, align 8, !dbg !390
  %14 = getelementptr inbounds i8** %13, i64 %12, !dbg !390
  store i8** %14, i8*** @__environ, align 8, !dbg !390
  %15 = load i8*** @__environ, align 8, !dbg !391
  %16 = bitcast i8** %15 to i8*, !dbg !391
  %17 = load i8*** %3, align 8, !dbg !391
  %18 = load i8** %17, align 8, !dbg !391
  %19 = icmp eq i8* %16, %18, !dbg !391
  br i1 %19, label %20, label %25, !dbg !391

; <label>:20                                      ; preds = %0
  %21 = load i32* %2, align 4, !dbg !393
  %22 = sext i32 %21 to i64, !dbg !393
  %23 = load i8*** %3, align 8, !dbg !393
  %24 = getelementptr inbounds i8** %23, i64 %22, !dbg !393
  store i8** %24, i8*** @__environ, align 8, !dbg !393
  br label %25, !dbg !395

; <label>:25                                      ; preds = %20, %0
  %26 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i32 0, !dbg !396
  %27 = bitcast %struct.Elf64_auxv_t* %26 to i8*, !dbg !396
  %28 = call i8* @memset(i8* %27, i32 0, i64 240) #15, !dbg !396
  %29 = load i8*** @__environ, align 8, !dbg !397
  %30 = bitcast i8** %29 to i64*, !dbg !397
  store i64* %30, i64** %aux_dat, align 8, !dbg !397
  br label %31, !dbg !398

; <label>:31                                      ; preds = %31, %25
  %32 = load i64** %aux_dat, align 8, !dbg !398
  %33 = load i64* %32, align 8, !dbg !398
  %34 = icmp ne i64 %33, 0, !dbg !398
  %35 = load i64** %aux_dat, align 8, !dbg !399
  %36 = getelementptr inbounds i64* %35, i32 1, !dbg !399
  store i64* %36, i64** %aux_dat, align 8, !dbg !399
  br i1 %34, label %31, label %37, !dbg !398

; <label>:37                                      ; preds = %31, %57
  %38 = load i64** %aux_dat, align 8, !dbg !401
  %39 = load i64* %38, align 8, !dbg !401
  %40 = icmp ne i64 %39, 0, !dbg !401
  br i1 %40, label %41, label %60, !dbg !401

; <label>:41                                      ; preds = %37
  %42 = load i64** %aux_dat, align 8, !dbg !402
  %43 = bitcast i64* %42 to %struct.Elf64_auxv_t*, !dbg !402
  store %struct.Elf64_auxv_t* %43, %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !402
  %44 = load %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !404
  %45 = getelementptr inbounds %struct.Elf64_auxv_t* %44, i32 0, i32 0, !dbg !404
  %46 = load i64* %45, align 8, !dbg !404
  %47 = icmp ule i64 %46, 14, !dbg !404
  br i1 %47, label %48, label %57, !dbg !404

; <label>:48                                      ; preds = %41
  %49 = load %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !406
  %50 = getelementptr inbounds %struct.Elf64_auxv_t* %49, i32 0, i32 0, !dbg !406
  %51 = load i64* %50, align 8, !dbg !406
  %52 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 %51, !dbg !406
  %53 = bitcast %struct.Elf64_auxv_t* %52 to i8*, !dbg !406
  %54 = load %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !406
  %55 = bitcast %struct.Elf64_auxv_t* %54 to i8*, !dbg !406
  %56 = call i8* @memcpy(i8* %53, i8* %55, i64 16) #15, !dbg !406
  br label %57, !dbg !408

; <label>:57                                      ; preds = %48, %41
  %58 = load i64** %aux_dat, align 8, !dbg !409
  %59 = getelementptr inbounds i64* %58, i64 2, !dbg !409
  store i64* %59, i64** %aux_dat, align 8, !dbg !409
  br label %37, !dbg !410

; <label>:60                                      ; preds = %37
  call void @__uClibc_init() #14, !dbg !411
  %61 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 6, !dbg !412
  %62 = getelementptr inbounds %struct.Elf64_auxv_t* %61, i32 0, i32 1, !dbg !412
  %63 = bitcast %union.anon.645* %62 to i64*, !dbg !412
  %64 = load i64* %63, align 8, !dbg !412
  %65 = icmp ne i64 %64, 0, !dbg !412
  br i1 %65, label %66, label %71, !dbg !412

; <label>:66                                      ; preds = %60
  %67 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 6, !dbg !412
  %68 = getelementptr inbounds %struct.Elf64_auxv_t* %67, i32 0, i32 1, !dbg !412
  %69 = bitcast %union.anon.645* %68 to i64*, !dbg !412
  %70 = load i64* %69, align 8, !dbg !412
  br label %71, !dbg !412

; <label>:71                                      ; preds = %60, %66
  %72 = phi i64 [ %70, %66 ], [ 4096, %60 ], !dbg !412
  store i64 %72, i64* @__pagesize, align 8, !dbg !412
  %73 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 11, !dbg !413
  %74 = getelementptr inbounds %struct.Elf64_auxv_t* %73, i32 0, i32 1, !dbg !413
  %75 = bitcast %union.anon.645* %74 to i64*, !dbg !413
  %76 = load i64* %75, align 8, !dbg !413
  %77 = icmp eq i64 %76, -1, !dbg !413
  br i1 %77, label %78, label %81, !dbg !413

; <label>:78                                      ; preds = %71
  %79 = call i32 @__check_suid() #14, !dbg !413
  %80 = icmp ne i32 %79, 0, !dbg !413
  br i1 %80, label %107, label %81, !dbg !413

; <label>:81                                      ; preds = %78, %71
  %82 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 11, !dbg !413
  %83 = getelementptr inbounds %struct.Elf64_auxv_t* %82, i32 0, i32 1, !dbg !413
  %84 = bitcast %union.anon.645* %83 to i64*, !dbg !413
  %85 = load i64* %84, align 8, !dbg !413
  %86 = icmp ne i64 %85, -1, !dbg !413
  br i1 %86, label %87, label %108, !dbg !413

; <label>:87                                      ; preds = %81
  %88 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 11, !dbg !413
  %89 = getelementptr inbounds %struct.Elf64_auxv_t* %88, i32 0, i32 1, !dbg !413
  %90 = bitcast %union.anon.645* %89 to i64*, !dbg !413
  %91 = load i64* %90, align 8, !dbg !413
  %92 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 12, !dbg !413
  %93 = getelementptr inbounds %struct.Elf64_auxv_t* %92, i32 0, i32 1, !dbg !413
  %94 = bitcast %union.anon.645* %93 to i64*, !dbg !413
  %95 = load i64* %94, align 8, !dbg !413
  %96 = icmp ne i64 %91, %95, !dbg !413
  br i1 %96, label %107, label %97, !dbg !413

; <label>:97                                      ; preds = %87
  %98 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 13, !dbg !413
  %99 = getelementptr inbounds %struct.Elf64_auxv_t* %98, i32 0, i32 1, !dbg !413
  %100 = bitcast %union.anon.645* %99 to i64*, !dbg !413
  %101 = load i64* %100, align 8, !dbg !413
  %102 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 14, !dbg !413
  %103 = getelementptr inbounds %struct.Elf64_auxv_t* %102, i32 0, i32 1, !dbg !413
  %104 = bitcast %union.anon.645* %103 to i64*, !dbg !413
  %105 = load i64* %104, align 8, !dbg !413
  %106 = icmp ne i64 %101, %105, !dbg !413
  br i1 %106, label %107, label %108, !dbg !413

; <label>:107                                     ; preds = %97, %87, %78
  call void @__check_one_fd(i32 0, i32 131072) #14, !dbg !415
  call void @__check_one_fd(i32 1, i32 131074) #14, !dbg !417
  call void @__check_one_fd(i32 2, i32 131074) #14, !dbg !418
  br label %108, !dbg !419

; <label>:108                                     ; preds = %107, %97, %81
  %109 = load i8*** %3, align 8, !dbg !420
  %110 = load i8** %109, align 8, !dbg !420
  store i8* %110, i8** @__uclibc_progname, align 8, !dbg !420
  %111 = load void ()** %5, align 8, !dbg !421
  store void ()* %111, void ()** @__app_fini, align 8, !dbg !421
  %112 = load void ()** %4, align 8, !dbg !422
  %113 = icmp ne void ()* %112, null, !dbg !422
  br i1 %113, label %114, label %116, !dbg !422

; <label>:114                                     ; preds = %108
  %115 = load void ()** %4, align 8, !dbg !424
  call void %115() #14, !dbg !424
  br label %116, !dbg !426

; <label>:116                                     ; preds = %114, %108
  %117 = icmp ne i64 zext (i1 icmp ne (i32* ()* @__errno_location, i32* ()* null) to i64), 0, !dbg !427
  br i1 %117, label %118, label %120, !dbg !427

; <label>:118                                     ; preds = %116
  %119 = call i32* @__errno_location() #16, !dbg !429
  store i32 0, i32* %119, align 4, !dbg !429
  br label %120, !dbg !429

; <label>:120                                     ; preds = %118, %116
  %121 = icmp ne i64 1, 0, !dbg !430
  br i1 %121, label %122, label %124, !dbg !430

; <label>:122                                     ; preds = %120
  %123 = call i32* @__h_errno_location() #16, !dbg !432
  store i32 0, i32* %123, align 4, !dbg !432
  br label %124, !dbg !432

; <label>:124                                     ; preds = %122, %120
  %125 = load i32 (i32, i8**, i8**)** %1, align 8, !dbg !433
  %126 = load i32* %2, align 4, !dbg !433
  %127 = load i8*** %3, align 8, !dbg !433
  %128 = load i8*** @__environ, align 8, !dbg !433
  %129 = call i32 %125(i32 %126, i8** %127, i8** %128) #14, !dbg !433
  call void @exit(i32 %129) #17, !dbg !433
  unreachable, !dbg !433
}

; Function Attrs: nounwind readnone
declare extern_weak i32* @__errno_location() #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

declare i32 @fcntl(i32, i32, ...) #2

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat.644*) #7

; Function Attrs: noreturn nounwind
declare void @abort() #6

; Function Attrs: nounwind
declare i32 @getuid() #7

; Function Attrs: nounwind
declare i32 @geteuid() #7

; Function Attrs: nounwind
declare i32 @getgid() #7

; Function Attrs: nounwind
declare i32 @getegid() #7

; Function Attrs: nounwind uwtable
define internal i32 @__check_suid() #0 {
  %1 = alloca i32, align 4
  %uid = alloca i32, align 4
  %euid = alloca i32, align 4
  %gid = alloca i32, align 4
  %egid = alloca i32, align 4
  %2 = call i32 @getuid() #15, !dbg !434
  store i32 %2, i32* %uid, align 4, !dbg !434
  %3 = call i32 @geteuid() #15, !dbg !436
  store i32 %3, i32* %euid, align 4, !dbg !436
  %4 = call i32 @getgid() #15, !dbg !437
  store i32 %4, i32* %gid, align 4, !dbg !437
  %5 = call i32 @getegid() #15, !dbg !438
  store i32 %5, i32* %egid, align 4, !dbg !438
  %6 = load i32* %uid, align 4, !dbg !439
  %7 = load i32* %euid, align 4, !dbg !439
  %8 = icmp eq i32 %6, %7, !dbg !439
  br i1 %8, label %9, label %14, !dbg !439

; <label>:9                                       ; preds = %0
  %10 = load i32* %gid, align 4, !dbg !439
  %11 = load i32* %egid, align 4, !dbg !439
  %12 = icmp eq i32 %10, %11, !dbg !439
  br i1 %12, label %13, label %14, !dbg !439

; <label>:13                                      ; preds = %9
  store i32 0, i32* %1, !dbg !441
  br label %15, !dbg !441

; <label>:14                                      ; preds = %9, %0
  store i32 1, i32* %1, !dbg !443
  br label %15, !dbg !443

; <label>:15                                      ; preds = %14, %13
  %16 = load i32* %1, !dbg !444
  ret i32 %16, !dbg !444
}

; Function Attrs: nounwind uwtable
define internal void @__check_one_fd(i32 %fd, i32 %mode) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %st = alloca %struct.stat.644, align 8
  %nullfd = alloca i32, align 4
  store i32 %fd, i32* %1, align 4
  store i32 %mode, i32* %2, align 4
  %3 = load i32* %1, align 4, !dbg !445
  %4 = call i32 (i32, i32, ...)* @fcntl(i32 %3, i32 1) #14, !dbg !445
  %5 = icmp eq i32 %4, -1, !dbg !445
  br i1 %5, label %6, label %10, !dbg !445

; <label>:6                                       ; preds = %0
  %7 = call i32* @__errno_location() #16, !dbg !445
  %8 = load i32* %7, align 4, !dbg !445
  %9 = icmp eq i32 %8, 9, !dbg !445
  br label %10

; <label>:10                                      ; preds = %6, %0
  %11 = phi i1 [ false, %0 ], [ %9, %6 ]
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

; <label>:17                                      ; preds = %10
  %18 = load i32* %2, align 4, !dbg !447
  %19 = call i32 (i8*, i32, ...)* @open(i8* getelementptr inbounds ([10 x i8]* @.str14, i32 0, i32 0), i32 %18) #14, !dbg !447
  store i32 %19, i32* %nullfd, align 4, !dbg !447
  %20 = load i32* %nullfd, align 4, !dbg !449
  %21 = load i32* %1, align 4, !dbg !449
  %22 = icmp ne i32 %20, %21, !dbg !449
  br i1 %22, label %37, label %23, !dbg !449

; <label>:23                                      ; preds = %17
  %24 = load i32* %1, align 4, !dbg !449
  %25 = call i32 @fstat(i32 %24, %struct.stat.644* %st) #15, !dbg !449
  %26 = icmp ne i32 %25, 0, !dbg !449
  br i1 %26, label %37, label %27, !dbg !449

; <label>:27                                      ; preds = %23
  %28 = getelementptr inbounds %struct.stat.644* %st, i32 0, i32 3, !dbg !449
  %29 = load i32* %28, align 4, !dbg !449
  %30 = and i32 %29, 61440, !dbg !449
  %31 = icmp eq i32 %30, 8192, !dbg !449
  br i1 %31, label %32, label %37, !dbg !449

; <label>:32                                      ; preds = %27
  %33 = getelementptr inbounds %struct.stat.644* %st, i32 0, i32 7, !dbg !449
  %34 = load i64* %33, align 8, !dbg !449
  %35 = call i64 @gnu_dev_makedev(i32 1, i32 3) #15, !dbg !451
  %36 = icmp ne i64 %34, %35, !dbg !451
  br i1 %36, label %37, label %38, !dbg !451

; <label>:37                                      ; preds = %32, %27, %23, %17
  call void @abort() #17, !dbg !452
  unreachable, !dbg !452

; <label>:38                                      ; preds = %32, %10
  ret void, !dbg !454
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @gnu_dev_makedev(i32 %__major, i32 %__minor) #8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %__major, i32* %1, align 4
  store i32 %__minor, i32* %2, align 4
  %3 = load i32* %2, align 4, !dbg !455
  %4 = and i32 %3, 255, !dbg !455
  %5 = load i32* %1, align 4, !dbg !455
  %6 = and i32 %5, 4095, !dbg !455
  %int_cast_to_i64 = zext i32 8 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !455
  %7 = shl i32 %6, 8, !dbg !455
  %8 = or i32 %4, %7, !dbg !455
  %9 = zext i32 %8 to i64, !dbg !455
  %10 = load i32* %2, align 4, !dbg !455
  %11 = and i32 %10, -256, !dbg !455
  %12 = zext i32 %11 to i64, !dbg !455
  %int_cast_to_i641 = bitcast i64 12 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !455
  %13 = shl i64 %12, 12, !dbg !455
  %14 = or i64 %9, %13, !dbg !455
  %15 = load i32* %1, align 4, !dbg !455
  %16 = and i32 %15, -4096, !dbg !455
  %17 = zext i32 %16 to i64, !dbg !455
  %int_cast_to_i642 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i642), !dbg !455
  %18 = shl i64 %17, 32, !dbg !455
  %19 = or i64 %14, %18, !dbg !455
  ret i64 %19, !dbg !455
}

; Function Attrs: nounwind readnone uwtable
define weak i32* @__h_errno_location() #9 {
  ret i32* @h_errno, !dbg !457
}

; Function Attrs: nounwind uwtable
define hidden void @_stdio_term() #0 {
  %ptr = alloca %struct.__STDIO_FILE_STRUCT.273*, align 8
  %1 = load %struct.__STDIO_FILE_STRUCT.273** @_stdio_openlist, align 8, !dbg !458
  store %struct.__STDIO_FILE_STRUCT.273* %1, %struct.__STDIO_FILE_STRUCT.273** %ptr, align 8, !dbg !458
  br label %2, !dbg !458

; <label>:2                                       ; preds = %15, %0
  %3 = load %struct.__STDIO_FILE_STRUCT.273** %ptr, align 8, !dbg !458
  %4 = icmp ne %struct.__STDIO_FILE_STRUCT.273* %3, null, !dbg !458
  br i1 %4, label %5, label %19, !dbg !458

; <label>:5                                       ; preds = %2
  %6 = load %struct.__STDIO_FILE_STRUCT.273** %ptr, align 8, !dbg !460
  %7 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.273* %6, i32 0, i32 0, !dbg !460
  %8 = load i16* %7, align 2, !dbg !460
  %9 = zext i16 %8 to i32, !dbg !460
  %10 = and i32 %9, 64, !dbg !460
  %11 = icmp ne i32 %10, 0, !dbg !460
  br i1 %11, label %12, label %15, !dbg !460

; <label>:12                                      ; preds = %5
  %13 = load %struct.__STDIO_FILE_STRUCT.273** %ptr, align 8, !dbg !463
  %14 = call i64 @__stdio_wcommit(%struct.__STDIO_FILE_STRUCT.273* %13) #14, !dbg !463
  br label %15, !dbg !465

; <label>:15                                      ; preds = %5, %12
  %16 = load %struct.__STDIO_FILE_STRUCT.273** %ptr, align 8, !dbg !458
  %17 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.273* %16, i32 0, i32 9, !dbg !458
  %18 = load %struct.__STDIO_FILE_STRUCT.273** %17, align 8, !dbg !458
  store %struct.__STDIO_FILE_STRUCT.273* %18, %struct.__STDIO_FILE_STRUCT.273** %ptr, align 8, !dbg !458
  br label %2, !dbg !458

; <label>:19                                      ; preds = %2
  ret void, !dbg !466
}

; Function Attrs: nounwind uwtable
define hidden void @_stdio_init() #0 {
  %old_errno = alloca i32, align 4
  %1 = load i32* @errno, align 4, !dbg !467
  store i32 %1, i32* %old_errno, align 4, !dbg !467
  %2 = call i32 @isatty(i32 0) #15, !dbg !468
  %3 = sub nsw i32 1, %2, !dbg !468
  %4 = mul i32 %3, 256, !dbg !468
  %5 = load i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.273]* @_stdio_streams, i32 0, i64 0, i32 0), align 2, !dbg !468
  %6 = zext i16 %5 to i32, !dbg !468
  %7 = xor i32 %6, %4, !dbg !468
  %8 = trunc i32 %7 to i16, !dbg !468
  store i16 %8, i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.273]* @_stdio_streams, i32 0, i64 0, i32 0), align 2, !dbg !468
  %9 = call i32 @isatty(i32 1) #15, !dbg !469
  %10 = sub nsw i32 1, %9, !dbg !469
  %11 = mul i32 %10, 256, !dbg !469
  %12 = load i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.273]* @_stdio_streams, i32 0, i64 1, i32 0), align 2, !dbg !469
  %13 = zext i16 %12 to i32, !dbg !469
  %14 = xor i32 %13, %11, !dbg !469
  %15 = trunc i32 %14 to i16, !dbg !469
  store i16 %15, i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.273]* @_stdio_streams, i32 0, i64 1, i32 0), align 2, !dbg !469
  %16 = load i32* %old_errno, align 4, !dbg !470
  store i32 %16, i32* @errno, align 4, !dbg !470
  ret void, !dbg !471
}

; Function Attrs: nounwind uwtable
define hidden i64 @__stdio_wcommit(%struct.__STDIO_FILE_STRUCT.273* noalias %stream) #0 {
  %1 = alloca %struct.__STDIO_FILE_STRUCT.273*, align 8
  %bufsize = alloca i64, align 8
  store %struct.__STDIO_FILE_STRUCT.273* %stream, %struct.__STDIO_FILE_STRUCT.273** %1, align 8
  %2 = load %struct.__STDIO_FILE_STRUCT.273** %1, align 8, !dbg !472
  %3 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.273* %2, i32 0, i32 5, !dbg !472
  %4 = load i8** %3, align 8, !dbg !472
  %5 = load %struct.__STDIO_FILE_STRUCT.273** %1, align 8, !dbg !472
  %6 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.273* %5, i32 0, i32 3, !dbg !472
  %7 = load i8** %6, align 8, !dbg !472
  %8 = ptrtoint i8* %4 to i64, !dbg !472
  %9 = ptrtoint i8* %7 to i64, !dbg !472
  %10 = sub i64 %8, %9, !dbg !472
  store i64 %10, i64* %bufsize, align 8, !dbg !472
  %11 = icmp ne i64 %10, 0, !dbg !472
  br i1 %11, label %12, label %24, !dbg !472

; <label>:12                                      ; preds = %0
  %13 = load %struct.__STDIO_FILE_STRUCT.273** %1, align 8, !dbg !474
  %14 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.273* %13, i32 0, i32 3, !dbg !474
  %15 = load i8** %14, align 8, !dbg !474
  %16 = load %struct.__STDIO_FILE_STRUCT.273** %1, align 8, !dbg !474
  %17 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.273* %16, i32 0, i32 5, !dbg !474
  store i8* %15, i8** %17, align 8, !dbg !474
  %18 = load %struct.__STDIO_FILE_STRUCT.273** %1, align 8, !dbg !476
  %19 = load %struct.__STDIO_FILE_STRUCT.273** %1, align 8, !dbg !476
  %20 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.273* %19, i32 0, i32 3, !dbg !476
  %21 = load i8** %20, align 8, !dbg !476
  %22 = load i64* %bufsize, align 8, !dbg !476
  %23 = call i64 @__stdio_WRITE(%struct.__STDIO_FILE_STRUCT.273* %18, i8* %21, i64 %22) #14, !dbg !476
  br label %24, !dbg !477

; <label>:24                                      ; preds = %12, %0
  %25 = load %struct.__STDIO_FILE_STRUCT.273** %1, align 8, !dbg !478
  %26 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.273* %25, i32 0, i32 5, !dbg !478
  %27 = load i8** %26, align 8, !dbg !478
  %28 = load %struct.__STDIO_FILE_STRUCT.273** %1, align 8, !dbg !478
  %29 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.273* %28, i32 0, i32 3, !dbg !478
  %30 = load i8** %29, align 8, !dbg !478
  %31 = ptrtoint i8* %27 to i64, !dbg !478
  %32 = ptrtoint i8* %30 to i64, !dbg !478
  %33 = sub i64 %31, %32, !dbg !478
  ret i64 %33, !dbg !478
}

; Function Attrs: nounwind uwtable
define i8* @memcpy(i8* noalias %s1, i8* noalias %s2, i64 %n) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %r1 = alloca i8*, align 8
  %r2 = alloca i8*, align 8
  store i8* %s1, i8** %1, align 8
  store i8* %s2, i8** %2, align 8
  store i64 %n, i64* %3, align 8
  %4 = load i8** %1, align 8, !dbg !479
  store i8* %4, i8** %r1, align 8, !dbg !479
  %5 = load i8** %2, align 8, !dbg !480
  store i8* %5, i8** %r2, align 8, !dbg !480
  br label %6, !dbg !481

; <label>:6                                       ; preds = %9, %0
  %7 = load i64* %3, align 8, !dbg !481
  %8 = icmp ne i64 %7, 0, !dbg !481
  br i1 %8, label %9, label %17, !dbg !481

; <label>:9                                       ; preds = %6
  %10 = load i8** %r2, align 8, !dbg !482
  %11 = getelementptr inbounds i8* %10, i32 1, !dbg !482
  store i8* %11, i8** %r2, align 8, !dbg !482
  %12 = load i8* %10, align 1, !dbg !482
  %13 = load i8** %r1, align 8, !dbg !482
  %14 = getelementptr inbounds i8* %13, i32 1, !dbg !482
  store i8* %14, i8** %r1, align 8, !dbg !482
  store i8 %12, i8* %13, align 1, !dbg !482
  %15 = load i64* %3, align 8, !dbg !484
  %16 = add i64 %15, -1, !dbg !484
  store i64 %16, i64* %3, align 8, !dbg !484
  br label %6, !dbg !485

; <label>:17                                      ; preds = %6
  %18 = load i8** %1, align 8, !dbg !486
  ret i8* %18, !dbg !486
}

; Function Attrs: nounwind uwtable
define i8* @memset(i8* %s, i32 %c, i64 %n) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %p = alloca i8*, align 8
  store i8* %s, i8** %1, align 8
  store i32 %c, i32* %2, align 4
  store i64 %n, i64* %3, align 8
  %4 = load i8** %1, align 8, !dbg !487
  store i8* %4, i8** %p, align 8, !dbg !487
  br label %5, !dbg !488

; <label>:5                                       ; preds = %8, %0
  %6 = load i64* %3, align 8, !dbg !488
  %7 = icmp ne i64 %6, 0, !dbg !488
  br i1 %7, label %8, label %15, !dbg !488

; <label>:8                                       ; preds = %5
  %9 = load i32* %2, align 4, !dbg !489
  %10 = trunc i32 %9 to i8, !dbg !489
  %11 = load i8** %p, align 8, !dbg !489
  %12 = getelementptr inbounds i8* %11, i32 1, !dbg !489
  store i8* %12, i8** %p, align 8, !dbg !489
  store i8 %10, i8* %11, align 1, !dbg !489
  %13 = load i64* %3, align 8, !dbg !491
  %14 = add i64 %13, -1, !dbg !491
  store i64 %14, i64* %3, align 8, !dbg !491
  br label %5, !dbg !492

; <label>:15                                      ; preds = %5
  %16 = load i8** %1, align 8, !dbg !493
  ret i8* %16, !dbg !493
}

; Function Attrs: nounwind uwtable
define i32 @isatty(i32 %fd) #0 {
  %1 = alloca i32, align 4
  %term = alloca %struct.termios.442, align 4
  store i32 %fd, i32* %1, align 4
  %2 = load i32* %1, align 4, !dbg !494
  %3 = call i32 @tcgetattr(i32 %2, %struct.termios.442* %term) #15, !dbg !494
  %4 = icmp eq i32 %3, 0, !dbg !494
  %5 = zext i1 %4 to i32, !dbg !494
  ret i32 %5, !dbg !494
}

; Function Attrs: nounwind uwtable
define i32 @tcgetattr(i32 %fd, %struct.termios.442* %termios_p) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.termios.442*, align 8
  %k_termios = alloca %struct.__kernel_termios, align 4
  %retval = alloca i32, align 4
  store i32 %fd, i32* %1, align 4
  store %struct.termios.442* %termios_p, %struct.termios.442** %2, align 8
  %3 = load i32* %1, align 4, !dbg !495
  %4 = call i32 (i32, i64, ...)* @ioctl(i32 %3, i64 21505, %struct.__kernel_termios* %k_termios) #15, !dbg !495
  store i32 %4, i32* %retval, align 4, !dbg !495
  %5 = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 0, !dbg !496
  %6 = load i32* %5, align 4, !dbg !496
  %7 = load %struct.termios.442** %2, align 8, !dbg !496
  %8 = getelementptr inbounds %struct.termios.442* %7, i32 0, i32 0, !dbg !496
  store i32 %6, i32* %8, align 4, !dbg !496
  %9 = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 1, !dbg !497
  %10 = load i32* %9, align 4, !dbg !497
  %11 = load %struct.termios.442** %2, align 8, !dbg !497
  %12 = getelementptr inbounds %struct.termios.442* %11, i32 0, i32 1, !dbg !497
  store i32 %10, i32* %12, align 4, !dbg !497
  %13 = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 2, !dbg !498
  %14 = load i32* %13, align 4, !dbg !498
  %15 = load %struct.termios.442** %2, align 8, !dbg !498
  %16 = getelementptr inbounds %struct.termios.442* %15, i32 0, i32 2, !dbg !498
  store i32 %14, i32* %16, align 4, !dbg !498
  %17 = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 3, !dbg !499
  %18 = load i32* %17, align 4, !dbg !499
  %19 = load %struct.termios.442** %2, align 8, !dbg !499
  %20 = getelementptr inbounds %struct.termios.442* %19, i32 0, i32 3, !dbg !499
  store i32 %18, i32* %20, align 4, !dbg !499
  %21 = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 4, !dbg !500
  %22 = load i8* %21, align 1, !dbg !500
  %23 = load %struct.termios.442** %2, align 8, !dbg !500
  %24 = getelementptr inbounds %struct.termios.442* %23, i32 0, i32 4, !dbg !500
  store i8 %22, i8* %24, align 1, !dbg !500
  %25 = load %struct.termios.442** %2, align 8, !dbg !501
  %26 = getelementptr inbounds %struct.termios.442* %25, i32 0, i32 5, !dbg !501
  %27 = getelementptr inbounds [32 x i8]* %26, i32 0, i64 0, !dbg !501
  %28 = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 5, !dbg !501
  %29 = getelementptr inbounds [19 x i8]* %28, i32 0, i64 0, !dbg !501
  %30 = call i8* @mempcpy(i8* %27, i8* %29, i64 19) #15, !dbg !501
  %31 = call i8* @memset(i8* %30, i32 0, i64 13) #15, !dbg !501
  %32 = load i32* %retval, align 4, !dbg !504
  ret i32 %32, !dbg !504
}

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #7

; Function Attrs: nounwind uwtable
define hidden i64 @__stdio_WRITE(%struct.__STDIO_FILE_STRUCT.273* %stream, i8* %buf, i64 %bufsize) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.__STDIO_FILE_STRUCT.273*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %todo = alloca i64, align 8
  %rv = alloca i64, align 8
  %stodo = alloca i64, align 8
  %s = alloca i8*, align 8
  store %struct.__STDIO_FILE_STRUCT.273* %stream, %struct.__STDIO_FILE_STRUCT.273** %2, align 8
  store i8* %buf, i8** %3, align 8
  store i64 %bufsize, i64* %4, align 8
  %5 = load i64* %4, align 8, !dbg !505
  store i64 %5, i64* %todo, align 8, !dbg !505
  br label %6, !dbg !506

; <label>:6                                       ; preds = %23, %0
  %7 = load i64* %todo, align 8, !dbg !507
  %8 = icmp eq i64 %7, 0, !dbg !507
  br i1 %8, label %9, label %11, !dbg !507

; <label>:9                                       ; preds = %6
  %10 = load i64* %4, align 8, !dbg !510
  store i64 %10, i64* %1, !dbg !510
  br label %95, !dbg !510

; <label>:11                                      ; preds = %6
  %12 = load i64* %todo, align 8, !dbg !512
  %13 = icmp ule i64 %12, 9223372036854775807, !dbg !512
  %14 = load i64* %todo, align 8, !dbg !512
  %15 = select i1 %13, i64 %14, i64 9223372036854775807, !dbg !512
  store i64 %15, i64* %stodo, align 8, !dbg !512
  %16 = load %struct.__STDIO_FILE_STRUCT.273** %2, align 8, !dbg !513
  %17 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.273* %16, i32 0, i32 2, !dbg !513
  %18 = load i32* %17, align 4, !dbg !513
  %19 = load i8** %3, align 8, !dbg !513
  %20 = load i64* %stodo, align 8, !dbg !513
  %21 = call i64 @write(i32 %18, i8* %19, i64 %20) #14, !dbg !513
  store i64 %21, i64* %rv, align 8, !dbg !513
  %22 = icmp sge i64 %21, 0, !dbg !513
  br i1 %22, label %23, label %30, !dbg !513

; <label>:23                                      ; preds = %11
  %24 = load i64* %rv, align 8, !dbg !515
  %25 = load i64* %todo, align 8, !dbg !515
  %26 = sub i64 %25, %24, !dbg !515
  store i64 %26, i64* %todo, align 8, !dbg !515
  %27 = load i64* %rv, align 8, !dbg !517
  %28 = load i8** %3, align 8, !dbg !517
  %29 = getelementptr inbounds i8* %28, i64 %27, !dbg !517
  store i8* %29, i8** %3, align 8, !dbg !517
  br label %6, !dbg !518

; <label>:30                                      ; preds = %11
  %31 = load %struct.__STDIO_FILE_STRUCT.273** %2, align 8, !dbg !519
  %32 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.273* %31, i32 0, i32 0, !dbg !519
  %33 = load i16* %32, align 2, !dbg !519
  %34 = zext i16 %33 to i32, !dbg !519
  %35 = or i32 %34, 8, !dbg !519
  %36 = trunc i32 %35 to i16, !dbg !519
  store i16 %36, i16* %32, align 2, !dbg !519
  %37 = load %struct.__STDIO_FILE_STRUCT.273** %2, align 8, !dbg !521
  %38 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.273* %37, i32 0, i32 4, !dbg !521
  %39 = load i8** %38, align 8, !dbg !521
  %40 = load %struct.__STDIO_FILE_STRUCT.273** %2, align 8, !dbg !521
  %41 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.273* %40, i32 0, i32 3, !dbg !521
  %42 = load i8** %41, align 8, !dbg !521
  %43 = ptrtoint i8* %39 to i64, !dbg !521
  %44 = ptrtoint i8* %42 to i64, !dbg !521
  %45 = sub i64 %43, %44, !dbg !521
  store i64 %45, i64* %stodo, align 8, !dbg !521
  %46 = icmp ne i64 %45, 0, !dbg !521
  br i1 %46, label %47, label %91, !dbg !521

; <label>:47                                      ; preds = %30
  %48 = load i64* %stodo, align 8, !dbg !523
  %49 = load i64* %todo, align 8, !dbg !523
  %50 = icmp ugt i64 %48, %49, !dbg !523
  br i1 %50, label %51, label %53, !dbg !523

; <label>:51                                      ; preds = %47
  %52 = load i64* %todo, align 8, !dbg !526
  store i64 %52, i64* %stodo, align 8, !dbg !526
  br label %53, !dbg !528

; <label>:53                                      ; preds = %51, %47
  %54 = load %struct.__STDIO_FILE_STRUCT.273** %2, align 8, !dbg !529
  %55 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.273* %54, i32 0, i32 3, !dbg !529
  %56 = load i8** %55, align 8, !dbg !529
  store i8* %56, i8** %s, align 8, !dbg !529
  br label %57, !dbg !530

; <label>:57                                      ; preds = %70, %53
  %58 = load i8** %3, align 8, !dbg !531
  %59 = load i8* %58, align 1, !dbg !531
  %60 = load i8** %s, align 8, !dbg !531
  store i8 %59, i8* %60, align 1, !dbg !531
  %61 = zext i8 %59 to i32, !dbg !531
  %62 = icmp eq i32 %61, 10, !dbg !531
  br i1 %62, label %63, label %70, !dbg !531

; <label>:63                                      ; preds = %57
  %64 = load %struct.__STDIO_FILE_STRUCT.273** %2, align 8, !dbg !531
  %65 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.273* %64, i32 0, i32 0, !dbg !531
  %66 = load i16* %65, align 2, !dbg !531
  %67 = zext i16 %66 to i32, !dbg !531
  %68 = and i32 %67, 256, !dbg !531
  %69 = icmp ne i32 %68, 0, !dbg !531
  br i1 %69, label %78, label %70, !dbg !531

; <label>:70                                      ; preds = %63, %57
  %71 = load i8** %s, align 8, !dbg !534
  %72 = getelementptr inbounds i8* %71, i32 1, !dbg !534
  store i8* %72, i8** %s, align 8, !dbg !534
  %73 = load i8** %3, align 8, !dbg !535
  %74 = getelementptr inbounds i8* %73, i32 1, !dbg !535
  store i8* %74, i8** %3, align 8, !dbg !535
  %75 = load i64* %stodo, align 8, !dbg !536
  %76 = add nsw i64 %75, -1, !dbg !536
  store i64 %76, i64* %stodo, align 8, !dbg !536
  %77 = icmp ne i64 %76, 0, !dbg !536
  br i1 %77, label %57, label %78, !dbg !536

; <label>:78                                      ; preds = %63, %70
  %79 = load i8** %s, align 8, !dbg !537
  %80 = load %struct.__STDIO_FILE_STRUCT.273** %2, align 8, !dbg !537
  %81 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.273* %80, i32 0, i32 5, !dbg !537
  store i8* %79, i8** %81, align 8, !dbg !537
  %82 = load i8** %s, align 8, !dbg !538
  %83 = load %struct.__STDIO_FILE_STRUCT.273** %2, align 8, !dbg !538
  %84 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.273* %83, i32 0, i32 3, !dbg !538
  %85 = load i8** %84, align 8, !dbg !538
  %86 = ptrtoint i8* %82 to i64, !dbg !538
  %87 = ptrtoint i8* %85 to i64, !dbg !538
  %88 = sub i64 %86, %87, !dbg !538
  %89 = load i64* %todo, align 8, !dbg !538
  %90 = sub i64 %89, %88, !dbg !538
  store i64 %90, i64* %todo, align 8, !dbg !538
  br label %91, !dbg !539

; <label>:91                                      ; preds = %78, %30
  %92 = load i64* %4, align 8, !dbg !540
  %93 = load i64* %todo, align 8, !dbg !540
  %94 = sub i64 %92, %93, !dbg !540
  store i64 %94, i64* %1, !dbg !540
  br label %95, !dbg !540

; <label>:95                                      ; preds = %91, %9
  %96 = load i64* %1, !dbg !541
  ret i64 %96, !dbg !541
}

declare i64 @write(i32, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i8* @mempcpy(i8* noalias %s1, i8* noalias %s2, i64 %n) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %r1 = alloca i8*, align 8
  %r2 = alloca i8*, align 8
  store i8* %s1, i8** %1, align 8
  store i8* %s2, i8** %2, align 8
  store i64 %n, i64* %3, align 8
  %4 = load i8** %1, align 8, !dbg !542
  store i8* %4, i8** %r1, align 8, !dbg !542
  %5 = load i8** %2, align 8, !dbg !543
  store i8* %5, i8** %r2, align 8, !dbg !543
  br label %6, !dbg !544

; <label>:6                                       ; preds = %9, %0
  %7 = load i64* %3, align 8, !dbg !544
  %8 = icmp ne i64 %7, 0, !dbg !544
  br i1 %8, label %9, label %17, !dbg !544

; <label>:9                                       ; preds = %6
  %10 = load i8** %r2, align 8, !dbg !545
  %11 = getelementptr inbounds i8* %10, i32 1, !dbg !545
  store i8* %11, i8** %r2, align 8, !dbg !545
  %12 = load i8* %10, align 1, !dbg !545
  %13 = load i8** %r1, align 8, !dbg !545
  %14 = getelementptr inbounds i8* %13, i32 1, !dbg !545
  store i8* %14, i8** %r1, align 8, !dbg !545
  store i8 %12, i8* %13, align 1, !dbg !545
  %15 = load i64* %3, align 8, !dbg !547
  %16 = add i64 %15, -1, !dbg !547
  store i64 %16, i64* %3, align 8, !dbg !547
  br label %6, !dbg !548

; <label>:17                                      ; preds = %6
  %18 = load i8** %r1, align 8, !dbg !549
  ret i8* %18, !dbg !549
}

define i32 @main(i32, i8**) {
entry:
  call void @__uClibc_main(i32 (i32, i8**, i8**)* bitcast (i32 (i32, i8**)* @__user_main to i32 (i32, i8**, i8**)*), i32 %0, i8** %1, void ()* null, void ()* null, void ()* null, i8* null)
  unreachable
}

; Function Attrs: nounwind uwtable
define i64 @klee_choose(i64 %n) #10 {
  %x = alloca i64, align 8
  %1 = bitcast i64* %x to i8*, !dbg !550
  call void @klee_make_symbolic(i8* %1, i64 8, i8* getelementptr inbounds ([12 x i8]* @.str29, i64 0, i64 0)) #15, !dbg !550
  %2 = load i64* %x, align 8, !dbg !551, !tbaa !553
  %3 = icmp ult i64 %2, %n, !dbg !551
  br i1 %3, label %5, label %4, !dbg !551

; <label>:4                                       ; preds = %0
  call void @klee_silent_exit(i32 0) #17, !dbg !557
  unreachable, !dbg !557

; <label>:5                                       ; preds = %0
  ret i64 %2, !dbg !558
}

; Function Attrs: noreturn
declare void @klee_silent_exit(i32) #11

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #10 {
  %1 = icmp eq i64 %z, 0, !dbg !559
  br i1 %1, label %2, label %3, !dbg !559

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([60 x i8]* @.str130, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0)) #17, !dbg !561
  unreachable, !dbg !561

; <label>:3                                       ; preds = %0
  ret void, !dbg !562
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #11

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #10 {
  %x = alloca i32, align 4
  %1 = bitcast i32* %x to i8*, !dbg !563
  call void @klee_make_symbolic(i8* %1, i64 4, i8* %name) #15, !dbg !563
  %2 = load i32* %x, align 4, !dbg !564, !tbaa !565
  ret i32 %2, !dbg !564
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #10 {
  %1 = icmp ult i64 %shift, %bitWidth, !dbg !567
  br i1 %1, label %3, label %2, !dbg !567

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str331, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str1432, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #17, !dbg !569
  unreachable, !dbg !569

; <label>:3                                       ; preds = %0
  ret void, !dbg !571
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #10 {
  %x = alloca i32, align 4
  %1 = icmp slt i32 %start, %end, !dbg !572
  br i1 %1, label %3, label %2, !dbg !572

; <label>:2                                       ; preds = %0
  call void @klee_report_error(i8* getelementptr inbounds ([51 x i8]* @.str6, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #17, !dbg !574
  unreachable, !dbg !574

; <label>:3                                       ; preds = %0
  %4 = add nsw i32 %start, 1, !dbg !575
  %5 = icmp eq i32 %4, %end, !dbg !575
  br i1 %5, label %21, label %6, !dbg !575

; <label>:6                                       ; preds = %3
  %7 = bitcast i32* %x to i8*, !dbg !577
  call void @klee_make_symbolic(i8* %7, i64 4, i8* %name) #15, !dbg !577
  %8 = icmp eq i32 %start, 0, !dbg !579
  %9 = load i32* %x, align 4, !dbg !581, !tbaa !565
  br i1 %8, label %10, label %13, !dbg !579

; <label>:10                                      ; preds = %6
  %11 = icmp ult i32 %9, %end, !dbg !581
  %12 = zext i1 %11 to i64, !dbg !581
  call void @klee_assume(i64 %12) #15, !dbg !581
  br label %19, !dbg !583

; <label>:13                                      ; preds = %6
  %14 = icmp sge i32 %9, %start, !dbg !584
  %15 = zext i1 %14 to i64, !dbg !584
  call void @klee_assume(i64 %15) #15, !dbg !584
  %16 = load i32* %x, align 4, !dbg !586, !tbaa !565
  %17 = icmp slt i32 %16, %end, !dbg !586
  %18 = zext i1 %17 to i64, !dbg !586
  call void @klee_assume(i64 %18) #15, !dbg !586
  br label %19

; <label>:19                                      ; preds = %13, %10
  %20 = load i32* %x, align 4, !dbg !587, !tbaa !565
  br label %21, !dbg !587

; <label>:21                                      ; preds = %19, %3
  %.0 = phi i32 [ %20, %19 ], [ %start, %3 ]
  ret i32 %.0, !dbg !588
}

declare void @klee_assume(i64) #12

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #10 {
  %1 = icmp eq i8* %src, %dst, !dbg !589
  br i1 %1, label %.loopexit, label %2, !dbg !589

; <label>:2                                       ; preds = %0
  %3 = icmp ugt i8* %src, %dst, !dbg !591
  br i1 %3, label %.preheader, label %18, !dbg !591

.preheader:                                       ; preds = %2
  %4 = icmp eq i64 %count, 0, !dbg !593
  br i1 %4, label %.loopexit, label %.lr.ph.preheader, !dbg !593

.lr.ph.preheader:                                 ; preds = %.preheader
  %n.vec = and i64 %count, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  %5 = add i64 %count, -1
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep11 = getelementptr i8* %src, i64 %5
  %scevgep = getelementptr i8* %dst, i64 %5
  %bound1 = icmp uge i8* %scevgep, %src
  %bound0 = icmp uge i8* %scevgep11, %dst
  %memcheck.conflict = and i1 %bound0, %bound1
  %ptr.ind.end = getelementptr i8* %src, i64 %n.vec
  %ptr.ind.end13 = getelementptr i8* %dst, i64 %n.vec
  %rev.ind.end = sub i64 %count, %n.vec
  br i1 %memcheck.conflict, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.memcheck
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ]
  %next.gep = getelementptr i8* %src, i64 %index
  %next.gep110 = getelementptr i8* %dst, i64 %index
  %6 = bitcast i8* %next.gep to <16 x i8>*, !dbg !593
  %wide.load = load <16 x i8>* %6, align 1, !dbg !593
  %next.gep.sum586 = or i64 %index, 16, !dbg !593
  %7 = getelementptr i8* %src, i64 %next.gep.sum586, !dbg !593
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !593
  %wide.load207 = load <16 x i8>* %8, align 1, !dbg !593
  %9 = bitcast i8* %next.gep110 to <16 x i8>*, !dbg !593
  store <16 x i8> %wide.load, <16 x i8>* %9, align 1, !dbg !593
  %next.gep110.sum603 = or i64 %index, 16, !dbg !593
  %10 = getelementptr i8* %dst, i64 %next.gep110.sum603, !dbg !593
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !593
  store <16 x i8> %wide.load207, <16 x i8>* %11, align 1, !dbg !593
  %index.next = add i64 %index, 32
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !595

middle.block:                                     ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %resume.val = phi i8* [ %src, %.lr.ph.preheader ], [ %src, %vector.memcheck ], [ %ptr.ind.end, %vector.body ]
  %resume.val12 = phi i8* [ %dst, %.lr.ph.preheader ], [ %dst, %vector.memcheck ], [ %ptr.ind.end13, %vector.body ]
  %resume.val14 = phi i64 [ %count, %.lr.ph.preheader ], [ %count, %vector.memcheck ], [ %rev.ind.end, %vector.body ]
  %new.indc.resume.val = phi i64 [ 0, %.lr.ph.preheader ], [ 0, %vector.memcheck ], [ %n.vec, %vector.body ]
  %cmp.n = icmp eq i64 %new.indc.resume.val, %count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %middle.block
  %b.04 = phi i8* [ %14, %.lr.ph ], [ %resume.val, %middle.block ]
  %a.03 = phi i8* [ %16, %.lr.ph ], [ %resume.val12, %middle.block ]
  %.02 = phi i64 [ %13, %.lr.ph ], [ %resume.val14, %middle.block ]
  %13 = add i64 %.02, -1, !dbg !593
  %14 = getelementptr inbounds i8* %b.04, i64 1, !dbg !593
  %15 = load i8* %b.04, align 1, !dbg !593, !tbaa !598
  %16 = getelementptr inbounds i8* %a.03, i64 1, !dbg !593
  store i8 %15, i8* %a.03, align 1, !dbg !593, !tbaa !598
  %17 = icmp eq i64 %13, 0, !dbg !593
  br i1 %17, label %.loopexit, label %.lr.ph, !dbg !593, !llvm.loop !599

; <label>:18                                      ; preds = %2
  %19 = add i64 %count, -1, !dbg !600
  %20 = icmp eq i64 %count, 0, !dbg !602
  br i1 %20, label %.loopexit, label %.lr.ph9, !dbg !602

.lr.ph9:                                          ; preds = %18
  %21 = getelementptr inbounds i8* %src, i64 %19, !dbg !603
  %22 = getelementptr inbounds i8* %dst, i64 %19, !dbg !600
  %n.vec215 = and i64 %count, -32
  %cmp.zero217 = icmp eq i64 %n.vec215, 0
  %23 = add i64 %count, -1
  br i1 %cmp.zero217, label %middle.block210, label %vector.memcheck224

vector.memcheck224:                               ; preds = %.lr.ph9
  %scevgep219 = getelementptr i8* %src, i64 %23
  %scevgep218 = getelementptr i8* %dst, i64 %23
  %bound1221 = icmp ule i8* %scevgep219, %dst
  %bound0220 = icmp ule i8* %scevgep218, %src
  %memcheck.conflict223 = and i1 %bound0220, %bound1221
  %.sum = sub i64 %19, %n.vec215
  %rev.ptr.ind.end = getelementptr i8* %src, i64 %.sum
  %.sum439 = sub i64 %19, %n.vec215
  %rev.ptr.ind.end229 = getelementptr i8* %dst, i64 %.sum439
  %rev.ind.end231 = sub i64 %count, %n.vec215
  br i1 %memcheck.conflict223, label %middle.block210, label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.memcheck224
  %index212 = phi i64 [ %index.next234, %vector.body209 ], [ 0, %vector.memcheck224 ]
  %.sum440 = sub i64 %19, %index212
  %.sum472 = sub i64 %19, %index212
  %next.gep236.sum = add i64 %.sum440, -15, !dbg !602
  %24 = getelementptr i8* %src, i64 %next.gep236.sum, !dbg !602
  %25 = bitcast i8* %24 to <16 x i8>*, !dbg !602
  %wide.load434 = load <16 x i8>* %25, align 1, !dbg !602
  %reverse = shufflevector <16 x i8> %wide.load434, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !602
  %.sum505 = add i64 %.sum440, -31, !dbg !602
  %26 = getelementptr i8* %src, i64 %.sum505, !dbg !602
  %27 = bitcast i8* %26 to <16 x i8>*, !dbg !602
  %wide.load435 = load <16 x i8>* %27, align 1, !dbg !602
  %reverse436 = shufflevector <16 x i8> %wide.load435, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !602
  %reverse437 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !602
  %next.gep333.sum = add i64 %.sum472, -15, !dbg !602
  %28 = getelementptr i8* %dst, i64 %next.gep333.sum, !dbg !602
  %29 = bitcast i8* %28 to <16 x i8>*, !dbg !602
  store <16 x i8> %reverse437, <16 x i8>* %29, align 1, !dbg !602
  %reverse438 = shufflevector <16 x i8> %reverse436, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !602
  %.sum507 = add i64 %.sum472, -31, !dbg !602
  %30 = getelementptr i8* %dst, i64 %.sum507, !dbg !602
  %31 = bitcast i8* %30 to <16 x i8>*, !dbg !602
  store <16 x i8> %reverse438, <16 x i8>* %31, align 1, !dbg !602
  %index.next234 = add i64 %index212, 32
  %32 = icmp eq i64 %index.next234, %n.vec215
  br i1 %32, label %middle.block210, label %vector.body209, !llvm.loop !604

middle.block210:                                  ; preds = %vector.body209, %vector.memcheck224, %.lr.ph9
  %resume.val225 = phi i8* [ %21, %.lr.ph9 ], [ %21, %vector.memcheck224 ], [ %rev.ptr.ind.end, %vector.body209 ]
  %resume.val227 = phi i8* [ %22, %.lr.ph9 ], [ %22, %vector.memcheck224 ], [ %rev.ptr.ind.end229, %vector.body209 ]
  %resume.val230 = phi i64 [ %count, %.lr.ph9 ], [ %count, %vector.memcheck224 ], [ %rev.ind.end231, %vector.body209 ]
  %new.indc.resume.val232 = phi i64 [ 0, %.lr.ph9 ], [ 0, %vector.memcheck224 ], [ %n.vec215, %vector.body209 ]
  %cmp.n233 = icmp eq i64 %new.indc.resume.val232, %count
  br i1 %cmp.n233, label %.loopexit, label %scalar.ph211

scalar.ph211:                                     ; preds = %scalar.ph211, %middle.block210
  %b.18 = phi i8* [ %34, %scalar.ph211 ], [ %resume.val225, %middle.block210 ]
  %a.17 = phi i8* [ %36, %scalar.ph211 ], [ %resume.val227, %middle.block210 ]
  %.16 = phi i64 [ %33, %scalar.ph211 ], [ %resume.val230, %middle.block210 ]
  %33 = add i64 %.16, -1, !dbg !602
  %34 = getelementptr inbounds i8* %b.18, i64 -1, !dbg !602
  %35 = load i8* %b.18, align 1, !dbg !602, !tbaa !598
  %36 = getelementptr inbounds i8* %a.17, i64 -1, !dbg !602
  store i8 %35, i8* %a.17, align 1, !dbg !602, !tbaa !598
  %37 = icmp eq i64 %33, 0, !dbg !602
  br i1 %37, label %.loopexit, label %scalar.ph211, !dbg !602, !llvm.loop !605

.loopexit:                                        ; preds = %scalar.ph211, %middle.block210, %18, %.lr.ph, %middle.block, %.preheader, %0
  ret i8* %dst, !dbg !606
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { nobuiltin }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nobuiltin nounwind readnone }
attributes #17 = { nobuiltin noreturn nounwind }

!llvm.dbg.cu = !{!0, !15, !24, !63, !71, !120, !151, !163, !171, !178, !203, !209, !241, !249, !260, !270, !280, !290, !302, !316, !330, !344}
!llvm.module.flags = !{!359, !360}
!llvm.ident = !{!361, !361, !361, !361, !361, !361, !361, !361, !361, !361, !361, !361, !361, !361, !361, !361, !361, !361, !361, !361, !361, !361}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/klee/Fuzzler/tests/test3/test3.c] [DW_LANG_C99]
!1 = metadata !{metadata !"test3.c", metadata !"/home/klee/Fuzzler/tests/test3"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"checker", metadata !"checker", metadata !"", i32 7, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*)* @checker, null, null, metadata !2, i32 7} ; [ DW_TAG_subprogram ] [line 7] [def] [checker]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/klee/Fuzzler/tests/test3/test3.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 15, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @__user_main, null, null, metadata !2, i32 15} ; [ DW_TAG_subprogram ] [line 15] [def] [main]
!12 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !8, metadata !8, metadata !14}
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!15 = metadata !{i32 786449, metadata !16, i32 12, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !17, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/klee/klee_build/klee-uclibc/libc/string/strcmp.c] [DW_LANG_C99]
!16 = metadata !{metadata !"libc/string/strcmp.c", metadata !"/home/klee/klee_build/klee-uclibc"}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786478, metadata !16, metadata !19, metadata !"strcmp", metadata !"strcmp", metadata !"", i32 20, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8*)* @strcmp, null, null, metadata !2, i32 21} ; [ DW_TAG_subprogram ] [line 20] [def] [scope 21] [strcmp]
!19 = metadata !{i32 786473, metadata !16}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee-uclibc/libc/string/strcmp.c]
!20 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!21 = metadata !{metadata !8, metadata !22, metadata !22}
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!23 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!24 = metadata !{i32 786449, metadata !25, i32 12, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !26, metadata !53, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c] [DW_LANG_C99]
!25 = metadata !{metadata !"libc/misc/internals/__uClibc_main.c", metadata !"/home/klee/klee_build/klee-uclibc"}
!26 = metadata !{metadata !27, metadata !31, metadata !32, metadata !40, metadata !43, metadata !50}
!27 = metadata !{i32 786478, metadata !25, metadata !28, metadata !"__uClibc_init", metadata !"__uClibc_init", metadata !"", i32 187, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @__uClibc_init, null, null, metadata !2, i32 188} ; [ DW_TAG_subprogram ] [line 187] [def] [scope 188] [__uClibc_init]
!28 = metadata !{i32 786473, metadata !25}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!29 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!30 = metadata !{null}
!31 = metadata !{i32 786478, metadata !25, metadata !28, metadata !"__uClibc_fini", metadata !"__uClibc_fini", metadata !"", i32 251, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @__uClibc_fini, null, null, metadata !2, i32 252} ; [ DW_TAG_subprogram ] [line 251] [def] [scope 252] [__uClibc_fini]
!32 = metadata !{i32 786478, metadata !25, metadata !28, metadata !"__uClibc_main", metadata !"__uClibc_main", metadata !"", i32 278, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32 (i32, i8**, i8**)*, i32, i8**, void ()*, void ()*, void ()*, i8*)* @__uClibc_main, null, null, metadata !2, i32 281} ; [ DW_TAG_subprogram ] [line 278] [def] [scope 281] [__uClibc_main]
!33 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!34 = metadata !{null, metadata !35, metadata !8, metadata !14, metadata !38, metadata !38, metadata !38, metadata !39}
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!36 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!37 = metadata !{metadata !8, metadata !8, metadata !14, metadata !14}
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!40 = metadata !{i32 786478, metadata !25, metadata !28, metadata !"__check_one_fd", metadata !"__check_one_fd", metadata !"", i32 136, metadata !41, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32)* @__check_one_fd, null, null, metadata !2, i32 137} ; [ DW_TAG_subprogram ] [line 136] [local] [def] [scope 137] [__check_one_fd]
!41 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{null, metadata !8, metadata !8}
!43 = metadata !{i32 786478, metadata !44, metadata !45, metadata !"gnu_dev_makedev", metadata !"gnu_dev_makedev", metadata !"", i32 54, metadata !46, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i32, i32)* @gnu_dev_makedev, null, null, metadata !2, i32 55} ; [ DW_TAG_subprogram ] [line 54] [local] [def] [scope 55] [gnu_dev_makedev]
!44 = metadata !{metadata !"./include/sys/sysmacros.h", metadata !"/home/klee/klee_build/klee-uclibc"}
!45 = metadata !{i32 786473, metadata !44}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee-uclibc/./include/sys/sysmacros.h]
!46 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!47 = metadata !{metadata !48, metadata !49, metadata !49}
!48 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!49 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!50 = metadata !{i32 786478, metadata !25, metadata !28, metadata !"__check_suid", metadata !"__check_suid", metadata !"", i32 155, metadata !51, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @__check_suid, null, null, metadata !2, i32 156} ; [ DW_TAG_subprogram ] [line 155] [local] [def] [scope 156] [__check_suid]
!51 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!52 = metadata !{metadata !8}
!53 = metadata !{metadata !54, metadata !55, metadata !56, metadata !57, metadata !60, metadata !61, metadata !62}
!54 = metadata !{i32 786484, i32 0, null, metadata !"__libc_stack_end", metadata !"__libc_stack_end", metadata !"", metadata !28, i32 52, metadata !39, i32 0, i32 1, i8** @__libc_stack_end, null} ; [ DW_TAG_variable ] [__libc_stack_end] [line 52] [def]
!55 = metadata !{i32 786484, i32 0, null, metadata !"__uclibc_progname", metadata !"__uclibc_progname", metadata !"", metadata !28, i32 110, metadata !22, i32 0, i32 1, i8** @__uclibc_progname, null} ; [ DW_TAG_variable ] [__uclibc_progname] [line 110] [def]
!56 = metadata !{i32 786484, i32 0, null, metadata !"__environ", metadata !"__environ", metadata !"", metadata !28, i32 125, metadata !14, i32 0, i32 1, i8*** @__environ, null} ; [ DW_TAG_variable ] [__environ] [line 125] [def]
!57 = metadata !{i32 786484, i32 0, null, metadata !"__pagesize", metadata !"__pagesize", metadata !"", metadata !28, i32 129, metadata !58, i32 0, i32 1, i64* @__pagesize, null} ; [ DW_TAG_variable ] [__pagesize] [line 129] [def]
!58 = metadata !{i32 786454, metadata !25, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!59 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!60 = metadata !{i32 786484, i32 0, metadata !27, metadata !"been_there_done_that", metadata !"been_there_done_that", metadata !"", metadata !28, i32 189, metadata !8, i32 1, i32 1, i32* @__uClibc_init.been_there_done_that, null} ; [ DW_TAG_variable ] [been_there_done_that] [line 189] [local] [def]
!61 = metadata !{i32 786484, i32 0, null, metadata !"__app_fini", metadata !"__app_fini", metadata !"", metadata !28, i32 244, metadata !38, i32 0, i32 1, void ()** @__app_fini, null} ; [ DW_TAG_variable ] [__app_fini] [line 244] [def]
!62 = metadata !{i32 786484, i32 0, null, metadata !"__rtld_fini", metadata !"__rtld_fini", metadata !"", metadata !28, i32 247, metadata !38, i32 0, i32 1, void ()** @__rtld_fini, null} ; [ DW_TAG_variable ] [__rtld_fini] [line 247] [def]
!63 = metadata !{i32 786449, metadata !64, i32 12, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !65, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__h_errno_location.c] [DW_LANG_C99]
!64 = metadata !{metadata !"libc/misc/internals/__h_errno_location.c", metadata !"/home/klee/klee_build/klee-uclibc"}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 786478, metadata !64, metadata !67, metadata !"__h_errno_location", metadata !"__h_errno_location", metadata !"", i32 10, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32* ()* @__h_errno_location, null, null, metadata !2, i32 11} ; [ DW_TAG_subprogram ] [line 10] [def] [scope 11] [__h_errno_location]
!67 = metadata !{i32 786473, metadata !64}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__h_errno_location.c]
!68 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!69 = metadata !{metadata !70}
!70 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!71 = metadata !{i32 786449, metadata !72, i32 12, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !73, metadata !77, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/klee/klee_build/klee-uclibc/libc/stdio/_stdio.c] [DW_LANG_C99]
!72 = metadata !{metadata !"libc/stdio/_stdio.c", metadata !"/home/klee/klee_build/klee-uclibc"}
!73 = metadata !{metadata !74, metadata !76}
!74 = metadata !{i32 786478, metadata !72, metadata !75, metadata !"_stdio_term", metadata !"_stdio_term", metadata !"", i32 210, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @_stdio_term, null, null, metadata !2, i32 211} ; [ DW_TAG_subprogram ] [line 210] [def] [scope 211] [_stdio_term]
!75 = metadata !{i32 786473, metadata !72}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee-uclibc/libc/stdio/_stdio.c]
!76 = metadata !{i32 786478, metadata !72, metadata !75, metadata !"_stdio_init", metadata !"_stdio_init", metadata !"", i32 277, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @_stdio_init, null, null, metadata !2, i32 278} ; [ DW_TAG_subprogram ] [line 277] [def] [scope 278] [_stdio_init]
!77 = metadata !{metadata !78, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116}
!78 = metadata !{i32 786484, i32 0, null, metadata !"stdin", metadata !"stdin", metadata !"", metadata !75, i32 154, metadata !79, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.273** @stdin, null} ; [ DW_TAG_variable ] [stdin] [line 154] [def]
!79 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !80} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!80 = metadata !{i32 786454, metadata !72, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!81 = metadata !{i32 786451, metadata !82, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !83, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, offset 0] [def] [from ]
!82 = metadata !{metadata !"./include/bits/uClibc_stdio.h", metadata !"/home/klee/klee_build/klee-uclibc"}
!83 = metadata !{metadata !84, metadata !86, metadata !91, metadata !92, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !101, metadata !104}
!84 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!85 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!86 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !87} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!87 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 16, i64 8, i32 0, i32 0, metadata !88, metadata !89, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 16, align 8, offset 0] [from unsigned char]
!88 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!89 = metadata !{metadata !90}
!90 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!91 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!92 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !93} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!93 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned char]
!94 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !93} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!95 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !93} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!96 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !93} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!97 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !93} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!98 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !93} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!99 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !100} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!100 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !81} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!101 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !102} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!102 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !103, metadata !89, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from wchar_t]
!103 = metadata !{i32 786454, metadata !82, null, metadata !"wchar_t", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [wchar_t] [line 65, size 0, align 0, offset 0] [from int]
!104 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !105} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!105 = metadata !{i32 786454, metadata !82, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !106} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!106 = metadata !{i32 786451, metadata !107, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !108, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!107 = metadata !{metadata !"./include/wchar.h", metadata !"/home/klee/klee_build/klee-uclibc"}
!108 = metadata !{metadata !109, metadata !110}
!109 = metadata !{i32 786445, metadata !107, metadata !106, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !103} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!110 = metadata !{i32 786445, metadata !107, metadata !106, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !103} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!111 = metadata !{i32 786484, i32 0, null, metadata !"stdout", metadata !"stdout", metadata !"", metadata !75, i32 155, metadata !79, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.273** @stdout, null} ; [ DW_TAG_variable ] [stdout] [line 155] [def]
!112 = metadata !{i32 786484, i32 0, null, metadata !"stderr", metadata !"stderr", metadata !"", metadata !75, i32 156, metadata !79, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.273** @stderr, null} ; [ DW_TAG_variable ] [stderr] [line 156] [def]
!113 = metadata !{i32 786484, i32 0, null, metadata !"__stdin", metadata !"__stdin", metadata !"", metadata !75, i32 159, metadata !79, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.273** @__stdin, null} ; [ DW_TAG_variable ] [__stdin] [line 159] [def]
!114 = metadata !{i32 786484, i32 0, null, metadata !"__stdout", metadata !"__stdout", metadata !"", metadata !75, i32 162, metadata !79, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.273** @__stdout, null} ; [ DW_TAG_variable ] [__stdout] [line 162] [def]
!115 = metadata !{i32 786484, i32 0, null, metadata !"_stdio_openlist", metadata !"_stdio_openlist", metadata !"", metadata !75, i32 180, metadata !79, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.273** @_stdio_openlist, null} ; [ DW_TAG_variable ] [_stdio_openlist] [line 180] [def]
!116 = metadata !{i32 786484, i32 0, null, metadata !"_stdio_streams", metadata !"_stdio_streams", metadata !"", metadata !75, i32 131, metadata !117, i32 1, i32 1, [3 x %struct.__STDIO_FILE_STRUCT.273]* @_stdio_streams, null} ; [ DW_TAG_variable ] [_stdio_streams] [line 131] [local] [def]
!117 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1920, i64 64, i32 0, i32 0, metadata !80, metadata !118, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1920, align 64, offset 0] [from FILE]
!118 = metadata !{metadata !119}
!119 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!120 = metadata !{i32 786449, metadata !121, i32 12, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !122, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/klee/klee_build/klee-uclibc/libc/stdio/_wcommit.c] [DW_LANG_C99]
!121 = metadata !{metadata !"libc/stdio/_wcommit.c", metadata !"/home/klee/klee_build/klee-uclibc"}
!122 = metadata !{metadata !123}
!123 = metadata !{i32 786478, metadata !121, metadata !124, metadata !"__stdio_wcommit", metadata !"__stdio_wcommit", metadata !"", i32 17, metadata !125, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.__STDIO_FILE_STRUCT.273*)* @__stdio_wcommit, null, null, metadata !2, i32 18} ; [ DW_TAG_subprogram ] [line 17] [def] [scope 18] [__stdio_wcommit]
!124 = metadata !{i32 786473, metadata !121}      ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee-uclibc/libc/stdio/_wcommit.c]
!125 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !126, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!126 = metadata !{metadata !127, metadata !128}
!127 = metadata !{i32 786454, metadata !121, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!128 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !129} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!129 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !130} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!130 = metadata !{i32 786454, metadata !121, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !131} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!131 = metadata !{i32 786451, metadata !82, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !132, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, offset 0] [def] [from ]
!132 = metadata !{metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !144, metadata !145}
!133 = metadata !{i32 786445, metadata !82, metadata !131, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!134 = metadata !{i32 786445, metadata !82, metadata !131, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !87} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!135 = metadata !{i32 786445, metadata !82, metadata !131, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!136 = metadata !{i32 786445, metadata !82, metadata !131, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !93} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!137 = metadata !{i32 786445, metadata !82, metadata !131, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !93} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!138 = metadata !{i32 786445, metadata !82, metadata !131, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !93} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!139 = metadata !{i32 786445, metadata !82, metadata !131, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !93} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!140 = metadata !{i32 786445, metadata !82, metadata !131, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !93} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!141 = metadata !{i32 786445, metadata !82, metadata !131, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !93} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!142 = metadata !{i32 786445, metadata !82, metadata !131, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !143} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!143 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !131} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!144 = metadata !{i32 786445, metadata !82, metadata !131, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !102} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!145 = metadata !{i32 786445, metadata !82, metadata !131, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !146} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!146 = metadata !{i32 786454, metadata !82, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !147} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!147 = metadata !{i32 786451, metadata !107, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !148, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!148 = metadata !{metadata !149, metadata !150}
!149 = metadata !{i32 786445, metadata !107, metadata !147, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !103} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!150 = metadata !{i32 786445, metadata !107, metadata !147, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !103} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!151 = metadata !{i32 786449, metadata !152, i32 12, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !153, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/klee/klee_build/klee-uclibc/libc/string/memcpy.c] [DW_LANG_C99]
!152 = metadata !{metadata !"libc/string/memcpy.c", metadata !"/home/klee/klee_build/klee-uclibc"}
!153 = metadata !{metadata !154}
!154 = metadata !{i32 786478, metadata !152, metadata !155, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 18, metadata !156, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !2, i32 19} ; [ DW_TAG_subprogram ] [line 18] [def] [scope 19] [memcpy]
!155 = metadata !{i32 786473, metadata !152}      ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee-uclibc/libc/string/memcpy.c]
!156 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!157 = metadata !{metadata !39, metadata !158, metadata !159, metadata !162}
!158 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!159 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !160} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!160 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !161} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!161 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!162 = metadata !{i32 786454, metadata !152, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!163 = metadata !{i32 786449, metadata !164, i32 12, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !165, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/klee/klee_build/klee-uclibc/libc/string/memset.c] [DW_LANG_C99]
!164 = metadata !{metadata !"libc/string/memset.c", metadata !"/home/klee/klee_build/klee-uclibc"}
!165 = metadata !{metadata !166}
!166 = metadata !{i32 786478, metadata !164, metadata !167, metadata !"memset", metadata !"memset", metadata !"", i32 17, metadata !168, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32, i64)* @memset, null, null, metadata !2, i32 18} ; [ DW_TAG_subprogram ] [line 17] [def] [scope 18] [memset]
!167 = metadata !{i32 786473, metadata !164}      ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee-uclibc/libc/string/memset.c]
!168 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !169, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!169 = metadata !{metadata !39, metadata !39, metadata !8, metadata !170}
!170 = metadata !{i32 786454, metadata !164, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!171 = metadata !{i32 786449, metadata !172, i32 12, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !173, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/klee/klee_build/klee-uclibc/libc/termios/isatty.c] [DW_LANG_C99]
!172 = metadata !{metadata !"libc/termios/isatty.c", metadata !"/home/klee/klee_build/klee-uclibc"}
!173 = metadata !{metadata !174}
!174 = metadata !{i32 786478, metadata !172, metadata !175, metadata !"isatty", metadata !"isatty", metadata !"", i32 26, metadata !176, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @isatty, null, null, metadata !2, i32 27} ; [ DW_TAG_subprogram ] [line 26] [def] [scope 27] [isatty]
!175 = metadata !{i32 786473, metadata !172}      ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee-uclibc/libc/termios/isatty.c]
!176 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !177, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!177 = metadata !{metadata !8, metadata !8}
!178 = metadata !{i32 786449, metadata !179, i32 12, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !180, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/klee/klee_build/klee-uclibc/libc/termios/tcgetattr.c] [DW_LANG_C99]
!179 = metadata !{metadata !"libc/termios/tcgetattr.c", metadata !"/home/klee/klee_build/klee-uclibc"}
!180 = metadata !{metadata !181}
!181 = metadata !{i32 786478, metadata !179, metadata !182, metadata !"tcgetattr", metadata !"tcgetattr", metadata !"", i32 38, metadata !183, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, %struct.termios.442*)* @tcgetattr, null, null, metadata !2, i32 39} ; [ DW_TAG_subprogram ] [line 38] [def] [scope 39] [tcgetattr]
!182 = metadata !{i32 786473, metadata !179}      ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee-uclibc/libc/termios/tcgetattr.c]
!183 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !184, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!184 = metadata !{metadata !8, metadata !8, metadata !185}
!185 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !186} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from termios]
!186 = metadata !{i32 786451, metadata !187, null, metadata !"termios", i32 30, i64 480, i64 32, i32 0, i32 0, null, metadata !188, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [termios] [line 30, size 480, align 32, offset 0] [def] [from ]
!187 = metadata !{metadata !"./include/bits/termios.h", metadata !"/home/klee/klee_build/klee-uclibc"}
!188 = metadata !{metadata !189, metadata !191, metadata !192, metadata !193, metadata !194, metadata !196, metadata !200, metadata !202}
!189 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"c_iflag", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !190} ; [ DW_TAG_member ] [c_iflag] [line 32, size 32, align 32, offset 0] [from tcflag_t]
!190 = metadata !{i32 786454, metadata !187, null, metadata !"tcflag_t", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [tcflag_t] [line 27, size 0, align 0, offset 0] [from unsigned int]
!191 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"c_oflag", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !190} ; [ DW_TAG_member ] [c_oflag] [line 33, size 32, align 32, offset 32] [from tcflag_t]
!192 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"c_cflag", i32 34, i64 32, i64 32, i64 64, i32 0, metadata !190} ; [ DW_TAG_member ] [c_cflag] [line 34, size 32, align 32, offset 64] [from tcflag_t]
!193 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"c_lflag", i32 35, i64 32, i64 32, i64 96, i32 0, metadata !190} ; [ DW_TAG_member ] [c_lflag] [line 35, size 32, align 32, offset 96] [from tcflag_t]
!194 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"c_line", i32 36, i64 8, i64 8, i64 128, i32 0, metadata !195} ; [ DW_TAG_member ] [c_line] [line 36, size 8, align 8, offset 128] [from cc_t]
!195 = metadata !{i32 786454, metadata !187, null, metadata !"cc_t", i32 25, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [cc_t] [line 25, size 0, align 0, offset 0] [from unsigned char]
!196 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"c_cc", i32 37, i64 256, i64 8, i64 136, i32 0, metadata !197} ; [ DW_TAG_member ] [c_cc] [line 37, size 256, align 8, offset 136] [from ]
!197 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !195, metadata !198, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from cc_t]
!198 = metadata !{metadata !199}
!199 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!200 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"c_ispeed", i32 38, i64 32, i64 32, i64 416, i32 0, metadata !201} ; [ DW_TAG_member ] [c_ispeed] [line 38, size 32, align 32, offset 416] [from speed_t]
!201 = metadata !{i32 786454, metadata !187, null, metadata !"speed_t", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [speed_t] [line 26, size 0, align 0, offset 0] [from unsigned int]
!202 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"c_ospeed", i32 39, i64 32, i64 32, i64 448, i32 0, metadata !201} ; [ DW_TAG_member ] [c_ospeed] [line 39, size 32, align 32, offset 448] [from speed_t]
!203 = metadata !{i32 786449, metadata !204, i32 12, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !2, metadata !205, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/errno.c] [DW_LANG_C99]
!204 = metadata !{metadata !"libc/misc/internals/errno.c", metadata !"/home/klee/klee_build/klee-uclibc"}
!205 = metadata !{metadata !206, metadata !208}
!206 = metadata !{i32 786484, i32 0, null, metadata !"errno", metadata !"errno", metadata !"", metadata !207, i32 7, metadata !8, i32 0, i32 1, i32* @errno, null} ; [ DW_TAG_variable ] [errno] [line 7] [def]
!207 = metadata !{i32 786473, metadata !204}      ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/errno.c]
!208 = metadata !{i32 786484, i32 0, null, metadata !"h_errno", metadata !"h_errno", metadata !"", metadata !207, i32 8, metadata !8, i32 0, i32 1, i32* @h_errno, null} ; [ DW_TAG_variable ] [h_errno] [line 8] [def]
!209 = metadata !{i32 786449, metadata !210, i32 12, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !211, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/klee/klee_build/klee-uclibc/libc/stdio/_WRITE.c] [DW_LANG_C99]
!210 = metadata !{metadata !"libc/stdio/_WRITE.c", metadata !"/home/klee/klee_build/klee-uclibc"}
!211 = metadata !{metadata !212}
!212 = metadata !{i32 786478, metadata !210, metadata !213, metadata !"__stdio_WRITE", metadata !"__stdio_WRITE", metadata !"", i32 33, metadata !214, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.__STDIO_FILE_STRUCT.273*, i8*, i64)* @__stdio_WRITE, null, null, metadata !2, i32 35} ; [ DW_TAG_subprogram ] [line 33] [def] [scope 35] [__stdio_WRITE]
!213 = metadata !{i32 786473, metadata !210}      ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee-uclibc/libc/stdio/_WRITE.c]
!214 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !215, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!215 = metadata !{metadata !216, metadata !217, metadata !239, metadata !216}
!216 = metadata !{i32 786454, metadata !210, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!217 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !218} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!218 = metadata !{i32 786454, metadata !210, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !219} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!219 = metadata !{i32 786451, metadata !82, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !220, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, offset 0] [def] [from ]
!220 = metadata !{metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !232, metadata !233}
!221 = metadata !{i32 786445, metadata !82, metadata !219, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!222 = metadata !{i32 786445, metadata !82, metadata !219, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !87} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!223 = metadata !{i32 786445, metadata !82, metadata !219, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!224 = metadata !{i32 786445, metadata !82, metadata !219, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !93} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!225 = metadata !{i32 786445, metadata !82, metadata !219, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !93} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!226 = metadata !{i32 786445, metadata !82, metadata !219, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !93} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!227 = metadata !{i32 786445, metadata !82, metadata !219, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !93} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!228 = metadata !{i32 786445, metadata !82, metadata !219, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !93} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!229 = metadata !{i32 786445, metadata !82, metadata !219, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !93} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!230 = metadata !{i32 786445, metadata !82, metadata !219, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !231} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!231 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !219} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!232 = metadata !{i32 786445, metadata !82, metadata !219, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !102} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!233 = metadata !{i32 786445, metadata !82, metadata !219, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !234} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!234 = metadata !{i32 786454, metadata !82, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !235} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!235 = metadata !{i32 786451, metadata !107, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !236, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!236 = metadata !{metadata !237, metadata !238}
!237 = metadata !{i32 786445, metadata !107, metadata !235, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !103} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!238 = metadata !{i32 786445, metadata !107, metadata !235, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !103} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!239 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !240} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!240 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!241 = metadata !{i32 786449, metadata !242, i32 12, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !243, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/klee/klee_build/klee-uclibc/libc/string/mempcpy.c] [DW_LANG_C99]
!242 = metadata !{metadata !"libc/string/mempcpy.c", metadata !"/home/klee/klee_build/klee-uclibc"}
!243 = metadata !{metadata !244}
!244 = metadata !{i32 786478, metadata !242, metadata !245, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 20, metadata !246, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !2, i32 21} ; [ DW_TAG_subprogram ] [line 20] [def] [scope 21] [mempcpy]
!245 = metadata !{i32 786473, metadata !242}      ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee-uclibc/libc/string/mempcpy.c]
!246 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !247, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!247 = metadata !{metadata !39, metadata !158, metadata !159, metadata !248}
!248 = metadata !{i32 786454, metadata !242, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!249 = metadata !{i32 786449, metadata !250, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !251, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_choose.c] [DW_LANG_C89]
!250 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/klee_choose.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!251 = metadata !{metadata !252}
!252 = metadata !{i32 786478, metadata !250, metadata !253, metadata !"klee_choose", metadata !"klee_choose", metadata !"", i32 12, metadata !254, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i64)* @klee_choose, null, null, metadata !257, i32 12} ; [ DW_TAG_subprogram ] [line 12] [def] [klee_choose]
!253 = metadata !{i32 786473, metadata !250}      ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_choose.c]
!254 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !255, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!255 = metadata !{metadata !256, metadata !256}
!256 = metadata !{i32 786454, metadata !250, null, metadata !"uintptr_t", i32 122, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [uintptr_t] [line 122, size 0, align 0, offset 0] [from long unsigned int]
!257 = metadata !{metadata !258, metadata !259}
!258 = metadata !{i32 786689, metadata !252, metadata !"n", metadata !253, i32 16777228, metadata !256, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 12]
!259 = metadata !{i32 786688, metadata !252, metadata !"x", metadata !253, i32 13, metadata !256, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 13]
!260 = metadata !{i32 786449, metadata !261, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !262, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_div_zero_check.c] [DW_LANG_C89]
!261 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!262 = metadata !{metadata !263}
!263 = metadata !{i32 786478, metadata !261, metadata !264, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !265, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, null, null, metadata !268, i32 12} ; [ DW_TAG_subprogram ] [line 12] [def] [klee_div_zero_check]
!264 = metadata !{i32 786473, metadata !261}      ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_div_zero_check.c]
!265 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !266, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!266 = metadata !{null, metadata !267}
!267 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!268 = metadata !{metadata !269}
!269 = metadata !{i32 786689, metadata !263, metadata !"z", metadata !264, i32 16777228, metadata !267, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!270 = metadata !{i32 786449, metadata !271, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !272, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_int.c] [DW_LANG_C89]
!271 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/klee_int.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!272 = metadata !{metadata !273}
!273 = metadata !{i32 786478, metadata !271, metadata !274, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !275, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !277, i32 13} ; [ DW_TAG_subprogram ] [line 13] [def] [klee_int]
!274 = metadata !{i32 786473, metadata !271}      ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_int.c]
!275 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !276, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!276 = metadata !{metadata !8, metadata !22}
!277 = metadata !{metadata !278, metadata !279}
!278 = metadata !{i32 786689, metadata !273, metadata !"name", metadata !274, i32 16777229, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!279 = metadata !{i32 786688, metadata !273, metadata !"x", metadata !274, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!280 = metadata !{i32 786449, metadata !281, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !282, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_overshift_check.c] [DW_LANG_C89]
!281 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!282 = metadata !{metadata !283}
!283 = metadata !{i32 786478, metadata !281, metadata !284, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !285, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift_check, null, null, metadata !287, i32 20} ; [ DW_TAG_subprogram ] [line 20] [def] [klee_overshift_check]
!284 = metadata !{i32 786473, metadata !281}      ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_overshift_check.c]
!285 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !286, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!286 = metadata !{null, metadata !48, metadata !48}
!287 = metadata !{metadata !288, metadata !289}
!288 = metadata !{i32 786689, metadata !283, metadata !"bitWidth", metadata !284, i32 16777236, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!289 = metadata !{i32 786689, metadata !283, metadata !"shift", metadata !284, i32 33554452, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!290 = metadata !{i32 786449, metadata !291, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !292, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c] [DW_LANG_C89]
!291 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/klee_range.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!292 = metadata !{metadata !293}
!293 = metadata !{i32 786478, metadata !291, metadata !294, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !295, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metadata !297, i32 13} ; [ DW_TAG_subprogram ] [line 13] [def] [klee_range]
!294 = metadata !{i32 786473, metadata !291}      ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!295 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !296, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!296 = metadata !{metadata !8, metadata !8, metadata !8, metadata !22}
!297 = metadata !{metadata !298, metadata !299, metadata !300, metadata !301}
!298 = metadata !{i32 786689, metadata !293, metadata !"start", metadata !294, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!299 = metadata !{i32 786689, metadata !293, metadata !"end", metadata !294, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!300 = metadata !{i32 786689, metadata !293, metadata !"name", metadata !294, i32 50331661, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!301 = metadata !{i32 786688, metadata !293, metadata !"x", metadata !294, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!302 = metadata !{i32 786449, metadata !303, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !304, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memcpy.c] [DW_LANG_C89]
!303 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/memcpy.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!304 = metadata !{metadata !305}
!305 = metadata !{i32 786478, metadata !303, metadata !306, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !307, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !310, i32 12} ; [ DW_TAG_subprogram ] [line 12] [def] [memcpy]
!306 = metadata !{i32 786473, metadata !303}      ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memcpy.c]
!307 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !308, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!308 = metadata !{metadata !39, metadata !39, metadata !160, metadata !309}
!309 = metadata !{i32 786454, metadata !303, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!310 = metadata !{metadata !311, metadata !312, metadata !313, metadata !314, metadata !315}
!311 = metadata !{i32 786689, metadata !305, metadata !"destaddr", metadata !306, i32 16777228, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!312 = metadata !{i32 786689, metadata !305, metadata !"srcaddr", metadata !306, i32 33554444, metadata !160, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!313 = metadata !{i32 786689, metadata !305, metadata !"len", metadata !306, i32 50331660, metadata !309, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!314 = metadata !{i32 786688, metadata !305, metadata !"dest", metadata !306, i32 13, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!315 = metadata !{i32 786688, metadata !305, metadata !"src", metadata !306, i32 14, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!316 = metadata !{i32 786449, metadata !317, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !318, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c] [DW_LANG_C89]
!317 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/memmove.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!318 = metadata !{metadata !319}
!319 = metadata !{i32 786478, metadata !317, metadata !320, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !321, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !324, i32 12} ; [ DW_TAG_subprogram ] [line 12] [def] [memmove]
!320 = metadata !{i32 786473, metadata !317}      ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!321 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !322, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!322 = metadata !{metadata !39, metadata !39, metadata !160, metadata !323}
!323 = metadata !{i32 786454, metadata !317, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!324 = metadata !{metadata !325, metadata !326, metadata !327, metadata !328, metadata !329}
!325 = metadata !{i32 786689, metadata !319, metadata !"dst", metadata !320, i32 16777228, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!326 = metadata !{i32 786689, metadata !319, metadata !"src", metadata !320, i32 33554444, metadata !160, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!327 = metadata !{i32 786689, metadata !319, metadata !"count", metadata !320, i32 50331660, metadata !323, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!328 = metadata !{i32 786688, metadata !319, metadata !"a", metadata !320, i32 13, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!329 = metadata !{i32 786688, metadata !319, metadata !"b", metadata !320, i32 14, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!330 = metadata !{i32 786449, metadata !331, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !332, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/mempcpy.c] [DW_LANG_C89]
!331 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/mempcpy.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!332 = metadata !{metadata !333}
!333 = metadata !{i32 786478, metadata !331, metadata !334, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !335, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !338, i32 11} ; [ DW_TAG_subprogram ] [line 11] [def] [mempcpy]
!334 = metadata !{i32 786473, metadata !331}      ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/mempcpy.c]
!335 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !336, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!336 = metadata !{metadata !39, metadata !39, metadata !160, metadata !337}
!337 = metadata !{i32 786454, metadata !331, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!338 = metadata !{metadata !339, metadata !340, metadata !341, metadata !342, metadata !343}
!339 = metadata !{i32 786689, metadata !333, metadata !"destaddr", metadata !334, i32 16777227, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!340 = metadata !{i32 786689, metadata !333, metadata !"srcaddr", metadata !334, i32 33554443, metadata !160, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!341 = metadata !{i32 786689, metadata !333, metadata !"len", metadata !334, i32 50331659, metadata !337, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!342 = metadata !{i32 786688, metadata !333, metadata !"dest", metadata !334, i32 12, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!343 = metadata !{i32 786688, metadata !333, metadata !"src", metadata !334, i32 13, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!344 = metadata !{i32 786449, metadata !345, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !346, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memset.c] [DW_LANG_C89]
!345 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/memset.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!346 = metadata !{metadata !347}
!347 = metadata !{i32 786478, metadata !345, metadata !348, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !349, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !352, i32 11} ; [ DW_TAG_subprogram ] [line 11] [def] [memset]
!348 = metadata !{i32 786473, metadata !345}      ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memset.c]
!349 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !350, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!350 = metadata !{metadata !39, metadata !39, metadata !8, metadata !351}
!351 = metadata !{i32 786454, metadata !345, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!352 = metadata !{metadata !353, metadata !354, metadata !355, metadata !356}
!353 = metadata !{i32 786689, metadata !347, metadata !"dst", metadata !348, i32 16777227, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!354 = metadata !{i32 786689, metadata !347, metadata !"s", metadata !348, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!355 = metadata !{i32 786689, metadata !347, metadata !"count", metadata !348, i32 50331659, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!356 = metadata !{i32 786688, metadata !347, metadata !"a", metadata !348, i32 12, metadata !357, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!357 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !358} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!358 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!359 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!360 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!361 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
!362 = metadata !{i32 8, i32 0, metadata !363, null} ; [ DW_TAG_imported_declaration ]
!363 = metadata !{i32 786443, metadata !1, metadata !4, i32 8, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/Fuzzler/tests/test3/test3.c]
!364 = metadata !{i32 9, i32 0, metadata !365, null}
!365 = metadata !{i32 786443, metadata !1, metadata !363, i32 8, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/Fuzzler/tests/test3/test3.c]
!366 = metadata !{i32 11, i32 0, metadata !367, null}
!367 = metadata !{i32 786443, metadata !1, metadata !363, i32 10, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/klee/Fuzzler/tests/test3/test3.c]
!368 = metadata !{i32 13, i32 0, metadata !4, null}
!369 = metadata !{i32 17, i32 0, metadata !11, null}
!370 = metadata !{i32 18, i32 0, metadata !11, null}
!371 = metadata !{i32 34, i32 0, metadata !18, null}
!372 = metadata !{i32 37, i32 0, metadata !18, null}
!373 = metadata !{i32 191, i32 0, metadata !374, null}
!374 = metadata !{i32 786443, metadata !25, metadata !27, i32 191, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!375 = metadata !{i32 193, i32 0, metadata !27, null}
!376 = metadata !{i32 197, i32 0, metadata !27, null}
!377 = metadata !{i32 238, i32 0, metadata !378, null}
!378 = metadata !{i32 786443, metadata !25, metadata !27, i32 238, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!379 = metadata !{i32 239, i32 0, metadata !378, null}
!380 = metadata !{i32 240, i32 0, metadata !27, null}
!381 = metadata !{i32 263, i32 0, metadata !382, null}
!382 = metadata !{i32 786443, metadata !25, metadata !31, i32 263, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!383 = metadata !{i32 264, i32 0, metadata !382, null}
!384 = metadata !{i32 266, i32 0, metadata !385, null}
!385 = metadata !{i32 786443, metadata !25, metadata !31, i32 266, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!386 = metadata !{i32 267, i32 0, metadata !385, null}
!387 = metadata !{i32 268, i32 0, metadata !31, null}
!388 = metadata !{i32 288, i32 0, metadata !32, null}
!389 = metadata !{i32 291, i32 0, metadata !32, null}
!390 = metadata !{i32 294, i32 0, metadata !32, null}
!391 = metadata !{i32 298, i32 0, metadata !392, null}
!392 = metadata !{i32 786443, metadata !25, metadata !32, i32 298, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!393 = metadata !{i32 300, i32 0, metadata !394, null}
!394 = metadata !{i32 786443, metadata !25, metadata !392, i32 298, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!395 = metadata !{i32 301, i32 0, metadata !394, null}
!396 = metadata !{i32 305, i32 0, metadata !32, null}
!397 = metadata !{i32 306, i32 0, metadata !32, null}
!398 = metadata !{i32 307, i32 0, metadata !32, null}
!399 = metadata !{i32 308, i32 0, metadata !400, null}
!400 = metadata !{i32 786443, metadata !25, metadata !32, i32 307, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!401 = metadata !{i32 311, i32 0, metadata !32, null}
!402 = metadata !{i32 312, i32 0, metadata !403, null}
!403 = metadata !{i32 786443, metadata !25, metadata !32, i32 311, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!404 = metadata !{i32 313, i32 0, metadata !405, null}
!405 = metadata !{i32 786443, metadata !25, metadata !403, i32 313, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!406 = metadata !{i32 314, i32 0, metadata !407, null}
!407 = metadata !{i32 786443, metadata !25, metadata !405, i32 313, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!408 = metadata !{i32 315, i32 0, metadata !407, null}
!409 = metadata !{i32 316, i32 0, metadata !403, null}
!410 = metadata !{i32 317, i32 0, metadata !403, null}
!411 = metadata !{i32 323, i32 0, metadata !32, null}
!412 = metadata !{i32 327, i32 0, metadata !32, null}
!413 = metadata !{i32 331, i32 0, metadata !414, null}
!414 = metadata !{i32 786443, metadata !25, metadata !32, i32 331, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!415 = metadata !{i32 336, i32 0, metadata !416, null}
!416 = metadata !{i32 786443, metadata !25, metadata !414, i32 335, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!417 = metadata !{i32 337, i32 0, metadata !416, null}
!418 = metadata !{i32 338, i32 0, metadata !416, null}
!419 = metadata !{i32 339, i32 0, metadata !416, null}
!420 = metadata !{i32 342, i32 0, metadata !32, null}
!421 = metadata !{i32 354, i32 0, metadata !32, null}
!422 = metadata !{i32 370, i32 0, metadata !423, null}
!423 = metadata !{i32 786443, metadata !25, metadata !32, i32 370, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!424 = metadata !{i32 371, i32 0, metadata !425, null}
!425 = metadata !{i32 786443, metadata !25, metadata !423, i32 370, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!426 = metadata !{i32 372, i32 0, metadata !425, null}
!427 = metadata !{i32 391, i32 0, metadata !428, null}
!428 = metadata !{i32 786443, metadata !25, metadata !32, i32 391, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!429 = metadata !{i32 392, i32 0, metadata !428, null}
!430 = metadata !{i32 395, i32 0, metadata !431, null}
!431 = metadata !{i32 786443, metadata !25, metadata !32, i32 395, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!432 = metadata !{i32 396, i32 0, metadata !431, null}
!433 = metadata !{i32 401, i32 0, metadata !32, null}
!434 = metadata !{i32 160, i32 0, metadata !435, null}
!435 = metadata !{i32 786443, metadata !25, metadata !50} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!436 = metadata !{i32 161, i32 0, metadata !435, null}
!437 = metadata !{i32 162, i32 0, metadata !435, null}
!438 = metadata !{i32 163, i32 0, metadata !435, null}
!439 = metadata !{i32 165, i32 0, metadata !440, null}
!440 = metadata !{i32 786443, metadata !25, metadata !435, i32 165, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!441 = metadata !{i32 166, i32 0, metadata !442, null}
!442 = metadata !{i32 786443, metadata !25, metadata !440, i32 165, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!443 = metadata !{i32 168, i32 0, metadata !435, null}
!444 = metadata !{i32 169, i32 0, metadata !435, null}
!445 = metadata !{i32 139, i32 0, metadata !446, null}
!446 = metadata !{i32 786443, metadata !25, metadata !40, i32 139, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!447 = metadata !{i32 143, i32 0, metadata !448, null}
!448 = metadata !{i32 786443, metadata !25, metadata !446, i32 140, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!449 = metadata !{i32 147, i32 0, metadata !450, null}
!450 = metadata !{i32 786443, metadata !25, metadata !448, i32 147, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!451 = metadata !{i32 148, i32 18, metadata !450, null}
!452 = metadata !{i32 150, i32 0, metadata !453, null}
!453 = metadata !{i32 786443, metadata !25, metadata !450, i32 149, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!454 = metadata !{i32 153, i32 0, metadata !40, null}
!455 = metadata !{i32 56, i32 0, metadata !456, null}
!456 = metadata !{i32 786443, metadata !44, metadata !43} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/./include/sys/sysmacros.h]
!457 = metadata !{i32 12, i32 0, metadata !66, null}
!458 = metadata !{i32 258, i32 0, metadata !459, null}
!459 = metadata !{i32 786443, metadata !72, metadata !74, i32 258, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/stdio/_stdio.c]
!460 = metadata !{i32 261, i32 0, metadata !461, null}
!461 = metadata !{i32 786443, metadata !72, metadata !462, i32 261, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/stdio/_stdio.c]
!462 = metadata !{i32 786443, metadata !72, metadata !459, i32 258, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/stdio/_stdio.c]
!463 = metadata !{i32 262, i32 0, metadata !464, null}
!464 = metadata !{i32 786443, metadata !72, metadata !461, i32 261, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/stdio/_stdio.c]
!465 = metadata !{i32 263, i32 0, metadata !464, null}
!466 = metadata !{i32 274, i32 0, metadata !74, null}
!467 = metadata !{i32 280, i32 0, metadata !76, null}
!468 = metadata !{i32 282, i32 0, metadata !76, null}
!469 = metadata !{i32 283, i32 0, metadata !76, null}
!470 = metadata !{i32 284, i32 0, metadata !76, null}
!471 = metadata !{i32 291, i32 0, metadata !76, null}
!472 = metadata !{i32 23, i32 0, metadata !473, null}
!473 = metadata !{i32 786443, metadata !121, metadata !123, i32 23, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/stdio/_wcommit.c]
!474 = metadata !{i32 24, i32 0, metadata !475, null}
!475 = metadata !{i32 786443, metadata !121, metadata !473, i32 23, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/stdio/_wcommit.c]
!476 = metadata !{i32 25, i32 0, metadata !475, null}
!477 = metadata !{i32 26, i32 0, metadata !475, null}
!478 = metadata !{i32 28, i32 0, metadata !123, null}
!479 = metadata !{i32 20, i32 0, metadata !154, null}
!480 = metadata !{i32 21, i32 0, metadata !154, null}
!481 = metadata !{i32 28, i32 0, metadata !154, null}
!482 = metadata !{i32 29, i32 0, metadata !483, null}
!483 = metadata !{i32 786443, metadata !152, metadata !154, i32 28, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/string/memcpy.c]
!484 = metadata !{i32 30, i32 0, metadata !483, null}
!485 = metadata !{i32 31, i32 0, metadata !483, null}
!486 = metadata !{i32 34, i32 0, metadata !154, null}
!487 = metadata !{i32 19, i32 0, metadata !166, null}
!488 = metadata !{i32 27, i32 0, metadata !166, null}
!489 = metadata !{i32 28, i32 0, metadata !490, null}
!490 = metadata !{i32 786443, metadata !164, metadata !166, i32 27, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/string/memset.c]
!491 = metadata !{i32 29, i32 0, metadata !490, null}
!492 = metadata !{i32 30, i32 0, metadata !490, null}
!493 = metadata !{i32 32, i32 0, metadata !166, null}
!494 = metadata !{i32 30, i32 0, metadata !174, null}
!495 = metadata !{i32 43, i32 0, metadata !181, null}
!496 = metadata !{i32 45, i32 0, metadata !181, null}
!497 = metadata !{i32 46, i32 0, metadata !181, null}
!498 = metadata !{i32 47, i32 0, metadata !181, null}
!499 = metadata !{i32 48, i32 0, metadata !181, null}
!500 = metadata !{i32 49, i32 0, metadata !181, null}
!501 = metadata !{i32 61, i32 0, metadata !502, null}
!502 = metadata !{i32 786443, metadata !179, metadata !503, i32 60, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/termios/tcgetattr.c]
!503 = metadata !{i32 786443, metadata !179, metadata !181, i32 58, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/termios/tcgetattr.c]
!504 = metadata !{i32 79, i32 0, metadata !181, null}
!505 = metadata !{i32 44, i32 0, metadata !212, null}
!506 = metadata !{i32 46, i32 0, metadata !212, null}
!507 = metadata !{i32 47, i32 0, metadata !508, null}
!508 = metadata !{i32 786443, metadata !210, metadata !509, i32 47, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/stdio/_WRITE.c]
!509 = metadata !{i32 786443, metadata !210, metadata !212, i32 46, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/stdio/_WRITE.c]
!510 = metadata !{i32 49, i32 0, metadata !511, null}
!511 = metadata !{i32 786443, metadata !210, metadata !508, i32 47, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/stdio/_WRITE.c]
!512 = metadata !{i32 51, i32 0, metadata !509, null}
!513 = metadata !{i32 52, i32 0, metadata !514, null}
!514 = metadata !{i32 786443, metadata !210, metadata !509, i32 52, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/stdio/_WRITE.c]
!515 = metadata !{i32 62, i32 0, metadata !516, null}
!516 = metadata !{i32 786443, metadata !210, metadata !514, i32 52, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/stdio/_WRITE.c]
!517 = metadata !{i32 63, i32 0, metadata !516, null}
!518 = metadata !{i32 101, i32 0, metadata !509, null}
!519 = metadata !{i32 70, i32 0, metadata !520, null}
!520 = metadata !{i32 786443, metadata !210, metadata !514, i32 69, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/stdio/_WRITE.c]
!521 = metadata !{i32 73, i32 0, metadata !522, null}
!522 = metadata !{i32 786443, metadata !210, metadata !520, i32 73, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/stdio/_WRITE.c]
!523 = metadata !{i32 76, i32 0, metadata !524, null}
!524 = metadata !{i32 786443, metadata !210, metadata !525, i32 76, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/stdio/_WRITE.c]
!525 = metadata !{i32 786443, metadata !210, metadata !522, i32 73, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/stdio/_WRITE.c]
!526 = metadata !{i32 77, i32 0, metadata !527, null}
!527 = metadata !{i32 786443, metadata !210, metadata !524, i32 76, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/stdio/_WRITE.c]
!528 = metadata !{i32 78, i32 0, metadata !527, null}
!529 = metadata !{i32 80, i32 0, metadata !525, null}
!530 = metadata !{i32 82, i32 0, metadata !525, null}
!531 = metadata !{i32 83, i32 0, metadata !532, null}
!532 = metadata !{i32 786443, metadata !210, metadata !533, i32 83, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/stdio/_WRITE.c]
!533 = metadata !{i32 786443, metadata !210, metadata !525, i32 82, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/stdio/_WRITE.c]
!534 = metadata !{i32 88, i32 0, metadata !533, null}
!535 = metadata !{i32 89, i32 0, metadata !533, null}
!536 = metadata !{i32 90, i32 0, metadata !533, null}
!537 = metadata !{i32 92, i32 0, metadata !525, null}
!538 = metadata !{i32 94, i32 0, metadata !525, null}
!539 = metadata !{i32 95, i32 0, metadata !525, null}
!540 = metadata !{i32 99, i32 0, metadata !520, null}
!541 = metadata !{i32 102, i32 0, metadata !212, null}
!542 = metadata !{i32 22, i32 0, metadata !244, null}
!543 = metadata !{i32 23, i32 0, metadata !244, null}
!544 = metadata !{i32 30, i32 0, metadata !244, null}
!545 = metadata !{i32 31, i32 0, metadata !546, null}
!546 = metadata !{i32 786443, metadata !242, metadata !244, i32 30, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee-uclibc/libc/string/mempcpy.c]
!547 = metadata !{i32 32, i32 0, metadata !546, null}
!548 = metadata !{i32 33, i32 0, metadata !546, null}
!549 = metadata !{i32 36, i32 0, metadata !244, null}
!550 = metadata !{i32 14, i32 0, metadata !252, null}
!551 = metadata !{i32 17, i32 0, metadata !552, null}
!552 = metadata !{i32 786443, metadata !250, metadata !252, i32 17, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_choose.c]
!553 = metadata !{metadata !554, metadata !554, i64 0}
!554 = metadata !{metadata !"long", metadata !555, i64 0}
!555 = metadata !{metadata !"omnipotent char", metadata !556, i64 0}
!556 = metadata !{metadata !"Simple C/C++ TBAA"}
!557 = metadata !{i32 18, i32 0, metadata !552, null}
!558 = metadata !{i32 19, i32 0, metadata !252, null}
!559 = metadata !{i32 13, i32 0, metadata !560, null}
!560 = metadata !{i32 786443, metadata !261, metadata !263, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_div_zero_check.c]
!561 = metadata !{i32 14, i32 0, metadata !560, null}
!562 = metadata !{i32 15, i32 0, metadata !263, null}
!563 = metadata !{i32 15, i32 0, metadata !273, null}
!564 = metadata !{i32 16, i32 0, metadata !273, null}
!565 = metadata !{metadata !566, metadata !566, i64 0}
!566 = metadata !{metadata !"int", metadata !555, i64 0}
!567 = metadata !{i32 21, i32 0, metadata !568, null}
!568 = metadata !{i32 786443, metadata !281, metadata !283, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_overshift_check.c]
!569 = metadata !{i32 27, i32 0, metadata !570, null}
!570 = metadata !{i32 786443, metadata !281, metadata !568, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_overshift_check.c]
!571 = metadata !{i32 29, i32 0, metadata !283, null}
!572 = metadata !{i32 16, i32 0, metadata !573, null}
!573 = metadata !{i32 786443, metadata !291, metadata !293, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!574 = metadata !{i32 17, i32 0, metadata !573, null}
!575 = metadata !{i32 19, i32 0, metadata !576, null}
!576 = metadata !{i32 786443, metadata !291, metadata !293, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!577 = metadata !{i32 22, i32 0, metadata !578, null}
!578 = metadata !{i32 786443, metadata !291, metadata !576, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!579 = metadata !{i32 25, i32 0, metadata !580, null}
!580 = metadata !{i32 786443, metadata !291, metadata !578, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!581 = metadata !{i32 26, i32 0, metadata !582, null}
!582 = metadata !{i32 786443, metadata !291, metadata !580, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!583 = metadata !{i32 27, i32 0, metadata !582, null}
!584 = metadata !{i32 28, i32 0, metadata !585, null}
!585 = metadata !{i32 786443, metadata !291, metadata !580, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!586 = metadata !{i32 29, i32 0, metadata !585, null}
!587 = metadata !{i32 32, i32 0, metadata !578, null}
!588 = metadata !{i32 34, i32 0, metadata !293, null}
!589 = metadata !{i32 16, i32 0, metadata !590, null}
!590 = metadata !{i32 786443, metadata !317, metadata !319, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!591 = metadata !{i32 19, i32 0, metadata !592, null}
!592 = metadata !{i32 786443, metadata !317, metadata !319, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!593 = metadata !{i32 20, i32 0, metadata !594, null}
!594 = metadata !{i32 786443, metadata !317, metadata !592, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!595 = metadata !{metadata !595, metadata !596, metadata !597}
!596 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!597 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!598 = metadata !{metadata !555, metadata !555, i64 0}
!599 = metadata !{metadata !599, metadata !596, metadata !597}
!600 = metadata !{i32 22, i32 0, metadata !601, null}
!601 = metadata !{i32 786443, metadata !317, metadata !592, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!602 = metadata !{i32 24, i32 0, metadata !601, null}
!603 = metadata !{i32 23, i32 0, metadata !601, null}
!604 = metadata !{metadata !604, metadata !596, metadata !597}
!605 = metadata !{metadata !605, metadata !596, metadata !597}
!606 = metadata !{i32 28, i32 0, metadata !319, null}
