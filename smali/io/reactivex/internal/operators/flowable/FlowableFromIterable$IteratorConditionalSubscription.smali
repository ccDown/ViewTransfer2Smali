.class final Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;
.source "FlowableFromIterable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFromIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IteratorConditionalSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x53954cbe186540ffL


# instance fields
.field final downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    .line 283
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription<TT;>;"
    .local p1, "actual":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-TT;>;"
    .local p2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;-><init>(Ljava/util/Iterator;)V

    .line 284
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 285
    return-void
.end method


# virtual methods
.method fastPath()V
    .locals 5

    .line 289
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->it:Ljava/util/Iterator;

    .line 290
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 292
    .local v1, "a":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-TT;>;"
    :goto_0
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-eqz v2, :cond_0

    .line 293
    return-void

    .line 299
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 304
    .local v2, "t":Ljava/lang/Object;, "TT;"
    nop

    .line 303
    nop

    .line 306
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-eqz v3, :cond_1

    .line 307
    return-void

    .line 310
    :cond_1
    if-nez v2, :cond_2

    .line 311
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Iterator.next() returned a null value"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 312
    return-void

    .line 314
    :cond_2
    invoke-interface {v1, v2}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    .line 317
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-eqz v3, :cond_3

    .line 318
    return-void

    .line 324
    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 329
    .local v3, "b":Z
    nop

    .line 328
    nop

    .line 331
    if-nez v3, :cond_5

    .line 332
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-nez v4, :cond_4

    .line 333
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    .line 335
    :cond_4
    return-void

    .line 337
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    .end local v3    # "b":Z
    :cond_5
    goto :goto_0

    .line 325
    .restart local v2    # "t":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v3

    .line 326
    .local v3, "ex":Ljava/lang/Throwable;
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 327
    invoke-interface {v1, v3}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 328
    return-void

    .line 300
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    .end local v3    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 301
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 302
    invoke-interface {v1, v2}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 303
    return-void
.end method

.method slowPath(J)V
    .locals 9
    .param p1, "r"    # J

    .line 342
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription<TT;>;"
    const-wide/16 v0, 0x0

    .line 343
    .local v0, "e":J
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->it:Ljava/util/Iterator;

    .line 344
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 348
    .local v3, "a":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-TT;>;"
    :cond_0
    :goto_0
    cmp-long v4, v0, p1

    if-eqz v4, :cond_8

    .line 350
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-eqz v4, :cond_1

    .line 351
    return-void

    .line 357
    :cond_1
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 362
    .local v4, "t":Ljava/lang/Object;, "TT;"
    nop

    .line 361
    nop

    .line 364
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-eqz v5, :cond_2

    .line 365
    return-void

    .line 369
    :cond_2
    if-nez v4, :cond_3

    .line 370
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "Iterator.next() returned a null value"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 371
    return-void

    .line 373
    :cond_3
    invoke-interface {v3, v4}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v5

    .line 376
    .local v5, "b":Z
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-eqz v6, :cond_4

    .line 377
    return-void

    .line 383
    :cond_4
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 388
    .local v6, "hasNext":Z
    nop

    .line 387
    nop

    .line 390
    if-nez v6, :cond_6

    .line 391
    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-nez v7, :cond_5

    .line 392
    invoke-interface {v3}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    .line 394
    :cond_5
    return-void

    .line 397
    :cond_6
    if-eqz v5, :cond_7

    .line 398
    const-wide/16 v7, 0x1

    add-long/2addr v0, v7

    .line 400
    .end local v4    # "t":Ljava/lang/Object;, "TT;"
    .end local v5    # "b":Z
    .end local v6    # "hasNext":Z
    :cond_7
    goto :goto_0

    .line 384
    .restart local v4    # "t":Ljava/lang/Object;, "TT;"
    .restart local v5    # "b":Z
    :catch_0
    move-exception v6

    .line 385
    .local v6, "ex":Ljava/lang/Throwable;
    invoke-static {v6}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 386
    invoke-interface {v3, v6}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 387
    return-void

    .line 358
    .end local v4    # "t":Ljava/lang/Object;, "TT;"
    .end local v5    # "b":Z
    .end local v6    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 359
    .local v4, "ex":Ljava/lang/Throwable;
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 360
    invoke-interface {v3, v4}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 361
    return-void

    .line 402
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->get()J

    move-result-wide p1

    .line 403
    cmp-long v4, v0, p1

    if-nez v4, :cond_0

    .line 404
    neg-long v4, v0

    invoke-virtual {p0, v4, v5}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->addAndGet(J)J

    move-result-wide p1

    .line 405
    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-nez v6, :cond_9

    .line 406
    return-void

    .line 408
    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
