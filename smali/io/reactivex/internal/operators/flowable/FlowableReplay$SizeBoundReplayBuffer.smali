.class final Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeBoundReplayBuffer;
.super Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;
.source "FlowableReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeBoundReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x51dae9f17ccbb88eL


# instance fields
.field final limit:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "limit"    # I

    .line 960
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeBoundReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeBoundReplayBuffer<TT;>;"
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;-><init>()V

    .line 961
    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeBoundReplayBuffer;->limit:I

    .line 962
    return-void
.end method


# virtual methods
.method truncate()V
    .locals 2

    .line 967
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeBoundReplayBuffer;, "Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeBoundReplayBuffer<TT;>;"
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeBoundReplayBuffer;->size:I

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeBoundReplayBuffer;->limit:I

    if-le v0, v1, :cond_0

    .line 968
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeBoundReplayBuffer;->removeFirst()V

    .line 970
    :cond_0
    return-void
.end method
