.class final Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SingleAmb.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleAmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AmbSingleObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1afac76d360dd0ccL


# instance fields
.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final set:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 0
    .param p2, "set"    # Lio/reactivex/disposables/CompositeDisposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;",
            "Lio/reactivex/disposables/CompositeDisposable;",
            ")V"
        }
    .end annotation

    .line 96
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;, "Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver<TT;>;"
    .local p1, "observer":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 97
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;->downstream:Lio/reactivex/SingleObserver;

    .line 98
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    .line 99
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 116
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;, "Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 118
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 122
    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 103
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;, "Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 104
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 108
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;, "Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 110
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 112
    :cond_0
    return-void
.end method
