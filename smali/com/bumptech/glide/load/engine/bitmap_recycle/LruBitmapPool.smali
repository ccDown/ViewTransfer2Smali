.class public Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
.super Ljava/lang/Object;
.source "LruBitmapPool.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$NullBitmapTracker;,
        Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$ThrowingBitmapTracker;,
        Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final TAG:Ljava/lang/String; = "LruBitmapPool"


# instance fields
.field private final allowedConfigs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation
.end field

.field private currentSize:J

.field private evictions:I

.field private hits:I

.field private final initialMaxSize:J

.field private maxSize:J

.field private misses:I

.field private puts:I

.field private final strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

.field private final tracker:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .param p1, "maxSize"    # J

    .line 54
    invoke-static {}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->getDefaultStrategy()Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    move-result-object v0

    invoke-static {}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->getDefaultAllowedConfigs()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(JLcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;Ljava/util/Set;)V

    .line 55
    return-void
.end method

.method constructor <init>(JLcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;Ljava/util/Set;)V
    .locals 1
    .param p1, "maxSize"    # J
    .param p3, "strategy"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;",
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p4, "allowedConfigs":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/Bitmap$Config;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->initialMaxSize:J

    .line 42
    iput-wide p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:J

    .line 43
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    .line 44
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->allowedConfigs:Ljava/util/Set;

    .line 45
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$NullBitmapTracker;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$NullBitmapTracker;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->tracker:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;

    .line 46
    return-void
.end method

.method public constructor <init>(JLjava/util/Set;)V
    .locals 1
    .param p1, "maxSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p3, "allowedConfigs":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/Bitmap$Config;>;"
    invoke-static {}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->getDefaultStrategy()Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(JLcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;Ljava/util/Set;)V

    .line 69
    return-void
.end method

.method private static assertNotHardwareConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 3
    .param p0, "config"    # Landroid/graphics/Bitmap$Config;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 156
    return-void

    .line 159
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq p0, v0, :cond_1

    .line 164
    return-void

    .line 160
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create a mutable Bitmap with config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 149
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private dump()V
    .locals 2

    .line 252
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dumpUnchecked()V

    .line 255
    :cond_0
    return-void
.end method

.method private dumpUnchecked()V
    .locals 4

    .line 258
    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->hits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", misses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->misses:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", puts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->puts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", evictions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->evictions:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", maxSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\nStrategy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method private evict()V
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:J

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->trimToSize(J)V

    .line 119
    return-void
.end method

.method private static getDefaultAllowedConfigs()Ljava/util/Set;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 275
    .local v0, "configs":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/Bitmap$Config;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 279
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 282
    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 284
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private static getDefaultStrategy()Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    .locals 2

    .line 264
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 265
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;-><init>()V

    goto :goto_0

    .line 267
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;-><init>()V

    .line 269
    .local v0, "strategy":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    :goto_0
    return-object v0
.end method

.method private declared-synchronized getDirtyOrNull(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 169
    :try_start_0
    invoke-static {p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->assertNotHardwareConfig(Landroid/graphics/Bitmap$Config;)V

    .line 172
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    if-eqz p3, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-interface {v0, p1, p2, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 173
    .local v0, "result":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 174
    const-string v1, "LruBitmapPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    const-string v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v3, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_1
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->misses:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->misses:I

    goto :goto_1

    .line 179
    :cond_2
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->hits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->hits:I

    .line 180
    iget-wide v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:J

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->getSize(Landroid/graphics/Bitmap;)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:J

    .line 181
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->tracker:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;->remove(Landroid/graphics/Bitmap;)V

    .line 182
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->normalize(Landroid/graphics/Bitmap;)V

    .line 184
    :goto_1
    const-string v1, "LruBitmapPool"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    const-string v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v3, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dump()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-object v0

    .line 168
    .end local v0    # "result":Landroid/graphics/Bitmap;
    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p3    # "config":Landroid/graphics/Bitmap$Config;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static maybeSetPreMultiplied(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 204
    :cond_0
    return-void
.end method

.method private static normalize(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 195
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 196
    invoke-static {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maybeSetPreMultiplied(Landroid/graphics/Bitmap;)V

    .line 197
    return-void
.end method

.method private declared-synchronized trimToSize(J)V
    .locals 5
    .param p1, "size"    # J

    monitor-enter p0

    .line 229
    :goto_0
    :try_start_0
    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_3

    .line 230
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->removeLast()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 232
    .local v0, "removed":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 233
    const-string v1, "LruBitmapPool"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    const-string v1, "LruBitmapPool"

    const-string v2, "Size mismatch, resetting"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dumpUnchecked()V

    .line 237
    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    .line 240
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->tracker:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;->remove(Landroid/graphics/Bitmap;)V

    .line 241
    iget-wide v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:J

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->getSize(Landroid/graphics/Bitmap;)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:J

    .line 242
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->evictions:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->evictions:I

    .line 243
    const-string v1, "LruBitmapPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    const-string v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Evicting bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dump()V

    .line 247
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    .end local v0    # "removed":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 249
    :cond_3
    monitor-exit p0

    return-void

    .line 228
    .end local p1    # "size":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public clearMemory()V
    .locals 2

    .line 208
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "LruBitmapPool"

    const-string v1, "clearMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->trimToSize(J)V

    .line 212
    return-void
.end method

.method public get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->getDirtyOrNull(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    .local v0, "result":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 129
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0
.end method

.method public getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->getDirtyOrNull(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    .local v0, "result":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 142
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    :cond_0
    return-object v0
.end method

.method public getMaxSize()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:J

    return-wide v0
.end method

.method public declared-synchronized put(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    monitor-enter p0

    .line 84
    if-eqz p1, :cond_5

    .line 87
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->getSize(Landroid/graphics/Bitmap;)I

    move-result v0

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->allowedConfigs:Ljava/util/Set;

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->getSize(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 103
    .local v0, "size":I
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->put(Landroid/graphics/Bitmap;)V

    .line 104
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->tracker:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;->add(Landroid/graphics/Bitmap;)V

    .line 106
    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->puts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->puts:I

    .line 107
    iget-wide v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:J

    .line 109
    const-string v2, "LruBitmapPool"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    const-string v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Put bitmap in pool="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v3, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dump()V

    .line 114
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->evict()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 92
    .end local v0    # "size":I
    :cond_2
    :goto_0
    :try_start_1
    const-string v0, "LruBitmapPool"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reject bitmap from pool, bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    .line 94
    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", is mutable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", is allowed config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->allowedConfigs:Ljava/util/Set;

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 88
    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot pool recycled bitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bitmap must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSizeMultiplier(F)V
    .locals 2
    .param p1, "sizeMultiplier"    # F

    monitor-enter p0

    .line 78
    :try_start_0
    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->initialMaxSize:J

    long-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:J

    .line 79
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->evict()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 77
    .end local p1    # "sizeMultiplier":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public trimMemory(I)V
    .locals 4
    .param p1, "level"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 217
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trimMemory, level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    const/16 v0, 0x28

    if-lt p1, v0, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->clearMemory()V

    goto :goto_0

    .line 222
    :cond_1
    const/16 v0, 0x14

    if-ge p1, v0, :cond_2

    const/16 v0, 0xf

    if-ne p1, v0, :cond_3

    .line 224
    :cond_2
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->getMaxSize()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->trimToSize(J)V

    .line 226
    :cond_3
    :goto_0
    return-void
.end method
