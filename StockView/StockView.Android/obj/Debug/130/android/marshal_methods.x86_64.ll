; ModuleID = 'obj\Debug\130\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [244 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 67
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 22
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 27
	i64 210515253464952879, ; 3: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 57
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 89
	i64 295915112840604065, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 90
	i64 634308326490598313, ; 6: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 76
	i64 702024105029695270, ; 7: System.Drawing.Common => 0x9be17343c0e7726 => 111
	i64 720058930071658100, ; 8: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 70
	i64 872800313462103108, ; 9: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 66
	i64 940822596282819491, ; 10: System.Transactions => 0xd0e792aa81923a3 => 109
	i64 996343623809489702, ; 11: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 104
	i64 1000557547492888992, ; 12: Mono.Security.dll => 0xde2b1c9cba651a0 => 121
	i64 1120440138749646132, ; 13: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 106
	i64 1315114680217950157, ; 14: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 52
	i64 1425944114962822056, ; 15: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 3
	i64 1624659445732251991, ; 16: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 50
	i64 1628611045998245443, ; 17: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 78
	i64 1636321030536304333, ; 18: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 71
	i64 1731380447121279447, ; 19: Newtonsoft.Json => 0x18071957e9b889d7 => 29
	i64 1743969030606105336, ; 20: System.Memory.dll => 0x1833d297e88f2af8 => 37
	i64 1795316252682057001, ; 21: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 51
	i64 1836611346387731153, ; 22: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 89
	i64 1865037103900624886, ; 23: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 13
	i64 1875917498431009007, ; 24: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 48
	i64 1981742497975770890, ; 25: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 77
	i64 1986553961460820075, ; 26: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 99
	i64 2040001226662520565, ; 27: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 117
	i64 2133195048986300728, ; 28: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 29
	i64 2136356949452311481, ; 29: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 82
	i64 2165725771938924357, ; 30: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 55
	i64 2262844636196693701, ; 31: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 66
	i64 2284400282711631002, ; 32: System.Web.Services => 0x1fb3d1f42fd4249a => 115
	i64 2287887973817120656, ; 33: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 119
	i64 2329709569556905518, ; 34: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 74
	i64 2335503487726329082, ; 35: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 42
	i64 2337758774805907496, ; 36: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 40
	i64 2470498323731680442, ; 37: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 61
	i64 2479423007379663237, ; 38: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 94
	i64 2497223385847772520, ; 39: System.Runtime => 0x22a7eb7046413568 => 41
	i64 2547086958574651984, ; 40: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 47
	i64 2592350477072141967, ; 41: System.Xml.dll => 0x23f9e10627330e8f => 45
	i64 2612152650457191105, ; 42: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 26
	i64 2624866290265602282, ; 43: mscorlib.dll => 0x246d65fbde2db8ea => 28
	i64 2656907746661064104, ; 44: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 17
	i64 2694427813909235223, ; 45: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 86
	i64 2783046991838674048, ; 46: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 40
	i64 2789714023057451704, ; 47: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 24
	i64 2960931600190307745, ; 48: Xamarin.Forms.Core => 0x2917579a49927da1 => 101
	i64 3017704767998173186, ; 49: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 106
	i64 3289520064315143713, ; 50: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 73
	i64 3303437397778967116, ; 51: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 49
	i64 3311221304742556517, ; 52: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 39
	i64 3402534845034375023, ; 53: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 35
	i64 3493805808809882663, ; 54: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 92
	i64 3522470458906976663, ; 55: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 91
	i64 3531994851595924923, ; 56: System.Numerics => 0x31042a9aade235bb => 38
	i64 3571415421602489686, ; 57: System.Runtime.dll => 0x319037675df7e556 => 41
	i64 3716579019761409177, ; 58: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 59: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 88
	i64 3772598417116884899, ; 60: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 67
	i64 3783726507060260521, ; 61: Microsoft.AspNetCore.SignalR.Common.dll => 0x34827f360c8e6ea9 => 11
	i64 3869221888984012293, ; 62: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 20
	i64 3892040550803845455, ; 63: StockView.dll => 0x36034e429214314f => 30
	i64 3966267475168208030, ; 64: System.Memory => 0x370b03412596249e => 37
	i64 4525561845656915374, ; 65: System.ServiceModel.Internals => 0x3ece06856b710dae => 116
	i64 4636684751163556186, ; 66: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 96
	i64 4743821336939966868, ; 67: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 118
	i64 4782108999019072045, ; 68: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 54
	i64 4794310189461587505, ; 69: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 47
	i64 4795410492532947900, ; 70: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 91
	i64 5142919913060024034, ; 71: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 103
	i64 5203618020066742981, ; 72: Xamarin.Essentials => 0x4836f704f0e652c5 => 100
	i64 5205316157927637098, ; 73: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 80
	i64 5348796042099802469, ; 74: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 81
	i64 5375264076663995773, ; 75: Xamarin.Forms.PancakeView => 0x4a98c632c779bd7d => 102
	i64 5376510917114486089, ; 76: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 94
	i64 5408338804355907810, ; 77: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 93
	i64 5451019430259338467, ; 78: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 60
	i64 5507995362134886206, ; 79: System.Core.dll => 0x4c705499688c873e => 32
	i64 5692067934154308417, ; 80: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 98
	i64 5757522595884336624, ; 81: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 58
	i64 5814345312393086621, ; 82: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 86
	i64 5896680224035167651, ; 83: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 75
	i64 6014447449592687183, ; 84: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x53779c16e939ea4f => 8
	i64 6034224070161570862, ; 85: Microsoft.AspNetCore.SignalR.Client.dll => 0x53bdded235179c2e => 10
	i64 6085203216496545422, ; 86: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 104
	i64 6086316965293125504, ; 87: FormsViewGroup.dll => 0x5476f10882baef80 => 4
	i64 6222399776351216807, ; 88: System.Text.Json.dll => 0x565a67a0ffe264a7 => 43
	i64 6319713645133255417, ; 89: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 76
	i64 6401687960814735282, ; 90: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 74
	i64 6504860066809920875, ; 91: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 55
	i64 6548213210057960872, ; 92: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 64
	i64 6560151584539558821, ; 93: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 21
	i64 6591024623626361694, ; 94: System.Web.Services.dll => 0x5b7805f9751a1b5e => 115
	i64 6659513131007730089, ; 95: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 70
	i64 6783125919820072783, ; 96: Microsoft.AspNetCore.Connections.Abstractions => 0x5e228115e59ec74f => 6
	i64 6876862101832370452, ; 97: System.Xml.Linq => 0x5f6f85a57d108914 => 46
	i64 6894844156784520562, ; 98: System.Numerics.Vectors => 0x5faf683aead1ad72 => 39
	i64 7017588408768804231, ; 99: Microsoft.AspNetCore.SignalR.Protocols.Json => 0x61637b7a1c903587 => 12
	i64 7036436454368433159, ; 100: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 72
	i64 7103753931438454322, ; 101: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 69
	i64 7488575175965059935, ; 102: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 46
	i64 7496222613193209122, ; 103: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 35
	i64 7505555668346653106, ; 104: StockView.Android.dll => 0x6829171d3db8c9b2 => 0
	i64 7635363394907363464, ; 105: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 101
	i64 7637365915383206639, ; 106: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 100
	i64 7654504624184590948, ; 107: System.Net.Http => 0x6a3a4366801b8264 => 2
	i64 7735176074855944702, ; 108: Microsoft.CSharp => 0x6b58dda848e391fe => 15
	i64 7820441508502274321, ; 109: System.Data => 0x6c87ca1e14ff8111 => 108
	i64 7836164640616011524, ; 110: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 50
	i64 8044118961405839122, ; 111: System.ComponentModel.Composition => 0x6fa2739369944712 => 114
	i64 8083354569033831015, ; 112: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 73
	i64 8087206902342787202, ; 113: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 33
	i64 8103644804370223335, ; 114: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 110
	i64 8167236081217502503, ; 115: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 5
	i64 8243855692487634729, ; 116: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x72680f13124eaf29 => 12
	i64 8318905602908530212, ; 117: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 119
	i64 8398329775253868912, ; 118: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 59
	i64 8400357532724379117, ; 119: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 85
	i64 8601935802264776013, ; 120: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 93
	i64 8626175481042262068, ; 121: Java.Interop => 0x77b654e585b55834 => 5
	i64 8638972117149407195, ; 122: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 15
	i64 8639588376636138208, ; 123: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 84
	i64 8684531736582871431, ; 124: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 113
	i64 8725526185868997716, ; 125: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 33
	i64 9312692141327339315, ; 126: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 98
	i64 9324707631942237306, ; 127: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 51
	i64 9427266486299436557, ; 128: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 25
	i64 9662334977499516867, ; 129: System.Numerics.dll => 0x8617827802b0cfc3 => 38
	i64 9678050649315576968, ; 130: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 61
	i64 9711637524876806384, ; 131: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 81
	i64 9808709177481450983, ; 132: Mono.Android.dll => 0x881f890734e555e7 => 27
	i64 9825649861376906464, ; 133: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 58
	i64 9834056768316610435, ; 134: System.Transactions.dll => 0x8879968718899783 => 109
	i64 9998632235833408227, ; 135: Mono.Security => 0x8ac2470b209ebae3 => 121
	i64 10038780035334861115, ; 136: System.Net.Http.dll => 0x8b50e941206af13b => 2
	i64 10226498071391929720, ; 137: Microsoft.Extensions.Features => 0x8debd1d049888578 => 18
	i64 10229024438826829339, ; 138: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 64
	i64 10376576884623852283, ; 139: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 92
	i64 10430153318873392755, ; 140: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 62
	i64 10447083246144586668, ; 141: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 13
	i64 10847732767863316357, ; 142: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 52
	i64 11002576679268595294, ; 143: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 19
	i64 11023048688141570732, ; 144: System.Core => 0x98f9bc61168392ac => 32
	i64 11037814507248023548, ; 145: System.Xml => 0x992e31d0412bf7fc => 45
	i64 11122995063473561350, ; 146: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 99
	i64 11162124722117608902, ; 147: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 97
	i64 11226290749488709958, ; 148: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 21
	i64 11340910727871153756, ; 149: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 63
	i64 11392833485892708388, ; 150: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 87
	i64 11513602507638267977, ; 151: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 36
	i64 11517440453979132662, ; 152: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 23
	i64 11529969570048099689, ; 153: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 97
	i64 11530571088791430846, ; 154: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 20
	i64 11578238080964724296, ; 155: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 72
	i64 11580057168383206117, ; 156: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 48
	i64 11597940890313164233, ; 157: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 158: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 69
	i64 12102847907131387746, ; 159: System.Buffers => 0xa7f5f40c43256f62 => 31
	i64 12137774235383566651, ; 160: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 95
	i64 12145679461940342714, ; 161: System.Text.Json => 0xa88e1f1ebcb62fba => 43
	i64 12313367145828839434, ; 162: System.IO.Pipelines => 0xaae1de2e1c17f00a => 36
	i64 12439275739440478309, ; 163: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 24
	i64 12451044538927396471, ; 164: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 68
	i64 12466513435562512481, ; 165: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 79
	i64 12487638416075308985, ; 166: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 65
	i64 12538491095302438457, ; 167: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 56
	i64 12550732019250633519, ; 168: System.IO.Compression => 0xae2d28465e8e1b2f => 112
	i64 12700543734426720211, ; 169: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 57
	i64 12843321153144804894, ; 170: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 22
	i64 12963446364377008305, ; 171: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 111
	i64 13295219713260136977, ; 172: Microsoft.AspNetCore.Http.Connections.Client => 0xb8821be35ba42a11 => 7
	i64 13370592475155966277, ; 173: System.Runtime.Serialization => 0xb98de304062ea945 => 3
	i64 13401370062847626945, ; 174: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 95
	i64 13404347523447273790, ; 175: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 59
	i64 13428779960367410341, ; 176: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0xba5c9c39a8956ca5 => 9
	i64 13454009404024712428, ; 177: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 107
	i64 13491513212026656886, ; 178: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 53
	i64 13572454107664307259, ; 179: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 88
	i64 13647894001087880694, ; 180: System.Data.dll => 0xbd670f48cb071df6 => 108
	i64 13959074834287824816, ; 181: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 68
	i64 13967638549803255703, ; 182: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 103
	i64 14124974489674258913, ; 183: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 56
	i64 14172845254133543601, ; 184: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 82
	i64 14212104595480609394, ; 185: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 120
	i64 14261073672896646636, ; 186: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 87
	i64 14486659737292545672, ; 187: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 75
	i64 14551742072151931844, ; 188: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 42
	i64 14604329626201521481, ; 189: Microsoft.AspNetCore.SignalR.Client => 0xcaad006b00747d49 => 10
	i64 14644440854989303794, ; 190: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 80
	i64 14669215534098758659, ; 191: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 17
	i64 14792063746108907174, ; 192: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 107
	i64 14809184851036126845, ; 193: Microsoft.AspNetCore.SignalR.Client.Core => 0xcd84cb28db1abe7d => 9
	i64 14852515768018889994, ; 194: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 63
	i64 14954917835170835695, ; 195: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 16
	i64 14987728460634540364, ; 196: System.IO.Compression.dll => 0xcfff1ba06622494c => 112
	i64 14988210264188246988, ; 197: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 65
	i64 15138356091203993725, ; 198: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 23
	i64 15370334346939861994, ; 199: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 62
	i64 15391712275433856905, ; 200: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 16
	i64 15446039513167199741, ; 201: Microsoft.Bcl.TimeProvider.dll => 0xd65b5b19c0fa7dfd => 14
	i64 15582737692548360875, ; 202: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 78
	i64 15609085926864131306, ; 203: System.dll => 0xd89e9cf3334914ea => 34
	i64 15777549416145007739, ; 204: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 90
	i64 15810740023422282496, ; 205: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 105
	i64 15847085070278954535, ; 206: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 44
	i64 15937190497610202713, ; 207: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 120
	i64 15963349826457351533, ; 208: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 117
	i64 16154507427712707110, ; 209: System => 0xe03056ea4e39aa26 => 34
	i64 16156430004425724367, ; 210: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xe0372b7d144211cf => 7
	i64 16321164108206115771, ; 211: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 19
	i64 16343918515847859304, ; 212: Microsoft.Extensions.Features.dll => 0xe2d1434bdf0a8c68 => 18
	i64 16398097447882180067, ; 213: StockView => 0xe391bebf7d41c5e3 => 30
	i64 16565028646146589191, ; 214: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 114
	i64 16605226748660468415, ; 215: Microsoft.AspNetCore.SignalR.Common => 0xe6719dbfe8b8cabf => 11
	i64 16614595234192188391, ; 216: StockView.Android => 0xe692e6566cec63e7 => 0
	i64 16621146507174665210, ; 217: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 60
	i64 16677317093839702854, ; 218: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 85
	i64 16822611501064131242, ; 219: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 110
	i64 16833383113903931215, ; 220: mscorlib => 0xe99c30c1484d7f4f => 28
	i64 17008757876794951740, ; 221: Microsoft.Bcl.TimeProvider => 0xec0b3f2c34fd883c => 14
	i64 17024911836938395553, ; 222: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 49
	i64 17031351772568316411, ; 223: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 83
	i64 17037200463775726619, ; 224: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 71
	i64 17118171214553292978, ; 225: System.Threading.Channels => 0xed8ff6060fc420b2 => 44
	i64 17137864900836977098, ; 226: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 26
	i64 17187273293601214786, ; 227: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 118
	i64 17544493274320527064, ; 228: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 54
	i64 17571845317586269034, ; 229: Microsoft.AspNetCore.Connections.Abstractions.dll => 0xf3dbbc377ad7336a => 6
	i64 17636563193350668017, ; 230: Microsoft.AspNetCore.Http.Connections.Common => 0xf4c1a8c826653ef1 => 8
	i64 17704177640604968747, ; 231: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 79
	i64 17710060891934109755, ; 232: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 77
	i64 17790600151040787804, ; 233: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 25
	i64 17827832363535584534, ; 234: Xamarin.Forms.PancakeView.dll => 0xf7692f1427c04d16 => 102
	i64 17838668724098252521, ; 235: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 31
	i64 17882897186074144999, ; 236: FormsViewGroup => 0xf82cd03e3ac830e7 => 4
	i64 17892495832318972303, ; 237: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 105
	i64 17928294245072900555, ; 238: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 113
	i64 18116111925905154859, ; 239: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 53
	i64 18121036031235206392, ; 240: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 83
	i64 18129453464017766560, ; 241: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 116
	i64 18305135509493619199, ; 242: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 84
	i64 18380184030268848184 ; 243: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 96
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [244 x i32] [
	i32 67, i32 22, i32 27, i32 57, i32 89, i32 90, i32 76, i32 111, ; 0..7
	i32 70, i32 66, i32 109, i32 104, i32 121, i32 106, i32 52, i32 3, ; 8..15
	i32 50, i32 78, i32 71, i32 29, i32 37, i32 51, i32 89, i32 13, ; 16..23
	i32 48, i32 77, i32 99, i32 117, i32 29, i32 82, i32 55, i32 66, ; 24..31
	i32 115, i32 119, i32 74, i32 42, i32 40, i32 61, i32 94, i32 41, ; 32..39
	i32 47, i32 45, i32 26, i32 28, i32 17, i32 86, i32 40, i32 24, ; 40..47
	i32 101, i32 106, i32 73, i32 49, i32 39, i32 35, i32 92, i32 91, ; 48..55
	i32 38, i32 41, i32 1, i32 88, i32 67, i32 11, i32 20, i32 30, ; 56..63
	i32 37, i32 116, i32 96, i32 118, i32 54, i32 47, i32 91, i32 103, ; 64..71
	i32 100, i32 80, i32 81, i32 102, i32 94, i32 93, i32 60, i32 32, ; 72..79
	i32 98, i32 58, i32 86, i32 75, i32 8, i32 10, i32 104, i32 4, ; 80..87
	i32 43, i32 76, i32 74, i32 55, i32 64, i32 21, i32 115, i32 70, ; 88..95
	i32 6, i32 46, i32 39, i32 12, i32 72, i32 69, i32 46, i32 35, ; 96..103
	i32 0, i32 101, i32 100, i32 2, i32 15, i32 108, i32 50, i32 114, ; 104..111
	i32 73, i32 33, i32 110, i32 5, i32 12, i32 119, i32 59, i32 85, ; 112..119
	i32 93, i32 5, i32 15, i32 84, i32 113, i32 33, i32 98, i32 51, ; 120..127
	i32 25, i32 38, i32 61, i32 81, i32 27, i32 58, i32 109, i32 121, ; 128..135
	i32 2, i32 18, i32 64, i32 92, i32 62, i32 13, i32 52, i32 19, ; 136..143
	i32 32, i32 45, i32 99, i32 97, i32 21, i32 63, i32 87, i32 36, ; 144..151
	i32 23, i32 97, i32 20, i32 72, i32 48, i32 1, i32 69, i32 31, ; 152..159
	i32 95, i32 43, i32 36, i32 24, i32 68, i32 79, i32 65, i32 56, ; 160..167
	i32 112, i32 57, i32 22, i32 111, i32 7, i32 3, i32 95, i32 59, ; 168..175
	i32 9, i32 107, i32 53, i32 88, i32 108, i32 68, i32 103, i32 56, ; 176..183
	i32 82, i32 120, i32 87, i32 75, i32 42, i32 10, i32 80, i32 17, ; 184..191
	i32 107, i32 9, i32 63, i32 16, i32 112, i32 65, i32 23, i32 62, ; 192..199
	i32 16, i32 14, i32 78, i32 34, i32 90, i32 105, i32 44, i32 120, ; 200..207
	i32 117, i32 34, i32 7, i32 19, i32 18, i32 30, i32 114, i32 11, ; 208..215
	i32 0, i32 60, i32 85, i32 110, i32 28, i32 14, i32 49, i32 83, ; 216..223
	i32 71, i32 44, i32 26, i32 118, i32 54, i32 6, i32 8, i32 79, ; 224..231
	i32 77, i32 25, i32 102, i32 31, i32 4, i32 105, i32 113, i32 53, ; 232..239
	i32 83, i32 116, i32 84, i32 96 ; 240..243
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
