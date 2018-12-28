.class public final Lio/reactivex/internal/operators/single/SingleAmb;
.super Lio/reactivex/Single;
.source "SingleAmb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final sources:[Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/SingleSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final sourcesIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lio/reactivex/SingleSource;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;)V"
        }
    .end annotation

    .line 28
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleAmb;, "Lio/reactivex/internal/operators/single/SingleAmb<TT;>;"
    .local p1, "sources":[Lio/reactivex/SingleSource;, "[Lio/reactivex/SingleSource<+TT;>;"
    .local p2, "sourcesIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lio/reactivex/SingleSource<+TT;>;>;"
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    .line 29
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleAmb;->sources:[Lio/reactivex/SingleSource;

    .line 30
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleAmb;->sourcesIterable:Ljava/lang/Iterable;

    .line 31
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleAmb;, "Lio/reactivex/internal/operators/single/SingleAmb<TT;>;"
    .local p1, "observer":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleAmb;->sources:[Lio/reactivex/SingleSource;

    .line 37
    .local v0, "sources":[Lio/reactivex/SingleSource;, "[Lio/reactivex/SingleSource<+TT;>;"
    const/4 v1, 0x0

    .line 38
    .local v1, "count":I
    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 39
    const/16 v3, 0x8

    new-array v0, v3, [Lio/reactivex/SingleSource;

    .line 41
    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/operators/single/SingleAmb;->sourcesIterable:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/SingleSource;

    .line 42
    .local v4, "element":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<+TT;>;"
    if-nez v4, :cond_0

    .line 43
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "One of the sources is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    .line 44
    return-void

    .line 46
    :cond_0
    array-length v5, v0

    if-ne v1, v5, :cond_1

    .line 47
    shr-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v1

    new-array v5, v5, [Lio/reactivex/SingleSource;

    .line 48
    .local v5, "b":[Lio/reactivex/SingleSource;, "[Lio/reactivex/SingleSource<+TT;>;"
    invoke-static {v0, v2, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    move-object v0, v5

    .line 51
    .end local v5    # "b":[Lio/reactivex/SingleSource;, "[Lio/reactivex/SingleSource<+TT;>;"
    :cond_1
    add-int/lit8 v5, v1, 0x1

    .local v5, "count":I
    :try_start_1
    aput-object v4, v0, v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    .end local v1    # "count":I
    .end local v4    # "element":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<+TT;>;"
    nop

    .line 41
    move v1, v5

    goto :goto_0

    .line 53
    :catch_0
    move-exception v2

    move v1, v5

    goto :goto_1

    .line 57
    .end local v5    # "count":I
    .restart local v1    # "count":I
    :cond_2
    goto :goto_2

    .line 53
    :catch_1
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/Throwable;
    :goto_1
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 55
    invoke-static {v2, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    .line 56
    return-void

    .line 59
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_3
    array-length v1, v0

    .line 62
    :goto_2
    new-instance v3, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v3}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    .line 64
    .local v3, "set":Lio/reactivex/disposables/CompositeDisposable;
    new-instance v4, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;

    invoke-direct {v4, p1, v3}, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 65
    .local v4, "shared":Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;, "Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver<TT;>;"
    invoke-interface {p1, v3}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 67
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v1, :cond_7

    .line 68
    aget-object v6, v0, v5

    .line 69
    .local v6, "s1":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<+TT;>;"
    invoke-virtual {v4}, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;->get()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 70
    return-void

    .line 73
    :cond_4
    if-nez v6, :cond_6

    .line 74
    invoke-virtual {v3}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 75
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "One of the sources is null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 76
    .local v7, "e":Ljava/lang/Throwable;
    const/4 v8, 0x1

    invoke-virtual {v4, v2, v8}, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 77
    invoke-interface {p1, v7}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 79
    :cond_5
    invoke-static {v7}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 81
    :goto_4
    return-void

    .line 84
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v6, v4}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 67
    .end local v6    # "s1":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<+TT;>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 86
    .end local v5    # "i":I
    :cond_7
    return-void
.end method
