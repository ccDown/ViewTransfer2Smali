.class final Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableFlatMap.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFlatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MergeSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field static final CANCELLED:[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<",
            "**>;"
        }
    .end annotation
.end field

.field static final EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<",
            "**>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x1d634c9cafb5cc5aL


# instance fields
.field final bufferSize:I

.field volatile cancelled:Z

.field final delayErrors:Z

.field volatile done:Z

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TU;>;"
        }
    .end annotation
.end field

.field final errs:Lio/reactivex/internal/util/AtomicThrowable;

.field lastId:J

.field lastIndex:I

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final maxConcurrency:I

.field volatile queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TU;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field scalarEmitted:I

.field final scalarLimit:I

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<",
            "**>;>;"
        }
    .end annotation
.end field

.field uniqueId:J

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 82
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    sput-object v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    .line 84
    new-array v0, v0, [Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->CANCELLED:[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    return-void
.end method

.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;ZII)V
    .locals 2
    .param p3, "delayErrors"    # Z
    .param p4, "maxConcurrency"    # I
    .param p5, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TU;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    .line 98
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber<TT;TU;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TU;>;"
    .local p2, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lorg/reactivestreams/Publisher<+TU;>;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 76
    new-instance v0, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {v0}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->errs:Lio/reactivex/internal/util/AtomicThrowable;

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 99
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 100
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->mapper:Lio/reactivex/functions/Function;

    .line 101
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->delayErrors:Z

    .line 102
    iput p4, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->maxConcurrency:I

    .line 103
    iput p5, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->bufferSize:I

    .line 104
    shr-int/lit8 v0, p4, 0x1

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->scalarLimit:I

    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 106
    return-void
.end method


# virtual methods
.method addInner(Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<",
            "TT;TU;>;)Z"
        }
    .end annotation

    .line 170
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber<TT;TU;>;"
    .local p1, "inner":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<TT;TU;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    .line 171
    .local v0, "a":[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<**>;"
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->CANCELLED:[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 172
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->dispose()V

    .line 173
    return v2

    .line 175
    :cond_0
    array-length v1, v0

    .line 176
    .local v1, "n":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    .line 177
    .local v3, "b":[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<**>;"
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    aput-object p1, v3, v1

    .line 179
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    const/4 v2, 0x1

    return v2

    .line 182
    .end local v0    # "a":[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<**>;"
    .end local v1    # "n":I
    .end local v3    # "b":[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<**>;"
    :cond_1
    goto :goto_0
.end method

.method public cancel()V
    .locals 1

    .line 351
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber<TT;TU;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->cancelled:Z

    if-nez v0, :cond_0

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->cancelled:Z

    .line 353
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 354
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->disposeAll()V

    .line 355
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 357
    .local v0, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 362
    .end local v0    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    :cond_0
    return-void
.end method

.method checkTerminate()Z
    .locals 3

    .line 559
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber<TT;TU;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->cancelled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->clearScalarQueue()V

    .line 561
    return v1

    .line 563
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->delayErrors:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->errs:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 564
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->clearScalarQueue()V

    .line 565
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->errs:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    .line 566
    .local v0, "ex":Ljava/lang/Throwable;
    sget-object v2, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    if-eq v0, v2, :cond_1

    .line 567
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 569
    :cond_1
    return v1

    .line 571
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method clearScalarQueue()V
    .locals 1

    .line 575
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 576
    .local v0, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    if-eqz v0, :cond_0

    .line 577
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 579
    :cond_0
    return-void
.end method

.method disposeAll()V
    .locals 4

    .line 582
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    .line 583
    .local v0, "a":[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<**>;"
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->CANCELLED:[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    if-eq v0, v1, :cond_1

    .line 584
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->CANCELLED:[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    .line 585
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->CANCELLED:[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    if-eq v0, v1, :cond_1

    .line 586
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 587
    .local v3, "inner":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<**>;"
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->dispose()V

    .line 586
    .end local v3    # "inner":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<**>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 589
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->errs:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    .line 590
    .local v1, "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    sget-object v2, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    if-eq v1, v2, :cond_1

    .line 591
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 595
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method drain()V
    .locals 1

    .line 365
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber<TT;TU;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->drainLoop()V

    .line 368
    :cond_0
    return-void
.end method

.method drainLoop()V
    .locals 32

    .line 371
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber<TT;TU;>;"
    move-object/from16 v1, p0

    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 372
    .local v2, "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TU;>;"
    const/4 v0, 0x1

    .local v0, "missed":I
    :goto_0
    move v4, v0

    .line 374
    .end local v0    # "missed":I
    .local v4, "missed":I
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->checkTerminate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    return-void

    .line 377
    :cond_0
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 379
    .local v0, "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    .line 380
    .local v5, "r":J
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v10, v5, v7

    if-nez v10, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 382
    .local v7, "unbounded":Z
    :goto_1
    const-wide/16 v10, 0x0

    .line 384
    .local v10, "replenishMain":J
    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    if-eqz v0, :cond_9

    .line 386
    :goto_2
    const-wide/16 v16, 0x0

    .line 387
    .local v16, "scalarEmission":J
    move-wide/from16 v8, v16

    move-wide/from16 v16, v10

    move-wide v10, v5

    const/4 v5, 0x0

    .line 388
    .local v5, "o":Ljava/lang/Object;, "TU;"
    .local v8, "scalarEmission":J
    .local v10, "r":J
    .local v16, "replenishMain":J
    :goto_3
    cmp-long v6, v10, v14

    if-eqz v6, :cond_4

    .line 389
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    .line 391
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->checkTerminate()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 392
    return-void

    .line 394
    :cond_2
    if-nez v5, :cond_3

    .line 395
    goto :goto_4

    .line 398
    :cond_3
    invoke-interface {v2, v5}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 400
    add-long v16, v16, v12

    .line 401
    add-long/2addr v8, v12

    .line 402
    sub-long/2addr v10, v12

    goto :goto_3

    .line 404
    :cond_4
    :goto_4
    cmp-long v6, v8, v14

    if-eqz v6, :cond_6

    .line 405
    if-eqz v7, :cond_5

    .line 406
    const-wide v10, 0x7fffffffffffffffL

    .line 411
    move/from16 v19, v4

    goto :goto_5

    .line 408
    :cond_5
    iget-object v6, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    move/from16 v19, v4

    .end local v4    # "missed":I
    .local v19, "missed":I
    neg-long v3, v8

    invoke-virtual {v6, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v3

    .line 411
    move-wide v10, v3

    goto :goto_5

    .end local v19    # "missed":I
    .restart local v4    # "missed":I
    :cond_6
    move/from16 v19, v4

    .end local v4    # "missed":I
    .restart local v19    # "missed":I
    :goto_5
    cmp-long v3, v10, v14

    if-eqz v3, :cond_8

    if-nez v5, :cond_7

    .line 412
    goto :goto_6

    .line 414
    .end local v5    # "o":Ljava/lang/Object;, "TU;"
    .end local v8    # "scalarEmission":J
    :cond_7
    nop

    .line 386
    move-wide v5, v10

    move-wide/from16 v10, v16

    move/from16 v4, v19

    goto :goto_2

    .line 417
    :cond_8
    :goto_6
    move-wide v5, v10

    goto :goto_7

    .end local v16    # "replenishMain":J
    .end local v19    # "missed":I
    .restart local v4    # "missed":I
    .local v5, "r":J
    .local v10, "replenishMain":J
    :cond_9
    move/from16 v19, v4

    move-wide/from16 v16, v10

    .end local v4    # "missed":I
    .end local v10    # "replenishMain":J
    .restart local v16    # "replenishMain":J
    .restart local v19    # "missed":I
    :goto_7
    iget-boolean v3, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->done:Z

    .line 418
    .local v3, "d":Z
    iget-object v4, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 419
    .end local v0    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    .local v4, "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    .line 420
    .local v8, "inner":[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<**>;"
    array-length v9, v8

    .line 422
    .local v9, "n":I
    if-eqz v3, :cond_d

    if-eqz v4, :cond_a

    invoke-interface {v4}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_a
    if-nez v9, :cond_d

    .line 423
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->errs:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    .line 424
    .local v0, "ex":Ljava/lang/Throwable;
    sget-object v10, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    if-eq v0, v10, :cond_c

    .line 425
    if-nez v0, :cond_b

    .line 426
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_8

    .line 428
    :cond_b
    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 431
    :cond_c
    :goto_8
    return-void

    .line 434
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_d
    const/4 v0, 0x0

    .line 435
    .local v0, "innerCompleted":Z
    if-eqz v9, :cond_26

    .line 436
    iget-wide v10, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->lastId:J

    .line 437
    .local v10, "startId":J
    iget v12, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->lastIndex:I

    .line 439
    .local v12, "index":I
    if-le v9, v12, :cond_f

    aget-object v13, v8, v12

    iget-wide v14, v13, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->id:J

    cmp-long v13, v14, v10

    if-eqz v13, :cond_e

    goto :goto_9

    .line 458
    :cond_e
    move/from16 v24, v3

    move-object/from16 v25, v4

    goto :goto_c

    .line 440
    :cond_f
    :goto_9
    if-gt v9, v12, :cond_10

    .line 441
    const/4 v12, 0x0

    .line 443
    :cond_10
    move v13, v12

    .line 444
    .local v13, "j":I
    move v14, v13

    const/4 v13, 0x0

    .local v13, "i":I
    .local v14, "j":I
    :goto_a
    if-ge v13, v9, :cond_13

    .line 445
    aget-object v15, v8, v14

    move/from16 v24, v3

    move-object/from16 v25, v4

    .end local v3    # "d":Z
    .end local v4    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    .local v24, "d":Z
    .local v25, "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    iget-wide v3, v15, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->id:J

    cmp-long v15, v3, v10

    if-nez v15, :cond_11

    .line 446
    goto :goto_b

    .line 448
    :cond_11
    add-int/lit8 v14, v14, 0x1

    .line 449
    if-ne v14, v9, :cond_12

    .line 450
    const/4 v3, 0x0

    .line 444
    move v14, v3

    :cond_12
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v24

    move-object/from16 v4, v25

    goto :goto_a

    .line 453
    .end local v13    # "i":I
    .end local v24    # "d":Z
    .end local v25    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    .restart local v3    # "d":Z
    .restart local v4    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    :cond_13
    move/from16 v24, v3

    move-object/from16 v25, v4

    .end local v3    # "d":Z
    .end local v4    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    .restart local v24    # "d":Z
    .restart local v25    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    :goto_b
    move v12, v14

    .line 454
    iput v14, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->lastIndex:I

    .line 455
    aget-object v3, v8, v14

    iget-wide v3, v3, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->id:J

    iput-wide v3, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->lastId:J

    .line 458
    .end local v14    # "j":I
    :goto_c
    move v3, v12

    .line 460
    .local v3, "j":I
    move v4, v3

    const/16 v18, 0x0

    move v3, v0

    .end local v0    # "innerCompleted":Z
    .local v3, "innerCompleted":Z
    .local v4, "j":I
    .local v18, "i":I
    :goto_d
    move/from16 v13, v18

    .end local v18    # "i":I
    .restart local v13    # "i":I
    if-ge v13, v9, :cond_25

    .line 461
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->checkTerminate()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 462
    return-void

    .line 466
    :cond_14
    aget-object v14, v8, v4

    .line 468
    .local v14, "is":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<TT;TU;>;"
    const/4 v0, 0x0

    .line 470
    .local v0, "o":Ljava/lang/Object;, "TU;"
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->checkTerminate()Z

    move-result v15

    if-eqz v15, :cond_15

    .line 471
    return-void

    .line 473
    :cond_15
    iget-object v15, v14, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 474
    .local v15, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    if-nez v15, :cond_16

    .line 475
    nop

    .line 522
    move-object/from16 v29, v2

    move-wide/from16 v30, v10

    goto/16 :goto_14

    .line 477
    :cond_16
    move-object/from16 v18, v0

    move-wide/from16 v26, v5

    const-wide/16 v5, 0x0

    .line 478
    .end local v0    # "o":Ljava/lang/Object;, "TU;"
    .local v5, "produced":J
    .local v18, "o":Ljava/lang/Object;, "TU;"
    .local v26, "r":J
    :goto_f
    const-wide/16 v22, 0x0

    cmp-long v0, v26, v22

    if-eqz v0, :cond_1b

    .line 481
    :try_start_0
    invoke-interface {v15}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    .end local v18    # "o":Ljava/lang/Object;, "TU;"
    .restart local v0    # "o":Ljava/lang/Object;, "TU;"
    nop

    .line 497
    if-nez v0, :cond_17

    .line 498
    nop

    .line 510
    move-object/from16 v29, v2

    goto :goto_10

    .line 501
    :cond_17
    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 503
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->checkTerminate()Z

    move-result v18

    if-eqz v18, :cond_18

    .line 504
    return-void

    .line 507
    :cond_18
    const/16 v18, 0x0

    const-wide/16 v20, 0x1

    sub-long v26, v26, v20

    .line 508
    add-long v5, v5, v20

    .line 477
    move-object/from16 v18, v0

    goto :goto_f

    .line 482
    .end local v0    # "o":Ljava/lang/Object;, "TU;"
    .restart local v18    # "o":Ljava/lang/Object;, "TU;"
    :catch_0
    move-exception v0

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    .line 483
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 484
    invoke-virtual {v14}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->dispose()V

    .line 485
    move-object/from16 v29, v2

    .end local v2    # "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TU;>;"
    .local v29, "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TU;>;"
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->errs:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v2, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 486
    iget-boolean v2, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->delayErrors:Z

    if-nez v2, :cond_19

    .line 487
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v2}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 489
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->checkTerminate()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 490
    return-void

    .line 492
    :cond_1a
    invoke-virtual {v1, v14}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->removeInner(Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;)V

    .line 493
    const/4 v2, 0x1

    .line 494
    .end local v3    # "innerCompleted":Z
    .local v2, "innerCompleted":Z
    add-int/lit8 v13, v13, 0x1

    .line 495
    nop

    .line 460
    move v3, v2

    move-wide/from16 v30, v10

    move-wide/from16 v5, v26

    const-wide/16 v20, 0x1

    goto/16 :goto_16

    .line 510
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v29    # "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TU;>;"
    .local v2, "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TU;>;"
    .restart local v3    # "innerCompleted":Z
    :cond_1b
    move-object/from16 v29, v2

    move-object/from16 v0, v18

    .end local v2    # "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TU;>;"
    .end local v18    # "o":Ljava/lang/Object;, "TU;"
    .local v0, "o":Ljava/lang/Object;, "TU;"
    .restart local v29    # "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TU;>;"
    :goto_10
    const-wide/16 v22, 0x0

    cmp-long v2, v5, v22

    if-eqz v2, :cond_1d

    .line 511
    if-nez v7, :cond_1c

    .line 512
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    move-wide/from16 v30, v10

    .end local v10    # "startId":J
    .local v30, "startId":J
    neg-long v10, v5

    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v10

    goto :goto_11

    .line 514
    .end local v30    # "startId":J
    .restart local v10    # "startId":J
    :cond_1c
    move-wide/from16 v30, v10

    .end local v10    # "startId":J
    .restart local v30    # "startId":J
    const-wide v10, 0x7fffffffffffffffL

    .line 516
    .end local v26    # "r":J
    .local v10, "r":J
    :goto_11
    invoke-virtual {v14, v5, v6}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->requestMore(J)V

    goto :goto_12

    .line 518
    .end local v30    # "startId":J
    .local v10, "startId":J
    .restart local v26    # "r":J
    :cond_1d
    move-wide/from16 v30, v10

    move-wide/from16 v10, v26

    .end local v26    # "r":J
    .local v10, "r":J
    .restart local v30    # "startId":J
    :goto_12
    const-wide/16 v22, 0x0

    cmp-long v2, v10, v22

    if-eqz v2, :cond_1f

    if-nez v0, :cond_1e

    .line 519
    goto :goto_13

    .line 521
    .end local v5    # "produced":J
    .end local v15    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    :cond_1e
    nop

    .line 468
    move-wide v5, v10

    move-object/from16 v2, v29

    move-wide/from16 v10, v30

    goto/16 :goto_e

    .line 522
    :cond_1f
    :goto_13
    move-wide v5, v10

    .end local v10    # "r":J
    .local v5, "r":J
    :goto_14
    iget-boolean v2, v14, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->done:Z

    .line 523
    .local v2, "innerDone":Z
    iget-object v10, v14, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 524
    .local v10, "innerQueue":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    if-eqz v2, :cond_22

    if-eqz v10, :cond_20

    invoke-interface {v10}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_22

    .line 525
    :cond_20
    invoke-virtual {v1, v14}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->removeInner(Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;)V

    .line 526
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->checkTerminate()Z

    move-result v11

    if-eqz v11, :cond_21

    .line 527
    return-void

    .line 529
    :cond_21
    const/4 v11, 0x0

    const-wide/16 v20, 0x1

    add-long v16, v16, v20

    .line 530
    const/4 v3, 0x1

    goto :goto_15

    .line 532
    :cond_22
    const-wide/16 v20, 0x1

    :goto_15
    const-wide/16 v22, 0x0

    cmp-long v11, v5, v22

    if-nez v11, :cond_23

    .line 533
    nop

    .line 541
    move v0, v3

    const/4 v2, 0x1

    goto :goto_17

    .line 536
    :cond_23
    add-int/lit8 v4, v4, 0x1

    .line 537
    if-ne v4, v9, :cond_24

    .line 538
    const/4 v0, 0x0

    .line 460
    move v4, v0

    .end local v0    # "o":Ljava/lang/Object;, "TU;"
    .end local v2    # "innerDone":Z
    .end local v10    # "innerQueue":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    .end local v14    # "is":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<TT;TU;>;"
    :cond_24
    :goto_16
    const/4 v2, 0x1

    add-int/lit8 v18, v13, 0x1

    move-object/from16 v2, v29

    move-wide/from16 v10, v30

    goto/16 :goto_d

    .line 541
    .end local v13    # "i":I
    .end local v29    # "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TU;>;"
    .end local v30    # "startId":J
    .local v2, "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TU;>;"
    .local v10, "startId":J
    :cond_25
    move-object/from16 v29, v2

    move-wide/from16 v30, v10

    const/4 v2, 0x1

    move v0, v3

    .end local v2    # "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TU;>;"
    .end local v3    # "innerCompleted":Z
    .end local v10    # "startId":J
    .local v0, "innerCompleted":Z
    .restart local v29    # "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TU;>;"
    .restart local v30    # "startId":J
    :goto_17
    iput v4, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->lastIndex:I

    .line 542
    aget-object v3, v8, v4

    iget-wide v10, v3, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->id:J

    iput-wide v10, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->lastId:J

    .line 545
    move-wide/from16 v3, v16

    goto :goto_18

    .end local v12    # "index":I
    .end local v24    # "d":Z
    .end local v25    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    .end local v29    # "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TU;>;"
    .end local v30    # "startId":J
    .restart local v2    # "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TU;>;"
    .local v3, "d":Z
    .local v4, "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    :cond_26
    move-object/from16 v29, v2

    move/from16 v24, v3

    move-object/from16 v25, v4

    const/4 v2, 0x1

    move-wide/from16 v3, v16

    .end local v2    # "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TU;>;"
    .end local v4    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    .end local v16    # "replenishMain":J
    .local v3, "replenishMain":J
    .restart local v24    # "d":Z
    .restart local v25    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    .restart local v29    # "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TU;>;"
    :goto_18
    const-wide/16 v10, 0x0

    cmp-long v12, v3, v10

    if-eqz v12, :cond_27

    iget-boolean v10, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->cancelled:Z

    if-nez v10, :cond_27

    .line 546
    iget-object v10, v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v10, v3, v4}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 548
    :cond_27
    if-eqz v0, :cond_28

    .line 549
    nop

    .line 372
    move/from16 v0, v19

    .end local v3    # "replenishMain":J
    .end local v5    # "r":J
    .end local v7    # "unbounded":Z
    .end local v8    # "inner":[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<**>;"
    .end local v9    # "n":I
    .end local v19    # "missed":I
    .end local v24    # "d":Z
    .end local v25    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    .end local v29    # "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TU;>;"
    .local v0, "missed":I
    .restart local v2    # "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TU;>;"
    :goto_19
    move-object/from16 v2, v29

    goto/16 :goto_0

    .line 551
    .end local v2    # "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TU;>;"
    .local v0, "innerCompleted":Z
    .restart local v3    # "replenishMain":J
    .restart local v5    # "r":J
    .restart local v7    # "unbounded":Z
    .restart local v8    # "inner":[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<**>;"
    .restart local v9    # "n":I
    .restart local v19    # "missed":I
    .restart local v24    # "d":Z
    .restart local v25    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    .restart local v29    # "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TU;>;"
    :cond_28
    move/from16 v10, v19

    .end local v19    # "missed":I
    .local v10, "missed":I
    neg-int v11, v10

    invoke-virtual {v1, v11}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->addAndGet(I)I

    move-result v10

    .line 552
    if-nez v10, :cond_29

    .line 553
    nop

    .line 556
    .end local v0    # "innerCompleted":Z
    .end local v3    # "replenishMain":J
    .end local v5    # "r":J
    .end local v7    # "unbounded":Z
    .end local v8    # "inner":[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<**>;"
    .end local v9    # "n":I
    .end local v24    # "d":Z
    .end local v25    # "svq":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    return-void

    .line 555
    :cond_29
    nop

    .line 372
    move v0, v10

    goto :goto_19
.end method

.method getInnerQueue(Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;)Lio/reactivex/internal/fuseable/SimpleQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<",
            "TT;TU;>;)",
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TU;>;"
        }
    .end annotation

    .line 269
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber<TT;TU;>;"
    .local p1, "inner":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<TT;TU;>;"
    iget-object v0, p1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 270
    .local v0, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    if-nez v0, :cond_0

    .line 271
    new-instance v1, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->bufferSize:I

    invoke-direct {v1, v2}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    move-object v0, v1

    .line 272
    iput-object v0, p1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 274
    :cond_0
    return-object v0
.end method

.method getMainQueue()Lio/reactivex/internal/fuseable/SimpleQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TU;>;"
        }
    .end annotation

    .line 217
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 218
    .local v0, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    if-nez v0, :cond_1

    .line 219
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->maxConcurrency:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 220
    new-instance v1, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->bufferSize:I

    invoke-direct {v1, v2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    move-object v0, v1

    goto :goto_0

    .line 222
    :cond_0
    new-instance v1, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->maxConcurrency:I

    invoke-direct {v1, v2}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    move-object v0, v1

    .line 224
    :goto_0
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 226
    :cond_1
    return-object v0
.end method

.method innerError(Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;Ljava/lang/Throwable;)V
    .locals 4
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<",
            "TT;TU;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 598
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber<TT;TU;>;"
    .local p1, "inner":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->errs:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->done:Z

    .line 600
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->delayErrors:Z

    if-nez v0, :cond_0

    .line 601
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 602
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->CANCELLED:[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 603
    .local v3, "a":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<**>;"
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->dispose()V

    .line 602
    .end local v3    # "a":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<**>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 606
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->drain()V

    goto :goto_1

    .line 608
    :cond_1
    invoke-static {p2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 610
    :goto_1
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 334
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber<TT;TU;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 335
    return-void

    .line 337
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->done:Z

    .line 338
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->drain()V

    .line 339
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 319
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber<TT;TU;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 320
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 321
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->errs:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->done:Z

    .line 325
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->drain()V

    goto :goto_0

    .line 327
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 329
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 127
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 128
    return-void

    .line 132
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null Publisher"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Publisher;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    .local v0, "p":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<+TU;>;"
    nop

    .line 137
    nop

    .line 139
    instance-of v1, v0, Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_3

    .line 143
    :try_start_1
    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    .local v1, "u":Ljava/lang/Object;, "TU;"
    nop

    .line 148
    nop

    .line 151
    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->tryEmitScalar(Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    :cond_1
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->maxConcurrency:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_2

    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->cancelled:Z

    if-nez v2, :cond_2

    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->scalarEmitted:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->scalarEmitted:I

    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->scalarLimit:I

    if-ne v2, v3, :cond_2

    .line 156
    const/4 v2, 0x0

    iput v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->scalarEmitted:I

    .line 157
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->scalarLimit:I

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 160
    .end local v1    # "u":Ljava/lang/Object;, "TU;"
    :cond_2
    :goto_0
    goto :goto_1

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 146
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->errs:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v2, v1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 147
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->drain()V

    .line 148
    return-void

    .line 161
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_3
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->uniqueId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->uniqueId:J

    invoke-direct {v1, p0, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;J)V

    .line 162
    .local v1, "inner":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<TT;TU;>;"
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->addInner(Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 163
    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 166
    .end local v1    # "inner":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<TT;TU;>;"
    :cond_4
    :goto_1
    return-void

    .line 133
    .end local v0    # "p":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<+TU;>;"
    :catch_1
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 135
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 136
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 137
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 110
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 112
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 113
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->cancelled:Z

    if-nez v0, :cond_1

    .line 114
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->maxConcurrency:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 115
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 117
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->maxConcurrency:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 121
    :cond_1
    :goto_0
    return-void
.end method

.method removeInner(Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 187
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber<TT;TU;>;"
    .local p1, "inner":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<TT;TU;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    .line 188
    .local v0, "a":[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<**>;"
    array-length v1, v0

    .line 189
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 190
    return-void

    .line 192
    :cond_0
    const/4 v2, -0x1

    .line 193
    .local v2, "j":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 194
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_1

    .line 195
    move v2, v4

    .line 196
    goto :goto_2

    .line 193
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 199
    .end local v4    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 200
    return-void

    .line 203
    :cond_3
    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 204
    sget-object v3, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    goto :goto_3

    .line 206
    :cond_4
    add-int/lit8 v5, v1, -0x1

    new-array v5, v5, [Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;

    .line 207
    .local v5, "b":[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<**>;"
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    add-int/lit8 v3, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v4

    invoke-static {v0, v3, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    move-object v3, v5

    .end local v5    # "b":[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<**>;"
    .local v3, "b":[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<**>;"
    :goto_3
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 211
    return-void

    .line 213
    .end local v0    # "a":[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<**>;"
    .end local v1    # "n":I
    .end local v2    # "j":I
    .end local v3    # "b":[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<**>;"
    :cond_5
    goto :goto_0
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 343
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber<TT;TU;>;"
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 345
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->drain()V

    .line 347
    :cond_0
    return-void
.end method

.method tryEmit(Ljava/lang/Object;Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 278
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber<TT;TU;>;"
    .local p1, "value":Ljava/lang/Object;, "TU;"
    .local p2, "inner":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber<TT;TU;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->get()I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 279
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 280
    .local v0, "r":J
    iget-object v2, p2, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 281
    .local v2, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 282
    :cond_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v3, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 283
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v0, v3

    if-eqz v5, :cond_1

    .line 284
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 286
    :cond_1
    const-wide/16 v3, 0x1

    invoke-virtual {p2, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->requestMore(J)V

    goto :goto_0

    .line 288
    :cond_2
    if-nez v2, :cond_3

    .line 289
    invoke-virtual {p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->getInnerQueue(Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;)Lio/reactivex/internal/fuseable/SimpleQueue;

    move-result-object v2

    .line 291
    :cond_3
    invoke-interface {v2, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 292
    new-instance v3, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v4, "Inner queue full?!"

    invoke-direct {v3, v4}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 293
    return-void

    .line 296
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_5

    .line 297
    return-void

    .line 299
    .end local v0    # "r":J
    .end local v2    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    :cond_5
    goto :goto_1

    .line 300
    :cond_6
    iget-object v0, p2, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 301
    .local v0, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    if-nez v0, :cond_7

    .line 302
    new-instance v1, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->bufferSize:I

    invoke-direct {v1, v2}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    move-object v0, v1

    .line 303
    iput-object v0, p2, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 305
    :cond_7
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 306
    new-instance v1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v2, "Inner queue full?!"

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 307
    return-void

    .line 309
    :cond_8
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_9

    .line 310
    return-void

    .line 313
    .end local v0    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->drainLoop()V

    .line 314
    return-void
.end method

.method tryEmitScalar(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 230
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber<TT;TU;>;"
    .local p1, "value":Ljava/lang/Object;, "TU;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->get()I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 231
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 232
    .local v2, "r":J
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 233
    .local v4, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-eqz v7, :cond_2

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 234
    :cond_0
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v5, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 235
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v7, v2, v5

    if-eqz v7, :cond_1

    .line 236
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 238
    :cond_1
    iget v5, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->maxConcurrency:I

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_4

    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->cancelled:Z

    if-nez v5, :cond_4

    iget v5, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->scalarEmitted:I

    add-int/2addr v5, v0

    iput v5, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->scalarEmitted:I

    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->scalarLimit:I

    if-ne v5, v0, :cond_4

    .line 240
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->scalarEmitted:I

    .line 241
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->scalarLimit:I

    int-to-long v5, v1

    invoke-interface {v0, v5, v6}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 244
    :cond_2
    if-nez v4, :cond_3

    .line 245
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->getMainQueue()Lio/reactivex/internal/fuseable/SimpleQueue;

    move-result-object v4

    .line 247
    :cond_3
    invoke-interface {v4, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 248
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scalar queue full?!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 249
    return-void

    .line 252
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_5

    .line 253
    return-void

    .line 255
    .end local v2    # "r":J
    .end local v4    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    :cond_5
    goto :goto_1

    .line 256
    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->getMainQueue()Lio/reactivex/internal/fuseable/SimpleQueue;

    move-result-object v0

    .line 257
    .local v0, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 258
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Scalar queue full?!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 259
    return-void

    .line 261
    :cond_7
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_8

    .line 262
    return-void

    .line 265
    .end local v0    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TU;>;"
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;->drainLoop()V

    .line 266
    return-void
.end method
