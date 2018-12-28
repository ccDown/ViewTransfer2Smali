.class final Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;
.super Lio/reactivex/internal/subscribers/QueueDrainSubscriber;
.source "FlowableWindowTimed.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableWindowTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowSkipSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$Completion;,
        Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/QueueDrainSubscriber<",
        "TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/Flowable<",
        "TT;>;>;",
        "Lorg/reactivestreams/Subscription;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field volatile terminated:Z

.field final timeskip:J

.field final timespan:J

.field final unit:Ljava/util/concurrent/TimeUnit;

.field upstream:Lorg/reactivestreams/Subscription;

.field final windows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/reactivex/processors/UnicastProcessor<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final worker:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;I)V
    .locals 1
    .param p2, "timespan"    # J
    .param p4, "timeskip"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "worker"    # Lio/reactivex/Scheduler$Worker;
    .param p8, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lio/reactivex/Flowable<",
            "TT;>;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler$Worker;",
            "I)V"
        }
    .end annotation

    .line 615
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/Flowable<TT;>;>;"
    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/fuseable/SimplePlainQueue;)V

    .line 616
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->timespan:J

    .line 617
    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->timeskip:J

    .line 618
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 619
    iput-object p7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    .line 620
    iput p8, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->bufferSize:I

    .line 621
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->windows:Ljava/util/List;

    .line 622
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 706
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->cancelled:Z

    .line 707
    return-void
.end method

.method complete(Lio/reactivex/processors/UnicastProcessor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/UnicastProcessor<",
            "TT;>;)V"
        }
    .end annotation

    .line 714
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber<TT;>;"
    .local p1, "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;-><init>(Lio/reactivex/processors/UnicastProcessor;Z)V

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 715
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->drainLoop()V

    .line 718
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 710
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 711
    return-void
.end method

.method drainLoop()V
    .locals 19

    .line 722
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber<TT;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 723
    .local v1, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 724
    .local v2, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/Flowable<TT;>;>;"
    iget-object v3, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->windows:Ljava/util/List;

    .line 726
    .local v3, "ws":Ljava/util/List;, "Ljava/util/List<Lio/reactivex/processors/UnicastProcessor<TT;>;>;"
    const/4 v5, 0x1

    .line 731
    .local v5, "missed":I
    :cond_0
    :goto_0
    iget-boolean v6, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->terminated:Z

    if-eqz v6, :cond_1

    .line 732
    iget-object v4, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v4}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 733
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->dispose()V

    .line 734
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->clear()V

    .line 735
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 736
    return-void

    .line 739
    :cond_1
    iget-boolean v6, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->done:Z

    .line 741
    .local v6, "d":Z
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    .line 743
    .local v7, "v":Ljava/lang/Object;
    if-nez v7, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 744
    .local v8, "empty":Z
    :goto_1
    instance-of v9, v7, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;

    .line 746
    .local v9, "sw":Z
    if-eqz v6, :cond_6

    if-nez v8, :cond_3

    if-eqz v9, :cond_6

    .line 747
    :cond_3
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->clear()V

    .line 748
    iget-object v4, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->error:Ljava/lang/Throwable;

    .line 749
    .local v4, "e":Ljava/lang/Throwable;
    if-eqz v4, :cond_4

    .line 750
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/reactivex/processors/UnicastProcessor;

    .line 751
    .local v11, "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    invoke-virtual {v11, v4}, Lio/reactivex/processors/UnicastProcessor;->onError(Ljava/lang/Throwable;)V

    .line 752
    .end local v11    # "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    goto :goto_2

    .line 754
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/reactivex/processors/UnicastProcessor;

    .line 755
    .restart local v11    # "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    invoke-virtual {v11}, Lio/reactivex/processors/UnicastProcessor;->onComplete()V

    .line 756
    .end local v11    # "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    goto :goto_3

    .line 758
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 759
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->dispose()V

    .line 760
    return-void

    .line 763
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_6
    if-eqz v8, :cond_7

    .line 764
    nop

    .line 802
    .end local v6    # "d":Z
    .end local v7    # "v":Ljava/lang/Object;
    .end local v8    # "empty":Z
    .end local v9    # "sw":Z
    neg-int v6, v5

    invoke-virtual {v0, v6}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->leave(I)I

    move-result v5

    .line 803
    if-nez v5, :cond_0

    .line 804
    nop

    .line 807
    return-void

    .line 767
    .restart local v6    # "d":Z
    .restart local v7    # "v":Ljava/lang/Object;
    .restart local v8    # "empty":Z
    .restart local v9    # "sw":Z
    :cond_7
    if-eqz v9, :cond_d

    .line 768
    move-object v10, v7

    check-cast v10, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;

    .line 770
    .local v10, "work":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork<TT;>;"
    iget-boolean v11, v10, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;->open:Z

    if-eqz v11, :cond_b

    .line 771
    iget-boolean v11, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->cancelled:Z

    if-eqz v11, :cond_8

    .line 772
    nop

    .line 726
    move-object/from16 v18, v1

    move/from16 v17, v5

    const/4 v1, 0x1

    goto/16 :goto_9

    .line 775
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->requested()J

    move-result-wide v11

    .line 776
    .local v11, "r":J
    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-eqz v15, :cond_a

    .line 777
    iget v13, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->bufferSize:I

    invoke-static {v13}, Lio/reactivex/processors/UnicastProcessor;->create(I)Lio/reactivex/processors/UnicastProcessor;

    move-result-object v13

    .line 778
    .local v13, "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    invoke-interface {v2, v13}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 780
    const-wide v14, 0x7fffffffffffffffL

    cmp-long v16, v11, v14

    if-eqz v16, :cond_9

    .line 781
    const-wide/16 v14, 0x1

    invoke-virtual {v0, v14, v15}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->produced(J)J

    .line 784
    :cond_9
    iget-object v14, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    new-instance v15, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$Completion;

    invoke-direct {v15, v0, v13}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$Completion;-><init>(Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;Lio/reactivex/processors/UnicastProcessor;)V

    move/from16 v17, v5

    .end local v5    # "missed":I
    .local v17, "missed":I
    iget-wide v4, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->timespan:J

    move-object/from16 v18, v1

    .end local v1    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .local v18, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v14, v15, v4, v5, v1}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    .line 785
    .end local v13    # "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    goto :goto_4

    .line 786
    .end local v17    # "missed":I
    .end local v18    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .restart local v1    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .restart local v5    # "missed":I
    :cond_a
    move-object/from16 v18, v1

    move/from16 v17, v5

    .end local v1    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .end local v5    # "missed":I
    .restart local v17    # "missed":I
    .restart local v18    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    new-instance v1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v4, "Can\'t emit window due to lack of requests"

    invoke-direct {v1, v4}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 788
    .end local v11    # "r":J
    :goto_4
    goto :goto_5

    .line 789
    .end local v17    # "missed":I
    .end local v18    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .restart local v1    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .restart local v5    # "missed":I
    :cond_b
    move-object/from16 v18, v1

    move/from16 v17, v5

    .end local v1    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .end local v5    # "missed":I
    .restart local v17    # "missed":I
    .restart local v18    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    iget-object v1, v10, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;->w:Lio/reactivex/processors/UnicastProcessor;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 790
    iget-object v1, v10, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;->w:Lio/reactivex/processors/UnicastProcessor;

    invoke-virtual {v1}, Lio/reactivex/processors/UnicastProcessor;->onComplete()V

    .line 791
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->cancelled:Z

    if-eqz v1, :cond_c

    .line 792
    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->terminated:Z

    goto :goto_6

    .line 795
    .end local v10    # "work":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork<TT;>;"
    :cond_c
    :goto_5
    const/4 v1, 0x1

    :goto_6
    goto :goto_8

    .line 796
    .end local v17    # "missed":I
    .end local v18    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .restart local v1    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .restart local v5    # "missed":I
    :cond_d
    move-object/from16 v18, v1

    move/from16 v17, v5

    const/4 v1, 0x1

    .end local v1    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .end local v5    # "missed":I
    .restart local v17    # "missed":I
    .restart local v18    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/processors/UnicastProcessor;

    .line 797
    .local v5, "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    invoke-virtual {v5, v7}, Lio/reactivex/processors/UnicastProcessor;->onNext(Ljava/lang/Object;)V

    .line 798
    .end local v5    # "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    goto :goto_7

    .line 800
    .end local v6    # "d":Z
    .end local v7    # "v":Ljava/lang/Object;
    .end local v8    # "empty":Z
    .end local v9    # "sw":Z
    :cond_e
    :goto_8
    nop

    .line 726
    .end local v17    # "missed":I
    .end local v18    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .restart local v1    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .local v5, "missed":I
    :goto_9
    move/from16 v5, v17

    move-object/from16 v1, v18

    .end local v1    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    .end local v5    # "missed":I
    .restart local v17    # "missed":I
    .restart local v18    # "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<Ljava/lang/Object;>;"
    goto/16 :goto_0
.end method

.method public onComplete()V
    .locals 1

    .line 690
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->done:Z

    .line 691
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->drainLoop()V

    .line 695
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 696
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->dispose()V

    .line 697
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 678
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber<TT;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->error:Ljava/lang/Throwable;

    .line 679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->done:Z

    .line 680
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->drainLoop()V

    .line 684
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 685
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->dispose()V

    .line 686
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 660
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->fastEnter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->windows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/processors/UnicastProcessor;

    .line 662
    .local v1, "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    invoke-virtual {v1, p1}, Lio/reactivex/processors/UnicastProcessor;->onNext(Ljava/lang/Object;)V

    .line 663
    .end local v1    # "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    goto :goto_0

    .line 664
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->leave(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 665
    return-void

    .line 668
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 669
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->enter()Z

    move-result v0

    if-nez v0, :cond_2

    .line 670
    return-void

    .line 673
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->drainLoop()V

    .line 674
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 12
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 626
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 628
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 630
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 632
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->cancelled:Z

    if-eqz v0, :cond_0

    .line 633
    return-void

    .line 636
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->requested()J

    move-result-wide v7

    .line 637
    .local v7, "r":J
    const-wide/16 v0, 0x0

    cmp-long v2, v7, v0

    if-eqz v2, :cond_2

    .line 638
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->bufferSize:I

    invoke-static {v0}, Lio/reactivex/processors/UnicastProcessor;->create(I)Lio/reactivex/processors/UnicastProcessor;

    move-result-object v9

    .line 639
    .local v9, "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->windows:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, v9}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 642
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v0, v7, v10

    if-eqz v0, :cond_1

    .line 643
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->produced(J)J

    .line 645
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$Completion;

    invoke-direct {v1, p0, v9}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$Completion;-><init>(Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;Lio/reactivex/processors/UnicastProcessor;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->timespan:J

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    .line 647
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->timeskip:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->timeskip:J

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    .line 649
    invoke-interface {p1, v10, v11}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 651
    .end local v9    # "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    goto :goto_0

    .line 652
    :cond_2
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 653
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    new-instance v1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v2, "Could not emit the first window due to lack of requests"

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 656
    .end local v7    # "r":J
    :cond_3
    :goto_0
    return-void
.end method

.method public request(J)V
    .locals 0
    .param p1, "n"    # J

    .line 701
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->requested(J)V

    .line 702
    return-void
.end method

.method public run()V
    .locals 3

    .line 812
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber<TT;>;"
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->bufferSize:I

    invoke-static {v0}, Lio/reactivex/processors/UnicastProcessor;->create(I)Lio/reactivex/processors/UnicastProcessor;

    move-result-object v0

    .line 814
    .local v0, "w":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;-><init>(Lio/reactivex/processors/UnicastProcessor;Z)V

    .line 815
    .local v1, "sw":Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork;, "Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork<TT;>;"
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->cancelled:Z

    if-nez v2, :cond_0

    .line 816
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v2, v1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 818
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->enter()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 819
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->drainLoop()V

    .line 821
    :cond_1
    return-void
.end method
