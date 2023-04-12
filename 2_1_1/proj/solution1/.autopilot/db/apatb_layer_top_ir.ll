; ModuleID = '/nethome/rsamanta9/QDTrack/2_1_1/proj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 3, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 3, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: noinline
define void @apatb_layer_top_ir([92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="512" %input_feature_map, [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="128" %layer_weights, %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="128" %layer_bias, [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* noalias nocapture nonnull "fpga.decayed.dim.hint"="128" %output_feature_map) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 15073280)
  %input_feature_map_copy = bitcast i8* %malloccall to [512 x [92 x [160 x i16]]]*
  %malloccall1 = call i8* @malloc(i64 131072)
  %layer_weights_copy = bitcast i8* %malloccall1 to [128 x [512 x [1 x [1 x i16]]]]*
  %layer_bias_copy = alloca [128 x i16], align 512
  %malloccall2 = call i8* @malloc(i64 3768320)
  %output_feature_map_copy = bitcast i8* %malloccall2 to [128 x [92 x [160 x i16]]]*
  %0 = bitcast [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %input_feature_map to [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]*
  %1 = bitcast [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %layer_weights to [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]*
  %2 = bitcast %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* %layer_bias to [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]*
  %3 = bitcast [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %output_feature_map to [128 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]*
  call fastcc void @copy_in([512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* nonnull %0, [512 x [92 x [160 x i16]]]* %input_feature_map_copy, [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* nonnull %1, [128 x [512 x [1 x [1 x i16]]]]* %layer_weights_copy, [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* nonnull %2, [128 x i16]* nonnull align 512 %layer_bias_copy, [128 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* nonnull %3, [128 x [92 x [160 x i16]]]* %output_feature_map_copy)
  %4 = getelementptr [512 x [92 x [160 x i16]]], [512 x [92 x [160 x i16]]]* %input_feature_map_copy, i32 0, i32 0
  %5 = getelementptr [128 x [512 x [1 x [1 x i16]]]], [128 x [512 x [1 x [1 x i16]]]]* %layer_weights_copy, i32 0, i32 0
  %6 = getelementptr [128 x i16], [128 x i16]* %layer_bias_copy, i32 0, i32 0
  %7 = getelementptr [128 x [92 x [160 x i16]]], [128 x [92 x [160 x i16]]]* %output_feature_map_copy, i32 0, i32 0
  call void @apatb_layer_top_hw([92 x [160 x i16]]* %4, [512 x [1 x [1 x i16]]]* %5, i16* %6, [92 x [160 x i16]]* %7)
  call void @copy_back([512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %0, [512 x [92 x [160 x i16]]]* %input_feature_map_copy, [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %1, [128 x [512 x [1 x [1 x i16]]]]* %layer_weights_copy, [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %2, [128 x i16]* %layer_bias_copy, [128 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %3, [128 x [92 x [160 x i16]]]* %output_feature_map_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  call void @free(i8* %malloccall2)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly, [512 x [92 x [160 x i16]]]* noalias, [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* noalias readonly, [128 x [512 x [1 x [1 x i16]]]]* noalias, [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias readonly, [128 x i16]* noalias align 512, [128 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly, [128 x [92 x [160 x i16]]]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a512a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.46"([512 x [92 x [160 x i16]]]* %1, [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %0)
  call fastcc void @"onebyonecpy_hls.p0a128a512a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([128 x [512 x [1 x [1 x i16]]]]* %3, [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %2)
  call fastcc void @"onebyonecpy_hls.p0a128struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.32"([128 x i16]* align 512 %5, [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %4)
  call fastcc void @"onebyonecpy_hls.p0a128a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([128 x [92 x [160 x i16]]]* %7, [128 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a512a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias, [512 x [92 x [160 x i16]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %0, null
  %3 = icmp eq [512 x [92 x [160 x i16]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx25 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx324 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8, %for.loop2
  %for.loop.idx923 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8 ]
  %5 = getelementptr [512 x [92 x [160 x i16]]], [512 x [92 x [160 x i16]]]* %1, i64 0, i64 %for.loop.idx25, i64 %for.loop.idx324, i64 %for.loop.idx923
  %dst.addr11.0.0.022 = getelementptr [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]], [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %0, i64 0, i64 %for.loop.idx25, i64 %for.loop.idx324, i64 %for.loop.idx923, i32 0, i32 0, i32 0
  %6 = load i16, i16* %5, align 2
  store i16 %6, i16* %dst.addr11.0.0.022, align 2
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx923, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 160
  br i1 %exitcond, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx324, 1
  %exitcond26 = icmp ne i64 %for.loop.idx3.next, 92
  br i1 %exitcond26, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx25, 1
  %exitcond27 = icmp ne i64 %for.loop.idx.next, 512
  br i1 %exitcond27, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a128a512a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([128 x [512 x [1 x [1 x i16]]]]* noalias, [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [128 x [512 x [1 x [1 x i16]]]]* %0, null
  %3 = icmp eq [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx34 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop2.split, %for.loop
  %for.loop.idx333 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  %src.addr18.0.0.029 = getelementptr [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]], [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %1, i64 0, i64 %for.loop.idx34, i64 %for.loop.idx333, i64 0, i64 0, i32 0, i32 0, i32 0
  %5 = getelementptr [128 x [512 x [1 x [1 x i16]]]], [128 x [512 x [1 x [1 x i16]]]]* %0, i64 0, i64 %for.loop.idx34, i64 %for.loop.idx333, i64 0, i64 0
  %6 = load i16, i16* %src.addr18.0.0.029, align 2
  store i16 %6, i16* %5, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx333, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 512
  br i1 %exitcond, label %for.loop2.split, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx34, 1
  %exitcond35 = icmp ne i64 %for.loop.idx.next, 128
  br i1 %exitcond35, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a128struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias, [128 x i16]* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %0, null
  %3 = icmp eq [128 x i16]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = getelementptr [128 x i16], [128 x i16]* %1, i64 0, i64 %for.loop.idx7
  %dst.addr.0.0.06 = getelementptr [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %6 = load i16, i16* %5, align 2
  store i16 %6, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 128
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a128a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([128 x [92 x [160 x i16]]]* noalias, [128 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [128 x [92 x [160 x i16]]]* %0, null
  %3 = icmp eq [128 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx25 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx324 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8, %for.loop2
  %for.loop.idx923 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8 ]
  %src.addr12.0.0.021 = getelementptr [128 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]], [128 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %1, i64 0, i64 %for.loop.idx25, i64 %for.loop.idx324, i64 %for.loop.idx923, i32 0, i32 0, i32 0
  %5 = getelementptr [128 x [92 x [160 x i16]]], [128 x [92 x [160 x i16]]]* %0, i64 0, i64 %for.loop.idx25, i64 %for.loop.idx324, i64 %for.loop.idx923
  %6 = load i16, i16* %src.addr12.0.0.021, align 2
  store i16 %6, i16* %5, align 2
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx923, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 160
  br i1 %exitcond, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx324, 1
  %exitcond26 = icmp ne i64 %for.loop.idx3.next, 92
  br i1 %exitcond26, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx25, 1
  %exitcond27 = icmp ne i64 %for.loop.idx.next, 128
  br i1 %exitcond27, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias, [512 x [92 x [160 x i16]]]* noalias readonly, [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* noalias, [128 x [512 x [1 x [1 x i16]]]]* noalias readonly, [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias, [128 x i16]* noalias readonly align 512, [128 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias, [128 x [92 x [160 x i16]]]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a512a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %0, [512 x [92 x [160 x i16]]]* %1)
  call fastcc void @"onebyonecpy_hls.p0a128a512a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.39"([128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %2, [128 x [512 x [1 x [1 x i16]]]]* %3)
  call fastcc void @"onebyonecpy_hls.p0a128struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"([128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %4, [128 x i16]* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0a128a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.26"([128 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %6, [128 x [92 x [160 x i16]]]* %7)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a128a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.26"([128 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias, [128 x [92 x [160 x i16]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [128 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %0, null
  %3 = icmp eq [128 x [92 x [160 x i16]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx25 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx324 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8, %for.loop2
  %for.loop.idx923 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8 ]
  %5 = getelementptr [128 x [92 x [160 x i16]]], [128 x [92 x [160 x i16]]]* %1, i64 0, i64 %for.loop.idx25, i64 %for.loop.idx324, i64 %for.loop.idx923
  %dst.addr11.0.0.022 = getelementptr [128 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]], [128 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %0, i64 0, i64 %for.loop.idx25, i64 %for.loop.idx324, i64 %for.loop.idx923, i32 0, i32 0, i32 0
  %6 = load i16, i16* %5, align 2
  store i16 %6, i16* %dst.addr11.0.0.022, align 2
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx923, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 160
  br i1 %exitcond, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx324, 1
  %exitcond26 = icmp ne i64 %for.loop.idx3.next, 92
  br i1 %exitcond26, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx25, 1
  %exitcond27 = icmp ne i64 %for.loop.idx.next, 128
  br i1 %exitcond27, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a128struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.32"([128 x i16]* noalias align 512, [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [128 x i16]* %0, null
  %3 = icmp eq [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"], [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %5 = getelementptr [128 x i16], [128 x i16]* %0, i64 0, i64 %for.loop.idx7
  %6 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %6, i16* %5, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 128
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a128a512a1a1struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.39"([128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* noalias, [128 x [512 x [1 x [1 x i16]]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %0, null
  %3 = icmp eq [128 x [512 x [1 x [1 x i16]]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx34 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop2.split, %for.loop
  %for.loop.idx333 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  %5 = getelementptr [128 x [512 x [1 x [1 x i16]]]], [128 x [512 x [1 x [1 x i16]]]]* %1, i64 0, i64 %for.loop.idx34, i64 %for.loop.idx333, i64 0, i64 0
  %dst.addr17.0.0.030 = getelementptr [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]], [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %0, i64 0, i64 %for.loop.idx34, i64 %for.loop.idx333, i64 0, i64 0, i32 0, i32 0, i32 0
  %6 = load i16, i16* %5, align 2
  store i16 %6, i16* %dst.addr17.0.0.030, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx333, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 512
  br i1 %exitcond, label %for.loop2.split, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx34, 1
  %exitcond35 = icmp ne i64 %for.loop.idx.next, 128
  br i1 %exitcond35, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a512a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.46"([512 x [92 x [160 x i16]]]* noalias, [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [512 x [92 x [160 x i16]]]* %0, null
  %3 = icmp eq [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx25 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx324 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8, %for.loop2
  %for.loop.idx923 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8 ]
  %src.addr12.0.0.021 = getelementptr [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]], [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %1, i64 0, i64 %for.loop.idx25, i64 %for.loop.idx324, i64 %for.loop.idx923, i32 0, i32 0, i32 0
  %5 = getelementptr [512 x [92 x [160 x i16]]], [512 x [92 x [160 x i16]]]* %0, i64 0, i64 %for.loop.idx25, i64 %for.loop.idx324, i64 %for.loop.idx923
  %6 = load i16, i16* %src.addr12.0.0.021, align 2
  store i16 %6, i16* %5, align 2
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx923, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 160
  br i1 %exitcond, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx324, 1
  %exitcond26 = icmp ne i64 %for.loop.idx3.next, 92
  br i1 %exitcond26, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx25, 1
  %exitcond27 = icmp ne i64 %for.loop.idx.next, 512
  br i1 %exitcond27, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

declare void @apatb_layer_top_hw([92 x [160 x i16]]*, [512 x [1 x [1 x i16]]]*, i16*, [92 x [160 x i16]]*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias, [512 x [92 x [160 x i16]]]* noalias readonly, [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* noalias, [128 x [512 x [1 x [1 x i16]]]]* noalias readonly, [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* noalias, [128 x i16]* noalias readonly align 512, [128 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* noalias, [128 x [92 x [160 x i16]]]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a128a92a160struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>.26"([128 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %6, [128 x [92 x [160 x i16]]]* %7)
  ret void
}

define void @layer_top_hw_stub_wrapper([92 x [160 x i16]]*, [512 x [1 x [1 x i16]]]*, i16*, [92 x [160 x i16]]*) #4 {
entry:
  %malloccall = tail call i8* @malloc(i64 15073280)
  %4 = bitcast i8* %malloccall to [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]*
  %malloccall1 = tail call i8* @malloc(i64 131072)
  %5 = bitcast i8* %malloccall1 to [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]*
  %6 = alloca [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]
  %malloccall2 = tail call i8* @malloc(i64 3768320)
  %7 = bitcast i8* %malloccall2 to [128 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]*
  %8 = bitcast [92 x [160 x i16]]* %0 to [512 x [92 x [160 x i16]]]*
  %9 = bitcast [512 x [1 x [1 x i16]]]* %1 to [128 x [512 x [1 x [1 x i16]]]]*
  %10 = bitcast i16* %2 to [128 x i16]*
  %11 = bitcast [92 x [160 x i16]]* %3 to [128 x [92 x [160 x i16]]]*
  call void @copy_out([512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %4, [512 x [92 x [160 x i16]]]* %8, [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %5, [128 x [512 x [1 x [1 x i16]]]]* %9, [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %6, [128 x i16]* %10, [128 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %7, [128 x [92 x [160 x i16]]]* %11)
  %12 = bitcast [512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %4 to [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]*
  %13 = bitcast [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %5 to [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]*
  %14 = bitcast [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %6 to %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"*
  %15 = bitcast [128 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %7 to [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]*
  call void @layer_top_hw_stub([92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %12, [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %13, %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"* %14, [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]* %15)
  call void @copy_in([512 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %4, [512 x [92 x [160 x i16]]]* %8, [128 x [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]]* %5, [128 x [512 x [1 x [1 x i16]]]]* %9, [128 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]* %6, [128 x i16]* %10, [128 x [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]* %7, [128 x [92 x [160 x i16]]]* %11)
  ret void
}

declare void @layer_top_hw_stub([92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]*, [512 x [1 x [1 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]]*, %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"*, [92 x [160 x %"struct.ap_fixed<16, 3, AP_TRN, AP_WRAP, 0>"]]*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
