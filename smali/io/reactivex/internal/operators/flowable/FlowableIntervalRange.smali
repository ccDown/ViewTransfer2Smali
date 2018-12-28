.class public final Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;
.super Lio/reactivex/Flowable;
.source "FlowableIntervalRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Flowable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final end:J

.field final initialDelay:J

.field final period:J

.field final scheduler:Lio/reactivex/Scheduler;

.field final start:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJJJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "initialDelay"    # J
    .param p7, "period"    # J
    .param p9, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p10, "scheduler"    # Lio/reactivex/Scheduler;

    .line 38
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 39
    iput-wide p5, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->initialDelay:J

    .line 40
    iput-wide p7, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->period:J

    .line 41
    iput-object p9, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->unit:Ljava/util/concurrent/TimeUnit;

    .line 42
    iput-object p10, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->scheduler:Lio/reactivex/Scheduler;

    .line 43
    iput-wide p1, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->start:J

    .line 44
    iput-wide p3, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->end:J

    .line 45
    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Ljava/lang/Long;>;"
    new-instance v6, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->start:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->end:J

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;-><init>(Lorg/reactivestreams/Subscriber;JJ)V

    .line 50
    .local v0, "is":Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 52
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->scheduler:Lio/reactivex/Scheduler;

    .line 54
    .local v1, "sch":Lio/reactivex/Scheduler;
    instance-of v2, v1, Lio/reactivex/internal/schedulers/TrampolineScheduler;

    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {v1}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    move-result-object v2

    .line 56
    .local v2, "worker":Lio/reactivex/Scheduler$Worker;
    invoke-virtual {v0, v2}, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;->setResource(Lio/reactivex/disposables/Disposable;)V

    .line 57
    iget-wide v9, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->initialDelay:J

    iget-wide v11, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->period:J

    iget-object v13, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v7, v2

    move-object v8, v0

    invoke-virtual/range {v7 .. v13}, Lio/reactivex/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    .line 58
    .end local v2    # "worker":Lio/reactivex/Scheduler$Worker;
    goto :goto_0

    .line 59
    :cond_0
    iget-wide v9, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->initialDelay:J

    iget-wide v11, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->period:J

    iget-object v13, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v7, v1

    move-object v8, v0

    invoke-virtual/range {v7 .. v13}, Lio/reactivex/Scheduler;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    .line 60
    .local v2, "d":Lio/reactivex/disposables/Disposable;
    invoke-virtual {v0, v2}, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;->setResource(Lio/reactivex/disposables/Disposable;)V

    .line 62
    .end local v2    # "d":Lio/reactivex/disposables/Disposable;
    :goto_0
    return-void
.end method
