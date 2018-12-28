.class final Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;
.super Lio/reactivex/internal/subscribers/QueueDrainSubscriber;
.source "FlowableWindowTimed.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowExactBoundedSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$ConsumerIndexHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/QueueDrainSubscriber<",
        "TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/Flowable<",
        "TT;>;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field count:J

.field final maxSize:J

.field producerIndex:J

.field final restartTimerOnMaxSize:Z

.field final scheduler:Lio/reactivex/Scheduler;

.field volatile terminated:Z

.field final timer:Lio/reactivex/internal/disposables/SequentialDisposable;

.field final timespan:J

.field final unit:Ljava/util/concurrent/TimeUnit;

.field upstream:Lorg/reactivestreams/Subscription;

.field window:Lio/reactivex/processors/UnicastProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/UnicastProcessor<",
            "TT;>;"
        }
    .end annotation
.end field

.field final worker:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;IJZ)V
    .locals 1
    .param p2, "timespan"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lio/reactivex/Scheduler;
    .param p6, "bufferSize"    # I
    .param p7, "maxSize"    # J
    .param p9, "restartTimerOnMaxSize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lio/reactivex/Flowable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            "IJZ)V"
        }
    .end annotation

    .line 302
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/Flowable<TT;>;>;"
    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/fuseable/SimplePlainQueue;)V

    .line 296
    new-instance v0, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->timer:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 303
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->timespan:J

    .line 304
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 305
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->scheduler:Lio/reactivex/Scheduler;

    .line 306
    iput p6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->bufferSize:I

    .line 307
    iput-wide p7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->maxSize:J

    .line 308
    iput-boolean p9, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->restartTimerOnMaxSize:Z

    .line 309
    if-eqz p9, :cond_0

    .line 310
    invoke-virtual {p5}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    goto :goto_0

    .line 312
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    .line 314
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;)Z
    .locals 1
    .param p0, "x0"    # Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;

    .line 275
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->cancelled:Z

    return v0
.end method

.method static synthetic access$100(Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;)Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .locals 1
    .param p0, "x0"    # Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;

    .line 275
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 448
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->cancelled:Z

    .line 449
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 452
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->timer:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 453
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    .line 454
    .local v0, "w":Lio/reactivex/Scheduler$Worker;
    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 457
    :cond_0
    return-void
.end method

.method drainLoop()V
    .locals 30

    .line 460
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber<TT;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 461
    .local v1, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 462
    .local v2, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/Flowable<TT;>;>;"
    iget-object v3, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 464
    .local v3, "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    move-object v5, v3

    const/4 v3, 0x1

    .line 468
    .local v3, "missed":I
    .local v5, "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    :cond_0
    :goto_0
    iget-boolean v6, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->terminated:Z

    if-eqz v6, :cond_1

    .line 469
    iget-object v4, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v4}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 470
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->clear()V

    .line 471
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->dispose()V

    .line 472
    return-void

    .line 475
    :cond_1
    iget-boolean v6, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->done:Z

    .line 477
    .local v6, "d":Z
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    .line 479
    .local v7, "o":Ljava/lang/Object;
    if-nez v7, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 480
    .local v8, "empty":Z
    :goto_1
    instance-of v9, v7, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$ConsumerIndexHolder;

    .line 482
    .local v9, "isHolder":Z
    const/4 v10, 0x0

    if-eqz v6, :cond_5

    if-nez v8, :cond_3

    if-eqz v9, :cond_5

    .line 483
    :cond_3
    iput-object v10, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 484
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->clear()V

    .line 485
    iget-object v4, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->error:Ljava/lang/Throwable;

    .line 486
    .local v4, "err":Ljava/lang/Throwable;
    if-eqz v4, :cond_4

    .line 487
    invoke-virtual {v5, v4}, Lio/reactivex/processors/UnicastProcessor;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 489
    :cond_4
    invoke-virtual {v5}, Lio/reactivex/processors/UnicastProcessor;->onComplete()V

    .line 491
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->dispose()V

    .line 492
    return-void

    .line 495
    .end local v4    # "err":Ljava/lang/Throwable;
    :cond_5
    if-eqz v8, :cond_6

    .line 496
    nop

    .line 565
    .end local v6    # "d":Z
    .end local v7    # "o":Ljava/lang/Object;
    .end local v8    # "empty":Z
    .end local v9    # "isHolder":Z
    neg-int v6, v3

    invoke-virtual {v0, v6}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->leave(I)I

    move-result v3

    .line 566
    if-nez v3, :cond_0

    .line 567
    nop

    .line 570
    return-void

    .line 499
    .restart local v6    # "d":Z
    .restart local v7    # "o":Ljava/lang/Object;
    .restart local v8    # "empty":Z
    .restart local v9    # "isHolder":Z
    :cond_6
    if-eqz v9, :cond_a

    .line 500
    move-object v12, v7

    check-cast v12, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$ConsumerIndexHolder;

    .line 501
    .local v12, "consumerIndexHolder":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$ConsumerIndexHolder;
    iget-boolean v4, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->restartTimerOnMaxSize:Z

    if-nez v4, :cond_7

    iget-wide v10, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->producerIndex:J

    iget-wide v13, v12, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$ConsumerIndexHolder;->index:J

    cmp-long v4, v10, v13

    if-nez v4, :cond_0

    .line 502
    :cond_7
    invoke-virtual {v5}, Lio/reactivex/processors/UnicastProcessor;->onComplete()V

    .line 503
    const-wide/16 v10, 0x0

    iput-wide v10, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->count:J

    .line 504
    iget v4, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->bufferSize:I

    invoke-static {v4}, Lio/reactivex/processors/UnicastProcessor;->create(I)Lio/reactivex/processors/UnicastProcessor;

    move-result-object v5

    .line 505
    iput-object v5, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 507
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->requested()J

    move-result-wide v13

    .line 508
    .local v13, "r":J
    cmp-long v4, v13, v10

    if-eqz v4, :cond_9

    .line 509
    invoke-interface {v2, v5}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 510
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v4, v13, v10

    if-eqz v4, :cond_8

    .line 511
    const-wide/16 v10, 0x1

    invoke-virtual {v0, v10, v11}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->produced(J)J

    .line 521
    .end local v13    # "r":J
    :cond_8
    goto :goto_0

    .line 514
    .restart local v13    # "r":J
    :cond_9
    const/4 v4, 0x0

    iput-object v4, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 515
    iget-object v4, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v4}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->clear()V

    .line 516
    iget-object v4, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v4}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 517
    new-instance v4, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v10, "Could not deliver first window due to lack of requests."

    invoke-direct {v4, v10}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 518
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->dispose()V

    .line 519
    return-void

    .line 525
    .end local v12    # "consumerIndexHolder":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$ConsumerIndexHolder;
    .end local v13    # "r":J
    :cond_a
    invoke-static {v7}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Lio/reactivex/processors/UnicastProcessor;->onNext(Ljava/lang/Object;)V

    .line 526
    iget-wide v10, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->count:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    .line 528
    .local v10, "c":J
    iget-wide v12, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->maxSize:J

    cmp-long v4, v10, v12

    if-ltz v4, :cond_e

    .line 529
    iget-wide v12, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->producerIndex:J

    const-wide/16 v16, 0x1

    add-long v12, v12, v16

    iput-wide v12, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->producerIndex:J

    .line 530
    const-wide/16 v12, 0x0

    iput-wide v12, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->count:J

    .line 532
    invoke-virtual {v5}, Lio/reactivex/processors/UnicastProcessor;->onComplete()V

    .line 534
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->requested()J

    move-result-wide v18

    .line 536
    .local v18, "r":J
    cmp-long v4, v18, v12

    if-eqz v4, :cond_d

    .line 537
    iget v4, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->bufferSize:I

    invoke-static {v4}, Lio/reactivex/processors/UnicastProcessor;->create(I)Lio/reactivex/processors/UnicastProcessor;

    move-result-object v4

    .line 538
    .end local v5    # "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    .local v4, "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    iput-object v4, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 539
    iget-object v5, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v5, v4}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 540
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v5, v18, v12

    if-eqz v5, :cond_b

    .line 541
    const-wide/16 v12, 0x1

    invoke-virtual {v0, v12, v13}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->produced(J)J

    .line 544
    :cond_b
    iget-boolean v5, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->restartTimerOnMaxSize:Z

    if-eqz v5, :cond_c

    .line 545
    iget-object v5, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->timer:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v5}, Lio/reactivex/internal/disposables/SequentialDisposable;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/disposables/Disposable;

    .line 546
    .local v5, "tm":Lio/reactivex/disposables/Disposable;
    invoke-interface {v5}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 548
    iget-object v12, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    new-instance v13, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$ConsumerIndexHolder;

    iget-wide v14, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->producerIndex:J

    invoke-direct {v13, v14, v15, v0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$ConsumerIndexHolder;-><init>(JLio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;)V

    iget-wide v14, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->timespan:J

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    .end local v1    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .end local v2    # "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/Flowable<TT;>;>;"
    .local v27, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .local v28, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/Flowable<TT;>;>;"
    iget-wide v1, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->timespan:J

    move/from16 v29, v3

    .end local v3    # "missed":I
    .local v29, "missed":I
    iget-object v3, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-wide/from16 v22, v14

    move-wide/from16 v24, v1

    move-object/from16 v26, v3

    invoke-virtual/range {v20 .. v26}, Lio/reactivex/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 550
    .local v1, "task":Lio/reactivex/disposables/Disposable;
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->timer:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v2, v1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    .line 551
    .end local v1    # "task":Lio/reactivex/disposables/Disposable;
    .end local v5    # "tm":Lio/reactivex/disposables/Disposable;
    goto :goto_3

    .line 560
    .end local v18    # "r":J
    .end local v27    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .end local v28    # "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/Flowable<TT;>;>;"
    .end local v29    # "missed":I
    .local v1, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .restart local v2    # "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/Flowable<TT;>;>;"
    .restart local v3    # "missed":I
    :cond_c
    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move/from16 v29, v3

    .line 563
    .end local v1    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .end local v2    # "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/Flowable<TT;>;>;"
    .end local v3    # "missed":I
    .restart local v27    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .restart local v28    # "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/Flowable<TT;>;>;"
    .restart local v29    # "missed":I
    :goto_3
    move-object v5, v4

    goto :goto_4

    .line 554
    .end local v4    # "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    .end local v27    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .end local v28    # "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/Flowable<TT;>;>;"
    .end local v29    # "missed":I
    .restart local v1    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .restart local v2    # "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/Flowable<TT;>;>;"
    .restart local v3    # "missed":I
    .local v5, "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    .restart local v18    # "r":J
    :cond_d
    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move/from16 v29, v3

    .end local v1    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .end local v2    # "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/Flowable<TT;>;>;"
    .end local v3    # "missed":I
    .restart local v27    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .restart local v28    # "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/Flowable<TT;>;>;"
    .restart local v29    # "missed":I
    const/4 v1, 0x0

    iput-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 555
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 556
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    new-instance v2, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v3, "Could not deliver window due to lack of requests"

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 557
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->dispose()V

    .line 558
    return-void

    .line 561
    .end local v18    # "r":J
    .end local v27    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .end local v28    # "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/Flowable<TT;>;>;"
    .end local v29    # "missed":I
    .restart local v1    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .restart local v2    # "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/Flowable<TT;>;>;"
    .restart local v3    # "missed":I
    :cond_e
    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move/from16 v29, v3

    .end local v1    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .end local v2    # "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/Flowable<TT;>;>;"
    .end local v3    # "missed":I
    .restart local v27    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .restart local v28    # "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/Flowable<TT;>;>;"
    .restart local v29    # "missed":I
    iput-wide v10, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->count:J

    .line 563
    .end local v6    # "d":Z
    .end local v7    # "o":Ljava/lang/Object;
    .end local v8    # "empty":Z
    .end local v9    # "isHolder":Z
    .end local v10    # "c":J
    :goto_4
    nop

    .line 464
    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    goto/16 :goto_0
.end method

.method public onComplete()V
    .locals 1

    .line 432
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->done:Z

    .line 433
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->drainLoop()V

    .line 437
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 438
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->dispose()V

    .line 439
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 420
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber<TT;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->error:Ljava/lang/Throwable;

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->done:Z

    .line 422
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->drainLoop()V

    .line 426
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 427
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->dispose()V

    .line 428
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 362
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->terminated:Z

    if-eqz v1, :cond_0

    .line 363
    return-void

    .line 366
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->fastEnter()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 367
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 368
    .local v1, "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lio/reactivex/processors/UnicastProcessor;->onNext(Ljava/lang/Object;)V

    .line 370
    iget-wide v3, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->count:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 372
    .local v3, "c":J
    iget-wide v7, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->maxSize:J

    cmp-long v9, v3, v7

    if-ltz v9, :cond_4

    .line 373
    iget-wide v7, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->producerIndex:J

    add-long/2addr v7, v5

    iput-wide v7, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->producerIndex:J

    .line 374
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->count:J

    .line 376
    invoke-virtual {v1}, Lio/reactivex/processors/UnicastProcessor;->onComplete()V

    .line 378
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->requested()J

    move-result-wide v9

    .line 380
    .local v9, "r":J
    cmp-long v11, v9, v7

    if-eqz v11, :cond_3

    .line 381
    iget v7, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->bufferSize:I

    invoke-static {v7}, Lio/reactivex/processors/UnicastProcessor;->create(I)Lio/reactivex/processors/UnicastProcessor;

    move-result-object v1

    .line 382
    iput-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 383
    iget-object v7, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v7, v1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 384
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v11, v9, v7

    if-eqz v11, :cond_1

    .line 385
    invoke-virtual {v0, v5, v6}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->produced(J)J

    .line 387
    :cond_1
    iget-boolean v5, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->restartTimerOnMaxSize:Z

    if-eqz v5, :cond_2

    .line 388
    iget-object v5, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->timer:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v5}, Lio/reactivex/internal/disposables/SequentialDisposable;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/disposables/Disposable;

    .line 390
    .local v5, "tm":Lio/reactivex/disposables/Disposable;
    invoke-interface {v5}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 391
    iget-object v11, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    new-instance v12, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$ConsumerIndexHolder;

    iget-wide v6, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->producerIndex:J

    invoke-direct {v12, v6, v7, v0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$ConsumerIndexHolder;-><init>(JLio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;)V

    iget-wide v13, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->timespan:J

    iget-wide v6, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->timespan:J

    iget-object v8, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    move-wide v15, v6

    move-object/from16 v17, v8

    invoke-virtual/range {v11 .. v17}, Lio/reactivex/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v6

    .line 393
    .local v6, "task":Lio/reactivex/disposables/Disposable;
    iget-object v7, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->timer:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v7, v6}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    .line 394
    .end local v5    # "tm":Lio/reactivex/disposables/Disposable;
    .end local v6    # "task":Lio/reactivex/disposables/Disposable;
    nop

    .line 402
    .end local v9    # "r":J
    :cond_2
    goto :goto_0

    .line 396
    .restart local v9    # "r":J
    :cond_3
    const/4 v5, 0x0

    iput-object v5, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 397
    iget-object v5, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v5}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 398
    iget-object v5, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    new-instance v6, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v7, "Could not deliver window due to lack of requests"

    invoke-direct {v6, v7}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 399
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->dispose()V

    .line 400
    return-void

    .line 403
    .end local v9    # "r":J
    :cond_4
    iput-wide v3, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->count:J

    .line 406
    :goto_0
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->leave(I)I

    move-result v5

    if-nez v5, :cond_5

    .line 407
    return-void

    .line 409
    .end local v1    # "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    .end local v3    # "c":J
    :cond_5
    goto :goto_1

    .line 410
    :cond_6
    move-object/from16 v2, p1

    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-static/range {p1 .. p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 411
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->enter()Z

    move-result v1

    if-nez v1, :cond_7

    .line 412
    return-void

    .line 415
    :cond_7
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->drainLoop()V

    .line 416
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 19
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 318
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v2, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 320
    iput-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 322
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 324
    .local v2, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/Flowable<TT;>;>;"
    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 326
    iget-boolean v3, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->cancelled:Z

    if-eqz v3, :cond_0

    .line 327
    return-void

    .line 330
    :cond_0
    iget v3, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->bufferSize:I

    invoke-static {v3}, Lio/reactivex/processors/UnicastProcessor;->create(I)Lio/reactivex/processors/UnicastProcessor;

    move-result-object v3

    .line 331
    .local v3, "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    iput-object v3, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    .line 333
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->requested()J

    move-result-wide v4

    .line 334
    .local v4, "r":J
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    .line 335
    invoke-interface {v2, v3}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 336
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 337
    const-wide/16 v8, 0x1

    invoke-virtual {v0, v8, v9}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->produced(J)J

    .line 347
    :cond_1
    new-instance v11, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$ConsumerIndexHolder;

    iget-wide v8, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->producerIndex:J

    invoke-direct {v11, v8, v9, v0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$ConsumerIndexHolder;-><init>(JLio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;)V

    .line 348
    .local v11, "consumerIndexHolder":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$ConsumerIndexHolder;
    iget-boolean v8, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->restartTimerOnMaxSize:Z

    if-eqz v8, :cond_2

    .line 349
    iget-object v10, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    iget-wide v12, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->timespan:J

    iget-wide v14, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->timespan:J

    iget-object v8, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v16, v8

    invoke-virtual/range {v10 .. v16}, Lio/reactivex/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v8

    goto :goto_0

    .line 351
    :cond_2
    iget-object v12, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->scheduler:Lio/reactivex/Scheduler;

    iget-wide v14, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->timespan:J

    iget-wide v8, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->timespan:J

    iget-object v10, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v13, v11

    move-wide/from16 v16, v8

    move-object/from16 v18, v10

    invoke-virtual/range {v12 .. v18}, Lio/reactivex/Scheduler;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v8

    .line 354
    .local v8, "task":Lio/reactivex/disposables/Disposable;
    :goto_0
    iget-object v9, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->timer:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v9, v8}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 355
    invoke-interface {v1, v6, v7}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_1

    .line 340
    .end local v8    # "task":Lio/reactivex/disposables/Disposable;
    .end local v11    # "consumerIndexHolder":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$ConsumerIndexHolder;
    :cond_3
    const/4 v6, 0x1

    iput-boolean v6, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->cancelled:Z

    .line 341
    invoke-interface/range {p1 .. p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 342
    new-instance v6, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v7, "Could not deliver initial window due to lack of requests."

    invoke-direct {v6, v7}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v6}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 343
    return-void

    .line 358
    .end local v2    # "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/Flowable<TT;>;>;"
    .end local v3    # "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    .end local v4    # "r":J
    :cond_4
    :goto_1
    return-void
.end method

.method public request(J)V
    .locals 0
    .param p1, "n"    # J

    .line 443
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->requested(J)V

    .line 444
    return-void
.end method
