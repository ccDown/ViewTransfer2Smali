.class public final Lio/reactivex/internal/operators/maybe/MaybeAmb;
.super Lio/reactivex/Maybe;
.source "MaybeAmb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Maybe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final sources:[Lio/reactivex/MaybeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final sourcesIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lio/reactivex/MaybeSource;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeAmb;, "Lio/reactivex/internal/operators/maybe/MaybeAmb<TT;>;"
    .local p1, "sources":[Lio/reactivex/MaybeSource;, "[Lio/reactivex/MaybeSource<+TT;>;"
    .local p2, "sourcesIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lio/reactivex/MaybeSource<+TT;>;>;"
    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    .line 34
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeAmb;->sources:[Lio/reactivex/MaybeSource;

    .line 35
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeAmb;->sourcesIterable:Ljava/lang/Iterable;

    .line 36
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeAmb;, "Lio/reactivex/internal/operators/maybe/MaybeAmb<TT;>;"
    .local p1, "observer":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeAmb;->sources:[Lio/reactivex/MaybeSource;

    .line 42
    .local v0, "sources":[Lio/reactivex/MaybeSource;, "[Lio/reactivex/MaybeSource<+TT;>;"
    const/4 v1, 0x0

    .line 43
    .local v1, "count":I
    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 44
    const/16 v3, 0x8

    new-array v0, v3, [Lio/reactivex/MaybeSource;

    .line 46
    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/operators/maybe/MaybeAmb;->sourcesIterable:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/MaybeSource;

    .line 47
    .local v4, "element":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<+TT;>;"
    if-nez v4, :cond_0

    .line 48
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "One of the sources is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/MaybeObserver;)V

    .line 49
    return-void

    .line 51
    :cond_0
    array-length v5, v0

    if-ne v1, v5, :cond_1

    .line 52
    shr-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v1

    new-array v5, v5, [Lio/reactivex/MaybeSource;

    .line 53
    .local v5, "b":[Lio/reactivex/MaybeSource;, "[Lio/reactivex/MaybeSource<+TT;>;"
    invoke-static {v0, v2, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    move-object v0, v5

    .line 56
    .end local v5    # "b":[Lio/reactivex/MaybeSource;, "[Lio/reactivex/MaybeSource<+TT;>;"
    :cond_1
    add-int/lit8 v5, v1, 0x1

    .local v5, "count":I
    :try_start_1
    aput-object v4, v0, v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    .end local v1    # "count":I
    .end local v4    # "element":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<+TT;>;"
    nop

    .line 46
    move v1, v5

    goto :goto_0

    .line 58
    :catch_0
    move-exception v2

    move v1, v5

    goto :goto_1

    .line 62
    .end local v5    # "count":I
    .restart local v1    # "count":I
    :cond_2
    goto :goto_2

    .line 58
    :catch_1
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/Throwable;
    :goto_1
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 60
    invoke-static {v2, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/MaybeObserver;)V

    .line 61
    return-void

    .line 64
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_3
    array-length v1, v0

    .line 67
    :goto_2
    new-instance v3, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;

    invoke-direct {v3, p1}, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;-><init>(Lio/reactivex/MaybeObserver;)V

    .line 68
    .local v3, "parent":Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver<TT;>;"
    invoke-interface {p1, v3}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 70
    nop

    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_6

    .line 71
    aget-object v4, v0, v2

    .line 72
    .local v4, "s":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<+TT;>;"
    invoke-virtual {v3}, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;->isDisposed()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 73
    return-void

    .line 76
    :cond_4
    if-nez v4, :cond_5

    .line 77
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "One of the MaybeSources is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 78
    return-void

    .line 81
    :cond_5
    invoke-interface {v4, v3}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    .line 70
    .end local v4    # "s":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<+TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 84
    .end local v2    # "i":I
    :cond_6
    if-nez v1, :cond_7

    .line 85
    invoke-interface {p1}, Lio/reactivex/MaybeObserver;->onComplete()V

    .line 88
    :cond_7
    return-void
.end method
