; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [204 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 57
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 88
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 14
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 82
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 71
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 71
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 38
	i32 182336117, ; 7: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 72
	i32 209399409, ; 8: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 36
	i32 230216969, ; 9: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 52
	i32 230752869, ; 10: Microsoft.CSharp.dll => 0xdc10265 => 7
	i32 232815796, ; 11: System.Web.Services => 0xde07cb4 => 96
	i32 261689757, ; 12: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 41
	i32 278686392, ; 13: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 56
	i32 280482487, ; 14: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 50
	i32 318968648, ; 15: Xamarin.AndroidX.Activity.dll => 0x13031348 => 28
	i32 321597661, ; 16: System.Numerics => 0x132b30dd => 20
	i32 342366114, ; 17: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 54
	i32 385762202, ; 18: System.Memory.dll => 0x16fe439a => 98
	i32 441335492, ; 19: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 40
	i32 442521989, ; 20: Xamarin.Essentials => 0x1a605985 => 81
	i32 450948140, ; 21: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 49
	i32 465846621, ; 22: mscorlib => 0x1bc4415d => 13
	i32 469710990, ; 23: System.dll => 0x1bff388e => 18
	i32 476646585, ; 24: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 50
	i32 485463106, ; 25: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 8
	i32 486930444, ; 26: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 61
	i32 526420162, ; 27: System.Transactions.dll => 0x1f6088c2 => 90
	i32 548916678, ; 28: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 6
	i32 560083305, ; 29: StockView.dll => 0x21623169 => 15
	i32 577335427, ; 30: System.Security.Cryptography.Cng => 0x22697083 => 100
	i32 605376203, ; 31: System.IO.Compression.FileSystem => 0x24154ecb => 94
	i32 627609679, ; 32: Xamarin.AndroidX.CustomView => 0x2568904f => 45
	i32 662205335, ; 33: System.Text.Encodings.Web.dll => 0x27787397 => 24
	i32 663517072, ; 34: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 77
	i32 666292255, ; 35: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 33
	i32 690569205, ; 36: System.Xml.Linq.dll => 0x29293ff5 => 27
	i32 775507847, ; 37: System.IO.Compression => 0x2e394f87 => 93
	i32 809851609, ; 38: System.Drawing.Common.dll => 0x30455ad9 => 92
	i32 843511501, ; 39: Xamarin.AndroidX.Print => 0x3246f6cd => 68
	i32 928116545, ; 40: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 88
	i32 955402788, ; 41: Newtonsoft.Json => 0x38f24a24 => 14
	i32 967690846, ; 42: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 54
	i32 974778368, ; 43: FormsViewGroup.dll => 0x3a19f000 => 4
	i32 1012816738, ; 44: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 70
	i32 1035644815, ; 45: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 32
	i32 1042160112, ; 46: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 85
	i32 1052210849, ; 47: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 58
	i32 1098259244, ; 48: System => 0x41761b2c => 18
	i32 1175144683, ; 49: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 75
	i32 1178241025, ; 50: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 65
	i32 1204270330, ; 51: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 33
	i32 1267360935, ; 52: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 76
	i32 1293217323, ; 53: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 47
	i32 1365406463, ; 54: System.ServiceModel.Internals.dll => 0x516272ff => 97
	i32 1376866003, ; 55: Xamarin.AndroidX.SavedState => 0x52114ed3 => 70
	i32 1395857551, ; 56: Xamarin.AndroidX.Media.dll => 0x5333188f => 62
	i32 1406073936, ; 57: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 42
	i32 1411638395, ; 58: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 22
	i32 1460219004, ; 59: Xamarin.Forms.Xaml => 0x57092c7c => 86
	i32 1460893475, ; 60: System.IdentityModel.Tokens.Jwt => 0x57137723 => 19
	i32 1462112819, ; 61: System.IO.Compression.dll => 0x57261233 => 93
	i32 1469204771, ; 62: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 31
	i32 1498168481, ; 63: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 9
	i32 1582372066, ; 64: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 46
	i32 1592978981, ; 65: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 66: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 60
	i32 1624863272, ; 67: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 79
	i32 1636350590, ; 68: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 44
	i32 1639515021, ; 69: System.Net.Http.dll => 0x61b9038d => 2
	i32 1657153582, ; 70: System.Runtime => 0x62c6282e => 23
	i32 1658241508, ; 71: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 73
	i32 1658251792, ; 72: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 87
	i32 1670060433, ; 73: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 41
	i32 1729485958, ; 74: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 37
	i32 1766324549, ; 75: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 72
	i32 1776026572, ; 76: System.Core.dll => 0x69dc03cc => 17
	i32 1788241197, ; 77: Xamarin.AndroidX.Fragment => 0x6a96652d => 49
	i32 1796167890, ; 78: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 6
	i32 1808609942, ; 79: Xamarin.AndroidX.Loader => 0x6bcd3296 => 60
	i32 1813201214, ; 80: Xamarin.Google.Android.Material => 0x6c13413e => 87
	i32 1818569960, ; 81: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 66
	i32 1867746548, ; 82: Xamarin.Essentials.dll => 0x6f538cf4 => 81
	i32 1878053835, ; 83: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 86
	i32 1885316902, ; 84: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 34
	i32 1919157823, ; 85: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 63
	i32 1986222447, ; 86: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 11
	i32 2011961780, ; 87: System.Buffers.dll => 0x77ec19b4 => 16
	i32 2019465201, ; 88: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 58
	i32 2055257422, ; 89: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 55
	i32 2079903147, ; 90: System.Runtime.dll => 0x7bf8cdab => 23
	i32 2090596640, ; 91: System.Numerics.Vectors => 0x7c9bf920 => 21
	i32 2097448633, ; 92: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 51
	i32 2113902067, ; 93: Xamarin.Forms.PancakeView.dll => 0x7dff95f3 => 83
	i32 2126786730, ; 94: Xamarin.Forms.Platform.Android => 0x7ec430aa => 84
	i32 2201231467, ; 95: System.Net.Http => 0x8334206b => 2
	i32 2217644978, ; 96: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 75
	i32 2244775296, ; 97: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 61
	i32 2256548716, ; 98: Xamarin.AndroidX.MultiDex => 0x8680336c => 63
	i32 2261435625, ; 99: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 53
	i32 2279755925, ; 100: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 69
	i32 2315684594, ; 101: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 29
	i32 2369706906, ; 102: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 10
	i32 2397082276, ; 103: Xamarin.Forms.PancakeView => 0x8ee092a4 => 83
	i32 2409053734, ; 104: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 67
	i32 2465532216, ; 105: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 40
	i32 2471841756, ; 106: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 107: Java.Interop.dll => 0x93918882 => 5
	i32 2501346920, ; 108: System.Data.DataSetExtensions => 0x95178668 => 91
	i32 2505896520, ; 109: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 57
	i32 2562349572, ; 110: Microsoft.CSharp => 0x98ba5a04 => 7
	i32 2570120770, ; 111: System.Text.Encodings.Web => 0x9930ee42 => 24
	i32 2581819634, ; 112: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 76
	i32 2620871830, ; 113: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 44
	i32 2624644809, ; 114: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 48
	i32 2631449489, ; 115: StockView => 0x9cd8bb91 => 15
	i32 2633051222, ; 116: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 56
	i32 2640290731, ; 117: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 10
	i32 2701096212, ; 118: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 73
	i32 2719963679, ; 119: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 100
	i32 2732626843, ; 120: Xamarin.AndroidX.Activity => 0xa2e0939b => 28
	i32 2737747696, ; 121: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 31
	i32 2766581644, ; 122: Xamarin.Forms.Core => 0xa4e6af8c => 82
	i32 2778768386, ; 123: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 78
	i32 2810250172, ; 124: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 42
	i32 2819470561, ; 125: System.Xml.dll => 0xa80db4e1 => 26
	i32 2853208004, ; 126: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 78
	i32 2855708567, ; 127: Xamarin.AndroidX.Transition => 0xaa36a797 => 74
	i32 2903344695, ; 128: System.ComponentModel.Composition => 0xad0d8637 => 95
	i32 2905242038, ; 129: mscorlib.dll => 0xad2a79b6 => 13
	i32 2916838712, ; 130: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 79
	i32 2919462931, ; 131: System.Numerics.Vectors.dll => 0xae037813 => 21
	i32 2921128767, ; 132: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 30
	i32 2978675010, ; 133: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 47
	i32 3024354802, ; 134: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 52
	i32 3044182254, ; 135: FormsViewGroup => 0xb57288ee => 4
	i32 3057625584, ; 136: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 64
	i32 3084678329, ; 137: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 11
	i32 3111772706, ; 138: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3124832203, ; 139: System.Threading.Tasks.Extensions => 0xba4127cb => 99
	i32 3204380047, ; 140: System.Data.dll => 0xbefef58f => 89
	i32 3211777861, ; 141: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 46
	i32 3247949154, ; 142: Mono.Security => 0xc197c562 => 101
	i32 3258312781, ; 143: Xamarin.AndroidX.CardView => 0xc235e84d => 37
	i32 3265893370, ; 144: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 99
	i32 3267021929, ; 145: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 35
	i32 3312457198, ; 146: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 9
	i32 3317135071, ; 147: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 45
	i32 3317144872, ; 148: System.Data => 0xc5b79d28 => 89
	i32 3340431453, ; 149: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 34
	i32 3346324047, ; 150: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 65
	i32 3353484488, ; 151: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 51
	i32 3353544232, ; 152: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 80
	i32 3358260929, ; 153: System.Text.Json => 0xc82afec1 => 25
	i32 3362522851, ; 154: Xamarin.AndroidX.Core => 0xc86c06e3 => 43
	i32 3366347497, ; 155: Java.Interop => 0xc8a662e9 => 5
	i32 3374999561, ; 156: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 69
	i32 3395150330, ; 157: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 22
	i32 3404865022, ; 158: System.ServiceModel.Internals => 0xcaf21dfe => 97
	i32 3407215217, ; 159: Xamarin.CommunityToolkit => 0xcb15fa71 => 80
	i32 3429136800, ; 160: System.Xml => 0xcc6479a0 => 26
	i32 3430777524, ; 161: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 162: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 48
	i32 3476120550, ; 163: Mono.Android => 0xcf3163e6 => 12
	i32 3485117614, ; 164: System.Text.Json.dll => 0xcfbaacae => 25
	i32 3486566296, ; 165: System.Transactions => 0xcfd0c798 => 90
	i32 3493954962, ; 166: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 39
	i32 3501239056, ; 167: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 35
	i32 3509114376, ; 168: System.Xml.Linq => 0xd128d608 => 27
	i32 3536029504, ; 169: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 84
	i32 3567349600, ; 170: System.ComponentModel.Composition.dll => 0xd4a16f60 => 95
	i32 3618140916, ; 171: Xamarin.AndroidX.Preference => 0xd7a872f4 => 67
	i32 3627220390, ; 172: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 68
	i32 3632359727, ; 173: Xamarin.Forms.Platform => 0xd881692f => 85
	i32 3633644679, ; 174: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 30
	i32 3641597786, ; 175: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 55
	i32 3672681054, ; 176: Mono.Android.dll => 0xdae8aa5e => 12
	i32 3676310014, ; 177: System.Web.Services.dll => 0xdb2009fe => 96
	i32 3682565725, ; 178: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 36
	i32 3684561358, ; 179: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 39
	i32 3689375977, ; 180: System.Drawing.Common => 0xdbe768e9 => 92
	i32 3700591436, ; 181: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 8
	i32 3716402725, ; 182: StockView.Android.dll => 0xdd83ce25 => 0
	i32 3718780102, ; 183: Xamarin.AndroidX.Annotation => 0xdda814c6 => 29
	i32 3724971120, ; 184: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 64
	i32 3758932259, ; 185: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 53
	i32 3786282454, ; 186: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 38
	i32 3822602673, ; 187: Xamarin.AndroidX.Media => 0xe3d849b1 => 62
	i32 3829621856, ; 188: System.Numerics.dll => 0xe4436460 => 20
	i32 3885922214, ; 189: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 74
	i32 3896760992, ; 190: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 43
	i32 3920810846, ; 191: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 94
	i32 3921031405, ; 192: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 77
	i32 3931092270, ; 193: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 66
	i32 3945713374, ; 194: System.Data.DataSetExtensions.dll => 0xeb2ecede => 91
	i32 3955647286, ; 195: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 32
	i32 4025784931, ; 196: System.Memory => 0xeff49a63 => 98
	i32 4035605195, ; 197: StockView.Android => 0xf08a72cb => 0
	i32 4105002889, ; 198: Mono.Security.dll => 0xf4ad5f89 => 101
	i32 4151237749, ; 199: System.Core => 0xf76edc75 => 17
	i32 4182413190, ; 200: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 59
	i32 4260525087, ; 201: System.Buffers => 0xfdf2741f => 16
	i32 4263231520, ; 202: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 19
	i32 4292120959 ; 203: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 59
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [204 x i32] [
	i32 57, i32 88, i32 14, i32 82, i32 71, i32 71, i32 38, i32 72, ; 0..7
	i32 36, i32 52, i32 7, i32 96, i32 41, i32 56, i32 50, i32 28, ; 8..15
	i32 20, i32 54, i32 98, i32 40, i32 81, i32 49, i32 13, i32 18, ; 16..23
	i32 50, i32 8, i32 61, i32 90, i32 6, i32 15, i32 100, i32 94, ; 24..31
	i32 45, i32 24, i32 77, i32 33, i32 27, i32 93, i32 92, i32 68, ; 32..39
	i32 88, i32 14, i32 54, i32 4, i32 70, i32 32, i32 85, i32 58, ; 40..47
	i32 18, i32 75, i32 65, i32 33, i32 76, i32 47, i32 97, i32 70, ; 48..55
	i32 62, i32 42, i32 22, i32 86, i32 19, i32 93, i32 31, i32 9, ; 56..63
	i32 46, i32 3, i32 60, i32 79, i32 44, i32 2, i32 23, i32 73, ; 64..71
	i32 87, i32 41, i32 37, i32 72, i32 17, i32 49, i32 6, i32 60, ; 72..79
	i32 87, i32 66, i32 81, i32 86, i32 34, i32 63, i32 11, i32 16, ; 80..87
	i32 58, i32 55, i32 23, i32 21, i32 51, i32 83, i32 84, i32 2, ; 88..95
	i32 75, i32 61, i32 63, i32 53, i32 69, i32 29, i32 10, i32 83, ; 96..103
	i32 67, i32 40, i32 1, i32 5, i32 91, i32 57, i32 7, i32 24, ; 104..111
	i32 76, i32 44, i32 48, i32 15, i32 56, i32 10, i32 73, i32 100, ; 112..119
	i32 28, i32 31, i32 82, i32 78, i32 42, i32 26, i32 78, i32 74, ; 120..127
	i32 95, i32 13, i32 79, i32 21, i32 30, i32 47, i32 52, i32 4, ; 128..135
	i32 64, i32 11, i32 3, i32 99, i32 89, i32 46, i32 101, i32 37, ; 136..143
	i32 99, i32 35, i32 9, i32 45, i32 89, i32 34, i32 65, i32 51, ; 144..151
	i32 80, i32 25, i32 43, i32 5, i32 69, i32 22, i32 97, i32 80, ; 152..159
	i32 26, i32 1, i32 48, i32 12, i32 25, i32 90, i32 39, i32 35, ; 160..167
	i32 27, i32 84, i32 95, i32 67, i32 68, i32 85, i32 30, i32 55, ; 168..175
	i32 12, i32 96, i32 36, i32 39, i32 92, i32 8, i32 0, i32 29, ; 176..183
	i32 64, i32 53, i32 38, i32 62, i32 20, i32 74, i32 43, i32 94, ; 184..191
	i32 77, i32 66, i32 91, i32 32, i32 98, i32 0, i32 101, i32 17, ; 192..199
	i32 59, i32 16, i32 19, i32 59 ; 200..203
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
