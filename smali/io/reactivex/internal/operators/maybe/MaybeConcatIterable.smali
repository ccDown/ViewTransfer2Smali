.class public final Lio/reactivex/internal/operators/maybe/MaybeConcatIterable;
.super Lio/reactivex/Flowable;
.source "MaybeConcatIterable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeConcatIterable$ConcatMaybeObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final sources:Ljava/lang/Iterable;
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
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeConcatIterable;, "Lio/reactivex/internal/operators/maybe/MaybeConcatIterable<TT;>;"
    .local p1, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lio/reactivex/MaybeSource<+TT;>;>;"
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 39
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatIterable;->sources:Ljava/lang/Iterable;

    .line 40
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeConcatIterable;, "Lio/reactivex/internal/operators/maybe/MaybeConcatIterable<TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatIterable;->sources:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "The sources Iterable returned a null Iterator"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/reactivex/MaybeSource<+TT;>;>;"
    nop

    .line 52
    nop

    .line 55
    new-instance v1, Lio/reactivex/internal/operators/maybe/MaybeConcatIterable$ConcatMaybeObserver;

    invoke-direct {v1, p1, v0}, Lio/reactivex/internal/operators/maybe/MaybeConcatIterable$ConcatMaybeObserver;-><init>(Lorg/reactivestreams/Subscriber;Ljava/util/Iterator;)V

    .line 56
    .local v1, "parent":Lio/reactivex/internal/operators/maybe/MaybeConcatIterable$ConcatMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeConcatIterable$ConcatMaybeObserver<TT;>;"
    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 57
    invoke-virtual {v1}, Lio/reactivex/internal/operators/maybe/MaybeConcatIterable$ConcatMaybeObserver;->drain()V

    .line 58
    return-void

    .line 49
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/reactivex/MaybeSource<+TT;>;>;"
    .end local v1    # "parent":Lio/reactivex/internal/operators/maybe/MaybeConcatIterable$ConcatMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeConcatIterable$ConcatMaybeObserver<TT;>;"
    :catch_0
    move-exception v0

    .line 50
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 51
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    .line 52
    return-void
.end method
