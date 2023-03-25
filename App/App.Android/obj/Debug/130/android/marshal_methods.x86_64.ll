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
@assembly_image_cache_hashes = local_unnamed_addr constant [304 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 97
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 27
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 28
	i64 210515253464952879, ; 3: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 87
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 119
	i64 295915112840604065, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 120
	i64 590536689428908136, ; 6: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x83201fd803ec868 => 53
	i64 634308326490598313, ; 7: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 106
	i64 668723562677762733, ; 8: Microsoft.Extensions.Configuration.Binder.dll => 0x947c88986577aad => 20
	i64 702024105029695270, ; 9: System.Drawing.Common => 0x9be17343c0e7726 => 139
	i64 720058930071658100, ; 10: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 100
	i64 816102801403336439, ; 11: Xamarin.Android.Support.Collections => 0xb53612c89d8d6f7 => 57
	i64 846634227898301275, ; 12: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0xbbfd9583890bb5b => 50
	i64 870603111519317375, ; 13: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 33
	i64 872800313462103108, ; 14: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 96
	i64 940822596282819491, ; 15: System.Transactions => 0xd0e792aa81923a3 => 137
	i64 996343623809489702, ; 16: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 132
	i64 1000557547492888992, ; 17: Mono.Security.dll => 0xde2b1c9cba651a0 => 151
	i64 1010800728818218806, ; 18: Microsoft.Bcl.HashCode.dll => 0xe0715e84bea7736 => 14
	i64 1120440138749646132, ; 19: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 134
	i64 1301485588176585670, ; 20: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 32
	i64 1315114680217950157, ; 21: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 82
	i64 1342439039765371018, ; 22: Xamarin.Android.Support.Fragment => 0x12a14d31b1d4d88a => 66
	i64 1425944114962822056, ; 23: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 9
	i64 1490981186906623721, ; 24: Xamarin.Android.Support.VersionedParcelable => 0x14b1077d6c5c0ee9 => 75
	i64 1518315023656898250, ; 25: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 34
	i64 1624659445732251991, ; 26: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 80
	i64 1628611045998245443, ; 27: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 108
	i64 1636321030536304333, ; 28: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 101
	i64 1743969030606105336, ; 29: System.Memory.dll => 0x1833d297e88f2af8 => 40
	i64 1744702963312407042, ; 30: Xamarin.Android.Support.v7.AppCompat => 0x18366e19eeceb202 => 73
	i64 1795316252682057001, ; 31: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 81
	i64 1836611346387731153, ; 32: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 119
	i64 1865037103900624886, ; 33: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 13
	i64 1875917498431009007, ; 34: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 78
	i64 1981742497975770890, ; 35: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 107
	i64 2040001226662520565, ; 36: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 146
	i64 2136356949452311481, ; 37: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 112
	i64 2165725771938924357, ; 38: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 85
	i64 2192948757939169934, ; 39: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 15
	i64 2262844636196693701, ; 40: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 96
	i64 2284400282711631002, ; 41: System.Web.Services => 0x1fb3d1f42fd4249a => 143
	i64 2287834202362508563, ; 42: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 4
	i64 2287887973817120656, ; 43: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 144
	i64 2329709569556905518, ; 44: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 104
	i64 2337758774805907496, ; 45: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 43
	i64 2470498323731680442, ; 46: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 91
	i64 2479423007379663237, ; 47: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 124
	i64 2497223385847772520, ; 48: System.Runtime => 0x22a7eb7046413568 => 44
	i64 2547086958574651984, ; 49: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 77
	i64 2592350477072141967, ; 50: System.Xml.dll => 0x23f9e10627330e8f => 45
	i64 2624866290265602282, ; 51: mscorlib.dll => 0x246d65fbde2db8ea => 29
	i64 2656907746661064104, ; 52: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 23
	i64 2694427813909235223, ; 53: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 116
	i64 2783046991838674048, ; 54: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 43
	i64 2949706848458024531, ; 55: Xamarin.Android.Support.SlidingPaneLayout => 0x28ef76c01de0a653 => 71
	i64 2960931600190307745, ; 56: Xamarin.Forms.Core => 0x2917579a49927da1 => 130
	i64 2977248461349026546, ; 57: Xamarin.Android.Support.DrawerLayout => 0x29514fb392c97af2 => 65
	i64 3017704767998173186, ; 58: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 134
	i64 3168433762017057013, ; 59: App.dll => 0x2bf889b82f6198f5 => 10
	i64 3289520064315143713, ; 60: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 103
	i64 3303437397778967116, ; 61: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 79
	i64 3311221304742556517, ; 62: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 42
	i64 3493805808809882663, ; 63: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 122
	i64 3494946837667399002, ; 64: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 21
	i64 3522470458906976663, ; 65: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 121
	i64 3523004241079211829, ; 66: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 18
	i64 3531994851595924923, ; 67: System.Numerics => 0x31042a9aade235bb => 41
	i64 3571415421602489686, ; 68: System.Runtime.dll => 0x319037675df7e556 => 44
	i64 3638003163729360188, ; 69: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 19
	i64 3655542548057982301, ; 70: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 21
	i64 3716579019761409177, ; 71: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 72: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 118
	i64 3772598417116884899, ; 73: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 97
	i64 3869221888984012293, ; 74: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 25
	i64 3966267475168208030, ; 75: System.Memory => 0x370b03412596249e => 40
	i64 4252163538099460320, ; 76: Xamarin.Android.Support.ViewPager.dll => 0x3b02b8357f4958e0 => 76
	i64 4337444564132831293, ; 77: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 31
	i64 4349341163892612332, ; 78: Xamarin.Android.Support.DocumentFile => 0x3c5bf6bea8cd9cec => 64
	i64 4416987920449902723, ; 79: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0x3d4c4b1c879b9883 => 56
	i64 4525561845656915374, ; 80: System.ServiceModel.Internals => 0x3ece06856b710dae => 145
	i64 4612482779465751747, ; 81: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 15
	i64 4636684751163556186, ; 82: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 126
	i64 4743821336939966868, ; 83: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 2
	i64 4782108999019072045, ; 84: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 84
	i64 4794310189461587505, ; 85: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 77
	i64 4795410492532947900, ; 86: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 121
	i64 4841234827713643511, ; 87: Xamarin.Android.Support.CoordinaterLayout => 0x432f856d041f03f7 => 59
	i64 4963205065368577818, ; 88: Xamarin.Android.Support.LocalBroadcastManager.dll => 0x44e0d8b5f4b6a71a => 69
	i64 5081566143765835342, ; 89: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 3
	i64 5099468265966638712, ; 90: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 3
	i64 5142919913060024034, ; 91: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 131
	i64 5178572682164047940, ; 92: Xamarin.Android.Support.Print.dll => 0x47ddfc6acbee1044 => 70
	i64 5203618020066742981, ; 93: Xamarin.Essentials => 0x4836f704f0e652c5 => 129
	i64 5205316157927637098, ; 94: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 110
	i64 5288341611614403055, ; 95: Xamarin.Android.Support.Interpolator.dll => 0x4963f6ad4b3179ef => 67
	i64 5348796042099802469, ; 96: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 111
	i64 5376510917114486089, ; 97: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 124
	i64 5408338804355907810, ; 98: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 123
	i64 5439315836349573567, ; 99: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0x4b7c54ef36c5e9bf => 54
	i64 5446034149219586269, ; 100: System.Diagnostics.Debug => 0x4b94333452e150dd => 7
	i64 5451019430259338467, ; 101: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 90
	i64 5507995362134886206, ; 102: System.Core.dll => 0x4c705499688c873e => 37
	i64 5692067934154308417, ; 103: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 128
	i64 5757522595884336624, ; 104: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 88
	i64 5767696078500135884, ; 105: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 55
	i64 5814345312393086621, ; 106: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 116
	i64 5896680224035167651, ; 107: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 105
	i64 6044705416426755068, ; 108: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0x53e31b8ccdff13fc => 72
	i64 6085203216496545422, ; 109: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 132
	i64 6086316965293125504, ; 110: FormsViewGroup.dll => 0x5476f10882baef80 => 11
	i64 6183170893902868313, ; 111: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 31
	i64 6311200438583329442, ; 112: Xamarin.Android.Support.LocalBroadcastManager => 0x5795e35c580c82a2 => 69
	i64 6319713645133255417, ; 113: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 106
	i64 6401687960814735282, ; 114: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 104
	i64 6405879832841858445, ; 115: Xamarin.Android.Support.Vector.Drawable.dll => 0x58e641c4a660ad8d => 74
	i64 6504860066809920875, ; 116: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 85
	i64 6548213210057960872, ; 117: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 94
	i64 6560151584539558821, ; 118: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 26
	i64 6591024623626361694, ; 119: System.Web.Services.dll => 0x5b7805f9751a1b5e => 143
	i64 6659513131007730089, ; 120: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 100
	i64 6876862101832370452, ; 121: System.Xml.Linq => 0x5f6f85a57d108914 => 46
	i64 6894844156784520562, ; 122: System.Numerics.Vectors => 0x5faf683aead1ad72 => 42
	i64 7036436454368433159, ; 123: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 102
	i64 7103753931438454322, ; 124: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 99
	i64 7194160955514091247, ; 125: Xamarin.Android.Support.CursorAdapter.dll => 0x63d6cb45d266f6ef => 62
	i64 7338192458477945005, ; 126: System.Reflection => 0x65d67f295d0740ad => 149
	i64 7488575175965059935, ; 127: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 46
	i64 7635363394907363464, ; 128: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 130
	i64 7637365915383206639, ; 129: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 129
	i64 7654504624184590948, ; 130: System.Net.Http => 0x6a3a4366801b8264 => 8
	i64 7820441508502274321, ; 131: System.Data => 0x6c87ca1e14ff8111 => 136
	i64 7821246742157274664, ; 132: Xamarin.Android.Support.AsyncLayoutInflater => 0x6c8aa67926f72e28 => 56
	i64 7836164640616011524, ; 133: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 80
	i64 7879037620440914030, ; 134: Xamarin.Android.Support.v7.AppCompat.dll => 0x6d57f6f88a51d86e => 73
	i64 7972383140441761405, ; 135: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 17
	i64 8044118961405839122, ; 136: System.ComponentModel.Composition => 0x6fa2739369944712 => 142
	i64 8064050204834738623, ; 137: System.Collections.dll => 0x6fe942efa61731bf => 5
	i64 8083354569033831015, ; 138: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 103
	i64 8087206902342787202, ; 139: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 38
	i64 8101777744205214367, ; 140: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 55
	i64 8103644804370223335, ; 141: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 138
	i64 8167236081217502503, ; 142: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 12
	i64 8185542183669246576, ; 143: System.Collections => 0x7198e33f4794aa70 => 5
	i64 8196541262927413903, ; 144: Xamarin.Android.Support.Interpolator => 0x71bff6d9fb9ec28f => 67
	i64 8290740647658429042, ; 145: System.Runtime.Extensions => 0x730ea0b15c929a72 => 150
	i64 8318905602908530212, ; 146: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 144
	i64 8385935383968044654, ; 147: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0x7460d3cd16cb566e => 52
	i64 8398329775253868912, ; 148: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 89
	i64 8400357532724379117, ; 149: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 115
	i64 8518412311883997971, ; 150: System.Collections.Immutable => 0x76377add7c28e313 => 36
	i64 8601935802264776013, ; 151: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 123
	i64 8626175481042262068, ; 152: Java.Interop => 0x77b654e585b55834 => 12
	i64 8639588376636138208, ; 153: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 114
	i64 8684531736582871431, ; 154: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 141
	i64 8725526185868997716, ; 155: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 38
	i64 8808820144457481518, ; 156: Xamarin.Android.Support.Loader.dll => 0x7a3f374010b17d2e => 68
	i64 8917102979740339192, ; 157: Xamarin.Android.Support.DocumentFile.dll => 0x7bbfe9ea4d000bf8 => 64
	i64 9111603110219107042, ; 158: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 18
	i64 9250544137016314866, ; 159: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 16
	i64 9312692141327339315, ; 160: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 128
	i64 9324707631942237306, ; 161: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 81
	i64 9662334977499516867, ; 162: System.Numerics.dll => 0x8617827802b0cfc3 => 41
	i64 9678050649315576968, ; 163: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 91
	i64 9711637524876806384, ; 164: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 111
	i64 9808709177481450983, ; 165: Mono.Android.dll => 0x881f890734e555e7 => 28
	i64 9825649861376906464, ; 166: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 88
	i64 9834056768316610435, ; 167: System.Transactions.dll => 0x8879968718899783 => 137
	i64 9866412715007501892, ; 168: Xamarin.Android.Arch.Lifecycle.Common.dll => 0x88ec8a16fd6b6644 => 49
	i64 9998632235833408227, ; 169: Mono.Security => 0x8ac2470b209ebae3 => 151
	i64 10038780035334861115, ; 170: System.Net.Http.dll => 0x8b50e941206af13b => 8
	i64 10205853378024263619, ; 171: Microsoft.Extensions.Configuration.Binder => 0x8da279930adb4fc3 => 20
	i64 10229024438826829339, ; 172: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 94
	i64 10303855825347935641, ; 173: Xamarin.Android.Support.Loader => 0x8efea647eeb3fd99 => 68
	i64 10363495123250631811, ; 174: Xamarin.Android.Support.Collections.dll => 0x8fd287e80cd8d483 => 57
	i64 10376576884623852283, ; 175: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 122
	i64 10430153318873392755, ; 176: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 92
	i64 10447083246144586668, ; 177: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 13
	i64 10635644668885628703, ; 178: Xamarin.Android.Support.DrawerLayout.dll => 0x93996679ee34771f => 65
	i64 10714184849103829812, ; 179: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 150
	i64 10847732767863316357, ; 180: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 82
	i64 10850923258212604222, ; 181: Xamarin.Android.Arch.Lifecycle.Runtime => 0x9696393672c9593e => 52
	i64 10964653383833615866, ; 182: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 148
	i64 11002576679268595294, ; 183: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 24
	i64 11023048688141570732, ; 184: System.Core => 0x98f9bc61168392ac => 37
	i64 11037814507248023548, ; 185: System.Xml => 0x992e31d0412bf7fc => 45
	i64 11162124722117608902, ; 186: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 127
	i64 11226290749488709958, ; 187: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 26
	i64 11340910727871153756, ; 188: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 93
	i64 11376461258732682436, ; 189: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 58
	i64 11392833485892708388, ; 190: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 117
	i64 11485890710487134646, ; 191: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 147
	i64 11529969570048099689, ; 192: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 127
	i64 11530571088791430846, ; 193: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 25
	i64 11578238080964724296, ; 194: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 102
	i64 11580057168383206117, ; 195: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 78
	i64 11597940890313164233, ; 196: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 197: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 99
	i64 11739066727115742305, ; 198: SQLite-net.dll => 0xa2e98afdf8575c61 => 30
	i64 11806260347154423189, ; 199: SQLite-net => 0xa3d8433bc5eb5d95 => 30
	i64 11834399401546345650, ; 200: Xamarin.Android.Support.SlidingPaneLayout.dll => 0xa43c3b8deb43ecb2 => 71
	i64 11865714326292153359, ; 201: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa4ab7c5000e8440f => 51
	i64 12102847907131387746, ; 202: System.Buffers => 0xa7f5f40c43256f62 => 35
	i64 12137774235383566651, ; 203: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 125
	i64 12269460666702402136, ; 204: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 36
	i64 12279246230491828964, ; 205: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 34
	i64 12388767885335911387, ; 206: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0xabedbec0d236dbdb => 51
	i64 12414299427252656003, ; 207: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 58
	i64 12451044538927396471, ; 208: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 98
	i64 12466513435562512481, ; 209: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 109
	i64 12487638416075308985, ; 210: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 95
	i64 12538491095302438457, ; 211: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 86
	i64 12550732019250633519, ; 212: System.IO.Compression => 0xae2d28465e8e1b2f => 140
	i64 12680928823959994930, ; 213: App.Android => 0xaffbb5943625c232 => 0
	i64 12700543734426720211, ; 214: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 87
	i64 12843321153144804894, ; 215: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 27
	i64 12952608645614506925, ; 216: Xamarin.Android.Support.Core.Utils => 0xb3c0e8eff48193ad => 61
	i64 12963446364377008305, ; 217: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 139
	i64 13358059602087096138, ; 218: Xamarin.Android.Support.Fragment.dll => 0xb9615c6f1ee5af4a => 66
	i64 13370592475155966277, ; 219: System.Runtime.Serialization => 0xb98de304062ea945 => 9
	i64 13401370062847626945, ; 220: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 125
	i64 13404347523447273790, ; 221: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 89
	i64 13454009404024712428, ; 222: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 135
	i64 13491513212026656886, ; 223: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 83
	i64 13572454107664307259, ; 224: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 118
	i64 13647894001087880694, ; 225: System.Data.dll => 0xbd670f48cb071df6 => 136
	i64 13818328264475132956, ; 226: Microsoft.Bcl.HashCode => 0xbfc4905809c7c41c => 14
	i64 13959074834287824816, ; 227: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 98
	i64 13967638549803255703, ; 228: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 131
	i64 14124974489674258913, ; 229: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 86
	i64 14125464355221830302, ; 230: System.Threading.dll => 0xc407bafdbc707a9e => 6
	i64 14133832980772275001, ; 231: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 16
	i64 14172845254133543601, ; 232: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 112
	i64 14261073672896646636, ; 233: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 117
	i64 14327695147300244862, ; 234: System.Reflection.dll => 0xc6d632d338eb4d7e => 149
	i64 14369828458497533121, ; 235: Xamarin.Android.Support.Vector.Drawable => 0xc76be2d9300b64c1 => 74
	i64 14400856865250966808, ; 236: Xamarin.Android.Support.Core.UI => 0xc7da1f051a877d18 => 60
	i64 14486659737292545672, ; 237: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 105
	i64 14644440854989303794, ; 238: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 110
	i64 14661790646341542033, ; 239: Xamarin.Android.Support.SwipeRefreshLayout => 0xcb7924e94e552091 => 72
	i64 14669215534098758659, ; 240: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 23
	i64 14792063746108907174, ; 241: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 135
	i64 14852515768018889994, ; 242: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 93
	i64 14954917835170835695, ; 243: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 22
	i64 14959897687462241958, ; 244: App => 0xcf9c3baf915fe6a6 => 10
	i64 14987728460634540364, ; 245: System.IO.Compression.dll => 0xcfff1ba06622494c => 140
	i64 14988210264188246988, ; 246: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 95
	i64 15188640517174936311, ; 247: Xamarin.Android.Arch.Core.Common => 0xd2c8e413d75142f7 => 47
	i64 15227001540531775957, ; 248: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 19
	i64 15246441518555807158, ; 249: Xamarin.Android.Arch.Core.Common.dll => 0xd3963dc832493db6 => 47
	i64 15326820765897713587, ; 250: Xamarin.Android.Arch.Core.Runtime.dll => 0xd4b3ce481769e7b3 => 48
	i64 15370334346939861994, ; 251: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 92
	i64 15391712275433856905, ; 252: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 22
	i64 15568534730848034786, ; 253: Xamarin.Android.Support.VersionedParcelable.dll => 0xd80e8bda21875fe2 => 75
	i64 15582737692548360875, ; 254: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 108
	i64 15609085926864131306, ; 255: System.dll => 0xd89e9cf3334914ea => 39
	i64 15711091784725564177, ; 256: App.Android.dll => 0xda0902bcbe200b11 => 0
	i64 15777549416145007739, ; 257: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 120
	i64 15810740023422282496, ; 258: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 133
	i64 15963349826457351533, ; 259: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 146
	i64 16154507427712707110, ; 260: System => 0xe03056ea4e39aa26 => 39
	i64 16242842420508142678, ; 261: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe16a2b1f8908ac56 => 59
	i64 16321164108206115771, ; 262: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 24
	i64 16565028646146589191, ; 263: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 142
	i64 16621146507174665210, ; 264: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 90
	i64 16677317093839702854, ; 265: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 115
	i64 16755018182064898362, ; 266: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 32
	i64 16767985610513713374, ; 267: Xamarin.Android.Arch.Core.Runtime => 0xe8b3da12798808de => 48
	i64 16822611501064131242, ; 268: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 138
	i64 16833383113903931215, ; 269: mscorlib => 0xe99c30c1484d7f4f => 29
	i64 16932527889823454152, ; 270: Xamarin.Android.Support.Core.Utils.dll => 0xeafc6c67465253c8 => 61
	i64 17009591894298689098, ; 271: Xamarin.Android.Support.Animated.Vector.Drawable => 0xec0e35b50a097e4a => 54
	i64 17024911836938395553, ; 272: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 79
	i64 17031351772568316411, ; 273: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 113
	i64 17037200463775726619, ; 274: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 101
	i64 17187273293601214786, ; 275: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 2
	i64 17333249706306540043, ; 276: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 148
	i64 17383232329670771222, ; 277: Xamarin.Android.Support.CustomView.dll => 0xf13da5b41a1cc216 => 63
	i64 17428701562824544279, ; 278: Xamarin.Android.Support.Core.UI.dll => 0xf1df2fbaec73d017 => 60
	i64 17483646997724851973, ; 279: Xamarin.Android.Support.ViewPager => 0xf2a2644fe5b6ef05 => 76
	i64 17524135665394030571, ; 280: Xamarin.Android.Support.Print => 0xf3323c8a739097eb => 70
	i64 17544493274320527064, ; 281: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 84
	i64 17666959971718154066, ; 282: Xamarin.Android.Support.CustomView => 0xf52da67d9f4e4752 => 63
	i64 17685921127322830888, ; 283: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 7
	i64 17704177640604968747, ; 284: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 109
	i64 17710060891934109755, ; 285: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 107
	i64 17712670374920797664, ; 286: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 147
	i64 17760961058993581169, ; 287: Xamarin.Android.Arch.Lifecycle.Common => 0xf67b9bfb46dbac71 => 49
	i64 17838668724098252521, ; 288: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 35
	i64 17841643939744178149, ; 289: Xamarin.Android.Arch.Lifecycle.ViewModel => 0xf79a40a25573dfe5 => 53
	i64 17882897186074144999, ; 290: FormsViewGroup => 0xf82cd03e3ac830e7 => 11
	i64 17892495832318972303, ; 291: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 133
	i64 17928294245072900555, ; 292: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 141
	i64 17958105683855786126, ; 293: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xf93801f92d25c08e => 50
	i64 18017743553296241350, ; 294: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 17
	i64 18025913125965088385, ; 295: System.Threading => 0xfa28e87b91334681 => 6
	i64 18116111925905154859, ; 296: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 83
	i64 18121036031235206392, ; 297: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 113
	i64 18129453464017766560, ; 298: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 145
	i64 18245806341561545090, ; 299: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 4
	i64 18301997741680159453, ; 300: Xamarin.Android.Support.CursorAdapter => 0xfdfdc1fa58d8eadd => 62
	i64 18305135509493619199, ; 301: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 114
	i64 18370042311372477656, ; 302: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 33
	i64 18380184030268848184 ; 303: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 126
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [304 x i32] [
	i32 97, i32 27, i32 28, i32 87, i32 119, i32 120, i32 53, i32 106, ; 0..7
	i32 20, i32 139, i32 100, i32 57, i32 50, i32 33, i32 96, i32 137, ; 8..15
	i32 132, i32 151, i32 14, i32 134, i32 32, i32 82, i32 66, i32 9, ; 16..23
	i32 75, i32 34, i32 80, i32 108, i32 101, i32 40, i32 73, i32 81, ; 24..31
	i32 119, i32 13, i32 78, i32 107, i32 146, i32 112, i32 85, i32 15, ; 32..39
	i32 96, i32 143, i32 4, i32 144, i32 104, i32 43, i32 91, i32 124, ; 40..47
	i32 44, i32 77, i32 45, i32 29, i32 23, i32 116, i32 43, i32 71, ; 48..55
	i32 130, i32 65, i32 134, i32 10, i32 103, i32 79, i32 42, i32 122, ; 56..63
	i32 21, i32 121, i32 18, i32 41, i32 44, i32 19, i32 21, i32 1, ; 64..71
	i32 118, i32 97, i32 25, i32 40, i32 76, i32 31, i32 64, i32 56, ; 72..79
	i32 145, i32 15, i32 126, i32 2, i32 84, i32 77, i32 121, i32 59, ; 80..87
	i32 69, i32 3, i32 3, i32 131, i32 70, i32 129, i32 110, i32 67, ; 88..95
	i32 111, i32 124, i32 123, i32 54, i32 7, i32 90, i32 37, i32 128, ; 96..103
	i32 88, i32 55, i32 116, i32 105, i32 72, i32 132, i32 11, i32 31, ; 104..111
	i32 69, i32 106, i32 104, i32 74, i32 85, i32 94, i32 26, i32 143, ; 112..119
	i32 100, i32 46, i32 42, i32 102, i32 99, i32 62, i32 149, i32 46, ; 120..127
	i32 130, i32 129, i32 8, i32 136, i32 56, i32 80, i32 73, i32 17, ; 128..135
	i32 142, i32 5, i32 103, i32 38, i32 55, i32 138, i32 12, i32 5, ; 136..143
	i32 67, i32 150, i32 144, i32 52, i32 89, i32 115, i32 36, i32 123, ; 144..151
	i32 12, i32 114, i32 141, i32 38, i32 68, i32 64, i32 18, i32 16, ; 152..159
	i32 128, i32 81, i32 41, i32 91, i32 111, i32 28, i32 88, i32 137, ; 160..167
	i32 49, i32 151, i32 8, i32 20, i32 94, i32 68, i32 57, i32 122, ; 168..175
	i32 92, i32 13, i32 65, i32 150, i32 82, i32 52, i32 148, i32 24, ; 176..183
	i32 37, i32 45, i32 127, i32 26, i32 93, i32 58, i32 117, i32 147, ; 184..191
	i32 127, i32 25, i32 102, i32 78, i32 1, i32 99, i32 30, i32 30, ; 192..199
	i32 71, i32 51, i32 35, i32 125, i32 36, i32 34, i32 51, i32 58, ; 200..207
	i32 98, i32 109, i32 95, i32 86, i32 140, i32 0, i32 87, i32 27, ; 208..215
	i32 61, i32 139, i32 66, i32 9, i32 125, i32 89, i32 135, i32 83, ; 216..223
	i32 118, i32 136, i32 14, i32 98, i32 131, i32 86, i32 6, i32 16, ; 224..231
	i32 112, i32 117, i32 149, i32 74, i32 60, i32 105, i32 110, i32 72, ; 232..239
	i32 23, i32 135, i32 93, i32 22, i32 10, i32 140, i32 95, i32 47, ; 240..247
	i32 19, i32 47, i32 48, i32 92, i32 22, i32 75, i32 108, i32 39, ; 248..255
	i32 0, i32 120, i32 133, i32 146, i32 39, i32 59, i32 24, i32 142, ; 256..263
	i32 90, i32 115, i32 32, i32 48, i32 138, i32 29, i32 61, i32 54, ; 264..271
	i32 79, i32 113, i32 101, i32 2, i32 148, i32 63, i32 60, i32 76, ; 272..279
	i32 70, i32 84, i32 63, i32 7, i32 109, i32 107, i32 147, i32 49, ; 280..287
	i32 35, i32 53, i32 11, i32 133, i32 141, i32 50, i32 17, i32 6, ; 288..295
	i32 83, i32 113, i32 145, i32 4, i32 62, i32 114, i32 33, i32 126 ; 304..303
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
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
