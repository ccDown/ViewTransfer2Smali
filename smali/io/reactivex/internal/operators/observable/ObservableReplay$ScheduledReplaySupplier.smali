.class final Lio/reactivex/internal/operators/observable/ObservableReplay$ScheduledReplaySupplier;
.super Ljava/lang/Object;
.source "ObservableReplay.java"

# interfaces
.implements Lio/reactivex/internal/operators/observable/ObservableReplay$BufferSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScheduledReplaySupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/internal/operators/observable/ObservableReplay$BufferSupplier<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final bufferSize:I

.field private final maxAge:J

.field private final scheduler:Lio/reactivex/Scheduler;

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0
    .param p1, "bufferSize"    # I
    .param p2, "maxAge"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lio/reactivex/Scheduler;

    .line 955
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$ScheduledReplaySupplier;, "Lio/reactivex/internal/operators/observable/ObservableReplay$ScheduledReplaySupplier<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 956
    iput p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ScheduledReplaySupplier;->bufferSize:I

    .line 957
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ScheduledReplaySupplier;->maxAge:J

    .line 958
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ScheduledReplaySupplier;->unit:Ljava/util/concurrent/TimeUnit;

    .line 959
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ScheduledReplaySupplier;->scheduler:Lio/reactivex/Scheduler;

    .line 960
    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer<",
            "TT;>;"
        }
    .end annotation

    .line 964
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$ScheduledReplaySupplier;, "Lio/reactivex/internal/operators/observable/ObservableReplay$ScheduledReplaySupplier<TT;>;"
    new-instance v6, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ScheduledReplaySupplier;->bufferSize:I

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ScheduledReplaySupplier;->maxAge:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ScheduledReplaySupplier;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ScheduledReplaySupplier;->scheduler:Lio/reactivex/Scheduler;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    return-object v6
.end method
