.class public Lcom/bumptech/glide/load/engine/Engine;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/EngineJobListener;
.implements Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;
.implements Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;,
        Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;,
        Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;,
        Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
    }
.end annotation


# static fields
.field private static final JOB_POOL_SIZE:I = 0x96

.field private static final TAG:Ljava/lang/String; = "Engine"

.field private static final VERBOSE_IS_LOGGABLE:Z


# instance fields
.field private final activeResources:Lcom/bumptech/glide/load/engine/ActiveResources;

.field private final cache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private final decodeJobFactory:Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;

.field private final diskCacheProvider:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

.field private final engineJobFactory:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

.field private final jobs:Lcom/bumptech/glide/load/engine/Jobs;

.field private final keyFactory:Lcom/bumptech/glide/load/engine/EngineKeyFactory;

.field private final resourceRecycler:Lcom/bumptech/glide/load/engine/ResourceRecycler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-string v0, "Engine"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/bumptech/glide/load/engine/Engine;->VERBOSE_IS_LOGGABLE:Z

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/Jobs;Lcom/bumptech/glide/load/engine/EngineKeyFactory;Lcom/bumptech/glide/load/engine/ActiveResources;Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;Lcom/bumptech/glide/load/engine/ResourceRecycler;Z)V
    .locals 15
    .param p1, "cache"    # Lcom/bumptech/glide/load/engine/cache/MemoryCache;
    .param p2, "diskCacheFactory"    # Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;
    .param p3, "diskCacheExecutor"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .param p4, "sourceExecutor"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .param p5, "sourceUnlimitedExecutor"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .param p6, "animationExecutor"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .param p7, "jobs"    # Lcom/bumptech/glide/load/engine/Jobs;
    .param p8, "keyFactory"    # Lcom/bumptech/glide/load/engine/EngineKeyFactory;
    .param p9, "activeResources"    # Lcom/bumptech/glide/load/engine/ActiveResources;
    .param p10, "engineJobFactory"    # Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;
    .param p11, "decodeJobFactory"    # Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;
    .param p12, "resourceRecycler"    # Lcom/bumptech/glide/load/engine/ResourceRecycler;
    .param p13, "isActiveResourceRetentionAllowed"    # Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 83
    move-object v6, p0

    move-object/from16 v7, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v7, v6, Lcom/bumptech/glide/load/engine/Engine;->cache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 85
    new-instance v0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    move-object/from16 v8, p2

    invoke-direct {v0, v8}, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;-><init>(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)V

    iput-object v0, v6, Lcom/bumptech/glide/load/engine/Engine;->diskCacheProvider:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    .line 87
    if-nez p9, :cond_0

    .line 88
    new-instance v1, Lcom/bumptech/glide/load/engine/ActiveResources;

    move/from16 v9, p13

    invoke-direct {v1, v9}, Lcom/bumptech/glide/load/engine/ActiveResources;-><init>(Z)V

    move-object v0, v1

    .line 90
    move-object v10, v0

    goto :goto_0

    :cond_0
    move/from16 v9, p13

    move-object/from16 v10, p9

    .end local p9    # "activeResources":Lcom/bumptech/glide/load/engine/ActiveResources;
    .local v10, "activeResources":Lcom/bumptech/glide/load/engine/ActiveResources;
    :goto_0
    iput-object v10, v6, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Lcom/bumptech/glide/load/engine/ActiveResources;

    .line 91
    invoke-virtual {v10, p0}, Lcom/bumptech/glide/load/engine/ActiveResources;->setListener(Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V

    .line 93
    if-nez p8, :cond_1

    .line 94
    new-instance v1, Lcom/bumptech/glide/load/engine/EngineKeyFactory;

    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/EngineKeyFactory;-><init>()V

    move-object v0, v1

    .line 96
    move-object v11, v0

    goto :goto_1

    :cond_1
    move-object/from16 v11, p8

    .end local p8    # "keyFactory":Lcom/bumptech/glide/load/engine/EngineKeyFactory;
    .local v11, "keyFactory":Lcom/bumptech/glide/load/engine/EngineKeyFactory;
    :goto_1
    iput-object v11, v6, Lcom/bumptech/glide/load/engine/Engine;->keyFactory:Lcom/bumptech/glide/load/engine/EngineKeyFactory;

    .line 98
    if-nez p7, :cond_2

    .line 99
    new-instance v1, Lcom/bumptech/glide/load/engine/Jobs;

    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/Jobs;-><init>()V

    move-object v0, v1

    .line 101
    move-object v12, v0

    goto :goto_2

    :cond_2
    move-object/from16 v12, p7

    .end local p7    # "jobs":Lcom/bumptech/glide/load/engine/Jobs;
    .local v12, "jobs":Lcom/bumptech/glide/load/engine/Jobs;
    :goto_2
    iput-object v12, v6, Lcom/bumptech/glide/load/engine/Engine;->jobs:Lcom/bumptech/glide/load/engine/Jobs;

    .line 103
    if-nez p10, :cond_3

    .line 104
    new-instance v14, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;-><init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/EngineJobListener;)V

    .line 108
    move-object v13, v0

    goto :goto_3

    :cond_3
    move-object/from16 v13, p10

    .end local p10    # "engineJobFactory":Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;
    .local v13, "engineJobFactory":Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;
    :goto_3
    iput-object v13, v6, Lcom/bumptech/glide/load/engine/Engine;->engineJobFactory:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    .line 110
    if-nez p11, :cond_4

    .line 111
    new-instance v1, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;

    iget-object v2, v6, Lcom/bumptech/glide/load/engine/Engine;->diskCacheProvider:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;)V

    move-object v0, v1

    goto :goto_4

    .line 113
    :cond_4
    move-object/from16 v0, p11

    .end local p11    # "decodeJobFactory":Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;
    .local v0, "decodeJobFactory":Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;
    :goto_4
    iput-object v0, v6, Lcom/bumptech/glide/load/engine/Engine;->decodeJobFactory:Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;

    .line 115
    if-nez p12, :cond_5

    .line 116
    new-instance v2, Lcom/bumptech/glide/load/engine/ResourceRecycler;

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/ResourceRecycler;-><init>()V

    move-object v1, v2

    goto :goto_5

    .line 118
    :cond_5
    move-object/from16 v1, p12

    .end local p12    # "resourceRecycler":Lcom/bumptech/glide/load/engine/ResourceRecycler;
    .local v1, "resourceRecycler":Lcom/bumptech/glide/load/engine/ResourceRecycler;
    :goto_5
    iput-object v1, v6, Lcom/bumptech/glide/load/engine/Engine;->resourceRecycler:Lcom/bumptech/glide/load/engine/ResourceRecycler;

    .line 120
    invoke-interface {v7, p0}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->setResourceRemovedListener(Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Z)V
    .locals 14
    .param p1, "memoryCache"    # Lcom/bumptech/glide/load/engine/cache/MemoryCache;
    .param p2, "diskCacheFactory"    # Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;
    .param p3, "diskCacheExecutor"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .param p4, "sourceExecutor"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .param p5, "sourceUnlimitedExecutor"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .param p6, "animationExecutor"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .param p7, "isActiveResourceRetentionAllowed"    # Z

    .line 54
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v13, p7

    invoke-direct/range {v0 .. v13}, Lcom/bumptech/glide/load/engine/Engine;-><init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/Jobs;Lcom/bumptech/glide/load/engine/EngineKeyFactory;Lcom/bumptech/glide/load/engine/ActiveResources;Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;Lcom/bumptech/glide/load/engine/ResourceRecycler;Z)V

    .line 68
    return-void
.end method

.method private getEngineResourceFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/EngineResource;
    .locals 3
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->cache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->remove(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 273
    .local v0, "cached":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    if-nez v0, :cond_0

    .line 274
    const/4 v1, 0x0

    goto :goto_0

    .line 275
    :cond_0
    instance-of v1, v0, Lcom/bumptech/glide/load/engine/EngineResource;

    if-eqz v1, :cond_1

    .line 277
    move-object v1, v0

    check-cast v1, Lcom/bumptech/glide/load/engine/EngineResource;

    goto :goto_0

    .line 279
    :cond_1
    new-instance v1, Lcom/bumptech/glide/load/engine/EngineResource;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, v2}, Lcom/bumptech/glide/load/engine/EngineResource;-><init>(Lcom/bumptech/glide/load/engine/Resource;ZZ)V

    .line 281
    .local v1, "result":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    :goto_0
    return-object v1
.end method

.method private loadFromActiveResources(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineResource;
    .locals 1
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;
    .param p2, "isMemoryCacheable"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Z)",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation

    .line 245
    if-nez p2, :cond_0

    .line 246
    const/4 v0, 0x0

    return-object v0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/ActiveResources;->get(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object v0

    .line 249
    .local v0, "active":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineResource;->acquire()V

    .line 253
    :cond_1
    return-object v0
.end method

.method private loadFromCache(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineResource;
    .locals 2
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;
    .param p2, "isMemoryCacheable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Z)",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation

    .line 257
    if-nez p2, :cond_0

    .line 258
    const/4 v0, 0x0

    return-object v0

    .line 261
    :cond_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/Engine;->getEngineResourceFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object v0

    .line 262
    .local v0, "cached":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineResource;->acquire()V

    .line 264
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-virtual {v1, p1, v0}, Lcom/bumptech/glide/load/engine/ActiveResources;->activate(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    .line 266
    :cond_1
    return-object v0
.end method

.method private static logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V
    .locals 4
    .param p0, "log"    # Ljava/lang/String;
    .param p1, "startTime"    # J
    .param p3, "key"    # Lcom/bumptech/glide/load/Key;

    .line 240
    const-string v0, "Engine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "ms, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method


# virtual methods
.method public clearDiskCache()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->diskCacheProvider:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->clear()V

    .line 335
    return-void
.end method

.method public load(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZLcom/bumptech/glide/load/Options;ZZZZLcom/bumptech/glide/request/ResourceCallback;)Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
    .locals 29
    .param p1, "glideContext"    # Lcom/bumptech/glide/GlideContext;
    .param p2, "model"    # Ljava/lang/Object;
    .param p3, "signature"    # Lcom/bumptech/glide/load/Key;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p8, "priority"    # Lcom/bumptech/glide/Priority;
    .param p9, "diskCacheStrategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .param p11, "isTransformationRequired"    # Z
    .param p12, "isScaleOnlyOrNoTransform"    # Z
    .param p13, "options"    # Lcom/bumptech/glide/load/Options;
    .param p14, "isMemoryCacheable"    # Z
    .param p15, "useUnlimitedSourceExecutorPool"    # Z
    .param p16, "useAnimationPool"    # Z
    .param p17, "onlyRetrieveFromCache"    # Z
    .param p18, "cb"    # Lcom/bumptech/glide/request/ResourceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/Key;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "*>;>;ZZ",
            "Lcom/bumptech/glide/load/Options;",
            "ZZZZ",
            "Lcom/bumptech/glide/request/ResourceCallback;",
            ")",
            "Lcom/bumptech/glide/load/engine/Engine$LoadStatus;"
        }
    .end annotation

    .line 168
    .local p6, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p7, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p10, "transformations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/bumptech/glide/load/Transformation<*>;>;"
    move-object/from16 v0, p0

    move/from16 v7, p14

    move-object/from16 v8, p18

    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 169
    sget-boolean v1, Lcom/bumptech/glide/load/engine/Engine;->VERBOSE_IS_LOGGABLE:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    move-wide v9, v1

    .line 171
    .local v9, "startTime":J
    iget-object v11, v0, Lcom/bumptech/glide/load/engine/Engine;->keyFactory:Lcom/bumptech/glide/load/engine/EngineKeyFactory;

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v16, p10

    move-object/from16 v17, p6

    move-object/from16 v18, p7

    move-object/from16 v19, p13

    invoke-virtual/range {v11 .. v19}, Lcom/bumptech/glide/load/engine/EngineKeyFactory;->buildKey(Ljava/lang/Object;Lcom/bumptech/glide/load/Key;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/EngineKey;

    move-result-object v11

    .line 174
    .local v11, "key":Lcom/bumptech/glide/load/engine/EngineKey;
    invoke-direct {v0, v11, v7}, Lcom/bumptech/glide/load/engine/Engine;->loadFromActiveResources(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object v15

    .line 175
    .local v15, "active":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    const/4 v1, 0x0

    if-eqz v15, :cond_2

    .line 176
    sget-object v2, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v8, v15, v2}, Lcom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V

    .line 177
    sget-boolean v2, Lcom/bumptech/glide/load/engine/Engine;->VERBOSE_IS_LOGGABLE:Z

    if-eqz v2, :cond_1

    .line 178
    const-string v2, "Loaded resource from active resources"

    invoke-static {v2, v9, v10, v11}, Lcom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    .line 180
    :cond_1
    return-object v1

    .line 183
    :cond_2
    invoke-direct {v0, v11, v7}, Lcom/bumptech/glide/load/engine/Engine;->loadFromCache(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object v14

    .line 184
    .local v14, "cached":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    if-eqz v14, :cond_4

    .line 185
    sget-object v2, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v8, v14, v2}, Lcom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V

    .line 186
    sget-boolean v2, Lcom/bumptech/glide/load/engine/Engine;->VERBOSE_IS_LOGGABLE:Z

    if-eqz v2, :cond_3

    .line 187
    const-string v2, "Loaded resource from cache"

    invoke-static {v2, v9, v10, v11}, Lcom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    .line 189
    :cond_3
    return-object v1

    .line 192
    :cond_4
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Lcom/bumptech/glide/load/engine/Jobs;

    move/from16 v13, p17

    invoke-virtual {v1, v11, v13}, Lcom/bumptech/glide/load/engine/Jobs;->get(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineJob;

    move-result-object v12

    .line 193
    .local v12, "current":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<*>;"
    if-eqz v12, :cond_6

    .line 194
    invoke-virtual {v12, v8}, Lcom/bumptech/glide/load/engine/EngineJob;->addCallback(Lcom/bumptech/glide/request/ResourceCallback;)V

    .line 195
    sget-boolean v1, Lcom/bumptech/glide/load/engine/Engine;->VERBOSE_IS_LOGGABLE:Z

    if-eqz v1, :cond_5

    .line 196
    const-string v1, "Added to existing load"

    invoke-static {v1, v9, v10, v11}, Lcom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    .line 198
    :cond_5
    new-instance v1, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    invoke-direct {v1, v8, v12}, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;-><init>(Lcom/bumptech/glide/request/ResourceCallback;Lcom/bumptech/glide/load/engine/EngineJob;)V

    return-object v1

    .line 201
    :cond_6
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/Engine;->engineJobFactory:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    .line 202
    move-object v2, v11

    move/from16 v3, p14

    move/from16 v4, p15

    move/from16 v5, p16

    move/from16 v6, p17

    invoke-virtual/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->build(Lcom/bumptech/glide/load/Key;ZZZZ)Lcom/bumptech/glide/load/engine/EngineJob;

    move-result-object v1

    .local v1, "engineJob":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<TR;>;"
    move-object/from16 v28, v1

    .line 209
    iget-object v2, v0, Lcom/bumptech/glide/load/engine/Engine;->decodeJobFactory:Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;

    move-object v3, v12

    .end local v12    # "current":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<*>;"
    .local v3, "current":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<*>;"
    move-object v12, v2

    .line 210
    move-object/from16 v13, p1

    move-object v2, v14

    .end local v14    # "cached":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    .local v2, "cached":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    move-object/from16 v14, p2

    move-object v4, v15

    .end local v15    # "active":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    .local v4, "active":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    move-object v15, v11

    move-object/from16 v16, p3

    move/from16 v17, p4

    move/from16 v18, p5

    move-object/from16 v19, p6

    move-object/from16 v20, p7

    move-object/from16 v21, p8

    move-object/from16 v22, p9

    move-object/from16 v23, p10

    move/from16 v24, p11

    move/from16 v25, p12

    move/from16 v26, p17

    move-object/from16 v27, p13

    invoke-virtual/range {v12 .. v28}, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;->build(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/EngineKey;Lcom/bumptech/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZZLcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/engine/DecodeJob$Callback;)Lcom/bumptech/glide/load/engine/DecodeJob;

    move-result-object v5

    .line 228
    .local v5, "decodeJob":Lcom/bumptech/glide/load/engine/DecodeJob;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>;"
    iget-object v6, v0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Lcom/bumptech/glide/load/engine/Jobs;

    invoke-virtual {v6, v11, v1}, Lcom/bumptech/glide/load/engine/Jobs;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineJob;)V

    .line 230
    invoke-virtual {v1, v8}, Lcom/bumptech/glide/load/engine/EngineJob;->addCallback(Lcom/bumptech/glide/request/ResourceCallback;)V

    .line 231
    invoke-virtual {v1, v5}, Lcom/bumptech/glide/load/engine/EngineJob;->start(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    .line 233
    sget-boolean v6, Lcom/bumptech/glide/load/engine/Engine;->VERBOSE_IS_LOGGABLE:Z

    if-eqz v6, :cond_7

    .line 234
    const-string v6, "Started new load"

    invoke-static {v6, v9, v10, v11}, Lcom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    .line 236
    :cond_7
    new-instance v6, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    invoke-direct {v6, v8, v1}, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;-><init>(Lcom/bumptech/glide/request/ResourceCallback;Lcom/bumptech/glide/load/engine/EngineJob;)V

    return-object v6
.end method

.method public onEngineJobCancelled(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;)V
    .locals 1
    .param p2, "key"    # Lcom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "*>;",
            "Lcom/bumptech/glide/load/Key;",
            ")V"
        }
    .end annotation

    .line 311
    .local p1, "engineJob":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<*>;"
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 313
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Lcom/bumptech/glide/load/engine/Jobs;

    invoke-virtual {v0, p2, p1}, Lcom/bumptech/glide/load/engine/Jobs;->removeIfCurrent(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineJob;)V

    .line 314
    return-void
.end method

.method public onEngineJobComplete(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V
    .locals 1
    .param p2, "key"    # Lcom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "*>;",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;)V"
        }
    .end annotation

    .line 296
    .local p1, "engineJob":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<*>;"
    .local p3, "resource":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 298
    if-eqz p3, :cond_0

    .line 299
    invoke-virtual {p3, p2, p0}, Lcom/bumptech/glide/load/engine/EngineResource;->setResourceListener(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V

    .line 301
    invoke-virtual {p3}, Lcom/bumptech/glide/load/engine/EngineResource;->isCacheable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-virtual {v0, p2, p3}, Lcom/bumptech/glide/load/engine/ActiveResources;->activate(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Lcom/bumptech/glide/load/engine/Jobs;

    invoke-virtual {v0, p2, p1}, Lcom/bumptech/glide/load/engine/Jobs;->removeIfCurrent(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineJob;)V

    .line 307
    return-void
.end method

.method public onResourceReleased(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V
    .locals 1
    .param p1, "cacheKey"    # Lcom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;)V"
        }
    .end annotation

    .line 324
    .local p2, "resource":Lcom/bumptech/glide/load/engine/EngineResource;, "Lcom/bumptech/glide/load/engine/EngineResource<*>;"
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 325
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/ActiveResources;->deactivate(Lcom/bumptech/glide/load/Key;)V

    .line 326
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/EngineResource;->isCacheable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->cache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceRecycler:Lcom/bumptech/glide/load/engine/ResourceRecycler;

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/load/engine/ResourceRecycler;->recycle(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 331
    :goto_0
    return-void
.end method

.method public onResourceRemoved(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/engine/Resource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;)V"
        }
    .end annotation

    .line 318
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 319
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceRecycler:Lcom/bumptech/glide/load/engine/ResourceRecycler;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/ResourceRecycler;->recycle(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 320
    return-void
.end method

.method public release(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;)V"
        }
    .end annotation

    .line 285
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 286
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/EngineResource;

    if-eqz v0, :cond_0

    .line 287
    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineResource;->release()V

    .line 291
    return-void

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot release anything but an EngineResource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shutdown()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->engineJobFactory:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->shutdown()V

    .line 340
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->diskCacheProvider:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->clearDiskCacheIfCreated()V

    .line 341
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/ActiveResources;->shutdown()V

    .line 342
    return-void
.end method
