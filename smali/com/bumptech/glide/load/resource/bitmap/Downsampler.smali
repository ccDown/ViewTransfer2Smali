.class public final Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
.super Ljava/lang/Object;
.source "Downsampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    }
.end annotation


# static fields
.field public static final ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final DECODE_FORMAT:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option<",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOWNSAMPLE_STRATEGY:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option<",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

.field public static final FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final ICO_MIME_TYPE:Ljava/lang/String; = "image/x-ico"

.field private static final MARK_POSITION:I = 0xa00000

.field private static final NO_DOWNSAMPLE_PRE_N_MIME_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPTIONS_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "Downsampler"

.field private static final TYPES_THAT_USE_POOL_PRE_KITKAT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;",
            ">;"
        }
    .end annotation
.end field

.field private static final WBMP_MIME_TYPE:Ljava/lang/String; = "image/vnd.wap.wbmp"


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final displayMetrics:Landroid/util/DisplayMetrics;

.field private final hardwareConfigState:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

.field private final parsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 47
    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->DEFAULT:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

    .line 57
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->OPTION:Lcom/bumptech/glide/load/Option;

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DOWNSAMPLE_STRATEGY:Lcom/bumptech/glide/load/Option;

    .line 70
    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    .line 71
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS:Lcom/bumptech/glide/load/Option;

    .line 90
    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    .line 92
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 91
    invoke-static {v0, v2}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    .line 96
    new-instance v0, Ljava/util/HashSet;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "image/vnd.wap.wbmp"

    aput-object v3, v2, v1

    const-string v3, "image/x-ico"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 99
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 97
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->NO_DOWNSAMPLE_PRE_N_MIME_TYPES:Ljava/util/Set;

    .line 105
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

    .line 116
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v3, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 118
    invoke-static {v0, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 117
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->TYPES_THAT_USE_POOL_PRE_KITKAT:Ljava/util/Set;

    .line 124
    invoke-static {v1}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 1
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p3, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p4, "byteArrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Landroid/util/DisplayMetrics;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")V"
        }
    .end annotation

    .line 136
    .local p1, "parsers":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ImageHeaderParser;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->getInstance()Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->hardwareConfigState:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    .line 137
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/List;

    .line 138
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/DisplayMetrics;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 139
    invoke-static {p3}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 140
    invoke-static {p4}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 141
    return-void
.end method

.method private static adjustTargetDensityForError(D)I
    .locals 7
    .param p0, "adjustedScaleFactor"    # D

    .line 472
    invoke-static {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDensityMultiplier(D)I

    move-result v0

    .line 473
    .local v0, "densityMultiplier":I
    int-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, p0

    invoke-static {v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->round(D)I

    move-result v1

    .line 474
    .local v1, "targetDensity":I
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 475
    .local v2, "scaleFactorWithError":F
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double v3, p0, v3

    .line 476
    .local v3, "difference":D
    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    invoke-static {v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->round(D)I

    move-result v5

    return v5
.end method

.method private calculateConfig(Ljava/io/InputStream;Lcom/bumptech/glide/load/DecodeFormat;ZZLandroid/graphics/BitmapFactory$Options;II)V
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "format"    # Lcom/bumptech/glide/load/DecodeFormat;
    .param p3, "isHardwareConfigAllowed"    # Z
    .param p4, "isExifOrientationRequired"    # Z
    .param p5, "optionsWithScaling"    # Landroid/graphics/BitmapFactory$Options;
    .param p6, "targetWidth"    # I
    .param p7, "targetHeight"    # I

    .line 513
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->hardwareConfigState:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    move v1, p6

    move v2, p7

    move-object v3, p5

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->setHardwareConfigIfAllowed(IILandroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/DecodeFormat;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    return-void

    .line 524
    :cond_0
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq p2, v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    goto :goto_2

    .line 530
    :cond_1
    const/4 v0, 0x0

    .line 532
    .local v0, "hasAlpha":Z
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/List;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-static {v1, p1, v2}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getType(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 538
    goto :goto_0

    .line 533
    :catch_0
    move-exception v1

    .line 534
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Downsampler"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 535
    const-string v2, "Downsampler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot determine whether the image has alpha or not from header, format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    nop

    .line 541
    if-eqz v0, :cond_3

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_1
    iput-object v1, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 542
    iget-object v1, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_4

    .line 543
    const/4 v1, 0x1

    iput-boolean v1, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 545
    :cond_4
    return-void

    .line 526
    .end local v0    # "hasAlpha":Z
    :cond_5
    :goto_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 527
    return-void
.end method

.method private static calculateScaling(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;IIIIILandroid/graphics/BitmapFactory$Options;)V
    .locals 27
    .param p0, "imageType"    # Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "decodeCallbacks"    # Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .param p3, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p4, "downsampleStrategy"    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
    .param p5, "degreesToRotate"    # I
    .param p6, "sourceWidth"    # I
    .param p7, "sourceHeight"    # I
    .param p8, "targetWidth"    # I
    .param p9, "targetHeight"    # I
    .param p10, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p10

    if-lez v3, :cond_14

    if-gtz v4, :cond_0

    goto/16 :goto_b

    .line 344
    :cond_0
    const/16 v8, 0x5a

    if-eq v2, v8, :cond_2

    const/16 v8, 0x10e

    if-ne v2, v8, :cond_1

    goto :goto_0

    .line 352
    :cond_1
    nop

    .line 353
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getScaleFactor(IIII)F

    move-result v8

    goto :goto_1

    .line 349
    :cond_2
    :goto_0
    invoke-virtual {v1, v4, v3, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getScaleFactor(IIII)F

    move-result v8

    .line 353
    .local v8, "exactScaleFactor":F
    :goto_1
    nop

    .line 356
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-lez v9, :cond_13

    .line 362
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getSampleSizeRounding(IIII)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    move-result-object v9

    .line 364
    .local v9, "rounding":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    if-eqz v9, :cond_12

    .line 368
    int-to-float v10, v3

    mul-float v10, v10, v8

    float-to-double v10, v10

    invoke-static {v10, v11}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->round(D)I

    move-result v10

    .line 369
    .local v10, "outWidth":I
    int-to-float v11, v4

    mul-float v11, v11, v8

    float-to-double v11, v11

    invoke-static {v11, v12}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->round(D)I

    move-result v11

    .line 371
    .local v11, "outHeight":I
    div-int v12, v3, v10

    .line 372
    .local v12, "widthScaleFactor":I
    div-int v13, v4, v11

    .line 374
    .local v13, "heightScaleFactor":I
    sget-object v14, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->MEMORY:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    if-ne v9, v14, :cond_3

    .line 375
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_2

    .line 376
    :cond_3
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 380
    .local v14, "scaleFactor":I
    :goto_2
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    move/from16 v16, v10

    .end local v10    # "outWidth":I
    .local v16, "outWidth":I
    const/4 v10, 0x1

    if-gt v15, v2, :cond_4

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->NO_DOWNSAMPLE_PRE_N_MIME_TYPES:Ljava/util/Set;

    iget-object v15, v7, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 381
    invoke-interface {v2, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 382
    const/4 v2, 0x1

    goto :goto_3

    .line 384
    :cond_4
    invoke-static {v14}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 385
    .local v2, "powerOfTwoSampleSize":I
    sget-object v15, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->MEMORY:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    if-ne v9, v15, :cond_5

    int-to-float v15, v2

    const/high16 v17, 0x3f800000    # 1.0f

    div-float v17, v17, v8

    cmpg-float v15, v15, v17

    if-gez v15, :cond_5

    .line 387
    shl-int/lit8 v2, v2, 0x1

    .line 396
    :cond_5
    :goto_3
    iput v2, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 399
    sget-object v15, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v0, v15, :cond_7

    .line 403
    const/16 v15, 0x8

    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 404
    .local v15, "nativeScaling":I
    int-to-float v10, v3

    move-object/from16 v18, v9

    .end local v9    # "rounding":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    .local v18, "rounding":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    int-to-float v9, v15

    div-float/2addr v10, v9

    float-to-double v9, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 405
    .local v9, "powerOfTwoWidth":I
    int-to-float v10, v4

    move/from16 v19, v11

    .end local v11    # "outHeight":I
    .local v19, "outHeight":I
    int-to-float v11, v15

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    .line 406
    .local v10, "powerOfTwoHeight":I
    div-int/lit8 v11, v2, 0x8

    .line 407
    .local v11, "secondaryScaling":I
    if-lez v11, :cond_6

    .line 408
    div-int/2addr v9, v11

    .line 409
    div-int/2addr v10, v11

    .line 411
    .end local v11    # "secondaryScaling":I
    .end local v15    # "nativeScaling":I
    :cond_6
    nop

    .line 435
    :goto_4
    move-object/from16 v11, p3

    goto/16 :goto_8

    .line 411
    .end local v10    # "powerOfTwoHeight":I
    .end local v18    # "rounding":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    .end local v19    # "outHeight":I
    .local v9, "rounding":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    .local v11, "outHeight":I
    :cond_7
    move-object/from16 v18, v9

    move/from16 v19, v11

    .end local v9    # "rounding":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    .end local v11    # "outHeight":I
    .restart local v18    # "rounding":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    .restart local v19    # "outHeight":I
    sget-object v9, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v0, v9, :cond_e

    sget-object v9, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v0, v9, :cond_8

    goto/16 :goto_7

    .line 414
    :cond_8
    sget-object v9, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v0, v9, :cond_c

    sget-object v9, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v0, v9, :cond_9

    goto :goto_6

    .line 422
    :cond_9
    rem-int v9, v3, v2

    if-nez v9, :cond_b

    rem-int v9, v4, v2

    if-eqz v9, :cond_a

    goto :goto_5

    .line 434
    :cond_a
    div-int v9, v3, v2

    .line 435
    .local v9, "powerOfTwoWidth":I
    div-int v10, v4, v2

    goto :goto_4

    .line 426
    .end local v9    # "powerOfTwoWidth":I
    :cond_b
    :goto_5
    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-static {v9, v7, v10, v11}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDimensions(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)[I

    move-result-object v15

    .line 431
    .local v15, "dimensions":[I
    const/16 v17, 0x0

    aget v20, v15, v17

    .line 432
    .local v20, "powerOfTwoWidth":I
    const/16 v17, 0x1

    aget v15, v15, v17

    .line 433
    .local v15, "powerOfTwoHeight":I
    nop

    .line 435
    move v10, v15

    move/from16 v9, v20

    goto :goto_8

    .line 415
    .end local v15    # "powerOfTwoHeight":I
    .end local v20    # "powerOfTwoWidth":I
    :cond_c
    :goto_6
    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x18

    if-lt v15, v9, :cond_d

    .line 416
    int-to-float v9, v3

    int-to-float v15, v2

    div-float/2addr v9, v15

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 417
    .restart local v9    # "powerOfTwoWidth":I
    int-to-float v15, v4

    move/from16 v21, v9

    .end local v9    # "powerOfTwoWidth":I
    .local v21, "powerOfTwoWidth":I
    int-to-float v9, v2

    div-float/2addr v15, v9

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 435
    move v10, v9

    move/from16 v9, v21

    goto :goto_8

    .line 419
    .end local v21    # "powerOfTwoWidth":I
    :cond_d
    int-to-float v9, v3

    int-to-float v15, v2

    div-float/2addr v9, v15

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 420
    .restart local v9    # "powerOfTwoWidth":I
    int-to-float v10, v4

    int-to-float v15, v2

    div-float/2addr v10, v15

    move/from16 v22, v9

    .end local v9    # "powerOfTwoWidth":I
    .local v22, "powerOfTwoWidth":I
    float-to-double v9, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v10, v9

    .line 435
    move/from16 v9, v22

    goto :goto_8

    .line 412
    .end local v22    # "powerOfTwoWidth":I
    :cond_e
    :goto_7
    move-object/from16 v11, p3

    int-to-float v9, v3

    int-to-float v10, v2

    div-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 413
    .restart local v9    # "powerOfTwoWidth":I
    int-to-float v10, v4

    int-to-float v15, v2

    div-float/2addr v10, v15

    move/from16 v23, v9

    .end local v9    # "powerOfTwoWidth":I
    .local v23, "powerOfTwoWidth":I
    float-to-double v9, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v10, v9

    .line 435
    move/from16 v9, v23

    .line 438
    .end local v23    # "powerOfTwoWidth":I
    .restart local v9    # "powerOfTwoWidth":I
    .restart local v10    # "powerOfTwoHeight":I
    :goto_8
    invoke-virtual {v1, v9, v10, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getScaleFactor(IIII)F

    move-result v15

    move/from16 v24, v12

    .end local v12    # "widthScaleFactor":I
    .local v24, "widthScaleFactor":I
    float-to-double v11, v15

    .line 443
    .local v11, "adjustedScaleFactor":D
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v25, v13

    .end local v13    # "heightScaleFactor":I
    .local v25, "heightScaleFactor":I
    const/16 v13, 0x13

    if-lt v15, v13, :cond_f

    .line 444
    invoke-static {v11, v12}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->adjustTargetDensityForError(D)I

    move-result v13

    iput v13, v7, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 445
    invoke-static {v11, v12}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDensityMultiplier(D)I

    move-result v13

    iput v13, v7, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 447
    :cond_f
    invoke-static/range {p10 .. p10}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->isScaling(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 448
    const/4 v13, 0x1

    iput-boolean v13, v7, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    goto :goto_9

    .line 450
    :cond_10
    const/4 v13, 0x0

    iput v13, v7, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v13, v7, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 453
    :goto_9
    const-string v13, "Downsampler"

    const/4 v15, 0x2

    invoke-static {v13, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 454
    const-string v13, "Downsampler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v14

    .end local v14    # "scaleFactor":I
    .local v26, "scaleFactor":I
    const-string v14, "Calculate scaling, source: ["

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "x"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "], target: ["

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "x"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "], power of two scaled: ["

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "x"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "], exact scale factor: "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, ", power of 2 sample size: "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", adjusted scale factor: "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v14, ", target density: "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v7, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", density: "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v7, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 464
    .end local v26    # "scaleFactor":I
    .restart local v14    # "scaleFactor":I
    :cond_11
    move/from16 v26, v14

    .end local v14    # "scaleFactor":I
    .restart local v26    # "scaleFactor":I
    :goto_a
    return-void

    .line 365
    .end local v2    # "powerOfTwoSampleSize":I
    .end local v10    # "powerOfTwoHeight":I
    .end local v11    # "adjustedScaleFactor":D
    .end local v16    # "outWidth":I
    .end local v18    # "rounding":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    .end local v19    # "outHeight":I
    .end local v24    # "widthScaleFactor":I
    .end local v25    # "heightScaleFactor":I
    .end local v26    # "scaleFactor":I
    .local v9, "rounding":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    :cond_12
    move-object/from16 v18, v9

    .end local v9    # "rounding":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    .restart local v18    # "rounding":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v9, "Cannot round with null rounding"

    invoke-direct {v2, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    .end local v18    # "rounding":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    :cond_13
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot scale with factor: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " from: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", source: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "], target: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 336
    .end local v8    # "exactScaleFactor":F
    :cond_14
    :goto_b
    const-string v2, "Downsampler"

    const/4 v8, 0x3

    invoke-static {v2, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 337
    const-string v2, "Downsampler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to determine dimensions for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " with target ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_15
    return-void
.end method

.method private decodeFromWrappedStreams(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/DecodeFormat;ZIIZLcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Landroid/graphics/Bitmap;
    .locals 37
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "downsampleStrategy"    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
    .param p4, "decodeFormat"    # Lcom/bumptech/glide/load/DecodeFormat;
    .param p5, "isHardwareConfigAllowed"    # Z
    .param p6, "requestedWidth"    # I
    .param p7, "requestedHeight"    # I
    .param p8, "fixBitmapToRequestedDimensions"    # Z
    .param p9, "callbacks"    # Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    move-object/from16 v8, p0

    move-object/from16 v7, p1

    move-object/from16 v6, p2

    move-object/from16 v5, p9

    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v28

    .line 223
    .local v28, "startTime":J
    iget-object v0, v8, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v7, v6, v5, v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDimensions(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)[I

    move-result-object v30

    .line 224
    .local v30, "sourceDimensions":[I
    const/16 v20, 0x0

    aget v4, v30, v20

    .line 225
    .local v4, "sourceWidth":I
    const/4 v3, 0x1

    aget v2, v30, v3

    .line 226
    .local v2, "sourceHeight":I
    iget-object v1, v6, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 232
    .local v1, "sourceMimeType":Ljava/lang/String;
    const/4 v0, -0x1

    if-eq v4, v0, :cond_1

    if-ne v2, v0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    move/from16 v31, p5

    goto :goto_1

    .line 233
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 236
    move/from16 v31, v0

    .end local p5    # "isHardwareConfigAllowed":Z
    .local v31, "isHardwareConfigAllowed":Z
    :goto_1
    iget-object v0, v8, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/List;

    iget-object v9, v8, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-static {v0, v7, v9}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getOrientation(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I

    move-result v0

    .line 237
    .local v0, "orientation":I
    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getExifOrientationDegrees(I)I

    move-result v32

    .line 238
    .local v32, "degreesToRotate":I
    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->isExifOrientationRequired(I)Z

    move-result v33

    .line 240
    .local v33, "isExifOrientationRequired":Z
    const/high16 v9, -0x80000000

    move/from16 v15, p6

    if-ne v15, v9, :cond_2

    move/from16 v17, v4

    goto :goto_2

    :cond_2
    move/from16 v17, v15

    .line 241
    .local v17, "targetWidth":I
    :goto_2
    move/from16 v14, p7

    if-ne v14, v9, :cond_3

    move/from16 v18, v2

    goto :goto_3

    :cond_3
    move/from16 v18, v14

    .line 243
    .local v18, "targetHeight":I
    :goto_3
    iget-object v9, v8, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/List;

    iget-object v10, v8, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-static {v9, v7, v10}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getType(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v13

    .line 245
    .local v13, "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    iget-object v12, v8, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v9, v13

    move-object/from16 v10, p1

    move-object/from16 v11, p9

    move-object v8, v13

    .end local v13    # "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .local v8, "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    move-object/from16 v13, p3

    move/from16 v14, v32

    move v15, v4

    move/from16 v16, v2

    move-object/from16 v19, p2

    invoke-static/range {v9 .. v19}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->calculateScaling(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;IIIIILandroid/graphics/BitmapFactory$Options;)V

    .line 257
    move v9, v0

    .end local v0    # "orientation":I
    .local v9, "orientation":I
    move-object/from16 v0, p0

    move-object v10, v1

    .end local v1    # "sourceMimeType":Ljava/lang/String;
    .local v10, "sourceMimeType":Ljava/lang/String;
    move-object/from16 v1, p1

    move v11, v2

    .end local v2    # "sourceHeight":I
    .local v11, "sourceHeight":I
    move-object/from16 v2, p4

    const/4 v12, 0x1

    move/from16 v3, v31

    move v13, v4

    .end local v4    # "sourceWidth":I
    .local v13, "sourceWidth":I
    move/from16 v4, v33

    move-object v14, v5

    move-object/from16 v5, p2

    move-object v15, v6

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->calculateConfig(Ljava/io/InputStream;Lcom/bumptech/glide/load/DecodeFormat;ZZLandroid/graphics/BitmapFactory$Options;II)V

    .line 266
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    const/16 v20, 0x1

    nop

    :cond_4
    move/from16 v0, v20

    .line 268
    .local v0, "isKitKatOrGreater":Z
    iget v1, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eq v1, v12, :cond_6

    if-eqz v0, :cond_5

    goto :goto_4

    .line 299
    :cond_5
    move/from16 v35, v0

    move-object/from16 v34, v8

    move-object/from16 v1, p0

    goto/16 :goto_7

    .line 268
    :cond_6
    :goto_4
    move-object v3, v8

    move-object/from16 v1, p0

    .end local v8    # "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .local v3, "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    invoke-direct {v1, v3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->shouldUsePool(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 271
    if-ltz v13, :cond_7

    if-ltz v11, :cond_7

    if-eqz p8, :cond_7

    if-eqz v0, :cond_7

    .line 273
    move/from16 v5, v17

    .line 274
    .local v5, "expectedWidth":I
    move/from16 v6, v18

    .line 295
    move/from16 v35, v0

    move-object/from16 v34, v3

    move v3, v5

    goto/16 :goto_6

    .line 276
    .end local v5    # "expectedWidth":I
    :cond_7
    invoke-static/range {p2 .. p2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->isScaling(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 277
    iget v5, v15, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    int-to-float v5, v5

    iget v6, v15, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_5

    :cond_8
    const/high16 v5, 0x3f800000    # 1.0f

    .line 278
    .local v5, "densityMultiplier":F
    :goto_5
    iget v6, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 279
    .local v6, "sampleSize":I
    int-to-float v7, v13

    int-to-float v8, v6

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    .line 280
    .local v7, "downsampledWidth":I
    int-to-float v8, v11

    int-to-float v12, v6

    div-float/2addr v8, v12

    move-object/from16 v34, v3

    .end local v3    # "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .local v34, "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    float-to-double v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 281
    .local v2, "downsampledHeight":I
    int-to-float v3, v7

    mul-float v3, v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 282
    .local v3, "expectedWidth":I
    int-to-float v8, v2

    mul-float v8, v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 284
    .local v8, "expectedHeight":I
    const-string v12, "Downsampler"

    move/from16 v35, v0

    const/4 v0, 0x2

    .end local v0    # "isKitKatOrGreater":Z
    .local v35, "isKitKatOrGreater":Z
    invoke-static {v12, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 285
    const-string v0, "Downsampler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v36, v2

    .end local v2    # "downsampledHeight":I
    .local v36, "downsampledHeight":I
    const-string v2, "Calculated target ["

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] for source ["

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], sampleSize: "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", targetDensity: "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", density: "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", density multiplier: "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .end local v5    # "densityMultiplier":F
    .end local v6    # "sampleSize":I
    .end local v7    # "downsampledWidth":I
    .end local v36    # "downsampledHeight":I
    :cond_9
    move v6, v8

    .end local v8    # "expectedHeight":I
    .local v6, "expectedHeight":I
    :goto_6
    if-lez v3, :cond_b

    if-lez v6, :cond_b

    .line 296
    iget-object v0, v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v15, v0, v3, v6}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->setInBitmap(Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    goto :goto_7

    .line 299
    .end local v6    # "expectedHeight":I
    .end local v34    # "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .end local v35    # "isKitKatOrGreater":Z
    .restart local v0    # "isKitKatOrGreater":Z
    .local v3, "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    :cond_a
    move/from16 v35, v0

    move-object/from16 v34, v3

    .end local v0    # "isKitKatOrGreater":Z
    .end local v3    # "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .restart local v34    # "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .restart local v35    # "isKitKatOrGreater":Z
    :cond_b
    :goto_7
    iget-object v0, v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object/from16 v2, p1

    invoke-static {v2, v15, v14, v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 300
    .local v0, "downsampled":Landroid/graphics/Bitmap;
    iget-object v3, v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v14, v3, v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;->onDecodeComplete(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V

    .line 302
    const-string v3, "Downsampler"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 303
    move/from16 v19, v13

    move/from16 v20, v11

    move-object/from16 v21, v10

    move-object/from16 v22, p2

    move-object/from16 v23, v0

    move/from16 v24, p6

    move/from16 v25, p7

    move-wide/from16 v26, v28

    invoke-static/range {v19 .. v27}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->logDecode(IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;IIJ)V

    .line 307
    :cond_c
    const/4 v3, 0x0

    .line 308
    .local v3, "rotated":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_d

    .line 311
    iget-object v5, v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 313
    iget-object v5, v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v5, v0, v9}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->rotateImageExif(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 314
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 315
    iget-object v5, v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v5, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 319
    :cond_d
    return-object v3
.end method

.method private static decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "callbacks"    # Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .param p3, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_0

    .line 566
    const/high16 v0, 0xa00000

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    goto :goto_0

    .line 573
    :cond_0
    invoke-interface {p2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;->onObtainBounds()V

    .line 577
    :goto_0
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 578
    .local v0, "sourceWidth":I
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 579
    .local v1, "sourceHeight":I
    iget-object v2, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 581
    .local v2, "outMimeType":Ljava/lang/String;
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 583
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v3, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 603
    .local v3, "result":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 604
    nop

    .line 603
    nop

    .line 606
    iget-boolean v4, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v4, :cond_1

    .line 607
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 610
    :cond_1
    return-object v3

    .line 603
    .end local v3    # "result":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 584
    :catch_0
    move-exception v4

    .line 585
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    nop

    .line 586
    :try_start_1
    invoke-static {v4, v0, v1, v2, p1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->newIoExceptionForInBitmapAssertion(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;

    move-result-object v5

    .line 587
    .local v5, "bitmapAssertionException":Ljava/io/IOException;
    const-string v6, "Downsampler"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 588
    const-string v6, "Downsampler"

    const-string v7, "Failed to decode with inBitmap, trying again without Bitmap re-use"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    :cond_2
    iget-object v6, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    .line 593
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 594
    iget-object v6, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p3, v6}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 595
    iput-object v3, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 596
    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 603
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 596
    return-object v3

    .line 597
    :catch_1
    move-exception v3

    .line 598
    .local v3, "resetException":Ljava/io/IOException;
    :try_start_3
    throw v5

    .line 601
    .end local v3    # "resetException":Ljava/io/IOException;
    :cond_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 603
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "bitmapAssertionException":Ljava/io/IOException;
    :goto_1
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method private static getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 639
    if-nez p0, :cond_0

    .line 640
    const/4 v0, 0x0

    return-object v0

    .line 643
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 645
    .local v0, "sizeString":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static declared-synchronized getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 3

    const-class v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    monitor-enter v0

    .line 691
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 692
    :try_start_1
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapFactory$Options;

    .line 693
    .local v2, "decodeBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 694
    if-nez v2, :cond_0

    .line 695
    :try_start_2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v2, v1

    .line 696
    invoke-static {v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 699
    :cond_0
    monitor-exit v0

    return-object v2

    .line 693
    .end local v2    # "decodeBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 690
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getDensityMultiplier(D)I
    .locals 4
    .param p0, "adjustedScaleFactor"    # D

    .line 480
    nop

    .line 482
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    move-wide v0, p0

    goto :goto_0

    :cond_0
    div-double/2addr v0, p0

    :goto_0
    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double v0, v0, v2

    .line 480
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private static getDimensions(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)[I
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "decodeCallbacks"    # Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .param p3, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 558
    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    .line 559
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 560
    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v3, v2, v1

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v1, v2, v0

    return-object v2
.end method

.method private static getInBitmapString(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/String;
    .locals 1
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 633
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isScaling(Landroid/graphics/BitmapFactory$Options;)Z
    .locals 2
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 614
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static logDecode(IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;IIJ)V
    .locals 4
    .param p0, "sourceWidth"    # I
    .param p1, "sourceHeight"    # I
    .param p2, "outMimeType"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p4, "result"    # Landroid/graphics/Bitmap;
    .param p5, "requestedWidth"    # I
    .param p6, "requestedHeight"    # I
    .param p7, "startTime"    # J

    .line 621
    const-string v0, "Downsampler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with inBitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-static {p3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getInBitmapString(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], sample size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", density: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", target density: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-static {p7, p8}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 621
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    return-void
.end method

.method private static newIoExceptionForInBitmapAssertion(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;
    .locals 3
    .param p0, "e"    # Ljava/lang/IllegalArgumentException;
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "outMimeType"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 655
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception decoding bitmap, outWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", outHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", outMimeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", inBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-static {p4}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getInBitmapString(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 655
    return-object v0
.end method

.method private static releaseOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 2
    .param p0, "decodeBitmapOptions"    # Landroid/graphics/BitmapFactory$Options;

    .line 703
    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 704
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    monitor-enter v0

    .line 705
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    invoke-interface {v1, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 706
    monitor-exit v0

    .line 707
    return-void

    .line 706
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 3
    .param p0, "decodeBitmapOptions"    # Landroid/graphics/BitmapFactory$Options;

    .line 711
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 712
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 713
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 714
    const/4 v2, 0x1

    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 715
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 716
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 717
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 718
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 719
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 720
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 721
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 722
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 723
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 724
    return-void
.end method

.method private static round(D)I
    .locals 2
    .param p0, "value"    # D

    .line 488
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p0

    double-to-int v0, v0

    return v0
.end method

.method private static setInBitmap(Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 666
    const/4 v0, 0x0

    .line 668
    .local v0, "expectedConfig":Landroid/graphics/Bitmap$Config;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 669
    iget-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    .line 670
    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    .line 677
    :cond_1
    if-nez v0, :cond_2

    .line 683
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 686
    :cond_2
    invoke-interface {p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 687
    return-void
.end method

.method private shouldUsePool(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;)Z
    .locals 2
    .param p1, "imageType"    # Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 494
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 495
    const/4 v0, 0x1

    return v0

    .line 500
    :cond_0
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->TYPES_THAT_USE_POOL_PRE_KITKAT:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .param p4, "options"    # Lcom/bumptech/glide/load/Options;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 18
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "requestedWidth"    # I
    .param p3, "requestedHeight"    # I
    .param p4, "options"    # Lcom/bumptech/glide/load/Options;
    .param p5, "callbacks"    # Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            "Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    move-object/from16 v11, p0

    move-object/from16 v12, p4

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    const-string v1, "You must provide an InputStream that supports mark()"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 195
    iget-object v0, v11, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    const-class v1, [B

    const/high16 v2, 0x10000

    invoke-interface {v0, v2, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [B

    .line 196
    .local v13, "bytesForOptions":[B
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v14

    .line 197
    .local v14, "bitmapFactoryOptions":Landroid/graphics/BitmapFactory$Options;
    iput-object v13, v14, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 199
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v12, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/bumptech/glide/load/DecodeFormat;

    .line 200
    .local v15, "decodeFormat":Lcom/bumptech/glide/load/DecodeFormat;
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->OPTION:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v12, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    .line 201
    .local v16, "downsampleStrategy":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v12, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 202
    .local v17, "fixBitmapToRequestedDimensions":Z
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    .line 203
    invoke-virtual {v12, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v12, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 206
    .local v6, "isHardwareConfigAllowed":Z
    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-object/from16 v4, v16

    move-object v5, v15

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, v17

    move-object/from16 v10, p5

    :try_start_0
    invoke-direct/range {v1 .. v10}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeFromWrappedStreams(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/DecodeFormat;ZIIZLcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 209
    .local v0, "result":Landroid/graphics/Bitmap;
    iget-object v1, v11, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-static {v14}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 212
    iget-object v2, v11, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v2, v13}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    .line 209
    return-object v1

    .line 211
    .end local v0    # "result":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    invoke-static {v14}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 212
    iget-object v1, v11, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v1, v13}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    throw v0
.end method

.method public handles(Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public handles(Ljava/nio/ByteBuffer;)Z
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 150
    const/4 v0, 0x1

    return v0
.end method
