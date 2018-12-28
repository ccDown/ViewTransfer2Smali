.class public Lcom/soullistener/viewtransfer/utils/GBData;
.super Ljava/lang/Object;
.source "GBData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GBData"

.field private static bitmap:Landroid/graphics/Bitmap;

.field static reader:Landroid/media/ImageReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor(II)I
    .locals 10
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 19
    sget-object v0, Lcom/soullistener/viewtransfer/utils/GBData;->reader:Landroid/media/ImageReader;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 20
    const-string v0, "GBData"

    const-string v2, "getColor: reader is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return v1

    .line 24
    :cond_0
    sget-object v0, Lcom/soullistener/viewtransfer/utils/GBData;->reader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    .line 26
    .local v0, "image":Landroid/media/Image;
    if-nez v0, :cond_2

    .line 27
    sget-object v2, Lcom/soullistener/viewtransfer/utils/GBData;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 28
    const-string v2, "GBData"

    const-string v3, "getColor: image is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return v1

    .line 31
    :cond_1
    sget-object v1, Lcom/soullistener/viewtransfer/utils/GBData;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p0, p1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    return v1

    .line 33
    :cond_2
    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v1

    .line 34
    .local v1, "width":I
    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v2

    .line 35
    .local v2, "height":I
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    .line 36
    .local v3, "planes":[Landroid/media/Image$Plane;
    const/4 v4, 0x0

    aget-object v5, v3, v4

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 37
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    aget-object v6, v3, v4

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v6

    .line 38
    .local v6, "pixelStride":I
    aget-object v4, v3, v4

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    .line 39
    .local v4, "rowStride":I
    mul-int v7, v6, v1

    sub-int v7, v4, v7

    .line 40
    .local v7, "rowPadding":I
    sget-object v8, Lcom/soullistener/viewtransfer/utils/GBData;->bitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_3

    .line 41
    div-int v8, v7, v6

    add-int/2addr v8, v1

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    sput-object v8, Lcom/soullistener/viewtransfer/utils/GBData;->bitmap:Landroid/graphics/Bitmap;

    .line 43
    :cond_3
    sget-object v8, Lcom/soullistener/viewtransfer/utils/GBData;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 44
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 46
    sget-object v8, Lcom/soullistener/viewtransfer/utils/GBData;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, p0, p1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    return v8
.end method
