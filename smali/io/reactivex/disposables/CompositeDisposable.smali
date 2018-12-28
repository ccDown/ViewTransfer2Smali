.class public final Lio/reactivex/disposables/CompositeDisposable;
.super Ljava/lang/Object;
.source "CompositeDisposable.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/internal/disposables/DisposableContainer;


# instance fields
.field volatile disposed:Z

.field resources:Lio/reactivex/internal/util/OpenHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/OpenHashSet<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 3
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p1, "resources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lio/reactivex/disposables/Disposable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "resources is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    new-instance v0, Lio/reactivex/internal/util/OpenHashSet;

    invoke-direct {v0}, Lio/reactivex/internal/util/OpenHashSet;-><init>()V

    iput-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 59
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 60
    .local v1, "d":Lio/reactivex/disposables/Disposable;
    const-string v2, "Disposable item is null"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    iget-object v2, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    invoke-virtual {v2, v1}, Lio/reactivex/internal/util/OpenHashSet;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v1    # "d":Lio/reactivex/disposables/Disposable;
    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lio/reactivex/disposables/Disposable;)V
    .locals 4
    .param p1, "resources"    # [Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "resources is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    new-instance v0, Lio/reactivex/internal/util/OpenHashSet;

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/OpenHashSet;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 46
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 47
    .local v2, "d":Lio/reactivex/disposables/Disposable;
    const-string v3, "Disposable item is null"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    iget-object v3, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    invoke-virtual {v3, v2}, Lio/reactivex/internal/util/OpenHashSet;->add(Ljava/lang/Object;)Z

    .line 46
    .end local v2    # "d":Lio/reactivex/disposables/Disposable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lio/reactivex/disposables/Disposable;)Z
    .locals 2
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 96
    const-string v0, "d is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-nez v0, :cond_2

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 101
    .local v0, "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    if-nez v0, :cond_0

    .line 102
    new-instance v1, Lio/reactivex/internal/util/OpenHashSet;

    invoke-direct {v1}, Lio/reactivex/internal/util/OpenHashSet;-><init>()V

    move-object v0, v1

    .line 103
    iput-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 105
    :cond_0
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/OpenHashSet;->add(Ljava/lang/Object;)Z

    .line 106
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 108
    .end local v0    # "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 110
    :cond_2
    :goto_0
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public varargs addAll([Lio/reactivex/disposables/Disposable;)Z
    .locals 6
    .param p1, "ds"    # [Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 121
    const-string v0, "ds is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-nez v0, :cond_2

    .line 125
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 126
    .local v0, "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 127
    new-instance v3, Lio/reactivex/internal/util/OpenHashSet;

    array-length v4, p1

    add-int/2addr v4, v2

    invoke-direct {v3, v4}, Lio/reactivex/internal/util/OpenHashSet;-><init>(I)V

    move-object v0, v3

    .line 128
    iput-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 130
    :cond_0
    array-length v3, p1

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p1, v1

    .line 131
    .local v4, "d":Lio/reactivex/disposables/Disposable;
    const-string v5, "d is null"

    invoke-static {v4, v5}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    invoke-virtual {v0, v4}, Lio/reactivex/internal/util/OpenHashSet;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v4    # "d":Lio/reactivex/disposables/Disposable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_1
    monitor-exit p0

    return v2

    .line 136
    .end local v0    # "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 138
    :cond_3
    :goto_1
    array-length v0, p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    .line 139
    .local v3, "d":Lio/reactivex/disposables/Disposable;
    invoke-interface {v3}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 138
    .end local v3    # "d":Lio/reactivex/disposables/Disposable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 141
    :cond_4
    return v1
.end method

.method public clear()V
    .locals 2

    .line 188
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_0

    .line 189
    return-void

    .line 192
    :cond_0
    monitor-enter p0

    .line 193
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_1

    .line 194
    monitor-exit p0

    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 198
    .local v0, "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 199
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-virtual {p0, v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose(Lio/reactivex/internal/util/OpenHashSet;)V

    .line 202
    return-void

    .line 199
    .end local v0    # "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public delete(Lio/reactivex/disposables/Disposable;)Z
    .locals 3
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 167
    const-string v0, "Disposable item is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 169
    return v1

    .line 171
    :cond_0
    monitor-enter p0

    .line 172
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_1

    .line 173
    monitor-exit p0

    return v1

    .line 176
    :cond_1
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 177
    .local v0, "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/OpenHashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 180
    .end local v0    # "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    :cond_2
    monitor-exit p0

    .line 181
    const/4 v0, 0x1

    return v0

    .line 178
    .restart local v0    # "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    .line 180
    .end local v0    # "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispose()V
    .locals 2

    .line 67
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_0

    .line 68
    return-void

    .line 71
    :cond_0
    monitor-enter p0

    .line 72
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_1

    .line 73
    monitor-exit p0

    return-void

    .line 75
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    .line 76
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 77
    .local v0, "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 78
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-virtual {p0, v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose(Lio/reactivex/internal/util/OpenHashSet;)V

    .line 81
    return-void

    .line 78
    .end local v0    # "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method dispose(Lio/reactivex/internal/util/OpenHashSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/util/OpenHashSet<",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    .line 227
    .local p1, "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    if-nez p1, :cond_0

    .line 228
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x0

    .line 231
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p1}, Lio/reactivex/internal/util/OpenHashSet;->keys()[Ljava/lang/Object;

    move-result-object v1

    .line 232
    .local v1, "array":[Ljava/lang/Object;
    array-length v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    const/4 v0, 0x0

    .end local v0    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .local v4, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v5, v1, v0

    .line 233
    .local v5, "o":Ljava/lang/Object;
    instance-of v6, v5, Lio/reactivex/disposables/Disposable;

    if-eqz v6, :cond_2

    .line 235
    :try_start_0
    move-object v6, v5

    check-cast v6, Lio/reactivex/disposables/Disposable;

    invoke-interface {v6}, Lio/reactivex/disposables/Disposable;->dispose()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    goto :goto_1

    .line 236
    :catch_0
    move-exception v6

    .line 237
    .local v6, "ex":Ljava/lang/Throwable;
    invoke-static {v6}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 238
    if-nez v4, :cond_1

    .line 239
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v7

    .line 241
    :cond_1
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "ex":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_3
    if-eqz v4, :cond_5

    .line 246
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 247
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 249
    :cond_4
    new-instance v0, Lio/reactivex/exceptions/CompositeException;

    invoke-direct {v0, v4}, Lio/reactivex/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    throw v0

    .line 251
    :cond_5
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    return v0
.end method

.method public remove(Lio/reactivex/disposables/Disposable;)Z
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 152
    invoke-virtual {p0, p1}, Lio/reactivex/disposables/CompositeDisposable;->delete(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 154
    const/4 v0, 0x1

    return v0

    .line 156
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 2

    .line 209
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 210
    return v1

    .line 212
    :cond_0
    monitor-enter p0

    .line 213
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_1

    .line 214
    monitor-exit p0

    return v1

    .line 216
    :cond_1
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 217
    .local v0, "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/reactivex/internal/util/OpenHashSet;->size()I

    move-result v1

    nop

    :cond_2
    monitor-exit p0

    return v1

    .line 218
    .end local v0    # "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
