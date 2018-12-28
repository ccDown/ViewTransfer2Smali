.class final Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;
.super Ljava/lang/Object;
.source "ObservableToListSingle.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableToListSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ToListObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TU;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TU;>;TU;)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;, "Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver<TT;TU;>;"
    .local p1, "actual":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TU;>;"
    .local p2, "collection":Ljava/util/Collection;, "TU;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->downstream:Lio/reactivex/SingleObserver;

    .line 75
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->collection:Ljava/util/Collection;

    .line 76
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 88
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;, "Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 89
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 93
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;, "Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 109
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;, "Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->collection:Ljava/util/Collection;

    .line 110
    .local v0, "c":Ljava/util/Collection;, "TU;"
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->collection:Ljava/util/Collection;

    .line 111
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 103
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;, "Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver<TT;TU;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->collection:Ljava/util/Collection;

    .line 104
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 105
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 98
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;, "Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 80
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;, "Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 84
    :cond_0
    return-void
.end method
