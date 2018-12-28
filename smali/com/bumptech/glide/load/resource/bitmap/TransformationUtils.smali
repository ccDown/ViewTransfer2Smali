.class public final Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;
.super Ljava/lang/Object;
.source "TransformationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$NoLock;
    }
.end annotation


# static fields
.field private static final BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

.field private static final CIRCLE_CROP_BITMAP_PAINT:Landroid/graphics/Paint;

.field private static final CIRCLE_CROP_PAINT_FLAGS:I = 0x7

.field private static final CIRCLE_CROP_SHAPE_PAINT:Landroid/graphics/Paint;

.field private static final DEFAULT_PAINT:Landroid/graphics/Paint;

.field private static final MODELS_REQUIRING_BITMAP_LOCK:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAINT_FLAGS:I = 0x6

.field private static final TAG:Ljava/lang/String; = "TransformationUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->DEFAULT_PAINT:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->CIRCLE_CROP_SHAPE_PAINT:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    const/16 v3, 0x1d

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "XT1085"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "XT1092"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "XT1093"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "XT1094"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string v4, "XT1095"

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const-string v4, "XT1096"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string v4, "XT1097"

    aput-object v4, v3, v1

    const-string v1, "XT1098"

    aput-object v1, v3, v2

    const-string v1, "XT1031"

    const/16 v4, 0x8

    aput-object v1, v3, v4

    const-string v1, "XT1028"

    const/16 v4, 0x9

    aput-object v1, v3, v4

    const-string v1, "XT937C"

    const/16 v4, 0xa

    aput-object v1, v3, v4

    const-string v1, "XT1032"

    const/16 v4, 0xb

    aput-object v1, v3, v4

    const-string v1, "XT1008"

    const/16 v4, 0xc

    aput-object v1, v3, v4

    const-string v1, "XT1033"

    const/16 v4, 0xd

    aput-object v1, v3, v4

    const-string v1, "XT1035"

    const/16 v4, 0xe

    aput-object v1, v3, v4

    const-string v1, "XT1034"

    const/16 v4, 0xf

    aput-object v1, v3, v4

    const-string v1, "XT939G"

    const/16 v4, 0x10

    aput-object v1, v3, v4

    const-string v1, "XT1039"

    const/16 v4, 0x11

    aput-object v1, v3, v4

    const-string v1, "XT1040"

    const/16 v4, 0x12

    aput-object v1, v3, v4

    const-string v1, "XT1042"

    const/16 v4, 0x13

    aput-object v1, v3, v4

    const-string v1, "XT1045"

    const/16 v4, 0x14

    aput-object v1, v3, v4

    const-string v1, "XT1063"

    const/16 v4, 0x15

    aput-object v1, v3, v4

    const-string v1, "XT1064"

    const/16 v4, 0x16

    aput-object v1, v3, v4

    const-string v1, "XT1068"

    const/16 v4, 0x17

    aput-object v1, v3, v4

    const-string v1, "XT1069"

    const/16 v4, 0x18

    aput-object v1, v3, v4

    const-string v1, "XT1072"

    const/16 v4, 0x19

    aput-object v1, v3, v4

    const-string v1, "XT1077"

    const/16 v4, 0x1a

    aput-object v1, v3, v4

    const-string v1, "XT1078"

    const/16 v4, 0x1b

    aput-object v1, v3, v4

    const-string v1, "XT1079"

    const/16 v4, 0x1c

    aput-object v1, v3, v4

    .line 47
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->MODELS_REQUIRING_BITMAP_LOCK:Ljava/util/Set;

    .line 90
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->MODELS_REQUIRING_BITMAP_LOCK:Ljava/util/Set;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$NoLock;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$NoLock;-><init>()V

    :goto_0
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    .line 94
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->CIRCLE_CROP_BITMAP_PAINT:Landroid/graphics/Paint;

    .line 95
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->CIRCLE_CROP_BITMAP_PAINT:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 96
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method private static applyMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 2
    .param p0, "inBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "targetBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 521
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 523
    :try_start_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 524
    .local v0, "canvas":Landroid/graphics/Canvas;
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->DEFAULT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 525
    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->clear(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 528
    nop

    .line 529
    return-void

    .line 527
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static centerCrop(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "inBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p3, :cond_0

    .line 121
    return-object p1

    .line 127
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 128
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int v1, v1, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v2, v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    if-le v1, v2, :cond_1

    .line 129
    int-to-float v1, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 130
    .local v1, "scale":F
    int-to-float v2, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    sub-float/2addr v2, v4

    mul-float v2, v2, v3

    .line 131
    .local v2, "dx":F
    const/4 v4, 0x0

    goto :goto_0

    .line 133
    .end local v1    # "scale":F
    .end local v2    # "dx":F
    :cond_1
    int-to-float v1, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 134
    .restart local v1    # "scale":F
    const/4 v2, 0x0

    .line 135
    .restart local v2    # "dx":F
    int-to-float v4, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v1

    sub-float/2addr v4, v5

    mul-float v4, v4, v3

    .line 138
    .local v4, "dy":F
    :goto_0
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 139
    add-float v5, v2, v3

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 141
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getNonNullConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-interface {p0, p2, p3, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 143
    .local v3, "result":Landroid/graphics/Bitmap;
    invoke-static {p1, v3}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 145
    invoke-static {p1, v3, v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->applyMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 146
    return-object v3
.end method

.method public static centerInside(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "inBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 223
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, p3, :cond_1

    .line 224
    const-string v0, "TransformationUtils"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "TransformationUtils"

    const-string v1, "requested target size larger or equal to input, returning input"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    return-object p1

    .line 229
    :cond_1
    const-string v0, "TransformationUtils"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    const-string v0, "TransformationUtils"

    const-string v1, "requested target size too big for input, fit centering instead"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->fitCenter(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static circleCrop(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 19
    .param p0, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "inBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "destWidth"    # I
    .param p3, "destHeight"    # I

    .line 368
    move-object/from16 v1, p0

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 369
    .local v2, "destMinEdge":I
    int-to-float v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v0, v3

    .line 371
    .local v4, "radius":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 372
    .local v5, "srcWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 374
    .local v6, "srcHeight":I
    int-to-float v0, v2

    int-to-float v7, v5

    div-float v7, v0, v7

    .line 375
    .local v7, "scaleX":F
    int-to-float v0, v2

    int-to-float v8, v6

    div-float v8, v0, v8

    .line 376
    .local v8, "scaleY":F
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 378
    .local v9, "maxScale":F
    int-to-float v0, v5

    mul-float v10, v9, v0

    .line 379
    .local v10, "scaledWidth":F
    int-to-float v0, v6

    mul-float v11, v9, v0

    .line 380
    .local v11, "scaledHeight":F
    int-to-float v0, v2

    sub-float/2addr v0, v10

    div-float v12, v0, v3

    .line 381
    .local v12, "left":F
    int-to-float v0, v2

    sub-float/2addr v0, v11

    div-float v3, v0, v3

    .line 383
    .local v3, "top":F
    new-instance v0, Landroid/graphics/RectF;

    add-float v13, v12, v10

    add-float v14, v3, v11

    invoke-direct {v0, v12, v3, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v13, v0

    .line 386
    .local v13, "destRect":Landroid/graphics/RectF;
    invoke-static/range {p0 .. p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getAlphaSafeBitmap(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 388
    .local v14, "toTransform":Landroid/graphics/Bitmap;
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getAlphaSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v15

    .line 389
    .local v15, "outConfig":Landroid/graphics/Bitmap$Config;
    move/from16 v16, v3

    .end local v3    # "top":F
    .local v16, "top":F
    invoke-interface {v1, v2, v2, v15}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 390
    .local v3, "result":Landroid/graphics/Bitmap;
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 392
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 394
    :try_start_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 396
    .local v0, "canvas":Landroid/graphics/Canvas;
    move/from16 v17, v2

    .end local v2    # "destMinEdge":I
    .local v17, "destMinEdge":I
    :try_start_1
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->CIRCLE_CROP_SHAPE_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v4, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 398
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->CIRCLE_CROP_BITMAP_PAINT:Landroid/graphics/Paint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "radius":F
    .local v18, "radius":F
    :try_start_2
    invoke-virtual {v0, v14, v4, v13, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 399
    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->clear(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 401
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 402
    nop

    .line 404
    move-object/from16 v2, p1

    invoke-virtual {v14, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    invoke-interface {v1, v14}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 408
    :cond_0
    return-object v3

    .line 401
    :catchall_0
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_0

    .end local v18    # "radius":F
    .restart local v4    # "radius":F
    :catchall_1
    move-exception v0

    move-object/from16 v2, p1

    move/from16 v18, v4

    .end local v4    # "radius":F
    .restart local v18    # "radius":F
    goto :goto_0

    .end local v17    # "destMinEdge":I
    .end local v18    # "radius":F
    .restart local v2    # "destMinEdge":I
    .restart local v4    # "radius":F
    :catchall_2
    move-exception v0

    move/from16 v17, v2

    move/from16 v18, v4

    move-object/from16 v2, p1

    .end local v2    # "destMinEdge":I
    .end local v4    # "radius":F
    .restart local v17    # "destMinEdge":I
    .restart local v18    # "radius":F
    :goto_0
    sget-object v4, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private static clear(Landroid/graphics/Canvas;)V
    .locals 1
    .param p0, "canvas"    # Landroid/graphics/Canvas;

    .line 511
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 512
    return-void
.end method

.method public static fitCenter(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "inBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p3, :cond_1

    .line 163
    const-string v0, "TransformationUtils"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "TransformationUtils"

    const-string v1, "requested target size matches input, returning input"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    return-object p1

    .line 168
    :cond_1
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 169
    .local v0, "widthPercentage":F
    int-to-float v2, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 170
    .local v2, "heightPercentage":F
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 174
    .local v3, "minPercentage":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 175
    .local v4, "targetWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 177
    .local v5, "targetHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v6, v4, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ne v6, v5, :cond_3

    .line 178
    const-string v6, "TransformationUtils"

    invoke-static {v6, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    const-string v1, "TransformationUtils"

    const-string v6, "adjusted target size matches input, returning input"

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_2
    return-object p1

    .line 187
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v4, v6

    .line 188
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v5, v6

    .line 190
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getNonNullConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v6

    .line 191
    .local v6, "config":Landroid/graphics/Bitmap$Config;
    invoke-interface {p0, v4, v5, v6}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 194
    .local v7, "toReuse":Landroid/graphics/Bitmap;
    invoke-static {p1, v7}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 196
    const-string v8, "TransformationUtils"

    invoke-static {v8, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 197
    const-string v1, "TransformationUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "request: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v1, "TransformationUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "toFit:   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v1, "TransformationUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "toReuse: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v1, "TransformationUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "minPct:   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_4
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 204
    .local v1, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 205
    invoke-static {p1, v7, v1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->applyMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 207
    return-object v7
.end method

.method private static getAlphaSafeBitmap(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "maybeAlphaSafe"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 413
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getAlphaSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 414
    .local v0, "safeConfig":Landroid/graphics/Bitmap$Config;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    return-object p1

    .line 418
    :cond_0
    nop

    .line 419
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-interface {p0, v1, v2, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 420
    .local v1, "argbBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 424
    return-object v1
.end method

.method private static getAlphaSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 2
    .param p0, "inBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 429
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 431
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    return-object v0

    .line 436
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public static getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 104
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public static getExifOrientationDegrees(I)I
    .locals 1
    .param p0, "exifOrientation"    # I

    .line 283
    packed-switch p0, :pswitch_data_0

    .line 297
    const/4 v0, 0x0

    goto :goto_0

    .line 294
    :pswitch_0
    const/16 v0, 0x10e

    .line 295
    .local v0, "degreesToRotate":I
    goto :goto_0

    .line 286
    .end local v0    # "degreesToRotate":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 287
    .restart local v0    # "degreesToRotate":I
    goto :goto_0

    .line 290
    .end local v0    # "degreesToRotate":I
    :pswitch_2
    const/16 v0, 0xb4

    .line 291
    .restart local v0    # "degreesToRotate":I
    nop

    .line 297
    :goto_0
    nop

    .line 300
    return v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getNonNullConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 516
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    return-object v0
.end method

.method static initializeMatrixForRotation(ILandroid/graphics/Matrix;)V
    .locals 5
    .param p0, "exifOrientation"    # I
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 533
    const/high16 v0, -0x3d4c0000    # -90.0f

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 556
    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 557
    goto :goto_0

    .line 552
    :pswitch_1
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 553
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 554
    goto :goto_0

    .line 549
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 550
    goto :goto_0

    .line 545
    :pswitch_3
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 546
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 547
    goto :goto_0

    .line 541
    :pswitch_4
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 542
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 543
    goto :goto_0

    .line 538
    :pswitch_5
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 539
    goto :goto_0

    .line 535
    :pswitch_6
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 536
    nop

    .line 561
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isExifOrientationRequired(I)Z
    .locals 1
    .param p0, "exifOrientation"    # I

    .line 342
    packed-switch p0, :pswitch_data_0

    .line 352
    const/4 v0, 0x0

    return v0

    .line 350
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "imageToOrient"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "degreesToRotate"    # I

    .line 259
    move-object v0, p0

    .line 261
    .local v0, "result":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 262
    :try_start_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 263
    .local v1, "matrix":Landroid/graphics/Matrix;
    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 264
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 265
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    .line 264
    move-object v2, p0

    move-object v7, v1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    .line 267
    .end local v1    # "matrix":Landroid/graphics/Matrix;
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TransformationUtils"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    const-string v2, "TransformationUtils"

    const-string v3, "Exception when trying to orient image"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 271
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 272
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static rotateImageExif(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "inBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "exifOrientation"    # I

    .line 314
    invoke-static {p2}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->isExifOrientationRequired(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    return-object p1

    .line 318
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 319
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-static {p2, v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->initializeMatrixForRotation(ILandroid/graphics/Matrix;)V

    .line 322
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 323
    .local v1, "newRect":Landroid/graphics/RectF;
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 325
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 326
    .local v2, "newWidth":I
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 328
    .local v3, "newHeight":I
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getNonNullConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v4

    .line 329
    .local v4, "config":Landroid/graphics/Bitmap$Config;
    invoke-interface {p0, v2, v3, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 331
    .local v5, "result":Landroid/graphics/Bitmap;
    iget v6, v1, Landroid/graphics/RectF;->left:F

    neg-float v6, v6

    iget v7, v1, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 333
    invoke-static {p1, v5, v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->applyMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 334
    return-object v5
.end method

.method public static roundedCorners(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "inBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "roundingRadius"    # I

    .line 477
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "roundingRadius must be greater than 0."

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 480
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getAlphaSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 481
    .local v2, "safeConfig":Landroid/graphics/Bitmap$Config;
    invoke-static {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getAlphaSafeBitmap(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 482
    .local v3, "toTransform":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-interface {p0, v4, v5, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 484
    .local v4, "result":Landroid/graphics/Bitmap;
    invoke-virtual {v4, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 486
    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v3, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 488
    .local v5, "shader":Landroid/graphics/BitmapShader;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 489
    .local v6, "paint":Landroid/graphics/Paint;
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 490
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 491
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v1, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 492
    .local v1, "rect":Landroid/graphics/RectF;
    sget-object v7, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 494
    :try_start_0
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 495
    .local v7, "canvas":Landroid/graphics/Canvas;
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v0, v8}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 496
    int-to-float v0, p2

    int-to-float v8, p2

    invoke-virtual {v7, v1, v0, v8, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 497
    invoke-static {v7}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->clear(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 500
    nop

    .line 502
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 503
    invoke-interface {p0, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 506
    :cond_1
    return-object v4

    .line 499
    :catchall_0
    move-exception v0

    sget-object v7, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static roundedCorners(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "inBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "roundingRadius"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 459
    invoke-static {p0, p1, p4}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->roundedCorners(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "inBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "outBitmap"    # Landroid/graphics/Bitmap;

    .line 246
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 247
    return-void
.end method
