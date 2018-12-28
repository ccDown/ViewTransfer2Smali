.class public Lcom/bumptech/glide/load/engine/LoadPath;
.super Ljava/lang/Object;
.source "LoadPath.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation
.end field

.field private final decodePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/bumptech/glide/load/engine/DecodePath<",
            "TData;TResourceType;TTranscode;>;>;"
        }
    .end annotation
.end field

.field private final failureMessage:Ljava/lang/String;

.field private final listPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroid/support/v4/util/Pools$Pool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/engine/DecodePath<",
            "TData;TResourceType;TTranscode;>;>;",
            "Landroid/support/v4/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 31
    .local p0, "this":Lcom/bumptech/glide/load/engine/LoadPath;, "Lcom/bumptech/glide/load/engine/LoadPath<TData;TResourceType;TTranscode;>;"
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TResourceType;>;"
    .local p3, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscode;>;"
    .local p4, "decodePaths":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/engine/DecodePath<TData;TResourceType;TTranscode;>;>;"
    .local p5, "listPool":Landroid/support/v4/util/Pools$Pool;, "Landroid/support/v4/util/Pools$Pool<Ljava/util/List<Ljava/lang/Throwable;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/LoadPath;->dataClass:Ljava/lang/Class;

    .line 33
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/LoadPath;->listPool:Landroid/support/v4/util/Pools$Pool;

    .line 34
    invoke-static {p4}, Lcom/bumptech/glide/util/Preconditions;->checkNotEmpty(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/LoadPath;->decodePaths:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed LoadPath{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/LoadPath;->failureMessage:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private loadWithExceptionList(Lcom/bumptech/glide/load/data/DataRewinder;Lcom/bumptech/glide/load/Options;IILcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;Ljava/util/List;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 12
    .param p2, "options"    # Lcom/bumptech/glide/load/Options;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/data/DataRewinder<",
            "TData;>;",
            "Lcom/bumptech/glide/load/Options;",
            "II",
            "Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback<",
            "TResourceType;>;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TTranscode;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/bumptech/glide/load/engine/LoadPath;, "Lcom/bumptech/glide/load/engine/LoadPath<TData;TResourceType;TTranscode;>;"
    .local p1, "rewinder":Lcom/bumptech/glide/load/data/DataRewinder;, "Lcom/bumptech/glide/load/data/DataRewinder<TData;>;"
    .local p5, "decodeCallback":Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;, "Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback<TResourceType;>;"
    .local p6, "exceptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    move-object v1, p0

    move-object/from16 v2, p6

    const/4 v0, 0x0

    .line 55
    .local v0, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TTranscode;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, v1, Lcom/bumptech/glide/load/engine/LoadPath;->decodePaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move-object v5, v0

    .end local v0    # "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TTranscode;>;"
    .local v4, "size":I
    .local v5, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TTranscode;>;"
    :goto_0
    if-ge v3, v4, :cond_1

    .line 56
    iget-object v0, v1, Lcom/bumptech/glide/load/engine/LoadPath;->decodePaths:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/bumptech/glide/load/engine/DecodePath;

    .line 58
    .local v6, "path":Lcom/bumptech/glide/load/engine/DecodePath;, "Lcom/bumptech/glide/load/engine/DecodePath<TData;TResourceType;TTranscode;>;"
    move-object v7, p1

    move v8, p3

    move/from16 v9, p4

    move-object v10, p2

    move-object/from16 v11, p5

    :try_start_0
    invoke-virtual/range {v6 .. v11}, Lcom/bumptech/glide/load/engine/DecodePath;->decode(Lcom/bumptech/glide/load/data/DataRewinder;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0
    :try_end_0
    .catch Lcom/bumptech/glide/load/engine/GlideException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v5    # "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TTranscode;>;"
    .restart local v0    # "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TTranscode;>;"
    nop

    .line 62
    move-object v5, v0

    goto :goto_1

    .line 59
    .end local v0    # "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TTranscode;>;"
    .restart local v5    # "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TTranscode;>;"
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 60
    .local v0, "e":Lcom/bumptech/glide/load/engine/GlideException;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v0    # "e":Lcom/bumptech/glide/load/engine/GlideException;
    :goto_1
    if-eqz v5, :cond_0

    .line 63
    goto :goto_2

    .line 55
    .end local v6    # "path":Lcom/bumptech/glide/load/engine/DecodePath;, "Lcom/bumptech/glide/load/engine/DecodePath<TData;TResourceType;TTranscode;>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    .line 71
    return-object v5

    .line 68
    :cond_2
    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    iget-object v3, v1, Lcom/bumptech/glide/load/engine/LoadPath;->failureMessage:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v3, v4}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v0
.end method


# virtual methods
.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lcom/bumptech/glide/load/engine/LoadPath;, "Lcom/bumptech/glide/load/engine/LoadPath<TData;TResourceType;TTranscode;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/LoadPath;->dataClass:Ljava/lang/Class;

    return-object v0
.end method

.method public load(Lcom/bumptech/glide/load/data/DataRewinder;Lcom/bumptech/glide/load/Options;IILcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 8
    .param p2, "options"    # Lcom/bumptech/glide/load/Options;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/data/DataRewinder<",
            "TData;>;",
            "Lcom/bumptech/glide/load/Options;",
            "II",
            "Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback<",
            "TResourceType;>;)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TTranscode;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/bumptech/glide/load/engine/LoadPath;, "Lcom/bumptech/glide/load/engine/LoadPath<TData;TResourceType;TTranscode;>;"
    .local p1, "rewinder":Lcom/bumptech/glide/load/data/DataRewinder;, "Lcom/bumptech/glide/load/data/DataRewinder<TData;>;"
    .local p5, "decodeCallback":Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;, "Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback<TResourceType;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/LoadPath;->listPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 43
    .local v0, "throwables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, v0

    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/bumptech/glide/load/engine/LoadPath;->loadWithExceptionList(Lcom/bumptech/glide/load/data/DataRewinder;Lcom/bumptech/glide/load/Options;IILcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;Ljava/util/List;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/LoadPath;->listPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v2, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 43
    return-object v1

    .line 45
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/LoadPath;->listPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v2, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
    .local p0, "this":Lcom/bumptech/glide/load/engine/LoadPath;, "Lcom/bumptech/glide/load/engine/LoadPath<TData;TResourceType;TTranscode;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadPath{decodePaths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/LoadPath;->decodePaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
