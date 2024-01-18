; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [244 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 76
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 107
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 29
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 101
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 90
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 90
	i32 122350210, ; 6: System.Threading.Channels.dll => 0x74aea82 => 44
	i32 159306688, ; 7: System.ComponentModel.Annotations => 0x97ed3c0 => 118
	i32 165246403, ; 8: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 57
	i32 182336117, ; 9: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 91
	i32 209399409, ; 10: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 55
	i32 221063263, ; 11: Microsoft.AspNetCore.Http.Connections.Client => 0xd2d285f => 7
	i32 230216969, ; 12: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 71
	i32 230752869, ; 13: Microsoft.CSharp.dll => 0xdc10265 => 15
	i32 232815796, ; 14: System.Web.Services => 0xde07cb4 => 115
	i32 261689757, ; 15: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 60
	i32 278686392, ; 16: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 75
	i32 280482487, ; 17: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 69
	i32 318968648, ; 18: Xamarin.AndroidX.Activity.dll => 0x13031348 => 47
	i32 321597661, ; 19: System.Numerics => 0x132b30dd => 38
	i32 342366114, ; 20: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 73
	i32 348048101, ; 21: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x14becae5 => 8
	i32 385762202, ; 22: System.Memory.dll => 0x16fe439a => 37
	i32 441335492, ; 23: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 59
	i32 442521989, ; 24: Xamarin.Essentials => 0x1a605985 => 100
	i32 450948140, ; 25: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 68
	i32 458494020, ; 26: Microsoft.AspNetCore.SignalR.Common.dll => 0x1b541044 => 11
	i32 465846621, ; 27: mscorlib => 0x1bc4415d => 28
	i32 469710990, ; 28: System.dll => 0x1bff388e => 34
	i32 476646585, ; 29: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 69
	i32 485463106, ; 30: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 23
	i32 486930444, ; 31: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 80
	i32 513247710, ; 32: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 22
	i32 526420162, ; 33: System.Transactions.dll => 0x1f6088c2 => 109
	i32 539058512, ; 34: Microsoft.Extensions.Logging => 0x20216150 => 20
	i32 548916678, ; 35: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 13
	i32 560083305, ; 36: StockView.dll => 0x21623169 => 30
	i32 577335427, ; 37: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 605376203, ; 38: System.IO.Compression.FileSystem => 0x24154ecb => 113
	i32 627609679, ; 39: Xamarin.AndroidX.CustomView => 0x2568904f => 64
	i32 662205335, ; 40: System.Text.Encodings.Web.dll => 0x27787397 => 42
	i32 663517072, ; 41: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 96
	i32 666292255, ; 42: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 52
	i32 690569205, ; 43: System.Xml.Linq.dll => 0x29293ff5 => 46
	i32 775507847, ; 44: System.IO.Compression => 0x2e394f87 => 112
	i32 789151979, ; 45: Microsoft.Extensions.Options => 0x2f0980eb => 21
	i32 809851609, ; 46: System.Drawing.Common.dll => 0x30455ad9 => 111
	i32 832711436, ; 47: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x31a22b0c => 12
	i32 843511501, ; 48: Xamarin.AndroidX.Print => 0x3246f6cd => 87
	i32 928116545, ; 49: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 107
	i32 955402788, ; 50: Newtonsoft.Json => 0x38f24a24 => 29
	i32 967690846, ; 51: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 73
	i32 974778368, ; 52: FormsViewGroup.dll => 0x3a19f000 => 4
	i32 1012816738, ; 53: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 89
	i32 1028951442, ; 54: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 16
	i32 1035644815, ; 55: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 51
	i32 1042160112, ; 56: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 104
	i32 1052210849, ; 57: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 77
	i32 1058641855, ; 58: Microsoft.AspNetCore.Http.Connections.Common => 0x3f1997bf => 8
	i32 1098259244, ; 59: System => 0x41761b2c => 34
	i32 1175144683, ; 60: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 94
	i32 1178241025, ; 61: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 84
	i32 1204270330, ; 62: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 52
	i32 1233093933, ; 63: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0x497f852d => 9
	i32 1267360935, ; 64: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 95
	i32 1293217323, ; 65: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 66
	i32 1365406463, ; 66: System.ServiceModel.Internals.dll => 0x516272ff => 116
	i32 1376866003, ; 67: Xamarin.AndroidX.SavedState => 0x52114ed3 => 89
	i32 1395857551, ; 68: Xamarin.AndroidX.Media.dll => 0x5333188f => 81
	i32 1406073936, ; 69: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 61
	i32 1411638395, ; 70: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 40
	i32 1414043276, ; 71: Microsoft.AspNetCore.Connections.Abstractions.dll => 0x5448968c => 6
	i32 1460219004, ; 72: Xamarin.Forms.Xaml => 0x57092c7c => 105
	i32 1460893475, ; 73: System.IdentityModel.Tokens.Jwt => 0x57137723 => 35
	i32 1462112819, ; 74: System.IO.Compression.dll => 0x57261233 => 112
	i32 1469204771, ; 75: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 50
	i32 1470490898, ; 76: Microsoft.Extensions.Primitives => 0x57a5e912 => 22
	i32 1498168481, ; 77: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 24
	i32 1582372066, ; 78: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 65
	i32 1592978981, ; 79: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 80: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 79
	i32 1624863272, ; 81: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 98
	i32 1636350590, ; 82: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 63
	i32 1639515021, ; 83: System.Net.Http.dll => 0x61b9038d => 2
	i32 1657153582, ; 84: System.Runtime => 0x62c6282e => 41
	i32 1658241508, ; 85: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 92
	i32 1658251792, ; 86: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 106
	i32 1670060433, ; 87: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 60
	i32 1729485958, ; 88: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 56
	i32 1746115085, ; 89: System.IO.Pipelines.dll => 0x68139a0d => 36
	i32 1766324549, ; 90: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 91
	i32 1770582343, ; 91: Microsoft.Extensions.Logging.dll => 0x6988f147 => 20
	i32 1776026572, ; 92: System.Core.dll => 0x69dc03cc => 32
	i32 1788241197, ; 93: Xamarin.AndroidX.Fragment => 0x6a96652d => 68
	i32 1796167890, ; 94: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 13
	i32 1808609942, ; 95: Xamarin.AndroidX.Loader => 0x6bcd3296 => 79
	i32 1813201214, ; 96: Xamarin.Google.Android.Material => 0x6c13413e => 106
	i32 1818569960, ; 97: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 85
	i32 1828688058, ; 98: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 19
	i32 1867746548, ; 99: Xamarin.Essentials.dll => 0x6f538cf4 => 100
	i32 1878053835, ; 100: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 105
	i32 1885316902, ; 101: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 53
	i32 1919157823, ; 102: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 82
	i32 1932718519, ; 103: Microsoft.Bcl.TimeProvider => 0x7332f1b7 => 14
	i32 1945717188, ; 104: Microsoft.AspNetCore.SignalR.Client.Core => 0x73f949c4 => 9
	i32 1967334205, ; 105: Microsoft.AspNetCore.SignalR.Common => 0x7543233d => 11
	i32 1986222447, ; 106: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 26
	i32 2011961780, ; 107: System.Buffers.dll => 0x77ec19b4 => 31
	i32 2019465201, ; 108: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 77
	i32 2055257422, ; 109: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 74
	i32 2079903147, ; 110: System.Runtime.dll => 0x7bf8cdab => 41
	i32 2090596640, ; 111: System.Numerics.Vectors => 0x7c9bf920 => 39
	i32 2097448633, ; 112: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 70
	i32 2113902067, ; 113: Xamarin.Forms.PancakeView.dll => 0x7dff95f3 => 102
	i32 2126786730, ; 114: Xamarin.Forms.Platform.Android => 0x7ec430aa => 103
	i32 2181898931, ; 115: Microsoft.Extensions.Options.dll => 0x820d22b3 => 21
	i32 2192057212, ; 116: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 19
	i32 2201231467, ; 117: System.Net.Http => 0x8334206b => 2
	i32 2217644978, ; 118: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 94
	i32 2229158877, ; 119: Microsoft.Extensions.Features.dll => 0x84de43dd => 18
	i32 2244775296, ; 120: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 80
	i32 2256548716, ; 121: Xamarin.AndroidX.MultiDex => 0x8680336c => 82
	i32 2261435625, ; 122: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 72
	i32 2279755925, ; 123: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 88
	i32 2315684594, ; 124: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 48
	i32 2319144366, ; 125: Microsoft.AspNetCore.SignalR.Client => 0x8a3b55ae => 10
	i32 2369706906, ; 126: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 25
	i32 2397082276, ; 127: Xamarin.Forms.PancakeView => 0x8ee092a4 => 102
	i32 2409053734, ; 128: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 86
	i32 2435904999, ; 129: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 119
	i32 2465532216, ; 130: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 59
	i32 2471841756, ; 131: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 132: Java.Interop.dll => 0x93918882 => 5
	i32 2501346920, ; 133: System.Data.DataSetExtensions => 0x95178668 => 110
	i32 2505896520, ; 134: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 76
	i32 2562349572, ; 135: Microsoft.CSharp => 0x98ba5a04 => 15
	i32 2570120770, ; 136: System.Text.Encodings.Web => 0x9930ee42 => 42
	i32 2581819634, ; 137: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 95
	i32 2620871830, ; 138: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 63
	i32 2624644809, ; 139: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 67
	i32 2631449489, ; 140: StockView => 0x9cd8bb91 => 30
	i32 2633051222, ; 141: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 75
	i32 2637500010, ; 142: Microsoft.Extensions.Features => 0x9d350e6a => 18
	i32 2640290731, ; 143: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 25
	i32 2701096212, ; 144: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 92
	i32 2719963679, ; 145: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2732626843, ; 146: Xamarin.AndroidX.Activity => 0xa2e0939b => 47
	i32 2735172069, ; 147: System.Threading.Channels => 0xa30769e5 => 44
	i32 2737747696, ; 148: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 50
	i32 2766581644, ; 149: Xamarin.Forms.Core => 0xa4e6af8c => 101
	i32 2778768386, ; 150: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 97
	i32 2810250172, ; 151: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 61
	i32 2819470561, ; 152: System.Xml.dll => 0xa80db4e1 => 45
	i32 2853208004, ; 153: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 97
	i32 2855708567, ; 154: Xamarin.AndroidX.Transition => 0xaa36a797 => 93
	i32 2875347124, ; 155: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xab6250b4 => 7
	i32 2903344695, ; 156: System.ComponentModel.Composition => 0xad0d8637 => 114
	i32 2905242038, ; 157: mscorlib.dll => 0xad2a79b6 => 28
	i32 2916838712, ; 158: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 98
	i32 2919462931, ; 159: System.Numerics.Vectors.dll => 0xae037813 => 39
	i32 2921128767, ; 160: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 49
	i32 2978675010, ; 161: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 66
	i32 3024354802, ; 162: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 71
	i32 3044182254, ; 163: FormsViewGroup => 0xb57288ee => 4
	i32 3057625584, ; 164: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 83
	i32 3084678329, ; 165: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 26
	i32 3111772706, ; 166: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3124832203, ; 167: System.Threading.Tasks.Extensions => 0xba4127cb => 117
	i32 3204380047, ; 168: System.Data.dll => 0xbefef58f => 108
	i32 3211777861, ; 169: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 65
	i32 3247949154, ; 170: Mono.Security => 0xc197c562 => 121
	i32 3258312781, ; 171: Xamarin.AndroidX.CardView => 0xc235e84d => 56
	i32 3265893370, ; 172: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 117
	i32 3267021929, ; 173: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 54
	i32 3280506390, ; 174: System.ComponentModel.Annotations.dll => 0xc3888e16 => 118
	i32 3312457198, ; 175: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 24
	i32 3317135071, ; 176: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 64
	i32 3317144872, ; 177: System.Data => 0xc5b79d28 => 108
	i32 3340431453, ; 178: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 53
	i32 3346324047, ; 179: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 84
	i32 3353484488, ; 180: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 70
	i32 3353544232, ; 181: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 99
	i32 3358260929, ; 182: System.Text.Json => 0xc82afec1 => 43
	i32 3362522851, ; 183: Xamarin.AndroidX.Core => 0xc86c06e3 => 62
	i32 3366347497, ; 184: Java.Interop => 0xc8a662e9 => 5
	i32 3374999561, ; 185: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 88
	i32 3395150330, ; 186: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 40
	i32 3404865022, ; 187: System.ServiceModel.Internals => 0xcaf21dfe => 116
	i32 3407215217, ; 188: Xamarin.CommunityToolkit => 0xcb15fa71 => 99
	i32 3428513518, ; 189: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 17
	i32 3429136800, ; 190: System.Xml => 0xcc6479a0 => 45
	i32 3430777524, ; 191: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 192: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 67
	i32 3466904072, ; 193: Microsoft.AspNetCore.SignalR.Client.dll => 0xcea4c208 => 10
	i32 3476120550, ; 194: Mono.Android => 0xcf3163e6 => 27
	i32 3485117614, ; 195: System.Text.Json.dll => 0xcfbaacae => 43
	i32 3486566296, ; 196: System.Transactions => 0xcfd0c798 => 109
	i32 3493954962, ; 197: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 58
	i32 3501239056, ; 198: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 54
	i32 3509114376, ; 199: System.Xml.Linq => 0xd128d608 => 46
	i32 3536029504, ; 200: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 103
	i32 3567349600, ; 201: System.ComponentModel.Composition.dll => 0xd4a16f60 => 114
	i32 3618140916, ; 202: Xamarin.AndroidX.Preference => 0xd7a872f4 => 86
	i32 3627220390, ; 203: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 87
	i32 3632359727, ; 204: Xamarin.Forms.Platform => 0xd881692f => 104
	i32 3633644679, ; 205: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 49
	i32 3641597786, ; 206: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 74
	i32 3645089577, ; 207: System.ComponentModel.DataAnnotations => 0xd943a729 => 119
	i32 3672681054, ; 208: Mono.Android.dll => 0xdae8aa5e => 27
	i32 3676310014, ; 209: System.Web.Services.dll => 0xdb2009fe => 115
	i32 3682565725, ; 210: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 55
	i32 3684561358, ; 211: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 58
	i32 3689375977, ; 212: System.Drawing.Common => 0xdbe768e9 => 111
	i32 3691870036, ; 213: Microsoft.AspNetCore.SignalR.Protocols.Json => 0xdc0d7754 => 12
	i32 3700591436, ; 214: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 23
	i32 3716402725, ; 215: StockView.Android.dll => 0xdd83ce25 => 0
	i32 3718780102, ; 216: Xamarin.AndroidX.Annotation => 0xdda814c6 => 48
	i32 3724971120, ; 217: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 83
	i32 3748608112, ; 218: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 33
	i32 3758932259, ; 219: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 72
	i32 3786282454, ; 220: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 57
	i32 3787005001, ; 221: Microsoft.AspNetCore.Connections.Abstractions => 0xe1b91c49 => 6
	i32 3822602673, ; 222: Xamarin.AndroidX.Media => 0xe3d849b1 => 81
	i32 3829621856, ; 223: System.Numerics.dll => 0xe4436460 => 38
	i32 3841636137, ; 224: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 16
	i32 3885922214, ; 225: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 93
	i32 3896760992, ; 226: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 62
	i32 3920810846, ; 227: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 113
	i32 3921031405, ; 228: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 96
	i32 3931092270, ; 229: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 85
	i32 3945713374, ; 230: System.Data.DataSetExtensions.dll => 0xeb2ecede => 110
	i32 3955647286, ; 231: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 51
	i32 4017318820, ; 232: Microsoft.Bcl.TimeProvider.dll => 0xef736ba4 => 14
	i32 4023392905, ; 233: System.IO.Pipelines => 0xefd01a89 => 36
	i32 4025784931, ; 234: System.Memory => 0xeff49a63 => 37
	i32 4035605195, ; 235: StockView.Android => 0xf08a72cb => 0
	i32 4105002889, ; 236: Mono.Security.dll => 0xf4ad5f89 => 121
	i32 4126470640, ; 237: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 17
	i32 4151237749, ; 238: System.Core => 0xf76edc75 => 32
	i32 4182413190, ; 239: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 78
	i32 4213026141, ; 240: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 33
	i32 4260525087, ; 241: System.Buffers => 0xfdf2741f => 31
	i32 4263231520, ; 242: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 35
	i32 4292120959 ; 243: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 78
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [244 x i32] [
	i32 76, i32 107, i32 29, i32 101, i32 90, i32 90, i32 44, i32 118, ; 0..7
	i32 57, i32 91, i32 55, i32 7, i32 71, i32 15, i32 115, i32 60, ; 8..15
	i32 75, i32 69, i32 47, i32 38, i32 73, i32 8, i32 37, i32 59, ; 16..23
	i32 100, i32 68, i32 11, i32 28, i32 34, i32 69, i32 23, i32 80, ; 24..31
	i32 22, i32 109, i32 20, i32 13, i32 30, i32 120, i32 113, i32 64, ; 32..39
	i32 42, i32 96, i32 52, i32 46, i32 112, i32 21, i32 111, i32 12, ; 40..47
	i32 87, i32 107, i32 29, i32 73, i32 4, i32 89, i32 16, i32 51, ; 48..55
	i32 104, i32 77, i32 8, i32 34, i32 94, i32 84, i32 52, i32 9, ; 56..63
	i32 95, i32 66, i32 116, i32 89, i32 81, i32 61, i32 40, i32 6, ; 64..71
	i32 105, i32 35, i32 112, i32 50, i32 22, i32 24, i32 65, i32 3, ; 72..79
	i32 79, i32 98, i32 63, i32 2, i32 41, i32 92, i32 106, i32 60, ; 80..87
	i32 56, i32 36, i32 91, i32 20, i32 32, i32 68, i32 13, i32 79, ; 88..95
	i32 106, i32 85, i32 19, i32 100, i32 105, i32 53, i32 82, i32 14, ; 96..103
	i32 9, i32 11, i32 26, i32 31, i32 77, i32 74, i32 41, i32 39, ; 104..111
	i32 70, i32 102, i32 103, i32 21, i32 19, i32 2, i32 94, i32 18, ; 112..119
	i32 80, i32 82, i32 72, i32 88, i32 48, i32 10, i32 25, i32 102, ; 120..127
	i32 86, i32 119, i32 59, i32 1, i32 5, i32 110, i32 76, i32 15, ; 128..135
	i32 42, i32 95, i32 63, i32 67, i32 30, i32 75, i32 18, i32 25, ; 136..143
	i32 92, i32 120, i32 47, i32 44, i32 50, i32 101, i32 97, i32 61, ; 144..151
	i32 45, i32 97, i32 93, i32 7, i32 114, i32 28, i32 98, i32 39, ; 152..159
	i32 49, i32 66, i32 71, i32 4, i32 83, i32 26, i32 3, i32 117, ; 160..167
	i32 108, i32 65, i32 121, i32 56, i32 117, i32 54, i32 118, i32 24, ; 168..175
	i32 64, i32 108, i32 53, i32 84, i32 70, i32 99, i32 43, i32 62, ; 176..183
	i32 5, i32 88, i32 40, i32 116, i32 99, i32 17, i32 45, i32 1, ; 184..191
	i32 67, i32 10, i32 27, i32 43, i32 109, i32 58, i32 54, i32 46, ; 192..199
	i32 103, i32 114, i32 86, i32 87, i32 104, i32 49, i32 74, i32 119, ; 200..207
	i32 27, i32 115, i32 55, i32 58, i32 111, i32 12, i32 23, i32 0, ; 208..215
	i32 48, i32 83, i32 33, i32 72, i32 57, i32 6, i32 81, i32 38, ; 216..223
	i32 16, i32 93, i32 62, i32 113, i32 96, i32 85, i32 110, i32 51, ; 224..231
	i32 14, i32 36, i32 37, i32 0, i32 121, i32 17, i32 32, i32 78, ; 232..239
	i32 33, i32 31, i32 35, i32 78 ; 240..243
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
