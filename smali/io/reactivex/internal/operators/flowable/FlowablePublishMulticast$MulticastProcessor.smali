.class final Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;
.super Lio/reactivex/Flowable;
.source "FlowablePublishMulticast.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MulticastProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TT;>;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

.field static final TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;


# instance fields
.field consumed:I

.field final delayError:Z

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final limit:I

.field final prefetch:I

.field volatile queue:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field sourceMode:I

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 130
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    sput-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    .line 133
    new-array v0, v0, [Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    return-void
.end method

.method constructor <init>(IZ)V
    .locals 2
    .param p1, "prefetch"    # I
    .param p2, "delayError"    # Z

    .line 157
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor<TT;>;"
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 158
    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->prefetch:I

    .line 159
    shr-int/lit8 v0, p1, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->limit:I

    .line 160
    iput-boolean p2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->delayError:Z

    .line 161
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 162
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    .line 163
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 164
    return-void
.end method


# virtual methods
.method add(Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<",
            "TT;>;)Z"
        }
    .end annotation

    .line 245
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor<TT;>;"
    .local p1, "s":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    .line 246
    .local v0, "current":[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 247
    return v2

    .line 249
    :cond_0
    array-length v1, v0

    .line 251
    .local v1, "n":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    .line 252
    .local v3, "next":[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    aput-object p1, v3, v1

    .line 254
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    const/4 v2, 0x1

    return v2

    .line 257
    .end local v0    # "current":[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    .end local v1    # "n":I
    .end local v3    # "next":[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    :cond_1
    goto :goto_0
.end method

.method completeAll()V
    .locals 9

    .line 475
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 476
    .local v3, "ms":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->get()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 477
    iget-object v4, v3, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v4}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 475
    .end local v3    # "ms":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 197
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 198
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 200
    .local v0, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 204
    .end local v0    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    :cond_0
    return-void
.end method

.method drain()V
    .locals 30

    .line 315
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor<TT;>;"
    move-object/from16 v1, p0

    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    return-void

    .line 319
    :cond_0
    const/4 v0, 0x1

    .line 321
    .local v0, "missed":I
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 323
    .local v2, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    iget v3, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->consumed:I

    .line 324
    .local v3, "upstreamConsumed":I
    iget v4, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->limit:I

    .line 325
    .local v4, "localLimit":I
    iget v5, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->sourceMode:I

    const/4 v7, 0x1

    if-eq v5, v7, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 326
    .local v5, "canRequest":Z
    :goto_0
    iget-object v8, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 328
    .local v8, "subs":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;>;"
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    move/from16 v29, v3

    move v3, v0

    move/from16 v0, v29

    .line 333
    .local v0, "upstreamConsumed":I
    .local v3, "missed":I
    .local v9, "array":[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    :goto_1
    array-length v10, v9

    .line 335
    .local v10, "n":I
    if-eqz v2, :cond_17

    if-eqz v10, :cond_17

    .line 336
    const-wide v11, 0x7fffffffffffffffL

    .line 338
    .local v11, "r":J
    array-length v13, v9

    move-wide v14, v11

    move v11, v10

    const/4 v10, 0x0

    .end local v10    # "n":I
    .local v11, "n":I
    .local v14, "r":J
    :goto_2
    const-wide/high16 v16, -0x8000000000000000L

    if-ge v10, v13, :cond_4

    aget-object v12, v9, v10

    .line 339
    .local v12, "ms":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    invoke-virtual {v12}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->get()J

    move-result-wide v18

    iget-wide v6, v12, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->emitted:J

    sub-long v18, v18, v6

    .line 340
    .local v18, "u":J
    cmp-long v6, v18, v16

    if-eqz v6, :cond_2

    .line 341
    cmp-long v6, v14, v18

    if-lez v6, :cond_3

    .line 342
    move-wide/from16 v6, v18

    .line 338
    move-wide v14, v6

    goto :goto_3

    .line 345
    :cond_2
    add-int/lit8 v11, v11, -0x1

    .line 338
    .end local v12    # "ms":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    .end local v18    # "u":J
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x1

    goto :goto_2

    .line 349
    :cond_4
    if-nez v11, :cond_5

    .line 350
    const-wide/16 v14, 0x0

    .line 353
    .end local v0    # "upstreamConsumed":I
    .local v6, "upstreamConsumed":I
    :cond_5
    move v6, v0

    :goto_4
    const-wide/16 v12, 0x0

    cmp-long v0, v14, v12

    if-eqz v0, :cond_12

    .line 354
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 355
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 356
    return-void

    .line 359
    :cond_6
    iget-boolean v7, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->done:Z

    .line 361
    .local v7, "d":Z
    if-eqz v7, :cond_7

    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->delayError:Z

    if-nez v0, :cond_7

    .line 362
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->error:Ljava/lang/Throwable;

    .line 363
    .local v0, "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_7

    .line 364
    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->errorAll(Ljava/lang/Throwable;)V

    .line 365
    return-void

    .line 372
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_7
    :try_start_0
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .local v0, "v":Ljava/lang/Object;, "TT;"
    nop

    .line 377
    nop

    .line 380
    if-nez v0, :cond_8

    const/4 v10, 0x1

    goto :goto_5

    :cond_8
    const/4 v10, 0x0

    .line 382
    .local v10, "empty":Z
    :goto_5
    if-eqz v7, :cond_a

    if-eqz v10, :cond_a

    .line 383
    iget-object v12, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->error:Ljava/lang/Throwable;

    .line 384
    .local v12, "ex":Ljava/lang/Throwable;
    if-eqz v12, :cond_9

    .line 385
    invoke-virtual {v1, v12}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->errorAll(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 387
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->completeAll()V

    .line 389
    :goto_6
    return-void

    .line 392
    .end local v12    # "ex":Ljava/lang/Throwable;
    :cond_a
    if-eqz v10, :cond_b

    .line 393
    nop

    .line 424
    move/from16 v27, v11

    goto/16 :goto_b

    .line 396
    :cond_b
    const/4 v12, 0x0

    .line 398
    .local v12, "subscribersChange":Z
    array-length v13, v9

    move/from16 v18, v12

    const/4 v12, 0x0

    .end local v12    # "subscribersChange":Z
    .local v18, "subscribersChange":Z
    :goto_7
    const-wide/16 v20, 0x1

    if-ge v12, v13, :cond_e

    move/from16 v22, v7

    .end local v7    # "d":Z
    .local v22, "d":Z
    aget-object v7, v9, v12

    .line 399
    .local v7, "ms":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    invoke-virtual {v7}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->get()J

    move-result-wide v23

    .line 400
    .local v23, "msr":J
    cmp-long v19, v23, v16

    if-eqz v19, :cond_d

    .line 401
    const-wide v25, 0x7fffffffffffffffL

    cmp-long v19, v23, v25

    if-eqz v19, :cond_c

    .line 402
    move/from16 v28, v10

    move/from16 v27, v11

    .end local v10    # "empty":Z
    .end local v11    # "n":I
    .local v27, "n":I
    .local v28, "empty":Z
    iget-wide v10, v7, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->emitted:J

    add-long v10, v10, v20

    iput-wide v10, v7, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->emitted:J

    goto :goto_8

    .line 404
    .end local v27    # "n":I
    .end local v28    # "empty":Z
    .restart local v10    # "empty":Z
    .restart local v11    # "n":I
    :cond_c
    move/from16 v28, v10

    move/from16 v27, v11

    .end local v10    # "empty":Z
    .end local v11    # "n":I
    .restart local v27    # "n":I
    .restart local v28    # "empty":Z
    :goto_8
    iget-object v10, v7, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v10, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_9

    .line 406
    .end local v27    # "n":I
    .end local v28    # "empty":Z
    .restart local v10    # "empty":Z
    .restart local v11    # "n":I
    :cond_d
    move/from16 v28, v10

    move/from16 v27, v11

    .end local v10    # "empty":Z
    .end local v11    # "n":I
    .restart local v27    # "n":I
    .restart local v28    # "empty":Z
    const/4 v7, 0x1

    .line 398
    move/from16 v18, v7

    .end local v7    # "ms":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    .end local v23    # "msr":J
    :goto_9
    add-int/lit8 v12, v12, 0x1

    move/from16 v7, v22

    move/from16 v11, v27

    move/from16 v10, v28

    goto :goto_7

    .line 410
    .end local v22    # "d":Z
    .end local v27    # "n":I
    .end local v28    # "empty":Z
    .local v7, "d":Z
    .restart local v10    # "empty":Z
    .restart local v11    # "n":I
    :cond_e
    move/from16 v22, v7

    move/from16 v28, v10

    move/from16 v27, v11

    .end local v7    # "d":Z
    .end local v10    # "empty":Z
    .end local v11    # "n":I
    .restart local v22    # "d":Z
    .restart local v27    # "n":I
    .restart local v28    # "empty":Z
    const/4 v7, 0x0

    sub-long v14, v14, v20

    .line 412
    if-eqz v5, :cond_f

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v4, :cond_f

    .line 413
    const/4 v6, 0x0

    .line 414
    iget-object v7, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/reactivestreams/Subscription;

    int-to-long v10, v4

    invoke-interface {v7, v10, v11}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 417
    :cond_f
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    .line 418
    .local v7, "freshArray":[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    if-nez v18, :cond_11

    if-eq v7, v9, :cond_10

    goto :goto_a

    .line 422
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    .end local v7    # "freshArray":[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    .end local v18    # "subscribersChange":Z
    .end local v22    # "d":Z
    .end local v28    # "empty":Z
    :cond_10
    nop

    .line 353
    move/from16 v11, v27

    goto/16 :goto_4

    .line 419
    .restart local v0    # "v":Ljava/lang/Object;, "TT;"
    .restart local v7    # "freshArray":[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    .restart local v18    # "subscribersChange":Z
    .restart local v22    # "d":Z
    .restart local v28    # "empty":Z
    :cond_11
    :goto_a
    move-object v9, v7

    .line 420
    nop

    .line 328
    move v0, v6

    goto :goto_d

    .line 373
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    .end local v18    # "subscribersChange":Z
    .end local v22    # "d":Z
    .end local v27    # "n":I
    .end local v28    # "empty":Z
    .local v7, "d":Z
    .restart local v11    # "n":I
    :catch_0
    move-exception v0

    move/from16 v22, v7

    move/from16 v27, v11

    move-object v7, v0

    .end local v7    # "d":Z
    .end local v11    # "n":I
    .restart local v22    # "d":Z
    .restart local v27    # "n":I
    move-object v0, v7

    .line 374
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 375
    iget-object v7, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v7}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 376
    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->errorAll(Ljava/lang/Throwable;)V

    .line 377
    return-void

    .line 424
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v22    # "d":Z
    .end local v27    # "n":I
    .restart local v11    # "n":I
    :cond_12
    move/from16 v27, v11

    .end local v11    # "n":I
    .restart local v27    # "n":I
    :goto_b
    cmp-long v0, v14, v12

    if-nez v0, :cond_16

    .line 425
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 426
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 427
    return-void

    .line 430
    :cond_13
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->done:Z

    .line 432
    .local v0, "d":Z
    if-eqz v0, :cond_14

    iget-boolean v7, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->delayError:Z

    if-nez v7, :cond_14

    .line 433
    iget-object v7, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->error:Ljava/lang/Throwable;

    .line 434
    .local v7, "ex":Ljava/lang/Throwable;
    if-eqz v7, :cond_14

    .line 435
    invoke-virtual {v1, v7}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->errorAll(Ljava/lang/Throwable;)V

    .line 436
    return-void

    .line 440
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_14
    if-eqz v0, :cond_16

    invoke-interface {v2}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 441
    iget-object v7, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->error:Ljava/lang/Throwable;

    .line 442
    .restart local v7    # "ex":Ljava/lang/Throwable;
    if-eqz v7, :cond_15

    .line 443
    invoke-virtual {v1, v7}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->errorAll(Ljava/lang/Throwable;)V

    goto :goto_c

    .line 445
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->completeAll()V

    .line 447
    :goto_c
    return-void

    .line 452
    .end local v0    # "d":Z
    .end local v7    # "ex":Ljava/lang/Throwable;
    .end local v14    # "r":J
    :cond_16
    move v0, v6

    move/from16 v10, v27

    .end local v6    # "upstreamConsumed":I
    .end local v27    # "n":I
    .local v0, "upstreamConsumed":I
    .local v10, "n":I
    :cond_17
    iput v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->consumed:I

    .line 453
    iget-object v6, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v7, v3

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    .line 454
    if-nez v3, :cond_18

    .line 455
    nop

    .line 462
    .end local v10    # "n":I
    return-void

    .line 457
    .restart local v10    # "n":I
    :cond_18
    if-nez v2, :cond_19

    .line 458
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 460
    :cond_19
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, [Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    .line 461
    .end local v10    # "n":I
    nop

    .line 328
    :goto_d
    const/4 v7, 0x1

    goto/16 :goto_1
.end method

.method errorAll(Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 466
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 467
    .local v3, "ms":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->get()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 468
    iget-object v4, v3, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v4, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 466
    .end local v3    # "ms":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 471
    :cond_1
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 208
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 237
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->done:Z

    if-nez v0, :cond_0

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->done:Z

    .line 239
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->drain()V

    .line 241
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 226
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->done:Z

    if-eqz v0, :cond_0

    .line 227
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 228
    return-void

    .line 230
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->error:Ljava/lang/Throwable;

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->done:Z

    .line 232
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->drain()V

    .line 233
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 213
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->done:Z

    if-eqz v0, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->sourceMode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 218
    new-instance v0, Lio/reactivex/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->onError(Ljava/lang/Throwable;)V

    .line 219
    return-void

    .line 221
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->drain()V

    .line 222
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 3
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 168
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    if-eqz v0, :cond_1

    .line 171
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    .line 173
    .local v0, "qs":Lio/reactivex/internal/fuseable/QueueSubscription;, "Lio/reactivex/internal/fuseable/QueueSubscription<TT;>;"
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    move-result v1

    .line 174
    .local v1, "m":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 175
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->sourceMode:I

    .line 176
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 177
    iput-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->done:Z

    .line 178
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->drain()V

    .line 179
    return-void

    .line 181
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 182
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->sourceMode:I

    .line 183
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 184
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->prefetch:I

    invoke-static {p1, v2}, Lio/reactivex/internal/util/QueueDrainHelper;->request(Lorg/reactivestreams/Subscription;I)V

    .line 185
    return-void

    .line 189
    .end local v0    # "qs":Lio/reactivex/internal/fuseable/QueueSubscription;, "Lio/reactivex/internal/fuseable/QueueSubscription<TT;>;"
    .end local v1    # "m":I
    :cond_1
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->prefetch:I

    invoke-static {v0}, Lio/reactivex/internal/util/QueueDrainHelper;->createQueue(I)Lio/reactivex/internal/fuseable/SimpleQueue;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 191
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->prefetch:I

    invoke-static {p1, v0}, Lio/reactivex/internal/util/QueueDrainHelper;->request(Lorg/reactivestreams/Subscription;I)V

    .line 193
    :cond_2
    return-void
.end method

.method remove(Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 263
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor<TT;>;"
    .local p1, "s":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    .line 264
    .local v0, "current":[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    array-length v1, v0

    .line 265
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 266
    return-void

    .line 268
    :cond_0
    const/4 v2, -0x1

    .line 270
    .local v2, "j":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 271
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_1

    .line 272
    move v2, v4

    .line 273
    goto :goto_2

    .line 270
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 277
    .end local v4    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 278
    return-void

    .line 281
    :cond_3
    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 282
    sget-object v3, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    goto :goto_3

    .line 284
    :cond_4
    add-int/lit8 v5, v1, -0x1

    new-array v5, v5, [Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    .line 285
    .local v5, "next":[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    add-int/lit8 v3, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v4

    invoke-static {v0, v3, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    move-object v3, v5

    .end local v5    # "next":[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    .local v3, "next":[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    :goto_3
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 289
    return-void

    .line 291
    .end local v0    # "current":[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    .end local v1    # "n":I
    .end local v2    # "j":I
    .end local v3    # "next":[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    :cond_5
    goto :goto_0
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 296
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor<TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;)V

    .line 297
    .local v0, "ms":Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;, "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription<TT;>;"
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 298
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->add(Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->remove(Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastSubscription;)V

    .line 301
    return-void

    .line 303
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->drain()V

    goto :goto_0

    .line 305
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$MulticastProcessor;->error:Ljava/lang/Throwable;

    .line 306
    .local v1, "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 307
    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 309
    :cond_2
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 312
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
