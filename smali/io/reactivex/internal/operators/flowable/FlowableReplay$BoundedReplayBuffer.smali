.class Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "FlowableReplay.java"

# interfaces
.implements Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BoundedReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;",
        ">;",
        "Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2090aef8efde5e9eL


# instance fields
.field index:J

.field size:I

.field tail:Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;


# direct methods
.method constructor <init>()V
    .locals 4

    .line 736
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 737
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;-><init>(Ljava/lang/Object;J)V

    .line 738
    .local v0, "n":Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->tail:Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    .line 739
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->set(Ljava/lang/Object;)V

    .line 740
    return-void
.end method


# virtual methods
.method final addLast(Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;)V
    .locals 1
    .param p1, "n"    # Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    .line 747
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->tail:Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->set(Ljava/lang/Object;)V

    .line 748
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->tail:Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    .line 749
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->size:I

    .line 750
    return-void
.end method

.method final collect(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TT;>;)V"
        }
    .end annotation

    .line 922
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer<TT;>;"
    .local p1, "output":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->getHead()Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    move-result-object v0

    .line 924
    .local v0, "n":Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    .line 925
    .local v1, "next":Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;
    if-eqz v1, :cond_1

    .line 926
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->value:Ljava/lang/Object;

    .line 927
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 928
    .local v3, "v":Ljava/lang/Object;
    invoke-static {v3}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 929
    goto :goto_1

    .line 931
    :cond_0
    invoke-static {v3}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 932
    move-object v0, v1

    .line 936
    .end local v1    # "next":Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    goto :goto_0

    .line 937
    :cond_1
    :goto_1
    return-void
.end method

.method public final complete()V
    .locals 6

    .line 801
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer<TT;>;"
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 802
    .local v0, "o":Ljava/lang/Object;
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->index:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->index:J

    invoke-direct {v1, v0, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;-><init>(Ljava/lang/Object;J)V

    .line 803
    .local v1, "n":Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->addLast(Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;)V

    .line 804
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->truncateFinal()V

    .line 805
    return-void
.end method

.method enterTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .line 896
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer<TT;>;"
    return-object p1
.end method

.method public final error(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 793
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer<TT;>;"
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 794
    .local v0, "o":Ljava/lang/Object;
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->index:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->index:J

    invoke-direct {v1, v0, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;-><init>(Ljava/lang/Object;J)V

    .line 795
    .local v1, "n":Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->addLast(Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;)V

    .line 796
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->truncateFinal()V

    .line 797
    return-void
.end method

.method getHead()Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;
    .locals 1

    .line 946
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    return-object v0
.end method

.method hasCompleted()Z
    .locals 1

    .line 942
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->tail:Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->tail:Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasError()Z
    .locals 1

    .line 939
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->tail:Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->tail:Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .line 905
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer<TT;>;"
    return-object p1
.end method

.method public final next(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 785
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 786
    .local v0, "o":Ljava/lang/Object;
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->index:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->index:J

    invoke-direct {v1, v0, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;-><init>(Ljava/lang/Object;J)V

    .line 787
    .local v1, "n":Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->addLast(Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;)V

    .line 788
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->truncate()V

    .line 789
    return-void
.end method

.method final removeFirst()V
    .locals 4

    .line 755
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    .line 756
    .local v0, "head":Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    .line 757
    .local v1, "next":Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;
    if-eqz v1, :cond_0

    .line 760
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->size:I

    .line 763
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->setFirst(Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;)V

    .line 764
    return-void

    .line 758
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Empty list!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method final removeSome(I)V
    .locals 2
    .param p1, "n"    # I

    .line 766
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    .line 767
    .local v0, "head":Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;
    :goto_0
    if-lez p1, :cond_0

    .line 768
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    .line 769
    add-int/lit8 p1, p1, -0x1

    .line 770
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->size:I

    goto :goto_0

    .line 773
    :cond_0
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->setFirst(Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;)V

    .line 774
    return-void
.end method

.method public final replay(Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 818
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer<TT;>;"
    .local p1, "output":Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription<TT;>;"
    monitor-enter p1

    .line 819
    :try_start_0
    iget-boolean v0, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->emitting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 820
    iput-boolean v1, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->missed:Z

    .line 821
    monitor-exit p1

    return-void

    .line 823
    :cond_0
    iput-boolean v1, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->emitting:Z

    .line 824
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 826
    :goto_0
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    return-void

    .line 830
    :cond_1
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->get()J

    move-result-wide v2

    .line 831
    .local v2, "r":J
    const-wide v4, 0x7fffffffffffffffL

    const/4 v0, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 832
    .local v4, "unbounded":Z
    :goto_1
    const-wide/16 v5, 0x0

    .line 834
    .local v5, "e":J
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->index()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    .line 835
    .local v7, "node":Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;
    if-nez v7, :cond_3

    .line 836
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->getHead()Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    move-result-object v7

    .line 837
    iput-object v7, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->index:Ljava/lang/Object;

    .line 839
    iget-object v8, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v9, v7, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->index:J

    invoke-static {v8, v9, v10}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 842
    :cond_3
    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v10, v2, v8

    if-eqz v10, :cond_7

    .line 843
    invoke-virtual {v7}, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    .line 844
    .local v10, "v":Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;
    if-eqz v10, :cond_7

    .line 845
    iget-object v8, v10, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v8}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 847
    .local v8, "o":Ljava/lang/Object;
    const/4 v9, 0x0

    :try_start_1
    iget-object v11, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->child:Lorg/reactivestreams/Subscriber;

    invoke-static {v8, v11}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lorg/reactivestreams/Subscriber;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 848
    iput-object v9, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->index:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 849
    return-void

    .line 859
    :cond_4
    nop

    .line 860
    const-wide/16 v11, 0x1

    add-long/2addr v5, v11

    .line 861
    sub-long/2addr v2, v11

    .line 862
    move-object v7, v10

    .line 866
    .end local v8    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->isDisposed()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 867
    return-void

    .line 869
    .end local v10    # "v":Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;
    :cond_5
    goto :goto_2

    .line 851
    .restart local v8    # "o":Ljava/lang/Object;
    .restart local v10    # "v":Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;
    :catch_0
    move-exception v0

    .line 852
    .local v0, "err":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 853
    iput-object v9, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->index:Ljava/lang/Object;

    .line 854
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->dispose()V

    .line 855
    invoke-static {v8}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v8}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 856
    iget-object v1, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->child:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 858
    :cond_6
    return-void

    .line 871
    .end local v0    # "err":Ljava/lang/Throwable;
    .end local v8    # "o":Ljava/lang/Object;
    .end local v10    # "v":Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;
    :cond_7
    cmp-long v10, v5, v8

    if-eqz v10, :cond_8

    .line 872
    iput-object v7, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->index:Ljava/lang/Object;

    .line 873
    if-nez v4, :cond_8

    .line 874
    invoke-virtual {p1, v5, v6}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->produced(J)J

    .line 878
    :cond_8
    monitor-enter p1

    .line 879
    :try_start_2
    iget-boolean v8, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->missed:Z

    if-nez v8, :cond_9

    .line 880
    iput-boolean v0, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->emitting:Z

    .line 881
    monitor-exit p1

    return-void

    .line 883
    :cond_9
    iput-boolean v0, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->missed:Z

    .line 884
    monitor-exit p1

    .line 885
    .end local v2    # "r":J
    .end local v4    # "unbounded":Z
    .end local v5    # "e":J
    .end local v7    # "node":Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;
    goto/16 :goto_0

    .line 884
    .restart local v2    # "r":J
    .restart local v4    # "unbounded":Z
    .restart local v5    # "e":J
    .restart local v7    # "node":Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 824
    .end local v2    # "r":J
    .end local v4    # "unbounded":Z
    .end local v5    # "e":J
    .end local v7    # "node":Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method final setFirst(Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;)V
    .locals 0
    .param p1, "n"    # Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    .line 780
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->set(Ljava/lang/Object;)V

    .line 781
    return-void
.end method

.method final trimHead()V
    .locals 5

    .line 808
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    .line 809
    .local v0, "head":Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 810
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;-><init>(Ljava/lang/Object;J)V

    .line 811
    .local v1, "n":Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->lazySet(Ljava/lang/Object;)V

    .line 812
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->set(Ljava/lang/Object;)V

    .line 814
    .end local v1    # "n":Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;
    :cond_0
    return-void
.end method

.method truncate()V
    .locals 0

    .line 913
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer<TT;>;"
    return-void
.end method

.method truncateFinal()V
    .locals 0

    .line 919
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;->trimHead()V

    .line 920
    return-void
.end method
