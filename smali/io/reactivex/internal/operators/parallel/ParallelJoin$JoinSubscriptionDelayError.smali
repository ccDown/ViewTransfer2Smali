.class final Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;
.super Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;
.source "ParallelJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JoinSubscriptionDelayError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4fa158f1d44428dbL


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;II)V
    .locals 0
    .param p2, "n"    # I
    .param p3, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;II)V"
        }
    .end annotation

    .line 325
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;-><init>(Lorg/reactivestreams/Subscriber;II)V

    .line 326
    return-void
.end method


# virtual methods
.method drain()V
    .locals 1

    .line 384
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    return-void

    .line 388
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->drainLoop()V

    .line 389
    return-void
.end method

.method drainLoop()V
    .locals 22

    .line 392
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError<TT;>;"
    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 394
    .local v1, "missed":I
    iget-object v2, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->subscribers:[Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;

    .line 395
    .local v2, "s":[Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;, "[Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<TT;>;"
    array-length v3, v2

    .line 396
    .local v3, "n":I
    iget-object v4, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->downstream:Lorg/reactivestreams/Subscriber;

    .line 400
    .local v4, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    :goto_0
    iget-object v5, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    .line 401
    .local v5, "r":J
    const-wide/16 v7, 0x0

    move-wide v9, v7

    .line 404
    .local v9, "e":J
    :goto_1
    cmp-long v13, v9, v5

    if-eqz v13, :cond_7

    .line 405
    iget-boolean v13, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->cancelled:Z

    if-eqz v13, :cond_0

    .line 406
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->cleanup()V

    .line 407
    return-void

    .line 410
    :cond_0
    iget-object v13, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    if-nez v13, :cond_1

    const/4 v13, 0x1

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    .line 412
    .local v13, "d":Z
    :goto_2
    const/4 v14, 0x1

    .line 414
    .local v14, "empty":Z
    move-wide v15, v9

    const/4 v9, 0x0

    .local v9, "i":I
    .local v15, "e":J
    :goto_3
    if-ge v9, v3, :cond_3

    .line 415
    aget-object v10, v2, v9

    .line 417
    .local v10, "inner":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<TT;>;"
    iget-object v11, v10, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 418
    .local v11, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    if-eqz v11, :cond_2

    .line 419
    invoke-interface {v11}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v12

    .line 421
    .local v12, "v":Ljava/lang/Object;, "TT;"
    if-eqz v12, :cond_2

    .line 422
    const/4 v14, 0x0

    .line 423
    invoke-interface {v4, v12}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 424
    invoke-virtual {v10}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->requestOne()V

    .line 425
    const-wide/16 v19, 0x1

    add-long v19, v15, v19

    move-wide/from16 v15, v19

    cmp-long v21, v19, v5

    if-nez v21, :cond_2

    .line 426
    goto :goto_5

    .line 414
    .end local v10    # "inner":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<TT;>;"
    .end local v11    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    .end local v12    # "v":Ljava/lang/Object;, "TT;"
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 432
    .end local v9    # "i":I
    :cond_3
    if-eqz v13, :cond_5

    if-eqz v14, :cond_5

    .line 433
    iget-object v7, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v7}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    .line 434
    .local v7, "ex":Ljava/lang/Throwable;
    if-eqz v7, :cond_4

    .line 435
    iget-object v8, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v8}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v8

    invoke-interface {v4, v8}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 437
    :cond_4
    invoke-interface {v4}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 439
    :goto_4
    return-void

    .line 442
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_5
    if-eqz v14, :cond_6

    .line 443
    nop

    .line 447
    .end local v13    # "d":Z
    .end local v14    # "empty":Z
    .end local v15    # "e":J
    .local v9, "e":J
    :goto_5
    move-wide v9, v15

    goto :goto_6

    .line 445
    .end local v9    # "e":J
    .restart local v15    # "e":J
    :cond_6
    nop

    .line 401
    move-wide v9, v15

    goto :goto_1

    .line 447
    .end local v15    # "e":J
    .restart local v9    # "e":J
    :cond_7
    :goto_6
    cmp-long v11, v9, v5

    if-nez v11, :cond_d

    .line 448
    iget-boolean v11, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->cancelled:Z

    if-eqz v11, :cond_8

    .line 449
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->cleanup()V

    .line 450
    return-void

    .line 453
    :cond_8
    iget-object v11, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    if-nez v11, :cond_9

    const/16 v18, 0x1

    goto :goto_7

    :cond_9
    const/16 v18, 0x0

    :goto_7
    move/from16 v11, v18

    .line 455
    .local v11, "d":Z
    const/4 v12, 0x1

    .line 457
    .local v12, "empty":Z
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_8
    move/from16 v13, v17

    .end local v17    # "i":I
    .local v13, "i":I
    if-ge v13, v3, :cond_b

    .line 458
    aget-object v14, v2, v13

    .line 460
    .local v14, "inner":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<TT;>;"
    iget-object v15, v14, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 461
    .local v15, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    if-eqz v15, :cond_a

    invoke-interface {v15}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_a

    .line 462
    const/4 v12, 0x0

    .line 463
    goto :goto_9

    .line 457
    .end local v14    # "inner":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<TT;>;"
    .end local v15    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    :cond_a
    add-int/lit8 v17, v13, 0x1

    goto :goto_8

    .line 467
    .end local v13    # "i":I
    :cond_b
    :goto_9
    if-eqz v11, :cond_d

    if-eqz v12, :cond_d

    .line 468
    iget-object v7, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v7}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    .line 469
    .restart local v7    # "ex":Ljava/lang/Throwable;
    if-eqz v7, :cond_c

    .line 470
    iget-object v8, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v8}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v8

    invoke-interface {v4, v8}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_a

    .line 472
    :cond_c
    invoke-interface {v4}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 474
    :goto_a
    return-void

    .line 478
    .end local v7    # "ex":Ljava/lang/Throwable;
    .end local v11    # "d":Z
    .end local v12    # "empty":Z
    :cond_d
    cmp-long v11, v9, v7

    if-eqz v11, :cond_e

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v11, v5, v7

    if-eqz v11, :cond_e

    .line 479
    iget-object v7, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v11, v9

    invoke-virtual {v7, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 482
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->get()I

    move-result v7

    .line 483
    .local v7, "w":I
    if-ne v7, v1, :cond_f

    .line 484
    neg-int v8, v1

    invoke-virtual {v0, v8}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->addAndGet(I)I

    move-result v1

    .line 485
    if-nez v1, :cond_10

    .line 486
    nop

    .line 492
    .end local v5    # "r":J
    .end local v7    # "w":I
    .end local v9    # "e":J
    return-void

    .line 489
    .restart local v5    # "r":J
    .restart local v7    # "w":I
    .restart local v9    # "e":J
    :cond_f
    move v1, v7

    .line 491
    .end local v5    # "r":J
    .end local v7    # "w":I
    .end local v9    # "e":J
    :cond_10
    goto/16 :goto_0
.end method

.method onComplete()V
    .locals 1

    .line 378
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 379
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->drain()V

    .line 380
    return-void
.end method

.method onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 371
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 372
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 373
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->drain()V

    .line 374
    return-void
.end method

.method onNext(Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 330
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError<TT;>;"
    .local p1, "inner":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->get()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 331
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 332
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 334
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 336
    :cond_0
    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->request(J)V

    goto :goto_0

    .line 338
    :cond_1
    invoke-virtual {p1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->getQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;

    move-result-object v0

    .line 340
    .local v0, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    invoke-interface {v0, p2}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 341
    invoke-virtual {p1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->cancel()Z

    .line 342
    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    new-instance v2, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v3, "Queue full?!"

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 343
    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 344
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->drainLoop()V

    .line 345
    return-void

    .line 348
    .end local v0    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_5

    .line 349
    return-void

    .line 352
    :cond_3
    invoke-virtual {p1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->getQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;

    move-result-object v0

    .line 354
    .restart local v0    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    invoke-interface {v0, p2}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 355
    invoke-virtual {p1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->cancel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 356
    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    new-instance v2, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v3, "Queue full?!"

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 357
    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 361
    :cond_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_5

    .line 362
    return-void

    .line 366
    .end local v0    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError;->drainLoop()V

    .line 367
    return-void
.end method
