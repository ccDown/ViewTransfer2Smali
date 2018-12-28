.class final Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowablePublish.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowablePublish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

.field static final TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

.field private static final serialVersionUID:J = -0x2cec618a478db7eL


# instance fields
.field final bufferSize:I

.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field volatile queue:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field final shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field sourceMode:I

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field volatile terminalEvent:Ljava/lang/Object;

.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 141
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    sput-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 143
    new-array v0, v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 2
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 169
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    .local p1, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 158
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    .line 170
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 171
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 172
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 173
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->bufferSize:I

    .line 174
    return-void
.end method


# virtual methods
.method add(Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<",
            "TT;>;)Z"
        }
    .end annotation

    .line 270
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    .local p1, "producer":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 273
    .local v0, "c":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 274
    return v2

    .line 277
    :cond_0
    array-length v1, v0

    .line 279
    .local v1, "len":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 280
    .local v3, "u":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    aput-object p1, v3, v1

    .line 283
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    const/4 v2, 0x1

    return v2

    .line 288
    .end local v0    # "c":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    .end local v1    # "len":I
    .end local v3    # "u":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    :cond_1
    goto :goto_0
.end method

.method checkTerminated(Ljava/lang/Object;Z)Z
    .locals 7
    .param p1, "term"    # Ljava/lang/Object;
    .param p2, "empty"    # Z

    .line 352
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 354
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 356
    if-eqz p2, :cond_4

    .line 359
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 372
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v4, v1, v0

    .line 373
    .local v4, "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<*>;"
    iget-object v5, v4, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->child:Lorg/reactivestreams/Subscriber;

    invoke-interface {v5}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 372
    .end local v4    # "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<*>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    :cond_0
    return v3

    .line 379
    :cond_1
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 382
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 386
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v4, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 387
    .local v2, "a":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;
    array-length v4, v2

    if-eqz v4, :cond_2

    .line 388
    array-length v4, v2

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, v2, v0

    .line 389
    .local v5, "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<*>;"
    iget-object v6, v5, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->child:Lorg/reactivestreams/Subscriber;

    invoke-interface {v6, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 388
    .end local v5    # "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<*>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 392
    :cond_2
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 395
    :cond_3
    return v3

    .line 399
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "a":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;
    :cond_4
    return v0
.end method

.method dispatch()V
    .locals 28

    .line 410
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    return-void

    .line 413
    :cond_0
    const/4 v0, 0x1

    .line 418
    .local v0, "missed":I
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 422
    .local v2, "subscribers":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;>;"
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    move v4, v0

    .line 434
    .end local v0    # "missed":I
    .local v3, "ps":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    .local v4, "missed":I
    :cond_1
    :goto_0
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 441
    .local v0, "term":Ljava/lang/Object;
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 443
    .local v5, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v8, 0x1

    .line 447
    .local v8, "empty":Z
    :goto_2
    invoke-virtual {v1, v0, v8}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->checkTerminated(Ljava/lang/Object;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 448
    return-void

    .line 454
    :cond_4
    if-nez v8, :cond_14

    .line 456
    array-length v9, v3

    .line 458
    .local v9, "len":I
    const-wide v10, 0x7fffffffffffffffL

    .line 460
    .local v10, "maxRequested":J
    const/4 v12, 0x0

    .line 465
    .local v12, "cancelled":I
    array-length v13, v3

    move-wide v14, v10

    const/4 v10, 0x0

    .end local v10    # "maxRequested":J
    .local v14, "maxRequested":J
    :goto_3
    const-wide/high16 v16, -0x8000000000000000L

    if-ge v10, v13, :cond_6

    aget-object v11, v3, v10

    .line 466
    .local v11, "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    invoke-virtual {v11}, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->get()J

    move-result-wide v18

    .line 469
    .local v18, "r":J
    cmp-long v20, v18, v16

    if-eqz v20, :cond_5

    .line 470
    iget-wide v6, v11, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->emitted:J

    sub-long v6, v18, v6

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 465
    move-wide v14, v6

    goto :goto_4

    .line 472
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 465
    .end local v11    # "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    .end local v18    # "r":J
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 478
    :cond_6
    const-wide/16 v6, 0x1

    if-ne v9, v12, :cond_9

    .line 479
    iget-object v11, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 484
    .end local v0    # "term":Ljava/lang/Object;
    .local v11, "term":Ljava/lang/Object;
    :try_start_0
    invoke-interface {v5}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v0

    .line 491
    .local v10, "v":Ljava/lang/Object;, "TT;"
    goto :goto_5

    .line 485
    .end local v10    # "v":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 486
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 487
    iget-object v13, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/reactivestreams/Subscription;

    invoke-interface {v13}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 488
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v11

    .line 489
    iput-object v11, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 490
    const/4 v10, 0x0

    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v10    # "v":Ljava/lang/Object;, "TT;"
    :goto_5
    move-object v0, v10

    .line 493
    .end local v10    # "v":Ljava/lang/Object;, "TT;"
    .local v0, "v":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_7

    const/4 v10, 0x1

    goto :goto_6

    :cond_7
    const/4 v10, 0x0

    :goto_6
    invoke-virtual {v1, v11, v10}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->checkTerminated(Ljava/lang/Object;Z)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 494
    return-void

    .line 497
    :cond_8
    iget v10, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    const/4 v13, 0x1

    if-eq v10, v13, :cond_1

    .line 498
    iget-object v10, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/reactivestreams/Subscription;

    invoke-interface {v10, v6, v7}, Lorg/reactivestreams/Subscription;->request(J)V

    goto/16 :goto_0

    .line 506
    .end local v11    # "term":Ljava/lang/Object;
    .local v0, "term":Ljava/lang/Object;
    :cond_9
    move v11, v8

    move-object v8, v0

    const/4 v0, 0x0

    .local v0, "d":I
    .local v8, "term":Ljava/lang/Object;
    .local v11, "empty":Z
    :goto_7
    move v13, v0

    .line 507
    .end local v0    # "d":I
    .local v13, "d":I
    move/from16 v21, v11

    .end local v11    # "empty":Z
    .local v21, "empty":Z
    int-to-long v10, v13

    cmp-long v0, v10, v14

    if-gez v0, :cond_12

    .line 508
    iget-object v8, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 512
    :try_start_1
    invoke-interface {v5}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v0

    .line 519
    .restart local v10    # "v":Ljava/lang/Object;, "TT;"
    goto :goto_8

    .line 513
    .end local v10    # "v":Ljava/lang/Object;, "TT;"
    :catch_1
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 514
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 515
    iget-object v10, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/reactivestreams/Subscription;

    invoke-interface {v10}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 516
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v8

    .line 517
    iput-object v8, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 518
    const/4 v10, 0x0

    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v10    # "v":Ljava/lang/Object;, "TT;"
    :goto_8
    move-object v0, v10

    .line 521
    .end local v10    # "v":Ljava/lang/Object;, "TT;"
    .local v0, "v":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_a

    const/4 v10, 0x1

    goto :goto_9

    :cond_a
    const/4 v10, 0x0

    :goto_9
    move v11, v10

    .line 523
    .end local v21    # "empty":Z
    .restart local v11    # "empty":Z
    invoke-virtual {v1, v8, v11}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->checkTerminated(Ljava/lang/Object;Z)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 524
    return-void

    .line 527
    :cond_b
    if-eqz v11, :cond_c

    .line 528
    nop

    .line 565
    move-object/from16 v26, v5

    move-object v0, v8

    move v8, v11

    goto/16 :goto_e

    .line 531
    :cond_c
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 533
    .local v10, "value":Ljava/lang/Object;, "TT;"
    const/16 v18, 0x0

    .line 536
    .local v18, "subscribersChanged":Z
    array-length v6, v3

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v6, :cond_f

    move-object/from16 v23, v0

    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    .local v23, "v":Ljava/lang/Object;, "TT;"
    aget-object v0, v3, v7

    .line 541
    .local v0, "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->get()J

    move-result-wide v19

    .line 542
    .local v19, "ipr":J
    cmp-long v21, v19, v16

    if-eqz v21, :cond_e

    .line 543
    const-wide v24, 0x7fffffffffffffffL

    cmp-long v21, v19, v24

    if-eqz v21, :cond_d

    .line 545
    move-object/from16 v26, v5

    move/from16 v27, v6

    .end local v5    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .local v26, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    iget-wide v5, v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->emitted:J

    const-wide/16 v21, 0x1

    add-long v5, v5, v21

    iput-wide v5, v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->emitted:J

    goto :goto_b

    .line 547
    .end local v26    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .restart local v5    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    :cond_d
    move-object/from16 v26, v5

    move/from16 v27, v6

    const-wide/16 v21, 0x1

    .end local v5    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .restart local v26    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    :goto_b
    iget-object v5, v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->child:Lorg/reactivestreams/Subscriber;

    invoke-interface {v5, v10}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_c

    .line 549
    .end local v26    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .restart local v5    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    :cond_e
    move-object/from16 v26, v5

    move/from16 v27, v6

    const-wide/16 v21, 0x1

    .end local v5    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .restart local v26    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    const/4 v0, 0x1

    .line 536
    move/from16 v18, v0

    .end local v0    # "ip":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    .end local v19    # "ipr":J
    :goto_c
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v23

    move-object/from16 v5, v26

    move/from16 v6, v27

    goto :goto_a

    .line 553
    .end local v23    # "v":Ljava/lang/Object;, "TT;"
    .end local v26    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .local v0, "v":Ljava/lang/Object;, "TT;"
    .restart local v5    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    :cond_f
    move-object/from16 v23, v0

    move-object/from16 v26, v5

    const-wide/16 v21, 0x1

    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    .end local v5    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .restart local v23    # "v":Ljava/lang/Object;, "TT;"
    .restart local v26    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    add-int/lit8 v0, v13, 0x1

    .line 557
    .end local v13    # "d":I
    .local v0, "d":I
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 558
    .local v5, "freshArray":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    if-nez v18, :cond_11

    if-eq v5, v3, :cond_10

    goto :goto_d

    .line 562
    .end local v5    # "freshArray":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    .end local v10    # "value":Ljava/lang/Object;, "TT;"
    .end local v18    # "subscribersChanged":Z
    .end local v23    # "v":Ljava/lang/Object;, "TT;"
    :cond_10
    nop

    .line 506
    move-wide/from16 v6, v21

    move-object/from16 v5, v26

    goto/16 :goto_7

    .line 559
    .restart local v5    # "freshArray":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    .restart local v10    # "value":Ljava/lang/Object;, "TT;"
    .restart local v18    # "subscribersChanged":Z
    .restart local v23    # "v":Ljava/lang/Object;, "TT;"
    :cond_11
    :goto_d
    move-object v3, v5

    .line 560
    goto/16 :goto_0

    .line 565
    .end local v0    # "d":I
    .end local v10    # "value":Ljava/lang/Object;, "TT;"
    .end local v11    # "empty":Z
    .end local v18    # "subscribersChanged":Z
    .end local v23    # "v":Ljava/lang/Object;, "TT;"
    .end local v26    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .local v5, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .restart local v13    # "d":I
    .restart local v21    # "empty":Z
    :cond_12
    move-object/from16 v26, v5

    move-object v0, v8

    move/from16 v8, v21

    .end local v5    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .end local v21    # "empty":Z
    .local v0, "term":Ljava/lang/Object;
    .local v8, "empty":Z
    .restart local v26    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    :goto_e
    if-lez v13, :cond_13

    .line 566
    iget v5, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_13

    .line 567
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/reactivestreams/Subscription;

    int-to-long v6, v13

    invoke-interface {v5, v6, v7}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 573
    :cond_13
    const-wide/16 v5, 0x0

    cmp-long v7, v14, v5

    if-eqz v7, :cond_15

    if-nez v8, :cond_15

    .line 574
    goto/16 :goto_0

    .line 578
    .end local v9    # "len":I
    .end local v12    # "cancelled":I
    .end local v13    # "d":I
    .end local v14    # "maxRequested":J
    .end local v26    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .restart local v5    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    :cond_14
    move-object/from16 v26, v5

    .end local v5    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .restart local v26    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    :cond_15
    neg-int v5, v4

    invoke-virtual {v1, v5}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->addAndGet(I)I

    move-result v4

    .line 579
    if-nez v4, :cond_16

    .line 580
    nop

    .line 586
    .end local v0    # "term":Ljava/lang/Object;
    .end local v8    # "empty":Z
    .end local v26    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    return-void

    .line 584
    .restart local v0    # "term":Ljava/lang/Object;
    .restart local v8    # "empty":Z
    .restart local v26    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    :cond_16
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 585
    .end local v0    # "term":Ljava/lang/Object;
    .end local v8    # "empty":Z
    .end local v26    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 3

    .line 178
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    if-eq v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 181
    .local v0, "ps":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    if-eq v0, v1, :cond_0

    .line 182
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 186
    .end local v0    # "ps":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;
    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 190
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

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

    .line 252
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 253
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 256
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->dispatch()V

    .line 258
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 238
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 239
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 242
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->dispatch()V

    goto :goto_0

    .line 244
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 246
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 225
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v1, "Prefetch queue is full?!"

    invoke-direct {v0, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 227
    return-void

    .line 231
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->dispatch()V

    .line 232
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 4
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 195
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    if-eqz v0, :cond_1

    .line 198
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    .line 200
    .local v0, "qs":Lio/reactivex/internal/fuseable/QueueSubscription;, "Lio/reactivex/internal/fuseable/QueueSubscription<TT;>;"
    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    move-result v1

    .line 201
    .local v1, "m":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 202
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    .line 203
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 204
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 205
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->dispatch()V

    .line 206
    return-void

    .line 208
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 209
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    .line 210
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 211
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->bufferSize:I

    int-to-long v2, v2

    invoke-interface {p1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 212
    return-void

    .line 216
    .end local v0    # "qs":Lio/reactivex/internal/fuseable/QueueSubscription;, "Lio/reactivex/internal/fuseable/QueueSubscription<TT;>;"
    .end local v1    # "m":I
    :cond_1
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->bufferSize:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 218
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->bufferSize:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 220
    :cond_2
    return-void
.end method

.method remove(Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 300
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<TT;>;"
    .local p1, "producer":Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 301
    .local v0, "c":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    array-length v1, v0

    .line 303
    .local v1, "len":I
    if-nez v1, :cond_0

    .line 304
    goto :goto_4

    .line 308
    :cond_0
    const/4 v2, -0x1

    .line 309
    .local v2, "j":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 310
    aget-object v5, v0, v4

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 311
    move v2, v4

    .line 312
    goto :goto_2

    .line 309
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 316
    .end local v4    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 317
    return-void

    .line 323
    :cond_3
    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 324
    sget-object v3, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    goto :goto_3

    .line 327
    :cond_4
    add-int/lit8 v5, v1, -0x1

    new-array v5, v5, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 329
    .local v5, "u":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    add-int/lit8 v3, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v4

    invoke-static {v0, v3, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    move-object v3, v5

    .end local v5    # "u":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    .local v3, "u":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    :goto_3
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 335
    nop

    .line 340
    .end local v0    # "c":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    .end local v1    # "len":I
    .end local v2    # "j":I
    .end local v3    # "u":[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<TT;>;"
    :goto_4
    return-void

    .line 339
    :cond_5
    goto :goto_0
.end method
