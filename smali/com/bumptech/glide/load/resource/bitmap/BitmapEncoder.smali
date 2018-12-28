.class public Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
.super Ljava/lang/Object;
.source "BitmapEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceEncoder<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMPRESSION_FORMAT:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option<",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMPRESSION_QUALITY:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BitmapEncoder"


# instance fields
.field private final arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-string v0, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality"

    .line 42
    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->COMPRESSION_QUALITY:Lcom/bumptech/glide/load/Option;

    .line 51
    const-string v0, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat"

    invoke-static {v0}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;)Lcom/bumptech/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->COMPRESSION_FORMAT:Lcom/bumptech/glide/load/Option;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 0
    .param p1, "arrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 60
    return-void
.end method

.method private getFormat(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Options;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "options"    # Lcom/bumptech/glide/load/Options;

    .line 118
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->COMPRESSION_FORMAT:Lcom/bumptech/glide/load/Option;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap$CompressFormat;

    .line 119
    .local v0, "format":Landroid/graphics/Bitmap$CompressFormat;
    if-eqz v0, :cond_0

    .line 120
    return-object v0

    .line 121
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v1

    .line 124
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v1
.end method


# virtual methods
.method public encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/File;Lcom/bumptech/glide/load/Options;)Z
    .locals 11
    .param p1    # Lcom/bumptech/glide/load/engine/Resource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "options"    # Lcom/bumptech/glide/load/Options;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/Options;",
            ")Z"
        }
    .end annotation

    .line 73
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 74
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, p3}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->getFormat(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Options;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    .line 75
    .local v1, "format":Landroid/graphics/Bitmap$CompressFormat;
    const-string v2, "encode: [%dx%d] %s"

    .line 76
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/bumptech/glide/util/pool/GlideTrace;->beginSectionFormat(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v2

    .line 79
    .local v2, "start":J
    sget-object v4, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->COMPRESSION_QUALITY:Lcom/bumptech/glide/load/Option;

    invoke-virtual {p3, v4}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    .local v4, "quality":I
    const/4 v5, 0x0

    .line 82
    .local v5, "success":Z
    const/4 v6, 0x0

    .line 84
    .local v6, "os":Ljava/io/OutputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v7

    .line 85
    iget-object v7, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    if-eqz v7, :cond_0

    .line 86
    new-instance v7, Lcom/bumptech/glide/load/data/BufferedOutputStream;

    iget-object v8, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-direct {v7, v6, v8}, Lcom/bumptech/glide/load/data/BufferedOutputStream;-><init>(Ljava/io/OutputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    move-object v6, v7

    .line 88
    :cond_0
    invoke-virtual {v0, v1, v4, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 89
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    const/4 v5, 0x1

    .line 96
    nop

    .line 98
    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    :goto_0
    goto :goto_1

    .line 99
    :catch_0
    move-exception v7

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v7

    goto :goto_2

    .line 91
    :catch_1
    move-exception v7

    .line 92
    .local v7, "e":Ljava/io/IOException;
    :try_start_3
    const-string v8, "BitmapEncoder"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 93
    const-string v8, "BitmapEncoder"

    const-string v9, "Failed to encode Bitmap"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    .end local v7    # "e":Ljava/io/IOException;
    :cond_1
    if-eqz v6, :cond_2

    .line 98
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 105
    :cond_2
    :goto_1
    :try_start_5
    const-string v7, "BitmapEncoder"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 106
    const-string v7, "BitmapEncoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Compressed with type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " of size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, ", options format: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->COMPRESSION_FORMAT:Lcom/bumptech/glide/load/Option;

    .line 108
    invoke-virtual {p3, v9}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", hasAlpha: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 106
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 111
    :cond_3
    nop

    .line 113
    invoke-static {}, Lcom/bumptech/glide/util/pool/GlideTrace;->endSection()V

    .line 111
    return v5

    .line 96
    :goto_2
    if-eqz v6, :cond_4

    .line 98
    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 101
    goto :goto_3

    .line 99
    :catch_2
    move-exception v8

    .line 101
    :cond_4
    :goto_3
    :try_start_7
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 113
    .end local v2    # "start":J
    .end local v4    # "quality":I
    .end local v5    # "success":Z
    .end local v6    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    invoke-static {}, Lcom/bumptech/glide/util/pool/GlideTrace;->endSection()V

    throw v2
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/Options;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/Options;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    check-cast p1, Lcom/bumptech/glide/load/engine/Resource;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/File;Lcom/bumptech/glide/load/Options;)Z

    move-result p1

    return p1
.end method

.method public getEncodeStrategy(Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/EncodeStrategy;
    .locals 1
    .param p1, "options"    # Lcom/bumptech/glide/load/Options;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 131
    sget-object v0, Lcom/bumptech/glide/load/EncodeStrategy;->TRANSFORMED:Lcom/bumptech/glide/load/EncodeStrategy;

    return-object v0
.end method
