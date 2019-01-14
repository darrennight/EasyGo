# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/zenghao/Downloads/adt-bundle-mac-x86_64-20131030/sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

-ignorewarnings
-dontoptimize
-keepattributes JavascriptInterface
-keep class * extends java.lang.Object {
    public void setValue(java.lang.String);
}
-keep,allowobfuscation @interface com.facebook.common.internal.DoNotStrip
# retrofit
-dontwarn retrofit.**
-keep class retrofit.** { *; }
-keepattributes Exceptions
-keep class com.squareup.okhttp.** { *; }
-keep interface com.squareup.okhttp.** { *; }
-dontwarn com.squareup.okhttp.**
-dontwarn okio.**


-keepattributes Signature
-keep class com.easy.go.bean.**{*;}

-keep @com.facebook.common.internal.DoNotStrip class *
-keepclassmembers class * {
    @com.facebook.common.internal.DoNotStrip *;
}
-keep class com.facebook.imagepipeline.animated.** { *; }
-keep class com.facebook.animated.gif.** { *; }
-keep class com.facebook.imagepipeline.gif.** { *; }

-keepnames class * extends android.app.Fragment
-keepnames class * extends android.support.v4.app.Fragment

-keepclassmembers class * {
   public static native <methods>;
   private static native <methods>;
   static native <methods>;
   private native <methods>;
   native <methods>;
}
-dontwarn javax.annotation.**


############################


# webview
-keepattributes JavascriptInterface
-keepattributes SourceFile,LineNumberTable

-keep class * extends java.lang.Object {
    public void setValue(java.lang.String);
}


-dontwarn android.net.http.**
-dontwarn org.apache.commons.**

# Keep our interfaces so they can be used by other ProGuard rules.
# See http://sourceforge.net/p/proguard/bugs/466/
-keep,allowobfuscation @interface com.facebook.common.internal.DoNotStrip

# Do not strip any method/class that is annotated with @DoNotStrip
-keep @com.facebook.common.internal.DoNotStrip class *
-keepclassmembers class * {
    @com.facebook.common.internal.DoNotStrip *;
}
-keep class com.facebook.imagepipeline.animated.** { *; }
-keep class com.facebook.animated.gif.** { *; }
-keep class com.facebook.imagepipeline.gif.** { *; }

# Keep native methods
-keepclassmembers class * {
    native <methods>;
}

-dontwarn okio.**
-dontwarn javax.annotation.**

-keepclassmembers class ** {
     public void *(***);
 }


# Keep all classes with a native method

-keepclassmembers class * {
   public static native <methods>;
   private static native <methods>;
   static native <methods>;
   private native <methods>;
   native <methods>;
}


-keep class android.support.v8.renderscript.** { *; }

# retrofit
-dontwarn retrofit.**
-keep class retrofit.** { *; }
-keepattributes Exceptions
-keep class com.squareup.okhttp.** { *; }
-keep interface com.squareup.okhttp.** { *; }
-dontwarn com.squareup.okhttp.**

#drawerlayout
-dontwarn android.support.**
-keepclasseswithmembernames class android.support.v4.**{*;}
-keep class com.breadtrip.view.customview.NoAnimDrawerLayout { *; }

# vector animation
-keep class android.graphics.drawable.AnimatedVectorDrawable { *; }
-keep class android.graphics.drawable.AnimatedVectorDrawable$* { *; }

-keepnames class * extends android.app.Fragment
-keepnames class * extends android.support.v4.app.Fragment

-dontwarn okio.**



#########################
-keepclassmembers class * implements android.os.Parcelable {
    static ** CREATOR;
}
-keep public class com.google.gson.**
-keep public class com.google.gson.** {public private protected *;}
-keep class com.qs.bnb.bean.**{*;}
-dontwarn kotlin.**

-keepattributes *Annotation*


-dontwarn retrofit.**
-keep class retrofit.** { *; }
-keepattributes Exceptions
-keep class com.squareup.okhttp.** { *; }
-keep interface com.squareup.okhttp.** { *; }
-dontwarn com.squareup.okhttp.**
-dontwarn okio.**
-dontwarn javax.annotation.Nullable
-dontwarn javax.annotation.ParametersAreNonnullByDefault








-renamesourcefileattribute SourceFile
-dontwarn kotlin.**
-keepclassmembers class **$WhenMappings {
    <fields>;
}
-ignorewarnings
#-dontoptimize
-keepattributes JavascriptInterface
-keep class * extends java.lang.Object {
    public void setValue(java.lang.String);
}
-dontwarn android.net.http.**
-dontwarn org.apache.commons.**
-keep,allowobfuscation @interface com.facebook.common.internal.DoNotStrip
# retrofit
-dontwarn retrofit.**
-keep class retrofit.** { *; }
-keepattributes Exceptions
-keep class com.squareup.okhttp.** { *; }
-keep interface com.squareup.okhttp.** { *; }
-dontwarn com.squareup.okhttp.**
-dontwarn okio.**
-dontwarn javax.annotation.Nullable
-dontwarn javax.annotation.ParametersAreNonnullByDefault

#-dontwarn com.alibaba.fastjson.**
#-keep class com.alibaba.fastjson.** { *; }
-keepattributes Signature
-keep class com.easy.go.bean.**{*;}

-keep @com.facebook.common.internal.DoNotStrip class *
-keepclassmembers class * {
    @com.facebook.common.internal.DoNotStrip *;
}
-keep class com.facebook.imagepipeline.animated.** { *; }
-keep class com.facebook.animated.gif.** { *; }
-keep class com.facebook.imagepipeline.gif.** { *; }

-keepnames class * extends android.app.Fragment
-keepnames class * extends android.support.v4.app.Fragment

-keepclassmembers class * {
   public static native <methods>;
   private static native <methods>;
   static native <methods>;
   private native <methods>;
   native <methods>;
}
-dontwarn javax.annotation.**

-keep public class com.google.gson.**
-keep public class com.google.gson.** {public private protected *;}
-keep class com.easy.go.bean.**{*;}

-keepattributes Signature
-keepattributes *Annotation*
-keep public class com.project.mocha_patient.login.SignResponseData { private *; }
-keep class sun.misc.Unsafe { *; }
-keep class com.google.gson.stream.** { *; }

# Retrofit
-dontnote retrofit2.Platform
-dontnote retrofit2.Platform$IOS$MainThreadExecutor
-dontwarn retrofit2.Platform$Java8
-keepattributes Signature
-keepattributes Exceptions

# okhttp
-dontwarn okio.**

# Gson
-keep class com.easy.go.bean.**{*;} # 自定义数据模型的bean目录

-keepclassmembers class **$WhenMappings {
    <fields>;
}
-assumenosideeffects class kotlin.jvm.internal.Intrinsics {
    static void checkParameterIsNotNull(java.lang.Object, java.lang.String);
}

-keepclassmembers class * implements android.os.Parcelable {
    static ** CREATOR;
}

-keep class * implements java.io.Serializable {*;}
-keepclassmembers class * implements java.io.Serializable {*;}
-dontwarn com.squareup.okhttp.**
-keep class com.squareup.okhttp.** {*;}
-keep interface com.squareup.okhttp.** {*;}
-dontwarn com.google.**
-keep class com.google.gson.** {*;}
-keepattributes Signature
-keep class * implements Android.os.Parcelable {
    # 保持Parcelable不被混淆
    public static final Android.os.Parcelable$Creator *;
}



-keepclasseswithmembernames class * {
    # 保持native方法不被混淆
    native <methods>;
}
#保留keep注解的类名和方法
-keep,allowobfuscation @interface android.support.annotation.Keep
-keep @android.support.annotation.Keep class *
-keepclassmember class * {
@android.support.annotation.Keep *;
}
#避免混淆Annotation、内部类、泛型、匿名类
-keepattributes *Annotation*,InnerClasses,Signature,EnclosingMethod

-dontwarn okio.**
-dontwarn javax.annotation.Nullable
-dontwarn javax.annotation.ParametersAreNonnullByDefault
#蒲公英
#-dontwarn com.pgyersdk.**
#-keep class com.pgyersdk.** { *; }