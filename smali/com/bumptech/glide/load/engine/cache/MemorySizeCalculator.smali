.class public final Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;,
        Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;,
        Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;
    }
.end annotation


# static fields
.field static final BYTES_PER_ARGB_8888_PIXEL:I = 0x4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final LOW_MEMORY_BYTE_ARRAY_POOL_DIVISOR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MemorySizeCalculator"


# instance fields
.field private final arrayPoolSize:I

.field private final bitmapPoolSize:I

.field private final context:Landroid/content/Context;

.field private final memoryCacheSize:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)V
    .locals 10
    .param p1, "builder"    # Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-object v0, p1, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->context:Landroid/content/Context;

    .line 38
    nop

    .line 39
    iget-object v0, p1, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->activityManager:Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget v0, p1, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->arrayPoolSizeBytes:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 41
    :cond_0
    iget v0, p1, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->arrayPoolSizeBytes:I

    :goto_0
    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->arrayPoolSize:I

    .line 42
    iget-object v0, p1, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->activityManager:Landroid/app/ActivityManager;

    iget v1, p1, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->maxSizeMultiplier:F

    iget v2, p1, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->lowMemoryMaxSizeMultiplier:F

    .line 43
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getMaxSize(Landroid/app/ActivityManager;FF)I

    move-result v0

    .line 46
    .local v0, "maxSize":I
    iget-object v1, p1, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->screenDimensions:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;->getWidthPixels()I

    move-result v1

    .line 47
    .local v1, "widthPixels":I
    iget-object v2, p1, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->screenDimensions:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;->getHeightPixels()I

    move-result v2

    .line 48
    .local v2, "heightPixels":I
    mul-int v3, v1, v2

    mul-int/lit8 v3, v3, 0x4

    .line 50
    .local v3, "screenSize":I
    int-to-float v4, v3

    iget v5, p1, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->bitmapPoolScreens:F

    mul-float v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 52
    .local v4, "targetBitmapPoolSize":I
    int-to-float v5, v3

    iget v6, p1, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->memoryCacheScreens:F

    mul-float v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 53
    .local v5, "targetMemoryCacheSize":I
    iget v6, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->arrayPoolSize:I

    sub-int v6, v0, v6

    .line 55
    .local v6, "availableSize":I
    add-int v7, v5, v4

    if-gt v7, v6, :cond_1

    .line 56
    iput v5, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    .line 57
    iput v4, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    goto :goto_1

    .line 59
    :cond_1
    int-to-float v7, v6

    iget v8, p1, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->bitmapPoolScreens:F

    iget v9, p1, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->memoryCacheScreens:F

    add-float/2addr v8, v9

    div-float/2addr v7, v8

    .line 60
    .local v7, "part":F
    iget v8, p1, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->memoryCacheScreens:F

    mul-float v8, v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    .line 61
    iget v8, p1, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->bitmapPoolScreens:F

    mul-float v8, v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    .line 64
    .end local v7    # "part":F
    :goto_1
    const-string v7, "MemorySizeCalculator"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 65
    const-string v7, "MemorySizeCalculator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calculation complete, Calculated memory cache size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    .line 69
    invoke-direct {p0, v9}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", pool size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    .line 71
    invoke-direct {p0, v9}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", byte array size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->arrayPoolSize:I

    .line 73
    invoke-direct {p0, v9}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", memory class limited? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v9, v5, v4

    if-le v9, v0, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", max size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", memoryClass: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->activityManager:Landroid/app/ActivityManager;

    .line 79
    invoke-virtual {v9}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", isLowMemoryDevice: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->activityManager:Landroid/app/ActivityManager;

    .line 81
    invoke-static {v9}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 65
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_3
    return-void
.end method

.method private static getMaxSize(Landroid/app/ActivityManager;FF)I
    .locals 4
    .param p0, "activityManager"    # Landroid/app/ActivityManager;
    .param p1, "maxSizeMultiplier"    # F
    .param p2, "lowMemoryMaxSizeMultiplier"    # F

    .line 108
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    .line 109
    .local v0, "memoryClassBytes":I
    invoke-static {p0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result v1

    .line 110
    .local v1, "isLowMemoryDevice":Z
    int-to-float v2, v0

    if-eqz v1, :cond_0

    .line 111
    move v3, p2

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    mul-float v2, v2, v3

    .line 110
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2
.end method

.method static isLowMemoryDevice(Landroid/app/ActivityManager;)Z
    .locals 2
    .param p0, "activityManager"    # Landroid/app/ActivityManager;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 124
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    return v0

    .line 126
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private toMb(I)Ljava/lang/String;
    .locals 3
    .param p1, "bytes"    # I

    .line 115
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->context:Landroid/content/Context;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getArrayPoolSizeInBytes()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->arrayPoolSize:I

    return v0
.end method

.method public getBitmapPoolSize()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    return v0
.end method

.method public getMemoryCacheSize()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    return v0
.end method
