.class public Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;
.super Ljava/lang/Object;
.source "GifDrawableTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Transformation<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final wrapped:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/Transformation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p1, "wrapped":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/Transformation;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/bumptech/glide/load/Transformation;

    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 53
    instance-of v0, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    if-eqz v0, :cond_0

    .line 54
    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    .line 55
    .local v0, "other":Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/bumptech/glide/load/Transformation;

    iget-object v2, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/bumptech/glide/load/Transformation;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 57
    .end local v0    # "other":Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/bumptech/glide/load/Transformation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/Resource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .line 31
    .local p2, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 38
    .local v0, "drawable":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v1

    .line 39
    .local v1, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getFirstFrame()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 40
    .local v2, "firstFrame":Landroid/graphics/Bitmap;
    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    invoke-direct {v3, v2, v1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 41
    .local v3, "bitmapResource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v4, p1, v3, p3, p4}, Lcom/bumptech/glide/load/Transformation;->transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v4

    .line 42
    .local v4, "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 43
    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 45
    :cond_0
    invoke-interface {v4}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 47
    .local v5, "transformedFrame":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/bumptech/glide/load/Transformation;

    invoke-virtual {v0, v6, v5}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->setFrameTransformation(Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V

    .line 48
    return-object p2
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/Transformation;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 68
    return-void
.end method
