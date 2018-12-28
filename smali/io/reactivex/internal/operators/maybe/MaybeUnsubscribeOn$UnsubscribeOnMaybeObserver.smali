.class final Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "MaybeUnsubscribeOn.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnsubscribeOnMaybeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2d321dfc37be109aL


# instance fields
.field final downstream:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field ds:Lio/reactivex/disposables/Disposable;

.field final scheduler:Lio/reactivex/Scheduler;


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;Lio/reactivex/Scheduler;)V
    .locals 0
    .param p2, "scheduler"    # Lio/reactivex/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;",
            "Lio/reactivex/Scheduler;",
            ")V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 53
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    .line 54
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver;->scheduler:Lio/reactivex/Scheduler;

    .line 55
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 59
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver<TT;>;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 60
    .local v0, "d":Lio/reactivex/disposables/Disposable;
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_0

    .line 61
    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver;->ds:Lio/reactivex/disposables/Disposable;

    .line 62
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver;->scheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v1, p0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 64
    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 73
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 95
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    .line 96
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 90
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 91
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 78
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver<TT;>;"
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 81
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 85
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public run()V
    .locals 1

    .line 68
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver;->ds:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 69
    return-void
.end method
