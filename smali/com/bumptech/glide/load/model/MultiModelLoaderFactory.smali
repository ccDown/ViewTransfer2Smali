.class public Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;
.super Ljava/lang/Object;
.source "MultiModelLoaderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$EmptyModelLoader;,
        Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;,
        Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;

.field private static final EMPTY_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final alreadyUsedEntries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final factory:Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;

.field private final throwableListPool:Landroid/support/v4/util/Pools$Pool;
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
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;

    .line 25
    new-instance v0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$EmptyModelLoader;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$EmptyModelLoader;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->EMPTY_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/util/Pools$Pool;)V
    .locals 1
    .param p1    # Landroid/support/v4/util/Pools$Pool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 32
    .local p1, "throwableListPool":Landroid/support/v4/util/Pools$Pool;, "Landroid/support/v4/util/Pools$Pool<Ljava/util/List<Ljava/lang/Throwable;>;>;"
    sget-object v0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;-><init>(Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;)V

    .line 33
    return-void
.end method

.method constructor <init>(Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;)V
    .locals 1
    .param p1    # Landroid/support/v4/util/Pools$Pool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "factory"    # Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;",
            ")V"
        }
    .end annotation

    .line 37
    .local p1, "throwableListPool":Landroid/support/v4/util/Pools$Pool;, "Landroid/support/v4/util/Pools$Pool<Ljava/util/List<Ljava/lang/Throwable;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->entries:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->alreadyUsedEntries:Ljava/util/Set;

    .line 38
    iput-object p1, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->throwableListPool:Landroid/support/v4/util/Pools$Pool;

    .line 39
    iput-object p2, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->factory:Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;

    .line 40
    return-void
.end method

.method private add(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;Z)V
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/model/ModelLoaderFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "append"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "+TModel;+TData;>;Z)V"
        }
    .end annotation

    .line 61
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p3, "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<+TModel;+TData;>;"
    new-instance v0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;

    invoke-direct {v0, p1, p2, p3}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 62
    .local v0, "entry":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;, "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<TModel;TData;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->entries:Ljava/util/List;

    if-eqz p4, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 63
    return-void
.end method

.method private build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<",
            "**>;)",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TModel;TData;>;"
        }
    .end annotation

    .line 179
    .local p1, "entry":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;, "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<**>;"
    iget-object v0, p1, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->factory:Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/model/ModelLoaderFactory;->build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoader;

    return-object v0
.end method

.method private static emptyModelLoader()Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TModel;TData;>;"
        }
    .end annotation

    .line 185
    sget-object v0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->EMPTY_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;

    return-object v0
.end method

.method private getFactory(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<",
            "**>;)",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "TModel;TData;>;"
        }
    .end annotation

    .line 173
    .local p1, "entry":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;, "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<**>;"
    iget-object v0, p1, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->factory:Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    return-object v0
.end method


# virtual methods
.method declared-synchronized append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/model/ModelLoaderFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "+TModel;+TData;>;)V"
        }
    .end annotation

    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p3, "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<+TModel;+TData;>;"
    monitor-enter p0

    .line 46
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->add(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 45
    .end local p1    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .end local p2    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .end local p3    # "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<+TModel;+TData;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized build(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 5
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
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TModel;TData;>;"
        }
    .end annotation

    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    monitor-enter p0

    .line 132
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "loaders":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoader<TModel;TData;>;>;"
    const/4 v1, 0x0

    .line 134
    .local v1, "ignoredAnyEntries":Z
    iget-object v2, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;

    .line 140
    .local v3, "entry":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;, "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<**>;"
    iget-object v4, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->alreadyUsedEntries:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    const/4 v1, 0x1

    .line 142
    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v3, p1, p2}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->handles(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    iget-object v4, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->alreadyUsedEntries:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v4, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->alreadyUsedEntries:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 149
    .end local v3    # "entry":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;, "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<**>;"
    :cond_1
    goto :goto_0

    .line 150
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 151
    iget-object v2, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->factory:Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;

    iget-object v3, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->throwableListPool:Landroid/support/v4/util/Pools$Pool;

    invoke-virtual {v2, v0, v3}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Factory;->build(Ljava/util/List;Landroid/support/v4/util/Pools$Pool;)Lcom/bumptech/glide/load/model/MultiModelLoader;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 152
    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 153
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/model/ModelLoader;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 158
    :cond_4
    if-eqz v1, :cond_5

    .line 159
    :try_start_2
    invoke-static {}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->emptyModelLoader()Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 161
    :cond_5
    :try_start_3
    new-instance v2, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;

    invoke-direct {v2, p1, p2}, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    .end local v0    # "loaders":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoader<TModel;TData;>;>;"
    .end local v1    # "ignoredAnyEntries":Z
    .end local p1    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .end local p2    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 164
    .restart local p1    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .restart local p2    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    :catch_0
    move-exception v0

    .line 165
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_4
    iget-object v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->alreadyUsedEntries:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 166
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 131
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local p1    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .end local p2    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized build(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TModel;*>;>;"
        }
    .end annotation

    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    monitor-enter p0

    .line 94
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, "loaders":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoader<TModel;*>;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;

    .line 101
    .local v2, "entry":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;, "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<**>;"
    iget-object v3, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->alreadyUsedEntries:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->handles(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    iget-object v3, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->alreadyUsedEntries:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v3, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->alreadyUsedEntries:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .end local v2    # "entry":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;, "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<**>;"
    :cond_1
    goto :goto_0

    .line 110
    :cond_2
    monitor-exit p0

    return-object v0

    .line 93
    .end local v0    # "loaders":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoader<TModel;*>;>;"
    .end local p1    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 111
    .restart local p1    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    :catch_0
    move-exception v0

    .line 112
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->alreadyUsedEntries:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 113
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local p1    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getDataClasses(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 119
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;

    .line 121
    .local v2, "entry":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;, "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<**>;"
    iget-object v3, v2, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->dataClass:Ljava/lang/Class;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->handles(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    iget-object v3, v2, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->dataClass:Ljava/lang/Class;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .end local v2    # "entry":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;, "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<**>;"
    :cond_0
    goto :goto_0

    .line 125
    :cond_1
    monitor-exit p0

    return-object v0

    .line 118
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local p1    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/model/ModelLoaderFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "+TModel;+TData;>;)V"
        }
    .end annotation

    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p3, "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<+TModel;+TData;>;"
    monitor-enter p0

    .line 53
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->add(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 52
    .end local p1    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .end local p2    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .end local p3    # "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<+TModel;+TData;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized remove(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
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
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "+TModel;+TData;>;>;"
        }
    .end annotation

    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    monitor-enter p0

    .line 80
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoaderFactory<+TModel;+TData;>;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<**>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;

    .line 83
    .local v2, "entry":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;, "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<**>;"
    invoke-virtual {v2, p1, p2}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;->handles(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 85
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->getFactory(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .end local v2    # "entry":Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry;, "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<**>;"
    :cond_0
    goto :goto_0

    .line 88
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/bumptech/glide/load/model/MultiModelLoaderFactory$Entry<**>;>;"
    :cond_1
    monitor-exit p0

    return-object v0

    .line 79
    .end local v0    # "factories":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoaderFactory<+TModel;+TData;>;>;"
    .end local p1    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .end local p2    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized replace(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/model/ModelLoaderFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "+TModel;+TData;>;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "+TModel;+TData;>;>;"
        }
    .end annotation

    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p3, "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<+TModel;+TData;>;"
    monitor-enter p0

    .line 70
    nop

    .line 71
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->remove(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 72
    .local v0, "removed":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoaderFactory<+TModel;+TData;>;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-object v0

    .line 69
    .end local v0    # "removed":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoaderFactory<+TModel;+TData;>;>;"
    .end local p1    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .end local p2    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .end local p3    # "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<+TModel;+TData;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
