.class final Lio/reactivex/subjects/PublishSubject$PublishDisposable;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "PublishSubject.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/subjects/PublishSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3171d4005ebf93feL


# instance fields
.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final parent:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/subjects/PublishSubject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/subjects/PublishSubject<",
            "TT;>;)V"
        }
    .end annotation

    .line 301
    .local p0, "this":Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    .local p2, "parent":Lio/reactivex/subjects/PublishSubject;, "Lio/reactivex/subjects/PublishSubject<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 302
    iput-object p1, p0, Lio/reactivex/subjects/PublishSubject$PublishDisposable;->downstream:Lio/reactivex/Observer;

    .line 303
    iput-object p2, p0, Lio/reactivex/subjects/PublishSubject$PublishDisposable;->parent:Lio/reactivex/subjects/PublishSubject;

    .line 304
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 328
    .local p0, "this":Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/subjects/PublishSubject$PublishDisposable;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject$PublishDisposable;->parent:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p0}, Lio/reactivex/subjects/PublishSubject;->remove(Lio/reactivex/subjects/PublishSubject$PublishDisposable;)V

    .line 331
    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 335
    .local p0, "this":Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/subjects/PublishSubject$PublishDisposable;->get()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 321
    .local p0, "this":Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/subjects/PublishSubject$PublishDisposable;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject$PublishDisposable;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 324
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 313
    .local p0, "this":Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/subjects/PublishSubject$PublishDisposable;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject$PublishDisposable;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 318
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 307
    .local p0, "this":Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lio/reactivex/subjects/PublishSubject$PublishDisposable;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject$PublishDisposable;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 310
    :cond_0
    return-void
.end method
