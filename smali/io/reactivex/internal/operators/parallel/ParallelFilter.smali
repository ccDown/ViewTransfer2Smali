.class public final Lio/reactivex/internal/operators/parallel/ParallelFilter;
.super Lio/reactivex/parallel/ParallelFlowable;
.source "ParallelFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/ParallelFilter$ParallelFilterConditionalSubscriber;,
        Lio/reactivex/internal/operators/parallel/ParallelFilter$ParallelFilterSubscriber;,
        Lio/reactivex/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/parallel/ParallelFlowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final predicate:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex/parallel/ParallelFlowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/parallel/ParallelFlowable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/ParallelFlowable<",
            "TT;>;",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelFilter;, "Lio/reactivex/internal/operators/parallel/ParallelFilter<TT;>;"
    .local p1, "source":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p2, "predicate":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<-TT;>;"
    invoke-direct {p0}, Lio/reactivex/parallel/ParallelFlowable;-><init>()V

    .line 37
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFilter;->source:Lio/reactivex/parallel/ParallelFlowable;

    .line 38
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelFilter;->predicate:Lio/reactivex/functions/Predicate;

    .line 39
    return-void
.end method


# virtual methods
.method public parallelism()I
    .locals 1

    .line 65
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelFilter;, "Lio/reactivex/internal/operators/parallel/ParallelFilter<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilter;->source:Lio/reactivex/parallel/ParallelFlowable;

    invoke-virtual {v0}, Lio/reactivex/parallel/ParallelFlowable;->parallelism()I

    move-result v0

    return v0
.end method

.method public subscribe([Lorg/reactivestreams/Subscriber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelFilter;, "Lio/reactivex/internal/operators/parallel/ParallelFilter<TT;>;"
    .local p1, "subscribers":[Lorg/reactivestreams/Subscriber;, "[Lorg/reactivestreams/Subscriber<-TT;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelFilter;->validate([Lorg/reactivestreams/Subscriber;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    return-void

    .line 47
    :cond_0
    array-length v0, p1

    .line 49
    .local v0, "n":I
    new-array v1, v0, [Lorg/reactivestreams/Subscriber;

    .line 51
    .local v1, "parents":[Lorg/reactivestreams/Subscriber;, "[Lorg/reactivestreams/Subscriber<-TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 52
    aget-object v3, p1, v2

    .line 53
    .local v3, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    instance-of v4, v3, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    if-eqz v4, :cond_1

    .line 54
    new-instance v4, Lio/reactivex/internal/operators/parallel/ParallelFilter$ParallelFilterConditionalSubscriber;

    move-object v5, v3

    check-cast v5, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    iget-object v6, p0, Lio/reactivex/internal/operators/parallel/ParallelFilter;->predicate:Lio/reactivex/functions/Predicate;

    invoke-direct {v4, v5, v6}, Lio/reactivex/internal/operators/parallel/ParallelFilter$ParallelFilterConditionalSubscriber;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Predicate;)V

    aput-object v4, v1, v2

    goto :goto_1

    .line 56
    :cond_1
    new-instance v4, Lio/reactivex/internal/operators/parallel/ParallelFilter$ParallelFilterSubscriber;

    iget-object v5, p0, Lio/reactivex/internal/operators/parallel/ParallelFilter;->predicate:Lio/reactivex/functions/Predicate;

    invoke-direct {v4, v3, v5}, Lio/reactivex/internal/operators/parallel/ParallelFilter$ParallelFilterSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Predicate;)V

    aput-object v4, v1, v2

    .line 51
    .end local v3    # "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lio/reactivex/internal/operators/parallel/ParallelFilter;->source:Lio/reactivex/parallel/ParallelFlowable;

    invoke-virtual {v2, v1}, Lio/reactivex/parallel/ParallelFlowable;->subscribe([Lorg/reactivestreams/Subscriber;)V

    .line 61
    return-void
.end method
