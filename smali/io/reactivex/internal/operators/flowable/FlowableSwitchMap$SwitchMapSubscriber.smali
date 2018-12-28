.class final Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableSwitchMap.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableSwitchMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SwitchMapSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field static final CANCELLED:Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x3072c973d405526bL


# instance fields
.field final active:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber<",
            "TT;TR;>;>;"
        }
    .end annotation
.end field

.field final bufferSize:I

.field volatile cancelled:Z

.field final delayErrors:Z

.field volatile done:Z

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final error:Lio/reactivex/internal/util/AtomicThrowable;

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field volatile unique:J

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 73
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;JI)V

    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->CANCELLED:Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;

    .line 74
    sget-object v0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->CANCELLED:Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;->cancel()V

    .line 75
    return-void
.end method

.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;IZ)V
    .locals 1
    .param p3, "bufferSize"    # I
    .param p4, "delayErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber<TT;TR;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TR;>;"
    .local p2, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lorg/reactivestreams/Publisher<+TR;>;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 82
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 83
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->mapper:Lio/reactivex/functions/Function;

    .line 84
    iput p3, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->bufferSize:I

    .line 85
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->delayErrors:Z

    .line 86
    new-instance v0, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {v0}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->error:Lio/reactivex/internal/util/AtomicThrowable;

    .line 87
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 171
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->cancelled:Z

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->cancelled:Z

    .line 173
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 175
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->disposeInner()V

    .line 177
    :cond_0
    return-void
.end method

.method disposeInner()V
    .locals 3

    .line 181
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;

    .line 182
    .local v0, "a":Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber<TT;TR;>;"
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->CANCELLED:Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;

    if-eq v0, v1, :cond_0

    .line 183
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->CANCELLED:Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;

    .line 184
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->CANCELLED:Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;->cancel()V

    .line 188
    :cond_0
    return-void
.end method

.method drain()V
    .locals 18

    .line 191
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber<TT;TR;>;"
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    return-void

    .line 195
    :cond_0
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 197
    .local v2, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TR;>;"
    const/4 v0, 0x1

    .local v0, "missing":I
    :goto_0
    move v4, v0

    .line 201
    .end local v0    # "missing":I
    .local v4, "missing":I
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->cancelled:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 203
    return-void

    .line 206
    :cond_1
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->done:Z

    if-eqz v0, :cond_5

    .line 207
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->delayErrors:Z

    if-eqz v0, :cond_3

    .line 208
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 209
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 210
    .local v0, "err":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 211
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v3}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 213
    :cond_2
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 215
    :goto_1
    return-void

    .line 218
    .end local v0    # "err":Ljava/lang/Throwable;
    :cond_3
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 219
    .restart local v0    # "err":Ljava/lang/Throwable;
    if-eqz v0, :cond_4

    .line 220
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->disposeInner()V

    .line 221
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v3}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 222
    return-void

    .line 224
    :cond_4
    iget-object v6, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    .line 225
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 226
    return-void

    .line 231
    .end local v0    # "err":Ljava/lang/Throwable;
    :cond_5
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;

    .line 232
    .local v6, "inner":Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber<TT;TR;>;"
    if-eqz v6, :cond_6

    iget-object v0, v6, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    goto :goto_2

    :cond_6
    move-object v0, v5

    :goto_2
    move-object v7, v0

    .line 233
    .local v7, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TR;>;"
    if-eqz v7, :cond_16

    .line 234
    iget-boolean v0, v6, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;->done:Z

    if-eqz v0, :cond_a

    .line 235
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->delayErrors:Z

    if-nez v0, :cond_9

    .line 236
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 237
    .restart local v0    # "err":Ljava/lang/Throwable;
    if-eqz v0, :cond_7

    .line 238
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->disposeInner()V

    .line 239
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v3}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 240
    return-void

    .line 242
    :cond_7
    invoke-interface {v7}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 243
    iget-object v8, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8, v6, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 244
    goto/16 :goto_9

    .line 246
    .end local v0    # "err":Ljava/lang/Throwable;
    :cond_8
    goto :goto_3

    .line 247
    :cond_9
    invoke-interface {v7}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 248
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v6, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 249
    goto/16 :goto_9

    .line 254
    :cond_a
    :goto_3
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    .line 255
    .local v8, "r":J
    const-wide/16 v10, 0x0

    .line 256
    .local v10, "e":J
    const/4 v12, 0x0

    const/4 v0, 0x0

    .local v0, "retry":Z
    :goto_4
    move v13, v0

    .line 258
    .end local v0    # "retry":Z
    .local v13, "retry":Z
    cmp-long v0, v10, v8

    if-eqz v0, :cond_13

    .line 259
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->cancelled:Z

    if-eqz v0, :cond_b

    .line 260
    return-void

    .line 263
    :cond_b
    iget-boolean v0, v6, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;->done:Z

    move v14, v0

    .line 267
    .local v14, "d":Z
    :try_start_0
    invoke-interface {v7}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .local v0, "v":Ljava/lang/Object;, "TR;"
    goto :goto_5

    .line 268
    .end local v0    # "v":Ljava/lang/Object;, "TR;"
    :catch_0
    move-exception v0

    move-object v15, v0

    move-object v0, v15

    .line 269
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 270
    invoke-virtual {v6}, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;->cancel()V

    .line 271
    iget-object v15, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v15, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 272
    const/4 v14, 0x1

    .line 273
    move-object v0, v5

    .line 275
    .local v0, "v":Ljava/lang/Object;, "TR;"
    :goto_5
    if-nez v0, :cond_c

    const/4 v15, 0x1

    goto :goto_6

    :cond_c
    const/4 v15, 0x0

    .line 277
    .local v15, "empty":Z
    :goto_6
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v6, v3, :cond_d

    .line 278
    const/4 v13, 0x1

    .line 279
    goto :goto_8

    .line 282
    :cond_d
    if-eqz v14, :cond_11

    .line 283
    iget-boolean v3, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->delayErrors:Z

    if-nez v3, :cond_10

    .line 284
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v3}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 285
    .local v3, "err":Ljava/lang/Throwable;
    if-eqz v3, :cond_e

    .line 286
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v5}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 287
    return-void

    .line 289
    :cond_e
    if-eqz v15, :cond_f

    .line 290
    iget-object v12, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v12, v6, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 291
    const/4 v13, 0x1

    .line 292
    goto :goto_8

    .line 294
    .end local v3    # "err":Ljava/lang/Throwable;
    :cond_f
    goto :goto_7

    .line 295
    :cond_10
    if-eqz v15, :cond_11

    .line 296
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v6, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 297
    const/4 v13, 0x1

    .line 298
    goto :goto_8

    .line 303
    :cond_11
    :goto_7
    if-eqz v15, :cond_12

    .line 304
    goto :goto_8

    .line 307
    :cond_12
    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 309
    const-wide/16 v16, 0x1

    add-long v10, v10, v16

    .line 310
    .end local v0    # "v":Ljava/lang/Object;, "TR;"
    .end local v14    # "d":Z
    .end local v15    # "empty":Z
    nop

    .line 256
    move v0, v13

    goto :goto_4

    .line 312
    :cond_13
    :goto_8
    const-wide/16 v14, 0x0

    cmp-long v0, v10, v14

    if-eqz v0, :cond_15

    .line 313
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->cancelled:Z

    if-nez v0, :cond_15

    .line 314
    const-wide v14, 0x7fffffffffffffffL

    cmp-long v0, v8, v14

    if-eqz v0, :cond_14

    .line 315
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v14, v10

    invoke-virtual {v0, v14, v15}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 317
    :cond_14
    invoke-virtual {v6}, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    invoke-interface {v0, v10, v11}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 321
    :cond_15
    if-eqz v13, :cond_16

    .line 322
    nop

    .line 197
    .end local v6    # "inner":Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber<TT;TR;>;"
    .end local v7    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TR;>;"
    .end local v8    # "r":J
    .end local v10    # "e":J
    .end local v13    # "retry":Z
    :goto_9
    move v0, v4

    goto/16 :goto_0

    .line 326
    .restart local v6    # "inner":Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber<TT;TR;>;"
    .restart local v7    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TR;>;"
    :cond_16
    neg-int v0, v4

    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->addAndGet(I)I

    move-result v0

    .line 327
    .end local v4    # "missing":I
    .local v0, "missing":I
    if-nez v0, :cond_17

    .line 328
    nop

    .line 331
    .end local v6    # "inner":Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber<TT;TR;>;"
    .end local v7    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TR;>;"
    return-void

    .line 330
    :cond_17
    goto/16 :goto_0
.end method

.method public onComplete()V
    .locals 1

    .line 150
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 151
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->done:Z

    .line 154
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->drain()V

    .line 155
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 137
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->done:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->delayErrors:Z

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->disposeInner()V

    .line 141
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->done:Z

    .line 142
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->drain()V

    goto :goto_0

    .line 144
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 146
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

    .line 99
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 100
    return-void

    .line 103
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->unique:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 104
    .local v0, "c":J
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->unique:J

    .line 106
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;

    .line 107
    .local v2, "inner":Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber<TT;TR;>;"
    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;->cancel()V

    .line 113
    :cond_1
    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v3, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "The publisher returned is null"

    invoke-static {v3, v4}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/reactivestreams/Publisher;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .local v3, "p":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<+TR;>;"
    nop

    .line 118
    nop

    .line 121
    new-instance v4, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;

    iget v5, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->bufferSize:I

    invoke-direct {v4, p0, v0, v1, v5}, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;JI)V

    .line 124
    .local v4, "nextInner":Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber<TT;TR;>;"
    :cond_2
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;

    .line 125
    sget-object v5, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->CANCELLED:Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;

    if-ne v2, v5, :cond_3

    .line 126
    goto :goto_0

    .line 128
    :cond_3
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->active:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 129
    invoke-interface {v3, v4}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 130
    nop

    .line 133
    :goto_0
    return-void

    .line 114
    .end local v3    # "p":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<+TR;>;"
    .end local v4    # "nextInner":Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber<TT;TR;>;"
    :catch_0
    move-exception v3

    .line 115
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 116
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v4}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 117
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 118
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 91
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 93
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 95
    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 5
    .param p1, "n"    # J

    .line 159
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber<TT;TR;>;"
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 161
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->unique:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 162
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    const-wide v1, 0x7fffffffffffffffL

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber;->drain()V

    .line 167
    :cond_1
    :goto_0
    return-void
.end method
