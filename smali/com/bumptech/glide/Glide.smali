.class public Lcom/bumptech/glide/Glide;
.super Ljava/lang/Object;
.source "Glide.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field private static final DEFAULT_DISK_CACHE_DIR:Ljava/lang/String; = "image_manager_disk_cache"

.field private static final TAG:Ljava/lang/String; = "Glide"

.field private static volatile glide:Lcom/bumptech/glide/Glide;

.field private static volatile isInitializing:Z


# instance fields
.field private final arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final bitmapPreFiller:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

.field private final connectivityMonitorFactory:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

.field private final engine:Lcom/bumptech/glide/load/engine/Engine;

.field private final glideContext:Lcom/bumptech/glide/GlideContext;

.field private final managers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/RequestManager;",
            ">;"
        }
    .end annotation
.end field

.field private final memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private memoryCategory:Lcom/bumptech/glide/MemoryCategory;

.field private final registry:Lcom/bumptech/glide/Registry;

.field private final requestManagerRetriever:Lcom/bumptech/glide/manager/RequestManagerRetriever;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/manager/RequestManagerRetriever;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;ILcom/bumptech/glide/request/RequestOptions;Ljava/util/Map;)V
    .locals 33
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "engine"    # Lcom/bumptech/glide/load/engine/Engine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "memoryCache"    # Lcom/bumptech/glide/load/engine/cache/MemoryCache;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "arrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "requestManagerRetriever"    # Lcom/bumptech/glide/manager/RequestManagerRetriever;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "connectivityMonitorFactory"    # Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "logLevel"    # I
    .param p9, "defaultRequestOptions"    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/Engine;",
            "Lcom/bumptech/glide/load/engine/cache/MemoryCache;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            "Lcom/bumptech/glide/manager/RequestManagerRetriever;",
            "Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;",
            "I",
            "Lcom/bumptech/glide/request/RequestOptions;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/TransitionOptions<",
            "**>;>;)V"
        }
    .end annotation

    .line 322
    .local p10, "defaultTransitionOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/bumptech/glide/TransitionOptions<**>;>;"
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    .line 117
    sget-object v1, Lcom/bumptech/glide/MemoryCategory;->NORMAL:Lcom/bumptech/glide/MemoryCategory;

    iput-object v1, v0, Lcom/bumptech/glide/Glide;->memoryCategory:Lcom/bumptech/glide/MemoryCategory;

    .line 323
    move-object/from16 v14, p2

    iput-object v14, v0, Lcom/bumptech/glide/Glide;->engine:Lcom/bumptech/glide/load/engine/Engine;

    .line 324
    iput-object v12, v0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 325
    iput-object v13, v0, Lcom/bumptech/glide/Glide;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 326
    iput-object v11, v0, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 327
    move-object/from16 v15, p6

    iput-object v15, v0, Lcom/bumptech/glide/Glide;->requestManagerRetriever:Lcom/bumptech/glide/manager/RequestManagerRetriever;

    .line 328
    move-object/from16 v9, p7

    iput-object v9, v0, Lcom/bumptech/glide/Glide;->connectivityMonitorFactory:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    .line 330
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/RequestOptions;->getOptions()Lcom/bumptech/glide/load/Options;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/bumptech/glide/load/DecodeFormat;

    .line 331
    .local v8, "decodeFormat":Lcom/bumptech/glide/load/DecodeFormat;
    new-instance v1, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

    invoke-direct {v1, v11, v12, v8}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;-><init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v1, v0, Lcom/bumptech/glide/Glide;->bitmapPreFiller:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 335
    .local v7, "resources":Landroid/content/res/Resources;
    new-instance v1, Lcom/bumptech/glide/Registry;

    invoke-direct {v1}, Lcom/bumptech/glide/Registry;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    .line 340
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_0

    .line 341
    iget-object v1, v0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/ExifInterfaceImageHeaderParser;

    invoke-direct {v2}, Lcom/bumptech/glide/load/resource/bitmap/ExifInterfaceImageHeaderParser;-><init>()V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/Registry;->register(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;

    .line 343
    :cond_0
    iget-object v1, v0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;

    invoke-direct {v2}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;-><init>()V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/Registry;->register(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;

    .line 345
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    iget-object v2, v0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    invoke-virtual {v2}, Lcom/bumptech/glide/Registry;->getImageHeaderParsers()Ljava/util/List;

    move-result-object v2

    .line 346
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    move-object v6, v1

    .line 347
    .local v6, "downsampler":Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
    new-instance v1, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;

    iget-object v2, v0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    .line 348
    invoke-virtual {v2}, Lcom/bumptech/glide/Registry;->getImageHeaderParsers()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v10, v2, v12, v13}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    move-object v4, v1

    .line 349
    .local v4, "byteBufferGifDecoder":Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;
    nop

    .line 350
    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->parcel(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v3

    .line 351
    .local v3, "parcelFileDescriptorVideoDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;"
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapDecoder;

    invoke-direct {v1, v6}, Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)V

    move-object v2, v1

    .line 352
    .local v2, "byteBufferBitmapDecoder":Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapDecoder;
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    invoke-direct {v1, v6, v13}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 353
    .local v1, "streamBitmapDecoder":Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;
    new-instance v5, Lcom/bumptech/glide/load/resource/drawable/ResourceDrawableDecoder;

    invoke-direct {v5, v10}, Lcom/bumptech/glide/load/resource/drawable/ResourceDrawableDecoder;-><init>(Landroid/content/Context;)V

    .line 355
    .local v5, "resourceDrawableDecoder":Lcom/bumptech/glide/load/resource/drawable/ResourceDrawableDecoder;
    move-object/from16 v16, v6

    .end local v6    # "downsampler":Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
    .local v16, "downsampler":Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
    new-instance v6, Lcom/bumptech/glide/load/model/ResourceLoader$StreamFactory;

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/model/ResourceLoader$StreamFactory;-><init>(Landroid/content/res/Resources;)V

    .line 357
    .local v6, "resourceLoaderStreamFactory":Lcom/bumptech/glide/load/model/ResourceLoader$StreamFactory;
    move-object/from16 v17, v8

    .end local v8    # "decodeFormat":Lcom/bumptech/glide/load/DecodeFormat;
    .local v17, "decodeFormat":Lcom/bumptech/glide/load/DecodeFormat;
    new-instance v8, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;

    invoke-direct {v8, v7}, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;-><init>(Landroid/content/res/Resources;)V

    .line 359
    .local v8, "resourceLoaderUriFactory":Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;
    new-instance v9, Lcom/bumptech/glide/load/model/ResourceLoader$FileDescriptorFactory;

    invoke-direct {v9, v7}, Lcom/bumptech/glide/load/model/ResourceLoader$FileDescriptorFactory;-><init>(Landroid/content/res/Resources;)V

    .line 361
    .local v9, "resourceLoaderFileDescriptorFactory":Lcom/bumptech/glide/load/model/ResourceLoader$FileDescriptorFactory;
    new-instance v11, Lcom/bumptech/glide/load/model/ResourceLoader$AssetFileDescriptorFactory;

    invoke-direct {v11, v7}, Lcom/bumptech/glide/load/model/ResourceLoader$AssetFileDescriptorFactory;-><init>(Landroid/content/res/Resources;)V

    .line 363
    .local v11, "resourceLoaderAssetFileDescriptorFactory":Lcom/bumptech/glide/load/model/ResourceLoader$AssetFileDescriptorFactory;
    new-instance v14, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    invoke-direct {v14, v13}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 365
    .local v14, "bitmapEncoder":Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
    new-instance v18, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;

    invoke-direct/range {v18 .. v18}, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;-><init>()V

    move-object/from16 v19, v18

    .line 366
    .local v19, "bitmapBytesTranscoder":Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;
    new-instance v18, Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;

    invoke-direct/range {v18 .. v18}, Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;-><init>()V

    move-object/from16 v20, v18

    .line 368
    .local v20, "gifDrawableBytesTranscoder":Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 370
    .local v15, "contentResolver":Landroid/content/ContentResolver;
    move-object/from16 v21, v15

    .end local v15    # "contentResolver":Landroid/content/ContentResolver;
    .local v21, "contentResolver":Landroid/content/ContentResolver;
    iget-object v15, v0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    const-class v10, Ljava/nio/ByteBuffer;

    move-object/from16 v22, v11

    .end local v11    # "resourceLoaderAssetFileDescriptorFactory":Lcom/bumptech/glide/load/model/ResourceLoader$AssetFileDescriptorFactory;
    .local v22, "resourceLoaderAssetFileDescriptorFactory":Lcom/bumptech/glide/load/model/ResourceLoader$AssetFileDescriptorFactory;
    new-instance v11, Lcom/bumptech/glide/load/model/ByteBufferEncoder;

    invoke-direct {v11}, Lcom/bumptech/glide/load/model/ByteBufferEncoder;-><init>()V

    .line 371
    invoke-virtual {v15, v10, v11}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/Registry;

    move-result-object v10

    const-class v11, Ljava/io/InputStream;

    new-instance v15, Lcom/bumptech/glide/load/model/StreamEncoder;

    invoke-direct {v15, v13}, Lcom/bumptech/glide/load/model/StreamEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 372
    invoke-virtual {v10, v11, v15}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/Registry;

    move-result-object v10

    const-string v11, "Bitmap"

    const-class v15, Ljava/nio/ByteBuffer;

    move-object/from16 v23, v8

    .end local v8    # "resourceLoaderUriFactory":Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;
    .local v23, "resourceLoaderUriFactory":Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;
    const-class v8, Landroid/graphics/Bitmap;

    .line 374
    invoke-virtual {v10, v11, v15, v8, v2}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v8

    const-string v10, "Bitmap"

    const-class v11, Ljava/io/InputStream;

    const-class v15, Landroid/graphics/Bitmap;

    .line 375
    invoke-virtual {v8, v10, v11, v15, v1}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v8

    const-string v10, "Bitmap"

    const-class v11, Landroid/os/ParcelFileDescriptor;

    const-class v15, Landroid/graphics/Bitmap;

    .line 376
    invoke-virtual {v8, v10, v11, v15, v3}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v8

    const-string v10, "Bitmap"

    const-class v11, Landroid/content/res/AssetFileDescriptor;

    const-class v15, Landroid/graphics/Bitmap;

    .line 385
    move-object/from16 v24, v9

    .end local v9    # "resourceLoaderFileDescriptorFactory":Lcom/bumptech/glide/load/model/ResourceLoader$FileDescriptorFactory;
    .local v24, "resourceLoaderFileDescriptorFactory":Lcom/bumptech/glide/load/model/ResourceLoader$FileDescriptorFactory;
    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->asset(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v9

    .line 381
    invoke-virtual {v8, v10, v11, v15, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v8

    const-class v9, Landroid/graphics/Bitmap;

    const-class v10, Landroid/graphics/Bitmap;

    .line 386
    invoke-static {}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v8

    const-string v9, "Bitmap"

    const-class v10, Landroid/graphics/Bitmap;

    const-class v11, Landroid/graphics/Bitmap;

    new-instance v15, Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder;

    invoke-direct {v15}, Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder;-><init>()V

    .line 387
    invoke-virtual {v8, v9, v10, v11, v15}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v8

    const-class v9, Landroid/graphics/Bitmap;

    .line 389
    invoke-virtual {v8, v9, v14}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/Registry;

    move-result-object v8

    const-string v9, "BitmapDrawable"

    const-class v10, Ljava/nio/ByteBuffer;

    const-class v11, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v15, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    invoke-direct {v15, v7, v2}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 391
    invoke-virtual {v8, v9, v10, v11, v15}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v8

    const-string v9, "BitmapDrawable"

    const-class v10, Ljava/io/InputStream;

    const-class v11, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v15, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    invoke-direct {v15, v7, v1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 396
    invoke-virtual {v8, v9, v10, v11, v15}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v8

    const-string v9, "BitmapDrawable"

    const-class v10, Landroid/os/ParcelFileDescriptor;

    const-class v11, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v15, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    invoke-direct {v15, v7, v3}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 401
    invoke-virtual {v8, v9, v10, v11, v15}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v8

    const-class v9, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v10, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableEncoder;

    invoke-direct {v10, v12, v14}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/ResourceEncoder;)V

    .line 406
    invoke-virtual {v8, v9, v10}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/Registry;

    move-result-object v8

    const-string v9, "Gif"

    const-class v10, Ljava/io/InputStream;

    const-class v11, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v15, Lcom/bumptech/glide/load/resource/gif/StreamGifDecoder;

    move-object/from16 v25, v1

    .end local v1    # "streamBitmapDecoder":Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;
    .local v25, "streamBitmapDecoder":Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;
    iget-object v1, v0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    .line 412
    invoke-virtual {v1}, Lcom/bumptech/glide/Registry;->getImageHeaderParsers()Ljava/util/List;

    move-result-object v1

    invoke-direct {v15, v1, v4, v13}, Lcom/bumptech/glide/load/resource/gif/StreamGifDecoder;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 408
    invoke-virtual {v8, v9, v10, v11, v15}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-string v8, "Gif"

    const-class v9, Ljava/nio/ByteBuffer;

    const-class v10, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 413
    invoke-virtual {v1, v8, v9, v10, v4}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v8, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v9, Lcom/bumptech/glide/load/resource/gif/GifDrawableEncoder;

    invoke-direct {v9}, Lcom/bumptech/glide/load/resource/gif/GifDrawableEncoder;-><init>()V

    .line 414
    invoke-virtual {v1, v8, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v8, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    const-class v9, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 418
    invoke-static {}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    move-result-object v10

    .line 417
    invoke-virtual {v1, v8, v9, v10}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-string v8, "Bitmap"

    const-class v9, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    const-class v10, Landroid/graphics/Bitmap;

    new-instance v11, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;

    invoke-direct {v11, v12}, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 419
    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v8, Landroid/net/Uri;

    const-class v9, Landroid/graphics/drawable/Drawable;

    .line 425
    invoke-virtual {v1, v8, v9, v5}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v8, Landroid/net/Uri;

    const-class v9, Landroid/graphics/Bitmap;

    new-instance v10, Lcom/bumptech/glide/load/resource/bitmap/ResourceBitmapDecoder;

    invoke-direct {v10, v5, v12}, Lcom/bumptech/glide/load/resource/bitmap/ResourceBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/drawable/ResourceDrawableDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 426
    invoke-virtual {v1, v8, v9, v10}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    new-instance v8, Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder$Factory;

    invoke-direct {v8}, Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder$Factory;-><init>()V

    .line 429
    invoke-virtual {v1, v8}, Lcom/bumptech/glide/Registry;->register(Lcom/bumptech/glide/load/data/DataRewinder$Factory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v8, Ljava/io/File;

    const-class v9, Ljava/nio/ByteBuffer;

    new-instance v10, Lcom/bumptech/glide/load/model/ByteBufferFileLoader$Factory;

    invoke-direct {v10}, Lcom/bumptech/glide/load/model/ByteBufferFileLoader$Factory;-><init>()V

    .line 430
    invoke-virtual {v1, v8, v9, v10}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v8, Ljava/io/File;

    const-class v9, Ljava/io/InputStream;

    new-instance v10, Lcom/bumptech/glide/load/model/FileLoader$StreamFactory;

    invoke-direct {v10}, Lcom/bumptech/glide/load/model/FileLoader$StreamFactory;-><init>()V

    .line 431
    invoke-virtual {v1, v8, v9, v10}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v8, Ljava/io/File;

    const-class v9, Ljava/io/File;

    new-instance v10, Lcom/bumptech/glide/load/resource/file/FileDecoder;

    invoke-direct {v10}, Lcom/bumptech/glide/load/resource/file/FileDecoder;-><init>()V

    .line 432
    invoke-virtual {v1, v8, v9, v10}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v8, Ljava/io/File;

    const-class v9, Landroid/os/ParcelFileDescriptor;

    new-instance v10, Lcom/bumptech/glide/load/model/FileLoader$FileDescriptorFactory;

    invoke-direct {v10}, Lcom/bumptech/glide/load/model/FileLoader$FileDescriptorFactory;-><init>()V

    .line 433
    invoke-virtual {v1, v8, v9, v10}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v8, Ljava/io/File;

    const-class v9, Ljava/io/File;

    .line 435
    invoke-static {}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    move-result-object v10

    invoke-virtual {v1, v8, v9, v10}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    new-instance v8, Lcom/bumptech/glide/load/data/InputStreamRewinder$Factory;

    invoke-direct {v8, v13}, Lcom/bumptech/glide/load/data/InputStreamRewinder$Factory;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 437
    invoke-virtual {v1, v8}, Lcom/bumptech/glide/Registry;->register(Lcom/bumptech/glide/load/data/DataRewinder$Factory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/io/InputStream;

    .line 438
    invoke-virtual {v1, v8, v9, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v9, Landroid/os/ParcelFileDescriptor;

    .line 439
    move-object/from16 v10, v24

    .end local v24    # "resourceLoaderFileDescriptorFactory":Lcom/bumptech/glide/load/model/ResourceLoader$FileDescriptorFactory;
    .local v10, "resourceLoaderFileDescriptorFactory":Lcom/bumptech/glide/load/model/ResourceLoader$FileDescriptorFactory;
    invoke-virtual {v1, v8, v9, v10}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v8, Ljava/lang/Integer;

    const-class v9, Ljava/io/InputStream;

    .line 443
    invoke-virtual {v1, v8, v9, v6}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v8, Ljava/lang/Integer;

    const-class v9, Landroid/os/ParcelFileDescriptor;

    .line 444
    invoke-virtual {v1, v8, v9, v10}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v8, Ljava/lang/Integer;

    const-class v9, Landroid/net/Uri;

    .line 448
    move-object/from16 v11, v23

    .end local v23    # "resourceLoaderUriFactory":Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;
    .local v11, "resourceLoaderUriFactory":Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;
    invoke-virtual {v1, v8, v9, v11}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v9, Landroid/content/res/AssetFileDescriptor;

    .line 449
    move-object/from16 v15, v22

    .end local v22    # "resourceLoaderAssetFileDescriptorFactory":Lcom/bumptech/glide/load/model/ResourceLoader$AssetFileDescriptorFactory;
    .local v15, "resourceLoaderAssetFileDescriptorFactory":Lcom/bumptech/glide/load/model/ResourceLoader$AssetFileDescriptorFactory;
    invoke-virtual {v1, v8, v9, v15}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v8, Ljava/lang/Integer;

    const-class v9, Landroid/content/res/AssetFileDescriptor;

    .line 453
    invoke-virtual {v1, v8, v9, v15}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v9, Landroid/net/Uri;

    .line 457
    invoke-virtual {v1, v8, v9, v11}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v8, Ljava/lang/String;

    const-class v9, Ljava/io/InputStream;

    move-object/from16 v26, v2

    .end local v2    # "byteBufferBitmapDecoder":Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapDecoder;
    .local v26, "byteBufferBitmapDecoder":Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapDecoder;
    new-instance v2, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;

    invoke-direct {v2}, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;-><init>()V

    .line 458
    invoke-virtual {v1, v8, v9, v2}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Landroid/net/Uri;

    const-class v8, Ljava/io/InputStream;

    new-instance v9, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;

    invoke-direct {v9}, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;-><init>()V

    .line 459
    invoke-virtual {v1, v2, v8, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    const-class v8, Ljava/io/InputStream;

    new-instance v9, Lcom/bumptech/glide/load/model/StringLoader$StreamFactory;

    invoke-direct {v9}, Lcom/bumptech/glide/load/model/StringLoader$StreamFactory;-><init>()V

    .line 460
    invoke-virtual {v1, v2, v8, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    const-class v8, Landroid/os/ParcelFileDescriptor;

    new-instance v9, Lcom/bumptech/glide/load/model/StringLoader$FileDescriptorFactory;

    invoke-direct {v9}, Lcom/bumptech/glide/load/model/StringLoader$FileDescriptorFactory;-><init>()V

    .line 461
    invoke-virtual {v1, v2, v8, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    const-class v8, Landroid/content/res/AssetFileDescriptor;

    new-instance v9, Lcom/bumptech/glide/load/model/StringLoader$AssetFileDescriptorFactory;

    invoke-direct {v9}, Lcom/bumptech/glide/load/model/StringLoader$AssetFileDescriptorFactory;-><init>()V

    .line 462
    invoke-virtual {v1, v2, v8, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Landroid/net/Uri;

    const-class v8, Ljava/io/InputStream;

    new-instance v9, Lcom/bumptech/glide/load/model/stream/HttpUriLoader$Factory;

    invoke-direct {v9}, Lcom/bumptech/glide/load/model/stream/HttpUriLoader$Factory;-><init>()V

    .line 464
    invoke-virtual {v1, v2, v8, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Landroid/net/Uri;

    const-class v8, Ljava/io/InputStream;

    new-instance v9, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;

    .line 465
    move-object/from16 v27, v3

    .end local v3    # "parcelFileDescriptorVideoDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;"
    .local v27, "parcelFileDescriptorVideoDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-direct {v9, v3}, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v1, v2, v8, v9}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Landroid/net/Uri;

    const-class v3, Landroid/os/ParcelFileDescriptor;

    new-instance v8, Lcom/bumptech/glide/load/model/AssetUriLoader$FileDescriptorFactory;

    .line 469
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/bumptech/glide/load/model/AssetUriLoader$FileDescriptorFactory;-><init>(Landroid/content/res/AssetManager;)V

    .line 466
    invoke-virtual {v1, v2, v3, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Landroid/net/Uri;

    const-class v3, Ljava/io/InputStream;

    new-instance v8, Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;

    move-object/from16 v9, p1

    invoke-direct {v8, v9}, Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;-><init>(Landroid/content/Context;)V

    .line 470
    invoke-virtual {v1, v2, v3, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Landroid/net/Uri;

    const-class v3, Ljava/io/InputStream;

    new-instance v8, Lcom/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory;

    invoke-direct {v8, v9}, Lcom/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory;-><init>(Landroid/content/Context;)V

    .line 471
    invoke-virtual {v1, v2, v3, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Landroid/net/Uri;

    const-class v3, Ljava/io/InputStream;

    new-instance v8, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;

    move-object/from16 v28, v10

    move-object/from16 v10, v21

    .end local v21    # "contentResolver":Landroid/content/ContentResolver;
    .local v10, "contentResolver":Landroid/content/ContentResolver;
    .local v28, "resourceLoaderFileDescriptorFactory":Lcom/bumptech/glide/load/model/ResourceLoader$FileDescriptorFactory;
    invoke-direct {v8, v10}, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;-><init>(Landroid/content/ContentResolver;)V

    .line 472
    invoke-virtual {v1, v2, v3, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Landroid/net/Uri;

    const-class v3, Landroid/os/ParcelFileDescriptor;

    new-instance v8, Lcom/bumptech/glide/load/model/UriLoader$FileDescriptorFactory;

    invoke-direct {v8, v10}, Lcom/bumptech/glide/load/model/UriLoader$FileDescriptorFactory;-><init>(Landroid/content/ContentResolver;)V

    .line 476
    invoke-virtual {v1, v2, v3, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Landroid/net/Uri;

    const-class v3, Landroid/content/res/AssetFileDescriptor;

    new-instance v8, Lcom/bumptech/glide/load/model/UriLoader$AssetFileDescriptorFactory;

    invoke-direct {v8, v10}, Lcom/bumptech/glide/load/model/UriLoader$AssetFileDescriptorFactory;-><init>(Landroid/content/ContentResolver;)V

    .line 480
    invoke-virtual {v1, v2, v3, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Landroid/net/Uri;

    const-class v3, Ljava/io/InputStream;

    new-instance v8, Lcom/bumptech/glide/load/model/UrlUriLoader$StreamFactory;

    invoke-direct {v8}, Lcom/bumptech/glide/load/model/UrlUriLoader$StreamFactory;-><init>()V

    .line 484
    invoke-virtual {v1, v2, v3, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Ljava/net/URL;

    const-class v3, Ljava/io/InputStream;

    new-instance v8, Lcom/bumptech/glide/load/model/stream/UrlLoader$StreamFactory;

    invoke-direct {v8}, Lcom/bumptech/glide/load/model/stream/UrlLoader$StreamFactory;-><init>()V

    .line 485
    invoke-virtual {v1, v2, v3, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Landroid/net/Uri;

    const-class v3, Ljava/io/File;

    new-instance v8, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;

    invoke-direct {v8, v9}, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;-><init>(Landroid/content/Context;)V

    .line 486
    invoke-virtual {v1, v2, v3, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Lcom/bumptech/glide/load/model/GlideUrl;

    const-class v3, Ljava/io/InputStream;

    new-instance v8, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader$Factory;

    invoke-direct {v8}, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader$Factory;-><init>()V

    .line 487
    invoke-virtual {v1, v2, v3, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, [B

    const-class v3, Ljava/nio/ByteBuffer;

    new-instance v8, Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;

    invoke-direct {v8}, Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;-><init>()V

    .line 488
    invoke-virtual {v1, v2, v3, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, [B

    const-class v3, Ljava/io/InputStream;

    new-instance v8, Lcom/bumptech/glide/load/model/ByteArrayLoader$StreamFactory;

    invoke-direct {v8}, Lcom/bumptech/glide/load/model/ByteArrayLoader$StreamFactory;-><init>()V

    .line 489
    invoke-virtual {v1, v2, v3, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Landroid/net/Uri;

    const-class v3, Landroid/net/Uri;

    .line 490
    invoke-static {}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    move-result-object v8

    invoke-virtual {v1, v2, v3, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Landroid/graphics/drawable/Drawable;

    const-class v3, Landroid/graphics/drawable/Drawable;

    .line 491
    invoke-static {}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    move-result-object v8

    invoke-virtual {v1, v2, v3, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Landroid/graphics/drawable/Drawable;

    const-class v3, Landroid/graphics/drawable/Drawable;

    new-instance v8, Lcom/bumptech/glide/load/resource/drawable/UnitDrawableDecoder;

    invoke-direct {v8}, Lcom/bumptech/glide/load/resource/drawable/UnitDrawableDecoder;-><init>()V

    .line 492
    invoke-virtual {v1, v2, v3, v8}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Landroid/graphics/Bitmap;

    const-class v3, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v8, Lcom/bumptech/glide/load/resource/transcode/BitmapDrawableTranscoder;

    invoke-direct {v8, v7}, Lcom/bumptech/glide/load/resource/transcode/BitmapDrawableTranscoder;-><init>(Landroid/content/res/Resources;)V

    .line 494
    invoke-virtual {v1, v2, v3, v8}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Landroid/graphics/Bitmap;

    const-class v3, [B

    .line 498
    move-object/from16 v8, v19

    .end local v19    # "bitmapBytesTranscoder":Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;
    .local v8, "bitmapBytesTranscoder":Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;
    invoke-virtual {v1, v2, v3, v8}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Landroid/graphics/drawable/Drawable;

    const-class v3, [B

    move-object/from16 v29, v4

    .end local v4    # "byteBufferGifDecoder":Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;
    .local v29, "byteBufferGifDecoder":Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;
    new-instance v4, Lcom/bumptech/glide/load/resource/transcode/DrawableBytesTranscoder;

    move-object/from16 v30, v10

    move-object/from16 v10, v20

    .end local v20    # "gifDrawableBytesTranscoder":Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;
    .local v10, "gifDrawableBytesTranscoder":Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;
    .local v30, "contentResolver":Landroid/content/ContentResolver;
    invoke-direct {v4, v12, v8, v10}, Lcom/bumptech/glide/load/resource/transcode/DrawableBytesTranscoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 499
    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    const-class v3, [B

    .line 504
    invoke-virtual {v1, v2, v3, v10}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/Registry;

    .line 506
    new-instance v1, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    invoke-direct {v1}, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;-><init>()V

    move-object/from16 v18, v5

    .end local v5    # "resourceDrawableDecoder":Lcom/bumptech/glide/load/resource/drawable/ResourceDrawableDecoder;
    .local v18, "resourceDrawableDecoder":Lcom/bumptech/glide/load/resource/drawable/ResourceDrawableDecoder;
    move-object v5, v1

    .line 507
    .local v5, "imageViewTargetFactory":Lcom/bumptech/glide/request/target/ImageViewTargetFactory;
    new-instance v4, Lcom/bumptech/glide/GlideContext;

    iget-object v3, v0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    move-object/from16 v19, v25

    .end local v25    # "streamBitmapDecoder":Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;
    .local v19, "streamBitmapDecoder":Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;
    move-object v1, v4

    move-object/from16 v20, v26

    .end local v26    # "byteBufferBitmapDecoder":Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapDecoder;
    .local v20, "byteBufferBitmapDecoder":Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapDecoder;
    move-object/from16 v2, p1

    move-object/from16 v22, v3

    move-object/from16 v21, v27

    .end local v27    # "parcelFileDescriptorVideoDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;"
    .local v21, "parcelFileDescriptorVideoDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;"
    move-object/from16 v3, p5

    move-object/from16 v31, v10

    move-object/from16 v23, v29

    move-object v10, v4

    .end local v10    # "gifDrawableBytesTranscoder":Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;
    .end local v29    # "byteBufferGifDecoder":Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;
    .local v23, "byteBufferGifDecoder":Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;
    .local v31, "gifDrawableBytesTranscoder":Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;
    move-object/from16 v4, v22

    move-object/from16 v22, v6

    .end local v6    # "resourceLoaderStreamFactory":Lcom/bumptech/glide/load/model/ResourceLoader$StreamFactory;
    .local v22, "resourceLoaderStreamFactory":Lcom/bumptech/glide/load/model/ResourceLoader$StreamFactory;
    move-object/from16 v6, p9

    move-object/from16 v24, v7

    .end local v7    # "resources":Landroid/content/res/Resources;
    .local v24, "resources":Landroid/content/res/Resources;
    move-object/from16 v7, p10

    move-object/from16 v25, v8

    move-object/from16 v32, v17

    move-object/from16 v17, v11

    move-object/from16 v11, v32

    .end local v8    # "bitmapBytesTranscoder":Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;
    .local v11, "decodeFormat":Lcom/bumptech/glide/load/DecodeFormat;
    .local v17, "resourceLoaderUriFactory":Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;
    .local v25, "bitmapBytesTranscoder":Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;
    move-object/from16 v8, p2

    move-object/from16 v26, v28

    .end local v28    # "resourceLoaderFileDescriptorFactory":Lcom/bumptech/glide/load/model/ResourceLoader$FileDescriptorFactory;
    .local v26, "resourceLoaderFileDescriptorFactory":Lcom/bumptech/glide/load/model/ResourceLoader$FileDescriptorFactory;
    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/bumptech/glide/GlideContext;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/Registry;Lcom/bumptech/glide/request/target/ImageViewTargetFactory;Lcom/bumptech/glide/request/RequestOptions;Ljava/util/Map;Lcom/bumptech/glide/load/engine/Engine;I)V

    iput-object v10, v0, Lcom/bumptech/glide/Glide;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 517
    return-void
.end method

.method private static checkAndInitializeGlide(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 177
    sget-boolean v0, Lcom/bumptech/glide/Glide;->isInitializing:Z

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/Glide;->isInitializing:Z

    .line 182
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->initializeGlide(Landroid/content/Context;)V

    .line 183
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bumptech/glide/Glide;->isInitializing:Z

    .line 184
    return-void

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 163
    sget-object v0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    if-nez v0, :cond_1

    .line 164
    const-class v0, Lcom/bumptech/glide/Glide;

    monitor-enter v0

    .line 165
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    if-nez v1, :cond_0

    .line 166
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->checkAndInitializeGlide(Landroid/content/Context;)V

    .line 168
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 171
    :cond_1
    :goto_0
    sget-object v0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    return-object v0
.end method

.method private static getAnnotationGeneratedGlideModules()Lcom/bumptech/glide/GeneratedAppGlideModule;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 280
    const/4 v0, 0x0

    .line 282
    .local v0, "result":Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_start_0
    const-string v1, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    .line 284
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 285
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/bumptech/glide/GeneratedAppGlideModule;>;"
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 302
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/bumptech/glide/GeneratedAppGlideModule;>;"
    :cond_0
    :goto_0
    goto :goto_1

    .line 300
    :catch_0
    move-exception v1

    .line 301
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->throwIncorrectGlideModule(Ljava/lang/Exception;)V

    goto :goto_1

    .line 298
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->throwIncorrectGlideModule(Ljava/lang/Exception;)V

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 296
    :catch_2
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->throwIncorrectGlideModule(Ljava/lang/Exception;)V

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 294
    :catch_3
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->throwIncorrectGlideModule(Ljava/lang/Exception;)V

    .end local v1    # "e":Ljava/lang/InstantiationException;
    goto :goto_0

    .line 286
    :catch_4
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "Glide"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    const-string v2, "Glide"

    const-string v3, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    return-object v0
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 128
    const-string v0, "image_manager_disk_cache"

    invoke-static {p0, v0}, Lcom/bumptech/glide/Glide;->getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 142
    .local v0, "cacheDir":Ljava/io/File;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 143
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    .local v2, "result":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 146
    :cond_0
    return-object v1

    .line 148
    :cond_1
    return-object v2

    .line 150
    .end local v2    # "result":Ljava/io/File;
    :cond_2
    const-string v2, "Glide"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    const-string v2, "Glide"

    const-string v3, "default disk cache dir is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_3
    return-object v1
.end method

.method private static getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 675
    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {p0, v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 680
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getRequestManagerRetriever()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "builder"    # Lcom/bumptech/glide/GlideBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/bumptech/glide/Glide;

    monitor-enter v0

    .line 203
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    if-eqz v1, :cond_0

    .line 204
    invoke-static {}, Lcom/bumptech/glide/Glide;->tearDown()V

    .line 206
    :cond_0
    invoke-static {p0, p1}, Lcom/bumptech/glide/Glide;->initializeGlide(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit v0

    return-void

    .line 202
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "builder":Lcom/bumptech/glide/GlideBuilder;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Lcom/bumptech/glide/Glide;)V
    .locals 2
    .param p0, "glide"    # Lcom/bumptech/glide/Glide;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/bumptech/glide/Glide;

    monitor-enter v0

    .line 195
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    if-eqz v1, :cond_0

    .line 196
    invoke-static {}, Lcom/bumptech/glide/Glide;->tearDown()V

    .line 198
    :cond_0
    sput-object p0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit v0

    return-void

    .line 194
    .end local p0    # "glide":Lcom/bumptech/glide/Glide;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static initializeGlide(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 221
    new-instance v0, Lcom/bumptech/glide/GlideBuilder;

    invoke-direct {v0}, Lcom/bumptech/glide/GlideBuilder;-><init>()V

    invoke-static {p0, v0}, Lcom/bumptech/glide/Glide;->initializeGlide(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V

    .line 222
    return-void
.end method

.method private static initializeGlide(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "builder"    # Lcom/bumptech/glide/GlideBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 227
    .local v0, "applicationContext":Landroid/content/Context;
    invoke-static {}, Lcom/bumptech/glide/Glide;->getAnnotationGeneratedGlideModules()Lcom/bumptech/glide/GeneratedAppGlideModule;

    move-result-object v1

    .line 228
    .local v1, "annotationGeneratedModule":Lcom/bumptech/glide/GeneratedAppGlideModule;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 229
    .local v2, "manifestModules":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/module/GlideModule;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->isManifestParsingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    :cond_0
    new-instance v3, Lcom/bumptech/glide/module/ManifestParser;

    invoke-direct {v3, v0}, Lcom/bumptech/glide/module/ManifestParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/bumptech/glide/module/ManifestParser;->parse()Ljava/util/List;

    move-result-object v2

    .line 233
    :cond_1
    const/4 v3, 0x3

    if-eqz v1, :cond_4

    .line 234
    invoke-virtual {v1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->getExcludedModuleClasses()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 235
    nop

    .line 236
    invoke-virtual {v1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->getExcludedModuleClasses()Ljava/util/Set;

    move-result-object v4

    .line 237
    .local v4, "excludedModuleClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 238
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/bumptech/glide/module/GlideModule;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 239
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/module/GlideModule;

    .line 240
    .local v6, "current":Lcom/bumptech/glide/module/GlideModule;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 241
    goto :goto_0

    .line 243
    :cond_2
    const-string v7, "Glide"

    invoke-static {v7, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 244
    const-string v7, "Glide"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 247
    .end local v6    # "current":Lcom/bumptech/glide/module/GlideModule;
    goto :goto_0

    .line 250
    .end local v4    # "excludedModuleClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/bumptech/glide/module/GlideModule;>;"
    :cond_4
    const-string v4, "Glide"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 251
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/module/GlideModule;

    .line 252
    .local v4, "glideModule":Lcom/bumptech/glide/module/GlideModule;
    const-string v5, "Glide"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discovered GlideModule from manifest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v4    # "glideModule":Lcom/bumptech/glide/module/GlideModule;
    goto :goto_1

    .line 257
    :cond_5
    if-eqz v1, :cond_6

    .line 258
    invoke-virtual {v1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->getRequestManagerFactory()Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    move-result-object v3

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    .line 259
    .local v3, "factory":Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    :goto_2
    invoke-virtual {p1, v3}, Lcom/bumptech/glide/GlideBuilder;->setRequestManagerFactory(Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;)V

    .line 260
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/module/GlideModule;

    .line 261
    .local v5, "module":Lcom/bumptech/glide/module/GlideModule;
    invoke-interface {v5, v0, p1}, Lcom/bumptech/glide/module/GlideModule;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V

    .line 262
    .end local v5    # "module":Lcom/bumptech/glide/module/GlideModule;
    goto :goto_3

    .line 263
    :cond_7
    if-eqz v1, :cond_8

    .line 264
    invoke-virtual {v1, v0, p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V

    .line 266
    :cond_8
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/GlideBuilder;->build(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v4

    .line 267
    .local v4, "glide":Lcom/bumptech/glide/Glide;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/module/GlideModule;

    .line 268
    .local v6, "module":Lcom/bumptech/glide/module/GlideModule;
    iget-object v7, v4, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    invoke-interface {v6, v0, v4, v7}, Lcom/bumptech/glide/module/GlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 269
    .end local v6    # "module":Lcom/bumptech/glide/module/GlideModule;
    goto :goto_4

    .line 270
    :cond_9
    if-eqz v1, :cond_a

    .line 271
    iget-object v5, v4, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    invoke-virtual {v1, v0, v4, v5}, Lcom/bumptech/glide/GeneratedAppGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 273
    :cond_a
    invoke-virtual {v0, v4}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 274
    sput-object v4, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    .line 275
    return-void
.end method

.method public static declared-synchronized tearDown()V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/bumptech/glide/Glide;

    monitor-enter v0

    .line 211
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    if-eqz v1, :cond_0

    .line 212
    sget-object v1, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v1}, Lcom/bumptech/glide/Glide;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    .line 214
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 215
    sget-object v1, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    iget-object v1, v1, Lcom/bumptech/glide/Glide;->engine:Lcom/bumptech/glide/load/engine/Engine;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/Engine;->shutdown()V

    .line 217
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit v0

    return-void

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static throwIncorrectGlideModule(Ljava/lang/Exception;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Exception;

    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 719
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method

.method public static with(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .param p0, "fragment"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 762
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method

.method public static with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 707
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method

.method public static with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 745
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method

.method public static with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 732
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method

.method public static with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 792
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearDiskCache()V
    .locals 1

    .line 634
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertBackgroundThread()V

    .line 635
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->engine:Lcom/bumptech/glide/load/engine/Engine;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine;->clearDiskCache()V

    .line 636
    return-void
.end method

.method public clearMemory()V
    .locals 1

    .line 603
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 605
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->clearMemory()V

    .line 606
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->clearMemory()V

    .line 607
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->clearMemory()V

    .line 608
    return-void
.end method

.method public getArrayPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    return-object v0
.end method

.method public getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    return-object v0
.end method

.method getConnectivityMonitorFactory()Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->connectivityMonitorFactory:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 553
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getGlideContext()Lcom/bumptech/glide/GlideContext;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 562
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->glideContext:Lcom/bumptech/glide/GlideContext;

    return-object v0
.end method

.method public getRegistry()Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 797
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->registry:Lcom/bumptech/glide/Registry;

    return-object v0
.end method

.method public getRequestManagerRetriever()Lcom/bumptech/glide/manager/RequestManagerRetriever;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 643
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->requestManagerRetriever:Lcom/bumptech/glide/manager/RequestManagerRetriever;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 838
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 842
    invoke-virtual {p0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    .line 843
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .line 832
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/Glide;->trimMemory(I)V

    .line 833
    return-void
.end method

.method public varargs preFillBitmapPool([Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V
    .locals 1
    .param p1, "bitmapAttributeBuilders"    # [Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 592
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPreFiller:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->preFill([Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V

    .line 593
    return-void
.end method

.method registerRequestManager(Lcom/bumptech/glide/RequestManager;)V
    .locals 3
    .param p1, "requestManager"    # Lcom/bumptech/glide/RequestManager;

    .line 813
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    monitor-enter v0

    .line 814
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    monitor-exit v0

    .line 819
    return-void

    .line 815
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot register already registered manager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 818
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeFromManagers(Lcom/bumptech/glide/request/target/Target;)Z
    .locals 4
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "*>;)Z"
        }
    .end annotation

    .line 801
    .local p1, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<*>;"
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    monitor-enter v0

    .line 802
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestManager;

    .line 803
    .local v2, "requestManager":Lcom/bumptech/glide/RequestManager;
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/RequestManager;->untrack(Lcom/bumptech/glide/request/target/Target;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 804
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 806
    .end local v2    # "requestManager":Lcom/bumptech/glide/RequestManager;
    :cond_0
    goto :goto_0

    .line 807
    :cond_1
    monitor-exit v0

    .line 809
    const/4 v0, 0x0

    return v0

    .line 807
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMemoryCategory(Lcom/bumptech/glide/MemoryCategory;)Lcom/bumptech/glide/MemoryCategory;
    .locals 2
    .param p1, "memoryCategory"    # Lcom/bumptech/glide/MemoryCategory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 662
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 664
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-virtual {p1}, Lcom/bumptech/glide/MemoryCategory;->getMultiplier()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->setSizeMultiplier(F)V

    .line 665
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-virtual {p1}, Lcom/bumptech/glide/MemoryCategory;->getMultiplier()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->setSizeMultiplier(F)V

    .line 666
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->memoryCategory:Lcom/bumptech/glide/MemoryCategory;

    .line 667
    .local v0, "oldCategory":Lcom/bumptech/glide/MemoryCategory;
    iput-object p1, p0, Lcom/bumptech/glide/Glide;->memoryCategory:Lcom/bumptech/glide/MemoryCategory;

    .line 668
    return-object v0
.end method

.method public trimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .line 617
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 619
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->trimMemory(I)V

    .line 620
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->trimMemory(I)V

    .line 621
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->trimMemory(I)V

    .line 622
    return-void
.end method

.method unregisterRequestManager(Lcom/bumptech/glide/RequestManager;)V
    .locals 3
    .param p1, "requestManager"    # Lcom/bumptech/glide/RequestManager;

    .line 822
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    monitor-enter v0

    .line 823
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 826
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 827
    monitor-exit v0

    .line 828
    return-void

    .line 824
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot unregister not yet registered manager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 827
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
