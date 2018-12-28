.class final Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;
.super Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;
.source "ParallelJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JoinSubscription"
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
.field private static final serialVersionUID:J = 0x579a0f4f7e6bd483L


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

    .line 140
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;-><init>(Lorg/reactivestreams/Subscriber;II)V

    .line 141
    return-void
.end method


# virtual methods
.method drain()V
    .locals 1

    .line 206
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    return-void

    .line 210
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->drainLoop()V

    .line 211
    return-void
.end method

.method drainLoop()V
    .locals 23

    .line 214
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription<TT;>;"
    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 216
    .local v1, "missed":I
    iget-object v2, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->subscribers:[Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;

    .line 217
    .local v2, "s":[Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;, "[Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<TT;>;"
    array-length v3, v2

    .line 218
    .local v3, "n":I
    iget-object v4, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    .line 222
    .local v4, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    :goto_0
    iget-object v5, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    .line 223
    .local v5, "r":J
    const-wide/16 v9, 0x0

    .line 226
    .local v9, "e":J
    :goto_1
    cmp-long v13, v9, v5

    if-eqz v13, :cond_7

    .line 227
    iget-boolean v13, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cancelled:Z

    if-eqz v13, :cond_0

    .line 228
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cleanup()V

    .line 229
    return-void

    .line 232
    :cond_0
    iget-object v13, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v13}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Throwable;

    .line 233
    .local v13, "ex":Ljava/lang/Throwable;
    if-eqz v13, :cond_1

    .line 234
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cleanup()V

    .line 235
    invoke-interface {v4, v13}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 236
    return-void

    .line 239
    :cond_1
    iget-object v14, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    if-nez v14, :cond_2

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    .line 241
    .local v14, "d":Z
    :goto_2
    const/4 v15, 0x1

    .line 243
    .local v15, "empty":Z
    move-wide/from16 v16, v9

    const/4 v9, 0x0

    .local v9, "i":I
    .local v16, "e":J
    :goto_3
    array-length v10, v2

    if-ge v9, v10, :cond_4

    .line 244
    aget-object v10, v2, v9

    .line 245
    .local v10, "inner":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<TT;>;"
    iget-object v11, v10, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 246
    .local v11, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    if-eqz v11, :cond_3

    .line 247
    invoke-interface {v11}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v12

    .line 249
    .local v12, "v":Ljava/lang/Object;, "TT;"
    if-eqz v12, :cond_3

    .line 250
    const/4 v15, 0x0

    .line 251
    invoke-interface {v4, v12}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 252
    invoke-virtual {v10}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->requestOne()V

    .line 253
    const-wide/16 v20, 0x1

    add-long v20, v16, v20

    move-wide/from16 v16, v20

    cmp-long v22, v20, v5

    if-nez v22, :cond_3

    .line 254
    goto :goto_4

    .line 243
    .end local v10    # "inner":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<TT;>;"
    .end local v11    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    .end local v12    # "v":Ljava/lang/Object;, "TT;"
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 260
    .end local v9    # "i":I
    :cond_4
    if-eqz v14, :cond_5

    if-eqz v15, :cond_5

    .line 261
    invoke-interface {v4}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 262
    return-void

    .line 265
    :cond_5
    if-eqz v15, :cond_6

    .line 266
    nop

    .line 270
    .end local v13    # "ex":Ljava/lang/Throwable;
    .end local v14    # "d":Z
    .end local v15    # "empty":Z
    .end local v16    # "e":J
    .local v9, "e":J
    :goto_4
    move-wide/from16 v9, v16

    goto :goto_5

    .line 268
    .end local v9    # "e":J
    .restart local v16    # "e":J
    :cond_6
    nop

    .line 223
    move-wide/from16 v9, v16

    goto :goto_1

    .line 270
    .end local v16    # "e":J
    .restart local v9    # "e":J
    :cond_7
    :goto_5
    cmp-long v11, v9, v5

    if-nez v11, :cond_d

    .line 271
    iget-boolean v11, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cancelled:Z

    if-eqz v11, :cond_8

    .line 272
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cleanup()V

    .line 273
    return-void

    .line 276
    :cond_8
    iget-object v11, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v11}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Throwable;

    .line 277
    .local v11, "ex":Ljava/lang/Throwable;
    if-eqz v11, :cond_9

    .line 278
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cleanup()V

    .line 279
    invoke-interface {v4, v11}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 280
    return-void

    .line 283
    :cond_9
    iget-object v12, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    if-nez v12, :cond_a

    const/16 v19, 0x1

    goto :goto_6

    :cond_a
    const/16 v19, 0x0

    :goto_6
    move/from16 v12, v19

    .line 285
    .local v12, "d":Z
    const/4 v13, 0x1

    .line 287
    .local v13, "empty":Z
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_7
    move/from16 v14, v18

    .end local v18    # "i":I
    .local v14, "i":I
    if-ge v14, v3, :cond_c

    .line 288
    aget-object v15, v2, v14

    .line 290
    .local v15, "inner":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<TT;>;"
    iget-object v7, v15, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 291
    .local v7, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    if-eqz v7, :cond_b

    invoke-interface {v7}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b

    .line 292
    const/4 v13, 0x0

    .line 293
    goto :goto_8

    .line 287
    .end local v7    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .end local v15    # "inner":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<TT;>;"
    :cond_b
    add-int/lit8 v18, v14, 0x1

    goto :goto_7

    .line 297
    .end local v14    # "i":I
    :cond_c
    :goto_8
    if-eqz v12, :cond_d

    if-eqz v13, :cond_d

    .line 298
    invoke-interface {v4}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 299
    return-void

    .line 303
    .end local v11    # "ex":Ljava/lang/Throwable;
    .end local v12    # "d":Z
    .end local v13    # "empty":Z
    :cond_d
    const-wide/16 v7, 0x0

    cmp-long v11, v9, v7

    if-eqz v11, :cond_e

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v11, v5, v7

    if-eqz v11, :cond_e

    .line 304
    iget-object v7, v0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v11, v9

    invoke-virtual {v7, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 307
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->get()I

    move-result v7

    .line 308
    .local v7, "w":I
    if-ne v7, v1, :cond_f

    .line 309
    neg-int v8, v1

    invoke-virtual {v0, v8}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->addAndGet(I)I

    move-result v1

    .line 310
    if-nez v1, :cond_10

    .line 311
    nop

    .line 317
    .end local v5    # "r":J
    .end local v7    # "w":I
    .end local v9    # "e":J
    return-void

    .line 314
    .restart local v5    # "r":J
    .restart local v7    # "w":I
    .restart local v9    # "e":J
    :cond_f
    move v1, v7

    .line 316
    .end local v5    # "r":J
    .end local v7    # "w":I
    .end local v9    # "e":J
    :cond_10
    goto/16 :goto_0
.end method

.method public onComplete()V
    .locals 1

    .line 200
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 201
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->drain()V

    .line 202
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 188
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/util/AtomicThrowable;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cancelAll()V

    .line 190
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->drain()V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 193
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 196
    :cond_1
    :goto_0
    return-void
.end method

.method public onNext(Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 145
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription<TT;>;"
    .local p1, "inner":Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->get()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 151
    :cond_0
    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->request(J)V

    goto :goto_1

    .line 153
    :cond_1
    invoke-virtual {p1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->getQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;

    move-result-object v0

    .line 155
    .local v0, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    invoke-interface {v0, p2}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 156
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cancelAll()V

    .line 157
    new-instance v1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v2, "Queue full?!"

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, "mbe":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lio/reactivex/internal/util/AtomicThrowable;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    iget-object v2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 161
    :cond_2
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 163
    :goto_0
    return-void

    .line 166
    .end local v0    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    .end local v1    # "mbe":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_6

    .line 167
    return-void

    .line 170
    :cond_4
    invoke-virtual {p1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->getQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;

    move-result-object v0

    .line 172
    .restart local v0    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    invoke-interface {v0, p2}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 173
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->cancelAll()V

    .line 174
    new-instance v1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v2, "Queue full?!"

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->onError(Ljava/lang/Throwable;)V

    .line 175
    return-void

    .line 178
    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_6

    .line 179
    return-void

    .line 183
    .end local v0    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TT;>;"
    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription;->drainLoop()V

    .line 184
    return-void
.end method
