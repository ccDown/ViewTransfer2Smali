.class final Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;
.super Ljava/lang/Object;
.source "CompletableToSingle.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableToSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ToSingle"
.end annotation


# instance fields
.field private final observer:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/reactivex/internal/operators/completable/CompletableToSingle;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/completable/CompletableToSingle;Lio/reactivex/SingleObserver;)V
    .locals 0
    .param p1, "this$0"    # Lio/reactivex/internal/operators/completable/CompletableToSingle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;, "Lio/reactivex/internal/operators/completable/CompletableToSingle<TT;>.ToSingle;"
    .local p2, "observer":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;->this$0:Lio/reactivex/internal/operators/completable/CompletableToSingle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;->observer:Lio/reactivex/SingleObserver;

    .line 47
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 53
    .local p0, "this":Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;, "Lio/reactivex/internal/operators/completable/CompletableToSingle<TT;>.ToSingle;"
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;->this$0:Lio/reactivex/internal/operators/completable/CompletableToSingle;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletableToSingle;->completionValueSupplier:Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_0

    .line 55
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;->this$0:Lio/reactivex/internal/operators/completable/CompletableToSingle;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletableToSingle;->completionValueSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .local v0, "v":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 56
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 58
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;->observer:Lio/reactivex/SingleObserver;

    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 59
    return-void

    .line 62
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;->this$0:Lio/reactivex/internal/operators/completable/CompletableToSingle;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletableToSingle;->completionValue:Ljava/lang/Object;

    .line 65
    .local v0, "v":Ljava/lang/Object;, "TT;"
    :goto_0
    if-nez v0, :cond_1

    .line 66
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;->observer:Lio/reactivex/SingleObserver;

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "The value supplied is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 68
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;->observer:Lio/reactivex/SingleObserver;

    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 70
    :goto_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 74
    .local p0, "this":Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;, "Lio/reactivex/internal/operators/completable/CompletableToSingle<TT;>.ToSingle;"
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;->observer:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 79
    .local p0, "this":Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;, "Lio/reactivex/internal/operators/completable/CompletableToSingle<TT;>.ToSingle;"
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;->observer:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 80
    return-void
.end method
