.class final Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;
.super Ljava/lang/Object;
.source "ObservableMaterialize.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableMaterialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MaterializeObserver"
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
.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-",
            "Lio/reactivex/Notification<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lio/reactivex/Notification<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;, "Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver<TT;>;"
    .local p1, "downstream":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Lio/reactivex/Notification<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->downstream:Lio/reactivex/Observer;

    .line 38
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 50
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;, "Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 51
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 55
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;, "Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 72
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;, "Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver<TT;>;"
    invoke-static {}, Lio/reactivex/Notification;->createOnComplete()Lio/reactivex/Notification;

    move-result-object v0

    .line 74
    .local v0, "v":Lio/reactivex/Notification;, "Lio/reactivex/Notification<TT;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 75
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V

    .line 76
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 65
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;, "Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver<TT;>;"
    invoke-static {p1}, Lio/reactivex/Notification;->createOnError(Ljava/lang/Throwable;)Lio/reactivex/Notification;

    move-result-object v0

    .line 66
    .local v0, "v":Lio/reactivex/Notification;, "Lio/reactivex/Notification<TT;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 67
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V

    .line 68
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;, "Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->downstream:Lio/reactivex/Observer;

    invoke-static {p1}, Lio/reactivex/Notification;->createOnNext(Ljava/lang/Object;)Lio/reactivex/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 42
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;, "Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 44
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 46
    :cond_0
    return-void
.end method
