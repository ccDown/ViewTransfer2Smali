.class final Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;
.super Ljava/util/ArrayList;
.source "FlowableReplay.java"

# interfaces
.implements Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnboundedReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x62057d556fa2a2d8L


# instance fields
.field volatile size:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "capacityHint"    # I

    .line 622
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 623
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .line 639
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer<TT;>;"
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    .line 640
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    .line 641
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 633
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer<TT;>;"
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    .line 634
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    .line 635
    return-void
.end method

.method public next(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 627
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    .line 628
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    .line 629
    return-void
.end method

.method public replay(Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 645
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer<TT;>;"
    .local p1, "output":Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription<TT;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p1

    .line 646
    :try_start_0
    iget-boolean v0, v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->emitting:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 647
    iput-boolean v3, v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->missed:Z

    .line 648
    monitor-exit p1

    return-void

    .line 650
    :cond_0
    iput-boolean v3, v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->emitting:Z

    .line 651
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 652
    iget-object v0, v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->child:Lorg/reactivestreams/Subscriber;

    .local v0, "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    :goto_0
    move-object v3, v0

    .line 655
    .end local v0    # "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local v3, "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    invoke-virtual/range {p1 .. p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    return-void

    .line 658
    :cond_1
    iget v4, v1, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->size:I

    .line 660
    .local v4, "sourceIndex":I
    invoke-virtual/range {p1 .. p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->index()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Integer;

    .line 661
    .local v5, "destinationIndexObject":Ljava/lang/Integer;
    const/4 v0, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 663
    .local v6, "destinationIndex":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->get()J

    move-result-wide v7

    .line 664
    .local v7, "r":J
    move-wide v9, v7

    .line 665
    .local v9, "r0":J
    const-wide/16 v11, 0x0

    move-wide v13, v7

    move v8, v6

    move-wide v6, v11

    .line 667
    .end local v7    # "r":J
    .local v6, "e":J
    .local v8, "destinationIndex":I
    .local v13, "r":J
    :goto_2
    cmp-long v15, v13, v11

    if-eqz v15, :cond_6

    if-ge v8, v4, :cond_6

    .line 668
    invoke-virtual {v1, v8}, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 670
    .local v15, "o":Ljava/lang/Object;
    :try_start_1
    invoke-static {v15, v3}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lorg/reactivestreams/Subscriber;)Z

    move-result v16
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v16, :cond_3

    .line 671
    return-void

    .line 680
    :cond_3
    nop

    .line 681
    invoke-virtual/range {p1 .. p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->isDisposed()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 682
    return-void

    .line 684
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 685
    const-wide/16 v16, 0x1

    sub-long v13, v13, v16

    .line 686
    add-long v6, v6, v16

    .line 687
    .end local v15    # "o":Ljava/lang/Object;
    goto :goto_2

    .line 673
    .restart local v15    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 674
    .local v0, "err":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 675
    invoke-virtual/range {p1 .. p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->dispose()V

    .line 676
    invoke-static {v15}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-static {v15}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 677
    invoke-interface {v3, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 679
    :cond_5
    return-void

    .line 688
    .end local v0    # "err":Ljava/lang/Throwable;
    .end local v15    # "o":Ljava/lang/Object;
    :cond_6
    cmp-long v15, v6, v11

    if-eqz v15, :cond_7

    .line 689
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->index:Ljava/lang/Object;

    .line 690
    const-wide v11, 0x7fffffffffffffffL

    cmp-long v15, v9, v11

    if-eqz v15, :cond_7

    .line 691
    invoke-virtual {v2, v6, v7}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->produced(J)J

    .line 695
    :cond_7
    monitor-enter p1

    .line 696
    :try_start_2
    iget-boolean v11, v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->missed:Z

    if-nez v11, :cond_8

    .line 697
    iput-boolean v0, v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->emitting:Z

    .line 698
    monitor-exit p1

    return-void

    .line 700
    :cond_8
    iput-boolean v0, v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->missed:Z

    .line 701
    monitor-exit p1

    .line 702
    .end local v4    # "sourceIndex":I
    .end local v5    # "destinationIndexObject":Ljava/lang/Integer;
    .end local v6    # "e":J
    .end local v8    # "destinationIndex":I
    .end local v9    # "r0":J
    .end local v13    # "r":J
    nop

    .line 652
    move-object v0, v3

    goto/16 :goto_0

    .line 701
    .restart local v4    # "sourceIndex":I
    .restart local v5    # "destinationIndexObject":Ljava/lang/Integer;
    .restart local v6    # "e":J
    .restart local v8    # "destinationIndex":I
    .restart local v9    # "r0":J
    .restart local v13    # "r":J
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 651
    .end local v3    # "child":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .end local v4    # "sourceIndex":I
    .end local v5    # "destinationIndexObject":Ljava/lang/Integer;
    .end local v6    # "e":J
    .end local v8    # "destinationIndex":I
    .end local v9    # "r0":J
    .end local v13    # "r":J
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
