.class final Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "MaybeAmb.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeAmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AmbMaybeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x61c3bfda0bce617eL


# instance fields
.field final downstream:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final set:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 100
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver<TT;>;"
    .local p1, "downstream":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 101
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    .line 102
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    .line 103
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 107
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 110
    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 114
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;->get()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 144
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    .line 149
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 133
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 136
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 140
    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 119
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 120
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 124
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 127
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    .line 129
    :cond_0
    return-void
.end method
