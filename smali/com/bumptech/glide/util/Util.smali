.class public final Lcom/bumptech/glide/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final HASH_ACCUMULATOR:I = 0x11

.field private static final HASH_MULTIPLIER:I = 0x1f

.field private static final HEX_CHAR_ARRAY:[C

.field private static final SHA_256_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/util/Util;->HEX_CHAR_ARRAY:[C

    .line 25
    const/16 v0, 0x40

    new-array v0, v0, [C

    sput-object v0, Lcom/bumptech/glide/util/Util;->SHA_256_CHARS:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static assertBackgroundThread()V
    .locals 2

    .line 150
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    return-void

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call this method on a background thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static assertMainThread()V
    .locals 2

    .line 141
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    return-void

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call this method on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bothModelsNullEquivalentOrEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "b"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 209
    if-nez p0, :cond_1

    .line 210
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 212
    :cond_1
    instance-of v0, p0, Lcom/bumptech/glide/load/model/Model;

    if-eqz v0, :cond_2

    .line 213
    move-object v0, p0

    check-cast v0, Lcom/bumptech/glide/load/model/Model;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/model/Model;->isEquivalentTo(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 215
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "b"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 205
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method private static bytesToHex([B[C)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "hexChars"    # [C
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 48
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 49
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 50
    .local v1, "v":I
    mul-int/lit8 v2, v0, 0x2

    sget-object v3, Lcom/bumptech/glide/util/Util;->HEX_CHAR_ARRAY:[C

    ushr-int/lit8 v4, v1, 0x4

    aget-char v3, v3, v4

    aput-char v3, p1, v2

    .line 51
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/bumptech/glide/util/Util;->HEX_CHAR_ARRAY:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, p1, v2

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "j":I
    .end local v1    # "v":I
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static createQueue(I)Ljava/util/Queue;
    .locals 1
    .param p0, "size"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p0}, Ljava/util/ArrayDeque;-><init>(I)V

    return-object v0
.end method

.method public static getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 96
    mul-int v0, p0, p1

    invoke-static {p2}, Lcom/bumptech/glide/util/Util;->getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public static getBitmapByteSize(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 76
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 84
    :catch_0
    move-exception v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    mul-int v0, v0, v1

    return v0

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot obtain size for recycled Bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I
    .locals 2
    .param p0, "config"    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 101
    if-nez p0, :cond_0

    .line 102
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 106
    :cond_0
    sget-object v0, Lcom/bumptech/glide/util/Util$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 119
    const/4 v0, 0x4

    goto :goto_0

    .line 115
    :pswitch_0
    const/16 v0, 0x8

    .line 116
    .local v0, "bytesPerPixel":I
    goto :goto_0

    .line 112
    .end local v0    # "bytesPerPixel":I
    :pswitch_1
    const/4 v0, 0x2

    .line 113
    .restart local v0    # "bytesPerPixel":I
    goto :goto_0

    .line 108
    .end local v0    # "bytesPerPixel":I
    :pswitch_2
    const/4 v0, 0x1

    .line 109
    .restart local v0    # "bytesPerPixel":I
    nop

    .line 119
    :goto_0
    nop

    .line 122
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSize(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    invoke-static {p0}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public static getSnapshot(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .param p0    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 190
    .local p0, "other":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 192
    .local v2, "item":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_0

    .line 193
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_0
    goto :goto_0

    .line 196
    :cond_1
    return-object v0
.end method

.method public static hashCode(F)I
    .locals 1
    .param p0, "value"    # F

    .line 227
    const/16 v0, 0x11

    invoke-static {p0, v0}, Lcom/bumptech/glide/util/Util;->hashCode(FI)I

    move-result v0

    return v0
.end method

.method public static hashCode(FI)I
    .locals 1
    .param p0, "value"    # F
    .param p1, "accumulator"    # I

    .line 231
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0, p1}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    return v0
.end method

.method public static hashCode(I)I
    .locals 1
    .param p0, "value"    # I

    .line 219
    const/16 v0, 0x11

    invoke-static {p0, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    return v0
.end method

.method public static hashCode(II)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "accumulator"    # I

    .line 223
    mul-int/lit8 v0, p1, 0x1f

    add-int/2addr v0, p0

    return v0
.end method

.method public static hashCode(Ljava/lang/Object;I)I
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "accumulator"    # I

    .line 235
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    invoke-static {v0, p1}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    return v0
.end method

.method public static hashCode(Z)I
    .locals 1
    .param p0, "value"    # Z

    .line 243
    const/16 v0, 0x11

    invoke-static {p0, v0}, Lcom/bumptech/glide/util/Util;->hashCode(ZI)I

    move-result v0

    return v0
.end method

.method public static hashCode(ZI)I
    .locals 1
    .param p0, "value"    # Z
    .param p1, "accumulator"    # I

    .line 239
    invoke-static {p0, p1}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    return v0
.end method

.method public static isOnBackgroundThread()Z
    .locals 1

    .line 166
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnMainThread()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isOnMainThread()Z
    .locals 2

    .line 159
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidDimension(I)Z
    .locals 1
    .param p0, "dimen"    # I

    .line 133
    if-gtz p0, :cond_1

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isValidDimensions(II)Z
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 129
    invoke-static {p0}, Lcom/bumptech/glide/util/Util;->isValidDimension(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/bumptech/glide/util/Util;->isValidDimension(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static sha256BytesToHex([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 36
    sget-object v0, Lcom/bumptech/glide/util/Util;->SHA_256_CHARS:[C

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/util/Util;->SHA_256_CHARS:[C

    invoke-static {p0, v1}, Lcom/bumptech/glide/util/Util;->bytesToHex([B[C)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 38
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
