.class public Lcom/bumptech/glide/provider/ResourceDecoderRegistry;
.super Ljava/lang/Object;
.source "ResourceDecoderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;
    }
.end annotation


# instance fields
.field private final bucketPriorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final decoders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<",
            "**>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->decoders:Ljava/util/Map;

    return-void
.end method

.method private declared-synchronized getOrAddEntryList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "bucket"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<",
            "**>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->decoders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 93
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;>;"
    if-nez v0, :cond_1

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 95
    iget-object v1, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->decoders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_1
    monitor-exit p0

    return-object v0

    .line 87
    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;>;"
    .end local p1    # "bucket":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized append(Ljava/lang/String;Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .param p1, "bucket"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/ResourceDecoder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "TT;TR;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TR;>;)V"
        }
    .end annotation

    .local p2, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<TT;TR;>;"
    .local p3, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    monitor-enter p0

    .line 77
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->getOrAddEntryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;

    invoke-direct {v1, p3, p4, p2}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 76
    .end local p1    # "bucket":Ljava/lang/String;
    .end local p2    # "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<TT;TR;>;"
    .end local p3    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p4    # "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDecoders(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 7
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "TT;TR;>;>;"
        }
    .end annotation

    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    monitor-enter p0

    .line 37
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ResourceDecoder<TT;TR;>;>;"
    iget-object v1, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 39
    .local v2, "bucket":Ljava/lang/String;
    iget-object v3, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->decoders:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 40
    .local v3, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;>;"
    if-nez v3, :cond_0

    .line 41
    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;

    .line 44
    .local v5, "entry":Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;, "Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;"
    invoke-virtual {v5, p1, p2}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->handles(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 45
    iget-object v6, v5, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .end local v5    # "entry":Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;, "Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;"
    :cond_1
    goto :goto_1

    .line 48
    .end local v2    # "bucket":Ljava/lang/String;
    .end local v3    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;>;"
    :cond_2
    goto :goto_0

    .line 51
    :cond_3
    monitor-exit p0

    return-object v0

    .line 36
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ResourceDecoder<TT;TR;>;>;"
    .end local p1    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p2    # "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getResourceClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 7
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "TR;>;>;"
        }
    .end annotation

    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    monitor-enter p0

    .line 58
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<TR;>;>;"
    iget-object v1, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 60
    .local v2, "bucket":Ljava/lang/String;
    iget-object v3, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->decoders:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 61
    .local v3, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;>;"
    if-nez v3, :cond_0

    .line 62
    goto :goto_0

    .line 64
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;

    .line 65
    .local v5, "entry":Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;, "Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;"
    invoke-virtual {v5, p1, p2}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->handles(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v5, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->resourceClass:Ljava/lang/Class;

    .line 66
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 67
    iget-object v6, v5, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->resourceClass:Ljava/lang/Class;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v5    # "entry":Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;, "Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;"
    :cond_1
    goto :goto_1

    .line 70
    .end local v2    # "bucket":Ljava/lang/String;
    .end local v3    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;>;"
    :cond_2
    goto :goto_0

    .line 71
    :cond_3
    monitor-exit p0

    return-object v0

    .line 57
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<TR;>;>;"
    .end local p1    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p2    # "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized prepend(Ljava/lang/String;Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .param p1, "bucket"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/ResourceDecoder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "TT;TR;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TR;>;)V"
        }
    .end annotation

    .local p2, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<TT;TR;>;"
    .local p3, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    monitor-enter p0

    .line 83
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->getOrAddEntryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;

    invoke-direct {v2, p3, p4, p2}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 82
    .end local p1    # "bucket":Ljava/lang/String;
    .end local p2    # "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<TT;TR;>;"
    .end local p3    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p4    # "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBucketPriorityList(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p1, "buckets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 21
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    .local v0, "previousBuckets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 23
    iget-object v1, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 25
    .local v2, "previousBucket":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 28
    iget-object v3, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .end local v2    # "previousBucket":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 31
    :cond_1
    monitor-exit p0

    return-void

    .line 20
    .end local v0    # "previousBuckets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p1    # "buckets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
