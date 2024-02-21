; ModuleID = 'obj\Release\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Release\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [154 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 69
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 28
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 63
	i32 122350210, ; 3: System.Threading.Channels.dll => 0x74aea82 => 40
	i32 182336117, ; 4: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 59
	i32 221063263, ; 5: Microsoft.AspNetCore.Http.Connections.Client => 0xd2d285f => 6
	i32 230752869, ; 6: Microsoft.CSharp.dll => 0xdc10265 => 14
	i32 232815796, ; 7: System.Web.Services => 0xde07cb4 => 72
	i32 318968648, ; 8: Xamarin.AndroidX.Activity.dll => 0x13031348 => 43
	i32 321597661, ; 9: System.Numerics => 0x132b30dd => 36
	i32 342366114, ; 10: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 53
	i32 348048101, ; 11: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x14becae5 => 7
	i32 442521989, ; 12: Xamarin.Essentials => 0x1a605985 => 62
	i32 450948140, ; 13: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 51
	i32 458494020, ; 14: Microsoft.AspNetCore.SignalR.Common.dll => 0x1b541044 => 10
	i32 465846621, ; 15: mscorlib => 0x1bc4415d => 27
	i32 469710990, ; 16: System.dll => 0x1bff388e => 33
	i32 485463106, ; 17: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 22
	i32 513247710, ; 18: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 21
	i32 539058512, ; 19: Microsoft.Extensions.Logging => 0x20216150 => 19
	i32 548916678, ; 20: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 12
	i32 560083305, ; 21: StockView.dll => 0x21623169 => 29
	i32 627609679, ; 22: Xamarin.AndroidX.CustomView => 0x2568904f => 49
	i32 662205335, ; 23: System.Text.Encodings.Web.dll => 0x27787397 => 38
	i32 690569205, ; 24: System.Xml.Linq.dll => 0x29293ff5 => 42
	i32 789151979, ; 25: Microsoft.Extensions.Options => 0x2f0980eb => 20
	i32 809851609, ; 26: System.Drawing.Common.dll => 0x30455ad9 => 71
	i32 832711436, ; 27: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x31a22b0c => 11
	i32 928116545, ; 28: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 69
	i32 955402788, ; 29: Newtonsoft.Json => 0x38f24a24 => 28
	i32 967690846, ; 30: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 53
	i32 974778368, ; 31: FormsViewGroup.dll => 0x3a19f000 => 3
	i32 1012816738, ; 32: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 58
	i32 1028951442, ; 33: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 15
	i32 1035644815, ; 34: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 45
	i32 1042160112, ; 35: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 66
	i32 1052210849, ; 36: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 55
	i32 1058641855, ; 37: Microsoft.AspNetCore.Http.Connections.Common => 0x3f1997bf => 7
	i32 1098259244, ; 38: System => 0x41761b2c => 33
	i32 1233093933, ; 39: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0x497f852d => 8
	i32 1293217323, ; 40: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 50
	i32 1365406463, ; 41: System.ServiceModel.Internals.dll => 0x516272ff => 73
	i32 1376866003, ; 42: Xamarin.AndroidX.SavedState => 0x52114ed3 => 58
	i32 1406073936, ; 43: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 47
	i32 1411638395, ; 44: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 37
	i32 1414043276, ; 45: Microsoft.AspNetCore.Connections.Abstractions.dll => 0x5448968c => 5
	i32 1460219004, ; 46: Xamarin.Forms.Xaml => 0x57092c7c => 67
	i32 1460893475, ; 47: System.IdentityModel.Tokens.Jwt => 0x57137723 => 34
	i32 1469204771, ; 48: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 44
	i32 1470490898, ; 49: Microsoft.Extensions.Primitives => 0x57a5e912 => 21
	i32 1498168481, ; 50: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 23
	i32 1592978981, ; 51: System.Runtime.Serialization.dll => 0x5ef2ee25 => 2
	i32 1622152042, ; 52: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 56
	i32 1639515021, ; 53: System.Net.Http.dll => 0x61b9038d => 1
	i32 1658251792, ; 54: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 68
	i32 1729485958, ; 55: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 46
	i32 1746115085, ; 56: System.IO.Pipelines.dll => 0x68139a0d => 35
	i32 1766324549, ; 57: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 59
	i32 1770582343, ; 58: Microsoft.Extensions.Logging.dll => 0x6988f147 => 19
	i32 1776026572, ; 59: System.Core.dll => 0x69dc03cc => 31
	i32 1788241197, ; 60: Xamarin.AndroidX.Fragment => 0x6a96652d => 51
	i32 1796167890, ; 61: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 12
	i32 1808609942, ; 62: Xamarin.AndroidX.Loader => 0x6bcd3296 => 56
	i32 1813201214, ; 63: Xamarin.Google.Android.Material => 0x6c13413e => 68
	i32 1828688058, ; 64: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 18
	i32 1867746548, ; 65: Xamarin.Essentials.dll => 0x6f538cf4 => 62
	i32 1878053835, ; 66: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 67
	i32 1932718519, ; 67: Microsoft.Bcl.TimeProvider => 0x7332f1b7 => 13
	i32 1945717188, ; 68: Microsoft.AspNetCore.SignalR.Client.Core => 0x73f949c4 => 8
	i32 1967334205, ; 69: Microsoft.AspNetCore.SignalR.Common => 0x7543233d => 10
	i32 1986222447, ; 70: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 25
	i32 2011961780, ; 71: System.Buffers.dll => 0x77ec19b4 => 30
	i32 2019465201, ; 72: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 55
	i32 2055257422, ; 73: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 54
	i32 2097448633, ; 74: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 52
	i32 2113902067, ; 75: Xamarin.Forms.PancakeView.dll => 0x7dff95f3 => 64
	i32 2126786730, ; 76: Xamarin.Forms.Platform.Android => 0x7ec430aa => 65
	i32 2181898931, ; 77: Microsoft.Extensions.Options.dll => 0x820d22b3 => 20
	i32 2192057212, ; 78: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 18
	i32 2201231467, ; 79: System.Net.Http => 0x8334206b => 1
	i32 2229158877, ; 80: Microsoft.Extensions.Features.dll => 0x84de43dd => 17
	i32 2279755925, ; 81: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 57
	i32 2319144366, ; 82: Microsoft.AspNetCore.SignalR.Client => 0x8a3b55ae => 9
	i32 2369706906, ; 83: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 24
	i32 2397082276, ; 84: Xamarin.Forms.PancakeView => 0x8ee092a4 => 64
	i32 2435904999, ; 85: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 75
	i32 2475788418, ; 86: Java.Interop.dll => 0x93918882 => 4
	i32 2562349572, ; 87: Microsoft.CSharp => 0x98ba5a04 => 14
	i32 2570120770, ; 88: System.Text.Encodings.Web => 0x9930ee42 => 38
	i32 2631449489, ; 89: StockView => 0x9cd8bb91 => 29
	i32 2637500010, ; 90: Microsoft.Extensions.Features => 0x9d350e6a => 17
	i32 2640290731, ; 91: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 24
	i32 2732626843, ; 92: Xamarin.AndroidX.Activity => 0xa2e0939b => 43
	i32 2735172069, ; 93: System.Threading.Channels => 0xa30769e5 => 40
	i32 2737747696, ; 94: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 44
	i32 2766581644, ; 95: Xamarin.Forms.Core => 0xa4e6af8c => 63
	i32 2778768386, ; 96: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 60
	i32 2810250172, ; 97: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 47
	i32 2819470561, ; 98: System.Xml.dll => 0xa80db4e1 => 41
	i32 2853208004, ; 99: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 60
	i32 2875347124, ; 100: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xab6250b4 => 6
	i32 2905242038, ; 101: mscorlib.dll => 0xad2a79b6 => 27
	i32 2978675010, ; 102: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 50
	i32 3044182254, ; 103: FormsViewGroup => 0xb57288ee => 3
	i32 3084678329, ; 104: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 25
	i32 3111772706, ; 105: System.Runtime.Serialization => 0xb979e222 => 2
	i32 3124832203, ; 106: System.Threading.Tasks.Extensions => 0xba4127cb => 74
	i32 3204380047, ; 107: System.Data.dll => 0xbefef58f => 70
	i32 3247949154, ; 108: Mono.Security => 0xc197c562 => 76
	i32 3258312781, ; 109: Xamarin.AndroidX.CardView => 0xc235e84d => 46
	i32 3265893370, ; 110: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 74
	i32 3312457198, ; 111: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 23
	i32 3317135071, ; 112: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 49
	i32 3317144872, ; 113: System.Data => 0xc5b79d28 => 70
	i32 3353484488, ; 114: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 52
	i32 3353544232, ; 115: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 61
	i32 3358260929, ; 116: System.Text.Json => 0xc82afec1 => 39
	i32 3362522851, ; 117: Xamarin.AndroidX.Core => 0xc86c06e3 => 48
	i32 3366347497, ; 118: Java.Interop => 0xc8a662e9 => 4
	i32 3374999561, ; 119: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 57
	i32 3395150330, ; 120: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 37
	i32 3404865022, ; 121: System.ServiceModel.Internals => 0xcaf21dfe => 73
	i32 3407215217, ; 122: Xamarin.CommunityToolkit => 0xcb15fa71 => 61
	i32 3428513518, ; 123: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 16
	i32 3429136800, ; 124: System.Xml => 0xcc6479a0 => 41
	i32 3466904072, ; 125: Microsoft.AspNetCore.SignalR.Client.dll => 0xcea4c208 => 9
	i32 3476120550, ; 126: Mono.Android => 0xcf3163e6 => 26
	i32 3485117614, ; 127: System.Text.Json.dll => 0xcfbaacae => 39
	i32 3509114376, ; 128: System.Xml.Linq => 0xd128d608 => 42
	i32 3536029504, ; 129: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 65
	i32 3632359727, ; 130: Xamarin.Forms.Platform => 0xd881692f => 66
	i32 3641597786, ; 131: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 54
	i32 3645089577, ; 132: System.ComponentModel.DataAnnotations => 0xd943a729 => 75
	i32 3672681054, ; 133: Mono.Android.dll => 0xdae8aa5e => 26
	i32 3676310014, ; 134: System.Web.Services.dll => 0xdb2009fe => 72
	i32 3689375977, ; 135: System.Drawing.Common => 0xdbe768e9 => 71
	i32 3691870036, ; 136: Microsoft.AspNetCore.SignalR.Protocols.Json => 0xdc0d7754 => 11
	i32 3700591436, ; 137: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 22
	i32 3716402725, ; 138: StockView.Android.dll => 0xdd83ce25 => 0
	i32 3748608112, ; 139: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 32
	i32 3787005001, ; 140: Microsoft.AspNetCore.Connections.Abstractions => 0xe1b91c49 => 5
	i32 3829621856, ; 141: System.Numerics.dll => 0xe4436460 => 36
	i32 3841636137, ; 142: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 15
	i32 3896760992, ; 143: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 48
	i32 3955647286, ; 144: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 45
	i32 4017318820, ; 145: Microsoft.Bcl.TimeProvider.dll => 0xef736ba4 => 13
	i32 4023392905, ; 146: System.IO.Pipelines => 0xefd01a89 => 35
	i32 4035605195, ; 147: StockView.Android => 0xf08a72cb => 0
	i32 4105002889, ; 148: Mono.Security.dll => 0xf4ad5f89 => 76
	i32 4126470640, ; 149: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 16
	i32 4151237749, ; 150: System.Core => 0xf76edc75 => 31
	i32 4213026141, ; 151: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 32
	i32 4260525087, ; 152: System.Buffers => 0xfdf2741f => 30
	i32 4263231520 ; 153: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 34
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [154 x i32] [
	i32 69, i32 28, i32 63, i32 40, i32 59, i32 6, i32 14, i32 72, ; 0..7
	i32 43, i32 36, i32 53, i32 7, i32 62, i32 51, i32 10, i32 27, ; 8..15
	i32 33, i32 22, i32 21, i32 19, i32 12, i32 29, i32 49, i32 38, ; 16..23
	i32 42, i32 20, i32 71, i32 11, i32 69, i32 28, i32 53, i32 3, ; 24..31
	i32 58, i32 15, i32 45, i32 66, i32 55, i32 7, i32 33, i32 8, ; 32..39
	i32 50, i32 73, i32 58, i32 47, i32 37, i32 5, i32 67, i32 34, ; 40..47
	i32 44, i32 21, i32 23, i32 2, i32 56, i32 1, i32 68, i32 46, ; 48..55
	i32 35, i32 59, i32 19, i32 31, i32 51, i32 12, i32 56, i32 68, ; 56..63
	i32 18, i32 62, i32 67, i32 13, i32 8, i32 10, i32 25, i32 30, ; 64..71
	i32 55, i32 54, i32 52, i32 64, i32 65, i32 20, i32 18, i32 1, ; 72..79
	i32 17, i32 57, i32 9, i32 24, i32 64, i32 75, i32 4, i32 14, ; 80..87
	i32 38, i32 29, i32 17, i32 24, i32 43, i32 40, i32 44, i32 63, ; 88..95
	i32 60, i32 47, i32 41, i32 60, i32 6, i32 27, i32 50, i32 3, ; 96..103
	i32 25, i32 2, i32 74, i32 70, i32 76, i32 46, i32 74, i32 23, ; 104..111
	i32 49, i32 70, i32 52, i32 61, i32 39, i32 48, i32 4, i32 57, ; 112..119
	i32 37, i32 73, i32 61, i32 16, i32 41, i32 9, i32 26, i32 39, ; 120..127
	i32 42, i32 65, i32 66, i32 54, i32 75, i32 26, i32 72, i32 71, ; 128..135
	i32 11, i32 22, i32 0, i32 32, i32 5, i32 36, i32 15, i32 48, ; 136..143
	i32 45, i32 13, i32 35, i32 0, i32 76, i32 16, i32 31, i32 32, ; 144..151
	i32 30, i32 34 ; 152..153
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
