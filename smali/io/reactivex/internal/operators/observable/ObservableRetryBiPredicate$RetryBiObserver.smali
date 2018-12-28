.class final Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableRetryBiPredicate.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RetryBiObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x628271a96862fff0L


# instance fields
.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final predicate:Lio/reactivex/functions/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiPredicate<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field retries:I

.field final source:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final upstream:Lio/reactivex/internal/disposables/SequentialDisposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/BiPredicate;Lio/reactivex/internal/disposables/SequentialDisposable;Lio/reactivex/ObservableSource;)V
    .locals 0
    .param p3, "sa"    # Lio/reactivex/internal/disposables/SequentialDisposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/functions/BiPredicate<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/internal/disposables/SequentialDisposable;",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;, "Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    .local p2, "predicate":Lio/reactivex/functions/BiPredicate;, "Lio/reactivex/functions/BiPredicate<-Ljava/lang/Integer;-Ljava/lang/Throwable;>;"
    .local p4, "source":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 53
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;->downstream:Lio/reactivex/Observer;

    .line 54
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;->upstream:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 55
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;->source:Lio/reactivex/ObservableSource;

    .line 56
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;->predicate:Lio/reactivex/functions/BiPredicate;

    .line 57
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 88
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;, "Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 89
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 73
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;, "Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver<TT;>;"
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;->predicate:Lio/reactivex/functions/BiPredicate;

    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;->retries:I

    add-int/2addr v2, v0

    iput v2, p0, Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;->retries:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lio/reactivex/functions/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 78
    .local v0, "b":Z
    nop

    .line 77
    nop

    .line 79
    if-nez v0, :cond_0

    .line 80
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v1, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 81
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;->subscribeNext()V

    .line 84
    return-void

    .line 74
    .end local v0    # "b":Z
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 76
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;->downstream:Lio/reactivex/Observer;

    new-instance v3, Lio/reactivex/exceptions/CompositeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object v1, v4, v0

    invoke-direct {v3, v4}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 77
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;, "Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 61
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;, "Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;->upstream:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    .line 62
    return-void
.end method

.method subscribeNext()V
    .locals 2

    .line 95
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;, "Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_2

    .line 96
    const/4 v0, 0x1

    .line 98
    .local v0, "missed":I
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;->upstream:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v1}, Lio/reactivex/internal/disposables/SequentialDisposable;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    return-void

    .line 101
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;->source:Lio/reactivex/ObservableSource;

    invoke-interface {v1, p0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 103
    neg-int v1, v0

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;->addAndGet(I)I

    move-result v0

    .line 104
    if-nez v0, :cond_0

    .line 105
    nop

    .line 109
    .end local v0    # "missed":I
    :cond_2
    return-void
.end method
