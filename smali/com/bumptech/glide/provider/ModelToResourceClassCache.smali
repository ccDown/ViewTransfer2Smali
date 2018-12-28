.class public Lcom/bumptech/glide/provider/ModelToResourceClassCache;
.super Ljava/lang/Object;
.source "ModelToResourceClassCache.java"


# instance fields
.field private final registeredResourceClassCache:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Lcom/bumptech/glide/util/MultiClassKey;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final resourceClassKeyRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/bumptech/glide/util/MultiClassKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->resourceClassKeyRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->registeredResourceClassCache:Landroid/support/v4/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->registeredResourceClassCache:Landroid/support/v4/util/ArrayMap;

    monitor-enter v0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->registeredResourceClassCache:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 46
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 21
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->resourceClassKeyRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/util/MultiClassKey;

    .line 22
    .local v0, "key":Lcom/bumptech/glide/util/MultiClassKey;
    if-nez v0, :cond_0

    .line 23
    new-instance v1, Lcom/bumptech/glide/util/MultiClassKey;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/util/MultiClassKey;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    move-object v0, v1

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/util/MultiClassKey;->set(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 28
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->registeredResourceClassCache:Landroid/support/v4/util/ArrayMap;

    monitor-enter v1

    .line 29
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->registeredResourceClassCache:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 30
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object v1, p0, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->resourceClassKeyRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 32
    return-object v2

    .line 30
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public put(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 37
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "resourceClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    iget-object v0, p0, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->registeredResourceClassCache:Landroid/support/v4/util/ArrayMap;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->registeredResourceClassCache:Landroid/support/v4/util/ArrayMap;

    new-instance v2, Lcom/bumptech/glide/util/MultiClassKey;

    invoke-direct {v2, p1, p2}, Lcom/bumptech/glide/util/MultiClassKey;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 39
    invoke-virtual {v1, v2, p3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 40
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
