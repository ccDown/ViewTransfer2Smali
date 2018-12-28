.class public abstract Lio/reactivex/observers/DisposableMaybeObserver;
.super Ljava/lang/Object;
.source "DisposableMaybeObserver.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    .local p0, "this":Lio/reactivex/observers/DisposableMaybeObserver;, "Lio/reactivex/observers/DisposableMaybeObserver<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/observers/DisposableMaybeObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 87
    .local p0, "this":Lio/reactivex/observers/DisposableMaybeObserver;, "Lio/reactivex/observers/DisposableMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/DisposableMaybeObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 88
    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 82
    .local p0, "this":Lio/reactivex/observers/DisposableMaybeObserver;, "Lio/reactivex/observers/DisposableMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/DisposableMaybeObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onStart()V
    .locals 0

    .line 78
    .local p0, "this":Lio/reactivex/observers/DisposableMaybeObserver;, "Lio/reactivex/observers/DisposableMaybeObserver<TT;>;"
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 69
    .local p0, "this":Lio/reactivex/observers/DisposableMaybeObserver;, "Lio/reactivex/observers/DisposableMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/DisposableMaybeObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/util/EndConsumerHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lio/reactivex/observers/DisposableMaybeObserver;->onStart()V

    .line 72
    :cond_0
    return-void
.end method
