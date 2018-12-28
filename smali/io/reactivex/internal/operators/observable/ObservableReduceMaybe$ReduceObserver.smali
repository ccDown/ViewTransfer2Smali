.class final Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;
.super Ljava/lang/Object;
.source "ObservableReduceMaybe.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReduceMaybe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReduceObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field done:Z

.field final downstream:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final reducer:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;",
            "Lio/reactivex/functions/BiFunction<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;, "Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver<TT;>;"
    .local p1, "observer":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    .local p2, "reducer":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<TT;TT;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;->downstream:Lio/reactivex/MaybeObserver;

    .line 60
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;->reducer:Lio/reactivex/functions/BiFunction;

    .line 61
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 119
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;, "Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 120
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 124
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;, "Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 104
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;, "Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;->done:Z

    if-eqz v0, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;->done:Z

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;->value:Ljava/lang/Object;

    .line 109
    .local v0, "v":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;->value:Ljava/lang/Object;

    .line 110
    if-eqz v0, :cond_1

    .line 111
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v1, v0}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v1}, Lio/reactivex/MaybeObserver;->onComplete()V

    .line 115
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 93
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;, "Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;->done:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 95
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;->done:Z

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;->value:Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 100
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;, "Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;->done:Z

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;->value:Ljava/lang/Object;

    .line 77
    .local v0, "v":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 78
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;->value:Ljava/lang/Object;

    goto :goto_0

    .line 81
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;->reducer:Lio/reactivex/functions/BiFunction;

    invoke-interface {v1, v0, p1}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The reducer returned a null value"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 84
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 85
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;->onError(Ljava/lang/Throwable;)V

    .line 89
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 65
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;, "Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 68
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 70
    :cond_0
    return-void
.end method
