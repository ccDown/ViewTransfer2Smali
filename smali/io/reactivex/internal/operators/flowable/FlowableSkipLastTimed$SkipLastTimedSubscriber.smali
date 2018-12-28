.class final Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableSkipLastTimed.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SkipLastTimedSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4eca0434695949bbL


# instance fields
.field volatile cancelled:Z

.field final delayError:Z

.field volatile done:Z

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field error:Ljava/lang/Throwable;

.field final queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final scheduler:Lio/reactivex/Scheduler;

.field final time:J

.field final unit:Ljava/util/concurrent/TimeUnit;

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;IZ)V
    .locals 1
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lio/reactivex/Scheduler;
    .param p6, "bufferSize"    # I
    .param p7, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            "IZ)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 67
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 68
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->time:J

    .line 69
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 70
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->scheduler:Lio/reactivex/Scheduler;

    .line 71
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-direct {v0, p6}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 72
    iput-boolean p7, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->delayError:Z

    .line 73
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 116
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->cancelled:Z

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->cancelled:Z

    .line 118
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 120
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 124
    :cond_0
    return-void
.end method

.method checkTerminated(ZZLorg/reactivestreams/Subscriber;Z)Z
    .locals 3
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .param p4, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;Z)Z"
        }
    .end annotation

    .line 187
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber<TT;>;"
    .local p3, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->cancelled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 189
    return v1

    .line 191
    :cond_0
    if-eqz p1, :cond_4

    .line 192
    if-eqz p4, :cond_2

    .line 193
    if-eqz p2, :cond_4

    .line 194
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->error:Ljava/lang/Throwable;

    .line 195
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 196
    invoke-interface {p3, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-interface {p3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 200
    :goto_0
    return v1

    .line 203
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->error:Ljava/lang/Throwable;

    .line 204
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    .line 205
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 206
    invoke-interface {p3, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 207
    return v1

    .line 209
    :cond_3
    if-eqz p2, :cond_4

    .line 210
    invoke-interface {p3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 211
    return v1

    .line 215
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method drain()V
    .locals 25

    .line 127
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber<TT;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    return-void

    .line 131
    :cond_0
    const/4 v1, 0x1

    .line 133
    .local v1, "missed":I
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 134
    .local v2, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v3, v0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 135
    .local v3, "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<Ljava/lang/Object;>;"
    iget-boolean v4, v0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->delayError:Z

    .line 136
    .local v4, "delayError":Z
    iget-object v5, v0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 137
    .local v5, "unit":Ljava/util/concurrent/TimeUnit;
    iget-object v6, v0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->scheduler:Lio/reactivex/Scheduler;

    .line 138
    .local v6, "scheduler":Lio/reactivex/Scheduler;
    iget-wide v7, v0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->time:J

    .line 142
    .local v7, "time":J
    :goto_0
    iget-object v9, v0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    .line 143
    .local v9, "r":J
    const-wide/16 v13, 0x0

    .line 145
    .local v13, "e":J
    :goto_1
    cmp-long v15, v13, v9

    if-eqz v15, :cond_5

    .line 146
    iget-boolean v15, v0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->done:Z

    .line 148
    .local v15, "d":Z
    invoke-virtual {v3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    .line 150
    .local v16, "ts":Ljava/lang/Long;
    if-nez v16, :cond_1

    const/16 v17, 0x1

    goto :goto_2

    :cond_1
    const/16 v17, 0x0

    .line 152
    .local v17, "empty":Z
    :goto_2
    invoke-virtual {v6, v5}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v18

    .line 154
    .local v18, "now":J
    if-nez v17, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sub-long v22, v18, v7

    cmp-long v24, v20, v22

    if-lez v24, :cond_2

    .line 155
    const/16 v17, 0x1

    .line 158
    .end local v17    # "empty":Z
    .local v11, "empty":Z
    :cond_2
    move/from16 v11, v17

    invoke-virtual {v0, v15, v11, v2, v4}, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->checkTerminated(ZZLorg/reactivestreams/Subscriber;Z)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 159
    return-void

    .line 162
    :cond_3
    if-eqz v11, :cond_4

    .line 163
    goto :goto_3

    .line 166
    :cond_4
    invoke-virtual {v3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    .line 168
    invoke-virtual {v3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v12

    .line 170
    .local v12, "v":Ljava/lang/Object;, "TT;"
    invoke-interface {v2, v12}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 172
    const-wide/16 v20, 0x1

    add-long v13, v13, v20

    .line 173
    .end local v11    # "empty":Z
    .end local v12    # "v":Ljava/lang/Object;, "TT;"
    .end local v15    # "d":Z
    .end local v16    # "ts":Ljava/lang/Long;
    .end local v18    # "now":J
    goto :goto_1

    .line 175
    :cond_5
    :goto_3
    const-wide/16 v11, 0x0

    cmp-long v15, v13, v11

    if-eqz v15, :cond_6

    .line 176
    iget-object v11, v0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v11, v13, v14}, Lio/reactivex/internal/util/BackpressureHelper;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 179
    :cond_6
    neg-int v11, v1

    invoke-virtual {v0, v11}, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->addAndGet(I)I

    move-result v1

    .line 180
    if-nez v1, :cond_7

    .line 181
    nop

    .line 184
    .end local v9    # "r":J
    .end local v13    # "e":J
    return-void

    .line 183
    :cond_7
    goto :goto_0
.end method

.method public onComplete()V
    .locals 1

    .line 102
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->done:Z

    .line 103
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->drain()V

    .line 104
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 95
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber<TT;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->error:Ljava/lang/Throwable;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->done:Z

    .line 97
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->drain()V

    .line 98
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 88
    .local v0, "now":J
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->drain()V

    .line 91
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 77
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 80
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 82
    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 108
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber<TT;>;"
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 110
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;->drain()V

    .line 112
    :cond_0
    return-void
.end method
