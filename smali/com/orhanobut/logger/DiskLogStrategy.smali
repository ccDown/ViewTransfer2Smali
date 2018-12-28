.class public Lcom/orhanobut/logger/DiskLogStrategy;
.super Ljava/lang/Object;
.source "DiskLogStrategy.java"

# interfaces
.implements Lcom/orhanobut/logger/LogStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/orhanobut/logger/DiskLogStrategy$WriteHandler;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/orhanobut/logger/DiskLogStrategy;->handler:Landroid/os/Handler;

    .line 27
    return-void
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-static {p3}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/orhanobut/logger/DiskLogStrategy;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/orhanobut/logger/DiskLogStrategy;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 34
    return-void
.end method
