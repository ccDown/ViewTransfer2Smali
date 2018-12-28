.class final Lcom/bumptech/glide/load/resource/bitmap/DrawableToBitmapConverter;
.super Ljava/lang/Object;
.source "DrawableToBitmapConverter.java"


# static fields
.field private static final NO_RECYCLE_BITMAP_POOL:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private static final TAG:Ljava/lang/String; = "DrawableToBitmap"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DrawableToBitmapConverter$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/DrawableToBitmapConverter$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/DrawableToBitmapConverter;->NO_RECYCLE_BITMAP_POOL:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method static convert(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/drawable/Drawable;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 4
    .param p0, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Landroid/graphics/drawable/Drawable;",
            "II)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "result":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 34
    .local v1, "isRecycleable":Z
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 35
    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_0
    instance-of v2, p1, Landroid/graphics/drawable/Animatable;

    if-nez v2, :cond_1

    .line 37
    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/DrawableToBitmapConverter;->drawToBitmap(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    const/4 v1, 0x1

    .line 42
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    move-object v2, p0

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/DrawableToBitmapConverter;->NO_RECYCLE_BITMAP_POOL:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 43
    .local v2, "toUse":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    :goto_1
    invoke-static {v0, v2}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object v3

    return-object v3
.end method

.method private static drawToBitmap(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 49
    const/4 v0, 0x5

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-ne p2, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-gtz v3, :cond_1

    .line 50
    const-string v1, "DrawableToBitmap"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "DrawableToBitmap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to draw "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-object v2

    .line 56
    :cond_1
    if-ne p3, v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-gtz v1, :cond_3

    .line 57
    const-string v1, "DrawableToBitmap"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    const-string v0, "DrawableToBitmap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to draw "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_2
    return-object v2

    .line 63
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_4
    move v0, p2

    .line 64
    .local v0, "targetWidth":I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_1

    :cond_5
    move v1, p3

    .line 66
    .local v1, "targetHeight":I
    :goto_1
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    .line 67
    .local v3, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 68
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p0, v0, v1, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 70
    .local v4, "result":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 71
    .local v5, "canvas":Landroid/graphics/Canvas;
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 72
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 73
    invoke-virtual {v5, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 76
    nop

    .line 77
    return-object v4

    .line 75
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method
