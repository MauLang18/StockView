; ModuleID = 'obj\Release\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Release\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [152 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 21
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 26
	i64 232391251801502327, ; 2: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 58
	i64 702024105029695270, ; 3: System.Drawing.Common => 0x9be17343c0e7726 => 71
	i64 720058930071658100, ; 4: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 52
	i64 872800313462103108, ; 5: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 50
	i64 996343623809489702, ; 6: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 66
	i64 1000557547492888992, ; 7: Mono.Security.dll => 0xde2b1c9cba651a0 => 75
	i64 1120440138749646132, ; 8: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 68
	i64 1425944114962822056, ; 9: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 2
	i64 1624659445732251991, ; 10: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 44
	i64 1731380447121279447, ; 11: Newtonsoft.Json => 0x18071957e9b889d7 => 28
	i64 1795316252682057001, ; 12: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 45
	i64 1836611346387731153, ; 13: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 58
	i64 1865037103900624886, ; 14: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 12
	i64 1981742497975770890, ; 15: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 55
	i64 1986553961460820075, ; 16: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 61
	i64 2040001226662520565, ; 17: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 73
	i64 2133195048986300728, ; 18: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 28
	i64 2262844636196693701, ; 19: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 50
	i64 2287887973817120656, ; 20: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 74
	i64 2329709569556905518, ; 21: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 54
	i64 2335503487726329082, ; 22: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 38
	i64 2337758774805907496, ; 23: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 37
	i64 2470498323731680442, ; 24: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 47
	i64 2547086958574651984, ; 25: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 43
	i64 2592350477072141967, ; 26: System.Xml.dll => 0x23f9e10627330e8f => 41
	i64 2612152650457191105, ; 27: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 25
	i64 2624866290265602282, ; 28: mscorlib.dll => 0x246d65fbde2db8ea => 27
	i64 2656907746661064104, ; 29: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 16
	i64 2783046991838674048, ; 30: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 37
	i64 2789714023057451704, ; 31: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 23
	i64 2960931600190307745, ; 32: Xamarin.Forms.Core => 0x2917579a49927da1 => 63
	i64 3017704767998173186, ; 33: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 68
	i64 3289520064315143713, ; 34: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 53
	i64 3402534845034375023, ; 35: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 34
	i64 3522470458906976663, ; 36: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 59
	i64 3531994851595924923, ; 37: System.Numerics => 0x31042a9aade235bb => 36
	i64 3727469159507183293, ; 38: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 57
	i64 3783726507060260521, ; 39: Microsoft.AspNetCore.SignalR.Common.dll => 0x34827f360c8e6ea9 => 10
	i64 3869221888984012293, ; 40: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 19
	i64 3892040550803845455, ; 41: StockView.dll => 0x36034e429214314f => 29
	i64 4525561845656915374, ; 42: System.ServiceModel.Internals => 0x3ece06856b710dae => 72
	i64 4794310189461587505, ; 43: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 43
	i64 4795410492532947900, ; 44: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 59
	i64 5142919913060024034, ; 45: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 65
	i64 5203618020066742981, ; 46: Xamarin.Essentials => 0x4836f704f0e652c5 => 62
	i64 5375264076663995773, ; 47: Xamarin.Forms.PancakeView => 0x4a98c632c779bd7d => 64
	i64 5507995362134886206, ; 48: System.Core.dll => 0x4c705499688c873e => 31
	i64 6014447449592687183, ; 49: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x53779c16e939ea4f => 7
	i64 6034224070161570862, ; 50: Microsoft.AspNetCore.SignalR.Client.dll => 0x53bdded235179c2e => 9
	i64 6085203216496545422, ; 51: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 66
	i64 6086316965293125504, ; 52: FormsViewGroup.dll => 0x5476f10882baef80 => 3
	i64 6222399776351216807, ; 53: System.Text.Json.dll => 0x565a67a0ffe264a7 => 39
	i64 6401687960814735282, ; 54: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 54
	i64 6548213210057960872, ; 55: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 49
	i64 6560151584539558821, ; 56: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 20
	i64 6659513131007730089, ; 57: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 52
	i64 6783125919820072783, ; 58: Microsoft.AspNetCore.Connections.Abstractions => 0x5e228115e59ec74f => 5
	i64 6876862101832370452, ; 59: System.Xml.Linq => 0x5f6f85a57d108914 => 42
	i64 7017588408768804231, ; 60: Microsoft.AspNetCore.SignalR.Protocols.Json => 0x61637b7a1c903587 => 11
	i64 7488575175965059935, ; 61: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 42
	i64 7496222613193209122, ; 62: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 34
	i64 7505555668346653106, ; 63: StockView.Android.dll => 0x6829171d3db8c9b2 => 0
	i64 7635363394907363464, ; 64: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 63
	i64 7637365915383206639, ; 65: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 62
	i64 7654504624184590948, ; 66: System.Net.Http => 0x6a3a4366801b8264 => 1
	i64 7735176074855944702, ; 67: Microsoft.CSharp => 0x6b58dda848e391fe => 14
	i64 7820441508502274321, ; 68: System.Data => 0x6c87ca1e14ff8111 => 70
	i64 7836164640616011524, ; 69: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 44
	i64 8083354569033831015, ; 70: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 53
	i64 8087206902342787202, ; 71: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 32
	i64 8167236081217502503, ; 72: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 4
	i64 8243855692487634729, ; 73: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x72680f13124eaf29 => 11
	i64 8318905602908530212, ; 74: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 74
	i64 8626175481042262068, ; 75: Java.Interop => 0x77b654e585b55834 => 4
	i64 8638972117149407195, ; 76: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 14
	i64 8725526185868997716, ; 77: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 32
	i64 9324707631942237306, ; 78: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 45
	i64 9427266486299436557, ; 79: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 24
	i64 9662334977499516867, ; 80: System.Numerics.dll => 0x8617827802b0cfc3 => 36
	i64 9678050649315576968, ; 81: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 47
	i64 9808709177481450983, ; 82: Mono.Android.dll => 0x881f890734e555e7 => 26
	i64 9998632235833408227, ; 83: Mono.Security => 0x8ac2470b209ebae3 => 75
	i64 10038780035334861115, ; 84: System.Net.Http.dll => 0x8b50e941206af13b => 1
	i64 10226498071391929720, ; 85: Microsoft.Extensions.Features => 0x8debd1d049888578 => 17
	i64 10229024438826829339, ; 86: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 49
	i64 10430153318873392755, ; 87: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 48
	i64 10447083246144586668, ; 88: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 12
	i64 11002576679268595294, ; 89: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 18
	i64 11023048688141570732, ; 90: System.Core => 0x98f9bc61168392ac => 31
	i64 11037814507248023548, ; 91: System.Xml => 0x992e31d0412bf7fc => 41
	i64 11122995063473561350, ; 92: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 61
	i64 11162124722117608902, ; 93: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 60
	i64 11226290749488709958, ; 94: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 20
	i64 11513602507638267977, ; 95: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 35
	i64 11517440453979132662, ; 96: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 22
	i64 11529969570048099689, ; 97: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 60
	i64 11530571088791430846, ; 98: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 19
	i64 12102847907131387746, ; 99: System.Buffers => 0xa7f5f40c43256f62 => 30
	i64 12145679461940342714, ; 100: System.Text.Json => 0xa88e1f1ebcb62fba => 39
	i64 12313367145828839434, ; 101: System.IO.Pipelines => 0xaae1de2e1c17f00a => 35
	i64 12439275739440478309, ; 102: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 23
	i64 12451044538927396471, ; 103: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 51
	i64 12466513435562512481, ; 104: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 56
	i64 12538491095302438457, ; 105: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 46
	i64 12843321153144804894, ; 106: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 21
	i64 12963446364377008305, ; 107: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 71
	i64 13295219713260136977, ; 108: Microsoft.AspNetCore.Http.Connections.Client => 0xb8821be35ba42a11 => 6
	i64 13370592475155966277, ; 109: System.Runtime.Serialization => 0xb98de304062ea945 => 2
	i64 13428779960367410341, ; 110: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0xba5c9c39a8956ca5 => 8
	i64 13454009404024712428, ; 111: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 69
	i64 13572454107664307259, ; 112: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 57
	i64 13647894001087880694, ; 113: System.Data.dll => 0xbd670f48cb071df6 => 70
	i64 13959074834287824816, ; 114: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 51
	i64 13967638549803255703, ; 115: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 65
	i64 14124974489674258913, ; 116: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 46
	i64 14551742072151931844, ; 117: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 38
	i64 14604329626201521481, ; 118: Microsoft.AspNetCore.SignalR.Client => 0xcaad006b00747d49 => 9
	i64 14669215534098758659, ; 119: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 16
	i64 14792063746108907174, ; 120: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 69
	i64 14809184851036126845, ; 121: Microsoft.AspNetCore.SignalR.Client.Core => 0xcd84cb28db1abe7d => 8
	i64 14954917835170835695, ; 122: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 15
	i64 15138356091203993725, ; 123: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 22
	i64 15370334346939861994, ; 124: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 48
	i64 15391712275433856905, ; 125: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 15
	i64 15446039513167199741, ; 126: Microsoft.Bcl.TimeProvider.dll => 0xd65b5b19c0fa7dfd => 13
	i64 15609085926864131306, ; 127: System.dll => 0xd89e9cf3334914ea => 33
	i64 15810740023422282496, ; 128: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 67
	i64 15847085070278954535, ; 129: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 40
	i64 15963349826457351533, ; 130: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 73
	i64 16154507427712707110, ; 131: System => 0xe03056ea4e39aa26 => 33
	i64 16156430004425724367, ; 132: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xe0372b7d144211cf => 6
	i64 16321164108206115771, ; 133: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 18
	i64 16343918515847859304, ; 134: Microsoft.Extensions.Features.dll => 0xe2d1434bdf0a8c68 => 17
	i64 16398097447882180067, ; 135: StockView => 0xe391bebf7d41c5e3 => 29
	i64 16605226748660468415, ; 136: Microsoft.AspNetCore.SignalR.Common => 0xe6719dbfe8b8cabf => 10
	i64 16614595234192188391, ; 137: StockView.Android => 0xe692e6566cec63e7 => 0
	i64 16833383113903931215, ; 138: mscorlib => 0xe99c30c1484d7f4f => 27
	i64 17008757876794951740, ; 139: Microsoft.Bcl.TimeProvider => 0xec0b3f2c34fd883c => 13
	i64 17118171214553292978, ; 140: System.Threading.Channels => 0xed8ff6060fc420b2 => 40
	i64 17137864900836977098, ; 141: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 25
	i64 17571845317586269034, ; 142: Microsoft.AspNetCore.Connections.Abstractions.dll => 0xf3dbbc377ad7336a => 5
	i64 17636563193350668017, ; 143: Microsoft.AspNetCore.Http.Connections.Common => 0xf4c1a8c826653ef1 => 7
	i64 17704177640604968747, ; 144: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 56
	i64 17710060891934109755, ; 145: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 55
	i64 17790600151040787804, ; 146: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 24
	i64 17827832363535584534, ; 147: Xamarin.Forms.PancakeView.dll => 0xf7692f1427c04d16 => 64
	i64 17838668724098252521, ; 148: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 30
	i64 17882897186074144999, ; 149: FormsViewGroup => 0xf82cd03e3ac830e7 => 3
	i64 17892495832318972303, ; 150: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 67
	i64 18129453464017766560 ; 151: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 72
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [152 x i32] [
	i32 21, i32 26, i32 58, i32 71, i32 52, i32 50, i32 66, i32 75, ; 0..7
	i32 68, i32 2, i32 44, i32 28, i32 45, i32 58, i32 12, i32 55, ; 8..15
	i32 61, i32 73, i32 28, i32 50, i32 74, i32 54, i32 38, i32 37, ; 16..23
	i32 47, i32 43, i32 41, i32 25, i32 27, i32 16, i32 37, i32 23, ; 24..31
	i32 63, i32 68, i32 53, i32 34, i32 59, i32 36, i32 57, i32 10, ; 32..39
	i32 19, i32 29, i32 72, i32 43, i32 59, i32 65, i32 62, i32 64, ; 40..47
	i32 31, i32 7, i32 9, i32 66, i32 3, i32 39, i32 54, i32 49, ; 48..55
	i32 20, i32 52, i32 5, i32 42, i32 11, i32 42, i32 34, i32 0, ; 56..63
	i32 63, i32 62, i32 1, i32 14, i32 70, i32 44, i32 53, i32 32, ; 64..71
	i32 4, i32 11, i32 74, i32 4, i32 14, i32 32, i32 45, i32 24, ; 72..79
	i32 36, i32 47, i32 26, i32 75, i32 1, i32 17, i32 49, i32 48, ; 80..87
	i32 12, i32 18, i32 31, i32 41, i32 61, i32 60, i32 20, i32 35, ; 88..95
	i32 22, i32 60, i32 19, i32 30, i32 39, i32 35, i32 23, i32 51, ; 96..103
	i32 56, i32 46, i32 21, i32 71, i32 6, i32 2, i32 8, i32 69, ; 104..111
	i32 57, i32 70, i32 51, i32 65, i32 46, i32 38, i32 9, i32 16, ; 112..119
	i32 69, i32 8, i32 15, i32 22, i32 48, i32 15, i32 13, i32 33, ; 120..127
	i32 67, i32 40, i32 73, i32 33, i32 6, i32 18, i32 17, i32 29, ; 128..135
	i32 10, i32 0, i32 27, i32 13, i32 40, i32 25, i32 5, i32 7, ; 136..143
	i32 56, i32 55, i32 24, i32 64, i32 30, i32 3, i32 67, i32 72 ; 152..151
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
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
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
