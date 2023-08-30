; ModuleID = '/export/hdd/scratch/rsamanta9/QDTrack/proj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 3, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 3, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: noinline
define void @apatb_layer_top_ir([92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="512" "maxi" %input_feature_map, [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="128" "maxi" %layer_weights_1, %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="128" "maxi" %layer_bias_1, [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="128" "maxi" %layer_weights_2, %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="128" "maxi" %layer_bias_2, [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="512" "maxi" %layer_weights_3, %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="512" "maxi" %layer_bias_3, [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* noalias nocapture nonnull "fpga.decayed.dim.hint"="512" "maxi" %output_feature_map) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 15073280)
  %input_feature_map_copy = bitcast i8* %malloccall to [512 x [92 x [160 x i16]]]*
  %malloccall1 = call i8* @malloc(i64 131072)
  %layer_weights_1_copy = bitcast i8* %malloccall1 to [128 x [512 x [1 x [1 x i16]]]]*
  %layer_bias_1_copy = alloca [128 x i16], align 512
  %malloccall2 = call i8* @malloc(i64 294912)
  %layer_weights_2_copy = bitcast i8* %malloccall2 to [128 x [128 x [3 x [3 x i16]]]]*
  %layer_bias_2_copy = alloca [128 x i16], align 512
  %malloccall3 = call i8* @malloc(i64 131072)
  %layer_weights_3_copy = bitcast i8* %malloccall3 to [512 x [128 x [1 x [1 x i16]]]]*
  %layer_bias_3_copy = alloca [512 x i16], align 512
  %malloccall4 = call i8* @malloc(i64 15073280)
  %output_feature_map_copy = bitcast i8* %malloccall4 to [512 x [92 x [160 x i16]]]*
  %0 = bitcast [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %input_feature_map to [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]*
  %1 = bitcast [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %layer_weights_1 to [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]*
  %2 = bitcast %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* %layer_bias_1 to [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]*
  %3 = bitcast [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %layer_weights_2 to [128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]*
  %4 = bitcast %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* %layer_bias_2 to [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]*
  %5 = bitcast [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %layer_weights_3 to [512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]*
  %6 = bitcast %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* %layer_bias_3 to [512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]*
  %7 = bitcast [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %output_feature_map to [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]*
  call fastcc void @copy_in([512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* nonnull %0, [512 x [92 x [160 x i16]]]* %input_feature_map_copy, [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* nonnull %1, [128 x [512 x [1 x [1 x i16]]]]* %layer_weights_1_copy, [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* nonnull %2, [128 x i16]* nonnull align 512 %layer_bias_1_copy, [128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* nonnull %3, [128 x [128 x [3 x [3 x i16]]]]* %layer_weights_2_copy, [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* nonnull %4, [128 x i16]* nonnull align 512 %layer_bias_2_copy, [512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* nonnull %5, [512 x [128 x [1 x [1 x i16]]]]* %layer_weights_3_copy, [512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* nonnull %6, [512 x i16]* nonnull align 512 %layer_bias_3_copy, [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* nonnull %7, [512 x [92 x [160 x i16]]]* %output_feature_map_copy)
  call void @apatb_layer_top_hw([512 x [92 x [160 x i16]]]* %input_feature_map_copy, [128 x [512 x [1 x [1 x i16]]]]* %layer_weights_1_copy, [128 x i16]* %layer_bias_1_copy, [128 x [128 x [3 x [3 x i16]]]]* %layer_weights_2_copy, [128 x i16]* %layer_bias_2_copy, [512 x [128 x [1 x [1 x i16]]]]* %layer_weights_3_copy, [512 x i16]* %layer_bias_3_copy, [512 x [92 x [160 x i16]]]* %output_feature_map_copy)
  call void @copy_back([512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %0, [512 x [92 x [160 x i16]]]* %input_feature_map_copy, [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %1, [128 x [512 x [1 x [1 x i16]]]]* %layer_weights_1_copy, [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %2, [128 x i16]* %layer_bias_1_copy, [128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %3, [128 x [128 x [3 x [3 x i16]]]]* %layer_weights_2_copy, [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %4, [128 x i16]* %layer_bias_2_copy, [512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %5, [512 x [128 x [1 x [1 x i16]]]]* %layer_weights_3_copy, [512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %6, [512 x i16]* %layer_bias_3_copy, [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %7, [512 x [92 x [160 x i16]]]* %output_feature_map_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  call void @free(i8* %malloccall2)
  call void @free(i8* %malloccall3)
  call void @free(i8* %malloccall4)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly "unpacked"="0", [512 x [92 x [160 x i16]]]* noalias "unpacked"="1", [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* noalias readonly "unpacked"="2", [128 x [512 x [1 x [1 x i16]]]]* noalias "unpacked"="3", [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="4", [128 x i16]* noalias nocapture align 512 "unpacked"="5.0", [128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* noalias readonly "unpacked"="6", [128 x [128 x [3 x [3 x i16]]]]* noalias "unpacked"="7", [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="8", [128 x i16]* noalias nocapture align 512 "unpacked"="9.0", [512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* noalias readonly "unpacked"="10", [512 x [128 x [1 x [1 x i16]]]]* noalias "unpacked"="11", [512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="12", [512 x i16]* noalias nocapture align 512 "unpacked"="13.0", [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly "unpacked"="14", [512 x [92 x [160 x i16]]]* noalias "unpacked"="15") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a512a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.89"([512 x [92 x [160 x i16]]]* %1, [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %0)
  call fastcc void @"onebyonecpy_hls.p0a128a512a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([128 x [512 x [1 x [1 x i16]]]]* %3, [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %2)
  call fastcc void @"onebyonecpy_hls.p0a128struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([128 x i16]* align 512 %5, [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %4)
  call fastcc void @"onebyonecpy_hls.p0a128a128a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.145"([128 x [128 x [3 x [3 x i16]]]]* %7, [128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %6)
  call fastcc void @"onebyonecpy_hls.p0a128struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([128 x i16]* align 512 %9, [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %8)
  call fastcc void @"onebyonecpy_hls.p0a512a128a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([512 x [128 x [1 x [1 x i16]]]]* %11, [512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %10)
  call fastcc void @"onebyonecpy_hls.p0a512struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([512 x i16]* align 512 %13, [512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %12)
  call fastcc void @"onebyonecpy_hls.p0a512a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.89"([512 x [92 x [160 x i16]]]* %15, [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %14)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %dst, [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %src, null
  %1 = icmp eq [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]], [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]], [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst.addr, [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src.addr, i64 160)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, null
  %1 = icmp eq [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %3, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a128a512a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([128 x [512 x [1 x [1 x i16]]]]* noalias %dst, [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* noalias readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [128 x [512 x [1 x [1 x i16]]]]* %dst, null
  %1 = icmp eq [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a128a512a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([128 x [512 x [1 x [1 x i16]]]]* nonnull %dst, [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* nonnull %src, i64 128)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a128a512a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([128 x [512 x [1 x [1 x i16]]]]* %dst, [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %src, null
  %1 = icmp eq [128 x [512 x [1 x [1 x i16]]]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [128 x [512 x [1 x [1 x i16]]]], [128 x [512 x [1 x [1 x i16]]]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]], [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a512a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([512 x [1 x [1 x i16]]]* %3, [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %src.addr, i64 512)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a512a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([512 x [1 x [1 x i16]]]* %dst, [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %src, null
  %1 = icmp eq [512 x [1 x [1 x i16]]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [512 x [1 x [1 x i16]]], [512 x [1 x [1 x i16]]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]], [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([1 x [1 x i16]]* %3, [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %src.addr, i64 1)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, null
  %1 = icmp eq [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %3, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a128a128a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* noalias %dst, [128 x [128 x [3 x [3 x i16]]]]* noalias readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %dst, null
  %1 = icmp eq [128 x [128 x [3 x [3 x i16]]]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a128a128a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* nonnull %dst, [128 x [128 x [3 x [3 x i16]]]]* nonnull %src, i64 128)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a128a128a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %dst, [128 x [128 x [3 x [3 x i16]]]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [128 x [128 x [3 x [3 x i16]]]]* %src, null
  %1 = icmp eq [128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]], [128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [128 x [128 x [3 x [3 x i16]]]], [128 x [128 x [3 x [3 x i16]]]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a128a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %dst.addr, [128 x [3 x [3 x i16]]]* %3, i64 128)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a128a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %dst, [128 x [3 x [3 x i16]]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [128 x [3 x [3 x i16]]]* %src, null
  %1 = icmp eq [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]], [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [128 x [3 x [3 x i16]]], [128 x [3 x [3 x i16]]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %dst.addr, [3 x [3 x i16]]* %3, i64 3)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %dst, [3 x [3 x i16]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [3 x [3 x i16]]* %src, null
  %1 = icmp eq [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]], [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [3 x [3 x i16]], [3 x [3 x i16]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst.addr, [3 x i16]* %3, i64 3)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, [3 x i16]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [3 x i16]* %src, null
  %1 = icmp eq [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [3 x i16], [3 x i16]* %src, i64 0, i64 %for.loop.idx8
  %dst.addr.0.0.06 = getelementptr [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %4 = load i16, i16* %3, align 2
  store i16 %4, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a512a128a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([512 x [128 x [1 x [1 x i16]]]]* noalias %dst, [512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* noalias readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [512 x [128 x [1 x [1 x i16]]]]* %dst, null
  %1 = icmp eq [512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a512a128a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([512 x [128 x [1 x [1 x i16]]]]* nonnull %dst, [512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* nonnull %src, i64 512)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a512a128a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([512 x [128 x [1 x [1 x i16]]]]* %dst, [512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %src, null
  %1 = icmp eq [512 x [128 x [1 x [1 x i16]]]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [512 x [128 x [1 x [1 x i16]]]], [512 x [128 x [1 x [1 x i16]]]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]], [512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a128a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([128 x [1 x [1 x i16]]]* %3, [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %src.addr, i64 128)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a128a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([128 x [1 x [1 x i16]]]* %dst, [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %src, null
  %1 = icmp eq [128 x [1 x [1 x i16]]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [128 x [1 x [1 x i16]]], [128 x [1 x [1 x i16]]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]], [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([1 x [1 x i16]]* %3, [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %src.addr, i64 1)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a512struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([512 x i16]* noalias nocapture align 512 "unpacked"="0.0" %dst, [512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a512struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([512 x i16]* %dst, [512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 512)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a512struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([512 x i16]* nocapture "unpacked"="0.0" %dst, [512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [512 x i16], [512 x i16]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias "unpacked"="0", [512 x [92 x [160 x i16]]]* noalias readonly "unpacked"="1", [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* noalias "unpacked"="2", [128 x [512 x [1 x [1 x i16]]]]* noalias readonly "unpacked"="3", [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="4", [128 x i16]* noalias nocapture readonly align 512 "unpacked"="5.0", [128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* noalias "unpacked"="6", [128 x [128 x [3 x [3 x i16]]]]* noalias readonly "unpacked"="7", [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="8", [128 x i16]* noalias nocapture readonly align 512 "unpacked"="9.0", [512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* noalias "unpacked"="10", [512 x [128 x [1 x [1 x i16]]]]* noalias readonly "unpacked"="11", [512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="12", [512 x i16]* noalias nocapture readonly align 512 "unpacked"="13.0", [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias "unpacked"="14", [512 x [92 x [160 x i16]]]* noalias readonly "unpacked"="15") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a512a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %0, [512 x [92 x [160 x i16]]]* %1)
  call fastcc void @"onebyonecpy_hls.p0a128a512a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.167"([128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %2, [128 x [512 x [1 x [1 x i16]]]]* %3)
  call fastcc void @"onebyonecpy_hls.p0a128struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.59"([128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %4, [128 x i16]* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0a128a128a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %6, [128 x [128 x [3 x [3 x i16]]]]* %7)
  call fastcc void @"onebyonecpy_hls.p0a128struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.59"([128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %8, [128 x i16]* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0a512a128a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.115"([512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %10, [512 x [128 x [1 x [1 x i16]]]]* %11)
  call fastcc void @"onebyonecpy_hls.p0a512struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.42"([512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %12, [512 x i16]* align 512 %13)
  call fastcc void @"onebyonecpy_hls.p0a512a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %14, [512 x [92 x [160 x i16]]]* %15)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a512struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.42"([512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0" %dst, [512 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a512struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.45"([512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, [512 x i16]* %src, i64 512)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a512struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.45"([512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [512 x i16]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [512 x i16], [512 x i16]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a128struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([128 x i16]* noalias nocapture align 512 "unpacked"="0.0" %dst, [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a128struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.55"([128 x i16]* %dst, [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 128)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a128struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.55"([128 x i16]* nocapture "unpacked"="0.0" %dst, [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [128 x i16], [128 x i16]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a128struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.59"([128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0" %dst, [128 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a128struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.62"([128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, [128 x i16]* %src, i64 128)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a128struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.62"([128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [128 x i16]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [128 x i16], [128 x i16]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a512a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.89"([512 x [92 x [160 x i16]]]* noalias %dst, [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [512 x [92 x [160 x i16]]]* %dst, null
  %1 = icmp eq [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a512a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.92"([512 x [92 x [160 x i16]]]* nonnull %dst, [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* nonnull %src, i64 512)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a512a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.92"([512 x [92 x [160 x i16]]]* %dst, [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %src, null
  %1 = icmp eq [512 x [92 x [160 x i16]]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [512 x [92 x [160 x i16]]], [512 x [92 x [160 x i16]]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]], [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.95"([92 x [160 x i16]]* %3, [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %src.addr, i64 92)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.95"([92 x [160 x i16]]* %dst, [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %src, null
  %1 = icmp eq [92 x [160 x i16]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [92 x [160 x i16]], [92 x [160 x i16]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]], [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.98"([160 x i16]* %3, [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src.addr, i64 160)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.98"([160 x i16]* %dst, [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, null
  %1 = icmp eq [160 x i16]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = getelementptr [160 x i16], [160 x i16]* %dst, i64 0, i64 %for.loop.idx8
  %4 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %4, i16* %3, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a512a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias %dst, [512 x [92 x [160 x i16]]]* noalias readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %dst, null
  %1 = icmp eq [512 x [92 x [160 x i16]]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a512a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.105"([512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* nonnull %dst, [512 x [92 x [160 x i16]]]* nonnull %src, i64 512)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a512a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.105"([512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %dst, [512 x [92 x [160 x i16]]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [512 x [92 x [160 x i16]]]* %src, null
  %1 = icmp eq [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]], [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [512 x [92 x [160 x i16]]], [512 x [92 x [160 x i16]]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.108"([92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %dst.addr, [92 x [160 x i16]]* %3, i64 92)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.108"([92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %dst, [92 x [160 x i16]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [92 x [160 x i16]]* %src, null
  %1 = icmp eq [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]], [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [92 x [160 x i16]], [92 x [160 x i16]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.111"([160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst.addr, [160 x i16]* %3, i64 160)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.111"([160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, [160 x i16]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [160 x i16]* %src, null
  %1 = icmp eq [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [160 x i16], [160 x i16]* %src, i64 0, i64 %for.loop.idx8
  %dst.addr.0.0.06 = getelementptr [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %4 = load i16, i16* %3, align 2
  store i16 %4, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a512a128a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.115"([512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* noalias %dst, [512 x [128 x [1 x [1 x i16]]]]* noalias readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %dst, null
  %1 = icmp eq [512 x [128 x [1 x [1 x i16]]]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a512a128a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.118"([512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* nonnull %dst, [512 x [128 x [1 x [1 x i16]]]]* nonnull %src, i64 512)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a512a128a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.118"([512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %dst, [512 x [128 x [1 x [1 x i16]]]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [512 x [128 x [1 x [1 x i16]]]]* %src, null
  %1 = icmp eq [512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]], [512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [512 x [128 x [1 x [1 x i16]]]], [512 x [128 x [1 x [1 x i16]]]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a128a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.121"([128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %dst.addr, [128 x [1 x [1 x i16]]]* %3, i64 128)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a128a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.121"([128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %dst, [128 x [1 x [1 x i16]]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [128 x [1 x [1 x i16]]]* %src, null
  %1 = icmp eq [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]], [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [128 x [1 x [1 x i16]]], [128 x [1 x [1 x i16]]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.124"([1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %dst.addr, [1 x [1 x i16]]* %3, i64 1)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.124"([1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %dst, [1 x [1 x i16]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [1 x [1 x i16]]* %src, null
  %1 = icmp eq [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]], [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [1 x [1 x i16]], [1 x [1 x i16]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.127"([1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst.addr, [1 x i16]* %3, i64 1)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.127"([1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, [1 x i16]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [1 x i16]* %src, null
  %1 = icmp eq [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [1 x i16], [1 x i16]* %src, i64 0, i64 %for.loop.idx8
  %dst.addr.0.0.06 = getelementptr [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %4 = load i16, i16* %3, align 2
  store i16 %4, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([1 x [1 x i16]]* %dst, [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %src, null
  %1 = icmp eq [1 x [1 x i16]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [1 x [1 x i16]], [1 x [1 x i16]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]], [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.137"([1 x i16]* %3, [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src.addr, i64 1)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.137"([1 x i16]* %dst, [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, null
  %1 = icmp eq [1 x i16]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = getelementptr [1 x i16], [1 x i16]* %dst, i64 0, i64 %for.loop.idx8
  %4 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %4, i16* %3, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a128a128a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.145"([128 x [128 x [3 x [3 x i16]]]]* noalias %dst, [128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* noalias readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [128 x [128 x [3 x [3 x i16]]]]* %dst, null
  %1 = icmp eq [128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a128a128a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.148"([128 x [128 x [3 x [3 x i16]]]]* nonnull %dst, [128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* nonnull %src, i64 128)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a128a128a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.148"([128 x [128 x [3 x [3 x i16]]]]* %dst, [128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %src, null
  %1 = icmp eq [128 x [128 x [3 x [3 x i16]]]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [128 x [128 x [3 x [3 x i16]]]], [128 x [128 x [3 x [3 x i16]]]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]], [128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a128a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.151"([128 x [3 x [3 x i16]]]* %3, [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %src.addr, i64 128)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a128a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.151"([128 x [3 x [3 x i16]]]* %dst, [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %src, null
  %1 = icmp eq [128 x [3 x [3 x i16]]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [128 x [3 x [3 x i16]]], [128 x [3 x [3 x i16]]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]], [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.154"([3 x [3 x i16]]* %3, [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %src.addr, i64 3)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a3a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.154"([3 x [3 x i16]]* %dst, [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %src, null
  %1 = icmp eq [3 x [3 x i16]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [3 x [3 x i16]], [3 x [3 x i16]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]], [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.157"([3 x i16]* %3, [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src.addr, i64 3)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a3struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.157"([3 x i16]* %dst, [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, null
  %1 = icmp eq [3 x i16]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = getelementptr [3 x i16], [3 x i16]* %dst, i64 0, i64 %for.loop.idx8
  %4 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %4, i16* %3, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a128a512a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.167"([128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* noalias %dst, [128 x [512 x [1 x [1 x i16]]]]* noalias readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %dst, null
  %1 = icmp eq [128 x [512 x [1 x [1 x i16]]]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a128a512a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.170"([128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* nonnull %dst, [128 x [512 x [1 x [1 x i16]]]]* nonnull %src, i64 128)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a128a512a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.170"([128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %dst, [128 x [512 x [1 x [1 x i16]]]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [128 x [512 x [1 x [1 x i16]]]]* %src, null
  %1 = icmp eq [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]], [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [128 x [512 x [1 x [1 x i16]]]], [128 x [512 x [1 x [1 x i16]]]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a512a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.173"([512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %dst.addr, [512 x [1 x [1 x i16]]]* %3, i64 512)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a512a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.173"([512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %dst, [512 x [1 x [1 x i16]]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [512 x [1 x [1 x i16]]]* %src, null
  %1 = icmp eq [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]], [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [512 x [1 x [1 x i16]]], [512 x [1 x [1 x i16]]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.124"([1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %dst.addr, [1 x [1 x i16]]* %3, i64 1)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_layer_top_hw([512 x [92 x [160 x i16]]]*, [128 x [512 x [1 x [1 x i16]]]]*, [128 x i16]*, [128 x [128 x [3 x [3 x i16]]]]*, [128 x i16]*, [512 x [128 x [1 x [1 x i16]]]]*, [512 x i16]*, [512 x [92 x [160 x i16]]]*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias "unpacked"="0", [512 x [92 x [160 x i16]]]* noalias readonly "unpacked"="1", [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* noalias "unpacked"="2", [128 x [512 x [1 x [1 x i16]]]]* noalias readonly "unpacked"="3", [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="4", [128 x i16]* noalias nocapture readonly align 512 "unpacked"="5.0", [128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* noalias "unpacked"="6", [128 x [128 x [3 x [3 x i16]]]]* noalias readonly "unpacked"="7", [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="8", [128 x i16]* noalias nocapture readonly align 512 "unpacked"="9.0", [512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* noalias "unpacked"="10", [512 x [128 x [1 x [1 x i16]]]]* noalias readonly "unpacked"="11", [512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="12", [512 x i16]* noalias nocapture readonly align 512 "unpacked"="13.0", [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias "unpacked"="14", [512 x [92 x [160 x i16]]]* noalias readonly "unpacked"="15") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a512a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %14, [512 x [92 x [160 x i16]]]* %15)
  ret void
}

define void @layer_top_hw_stub_wrapper([512 x [92 x [160 x i16]]]*, [128 x [512 x [1 x [1 x i16]]]]*, [128 x i16]*, [128 x [128 x [3 x [3 x i16]]]]*, [128 x i16]*, [512 x [128 x [1 x [1 x i16]]]]*, [512 x i16]*, [512 x [92 x [160 x i16]]]*) #5 {
entry:
  %malloccall = tail call i8* @malloc(i64 15073280)
  %8 = bitcast i8* %malloccall to [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]*
  %malloccall1 = tail call i8* @malloc(i64 131072)
  %9 = bitcast i8* %malloccall1 to [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]*
  %10 = alloca [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]
  %malloccall2 = tail call i8* @malloc(i64 294912)
  %11 = bitcast i8* %malloccall2 to [128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]*
  %12 = alloca [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]
  %malloccall3 = tail call i8* @malloc(i64 131072)
  %13 = bitcast i8* %malloccall3 to [512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]*
  %14 = alloca [512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]
  %malloccall4 = tail call i8* @malloc(i64 15073280)
  %15 = bitcast i8* %malloccall4 to [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]*
  call void @copy_out([512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %8, [512 x [92 x [160 x i16]]]* %0, [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %9, [128 x [512 x [1 x [1 x i16]]]]* %1, [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %10, [128 x i16]* %2, [128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %11, [128 x [128 x [3 x [3 x i16]]]]* %3, [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %12, [128 x i16]* %4, [512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %13, [512 x [128 x [1 x [1 x i16]]]]* %5, [512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %14, [512 x i16]* %6, [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %15, [512 x [92 x [160 x i16]]]* %7)
  %16 = bitcast [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %8 to [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]*
  %17 = bitcast [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %9 to [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]*
  %18 = bitcast [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %10 to %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"*
  %19 = bitcast [128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %11 to [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]*
  %20 = bitcast [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %12 to %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"*
  %21 = bitcast [512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %13 to [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]*
  %22 = bitcast [512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %14 to %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"*
  %23 = bitcast [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %15 to [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]*
  call void @layer_top_hw_stub([92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %16, [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %17, %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* %18, [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %19, %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* %20, [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %21, %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* %22, [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %23)
  call void @copy_in([512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %8, [512 x [92 x [160 x i16]]]* %0, [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %9, [128 x [512 x [1 x [1 x i16]]]]* %1, [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %10, [128 x i16]* %2, [128 x [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %11, [128 x [128 x [3 x [3 x i16]]]]* %3, [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %12, [128 x i16]* %4, [512 x [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %13, [512 x [128 x [1 x [1 x i16]]]]* %5, [512 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %14, [512 x i16]* %6, [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %15, [512 x [92 x [160 x i16]]]* %7)
  ret void
}

declare void @layer_top_hw_stub([92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]*, [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]*, %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"*, [128 x [3 x [3 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]*, %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"*, [128 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]*, %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"*, [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
