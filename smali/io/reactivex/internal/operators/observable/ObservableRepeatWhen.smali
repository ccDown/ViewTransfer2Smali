.class public final Lio/reactivex/internal/operators/observable/ObservableRepeatWhen;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableRepeatWhen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final handler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object;",
            ">;+",
            "Lio/reactivex/ObservableSource<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object;",
            ">;+",
            "Lio/reactivex/ObservableSource<",
            "*>;>;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableRepeatWhen;, "Lio/reactivex/internal/operators/observable/ObservableRepeatWhen<TT;>;"
    .local p1, "source":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TT;>;"
    .local p2, "handler":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Observable<Ljava/lang/Object;>;+Lio/reactivex/ObservableSource<*>;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    .line 38
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatWhen;->handler:Lio/reactivex/functions/Function;

    .line 39
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableRepeatWhen;, "Lio/reactivex/internal/operators/observable/ObservableRepeatWhen<TT;>;"
    .local p1, "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->toSerialized()Lio/reactivex/subjects/Subject;

    move-result-object v0

    .line 48
    .local v0, "signaller":Lio/reactivex/subjects/Subject;, "Lio/reactivex/subjects/Subject<Ljava/lang/Object;>;"
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatWhen;->handler:Lio/reactivex/functions/Function;

    invoke-interface {v1, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The handler returned a null ObservableSource"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .local v1, "other":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<*>;"
    nop

    .line 52
    nop

    .line 55
    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatWhen;->source:Lio/reactivex/ObservableSource;

    invoke-direct {v2, p1, v0, v3}, Lio/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/subjects/Subject;Lio/reactivex/ObservableSource;)V

    .line 56
    .local v2, "parent":Lio/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver;, "Lio/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver<TT;>;"
    invoke-interface {p1, v2}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 58
    iget-object v3, v2, Lio/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver;->inner:Lio/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver$InnerRepeatObserver;

    invoke-interface {v1, v3}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 60
    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver;->subscribeNext()V

    .line 61
    return-void

    .line 49
    .end local v1    # "other":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<*>;"
    .end local v2    # "parent":Lio/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver;, "Lio/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver<TT;>;"
    :catch_0
    move-exception v1

    .line 50
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 51
    invoke-static {v1, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    .line 52
    return-void
.end method
