.class public abstract Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SinglePostCompleteSubscriber.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field static final COMPLETE_MASK:J = -0x8000000000000000L

.field static final REQUEST_MASK:J = 0x7fffffffffffffffL

.field private static final serialVersionUID:J = 0x6de1ba4ffe60ebe0L


# instance fields
.field protected final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field protected produced:J

.field protected upstream:Lorg/reactivestreams/Subscription;

.field protected value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;, "Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber<TT;TR;>;"
    .local p1, "downstream":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TR;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 52
    iput-object p1, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 53
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 124
    .local p0, "this":Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;, "Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 125
    return-void
.end method

.method protected final complete(Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;, "Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber<TT;TR;>;"
    .local p1, "n":Ljava/lang/Object;, "TR;"
    iget-wide v0, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->produced:J

    .line 69
    .local v0, "p":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 70
    invoke-static {p0, v0, v1}, Lio/reactivex/internal/util/BackpressureHelper;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 74
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->get()J

    move-result-wide v4

    .line 75
    .local v4, "r":J
    const-wide/high16 v6, -0x8000000000000000L

    and-long v8, v4, v6

    cmp-long v10, v8, v2

    if-eqz v10, :cond_1

    .line 76
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->onDrop(Ljava/lang/Object;)V

    .line 77
    return-void

    .line 79
    :cond_1
    const-wide v8, 0x7fffffffffffffffL

    and-long/2addr v8, v4

    cmp-long v10, v8, v2

    if-eqz v10, :cond_2

    .line 80
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v2, v3}, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->lazySet(J)V

    .line 81
    iget-object v2, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 82
    iget-object v2, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 83
    return-void

    .line 85
    :cond_2
    iput-object p1, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->value:Ljava/lang/Object;

    .line 86
    invoke-virtual {p0, v2, v3, v6, v7}, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 87
    return-void

    .line 89
    :cond_3
    const/4 v6, 0x0

    iput-object v6, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->value:Ljava/lang/Object;

    .line 90
    .end local v4    # "r":J
    goto :goto_0
.end method

.method protected onDrop(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;, "Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber<TT;TR;>;"
    .local p1, "n":Ljava/lang/Object;, "TR;"
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 57
    .local p0, "this":Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;, "Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iput-object p1, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 59
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 61
    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 9
    .param p1, "n"    # J

    .line 103
    .local p0, "this":Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;, "Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber<TT;TR;>;"
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->get()J

    move-result-wide v0

    .line 106
    .local v0, "r":J
    const-wide/high16 v2, -0x8000000000000000L

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 107
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v2, v3, v4, v5}, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    iget-object v2, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    iget-object v3, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->value:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 109
    iget-object v2, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_1

    .line 113
    :cond_0
    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide v2

    .line 114
    .local v2, "u":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    iget-object v4, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v4, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 116
    goto :goto_1

    .line 118
    .end local v0    # "r":J
    .end local v2    # "u":J
    :cond_1
    goto :goto_0

    .line 120
    :cond_2
    :goto_1
    return-void
.end method
