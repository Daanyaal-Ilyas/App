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
@assembly_image_cache_hashes = local_unnamed_addr constant [304 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 106
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 135
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 130
	i32 57967248, ; 3: Xamarin.Android.Support.VersionedParcelable.dll => 0x3748290 => 75
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 120
	i32 117431740, ; 5: System.Runtime.InteropServices => 0x6ffddbc => 147
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 120
	i32 159306688, ; 7: System.ComponentModel.Annotations => 0x97ed3c0 => 2
	i32 160529393, ; 8: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 47
	i32 165246403, ; 9: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 87
	i32 166922606, ; 10: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 58
	i32 182336117, ; 11: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 121
	i32 201930040, ; 12: Xamarin.Android.Arch.Core.Runtime => 0xc093538 => 48
	i32 209399409, ; 13: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 85
	i32 220171995, ; 14: System.Diagnostics.Debug => 0xd1f8edb => 7
	i32 230216969, ; 15: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 101
	i32 232815796, ; 16: System.Web.Services => 0xde07cb4 => 143
	i32 261689757, ; 17: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 90
	i32 278686392, ; 18: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 105
	i32 280482487, ; 19: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 99
	i32 318968648, ; 20: Xamarin.AndroidX.Activity.dll => 0x13031348 => 77
	i32 321597661, ; 21: System.Numerics => 0x132b30dd => 41
	i32 342366114, ; 22: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 103
	i32 347068432, ; 23: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 33
	i32 385762202, ; 24: System.Memory.dll => 0x16fe439a => 40
	i32 388313361, ; 25: Xamarin.Android.Support.Animated.Vector.Drawable => 0x17253111 => 54
	i32 389971796, ; 26: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 60
	i32 441335492, ; 27: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 89
	i32 442521989, ; 28: Xamarin.Essentials => 0x1a605985 => 129
	i32 442565967, ; 29: System.Collections => 0x1a61054f => 5
	i32 450948140, ; 30: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 98
	i32 465846621, ; 31: mscorlib => 0x1bc4415d => 29
	i32 469710990, ; 32: System.dll => 0x1bff388e => 39
	i32 476646585, ; 33: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 99
	i32 486930444, ; 34: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 110
	i32 513247710, ; 35: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 27
	i32 514659665, ; 36: Xamarin.Android.Support.Compat => 0x1ead1551 => 58
	i32 524864063, ; 37: Xamarin.Android.Support.Print => 0x1f48ca3f => 70
	i32 526420162, ; 38: System.Transactions.dll => 0x1f6088c2 => 137
	i32 539058512, ; 39: Microsoft.Extensions.Logging => 0x20216150 => 25
	i32 545304856, ; 40: System.Runtime.Extensions => 0x2080b118 => 150
	i32 548916678, ; 41: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 13
	i32 596053995, ; 42: App.Android => 0x23870feb => 0
	i32 605376203, ; 43: System.IO.Compression.FileSystem => 0x24154ecb => 141
	i32 627609679, ; 44: Xamarin.AndroidX.CustomView => 0x2568904f => 94
	i32 663517072, ; 45: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 126
	i32 666292255, ; 46: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 82
	i32 672442732, ; 47: System.Collections.Concurrent => 0x2814a96c => 4
	i32 690569205, ; 48: System.Xml.Linq.dll => 0x29293ff5 => 46
	i32 692692150, ; 49: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 55
	i32 748832960, ; 50: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 31
	i32 775507847, ; 51: System.IO.Compression => 0x2e394f87 => 140
	i32 789151979, ; 52: Microsoft.Extensions.Options => 0x2f0980eb => 26
	i32 801787702, ; 53: Xamarin.Android.Support.Interpolator => 0x2fca4f36 => 67
	i32 809851609, ; 54: System.Drawing.Common.dll => 0x30455ad9 => 139
	i32 843511501, ; 55: Xamarin.AndroidX.Print => 0x3246f6cd => 117
	i32 916714535, ; 56: Xamarin.Android.Support.Print.dll => 0x36a3f427 => 70
	i32 928116545, ; 57: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 135
	i32 967690846, ; 58: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 103
	i32 974778368, ; 59: FormsViewGroup.dll => 0x3a19f000 => 11
	i32 975236339, ; 60: System.Diagnostics.Tracing => 0x3a20ecf3 => 148
	i32 987342438, ; 61: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0x3ad9a666 => 51
	i32 992768348, ; 62: System.Collections.dll => 0x3b2c715c => 5
	i32 1012816738, ; 63: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 119
	i32 1028951442, ; 64: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 22
	i32 1035644815, ; 65: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 81
	i32 1042160112, ; 66: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 132
	i32 1052210849, ; 67: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 107
	i32 1092479848, ; 68: App => 0x411deb68 => 10
	i32 1098167829, ; 69: Xamarin.Android.Arch.Lifecycle.ViewModel => 0x4174b615 => 53
	i32 1098259244, ; 70: System => 0x41761b2c => 39
	i32 1157931901, ; 71: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 15
	i32 1175144683, ; 72: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 124
	i32 1178241025, ; 73: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 114
	i32 1202000627, ; 74: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 15
	i32 1204270330, ; 75: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 82
	i32 1204575371, ; 76: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 18
	i32 1267360935, ; 77: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 125
	i32 1292207520, ; 78: SQLitePCLRaw.core.dll => 0x4d0585a0 => 32
	i32 1292763917, ; 79: Xamarin.Android.Support.CursorAdapter.dll => 0x4d0e030d => 62
	i32 1293217323, ; 80: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 96
	i32 1297413738, ; 81: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0x4d54f66a => 50
	i32 1365406463, ; 82: System.ServiceModel.Internals.dll => 0x516272ff => 145
	i32 1376866003, ; 83: Xamarin.AndroidX.SavedState => 0x52114ed3 => 119
	i32 1379779777, ; 84: System.Resources.ResourceManager => 0x523dc4c1 => 3
	i32 1395857551, ; 85: Xamarin.AndroidX.Media.dll => 0x5333188f => 111
	i32 1406073936, ; 86: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 91
	i32 1411638395, ; 87: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 43
	i32 1445445088, ; 88: Xamarin.Android.Support.Fragment => 0x5627bde0 => 66
	i32 1457743152, ; 89: System.Runtime.Extensions.dll => 0x56e36530 => 150
	i32 1460219004, ; 90: Xamarin.Forms.Xaml => 0x57092c7c => 133
	i32 1461234159, ; 91: System.Collections.Immutable.dll => 0x5718a9ef => 36
	i32 1462112819, ; 92: System.IO.Compression.dll => 0x57261233 => 140
	i32 1469204771, ; 93: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 80
	i32 1470490898, ; 94: Microsoft.Extensions.Primitives => 0x57a5e912 => 27
	i32 1479771757, ; 95: System.Collections.Immutable => 0x5833866d => 36
	i32 1574652163, ; 96: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 61
	i32 1582372066, ; 97: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 95
	i32 1587447679, ; 98: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 47
	i32 1592978981, ; 99: System.Runtime.Serialization.dll => 0x5ef2ee25 => 9
	i32 1622152042, ; 100: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 109
	i32 1624863272, ; 101: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 128
	i32 1636350590, ; 102: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 93
	i32 1639515021, ; 103: System.Net.Http.dll => 0x61b9038d => 8
	i32 1657153582, ; 104: System.Runtime => 0x62c6282e => 44
	i32 1658241508, ; 105: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 122
	i32 1658251792, ; 106: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 134
	i32 1662014763, ; 107: Xamarin.Android.Support.Vector.Drawable => 0x6310552b => 74
	i32 1670060433, ; 108: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 90
	i32 1689493916, ; 109: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 16
	i32 1701541528, ; 110: System.Diagnostics.Debug.dll => 0x656b7698 => 7
	i32 1711441057, ; 111: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 33
	i32 1726116996, ; 112: System.Reflection.dll => 0x66e27484 => 149
	i32 1729485958, ; 113: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 86
	i32 1766324549, ; 114: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 121
	i32 1770582343, ; 115: Microsoft.Extensions.Logging.dll => 0x6988f147 => 25
	i32 1776026572, ; 116: System.Core.dll => 0x69dc03cc => 37
	i32 1788241197, ; 117: Xamarin.AndroidX.Fragment => 0x6a96652d => 98
	i32 1796167890, ; 118: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 13
	i32 1808609942, ; 119: Xamarin.AndroidX.Loader => 0x6bcd3296 => 109
	i32 1813201214, ; 120: Xamarin.Google.Android.Material => 0x6c13413e => 134
	i32 1818569960, ; 121: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 115
	i32 1828688058, ; 122: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 24
	i32 1866717392, ; 123: Xamarin.Android.Support.Interpolator.dll => 0x6f43d8d0 => 67
	i32 1867746548, ; 124: Xamarin.Essentials.dll => 0x6f538cf4 => 129
	i32 1878053835, ; 125: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 133
	i32 1885316902, ; 126: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 83
	i32 1900610850, ; 127: System.Resources.ResourceManager.dll => 0x71490522 => 3
	i32 1916660109, ; 128: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x723de98d => 53
	i32 1919157823, ; 129: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 112
	i32 1968388702, ; 130: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 21
	i32 2011961780, ; 131: System.Buffers.dll => 0x77ec19b4 => 35
	i32 2019465201, ; 132: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 107
	i32 2037417872, ; 133: Xamarin.Android.Support.ViewPager => 0x79708790 => 76
	i32 2044222327, ; 134: Xamarin.Android.Support.Loader => 0x79d85b77 => 68
	i32 2048278909, ; 135: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 20
	i32 2055257422, ; 136: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 104
	i32 2079903147, ; 137: System.Runtime.dll => 0x7bf8cdab => 44
	i32 2090596640, ; 138: System.Numerics.Vectors => 0x7c9bf920 => 42
	i32 2097448633, ; 139: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 100
	i32 2103459038, ; 140: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 34
	i32 2126786730, ; 141: Xamarin.Forms.Platform.Android => 0x7ec430aa => 131
	i32 2139458754, ; 142: Xamarin.Android.Support.DrawerLayout => 0x7f858cc2 => 65
	i32 2166116741, ; 143: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 61
	i32 2181898931, ; 144: Microsoft.Extensions.Options.dll => 0x820d22b3 => 26
	i32 2192057212, ; 145: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 24
	i32 2196165013, ; 146: Xamarin.Android.Support.VersionedParcelable => 0x82e6d195 => 75
	i32 2201231467, ; 147: System.Net.Http => 0x8334206b => 8
	i32 2217644978, ; 148: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 124
	i32 2244775296, ; 149: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 110
	i32 2252897993, ; 150: Microsoft.EntityFrameworkCore => 0x86487ec9 => 16
	i32 2256548716, ; 151: Xamarin.AndroidX.MultiDex => 0x8680336c => 112
	i32 2261435625, ; 152: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 102
	i32 2266799131, ; 153: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 19
	i32 2279755925, ; 154: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 118
	i32 2315684594, ; 155: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 78
	i32 2330457430, ; 156: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 60
	i32 2330986192, ; 157: Xamarin.Android.Support.SlidingPaneLayout.dll => 0x8af006d0 => 71
	i32 2371007202, ; 158: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 21
	i32 2373288475, ; 159: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 66
	i32 2409053734, ; 160: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 116
	i32 2435904999, ; 161: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 144
	i32 2440966767, ; 162: Xamarin.Android.Support.Loader.dll => 0x917e326f => 68
	i32 2465273461, ; 163: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 31
	i32 2465532216, ; 164: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 89
	i32 2471841756, ; 165: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 166: Java.Interop.dll => 0x93918882 => 12
	i32 2487632829, ; 167: Xamarin.Android.Support.DocumentFile => 0x944643bd => 64
	i32 2501346920, ; 168: System.Data.DataSetExtensions => 0x95178668 => 138
	i32 2505896520, ; 169: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 106
	i32 2581819634, ; 170: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 125
	i32 2620871830, ; 171: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 93
	i32 2624644809, ; 172: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 97
	i32 2633051222, ; 173: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 105
	i32 2698266930, ; 174: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa0d44932 => 51
	i32 2701096212, ; 175: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 122
	i32 2732626843, ; 176: Xamarin.AndroidX.Activity => 0xa2e0939b => 77
	i32 2737747696, ; 177: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 80
	i32 2751899777, ; 178: Xamarin.Android.Support.Collections => 0xa406a881 => 57
	i32 2766581644, ; 179: Xamarin.Forms.Core => 0xa4e6af8c => 130
	i32 2778768386, ; 180: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 127
	i32 2788639665, ; 181: Xamarin.Android.Support.LocalBroadcastManager => 0xa63743b1 => 69
	i32 2788775637, ; 182: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0xa63956d5 => 72
	i32 2810250172, ; 183: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 91
	i32 2819470561, ; 184: System.Xml.dll => 0xa80db4e1 => 45
	i32 2853208004, ; 185: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 127
	i32 2855708567, ; 186: Xamarin.AndroidX.Transition => 0xaa36a797 => 123
	i32 2876493027, ; 187: Xamarin.Android.Support.SwipeRefreshLayout => 0xab73cce3 => 72
	i32 2893257763, ; 188: Xamarin.Android.Arch.Core.Runtime.dll => 0xac739c23 => 48
	i32 2901442782, ; 189: System.Reflection => 0xacf080de => 149
	i32 2903344695, ; 190: System.ComponentModel.Composition => 0xad0d8637 => 142
	i32 2905242038, ; 191: mscorlib.dll => 0xad2a79b6 => 29
	i32 2916838712, ; 192: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 128
	i32 2919462931, ; 193: System.Numerics.Vectors.dll => 0xae037813 => 42
	i32 2921128767, ; 194: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 79
	i32 2921692953, ; 195: Xamarin.Android.Support.CustomView.dll => 0xae257f19 => 63
	i32 2922925221, ; 196: Xamarin.Android.Support.Vector.Drawable.dll => 0xae384ca5 => 74
	i32 2978675010, ; 197: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 96
	i32 3024354802, ; 198: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 101
	i32 3044182254, ; 199: FormsViewGroup => 0xb57288ee => 11
	i32 3056250942, ; 200: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0xb62ab03e => 56
	i32 3057625584, ; 201: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 113
	i32 3068715062, ; 202: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 49
	i32 3069363400, ; 203: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 17
	i32 3111772706, ; 204: System.Runtime.Serialization => 0xb979e222 => 9
	i32 3124832203, ; 205: System.Threading.Tasks.Extensions => 0xba4127cb => 146
	i32 3147165239, ; 206: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 148
	i32 3195844289, ; 207: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 17
	i32 3204380047, ; 208: System.Data.dll => 0xbefef58f => 136
	i32 3204912593, ; 209: Xamarin.Android.Support.AsyncLayoutInflater => 0xbf0715d1 => 56
	i32 3211777861, ; 210: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 95
	i32 3220365878, ; 211: System.Threading => 0xbff2e236 => 6
	i32 3221379417, ; 212: App.dll => 0xc0025959 => 10
	i32 3233339011, ; 213: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xc0b8d683 => 50
	i32 3247949154, ; 214: Mono.Security => 0xc197c562 => 151
	i32 3258312781, ; 215: Xamarin.AndroidX.CardView => 0xc235e84d => 86
	i32 3265893370, ; 216: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 146
	i32 3267021929, ; 217: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 84
	i32 3280506390, ; 218: System.ComponentModel.Annotations.dll => 0xc3888e16 => 2
	i32 3286872994, ; 219: SQLite-net.dll => 0xc3e9b3a2 => 30
	i32 3296380511, ; 220: Xamarin.Android.Support.Collections.dll => 0xc47ac65f => 57
	i32 3317135071, ; 221: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 94
	i32 3317144872, ; 222: System.Data => 0xc5b79d28 => 136
	i32 3321585405, ; 223: Xamarin.Android.Support.DocumentFile.dll => 0xc5fb5efd => 64
	i32 3340431453, ; 224: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 83
	i32 3346324047, ; 225: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 114
	i32 3352662376, ; 226: Xamarin.Android.Support.CoordinaterLayout => 0xc7d59168 => 59
	i32 3353484488, ; 227: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 100
	i32 3357663996, ; 228: Xamarin.Android.Support.CursorAdapter => 0xc821e2fc => 62
	i32 3360279109, ; 229: SQLitePCLRaw.core => 0xc849ca45 => 32
	i32 3362522851, ; 230: Xamarin.AndroidX.Core => 0xc86c06e3 => 92
	i32 3366347497, ; 231: Java.Interop => 0xc8a662e9 => 12
	i32 3374999561, ; 232: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 118
	i32 3395150330, ; 233: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 43
	i32 3404865022, ; 234: System.ServiceModel.Internals => 0xcaf21dfe => 145
	i32 3421170118, ; 235: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 20
	i32 3428513518, ; 236: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 23
	i32 3429136800, ; 237: System.Xml => 0xcc6479a0 => 45
	i32 3430777524, ; 238: netstandard => 0xcc7d82b4 => 1
	i32 3439690031, ; 239: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 55
	i32 3441283291, ; 240: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 97
	i32 3476120550, ; 241: Mono.Android => 0xcf3163e6 => 28
	i32 3486566296, ; 242: System.Transactions => 0xcfd0c798 => 137
	i32 3493954962, ; 243: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 88
	i32 3501239056, ; 244: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 84
	i32 3509114376, ; 245: System.Xml.Linq => 0xd128d608 => 46
	i32 3536029504, ; 246: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 131
	i32 3547625832, ; 247: Xamarin.Android.Support.SlidingPaneLayout => 0xd3747968 => 71
	i32 3567349600, ; 248: System.ComponentModel.Composition.dll => 0xd4a16f60 => 142
	i32 3618140916, ; 249: Xamarin.AndroidX.Preference => 0xd7a872f4 => 116
	i32 3627220390, ; 250: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 117
	i32 3632359727, ; 251: Xamarin.Forms.Platform => 0xd881692f => 132
	i32 3633644679, ; 252: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 79
	i32 3641597786, ; 253: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 104
	i32 3645089577, ; 254: System.ComponentModel.DataAnnotations => 0xd943a729 => 144
	i32 3657292374, ; 255: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 19
	i32 3664423555, ; 256: Xamarin.Android.Support.ViewPager.dll => 0xda6aaa83 => 76
	i32 3672681054, ; 257: Mono.Android.dll => 0xdae8aa5e => 28
	i32 3676310014, ; 258: System.Web.Services.dll => 0xdb2009fe => 143
	i32 3678221644, ; 259: Xamarin.Android.Support.v7.AppCompat => 0xdb3d354c => 73
	i32 3681174138, ; 260: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 49
	i32 3682565725, ; 261: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 85
	i32 3684561358, ; 262: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 88
	i32 3689375977, ; 263: System.Drawing.Common => 0xdbe768e9 => 139
	i32 3712518982, ; 264: App.Android.dll => 0xdd488b46 => 0
	i32 3714038699, ; 265: Xamarin.Android.Support.LocalBroadcastManager.dll => 0xdd5fbbab => 69
	i32 3718463572, ; 266: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0xdda34054 => 54
	i32 3718780102, ; 267: Xamarin.AndroidX.Annotation => 0xdda814c6 => 78
	i32 3724971120, ; 268: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 113
	i32 3748608112, ; 269: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 38
	i32 3754567612, ; 270: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 34
	i32 3758932259, ; 271: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 102
	i32 3776062606, ; 272: Xamarin.Android.Support.DrawerLayout.dll => 0xe112248e => 65
	i32 3786282454, ; 273: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 87
	i32 3822602673, ; 274: Xamarin.AndroidX.Media => 0xe3d849b1 => 111
	i32 3829621856, ; 275: System.Numerics.dll => 0xe4436460 => 41
	i32 3832731800, ; 276: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe472d898 => 59
	i32 3841636137, ; 277: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 22
	i32 3849253459, ; 278: System.Runtime.InteropServices.dll => 0xe56ef253 => 147
	i32 3862817207, ; 279: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 52
	i32 3874897629, ; 280: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 52
	i32 3876362041, ; 281: SQLite-net => 0xe70c9739 => 30
	i32 3883175360, ; 282: Xamarin.Android.Support.v7.AppCompat.dll => 0xe7748dc0 => 73
	i32 3885922214, ; 283: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 123
	i32 3894448521, ; 284: Microsoft.Bcl.HashCode => 0xe8209189 => 14
	i32 3896106733, ; 285: System.Collections.Concurrent.dll => 0xe839deed => 4
	i32 3896760992, ; 286: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 92
	i32 3920810846, ; 287: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 141
	i32 3921031405, ; 288: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 126
	i32 3931092270, ; 289: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 115
	i32 3945713374, ; 290: System.Data.DataSetExtensions.dll => 0xeb2ecede => 138
	i32 3955647286, ; 291: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 81
	i32 4025784931, ; 292: System.Memory => 0xeff49a63 => 40
	i32 4063435586, ; 293: Xamarin.Android.Support.CustomView => 0xf2331b42 => 63
	i32 4073602200, ; 294: System.Threading.dll => 0xf2ce3c98 => 6
	i32 4101842092, ; 295: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 18
	i32 4105002889, ; 296: Mono.Security.dll => 0xf4ad5f89 => 151
	i32 4126470640, ; 297: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 23
	i32 4151237749, ; 298: System.Core => 0xf76edc75 => 37
	i32 4182413190, ; 299: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 108
	i32 4213026141, ; 300: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 38
	i32 4260525087, ; 301: System.Buffers => 0xfdf2741f => 35
	i32 4263658931, ; 302: Microsoft.Bcl.HashCode.dll => 0xfe2245b3 => 14
	i32 4292120959 ; 303: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 108
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [304 x i32] [
	i32 106, i32 135, i32 130, i32 75, i32 120, i32 147, i32 120, i32 2, ; 0..7
	i32 47, i32 87, i32 58, i32 121, i32 48, i32 85, i32 7, i32 101, ; 8..15
	i32 143, i32 90, i32 105, i32 99, i32 77, i32 41, i32 103, i32 33, ; 16..23
	i32 40, i32 54, i32 60, i32 89, i32 129, i32 5, i32 98, i32 29, ; 24..31
	i32 39, i32 99, i32 110, i32 27, i32 58, i32 70, i32 137, i32 25, ; 32..39
	i32 150, i32 13, i32 0, i32 141, i32 94, i32 126, i32 82, i32 4, ; 40..47
	i32 46, i32 55, i32 31, i32 140, i32 26, i32 67, i32 139, i32 117, ; 48..55
	i32 70, i32 135, i32 103, i32 11, i32 148, i32 51, i32 5, i32 119, ; 56..63
	i32 22, i32 81, i32 132, i32 107, i32 10, i32 53, i32 39, i32 15, ; 64..71
	i32 124, i32 114, i32 15, i32 82, i32 18, i32 125, i32 32, i32 62, ; 72..79
	i32 96, i32 50, i32 145, i32 119, i32 3, i32 111, i32 91, i32 43, ; 80..87
	i32 66, i32 150, i32 133, i32 36, i32 140, i32 80, i32 27, i32 36, ; 88..95
	i32 61, i32 95, i32 47, i32 9, i32 109, i32 128, i32 93, i32 8, ; 96..103
	i32 44, i32 122, i32 134, i32 74, i32 90, i32 16, i32 7, i32 33, ; 104..111
	i32 149, i32 86, i32 121, i32 25, i32 37, i32 98, i32 13, i32 109, ; 112..119
	i32 134, i32 115, i32 24, i32 67, i32 129, i32 133, i32 83, i32 3, ; 120..127
	i32 53, i32 112, i32 21, i32 35, i32 107, i32 76, i32 68, i32 20, ; 128..135
	i32 104, i32 44, i32 42, i32 100, i32 34, i32 131, i32 65, i32 61, ; 136..143
	i32 26, i32 24, i32 75, i32 8, i32 124, i32 110, i32 16, i32 112, ; 144..151
	i32 102, i32 19, i32 118, i32 78, i32 60, i32 71, i32 21, i32 66, ; 152..159
	i32 116, i32 144, i32 68, i32 31, i32 89, i32 1, i32 12, i32 64, ; 160..167
	i32 138, i32 106, i32 125, i32 93, i32 97, i32 105, i32 51, i32 122, ; 168..175
	i32 77, i32 80, i32 57, i32 130, i32 127, i32 69, i32 72, i32 91, ; 176..183
	i32 45, i32 127, i32 123, i32 72, i32 48, i32 149, i32 142, i32 29, ; 184..191
	i32 128, i32 42, i32 79, i32 63, i32 74, i32 96, i32 101, i32 11, ; 192..199
	i32 56, i32 113, i32 49, i32 17, i32 9, i32 146, i32 148, i32 17, ; 200..207
	i32 136, i32 56, i32 95, i32 6, i32 10, i32 50, i32 151, i32 86, ; 208..215
	i32 146, i32 84, i32 2, i32 30, i32 57, i32 94, i32 136, i32 64, ; 216..223
	i32 83, i32 114, i32 59, i32 100, i32 62, i32 32, i32 92, i32 12, ; 224..231
	i32 118, i32 43, i32 145, i32 20, i32 23, i32 45, i32 1, i32 55, ; 232..239
	i32 97, i32 28, i32 137, i32 88, i32 84, i32 46, i32 131, i32 71, ; 240..247
	i32 142, i32 116, i32 117, i32 132, i32 79, i32 104, i32 144, i32 19, ; 248..255
	i32 76, i32 28, i32 143, i32 73, i32 49, i32 85, i32 88, i32 139, ; 256..263
	i32 0, i32 69, i32 54, i32 78, i32 113, i32 38, i32 34, i32 102, ; 264..271
	i32 65, i32 87, i32 111, i32 41, i32 59, i32 22, i32 147, i32 52, ; 272..279
	i32 52, i32 30, i32 73, i32 123, i32 14, i32 4, i32 92, i32 141, ; 280..287
	i32 126, i32 115, i32 138, i32 81, i32 40, i32 63, i32 6, i32 18, ; 288..295
	i32 151, i32 23, i32 37, i32 108, i32 38, i32 35, i32 14, i32 108 ; 304..303
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
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
